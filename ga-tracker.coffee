'use strict'

angular.module('MyApp').directive 'gaTracker', [() ->
  restrict: 'A'
  link: (scope, element, attrs) ->
    $(element).on 'click', (event) ->
      ga('send', 'event', attrs.trackerType, attrs.tracker)
]

#tracker="" tracker-type=""
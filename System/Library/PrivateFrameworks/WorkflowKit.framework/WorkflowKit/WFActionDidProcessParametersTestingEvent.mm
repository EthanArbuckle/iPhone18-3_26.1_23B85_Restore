@interface WFActionDidProcessParametersTestingEvent
- (WFActionDidProcessParametersTestingEvent)initWithAction:(id)action processedParameters:(id)parameters;
@end

@implementation WFActionDidProcessParametersTestingEvent

- (WFActionDidProcessParametersTestingEvent)initWithAction:(id)action processedParameters:(id)parameters
{
  actionCopy = action;
  parametersCopy = parameters;
  if (!parametersCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFActionDidProcessParametersTestingEvent.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"processedParameters"}];
  }

  v15.receiver = self;
  v15.super_class = WFActionDidProcessParametersTestingEvent;
  v9 = [(WFActionTestingEvent *)&v15 initWithAction:actionCopy];
  if (v9)
  {
    v10 = [parametersCopy copy];
    processedParameters = v9->_processedParameters;
    v9->_processedParameters = v10;

    v12 = v9;
  }

  return v9;
}

@end
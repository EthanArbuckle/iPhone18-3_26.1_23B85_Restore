@interface WFActionDidProcessParametersTestingEvent
- (WFActionDidProcessParametersTestingEvent)initWithAction:(id)a3 processedParameters:(id)a4;
@end

@implementation WFActionDidProcessParametersTestingEvent

- (WFActionDidProcessParametersTestingEvent)initWithAction:(id)a3 processedParameters:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFActionDidProcessParametersTestingEvent.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"processedParameters"}];
  }

  v15.receiver = self;
  v15.super_class = WFActionDidProcessParametersTestingEvent;
  v9 = [(WFActionTestingEvent *)&v15 initWithAction:v7];
  if (v9)
  {
    v10 = [v8 copy];
    processedParameters = v9->_processedParameters;
    v9->_processedParameters = v10;

    v12 = v9;
  }

  return v9;
}

@end
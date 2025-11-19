@interface WFActionWillRunLNActionTestingEvent
- (WFActionWillRunLNActionTestingEvent)initWithAction:(id)a3 lnAction:(id)a4;
@end

@implementation WFActionWillRunLNActionTestingEvent

- (WFActionWillRunLNActionTestingEvent)initWithAction:(id)a3 lnAction:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFActionWillRunLNActionTestingEvent.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"lnAction"}];
  }

  v14.receiver = self;
  v14.super_class = WFActionWillRunLNActionTestingEvent;
  v9 = [(WFActionTestingEvent *)&v14 initWithAction:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lnAction, a4);
    v11 = v10;
  }

  return v10;
}

@end
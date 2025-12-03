@interface WFActionWillRunLNActionTestingEvent
- (WFActionWillRunLNActionTestingEvent)initWithAction:(id)action lnAction:(id)lnAction;
@end

@implementation WFActionWillRunLNActionTestingEvent

- (WFActionWillRunLNActionTestingEvent)initWithAction:(id)action lnAction:(id)lnAction
{
  actionCopy = action;
  lnActionCopy = lnAction;
  if (!lnActionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFActionWillRunLNActionTestingEvent.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"lnAction"}];
  }

  v14.receiver = self;
  v14.super_class = WFActionWillRunLNActionTestingEvent;
  v9 = [(WFActionTestingEvent *)&v14 initWithAction:actionCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lnAction, lnAction);
    v11 = v10;
  }

  return v10;
}

@end
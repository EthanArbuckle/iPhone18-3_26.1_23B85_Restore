@interface WFActionTestingEvent
- (WFActionTestingEvent)initWithAction:(id)action;
@end

@implementation WFActionTestingEvent

- (WFActionTestingEvent)initWithAction:(id)action
{
  actionCopy = action;
  v10.receiver = self;
  v10.super_class = WFActionTestingEvent;
  v6 = [(WFActionTestingEvent *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, action);
    v8 = v7;
  }

  return v7;
}

@end
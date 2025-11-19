@interface WFActionTestingEvent
- (WFActionTestingEvent)initWithAction:(id)a3;
@end

@implementation WFActionTestingEvent

- (WFActionTestingEvent)initWithAction:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFActionTestingEvent;
  v6 = [(WFActionTestingEvent *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, a3);
    v8 = v7;
  }

  return v7;
}

@end
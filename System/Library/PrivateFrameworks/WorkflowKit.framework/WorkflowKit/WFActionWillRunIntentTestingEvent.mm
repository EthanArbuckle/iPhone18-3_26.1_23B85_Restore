@interface WFActionWillRunIntentTestingEvent
- (WFActionWillRunIntentTestingEvent)initWithAction:(id)action intent:(id)intent;
@end

@implementation WFActionWillRunIntentTestingEvent

- (WFActionWillRunIntentTestingEvent)initWithAction:(id)action intent:(id)intent
{
  actionCopy = action;
  intentCopy = intent;
  if (!intentCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFActionWillRunIntentTestingEvent.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"intent"}];
  }

  v14.receiver = self;
  v14.super_class = WFActionWillRunIntentTestingEvent;
  v9 = [(WFActionTestingEvent *)&v14 initWithAction:actionCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_intent, intent);
    v11 = v10;
  }

  return v10;
}

@end
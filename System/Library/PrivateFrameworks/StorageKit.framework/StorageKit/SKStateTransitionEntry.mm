@interface SKStateTransitionEntry
+ (id)entryWithState:(id)state event:(id)event;
+ (id)entryWithState:(id)state event:(id)event action:(id)action;
+ (id)entryWithState:(id)state event:(id)event action:(id)action nextState:(id)nextState;
+ (id)entryWithState:(id)state event:(id)event selector:(SEL)selector;
+ (id)entryWithState:(id)state event:(id)event selector:(SEL)selector nextState:(id)nextState;
- (SEL)selector;
- (void)setSelector:(SEL)selector;
@end

@implementation SKStateTransitionEntry

+ (id)entryWithState:(id)state event:(id)event action:(id)action nextState:(id)nextState
{
  nextStateCopy = nextState;
  actionCopy = action;
  eventCopy = event;
  stateCopy = state;
  v13 = objc_alloc_init(objc_opt_class());
  [v13 setState:stateCopy];

  [v13 setEvent:eventCopy];
  [v13 setAction:actionCopy];

  [v13 setNextState:nextStateCopy];
  [v13 setSelector:0];

  return v13;
}

+ (id)entryWithState:(id)state event:(id)event action:(id)action
{
  actionCopy = action;
  eventCopy = event;
  stateCopy = state;
  v10 = [objc_opt_class() entryWithState:stateCopy event:eventCopy action:actionCopy nextState:0];

  return v10;
}

+ (id)entryWithState:(id)state event:(id)event selector:(SEL)selector nextState:(id)nextState
{
  nextStateCopy = nextState;
  eventCopy = event;
  stateCopy = state;
  v12 = objc_alloc_init(objc_opt_class());
  [v12 setState:stateCopy];

  [v12 setEvent:eventCopy];
  [v12 setAction:0];
  [v12 setNextState:nextStateCopy];

  [v12 setSelector:selector];

  return v12;
}

+ (id)entryWithState:(id)state event:(id)event selector:(SEL)selector
{
  eventCopy = event;
  stateCopy = state;
  v9 = [objc_opt_class() entryWithState:stateCopy event:eventCopy selector:selector nextState:0];

  return v9;
}

+ (id)entryWithState:(id)state event:(id)event
{
  eventCopy = event;
  stateCopy = state;
  v7 = [objc_opt_class() entryWithState:stateCopy event:eventCopy action:0];

  return v7;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (void)setSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_selector = selectorCopy;
}

@end
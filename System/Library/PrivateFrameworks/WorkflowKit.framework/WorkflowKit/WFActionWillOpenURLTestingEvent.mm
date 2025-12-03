@interface WFActionWillOpenURLTestingEvent
- (WFActionWillOpenURLTestingEvent)initWithAction:(id)action URL:(id)l bundleIdentifier:(id)identifier;
@end

@implementation WFActionWillOpenURLTestingEvent

- (WFActionWillOpenURLTestingEvent)initWithAction:(id)action URL:(id)l bundleIdentifier:(id)identifier
{
  actionCopy = action;
  lCopy = l;
  identifierCopy = identifier;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFActionWillOpenURLTestingEvent.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"URL"}];
  }

  v17.receiver = self;
  v17.super_class = WFActionWillOpenURLTestingEvent;
  v12 = [(WFActionTestingEvent *)&v17 initWithAction:actionCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_URL, l);
    objc_storeStrong(&v13->_bundleIdentifier, identifier);
    v14 = v13;
  }

  return v13;
}

@end
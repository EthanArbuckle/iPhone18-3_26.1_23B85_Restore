@interface PPClientFeedbackHelper
- (NSString)clientIdentifier;
- (PPClientFeedbackHelper)initWithParentObject:(id)object;
- (void)setClientIdentifier:(id)identifier;
@end

@implementation PPClientFeedbackHelper

- (PPClientFeedbackHelper)initWithParentObject:(id)object
{
  objectCopy = object;
  v10.receiver = self;
  v10.super_class = PPClientFeedbackHelper;
  v5 = [(PPClientFeedbackHelper *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    parentObjectClass = v5->_parentObjectClass;
    v5->_parentObjectClass = v7;
  }

  return v5;
}

- (NSString)clientIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_clientIdentifier;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![identifierCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPClientFeedbackHelper.m" lineNumber:18 description:@"clientIdentifier must not be nil or zero length"];
  }

  if ([identifierCopy length] >= 0xB)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPClientFeedbackHelper.m" lineNumber:19 description:{@"clientIdentifier was longer than %d characters.  Please choose a shorter identifer", 10}];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([identifierCopy isEqualToString:selfCopy->_clientIdentifier] & 1) == 0)
  {
    if ([(NSString *)selfCopy->_clientIdentifier length])
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:selfCopy file:@"PPClientFeedbackHelper.m" lineNumber:22 description:{@"clientIdentifier cannot be set twice on the same %@ to different values.  It is currently set to %@. If two different clients are needed in the same process, initialize with init instead of using defaultStore."}], selfCopy->_parentObjectClass, selfCopy->_clientIdentifier);
    }

    objc_storeStrong(&selfCopy->_clientIdentifier, identifier);
  }

  objc_sync_exit(selfCopy);
}

@end
@interface BRCSharedServerChangeState
- (BRCSharedServerChangeState)initWithCoder:(id)coder;
- (BRCSharedServerChangeState)initWithServerSyncState:(id)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
- (void)forgetChangeTokens;
- (void)updateWithServerChangeToken:(id)token clientRequestID:(unint64_t)d caughtUp:(BOOL)up;
@end

@implementation BRCSharedServerChangeState

- (id)descriptionWithContext:(id)context
{
  v8.receiver = self;
  v8.super_class = BRCSharedServerChangeState;
  v4 = [(BRCServerChangeState *)&v8 descriptionWithContext:context];
  v5 = [MEMORY[0x277CCAB68] stringWithString:v4];
  v6 = v5;
  if (self->_everCaughtUp)
  {
    [v5 appendFormat:@", ever-caught-up:%@", @"YES"];
  }

  if (self->_newlyCreatedDuringInitialSync)
  {
    [v6 appendFormat:@", newly-created-during-initial-sync:%@", @"YES"];
  }

  return v6;
}

- (void)updateWithServerChangeToken:(id)token clientRequestID:(unint64_t)d caughtUp:(BOOL)up
{
  v8.receiver = self;
  v8.super_class = BRCSharedServerChangeState;
  [(BRCServerChangeState *)&v8 updateWithServerChangeToken:token clientRequestID:d caughtUp:?];
  v7 = up || self->_everCaughtUp;
  self->_everCaughtUp = v7;
}

- (void)forgetChangeTokens
{
  v3.receiver = self;
  v3.super_class = BRCSharedServerChangeState;
  [(BRCServerChangeState *)&v3 forgetChangeTokens];
  self->_everCaughtUp = 0;
  self->_newlyCreatedDuringInitialSync = 0;
}

- (BRCSharedServerChangeState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = BRCSharedServerChangeState;
  v5 = [(BRCServerChangeState *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_everCaughtUp = [coderCopy decodeBoolForKey:@"everCaughtUp"];
    v5->_newlyCreatedDuringInitialSync = [coderCopy decodeBoolForKey:@"newlyCreatedDuringInitialSync"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = BRCSharedServerChangeState;
  coderCopy = coder;
  [(BRCServerChangeState *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_everCaughtUp forKey:{@"everCaughtUp", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_newlyCreatedDuringInitialSync forKey:@"newlyCreatedDuringInitialSync"];
}

- (BRCSharedServerChangeState)initWithServerSyncState:(id)state
{
  stateCopy = state;
  v7.receiver = self;
  v7.super_class = BRCSharedServerChangeState;
  v5 = [(BRCServerChangeState *)&v7 initWithServerSyncState:stateCopy];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5->_everCaughtUp = stateCopy[40];
      v5->_newlyCreatedDuringInitialSync = stateCopy[41];
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithServerSyncState:self];
}

@end
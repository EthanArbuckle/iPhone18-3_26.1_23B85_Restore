@interface BRCSharedServerChangeState
- (BRCSharedServerChangeState)initWithCoder:(id)a3;
- (BRCSharedServerChangeState)initWithServerSyncState:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)forgetChangeTokens;
- (void)updateWithServerChangeToken:(id)a3 clientRequestID:(unint64_t)a4 caughtUp:(BOOL)a5;
@end

@implementation BRCSharedServerChangeState

- (id)descriptionWithContext:(id)a3
{
  v8.receiver = self;
  v8.super_class = BRCSharedServerChangeState;
  v4 = [(BRCServerChangeState *)&v8 descriptionWithContext:a3];
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

- (void)updateWithServerChangeToken:(id)a3 clientRequestID:(unint64_t)a4 caughtUp:(BOOL)a5
{
  v8.receiver = self;
  v8.super_class = BRCSharedServerChangeState;
  [(BRCServerChangeState *)&v8 updateWithServerChangeToken:a3 clientRequestID:a4 caughtUp:?];
  v7 = a5 || self->_everCaughtUp;
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

- (BRCSharedServerChangeState)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BRCSharedServerChangeState;
  v5 = [(BRCServerChangeState *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_everCaughtUp = [v4 decodeBoolForKey:@"everCaughtUp"];
    v5->_newlyCreatedDuringInitialSync = [v4 decodeBoolForKey:@"newlyCreatedDuringInitialSync"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = BRCSharedServerChangeState;
  v4 = a3;
  [(BRCServerChangeState *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_everCaughtUp forKey:{@"everCaughtUp", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_newlyCreatedDuringInitialSync forKey:@"newlyCreatedDuringInitialSync"];
}

- (BRCSharedServerChangeState)initWithServerSyncState:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BRCSharedServerChangeState;
  v5 = [(BRCServerChangeState *)&v7 initWithServerSyncState:v4];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5->_everCaughtUp = v4[40];
      v5->_newlyCreatedDuringInitialSync = v4[41];
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithServerSyncState:self];
}

@end
@interface SBLockScreenPluginCallAction
- (SBLockScreenPluginCallAction)initWithURL:(id)a3;
@end

@implementation SBLockScreenPluginCallAction

- (SBLockScreenPluginCallAction)initWithURL:(id)a3
{
  v4 = MEMORY[0x277D6EED0];
  v5 = a3;
  v6 = [[v4 alloc] initWithURL:v5];

  if ([v6 isValid])
  {
    v11.receiver = self;
    v11.super_class = SBLockScreenPluginCallAction;
    v7 = [(SBLockScreenPluginAction *)&v11 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_dialRequest, v6);
    }

    self = v8;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end
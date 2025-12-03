@interface SBLockScreenPluginCallAction
- (SBLockScreenPluginCallAction)initWithURL:(id)l;
@end

@implementation SBLockScreenPluginCallAction

- (SBLockScreenPluginCallAction)initWithURL:(id)l
{
  v4 = MEMORY[0x277D6EED0];
  lCopy = l;
  v6 = [[v4 alloc] initWithURL:lCopy];

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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end
@interface _SBStatusBarTapHandler
- (BOOL)canRequestUnlock;
- (BOOL)handleTap;
- (void)initWithApplicationDestination:(void *)destination;
- (void)initWithBlock:(void *)block;
- (void)initWithURL:(void *)l;
@end

@implementation _SBStatusBarTapHandler

- (BOOL)handleTap
{
  if (self)
  {
    v2 = self[1];
    if (v2)
    {
      SBWorkspaceActivateApplicationFromURL(v2, 0, 0);
    }

    else
    {
      v3 = self[2];
      if (v3)
      {
        (*(v3 + 16))();
      }

      else
      {
        v4 = self[3];
        if (v4)
        {
          bundleIdentifier = [v4 bundleIdentifier];
          v6 = SBWorkspaceApplicationForIdentifier(bundleIdentifier);

          if (v6)
          {
            v7 = +[SBWorkspace mainWorkspace];
            v10[0] = MEMORY[0x277D85DD0];
            v10[1] = 3221225472;
            v10[2] = __35___SBStatusBarTapHandler_handleTap__block_invoke;
            v10[3] = &unk_2783AAA48;
            v10[4] = self;
            v11 = v6;
            [v7 requestTransitionWithBuilder:v10];
          }
        }

        else
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:sel_handleTap object:self file:@"SBStatusBarTapManager.m" lineNumber:450 description:@"not valid to have a tap handler without the ability to handle anything!"];
        }
      }
    }
  }

  return self != 0;
}

- (BOOL)canRequestUnlock
{
  if (result)
  {
    return *(result + 24) != 0;
  }

  return result;
}

- (void)initWithApplicationDestination:(void *)destination
{
  v3 = a2;
  if (destination)
  {
    v7.receiver = destination;
    v7.super_class = _SBStatusBarTapHandler;
    destination = objc_msgSendSuper2(&v7, sel_init);
    if (destination)
    {
      v4 = [v3 copy];
      v5 = destination[3];
      destination[3] = v4;
    }
  }

  return destination;
}

- (void)initWithBlock:(void *)block
{
  v3 = a2;
  if (block)
  {
    v7.receiver = block;
    v7.super_class = _SBStatusBarTapHandler;
    block = objc_msgSendSuper2(&v7, sel_init);
    if (block)
    {
      v4 = [v3 copy];
      v5 = block[2];
      block[2] = v4;
    }
  }

  return block;
}

- (void)initWithURL:(void *)l
{
  v3 = a2;
  if (l)
  {
    v7.receiver = l;
    v7.super_class = _SBStatusBarTapHandler;
    l = objc_msgSendSuper2(&v7, sel_init);
    if (l)
    {
      v4 = [v3 copy];
      v5 = l[1];
      l[1] = v4;
    }
  }

  return l;
}

@end
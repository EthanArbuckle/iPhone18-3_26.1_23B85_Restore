@interface _SBStatusBarTapHandler
- (BOOL)canRequestUnlock;
- (BOOL)handleTap;
- (void)initWithApplicationDestination:(void *)a1;
- (void)initWithBlock:(void *)a1;
- (void)initWithURL:(void *)a1;
@end

@implementation _SBStatusBarTapHandler

- (BOOL)handleTap
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      SBWorkspaceActivateApplicationFromURL(v2, 0, 0);
    }

    else
    {
      v3 = a1[2];
      if (v3)
      {
        (*(v3 + 16))();
      }

      else
      {
        v4 = a1[3];
        if (v4)
        {
          v5 = [v4 bundleIdentifier];
          v6 = SBWorkspaceApplicationForIdentifier(v5);

          if (v6)
          {
            v7 = +[SBWorkspace mainWorkspace];
            v10[0] = MEMORY[0x277D85DD0];
            v10[1] = 3221225472;
            v10[2] = __35___SBStatusBarTapHandler_handleTap__block_invoke;
            v10[3] = &unk_2783AAA48;
            v10[4] = a1;
            v11 = v6;
            [v7 requestTransitionWithBuilder:v10];
          }
        }

        else
        {
          v8 = [MEMORY[0x277CCA890] currentHandler];
          [v8 handleFailureInMethod:sel_handleTap object:a1 file:@"SBStatusBarTapManager.m" lineNumber:450 description:@"not valid to have a tap handler without the ability to handle anything!"];
        }
      }
    }
  }

  return a1 != 0;
}

- (BOOL)canRequestUnlock
{
  if (result)
  {
    return *(result + 24) != 0;
  }

  return result;
}

- (void)initWithApplicationDestination:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = _SBStatusBarTapHandler;
    a1 = objc_msgSendSuper2(&v7, sel_init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[3];
      a1[3] = v4;
    }
  }

  return a1;
}

- (void)initWithBlock:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = _SBStatusBarTapHandler;
    a1 = objc_msgSendSuper2(&v7, sel_init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[2];
      a1[2] = v4;
    }
  }

  return a1;
}

- (void)initWithURL:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = _SBStatusBarTapHandler;
    a1 = objc_msgSendSuper2(&v7, sel_init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

@end
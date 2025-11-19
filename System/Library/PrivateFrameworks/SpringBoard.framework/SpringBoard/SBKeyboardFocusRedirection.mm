@interface SBKeyboardFocusRedirection
- (id)focusTarget;
@end

@implementation SBKeyboardFocusRedirection

- (id)focusTarget
{
  if (a1)
  {
    a1 = [SBKeyboardFocusTarget targetForSceneIdentityToken:*(a1 + 32) pid:*(a1 + 12)];
    v1 = vars8;
  }

  return a1;
}

@end
@interface SBKeyboardFocusRedirection
- (id)focusTarget;
@end

@implementation SBKeyboardFocusRedirection

- (id)focusTarget
{
  if (self)
  {
    self = [SBKeyboardFocusTarget targetForSceneIdentityToken:*(self + 32) pid:*(self + 12)];
    v1 = vars8;
  }

  return self;
}

@end
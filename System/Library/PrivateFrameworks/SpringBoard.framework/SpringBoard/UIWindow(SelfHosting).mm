@interface UIWindow(SelfHosting)
- (id)sb_hostWrapperForUseInOrientation:()SelfHosting hostRequester:;
- (id)sb_hostWrapperForUseInWindow:()SelfHosting hostRequester:;
@end

@implementation UIWindow(SelfHosting)

- (id)sb_hostWrapperForUseInWindow:()SelfHosting hostRequester:
{
  v6 = a4;
  v7 = [self sb_hostWrapperForUseInOrientation:objc_msgSend(a3 hostRequester:{"interfaceOrientation"), v6}];

  return v7;
}

- (id)sb_hostWrapperForUseInOrientation:()SelfHosting hostRequester:
{
  v6 = a4;
  windowScene = [self windowScene];
  _FBSScene = [windowScene _FBSScene];
  identifier = [_FBSScene identifier];
  v10 = [SBWindowSelfHostWrapper wrapperForWindow:self orientation:a3 hostRequester:v6 sceneIdentifier:identifier];

  return v10;
}

@end
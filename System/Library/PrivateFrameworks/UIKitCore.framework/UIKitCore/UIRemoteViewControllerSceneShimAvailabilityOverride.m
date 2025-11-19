@interface UIRemoteViewControllerSceneShimAvailabilityOverride
@end

@implementation UIRemoteViewControllerSceneShimAvailabilityOverride

void ___UIRemoteViewControllerSceneShimAvailabilityOverride_block_invoke()
{
  v0 = _UIKitUserDefaults();
  v3 = [v0 objectForKey:@"ForceSceneHostingRemoteViewController"];

  if (objc_opt_respondsToSelector())
  {
    v1 = [v3 BOOLValue];
    v2 = 3;
    if (!v1)
    {
      v2 = 1;
    }

    qword_1ED499D38 = v2;
  }
}

@end
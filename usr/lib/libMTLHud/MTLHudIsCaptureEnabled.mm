@interface MTLHudIsCaptureEnabled
@end

@implementation MTLHudIsCaptureEnabled

void __MTLHudIsCaptureEnabled_block_invoke(id a1)
{
  v1 = +[MTLCaptureManager sharedCaptureManager];
  if ([v1 supportsDestination:2])
  {

LABEL_4:
    MTLHudIsCaptureEnabled_attached = 1;
    goto LABEL_5;
  }

  v2 = +[MTLCaptureManager sharedCaptureManager];
  v3 = [v2 supportsDestination:1];

  if (v3)
  {
    goto LABEL_4;
  }

LABEL_5:
  if (MTLGetEnvDefault() || MTLGetEnvDefault() || MTLGetEnvDefault())
  {
    MTLHudIsCaptureEnabled_attached = 1;
  }

  v4 = +[NSBundle mainBundle];
  v7 = [v4 objectForInfoDictionaryKey:@"MetalCaptureEnabled"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 BOOLValue])
  {
    MTLHudIsCaptureEnabled_attached = 1;
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:@"MetalForceCaptureEnabled"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 BOOLValue])
  {
    MTLHudIsCaptureEnabled_attached = 1;
  }
}

@end
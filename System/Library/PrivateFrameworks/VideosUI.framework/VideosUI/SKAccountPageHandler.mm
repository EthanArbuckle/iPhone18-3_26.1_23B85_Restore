@interface SKAccountPageHandler
+ (id)sharedInstance;
- (void)accountPageViewControllerDidFinish:(id)finish;
@end

@implementation SKAccountPageHandler

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SKAccountPageHandler sharedInstance];
  }

  v3 = sharedInstance_sSharedInstance;

  return v3;
}

void __38__SKAccountPageHandler_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SKAccountPageHandler);
  v1 = sharedInstance_sSharedInstance;
  sharedInstance_sSharedInstance = v0;
}

- (void)accountPageViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIApplicationRouter - VUIApplicationRouter: SKAccountPageViewController finished", v7, 2u);
  }

  v5 = +[VUIInterfaceFactory sharedInstance];
  openURLHandler = [v5 openURLHandler];
  [openURLHandler setIsFinished:1];

  [finishCopy dismissViewControllerAnimated:1 completion:0];
}

@end
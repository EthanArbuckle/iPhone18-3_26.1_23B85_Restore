@interface SKAccountPageHandler
+ (id)sharedInstance;
- (void)accountPageViewControllerDidFinish:(id)a3;
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

- (void)accountPageViewControllerDidFinish:(id)a3
{
  v3 = a3;
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIApplicationRouter - VUIApplicationRouter: SKAccountPageViewController finished", v7, 2u);
  }

  v5 = +[VUIInterfaceFactory sharedInstance];
  v6 = [v5 openURLHandler];
  [v6 setIsFinished:1];

  [v3 dismissViewControllerAnimated:1 completion:0];
}

@end
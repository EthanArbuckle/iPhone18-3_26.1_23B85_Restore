@interface SBMenuBarSystemService
- (SBMenuBarSystemService)init;
- (void)_queryMenuBarSupportedForClient:(id)client withCompletion:(id)completion;
- (void)_toggleMenuBarVisibilityForClient:(id)client;
- (void)systemServiceServer:(id)server queryMenuBarSupportedForClient:(id)client withCompletion:(id)completion;
- (void)systemServiceServer:(id)server toggleMenuBarVisibilityForClient:(id)client;
@end

@implementation SBMenuBarSystemService

- (SBMenuBarSystemService)init
{
  v8.receiver = self;
  v8.super_class = SBMenuBarSystemService;
  v2 = [(SBMenuBarSystemService *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D0AAF8]);
    v4 = [v3 initWithEntitlement:*MEMORY[0x277D67030]];
    menuBarVisibilityRequestAuthenticator = v2->_menuBarVisibilityRequestAuthenticator;
    v2->_menuBarVisibilityRequestAuthenticator = v4;

    v6 = +[SBSystemServiceServer sharedInstance];
    [v6 setMenuBarDelegate:v2];
  }

  return v2;
}

- (void)_queryMenuBarSupportedForClient:(id)client withCompletion:(id)completion
{
  completionCopy = completion;
  clientCopy = client;
  BSDispatchQueueAssertMain();
  menuBarVisibilityRequestAuthenticator = self->_menuBarVisibilityRequestAuthenticator;
  v13 = 0;
  LOBYTE(self) = [(FBServiceClientAuthenticator *)menuBarVisibilityRequestAuthenticator authenticateClient:clientCopy error:&v13];

  v9 = v13;
  if (self)
  {
    windowSceneManager = [SBApp windowSceneManager];
    activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
    menuBarManager = [activeDisplayWindowScene menuBarManager];

    completionCopy[2](completionCopy, [menuBarManager isMenuBarSupported]);
  }

  else
  {
    menuBarManager = SBLogMenuBar();
    if (os_log_type_enabled(menuBarManager, OS_LOG_TYPE_ERROR))
    {
      [SBMenuBarSystemService _queryMenuBarSupportedForClient:v9 withCompletion:?];
    }
  }
}

- (void)_toggleMenuBarVisibilityForClient:(id)client
{
  v19 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  BSDispatchQueueAssertMain();
  menuBarVisibilityRequestAuthenticator = self->_menuBarVisibilityRequestAuthenticator;
  v14 = 0;
  v6 = [(FBServiceClientAuthenticator *)menuBarVisibilityRequestAuthenticator authenticateClient:clientCopy error:&v14];
  v7 = v14;
  if (v6)
  {
    windowSceneManager = [SBApp windowSceneManager];
    activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
    menuBarManager = [activeDisplayWindowScene menuBarManager];

    v11 = [menuBarManager isMenuBarVisible]^ 1;
    v12 = SBLogMenuBar();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      processHandle = [clientCopy processHandle];
      *buf = 67109378;
      v16 = v11;
      v17 = 2114;
      v18 = processHandle;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "system service setting menu bar to visible: %d for client %{public}@", buf, 0x12u);
    }

    [menuBarManager requestMenuBarVisibility:v11];
  }

  else
  {
    menuBarManager = SBLogMenuBar();
    if (os_log_type_enabled(menuBarManager, OS_LOG_TYPE_ERROR))
    {
      [SBMenuBarSystemService _queryMenuBarSupportedForClient:v7 withCompletion:?];
    }
  }
}

- (void)systemServiceServer:(id)server queryMenuBarSupportedForClient:(id)client withCompletion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = clientCopy;
  BSDispatchMain();
}

- (void)systemServiceServer:(id)server toggleMenuBarVisibilityForClient:(id)client
{
  clientCopy = client;
  v4 = clientCopy;
  BSDispatchMain();
}

- (void)_queryMenuBarSupportedForClient:(void *)a1 withCompletion:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v2, v3, "%{public}@", v4, v5, v6, v7, 2u);
}

@end
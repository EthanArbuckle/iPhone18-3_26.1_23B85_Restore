@interface SBMenuBarSystemService
- (SBMenuBarSystemService)init;
- (void)_queryMenuBarSupportedForClient:(id)a3 withCompletion:(id)a4;
- (void)_toggleMenuBarVisibilityForClient:(id)a3;
- (void)systemServiceServer:(id)a3 queryMenuBarSupportedForClient:(id)a4 withCompletion:(id)a5;
- (void)systemServiceServer:(id)a3 toggleMenuBarVisibilityForClient:(id)a4;
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

- (void)_queryMenuBarSupportedForClient:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  BSDispatchQueueAssertMain();
  menuBarVisibilityRequestAuthenticator = self->_menuBarVisibilityRequestAuthenticator;
  v13 = 0;
  LOBYTE(self) = [(FBServiceClientAuthenticator *)menuBarVisibilityRequestAuthenticator authenticateClient:v7 error:&v13];

  v9 = v13;
  if (self)
  {
    v10 = [SBApp windowSceneManager];
    v11 = [v10 activeDisplayWindowScene];
    v12 = [v11 menuBarManager];

    v6[2](v6, [v12 isMenuBarSupported]);
  }

  else
  {
    v12 = SBLogMenuBar();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SBMenuBarSystemService _queryMenuBarSupportedForClient:v9 withCompletion:?];
    }
  }
}

- (void)_toggleMenuBarVisibilityForClient:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  menuBarVisibilityRequestAuthenticator = self->_menuBarVisibilityRequestAuthenticator;
  v14 = 0;
  v6 = [(FBServiceClientAuthenticator *)menuBarVisibilityRequestAuthenticator authenticateClient:v4 error:&v14];
  v7 = v14;
  if (v6)
  {
    v8 = [SBApp windowSceneManager];
    v9 = [v8 activeDisplayWindowScene];
    v10 = [v9 menuBarManager];

    v11 = [v10 isMenuBarVisible]^ 1;
    v12 = SBLogMenuBar();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v4 processHandle];
      *buf = 67109378;
      v16 = v11;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "system service setting menu bar to visible: %d for client %{public}@", buf, 0x12u);
    }

    [v10 requestMenuBarVisibility:v11];
  }

  else
  {
    v10 = SBLogMenuBar();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SBMenuBarSystemService _queryMenuBarSupportedForClient:v7 withCompletion:?];
    }
  }
}

- (void)systemServiceServer:(id)a3 queryMenuBarSupportedForClient:(id)a4 withCompletion:(id)a5
{
  v6 = a4;
  v9 = a5;
  v7 = v9;
  v8 = v6;
  BSDispatchMain();
}

- (void)systemServiceServer:(id)a3 toggleMenuBarVisibilityForClient:(id)a4
{
  v5 = a4;
  v4 = v5;
  BSDispatchMain();
}

- (void)_queryMenuBarSupportedForClient:(void *)a1 withCompletion:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v2, v3, "%{public}@", v4, v5, v6, v7, 2u);
}

@end
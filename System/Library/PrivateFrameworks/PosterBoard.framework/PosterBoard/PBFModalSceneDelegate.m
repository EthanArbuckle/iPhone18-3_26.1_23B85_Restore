@interface PBFModalSceneDelegate
- (PBFModalSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation PBFModalSceneDelegate

- (PBFModalSceneDelegate)init
{
  v9.receiver = self;
  v9.super_class = PBFModalSceneDelegate;
  v2 = [(PBFModalSceneDelegate *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [v3 bundleIdentifier];
    v5 = [v4 isEqualToString:@"com.apple.PosterTester"];

    if ((v5 & 1) == 0)
    {
      +[PBFModalRootViewController prewarmTopButtonLayout];
    }

    v6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    sceneToWindowMap = v2->_sceneToWindowMap;
    v2->_sceneToWindowMap = v6;
  }

  return v2;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v24 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 bundleIdentifier];
  v13 = [v12 isEqualToString:@"com.apple.PosterTester"];

  if ((v13 & 1) == 0)
  {
    v14 = objc_opt_class();
    v15 = v24;
    if (v14)
    {
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (!v17)
    {
      [PBFModalSceneDelegate scene:a2 willConnectToSession:self options:?];
    }

    v18 = [PBFModalRootViewController alloc];
    v19 = +[PBFPosterExtensionDataStoreXPCServiceGlue sharedInstance];
    v20 = [v19 dataStore];
    v21 = [(PBFModalRootViewController *)v18 initWithScene:v17 dataStore:v20];

    v22 = [objc_alloc(MEMORY[0x277D75DA0]) initWithWindowScene:v17];
    v23 = [MEMORY[0x277D75348] clearColor];
    [v22 setBackgroundColor:v23];

    [v22 setRootViewController:v21];
    [v22 makeKeyAndVisible];
    [(NSMapTable *)self->_sceneToWindowMap setObject:v22 forKey:v17];
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  v7 = a3;
  v4 = [(NSMapTable *)self->_sceneToWindowMap objectForKey:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 rootViewController];
    [v6 invalidate];
    [v5 setRootViewController:0];
    [v5 setHidden:1];
    [(NSMapTable *)self->_sceneToWindowMap removeObjectForKey:v7];
  }
}

- (void)scene:(const char *)a1 willConnectToSession:(uint64_t)a2 options:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"windowScene != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PBFModalSceneDelegate.m";
    v16 = 1024;
    v17 = 41;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end
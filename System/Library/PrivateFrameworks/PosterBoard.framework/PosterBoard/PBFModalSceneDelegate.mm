@interface PBFModalSceneDelegate
- (PBFModalSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation PBFModalSceneDelegate

- (PBFModalSceneDelegate)init
{
  v9.receiver = self;
  v9.super_class = PBFModalSceneDelegate;
  v2 = [(PBFModalSceneDelegate *)&v9 init];
  if (v2)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v5 = [bundleIdentifier isEqualToString:@"com.apple.PosterTester"];

    if ((v5 & 1) == 0)
    {
      +[PBFModalRootViewController prewarmTopButtonLayout];
    }

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    sceneToWindowMap = v2->_sceneToWindowMap;
    v2->_sceneToWindowMap = strongToStrongObjectsMapTable;
  }

  return v2;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v13 = [bundleIdentifier isEqualToString:@"com.apple.PosterTester"];

  if ((v13 & 1) == 0)
  {
    v14 = objc_opt_class();
    v15 = sceneCopy;
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
    dataStore = [v19 dataStore];
    v21 = [(PBFModalRootViewController *)v18 initWithScene:v17 dataStore:dataStore];

    v22 = [objc_alloc(MEMORY[0x277D75DA0]) initWithWindowScene:v17];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v22 setBackgroundColor:clearColor];

    [v22 setRootViewController:v21];
    [v22 makeKeyAndVisible];
    [(NSMapTable *)self->_sceneToWindowMap setObject:v22 forKey:v17];
  }
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v4 = [(NSMapTable *)self->_sceneToWindowMap objectForKey:?];
  v5 = v4;
  if (v4)
  {
    rootViewController = [v4 rootViewController];
    [rootViewController invalidate];
    [v5 setRootViewController:0];
    [v5 setHidden:1];
    [(NSMapTable *)self->_sceneToWindowMap removeObjectForKey:disconnectCopy];
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
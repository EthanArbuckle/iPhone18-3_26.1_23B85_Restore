@interface UVAgentSceneEntryPoint
- (UIScene)_scene;
- (UVAgentSceneEntryPoint)initWithScene:(id)scene;
- (void)_forceApplicationLaunchCompletion;
@end

@implementation UVAgentSceneEntryPoint

- (UVAgentSceneEntryPoint)initWithScene:(id)scene
{
  v19 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v14.receiver = self;
  v14.super_class = UVAgentSceneEntryPoint;
  v6 = [(UVAgentSceneEntryPoint *)&v14 init];
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(UVAgentSceneEntryPoint *)a2 initWithScene:v6];
    }

    objc_storeWeak(&v6->_scene, sceneCopy);
    v7 = UVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      _FBSScene = [sceneCopy _FBSScene];
      identifier = [_FBSScene identifier];
      *buf = 138412546;
      v16 = sceneCopy;
      v17 = 2112;
      v18 = identifier;
      _os_log_impl(&dword_25F50F000, v7, OS_LOG_TYPE_DEFAULT, "UVPreviewSceneEntryPoint init: %@ (identifier = %@)", buf, 0x16u);
    }

    [(UVAgentSceneEntryPoint *)v6 _forceApplicationLaunchCompletion];
    _FBSScene2 = [sceneCopy _FBSScene];
    identifier2 = [_FBSScene2 identifier];

    [_TtC19PreviewsOSSupportUI20UVAgentSceneRegistry deliverScene:sceneCopy forIdentifier:identifier2];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_forceApplicationLaunchCompletion
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] _compellApplicationLaunchToCompleteUnconditionally];
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (void)initWithScene:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"UVAgentSceneEntryPoint.m" lineNumber:40 description:@"Scene wasn't a window scene."];
}

@end
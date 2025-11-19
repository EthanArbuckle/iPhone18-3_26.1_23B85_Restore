@interface UVAgentSceneEntryPoint
- (UIScene)_scene;
- (UVAgentSceneEntryPoint)initWithScene:(id)a3;
- (void)_forceApplicationLaunchCompletion;
@end

@implementation UVAgentSceneEntryPoint

- (UVAgentSceneEntryPoint)initWithScene:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
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

    objc_storeWeak(&v6->_scene, v5);
    v7 = UVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 _FBSScene];
      v9 = [v8 identifier];
      *buf = 138412546;
      v16 = v5;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_25F50F000, v7, OS_LOG_TYPE_DEFAULT, "UVPreviewSceneEntryPoint init: %@ (identifier = %@)", buf, 0x16u);
    }

    [(UVAgentSceneEntryPoint *)v6 _forceApplicationLaunchCompletion];
    v10 = [v5 _FBSScene];
    v11 = [v10 identifier];

    [_TtC19PreviewsOSSupportUI20UVAgentSceneRegistry deliverScene:v5 forIdentifier:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_forceApplicationLaunchCompletion
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 _compellApplicationLaunchToCompleteUnconditionally];
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
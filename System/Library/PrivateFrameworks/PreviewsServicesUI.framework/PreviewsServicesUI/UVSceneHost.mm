@interface UVSceneHost
+ (id)createWithInjectedScene:(id)a3 error:(id *)a4;
- (UVInjectedScene)injectedScene;
- (id)_initWithHostIdentifier:(id)a3 scenePresenter:(id)a4 injectedScene:(id)a5;
- (void)dealloc;
- (void)invalidate;
- (void)layoutSubviews;
@end

@implementation UVSceneHost

+ (id)createWithInjectedScene:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 scene];
  v7 = MEMORY[0x277CCACA8];
  v8 = [v6 identifier];
  v9 = [v7 stringWithFormat:@"UVSceneHost-%@", v8];

  v10 = [v6 uiPresentationManager];
  v11 = [v10 createPresenterWithIdentifier:v9];

  if (v11)
  {
    v19 = [[UVSceneHost alloc] _initWithHostIdentifier:v9 scenePresenter:v11 injectedScene:v5];
  }

  else
  {
    v20 = UVPreviewsServicesError(@"Failed to make UIScenePresentationManager for scene %@", v12, v13, v14, v15, v16, v17, v18, v6);
    v21 = UVLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      [UVSceneHost createWithInjectedScene:v20 error:v21];
    }

    if (a4)
    {
      v22 = v20;
      *a4 = v20;
    }

    v19 = 0;
  }

  return v19;
}

- (id)_initWithHostIdentifier:(id)a3 scenePresenter:(id)a4 injectedScene:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = UVSceneHost;
  v12 = [(UVSceneHost *)&v16 init];
  p_isa = &v12->super.super.super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_hostIdentifier, a3);
    objc_storeStrong(p_isa + 52, a4);
    objc_storeWeak(p_isa + 54, v11);
    [p_isa[52] modifyPresentationContext:&__block_literal_global];
    [p_isa[52] activate];
    v14 = [p_isa[52] presentationView];
    [p_isa addSubview:v14];
  }

  return p_isa;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    v3 = UVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [(UVSceneHost *)v3 dealloc];
    }
  }

  v4.receiver = self;
  v4.super_class = UVSceneHost;
  [(UVSceneHost *)&v4 dealloc];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    v4 = [(UIScenePresenter *)self->_scenePresenter presentationView];
    [v4 removeFromSuperview];

    [(UIScenePresenter *)self->_scenePresenter invalidate];
    scenePresenter = self->_scenePresenter;
    self->_scenePresenter = 0;
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = UVSceneHost;
  [(UVSceneHost *)&v4 layoutSubviews];
  v3 = [(UIScenePresenter *)self->_scenePresenter presentationView];
  [(UVSceneHost *)self bounds];
  [v3 setFrame:?];
}

- (UVInjectedScene)injectedScene
{
  WeakRetained = objc_loadWeakRetained(&self->_injectedScene);

  return WeakRetained;
}

+ (void)createWithInjectedScene:(void *)a1 error:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138543362;
  v6 = v3;
  _os_log_fault_impl(&dword_25F542000, a2, OS_LOG_TYPE_FAULT, "%{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end
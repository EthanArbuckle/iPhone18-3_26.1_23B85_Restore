@interface PRComplicationSceneHostViewController
- (PRComplicationSceneHostViewController)initWithScene:(id)a3;
- (void)_clearTouchDeliveryPolicies;
- (void)_updateTouchDeliveryPolicies;
- (void)invalidate;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
@end

@implementation PRComplicationSceneHostViewController

- (PRComplicationSceneHostViewController)initWithScene:(id)a3
{
  v34[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v33.receiver = self;
  v33.super_class = PRComplicationSceneHostViewController;
  v6 = [(PRComplicationSceneHostViewController *)&v33 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scene, a3);
    [(FBScene *)v7->_scene configureParameters:&__block_literal_global_22];
    v8 = [(FBScene *)v7->_scene uiPresentationManager];
    v9 = [v8 createPresenterWithIdentifier:@"complications"];
    v32 = v5;
    scenePresenter = v7->_scenePresenter;
    v7->_scenePresenter = v9;

    [(UIScenePresenter *)v7->_scenePresenter modifyPresentationContext:&__block_literal_global_7_0];
    [(UIScenePresenter *)v7->_scenePresenter activate];
    v11 = [(UIScenePresenter *)v7->_scenePresenter presentationView];
    [v11 setClipsToBounds:1];
    v12 = [v11 layer];
    [v12 setName:@"Scene View"];

    [(FBScene *)v7->_scene activateWithTransitionContext:0];
    v13 = [(FBScene *)v7->_scene layerManager];
    [v13 addObserver:v7];

    v14 = [(PRComplicationSceneHostViewController *)v7 view];
    [v14 addSubview:v11];

    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [(PRComplicationSceneHostViewController *)v7 view];
    v16 = MEMORY[0x1E695DF70];
    v31 = [v11 leadingAnchor];
    v30 = [v15 leadingAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v34[0] = v29;
    v28 = [v11 trailingAnchor];
    v27 = [v15 trailingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v34[1] = v26;
    v25 = [v11 topAnchor];
    v17 = [v15 topAnchor];
    v18 = [v25 constraintEqualToAnchor:v17];
    v34[2] = v18;
    v19 = [v11 bottomAnchor];
    v20 = [v15 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v34[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];
    v23 = [v16 arrayWithArray:v22];

    [MEMORY[0x1E696ACD8] activateConstraints:v23];
    v5 = v32;
  }

  return v7;
}

void __55__PRComplicationSceneHostViewController_initWithScene___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E699F7A8];
  v4 = a2;
  v3 = [v2 mainConfiguration];
  [v4 setDisplayConfiguration:v3];

  [v4 setForeground:1];
}

void __55__PRComplicationSceneHostViewController_initWithScene___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPresentedLayerTypes:26];
  [v2 setAppearanceStyle:2];
  [v2 setBackgroundColorWhileHosting:0];
  [v2 setBackgroundColorWhileNotHosting:0];
  [v2 setShouldPassthroughHitTestEventsIfTransparent:1];
}

- (void)invalidate
{
  [(UIScenePresenter *)self->_scenePresenter invalidate];
  scenePresenter = self->_scenePresenter;
  self->_scenePresenter = 0;

  [(FBScene *)self->_scene setDelegate:0];
  [(FBScene *)self->_scene invalidate];
  scene = self->_scene;
  self->_scene = 0;
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69C5650]);
  [(PRComplicationSceneHostViewController *)self setView:v3];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = PRComplicationSceneHostViewController;
  [(PRComplicationSceneHostViewController *)&v13 viewDidLayoutSubviews];
  v3 = [(PRComplicationSceneHostViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 interfaceOrientation];

  [v3 bounds];
  scene = self->_scene;
  v12[1] = 3221225472;
  if ((v6 - 3) >= 2)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[2] = __62__PRComplicationSceneHostViewController_viewDidLayoutSubviews__block_invoke;
  v12[3] = &__block_descriptor_72_e63_v24__0__FBSMutableSceneSettings_8__FBSSceneTransitionContext_16l;
  if ((v6 - 3) >= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  v12[4] = 0;
  v12[5] = 0;
  v12[6] = v10;
  v12[7] = v11;
  v12[8] = v6;
  [(FBScene *)scene performUpdate:v12];
}

void __62__PRComplicationSceneHostViewController_viewDidLayoutSubviews__block_invoke(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a2;
  [v7 setFrame:{v3, v4, v5, v6}];
  [v7 setInterfaceOrientation:*(a1 + 8)];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = PRComplicationSceneHostViewController;
  [(PRComplicationSceneHostViewController *)&v6 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if (a3)
  {
    [(PRComplicationSceneHostViewController *)self _updateTouchDeliveryPolicies];
  }

  else
  {
    [(PRComplicationSceneHostViewController *)self _clearTouchDeliveryPolicies];
  }
}

- (void)_updateTouchDeliveryPolicies
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = [(PRComplicationSceneHostViewController *)self view];
  v4 = [v3 _window];

  if (v4)
  {
    v5 = [(FBScene *)self->_scene layerManager];
    v6 = [v5 layers];

    v7 = objc_alloc(MEMORY[0x1E695DFA8]);
    v8 = [(NSMutableDictionary *)self->_touchDeliveryPolicyAssertions allKeys];
    v42 = [v7 initWithArray:v8];

    v9 = [(PRComplicationSceneHostViewController *)self view];
    v10 = [v9 _window];
    v39 = [v10 _contextId];

    v11 = PRLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v60 = self;
      v61 = 2114;
      v62 = v6;
      _os_log_impl(&dword_1A8AA7000, v11, OS_LOG_TYPE_DEFAULT, "[%p] Updating touch delivery policies for layers: %{public}@", buf, 0x16u);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v6;
    v12 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
    if (v12)
    {
      v41 = *v55;
      *&v13 = 134218498;
      v38 = v13;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v55 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [*(*(&v54 + 1) + 8 * i) contextID];
          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15];
          [v42 removeObject:v16];

          touchDeliveryPolicyAssertions = self->_touchDeliveryPolicyAssertions;
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15];
          v19 = [(NSMutableDictionary *)touchDeliveryPolicyAssertions objectForKey:v18];
          LODWORD(touchDeliveryPolicyAssertions) = v19 == 0;

          if (touchDeliveryPolicyAssertions)
          {
            v20 = objc_alloc_init(MEMORY[0x1E698E440]);
            v21 = [MEMORY[0x1E698E438] policyRequiringSharingOfTouchesDeliveredToChildContextId:v15 withHostContextId:v39];
            v22 = [v20 endpoint];
            [v21 setAssertionEndpoint:v22];

            objc_initWeak(&location, self);
            v47 = MEMORY[0x1E69E9820];
            v48 = 3221225472;
            v49 = __69__PRComplicationSceneHostViewController__updateTouchDeliveryPolicies__block_invoke;
            v50 = &unk_1E78446C0;
            objc_copyWeak(&v52, &location);
            v23 = v21;
            v51 = v23;
            v24 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler();
            if (v24)
            {
              v25 = PRLogCommon();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v38;
                v60 = self;
                v61 = 2114;
                v62 = v20;
                v63 = 1024;
                v64 = v15;
                _os_log_impl(&dword_1A8AA7000, v25, OS_LOG_TYPE_DEFAULT, "[%p] Saving touch policy assertion %{public}@ for context id %u", buf, 0x1Cu);
              }

              v26 = self->_touchDeliveryPolicyAssertions;
              if (!v26)
              {
                v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
                v28 = self->_touchDeliveryPolicyAssertions;
                self->_touchDeliveryPolicyAssertions = v27;

                v26 = self->_touchDeliveryPolicyAssertions;
              }

              v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15];
              [(NSMutableDictionary *)v26 setObject:v20 forKey:v29];

              [v24 ipc_addPolicy:v23];
            }

            objc_destroyWeak(&v52);
            objc_destroyWeak(&location);
          }
        }

        v12 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
      }

      while (v12);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v30 = v42;
    v31 = [v30 countByEnumeratingWithState:&v43 objects:v58 count:16];
    if (v31)
    {
      v32 = *v44;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v44 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = *(*(&v43 + 1) + 8 * j);
          v35 = [(NSMutableDictionary *)self->_touchDeliveryPolicyAssertions objectForKey:v34];
          [v35 invalidate];
          [(NSMutableDictionary *)self->_touchDeliveryPolicyAssertions removeObjectForKey:v34];
          v36 = PRLogCommon();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = [v34 unsignedIntValue];
            *buf = 134218498;
            v60 = self;
            v61 = 2114;
            v62 = v35;
            v63 = 1024;
            v64 = v37;
            _os_log_impl(&dword_1A8AA7000, v36, OS_LOG_TYPE_DEFAULT, "[%p] Invalidating assertion %{public}@ for context id %u", buf, 0x1Cu);
          }
        }

        v31 = [v30 countByEnumeratingWithState:&v43 objects:v58 count:16];
      }

      while (v31);
    }
  }
}

void __69__PRComplicationSceneHostViewController__updateTouchDeliveryPolicies__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = PRLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 134218498;
      v8 = WeakRetained;
      v9 = 2114;
      v10 = v6;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "[%p] Sending touch delivery policy %{public}@ failed with error: %{public}@", &v7, 0x20u);
    }
  }
}

- (void)_clearTouchDeliveryPolicies
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = PRLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = self;
    _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "[%p] Clearing any touch delivery policies", &v4, 0xCu);
  }

  [(NSMutableDictionary *)self->_touchDeliveryPolicyAssertions enumerateKeysAndObjectsUsingBlock:&__block_literal_global_28];
  [(NSMutableDictionary *)self->_touchDeliveryPolicyAssertions removeAllObjects];
}

@end
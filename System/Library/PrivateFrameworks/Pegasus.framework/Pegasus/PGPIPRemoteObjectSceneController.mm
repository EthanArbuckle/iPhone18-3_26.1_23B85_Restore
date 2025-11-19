@interface PGPIPRemoteObjectSceneController
+ (id)sharedSceneWorkspace;
- (BOOL)isInvalidated;
- (PGPIPRemoteObjectSceneController)initWithRemoteObject:(id)a3 requestedSceneIdentifier:(id)a4 affectsAppLifeCycle:(BOOL)a5;
- (UIView)sceneView;
- (void)_performAnimationWithType:(int64_t)a3 initialSpringVelocity:(double)a4 animations:(id)a5 completion:(id)a6;
- (void)activateIfNeeded;
- (void)dealloc;
- (void)invalidate;
- (void)setForeground:(BOOL)a3;
- (void)setInvalidated:(BOOL)a3;
- (void)updateInterfaceOrientation;
- (void)updateSize:(CGSize)a3 animationType:(int64_t)a4 initialSpringVelocity:(double)a5;
@end

@implementation PGPIPRemoteObjectSceneController

+ (id)sharedSceneWorkspace
{
  if (sharedSceneWorkspace_onceToken != -1)
  {
    +[PGPIPRemoteObjectSceneController sharedSceneWorkspace];
  }

  v3 = sharedSceneWorkspace_shared;

  return v3;
}

uint64_t __56__PGPIPRemoteObjectSceneController_sharedSceneWorkspace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E699F7F8]) initWithIdentifier:@"com.apple.pegasus.pictureinpicture"];
  v1 = sharedSceneWorkspace_shared;
  sharedSceneWorkspace_shared = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (PGPIPRemoteObjectSceneController)initWithRemoteObject:(id)a3 requestedSceneIdentifier:(id)a4 affectsAppLifeCycle:(BOOL)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v39.receiver = self;
  v39.super_class = PGPIPRemoteObjectSceneController;
  v9 = [(PGPIPRemoteObjectSceneController *)&v39 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v9->_remoteObject, v7);
    v11 = [objc_opt_class() sharedSceneWorkspace];
    v12 = [v11 sceneWithIdentifier:v8];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      scene = v10->_scene;
      v10->_scene = v14;
    }

    else
    {
      v16 = MEMORY[0x1E69C75D0];
      v17 = MEMORY[0x1E69C75E0];
      v18 = [v7 pictureInPictureApplication];
      v19 = [v17 identifierWithPid:{objc_msgSend(v18, "processIdentifier")}];
      v38 = 0;
      v20 = [v16 handleForIdentifier:v19 error:&v38];
      scene = v38;

      if (v20)
      {
        v21 = [v20 identity];
        v22 = [MEMORY[0x1E699FBD8] identityForProcessIdentity:v21];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __102__PGPIPRemoteObjectSceneController_initWithRemoteObject_requestedSceneIdentifier_affectsAppLifeCycle___block_invoke;
        v35[3] = &unk_1E7F33468;
        v36 = v22;
        v37 = v8;
        v31 = v22;
        v23 = [v11 createScene:v35];
        v24 = v10->_scene;
        v10->_scene = v23;

        v25 = [v7 sourceSceneSettingsInterfaceOrientation];
        v26 = [v7 sourceSceneSettingsDisplayConfiguration];
        v27 = v10->_scene;
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __102__PGPIPRemoteObjectSceneController_initWithRemoteObject_requestedSceneIdentifier_affectsAppLifeCycle___block_invoke_2;
        v32[3] = &unk_1E7F334B8;
        v33 = v26;
        v34 = v25;
        v28 = v26;
        [(FBScene *)v27 configureParameters:v32];
      }

      else
      {
        v21 = PGLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v30 = _PGLogMethodProem(v10, 1);
          *buf = 138412546;
          v41 = v30;
          v42 = 2112;
          v43 = scene;
          _os_log_error_impl(&dword_1BB282000, v21, OS_LOG_TYPE_ERROR, "%@ not able to create scene, RBSProcessHandle look up failed with error: %@", buf, 0x16u);
        }
      }
    }
  }

  return v10;
}

void __102__PGPIPRemoteObjectSceneController_initWithRemoteObject_requestedSceneIdentifier_affectsAppLifeCycle___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setClientIdentity:v3];
  [v4 setIdentifier:*(a1 + 40)];
  v5 = objc_alloc_init(PGPIPRemoteObjectSceneSpecification);
  [v4 setSpecification:v5];
}

void __102__PGPIPRemoteObjectSceneController_initWithRemoteObject_requestedSceneIdentifier_affectsAppLifeCycle___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __102__PGPIPRemoteObjectSceneController_initWithRemoteObject_requestedSceneIdentifier_affectsAppLifeCycle___block_invoke_3;
  v5[3] = &unk_1E7F33490;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 updateSettingsWithBlock:v5];
}

void __102__PGPIPRemoteObjectSceneController_initWithRemoteObject_requestedSceneIdentifier_affectsAppLifeCycle___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setInterfaceOrientation:*(a1 + 40)];
  if (*(a1 + 32))
  {
    [v4 setDisplayConfiguration:?];
  }

  else
  {
    v3 = [MEMORY[0x1E699F7A8] mainConfiguration];
    [v4 setDisplayConfiguration:v3];
  }

  [v4 setInterfaceOrientationMode:2];
  [v4 setInterruptionPolicy:1];
}

- (UIView)sceneView
{
  sceneView = self->_sceneView;
  if (!sceneView)
  {
    scenePresenter = self->_scenePresenter;
    if (!scenePresenter)
    {
      v5 = [(FBScene *)self->_scene uiPresentationManager];
      v6 = [MEMORY[0x1E696AFB0] UUID];
      v7 = [v6 UUIDString];
      v8 = [v5 createPresenterWithIdentifier:v7];
      v9 = self->_scenePresenter;
      self->_scenePresenter = v8;

      scenePresenter = self->_scenePresenter;
    }

    [(UIScenePresenter *)scenePresenter modifyPresentationContext:&__block_literal_global_115];
    [(UIScenePresenter *)self->_scenePresenter activate];
    v10 = [(UIScenePresenter *)self->_scenePresenter presentationView];
    v11 = self->_sceneView;
    self->_sceneView = v10;

    sceneView = self->_sceneView;
  }

  return sceneView;
}

void __45__PGPIPRemoteObjectSceneController_sceneView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPresentedLayerTypes:26];
  [v2 setAppearanceStyle:2];
}

- (void)activateIfNeeded
{
  if ([(FBScene *)self->_scene isValid])
  {
    if (([(FBScene *)self->_scene isActive]& 1) == 0)
    {
      scene = self->_scene;
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __52__PGPIPRemoteObjectSceneController_activateIfNeeded__block_invoke;
      v4[3] = &unk_1E7F33500;
      v4[4] = self;
      [(FBScene *)scene performUpdate:v4];
    }
  }
}

- (void)updateInterfaceOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteObject);
  v4 = [WeakRetained sourceSceneSettingsInterfaceOrientation];

  v8 = [(FBScene *)self->_scene settings];
  if ([v8 interfaceOrientation] == v4)
  {
  }

  else
  {
    v5 = [(FBScene *)self->_scene isValid];

    if (v5)
    {
      v6 = [(FBScene *)self->_scene isActive];
      scene = self->_scene;
      if (v6)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __62__PGPIPRemoteObjectSceneController_updateInterfaceOrientation__block_invoke_2;
        v9[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
        v9[4] = v4;
        [(FBScene *)scene updateSettings:v9];
      }

      else
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __62__PGPIPRemoteObjectSceneController_updateInterfaceOrientation__block_invoke;
        v10[3] = &__block_descriptor_40_e63_v24__0__FBSMutableSceneSettings_8__FBSSceneTransitionContext_16l;
        v10[4] = v4;
        [(FBScene *)scene performUpdate:v10];
      }
    }
  }
}

- (void)updateSize:(CGSize)a3 animationType:(int64_t)a4 initialSpringVelocity:(double)a5
{
  self->_currentFrame.size = a3;
  self->_currentFrame.origin = *MEMORY[0x1E695EFF8];
  if ([(FBScene *)self->_scene isActive])
  {
    v8 = [(FBScene *)self->_scene settings];
    v9 = [v8 isForeground];

    if (v9)
    {
      v12[0] = 0;
      v12[1] = v12;
      v12[2] = 0x3032000000;
      v12[3] = __Block_byref_object_copy__2;
      v12[4] = __Block_byref_object_dispose__2;
      v13 = [MEMORY[0x1E69DCE70] _synchronizedDrawingFence];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __83__PGPIPRemoteObjectSceneController_updateSize_animationType_initialSpringVelocity___block_invoke;
      v11[3] = &unk_1E7F33590;
      v11[4] = self;
      v11[5] = v12;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __83__PGPIPRemoteObjectSceneController_updateSize_animationType_initialSpringVelocity___block_invoke_3;
      v10[3] = &unk_1E7F335B8;
      v10[4] = v12;
      [(PGPIPRemoteObjectSceneController *)self _performAnimationWithType:a4 initialSpringVelocity:v11 animations:v10 completion:a5];
      _Block_object_dispose(v12, 8);
    }
  }
}

void __83__PGPIPRemoteObjectSceneController_updateSize_animationType_initialSpringVelocity___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DD250] _currentAnimationSettings];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__PGPIPRemoteObjectSceneController_updateSize_animationType_initialSpringVelocity___block_invoke_2;
  v7[3] = &unk_1E7F33568;
  v5 = *(a1 + 40);
  v8 = v2;
  v9 = v5;
  v7[4] = v3;
  v6 = v2;
  [v4 performUpdate:v7];
}

void __83__PGPIPRemoteObjectSceneController_updateSize_animationType_initialSpringVelocity___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 setFrame:{*(a1[4] + 24), *(a1[4] + 32), *(a1[4] + 40), *(a1[4] + 48)}];
  v6 = *(*(a1[6] + 8) + 40);
  v7 = v5;
  [v7 setAnimationFence:v6];
  [v7 setAnimationSettings:a1[5]];
}

void __83__PGPIPRemoteObjectSceneController_updateSize_animationType_initialSpringVelocity___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_autoreleasePoolPop(v2);
}

- (void)_performAnimationWithType:(int64_t)a3 initialSpringVelocity:(double)a4 animations:(id)a5 completion:(id)a6
{
  v10 = a5;
  v9 = a6;
  switch(a3)
  {
    case 2:
      [MEMORY[0x1E69DD250] PG_animateUsingDefaultDampedSpringWithInitialSpringVelocity:v10 animations:v9 completion:a4];
      break;
    case 1:
      [MEMORY[0x1E69DD250] PG_animateUsingDefaultTimingWithAnimations:v10 completion:v9];
      break;
    case 0:
      [MEMORY[0x1E69DD250] PG_performWithoutAnimation:v10];
      v9[2](v9, 1);
      break;
  }
}

- (void)setForeground:(BOOL)a3
{
  v3 = a3;
  v8 = [(FBScene *)self->_scene settings];
  if ([v8 isForeground] == v3)
  {
  }

  else
  {
    v5 = [(FBScene *)self->_scene isValid];

    if (v5)
    {
      if (v3 && ([(FBScene *)self->_scene isActive]& 1) == 0)
      {
        scene = self->_scene;
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __50__PGPIPRemoteObjectSceneController_setForeground___block_invoke;
        v11[3] = &unk_1E7F335E0;
        v12 = v3;
        v11[4] = self;
        [(FBScene *)scene performUpdate:v11];
      }

      else
      {
        v6 = self->_scene;
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __50__PGPIPRemoteObjectSceneController_setForeground___block_invoke_2;
        v9[3] = &unk_1E7F33608;
        v10 = v3;
        v9[4] = self;
        [(FBScene *)v6 updateSettings:v9];
      }
    }
  }
}

void __50__PGPIPRemoteObjectSceneController_setForeground___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setForeground:v3];
  [v4 setFrame:{*(*(a1 + 32) + 24), *(*(a1 + 32) + 32), *(*(a1 + 32) + 40), *(*(a1 + 32) + 48)}];
}

void __50__PGPIPRemoteObjectSceneController_setForeground___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setForeground:v3];
  [v4 setFrame:{*(*(a1 + 32) + 24), *(*(a1 + 32) + 32), *(*(a1 + 32) + 40), *(*(a1 + 32) + 48)}];
}

- (BOOL)isInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return lock_invalidated;
}

- (void)setInvalidated:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_invalidated = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidate
{
  if (![(PGPIPRemoteObjectSceneController *)self isInvalidated])
  {
    [(PGPIPRemoteObjectSceneController *)self setInvalidated:1];
    v5 = self->_scene;
    v6 = self->_scenePresenter;
    v3 = v6;
    v4 = v5;
    BSDispatchMain();
  }
}

uint64_t __46__PGPIPRemoteObjectSceneController_invalidate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateSettings:&__block_literal_global_123];
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

- (void)dealloc
{
  [(PGPIPRemoteObjectSceneController *)self invalidate];
  v3.receiver = self;
  v3.super_class = PGPIPRemoteObjectSceneController;
  [(PGPIPRemoteObjectSceneController *)&v3 dealloc];
}

@end
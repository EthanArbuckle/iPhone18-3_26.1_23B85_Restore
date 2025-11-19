@interface SBEmbeddedDisplayProfileFactory
- (BOOL)displayProfile:(id)a3 shouldConnectToDisplay:(id)a4;
- (id)createProfile;
- (id)displayProfile:(id)a3 rootSceneWindowForDisplayConfiguration:(id)a4;
- (id)initWithDelegate:(id *)a1;
- (void)displayProfile:(id)a3 modifyInitialSceneParameters:(id)a4;
@end

@implementation SBEmbeddedDisplayProfileFactory

void __48__SBEmbeddedDisplayProfileFactory_createProfile__block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277D54FA8];
  v3 = a2;
  v4 = +[(FBSSceneSpecification *)SBApplicationSceneSpecification];
  [v3 setPriorityLevel:v2 sceneSpecification:v4];
}

- (BOOL)displayProfile:(id)a3 shouldConnectToDisplay:(id)a4
{
  v4 = [a4 identity];
  v5 = [v4 isMainRootDisplay];

  return v5;
}

- (id)displayProfile:(id)a3 rootSceneWindowForDisplayConfiguration:(id)a4
{
  v4 = [SBMainDisplayRootWindowScenePresentationBinder sharedInstance:a3];
  v5 = [v4 rootWindow];

  return v5;
}

- (void)displayProfile:(id)a3 modifyInitialSceneParameters:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained embeddedFactory:self modifyInitialSceneParameters:v5];
}

- (id)initWithDelegate:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = SBEmbeddedDisplayProfileFactory;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
    }
  }

  return a1;
}

- (id)createProfile
{
  if (a1)
  {
    a1 = [MEMORY[0x277D54F98] sceneHostingProfileWithDelegate:a1 builder:&__block_literal_global_399];
    v1 = vars8;
  }

  return a1;
}

@end
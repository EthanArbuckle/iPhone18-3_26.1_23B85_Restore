@interface SBEmbeddedDisplayProfileFactory
- (BOOL)displayProfile:(id)profile shouldConnectToDisplay:(id)display;
- (id)createProfile;
- (id)displayProfile:(id)profile rootSceneWindowForDisplayConfiguration:(id)configuration;
- (id)initWithDelegate:(id *)delegate;
- (void)displayProfile:(id)profile modifyInitialSceneParameters:(id)parameters;
@end

@implementation SBEmbeddedDisplayProfileFactory

void __48__SBEmbeddedDisplayProfileFactory_createProfile__block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277D54FA8];
  v3 = a2;
  v4 = +[(FBSSceneSpecification *)SBApplicationSceneSpecification];
  [v3 setPriorityLevel:v2 sceneSpecification:v4];
}

- (BOOL)displayProfile:(id)profile shouldConnectToDisplay:(id)display
{
  identity = [display identity];
  isMainRootDisplay = [identity isMainRootDisplay];

  return isMainRootDisplay;
}

- (id)displayProfile:(id)profile rootSceneWindowForDisplayConfiguration:(id)configuration
{
  v4 = [SBMainDisplayRootWindowScenePresentationBinder sharedInstance:profile];
  rootWindow = [v4 rootWindow];

  return rootWindow;
}

- (void)displayProfile:(id)profile modifyInitialSceneParameters:(id)parameters
{
  parametersCopy = parameters;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained embeddedFactory:self modifyInitialSceneParameters:parametersCopy];
}

- (id)initWithDelegate:(id *)delegate
{
  v3 = a2;
  if (delegate)
  {
    v6.receiver = delegate;
    v6.super_class = SBEmbeddedDisplayProfileFactory;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    delegate = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
    }
  }

  return delegate;
}

- (id)createProfile
{
  if (self)
  {
    self = [MEMORY[0x277D54F98] sceneHostingProfileWithDelegate:self builder:&__block_literal_global_399];
    v1 = vars8;
  }

  return self;
}

@end
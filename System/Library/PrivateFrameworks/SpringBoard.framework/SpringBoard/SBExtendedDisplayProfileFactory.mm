@interface SBExtendedDisplayProfileFactory
- (id)createProfile;
- (id)displayProfile:(id)profile initialDisplayConfigurationRequestForDisplay:(id)display;
- (id)displayProfile:(id)profile rootSceneWindowForDisplayConfiguration:(id)configuration;
- (id)initWithDefaults:(void *)defaults delegate:;
- (void)displayProfile:(id)profile modifyInitialSceneParameters:(id)parameters;
@end

@implementation SBExtendedDisplayProfileFactory

void __48__SBExtendedDisplayProfileFactory_createProfile__block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277D54FB0];
  v4 = a2;
  v3 = +[(FBSSceneSpecification *)SBExternalDisplayApplicationSceneSpecification];
  [v4 setPriorityLevel:v2 sceneSpecification:v3];

  [v4 setMainLike:1];
  [v4 setCloningSupported:0];
  [v4 deriveWithIdentifier:@"com.apple.springboard.shellui"];
}

- (id)displayProfile:(id)profile rootSceneWindowForDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [(SBRootSceneWindow *)[SBExtendedDisplayProfileFactoryRootSceneWindow alloc] initWithDisplayConfiguration:configurationCopy];

  return v5;
}

- (void)displayProfile:(id)profile modifyInitialSceneParameters:(id)parameters
{
  parametersCopy = parameters;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained extendedFactory:self modifyInitialSceneParameters:parametersCopy];
}

- (id)displayProfile:(id)profile initialDisplayConfigurationRequestForDisplay:(id)display
{
  v5 = MEMORY[0x277D0AD40];
  displayCopy = display;
  v7 = objc_alloc_init(v5);
  v8 = [(SBExternalDisplayDefaults *)self->_defaults displayModeSettingsForDisplay:displayCopy];
  v9 = [MEMORY[0x277D65DB0] withDisplay:displayCopy];

  [v8 overscanCompensation];
  [v7 setOverscanCompensation:FBSDisplayOverscanCompensationForDisplayValue()];
  [v9 logicalScaleForDisplayScale:{objc_msgSend(v8, "scale")}];
  [v7 setLogicalScale:{v10, v10}];
  [(SBExternalDisplayDefaults *)self->_defaults contentsScale];
  [v7 setPointScale:?];

  return v7;
}

- (id)initWithDefaults:(void *)defaults delegate:
{
  v6 = a2;
  defaultsCopy = defaults;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = SBExtendedDisplayProfileFactory;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeWeak(self + 2, defaultsCopy);
    }
  }

  return self;
}

- (id)createProfile
{
  if (self)
  {
    self = [MEMORY[0x277D54F98] sceneHostingProfileWithDelegate:self builder:&__block_literal_global_376];
    v1 = vars8;
  }

  return self;
}

@end
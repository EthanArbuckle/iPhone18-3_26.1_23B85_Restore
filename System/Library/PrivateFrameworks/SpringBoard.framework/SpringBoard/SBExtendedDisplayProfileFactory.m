@interface SBExtendedDisplayProfileFactory
- (id)createProfile;
- (id)displayProfile:(id)a3 initialDisplayConfigurationRequestForDisplay:(id)a4;
- (id)displayProfile:(id)a3 rootSceneWindowForDisplayConfiguration:(id)a4;
- (id)initWithDefaults:(void *)a3 delegate:;
- (void)displayProfile:(id)a3 modifyInitialSceneParameters:(id)a4;
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

- (id)displayProfile:(id)a3 rootSceneWindowForDisplayConfiguration:(id)a4
{
  v4 = a4;
  v5 = [(SBRootSceneWindow *)[SBExtendedDisplayProfileFactoryRootSceneWindow alloc] initWithDisplayConfiguration:v4];

  return v5;
}

- (void)displayProfile:(id)a3 modifyInitialSceneParameters:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained extendedFactory:self modifyInitialSceneParameters:v5];
}

- (id)displayProfile:(id)a3 initialDisplayConfigurationRequestForDisplay:(id)a4
{
  v5 = MEMORY[0x277D0AD40];
  v6 = a4;
  v7 = objc_alloc_init(v5);
  v8 = [(SBExternalDisplayDefaults *)self->_defaults displayModeSettingsForDisplay:v6];
  v9 = [MEMORY[0x277D65DB0] withDisplay:v6];

  [v8 overscanCompensation];
  [v7 setOverscanCompensation:FBSDisplayOverscanCompensationForDisplayValue()];
  [v9 logicalScaleForDisplayScale:{objc_msgSend(v8, "scale")}];
  [v7 setLogicalScale:{v10, v10}];
  [(SBExternalDisplayDefaults *)self->_defaults contentsScale];
  [v7 setPointScale:?];

  return v7;
}

- (id)initWithDefaults:(void *)a3 delegate:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = SBExtendedDisplayProfileFactory;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeWeak(a1 + 2, v7);
    }
  }

  return a1;
}

- (id)createProfile
{
  if (a1)
  {
    a1 = [MEMORY[0x277D54F98] sceneHostingProfileWithDelegate:a1 builder:&__block_literal_global_376];
    v1 = vars8;
  }

  return a1;
}

@end
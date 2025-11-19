@interface SBLaunchImageOverridesContext
- (SBLaunchImageOverridesContext)initWithSceneID:(id)a3 activationSettings:(id)a4;
@end

@implementation SBLaunchImageOverridesContext

- (SBLaunchImageOverridesContext)initWithSceneID:(id)a3 activationSettings:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = SBLaunchImageOverridesContext;
  v9 = [(SBLaunchImageOverridesContext *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sceneID, a3);
    objc_storeStrong(&v10->_settings, a4);
    v11 = [(SBActivationSettings *)v10->_settings BOOLForActivationSetting:41];
    v10->_ignoreSnapshots = (v11 | [(SBActivationSettings *)v10->_settings BOOLForActivationSetting:53]) & 1;
    v12 = [(SBActivationSettings *)v10->_settings objectForActivationSetting:17];
    launchImageName = v10->_launchImageName;
    v10->_launchImageName = v12;

    v14 = [(SBActivationSettings *)v10->_settings objectForActivationSetting:5];
    url = v10->_url;
    v10->_url = v14;
  }

  return v10;
}

@end
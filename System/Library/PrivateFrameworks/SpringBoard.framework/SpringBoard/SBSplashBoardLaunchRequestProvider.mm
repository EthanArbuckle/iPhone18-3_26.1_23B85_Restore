@interface SBSplashBoardLaunchRequestProvider
- (SBSplashBoardLaunchRequestProvider)initWithApplicationController:(id)a3 displayConfiguration:(id)a4;
- (id)launchRequestsForApplication:(id)a3 withCompatibilityInfo:(id)a4 defaultLaunchRequests:(id)a5;
@end

@implementation SBSplashBoardLaunchRequestProvider

- (SBSplashBoardLaunchRequestProvider)initWithApplicationController:(id)a3 displayConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBSplashBoardLaunchRequestProvider;
  v9 = [(SBSplashBoardLaunchRequestProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_applicationController, a3);
    objc_storeStrong(&v10->_displayConfiguration, a4);
  }

  return v10;
}

- (id)launchRequestsForApplication:(id)a3 withCompatibilityInfo:(id)a4 defaultLaunchRequests:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [v7 supportsDeviceFamily:2];
  if (v10)
  {
    v47 = SBLayoutSupportsSideLayoutRole();
  }

  else
  {
    v47 = 0;
  }

  if (__sb__runningInSpringBoard())
  {
    v11 = SBFEffectiveDeviceClass();
    v12 = v10 ^ 1;
    if (v11 != 2)
    {
      v12 = 0;
    }

    v46 = v12;
  }

  else
  {
    v13 = [MEMORY[0x277D75418] currentDevice];
    v14 = [v13 userInterfaceIdiom];
    v15 = v10 ^ 1;
    if (v14 != 1)
    {
      v15 = 0;
    }

    v46 = v15;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v8;
  v16 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v49;
    v44 = v9;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v48 + 1) + 8 * i);
        applicationController = self->_applicationController;
        v22 = [v7 bundleIdentifier];
        v23 = [(SBApplicationController *)applicationController applicationWithBundleIdentifier:v22];

        if (v46)
        {
          SBPhoneOnPadFallbackLaunchSize();
          [v20 setReferenceSize:?];
        }

        else if ([v23 isClassic])
        {
          v24 = [MEMORY[0x277D77750] sb_displayEdgeInfoForApplication:v23];
          v25 = [v24 safeAreaInsetsPortrait];

          if (v25)
          {
            v26 = self;
            v27 = v7;
            v28 = objc_alloc(MEMORY[0x277D656B0]);
            [v25 topInset];
            v30 = v29;
            [v25 leftInset];
            v32 = v31;
            [v25 bottomInset];
            v34 = v33;
            [v25 rightInset];
            v36 = [v28 initWithTop:v30 left:v32 bottom:v34 right:v35];
            v37 = +[SBApplication _deviceSafeAreaInsets];
            if (([v37 isEqual:v36] & 1) == 0)
            {
              [v20 setCustomSafeAreaInsets:v36];
            }

            v7 = v27;
            self = v26;
            v9 = v44;
          }

          [v23 defaultLaunchingSizeForDisplayConfiguration:self->_displayConfiguration];
          [v20 setReferenceSize:?];
        }

        [v9 addObject:v20];
        if (v47)
        {
          v38 = [v23 info];
          v39 = [v38 wantsFullScreen];

          if ((v39 & 1) == 0)
          {
            [v20 interfaceOrientation];
            SBLayoutDefaultSideLayoutElementWidth();
            v41 = v40;
            v42 = [v20 copy];
            [v20 naturalSize];
            [v42 setNaturalSize:v41];
            [v9 addObject:v42];
          }
        }
      }

      v17 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v17);
  }

  return v9;
}

@end
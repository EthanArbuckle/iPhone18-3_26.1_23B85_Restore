@interface SBSplashBoardLaunchRequestProvider
- (SBSplashBoardLaunchRequestProvider)initWithApplicationController:(id)controller displayConfiguration:(id)configuration;
- (id)launchRequestsForApplication:(id)application withCompatibilityInfo:(id)info defaultLaunchRequests:(id)requests;
@end

@implementation SBSplashBoardLaunchRequestProvider

- (SBSplashBoardLaunchRequestProvider)initWithApplicationController:(id)controller displayConfiguration:(id)configuration
{
  controllerCopy = controller;
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = SBSplashBoardLaunchRequestProvider;
  v9 = [(SBSplashBoardLaunchRequestProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_applicationController, controller);
    objc_storeStrong(&v10->_displayConfiguration, configuration);
  }

  return v10;
}

- (id)launchRequestsForApplication:(id)application withCompatibilityInfo:(id)info defaultLaunchRequests:(id)requests
{
  v53 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  requestsCopy = requests;
  array = [MEMORY[0x277CBEB18] array];
  v10 = [applicationCopy supportsDeviceFamily:2];
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];
    v15 = v10 ^ 1;
    if (userInterfaceIdiom != 1)
    {
      v15 = 0;
    }

    v46 = v15;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = requestsCopy;
  v16 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v49;
    v44 = array;
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
        bundleIdentifier = [applicationCopy bundleIdentifier];
        v23 = [(SBApplicationController *)applicationController applicationWithBundleIdentifier:bundleIdentifier];

        if (v46)
        {
          SBPhoneOnPadFallbackLaunchSize();
          [v20 setReferenceSize:?];
        }

        else if ([v23 isClassic])
        {
          v24 = [MEMORY[0x277D77750] sb_displayEdgeInfoForApplication:v23];
          safeAreaInsetsPortrait = [v24 safeAreaInsetsPortrait];

          if (safeAreaInsetsPortrait)
          {
            selfCopy = self;
            v27 = applicationCopy;
            v28 = objc_alloc(MEMORY[0x277D656B0]);
            [safeAreaInsetsPortrait topInset];
            v30 = v29;
            [safeAreaInsetsPortrait leftInset];
            v32 = v31;
            [safeAreaInsetsPortrait bottomInset];
            v34 = v33;
            [safeAreaInsetsPortrait rightInset];
            v36 = [v28 initWithTop:v30 left:v32 bottom:v34 right:v35];
            v37 = +[SBApplication _deviceSafeAreaInsets];
            if (([v37 isEqual:v36] & 1) == 0)
            {
              [v20 setCustomSafeAreaInsets:v36];
            }

            applicationCopy = v27;
            self = selfCopy;
            array = v44;
          }

          [v23 defaultLaunchingSizeForDisplayConfiguration:self->_displayConfiguration];
          [v20 setReferenceSize:?];
        }

        [array addObject:v20];
        if (v47)
        {
          info = [v23 info];
          wantsFullScreen = [info wantsFullScreen];

          if ((wantsFullScreen & 1) == 0)
          {
            [v20 interfaceOrientation];
            SBLayoutDefaultSideLayoutElementWidth();
            v41 = v40;
            v42 = [v20 copy];
            [v20 naturalSize];
            [v42 setNaturalSize:v41];
            [array addObject:v42];
          }
        }
      }

      v17 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v17);
  }

  return array;
}

@end
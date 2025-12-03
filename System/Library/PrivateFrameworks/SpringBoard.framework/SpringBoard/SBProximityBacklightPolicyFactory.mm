@interface SBProximityBacklightPolicyFactory
+ (id)createNewProximityBacklightPolicyWithBacklightController:(id)controller sensorModeController:(id)modeController;
@end

@implementation SBProximityBacklightPolicyFactory

+ (id)createNewProximityBacklightPolicyWithBacklightController:(id)controller sensorModeController:(id)modeController
{
  modeControllerCopy = modeController;
  controllerCopy = controller;
  v7 = objc_alloc_init(SBProximityBacklightPolicyConfiguration);
  [(SBProximityBacklightPolicyConfiguration *)v7 setBacklightController:controllerCopy];

  [(SBProximityBacklightPolicyConfiguration *)v7 setSensorModeController:modeControllerCopy];
  v8 = +[SBProximityDomain rootSettings];
  [(SBProximityBacklightPolicyConfiguration *)v7 setProximitySettings:v8];

  if (SBUIIsSystemApertureEnabled())
  {
    v9 = SBLogProximitySensor();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Using SBSystemApertureProximityBacklightPolicy.", buf, 2u);
    }

    v10 = off_2783A2488;
    goto LABEL_19;
  }

  if (!__sb__runningInSpringBoard())
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom])
    {
    }

    else
    {
      v12 = SBFEffectiveHomeButtonType();

      if (v12 == 2)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v9 = SBLogProximitySensor();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Using SBDefaultProximityBacklightPolicy.", v15, 2u);
    }

    v10 = off_27839F8B8;
    goto LABEL_19;
  }

  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1 || SBFEffectiveHomeButtonType() != 2)
  {
    goto LABEL_16;
  }

LABEL_13:
  v9 = SBLogProximitySensor();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Using SBNotchedStatusBarProximityBacklightPolicy.", v16, 2u);
  }

  v10 = off_2783A0F38;
LABEL_19:

  v13 = [objc_alloc(*v10) initWithConfiguration:v7];

  return v13;
}

@end
@interface NCNotificationRequest(AlertSuppression)
- (uint64_t)sb_shouldSuppressAlert;
@end

@implementation NCNotificationRequest(AlertSuppression)

- (uint64_t)sb_shouldSuppressAlert
{
  v2 = +[SBMainSwitcherControllerCoordinator _shim_activeSwitcherController];
  layoutStatePrimaryElement = [v2 layoutStatePrimaryElement];
  workspaceEntity = [layoutStatePrimaryElement workspaceEntity];
  applicationSceneEntity = [workspaceEntity applicationSceneEntity];
  sceneHandle = [applicationSceneEntity sceneHandle];

  sceneIfExists = [sceneHandle sceneIfExists];
  settings = [sceneIfExists settings];

  if (sceneHandle && [settings isForeground] && (objc_msgSend(settings, "isOccluded") & 1) == 0)
  {
    application = [sceneHandle application];
    bundleIdentifier = [application bundleIdentifier];
    options = [self options];
    if ([options suppressesAlertsWhenAppIsActive])
    {
      sectionIdentifier = [self sectionIdentifier];
      v15 = [sectionIdentifier isEqualToString:bundleIdentifier];

      if (v15)
      {
        v9 = 1;
LABEL_14:

        goto LABEL_5;
      }
    }

    else
    {
    }

    options2 = [self options];
    alertSuppressionContexts = [options2 alertSuppressionContexts];
    sectionIdentifier2 = [self sectionIdentifier];
    if ([sceneHandle shouldSuppressAlertForSuppressionContexts:alertSuppressionContexts sectionIdentifier:sectionIdentifier2])
    {
      v9 = 1;
    }

    else
    {
      options3 = [self options];
      alertSuppressionContexts2 = [options3 alertSuppressionContexts];
      [self parentSectionIdentifier];
      v23 = application;
      v22 = v21 = bundleIdentifier;
      v9 = [sceneHandle shouldSuppressAlertForSuppressionContexts:alertSuppressionContexts2 sectionIdentifier:v22];

      bundleIdentifier = v21;
      application = v23;
    }

    goto LABEL_14;
  }

  v9 = 0;
LABEL_5:

  return v9;
}

@end
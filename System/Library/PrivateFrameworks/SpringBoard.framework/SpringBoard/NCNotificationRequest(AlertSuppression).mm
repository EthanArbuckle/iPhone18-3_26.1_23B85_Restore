@interface NCNotificationRequest(AlertSuppression)
- (uint64_t)sb_shouldSuppressAlert;
@end

@implementation NCNotificationRequest(AlertSuppression)

- (uint64_t)sb_shouldSuppressAlert
{
  v2 = +[SBMainSwitcherControllerCoordinator _shim_activeSwitcherController];
  v3 = [v2 layoutStatePrimaryElement];
  v4 = [v3 workspaceEntity];
  v5 = [v4 applicationSceneEntity];
  v6 = [v5 sceneHandle];

  v7 = [v6 sceneIfExists];
  v8 = [v7 settings];

  if (v6 && [v8 isForeground] && (objc_msgSend(v8, "isOccluded") & 1) == 0)
  {
    v11 = [v6 application];
    v12 = [v11 bundleIdentifier];
    v13 = [a1 options];
    if ([v13 suppressesAlertsWhenAppIsActive])
    {
      v14 = [a1 sectionIdentifier];
      v15 = [v14 isEqualToString:v12];

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

    v16 = [a1 options];
    v17 = [v16 alertSuppressionContexts];
    v18 = [a1 sectionIdentifier];
    if ([v6 shouldSuppressAlertForSuppressionContexts:v17 sectionIdentifier:v18])
    {
      v9 = 1;
    }

    else
    {
      v19 = [a1 options];
      v20 = [v19 alertSuppressionContexts];
      [a1 parentSectionIdentifier];
      v23 = v11;
      v22 = v21 = v12;
      v9 = [v6 shouldSuppressAlertForSuppressionContexts:v20 sectionIdentifier:v22];

      v12 = v21;
      v11 = v23;
    }

    goto LABEL_14;
  }

  v9 = 0;
LABEL_5:

  return v9;
}

@end
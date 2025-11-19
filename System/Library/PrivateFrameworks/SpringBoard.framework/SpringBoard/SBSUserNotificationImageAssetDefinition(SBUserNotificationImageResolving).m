@interface SBSUserNotificationImageAssetDefinition(SBUserNotificationImageResolving)
- (id)sb_resolvedImage;
- (void)sb_resolvedImage;
@end

@implementation SBSUserNotificationImageAssetDefinition(SBUserNotificationImageResolving)

- (id)sb_resolvedImage
{
  v2 = [a1 imagePath];
  v3 = [a1 catalogPath];
  v4 = [a1 catalogImageKey];
  v5 = v4;
  if (v2)
  {
    v6 = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:v2];
    if (v6)
    {
      goto LABEL_19;
    }

    v7 = SBLogAlertItems();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SBSUserNotificationImageAssetDefinition(SBUserNotificationImageResolving) sb_resolvedImage];
    }

    v6 = 0;
    goto LABEL_18;
  }

  v6 = 0;
  if (v3 && v4)
  {
    v8 = objc_alloc(MEMORY[0x277D75DE0]);
    v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
    v10 = [MEMORY[0x277D75418] currentDevice];
    v14 = 0;
    v11 = [v8 initWithURL:v9 idiom:objc_msgSend(v10 error:{"userInterfaceIdiom"), &v14}];
    v7 = v14;

    if (v11)
    {
      v6 = [v11 imageNamed:v5 withTrait:0];
      [v6 _sbSetAssociatedAssetManager:v11];
      if (v6)
      {
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }

      v12 = SBLogAlertItems();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SBSUserNotificationImageAssetDefinition(SBUserNotificationImageResolving) sb_resolvedImage];
      }
    }

    else
    {
      if (!v7)
      {
LABEL_16:
        v6 = 0;
        goto LABEL_17;
      }

      v12 = SBLogAlertItems();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SBSUserNotificationImageAssetDefinition(SBUserNotificationImageResolving) sb_resolvedImage];
      }
    }

    goto LABEL_16;
  }

LABEL_19:

  return v6;
}

- (void)sb_resolvedImage
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_14();
  v3 = v0;
  OUTLINED_FUNCTION_3_4(&dword_21ED4E000, v1, v1, "Unable to load asset manager for path: %{public}@ due to error: %{public}@", v2);
}

@end
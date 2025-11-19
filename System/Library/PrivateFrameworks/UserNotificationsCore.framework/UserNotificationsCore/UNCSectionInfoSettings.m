@interface UNCSectionInfoSettings
- (BOOL)allowsNotifications;
- (BOOL)isAuthorizedTemporarily;
- (BOOL)isBulletinMutedForThreadIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)stateCapture;
- (UNCSectionInfoSettings)initWithCoder:(id)a3;
- (UNCSectionInfoSettings)initWithDefaultsForSectionType:(int64_t)a3;
- (id)_alertTypeDescription;
- (id)_announceSettingDescription;
- (id)_authorizationStatusDescription;
- (id)_bulletinGroupingSettingDescription;
- (id)_contentPreviewSettingDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)spokenNotificationSetting;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)muteSectionUntilDate:(id)a3;
- (void)muteThreadIdentifier:(id)a3 untilDate:(id)a4;
- (void)setAllowsNotifications:(BOOL)a3;
- (void)setShowsInLockScreen:(BOOL)a3;
- (void)setShowsInNotificationCenter:(BOOL)a3;
- (void)setSpokenNotificationSetting:(int64_t)a3;
- (void)unmuteThreadIdentifier:(id)a3;
@end

@implementation UNCSectionInfoSettings

- (UNCSectionInfoSettings)initWithDefaultsForSectionType:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = UNCSectionInfoSettings;
  v4 = [(UNCSectionInfoSettings *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(UNCSectionInfoSettings *)v4 setAuthorizationStatus:2];
    [(UNCSectionInfoSettings *)v5 setNotificationCenterSetting:2];
    if ((a3 | 2) == 2)
    {
      [(UNCSectionInfoSettings *)v5 setLockScreenSetting:2];
      [(UNCSectionInfoSettings *)v5 setShowsOnExternalDevices:1];
      [(UNCSectionInfoSettings *)v5 setContentPreviewSetting:0];
      [(UNCSectionInfoSettings *)v5 setAlertType:1];
      [(UNCSectionInfoSettings *)v5 setPushSettings:0];
      [(UNCSectionInfoSettings *)v5 setCarPlaySetting:0];
      [(UNCSectionInfoSettings *)v5 setRemoteNotificationsSetting:2];
      [(UNCSectionInfoSettings *)v5 setCriticalAlertSetting:0];
      [(UNCSectionInfoSettings *)v5 setTimeSensitiveSetting:0];
      [(UNCSectionInfoSettings *)v5 setUserConfiguredTimeSensitiveSetting:0];
      [(UNCSectionInfoSettings *)v5 setScheduledDeliverySetting:1];
      [(UNCSectionInfoSettings *)v5 setAnnounceSetting:1];
      [(UNCSectionInfoSettings *)v5 setDirectMessagesSetting:0];
      [(UNCSectionInfoSettings *)v5 setUserConfiguredDirectMessagesSetting:0];
    }
  }

  return v5;
}

- (void)muteSectionUntilDate:(id)a3
{
  v4 = [UNCSectionMuteAssertion sectionMuteAssertionUntilDate:a3];
  [(UNCSectionInfoSettings *)self setMuteAssertion:v4];
}

- (void)muteThreadIdentifier:(id)a3 untilDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UNCSectionInfoSettings *)self muteAssertion];
  if (v8 && (v9 = v8, [(UNCSectionInfoSettings *)self muteAssertion], v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, v9, (isKindOfClass & 1) == 0))
  {
    if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_ERROR))
    {
      [UNCSectionInfoSettings muteThreadIdentifier:untilDate:];
    }
  }

  else if (v6 && [v6 length])
  {
    v12 = [(UNCSectionInfoSettings *)self muteAssertion];

    if (!v12)
    {
      v13 = +[UNCThreadsMuteAssertion threadsMuteAssertion];
      [(UNCSectionInfoSettings *)self setMuteAssertion:v13];
    }

    v14 = [(UNCSectionInfoSettings *)self muteAssertion];
    [v14 setMutedUntilDate:v7 forThreadIdentifier:v6];
  }

  else if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_ERROR))
  {
    [UNCSectionInfoSettings muteThreadIdentifier:untilDate:];
  }
}

- (void)unmuteThreadIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(UNCSectionInfoSettings *)self muteAssertion];
  if (v5 && (v6 = v5, [(UNCSectionInfoSettings *)self muteAssertion], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, v6, (isKindOfClass & 1) == 0))
  {
    if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_ERROR))
    {
      [UNCSectionInfoSettings unmuteThreadIdentifier:];
    }
  }

  else if (v4 && [v4 length])
  {
    v9 = [(UNCSectionInfoSettings *)self muteAssertion];
    [v9 setUnmutedForThreadIdentifier:v4];
  }

  else if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_ERROR))
  {
    [UNCSectionInfoSettings unmuteThreadIdentifier:];
  }
}

- (BOOL)isBulletinMutedForThreadIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(UNCSectionInfoSettings *)self muteAssertion];
  v6 = [v5 isActiveForThreadIdentifier:v4];

  return v6;
}

- (NSDictionary)stateCapture
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(UNCSectionInfoSettings *)self _authorizationStatusDescription];
  [v3 setValue:v4 forKey:@"Authorized"];

  v5 = [(UNCSectionInfoSettings *)self authorizationExpirationDate];
  v6 = [v5 description];
  [v3 setValue:v6 forKey:@"Authorization Expiration Date"];

  v7 = [(UNCSectionInfoSettings *)self lastUserGrantedAuthorizationDate];
  v8 = [v7 description];
  [v3 setValue:v8 forKey:@"Last User Granted Authorizated"];

  v9 = [(UNCSectionInfoSettings *)self muteAssertion];
  v10 = [v9 description];
  [v3 setValue:v10 forKey:@"Mute Configuration"];

  if ([(UNCSectionInfoSettings *)self notificationCenterSetting])
  {
    v11 = UNCStringFromBool([(UNCSectionInfoSettings *)self notificationCenterSetting]== 2);
    [v3 setValue:v11 forKey:@"NotificationCenter"];
  }

  if ([(UNCSectionInfoSettings *)self lockScreenSetting])
  {
    v12 = UNCStringFromBool([(UNCSectionInfoSettings *)self lockScreenSetting]== 2);
    [v3 setValue:v12 forKey:@"LockScreen"];
  }

  if ([(UNCSectionInfoSettings *)self carPlaySetting])
  {
    v13 = UNCStringFromBool([(UNCSectionInfoSettings *)self carPlaySetting]== 2);
    [v3 setValue:v13 forKey:@"CarPlay"];
  }

  if ([(UNCSectionInfoSettings *)self remoteNotificationsSetting])
  {
    v14 = UNCStringFromBool([(UNCSectionInfoSettings *)self remoteNotificationsSetting]== 2);
    [v3 setValue:v14 forKey:@"RemoteNotifications"];
  }

  if ([(UNCSectionInfoSettings *)self criticalAlertSetting])
  {
    v15 = UNCStringFromBool([(UNCSectionInfoSettings *)self criticalAlertSetting]== 2);
    [v3 setValue:v15 forKey:@"CriticalAlerts"];
  }

  if ([(UNCSectionInfoSettings *)self timeSensitiveSetting])
  {
    v16 = UNCStringFromBool([(UNCSectionInfoSettings *)self timeSensitiveSetting]== 2);
    [v3 setValue:v16 forKey:@"TimeSensitive"];

    v17 = UNCStringFromBool([(UNCSectionInfoSettings *)self hasUserConfiguredTimeSensitiveSetting]);
    [v3 setValue:v17 forKey:@"UserConfiguredTimeSensitive"];
  }

  if ([(UNCSectionInfoSettings *)self announceSetting])
  {
    v18 = [(UNCSectionInfoSettings *)self _announceSettingDescription];
    [v3 setValue:v18 forKey:@"AnnounceNotifications"];
  }

  if ([(UNCSectionInfoSettings *)self scheduledDeliverySetting])
  {
    v19 = UNCStringFromBool([(UNCSectionInfoSettings *)self scheduledDeliverySetting]== 2);
    [v3 setValue:v19 forKey:@"ScheduledDelivery"];
  }

  if ([(UNCSectionInfoSettings *)self directMessagesSetting])
  {
    v20 = UNCStringFromBool([(UNCSectionInfoSettings *)self directMessagesSetting]== 2);
    [v3 setValue:v20 forKey:@"DirectMessages"];

    v21 = UNCStringFromBool([(UNCSectionInfoSettings *)self hasUserConfiguredDirectMessagesSetting]);
    [v3 setValue:v21 forKey:@"UserConfiguredDirectMessages"];
  }

  v22 = UNCStringFromBool([(UNCSectionInfoSettings *)self showsOnExternalDevices]);
  [v3 setValue:v22 forKey:@"ShowsOnExternalDevices"];

  v23 = UNCStringFromBool([(UNCSectionInfoSettings *)self showsCustomSettingsLink]);
  [v3 setValue:v23 forKey:@"CustomSettingsLink"];

  v24 = [(UNCSectionInfoSettings *)self _contentPreviewSettingDescription];
  [v3 setValue:v24 forKey:@"ContentPreviewSetting"];

  v25 = [(UNCSectionInfoSettings *)self _alertTypeDescription];
  [v3 setValue:v25 forKey:@"AlertType"];

  v26 = UNCStringFromBool([(UNCSectionInfoSettings *)self pushSettings]& 1);
  [v3 setValue:v26 forKey:@"PushSettingsBadgeSupported"];

  v27 = UNCStringFromBool(([(UNCSectionInfoSettings *)self pushSettings]>> 3) & 1);
  [v3 setValue:v27 forKey:@"PushSettingsBadgeEnabled"];

  v28 = UNCStringFromBool(([(UNCSectionInfoSettings *)self pushSettings]>> 1) & 1);
  [v3 setValue:v28 forKey:@"PushSettingsSoundSupported"];

  v29 = UNCStringFromBool(([(UNCSectionInfoSettings *)self pushSettings]>> 4) & 1);
  [v3 setValue:v29 forKey:@"PushSettingsSoundEnabled"];

  v30 = UNCStringFromBool(([(UNCSectionInfoSettings *)self pushSettings]>> 2) & 1);
  [v3 setValue:v30 forKey:@"PushSettingsAlertSupported"];

  v31 = UNCStringFromBool(([(UNCSectionInfoSettings *)self pushSettings]>> 5) & 1);
  [v3 setValue:v31 forKey:@"PushSettingsAlertEnabled"];

  v32 = [(UNCSectionInfoSettings *)self _bulletinGroupingSettingDescription];
  [v3 setValue:v32 forKey:@"GroupingSetting"];

  return v3;
}

- (id)description
{
  v3 = [(UNCSectionInfoSettings *)self _authorizationStatusDescription];
  v4 = [@" Section settings" stringByAppendingFormat:@": authorized = %@", v3];

  v5 = [(UNCSectionInfoSettings *)self authorizationExpirationDate];
  v6 = [v4 stringByAppendingFormat:@", authorization expiration date = %@", v5];

  v7 = [(UNCSectionInfoSettings *)self lastUserGrantedAuthorizationDate];
  v8 = [v6 stringByAppendingFormat:@", last user granted authorization date = %@", v7];

  v9 = [(UNCSectionInfoSettings *)self muteAssertion];
  v10 = [v8 stringByAppendingFormat:@", mute configuration = %@", v9];

  if ([(UNCSectionInfoSettings *)self notificationCenterSetting])
  {
    if ([(UNCSectionInfoSettings *)self notificationCenterSetting]== 2)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = [v10 stringByAppendingFormat:@", notification center = %@", v11];

    v10 = v12;
  }

  if ([(UNCSectionInfoSettings *)self lockScreenSetting])
  {
    if ([(UNCSectionInfoSettings *)self lockScreenSetting]== 2)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = [v10 stringByAppendingFormat:@", lock screen = %@", v13];

    v10 = v14;
  }

  if ([(UNCSectionInfoSettings *)self scheduledDeliverySetting])
  {
    if ([(UNCSectionInfoSettings *)self scheduledDeliverySetting]== 2)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = [v10 stringByAppendingFormat:@", scheduled delivery = %@", v15];

    v10 = v16;
  }

  if ([(UNCSectionInfoSettings *)self carPlaySetting])
  {
    if ([(UNCSectionInfoSettings *)self carPlaySetting]== 2)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v18 = [v10 stringByAppendingFormat:@", CarPlay = %@", v17];

    v10 = v18;
  }

  if ([(UNCSectionInfoSettings *)self remoteNotificationsSetting])
  {
    if ([(UNCSectionInfoSettings *)self remoteNotificationsSetting]== 2)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    v20 = [v10 stringByAppendingFormat:@", remote notifications = %@", v19];

    v10 = v20;
  }

  if ([(UNCSectionInfoSettings *)self criticalAlertSetting])
  {
    if ([(UNCSectionInfoSettings *)self criticalAlertSetting]== 2)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v22 = [v10 stringByAppendingFormat:@", critical alert = %@", v21];

    v10 = v22;
  }

  if ([(UNCSectionInfoSettings *)self timeSensitiveSetting])
  {
    if ([(UNCSectionInfoSettings *)self timeSensitiveSetting]== 2)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    v24 = [v10 stringByAppendingFormat:@", time sensitive = %@", v23];

    if ([(UNCSectionInfoSettings *)self hasUserConfiguredTimeSensitiveSetting])
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v10 = [v24 stringByAppendingFormat:@", user configured time sensitive = %@", v25];
  }

  if ([(UNCSectionInfoSettings *)self announceSetting])
  {
    v26 = [(UNCSectionInfoSettings *)self _announceSettingDescription];
    v27 = [v10 stringByAppendingFormat:@", announce setting = %@", v26];

    v10 = v27;
  }

  if ([(UNCSectionInfoSettings *)self directMessagesSetting])
  {
    if ([(UNCSectionInfoSettings *)self directMessagesSetting]== 2)
    {
      v28 = @"YES";
    }

    else
    {
      v28 = @"NO";
    }

    v29 = [v10 stringByAppendingFormat:@", direct messages = %@", v28];

    if ([(UNCSectionInfoSettings *)self hasUserConfiguredDirectMessagesSetting])
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    v10 = [v29 stringByAppendingFormat:@", user configured direct messages = %@", v30];
  }

  if ([(UNCSectionInfoSettings *)self showsOnExternalDevices])
  {
    v31 = @"YES";
  }

  else
  {
    v31 = @"NO";
  }

  v32 = [v10 stringByAppendingFormat:@", shows on external devices = %@", v31];

  if ([(UNCSectionInfoSettings *)self showsCustomSettingsLink])
  {
    v33 = @"YES";
  }

  else
  {
    v33 = @"NO";
  }

  v34 = [v32 stringByAppendingFormat:@", shows custom settings = %@", v33];

  v35 = [(UNCSectionInfoSettings *)self _contentPreviewSettingDescription];
  v36 = [v34 stringByAppendingFormat:@", content preview setting = %@", v35];

  v37 = [(UNCSectionInfoSettings *)self _alertTypeDescription];
  v38 = [v36 stringByAppendingFormat:@", Alert style = %@", v37];

  v39 = UNCPushSettingsDescription([(UNCSectionInfoSettings *)self pushSettings]);
  v40 = [v38 stringByAppendingFormat:@", Push settings = %@", v39];

  v41 = [(UNCSectionInfoSettings *)self _bulletinGroupingSettingDescription];
  v42 = [v40 stringByAppendingFormat:@", grouping = %@", v41];

  v46.receiver = self;
  v46.super_class = UNCSectionInfoSettings;
  v43 = [(UNCSectionInfoSettings *)&v46 description];
  v44 = [v43 stringByAppendingString:v42];

  return v44;
}

- (id)_authorizationStatusDescription
{
  v2 = [(UNCSectionInfoSettings *)self authorizationStatus];
  if (v2 > 4)
  {
    return @"<invalid>";
  }

  else
  {
    return off_1E85D7468[v2];
  }
}

- (id)_alertTypeDescription
{
  v2 = [(UNCSectionInfoSettings *)self alertType];
  if (v2 > 2)
  {
    return @"<invalid>";
  }

  else
  {
    return off_1E85D7490[v2];
  }
}

- (id)_contentPreviewSettingDescription
{
  v2 = [(UNCSectionInfoSettings *)self contentPreviewSetting];
  if (v2 > 3)
  {
    return @"<invalid>";
  }

  else
  {
    return off_1E85D74A8[v2];
  }
}

- (id)_bulletinGroupingSettingDescription
{
  v2 = [(UNCSectionInfoSettings *)self bulletinGroupingSetting];
  if (v2 > 2)
  {
    return @"<invalid>";
  }

  else
  {
    return off_1E85D74C8[v2];
  }
}

- (id)_announceSettingDescription
{
  v2 = [(UNCSectionInfoSettings *)self announceSetting];
  if (v2 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E85D74E0[v2];
  }
}

- (unint64_t)hash
{
  v3 = [(UNCSectionInfoSettings *)self authorizationStatus];
  v4 = [(UNCSectionInfoSettings *)self authorizationExpirationDate];
  v5 = [v4 hash] ^ v3;
  v6 = [(UNCSectionInfoSettings *)self lastUserGrantedAuthorizationDate];
  v7 = [v6 hash];
  v8 = [(UNCSectionInfoSettings *)self muteAssertion];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(UNCSectionInfoSettings *)self notificationCenterSetting];
  v11 = v10 ^ [(UNCSectionInfoSettings *)self lockScreenSetting];
  v12 = v9 ^ v11 ^ [(UNCSectionInfoSettings *)self showsOnExternalDevices];
  v13 = [(UNCSectionInfoSettings *)self showsCustomSettingsLink];
  v14 = v13 ^ [(UNCSectionInfoSettings *)self contentPreviewSetting];
  v15 = v12 ^ v14 ^ [(UNCSectionInfoSettings *)self alertType];
  v16 = [(UNCSectionInfoSettings *)self pushSettings];
  v17 = v16 ^ [(UNCSectionInfoSettings *)self carPlaySetting];
  v18 = v17 ^ [(UNCSectionInfoSettings *)self remoteNotificationsSetting];
  v19 = v18 ^ [(UNCSectionInfoSettings *)self criticalAlertSetting];
  v20 = v19 ^ [(UNCSectionInfoSettings *)self timeSensitiveSetting];
  v21 = v15 ^ v20 ^ [(UNCSectionInfoSettings *)self hasUserConfiguredTimeSensitiveSetting];
  v22 = [(UNCSectionInfoSettings *)self bulletinGroupingSetting];
  v23 = v22 ^ [(UNCSectionInfoSettings *)self announceSetting];
  v24 = v23 ^ [(UNCSectionInfoSettings *)self scheduledDeliverySetting];
  v25 = v24 ^ [(UNCSectionInfoSettings *)self directMessagesSetting];
  v26 = v25 ^ [(UNCSectionInfoSettings *)self hasUserConfiguredDirectMessagesSetting];

  return v21 ^ v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
      v6 = [(UNCSectionInfoSettings *)self authorizationStatus];
      if (v6 == [(UNCSectionInfoSettings *)v5 authorizationStatus])
      {
        v7 = [(UNCSectionInfoSettings *)self authorizationExpirationDate];
        v8 = [(UNCSectionInfoSettings *)v5 authorizationExpirationDate];
        if (v7 == v8)
        {
          v10 = [(UNCSectionInfoSettings *)self lastUserGrantedAuthorizationDate];
          v11 = [(UNCSectionInfoSettings *)v5 lastUserGrantedAuthorizationDate];
          if (v10 == v11)
          {
            v12 = [(UNCSectionInfoSettings *)self muteAssertion];
            v13 = [(UNCSectionInfoSettings *)v5 muteAssertion];
            if (!BSEqualObjects())
            {
              goto LABEL_30;
            }

            v14 = [(UNCSectionInfoSettings *)self notificationCenterSetting];
            if (v14 != [(UNCSectionInfoSettings *)v5 notificationCenterSetting])
            {
              goto LABEL_30;
            }

            v15 = [(UNCSectionInfoSettings *)self lockScreenSetting];
            if (v15 != [(UNCSectionInfoSettings *)v5 lockScreenSetting])
            {
              goto LABEL_30;
            }

            v16 = [(UNCSectionInfoSettings *)self showsOnExternalDevices];
            if (v16 != [(UNCSectionInfoSettings *)v5 showsOnExternalDevices])
            {
              goto LABEL_30;
            }

            v17 = [(UNCSectionInfoSettings *)self showsCustomSettingsLink];
            if (v17 != [(UNCSectionInfoSettings *)v5 showsCustomSettingsLink])
            {
              goto LABEL_30;
            }

            v18 = [(UNCSectionInfoSettings *)self contentPreviewSetting];
            if (v18 != [(UNCSectionInfoSettings *)v5 contentPreviewSetting])
            {
              goto LABEL_30;
            }

            v19 = [(UNCSectionInfoSettings *)self alertType];
            if (v19 != [(UNCSectionInfoSettings *)v5 alertType])
            {
              goto LABEL_30;
            }

            v20 = [(UNCSectionInfoSettings *)self pushSettings];
            if (v20 != [(UNCSectionInfoSettings *)v5 pushSettings])
            {
              goto LABEL_30;
            }

            v21 = [(UNCSectionInfoSettings *)self carPlaySetting];
            if (v21 != [(UNCSectionInfoSettings *)v5 carPlaySetting])
            {
              goto LABEL_30;
            }

            v22 = [(UNCSectionInfoSettings *)self remoteNotificationsSetting];
            if (v22 != [(UNCSectionInfoSettings *)v5 remoteNotificationsSetting])
            {
              goto LABEL_30;
            }

            v23 = [(UNCSectionInfoSettings *)self criticalAlertSetting];
            if (v23 == [(UNCSectionInfoSettings *)v5 criticalAlertSetting]&& (v24 = [(UNCSectionInfoSettings *)self timeSensitiveSetting], v24 == [(UNCSectionInfoSettings *)v5 timeSensitiveSetting]) && (v25 = [(UNCSectionInfoSettings *)self hasUserConfiguredTimeSensitiveSetting], v25 == [(UNCSectionInfoSettings *)v5 hasUserConfiguredTimeSensitiveSetting]) && (v26 = [(UNCSectionInfoSettings *)self bulletinGroupingSetting], v26 == [(UNCSectionInfoSettings *)v5 bulletinGroupingSetting]) && (v27 = [(UNCSectionInfoSettings *)self announceSetting], v27 == [(UNCSectionInfoSettings *)v5 announceSetting]) && (v28 = [(UNCSectionInfoSettings *)self scheduledDeliverySetting], v28 == [(UNCSectionInfoSettings *)v5 scheduledDeliverySetting]) && (v29 = [(UNCSectionInfoSettings *)self directMessagesSetting], v29 == [(UNCSectionInfoSettings *)v5 directMessagesSetting]))
            {
              v30 = [(UNCSectionInfoSettings *)self hasUserConfiguredDirectMessagesSetting];
              v9 = v30 ^ [(UNCSectionInfoSettings *)v5 hasUserConfiguredDirectMessagesSetting]^ 1;
            }

            else
            {
LABEL_30:
              LOBYTE(v9) = 0;
            }
          }

          else
          {
            LOBYTE(v9) = 0;
          }
        }

        else
        {
          LOBYTE(v9) = 0;
        }
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setAuthorizationStatus:{-[UNCSectionInfoSettings authorizationStatus](self, "authorizationStatus")}];
  v6 = [(UNCSectionInfoSettings *)self authorizationExpirationDate];
  [v5 setAuthorizationExpirationDate:v6];

  v7 = [(UNCSectionInfoSettings *)self lastUserGrantedAuthorizationDate];
  [v5 setLastUserGrantedAuthorizationDate:v7];

  v8 = [(UNCSectionInfoSettings *)self muteAssertion];
  v9 = [v8 copyWithZone:a3];
  [v5 setMuteAssertion:v9];

  [v5 setNotificationCenterSetting:{-[UNCSectionInfoSettings notificationCenterSetting](self, "notificationCenterSetting")}];
  [v5 setLockScreenSetting:{-[UNCSectionInfoSettings lockScreenSetting](self, "lockScreenSetting")}];
  [v5 setShowsOnExternalDevices:{-[UNCSectionInfoSettings showsOnExternalDevices](self, "showsOnExternalDevices")}];
  [v5 setShowsCustomSettingsLink:{-[UNCSectionInfoSettings showsCustomSettingsLink](self, "showsCustomSettingsLink")}];
  [v5 setContentPreviewSetting:{-[UNCSectionInfoSettings contentPreviewSetting](self, "contentPreviewSetting")}];
  [v5 setAlertType:{-[UNCSectionInfoSettings alertType](self, "alertType")}];
  [v5 setPushSettings:{-[UNCSectionInfoSettings pushSettings](self, "pushSettings")}];
  [v5 setCarPlaySetting:{-[UNCSectionInfoSettings carPlaySetting](self, "carPlaySetting")}];
  [v5 setRemoteNotificationsSetting:{-[UNCSectionInfoSettings remoteNotificationsSetting](self, "remoteNotificationsSetting")}];
  [v5 setCriticalAlertSetting:{-[UNCSectionInfoSettings criticalAlertSetting](self, "criticalAlertSetting")}];
  [v5 setTimeSensitiveSetting:{-[UNCSectionInfoSettings timeSensitiveSetting](self, "timeSensitiveSetting")}];
  [v5 setUserConfiguredTimeSensitiveSetting:{-[UNCSectionInfoSettings hasUserConfiguredTimeSensitiveSetting](self, "hasUserConfiguredTimeSensitiveSetting")}];
  [v5 setBulletinGroupingSetting:{-[UNCSectionInfoSettings bulletinGroupingSetting](self, "bulletinGroupingSetting")}];
  [v5 setAnnounceSetting:{-[UNCSectionInfoSettings announceSetting](self, "announceSetting")}];
  [v5 setScheduledDeliverySetting:{-[UNCSectionInfoSettings scheduledDeliverySetting](self, "scheduledDeliverySetting")}];
  [v5 setDirectMessagesSetting:{-[UNCSectionInfoSettings directMessagesSetting](self, "directMessagesSetting")}];
  [v5 setUserConfiguredDirectMessagesSetting:{-[UNCSectionInfoSettings hasUserConfiguredDirectMessagesSetting](self, "hasUserConfiguredDirectMessagesSetting")}];
  return v5;
}

- (UNCSectionInfoSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = UNCSectionInfoSettings;
  v5 = [(UNCSectionInfoSettings *)&v19 init];
  if (v5)
  {
    -[UNCSectionInfoSettings setAuthorizationStatus:](v5, "setAuthorizationStatus:", [v4 decodeIntegerForKey:@"authorizationStatus"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authorizationExpirationDate"];
    [(UNCSectionInfoSettings *)v5 setAuthorizationExpirationDate:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUserGrantedAuthorizationDate"];
    [(UNCSectionInfoSettings *)v5 setLastUserGrantedAuthorizationDate:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"muteAssertion"];
    [(UNCSectionInfoSettings *)v5 setMuteAssertion:v8];

    -[UNCSectionInfoSettings setNotificationCenterSetting:](v5, "setNotificationCenterSetting:", [v4 decodeIntegerForKey:@"notificationCenterSetting"]);
    -[UNCSectionInfoSettings setLockScreenSetting:](v5, "setLockScreenSetting:", [v4 decodeIntegerForKey:@"lockScreenSetting"]);
    -[UNCSectionInfoSettings setShowsOnExternalDevices:](v5, "setShowsOnExternalDevices:", [v4 decodeBoolForKey:@"showsOnExternalDevices"]);
    -[UNCSectionInfoSettings setShowsCustomSettingsLink:](v5, "setShowsCustomSettingsLink:", [v4 decodeBoolForKey:@"showsCustomSettingsLink"]);
    -[UNCSectionInfoSettings setContentPreviewSetting:](v5, "setContentPreviewSetting:", [v4 decodeIntegerForKey:@"contentPreviewSetting"]);
    -[UNCSectionInfoSettings setAlertType:](v5, "setAlertType:", [v4 decodeIntegerForKey:@"alertType"]);
    -[UNCSectionInfoSettings setPushSettings:](v5, "setPushSettings:", [v4 decodeInt32ForKey:@"pushSettings"]);
    -[UNCSectionInfoSettings setCarPlaySetting:](v5, "setCarPlaySetting:", [v4 decodeIntegerForKey:@"carPlaySetting"]);
    -[UNCSectionInfoSettings setRemoteNotificationsSetting:](v5, "setRemoteNotificationsSetting:", [v4 decodeIntegerForKey:@"remoteNotificationsSetting"]);
    -[UNCSectionInfoSettings setCriticalAlertSetting:](v5, "setCriticalAlertSetting:", [v4 decodeIntegerForKey:@"criticalAlertSetting"]);
    -[UNCSectionInfoSettings setTimeSensitiveSetting:](v5, "setTimeSensitiveSetting:", [v4 decodeIntegerForKey:@"timeSensitiveSetting"]);
    -[UNCSectionInfoSettings setUserConfiguredTimeSensitiveSetting:](v5, "setUserConfiguredTimeSensitiveSetting:", [v4 decodeBoolForKey:@"userConfiguredTimeSensitiveSetting"]);
    -[UNCSectionInfoSettings setBulletinGroupingSetting:](v5, "setBulletinGroupingSetting:", [v4 decodeIntegerForKey:@"bulletinGroupingSetting"]);
    if ([v4 containsValueForKey:@"announceSetting"])
    {
      v9 = [v4 decodeIntegerForKey:@"announceSetting"];
    }

    else
    {
      v9 = 1;
    }

    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    [(UNCSectionInfoSettings *)v5 setAnnounceSetting:v10];
    if ([v4 containsValueForKey:@"scheduledDeliverySetting"])
    {
      v11 = [v4 decodeIntegerForKey:@"scheduledDeliverySetting"];
    }

    else
    {
      v11 = 1;
    }

    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    [(UNCSectionInfoSettings *)v5 setScheduledDeliverySetting:v12];
    if ([v4 containsValueForKey:@"directMessagesSettingKey"])
    {
      v13 = [v4 decodeIntegerForKey:@"directMessagesSettingKey"];
    }

    else
    {
      v13 = 0;
    }

    [(UNCSectionInfoSettings *)v5 setDirectMessagesSetting:v13];
    -[UNCSectionInfoSettings setUserConfiguredDirectMessagesSetting:](v5, "setUserConfiguredDirectMessagesSetting:", [v4 decodeBoolForKey:@"userConfiguredDirectMessagesSetting"]);
    if ([v4 containsValueForKey:@"allowsNotifications"])
    {
      -[UNCSectionInfoSettings setAllowsNotifications:](v5, "setAllowsNotifications:", [v4 decodeBoolForKey:@"allowsNotifications"]);
    }

    if ([v4 containsValueForKey:@"showsMessagePreview"])
    {
      -[UNCSectionInfoSettings setShowsMessagePreview:](v5, "setShowsMessagePreview:", [v4 decodeBoolForKey:@"showsMessagePreview"]);
    }

    if (([v4 containsValueForKey:@"notificationCenterSetting"] & 1) == 0 && objc_msgSend(v4, "containsValueForKey:", @"showsInNotificationCenter"))
    {
      -[UNCSectionInfoSettings setShowsInNotificationCenter:](v5, "setShowsInNotificationCenter:", [v4 decodeBoolForKey:@"showsInNotificationCenter"]);
    }

    if (([v4 containsValueForKey:@"lockScreenSetting"] & 1) == 0 && objc_msgSend(v4, "containsValueForKey:", @"showsInLockScreen"))
    {
      -[UNCSectionInfoSettings setShowsInLockScreen:](v5, "setShowsInLockScreen:", [v4 decodeBoolForKey:@"showsInLockScreen"]);
    }

    if (([v4 containsValueForKey:@"announceSetting"] & 1) == 0 && objc_msgSend(v4, "containsValueForKey:", @"spokenNotificationSetting"))
    {
      v14 = [v4 decodeIntegerForKey:@"spokenNotificationSetting"];
      if (v14)
      {
        if (v14 != 2)
        {
          v15 = v14 == 1;
LABEL_37:
          [(UNCSectionInfoSettings *)v5 setAnnounceSetting:v15];
          goto LABEL_38;
        }

        v16 = [(UNCSectionInfoSettings *)v5 timeSensitiveSetting]== 0;
        v17 = 2;
      }

      else
      {
        v16 = [(UNCSectionInfoSettings *)v5 timeSensitiveSetting]== 2;
        v17 = 1;
      }

      if (v16)
      {
        v15 = v17 + 1;
      }

      else
      {
        v15 = v17;
      }

      goto LABEL_37;
    }
  }

LABEL_38:

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeInteger:-[UNCSectionInfoSettings authorizationStatus](self forKey:{"authorizationStatus"), @"authorizationStatus"}];
  v4 = [(UNCSectionInfoSettings *)self authorizationExpirationDate];
  [v7 encodeObject:v4 forKey:@"authorizationExpirationDate"];

  v5 = [(UNCSectionInfoSettings *)self lastUserGrantedAuthorizationDate];
  [v7 encodeObject:v5 forKey:@"lastUserGrantedAuthorizationDate"];

  v6 = [(UNCSectionInfoSettings *)self muteAssertion];
  [v7 encodeObject:v6 forKey:@"muteAssertion"];

  [v7 encodeInteger:-[UNCSectionInfoSettings notificationCenterSetting](self forKey:{"notificationCenterSetting"), @"notificationCenterSetting"}];
  [v7 encodeInteger:-[UNCSectionInfoSettings lockScreenSetting](self forKey:{"lockScreenSetting"), @"lockScreenSetting"}];
  [v7 encodeBool:-[UNCSectionInfoSettings showsOnExternalDevices](self forKey:{"showsOnExternalDevices"), @"showsOnExternalDevices"}];
  [v7 encodeBool:-[UNCSectionInfoSettings showsCustomSettingsLink](self forKey:{"showsCustomSettingsLink"), @"showsCustomSettingsLink"}];
  [v7 encodeInteger:-[UNCSectionInfoSettings contentPreviewSetting](self forKey:{"contentPreviewSetting"), @"contentPreviewSetting"}];
  [v7 encodeInteger:-[UNCSectionInfoSettings alertType](self forKey:{"alertType"), @"alertType"}];
  [v7 encodeInt32:-[UNCSectionInfoSettings pushSettings](self forKey:{"pushSettings"), @"pushSettings"}];
  [v7 encodeInteger:-[UNCSectionInfoSettings carPlaySetting](self forKey:{"carPlaySetting"), @"carPlaySetting"}];
  [v7 encodeInteger:-[UNCSectionInfoSettings remoteNotificationsSetting](self forKey:{"remoteNotificationsSetting"), @"remoteNotificationsSetting"}];
  [v7 encodeInteger:-[UNCSectionInfoSettings criticalAlertSetting](self forKey:{"criticalAlertSetting"), @"criticalAlertSetting"}];
  [v7 encodeInteger:-[UNCSectionInfoSettings timeSensitiveSetting](self forKey:{"timeSensitiveSetting"), @"timeSensitiveSetting"}];
  [v7 encodeBool:-[UNCSectionInfoSettings hasUserConfiguredTimeSensitiveSetting](self forKey:{"hasUserConfiguredTimeSensitiveSetting"), @"userConfiguredTimeSensitiveSetting"}];
  [v7 encodeInteger:-[UNCSectionInfoSettings bulletinGroupingSetting](self forKey:{"bulletinGroupingSetting"), @"bulletinGroupingSetting"}];
  [v7 encodeInteger:-[UNCSectionInfoSettings announceSetting](self forKey:{"announceSetting"), @"announceSetting"}];
  [v7 encodeInteger:-[UNCSectionInfoSettings scheduledDeliverySetting](self forKey:{"scheduledDeliverySetting"), @"scheduledDeliverySetting"}];
  [v7 encodeInteger:-[UNCSectionInfoSettings directMessagesSetting](self forKey:{"directMessagesSetting"), @"directMessagesSettingKey"}];
  [v7 encodeBool:-[UNCSectionInfoSettings hasUserConfiguredDirectMessagesSetting](self forKey:{"hasUserConfiguredDirectMessagesSetting"), @"userConfiguredDirectMessagesSetting"}];
  [v7 encodeBool:-[UNCSectionInfoSettings showsInLockScreen](self forKey:{"showsInLockScreen"), @"showsInLockScreen"}];
  [v7 encodeBool:-[UNCSectionInfoSettings showsInNotificationCenter](self forKey:{"showsInNotificationCenter"), @"showsInNotificationCenter"}];
}

- (BOOL)isAuthorizedTemporarily
{
  v3 = [(UNCSectionInfoSettings *)self authorizationExpirationDate];
  if (v3)
  {
    v4 = [(UNCSectionInfoSettings *)self authorizationExpirationDate];
    [v4 timeIntervalSinceNow];
    v6 = v5 > 0.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)allowsNotifications
{
  if ([(UNCSectionInfoSettings *)self authorizationStatus]== 2 || [(UNCSectionInfoSettings *)self authorizationStatus]== 3)
  {
    return 1;
  }

  return [(UNCSectionInfoSettings *)self isAuthorizedTemporarily];
}

- (void)setAllowsNotifications:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(UNCSectionInfoSettings *)self setAuthorizationStatus:v3];
}

- (void)setShowsInNotificationCenter:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(UNCSectionInfoSettings *)self setNotificationCenterSetting:v3];
}

- (void)setShowsInLockScreen:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(UNCSectionInfoSettings *)self setLockScreenSetting:v3];
}

- (int64_t)spokenNotificationSetting
{
  v2 = [(UNCSectionInfoSettings *)self announceSetting];
  if ((v2 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1DA957D60[v2 - 1];
  }
}

- (void)setSpokenNotificationSetting:(int64_t)a3
{
  if (a3 == 2)
  {
    if ([(UNCSectionInfoSettings *)self timeSensitiveSetting]== 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = a3 == 1;
  }

  [(UNCSectionInfoSettings *)self setAnnounceSetting:v4];
}

- (void)muteThreadIdentifier:untilDate:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)unmuteThreadIdentifier:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end
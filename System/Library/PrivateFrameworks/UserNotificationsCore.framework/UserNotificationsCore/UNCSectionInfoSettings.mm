@interface UNCSectionInfoSettings
- (BOOL)allowsNotifications;
- (BOOL)isAuthorizedTemporarily;
- (BOOL)isBulletinMutedForThreadIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)stateCapture;
- (UNCSectionInfoSettings)initWithCoder:(id)coder;
- (UNCSectionInfoSettings)initWithDefaultsForSectionType:(int64_t)type;
- (id)_alertTypeDescription;
- (id)_announceSettingDescription;
- (id)_authorizationStatusDescription;
- (id)_bulletinGroupingSettingDescription;
- (id)_contentPreviewSettingDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)spokenNotificationSetting;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)muteSectionUntilDate:(id)date;
- (void)muteThreadIdentifier:(id)identifier untilDate:(id)date;
- (void)setAllowsNotifications:(BOOL)notifications;
- (void)setShowsInLockScreen:(BOOL)screen;
- (void)setShowsInNotificationCenter:(BOOL)center;
- (void)setSpokenNotificationSetting:(int64_t)setting;
- (void)unmuteThreadIdentifier:(id)identifier;
@end

@implementation UNCSectionInfoSettings

- (UNCSectionInfoSettings)initWithDefaultsForSectionType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = UNCSectionInfoSettings;
  v4 = [(UNCSectionInfoSettings *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(UNCSectionInfoSettings *)v4 setAuthorizationStatus:2];
    [(UNCSectionInfoSettings *)v5 setNotificationCenterSetting:2];
    if ((type | 2) == 2)
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

- (void)muteSectionUntilDate:(id)date
{
  v4 = [UNCSectionMuteAssertion sectionMuteAssertionUntilDate:date];
  [(UNCSectionInfoSettings *)self setMuteAssertion:v4];
}

- (void)muteThreadIdentifier:(id)identifier untilDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  muteAssertion = [(UNCSectionInfoSettings *)self muteAssertion];
  if (muteAssertion && (v9 = muteAssertion, [(UNCSectionInfoSettings *)self muteAssertion], v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, v9, (isKindOfClass & 1) == 0))
  {
    if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_ERROR))
    {
      [UNCSectionInfoSettings muteThreadIdentifier:untilDate:];
    }
  }

  else if (identifierCopy && [identifierCopy length])
  {
    muteAssertion2 = [(UNCSectionInfoSettings *)self muteAssertion];

    if (!muteAssertion2)
    {
      v13 = +[UNCThreadsMuteAssertion threadsMuteAssertion];
      [(UNCSectionInfoSettings *)self setMuteAssertion:v13];
    }

    muteAssertion3 = [(UNCSectionInfoSettings *)self muteAssertion];
    [muteAssertion3 setMutedUntilDate:dateCopy forThreadIdentifier:identifierCopy];
  }

  else if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_ERROR))
  {
    [UNCSectionInfoSettings muteThreadIdentifier:untilDate:];
  }
}

- (void)unmuteThreadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  muteAssertion = [(UNCSectionInfoSettings *)self muteAssertion];
  if (muteAssertion && (v6 = muteAssertion, [(UNCSectionInfoSettings *)self muteAssertion], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, v6, (isKindOfClass & 1) == 0))
  {
    if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_ERROR))
    {
      [UNCSectionInfoSettings unmuteThreadIdentifier:];
    }
  }

  else if (identifierCopy && [identifierCopy length])
  {
    muteAssertion2 = [(UNCSectionInfoSettings *)self muteAssertion];
    [muteAssertion2 setUnmutedForThreadIdentifier:identifierCopy];
  }

  else if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_ERROR))
  {
    [UNCSectionInfoSettings unmuteThreadIdentifier:];
  }
}

- (BOOL)isBulletinMutedForThreadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  muteAssertion = [(UNCSectionInfoSettings *)self muteAssertion];
  v6 = [muteAssertion isActiveForThreadIdentifier:identifierCopy];

  return v6;
}

- (NSDictionary)stateCapture
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  _authorizationStatusDescription = [(UNCSectionInfoSettings *)self _authorizationStatusDescription];
  [v3 setValue:_authorizationStatusDescription forKey:@"Authorized"];

  authorizationExpirationDate = [(UNCSectionInfoSettings *)self authorizationExpirationDate];
  v6 = [authorizationExpirationDate description];
  [v3 setValue:v6 forKey:@"Authorization Expiration Date"];

  lastUserGrantedAuthorizationDate = [(UNCSectionInfoSettings *)self lastUserGrantedAuthorizationDate];
  v8 = [lastUserGrantedAuthorizationDate description];
  [v3 setValue:v8 forKey:@"Last User Granted Authorizated"];

  muteAssertion = [(UNCSectionInfoSettings *)self muteAssertion];
  v10 = [muteAssertion description];
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
    _announceSettingDescription = [(UNCSectionInfoSettings *)self _announceSettingDescription];
    [v3 setValue:_announceSettingDescription forKey:@"AnnounceNotifications"];
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

  _contentPreviewSettingDescription = [(UNCSectionInfoSettings *)self _contentPreviewSettingDescription];
  [v3 setValue:_contentPreviewSettingDescription forKey:@"ContentPreviewSetting"];

  _alertTypeDescription = [(UNCSectionInfoSettings *)self _alertTypeDescription];
  [v3 setValue:_alertTypeDescription forKey:@"AlertType"];

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

  _bulletinGroupingSettingDescription = [(UNCSectionInfoSettings *)self _bulletinGroupingSettingDescription];
  [v3 setValue:_bulletinGroupingSettingDescription forKey:@"GroupingSetting"];

  return v3;
}

- (id)description
{
  _authorizationStatusDescription = [(UNCSectionInfoSettings *)self _authorizationStatusDescription];
  v4 = [@" Section settings" stringByAppendingFormat:@": authorized = %@", _authorizationStatusDescription];

  authorizationExpirationDate = [(UNCSectionInfoSettings *)self authorizationExpirationDate];
  v6 = [v4 stringByAppendingFormat:@", authorization expiration date = %@", authorizationExpirationDate];

  lastUserGrantedAuthorizationDate = [(UNCSectionInfoSettings *)self lastUserGrantedAuthorizationDate];
  v8 = [v6 stringByAppendingFormat:@", last user granted authorization date = %@", lastUserGrantedAuthorizationDate];

  muteAssertion = [(UNCSectionInfoSettings *)self muteAssertion];
  v10 = [v8 stringByAppendingFormat:@", mute configuration = %@", muteAssertion];

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
    _announceSettingDescription = [(UNCSectionInfoSettings *)self _announceSettingDescription];
    v27 = [v10 stringByAppendingFormat:@", announce setting = %@", _announceSettingDescription];

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

  _contentPreviewSettingDescription = [(UNCSectionInfoSettings *)self _contentPreviewSettingDescription];
  v36 = [v34 stringByAppendingFormat:@", content preview setting = %@", _contentPreviewSettingDescription];

  _alertTypeDescription = [(UNCSectionInfoSettings *)self _alertTypeDescription];
  v38 = [v36 stringByAppendingFormat:@", Alert style = %@", _alertTypeDescription];

  v39 = UNCPushSettingsDescription([(UNCSectionInfoSettings *)self pushSettings]);
  v40 = [v38 stringByAppendingFormat:@", Push settings = %@", v39];

  _bulletinGroupingSettingDescription = [(UNCSectionInfoSettings *)self _bulletinGroupingSettingDescription];
  v42 = [v40 stringByAppendingFormat:@", grouping = %@", _bulletinGroupingSettingDescription];

  v46.receiver = self;
  v46.super_class = UNCSectionInfoSettings;
  v43 = [(UNCSectionInfoSettings *)&v46 description];
  v44 = [v43 stringByAppendingString:v42];

  return v44;
}

- (id)_authorizationStatusDescription
{
  authorizationStatus = [(UNCSectionInfoSettings *)self authorizationStatus];
  if (authorizationStatus > 4)
  {
    return @"<invalid>";
  }

  else
  {
    return off_1E85D7468[authorizationStatus];
  }
}

- (id)_alertTypeDescription
{
  alertType = [(UNCSectionInfoSettings *)self alertType];
  if (alertType > 2)
  {
    return @"<invalid>";
  }

  else
  {
    return off_1E85D7490[alertType];
  }
}

- (id)_contentPreviewSettingDescription
{
  contentPreviewSetting = [(UNCSectionInfoSettings *)self contentPreviewSetting];
  if (contentPreviewSetting > 3)
  {
    return @"<invalid>";
  }

  else
  {
    return off_1E85D74A8[contentPreviewSetting];
  }
}

- (id)_bulletinGroupingSettingDescription
{
  bulletinGroupingSetting = [(UNCSectionInfoSettings *)self bulletinGroupingSetting];
  if (bulletinGroupingSetting > 2)
  {
    return @"<invalid>";
  }

  else
  {
    return off_1E85D74C8[bulletinGroupingSetting];
  }
}

- (id)_announceSettingDescription
{
  announceSetting = [(UNCSectionInfoSettings *)self announceSetting];
  if (announceSetting > 3)
  {
    return 0;
  }

  else
  {
    return off_1E85D74E0[announceSetting];
  }
}

- (unint64_t)hash
{
  authorizationStatus = [(UNCSectionInfoSettings *)self authorizationStatus];
  authorizationExpirationDate = [(UNCSectionInfoSettings *)self authorizationExpirationDate];
  v5 = [authorizationExpirationDate hash] ^ authorizationStatus;
  lastUserGrantedAuthorizationDate = [(UNCSectionInfoSettings *)self lastUserGrantedAuthorizationDate];
  v7 = [lastUserGrantedAuthorizationDate hash];
  muteAssertion = [(UNCSectionInfoSettings *)self muteAssertion];
  v9 = v5 ^ v7 ^ [muteAssertion hash];
  notificationCenterSetting = [(UNCSectionInfoSettings *)self notificationCenterSetting];
  v11 = notificationCenterSetting ^ [(UNCSectionInfoSettings *)self lockScreenSetting];
  v12 = v9 ^ v11 ^ [(UNCSectionInfoSettings *)self showsOnExternalDevices];
  showsCustomSettingsLink = [(UNCSectionInfoSettings *)self showsCustomSettingsLink];
  v14 = showsCustomSettingsLink ^ [(UNCSectionInfoSettings *)self contentPreviewSetting];
  v15 = v12 ^ v14 ^ [(UNCSectionInfoSettings *)self alertType];
  pushSettings = [(UNCSectionInfoSettings *)self pushSettings];
  v17 = pushSettings ^ [(UNCSectionInfoSettings *)self carPlaySetting];
  v18 = v17 ^ [(UNCSectionInfoSettings *)self remoteNotificationsSetting];
  v19 = v18 ^ [(UNCSectionInfoSettings *)self criticalAlertSetting];
  v20 = v19 ^ [(UNCSectionInfoSettings *)self timeSensitiveSetting];
  v21 = v15 ^ v20 ^ [(UNCSectionInfoSettings *)self hasUserConfiguredTimeSensitiveSetting];
  bulletinGroupingSetting = [(UNCSectionInfoSettings *)self bulletinGroupingSetting];
  v23 = bulletinGroupingSetting ^ [(UNCSectionInfoSettings *)self announceSetting];
  v24 = v23 ^ [(UNCSectionInfoSettings *)self scheduledDeliverySetting];
  v25 = v24 ^ [(UNCSectionInfoSettings *)self directMessagesSetting];
  v26 = v25 ^ [(UNCSectionInfoSettings *)self hasUserConfiguredDirectMessagesSetting];

  return v21 ^ v26;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      authorizationStatus = [(UNCSectionInfoSettings *)self authorizationStatus];
      if (authorizationStatus == [(UNCSectionInfoSettings *)v5 authorizationStatus])
      {
        authorizationExpirationDate = [(UNCSectionInfoSettings *)self authorizationExpirationDate];
        authorizationExpirationDate2 = [(UNCSectionInfoSettings *)v5 authorizationExpirationDate];
        if (authorizationExpirationDate == authorizationExpirationDate2)
        {
          lastUserGrantedAuthorizationDate = [(UNCSectionInfoSettings *)self lastUserGrantedAuthorizationDate];
          lastUserGrantedAuthorizationDate2 = [(UNCSectionInfoSettings *)v5 lastUserGrantedAuthorizationDate];
          if (lastUserGrantedAuthorizationDate == lastUserGrantedAuthorizationDate2)
          {
            muteAssertion = [(UNCSectionInfoSettings *)self muteAssertion];
            muteAssertion2 = [(UNCSectionInfoSettings *)v5 muteAssertion];
            if (!BSEqualObjects())
            {
              goto LABEL_30;
            }

            notificationCenterSetting = [(UNCSectionInfoSettings *)self notificationCenterSetting];
            if (notificationCenterSetting != [(UNCSectionInfoSettings *)v5 notificationCenterSetting])
            {
              goto LABEL_30;
            }

            lockScreenSetting = [(UNCSectionInfoSettings *)self lockScreenSetting];
            if (lockScreenSetting != [(UNCSectionInfoSettings *)v5 lockScreenSetting])
            {
              goto LABEL_30;
            }

            showsOnExternalDevices = [(UNCSectionInfoSettings *)self showsOnExternalDevices];
            if (showsOnExternalDevices != [(UNCSectionInfoSettings *)v5 showsOnExternalDevices])
            {
              goto LABEL_30;
            }

            showsCustomSettingsLink = [(UNCSectionInfoSettings *)self showsCustomSettingsLink];
            if (showsCustomSettingsLink != [(UNCSectionInfoSettings *)v5 showsCustomSettingsLink])
            {
              goto LABEL_30;
            }

            contentPreviewSetting = [(UNCSectionInfoSettings *)self contentPreviewSetting];
            if (contentPreviewSetting != [(UNCSectionInfoSettings *)v5 contentPreviewSetting])
            {
              goto LABEL_30;
            }

            alertType = [(UNCSectionInfoSettings *)self alertType];
            if (alertType != [(UNCSectionInfoSettings *)v5 alertType])
            {
              goto LABEL_30;
            }

            pushSettings = [(UNCSectionInfoSettings *)self pushSettings];
            if (pushSettings != [(UNCSectionInfoSettings *)v5 pushSettings])
            {
              goto LABEL_30;
            }

            carPlaySetting = [(UNCSectionInfoSettings *)self carPlaySetting];
            if (carPlaySetting != [(UNCSectionInfoSettings *)v5 carPlaySetting])
            {
              goto LABEL_30;
            }

            remoteNotificationsSetting = [(UNCSectionInfoSettings *)self remoteNotificationsSetting];
            if (remoteNotificationsSetting != [(UNCSectionInfoSettings *)v5 remoteNotificationsSetting])
            {
              goto LABEL_30;
            }

            criticalAlertSetting = [(UNCSectionInfoSettings *)self criticalAlertSetting];
            if (criticalAlertSetting == [(UNCSectionInfoSettings *)v5 criticalAlertSetting]&& (v24 = [(UNCSectionInfoSettings *)self timeSensitiveSetting], v24 == [(UNCSectionInfoSettings *)v5 timeSensitiveSetting]) && (v25 = [(UNCSectionInfoSettings *)self hasUserConfiguredTimeSensitiveSetting], v25 == [(UNCSectionInfoSettings *)v5 hasUserConfiguredTimeSensitiveSetting]) && (v26 = [(UNCSectionInfoSettings *)self bulletinGroupingSetting], v26 == [(UNCSectionInfoSettings *)v5 bulletinGroupingSetting]) && (v27 = [(UNCSectionInfoSettings *)self announceSetting], v27 == [(UNCSectionInfoSettings *)v5 announceSetting]) && (v28 = [(UNCSectionInfoSettings *)self scheduledDeliverySetting], v28 == [(UNCSectionInfoSettings *)v5 scheduledDeliverySetting]) && (v29 = [(UNCSectionInfoSettings *)self directMessagesSetting], v29 == [(UNCSectionInfoSettings *)v5 directMessagesSetting]))
            {
              hasUserConfiguredDirectMessagesSetting = [(UNCSectionInfoSettings *)self hasUserConfiguredDirectMessagesSetting];
              v9 = hasUserConfiguredDirectMessagesSetting ^ [(UNCSectionInfoSettings *)v5 hasUserConfiguredDirectMessagesSetting]^ 1;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setAuthorizationStatus:{-[UNCSectionInfoSettings authorizationStatus](self, "authorizationStatus")}];
  authorizationExpirationDate = [(UNCSectionInfoSettings *)self authorizationExpirationDate];
  [v5 setAuthorizationExpirationDate:authorizationExpirationDate];

  lastUserGrantedAuthorizationDate = [(UNCSectionInfoSettings *)self lastUserGrantedAuthorizationDate];
  [v5 setLastUserGrantedAuthorizationDate:lastUserGrantedAuthorizationDate];

  muteAssertion = [(UNCSectionInfoSettings *)self muteAssertion];
  v9 = [muteAssertion copyWithZone:zone];
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

- (UNCSectionInfoSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = UNCSectionInfoSettings;
  v5 = [(UNCSectionInfoSettings *)&v19 init];
  if (v5)
  {
    -[UNCSectionInfoSettings setAuthorizationStatus:](v5, "setAuthorizationStatus:", [coderCopy decodeIntegerForKey:@"authorizationStatus"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorizationExpirationDate"];
    [(UNCSectionInfoSettings *)v5 setAuthorizationExpirationDate:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUserGrantedAuthorizationDate"];
    [(UNCSectionInfoSettings *)v5 setLastUserGrantedAuthorizationDate:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"muteAssertion"];
    [(UNCSectionInfoSettings *)v5 setMuteAssertion:v8];

    -[UNCSectionInfoSettings setNotificationCenterSetting:](v5, "setNotificationCenterSetting:", [coderCopy decodeIntegerForKey:@"notificationCenterSetting"]);
    -[UNCSectionInfoSettings setLockScreenSetting:](v5, "setLockScreenSetting:", [coderCopy decodeIntegerForKey:@"lockScreenSetting"]);
    -[UNCSectionInfoSettings setShowsOnExternalDevices:](v5, "setShowsOnExternalDevices:", [coderCopy decodeBoolForKey:@"showsOnExternalDevices"]);
    -[UNCSectionInfoSettings setShowsCustomSettingsLink:](v5, "setShowsCustomSettingsLink:", [coderCopy decodeBoolForKey:@"showsCustomSettingsLink"]);
    -[UNCSectionInfoSettings setContentPreviewSetting:](v5, "setContentPreviewSetting:", [coderCopy decodeIntegerForKey:@"contentPreviewSetting"]);
    -[UNCSectionInfoSettings setAlertType:](v5, "setAlertType:", [coderCopy decodeIntegerForKey:@"alertType"]);
    -[UNCSectionInfoSettings setPushSettings:](v5, "setPushSettings:", [coderCopy decodeInt32ForKey:@"pushSettings"]);
    -[UNCSectionInfoSettings setCarPlaySetting:](v5, "setCarPlaySetting:", [coderCopy decodeIntegerForKey:@"carPlaySetting"]);
    -[UNCSectionInfoSettings setRemoteNotificationsSetting:](v5, "setRemoteNotificationsSetting:", [coderCopy decodeIntegerForKey:@"remoteNotificationsSetting"]);
    -[UNCSectionInfoSettings setCriticalAlertSetting:](v5, "setCriticalAlertSetting:", [coderCopy decodeIntegerForKey:@"criticalAlertSetting"]);
    -[UNCSectionInfoSettings setTimeSensitiveSetting:](v5, "setTimeSensitiveSetting:", [coderCopy decodeIntegerForKey:@"timeSensitiveSetting"]);
    -[UNCSectionInfoSettings setUserConfiguredTimeSensitiveSetting:](v5, "setUserConfiguredTimeSensitiveSetting:", [coderCopy decodeBoolForKey:@"userConfiguredTimeSensitiveSetting"]);
    -[UNCSectionInfoSettings setBulletinGroupingSetting:](v5, "setBulletinGroupingSetting:", [coderCopy decodeIntegerForKey:@"bulletinGroupingSetting"]);
    if ([coderCopy containsValueForKey:@"announceSetting"])
    {
      v9 = [coderCopy decodeIntegerForKey:@"announceSetting"];
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
    if ([coderCopy containsValueForKey:@"scheduledDeliverySetting"])
    {
      v11 = [coderCopy decodeIntegerForKey:@"scheduledDeliverySetting"];
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
    if ([coderCopy containsValueForKey:@"directMessagesSettingKey"])
    {
      v13 = [coderCopy decodeIntegerForKey:@"directMessagesSettingKey"];
    }

    else
    {
      v13 = 0;
    }

    [(UNCSectionInfoSettings *)v5 setDirectMessagesSetting:v13];
    -[UNCSectionInfoSettings setUserConfiguredDirectMessagesSetting:](v5, "setUserConfiguredDirectMessagesSetting:", [coderCopy decodeBoolForKey:@"userConfiguredDirectMessagesSetting"]);
    if ([coderCopy containsValueForKey:@"allowsNotifications"])
    {
      -[UNCSectionInfoSettings setAllowsNotifications:](v5, "setAllowsNotifications:", [coderCopy decodeBoolForKey:@"allowsNotifications"]);
    }

    if ([coderCopy containsValueForKey:@"showsMessagePreview"])
    {
      -[UNCSectionInfoSettings setShowsMessagePreview:](v5, "setShowsMessagePreview:", [coderCopy decodeBoolForKey:@"showsMessagePreview"]);
    }

    if (([coderCopy containsValueForKey:@"notificationCenterSetting"] & 1) == 0 && objc_msgSend(coderCopy, "containsValueForKey:", @"showsInNotificationCenter"))
    {
      -[UNCSectionInfoSettings setShowsInNotificationCenter:](v5, "setShowsInNotificationCenter:", [coderCopy decodeBoolForKey:@"showsInNotificationCenter"]);
    }

    if (([coderCopy containsValueForKey:@"lockScreenSetting"] & 1) == 0 && objc_msgSend(coderCopy, "containsValueForKey:", @"showsInLockScreen"))
    {
      -[UNCSectionInfoSettings setShowsInLockScreen:](v5, "setShowsInLockScreen:", [coderCopy decodeBoolForKey:@"showsInLockScreen"]);
    }

    if (([coderCopy containsValueForKey:@"announceSetting"] & 1) == 0 && objc_msgSend(coderCopy, "containsValueForKey:", @"spokenNotificationSetting"))
    {
      v14 = [coderCopy decodeIntegerForKey:@"spokenNotificationSetting"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[UNCSectionInfoSettings authorizationStatus](self forKey:{"authorizationStatus"), @"authorizationStatus"}];
  authorizationExpirationDate = [(UNCSectionInfoSettings *)self authorizationExpirationDate];
  [coderCopy encodeObject:authorizationExpirationDate forKey:@"authorizationExpirationDate"];

  lastUserGrantedAuthorizationDate = [(UNCSectionInfoSettings *)self lastUserGrantedAuthorizationDate];
  [coderCopy encodeObject:lastUserGrantedAuthorizationDate forKey:@"lastUserGrantedAuthorizationDate"];

  muteAssertion = [(UNCSectionInfoSettings *)self muteAssertion];
  [coderCopy encodeObject:muteAssertion forKey:@"muteAssertion"];

  [coderCopy encodeInteger:-[UNCSectionInfoSettings notificationCenterSetting](self forKey:{"notificationCenterSetting"), @"notificationCenterSetting"}];
  [coderCopy encodeInteger:-[UNCSectionInfoSettings lockScreenSetting](self forKey:{"lockScreenSetting"), @"lockScreenSetting"}];
  [coderCopy encodeBool:-[UNCSectionInfoSettings showsOnExternalDevices](self forKey:{"showsOnExternalDevices"), @"showsOnExternalDevices"}];
  [coderCopy encodeBool:-[UNCSectionInfoSettings showsCustomSettingsLink](self forKey:{"showsCustomSettingsLink"), @"showsCustomSettingsLink"}];
  [coderCopy encodeInteger:-[UNCSectionInfoSettings contentPreviewSetting](self forKey:{"contentPreviewSetting"), @"contentPreviewSetting"}];
  [coderCopy encodeInteger:-[UNCSectionInfoSettings alertType](self forKey:{"alertType"), @"alertType"}];
  [coderCopy encodeInt32:-[UNCSectionInfoSettings pushSettings](self forKey:{"pushSettings"), @"pushSettings"}];
  [coderCopy encodeInteger:-[UNCSectionInfoSettings carPlaySetting](self forKey:{"carPlaySetting"), @"carPlaySetting"}];
  [coderCopy encodeInteger:-[UNCSectionInfoSettings remoteNotificationsSetting](self forKey:{"remoteNotificationsSetting"), @"remoteNotificationsSetting"}];
  [coderCopy encodeInteger:-[UNCSectionInfoSettings criticalAlertSetting](self forKey:{"criticalAlertSetting"), @"criticalAlertSetting"}];
  [coderCopy encodeInteger:-[UNCSectionInfoSettings timeSensitiveSetting](self forKey:{"timeSensitiveSetting"), @"timeSensitiveSetting"}];
  [coderCopy encodeBool:-[UNCSectionInfoSettings hasUserConfiguredTimeSensitiveSetting](self forKey:{"hasUserConfiguredTimeSensitiveSetting"), @"userConfiguredTimeSensitiveSetting"}];
  [coderCopy encodeInteger:-[UNCSectionInfoSettings bulletinGroupingSetting](self forKey:{"bulletinGroupingSetting"), @"bulletinGroupingSetting"}];
  [coderCopy encodeInteger:-[UNCSectionInfoSettings announceSetting](self forKey:{"announceSetting"), @"announceSetting"}];
  [coderCopy encodeInteger:-[UNCSectionInfoSettings scheduledDeliverySetting](self forKey:{"scheduledDeliverySetting"), @"scheduledDeliverySetting"}];
  [coderCopy encodeInteger:-[UNCSectionInfoSettings directMessagesSetting](self forKey:{"directMessagesSetting"), @"directMessagesSettingKey"}];
  [coderCopy encodeBool:-[UNCSectionInfoSettings hasUserConfiguredDirectMessagesSetting](self forKey:{"hasUserConfiguredDirectMessagesSetting"), @"userConfiguredDirectMessagesSetting"}];
  [coderCopy encodeBool:-[UNCSectionInfoSettings showsInLockScreen](self forKey:{"showsInLockScreen"), @"showsInLockScreen"}];
  [coderCopy encodeBool:-[UNCSectionInfoSettings showsInNotificationCenter](self forKey:{"showsInNotificationCenter"), @"showsInNotificationCenter"}];
}

- (BOOL)isAuthorizedTemporarily
{
  authorizationExpirationDate = [(UNCSectionInfoSettings *)self authorizationExpirationDate];
  if (authorizationExpirationDate)
  {
    authorizationExpirationDate2 = [(UNCSectionInfoSettings *)self authorizationExpirationDate];
    [authorizationExpirationDate2 timeIntervalSinceNow];
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

- (void)setAllowsNotifications:(BOOL)notifications
{
  if (notifications)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(UNCSectionInfoSettings *)self setAuthorizationStatus:v3];
}

- (void)setShowsInNotificationCenter:(BOOL)center
{
  if (center)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(UNCSectionInfoSettings *)self setNotificationCenterSetting:v3];
}

- (void)setShowsInLockScreen:(BOOL)screen
{
  if (screen)
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
  announceSetting = [(UNCSectionInfoSettings *)self announceSetting];
  if ((announceSetting - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1DA957D60[announceSetting - 1];
  }
}

- (void)setSpokenNotificationSetting:(int64_t)setting
{
  if (setting == 2)
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
    v4 = setting == 1;
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
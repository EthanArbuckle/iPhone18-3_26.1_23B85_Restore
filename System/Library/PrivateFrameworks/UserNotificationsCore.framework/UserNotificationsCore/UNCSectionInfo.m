@interface UNCSectionInfo
+ (id)defaultSectionInfoForSection:(id)a3;
+ (id)defaultSectionInfoForType:(int64_t)a3;
- (BOOL)_isDeliveredQuietly;
- (BOOL)allowsNotifications;
- (BOOL)hasEnabledSettings;
- (BOOL)hasUserConfiguredDirectMessagesSetting;
- (BOOL)hasUserConfiguredTimeSensitiveSetting;
- (BOOL)isBulletinMutedForThreadIdentifier:(id)a3;
- (BOOL)isDeliveredQuietly;
- (BOOL)isEqual:(id)a3;
- (BOOL)showsCustomSettingsLink;
- (BOOL)showsInLockScreen;
- (BOOL)showsInNotificationCenter;
- (BOOL)showsMessagePreview;
- (BOOL)showsOnExternalDevices;
- (NSData)iconData;
- (NSDate)authorizationExpirationDate;
- (NSDate)lastUserGrantedAuthorizationDate;
- (NSDictionary)stateCapture;
- (UNCMuteAssertion)muteAssertion;
- (UNCSectionInfo)initWithCoder:(id)a3;
- (UNCSectionInfo)initWithDefaultsForSectionType:(int64_t)a3;
- (UNCSectionInfo)parentSection;
- (UNCSectionInfoSettings)readableSettings;
- (UNCSectionInfoSettings)writableSettings;
- (id)_subsectionForID:(id)a3;
- (id)_suppressedSettingsList:(unint64_t)a3;
- (id)copyFromManagedSettings;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)announceSetting;
- (int64_t)authorizationStatus;
- (int64_t)bulletinGroupingSetting;
- (int64_t)carPlaySetting;
- (int64_t)contentPreviewSetting;
- (int64_t)criticalAlertSetting;
- (int64_t)directMessagesSetting;
- (int64_t)lockScreenSetting;
- (int64_t)notificationCenterSetting;
- (int64_t)remoteNotificationsSetting;
- (int64_t)scheduledDeliverySetting;
- (int64_t)spokenNotificationSetting;
- (int64_t)timeSensitiveSetting;
- (unint64_t)alertType;
- (unint64_t)hash;
- (unint64_t)pushSettings;
- (void)_addSubsection:(id)a3;
- (void)_associateDataProviderSectionInfo:(id)a3;
- (void)_configureWithDefaultsForSectionType:(int64_t)a3;
- (void)_deliverQuietly:(BOOL)a3;
- (void)_dissociateDataProviderSectionInfo:(id)a3;
- (void)_replaceSubsection:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)makeAuthorizationPermanent;
- (void)muteSectionUntilDate:(id)a3;
- (void)muteThreadIdentifier:(id)a3 untilDate:(id)a4;
- (void)queryAndUseManagedSettings;
- (void)queryAndUseManagedSettingsForSectionID:(id)a3;
- (void)setAlertType:(unint64_t)a3;
- (void)setAnnounceSetting:(int64_t)a3;
- (void)setAuthorizationExpirationDate:(id)a3;
- (void)setAuthorizationStatus:(int64_t)a3;
- (void)setBulletinGroupingSetting:(int64_t)a3;
- (void)setCarPlaySetting:(int64_t)a3;
- (void)setContentPreviewSetting:(int64_t)a3;
- (void)setCriticalAlertSetting:(int64_t)a3;
- (void)setDirectMessagesSetting:(int64_t)a3;
- (void)setLastUserGrantedAuthorizationDate:(id)a3;
- (void)setLockScreenSetting:(int64_t)a3;
- (void)setManagedSectionInfoSettings:(id)a3;
- (void)setMuteAssertion:(id)a3;
- (void)setNotificationCenterSetting:(int64_t)a3;
- (void)setParentSection:(id)a3;
- (void)setPushSettings:(unint64_t)a3;
- (void)setRemoteNotificationsSetting:(int64_t)a3;
- (void)setScheduledDeliverySetting:(int64_t)a3;
- (void)setSpokenNotificationSetting:(int64_t)a3;
- (void)setTimeSensitiveSetting:(int64_t)a3;
- (void)unmuteSection;
- (void)unmuteThreadIdentifier:(id)a3;
- (void)updateWithDefaultSectionInfo:(id)a3;
@end

@implementation UNCSectionInfo

+ (id)defaultSectionInfoForType:(int64_t)a3
{
  v3 = [[UNCSectionInfo alloc] initWithDefaultsForSectionType:a3];

  return v3;
}

- (UNCSectionInfo)initWithDefaultsForSectionType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = UNCSectionInfo;
  v4 = [(UNCSectionInfo *)&v8 init];
  if (v4)
  {
    v5 = [[UNCSectionInfoSettings alloc] initWithDefaultsForSectionType:a3];
    sectionInfoSettings = v4->_sectionInfoSettings;
    v4->_sectionInfoSettings = v5;

    [(UNCSectionInfo *)v4 _configureWithDefaultsForSectionType:a3];
  }

  return v4;
}

- (void)_configureWithDefaultsForSectionType:(int64_t)a3
{
  [(UNCSectionInfo *)self setSectionType:?];
  [(UNCSectionInfo *)self setSuppressedSettings:0];
  if ((a3 | 2) == 2)
  {
    [(UNCSectionInfo *)self setBulletinCount:5];
    if (a3 == 2)
    {

      [(UNCSectionInfo *)self setSuppressedSettings:8];
    }
  }
}

- (void)_addSubsection:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [v4 setParentSection:self];
    v5 = MEMORY[0x1E695DF70];
    v6 = [(UNCSectionInfo *)self subsections];
    v7 = [v5 arrayWithArray:v6];

    [v7 addObject:v4];
    [(UNCSectionInfo *)self setSubsections:v7];
  }
}

- (void)_replaceSubsection:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = self;
  v5 = [(UNCSectionInfo *)self subsections];
  v6 = [v4 subsectionID];
  if ([v5 count] && v6)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v17 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v13 subsectionID];
          v15 = [v14 isEqualToString:v6];

          if (v15)
          {
            [v13 setParentSection:0];
            [v4 setParentSection:v18];
            v13 = v4;
          }

          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [(UNCSectionInfo *)v18 setSubsections:v7];
    v5 = v17;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)_subsectionForID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(UNCSectionInfo *)self subsections];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 subsectionID];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_associateDataProviderSectionInfo:(id)a3
{
  v4 = a3;
  v8 = [v4 sectionID];
  v5 = [(UNCSectionInfo *)self dataProviderIDs];
  if (v8 && ([v5 containsObject:v8] & 1) == 0)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithArray:v5];
    [v6 addObject:v8];
    [(UNCSectionInfo *)self setDataProviderIDs:v6];
  }

  v7 = [(UNCSectionInfo *)self sectionID];
  [v4 setFactorySectionID:v7];
}

- (void)_dissociateDataProviderSectionInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    v5 = [v4 factorySectionID];
    v6 = [(UNCSectionInfo *)self sectionID];
    v7 = [v5 isEqualToString:v6];

    v4 = v12;
    if (v7)
    {
      v8 = MEMORY[0x1E695DF70];
      v9 = [(UNCSectionInfo *)self dataProviderIDs];
      v10 = [v8 arrayWithArray:v9];

      v11 = [v12 sectionID];
      [v10 removeObject:v11];

      [(UNCSectionInfo *)self setDataProviderIDs:v10];
      [v12 setFactorySectionID:0];

      v4 = v12;
    }
  }
}

- (void)setParentSection:(id)a3
{
  v6 = a3;
  v4 = objc_storeWeak(&self->_parentSection, v6);
  v5 = [v6 managedSectionInfoSettings];

  [(UNCSectionInfo *)self setManagedSectionInfoSettings:v5];
}

- (BOOL)hasEnabledSettings
{
  if ([(UNCSectionInfo *)self allowsNotifications])
  {
    v3 = [(UNCSectionInfo *)self pushSettings];
    if ((v3 & 0x18) != 0 || (v3 & 0x20) != 0 && [(UNCSectionInfo *)self alertType]|| [(UNCSectionInfo *)self lockScreenSetting]== 2 || [(UNCSectionInfo *)self notificationCenterSetting]== 2 || [(UNCSectionInfo *)self carPlaySetting]== 2 || [(UNCSectionInfo *)self remoteNotificationsSetting]== 2 || [(UNCSectionInfo *)self criticalAlertSetting]== 2)
    {
      return 1;
    }

    v4 = [(UNCSectionInfo *)self scheduledDeliverySetting];
  }

  else
  {
    v4 = [(UNCSectionInfo *)self criticalAlertSetting];
  }

  return v4 == 2;
}

- (BOOL)_isDeliveredQuietly
{
  if (![(UNCSectionInfo *)self allowsNotifications])
  {
    return 0;
  }

  if ([(UNCSectionInfo *)self notificationCenterSetting]!= 2)
  {
    return 0;
  }

  v3 = [(UNCSectionInfo *)self pushSettings];
  if ((v3 & 0x18) != 0 || (v3 & 0x20) != 0 && [(UNCSectionInfo *)self alertType])
  {
    return 0;
  }

  if ([(UNCSectionInfo *)self lockScreenSetting]== 2)
  {
    return 0;
  }

  v6 = [MEMORY[0x1E69DA8F0] sharedToneManager];
  v7 = [v6 unc_isToneEnabledForSectionInfo:self];

  if (v7)
  {
    return 0;
  }

  v8 = [MEMORY[0x1E69DA8F8] sharedVibrationManager];
  v9 = [v8 unc_isVibrationEnabledForSectionInfo:self];

  if (v9)
  {
    return 0;
  }

  if ([(UNCSectionInfo *)self carPlaySetting]!= 2)
  {
    goto LABEL_14;
  }

  v10 = objc_alloc_init(getCRPairedVehicleManagerClass());
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __37__UNCSectionInfo__isDeliveredQuietly__block_invoke;
  v13[3] = &unk_1E85D6DC0;
  v13[4] = &v14;
  [v10 syncFetchAllVehiclesWithCompletion:v13];
  v11 = [v15[5] count];
  _Block_object_dispose(&v14, 8);

  if (v11)
  {
    return 0;
  }

LABEL_14:
  if ([(UNCSectionInfo *)self announceSetting]!= 2 && [(UNCSectionInfo *)self announceSetting]!= 3)
  {
    return 1;
  }

  v12 = +[UNCBulletinDefaults standardDefaults];
  v4 = ([v12 isAnnounceSupportedForHeadphones] & 1) == 0 && (!objc_msgSend(v12, "isAnnounceSupportedForCarPlay") || !objc_msgSend(v12, "hasPairedVehiclesForCarPlay"));

  return v4;
}

- (BOOL)isDeliveredQuietly
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(UNCSectionInfo *)self subsections];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(UNCSectionInfo *)self allowsNotifications];
    if (v5)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = [(UNCSectionInfo *)self subsections];
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (!v7)
      {
LABEL_18:

LABEL_19:
        LOBYTE(v5) = 0;
        goto LABEL_20;
      }

      v8 = v7;
      v9 = 0;
      v10 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 allowsNotifications] && objc_msgSend(v12, "notificationCenterSetting") == 2)
          {
            if (![v12 _isDeliveredQuietly])
            {
              goto LABEL_18;
            }

            v9 = 1;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);

      if ((v9 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v5 = [(UNCSectionInfo *)self _isDeliveredQuietly];
    if (v5)
    {
LABEL_17:
      LOBYTE(v5) = 1;
    }
  }

LABEL_20:
  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_deliverQuietly:(BOOL)a3
{
  v3 = a3;
  v5 = [(UNCSectionInfo *)self pushSettings];
  if (v3)
  {
    [(UNCSectionInfo *)self setPushSettings:v5 & 0xFFFFFFFFFFFFFFC7];
    [(UNCSectionInfo *)self setAlertType:0];
    if ([(UNCSectionInfo *)self lockScreenSetting])
    {
      [(UNCSectionInfo *)self setLockScreenSetting:1];
    }

    if ([(UNCSectionInfo *)self carPlaySetting])
    {
      [(UNCSectionInfo *)self setCarPlaySetting:1];
    }

    if ([(UNCSectionInfo *)self remoteNotificationsSetting])
    {
      [(UNCSectionInfo *)self setRemoteNotificationsSetting:1];
    }

    if ([(UNCSectionInfo *)self announceSetting])
    {
      v6 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    [(UNCSectionInfo *)self setPushSettings:(8 * (v5 & 7)) | v5];
    [(UNCSectionInfo *)self setAlertType:1];
    if ([(UNCSectionInfo *)self lockScreenSetting])
    {
      [(UNCSectionInfo *)self setLockScreenSetting:2];
    }

    if ([(UNCSectionInfo *)self carPlaySetting])
    {
      [(UNCSectionInfo *)self setCarPlaySetting:2];
    }

    if ([(UNCSectionInfo *)self remoteNotificationsSetting])
    {
      [(UNCSectionInfo *)self setRemoteNotificationsSetting:2];
    }

    if ([(UNCSectionInfo *)self announceSetting])
    {
      if ([(UNCSectionInfo *)self timeSensitiveSetting]== 2)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

LABEL_20:

      [(UNCSectionInfo *)self setAnnounceSetting:v6];
    }
  }
}

- (void)makeAuthorizationPermanent
{
  if ([(UNCSectionInfo *)self authorizationStatus]== 4 || [(UNCSectionInfo *)self authorizationStatus]== 3)
  {

    [(UNCSectionInfo *)self setAuthorizationStatus:2];
  }
}

- (void)muteSectionUntilDate:(id)a3
{
  v5 = a3;
  if (![(UNCSectionInfo *)self _isDeliveredQuietly])
  {
    v4 = [(UNCSectionInfo *)self sectionInfoSettings];
    [v4 muteSectionUntilDate:v5];
  }
}

- (void)unmuteSection
{
  v2 = [(UNCSectionInfo *)self sectionInfoSettings];
  [v2 unmuteSection];
}

- (void)muteThreadIdentifier:(id)a3 untilDate:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (![(UNCSectionInfo *)self _isDeliveredQuietly])
  {
    v7 = [(UNCSectionInfo *)self sectionInfoSettings];
    [v7 muteThreadIdentifier:v8 untilDate:v6];
  }
}

- (void)unmuteThreadIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(UNCSectionInfo *)self sectionInfoSettings];
  [v5 unmuteThreadIdentifier:v4];
}

- (BOOL)isBulletinMutedForThreadIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(UNCSectionInfo *)self sectionInfoSettings];
  v6 = [v5 isBulletinMutedForThreadIdentifier:v4];

  return v6;
}

- (id)_suppressedSettingsList:(unint64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = v4;
  if (a3 == -1)
  {
    v6 = @"All";
LABEL_36:
    [v5 addObject:v6];
    goto LABEL_37;
  }

  if (a3)
  {
    [v4 addObject:@"ShowsInNotificationCenter"];
    if ((a3 & 2) == 0)
    {
LABEL_4:
      if ((a3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_22;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v5 addObject:@"ShowsInLockScreen"];
  if ((a3 & 4) == 0)
  {
LABEL_5:
    if ((a3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v5 addObject:@"ShowsOnExternalDevices"];
  if ((a3 & 8) == 0)
  {
LABEL_6:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v5 addObject:@"NotificationCenterLimit"];
  if ((a3 & 0x10) == 0)
  {
LABEL_7:
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v5 addObject:@"PushSettings"];
  if ((a3 & 0x20) == 0)
  {
LABEL_8:
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v5 addObject:@"AlertType"];
  if ((a3 & 0x40) == 0)
  {
LABEL_9:
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v5 addObject:@"ShowsMessagePreview"];
  if ((a3 & 0x80) == 0)
  {
LABEL_10:
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v5 addObject:@"ShowsInCarPlay"];
  if ((a3 & 0x100) == 0)
  {
LABEL_11:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v5 addObject:@"CriticalAlert"];
  if ((a3 & 0x200) == 0)
  {
LABEL_12:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v5 addObject:@"BulletinGrouping"];
  if ((a3 & 0x400) == 0)
  {
LABEL_13:
    if ((a3 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v5 addObject:@"SpokenNotifications"];
  [v5 addObject:@"SpokenNotifications"];
  if ((a3 & 0x800) == 0)
  {
LABEL_14:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v5 addObject:@"TimeSensitive"];
  if ((a3 & 0x1000) == 0)
  {
LABEL_15:
    if ((a3 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v5 addObject:@"ScheduledDelivery"];
  if ((a3 & 0x2000) == 0)
  {
LABEL_16:
    if ((a3 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    [v5 addObject:@"Sound"];
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_33:
  [v5 addObject:@"Badge"];
  if ((a3 & 0x4000) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((a3 & 0x8000) != 0)
  {
LABEL_35:
    v6 = @"DirectMessages";
    goto LABEL_36;
  }

LABEL_37:

  return v5;
}

- (NSDictionary)stateCapture
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(UNCSectionInfoSettings *)self->_sectionInfoSettings stateCapture];
  [v3 setValue:v4 forKey:@"SectionInfoSettings"];

  managedSectionInfoSettings = self->_managedSectionInfoSettings;
  if (managedSectionInfoSettings)
  {
    v6 = [(UNCSectionInfoSettings *)managedSectionInfoSettings stateCapture];
    [v3 setValue:v6 forKey:@"ManagedSettings"];
  }

  else
  {
    [v3 setValue:@"Unmanaged" forKey:@"ManagedSettings"];
  }

  v7 = [(UNCSectionInfo *)self appName];

  if (v7)
  {
    v8 = [(UNCSectionInfo *)self appName];
    [v3 setValue:v8 forKey:@"AppName"];
  }

  v9 = [(UNCSectionInfo *)self displayName];

  if (v9)
  {
    v10 = [(UNCSectionInfo *)self displayName];
    [v3 setValue:v10 forKey:@"DisplayName"];
  }

  v11 = [(UNCSectionInfo *)self subsectionID];

  if (v11)
  {
    v12 = [(UNCSectionInfo *)self subsectionID];
    [v3 setValue:v12 forKey:@"SubSectionID"];
  }

  v13 = [(UNCSectionInfo *)self factorySectionID];

  if (v13)
  {
    v14 = [(UNCSectionInfo *)self factorySectionID];
    [v3 setValue:v14 forKey:@"FactorySectionID"];
  }

  if ([(UNCSectionInfo *)self version])
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNCSectionInfo version](self, "version")}];
    [v3 setValue:v15 forKey:@"Version"];
  }

  v16 = UNCStringFromBool(self->_suppressFromSettings);
  [v3 setValue:v16 forKey:@"HiddenFromSettings"];

  v17 = UNCStringFromBool([(UNCSectionInfo *)self hideWeeApp]);
  [v3 setValue:v17 forKey:@"HiddenWeeApp"];

  v18 = [(UNCSectionInfo *)self suppressedSettings];
  if (v18)
  {
    v19 = [(UNCSectionInfo *)self _suppressedSettingsList:v18];
    [v3 setValue:v19 forKey:@"SuppressedSettings"];
  }

  v20 = [(UNCSectionInfo *)self subsections];
  if ([v20 count])
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v22 = v20;
    v23 = [v22 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v40;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v39 + 1) + 8 * i);
          v28 = [v27 stateCapture];
          v29 = [v27 subsectionID];
          [v21 setValue:v28 forKey:v29];
        }

        v24 = [v22 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v24);
    }

    [v3 setValue:v21 forKey:@"SubSections"];
    goto LABEL_25;
  }

  v32 = [(UNCSectionInfo *)self parentSection];
  if (v32)
  {
    v33 = v32;
    v34 = [(UNCSectionInfo *)self parentSection];
    v35 = [v34 sectionID];
    v36 = [(UNCSectionInfo *)self sectionID];
    v37 = [v35 isEqualToString:v36];

    if ((v37 & 1) == 0)
    {
      v21 = [(UNCSectionInfo *)self parentSection];
      v38 = [v21 sectionID];
      [v3 setValue:v38 forKey:@"ParentSectionID"];

LABEL_25:
    }
  }

  v30 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSData)iconData
{
  v2 = [(UNCSectionInfo *)self icon];
  v3 = [v2 _bestVariantForFormat:1];
  v4 = [v3 imageData];

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@" Section %@", self->_sectionID];
  v4 = [v3 stringByAppendingFormat:@" %@", self->_sectionInfoSettings];

  if (self->_isRestricted)
  {
    v5 = [v4 stringByAppendingFormat:@" (restricted)"];

    v4 = v5;
  }

  if (self->_managedSectionInfoSettings)
  {
    [v4 stringByAppendingFormat:@" %@ (managed)", self->_managedSectionInfoSettings];
  }

  else
  {
    [v4 stringByAppendingString:@" (unmanaged)"];
  }
  v6 = ;

  v7 = [(UNCSectionInfo *)self appName];

  if (v7)
  {
    v8 = [(UNCSectionInfo *)self appName];
    v9 = [v6 stringByAppendingFormat:@" '%@'", v8];

    v6 = v9;
  }

  v10 = [(UNCSectionInfo *)self displayName];

  if (v10)
  {
    v11 = [(UNCSectionInfo *)self displayName];
    v12 = [v6 stringByAppendingFormat:@" '%@'", v11];

    v6 = v12;
  }

  v13 = [(UNCSectionInfo *)self subsectionID];

  if (v13)
  {
    v14 = [(UNCSectionInfo *)self subsectionID];
    v15 = [v6 stringByAppendingFormat:@" (%@)", v14];

    v6 = v15;
  }

  v16 = [(UNCSectionInfo *)self factorySectionID];

  if (v16)
  {
    v17 = [(UNCSectionInfo *)self factorySectionID];
    v18 = [v6 stringByAppendingFormat:@" (factory: %@)", v17];

    v6 = v18;
  }

  if ([(UNCSectionInfo *)self version])
  {
    v19 = [v6 stringByAppendingFormat:@" [v%ld]", -[UNCSectionInfo version](self, "version")];

    v6 = v19;
  }

  if (self->_suppressFromSettings)
  {
    v20 = [v6 stringByAppendingString:{@", hidden from settings"}];

    v6 = v20;
  }

  if ([(UNCSectionInfo *)self hideWeeApp])
  {
    v21 = [v6 stringByAppendingString:{@", hidden wee app"}];

    v6 = v21;
  }

  v22 = [(UNCSectionInfo *)self suppressedSettings];
  if (v22)
  {
    v23 = [v6 stringByAppendingFormat:@", suppressed settings = %lX", v22];

    v6 = v23;
  }

  v24 = [(UNCSectionInfo *)self subsections];
  if ([v24 count])
  {
    v25 = [v6 stringByAppendingFormat:@", subsections = %@", v24];
LABEL_24:

    v6 = v25;
    goto LABEL_25;
  }

  v29 = [(UNCSectionInfo *)self parentSection];
  if (v29)
  {
    v30 = v29;
    v31 = [(UNCSectionInfo *)self parentSection];
    v32 = [v31 sectionID];
    v33 = [(UNCSectionInfo *)self sectionID];
    v34 = [v32 isEqualToString:v33];

    if ((v34 & 1) == 0)
    {
      v35 = [(UNCSectionInfo *)self parentSection];
      v36 = [v35 sectionID];
      v25 = [v6 stringByAppendingFormat:@", parent section = %@", v36];

      v6 = v35;
      goto LABEL_24;
    }
  }

LABEL_25:
  v37.receiver = self;
  v37.super_class = UNCSectionInfo;
  v26 = [(UNCSectionInfo *)&v37 description];
  v27 = [v26 stringByAppendingString:v6];

  return v27;
}

- (unint64_t)hash
{
  v42 = [(UNCSectionInfo *)self sectionID];
  v3 = [v42 hash];
  v41 = [(UNCSectionInfo *)self subsectionID];
  v4 = [v41 hash] ^ v3;
  v5 = v4 ^ [(UNCSectionInfo *)self sectionType];
  v6 = [(UNCSectionInfo *)self isAppClip];
  v7 = v5 ^ v6 ^ [(UNCSectionInfo *)self isModificationAllowed];
  v8 = [(UNCSectionInfo *)self isRestricted];
  v9 = v8 ^ [(UNCSectionInfo *)self sectionCategory];
  v10 = v7 ^ v9 ^ [(UNCSectionInfo *)self suppressFromSettings];
  v40 = [(UNCSectionInfo *)self sectionInfoSettings];
  v11 = [v40 hash];
  v39 = [(UNCSectionInfo *)self managedSectionInfoSettings];
  v12 = v11 ^ [v39 hash];
  v13 = v12 ^ [(UNCSectionInfo *)self suppressedSettings];
  v38 = [(UNCSectionInfo *)self subsections];
  v14 = v13 ^ [v38 hash];
  v37 = [(UNCSectionInfo *)self parentSection];
  v36 = [v37 sectionID];
  v15 = v10 ^ v14 ^ [v36 hash];
  v16 = [(UNCSectionInfo *)self subsectionPriority];
  v17 = v16 ^ [(UNCSectionInfo *)self version];
  v18 = [(UNCSectionInfo *)self appName];
  v19 = v17 ^ [v18 hash];
  v20 = [(UNCSectionInfo *)self displayName];
  v21 = v19 ^ [v20 hash];
  v22 = [(UNCSectionInfo *)self icon];
  v23 = v21 ^ [v22 hash];
  v24 = [(UNCSectionInfo *)self factorySectionID];
  v25 = v23 ^ [v24 hash];
  v26 = [(UNCSectionInfo *)self dataProviderIDs];
  v35 = v15 ^ v25 ^ [v26 hash];
  v27 = [(UNCSectionInfo *)self customSettingsBundle];
  v28 = [v27 hash];
  v29 = [(UNCSectionInfo *)self customSettingsDetailControllerClass];
  v30 = v28 ^ [v29 hash];
  v31 = [(UNCSectionInfo *)self pathToWeeAppPluginBundle];
  v32 = v30 ^ [v31 hash];
  v33 = v32 ^ [(UNCSectionInfo *)self hideWeeApp];

  return v35 ^ v33;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
      v6 = [(UNCSectionInfo *)self sectionID];
      v7 = [(UNCSectionInfo *)v5 sectionID];
      if (BSEqualStrings())
      {
        v8 = [(UNCSectionInfo *)self subsectionID];
        v9 = [(UNCSectionInfo *)v5 subsectionID];
        if (BSEqualStrings() && (v10 = [(UNCSectionInfo *)self sectionType], v10 == [(UNCSectionInfo *)v5 sectionType]) && (v11 = [(UNCSectionInfo *)self isAppClip], v11 == [(UNCSectionInfo *)v5 isAppClip]) && (v12 = [(UNCSectionInfo *)self isModificationAllowed], v12 == [(UNCSectionInfo *)v5 isModificationAllowed]) && (v13 = [(UNCSectionInfo *)self isRestricted], v13 == [(UNCSectionInfo *)v5 isRestricted]) && (v14 = [(UNCSectionInfo *)self sectionCategory], v14 == [(UNCSectionInfo *)v5 sectionCategory]) && (v15 = [(UNCSectionInfo *)self suppressFromSettings], v15 == [(UNCSectionInfo *)v5 suppressFromSettings]))
        {
          v18 = [(UNCSectionInfo *)self sectionInfoSettings];
          v19 = [(UNCSectionInfo *)v5 sectionInfoSettings];
          if (BSEqualObjects())
          {
            v20 = [(UNCSectionInfo *)self managedSectionInfoSettings];
            v58 = [(UNCSectionInfo *)v5 managedSectionInfoSettings];
            if (BSEqualObjects())
            {
              v57 = v20;
              v21 = [(UNCSectionInfo *)self suppressedSettings];
              if (v21 == [(UNCSectionInfo *)v5 suppressedSettings])
              {
                v22 = [(UNCSectionInfo *)self subsections];
                v55 = [(UNCSectionInfo *)v5 subsections];
                v56 = v22;
                if (BSEqualObjects())
                {
                  v54 = [(UNCSectionInfo *)self parentSection];
                  v23 = [v54 sectionID];
                  v52 = [(UNCSectionInfo *)v5 parentSection];
                  [v52 sectionID];
                  v51 = v53 = v23;
                  if (BSEqualStrings() && (v24 = [(UNCSectionInfo *)self subsectionPriority], v24 == [(UNCSectionInfo *)v5 subsectionPriority]) && (v25 = [(UNCSectionInfo *)self version], v25 == [(UNCSectionInfo *)v5 version]))
                  {
                    v26 = [(UNCSectionInfo *)self appName];
                    [(UNCSectionInfo *)v5 appName];
                    v50 = v49 = v26;
                    if (BSEqualStrings())
                    {
                      v27 = [(UNCSectionInfo *)self displayName];
                      v47 = [(UNCSectionInfo *)v5 displayName];
                      v48 = v27;
                      if (BSEqualStrings())
                      {
                        v28 = [(UNCSectionInfo *)self icon];
                        v45 = [(UNCSectionInfo *)v5 icon];
                        v46 = v28;
                        if (BSEqualObjects())
                        {
                          v29 = [(UNCSectionInfo *)self factorySectionID];
                          v43 = [(UNCSectionInfo *)v5 factorySectionID];
                          v44 = v29;
                          if (BSEqualStrings())
                          {
                            v30 = [(UNCSectionInfo *)self dataProviderIDs];
                            v41 = [(UNCSectionInfo *)v5 dataProviderIDs];
                            v42 = v30;
                            if (BSEqualObjects())
                            {
                              v31 = [(UNCSectionInfo *)self customSettingsBundle];
                              v39 = [(UNCSectionInfo *)v5 customSettingsBundle];
                              v40 = v31;
                              if (BSEqualStrings())
                              {
                                v32 = [(UNCSectionInfo *)self customSettingsDetailControllerClass];
                                v37 = [(UNCSectionInfo *)v5 customSettingsDetailControllerClass];
                                v38 = v32;
                                if (BSEqualStrings())
                                {
                                  v33 = [(UNCSectionInfo *)self pathToWeeAppPluginBundle];
                                  [(UNCSectionInfo *)v5 pathToWeeAppPluginBundle];
                                  v34 = v36 = v33;
                                  if (BSEqualStrings())
                                  {
                                    v35 = [(UNCSectionInfo *)self hideWeeApp:v36];
                                    v16 = v35 ^ [(UNCSectionInfo *)v5 hideWeeApp]^ 1;
                                  }

                                  else
                                  {
                                    LOBYTE(v16) = 0;
                                  }
                                }

                                else
                                {
                                  LOBYTE(v16) = 0;
                                }
                              }

                              else
                              {
                                LOBYTE(v16) = 0;
                              }
                            }

                            else
                            {
                              LOBYTE(v16) = 0;
                            }
                          }

                          else
                          {
                            LOBYTE(v16) = 0;
                          }
                        }

                        else
                        {
                          LOBYTE(v16) = 0;
                        }
                      }

                      else
                      {
                        LOBYTE(v16) = 0;
                      }
                    }

                    else
                    {
                      LOBYTE(v16) = 0;
                    }
                  }

                  else
                  {
                    LOBYTE(v16) = 0;
                  }
                }

                else
                {
                  LOBYTE(v16) = 0;
                }
              }

              else
              {
                LOBYTE(v16) = 0;
              }

              v20 = v57;
            }

            else
            {
              LOBYTE(v16) = 0;
            }
          }

          else
          {
            LOBYTE(v16) = 0;
          }
        }

        else
        {
          LOBYTE(v16) = 0;
        }
      }

      else
      {
        LOBYTE(v16) = 0;
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(UNCSectionInfo *)self parentSection];
  [v5 setParentSection:v6];

  v7 = [(UNCSectionInfo *)self sectionID];
  [v5 setSectionID:v7];

  v8 = [(UNCSectionInfo *)self subsectionID];
  [v5 setSubsectionID:v8];

  [v5 setSectionType:{-[UNCSectionInfo sectionType](self, "sectionType")}];
  [v5 setIsAppClip:{-[UNCSectionInfo isAppClip](self, "isAppClip")}];
  [v5 setIsModificationAllowed:{-[UNCSectionInfo isModificationAllowed](self, "isModificationAllowed")}];
  [v5 setIsRestricted:{-[UNCSectionInfo isRestricted](self, "isRestricted")}];
  [v5 setSectionCategory:{-[UNCSectionInfo sectionCategory](self, "sectionCategory")}];
  [v5 setSuppressFromSettings:{-[UNCSectionInfo suppressFromSettings](self, "suppressFromSettings")}];
  v9 = [(UNCSectionInfoSettings *)self->_sectionInfoSettings copyWithZone:a3];
  [v5 setSectionInfoSettings:v9];

  v10 = [(UNCSectionInfoSettings *)self->_managedSectionInfoSettings copyWithZone:a3];
  [v5 setManagedSectionInfoSettings:v10];

  v11 = [(UNCSectionInfo *)self pathToWeeAppPluginBundle];
  [v5 setPathToWeeAppPluginBundle:v11];

  v12 = [(UNCSectionInfo *)self appName];
  [v5 setAppName:v12];

  v13 = [(UNCSectionInfo *)self displayName];
  [v5 setDisplayName:v13];

  v14 = [(UNCSectionInfo *)self icon];
  [v5 setIcon:v14];

  v15 = [(UNCSectionInfo *)self customSettingsBundle];
  [v5 setCustomSettingsBundle:v15];

  v16 = [(UNCSectionInfo *)self customSettingsDetailControllerClass];
  [v5 setCustomSettingsDetailControllerClass:v16];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = [(UNCSectionInfo *)self subsections];
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      v21 = 0;
      do
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v27 + 1) + 8 * v21) copyWithZone:a3];
        [v5 _addSubsection:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v19);
  }

  [v5 setSubsectionPriority:{-[UNCSectionInfo subsectionPriority](self, "subsectionPriority")}];
  [v5 setSuppressedSettings:{-[UNCSectionInfo suppressedSettings](self, "suppressedSettings")}];
  [v5 setHideWeeApp:{-[UNCSectionInfo hideWeeApp](self, "hideWeeApp")}];
  v23 = [(UNCSectionInfo *)self factorySectionID];
  [v5 setFactorySectionID:v23];

  v24 = [(UNCSectionInfo *)self dataProviderIDs];
  [v5 setDataProviderIDs:v24];

  [v5 setVersion:{-[UNCSectionInfo version](self, "version")}];
  [v5 setIsRestricted:{-[UNCSectionInfo isRestricted](self, "isRestricted")}];
  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

- (UNCSectionInfo)initWithCoder:(id)a3
{
  v44[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v41.receiver = self;
  v41.super_class = UNCSectionInfo;
  v5 = [(UNCSectionInfo *)&v41 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sectionID"];
    [(UNCSectionInfo *)v5 setSectionID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subsectionID"];
    [(UNCSectionInfo *)v5 setSubsectionID:v7];

    -[UNCSectionInfo setSectionType:](v5, "setSectionType:", [v4 decodeIntegerForKey:@"sectionType"]);
    -[UNCSectionInfo setIsAppClip:](v5, "setIsAppClip:", [v4 decodeBoolForKey:@"isAppClip"]);
    -[UNCSectionInfo setIsModificationAllowed:](v5, "setIsModificationAllowed:", [v4 decodeBoolForKey:@"isModificationAllowed"]);
    -[UNCSectionInfo setIsRestricted:](v5, "setIsRestricted:", [v4 decodeBoolForKey:@"isRestricted"]);
    -[UNCSectionInfo setSectionCategory:](v5, "setSectionCategory:", [v4 decodeIntegerForKey:@"sectionCategory"]);
    -[UNCSectionInfo setSuppressFromSettings:](v5, "setSuppressFromSettings:", [v4 decodeBoolForKey:@"suppressFromSettings"]);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pathToWeeAppPluginBundle"];
    [(UNCSectionInfo *)v5 setPathToWeeAppPluginBundle:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appName"];
    [(UNCSectionInfo *)v5 setAppName:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    [(UNCSectionInfo *)v5 setDisplayName:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    [(UNCSectionInfo *)v5 setIcon:v11];

    v12 = MEMORY[0x1E695DFD8];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"subsections"];

    [(UNCSectionInfo *)v5 setSubsections:v15];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      do
      {
        v20 = 0;
        do
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v37 + 1) + 8 * v20++) setParentSection:{v5, v37}];
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v18);
    }

    -[UNCSectionInfo setSubsectionPriority:](v5, "setSubsectionPriority:", [v4 decodeIntegerForKey:@"subsectionPriority"]);
    -[UNCSectionInfo setSuppressedSettings:](v5, "setSuppressedSettings:", [v4 decodeInt64ForKey:@"suppressedSettings"]);
    -[UNCSectionInfo setHideWeeApp:](v5, "setHideWeeApp:", [v4 decodeBoolForKey:@"hideWeeApp"]);
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"factorySectionID"];
    [(UNCSectionInfo *)v5 setFactorySectionID:v21];

    v22 = MEMORY[0x1E695DFD8];
    v42[0] = objc_opt_class();
    v42[1] = objc_opt_class();
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    v24 = [v22 setWithArray:v23];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"dataProviderIDs"];
    [(UNCSectionInfo *)v5 setDataProviderIDs:v25];

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customSettingsBundle"];
    [(UNCSectionInfo *)v5 setCustomSettingsBundle:v26];

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customSettingsDetailControllerClass"];
    [(UNCSectionInfo *)v5 setCustomSettingsDetailControllerClass:v27];

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    -[UNCSectionInfo setVersion:](v5, "setVersion:", [v28 unsignedIntegerValue]);
    if ([v4 containsValueForKey:@"sectionInfoSettings"])
    {
      v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sectionInfoSettings"];
      sectionInfoSettings = v5->_sectionInfoSettings;
      v5->_sectionInfoSettings = v29;
    }

    else
    {
      v31 = [[UNCSectionInfoSettings alloc] initWithDefaultsForSectionType:[(UNCSectionInfo *)v5 sectionType]];
      v32 = v5->_sectionInfoSettings;
      v5->_sectionInfoSettings = v31;

      if ([v4 containsValueForKey:@"allowsNotifications"])
      {
        v33 = [v4 decodeBoolForKey:@"allowsNotifications"];
      }

      else
      {
        v33 = 1;
      }

      [(UNCSectionInfoSettings *)v5->_sectionInfoSettings setAllowsNotifications:v33, v37];
      -[UNCSectionInfoSettings setShowsInNotificationCenter:](v5->_sectionInfoSettings, "setShowsInNotificationCenter:", [v4 decodeBoolForKey:@"showsInNotificationCenter"]);
      -[UNCSectionInfoSettings setShowsInLockScreen:](v5->_sectionInfoSettings, "setShowsInLockScreen:", [v4 decodeBoolForKey:@"showsInLockScreen"]);
      -[UNCSectionInfoSettings setShowsCustomSettingsLink:](v5->_sectionInfoSettings, "setShowsCustomSettingsLink:", [v4 decodeBoolForKey:@"showsCustomSettingsLink"]);
      -[UNCSectionInfoSettings setAlertType:](v5->_sectionInfoSettings, "setAlertType:", [v4 decodeIntegerForKey:@"alertType"]);
      -[UNCSectionInfoSettings setPushSettings:](v5->_sectionInfoSettings, "setPushSettings:", [v4 decodeInt64ForKey:@"pushSettings"]);
      if ([v4 containsValueForKey:@"showsOnExternalDevices"])
      {
        -[UNCSectionInfoSettings setShowsOnExternalDevices:](v5->_sectionInfoSettings, "setShowsOnExternalDevices:", [v4 decodeBoolForKey:@"showsOnExternalDevices"]);
      }

      if ([v4 containsValueForKey:@"showsMessagePreview"])
      {
        -[UNCSectionInfoSettings setShowsMessagePreview:](v5->_sectionInfoSettings, "setShowsMessagePreview:", [v4 decodeBoolForKey:@"showsMessagePreview"]);
      }
    }

    if ([v4 containsValueForKey:{@"bulletinGroupingSetting", v37}])
    {
      -[UNCSectionInfo setBulletinGroupingSetting:](v5, "setBulletinGroupingSetting:", [v4 decodeIntegerForKey:@"bulletinGroupingSetting"]);
    }

    if ([v4 containsValueForKey:@"managedSectionInfoSettings"])
    {
      v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"managedSectionInfoSettings"];
      [(UNCSectionInfo *)v5 setManagedSectionInfoSettings:v34];
    }
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNCSectionInfo *)self sectionID];
  [v4 encodeObject:v5 forKey:@"sectionID"];

  v6 = [(UNCSectionInfo *)self subsectionID];
  [v4 encodeObject:v6 forKey:@"subsectionID"];

  [v4 encodeInteger:-[UNCSectionInfo sectionType](self forKey:{"sectionType"), @"sectionType"}];
  [v4 encodeBool:-[UNCSectionInfo isAppClip](self forKey:{"isAppClip"), @"isAppClip"}];
  [v4 encodeBool:-[UNCSectionInfo isModificationAllowed](self forKey:{"isModificationAllowed"), @"isModificationAllowed"}];
  [v4 encodeBool:-[UNCSectionInfo isRestricted](self forKey:{"isRestricted"), @"isRestricted"}];
  [v4 encodeInteger:-[UNCSectionInfo sectionCategory](self forKey:{"sectionCategory"), @"sectionCategory"}];
  [v4 encodeBool:-[UNCSectionInfo suppressFromSettings](self forKey:{"suppressFromSettings"), @"suppressFromSettings"}];
  [v4 encodeObject:self->_sectionInfoSettings forKey:@"sectionInfoSettings"];
  [v4 encodeObject:self->_managedSectionInfoSettings forKey:@"managedSectionInfoSettings"];
  v7 = [(UNCSectionInfo *)self pathToWeeAppPluginBundle];
  [v4 encodeObject:v7 forKey:@"pathToWeeAppPluginBundle"];

  v8 = [(UNCSectionInfo *)self appName];
  [v4 encodeObject:v8 forKey:@"appName"];

  v9 = [(UNCSectionInfo *)self displayName];
  [v4 encodeObject:v9 forKey:@"displayName"];

  v10 = [(UNCSectionInfo *)self icon];
  [v4 encodeObject:v10 forKey:@"icon"];

  v11 = [(UNCSectionInfo *)self subsections];
  [v4 encodeObject:v11 forKey:@"subsections"];

  [v4 encodeInteger:-[UNCSectionInfo subsectionPriority](self forKey:{"subsectionPriority"), @"subsectionPriority"}];
  [v4 encodeInteger:-[UNCSectionInfo suppressedSettings](self forKey:{"suppressedSettings"), @"suppressedSettings"}];
  [v4 encodeBool:-[UNCSectionInfo hideWeeApp](self forKey:{"hideWeeApp"), @"hideWeeApp"}];
  v12 = [(UNCSectionInfo *)self factorySectionID];
  [v4 encodeObject:v12 forKey:@"factorySectionID"];

  v13 = [(UNCSectionInfo *)self dataProviderIDs];
  [v4 encodeObject:v13 forKey:@"dataProviderIDs"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNCSectionInfo version](self, "version")}];
  [v4 encodeObject:v14 forKey:@"version"];

  v15 = [(UNCSectionInfo *)self customSettingsBundle];
  [v4 encodeObject:v15 forKey:@"customSettingsBundle"];

  v16 = [(UNCSectionInfo *)self customSettingsDetailControllerClass];
  [v4 encodeObject:v16 forKey:@"customSettingsDetailControllerClass"];
}

- (UNCSectionInfo)parentSection
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSection);

  return WeakRetained;
}

+ (id)defaultSectionInfoForSection:(id)a3
{
  v3 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v3 defaultSectionInfo], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [UNCSectionInfo defaultSectionInfoForType:0];
  }

  v5 = [v3 sectionIdentifier];
  [v4 setSectionID:v5];
  v12 = 0;
  v6 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v5 allowPlaceholder:1 error:&v12];
  v7 = v12;
  if (v6)
  {
    v8 = [v6 localizedName];
    [v4 setAppName:v8];

    v9 = [v6 applicationState];
    [v4 setIsRestricted:{objc_msgSend(v9, "isRestricted")}];
  }

  else
  {
    v10 = *MEMORY[0x1E69833A0];
    if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_ERROR))
    {
      [(UNCSectionInfo(DataProviders) *)v5 defaultSectionInfoForSection:v10, v7];
    }
  }

  return v4;
}

- (void)updateWithDefaultSectionInfo:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UNCSectionInfo *)self alertType];
  v6 = [(UNCSectionInfo *)self pushSettings];
  v7 = [v4 pushSettings];
  v8 = v7;
  if ((v6 & 4) == 0 && (v7 & 4) != 0)
  {
    v5 = [v4 alertType];
    v6 |= 0x24uLL;
  }

  if (v6 & 1 | ((v8 & 1) == 0))
  {
    v9 = v6;
  }

  else
  {
    v9 = v6 | 9;
  }

  v10 = (v9 >> 1) & 1;
  if ((v8 & 2) == 0)
  {
    LODWORD(v10) = 1;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 | 0x12;
  }

  v12 = [(UNCSectionInfo *)self suppressedSettings];
  v13 = [v4 suppressedSettings];
  v14 = v13;
  if ((v12 & 0x2000) == 0 || (v13 & 0x2000) != 0)
  {
LABEL_26:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (v8)
  {
    v11 |= 9uLL;
    goto LABEL_26;
  }

  v15 = [(UNCSectionInfo *)self subsections];
  v16 = [v15 count];

  if (!v16)
  {
    goto LABEL_26;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v17 = [(UNCSectionInfo *)self subsections];
  v18 = [v17 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v58;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v58 != v20)
        {
          objc_enumerationMutation(v17);
        }

        if (([*(*(&v57 + 1) + 8 * i) pushSettings] & 8) != 0)
        {
          v11 |= 9uLL;
          goto LABEL_81;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v57 objects:v61 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_81:

  if ((v12 & 0x20) != 0)
  {
LABEL_27:
    if ((v14 & 0x20) == 0)
    {
      v5 = [v4 alertType];
      v11 |= 0x24uLL;
    }
  }

LABEL_29:
  [(UNCSectionInfo *)self setAlertType:v5];
  [(UNCSectionInfo *)self setPushSettings:v11];
  v22 = [(UNCSectionInfo *)self lockScreenSetting];
  v23 = [v4 lockScreenSetting];
  if (v22)
  {
    v25 = ((v14 & 2) == 0) & (v12 >> 1);
  }

  else
  {
    v25 = 1;
  }

  if (v25 == 1)
  {
    v24 = v23;
    if (v23)
    {
      [(UNCSectionInfo *)self setLockScreenSetting:v23];
    }
  }

  v26 = [(UNCSectionInfo *)self notificationCenterSetting];
  v27 = [v4 notificationCenterSetting];
  if (v26)
  {
    v29 = v12 & ((v14 & 1) == 0);
  }

  else
  {
    v29 = 1;
  }

  if (v29 == 1)
  {
    v28 = v27;
    if (v27)
    {
      [(UNCSectionInfo *)self setNotificationCenterSetting:v27];
    }
  }

  v30 = [(UNCSectionInfo *)self carPlaySetting];
  v31 = [v4 carPlaySetting];
  if (v30)
  {
    v33 = ((v14 & 0x80) == 0) & (v12 >> 7);
  }

  else
  {
    v33 = 1;
  }

  if (v33 == 1)
  {
    v32 = v31;
    if (v31)
    {
      [(UNCSectionInfo *)self setCarPlaySetting:v31];
    }
  }

  v34 = [(UNCSectionInfo *)self remoteNotificationsSetting];
  v35 = [v4 remoteNotificationsSetting];
  if (v34)
  {
    v37 = ((*&v14 & 0x10000) == 0) & HIWORD(v12);
  }

  else
  {
    v37 = 1;
  }

  if (v37 == 1)
  {
    v36 = v35;
    if (v35)
    {
      [(UNCSectionInfo *)self setRemoteNotificationsSetting:v35];
    }
  }

  v38 = [(UNCSectionInfo *)self announceSetting];
  v39 = [v4 announceSetting];
  if (!v38)
  {
    v40 = v39;
    if (v39)
    {
      [(UNCSectionInfo *)self setAnnounceSetting:v39];
    }
  }

  v41 = [(UNCSectionInfo *)self criticalAlertSetting];
  v42 = [v4 criticalAlertSetting];
  if (!v41)
  {
    v43 = v42;
    if (v42)
    {
      [(UNCSectionInfo *)self setCriticalAlertSetting:v42];
    }
  }

  v44 = [(UNCSectionInfo *)self timeSensitiveSetting];
  v45 = [v4 timeSensitiveSetting];
  if (!v44)
  {
    v46 = v45;
    if (v45)
    {
      [(UNCSectionInfo *)self setTimeSensitiveSetting:v45];
    }
  }

  v47 = [(UNCSectionInfo *)self directMessagesSetting];
  v48 = [v4 directMessagesSetting];
  if (!v47)
  {
    v49 = v48;
    if (v48)
    {
      [(UNCSectionInfo *)self setDirectMessagesSetting:v48];
    }
  }

  if (![(UNCSectionInfo *)self showsCustomSettingsLink])
  {
    -[UNCSectionInfo setShowsCustomSettingsLink:](self, "setShowsCustomSettingsLink:", [v4 showsCustomSettingsLink]);
  }

  v50 = [(UNCSectionInfo *)self parentSection];
  if (!v50 || (v12 & 0x23) != 0)
  {
  }

  else
  {

    if ((v14 & 0x23) != 0)
    {
      if ([(UNCSectionInfo *)self allowsNotifications])
      {
        if ([(UNCSectionInfo *)self lockScreenSetting]!= 2 && [(UNCSectionInfo *)self notificationCenterSetting]!= 2 && ![(UNCSectionInfo *)self alertType])
        {
          [(UNCSectionInfo *)self setAllowsNotifications:0];
        }
      }

      else if (([(UNCSectionInfo *)self suppressedSettings]& 0x2000) == 0 && ([(UNCSectionInfo *)self pushSettings]& 1) != 0)
      {
        [(UNCSectionInfo *)self setPushSettings:[(UNCSectionInfo *)self pushSettings]& 0xFFFFFFFFFFFFFFF7];
      }
    }
  }

  -[UNCSectionInfo setSuppressFromSettings:](self, "setSuppressFromSettings:", [v4 suppressFromSettings]);
  -[UNCSectionInfo setSuppressedSettings:](self, "setSuppressedSettings:", [v4 suppressedSettings]);
  -[UNCSectionInfo setSectionType:](self, "setSectionType:", [v4 sectionType]);
  -[UNCSectionInfo setIsAppClip:](self, "setIsAppClip:", [v4 isAppClip]);
  -[UNCSectionInfo setSectionCategory:](self, "setSectionCategory:", [v4 sectionCategory]);
  -[UNCSectionInfo setSubsectionPriority:](self, "setSubsectionPriority:", [v4 subsectionPriority]);
  -[UNCSectionInfo setVersion:](self, "setVersion:", [v4 version]);
  v51 = [v4 appName];
  [(UNCSectionInfo *)self setAppName:v51];

  v52 = [v4 displayName];
  [(UNCSectionInfo *)self setDisplayName:v52];

  v53 = [v4 icon];
  [(UNCSectionInfo *)self setIcon:v53];

  -[UNCSectionInfo setIsRestricted:](self, "setIsRestricted:", [v4 isRestricted]);
  v54 = [v4 customSettingsBundle];
  [(UNCSectionInfo *)self setCustomSettingsBundle:v54];

  v55 = [v4 customSettingsDetailControllerClass];
  [(UNCSectionInfo *)self setCustomSettingsDetailControllerClass:v55];

  v56 = *MEMORY[0x1E69E9840];
}

- (void)queryAndUseManagedSettings
{
  v3 = [(UNCSectionInfo *)self sectionID];
  [(UNCSectionInfo *)self queryAndUseManagedSettingsForSectionID:v3];
}

- (void)queryAndUseManagedSettingsForSectionID:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [UNCSectionInfoSettings sectionInfoSettingsForManagedBundleID:v4];
  v6 = MEMORY[0x1E69833A0];
  if (v5)
  {
    v7 = *MEMORY[0x1E69833A0];
    if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v4;
      _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "Managed settings found for section %{public}@", &v12, 0xCu);
    }
  }

  [(UNCSectionInfo *)self setManagedSectionInfoSettings:v5];
  v8 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v9 = [v8 isNotificationsModificationAllowedForBundleID:v4];

  if ((v9 & 1) == 0)
  {
    v10 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v4;
      _os_log_impl(&dword_1DA7A9000, v10, OS_LOG_TYPE_DEFAULT, "Modification not allowed for section %{public}@", &v12, 0xCu);
    }
  }

  [(UNCSectionInfo *)self setIsModificationAllowed:v9 ^ 1u];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setManagedSectionInfoSettings:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 copy];
  managedSectionInfoSettings = self->_managedSectionInfoSettings;
  self->_managedSectionInfoSettings = v5;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_subsections;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) setManagedSectionInfoSettings:{v4, v13}];
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (UNCSectionInfoSettings)readableSettings
{
  managedSectionInfoSettings = self->_managedSectionInfoSettings;
  if (!managedSectionInfoSettings)
  {
    managedSectionInfoSettings = self->_sectionInfoSettings;
  }

  return managedSectionInfoSettings;
}

- (UNCSectionInfoSettings)writableSettings
{
  if (self->_managedSectionInfoSettings)
  {
    return 0;
  }

  else
  {
    return self->_sectionInfoSettings;
  }
}

- (id)copyFromManagedSettings
{
  v2 = [(UNCSectionInfo *)self copy];
  if ([v2 usesManagedSettings])
  {
    v3 = [v2 managedSectionInfoSettings];
    [v2 setSectionInfoSettings:v3];

    [v2 setManagedSectionInfoSettings:0];
  }

  return v2;
}

- (BOOL)allowsNotifications
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 allowsNotifications];

  return v3;
}

- (NSDate)authorizationExpirationDate
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 authorizationExpirationDate];

  return v3;
}

- (void)setAuthorizationExpirationDate:(id)a3
{
  v4 = a3;
  v5 = [(UNCSectionInfo *)self writableSettings];
  [v5 setAuthorizationExpirationDate:v4];
}

- (int64_t)authorizationStatus
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 authorizationStatus];

  return v3;
}

- (void)setAuthorizationStatus:(int64_t)a3
{
  v4 = [(UNCSectionInfo *)self writableSettings];
  [v4 setAuthorizationStatus:a3];
}

- (NSDate)lastUserGrantedAuthorizationDate
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 lastUserGrantedAuthorizationDate];

  return v3;
}

- (void)setLastUserGrantedAuthorizationDate:(id)a3
{
  v4 = a3;
  v5 = [(UNCSectionInfo *)self writableSettings];
  [v5 setLastUserGrantedAuthorizationDate:v4];
}

- (UNCMuteAssertion)muteAssertion
{
  v2 = [(UNCSectionInfo *)self sectionInfoSettings];
  v3 = [v2 muteAssertion];

  return v3;
}

- (void)setMuteAssertion:(id)a3
{
  v4 = a3;
  v5 = [(UNCSectionInfo *)self sectionInfoSettings];
  [v5 setMuteAssertion:v4];
}

- (int64_t)notificationCenterSetting
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 notificationCenterSetting];

  return v3;
}

- (void)setNotificationCenterSetting:(int64_t)a3
{
  v4 = [(UNCSectionInfo *)self writableSettings];
  [v4 setNotificationCenterSetting:a3];
}

- (BOOL)showsInNotificationCenter
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 showsInNotificationCenter];

  return v3;
}

- (int64_t)lockScreenSetting
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 lockScreenSetting];

  return v3;
}

- (void)setLockScreenSetting:(int64_t)a3
{
  v4 = [(UNCSectionInfo *)self writableSettings];
  [v4 setLockScreenSetting:a3];
}

- (BOOL)showsInLockScreen
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 showsInLockScreen];

  return v3;
}

- (unint64_t)alertType
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 alertType];

  return v3;
}

- (void)setAlertType:(unint64_t)a3
{
  v4 = [(UNCSectionInfo *)self writableSettings];
  [v4 setAlertType:a3];
}

- (unint64_t)pushSettings
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 pushSettings];

  return v3;
}

- (void)setPushSettings:(unint64_t)a3
{
  v4 = [(UNCSectionInfo *)self writableSettings];
  [v4 setPushSettings:a3];
}

- (int64_t)carPlaySetting
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 carPlaySetting];

  return v3;
}

- (void)setCarPlaySetting:(int64_t)a3
{
  v4 = [(UNCSectionInfo *)self writableSettings];
  [v4 setCarPlaySetting:a3];
}

- (int64_t)remoteNotificationsSetting
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 remoteNotificationsSetting];

  return v3;
}

- (void)setRemoteNotificationsSetting:(int64_t)a3
{
  v4 = [(UNCSectionInfo *)self writableSettings];
  [v4 setRemoteNotificationsSetting:a3];
}

- (int64_t)spokenNotificationSetting
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 spokenNotificationSetting];

  return v3;
}

- (void)setSpokenNotificationSetting:(int64_t)a3
{
  v4 = [(UNCSectionInfo *)self writableSettings];
  [v4 setSpokenNotificationSetting:a3];
}

- (int64_t)criticalAlertSetting
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 criticalAlertSetting];

  return v3;
}

- (void)setCriticalAlertSetting:(int64_t)a3
{
  v4 = [(UNCSectionInfo *)self writableSettings];
  [v4 setCriticalAlertSetting:a3];
}

- (int64_t)timeSensitiveSetting
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 timeSensitiveSetting];

  return v3;
}

- (void)setTimeSensitiveSetting:(int64_t)a3
{
  v4 = [(UNCSectionInfo *)self writableSettings];
  [v4 setTimeSensitiveSetting:a3];
}

- (BOOL)hasUserConfiguredTimeSensitiveSetting
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 hasUserConfiguredTimeSensitiveSetting];

  return v3;
}

- (int64_t)bulletinGroupingSetting
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 bulletinGroupingSetting];

  return v3;
}

- (void)setBulletinGroupingSetting:(int64_t)a3
{
  v4 = [(UNCSectionInfo *)self writableSettings];
  [v4 setBulletinGroupingSetting:a3];
}

- (int64_t)announceSetting
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 announceSetting];

  return v3;
}

- (void)setAnnounceSetting:(int64_t)a3
{
  v4 = [(UNCSectionInfo *)self writableSettings];
  [v4 setAnnounceSetting:a3];
}

- (int64_t)scheduledDeliverySetting
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 scheduledDeliverySetting];

  return v3;
}

- (void)setScheduledDeliverySetting:(int64_t)a3
{
  v4 = [(UNCSectionInfo *)self writableSettings];
  [v4 setScheduledDeliverySetting:a3];
}

- (int64_t)directMessagesSetting
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 directMessagesSetting];

  return v3;
}

- (void)setDirectMessagesSetting:(int64_t)a3
{
  v4 = [(UNCSectionInfo *)self writableSettings];
  [v4 setDirectMessagesSetting:a3];
}

- (BOOL)hasUserConfiguredDirectMessagesSetting
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 hasUserConfiguredDirectMessagesSetting];

  return v3;
}

- (BOOL)showsOnExternalDevices
{
  v2 = [(UNCSectionInfo *)self sectionInfoSettings];
  v3 = [v2 showsOnExternalDevices];

  return v3;
}

- (int64_t)contentPreviewSetting
{
  v2 = [(UNCSectionInfo *)self readableSettings];
  v3 = [v2 contentPreviewSetting];

  return v3;
}

- (void)setContentPreviewSetting:(int64_t)a3
{
  v4 = [(UNCSectionInfo *)self writableSettings];
  [v4 setContentPreviewSetting:a3];
}

- (BOOL)showsMessagePreview
{
  v2 = [(UNCSectionInfo *)self sectionInfoSettings];
  v3 = [v2 showsMessagePreview];

  return v3;
}

- (BOOL)showsCustomSettingsLink
{
  v2 = [(UNCSectionInfo *)self sectionInfoSettings];
  v3 = [v2 showsCustomSettingsLink];

  return v3;
}

@end
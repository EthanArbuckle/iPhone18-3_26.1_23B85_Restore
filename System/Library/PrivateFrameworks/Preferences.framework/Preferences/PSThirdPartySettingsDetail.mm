@interface PSThirdPartySettingsDetail
+ (id)preferencesURLForBundleID:(id)a3 forSettingType:(int64_t)a4;
@end

@implementation PSThirdPartySettingsDetail

+ (id)preferencesURLForBundleID:(id)a3 forSettingType:(int64_t)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _PSLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v46 = v5;
    v47 = 1024;
    v48 = a4;
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "########### Find (%@) type (%d)", buf, 0x12u);
  }

  v7 = MEMORY[0x1E69D5500];
  v8 = kTCCContactsID;
  switch(a4)
  {
    case 0:
      v9 = _PSLoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18B008000, v9, OS_LOG_TYPE_DEFAULT, "########### PSSettingTypeTopLevel", buf, 2u);
      }

      v10 = [MEMORY[0x1E6963608] defaultWorkspace];
      v11 = [v10 applicationIsInstalled:v5];

      if (v11)
      {
        v12 = MEMORY[0x1E695DFF8];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"app-prefs:%@", v5];
        goto LABEL_19;
      }

      v17 = 0;
      goto LABEL_46;
    case 1:
      v16 = +[PSNotificationSettingsController sharedInstance];
      v17 = [v16 sectionInfoForIdentifier:v5];

      if (v17)
      {
        v12 = MEMORY[0x1E695DFF8];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"prefs:root=NOTIFICATIONS_ID&path=%@", v5];
        v15 = LABEL_19:;
        v17 = [v12 URLWithString:v15];
        goto LABEL_45;
      }

      goto LABEL_46;
    case 2:
      if (([(__CFString *)v5 isEqualToString:@"com.apple.weather"]& 1) != 0)
      {
        v13 = @"com.apple.locationd.bundle-/System/Library/PrivateFrameworks/Weather.framework";
LABEL_53:

        goto LABEL_56;
      }

      if ([(__CFString *)v5 isEqualToString:@"com.apple.AssistantServices"])
      {
        v13 = @"com.apple.locationd.bundle-/System/Library/PrivateFrameworks/AssistantServices.framework";
        goto LABEL_53;
      }

      v13 = v5;
LABEL_56:
      v5 = CLCopyAppsUsingLocation();
      [(__CFString *)v5 allKeys];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v18 = v42 = 0u;
      v31 = [(__CFString *)v18 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (!v31)
      {
LABEL_64:

        v15 = @"LOCATION";
        v24 = v5;
        v5 = v13;
        v13 = 0;
        goto LABEL_36;
      }

      v32 = v31;
      v33 = *v40;
      v15 = @"LOCATION";
LABEL_58:
      v34 = 0;
      while (1)
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(v18);
        }

        if ([*(*(&v39 + 1) + 8 * v34) isEqualToString:v13])
        {
          break;
        }

        if (v32 == ++v34)
        {
          v32 = [(__CFString *)v18 countByEnumeratingWithState:&v39 objects:v44 count:16];
          if (!v32)
          {
            goto LABEL_64;
          }

          goto LABEL_58;
        }
      }

LABEL_35:
      v24 = v18;
LABEL_36:

      v18 = v24;
      v25 = v5;
      v5 = v13;
LABEL_38:
      v26 = v5;

      v5 = v25;
LABEL_40:

      if ([(__CFString *)v15 length]&& [(__CFString *)v26 length])
      {
        v27 = MEMORY[0x1E695DFF8];
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"prefs:root=Privacy&path=%@#%@", v15, v26];
        v17 = [v27 URLWithString:v28];
      }

      else
      {
        v17 = 0;
      }

      v5 = v26;
LABEL_45:

LABEL_46:
      v29 = _PSLoggingFacility();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = v17;
        _os_log_impl(&dword_18B008000, v29, OS_LOG_TYPE_DEFAULT, "########### URL (%@)", buf, 0xCu);
      }

      return v17;
    case 3:
      goto LABEL_25;
    case 4:
      v7 = MEMORY[0x1E69D5518];
      v8 = kTCCCalendarsID;
      goto LABEL_25;
    case 5:
      v7 = MEMORY[0x1E69D55D8];
      v8 = kTCCRemindersID;
      goto LABEL_25;
    case 6:
      v7 = MEMORY[0x1E69D55C8];
      v8 = kTCCPhotosID;
      goto LABEL_25;
    case 7:
      v7 = MEMORY[0x1E69D5508];
      v8 = kTCCBluetoothSharingID;
      goto LABEL_25;
    case 8:
      v7 = MEMORY[0x1E69D5588];
      v8 = kTCCMicrophoneID;
      goto LABEL_25;
    case 9:
      v7 = MEMORY[0x1E69D55F0];
      v8 = kTCCSpeechRecognitionID;
      goto LABEL_25;
    case 10:
      v7 = MEMORY[0x1E69D5570];
      v8 = kTCCLiverpoolID;
      goto LABEL_25;
    case 11:
      v7 = MEMORY[0x1E69D55A8];
      v8 = kTCCMotionID;
      goto LABEL_25;
    case 12:
      v7 = MEMORY[0x1E69D5520];
      v8 = kTCCCameraID;
      goto LABEL_25;
    case 13:
      v7 = MEMORY[0x1E69D5580];
      v8 = kTCCMediaLibraryID;
      goto LABEL_25;
    case 14:
      v7 = MEMORY[0x1E69D5618];
      v8 = kTCCWebKitIntelligentTrackingPreventionID;
LABEL_25:
      v15 = *v8;
      v14 = *v7;
      goto LABEL_26;
    default:
      v14 = &stru_1EFE45030;
      v15 = &stru_1EFE45030;
LABEL_26:
      if ([(__CFString *)v14 length])
      {
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v18 = TCCAccessCopyInformation();
        v13 = [(__CFString *)v18 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (!v13)
        {
          goto LABEL_35;
        }

        v19 = *v36;
        v20 = MEMORY[0x1E69D54E0];
        while (1)
        {
          for (i = 0; i != v13; i = (i + 1))
          {
            if (*v36 != v19)
            {
              objc_enumerationMutation(v18);
            }

            v22 = CFBundleGetIdentifier([*(*(&v35 + 1) + 8 * i) objectForKey:*v20]);
            v23 = [v22 isEqualToString:v5];

            if (v23)
            {
              v25 = v18;
              goto LABEL_38;
            }
          }

          v13 = [(__CFString *)v18 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (!v13)
          {
            goto LABEL_35;
          }
        }
      }

      v26 = 0;
      goto LABEL_40;
  }
}

@end
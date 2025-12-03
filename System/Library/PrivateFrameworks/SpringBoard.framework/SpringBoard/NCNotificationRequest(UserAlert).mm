@interface NCNotificationRequest(UserAlert)
+ (id)_notificationOptionsForAlertController:()UserAlert item:;
+ (id)_notificationRequestForDestinations:()UserAlert withAlertItem:identifier:;
+ (id)_notificationSoundFromSound:()UserAlert;
+ (id)notificationRequestForCarPlayWithAlertItem:()UserAlert;
+ (id)notificationRequestForLockScreenWithAlertItem:()UserAlert;
+ (uint64_t)_soundTypeForSBSoundType:()UserAlert;
@end

@implementation NCNotificationRequest(UserAlert)

+ (id)notificationRequestForCarPlayWithAlertItem:()UserAlert
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"%@-CarPlay-%lu", v7, objc_msgSend(v5, "hash")];

  v9 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D77FD0]];
  v10 = [self _notificationRequestForDestinations:v9 withAlertItem:v5 identifier:v8];

  return v10;
}

+ (id)notificationRequestForLockScreenWithAlertItem:()UserAlert
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"%@-LockScreen-%lu", v7, objc_msgSend(v5, "hash")];

  v9 = MEMORY[0x277CBEB98];
  v10 = *MEMORY[0x277D77FD8];
  v15[0] = *MEMORY[0x277D77FE0];
  v15[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v12 = [v9 setWithArray:v11];
  v13 = [self _notificationRequestForDestinations:v12 withAlertItem:v5 identifier:v8];

  return v13;
}

+ (id)_notificationRequestForDestinations:()UserAlert withAlertItem:identifier:
{
  v68[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = objc_opt_new();
  alertController = [v8 alertController];
  title = [alertController title];

  if (!title)
  {
    v14 = [v8 _prepareNewAlertControllerWithLockedState:1 requirePasscodeForActions:1];

    alertController = v14;
  }

  [v11 setNotificationIdentifier:v9];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [v15 stringWithFormat:@"com.apple.springboard.alert.%@", v17];

  v67 = v18;
  [v11 setSectionIdentifier:v18];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  [v11 setThreadIdentifier:v20];

  date = [MEMORY[0x277CBEAA8] date];
  [v11 setTimestamp:date];

  [v11 setRequestDestinations:v10];
  v22 = objc_opt_new();
  title2 = [alertController title];
  if ([title2 length])
  {
    message = [alertController message];
    v25 = [message length];

    if (v25)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v27 = [mainBundle localizedStringForKey:@"SYSTEM_NOTIFICATION_HEADER" value:&stru_283094718 table:@"SpringBoard"];
  [v22 setCustomHeader:v27];

LABEL_8:
  title3 = [alertController title];
  [v22 setTitle:title3];

  message2 = [alertController message];
  [v22 setMessage:message2];

  contactIdentifier = [v8 contactIdentifier];

  if (contactIdentifier)
  {
    v31 = objc_alloc_init(MEMORY[0x277CE2050]);
    contactIdentifier2 = [v8 contactIdentifier];
    [v31 setCnContactIdentifier:contactIdentifier2];

    v33 = objc_alloc_init(MEMORY[0x277CE2048]);
    [v33 setSender:v31];
    [v33 setBundleIdentifier:v67];
    [v22 setCommunicationContext:v33];
  }

  contentType = [v8 contentType];
  [v22 setContentType:contentType];

  iconImage = [v8 iconImage];
  if (!iconImage)
  {
    goto LABEL_18;
  }

  v36 = iconImage;
  if ([v8 shouldMaskIcon])
  {
    v65 = v9;
    v37 = objc_alloc(MEMORY[0x277D1B160]);
    cGImage = [v36 CGImage];
    [v36 scale];
    v39 = [v37 initWithCGImage:cGImage scale:?];
    v40 = objc_alloc(MEMORY[0x277D1B1A8]);
    v68[0] = v39;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:1];
    v66 = [v40 initWithImages:v41];

    if (objc_opt_respondsToSelector())
    {
      [MEMORY[0x277D78098] prominentIconDimension];
      v43 = v42;
    }

    else
    {
      v43 = 38.0;
    }

    v44 = objc_alloc(MEMORY[0x277D1B1C8]);
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v47 = [v44 initWithSize:v43 scale:{v43, v46}];

    v48 = [v66 imageForDescriptor:v47];
    v49 = v48;
    if (v48)
    {
      v50 = MEMORY[0x277D755B8];
      v64 = v39;
      selfCopy = self;
      cGImage2 = [v48 CGImage];
      [v49 scale];
      v53 = [v50 imageWithCGImage:cGImage2 scale:0 orientation:?];

      v36 = v53;
      self = selfCopy;
      v39 = v64;
    }

    v9 = v65;
    if (!v36)
    {
LABEL_18:
      v54 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.circle"];
      v55 = [MEMORY[0x277D74300] defaultFontForTextStyle:*MEMORY[0x277D76A28]];
      selfCopy2 = self;
      v57 = MEMORY[0x277D755D0];
      [v55 pointSize];
      v58 = [v57 configurationWithPointSize:?];
      v36 = [v54 imageWithConfiguration:v58];

      self = selfCopy2;
    }
  }

  [v22 setIcon:v36];
  _attachmentImage = [v8 _attachmentImage];
  if (_attachmentImage)
  {
    [v22 setAttachmentImage:_attachmentImage];
  }

  [v11 setContent:v22];
  v60 = [self _notificationOptionsForAlertController:alertController item:v8];
  [v11 setOptions:v60];

  v61 = [MEMORY[0x277D77E30] defaultNotificationActionForSBAlertItem:v8];
  if (v61)
  {
    [v11 setDefaultAction:v61];
  }

  v62 = [MEMORY[0x277D77E30] dismissNotificationActionForSBAlertItem:v8];
  if (v62)
  {
    [v11 setClearAction:v62];
    [v11 setCloseAction:v62];
    [v11 setSilenceAction:v62];
  }

  return v11;
}

+ (id)_notificationOptionsForAlertController:()UserAlert item:
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setDismissAutomatically:0];
  [v7 setOverridesQuietMode:{objc_msgSend(v6, "_ignoresQuietMode")}];
  [v7 setAlertsWhenLocked:1];
  [v7 setAddToLockScreenWhenUnlocked:{objc_msgSend(v6, "shouldShowInLockScreen")}];
  [v7 setLockScreenPersistence:1];
  [v7 setLockScreenPriority:200];
  [v7 setCanPlaySound:1];
  [v7 setCanTurnOnDisplay:{objc_msgSend(v6, "wakeDisplay")}];
  [v7 setHideClearActionInList:{objc_msgSend(v6, "allowLockScreenDismissal") ^ 1}];
  allowMessageInCar = [v6 allowMessageInCar];

  if (allowMessageInCar)
  {
    message = [v5 message];
    [v7 setLauchUsingSiriForCarPlayDefaultAction:{objc_msgSend(message, "length") != 0}];
  }

  else
  {
    [v7 setLauchUsingSiriForCarPlayDefaultAction:0];
  }

  return v7;
}

+ (uint64_t)_soundTypeForSBSoundType:()UserAlert
{
  if ((a3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_21F8A8358[a3 - 1];
  }
}

+ (id)_notificationSoundFromSound:()UserAlert
{
  v4 = a3;
  soundType = [v4 soundType];
  if (soundType > 4 || soundType == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_opt_new();
    [v7 setSoundType:{objc_msgSend(self, "_soundTypeForSBSoundType:", objc_msgSend(v4, "soundType"))}];
    songPath = [v4 songPath];
    [v7 setSongPath:songPath];

    [v7 setSystemSoundID:{objc_msgSend(v4, "systemSoundID")}];
    [v7 setSoundBehavior:{objc_msgSend(v4, "soundBehavior")}];
    vibrationPattern = [v4 vibrationPattern];
    [v7 setVibrationPattern:vibrationPattern];
  }

  return v7;
}

@end
@interface AXVisualAlertSBNCSoundController
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)playSoundAndReadOutForNotificationRequest:(id)request presentingDestination:(id)destination;
- (void)stopSoundForNotificationRequest:(id)request;
@end

@implementation AXVisualAlertSBNCSoundController

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBNCSoundController" hasInstanceMethod:@"playSoundAndReadOutForNotificationRequest:presentingDestination:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"SBNCSoundController" hasInstanceMethod:@"stopSoundForNotificationRequest:" withFullSignature:{"v", "@", 0}];
}

- (void)playSoundAndReadOutForNotificationRequest:(id)request presentingDestination:(id)destination
{
  requestCopy = request;
  v8.receiver = self;
  v8.super_class = AXVisualAlertSBNCSoundController;
  [(AXVisualAlertSBNCSoundController *)&v8 playSoundAndReadOutForNotificationRequest:requestCopy presentingDestination:destination];
  v7 = requestCopy;
  AXPerformBlockOnMainThreadAfterDelay();
}

void __100__AXVisualAlertSBNCSoundController_playSoundAndReadOutForNotificationRequest_presentingDestination___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) sectionIdentifier];
  v3 = [*(a1 + 32) categoryIdentifier];
  v4 = [MEMORY[0x277CE6998] sharedInstance];
  v5 = [v4 ignoreLogging];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277CE6998] identifier];
    v7 = AXLoggerForFacility();

    v8 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = AXColorizeFormatLog();
      Name = sel_getName(*(a1 + 40));
      v47 = *(a1 + 32);
      v10 = _AXStringForArgs();
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 138543362;
        v50 = v10;
        _os_log_impl(&dword_27102A000, v7, v8, "%{public}@", buf, 0xCu);
      }
    }
  }

  v11 = [AXVisualAlertManager sharedVisualAlertManager:Name];
  v12 = [v11 existingBulletinForBulletin:*(a1 + 32)];

  v13 = [v2 isEqualToString:@"com.apple.mobiletimer"];
  v14 = [v3 isEqualToString:@"AlarmSnoozeCountdown"];
  v15 = [MEMORY[0x277CE6998] sharedInstance];
  v16 = [v15 ignoreLogging];

  if ((v16 & 1) == 0)
  {
    v17 = [MEMORY[0x277CE6998] identifier];
    v18 = AXLoggerForFacility();

    v19 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v18, v19))
    {
      v48 = v14;
      v20 = v2;
      v21 = v12;
      v22 = v3;
      v23 = AXColorizeFormatLog();
      v46 = v13;
      v24 = _AXStringForArgs();
      if (os_log_type_enabled(v18, v19))
      {
        *buf = 138543362;
        v50 = v24;
        _os_log_impl(&dword_27102A000, v18, v19, "%{public}@", buf, 0xCu);
      }

      v3 = v22;
      v12 = v21;
      v2 = v20;
      v14 = v48;
    }
  }

  if (([v12 _accessibilityBoolValueForKey:{@"AXTurnedOnScreen", v46}] | v13))
  {
    if ([v2 isEqualToString:@"com.apple.springboard.SBDismissOnlyAlertItem"])
    {
      v25 = [MEMORY[0x277CE6998] sharedInstance];
      v26 = [v25 ignoreLogging];

      if ((v26 & 1) == 0)
      {
        v27 = [MEMORY[0x277CE6998] identifier];
        v28 = AXLoggerForFacility();

        v29 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = AXColorizeFormatLog();
          v31 = _AXStringForArgs();
          if (os_log_type_enabled(v28, v29))
          {
            *buf = 138543362;
            v50 = v31;
LABEL_23:
            _os_log_impl(&dword_27102A000, v28, v29, "%{public}@", buf, 0xCu);
            goto LABEL_24;
          }

          goto LABEL_24;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if ([v2 isEqualToString:@"com.apple.MobileSMS"])
      {
        [_VisualAlertManager _handleVisualAlertForIncomingMessage];
        goto LABEL_28;
      }

      if ([v2 isEqualToString:@"com.apple.mobiletimer"])
      {
        v37 = [MEMORY[0x277CE6998] sharedInstance];
        v38 = [v37 ignoreLogging];

        if (v14)
        {
          if (v38)
          {
            goto LABEL_28;
          }

          v39 = [MEMORY[0x277CE6998] identifier];
          v28 = AXLoggerForFacility();

          v29 = AXOSLogLevelFromAXLogLevel();
          if (!os_log_type_enabled(v28, v29))
          {
            goto LABEL_25;
          }

          v30 = AXColorizeFormatLog();
          v31 = _AXStringForArgs();
          if (!os_log_type_enabled(v28, v29))
          {
            goto LABEL_24;
          }

          *buf = 138543362;
          v50 = v31;
          goto LABEL_23;
        }

        if ((v38 & 1) == 0)
        {
          v40 = [MEMORY[0x277CE6998] identifier];
          v41 = AXLoggerForFacility();

          v42 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = AXColorizeFormatLog();
            v44 = _AXStringForArgs();
            if (os_log_type_enabled(v41, v42))
            {
              *buf = 138543362;
              v50 = v44;
              _os_log_impl(&dword_27102A000, v41, v42, "%{public}@", buf, 0xCu);
            }
          }
        }

        [_VisualAlertManager _handleBeginVisualAlertForAlarmWithSound:1];
      }

      else if (([v2 isEqualToString:@"com.apple.mobilephone"] & 1) == 0 && (objc_msgSend(v2, "isEqualToString:", @"com.apple.facetime") & 1) == 0)
      {
        [_VisualAlertManager _handleVisualAlertForRegularNotification:v2];
      }
    }
  }

  else
  {
    v32 = [MEMORY[0x277CE6998] sharedInstance];
    v33 = [v32 ignoreLogging];

    if ((v33 & 1) == 0)
    {
      v34 = [MEMORY[0x277CE6998] identifier];
      v28 = AXLoggerForFacility();

      v29 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = AXColorizeFormatLog();
        v31 = _AXStringForArgs();
        if (os_log_type_enabled(v28, v29))
        {
          *buf = 138543362;
          v50 = v31;
          goto LABEL_23;
        }

LABEL_24:
      }

LABEL_25:
    }
  }

LABEL_28:
  v35 = +[AXVisualAlertManager sharedVisualAlertManager];
  [v35 removeBulletin:*(a1 + 32)];

  v36 = *MEMORY[0x277D85DE8];
}

- (void)stopSoundForNotificationRequest:(id)request
{
  v17 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = AXVisualAlertSBNCSoundController;
  requestCopy = request;
  [(AXVisualAlertSBNCSoundController *)&v14 stopSoundForNotificationRequest:requestCopy];
  sectionIdentifier = [requestCopy sectionIdentifier];

  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v9 = AXLoggerForFacility();

    v10 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = AXColorizeFormatLog();
      sel_getName(a2);
      v12 = _AXStringForArgs();
      if (os_log_type_enabled(v9, v10))
      {
        *buf = 138543362;
        v16 = v12;
        _os_log_impl(&dword_27102A000, v9, v10, "%{public}@", buf, 0xCu);
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [sectionIdentifier isEqualToString:@"com.apple.mobiletimer"])
  {
    [_VisualAlertManager _handleEndVisualAlertForAlarm];
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end
@interface UNCNotificationRecordMapper
+ (id)notificationCommunicationContextForNotificationRecord:(id)a3;
- (UNCNotificationRecordMapper)initWithBundle:(id)a3 categoryRepository:(id)a4;
- (id)_notificationContentForNotificationRecord:(id)a3;
- (id)_notificationIconForNotificationRecord:(id)a3;
- (id)_notificationSoundForNotificationRecord:(id)a3;
- (id)notificationForNotificationRecord:(id)a3;
- (id)notificationRequestForNotificationRecord:(id)a3;
@end

@implementation UNCNotificationRecordMapper

- (UNCNotificationRecordMapper)initWithBundle:(id)a3 categoryRepository:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = UNCNotificationRecordMapper;
  v9 = [(UNCNotificationRecordMapper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundle, a3);
    objc_storeStrong(&v10->_categoryRepository, a4);
  }

  return v10;
}

- (id)notificationForNotificationRecord:(id)a3
{
  v4 = a3;
  v5 = [(UNCNotificationRecordMapper *)self notificationRequestForNotificationRecord:v4];
  v6 = [v4 date];
  v7 = [(UNCNotificationBundle *)self->_bundle bundleIdentifier];
  categoryRepository = self->_categoryRepository;
  v9 = [v4 categoryIdentifier];

  v10 = [(UNSNotificationCategoryRepository *)categoryRepository categoryWithIdentifier:v9 bundleIdentifier:v7];

  v11 = [v10 intentIdentifiers];
  v12 = [MEMORY[0x1E6983240] notificationWithRequest:v5 date:v6 sourceIdentifier:v7 intentIdentifiers:v11];

  return v12;
}

- (id)notificationRequestForNotificationRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(UNCNotificationRecordMapper *)self _notificationContentForNotificationRecord:v4];
  v7 = [(UNCNotificationRecordMapper *)self _notificationTriggerForNotificationRecord:v4];
  if ([v4 allowsDefaultDestinations])
  {
    v8 = 15;
  }

  else
  {
    if ([v4 allowsLockScreenDestination])
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    if ([v4 allowsNotificationCenterDestination])
    {
      v9 |= 4uLL;
    }

    v10 = v9 | [v4 allowsAlertDestination];
    if ([v4 allowsCarPlayDestination])
    {
      v8 = v10 | 8;
    }

    else
    {
      v8 = v10;
    }
  }

  v11 = [MEMORY[0x1E6983298] requestWithIdentifier:v5 content:v6 trigger:v7 destinations:v8];

  return v11;
}

- (id)_notificationContentForNotificationRecord:(id)a3
{
  v4 = a3;
  v63 = [(UNCNotificationRecordMapper *)self _notificationSoundForNotificationRecord:v4];
  v5 = [(UNCNotificationRecordMapper *)self _notificationIconForNotificationRecord:v4];
  v62 = [UNCNotificationRecordMapper notificationCommunicationContextForNotificationRecord:v4];
  v6 = objc_alloc_init(MEMORY[0x1E6983220]);
  v7 = [v4 contentType];
  [v6 setContentType:v7];

  [v6 setCommunicationContext:v62];
  v8 = [v4 accessoryImageName];
  [v6 setAccessoryImageName:v8];

  v9 = [v4 attachments];
  v10 = [v9 bs_map:UNCAttachmentRecordToUNNotificationAttachment];
  [v6 setAttachments:v10];

  v11 = [v4 badge];
  [v6 setBadge:v11];

  v12 = MEMORY[0x1E6983200];
  v13 = [v4 bodyLocalizationKey];
  v14 = [v4 bodyLocalizationArguments];
  v15 = [(UNCNotificationBundle *)self->_bundle cfBundle];
  v16 = [v4 body];
  v17 = [v12 localizedUserNotificationStringForKey:v13 arguments:v14 cfBundle:v15 defaultValue:v16];
  [v6 setBody:v17];

  v18 = [v4 attributedBody];
  [v6 setAttributedBody:v18];

  v19 = [v4 categoryIdentifier];
  [v6 setCategoryIdentifier:v19];

  v20 = [v4 contentDate];
  [v6 setDate:v20];

  v21 = MEMORY[0x1E6983200];
  v22 = [v4 defaultActionTitleLocalizationKey];
  v23 = [(UNCNotificationBundle *)self->_bundle cfBundle];
  v24 = [v4 defaultActionTitle];
  v25 = [v21 localizedUserNotificationStringForKey:v22 arguments:MEMORY[0x1E695E0F0] cfBundle:v23 defaultValue:v24];
  [v6 setDefaultActionTitle:v25];

  [v6 setHasDefaultAction:{objc_msgSend(v4, "hasDefaultAction")}];
  v26 = [v4 defaultActionURL];
  [v6 setDefaultActionURL:v26];

  v27 = [v4 defaultActionBundleIdentifier];
  [v6 setDefaultActionBundleIdentifier:v27];

  v28 = [v4 expirationDate];
  [v6 setExpirationDate:v28];

  v29 = [v4 launchImageName];
  [v6 setLaunchImageName:v29];

  v30 = MEMORY[0x1E6983200];
  v31 = [v4 headerLocalizationKey];
  v32 = [v4 headerLocalizationArguments];
  v33 = [(UNCNotificationBundle *)self->_bundle cfBundle];
  v34 = [v4 header];
  v35 = [v30 localizedUserNotificationStringForKey:v31 arguments:v32 cfBundle:v33 defaultValue:v34];
  [v6 setHeader:v35];

  v36 = MEMORY[0x1E6983200];
  v37 = [v4 footerLocalizationKey];
  v38 = [v4 footerLocalizationArguments];
  v39 = [(UNCNotificationBundle *)self->_bundle cfBundle];
  v40 = [v4 footer];
  v41 = [v36 localizedUserNotificationStringForKey:v37 arguments:v38 cfBundle:v39 defaultValue:v40];
  [v6 setFooter:v41];

  [v6 setIcon:v5];
  [v6 setSound:v63];
  [v6 setShouldHideDate:{objc_msgSend(v4, "shouldHideDate")}];
  [v6 setShouldHideTime:{objc_msgSend(v4, "shouldHideTime")}];
  [v6 setShouldIgnoreDoNotDisturb:{objc_msgSend(v4, "shouldIgnoreDoNotDisturb")}];
  [v6 setShouldIgnoreDowntime:{objc_msgSend(v4, "shouldIgnoreDowntime")}];
  [v6 setShouldSuppressScreenLightUp:{objc_msgSend(v4, "shouldSuppressScreenLightUp")}];
  [v6 setShouldAuthenticateDefaultAction:{objc_msgSend(v4, "shouldAuthenticateDefaultAction")}];
  [v6 setShouldBackgroundDefaultAction:{objc_msgSend(v4, "shouldBackgroundDefaultAction")}];
  [v6 setShouldPreventNotificationDismissalAfterDefaultAction:{objc_msgSend(v4, "shouldPreventNotificationDismissalAfterDefaultAction")}];
  [v6 setShouldShowSubordinateIcon:{objc_msgSend(v4, "shouldShowSubordinateIcon")}];
  [v6 setShouldSuppressSyncDismissalWhenRemoved:{objc_msgSend(v4, "shouldSuppressSyncDismissalWhenRemoved")}];
  [v6 setShouldUseRequestIdentifierForDismissalSync:{objc_msgSend(v4, "shouldUseRequestIdentifierForDismissalSync")}];
  [v6 setShouldPreemptPresentedNotification:{objc_msgSend(v4, "shouldPreemptPresentedNotification")}];
  [v6 setShouldDisplayActionsInline:{objc_msgSend(v4, "shouldDisplayActionsInline")}];
  v42 = MEMORY[0x1E6983200];
  v43 = [v4 subtitleLocalizationKey];
  v44 = [v4 subtitleLocalizationArguments];
  v45 = [(UNCNotificationBundle *)self->_bundle cfBundle];
  v46 = [v4 subtitle];
  v47 = [v42 localizedUserNotificationStringForKey:v43 arguments:v44 cfBundle:v45 defaultValue:v46];
  [v6 setSubtitle:v47];

  v48 = [v4 threadIdentifier];
  [v6 setThreadIdentifier:v48];

  v49 = MEMORY[0x1E6983200];
  v50 = [v4 titleLocalizationKey];
  v51 = [v4 titleLocalizationArguments];
  v52 = [(UNCNotificationBundle *)self->_bundle cfBundle];
  v53 = [v4 title];
  v54 = [v49 localizedUserNotificationStringForKey:v50 arguments:v51 cfBundle:v52 defaultValue:v53];
  [v6 setTitle:v54];

  v55 = [v4 topicIdentifiers];
  [v6 setTopicIdentifiers:v55];

  [v6 setRealertCount:{objc_msgSend(v4, "realertCount")}];
  v56 = [v4 userInfo];
  [v6 setUserInfo:v56];

  v57 = [v4 summaryArgument];
  [v6 setSummaryArgument:v57];

  [v6 setSummaryArgumentCount:{objc_msgSend(v4, "summaryArgumentCount")}];
  v58 = [v4 targetContentIdentifier];
  [v6 setTargetContentIdentifier:v58];

  [v6 setInterruptionLevel:{-[UNCNotificationRecordMapper _notificationInterruptionLevelForNotificationRecord:](self, "_notificationInterruptionLevelForNotificationRecord:", v4)}];
  [v4 relevanceScore];
  [v6 setRelevanceScore:?];
  v59 = [v4 filterCriteria];
  [v6 setFilterCriteria:v59];

  [v6 setScreenCaptureProhibited:{objc_msgSend(v4, "screenCaptureProhibited")}];
  v60 = [v4 speechLanguage];

  [v6 setSpeechLanguage:v60];

  return v6;
}

- (id)_notificationIconForNotificationRecord:(id)a3
{
  v3 = a3;
  v4 = [v3 iconShouldSuppressMask];
  v5 = [v3 iconApplicationIdentifier];
  v6 = [v5 length];

  if (v6)
  {
    v7 = MEMORY[0x1E6983290];
    v8 = [v3 iconApplicationIdentifier];
    v9 = [v7 iconForApplicationIdentifier:v8];
LABEL_11:
    v22 = v9;
LABEL_12:

    goto LABEL_13;
  }

  v10 = [v3 iconPath];
  v11 = [v10 length];

  if (v11)
  {
    v12 = MEMORY[0x1E6983290];
    v8 = [v3 iconPath];
    v9 = [v12 iconAtPath:v8 shouldSuppressMask:v4];
    goto LABEL_11;
  }

  v13 = [v3 iconName];
  v14 = [v13 length];

  if (v14)
  {
    v15 = MEMORY[0x1E6983290];
    v8 = [v3 iconName];
    v9 = [v15 iconNamed:v8 shouldSuppressMask:v4];
    goto LABEL_11;
  }

  v16 = [v3 iconSystemImageName];
  v17 = [v16 length];

  if (v17)
  {
    v18 = MEMORY[0x1E6983290];
    v8 = [v3 iconSystemImageName];
    v9 = [v18 iconForSystemImageNamed:v8];
    goto LABEL_11;
  }

  v19 = [v3 iconUTI];
  v20 = [v19 length];

  if (v20)
  {
    v21 = MEMORY[0x1E6983290];
    v8 = [v3 iconUTI];
    v9 = [v21 iconWithUTI:v8];
    goto LABEL_11;
  }

  v24 = [v3 iconDateComponents];
  v22 = [v24 count];

  if (v22)
  {
    v8 = [v3 iconDateComponents];
    v25 = [v8 objectForKey:*MEMORY[0x1E6983408]];
    v26 = [v8 objectForKey:*MEMORY[0x1E6983400]];
    v27 = [v8 objectForKey:*MEMORY[0x1E6983410]];
    v28 = [v27 integerValue];

    v22 = [MEMORY[0x1E6983290] iconWithDateComponents:v25 calendarIdentifier:v26 format:v28];

    goto LABEL_12;
  }

LABEL_13:

  return v22;
}

+ (id)notificationCommunicationContextForNotificationRecord:(id)a3
{
  v3 = a3;
  if ([v3 hasCommunicationContext])
  {
    v4 = objc_alloc_init(MEMORY[0x1E6983320]);
    v5 = [v3 communicationContextIdentifier];
    [v4 setIdentifier:v5];

    v6 = [v3 communicationContextAssociatedObjectUri];
    [v4 setAssociatedObjectUri:v6];

    v7 = [v3 communicationContextBundleIdentifier];
    [v4 setBundleIdentifier:v7];

    v8 = [v3 communicationContextDisplayName];
    [v4 setDisplayName:v8];

    v9 = [v3 communicationContextRecipients];
    v10 = [v9 bs_map:UNCContactRecordToUNNotificationContact];
    [v4 setRecipients:v10];

    v11 = [v3 communicationContextSender];

    if (v11)
    {
      v12 = UNCContactRecordToUNNotificationContact;
      v13 = [v3 communicationContextSender];
      v14 = v12[2](v12, v13);
      [v4 setSender:v14];
    }

    v15 = [v3 communicationContextContentURL];
    [v4 setContentURL:v15];

    v16 = [v3 communicationContextImageName];
    [v4 setImageName:v16];

    [v4 setSystemImage:{objc_msgSend(v3, "communicationContextSystemImage")}];
    [v4 setMentionsCurrentUser:{objc_msgSend(v3, "communicationContextMentionsCurrentUser")}];
    [v4 setNotifyRecipientAnyway:{objc_msgSend(v3, "communicationContextNotifyRecipientAnyway")}];
    [v4 setReplyToCurrentUser:{objc_msgSend(v3, "communicationContextReplyToCurrentUser")}];
    [v4 setRecipientCount:{objc_msgSend(v3, "communicationContextRecipientCount")}];
    [v4 setCapabilities:{objc_msgSend(v3, "communicationContextCapabilities")}];
    [v4 setBusinessCorrespondence:{objc_msgSend(v3, "communicationContextBusinessCorrespondence")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_notificationSoundForNotificationRecord:(id)a3
{
  v3 = a3;
  if ([v3 hasSound])
  {
    v4 = [MEMORY[0x1E6983238] soundWithAlertType:{objc_msgSend(v3, "toneAlertType")}];
    v5 = [v3 toneAlertTopic];
    [v4 setAlertTopic:v5];

    v6 = [v3 audioCategory];
    [v4 setAudioCategory:v6];

    v7 = [v3 audioVolume];
    [v4 setAudioVolume:v7];

    [v4 setCritical:{objc_msgSend(v3, "hasCriticalAlertSound")}];
    [v3 soundMaximumDuration];
    [v4 setMaximumDuration:?];
    [v4 setShouldIgnoreAccessibilityDisabledVibrationSetting:{objc_msgSend(v3, "shouldIgnoreAccessibilityDisabledVibrationSetting")}];
    [v4 setShouldIgnoreRingerSwitch:{objc_msgSend(v3, "shouldIgnoreRingerSwitch")}];
    [v4 setShouldRepeat:{objc_msgSend(v3, "shouldSoundRepeat")}];
    v8 = [v3 toneFileName];
    [v4 setToneFileName:v8];

    v9 = [v3 toneFileURL];
    [v4 setToneFileURL:v9];

    v10 = [v3 toneIdentifier];
    [v4 setToneIdentifier:v10];

    [v4 setToneMediaLibraryItemIdentifier:{objc_msgSend(v3, "toneMediaLibraryItemIdentifier")}];
    v11 = [v3 vibrationIdentifier];
    [v4 setVibrationIdentifier:v11];

    v12 = [v3 vibrationPatternFileURL];
    [v4 setVibrationPatternFileURL:v12];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
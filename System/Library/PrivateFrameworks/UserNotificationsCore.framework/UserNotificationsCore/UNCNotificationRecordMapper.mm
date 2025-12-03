@interface UNCNotificationRecordMapper
+ (id)notificationCommunicationContextForNotificationRecord:(id)record;
- (UNCNotificationRecordMapper)initWithBundle:(id)bundle categoryRepository:(id)repository;
- (id)_notificationContentForNotificationRecord:(id)record;
- (id)_notificationIconForNotificationRecord:(id)record;
- (id)_notificationSoundForNotificationRecord:(id)record;
- (id)notificationForNotificationRecord:(id)record;
- (id)notificationRequestForNotificationRecord:(id)record;
@end

@implementation UNCNotificationRecordMapper

- (UNCNotificationRecordMapper)initWithBundle:(id)bundle categoryRepository:(id)repository
{
  bundleCopy = bundle;
  repositoryCopy = repository;
  v12.receiver = self;
  v12.super_class = UNCNotificationRecordMapper;
  v9 = [(UNCNotificationRecordMapper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundle, bundle);
    objc_storeStrong(&v10->_categoryRepository, repository);
  }

  return v10;
}

- (id)notificationForNotificationRecord:(id)record
{
  recordCopy = record;
  v5 = [(UNCNotificationRecordMapper *)self notificationRequestForNotificationRecord:recordCopy];
  date = [recordCopy date];
  bundleIdentifier = [(UNCNotificationBundle *)self->_bundle bundleIdentifier];
  categoryRepository = self->_categoryRepository;
  categoryIdentifier = [recordCopy categoryIdentifier];

  v10 = [(UNSNotificationCategoryRepository *)categoryRepository categoryWithIdentifier:categoryIdentifier bundleIdentifier:bundleIdentifier];

  intentIdentifiers = [v10 intentIdentifiers];
  v12 = [MEMORY[0x1E6983240] notificationWithRequest:v5 date:date sourceIdentifier:bundleIdentifier intentIdentifiers:intentIdentifiers];

  return v12;
}

- (id)notificationRequestForNotificationRecord:(id)record
{
  recordCopy = record;
  identifier = [recordCopy identifier];
  v6 = [(UNCNotificationRecordMapper *)self _notificationContentForNotificationRecord:recordCopy];
  v7 = [(UNCNotificationRecordMapper *)self _notificationTriggerForNotificationRecord:recordCopy];
  if ([recordCopy allowsDefaultDestinations])
  {
    v8 = 15;
  }

  else
  {
    if ([recordCopy allowsLockScreenDestination])
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    if ([recordCopy allowsNotificationCenterDestination])
    {
      v9 |= 4uLL;
    }

    v10 = v9 | [recordCopy allowsAlertDestination];
    if ([recordCopy allowsCarPlayDestination])
    {
      v8 = v10 | 8;
    }

    else
    {
      v8 = v10;
    }
  }

  v11 = [MEMORY[0x1E6983298] requestWithIdentifier:identifier content:v6 trigger:v7 destinations:v8];

  return v11;
}

- (id)_notificationContentForNotificationRecord:(id)record
{
  recordCopy = record;
  v63 = [(UNCNotificationRecordMapper *)self _notificationSoundForNotificationRecord:recordCopy];
  v5 = [(UNCNotificationRecordMapper *)self _notificationIconForNotificationRecord:recordCopy];
  v62 = [UNCNotificationRecordMapper notificationCommunicationContextForNotificationRecord:recordCopy];
  v6 = objc_alloc_init(MEMORY[0x1E6983220]);
  contentType = [recordCopy contentType];
  [v6 setContentType:contentType];

  [v6 setCommunicationContext:v62];
  accessoryImageName = [recordCopy accessoryImageName];
  [v6 setAccessoryImageName:accessoryImageName];

  attachments = [recordCopy attachments];
  v10 = [attachments bs_map:UNCAttachmentRecordToUNNotificationAttachment];
  [v6 setAttachments:v10];

  badge = [recordCopy badge];
  [v6 setBadge:badge];

  v12 = MEMORY[0x1E6983200];
  bodyLocalizationKey = [recordCopy bodyLocalizationKey];
  bodyLocalizationArguments = [recordCopy bodyLocalizationArguments];
  cfBundle = [(UNCNotificationBundle *)self->_bundle cfBundle];
  body = [recordCopy body];
  v17 = [v12 localizedUserNotificationStringForKey:bodyLocalizationKey arguments:bodyLocalizationArguments cfBundle:cfBundle defaultValue:body];
  [v6 setBody:v17];

  attributedBody = [recordCopy attributedBody];
  [v6 setAttributedBody:attributedBody];

  categoryIdentifier = [recordCopy categoryIdentifier];
  [v6 setCategoryIdentifier:categoryIdentifier];

  contentDate = [recordCopy contentDate];
  [v6 setDate:contentDate];

  v21 = MEMORY[0x1E6983200];
  defaultActionTitleLocalizationKey = [recordCopy defaultActionTitleLocalizationKey];
  cfBundle2 = [(UNCNotificationBundle *)self->_bundle cfBundle];
  defaultActionTitle = [recordCopy defaultActionTitle];
  v25 = [v21 localizedUserNotificationStringForKey:defaultActionTitleLocalizationKey arguments:MEMORY[0x1E695E0F0] cfBundle:cfBundle2 defaultValue:defaultActionTitle];
  [v6 setDefaultActionTitle:v25];

  [v6 setHasDefaultAction:{objc_msgSend(recordCopy, "hasDefaultAction")}];
  defaultActionURL = [recordCopy defaultActionURL];
  [v6 setDefaultActionURL:defaultActionURL];

  defaultActionBundleIdentifier = [recordCopy defaultActionBundleIdentifier];
  [v6 setDefaultActionBundleIdentifier:defaultActionBundleIdentifier];

  expirationDate = [recordCopy expirationDate];
  [v6 setExpirationDate:expirationDate];

  launchImageName = [recordCopy launchImageName];
  [v6 setLaunchImageName:launchImageName];

  v30 = MEMORY[0x1E6983200];
  headerLocalizationKey = [recordCopy headerLocalizationKey];
  headerLocalizationArguments = [recordCopy headerLocalizationArguments];
  cfBundle3 = [(UNCNotificationBundle *)self->_bundle cfBundle];
  header = [recordCopy header];
  v35 = [v30 localizedUserNotificationStringForKey:headerLocalizationKey arguments:headerLocalizationArguments cfBundle:cfBundle3 defaultValue:header];
  [v6 setHeader:v35];

  v36 = MEMORY[0x1E6983200];
  footerLocalizationKey = [recordCopy footerLocalizationKey];
  footerLocalizationArguments = [recordCopy footerLocalizationArguments];
  cfBundle4 = [(UNCNotificationBundle *)self->_bundle cfBundle];
  footer = [recordCopy footer];
  v41 = [v36 localizedUserNotificationStringForKey:footerLocalizationKey arguments:footerLocalizationArguments cfBundle:cfBundle4 defaultValue:footer];
  [v6 setFooter:v41];

  [v6 setIcon:v5];
  [v6 setSound:v63];
  [v6 setShouldHideDate:{objc_msgSend(recordCopy, "shouldHideDate")}];
  [v6 setShouldHideTime:{objc_msgSend(recordCopy, "shouldHideTime")}];
  [v6 setShouldIgnoreDoNotDisturb:{objc_msgSend(recordCopy, "shouldIgnoreDoNotDisturb")}];
  [v6 setShouldIgnoreDowntime:{objc_msgSend(recordCopy, "shouldIgnoreDowntime")}];
  [v6 setShouldSuppressScreenLightUp:{objc_msgSend(recordCopy, "shouldSuppressScreenLightUp")}];
  [v6 setShouldAuthenticateDefaultAction:{objc_msgSend(recordCopy, "shouldAuthenticateDefaultAction")}];
  [v6 setShouldBackgroundDefaultAction:{objc_msgSend(recordCopy, "shouldBackgroundDefaultAction")}];
  [v6 setShouldPreventNotificationDismissalAfterDefaultAction:{objc_msgSend(recordCopy, "shouldPreventNotificationDismissalAfterDefaultAction")}];
  [v6 setShouldShowSubordinateIcon:{objc_msgSend(recordCopy, "shouldShowSubordinateIcon")}];
  [v6 setShouldSuppressSyncDismissalWhenRemoved:{objc_msgSend(recordCopy, "shouldSuppressSyncDismissalWhenRemoved")}];
  [v6 setShouldUseRequestIdentifierForDismissalSync:{objc_msgSend(recordCopy, "shouldUseRequestIdentifierForDismissalSync")}];
  [v6 setShouldPreemptPresentedNotification:{objc_msgSend(recordCopy, "shouldPreemptPresentedNotification")}];
  [v6 setShouldDisplayActionsInline:{objc_msgSend(recordCopy, "shouldDisplayActionsInline")}];
  v42 = MEMORY[0x1E6983200];
  subtitleLocalizationKey = [recordCopy subtitleLocalizationKey];
  subtitleLocalizationArguments = [recordCopy subtitleLocalizationArguments];
  cfBundle5 = [(UNCNotificationBundle *)self->_bundle cfBundle];
  subtitle = [recordCopy subtitle];
  v47 = [v42 localizedUserNotificationStringForKey:subtitleLocalizationKey arguments:subtitleLocalizationArguments cfBundle:cfBundle5 defaultValue:subtitle];
  [v6 setSubtitle:v47];

  threadIdentifier = [recordCopy threadIdentifier];
  [v6 setThreadIdentifier:threadIdentifier];

  v49 = MEMORY[0x1E6983200];
  titleLocalizationKey = [recordCopy titleLocalizationKey];
  titleLocalizationArguments = [recordCopy titleLocalizationArguments];
  cfBundle6 = [(UNCNotificationBundle *)self->_bundle cfBundle];
  title = [recordCopy title];
  v54 = [v49 localizedUserNotificationStringForKey:titleLocalizationKey arguments:titleLocalizationArguments cfBundle:cfBundle6 defaultValue:title];
  [v6 setTitle:v54];

  topicIdentifiers = [recordCopy topicIdentifiers];
  [v6 setTopicIdentifiers:topicIdentifiers];

  [v6 setRealertCount:{objc_msgSend(recordCopy, "realertCount")}];
  userInfo = [recordCopy userInfo];
  [v6 setUserInfo:userInfo];

  summaryArgument = [recordCopy summaryArgument];
  [v6 setSummaryArgument:summaryArgument];

  [v6 setSummaryArgumentCount:{objc_msgSend(recordCopy, "summaryArgumentCount")}];
  targetContentIdentifier = [recordCopy targetContentIdentifier];
  [v6 setTargetContentIdentifier:targetContentIdentifier];

  [v6 setInterruptionLevel:{-[UNCNotificationRecordMapper _notificationInterruptionLevelForNotificationRecord:](self, "_notificationInterruptionLevelForNotificationRecord:", recordCopy)}];
  [recordCopy relevanceScore];
  [v6 setRelevanceScore:?];
  filterCriteria = [recordCopy filterCriteria];
  [v6 setFilterCriteria:filterCriteria];

  [v6 setScreenCaptureProhibited:{objc_msgSend(recordCopy, "screenCaptureProhibited")}];
  speechLanguage = [recordCopy speechLanguage];

  [v6 setSpeechLanguage:speechLanguage];

  return v6;
}

- (id)_notificationIconForNotificationRecord:(id)record
{
  recordCopy = record;
  iconShouldSuppressMask = [recordCopy iconShouldSuppressMask];
  iconApplicationIdentifier = [recordCopy iconApplicationIdentifier];
  v6 = [iconApplicationIdentifier length];

  if (v6)
  {
    v7 = MEMORY[0x1E6983290];
    iconApplicationIdentifier2 = [recordCopy iconApplicationIdentifier];
    v9 = [v7 iconForApplicationIdentifier:iconApplicationIdentifier2];
LABEL_11:
    v22 = v9;
LABEL_12:

    goto LABEL_13;
  }

  iconPath = [recordCopy iconPath];
  v11 = [iconPath length];

  if (v11)
  {
    v12 = MEMORY[0x1E6983290];
    iconApplicationIdentifier2 = [recordCopy iconPath];
    v9 = [v12 iconAtPath:iconApplicationIdentifier2 shouldSuppressMask:iconShouldSuppressMask];
    goto LABEL_11;
  }

  iconName = [recordCopy iconName];
  v14 = [iconName length];

  if (v14)
  {
    v15 = MEMORY[0x1E6983290];
    iconApplicationIdentifier2 = [recordCopy iconName];
    v9 = [v15 iconNamed:iconApplicationIdentifier2 shouldSuppressMask:iconShouldSuppressMask];
    goto LABEL_11;
  }

  iconSystemImageName = [recordCopy iconSystemImageName];
  v17 = [iconSystemImageName length];

  if (v17)
  {
    v18 = MEMORY[0x1E6983290];
    iconApplicationIdentifier2 = [recordCopy iconSystemImageName];
    v9 = [v18 iconForSystemImageNamed:iconApplicationIdentifier2];
    goto LABEL_11;
  }

  iconUTI = [recordCopy iconUTI];
  v20 = [iconUTI length];

  if (v20)
  {
    v21 = MEMORY[0x1E6983290];
    iconApplicationIdentifier2 = [recordCopy iconUTI];
    v9 = [v21 iconWithUTI:iconApplicationIdentifier2];
    goto LABEL_11;
  }

  iconDateComponents = [recordCopy iconDateComponents];
  v22 = [iconDateComponents count];

  if (v22)
  {
    iconApplicationIdentifier2 = [recordCopy iconDateComponents];
    v25 = [iconApplicationIdentifier2 objectForKey:*MEMORY[0x1E6983408]];
    v26 = [iconApplicationIdentifier2 objectForKey:*MEMORY[0x1E6983400]];
    v27 = [iconApplicationIdentifier2 objectForKey:*MEMORY[0x1E6983410]];
    integerValue = [v27 integerValue];

    v22 = [MEMORY[0x1E6983290] iconWithDateComponents:v25 calendarIdentifier:v26 format:integerValue];

    goto LABEL_12;
  }

LABEL_13:

  return v22;
}

+ (id)notificationCommunicationContextForNotificationRecord:(id)record
{
  recordCopy = record;
  if ([recordCopy hasCommunicationContext])
  {
    v4 = objc_alloc_init(MEMORY[0x1E6983320]);
    communicationContextIdentifier = [recordCopy communicationContextIdentifier];
    [v4 setIdentifier:communicationContextIdentifier];

    communicationContextAssociatedObjectUri = [recordCopy communicationContextAssociatedObjectUri];
    [v4 setAssociatedObjectUri:communicationContextAssociatedObjectUri];

    communicationContextBundleIdentifier = [recordCopy communicationContextBundleIdentifier];
    [v4 setBundleIdentifier:communicationContextBundleIdentifier];

    communicationContextDisplayName = [recordCopy communicationContextDisplayName];
    [v4 setDisplayName:communicationContextDisplayName];

    communicationContextRecipients = [recordCopy communicationContextRecipients];
    v10 = [communicationContextRecipients bs_map:UNCContactRecordToUNNotificationContact];
    [v4 setRecipients:v10];

    communicationContextSender = [recordCopy communicationContextSender];

    if (communicationContextSender)
    {
      v12 = UNCContactRecordToUNNotificationContact;
      communicationContextSender2 = [recordCopy communicationContextSender];
      v14 = v12[2](v12, communicationContextSender2);
      [v4 setSender:v14];
    }

    communicationContextContentURL = [recordCopy communicationContextContentURL];
    [v4 setContentURL:communicationContextContentURL];

    communicationContextImageName = [recordCopy communicationContextImageName];
    [v4 setImageName:communicationContextImageName];

    [v4 setSystemImage:{objc_msgSend(recordCopy, "communicationContextSystemImage")}];
    [v4 setMentionsCurrentUser:{objc_msgSend(recordCopy, "communicationContextMentionsCurrentUser")}];
    [v4 setNotifyRecipientAnyway:{objc_msgSend(recordCopy, "communicationContextNotifyRecipientAnyway")}];
    [v4 setReplyToCurrentUser:{objc_msgSend(recordCopy, "communicationContextReplyToCurrentUser")}];
    [v4 setRecipientCount:{objc_msgSend(recordCopy, "communicationContextRecipientCount")}];
    [v4 setCapabilities:{objc_msgSend(recordCopy, "communicationContextCapabilities")}];
    [v4 setBusinessCorrespondence:{objc_msgSend(recordCopy, "communicationContextBusinessCorrespondence")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_notificationSoundForNotificationRecord:(id)record
{
  recordCopy = record;
  if ([recordCopy hasSound])
  {
    v4 = [MEMORY[0x1E6983238] soundWithAlertType:{objc_msgSend(recordCopy, "toneAlertType")}];
    toneAlertTopic = [recordCopy toneAlertTopic];
    [v4 setAlertTopic:toneAlertTopic];

    audioCategory = [recordCopy audioCategory];
    [v4 setAudioCategory:audioCategory];

    audioVolume = [recordCopy audioVolume];
    [v4 setAudioVolume:audioVolume];

    [v4 setCritical:{objc_msgSend(recordCopy, "hasCriticalAlertSound")}];
    [recordCopy soundMaximumDuration];
    [v4 setMaximumDuration:?];
    [v4 setShouldIgnoreAccessibilityDisabledVibrationSetting:{objc_msgSend(recordCopy, "shouldIgnoreAccessibilityDisabledVibrationSetting")}];
    [v4 setShouldIgnoreRingerSwitch:{objc_msgSend(recordCopy, "shouldIgnoreRingerSwitch")}];
    [v4 setShouldRepeat:{objc_msgSend(recordCopy, "shouldSoundRepeat")}];
    toneFileName = [recordCopy toneFileName];
    [v4 setToneFileName:toneFileName];

    toneFileURL = [recordCopy toneFileURL];
    [v4 setToneFileURL:toneFileURL];

    toneIdentifier = [recordCopy toneIdentifier];
    [v4 setToneIdentifier:toneIdentifier];

    [v4 setToneMediaLibraryItemIdentifier:{objc_msgSend(recordCopy, "toneMediaLibraryItemIdentifier")}];
    vibrationIdentifier = [recordCopy vibrationIdentifier];
    [v4 setVibrationIdentifier:vibrationIdentifier];

    vibrationPatternFileURL = [recordCopy vibrationPatternFileURL];
    [v4 setVibrationPatternFileURL:vibrationPatternFileURL];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
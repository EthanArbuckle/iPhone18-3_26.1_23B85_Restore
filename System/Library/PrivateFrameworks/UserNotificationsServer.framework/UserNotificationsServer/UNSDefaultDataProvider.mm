@interface UNSDefaultDataProvider
- (BOOL)_isAppProtectionActive;
- (BOOL)_isResourceValidForPath:(id)path withContainerPath:(id)containerPath;
- (BOOL)_isTCCUserAvailabilityGrantedForBundleId:(id)id;
- (BOOL)_queue_supportsCriticalAlertsForSubsectionIDs:(id)ds;
- (BOOL)_queue_supportsTimeSensitiveAlertsforSubsectionIDs:(id)ds;
- (BSCFBundle)bundle;
- (UNSDefaultDataProvider)initWithNotificationSourceDescription:(id)description applicationLauncher:(id)launcher daemonLauncher:(id)daemonLauncher categoryRepository:(id)repository notificationRepository:(id)notificationRepository topicRepository:(id)topicRepository attachmentsService:(id)service localizationService:(id)self0 summaryService:(id)self1 queue:(id)self2;
- (id)_actionFromActionRecord:(id)record;
- (id)_actionsFromActionRecords:(id)records;
- (id)_allBulletinsWithMaxCount:(unint64_t)count sinceDate:(id)date;
- (id)_allCategories;
- (id)_bbContactFromUNContact:(id)contact;
- (id)_bbContentTypeFromUNContentType:(id)type toneAlertType:(int64_t)alertType;
- (id)_categoryForIdentifier:(id)identifier;
- (id)_categoryForNotification:(id)notification;
- (id)_defaultActionWithNotification:(id)notification;
- (id)_dismissActionForCategory:(id)category;
- (id)_followActivityActionForCategory:(id)category;
- (id)_localizeClientString:(id)string inBundle:(id)bundle;
- (id)_pathForSoundName:(id)name;
- (id)_queue_applicableSectionInfosForSubsectionIDs:(id)ds;
- (id)_queue_bulletinForNotification:(id)notification;
- (id)_safeAttributedMessageWithAttributedMessage:(id)message contentType:(id)type;
- (id)_sectionIconForNotificationSourceDescription:(id)description;
- (id)_sectionIconVariantForApplicationIdentifier:(id)identifier format:(int64_t)format;
- (id)_sectionIconVariantForUTI:(id)i format:(int64_t)format;
- (id)_silenceActionForCategory:(id)category;
- (id)_soundsDirectoryPathForContainerBasePath:(id)path;
- (id)_supplementaryActionsForForCategoryRecord:(id)record;
- (id)_topicForIdentifier:(id)identifier;
- (id)_unarchiveNotificationFromData:(id)data;
- (id)_userAvailabilityTCCApprovedBundleIds;
- (id)bulletinsWithRequestParameters:(id)parameters lastCleared:(id)cleared;
- (id)clearedInfoAndBulletinsForClearingAllBulletinsWithLimit:(unint64_t)limit lastClearedInfo:(id)info;
- (id)clearedInfoForBulletins:(id)bulletins lastClearedInfo:(id)info;
- (id)defaultSectionInfo;
- (id)defaultSubsectionInfos;
- (id)displayNameForSubsectionID:(id)d;
- (id)notificationRecords;
- (id)sectionBundlePath;
- (id)sectionParameters;
- (id)sortDescriptors;
- (unint64_t)_bulletinInterruptionLevelForInterruptionLevel:(unint64_t)level;
- (unint64_t)_bulletinPriorityStatusForNotificationPriorityStatus:(unint64_t)status;
- (unint64_t)_bulletinSummaryStatusForNotificationSummaryStatus:(unint64_t)status;
- (unint64_t)_destinationsForNotification:(id)notification;
- (unint64_t)_notificationRecordPriorityStatusForBulletinStatus:(unint64_t)status;
- (unint64_t)_notificationRecordSummaryStatusForBulletinStatus:(unint64_t)status;
- (void)_addAttachments:(id)attachments toBulletinRequest:(id)request;
- (void)_handleBulletinActionResponse:(id)response withCompletion:(id)completion;
- (void)_queue_addBulletinForNotification:(id)notification shouldRepost:(BOOL)repost;
- (void)_queue_fetchBulletinForNotification:(id)notification;
- (void)_queue_modifyBulletinForNotification:(id)notification;
- (void)_queue_notificationRepositoryDidPerformUpdates:(id)updates;
- (void)_queue_withdrawBulletinForNotification:(id)notification shouldSync:(BOOL)sync;
- (void)_setNotificationSourceDescription:(id)description;
- (void)categoryRepository:(id)repository didChangeCategoriesForBundleIdentifier:(id)identifier;
- (void)dataProviderDidLoad;
- (void)dealloc;
- (void)handleBulletinActionResponse:(id)response withCompletion:(id)completion;
- (void)invalidate;
- (void)notificationRepository:(id)repository didDiscoverContentOnFirstUnlockForBundleIdentifier:(id)identifier;
- (void)notificationRepository:(id)repository didPerformUpdates:(id)updates forBundleIdentifier:(id)identifier;
- (void)setEffectiveSectionInfo:(id)info;
- (void)setNotificationSourceDescription:(id)description;
- (void)summaryServiceAdapter:(id)adapter didReceiveGroupSummariesForNotificationIdentifiers:(id)identifiers;
- (void)topicRepository:(id)repository didChangeTopicsForBundleIdentifier:(id)identifier;
- (void)uninstall;
- (void)unloadBundle;
@end

@implementation UNSDefaultDataProvider

- (BSCFBundle)bundle
{
  bundle = self->_bundle;
  if (!bundle)
  {
    bundle = self->_notificationSourceDescription;
    if (bundle)
    {
      localizationService = self->_localizationService;
      bundleIdentifier = [(BSCFBundle *)bundle bundleIdentifier];
      v6 = [(UNCLocalizationService *)localizationService bundleWithIdentifier:bundleIdentifier];
      v7 = self->_bundle;
      self->_bundle = v6;

      bundle = self->_bundle;
    }
  }

  return bundle;
}

- (UNSDefaultDataProvider)initWithNotificationSourceDescription:(id)description applicationLauncher:(id)launcher daemonLauncher:(id)daemonLauncher categoryRepository:(id)repository notificationRepository:(id)notificationRepository topicRepository:(id)topicRepository attachmentsService:(id)service localizationService:(id)self0 summaryService:(id)self1 queue:(id)self2
{
  descriptionCopy = description;
  launcherCopy = launcher;
  daemonLauncherCopy = daemonLauncher;
  repositoryCopy = repository;
  notificationRepositoryCopy = notificationRepository;
  topicRepositoryCopy = topicRepository;
  serviceCopy = service;
  localizationServiceCopy = localizationService;
  summaryServiceCopy = summaryService;
  queueCopy = queue;
  v35.receiver = self;
  v35.super_class = UNSDefaultDataProvider;
  v18 = [(UNSDefaultDataProvider *)&v35 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, queue);
    objc_storeStrong(&v19->_appLauncher, launcher);
    objc_storeStrong(&v19->_daemonLauncher, daemonLauncher);
    objc_storeStrong(&v19->_categoryRepository, repository);
    objc_storeStrong(&v19->_topicRepository, topicRepository);
    objc_storeStrong(&v19->_notificationRepository, notificationRepository);
    objc_storeStrong(&v19->_attachmentsService, service);
    objc_storeStrong(&v19->_localizationService, localizationService);
    objc_storeStrong(&v19->_summaryService, summaryService);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    categoryToParamSubType = v19->_categoryToParamSubType;
    v19->_categoryToParamSubType = dictionary;

    [(UNSDefaultDataProvider *)v19 _setNotificationSourceDescription:descriptionCopy];
    sectionParameters = [(UNSDefaultDataProvider *)v19 sectionParameters];
    bundleIdentifier = [descriptionCopy bundleIdentifier];
    [(UNCNotificationRepository *)v19->_notificationRepository addObserver:v19 forBundleIdentifier:bundleIdentifier];
    [(UNSNotificationCategoryRepository *)v19->_categoryRepository addObserver:v19 forBundleIdentifier:bundleIdentifier];
    [(UNCNotificationTopicRepository *)v19->_topicRepository addObserver:v19 forBundleIdentifier:bundleIdentifier];
    [(UNSSummaryServiceAdapter *)v19->_summaryService addObserver:v19 forBundleIdentifier:bundleIdentifier];
  }

  return v19;
}

- (void)_setNotificationSourceDescription:(id)description
{
  descriptionCopy = description;
  v5 = [(UNSDefaultDataProvider *)self _sectionIconForNotificationSourceDescription:descriptionCopy];
  sectionIcon = self->_sectionIcon;
  self->_sectionIcon = v5;

  notificationSourceDescription = self->_notificationSourceDescription;
  self->_notificationSourceDescription = descriptionCopy;
  v8 = descriptionCopy;

  LOBYTE(notificationSourceDescription) = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription suppressUserAuthorizationPrompt];
  self->_suppressUserAuthorizationPrompt = notificationSourceDescription;
}

- (void)unloadBundle
{
  localizationService = self->_localizationService;
  bundleIdentifier = [(BSCFBundle *)self->_bundle bundleIdentifier];
  [(UNCLocalizationService *)localizationService unloadBundleWithIdentifier:bundleIdentifier];

  bundle = self->_bundle;
  self->_bundle = 0;
}

- (void)setNotificationSourceDescription:(id)description
{
  v31 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  [(UNSDefaultDataProvider *)self unloadBundle];
  isRestricted = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription isRestricted];
  allowTimeSensitive = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowTimeSensitive];
  allowMessages = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowMessages];
  [(UNSDefaultDataProvider *)self _setNotificationSourceDescription:descriptionCopy];
  isRestricted2 = [descriptionCopy isRestricted];
  allowTimeSensitive2 = [descriptionCopy allowTimeSensitive];
  allowMessages2 = [descriptionCopy allowMessages];

  if (isRestricted != isRestricted2 || ((allowTimeSensitive ^ allowTimeSensitive2) & 1) != 0 || allowMessages != allowMessages2)
  {
    v11 = *MEMORY[0x277CE2080];
    if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      sectionIdentifier = [(UNSDefaultDataProvider *)self sectionIdentifier];
      *buf = 138544898;
      v18 = sectionIdentifier;
      v19 = 1024;
      v20 = isRestricted;
      v21 = 1024;
      v22 = isRestricted2;
      v23 = 1024;
      v24 = allowTimeSensitive;
      v25 = 1024;
      v26 = allowTimeSensitive2;
      v27 = 1024;
      v28 = allowMessages;
      v29 = 1024;
      v30 = allowMessages2;
      _os_log_impl(&dword_270AA8000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] defaultSectionInfo changed [ isRestricted %{BOOL}d -> %{BOOL}d, allowTimeSensitive %{BOOL}d -> %{BOOL}d, allowMessages %{BOOL}d -> %{BOOL}d]", buf, 0x30u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__UNSDefaultDataProvider_setNotificationSourceDescription___block_invoke;
    block[3] = &unk_279E10988;
    block[4] = self;
    dispatch_async(queue, block);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(UNSDefaultDataProvider *)self invalidate];
  v3.receiver = self;
  v3.super_class = UNSDefaultDataProvider;
  [(UNSDefaultDataProvider *)&v3 dealloc];
}

- (void)dataProviderDidLoad
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE2080];
  if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    sectionIdentifier = [(UNSDefaultDataProvider *)self sectionIdentifier];
    v7 = 138543362;
    v8 = sectionIdentifier;
    _os_log_impl(&dword_270AA8000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] data provider loaded", &v7, 0xCu);
  }

  [(UNSDefaultDataProvider *)self unloadBundle];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)uninstall
{
  [(UNSDefaultDataProvider *)self invalidate];
  notificationRepository = self->_notificationRepository;
  sectionIdentifier = [(UNSDefaultDataProvider *)self sectionIdentifier];
  [(UNCNotificationRepository *)notificationRepository removeStoreForBundleIdentifier:sectionIdentifier];
}

- (void)invalidate
{
  notificationRepository = self->_notificationRepository;
  sectionIdentifier = [(UNSDefaultDataProvider *)self sectionIdentifier];
  [(UNCNotificationRepository *)notificationRepository removeObserver:self forBundleIdentifier:sectionIdentifier];

  summaryService = self->_summaryService;
  sectionIdentifier2 = [(UNSDefaultDataProvider *)self sectionIdentifier];
  [(UNSSummaryServiceAdapter *)summaryService removeObserver:self forBundleIdentifier:sectionIdentifier2];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  proxy = self->_proxy;
  self->_proxy = 0;
}

- (id)_localizeClientString:(id)string inBundle:(id)bundle
{
  stringCopy = string;
  bundleCopy = bundle;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    un_localizedStringKey = [stringCopy un_localizedStringKey];
    un_localizedStringArguments = [stringCopy un_localizedStringArguments];
    [bundleCopy cfBundle];
    un_localizedStringValue = [stringCopy un_localizedStringValue];
    v10 = UNFormatLocalizedStringInBundleWithDefaultValue();
  }

  else
  {
    v10 = [bundleCopy localizedStringForKey:stringCopy value:&stru_288095958 table:0];
  }

  return v10;
}

- (id)sectionParameters
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CF3578]);
  [v3 setUsesVariableLayout:1];
  if ([(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowUnlimitedContentBody])
  {
    v4 = -1;
  }

  else
  {
    v4 = 4;
  }

  [v3 setMessageNumberOfLines:v4];
  v25 = v3;
  defaultSubtypeParameters = [v3 defaultSubtypeParameters];
  [defaultSubtypeParameters setSuppressesAlertsWhenAppIsActive:0];
  [defaultSubtypeParameters setSuppressesTitle:1];
  v23 = defaultSubtypeParameters;
  [defaultSubtypeParameters setIPodOutAlertType:3];
  [(UNSDefaultDataProvider *)self _allCategories];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v27 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v27)
  {
    v26 = *v29;
    v6 = 1;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        identifier = [v8 identifier];
        if (identifier)
        {
          categoryToParamSubType = self->_categoryToParamSubType;
          v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:v6];
          [(NSMutableDictionary *)categoryToParamSubType setObject:v11 forKey:identifier];

          v12 = [v25 parametersForSubtype:v6];
          privateBody = [v8 privateBody];
          bundle = [(UNSDefaultDataProvider *)self bundle];
          v15 = [(UNSDefaultDataProvider *)self _localizeClientString:privateBody inBundle:bundle];

          [v12 setHiddenPreviewsBodyPlaceholder:v15];
          summaryFormat = [v8 summaryFormat];
          bundle2 = [(UNSDefaultDataProvider *)self bundle];
          v18 = [(UNSDefaultDataProvider *)self _localizeClientString:summaryFormat inBundle:bundle2];

          [v12 setSubtypeSummaryFormat:v18];
          if ([(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowPrivateProperties])
          {
            [v12 setAllowsAutomaticRemovalFromLockScreen:{objc_msgSend(v8, "preventAutomaticRemovalFromRecent") ^ 1}];
            [v12 setRevealsAdditionalContentOnPresentation:{objc_msgSend(v8, "revealAdditionalContentWhenPresented")}];
            [v12 setPlaysMediaWhenRaised:{objc_msgSend(v8, "playMediaWhenRaised")}];
            [v12 setPreventLock:{objc_msgSend(v8, "preventAutomaticLock")}];
            [v12 setShouldDismissBulletinWhenClosed:{objc_msgSend(v8, "preventDismissWhenClosed") ^ 1}];
            [v12 setAllowsPersistentBannersInCarPlay:{objc_msgSend(v8, "shouldAllowPersistentBannersInCarPlay")}];
            [v12 setAllowsSupplementaryActionsInCarPlay:{objc_msgSend(v8, "shouldAllowActionsInCarPlay")}];
            [v12 setShowsUnreadIndicatorForNoticesFeed:{objc_msgSend(v8, "alwaysDisplayNotificationsIndicator")}];
            [v12 setSuppressDelayForForwardedBulletins:{objc_msgSend(v8, "suppressDelayForForwardedNotifications")}];
            [v12 setHideDismissActionInCarPlay:{objc_msgSend(v8, "suppressDismissActionInCarPlay")}];
            [v12 setSuppressPresentationInAmbient:{objc_msgSend(v8, "suppressPresentationInAmbient")}];
          }

          privacyOptionShowTitle = [v8 privacyOptionShowTitle];
          if ([v8 privacyOptionShowSubtitle])
          {
            v20 = privacyOptionShowTitle | 2;
          }

          else
          {
            v20 = privacyOptionShowTitle;
          }

          [v12 setPrivacySettings:v20];
          ++v6;
        }
      }

      v27 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v27);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)defaultSectionInfo
{
  sectionIdentifier = [(UNSDefaultDataProvider *)self sectionIdentifier];
  isRestricted = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription isRestricted];
  suppressUserAuthorizationPrompt = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription suppressUserAuthorizationPrompt];
  automaticallyShowSettings = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription automaticallyShowSettings];
  hideSettings = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription hideSettings];
  if (_os_feature_enabled_impl())
  {
    goto LABEL_2;
  }

  defaultTopics = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription defaultTopics];
  if ([defaultTopics count])
  {
  }

  else
  {
    v10 = [(UNCNotificationTopicRepository *)self->_topicRepository topicsForBundleIdentifier:sectionIdentifier];
    v11 = [v10 count];

    if (!v11)
    {
LABEL_2:
      v8 = 0;
      goto LABEL_7;
    }
  }

  v8 = -1;
LABEL_7:
  v12 = [MEMORY[0x277CF3568] defaultSectionInfoForType:0];
  [v12 setSectionID:sectionIdentifier];
  [v12 setIsRestricted:isRestricted];
  [v12 setIsAppClip:{-[UNCNotificationSourceDescription isAppClip](self->_notificationSourceDescription, "isAppClip")}];
  if ((suppressUserAuthorizationPrompt & (hideSettings | automaticallyShowSettings)) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  [v12 setAuthorizationStatus:v13];
  [v12 setSuppressFromSettings:hideSettings];
  [v12 setSuppressedSettings:v8];
  customSettingsBundle = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription customSettingsBundle];
  [v12 setCustomSettingsBundle:customSettingsBundle];

  customSettingsDetailControllerClass = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription customSettingsDetailControllerClass];
  [v12 setCustomSettingsDetailControllerClass:customSettingsDetailControllerClass];

  defaultSettings = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription defaultSettings];
  if ([(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowTimeSensitive])
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  [v12 setTimeSensitiveSetting:v17];
  if ([(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowMessages])
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  [v12 setDirectMessagesSetting:v18];
  if ([v12 timeSensitiveSetting] || objc_msgSend(v12, "directMessagesSetting"))
  {
    [v12 setAnnounceSetting:2];
  }

  if (defaultSettings)
  {
    [v12 uns_setPropertiesFromSourceSettingsDescription:defaultSettings];
  }

  return v12;
}

- (id)defaultSubsectionInfos
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  defaultTopics = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription defaultTopics];
  if ([defaultTopics count])
  {
    v5 = [defaultTopics bs_map:&__block_literal_global_6];
    [v3 addObjectsFromArray:v5];
  }

  topicRepository = self->_topicRepository;
  sectionIdentifier = [(UNSDefaultDataProvider *)self sectionIdentifier];
  v8 = [(UNCNotificationTopicRepository *)topicRepository topicsForBundleIdentifier:sectionIdentifier];

  v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_15];
  if (-[UNCNotificationSourceDescription allowPrivateProperties](self->_notificationSourceDescription, "allowPrivateProperties") && [v9 count])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__UNSDefaultDataProvider_defaultSubsectionInfos__block_invoke_3;
    v12[3] = &unk_279E10A40;
    v12[4] = self;
    v10 = [v9 bs_map:v12];
    [v3 addObjectsFromArray:v10];
  }

  return v3;
}

id __48__UNSDefaultDataProvider_defaultSubsectionInfos__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CF3568];
  v3 = a2;
  v4 = [v2 defaultSectionInfoForType:2];
  v5 = [v3 identifier];
  [v4 setSubsectionID:v5];

  [v4 uns_setPropertiesFromTopicRecord:v3];
  if (_os_feature_enabled_impl())
  {
    [v4 setSuppressedSettings:-1];
  }

  return v4;
}

uint64_t __48__UNSDefaultDataProvider_defaultSubsectionInfos__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 sortIdentifier];
  v6 = [v4 sortIdentifier];

  v7 = [v5 compare:v6];
  return v7;
}

id __48__UNSDefaultDataProvider_defaultSubsectionInfos__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CF3568];
  v4 = a2;
  v5 = [v3 defaultSectionInfoForType:2];
  v6 = [v4 identifier];
  [v5 setSubsectionID:v6];

  [v5 uns_setPropertiesFromTopicRecord:v4];
  if (_os_feature_enabled_impl())
  {
    v7 = [*(a1 + 32) sectionIdentifier];
    v8 = [v7 isEqual:@"com.apple.mobilemail"];

    if (v8)
    {
      v9 = -8193;
    }

    else
    {
      v9 = -1;
    }

    [v5 setSuppressedSettings:v9];
  }

  return v5;
}

- (id)_topicForIdentifier:(id)identifier
{
  v37 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    [(UNCNotificationSourceDescription *)self->_notificationSourceDescription defaultTopics];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = v34 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          identifier = [v10 identifier];
          v12 = [identifierCopy isEqual:identifier];

          if (v12)
          {
            v24 = v10;
            v16 = v5;
            goto LABEL_22;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    topicRepository = self->_topicRepository;
    sectionIdentifier = [(UNSDefaultDataProvider *)self sectionIdentifier];
    v15 = [(UNCNotificationTopicRepository *)topicRepository topicsForBundleIdentifier:sectionIdentifier];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * j);
          identifier2 = [v21 identifier];
          v23 = [identifierCopy isEqual:identifier2];

          if (v23)
          {
            v24 = v21;

            goto LABEL_22;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v24 = 0;
LABEL_22:
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)displayNameForSubsectionID:(id)d
{
  v4 = [(UNSDefaultDataProvider *)self _topicForIdentifier:d];
  if (v4)
  {
    bundle = [(UNSDefaultDataProvider *)self bundle];
    [bundle cfBundle];

    displayNameLocalizationKey = [v4 displayNameLocalizationKey];
    displayName = [v4 displayName];
    v8 = UNFormatLocalizedStringInBundleWithDefaultValue();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_queue_bulletinForNotification:(id)notification
{
  v225 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  dispatch_assert_queue_V2(self->_queue);
  if (!notificationCopy)
  {
    v32 = 0;
    goto LABEL_164;
  }

  identifier = [notificationCopy identifier];
  if (![identifier length])
  {
    v33 = *MEMORY[0x277CE2080];
    if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_ERROR))
    {
      [(UNSDefaultDataProvider *)v33 _queue_bulletinForNotification:?];
    }

    v32 = 0;
    goto LABEL_163;
  }

  bundle = [(UNSDefaultDataProvider *)self bundle];
  [bundle cfBundle];

  titleLocalizationKey = [notificationCopy titleLocalizationKey];
  titleLocalizationArguments = [notificationCopy titleLocalizationArguments];
  title = [notificationCopy title];
  v203 = UNFormatLocalizedStringInBundleWithDefaultValue();

  subtitleLocalizationKey = [notificationCopy subtitleLocalizationKey];
  subtitleLocalizationArguments = [notificationCopy subtitleLocalizationArguments];
  subtitle = [notificationCopy subtitle];
  v202 = UNFormatLocalizedStringInBundleWithDefaultValue();

  bodyLocalizationKey = [notificationCopy bodyLocalizationKey];
  bodyLocalizationArguments = [notificationCopy bodyLocalizationArguments];
  body = [notificationCopy body];
  v206 = UNFormatLocalizedStringInBundleWithDefaultValue();

  attributedBody = [notificationCopy attributedBody];
  summaryArgument = [notificationCopy summaryArgument];
  summaryArgumentCount = [notificationCopy summaryArgumentCount];
  badge = [notificationCopy badge];
  targetContentIdentifier = [notificationCopy targetContentIdentifier];
  userInfo = [notificationCopy userInfo];
  sectionIdentifier = [(UNSDefaultDataProvider *)self sectionIdentifier];
  categoryIdentifier = [notificationCopy categoryIdentifier];
  v197 = [(UNSDefaultDataProvider *)self _defaultActionWithNotification:notificationCopy];
  v198 = categoryIdentifier;
  v168 = [(UNSDefaultDataProvider *)self _categoryForIdentifier:categoryIdentifier];
  v196 = [(UNSDefaultDataProvider *)self _dismissActionForCategory:v168];
  v195 = [(UNSDefaultDataProvider *)self _followActivityActionForCategory:v168];
  v194 = [(UNSDefaultDataProvider *)self _silenceActionForCategory:v168];
  v193 = [(UNSDefaultDataProvider *)self _supplementaryActionsForForCategoryRecord:v168];
  intentIdentifiers = [v168 intentIdentifiers];
  launchImageName = [notificationCopy launchImageName];
  realertCount = [notificationCopy realertCount];
  contentDate = [notificationCopy contentDate];
  date = [notificationCopy date];
  v20 = -[UNSDefaultDataProvider _bulletinInterruptionLevelForInterruptionLevel:](self, "_bulletinInterruptionLevelForInterruptionLevel:", [notificationCopy interruptionLevel]);
  [notificationCopy relevanceScore];
  v22 = v21;
  filterCriteria = [notificationCopy filterCriteria];
  screenCaptureProhibited = [notificationCopy screenCaptureProhibited];
  speechLanguage = [notificationCopy speechLanguage];
  allowPrivateProperties = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowPrivateProperties];
  v210 = date;
  v164 = realertCount;
  v169 = summaryArgumentCount;
  if (!allowPrivateProperties)
  {
    expirationDate = 0;
    v186 = 0;
    v34 = 0;
    v160 = 0;
    shouldPreemptPresentedNotification = 0;
    presentFullScreenAlertOverList = 0;
    shouldHideTime = 0;
    shouldSuppressSyncDismissalWhenRemoved = 0;
    shouldIgnoreDowntime = 0;
    shouldIgnoreDoNotDisturb = 0;
    topicIdentifiers = 0;
    v187 = 0;
    v188 = 0;
    v156 = 1;
    v149 = 1;
    shouldDisplayActionsInline = 0;
    v204 = date;
    goto LABEL_26;
  }

  headerLocalizationKey = [notificationCopy headerLocalizationKey];
  headerLocalizationArguments = [notificationCopy headerLocalizationArguments];
  header = [notificationCopy header];
  v188 = UNFormatLocalizedStringInBundleWithDefaultValue();

  footerLocalizationKey = [notificationCopy footerLocalizationKey];
  footerLocalizationArguments = [notificationCopy footerLocalizationArguments];
  footer = [notificationCopy footer];
  v187 = UNFormatLocalizedStringInBundleWithDefaultValue();

  presentFullScreenAlertOverList = [v168 presentFullScreenAlertOverList];
  backgroundStyle = [v168 backgroundStyle];
  LOBYTE(footerLocalizationKey) = [backgroundStyle isEqualToString:*MEMORY[0x277D77D80]];

  if (footerLocalizationKey)
  {
    v31 = 1;
  }

  else
  {
    backgroundStyle2 = [v168 backgroundStyle];
    v38 = [backgroundStyle2 isEqualToString:*MEMORY[0x277D77D78]];

    v31 = v38;
  }

  v160 = v31;
  listPriority = [v168 listPriority];
  v40 = [listPriority isEqualToString:*MEMORY[0x277D77D88]];

  if (v40)
  {
    v34 = 1;
  }

  else
  {
    listPriority2 = [v168 listPriority];
    v42 = [listPriority2 isEqualToString:*MEMORY[0x277D77D90]];

    if (v42)
    {
      v34 = 2;
    }

    else
    {
      v34 = 0;
    }
  }

  if ([notificationCopy shouldHideDate])
  {
    v204 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v204 = v210;
  if (contentDate)
  {
    v204 = contentDate;
    goto LABEL_21;
  }

LABEL_22:
  if ([notificationCopy shouldUseRequestIdentifierForDismissalSync])
  {
    v186 = identifier;
  }

  else
  {
    v186 = 0;
  }

  expirationDate = [notificationCopy expirationDate];
  topicIdentifiers = [notificationCopy topicIdentifiers];
  v149 = [notificationCopy shouldSuppressScreenLightUp] ^ 1;
  shouldIgnoreDoNotDisturb = [notificationCopy shouldIgnoreDoNotDisturb];
  shouldIgnoreDowntime = [notificationCopy shouldIgnoreDowntime];
  shouldSuppressSyncDismissalWhenRemoved = [notificationCopy shouldSuppressSyncDismissalWhenRemoved];
  shouldHideTime = [notificationCopy shouldHideTime];
  shouldPreemptPresentedNotification = [notificationCopy shouldPreemptPresentedNotification];
  shouldDisplayActionsInline = [notificationCopy shouldDisplayActionsInline];
  v156 = [v168 preventClearFromList] ^ 1;
LABEL_26:
  if ([notificationCopy hasCriticalAlertSound])
  {
    v43 = [(UNSDefaultDataProvider *)self _queue_supportsCriticalAlertsForSubsectionIDs:topicIdentifiers];
  }

  else
  {
    v43 = 0;
  }

  shouldShowSubordinateIcon = [notificationCopy shouldShowSubordinateIcon];
  v44 = 3;
  if (!v43)
  {
    v44 = v20;
  }

  v143 = v44;
  if (v43 && v34 == 0)
  {
    v45 = 1;
  }

  else
  {
    v45 = v34;
  }

  v148 = v45;
  threadIdentifier = [notificationCopy threadIdentifier];
  if (![threadIdentifier length] && v43)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    threadIdentifier = uUIDString;
  }

  contentType = [notificationCopy contentType];
  v212 = -[UNSDefaultDataProvider _bbContentTypeFromUNContentType:toneAlertType:](self, "_bbContentTypeFromUNContentType:toneAlertType:", contentType, [notificationCopy toneAlertType]);

  v166 = identifier;
  v171 = topicIdentifiers;
  if (![notificationCopy hasSound] || !objc_msgSend(notificationCopy, "shouldPlaySound"))
  {
    v50 = 0;
    v180 = 0;
    goto LABEL_89;
  }

  v174 = shouldPreemptPresentedNotification;
  v49 = v212 == *MEMORY[0x277CF34B8] && [notificationCopy toneAlertType] == 1;
  if ((allowPrivateProperties | v49))
  {
    toneAlertType = [notificationCopy toneAlertType];
  }

  else
  {
    toneAlertType = 17;
  }

  v52 = [objc_alloc(MEMORY[0x277D71F58]) initWithType:toneAlertType];
  v53 = v52;
  if (v43)
  {
    [v52 setTopic:*MEMORY[0x277D71FB0]];
  }

  toneFileName = [notificationCopy toneFileName];
  v207 = toneFileName;
  if ([toneFileName length])
  {
    v55 = [(UNSDefaultDataProvider *)self _pathForSoundName:toneFileName];
    if ([v55 length])
    {
      v56 = [MEMORY[0x277CBEBC0] fileURLWithPath:v55];
      [v53 setExternalToneFileURL:v56];
    }

    else
    {
      v57 = topicIdentifiers;
      v58 = *MEMORY[0x277CE2080];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        sectionIdentifier2 = [(UNSDefaultDataProvider *)self sectionIdentifier];
        un_logDigest = [identifier un_logDigest];
        *buf = 138543874;
        v220 = sectionIdentifier2;
        v221 = 2114;
        v222 = v207;
        v223 = 2114;
        v224 = un_logDigest;
        _os_log_error_impl(&dword_270AA8000, v58, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to find sound %{public}@ for notification %{public}@", buf, 0x20u);
      }

      topicIdentifiers = v57;
    }

    toneFileName = v207;
  }

  if (v49)
  {
    [notificationCopy soundMaximumDuration];
    v60 = v59;
    v61 = 30.0;
    if (v60 != 0.0)
    {
      [notificationCopy soundMaximumDuration];
      if (v61 > 30.0)
      {
        v61 = 30.0;
      }
    }

    [v53 setMaximumDuration:v61];
    [v53 setTopic:*MEMORY[0x277D71FD0]];
    shouldPreemptPresentedNotification = v174;
    if (!allowPrivateProperties)
    {
      goto LABEL_83;
    }

    goto LABEL_64;
  }

  shouldPreemptPresentedNotification = v174;
  if (allowPrivateProperties)
  {
    [notificationCopy soundMaximumDuration];
    if (v62 != 0.0)
    {
      [v53 setMaximumDuration:?];
    }

LABEL_64:
    audioCategory = [notificationCopy audioCategory];
    if ([audioCategory length])
    {
      [v53 setAudioCategory:audioCategory];
    }

    v181 = audioCategory;
    toneMediaLibraryItemIdentifier = [notificationCopy toneMediaLibraryItemIdentifier];
    if (toneMediaLibraryItemIdentifier)
    {
      [v53 setExternalToneMediaLibraryItemIdentifier:toneMediaLibraryItemIdentifier];
    }

    vibrationPatternFileURL = [notificationCopy vibrationPatternFileURL];
    if (vibrationPatternFileURL)
    {
      [v53 setExternalVibrationPatternFileURL:vibrationPatternFileURL];
    }

    if ([notificationCopy shouldSoundRepeat])
    {
      [v53 setShouldRepeat:1];
    }

    toneAlertTopic = [notificationCopy toneAlertTopic];
    if ([toneAlertTopic length])
    {
      [v53 setTopic:toneAlertTopic];
    }

    toneIdentifier = [notificationCopy toneIdentifier];
    if ([toneIdentifier length])
    {
      [v53 setToneIdentifier:toneIdentifier];
    }

    toneFileURL = [notificationCopy toneFileURL];
    if (toneFileURL)
    {
      [v53 setExternalToneFileURL:toneFileURL];
    }

    vibrationIdentifier = [notificationCopy vibrationIdentifier];
    if ([vibrationIdentifier length])
    {
      [v53 setVibrationIdentifier:vibrationIdentifier];
    }

    if ([notificationCopy shouldIgnoreAccessibilityDisabledVibrationSetting])
    {
      [v53 setShouldIgnoreAccessibilityDisabledVibrationSetting:1];
    }

    identifier = v166;
    topicIdentifiers = v171;
    shouldPreemptPresentedNotification = v174;
    toneFileName = v207;
  }

LABEL_83:
  audioVolume = [notificationCopy audioVolume];
  v50 = audioVolume;
  if ((allowPrivateProperties | v43))
  {
    if (audioVolume)
    {
      [audioVolume floatValue];
      [v53 setAudioVolume:?];
    }

    if (([notificationCopy shouldIgnoreRingerSwitch] | v43))
    {
      [v53 setShouldIgnoreRingerSwitch:1];
    }
  }

  v180 = [objc_alloc(MEMORY[0x277CF3588]) initWithToneAlertConfiguration:v53];

LABEL_89:
  v208 = v50;
  if (![(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowPrivateProperties])
  {
    v177 = 0;
    goto LABEL_100;
  }

  v175 = shouldPreemptPresentedNotification;
  iconApplicationIdentifier = [notificationCopy iconApplicationIdentifier];
  iconName = [notificationCopy iconName];
  iconPath = [notificationCopy iconPath];
  iconSystemImageName = [notificationCopy iconSystemImageName];
  iconUTI = [notificationCopy iconUTI];
  iconDateComponents = [notificationCopy iconDateComponents];
  v77 = iconDateComponents;
  if (iconApplicationIdentifier)
  {
    v78 = [MEMORY[0x277CF3560] variantWithFormat:0 applicationIdentifier:iconApplicationIdentifier];
  }

  else if (iconPath)
  {
    v78 = [MEMORY[0x277CF3560] variantWithFormat:0 imagePath:iconPath];
  }

  else
  {
    if (iconName)
    {
      v141 = MEMORY[0x277CF3560];
      bundle2 = [(UNSDefaultDataProvider *)self bundle];
      bundlePath = [bundle2 bundlePath];
      v79 = [v141 variantWithFormat:0 imageName:iconName inBundleAtPath:bundlePath];

      goto LABEL_96;
    }

    if (iconSystemImageName)
    {
      v78 = [MEMORY[0x277CF3560] variantWithFormat:0 systemImageName:iconSystemImageName];
    }

    else if (iconUTI)
    {
      v78 = [MEMORY[0x277CF3560] variantWithFormat:0 uti:iconUTI];
    }

    else
    {
      if (!iconDateComponents)
      {
        v79 = 0;
        goto LABEL_96;
      }

      v78 = [MEMORY[0x277CF3560] variantWithFormat:0 dateComponentDetails:iconDateComponents];
    }
  }

  v79 = v78;
LABEL_96:
  [v79 setPrecomposed:{objc_msgSend(notificationCopy, "iconShouldSuppressMask")}];
  if (v79)
  {
    v177 = objc_alloc_init(MEMORY[0x277CF3558]);
    [v177 addVariant:v79];
  }

  else
  {
    v177 = 0;
  }

  identifier = v166;
  topicIdentifiers = v171;
  shouldPreemptPresentedNotification = v175;
LABEL_100:
  if ([(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowPrivateProperties])
  {
    accessoryImageName = [notificationCopy accessoryImageName];
    if (accessoryImageName)
    {
      v176 = [MEMORY[0x277CF3538] imageWithName:accessoryImageName inBundlePath:0];
    }

    else
    {
      v176 = 0;
    }
  }

  else
  {
    v176 = 0;
  }

  v81 = v43 | shouldPreemptPresentedNotification;
  v82 = objc_alloc(MEMORY[0x277D77C98]);
  bundle3 = [(UNSDefaultDataProvider *)self bundle];
  v84 = [v82 initWithBundle:bundle3 categoryRepository:self->_categoryRepository];

  v147 = v84;
  v172 = [v84 notificationForNotificationRecord:notificationCopy];
  LODWORD(v84) = [(UNSDefaultDataProvider *)self _queue_supportsCriticalAlertsForSubsectionIDs:topicIdentifiers];
  v85 = [(UNSDefaultDataProvider *)self _queue_supportsTimeSensitiveAlertsforSubsectionIDs:topicIdentifiers];
  v86 = 2;
  if (v84)
  {
    v86 = 3;
  }

  if (v143 != 3)
  {
    v86 = v143;
  }

  v87 = 1;
  if (v85)
  {
    v87 = 2;
  }

  if (v86 == 2)
  {
    v88 = v87;
  }

  else
  {
    v88 = v86;
  }

  v144 = [v212 isEqualToString:*MEMORY[0x277CF34B0]];
  v89 = objc_alloc_init(MEMORY[0x277CF3518]);
  [v89 setContentType:v212];
  [v89 setDefaultAction:v197];
  [v89 setDismissAction:v196];
  [v89 setFollowActivityAction:v195];
  [v89 setDate:v204];
  [v89 setInterruptionLevel:v88];
  *&v90 = v22;
  [v89 setRelevanceScore:v90];
  [v89 setFilterCriteria:filterCriteria];
  [v89 setScreenCaptureProhibited:screenCaptureProhibited];
  [v89 setSpeechLanguage:speechLanguage];
  [v89 setDateIsAllDay:shouldHideTime];
  [v89 setExpirationDate:expirationDate];
  [v89 setHeader:v188];
  [v89 setFooter:v187];
  [v89 setMessage:v206];
  if (attributedBody)
  {
    v91 = [(UNSDefaultDataProvider *)self _safeAttributedMessageWithAttributedMessage:attributedBody contentType:v212];
    if (v91)
    {
      [v89 setAttributedMessage:v91];
    }

    else if (!v206)
    {
      string = [attributedBody string];
      [v89 setMessage:string];
    }
  }

  [v89 setSection:sectionIdentifier];
  [v89 setSubtitle:v202];
  [v89 setTitle:v203];
  [v89 setSummaryArgument:summaryArgument];
  [v89 setSummaryArgumentCount:v169];
  [v89 setSound:v180];
  [v89 setIcon:v177];
  [v89 setHasSubordinateIcon:shouldShowSubordinateIcon];
  [v89 setAccessoryImage:v176];
  [v89 setHasCriticalIcon:v43];
  [v89 setTurnsOnDisplay:v149];
  [v89 setIgnoresQuietMode:(v43 | shouldIgnoreDoNotDisturb) & 1];
  [v89 setIgnoresDowntime:shouldIgnoreDowntime];
  [v89 setPreemptsPresentedAlert:v81 & 1];
  [v89 setDisplaysActionsInline:shouldDisplayActionsInline];
  [v89 setUsesExternalSync:shouldSuppressSyncDismissalWhenRemoved];
  [v89 setPublisherBulletinID:identifier];
  [v89 setRecordID:identifier];
  [v89 setDismissalID:v186];
  [v89 setCategoryID:v198];
  v93 = [(NSMutableDictionary *)self->_categoryToParamSubType objectForKey:v198];
  [v89 setSectionSubtype:{objc_msgSend(v93, "integerValue")}];

  [v89 setSilenceAction:v194];
  [v89 setThreadID:threadIdentifier];
  [v89 setIntentIDs:intentIdentifiers];
  [v89 setSubsectionIDs:topicIdentifiers];
  [v89 setDateFormatStyle:1];
  [v89 setSupplementaryActions:v193];
  [v89 setWantsFullscreenPresentation:presentFullScreenAlertOverList];
  [v89 setPreventAutomaticRemovalFromLockScreen:v43];
  [v89 setLockScreenPriority:v148];
  [v89 setBackgroundStyle:v160];
  [v89 setClearable:v156];
  if ([notificationCopy pipelineState])
  {
    [v89 setIsHighlight:{objc_msgSend(notificationCopy, "isHighlight")}];
    summary = [notificationCopy summary];
    [v89 setSummary:summary];

    [v89 setPriorityNotificationStatus:{-[UNSDefaultDataProvider _bulletinPriorityStatusForNotificationPriorityStatus:](self, "_bulletinPriorityStatusForNotificationPriorityStatus:", objc_msgSend(notificationCopy, "priorityStatus"))}];
    [v89 setNotificationSummaryStatus:{-[UNSDefaultDataProvider _bulletinSummaryStatusForNotificationSummaryStatus:](self, "_bulletinSummaryStatusForNotificationSummaryStatus:", objc_msgSend(notificationCopy, "summaryStatus"))}];
    eventBehavior = [notificationCopy eventBehavior];
    [v89 setEventBehavior:eventBehavior];
  }

  summaryService = self->_summaryService;
  identifier2 = [notificationCopy identifier];
  sectionIdentifier3 = [(UNSDefaultDataProvider *)self sectionIdentifier];
  v99 = [(UNSSummaryServiceAdapter *)summaryService groupSummariesForNotificationIdentifier:identifier2 bundleIdentifier:sectionIdentifier3];

  threadSummary = [v99 threadSummary];
  [v89 setThreadSummary:threadSummary];

  v170 = v99;
  spotlightIdentifier = [v99 spotlightIdentifier];
  [v89 setSpotlightIdentifier:spotlightIdentifier];

  v102 = MEMORY[0x277CE20A0];
  v103 = *MEMORY[0x277CE20A0];
  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
  {
    spotlightIdentifier2 = [v99 spotlightIdentifier];
    v105 = MEMORY[0x277CCABB0];
    threadSummary2 = [v99 threadSummary];
    v107 = [v105 numberWithInt:{objc_msgSend(threadSummary2, "length") != 0}];
    *buf = 138412546;
    v220 = spotlightIdentifier2;
    v221 = 2112;
    v222 = v107;
    _os_log_impl(&dword_270AA8000, v103, OS_LOG_TYPE_DEFAULT, "group summaries request for record with spotlightIdentifier: %@ hasThreadSummary: %@", buf, 0x16u);
  }

  v108 = *v102;
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
  {
    [(UNSDefaultDataProvider *)v170 _queue_bulletinForNotification:v89, v108];
  }

  v109 = targetContentIdentifier;
  if (v208)
  {
    [v89 setContextValue:v208 forKey:@"audioVolume"];
  }

  if (badge)
  {
    [v89 setContextValue:badge forKey:@"badge"];
  }

  if (contentDate)
  {
    [v89 setContextValue:contentDate forKey:@"contentDate"];
  }

  [v89 setContextValue:launchImageName forKey:*MEMORY[0x277CF35D0]];
  if (v210)
  {
    [v89 setContextValue:v210 forKey:@"recordDate"];
  }

  v110 = [MEMORY[0x277CCABB0] numberWithBool:shouldIgnoreDoNotDisturb];
  [v89 setContextValue:v110 forKey:@"shouldIgnoreDoNotDisturb"];

  if (targetContentIdentifier)
  {
    [v89 setContextValue:targetContentIdentifier forKey:@"targetContentIdentifier"];
  }

  v111 = identifier;
  v112 = v171;
  if (userInfo)
  {
    [v89 setContextValue:userInfo forKey:@"userInfo"];
  }

  [v89 setRealertCount:v164];
  request = [v172 request];
  content = [request content];
  attachments = [content attachments];

  if (attachments)
  {
    [(UNSDefaultDataProvider *)self _addAttachments:attachments toBulletinRequest:v89];
  }

  v184 = attachments;
  request2 = [v172 request];
  trigger = [request2 trigger];

  identifier = v111;
  v118 = trigger;
  if (trigger)
  {
    v119 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:trigger requiringSecureCoding:1 error:0];
    [v89 setContextValue:v119 forKey:@"notificationTriggerData"];
  }

  request3 = [v172 request];
  content2 = [request3 content];
  communicationContext = [content2 communicationContext];

  v123 = v208;
  if (communicationContext)
  {
    if (v144)
    {
      v124 = *MEMORY[0x277CE2070];
      if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        [UNSDefaultDataProvider _queue_bulletinForNotification:];
      }
    }

    else
    {
      v163 = v118;
      v124 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v214 = 0u;
      v215 = 0u;
      v216 = 0u;
      v217 = 0u;
      recipients = [communicationContext recipients];
      v126 = [recipients countByEnumeratingWithState:&v214 objects:v218 count:16];
      if (v126)
      {
        v127 = v126;
        v128 = *v215;
        do
        {
          for (i = 0; i != v127; ++i)
          {
            if (*v215 != v128)
            {
              objc_enumerationMutation(recipients);
            }

            v130 = [(UNSDefaultDataProvider *)self _bbContactFromUNContact:*(*(&v214 + 1) + 8 * i)];
            [v124 addObject:v130];
          }

          v127 = [recipients countByEnumeratingWithState:&v214 objects:v218 count:16];
        }

        while (v127);
      }

      sender = [communicationContext sender];

      if (sender)
      {
        sender2 = [communicationContext sender];
        v133 = [(UNSDefaultDataProvider *)self _bbContactFromUNContact:sender2];
      }

      else
      {
        v133 = 0;
      }

      v165 = v133;
      if ([communicationContext notifyRecipientAnyway])
      {
        v161 = [(UNSDefaultDataProvider *)self _isTCCUserAvailabilityGrantedForBundleId:sectionIdentifier];
      }

      else
      {
        v161 = 0;
      }

      v159 = MEMORY[0x277CF3548];
      identifier3 = [communicationContext identifier];
      bundleIdentifier = [communicationContext bundleIdentifier];
      associatedObjectUri = [communicationContext associatedObjectUri];
      displayName = [communicationContext displayName];
      contentURL = [communicationContext contentURL];
      imageName = [communicationContext imageName];
      isSystemImage = [communicationContext isSystemImage];
      mentionsCurrentUser = [communicationContext mentionsCurrentUser];
      BYTE3(v142) = [communicationContext isReplyToCurrentUser];
      BYTE2(v142) = v161;
      BYTE1(v142) = mentionsCurrentUser;
      LOBYTE(v142) = isSystemImage;
      v138 = [v159 communicationContextWithIdentifier:identifier3 bundleIdentifier:bundleIdentifier associatedObjectUri:associatedObjectUri displayName:displayName sender:v165 recipients:v124 contentURL:contentURL imageName:imageName systemImage:v142 mentionsCurrentUser:objc_msgSend(communicationContext notifyRecipientAnyway:"recipientCount") replyToCurrentUser:? recipientCount:?];

      [v138 setCapabilities:{objc_msgSend(communicationContext, "capabilities") & 1}];
      [v138 setBusinessCorrespondence:{objc_msgSend(communicationContext, "isBusinessCorrespondence")}];
      [v89 setCommunicationContext:v138];

      v109 = targetContentIdentifier;
      v112 = v171;
      v123 = v208;
      v118 = v163;
    }

    identifier = v166;
  }

  v32 = v89;

LABEL_163:
LABEL_164:

  v139 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)_bbContentTypeFromUNContentType:(id)type toneAlertType:(int64_t)alertType
{
  v23 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v7 = *MEMORY[0x277CF34B0];
  allowCalls = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowCalls];
  allowMessages = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowMessages];
  allowIntercom = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowIntercom];
  if ([typeCopy isEqualToString:*MEMORY[0x277CE2158]])
  {
    if (allowMessages)
    {
      v11 = MEMORY[0x277CF34C8];
LABEL_39:
      v18 = *v11;

      v7 = v18;
      goto LABEL_40;
    }

    if (!os_log_type_enabled(*MEMORY[0x277CE2070], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    goto LABEL_8;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x277CE2160]])
  {
    if (allowMessages)
    {
      v11 = MEMORY[0x277CF34D0];
      goto LABEL_39;
    }

    if (!os_log_type_enabled(*MEMORY[0x277CE2070], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

LABEL_8:
    [UNSDefaultDataProvider _bbContentTypeFromUNContentType:toneAlertType:];
    goto LABEL_40;
  }

  if (![typeCopy isEqualToString:*MEMORY[0x277CE2150]])
  {
    if ([typeCopy isEqualToString:*MEMORY[0x277CE2168]])
    {
      if (allowCalls)
      {
        v11 = MEMORY[0x277CF34D8];
        goto LABEL_39;
      }

      if (!os_log_type_enabled(*MEMORY[0x277CE2070], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }
    }

    else if ([typeCopy isEqualToString:*MEMORY[0x277CE2148]])
    {
      v12 = allowCalls ^ 1;
      if (alertType == 1)
      {
        v13 = allowCalls ^ 1;
      }

      else
      {
        v13 = 1;
      }

      if ((v13 & 1) == 0)
      {
        v11 = MEMORY[0x277CF34B8];
        goto LABEL_39;
      }

      if (alertType == 1)
      {
        v12 = 1;
      }

      if ((v12 & 1) == 0)
      {
        v14 = *MEMORY[0x277CF34A8];

        v15 = *MEMORY[0x277CE2070];
        if (os_log_type_enabled(*MEMORY[0x277CE2070], OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          sectionIdentifier = [(UNSDefaultDataProvider *)self sectionIdentifier];
          v21 = 138543362;
          v22 = sectionIdentifier;
          _os_log_impl(&dword_270AA8000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] _UNNotificationContentType is '_UNNotificationContentTypeIncomingCall' but the tone alert type is NOT  'TLAlertTypeIncomingCall'. Tone alert type must be 'TLAlertTypeIncomingCall' for notification to be treated as an incoming call. Assigning 'BBBulletinContentTypeCallOther' to notification.", &v21, 0xCu);
        }

        v7 = v14;
        goto LABEL_40;
      }

      if (!os_log_type_enabled(*MEMORY[0x277CE2070], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }
    }

    else if ([typeCopy isEqualToString:*MEMORY[0x277CE2170]])
    {
      if (allowCalls)
      {
        v11 = MEMORY[0x277CF34E0];
        goto LABEL_39;
      }

      if (!os_log_type_enabled(*MEMORY[0x277CE2070], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (![typeCopy isEqualToString:*MEMORY[0x277CE2138]])
      {
        goto LABEL_40;
      }

      if (allowCalls)
      {
        v11 = MEMORY[0x277CF34A8];
        goto LABEL_39;
      }

      if (!os_log_type_enabled(*MEMORY[0x277CE2070], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }
    }

    [UNSDefaultDataProvider _bbContentTypeFromUNContentType:toneAlertType:];
    goto LABEL_40;
  }

  if (allowIntercom)
  {
    v11 = MEMORY[0x277CF34C0];
    goto LABEL_39;
  }

  if (os_log_type_enabled(*MEMORY[0x277CE2070], OS_LOG_TYPE_ERROR))
  {
    [UNSDefaultDataProvider _bbContentTypeFromUNContentType:toneAlertType:];
  }

LABEL_40:

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_bbContactFromUNContact:(id)contact
{
  contactCopy = contact;
  handleType = [contactCopy handleType];
  v5 = 2 * (handleType == 2);
  if (handleType == 1)
  {
    v5 = 1;
  }

  v18 = v5;
  v6 = MEMORY[0x277CF3528];
  handle = [contactCopy handle];
  serviceName = [contactCopy serviceName];
  displayName = [contactCopy displayName];
  isDisplayNameSuggested = [contactCopy isDisplayNameSuggested];
  customIdentifier = [contactCopy customIdentifier];
  cnContactIdentifier = [contactCopy cnContactIdentifier];
  cnContactFullname = [contactCopy cnContactFullname];
  isCNContactIdentifierSuggested = [contactCopy isCNContactIdentifierSuggested];

  LOBYTE(v17) = isCNContactIdentifierSuggested;
  v15 = [v6 contactWithHandle:handle handleType:v18 serviceName:serviceName displayName:displayName displayNameSuggested:isDisplayNameSuggested customIdentifier:customIdentifier cnContactIdentifier:cnContactIdentifier cnContactFullname:cnContactFullname cnContactIdentifierSuggested:v17];

  return v15;
}

- (id)_safeAttributedMessageWithAttributedMessage:(id)message contentType:(id)type
{
  messageCopy = message;
  typeCopy = type;
  if (([typeCopy isEqualToString:*MEMORY[0x277CF34C8]] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CF34D0]))
  {
    v7 = messageCopy;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_queue_supportsCriticalAlertsForSubsectionIDs:(id)ds
{
  v14 = *MEMORY[0x277D85DE8];
  [(UNSDefaultDataProvider *)self _queue_applicableSectionInfosForSubsectionIDs:ds];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * i) criticalAlertSetting] == 2)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)_queue_supportsTimeSensitiveAlertsforSubsectionIDs:(id)ds
{
  v14 = *MEMORY[0x277D85DE8];
  [(UNSDefaultDataProvider *)self _queue_applicableSectionInfosForSubsectionIDs:ds];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * i) timeSensitiveSetting] == 2)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)_queue_applicableSectionInfosForSubsectionIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  subsections = [(BBSectionInfo *)self->_effectiveSectionInfo subsections];
  v7 = [subsections countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(subsections);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        subsectionID = [v11 subsectionID];
        v13 = [dsCopy containsObject:subsectionID];

        if (v13)
        {
          [array addObject:v11];
        }
      }

      v8 = [subsections countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if (![array count] && self->_effectiveSectionInfo)
  {
    [array addObject:?];
  }

  v14 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_soundsDirectoryPathForContainerBasePath:(id)path
{
  stringByStandardizingPath = [path stringByStandardizingPath];
  v4 = [stringByStandardizingPath stringByAppendingPathComponent:@"Library"];
  v5 = [v4 stringByAppendingPathComponent:@"Sounds"];

  return v5;
}

- (id)_pathForSoundName:(id)name
{
  v35 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dataContainerURL = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription dataContainerURL];
  v6 = dataContainerURL;
  if (dataContainerURL)
  {
    path = [dataContainerURL path];
    v8 = [(UNSDefaultDataProvider *)self _soundsDirectoryPathForContainerBasePath:path];

    v9 = [v8 stringByAppendingPathComponent:nameCopy];
    stringByStandardizingPath = [v9 stringByStandardizingPath];

    if ([(UNSDefaultDataProvider *)self _isResourceValidForPath:stringByStandardizingPath withContainerPath:v8])
    {

      if (stringByStandardizingPath)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  groupContainerURLS = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription groupContainerURLS];
  allValues = [groupContainerURLS allValues];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = allValues;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
LABEL_8:
    v17 = 0;
    while (1)
    {
      if (*v31 != v16)
      {
        objc_enumerationMutation(v13);
      }

      path2 = [*(*(&v30 + 1) + 8 * v17) path];
      stringByStandardizingPath2 = [path2 stringByStandardizingPath];
      v20 = [(UNSDefaultDataProvider *)self _soundsDirectoryPathForContainerBasePath:stringByStandardizingPath2];

      v21 = [v20 stringByAppendingPathComponent:nameCopy];
      stringByStandardizingPath = [v21 stringByStandardizingPath];

      if ([(UNSDefaultDataProvider *)self _isResourceValidForPath:stringByStandardizingPath withContainerPath:v20])
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v15)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }

    if (stringByStandardizingPath)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_14:
  }

  bundle = [(UNSDefaultDataProvider *)self bundle];
  bundlePath = [bundle bundlePath];
  stringByStandardizingPath3 = [bundlePath stringByStandardizingPath];

  bundle2 = [(UNSDefaultDataProvider *)self bundle];
  v26 = [bundle2 pathForResource:nameCopy ofType:0];
  stringByStandardizingPath4 = [v26 stringByStandardizingPath];

  stringByStandardizingPath = 0;
  if ([(UNSDefaultDataProvider *)self _isResourceValidForPath:stringByStandardizingPath4 withContainerPath:stringByStandardizingPath3])
  {
    stringByStandardizingPath = stringByStandardizingPath4;
  }

LABEL_19:
  v28 = *MEMORY[0x277D85DE8];

  return stringByStandardizingPath;
}

- (BOOL)_isResourceValidForPath:(id)path withContainerPath:(id)containerPath
{
  pathCopy = path;
  if ([pathCopy hasPrefix:containerPath] && (BSIsSymbolicLinkAtPath() & 1) == 0)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [defaultManager fileExistsAtPath:pathCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_defaultActionWithNotification:(id)notification
{
  notificationCopy = notification;
  if (([notificationCopy hasDefaultAction] & 1) != 0 || (-[UNCNotificationSourceDescription allowPrivateProperties](self->_notificationSourceDescription, "allowPrivateProperties") & 1) == 0)
  {
    defaultActionTitleLocalizationKey = [notificationCopy defaultActionTitleLocalizationKey];
    bundle = [(UNSDefaultDataProvider *)self bundle];
    [bundle cfBundle];
    defaultActionTitle = [notificationCopy defaultActionTitle];
    v9 = UNFormatLocalizedStringInBundleWithDefaultValue();

    v5 = [MEMORY[0x277CF3500] actionWithIdentifier:*MEMORY[0x277CE20E8] title:v9];
    if ([(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowPrivateProperties])
    {
      defaultActionURL = [notificationCopy defaultActionURL];
      [v5 setLaunchURL:defaultActionURL];

      defaultActionBundleIdentifier = [notificationCopy defaultActionBundleIdentifier];
      [v5 setLaunchBundleID:defaultActionBundleIdentifier];

      [v5 setShouldDismissBulletin:{objc_msgSend(notificationCopy, "shouldPreventNotificationDismissalAfterDefaultAction") ^ 1}];
      [v5 setActivationMode:{objc_msgSend(notificationCopy, "shouldBackgroundDefaultAction")}];
      [v5 setAuthenticationRequired:{objc_msgSend(notificationCopy, "shouldAuthenticateDefaultAction")}];
    }

    else
    {
      [v5 setActivationMode:0];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_dismissActionForCategory:(id)category
{
  if ([category hasCustomDismissAction])
  {
    v3 = [MEMORY[0x277CF3500] actionWithIdentifier:*MEMORY[0x277CE20F0]];
    [v3 setActivationMode:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_followActivityActionForCategory:(id)category
{
  if ([category hasFollowActivityAction] && ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl()))
  {
    v3 = MEMORY[0x277CF3500];
    v4 = *MEMORY[0x277CE20F8];
    v5 = UNSLocalizedStringForKey(@"FOLLOW_ACTIVITY_ACTION_TITLE");
    v6 = [v3 actionWithIdentifier:v4 title:v5];

    [v6 setActivationMode:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_silenceActionForCategory:(id)category
{
  if ([category hasCustomSilenceAction] && -[UNCNotificationSourceDescription allowPrivateProperties](self->_notificationSourceDescription, "allowPrivateProperties"))
  {
    v4 = [MEMORY[0x277CF3500] actionWithIdentifier:*MEMORY[0x277CE2120]];
    [v4 setActivationMode:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_supplementaryActionsForForCategoryRecord:(id)record
{
  actions = [record actions];
  v5 = [actions bs_first:10];

  v6 = [(UNSDefaultDataProvider *)self _actionsFromActionRecords:v5];

  return v6;
}

- (id)_allCategories
{
  v29 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  defaultCategories = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription defaultCategories];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [defaultCategories countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(defaultCategories);
        }

        [array addObject:*(*(&v23 + 1) + 8 * i)];
      }

      v6 = [defaultCategories countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  categoryRepository = self->_categoryRepository;
  sectionIdentifier = [(UNSDefaultDataProvider *)self sectionIdentifier];
  v11 = [(UNSNotificationCategoryRepository *)categoryRepository categoriesForBundleIdentifier:sectionIdentifier];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [array addObject:{*(*(&v19 + 1) + 8 * j), v19}];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_categoryForIdentifier:(id)identifier
{
  v37 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    [(UNCNotificationSourceDescription *)self->_notificationSourceDescription defaultCategories];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = v34 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          identifier = [v10 identifier];
          v12 = [identifierCopy isEqual:identifier];

          if (v12)
          {
            v24 = v10;
            v16 = v5;
            goto LABEL_22;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    categoryRepository = self->_categoryRepository;
    sectionIdentifier = [(UNSDefaultDataProvider *)self sectionIdentifier];
    v15 = [(UNSNotificationCategoryRepository *)categoryRepository categoriesForBundleIdentifier:sectionIdentifier];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * j);
          identifier2 = [v21 identifier];
          v23 = [identifierCopy isEqual:identifier2];

          if (v23)
          {
            v24 = v21;

            goto LABEL_22;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v24 = 0;
LABEL_22:
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_actionsFromActionRecords:(id)records
{
  v19 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = recordsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(UNSDefaultDataProvider *)self _actionFromActionRecord:*(*(&v14 + 1) + 8 * i), v14];
        [array bs_safeAddObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_actionFromActionRecord:(id)record
{
  recordCopy = record;
  identifier = [recordCopy identifier];
  titleLocalizationKey = [recordCopy titleLocalizationKey];
  titleLocalizationArguments = [recordCopy titleLocalizationArguments];
  bundle = [(UNSDefaultDataProvider *)self bundle];
  [bundle cfBundle];
  title = [recordCopy title];
  v10 = UNFormatLocalizedStringInBundleWithDefaultValue();

  v11 = [MEMORY[0x277CF3500] actionWithIdentifier:identifier title:v10];
  [v11 setActivationMode:{objc_msgSend(recordCopy, "isForeground") ^ 1}];
  [v11 setAuthenticationRequired:{objc_msgSend(recordCopy, "isAuthenticationRequired")}];
  if ([(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowPrivateProperties])
  {
    v12 = [recordCopy url];
    [v11 setLaunchURL:v12];

    [v11 setShouldDismissBulletin:{objc_msgSend(recordCopy, "shouldPreventNotificationDismiss") ^ 1}];
  }

  if ([recordCopy isDestructive])
  {
    appearance = [v11 appearance];
    [appearance setStyle:1];
  }

  actionType = [recordCopy actionType];
  v15 = [actionType isEqualToString:*MEMORY[0x277D77D68]];

  if (v15)
  {
    bundle2 = [(UNSDefaultDataProvider *)self bundle];
    [bundle2 cfBundle];

    textInputButtonTitleLocalizationKey = [recordCopy textInputButtonTitleLocalizationKey];
    textInputButtonTitleLocalizationArguments = [recordCopy textInputButtonTitleLocalizationArguments];
    textInputButtonTitle = [recordCopy textInputButtonTitle];
    v20 = UNFormatLocalizedStringInBundleWithDefaultValue();

    textInputPlaceholderLocalizationKey = [recordCopy textInputPlaceholderLocalizationKey];
    textInputPlaceholderLocalizationArguments = [recordCopy textInputPlaceholderLocalizationArguments];
    textInputPlaceholder = [recordCopy textInputPlaceholder];
    v24 = UNFormatLocalizedStringInBundleWithDefaultValue();

    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v25 bs_setSafeObject:v20 forKey:*MEMORY[0x277CE20B8]];
    [v25 bs_setSafeObject:v24 forKey:*MEMORY[0x277CE20C0]];
    [v11 setBehaviorParameters:v25];
    [v11 setBehavior:1];
  }

  else
  {
    [v11 setBehavior:0];
  }

  iconImageName = [recordCopy iconImageName];
  v27 = [iconImageName length];

  if (v27)
  {
    iconImageName2 = [recordCopy iconImageName];
    if (iconImageName2)
    {
      if ([recordCopy hasSystemIcon])
      {
        bundlePath = 0;
      }

      else
      {
        bundle3 = [(UNSDefaultDataProvider *)self bundle];
        bundlePath = [bundle3 bundlePath];
      }

      v30 = [MEMORY[0x277CF3538] imageWithName:iconImageName2 inBundlePath:bundlePath];
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  appearance2 = [v11 appearance];
  [appearance2 setImage:v30];

  return v11;
}

- (id)_allBulletinsWithMaxCount:(unint64_t)count sinceDate:(id)date
{
  v40 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  notificationRecords = [(UNSDefaultDataProvider *)self notificationRecords];
  selfCopy = self;
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = notificationRecords;
  v34 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v34)
  {
    v33 = *v36;
    v31 = v11;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v36 != v33)
      {
        objc_enumerationMutation(v11);
      }

      v13 = *(*(&v35 + 1) + 8 * v12);
      if (![v13 allowsNotificationCenterDestination])
      {
        goto LABEL_29;
      }

      shouldHideDate = [v13 shouldHideDate];
      if (!dateCopy || (shouldHideDate & 1) != 0)
      {
        break;
      }

      contentDate = [v13 contentDate];
      if (!contentDate)
      {
        contentDate = [v13 date];
      }

      v16 = contentDate;
      v17 = [dateCopy isAfterDate:contentDate];

      if ((v17 & 1) == 0)
      {
        break;
      }

LABEL_22:
      if (v34 == ++v12)
      {
        v28 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
        v34 = v28;
        if (v28)
        {
          goto LABEL_3;
        }

        goto LABEL_29;
      }
    }

    v18 = [(UNSDefaultDataProvider *)selfCopy _queue_bulletinForNotification:v13];
    message = [v18 message];
    if (![message length])
    {
      subtitle = [v18 subtitle];
      if (![subtitle length])
      {
        [v18 title];
        v22 = dateCopy;
        v23 = v10;
        v24 = selfCopy;
        countCopy = count;
        v27 = v26 = v7;
        v32 = [v27 length];

        v7 = v26;
        count = countCopy;
        selfCopy = v24;
        v10 = v23;
        dateCopy = v22;
        v11 = v31;

        if (!v32)
        {
LABEL_19:
          if (count && [v7 count] == count)
          {

            goto LABEL_29;
          }

          goto LABEL_22;
        }

LABEL_16:
        publisherBulletinID = [v18 publisherBulletinID];
        if (([v10 containsObject:publisherBulletinID] & 1) == 0)
        {
          [v7 addObject:v18];
          [v10 addObject:publisherBulletinID];
        }

        goto LABEL_19;
      }
    }

    goto LABEL_16;
  }

LABEL_29:

  v29 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)notificationRecords
{
  notificationRepository = self->_notificationRepository;
  sectionIdentifier = [(UNSDefaultDataProvider *)self sectionIdentifier];
  v4 = [(UNCNotificationRepository *)notificationRepository notificationRecordsForBundleIdentifier:sectionIdentifier];

  return v4;
}

- (id)bulletinsWithRequestParameters:(id)parameters lastCleared:(id)cleared
{
  v46 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  dispatch_assert_queue_V2(self->_queue);
  if ([parametersCopy publisherDestination] == 2)
  {
    maximumCount = [parametersCopy maximumCount];
    sinceDate = [parametersCopy sinceDate];
    v8 = [(UNSDefaultDataProvider *)self _allBulletinsWithMaxCount:maximumCount sinceDate:sinceDate];

    v9 = *MEMORY[0x277CE2080];
    if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      sectionIdentifier = [(UNSDefaultDataProvider *)self sectionIdentifier];
      v12 = [v8 count];
      sinceDate2 = [parametersCopy sinceDate];
      *buf = 138544130;
      v39 = sectionIdentifier;
      v40 = 2048;
      v41 = v12;
      v42 = 2114;
      v43 = sinceDate2;
      v44 = 2048;
      maximumCount2 = [parametersCopy maximumCount];
      _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Returning %ld bulletins since %{public}@ (max %ld)", buf, 0x2Au);
    }

    if (UNCUseGroupService())
    {
      v32 = parametersCopy;
      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v15 = objc_alloc(MEMORY[0x277D77C80]);
      bundle = [(UNSDefaultDataProvider *)self bundle];
      v17 = [v15 initWithBundle:bundle];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = v8;
      allObjects = [v8 allObjects];
      v19 = [allObjects countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v34;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v34 != v21)
            {
              objc_enumerationMutation(allObjects);
            }

            categoryID = [*(*(&v33 + 1) + 8 * i) categoryID];
            if (categoryID)
            {
              v24 = [v14 objectForKey:categoryID];

              if (!v24)
              {
                v25 = [(UNSDefaultDataProvider *)self _categoryForIdentifier:categoryID];
                if (v25)
                {
                  v26 = [v17 notificationCategoryForNotificationCategoryRecord:v25];
                  [v14 bs_setSafeObject:v26 forKey:categoryID];
                }
              }
            }
          }

          v20 = [allObjects countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v20);
      }

      uns_notificationSettings = [(BBSectionInfo *)self->_effectiveSectionInfo uns_notificationSettings];
      v8 = v31;
      allObjects2 = [v31 allObjects];
      [UNSNotificationPipelineAdapter addInitialBulletins:allObjects2 categories:v14 sourceDescription:self->_notificationSourceDescription settings:uns_notificationSettings];

      parametersCopy = v32;
    }
  }

  else
  {
    v8 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_isAppProtectionActive
{
  v2 = MEMORY[0x277CEBE80];
  sectionID = [(BBSectionInfo *)self->_effectiveSectionInfo sectionID];
  v4 = [v2 applicationWithBundleIdentifier:sectionID];

  if ([v4 isHidden])
  {
    isLocked = 1;
  }

  else
  {
    isLocked = [v4 isLocked];
  }

  return isLocked;
}

- (id)clearedInfoAndBulletinsForClearingAllBulletinsWithLimit:(unint64_t)limit lastClearedInfo:(id)info
{
  v14[2] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v6 = [(UNSDefaultDataProvider *)self _allBulletinsWithMaxCount:limit sinceDate:0];
  notificationRepository = self->_notificationRepository;
  sectionIdentifier = [(UNSDefaultDataProvider *)self sectionIdentifier];
  [(UNCNotificationRepository *)notificationRepository removeAllNotificationRecordsForBundleIdentifier:sectionIdentifier];

  v13[0] = *MEMORY[0x277CF34F0];
  null = [MEMORY[0x277CBEB68] null];
  v13[1] = *MEMORY[0x277CF34E8];
  v14[0] = null;
  v14[1] = v6;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)clearedInfoForBulletins:(id)bulletins lastClearedInfo:(id)info
{
  v29 = *MEMORY[0x277D85DE8];
  bulletinsCopy = bulletins;
  dispatch_assert_queue_V2(self->_queue);
  v6 = *MEMORY[0x277CE2080];
  if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    sectionIdentifier = [(UNSDefaultDataProvider *)self sectionIdentifier];
    *buf = 138543618;
    v26 = sectionIdentifier;
    v27 = 2048;
    v28 = [bulletinsCopy count];
    _os_log_impl(&dword_270AA8000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Clear %ld bulletins", buf, 0x16u);
  }

  v9 = [MEMORY[0x277CBEB58] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = bulletinsCopy;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        publisherBulletinID = [*(*(&v20 + 1) + 8 * v14) publisherBulletinID];
        [v9 addObject:publisherBulletinID];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  notificationRepository = self->_notificationRepository;
  sectionIdentifier2 = [(UNSDefaultDataProvider *)self sectionIdentifier];
  [(UNCNotificationRepository *)notificationRepository removeNotificationRecordsForIdentifiers:v9 bundleIdentifier:sectionIdentifier2];

  v18 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)sortDescriptors
{
  v2 = MEMORY[0x277CBEA60];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"date" ascending:0];
  v4 = [v2 arrayWithObject:v3];

  return v4;
}

- (void)setEffectiveSectionInfo:(id)info
{
  infoCopy = info;
  p_effectiveSectionInfo = &self->_effectiveSectionInfo;
  effectiveSectionInfo = self->_effectiveSectionInfo;
  v15 = infoCopy;
  if (effectiveSectionInfo)
  {
    v8 = [(BBSectionInfo *)effectiveSectionInfo isEqual:infoCopy];
    objc_storeStrong(&self->_effectiveSectionInfo, info);
    if (v8)
    {
      goto LABEL_8;
    }

    if ([(UNCNotificationSourceDescription *)self->_notificationSourceDescription daemonShouldReceiveNotificationSettingsUpdates])
    {
      daemonLauncher = self->_daemonLauncher;
      uns_notificationSettings = [(BBSectionInfo *)self->_effectiveSectionInfo uns_notificationSettings];
      sectionID = [(BBSectionInfo *)self->_effectiveSectionInfo sectionID];
      [(UNSDaemonLauncher *)daemonLauncher didChangeSettings:uns_notificationSettings forBundleIdentifier:sectionID];
    }

    notificationRepository = self->_notificationRepository;
    sectionID2 = [(BBSectionInfo *)self->_effectiveSectionInfo sectionID];
    [(UNCNotificationRepository *)notificationRepository removeInvalidNotificationRecordsForBundleIdentifier:sectionID2];
  }

  else
  {
    v14 = infoCopy;
    sectionID2 = *p_effectiveSectionInfo;
    *p_effectiveSectionInfo = v14;
  }

LABEL_8:
}

- (id)sectionBundlePath
{
  bundleURL = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription bundleURL];
  path = [bundleURL path];

  return path;
}

- (void)handleBulletinActionResponse:(id)response withCompletion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  completionCopy = completion;
  v8 = MEMORY[0x277CE2080];
  v9 = *MEMORY[0x277CE2080];
  if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    sectionIdentifier = [(UNSDefaultDataProvider *)self sectionIdentifier];
    bulletinPublisherID = [responseCopy bulletinPublisherID];
    un_logDigest = [bulletinPublisherID un_logDigest];
    actionID = [responseCopy actionID];
    v28 = 138544130;
    v29 = sectionIdentifier;
    v30 = 2114;
    v31 = un_logDigest;
    v32 = 2114;
    v33 = actionID;
    v34 = 2048;
    actionType = [responseCopy actionType];
    _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received response to %{public}@ for action %{public}@ (%ld)  ", &v28, 0x2Au);
  }

  actionType2 = [responseCopy actionType];
  if (actionType2 > 0xB)
  {
    goto LABEL_15;
  }

  if (((1 << actionType2) & 0xD82) != 0)
  {
    [(UNSDefaultDataProvider *)self _handleBulletinActionResponse:responseCopy withCompletion:completionCopy];
    goto LABEL_6;
  }

  if (actionType2 == 5)
  {
    v17 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      sectionIdentifier2 = [(UNSDefaultDataProvider *)self sectionIdentifier];
      bulletinPublisherID2 = [responseCopy bulletinPublisherID];
      un_logDigest2 = [bulletinPublisherID2 un_logDigest];
      actionID2 = [responseCopy actionID];
      actionType3 = [responseCopy actionType];
      v28 = 138544130;
      v29 = sectionIdentifier2;
      v30 = 2114;
      v31 = un_logDigest2;
      v32 = 2114;
      v33 = actionID2;
      v34 = 2048;
      actionType = actionType3;
      _os_log_impl(&dword_270AA8000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing record with identifier %{public}@ from notification repository for action %{public}@ (%ld)  ", &v28, 0x2Au);
    }

    bulletinPublisherID3 = [responseCopy bulletinPublisherID];
    if (bulletinPublisherID3)
    {
      notificationRepository = self->_notificationRepository;
      v26 = [MEMORY[0x277CBEB98] setWithObject:bulletinPublisherID3];
      sectionIdentifier3 = [(UNSDefaultDataProvider *)self sectionIdentifier];
      [(UNCNotificationRepository *)notificationRepository removeNotificationRecordsForIdentifiers:v26 bundleIdentifier:sectionIdentifier3];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
LABEL_15:
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

LABEL_6:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleBulletinActionResponse:(id)response withCompletion:(id)completion
{
  v66 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  completionCopy = completion;
  sectionIdentifier = [(UNSDefaultDataProvider *)self sectionIdentifier];
  actionID = [responseCopy actionID];
  actionType = [responseCopy actionType];
  context = [responseCopy context];
  v10 = [context objectForKey:*MEMORY[0x277CF35D8]];
  actionActivationMode = [responseCopy actionActivationMode];
  originID = [responseCopy originID];
  endpoint = [responseCopy endpoint];
  notificationRepository = self->_notificationRepository;
  bulletinPublisherID = [responseCopy bulletinPublisherID];
  v13 = [(UNCNotificationRepository *)notificationRepository notificationRecordForIdentifier:bulletinPublisherID bundleIdentifier:sectionIdentifier];

  v50 = v10;
  v14 = [v10 objectForKey:*MEMORY[0x277CE2178]];
  v15 = sectionIdentifier;
  defaultActionBundleIdentifier = [v13 defaultActionBundleIdentifier];
  v17 = v15;
  v51 = v14;
  if (defaultActionBundleIdentifier)
  {
    if ([(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowAlternateLaunchBundleIdentifiers])
    {
      v17 = defaultActionBundleIdentifier;

      v18 = *MEMORY[0x277CE2080];
      if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_ERROR))
      {
        loga = v18;
        sectionIdentifier2 = [(UNSDefaultDataProvider *)self sectionIdentifier];
        bulletinPublisherID2 = [responseCopy bulletinPublisherID];
        *buf = 138543874;
        v61 = sectionIdentifier2;
        v62 = 2114;
        v63 = bulletinPublisherID2;
        v64 = 2114;
        v65 = v17;
        _os_log_error_impl(&dword_270AA8000, loga, OS_LOG_TYPE_ERROR, "[%{public}@] Launching action response '%{public}@' with alternate bundle identifier '%{public}@'", buf, 0x20u);

        v14 = v51;
        if (!v13)
        {
          goto LABEL_31;
        }

LABEL_8:
        v21 = objc_alloc(MEMORY[0x277D77C98]);
        bundle = [(UNSDefaultDataProvider *)self bundle];
        v23 = [v21 initWithBundle:bundle categoryRepository:self->_categoryRepository];

        v24 = [v23 notificationForNotificationRecord:v13];
        goto LABEL_9;
      }
    }

    else
    {
      v20 = *MEMORY[0x277CE2080];
      v17 = v15;
      if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_ERROR))
      {
        v36 = v20;
        sectionIdentifier3 = [(UNSDefaultDataProvider *)self sectionIdentifier];
        bulletinPublisherID3 = [responseCopy bulletinPublisherID];
        *buf = 138543874;
        v61 = sectionIdentifier3;
        v62 = 2114;
        v63 = bulletinPublisherID3;
        v64 = 2114;
        v65 = defaultActionBundleIdentifier;
        _os_log_error_impl(&dword_270AA8000, v36, OS_LOG_TYPE_ERROR, "[%{public}@] Permission denied to launch action response '%{public}@' with alternate bundle identifier '%{public}@'", buf, 0x20u);

        v14 = v51;
        v17 = v15;
        if (v13)
        {
          goto LABEL_8;
        }

        goto LABEL_31;
      }
    }
  }

  if (v13)
  {
    goto LABEL_8;
  }

LABEL_31:
  if (!v14)
  {
    goto LABEL_35;
  }

  v39 = [(UNSDefaultDataProvider *)self _unarchiveNotificationFromData:v51];
  v23 = v39;
  if (v39)
  {
    log = completionCopy;
    sourceIdentifier = [v39 sourceIdentifier];
    v41 = [v15 isEqualToString:sourceIdentifier];

    if (v41)
    {
      v23 = v23;
      v24 = v23;
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_FAULT))
      {
        [UNSDefaultDataProvider _handleBulletinActionResponse:withCompletion:];
      }

      v24 = 0;
    }

    completionCopy = log;
  }

  else
  {
    v24 = 0;
  }

LABEL_9:

  if (v24)
  {
    v25 = completionCopy;
    switch(actionType)
    {
      case 1:
        v26 = MEMORY[0x277CE20E8];
        break;
      case 10:
        v26 = MEMORY[0x277CE2120];
        break;
      case 8:
        v26 = MEMORY[0x277CE20F0];
        break;
      default:
        v28 = actionID;
        goto LABEL_18;
    }

    v27 = *v26;

    v28 = v27;
LABEL_18:
    v55 = v28;
    if ([responseCopy actionBehavior] == 1)
    {
      v29 = [v50 objectForKey:*MEMORY[0x277CF35E0]];
      v30 = [MEMORY[0x277CE2018] responseWithNotification:v24 actionIdentifier:v28 originIdentifier:originID targetConnectionEndpoint:endpoint userText:v29];
    }

    else
    {
      v30 = [MEMORY[0x277CE1FC8] responseWithNotification:v24 actionIdentifier:v28 originIdentifier:originID targetConnectionEndpoint:endpoint];
    }

    completionCopy = v25;
    if (actionActivationMode)
    {
      if ([(UNCNotificationSourceDescription *)self->_notificationSourceDescription daemonShouldReceiveBackgroundResponses])
      {
        [(UNSDaemonLauncher *)self->_daemonLauncher didReceiveNotificationResponse:v30 forBundleIdentifier:v17 withCompletionHandler:v25];
      }

      else
      {
        [(UNSApplicationLauncher *)self->_appLauncher backgroundLaunchApplication:v17 withResponse:v30 completionHandler:v25];
      }
    }

    else if ([responseCopy didOpenApplication])
    {
      if ([(UNCNotificationSourceDescription *)self->_notificationSourceDescription daemonShouldReceiveApplicationEvents])
      {
        [(UNSDaemonLauncher *)self->_daemonLauncher didOpenApplicationForResponse:v30 forBundleIdentifier:v17];
      }
    }

    else
    {
      [v24 request];
      v31 = logb = v25;
      content = [v31 content];
      launchImageName = [content launchImageName];

      appLauncher = self->_appLauncher;
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __71__UNSDefaultDataProvider__handleBulletinActionResponse_withCompletion___block_invoke;
      v56[3] = &unk_279E10A68;
      v56[4] = self;
      v57 = v30;
      v58 = v17;
      v59 = logb;
      v34 = appLauncher;
      completionCopy = logb;
      [(UNSApplicationLauncher *)v34 foregroundLaunchApplication:v58 withResponse:v57 launchImageName:launchImageName origin:originID endpoint:endpoint completionHandler:v56];
    }

    v35 = v55;
    goto LABEL_39;
  }

LABEL_35:
  if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_ERROR))
  {
    [UNSDefaultDataProvider _handleBulletinActionResponse:withCompletion:];
  }

  v35 = actionID;
  if (completionCopy)
  {
    (completionCopy[2].isa)(completionCopy, 0);
  }

LABEL_39:

  v42 = *MEMORY[0x277D85DE8];
}

uint64_t __71__UNSDefaultDataProvider__handleBulletinActionResponse_withCompletion___block_invoke(void *a1, int a2)
{
  if (a2 && [*(a1[4] + 32) daemonShouldReceiveApplicationEvents])
  {
    [*(a1[4] + 48) didOpenApplicationForResponse:a1[5] forBundleIdentifier:a1[6]];
  }

  result = a1[7];
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (id)_unarchiveNotificationFromData:(id)data
{
  v9 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = objc_autoreleasePoolPush();
  if (dataCopy)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:dataCopy error:0];
    v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
    [v5 finishDecoding];
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v4);

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)notificationRepository:(id)repository didDiscoverContentOnFirstUnlockForBundleIdentifier:(id)identifier
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__UNSDefaultDataProvider_notificationRepository_didDiscoverContentOnFirstUnlockForBundleIdentifier___block_invoke;
  block[3] = &unk_279E10988;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)notificationRepository:(id)repository didPerformUpdates:(id)updates forBundleIdentifier:(id)identifier
{
  updatesCopy = updates;
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__UNSDefaultDataProvider_notificationRepository_didPerformUpdates_forBundleIdentifier___block_invoke;
  v9[3] = &unk_279E104B8;
  v9[4] = self;
  v10 = updatesCopy;
  v8 = updatesCopy;
  dispatch_async(queue, v9);
}

- (void)categoryRepository:(id)repository didChangeCategoriesForBundleIdentifier:(id)identifier
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__UNSDefaultDataProvider_categoryRepository_didChangeCategoriesForBundleIdentifier___block_invoke;
  block[3] = &unk_279E10988;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __84__UNSDefaultDataProvider_categoryRepository_didChangeCategoriesForBundleIdentifier___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 104) reloadSectionParameters];
  v2 = *(*(a1 + 32) + 104);

  return [v2 invalidateBulletins];
}

- (void)topicRepository:(id)repository didChangeTopicsForBundleIdentifier:(id)identifier
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__UNSDefaultDataProvider_topicRepository_didChangeTopicsForBundleIdentifier___block_invoke;
  block[3] = &unk_279E10988;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __77__UNSDefaultDataProvider_topicRepository_didChangeTopicsForBundleIdentifier___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 104) reloadDefaultSectionInfo];
  v2 = *(*(a1 + 32) + 104);

  return [v2 invalidateBulletins];
}

- (void)summaryServiceAdapter:(id)adapter didReceiveGroupSummariesForNotificationIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __99__UNSDefaultDataProvider_summaryServiceAdapter_didReceiveGroupSummariesForNotificationIdentifiers___block_invoke;
  v8[3] = &unk_279E104B8;
  v9 = identifiersCopy;
  selfCopy = self;
  v7 = identifiersCopy;
  dispatch_async(queue, v8);
}

void __99__UNSDefaultDataProvider_summaryServiceAdapter_didReceiveGroupSummariesForNotificationIdentifiers___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v25;
    v7 = MEMORY[0x277CE2080];
    *&v4 = 138543618;
    v23 = v4;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        v10 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 40);
          v12 = v10;
          v13 = [v11 sectionIdentifier];
          *buf = v23;
          v29 = v13;
          v30 = 2114;
          v31 = v9;
          _os_log_impl(&dword_270AA8000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating group summary for notification %{public}@", buf, 0x16u);
        }

        v14 = *(a1 + 40);
        v15 = v14[7];
        v16 = [v14 sectionIdentifier];
        v17 = [v15 notificationRecordForIdentifier:v9 bundleIdentifier:v16];

        if (v17)
        {
          [*(a1 + 40) _queue_fetchBulletinForNotification:v17];
        }

        else
        {
          v18 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
          {
            v19 = *(a1 + 40);
            v20 = v18;
            v21 = [v19 sectionIdentifier];
            *buf = v23;
            v29 = v21;
            v30 = 2114;
            v31 = v9;
            _os_log_error_impl(&dword_270AA8000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] notification %{public}@ record not found; Can't update group summary.", buf, 0x16u);
          }
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [v2 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v5);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_queue_notificationRepositoryDidPerformUpdates:(id)updates
{
  v20 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  dispatch_assert_queue_V2(self->_queue);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = updatesCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        notificationRecord = [v10 notificationRecord];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v10 shouldRepost] & 1) == 0 && -[UNCNotificationSourceDescription allowPrivateProperties](self->_notificationSourceDescription, "allowPrivateProperties"))
        {
          [(UNSDefaultDataProvider *)self _queue_modifyBulletinForNotification:notificationRecord];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              shouldRepost = [v10 shouldRepost];
            }

            else
            {
              shouldRepost = 1;
            }

            [(UNSDefaultDataProvider *)self _queue_addBulletinForNotification:notificationRecord shouldRepost:shouldRepost];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[UNSDefaultDataProvider _queue_withdrawBulletinForNotification:shouldSync:](self, "_queue_withdrawBulletinForNotification:shouldSync:", notificationRecord, [v10 shouldSync]);
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v13 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v7 = v13;
    }

    while (v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_queue_fetchBulletinForNotification:(id)notification
{
  v24 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  identifier = [notificationCopy identifier];
  if (identifier)
  {
    v6 = [(UNSDefaultDataProvider *)self _destinationsForNotification:notificationCopy];
    v7 = *MEMORY[0x277CE2080];
    if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      sectionIdentifier = [(UNSDefaultDataProvider *)self sectionIdentifier];
      identifier2 = [notificationCopy identifier];
      un_logDigest = [identifier2 un_logDigest];
      v12 = BBPublisherDestinationStrings();
      v16 = 138544130;
      v17 = sectionIdentifier;
      v18 = 2114;
      v19 = un_logDigest;
      v20 = 2048;
      v21 = v6;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_270AA8000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fetching notification %{public}@ destinations %ld: %{public}@", &v16, 0x2Au);
    }

    v13 = [(UNSDefaultDataProvider *)self _queue_bulletinForNotification:notificationCopy];
    [(BBDataProviderProxy *)self->_proxy modifyBulletin:v13];
  }

  else
  {
    v14 = *MEMORY[0x277CE2080];
    if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_ERROR))
    {
      [(UNSDefaultDataProvider *)v14 _queue_fetchBulletinForNotification:?];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_queue_modifyBulletinForNotification:(id)notification
{
  v39 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  dispatch_assert_queue_V2(self->_queue);
  if (![notificationCopy pipelineState])
  {
    identifier = [notificationCopy identifier];
    if (identifier)
    {
      v26 = [(UNSDefaultDataProvider *)self _categoryForNotification:notificationCopy];
      v6 = [(UNSDefaultDataProvider *)self _destinationsForNotification:notificationCopy];
      v7 = MEMORY[0x277CE2080];
      v8 = *MEMORY[0x277CE2080];
      if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        sectionIdentifier = [(UNSDefaultDataProvider *)self sectionIdentifier];
        identifier2 = [notificationCopy identifier];
        un_logDigest = [identifier2 un_logDigest];
        v13 = BBPublisherDestinationStrings();
        *buf = 138544130;
        v32 = sectionIdentifier;
        v33 = 2114;
        v34 = un_logDigest;
        v35 = 2048;
        v36 = v6;
        v37 = 2114;
        v38 = v13;
        _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Modifying notification %{public}@ destinations %ld: %{public}@", buf, 0x2Au);
      }

      v14 = [(UNSDefaultDataProvider *)self _queue_bulletinForNotification:notificationCopy];
      v15 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        sectionIdentifier2 = [(UNSDefaultDataProvider *)self sectionIdentifier];
        identifier3 = [notificationCopy identifier];
        un_logDigest2 = [identifier3 un_logDigest];
        *buf = 138543618;
        v32 = sectionIdentifier2;
        v33 = 2114;
        v34 = un_logDigest2;
        _os_log_impl(&dword_270AA8000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting modify notification pipeline for %{public}@", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v20 = objc_alloc_init(MEMORY[0x277D77C90]);
      uns_notificationSettings = [(BBSectionInfo *)self->_effectiveSectionInfo uns_notificationSettings];
      notificationSourceDescription = self->_notificationSourceDescription;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __63__UNSDefaultDataProvider__queue_modifyBulletinForNotification___block_invoke;
      v27[3] = &unk_279E10AB8;
      v27[4] = self;
      v28 = notificationCopy;
      objc_copyWeak(&v30, buf);
      v23 = v20;
      v29 = v23;
      [UNSNotificationPipelineAdapter updateBulletin:v14 category:v26 destinations:v6 sourceDescription:notificationSourceDescription settings:uns_notificationSettings completion:v27];

      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
    }

    else
    {
      v24 = *MEMORY[0x277CE2080];
      if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_ERROR))
      {
        [(UNSDefaultDataProvider *)v24 _queue_modifyBulletinForNotification:?];
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __63__UNSDefaultDataProvider__queue_modifyBulletinForNotification___block_invoke(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *MEMORY[0x277CE2080];
  if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 sectionIdentifier];
    v11 = [*(a1 + 40) identifier];
    v12 = [v11 un_logDigest];
    *buf = 138543618;
    v23 = v10;
    v24 = 2114;
    v25 = v12;
    _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completed modify notification pipeline for %{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    v15 = WeakRetained[14];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__UNSDefaultDataProvider__queue_modifyBulletinForNotification___block_invoke_90;
    block[3] = &unk_279E10A90;
    block[4] = WeakRetained;
    v18 = *(a1 + 40);
    v21 = a4;
    v19 = v6;
    v20 = *(a1 + 48);
    dispatch_async(v15, block);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __63__UNSDefaultDataProvider__queue_modifyBulletinForNotification___block_invoke_90(uint64_t a1)
{
  [*(a1 + 32) _queue_saveResultNotificationRecord:*(a1 + 40) shouldRepost:0 isFailure:*(a1 + 64) resultBulletin:*(a1 + 48)];
  [*(*(a1 + 32) + 104) modifyBulletin:*(a1 + 48)];
  v2 = *(a1 + 56);

  return objc_opt_class();
}

- (void)_queue_addBulletinForNotification:(id)notification shouldRepost:(BOOL)repost
{
  v59 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  dispatch_assert_queue_V2(self->_queue);
  if (![notificationCopy pipelineState])
  {
    repostCopy = repost;
    v32 = [(UNSDefaultDataProvider *)self _categoryForNotification:notificationCopy];
    v33 = [(UNSDefaultDataProvider *)self _destinationsForNotification:notificationCopy];
    v7 = *MEMORY[0x277CE2080];
    if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
    {
      log = v7;
      sectionIdentifier = [(UNSDefaultDataProvider *)self sectionIdentifier];
      identifier = [notificationCopy identifier];
      un_logDigest = [identifier un_logDigest];
      hasAlertContent = [notificationCopy hasAlertContent];
      shouldPresentAlert = [notificationCopy shouldPresentAlert];
      hasSound = [notificationCopy hasSound];
      shouldPlaySound = [notificationCopy shouldPlaySound];
      interruptionLevel = [notificationCopy interruptionLevel];
      v13 = BBPublisherDestinationStrings();
      contentDate = [notificationCopy contentDate];
      un_logString = [contentDate un_logString];
      *buf = 138545666;
      v40 = sectionIdentifier;
      v41 = 2114;
      v42 = un_logDigest;
      v43 = 1024;
      v44 = hasAlertContent;
      v45 = 1024;
      v46 = shouldPresentAlert;
      v47 = 1024;
      v48 = hasSound;
      v49 = 1024;
      v50 = shouldPlaySound;
      v51 = 2048;
      v52 = interruptionLevel;
      v53 = 2048;
      v54 = v33;
      v55 = 2114;
      v56 = v13;
      v57 = 2114;
      v58 = un_logString;
      _os_log_impl(&dword_270AA8000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] Adding notification %{public}@ [ hasAlertContent: %d, shouldPresentAlert: %d hasSound: %d shouldPlaySound: %d ]; interruption-level: %lu; destinations %ld: %{public}@; contentDate: %{public}@", buf, 0x56u);
    }

    if (v33)
    {
      v16 = [(UNSDefaultDataProvider *)self _queue_bulletinForNotification:notificationCopy];
      v17 = *MEMORY[0x277CE2080];
      if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        sectionIdentifier2 = [(UNSDefaultDataProvider *)self sectionIdentifier];
        identifier2 = [notificationCopy identifier];
        un_logDigest2 = [identifier2 un_logDigest];
        *buf = 138543618;
        v40 = sectionIdentifier2;
        v41 = 2114;
        v42 = un_logDigest2;
        _os_log_impl(&dword_270AA8000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting add notification pipeline for %{public}@", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v22 = objc_alloc_init(MEMORY[0x277D77C90]);
      uns_notificationSettings = [(BBSectionInfo *)self->_effectiveSectionInfo uns_notificationSettings];
      notificationSourceDescription = self->_notificationSourceDescription;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __73__UNSDefaultDataProvider__queue_addBulletinForNotification_shouldRepost___block_invoke;
      v34[3] = &unk_279E10B08;
      v34[4] = self;
      v35 = notificationCopy;
      objc_copyWeak(&v37, buf);
      v38 = repostCopy;
      v25 = v22;
      v36 = v25;
      [UNSNotificationPipelineAdapter createBulletin:v16 category:v32 destinations:v33 sourceDescription:notificationSourceDescription settings:uns_notificationSettings completion:v34];

      objc_destroyWeak(&v37);
      objc_destroyWeak(buf);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __73__UNSDefaultDataProvider__queue_addBulletinForNotification_shouldRepost___block_invoke(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *MEMORY[0x277CE2080];
  if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = v8;
    v11 = [v9 sectionIdentifier];
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 un_logDigest];
    *buf = 138543618;
    v26 = v11;
    v27 = 2114;
    v28 = v13;
    _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completed add notification pipeline for %{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v15 = WeakRetained;
  if (WeakRetained)
  {
    v16 = WeakRetained[14];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__UNSDefaultDataProvider__queue_addBulletinForNotification_shouldRepost___block_invoke_92;
    v18[3] = &unk_279E10AE0;
    v18[4] = WeakRetained;
    v19 = *(a1 + 40);
    v23 = *(a1 + 64);
    v24 = a4;
    v20 = v7;
    v22 = a3;
    v21 = *(a1 + 48);
    dispatch_async(v16, v18);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __73__UNSDefaultDataProvider__queue_addBulletinForNotification_shouldRepost___block_invoke_92(uint64_t a1)
{
  [*(a1 + 32) _queue_saveResultNotificationRecord:*(a1 + 40) shouldRepost:*(a1 + 72) isFailure:*(a1 + 73) resultBulletin:*(a1 + 48)];
  [*(*(a1 + 32) + 104) addBulletin:*(a1 + 48) forDestinations:*(a1 + 64)];
  v2 = *(a1 + 56);

  return objc_opt_class();
}

- (void)_queue_withdrawBulletinForNotification:(id)notification shouldSync:(BOOL)sync
{
  v34 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  dispatch_assert_queue_V2(self->_queue);
  identifier = [notificationCopy identifier];
  v8 = MEMORY[0x277CE2080];
  v9 = *MEMORY[0x277CE2080];
  v10 = *MEMORY[0x277CE2080];
  if (identifier)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
      sectionIdentifier = [(UNSDefaultDataProvider *)self sectionIdentifier];
      un_logDigest = [identifier un_logDigest];
      *buf = 138543618;
      v31 = sectionIdentifier;
      v32 = 2114;
      v33 = un_logDigest;
      _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Withdrawing notification %{public}@", buf, 0x16u);
    }

    v14 = [(UNSDefaultDataProvider *)self _queue_bulletinForNotification:notificationCopy];
    v15 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      sectionIdentifier2 = [(UNSDefaultDataProvider *)self sectionIdentifier];
      identifier2 = [notificationCopy identifier];
      un_logDigest2 = [identifier2 un_logDigest];
      *buf = 138543618;
      v31 = sectionIdentifier2;
      v32 = 2114;
      v33 = un_logDigest2;
      _os_log_impl(&dword_270AA8000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting delete notification pipeline for %{public}@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v20 = objc_alloc_init(MEMORY[0x277D77C90]);
    notificationSourceDescription = self->_notificationSourceDescription;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __76__UNSDefaultDataProvider__queue_withdrawBulletinForNotification_shouldSync___block_invoke;
    v24[3] = &unk_279E10B58;
    v24[4] = self;
    v25 = notificationCopy;
    objc_copyWeak(&v28, buf);
    v26 = identifier;
    syncCopy = sync;
    v22 = v20;
    v27 = v22;
    [UNSNotificationPipelineAdapter deleteBulletin:v14 sourceDescription:notificationSourceDescription completion:v24];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [UNSDefaultDataProvider _queue_withdrawBulletinForNotification:v9 shouldSync:self];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __76__UNSDefaultDataProvider__queue_withdrawBulletinForNotification_shouldSync___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CE2080];
  if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 sectionIdentifier];
    v6 = [*(a1 + 40) identifier];
    v7 = [v6 un_logDigest];
    *buf = 138543618;
    v17 = v5;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_270AA8000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completed delete notification pipeline for %{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[14];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __76__UNSDefaultDataProvider__queue_withdrawBulletinForNotification_shouldSync___block_invoke_93;
    v12[3] = &unk_279E10B30;
    v12[4] = WeakRetained;
    v13 = *(a1 + 48);
    v15 = *(a1 + 72);
    v14 = *(a1 + 56);
    dispatch_async(v10, v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __76__UNSDefaultDataProvider__queue_withdrawBulletinForNotification_shouldSync___block_invoke_93(uint64_t a1)
{
  [*(*(a1 + 32) + 104) withdrawBulletinWithPublisherBulletinID:*(a1 + 40) shouldSync:*(a1 + 56)];
  v2 = *(a1 + 48);

  return objc_opt_class();
}

- (id)_categoryForNotification:(id)notification
{
  categoryIdentifier = [notification categoryIdentifier];
  v5 = [(UNSDefaultDataProvider *)self _categoryForIdentifier:categoryIdentifier];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D77C80]);
    bundle = [(UNSDefaultDataProvider *)self bundle];
    v8 = [v6 initWithBundle:bundle];

    v9 = [v8 notificationCategoryForNotificationCategoryRecord:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)_destinationsForNotification:(id)notification
{
  notificationCopy = notification;
  categoryIdentifier = [notificationCopy categoryIdentifier];
  v6 = [(UNSDefaultDataProvider *)self _categoryForIdentifier:categoryIdentifier];

  presentationOptions = [notificationCopy presentationOptions];
  mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
  deviceClass = [mEMORY[0x277CF0CA8] deviceClass];

  v10 = deviceClass != 4;
  if (![notificationCopy shouldPresentAlert] || !objc_msgSend(notificationCopy, "hasAlertContent"))
  {
    if ([notificationCopy shouldPlaySound])
    {
      hasSound = [notificationCopy hasSound];
    }

    else
    {
      hasSound = 0;
    }

    goto LABEL_21;
  }

  v11 = presentationOptions & 0x14;
  v12 = v10 & (presentationOptions >> 3) | (presentationOptions >> 2) & 1;
  v13 = presentationOptions & 0xC;
  if (![(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowPrivateProperties])
  {
    if (v12)
    {
      v24 = (8 * (v11 != 0)) | 4;
    }

    else
    {
      v24 = 8 * (v11 != 0);
    }

    if (v13)
    {
      v19 = v24 | 2;
    }

    else
    {
      v19 = v24;
    }

    hasSound = v19 | 0x80;
    if (![v6 shouldAllowInCarPlay])
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

  v14 = v11 != 0;
  if ([notificationCopy allowsAlertDestination])
  {
    v15 = 8 * v14;
  }

  else
  {
    v15 = 0;
  }

  if (([notificationCopy allowsLockScreenDestination] & v12) != 0)
  {
    v16 = v15 | 4;
  }

  else
  {
    v16 = v15;
  }

  allowsNotificationCenterDestination = [notificationCopy allowsNotificationCenterDestination];
  v18 = v16 | 2;
  if (!v13)
  {
    v18 = v16;
  }

  if (allowsNotificationCenterDestination)
  {
    v19 = v18;
  }

  else
  {
    v19 = v16;
  }

  hasSound = v19 | 0x80;
  if ([v6 shouldAllowInCarPlay] && objc_msgSend(notificationCopy, "allowsCarPlayDestination"))
  {
LABEL_37:
    if (![(UNSDefaultDataProvider *)self _isAppProtectionActive])
    {
      hasSound = v19 | 0xC0;
    }
  }

LABEL_21:
  if ([(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowPrivateProperties])
  {
    topicIdentifiers = [notificationCopy topicIdentifiers];
  }

  else
  {
    topicIdentifiers = 0;
  }

  if ([notificationCopy hasCriticalAlertSound])
  {
    if ([(UNSDefaultDataProvider *)self _queue_supportsCriticalAlertsForSubsectionIDs:topicIdentifiers])
    {
      v22 = 66304;
    }

    else
    {
      v22 = 256;
    }
  }

  else
  {
    v22 = 256;
  }

  return v22 | hasSound;
}

- (void)_addAttachments:(id)attachments toBulletinRequest:(id)request
{
  v37 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  requestCopy = request;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = attachmentsCopy;
  v7 = [attachmentsCopy countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v11 family] - 1;
        if (v12 > 2)
        {
          v13 = 0;
        }

        else
        {
          v13 = qword_270AE6DA8[v12];
        }

        options = [v11 options];
        displayLocation = [options displayLocation];

        options2 = [v11 options];
        v17 = [options2 displayLocation] == 1;

        v18 = objc_alloc_init(MEMORY[0x277CF3540]);
        [v18 setType:v13];
        v19 = [v11 URL];
        [v18 setURL:v19];

        identifier = [v11 identifier];
        [v18 setIdentifier:identifier];

        type = [v11 type];
        [v18 setUniformType:type];

        options3 = [v11 options];
        thumbnailGeneratorUserInfo = [options3 thumbnailGeneratorUserInfo];
        [v18 setThumbnailGeneratorUserInfo:thumbnailGeneratorUserInfo];

        [v18 setThumbnailHidden:displayLocation == 2];
        [v18 setHiddenFromDefaultExpandedView:v17];
        primaryAttachment = [requestCopy primaryAttachment];

        if (primaryAttachment || displayLocation == 2)
        {
          additionalAttachments = [requestCopy additionalAttachments];
          v26 = additionalAttachments;
          if (additionalAttachments)
          {
            array = additionalAttachments;
          }

          else
          {
            array = [MEMORY[0x277CBEA60] array];
          }

          v28 = array;

          v29 = [v28 arrayByAddingObject:v18];

          [requestCopy setAdditionalAttachments:v29];
        }

        else
        {
          [requestCopy setPrimaryAttachment:v18];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)_sectionIconVariantForApplicationIdentifier:(id)identifier format:(int64_t)format
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v6 = [MEMORY[0x277CF3560] variantWithFormat:format applicationIdentifier:identifierCopy];
    [v6 setPrecomposed:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_sectionIconVariantForUTI:(id)i format:(int64_t)format
{
  iCopy = i;
  if ([iCopy length])
  {
    v6 = [MEMORY[0x277CF3560] variantWithFormat:format uti:iCopy];
    [v6 setPrecomposed:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_sectionIconForNotificationSourceDescription:(id)description
{
  descriptionCopy = description;
  bundleURL = [descriptionCopy bundleURL];
  path = [bundleURL path];

  suppressIconMask = [descriptionCopy suppressIconMask];
  iconApplicationIdentifier = [descriptionCopy iconApplicationIdentifier];
  iconUTI = [descriptionCopy iconUTI];
  v49 = iconUTI;
  if ([iconApplicationIdentifier length])
  {
    v9 = [(UNSDefaultDataProvider *)self _sectionIconVariantForApplicationIdentifier:iconApplicationIdentifier format:0];
  }

  else
  {
    if (![iconUTI length])
    {
      [descriptionCopy defaultIconFile];
      v30 = v48 = iconApplicationIdentifier;
      v70 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:v30 bundlePath:path format:0 precomposed:suppressIconMask];

      subordinateIconFile = [descriptionCopy subordinateIconFile];
      v68 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:subordinateIconFile bundlePath:path format:26 precomposed:suppressIconMask];

      carPlayIconFile = [descriptionCopy carPlayIconFile];
      v66 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:carPlayIconFile bundlePath:path format:14 precomposed:suppressIconMask];

      settingsIconFile = [descriptionCopy settingsIconFile];
      v64 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:settingsIconFile bundlePath:path format:1 precomposed:suppressIconMask];

      settingsSheetIconFile = [descriptionCopy settingsSheetIconFile];
      v62 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:settingsSheetIconFile bundlePath:path format:17 precomposed:suppressIconMask];

      watchQuickLookSmallIconFile = [descriptionCopy watchQuickLookSmallIconFile];
      v60 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:watchQuickLookSmallIconFile bundlePath:path format:2 precomposed:suppressIconMask];

      watchQuickLookLargeIconFile = [descriptionCopy watchQuickLookLargeIconFile];
      v58 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:watchQuickLookLargeIconFile bundlePath:path format:4 precomposed:suppressIconMask];

      watchListSmallIconFile = [descriptionCopy watchListSmallIconFile];
      v56 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:watchListSmallIconFile bundlePath:path format:10 precomposed:suppressIconMask];

      watchListLargeIconFile = [descriptionCopy watchListLargeIconFile];
      v54 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:watchListLargeIconFile bundlePath:path format:12 precomposed:suppressIconMask];

      watchQuickLook394hIconFile = [descriptionCopy watchQuickLook394hIconFile];
      v52 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:watchQuickLook394hIconFile bundlePath:path format:4 precomposed:suppressIconMask];

      watchQuickLook448hIconFile = [descriptionCopy watchQuickLook448hIconFile];
      v47 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:watchQuickLook448hIconFile bundlePath:path format:15 precomposed:suppressIconMask];

      watchList394hIconFile = [descriptionCopy watchList394hIconFile];
      v20 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:watchList394hIconFile bundlePath:path format:12 precomposed:suppressIconMask];

      watchList448hIconFile = [descriptionCopy watchList448hIconFile];
      v21 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:watchList448hIconFile bundlePath:path format:18 precomposed:suppressIconMask];

      watchQuickLook430hIconFile = [descriptionCopy watchQuickLook430hIconFile];
      v22 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:watchQuickLook430hIconFile bundlePath:path format:4 precomposed:suppressIconMask];

      watchQuickLook484hIconFile = [descriptionCopy watchQuickLook484hIconFile];
      v23 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:watchQuickLook484hIconFile bundlePath:path format:22 precomposed:suppressIconMask];

      watchList430hIconFile = [descriptionCopy watchList430hIconFile];
      v24 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:watchList430hIconFile bundlePath:path format:12 precomposed:suppressIconMask];

      watchList484hIconFile = [descriptionCopy watchList484hIconFile];
      v25 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:watchList484hIconFile bundlePath:path format:20 precomposed:suppressIconMask];

      v19 = v47;
      iconApplicationIdentifier = v48;
      v18 = v52;
      v17 = v54;
      v16 = v56;
      v15 = v58;
      v14 = v60;
      v13 = v62;
      v12 = v64;
      v11 = v66;
      v10 = v68;
      v9 = v70;
      goto LABEL_6;
    }

    v9 = [(UNSDefaultDataProvider *)self _sectionIconVariantForUTI:iconUTI format:0];
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
LABEL_6:
  v69 = v9;
  v65 = v11;
  v67 = v10;
  v61 = v13;
  v63 = v12;
  v57 = v15;
  v59 = v14;
  v53 = v17;
  v55 = v16;
  v51 = v18;
  v26 = v19;
  if (v9 || v10 || v11 || v12 || v13 || v14 || v15 || v16 || v17 || v18 || v19 || v20 || v21 || v22 || v23 || v24 || v25)
  {
    v28 = objc_alloc_init(MEMORY[0x277CF3558]);
    v27 = v28;
    if (v69)
    {
      [v28 addVariant:?];
    }

    if (v67)
    {
      [v27 addVariant:?];
    }

    if (v65)
    {
      [v27 addVariant:?];
    }

    if (v63)
    {
      [v27 addVariant:?];
    }

    if (v61)
    {
      [v27 addVariant:?];
    }

    if (v59)
    {
      [v27 addVariant:?];
    }

    if (v57)
    {
      [v27 addVariant:?];
    }

    if (v55)
    {
      [v27 addVariant:?];
    }

    if (v53)
    {
      [v27 addVariant:?];
    }

    if (v51)
    {
      [v27 addVariant:?];
    }

    if (v26)
    {
      [v27 addVariant:v26];
    }

    if (v20)
    {
      [v27 addVariant:v20];
    }

    if (v21)
    {
      [v27 addVariant:v21];
    }

    if (v22)
    {
      [v27 addVariant:v22];
    }

    if (v23)
    {
      [v27 addVariant:v23];
    }

    if (v24)
    {
      [v27 addVariant:v24];
    }

    if (v25)
    {
      [v27 addVariant:v25];
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (unint64_t)_bulletinInterruptionLevelForInterruptionLevel:(unint64_t)level
{
  if (level - 1 >= 3)
  {
    return 0;
  }

  else
  {
    return level;
  }
}

- (unint64_t)_bulletinPriorityStatusForNotificationPriorityStatus:(unint64_t)status
{
  if (status - 1 >= 5)
  {
    return 0;
  }

  else
  {
    return status;
  }
}

- (unint64_t)_notificationRecordPriorityStatusForBulletinStatus:(unint64_t)status
{
  if (status - 1 >= 5)
  {
    return 0;
  }

  else
  {
    return status;
  }
}

- (unint64_t)_bulletinSummaryStatusForNotificationSummaryStatus:(unint64_t)status
{
  if (status - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return status;
  }
}

- (unint64_t)_notificationRecordSummaryStatusForBulletinStatus:(unint64_t)status
{
  if (status - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return status;
  }
}

- (BOOL)_isTCCUserAvailabilityGrantedForBundleId:(id)id
{
  v14 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = MEMORY[0x277CE2070];
  v6 = *MEMORY[0x277CE2070];
  if (os_log_type_enabled(*MEMORY[0x277CE2070], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = idCopy;
    _os_log_impl(&dword_270AA8000, v6, OS_LOG_TYPE_DEFAULT, "Looking up User Availability permission for bundleId: %{public}@", &v12, 0xCu);
  }

  if ([idCopy length])
  {
    _userAvailabilityTCCApprovedBundleIds = [(UNSDefaultDataProvider *)self _userAvailabilityTCCApprovedBundleIds];
    v8 = [_userAvailabilityTCCApprovedBundleIds containsObject:idCopy];
  }

  else
  {
    v9 = *v5;
    v8 = 0;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "Empty bundleId passed to isTCCUserAvailabilityGrantedForBundleId", &v12, 2u);
      v8 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_userAvailabilityTCCApprovedBundleIds
{
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277D6C180];
  v4 = TCCAccessCopyBundleIdentifiersForService();
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (void)_queue_bulletinForNotification:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = [a1 spotlightIdentifier];
  v7 = [a2 title];
  v8 = [a2 subtitle];
  v9 = [a1 threadSummary];
  v11 = 138413059;
  v12 = v6;
  v13 = 2117;
  v14 = v7;
  v15 = 2117;
  v16 = v8;
  v17 = 2117;
  v18 = v9;
  _os_log_debug_impl(&dword_270AA8000, a3, OS_LOG_TYPE_DEBUG, "group summaries request for record with spotlightIdentifier: %@ title: %{sensitive}@ subtitle: %{sensitive}@ threadSummary: %{sensitive}@", &v11, 0x2Au);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_bulletinForNotification:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 sectionIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_bulletinForNotification:(void *)a1 .cold.3(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 sectionIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_270AA8000, v5, v6, "[%{public}@] Notification record has no identifier", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_bbContentTypeFromUNContentType:toneAlertType:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_4_0() sectionIdentifier];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_270AA8000, v4, v5, "[%{public}@] _UNNotificationContentType is '%{public}@' but call-type notifications are  not allowed. Abandoning communication API features for all call-related notifications. Perhaps app isn't allowed to donate start call intents or is missing the communication entitlement.", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_bbContentTypeFromUNContentType:toneAlertType:.cold.5()
{
  OUTLINED_FUNCTION_3_0();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_4_0() sectionIdentifier];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_270AA8000, v4, v5, "[%{public}@] _UNNotificationContentType is '%{public}@' but intercom-type notifications are  not allowed. Abandoning communication API features for all intercom notifications. Perhaps app isn't allowed to donate read announcement intents or is missing the communication entitlement.", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_bbContentTypeFromUNContentType:toneAlertType:.cold.6()
{
  OUTLINED_FUNCTION_3_0();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_4_0() sectionIdentifier];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_270AA8000, v4, v5, "[%{public}@] _UNNotificationContentType is '%{public}@' but messaging notifications are  not allowed. Abandoning communication API features for all messaging notifications. Perhaps app isn't allowed to donate messaging intents or is missing the communication entitlement.", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleBulletinActionResponse:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v6 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_4_0() sourceIdentifier];
  OUTLINED_FUNCTION_0_3();
  _os_log_fault_impl(&dword_270AA8000, v0, OS_LOG_TYPE_FAULT, "Received unexpected notification response for section %{public}@ in data provider for section %{public}@", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_handleBulletinActionResponse:withCompletion:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v13 = *MEMORY[0x277D85DE8];
  v3 = v2;
  v4 = [OUTLINED_FUNCTION_4_0() sectionIdentifier];
  v12 = [v0 bulletinPublisherID];
  OUTLINED_FUNCTION_1_0(&dword_270AA8000, v5, v6, "[%{public}@] Unable to fetch or unarchive notification to handle action response for: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_unarchiveNotificationFromData:(uint8_t *)buf .cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_270AA8000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Ignoring keyed archive data contains that invalid classes: %{public}@", buf, 0x16u);
}

- (void)_queue_fetchBulletinForNotification:(void *)a1 .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 sectionIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_270AA8000, v5, v6, "[%{public}@] Cannot fetch notification becuase identifier is nil", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_queue_modifyBulletinForNotification:(void *)a1 .cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 sectionIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_withdrawBulletinForNotification:(void *)a1 shouldSync:(void *)a2 .cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 sectionIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

@end
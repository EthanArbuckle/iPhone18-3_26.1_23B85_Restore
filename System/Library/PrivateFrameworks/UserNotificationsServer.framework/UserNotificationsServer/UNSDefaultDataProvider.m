@interface UNSDefaultDataProvider
- (BOOL)_isAppProtectionActive;
- (BOOL)_isResourceValidForPath:(id)a3 withContainerPath:(id)a4;
- (BOOL)_isTCCUserAvailabilityGrantedForBundleId:(id)a3;
- (BOOL)_queue_supportsCriticalAlertsForSubsectionIDs:(id)a3;
- (BOOL)_queue_supportsTimeSensitiveAlertsforSubsectionIDs:(id)a3;
- (BSCFBundle)bundle;
- (UNSDefaultDataProvider)initWithNotificationSourceDescription:(id)a3 applicationLauncher:(id)a4 daemonLauncher:(id)a5 categoryRepository:(id)a6 notificationRepository:(id)a7 topicRepository:(id)a8 attachmentsService:(id)a9 localizationService:(id)a10 summaryService:(id)a11 queue:(id)a12;
- (id)_actionFromActionRecord:(id)a3;
- (id)_actionsFromActionRecords:(id)a3;
- (id)_allBulletinsWithMaxCount:(unint64_t)a3 sinceDate:(id)a4;
- (id)_allCategories;
- (id)_bbContactFromUNContact:(id)a3;
- (id)_bbContentTypeFromUNContentType:(id)a3 toneAlertType:(int64_t)a4;
- (id)_categoryForIdentifier:(id)a3;
- (id)_categoryForNotification:(id)a3;
- (id)_defaultActionWithNotification:(id)a3;
- (id)_dismissActionForCategory:(id)a3;
- (id)_followActivityActionForCategory:(id)a3;
- (id)_localizeClientString:(id)a3 inBundle:(id)a4;
- (id)_pathForSoundName:(id)a3;
- (id)_queue_applicableSectionInfosForSubsectionIDs:(id)a3;
- (id)_queue_bulletinForNotification:(id)a3;
- (id)_safeAttributedMessageWithAttributedMessage:(id)a3 contentType:(id)a4;
- (id)_sectionIconForNotificationSourceDescription:(id)a3;
- (id)_sectionIconVariantForApplicationIdentifier:(id)a3 format:(int64_t)a4;
- (id)_sectionIconVariantForUTI:(id)a3 format:(int64_t)a4;
- (id)_silenceActionForCategory:(id)a3;
- (id)_soundsDirectoryPathForContainerBasePath:(id)a3;
- (id)_supplementaryActionsForForCategoryRecord:(id)a3;
- (id)_topicForIdentifier:(id)a3;
- (id)_unarchiveNotificationFromData:(id)a3;
- (id)_userAvailabilityTCCApprovedBundleIds;
- (id)bulletinsWithRequestParameters:(id)a3 lastCleared:(id)a4;
- (id)clearedInfoAndBulletinsForClearingAllBulletinsWithLimit:(unint64_t)a3 lastClearedInfo:(id)a4;
- (id)clearedInfoForBulletins:(id)a3 lastClearedInfo:(id)a4;
- (id)defaultSectionInfo;
- (id)defaultSubsectionInfos;
- (id)displayNameForSubsectionID:(id)a3;
- (id)notificationRecords;
- (id)sectionBundlePath;
- (id)sectionParameters;
- (id)sortDescriptors;
- (unint64_t)_bulletinInterruptionLevelForInterruptionLevel:(unint64_t)a3;
- (unint64_t)_bulletinPriorityStatusForNotificationPriorityStatus:(unint64_t)a3;
- (unint64_t)_bulletinSummaryStatusForNotificationSummaryStatus:(unint64_t)a3;
- (unint64_t)_destinationsForNotification:(id)a3;
- (unint64_t)_notificationRecordPriorityStatusForBulletinStatus:(unint64_t)a3;
- (unint64_t)_notificationRecordSummaryStatusForBulletinStatus:(unint64_t)a3;
- (void)_addAttachments:(id)a3 toBulletinRequest:(id)a4;
- (void)_handleBulletinActionResponse:(id)a3 withCompletion:(id)a4;
- (void)_queue_addBulletinForNotification:(id)a3 shouldRepost:(BOOL)a4;
- (void)_queue_fetchBulletinForNotification:(id)a3;
- (void)_queue_modifyBulletinForNotification:(id)a3;
- (void)_queue_notificationRepositoryDidPerformUpdates:(id)a3;
- (void)_queue_withdrawBulletinForNotification:(id)a3 shouldSync:(BOOL)a4;
- (void)_setNotificationSourceDescription:(id)a3;
- (void)categoryRepository:(id)a3 didChangeCategoriesForBundleIdentifier:(id)a4;
- (void)dataProviderDidLoad;
- (void)dealloc;
- (void)handleBulletinActionResponse:(id)a3 withCompletion:(id)a4;
- (void)invalidate;
- (void)notificationRepository:(id)a3 didDiscoverContentOnFirstUnlockForBundleIdentifier:(id)a4;
- (void)notificationRepository:(id)a3 didPerformUpdates:(id)a4 forBundleIdentifier:(id)a5;
- (void)setEffectiveSectionInfo:(id)a3;
- (void)setNotificationSourceDescription:(id)a3;
- (void)summaryServiceAdapter:(id)a3 didReceiveGroupSummariesForNotificationIdentifiers:(id)a4;
- (void)topicRepository:(id)a3 didChangeTopicsForBundleIdentifier:(id)a4;
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
      v5 = [(BSCFBundle *)bundle bundleIdentifier];
      v6 = [(UNCLocalizationService *)localizationService bundleWithIdentifier:v5];
      v7 = self->_bundle;
      self->_bundle = v6;

      bundle = self->_bundle;
    }
  }

  return bundle;
}

- (UNSDefaultDataProvider)initWithNotificationSourceDescription:(id)a3 applicationLauncher:(id)a4 daemonLauncher:(id)a5 categoryRepository:(id)a6 notificationRepository:(id)a7 topicRepository:(id)a8 attachmentsService:(id)a9 localizationService:(id)a10 summaryService:(id)a11 queue:(id)a12
{
  v34 = a3;
  v33 = a4;
  v32 = a5;
  v31 = a6;
  v30 = a7;
  v29 = a8;
  v28 = a9;
  v27 = a10;
  v26 = a11;
  v25 = a12;
  v35.receiver = self;
  v35.super_class = UNSDefaultDataProvider;
  v18 = [(UNSDefaultDataProvider *)&v35 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, a12);
    objc_storeStrong(&v19->_appLauncher, a4);
    objc_storeStrong(&v19->_daemonLauncher, a5);
    objc_storeStrong(&v19->_categoryRepository, a6);
    objc_storeStrong(&v19->_topicRepository, a8);
    objc_storeStrong(&v19->_notificationRepository, a7);
    objc_storeStrong(&v19->_attachmentsService, a9);
    objc_storeStrong(&v19->_localizationService, a10);
    objc_storeStrong(&v19->_summaryService, a11);
    v20 = [MEMORY[0x277CBEB38] dictionary];
    categoryToParamSubType = v19->_categoryToParamSubType;
    v19->_categoryToParamSubType = v20;

    [(UNSDefaultDataProvider *)v19 _setNotificationSourceDescription:v34];
    v22 = [(UNSDefaultDataProvider *)v19 sectionParameters];
    v23 = [v34 bundleIdentifier];
    [(UNCNotificationRepository *)v19->_notificationRepository addObserver:v19 forBundleIdentifier:v23];
    [(UNSNotificationCategoryRepository *)v19->_categoryRepository addObserver:v19 forBundleIdentifier:v23];
    [(UNCNotificationTopicRepository *)v19->_topicRepository addObserver:v19 forBundleIdentifier:v23];
    [(UNSSummaryServiceAdapter *)v19->_summaryService addObserver:v19 forBundleIdentifier:v23];
  }

  return v19;
}

- (void)_setNotificationSourceDescription:(id)a3
{
  v4 = a3;
  v5 = [(UNSDefaultDataProvider *)self _sectionIconForNotificationSourceDescription:v4];
  sectionIcon = self->_sectionIcon;
  self->_sectionIcon = v5;

  notificationSourceDescription = self->_notificationSourceDescription;
  self->_notificationSourceDescription = v4;
  v8 = v4;

  LOBYTE(notificationSourceDescription) = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription suppressUserAuthorizationPrompt];
  self->_suppressUserAuthorizationPrompt = notificationSourceDescription;
}

- (void)unloadBundle
{
  localizationService = self->_localizationService;
  v4 = [(BSCFBundle *)self->_bundle bundleIdentifier];
  [(UNCLocalizationService *)localizationService unloadBundleWithIdentifier:v4];

  bundle = self->_bundle;
  self->_bundle = 0;
}

- (void)setNotificationSourceDescription:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(UNSDefaultDataProvider *)self unloadBundle];
  v5 = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription isRestricted];
  v6 = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowTimeSensitive];
  v7 = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowMessages];
  [(UNSDefaultDataProvider *)self _setNotificationSourceDescription:v4];
  v8 = [v4 isRestricted];
  v9 = [v4 allowTimeSensitive];
  v10 = [v4 allowMessages];

  if (v5 != v8 || ((v6 ^ v9) & 1) != 0 || v7 != v10)
  {
    v11 = *MEMORY[0x277CE2080];
    if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(UNSDefaultDataProvider *)self sectionIdentifier];
      *buf = 138544898;
      v18 = v13;
      v19 = 1024;
      v20 = v5;
      v21 = 1024;
      v22 = v8;
      v23 = 1024;
      v24 = v6;
      v25 = 1024;
      v26 = v9;
      v27 = 1024;
      v28 = v7;
      v29 = 1024;
      v30 = v10;
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
    v5 = [(UNSDefaultDataProvider *)self sectionIdentifier];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_270AA8000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] data provider loaded", &v7, 0xCu);
  }

  [(UNSDefaultDataProvider *)self unloadBundle];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)uninstall
{
  [(UNSDefaultDataProvider *)self invalidate];
  notificationRepository = self->_notificationRepository;
  v4 = [(UNSDefaultDataProvider *)self sectionIdentifier];
  [(UNCNotificationRepository *)notificationRepository removeStoreForBundleIdentifier:v4];
}

- (void)invalidate
{
  notificationRepository = self->_notificationRepository;
  v4 = [(UNSDefaultDataProvider *)self sectionIdentifier];
  [(UNCNotificationRepository *)notificationRepository removeObserver:self forBundleIdentifier:v4];

  summaryService = self->_summaryService;
  v6 = [(UNSDefaultDataProvider *)self sectionIdentifier];
  [(UNSSummaryServiceAdapter *)summaryService removeObserver:self forBundleIdentifier:v6];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:self];

  proxy = self->_proxy;
  self->_proxy = 0;
}

- (id)_localizeClientString:(id)a3 inBundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 un_localizedStringKey];
    v8 = [v5 un_localizedStringArguments];
    [v6 cfBundle];
    v9 = [v5 un_localizedStringValue];
    v10 = UNFormatLocalizedStringInBundleWithDefaultValue();
  }

  else
  {
    v10 = [v6 localizedStringForKey:v5 value:&stru_288095958 table:0];
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
  v5 = [v3 defaultSubtypeParameters];
  [v5 setSuppressesAlertsWhenAppIsActive:0];
  [v5 setSuppressesTitle:1];
  v23 = v5;
  [v5 setIPodOutAlertType:3];
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
        v9 = [v8 identifier];
        if (v9)
        {
          categoryToParamSubType = self->_categoryToParamSubType;
          v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:v6];
          [(NSMutableDictionary *)categoryToParamSubType setObject:v11 forKey:v9];

          v12 = [v25 parametersForSubtype:v6];
          v13 = [v8 privateBody];
          v14 = [(UNSDefaultDataProvider *)self bundle];
          v15 = [(UNSDefaultDataProvider *)self _localizeClientString:v13 inBundle:v14];

          [v12 setHiddenPreviewsBodyPlaceholder:v15];
          v16 = [v8 summaryFormat];
          v17 = [(UNSDefaultDataProvider *)self bundle];
          v18 = [(UNSDefaultDataProvider *)self _localizeClientString:v16 inBundle:v17];

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

          v19 = [v8 privacyOptionShowTitle];
          if ([v8 privacyOptionShowSubtitle])
          {
            v20 = v19 | 2;
          }

          else
          {
            v20 = v19;
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
  v3 = [(UNSDefaultDataProvider *)self sectionIdentifier];
  v4 = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription isRestricted];
  v5 = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription suppressUserAuthorizationPrompt];
  v6 = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription automaticallyShowSettings];
  v7 = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription hideSettings];
  if (_os_feature_enabled_impl())
  {
    goto LABEL_2;
  }

  v9 = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription defaultTopics];
  if ([v9 count])
  {
  }

  else
  {
    v10 = [(UNCNotificationTopicRepository *)self->_topicRepository topicsForBundleIdentifier:v3];
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
  [v12 setSectionID:v3];
  [v12 setIsRestricted:v4];
  [v12 setIsAppClip:{-[UNCNotificationSourceDescription isAppClip](self->_notificationSourceDescription, "isAppClip")}];
  if ((v5 & (v7 | v6)) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  [v12 setAuthorizationStatus:v13];
  [v12 setSuppressFromSettings:v7];
  [v12 setSuppressedSettings:v8];
  v14 = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription customSettingsBundle];
  [v12 setCustomSettingsBundle:v14];

  v15 = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription customSettingsDetailControllerClass];
  [v12 setCustomSettingsDetailControllerClass:v15];

  v16 = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription defaultSettings];
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

  if (v16)
  {
    [v12 uns_setPropertiesFromSourceSettingsDescription:v16];
  }

  return v12;
}

- (id)defaultSubsectionInfos
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription defaultTopics];
  if ([v4 count])
  {
    v5 = [v4 bs_map:&__block_literal_global_6];
    [v3 addObjectsFromArray:v5];
  }

  topicRepository = self->_topicRepository;
  v7 = [(UNSDefaultDataProvider *)self sectionIdentifier];
  v8 = [(UNCNotificationTopicRepository *)topicRepository topicsForBundleIdentifier:v7];

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

- (id)_topicForIdentifier:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
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
          v11 = [v10 identifier];
          v12 = [v4 isEqual:v11];

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
    v14 = [(UNSDefaultDataProvider *)self sectionIdentifier];
    v15 = [(UNCNotificationTopicRepository *)topicRepository topicsForBundleIdentifier:v14];

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
          v22 = [v21 identifier];
          v23 = [v4 isEqual:v22];

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

- (id)displayNameForSubsectionID:(id)a3
{
  v4 = [(UNSDefaultDataProvider *)self _topicForIdentifier:a3];
  if (v4)
  {
    v5 = [(UNSDefaultDataProvider *)self bundle];
    [v5 cfBundle];

    v6 = [v4 displayNameLocalizationKey];
    v7 = [v4 displayName];
    v8 = UNFormatLocalizedStringInBundleWithDefaultValue();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_queue_bulletinForNotification:(id)a3
{
  v225 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (!v4)
  {
    v32 = 0;
    goto LABEL_164;
  }

  v5 = [v4 identifier];
  if (![v5 length])
  {
    v33 = *MEMORY[0x277CE2080];
    if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_ERROR))
    {
      [(UNSDefaultDataProvider *)v33 _queue_bulletinForNotification:?];
    }

    v32 = 0;
    goto LABEL_163;
  }

  v6 = [(UNSDefaultDataProvider *)self bundle];
  [v6 cfBundle];

  v7 = [v4 titleLocalizationKey];
  v8 = [v4 titleLocalizationArguments];
  v9 = [v4 title];
  v203 = UNFormatLocalizedStringInBundleWithDefaultValue();

  v10 = [v4 subtitleLocalizationKey];
  v11 = [v4 subtitleLocalizationArguments];
  v12 = [v4 subtitle];
  v202 = UNFormatLocalizedStringInBundleWithDefaultValue();

  v13 = [v4 bodyLocalizationKey];
  v14 = [v4 bodyLocalizationArguments];
  v15 = [v4 body];
  v206 = UNFormatLocalizedStringInBundleWithDefaultValue();

  v211 = [v4 attributedBody];
  v201 = [v4 summaryArgument];
  v16 = [v4 summaryArgumentCount];
  v200 = [v4 badge];
  v167 = [v4 targetContentIdentifier];
  v199 = [v4 userInfo];
  v205 = [(UNSDefaultDataProvider *)self sectionIdentifier];
  v17 = [v4 categoryIdentifier];
  v197 = [(UNSDefaultDataProvider *)self _defaultActionWithNotification:v4];
  v198 = v17;
  v168 = [(UNSDefaultDataProvider *)self _categoryForIdentifier:v17];
  v196 = [(UNSDefaultDataProvider *)self _dismissActionForCategory:v168];
  v195 = [(UNSDefaultDataProvider *)self _followActivityActionForCategory:v168];
  v194 = [(UNSDefaultDataProvider *)self _silenceActionForCategory:v168];
  v193 = [(UNSDefaultDataProvider *)self _supplementaryActionsForForCategoryRecord:v168];
  v192 = [v168 intentIdentifiers];
  v191 = [v4 launchImageName];
  v18 = [v4 realertCount];
  v209 = [v4 contentDate];
  v19 = [v4 date];
  v20 = -[UNSDefaultDataProvider _bulletinInterruptionLevelForInterruptionLevel:](self, "_bulletinInterruptionLevelForInterruptionLevel:", [v4 interruptionLevel]);
  [v4 relevanceScore];
  v22 = v21;
  v190 = [v4 filterCriteria];
  v158 = [v4 screenCaptureProhibited];
  v189 = [v4 speechLanguage];
  v23 = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowPrivateProperties];
  v210 = v19;
  v164 = v18;
  v169 = v16;
  if (!v23)
  {
    v185 = 0;
    v186 = 0;
    v34 = 0;
    v160 = 0;
    v35 = 0;
    v162 = 0;
    v146 = 0;
    v154 = 0;
    v152 = 0;
    v183 = 0;
    v36 = 0;
    v187 = 0;
    v188 = 0;
    v156 = 1;
    v149 = 1;
    v150 = 0;
    v204 = v19;
    goto LABEL_26;
  }

  v24 = [v4 headerLocalizationKey];
  v25 = [v4 headerLocalizationArguments];
  v26 = [v4 header];
  v188 = UNFormatLocalizedStringInBundleWithDefaultValue();

  v27 = [v4 footerLocalizationKey];
  v28 = [v4 footerLocalizationArguments];
  v29 = [v4 footer];
  v187 = UNFormatLocalizedStringInBundleWithDefaultValue();

  v162 = [v168 presentFullScreenAlertOverList];
  v30 = [v168 backgroundStyle];
  LOBYTE(v27) = [v30 isEqualToString:*MEMORY[0x277D77D80]];

  if (v27)
  {
    v31 = 1;
  }

  else
  {
    v37 = [v168 backgroundStyle];
    v38 = [v37 isEqualToString:*MEMORY[0x277D77D78]];

    v31 = v38;
  }

  v160 = v31;
  v39 = [v168 listPriority];
  v40 = [v39 isEqualToString:*MEMORY[0x277D77D88]];

  if (v40)
  {
    v34 = 1;
  }

  else
  {
    v41 = [v168 listPriority];
    v42 = [v41 isEqualToString:*MEMORY[0x277D77D90]];

    if (v42)
    {
      v34 = 2;
    }

    else
    {
      v34 = 0;
    }
  }

  if ([v4 shouldHideDate])
  {
    v204 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v204 = v210;
  if (v209)
  {
    v204 = v209;
    goto LABEL_21;
  }

LABEL_22:
  if ([v4 shouldUseRequestIdentifierForDismissalSync])
  {
    v186 = v5;
  }

  else
  {
    v186 = 0;
  }

  v185 = [v4 expirationDate];
  v36 = [v4 topicIdentifiers];
  v149 = [v4 shouldSuppressScreenLightUp] ^ 1;
  v183 = [v4 shouldIgnoreDoNotDisturb];
  v152 = [v4 shouldIgnoreDowntime];
  v154 = [v4 shouldSuppressSyncDismissalWhenRemoved];
  v146 = [v4 shouldHideTime];
  v35 = [v4 shouldPreemptPresentedNotification];
  v150 = [v4 shouldDisplayActionsInline];
  v156 = [v168 preventClearFromList] ^ 1;
LABEL_26:
  if ([v4 hasCriticalAlertSound])
  {
    v43 = [(UNSDefaultDataProvider *)self _queue_supportsCriticalAlertsForSubsectionIDs:v36];
  }

  else
  {
    v43 = 0;
  }

  v145 = [v4 shouldShowSubordinateIcon];
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
  v213 = [v4 threadIdentifier];
  if (![v213 length] && v43)
  {
    v46 = [MEMORY[0x277CCAD78] UUID];
    v47 = [v46 UUIDString];

    v213 = v47;
  }

  v48 = [v4 contentType];
  v212 = -[UNSDefaultDataProvider _bbContentTypeFromUNContentType:toneAlertType:](self, "_bbContentTypeFromUNContentType:toneAlertType:", v48, [v4 toneAlertType]);

  v166 = v5;
  v171 = v36;
  if (![v4 hasSound] || !objc_msgSend(v4, "shouldPlaySound"))
  {
    v50 = 0;
    v180 = 0;
    goto LABEL_89;
  }

  v174 = v35;
  v49 = v212 == *MEMORY[0x277CF34B8] && [v4 toneAlertType] == 1;
  if ((v23 | v49))
  {
    v51 = [v4 toneAlertType];
  }

  else
  {
    v51 = 17;
  }

  v52 = [objc_alloc(MEMORY[0x277D71F58]) initWithType:v51];
  v53 = v52;
  if (v43)
  {
    [v52 setTopic:*MEMORY[0x277D71FB0]];
  }

  v54 = [v4 toneFileName];
  v207 = v54;
  if ([v54 length])
  {
    v55 = [(UNSDefaultDataProvider *)self _pathForSoundName:v54];
    if ([v55 length])
    {
      v56 = [MEMORY[0x277CBEBC0] fileURLWithPath:v55];
      [v53 setExternalToneFileURL:v56];
    }

    else
    {
      v57 = v36;
      v58 = *MEMORY[0x277CE2080];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v179 = [(UNSDefaultDataProvider *)self sectionIdentifier];
        v182 = [v5 un_logDigest];
        *buf = 138543874;
        v220 = v179;
        v221 = 2114;
        v222 = v207;
        v223 = 2114;
        v224 = v182;
        _os_log_error_impl(&dword_270AA8000, v58, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to find sound %{public}@ for notification %{public}@", buf, 0x20u);
      }

      v36 = v57;
    }

    v54 = v207;
  }

  if (v49)
  {
    [v4 soundMaximumDuration];
    v60 = v59;
    v61 = 30.0;
    if (v60 != 0.0)
    {
      [v4 soundMaximumDuration];
      if (v61 > 30.0)
      {
        v61 = 30.0;
      }
    }

    [v53 setMaximumDuration:v61];
    [v53 setTopic:*MEMORY[0x277D71FD0]];
    v35 = v174;
    if (!v23)
    {
      goto LABEL_83;
    }

    goto LABEL_64;
  }

  v35 = v174;
  if (v23)
  {
    [v4 soundMaximumDuration];
    if (v62 != 0.0)
    {
      [v53 setMaximumDuration:?];
    }

LABEL_64:
    v63 = [v4 audioCategory];
    if ([v63 length])
    {
      [v53 setAudioCategory:v63];
    }

    v181 = v63;
    v64 = [v4 toneMediaLibraryItemIdentifier];
    if (v64)
    {
      [v53 setExternalToneMediaLibraryItemIdentifier:v64];
    }

    v65 = [v4 vibrationPatternFileURL];
    if (v65)
    {
      [v53 setExternalVibrationPatternFileURL:v65];
    }

    if ([v4 shouldSoundRepeat])
    {
      [v53 setShouldRepeat:1];
    }

    v66 = [v4 toneAlertTopic];
    if ([v66 length])
    {
      [v53 setTopic:v66];
    }

    v67 = [v4 toneIdentifier];
    if ([v67 length])
    {
      [v53 setToneIdentifier:v67];
    }

    v68 = [v4 toneFileURL];
    if (v68)
    {
      [v53 setExternalToneFileURL:v68];
    }

    v69 = [v4 vibrationIdentifier];
    if ([v69 length])
    {
      [v53 setVibrationIdentifier:v69];
    }

    if ([v4 shouldIgnoreAccessibilityDisabledVibrationSetting])
    {
      [v53 setShouldIgnoreAccessibilityDisabledVibrationSetting:1];
    }

    v5 = v166;
    v36 = v171;
    v35 = v174;
    v54 = v207;
  }

LABEL_83:
  v70 = [v4 audioVolume];
  v50 = v70;
  if ((v23 | v43))
  {
    if (v70)
    {
      [v70 floatValue];
      [v53 setAudioVolume:?];
    }

    if (([v4 shouldIgnoreRingerSwitch] | v43))
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

  v175 = v35;
  v71 = [v4 iconApplicationIdentifier];
  v72 = [v4 iconName];
  v73 = [v4 iconPath];
  v74 = [v4 iconSystemImageName];
  v75 = [v4 iconUTI];
  v76 = [v4 iconDateComponents];
  v77 = v76;
  if (v71)
  {
    v78 = [MEMORY[0x277CF3560] variantWithFormat:0 applicationIdentifier:v71];
  }

  else if (v73)
  {
    v78 = [MEMORY[0x277CF3560] variantWithFormat:0 imagePath:v73];
  }

  else
  {
    if (v72)
    {
      v141 = MEMORY[0x277CF3560];
      v178 = [(UNSDefaultDataProvider *)self bundle];
      v173 = [v178 bundlePath];
      v79 = [v141 variantWithFormat:0 imageName:v72 inBundleAtPath:v173];

      goto LABEL_96;
    }

    if (v74)
    {
      v78 = [MEMORY[0x277CF3560] variantWithFormat:0 systemImageName:v74];
    }

    else if (v75)
    {
      v78 = [MEMORY[0x277CF3560] variantWithFormat:0 uti:v75];
    }

    else
    {
      if (!v76)
      {
        v79 = 0;
        goto LABEL_96;
      }

      v78 = [MEMORY[0x277CF3560] variantWithFormat:0 dateComponentDetails:v76];
    }
  }

  v79 = v78;
LABEL_96:
  [v79 setPrecomposed:{objc_msgSend(v4, "iconShouldSuppressMask")}];
  if (v79)
  {
    v177 = objc_alloc_init(MEMORY[0x277CF3558]);
    [v177 addVariant:v79];
  }

  else
  {
    v177 = 0;
  }

  v5 = v166;
  v36 = v171;
  v35 = v175;
LABEL_100:
  if ([(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowPrivateProperties])
  {
    v80 = [v4 accessoryImageName];
    if (v80)
    {
      v176 = [MEMORY[0x277CF3538] imageWithName:v80 inBundlePath:0];
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

  v81 = v43 | v35;
  v82 = objc_alloc(MEMORY[0x277D77C98]);
  v83 = [(UNSDefaultDataProvider *)self bundle];
  v84 = [v82 initWithBundle:v83 categoryRepository:self->_categoryRepository];

  v147 = v84;
  v172 = [v84 notificationForNotificationRecord:v4];
  LODWORD(v84) = [(UNSDefaultDataProvider *)self _queue_supportsCriticalAlertsForSubsectionIDs:v36];
  v85 = [(UNSDefaultDataProvider *)self _queue_supportsTimeSensitiveAlertsforSubsectionIDs:v36];
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
  [v89 setFilterCriteria:v190];
  [v89 setScreenCaptureProhibited:v158];
  [v89 setSpeechLanguage:v189];
  [v89 setDateIsAllDay:v146];
  [v89 setExpirationDate:v185];
  [v89 setHeader:v188];
  [v89 setFooter:v187];
  [v89 setMessage:v206];
  if (v211)
  {
    v91 = [(UNSDefaultDataProvider *)self _safeAttributedMessageWithAttributedMessage:v211 contentType:v212];
    if (v91)
    {
      [v89 setAttributedMessage:v91];
    }

    else if (!v206)
    {
      v92 = [v211 string];
      [v89 setMessage:v92];
    }
  }

  [v89 setSection:v205];
  [v89 setSubtitle:v202];
  [v89 setTitle:v203];
  [v89 setSummaryArgument:v201];
  [v89 setSummaryArgumentCount:v169];
  [v89 setSound:v180];
  [v89 setIcon:v177];
  [v89 setHasSubordinateIcon:v145];
  [v89 setAccessoryImage:v176];
  [v89 setHasCriticalIcon:v43];
  [v89 setTurnsOnDisplay:v149];
  [v89 setIgnoresQuietMode:(v43 | v183) & 1];
  [v89 setIgnoresDowntime:v152];
  [v89 setPreemptsPresentedAlert:v81 & 1];
  [v89 setDisplaysActionsInline:v150];
  [v89 setUsesExternalSync:v154];
  [v89 setPublisherBulletinID:v5];
  [v89 setRecordID:v5];
  [v89 setDismissalID:v186];
  [v89 setCategoryID:v198];
  v93 = [(NSMutableDictionary *)self->_categoryToParamSubType objectForKey:v198];
  [v89 setSectionSubtype:{objc_msgSend(v93, "integerValue")}];

  [v89 setSilenceAction:v194];
  [v89 setThreadID:v213];
  [v89 setIntentIDs:v192];
  [v89 setSubsectionIDs:v36];
  [v89 setDateFormatStyle:1];
  [v89 setSupplementaryActions:v193];
  [v89 setWantsFullscreenPresentation:v162];
  [v89 setPreventAutomaticRemovalFromLockScreen:v43];
  [v89 setLockScreenPriority:v148];
  [v89 setBackgroundStyle:v160];
  [v89 setClearable:v156];
  if ([v4 pipelineState])
  {
    [v89 setIsHighlight:{objc_msgSend(v4, "isHighlight")}];
    v94 = [v4 summary];
    [v89 setSummary:v94];

    [v89 setPriorityNotificationStatus:{-[UNSDefaultDataProvider _bulletinPriorityStatusForNotificationPriorityStatus:](self, "_bulletinPriorityStatusForNotificationPriorityStatus:", objc_msgSend(v4, "priorityStatus"))}];
    [v89 setNotificationSummaryStatus:{-[UNSDefaultDataProvider _bulletinSummaryStatusForNotificationSummaryStatus:](self, "_bulletinSummaryStatusForNotificationSummaryStatus:", objc_msgSend(v4, "summaryStatus"))}];
    v95 = [v4 eventBehavior];
    [v89 setEventBehavior:v95];
  }

  summaryService = self->_summaryService;
  v97 = [v4 identifier];
  v98 = [(UNSDefaultDataProvider *)self sectionIdentifier];
  v99 = [(UNSSummaryServiceAdapter *)summaryService groupSummariesForNotificationIdentifier:v97 bundleIdentifier:v98];

  v100 = [v99 threadSummary];
  [v89 setThreadSummary:v100];

  v170 = v99;
  v101 = [v99 spotlightIdentifier];
  [v89 setSpotlightIdentifier:v101];

  v102 = MEMORY[0x277CE20A0];
  v103 = *MEMORY[0x277CE20A0];
  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
  {
    v104 = [v99 spotlightIdentifier];
    v105 = MEMORY[0x277CCABB0];
    v106 = [v99 threadSummary];
    v107 = [v105 numberWithInt:{objc_msgSend(v106, "length") != 0}];
    *buf = 138412546;
    v220 = v104;
    v221 = 2112;
    v222 = v107;
    _os_log_impl(&dword_270AA8000, v103, OS_LOG_TYPE_DEFAULT, "group summaries request for record with spotlightIdentifier: %@ hasThreadSummary: %@", buf, 0x16u);
  }

  v108 = *v102;
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
  {
    [(UNSDefaultDataProvider *)v170 _queue_bulletinForNotification:v89, v108];
  }

  v109 = v167;
  if (v208)
  {
    [v89 setContextValue:v208 forKey:@"audioVolume"];
  }

  if (v200)
  {
    [v89 setContextValue:v200 forKey:@"badge"];
  }

  if (v209)
  {
    [v89 setContextValue:v209 forKey:@"contentDate"];
  }

  [v89 setContextValue:v191 forKey:*MEMORY[0x277CF35D0]];
  if (v210)
  {
    [v89 setContextValue:v210 forKey:@"recordDate"];
  }

  v110 = [MEMORY[0x277CCABB0] numberWithBool:v183];
  [v89 setContextValue:v110 forKey:@"shouldIgnoreDoNotDisturb"];

  if (v167)
  {
    [v89 setContextValue:v167 forKey:@"targetContentIdentifier"];
  }

  v111 = v5;
  v112 = v171;
  if (v199)
  {
    [v89 setContextValue:v199 forKey:@"userInfo"];
  }

  [v89 setRealertCount:v164];
  v113 = [v172 request];
  v114 = [v113 content];
  v115 = [v114 attachments];

  if (v115)
  {
    [(UNSDefaultDataProvider *)self _addAttachments:v115 toBulletinRequest:v89];
  }

  v184 = v115;
  v116 = [v172 request];
  v117 = [v116 trigger];

  v5 = v111;
  v118 = v117;
  if (v117)
  {
    v119 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v117 requiringSecureCoding:1 error:0];
    [v89 setContextValue:v119 forKey:@"notificationTriggerData"];
  }

  v120 = [v172 request];
  v121 = [v120 content];
  v122 = [v121 communicationContext];

  v123 = v208;
  if (v122)
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
      v125 = [v122 recipients];
      v126 = [v125 countByEnumeratingWithState:&v214 objects:v218 count:16];
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
              objc_enumerationMutation(v125);
            }

            v130 = [(UNSDefaultDataProvider *)self _bbContactFromUNContact:*(*(&v214 + 1) + 8 * i)];
            [v124 addObject:v130];
          }

          v127 = [v125 countByEnumeratingWithState:&v214 objects:v218 count:16];
        }

        while (v127);
      }

      v131 = [v122 sender];

      if (v131)
      {
        v132 = [v122 sender];
        v133 = [(UNSDefaultDataProvider *)self _bbContactFromUNContact:v132];
      }

      else
      {
        v133 = 0;
      }

      v165 = v133;
      if ([v122 notifyRecipientAnyway])
      {
        v161 = [(UNSDefaultDataProvider *)self _isTCCUserAvailabilityGrantedForBundleId:v205];
      }

      else
      {
        v161 = 0;
      }

      v159 = MEMORY[0x277CF3548];
      v157 = [v122 identifier];
      v155 = [v122 bundleIdentifier];
      v153 = [v122 associatedObjectUri];
      v134 = [v122 displayName];
      v151 = [v122 contentURL];
      v135 = [v122 imageName];
      v136 = [v122 isSystemImage];
      v137 = [v122 mentionsCurrentUser];
      BYTE3(v142) = [v122 isReplyToCurrentUser];
      BYTE2(v142) = v161;
      BYTE1(v142) = v137;
      LOBYTE(v142) = v136;
      v138 = [v159 communicationContextWithIdentifier:v157 bundleIdentifier:v155 associatedObjectUri:v153 displayName:v134 sender:v165 recipients:v124 contentURL:v151 imageName:v135 systemImage:v142 mentionsCurrentUser:objc_msgSend(v122 notifyRecipientAnyway:"recipientCount") replyToCurrentUser:? recipientCount:?];

      [v138 setCapabilities:{objc_msgSend(v122, "capabilities") & 1}];
      [v138 setBusinessCorrespondence:{objc_msgSend(v122, "isBusinessCorrespondence")}];
      [v89 setCommunicationContext:v138];

      v109 = v167;
      v112 = v171;
      v123 = v208;
      v118 = v163;
    }

    v5 = v166;
  }

  v32 = v89;

LABEL_163:
LABEL_164:

  v139 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)_bbContentTypeFromUNContentType:(id)a3 toneAlertType:(int64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *MEMORY[0x277CF34B0];
  v8 = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowCalls];
  v9 = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowMessages];
  v10 = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowIntercom];
  if ([v6 isEqualToString:*MEMORY[0x277CE2158]])
  {
    if (v9)
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

  if ([v6 isEqualToString:*MEMORY[0x277CE2160]])
  {
    if (v9)
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

  if (![v6 isEqualToString:*MEMORY[0x277CE2150]])
  {
    if ([v6 isEqualToString:*MEMORY[0x277CE2168]])
    {
      if (v8)
      {
        v11 = MEMORY[0x277CF34D8];
        goto LABEL_39;
      }

      if (!os_log_type_enabled(*MEMORY[0x277CE2070], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }
    }

    else if ([v6 isEqualToString:*MEMORY[0x277CE2148]])
    {
      v12 = v8 ^ 1;
      if (a4 == 1)
      {
        v13 = v8 ^ 1;
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

      if (a4 == 1)
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
          v17 = [(UNSDefaultDataProvider *)self sectionIdentifier];
          v21 = 138543362;
          v22 = v17;
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

    else if ([v6 isEqualToString:*MEMORY[0x277CE2170]])
    {
      if (v8)
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
      if (![v6 isEqualToString:*MEMORY[0x277CE2138]])
      {
        goto LABEL_40;
      }

      if (v8)
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

  if (v10)
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

- (id)_bbContactFromUNContact:(id)a3
{
  v3 = a3;
  v4 = [v3 handleType];
  v5 = 2 * (v4 == 2);
  if (v4 == 1)
  {
    v5 = 1;
  }

  v18 = v5;
  v6 = MEMORY[0x277CF3528];
  v7 = [v3 handle];
  v8 = [v3 serviceName];
  v9 = [v3 displayName];
  v10 = [v3 isDisplayNameSuggested];
  v11 = [v3 customIdentifier];
  v12 = [v3 cnContactIdentifier];
  v13 = [v3 cnContactFullname];
  v14 = [v3 isCNContactIdentifierSuggested];

  LOBYTE(v17) = v14;
  v15 = [v6 contactWithHandle:v7 handleType:v18 serviceName:v8 displayName:v9 displayNameSuggested:v10 customIdentifier:v11 cnContactIdentifier:v12 cnContactFullname:v13 cnContactIdentifierSuggested:v17];

  return v15;
}

- (id)_safeAttributedMessageWithAttributedMessage:(id)a3 contentType:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v6 isEqualToString:*MEMORY[0x277CF34C8]] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277CF34D0]))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_queue_supportsCriticalAlertsForSubsectionIDs:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  [(UNSDefaultDataProvider *)self _queue_applicableSectionInfosForSubsectionIDs:a3];
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

- (BOOL)_queue_supportsTimeSensitiveAlertsforSubsectionIDs:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  [(UNSDefaultDataProvider *)self _queue_applicableSectionInfosForSubsectionIDs:a3];
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

- (id)_queue_applicableSectionInfosForSubsectionIDs:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(BBSectionInfo *)self->_effectiveSectionInfo subsections];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 subsectionID];
        v13 = [v4 containsObject:v12];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if (![v5 count] && self->_effectiveSectionInfo)
  {
    [v5 addObject:?];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_soundsDirectoryPathForContainerBasePath:(id)a3
{
  v3 = [a3 stringByStandardizingPath];
  v4 = [v3 stringByAppendingPathComponent:@"Library"];
  v5 = [v4 stringByAppendingPathComponent:@"Sounds"];

  return v5;
}

- (id)_pathForSoundName:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription dataContainerURL];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 path];
    v8 = [(UNSDefaultDataProvider *)self _soundsDirectoryPathForContainerBasePath:v7];

    v9 = [v8 stringByAppendingPathComponent:v4];
    v10 = [v9 stringByStandardizingPath];

    if ([(UNSDefaultDataProvider *)self _isResourceValidForPath:v10 withContainerPath:v8])
    {

      if (v10)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  v11 = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription groupContainerURLS];
  v12 = [v11 allValues];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = v12;
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

      v18 = [*(*(&v30 + 1) + 8 * v17) path];
      v19 = [v18 stringByStandardizingPath];
      v20 = [(UNSDefaultDataProvider *)self _soundsDirectoryPathForContainerBasePath:v19];

      v21 = [v20 stringByAppendingPathComponent:v4];
      v10 = [v21 stringByStandardizingPath];

      if ([(UNSDefaultDataProvider *)self _isResourceValidForPath:v10 withContainerPath:v20])
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

    if (v10)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_14:
  }

  v22 = [(UNSDefaultDataProvider *)self bundle];
  v23 = [v22 bundlePath];
  v24 = [v23 stringByStandardizingPath];

  v25 = [(UNSDefaultDataProvider *)self bundle];
  v26 = [v25 pathForResource:v4 ofType:0];
  v27 = [v26 stringByStandardizingPath];

  v10 = 0;
  if ([(UNSDefaultDataProvider *)self _isResourceValidForPath:v27 withContainerPath:v24])
  {
    v10 = v27;
  }

LABEL_19:
  v28 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)_isResourceValidForPath:(id)a3 withContainerPath:(id)a4
{
  v5 = a3;
  if ([v5 hasPrefix:a4] && (BSIsSymbolicLinkAtPath() & 1) == 0)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v7 fileExistsAtPath:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_defaultActionWithNotification:(id)a3
{
  v4 = a3;
  if (([v4 hasDefaultAction] & 1) != 0 || (-[UNCNotificationSourceDescription allowPrivateProperties](self->_notificationSourceDescription, "allowPrivateProperties") & 1) == 0)
  {
    v6 = [v4 defaultActionTitleLocalizationKey];
    v7 = [(UNSDefaultDataProvider *)self bundle];
    [v7 cfBundle];
    v8 = [v4 defaultActionTitle];
    v9 = UNFormatLocalizedStringInBundleWithDefaultValue();

    v5 = [MEMORY[0x277CF3500] actionWithIdentifier:*MEMORY[0x277CE20E8] title:v9];
    if ([(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowPrivateProperties])
    {
      v10 = [v4 defaultActionURL];
      [v5 setLaunchURL:v10];

      v11 = [v4 defaultActionBundleIdentifier];
      [v5 setLaunchBundleID:v11];

      [v5 setShouldDismissBulletin:{objc_msgSend(v4, "shouldPreventNotificationDismissalAfterDefaultAction") ^ 1}];
      [v5 setActivationMode:{objc_msgSend(v4, "shouldBackgroundDefaultAction")}];
      [v5 setAuthenticationRequired:{objc_msgSend(v4, "shouldAuthenticateDefaultAction")}];
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

- (id)_dismissActionForCategory:(id)a3
{
  if ([a3 hasCustomDismissAction])
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

- (id)_followActivityActionForCategory:(id)a3
{
  if ([a3 hasFollowActivityAction] && ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl()))
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

- (id)_silenceActionForCategory:(id)a3
{
  if ([a3 hasCustomSilenceAction] && -[UNCNotificationSourceDescription allowPrivateProperties](self->_notificationSourceDescription, "allowPrivateProperties"))
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

- (id)_supplementaryActionsForForCategoryRecord:(id)a3
{
  v4 = [a3 actions];
  v5 = [v4 bs_first:10];

  v6 = [(UNSDefaultDataProvider *)self _actionsFromActionRecords:v5];

  return v6;
}

- (id)_allCategories
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription defaultCategories];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v23 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  categoryRepository = self->_categoryRepository;
  v10 = [(UNSDefaultDataProvider *)self sectionIdentifier];
  v11 = [(UNSNotificationCategoryRepository *)categoryRepository categoriesForBundleIdentifier:v10];

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

        [v3 addObject:{*(*(&v19 + 1) + 8 * j), v19}];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_categoryForIdentifier:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
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
          v11 = [v10 identifier];
          v12 = [v4 isEqual:v11];

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
    v14 = [(UNSDefaultDataProvider *)self sectionIdentifier];
    v15 = [(UNSNotificationCategoryRepository *)categoryRepository categoriesForBundleIdentifier:v14];

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
          v22 = [v21 identifier];
          v23 = [v4 isEqual:v22];

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

- (id)_actionsFromActionRecords:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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
        [v5 bs_safeAddObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_actionFromActionRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 titleLocalizationKey];
  v7 = [v4 titleLocalizationArguments];
  v8 = [(UNSDefaultDataProvider *)self bundle];
  [v8 cfBundle];
  v9 = [v4 title];
  v10 = UNFormatLocalizedStringInBundleWithDefaultValue();

  v11 = [MEMORY[0x277CF3500] actionWithIdentifier:v5 title:v10];
  [v11 setActivationMode:{objc_msgSend(v4, "isForeground") ^ 1}];
  [v11 setAuthenticationRequired:{objc_msgSend(v4, "isAuthenticationRequired")}];
  if ([(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowPrivateProperties])
  {
    v12 = [v4 url];
    [v11 setLaunchURL:v12];

    [v11 setShouldDismissBulletin:{objc_msgSend(v4, "shouldPreventNotificationDismiss") ^ 1}];
  }

  if ([v4 isDestructive])
  {
    v13 = [v11 appearance];
    [v13 setStyle:1];
  }

  v14 = [v4 actionType];
  v15 = [v14 isEqualToString:*MEMORY[0x277D77D68]];

  if (v15)
  {
    v16 = [(UNSDefaultDataProvider *)self bundle];
    [v16 cfBundle];

    v17 = [v4 textInputButtonTitleLocalizationKey];
    v18 = [v4 textInputButtonTitleLocalizationArguments];
    v19 = [v4 textInputButtonTitle];
    v20 = UNFormatLocalizedStringInBundleWithDefaultValue();

    v21 = [v4 textInputPlaceholderLocalizationKey];
    v22 = [v4 textInputPlaceholderLocalizationArguments];
    v23 = [v4 textInputPlaceholder];
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

  v26 = [v4 iconImageName];
  v27 = [v26 length];

  if (v27)
  {
    v28 = [v4 iconImageName];
    if (v28)
    {
      if ([v4 hasSystemIcon])
      {
        v29 = 0;
      }

      else
      {
        v31 = [(UNSDefaultDataProvider *)self bundle];
        v29 = [v31 bundlePath];
      }

      v30 = [MEMORY[0x277CF3538] imageWithName:v28 inBundlePath:v29];
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

  v32 = [v11 appearance];
  [v32 setImage:v30];

  return v11;
}

- (id)_allBulletinsWithMaxCount:(unint64_t)a3 sinceDate:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = [(UNSDefaultDataProvider *)self notificationRecords];
  v9 = self;
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = v8;
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

      v14 = [v13 shouldHideDate];
      if (!v6 || (v14 & 1) != 0)
      {
        break;
      }

      v15 = [v13 contentDate];
      if (!v15)
      {
        v15 = [v13 date];
      }

      v16 = v15;
      v17 = [v6 isAfterDate:v15];

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

    v18 = [(UNSDefaultDataProvider *)v9 _queue_bulletinForNotification:v13];
    v19 = [v18 message];
    if (![v19 length])
    {
      v20 = [v18 subtitle];
      if (![v20 length])
      {
        [v18 title];
        v22 = v6;
        v23 = v10;
        v24 = v9;
        v25 = a3;
        v27 = v26 = v7;
        v32 = [v27 length];

        v7 = v26;
        a3 = v25;
        v9 = v24;
        v10 = v23;
        v6 = v22;
        v11 = v31;

        if (!v32)
        {
LABEL_19:
          if (a3 && [v7 count] == a3)
          {

            goto LABEL_29;
          }

          goto LABEL_22;
        }

LABEL_16:
        v21 = [v18 publisherBulletinID];
        if (([v10 containsObject:v21] & 1) == 0)
        {
          [v7 addObject:v18];
          [v10 addObject:v21];
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
  v3 = [(UNSDefaultDataProvider *)self sectionIdentifier];
  v4 = [(UNCNotificationRepository *)notificationRepository notificationRecordsForBundleIdentifier:v3];

  return v4;
}

- (id)bulletinsWithRequestParameters:(id)a3 lastCleared:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if ([v5 publisherDestination] == 2)
  {
    v6 = [v5 maximumCount];
    v7 = [v5 sinceDate];
    v8 = [(UNSDefaultDataProvider *)self _allBulletinsWithMaxCount:v6 sinceDate:v7];

    v9 = *MEMORY[0x277CE2080];
    if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [(UNSDefaultDataProvider *)self sectionIdentifier];
      v12 = [v8 count];
      v13 = [v5 sinceDate];
      *buf = 138544130;
      v39 = v11;
      v40 = 2048;
      v41 = v12;
      v42 = 2114;
      v43 = v13;
      v44 = 2048;
      v45 = [v5 maximumCount];
      _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Returning %ld bulletins since %{public}@ (max %ld)", buf, 0x2Au);
    }

    if (UNCUseGroupService())
    {
      v32 = v5;
      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v15 = objc_alloc(MEMORY[0x277D77C80]);
      v16 = [(UNSDefaultDataProvider *)self bundle];
      v17 = [v15 initWithBundle:v16];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = v8;
      v18 = [v8 allObjects];
      v19 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
              objc_enumerationMutation(v18);
            }

            v23 = [*(*(&v33 + 1) + 8 * i) categoryID];
            if (v23)
            {
              v24 = [v14 objectForKey:v23];

              if (!v24)
              {
                v25 = [(UNSDefaultDataProvider *)self _categoryForIdentifier:v23];
                if (v25)
                {
                  v26 = [v17 notificationCategoryForNotificationCategoryRecord:v25];
                  [v14 bs_setSafeObject:v26 forKey:v23];
                }
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v20);
      }

      v27 = [(BBSectionInfo *)self->_effectiveSectionInfo uns_notificationSettings];
      v8 = v31;
      v28 = [v31 allObjects];
      [UNSNotificationPipelineAdapter addInitialBulletins:v28 categories:v14 sourceDescription:self->_notificationSourceDescription settings:v27];

      v5 = v32;
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
  v3 = [(BBSectionInfo *)self->_effectiveSectionInfo sectionID];
  v4 = [v2 applicationWithBundleIdentifier:v3];

  if ([v4 isHidden])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isLocked];
  }

  return v5;
}

- (id)clearedInfoAndBulletinsForClearingAllBulletinsWithLimit:(unint64_t)a3 lastClearedInfo:(id)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v6 = [(UNSDefaultDataProvider *)self _allBulletinsWithMaxCount:a3 sinceDate:0];
  notificationRepository = self->_notificationRepository;
  v8 = [(UNSDefaultDataProvider *)self sectionIdentifier];
  [(UNCNotificationRepository *)notificationRepository removeAllNotificationRecordsForBundleIdentifier:v8];

  v13[0] = *MEMORY[0x277CF34F0];
  v9 = [MEMORY[0x277CBEB68] null];
  v13[1] = *MEMORY[0x277CF34E8];
  v14[0] = v9;
  v14[1] = v6;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)clearedInfoForBulletins:(id)a3 lastClearedInfo:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v6 = *MEMORY[0x277CE2080];
  if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(UNSDefaultDataProvider *)self sectionIdentifier];
    *buf = 138543618;
    v26 = v8;
    v27 = 2048;
    v28 = [v5 count];
    _os_log_impl(&dword_270AA8000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Clear %ld bulletins", buf, 0x16u);
  }

  v9 = [MEMORY[0x277CBEB58] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v5;
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

        v15 = [*(*(&v20 + 1) + 8 * v14) publisherBulletinID];
        [v9 addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  notificationRepository = self->_notificationRepository;
  v17 = [(UNSDefaultDataProvider *)self sectionIdentifier];
  [(UNCNotificationRepository *)notificationRepository removeNotificationRecordsForIdentifiers:v9 bundleIdentifier:v17];

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

- (void)setEffectiveSectionInfo:(id)a3
{
  v5 = a3;
  p_effectiveSectionInfo = &self->_effectiveSectionInfo;
  effectiveSectionInfo = self->_effectiveSectionInfo;
  v15 = v5;
  if (effectiveSectionInfo)
  {
    v8 = [(BBSectionInfo *)effectiveSectionInfo isEqual:v5];
    objc_storeStrong(&self->_effectiveSectionInfo, a3);
    if (v8)
    {
      goto LABEL_8;
    }

    if ([(UNCNotificationSourceDescription *)self->_notificationSourceDescription daemonShouldReceiveNotificationSettingsUpdates])
    {
      daemonLauncher = self->_daemonLauncher;
      v10 = [(BBSectionInfo *)self->_effectiveSectionInfo uns_notificationSettings];
      v11 = [(BBSectionInfo *)self->_effectiveSectionInfo sectionID];
      [(UNSDaemonLauncher *)daemonLauncher didChangeSettings:v10 forBundleIdentifier:v11];
    }

    notificationRepository = self->_notificationRepository;
    v13 = [(BBSectionInfo *)self->_effectiveSectionInfo sectionID];
    [(UNCNotificationRepository *)notificationRepository removeInvalidNotificationRecordsForBundleIdentifier:v13];
  }

  else
  {
    v14 = v5;
    v13 = *p_effectiveSectionInfo;
    *p_effectiveSectionInfo = v14;
  }

LABEL_8:
}

- (id)sectionBundlePath
{
  v2 = [(UNCNotificationSourceDescription *)self->_notificationSourceDescription bundleURL];
  v3 = [v2 path];

  return v3;
}

- (void)handleBulletinActionResponse:(id)a3 withCompletion:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CE2080];
  v9 = *MEMORY[0x277CE2080];
  if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(UNSDefaultDataProvider *)self sectionIdentifier];
    v12 = [v6 bulletinPublisherID];
    v13 = [v12 un_logDigest];
    v14 = [v6 actionID];
    v28 = 138544130;
    v29 = v11;
    v30 = 2114;
    v31 = v13;
    v32 = 2114;
    v33 = v14;
    v34 = 2048;
    v35 = [v6 actionType];
    _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received response to %{public}@ for action %{public}@ (%ld)  ", &v28, 0x2Au);
  }

  v15 = [v6 actionType];
  if (v15 > 0xB)
  {
    goto LABEL_15;
  }

  if (((1 << v15) & 0xD82) != 0)
  {
    [(UNSDefaultDataProvider *)self _handleBulletinActionResponse:v6 withCompletion:v7];
    goto LABEL_6;
  }

  if (v15 == 5)
  {
    v17 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [(UNSDefaultDataProvider *)self sectionIdentifier];
      v20 = [v6 bulletinPublisherID];
      v21 = [v20 un_logDigest];
      v22 = [v6 actionID];
      v23 = [v6 actionType];
      v28 = 138544130;
      v29 = v19;
      v30 = 2114;
      v31 = v21;
      v32 = 2114;
      v33 = v22;
      v34 = 2048;
      v35 = v23;
      _os_log_impl(&dword_270AA8000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing record with identifier %{public}@ from notification repository for action %{public}@ (%ld)  ", &v28, 0x2Au);
    }

    v24 = [v6 bulletinPublisherID];
    if (v24)
    {
      notificationRepository = self->_notificationRepository;
      v26 = [MEMORY[0x277CBEB98] setWithObject:v24];
      v27 = [(UNSDefaultDataProvider *)self sectionIdentifier];
      [(UNCNotificationRepository *)notificationRepository removeNotificationRecordsForIdentifiers:v26 bundleIdentifier:v27];
    }

    if (v7)
    {
      v7[2](v7, 1);
    }
  }

  else
  {
LABEL_15:
    if (v7)
    {
      v7[2](v7, 0);
    }
  }

LABEL_6:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleBulletinActionResponse:(id)a3 withCompletion:(id)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(UNSDefaultDataProvider *)self sectionIdentifier];
  v54 = [v6 actionID];
  v9 = [v6 actionType];
  v49 = [v6 context];
  v10 = [v49 objectForKey:*MEMORY[0x277CF35D8]];
  v47 = [v6 actionActivationMode];
  v53 = [v6 originID];
  v52 = [v6 endpoint];
  notificationRepository = self->_notificationRepository;
  v12 = [v6 bulletinPublisherID];
  v13 = [(UNCNotificationRepository *)notificationRepository notificationRecordForIdentifier:v12 bundleIdentifier:v8];

  v50 = v10;
  v14 = [v10 objectForKey:*MEMORY[0x277CE2178]];
  v15 = v8;
  v16 = [v13 defaultActionBundleIdentifier];
  v17 = v15;
  v51 = v14;
  if (v16)
  {
    if ([(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowAlternateLaunchBundleIdentifiers])
    {
      v17 = v16;

      v18 = *MEMORY[0x277CE2080];
      if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_ERROR))
      {
        loga = v18;
        v43 = [(UNSDefaultDataProvider *)self sectionIdentifier];
        v19 = [v6 bulletinPublisherID];
        *buf = 138543874;
        v61 = v43;
        v62 = 2114;
        v63 = v19;
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
        v22 = [(UNSDefaultDataProvider *)self bundle];
        v23 = [v21 initWithBundle:v22 categoryRepository:self->_categoryRepository];

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
        v37 = [(UNSDefaultDataProvider *)self sectionIdentifier];
        v38 = [v6 bulletinPublisherID];
        *buf = 138543874;
        v61 = v37;
        v62 = 2114;
        v63 = v38;
        v64 = 2114;
        v65 = v16;
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
    log = v7;
    v40 = [v39 sourceIdentifier];
    v41 = [v15 isEqualToString:v40];

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

    v7 = log;
  }

  else
  {
    v24 = 0;
  }

LABEL_9:

  if (v24)
  {
    v25 = v7;
    switch(v9)
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
        v28 = v54;
        goto LABEL_18;
    }

    v27 = *v26;

    v28 = v27;
LABEL_18:
    v55 = v28;
    if ([v6 actionBehavior] == 1)
    {
      v29 = [v50 objectForKey:*MEMORY[0x277CF35E0]];
      v30 = [MEMORY[0x277CE2018] responseWithNotification:v24 actionIdentifier:v28 originIdentifier:v53 targetConnectionEndpoint:v52 userText:v29];
    }

    else
    {
      v30 = [MEMORY[0x277CE1FC8] responseWithNotification:v24 actionIdentifier:v28 originIdentifier:v53 targetConnectionEndpoint:v52];
    }

    v7 = v25;
    if (v47)
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

    else if ([v6 didOpenApplication])
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
      v32 = [v31 content];
      v48 = [v32 launchImageName];

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
      v7 = logb;
      [(UNSApplicationLauncher *)v34 foregroundLaunchApplication:v58 withResponse:v57 launchImageName:v48 origin:v53 endpoint:v52 completionHandler:v56];
    }

    v35 = v55;
    goto LABEL_39;
  }

LABEL_35:
  if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_ERROR))
  {
    [UNSDefaultDataProvider _handleBulletinActionResponse:withCompletion:];
  }

  v35 = v54;
  if (v7)
  {
    (v7[2].isa)(v7, 0);
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

- (id)_unarchiveNotificationFromData:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  if (v3)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v3 error:0];
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

- (void)notificationRepository:(id)a3 didDiscoverContentOnFirstUnlockForBundleIdentifier:(id)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__UNSDefaultDataProvider_notificationRepository_didDiscoverContentOnFirstUnlockForBundleIdentifier___block_invoke;
  block[3] = &unk_279E10988;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)notificationRepository:(id)a3 didPerformUpdates:(id)a4 forBundleIdentifier:(id)a5
{
  v6 = a4;
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__UNSDefaultDataProvider_notificationRepository_didPerformUpdates_forBundleIdentifier___block_invoke;
  v9[3] = &unk_279E104B8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, v9);
}

- (void)categoryRepository:(id)a3 didChangeCategoriesForBundleIdentifier:(id)a4
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

- (void)topicRepository:(id)a3 didChangeTopicsForBundleIdentifier:(id)a4
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

- (void)summaryServiceAdapter:(id)a3 didReceiveGroupSummariesForNotificationIdentifiers:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __99__UNSDefaultDataProvider_summaryServiceAdapter_didReceiveGroupSummariesForNotificationIdentifiers___block_invoke;
  v8[3] = &unk_279E104B8;
  v9 = v5;
  v10 = self;
  v7 = v5;
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

- (void)_queue_notificationRepositoryDidPerformUpdates:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
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
        v11 = [v10 notificationRecord];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v10 shouldRepost] & 1) == 0 && -[UNCNotificationSourceDescription allowPrivateProperties](self->_notificationSourceDescription, "allowPrivateProperties"))
        {
          [(UNSDefaultDataProvider *)self _queue_modifyBulletinForNotification:v11];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [v10 shouldRepost];
            }

            else
            {
              v12 = 1;
            }

            [(UNSDefaultDataProvider *)self _queue_addBulletinForNotification:v11 shouldRepost:v12];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[UNSDefaultDataProvider _queue_withdrawBulletinForNotification:shouldSync:](self, "_queue_withdrawBulletinForNotification:shouldSync:", v11, [v10 shouldSync]);
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

- (void)_queue_fetchBulletinForNotification:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  if (v5)
  {
    v6 = [(UNSDefaultDataProvider *)self _destinationsForNotification:v4];
    v7 = *MEMORY[0x277CE2080];
    if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [(UNSDefaultDataProvider *)self sectionIdentifier];
      v10 = [v4 identifier];
      v11 = [v10 un_logDigest];
      v12 = BBPublisherDestinationStrings();
      v16 = 138544130;
      v17 = v9;
      v18 = 2114;
      v19 = v11;
      v20 = 2048;
      v21 = v6;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_270AA8000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fetching notification %{public}@ destinations %ld: %{public}@", &v16, 0x2Au);
    }

    v13 = [(UNSDefaultDataProvider *)self _queue_bulletinForNotification:v4];
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

- (void)_queue_modifyBulletinForNotification:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (![v4 pipelineState])
  {
    v5 = [v4 identifier];
    if (v5)
    {
      v26 = [(UNSDefaultDataProvider *)self _categoryForNotification:v4];
      v6 = [(UNSDefaultDataProvider *)self _destinationsForNotification:v4];
      v7 = MEMORY[0x277CE2080];
      v8 = *MEMORY[0x277CE2080];
      if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = [(UNSDefaultDataProvider *)self sectionIdentifier];
        v11 = [v4 identifier];
        v12 = [v11 un_logDigest];
        v13 = BBPublisherDestinationStrings();
        *buf = 138544130;
        v32 = v10;
        v33 = 2114;
        v34 = v12;
        v35 = 2048;
        v36 = v6;
        v37 = 2114;
        v38 = v13;
        _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Modifying notification %{public}@ destinations %ld: %{public}@", buf, 0x2Au);
      }

      v14 = [(UNSDefaultDataProvider *)self _queue_bulletinForNotification:v4];
      v15 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = [(UNSDefaultDataProvider *)self sectionIdentifier];
        v18 = [v4 identifier];
        v19 = [v18 un_logDigest];
        *buf = 138543618;
        v32 = v17;
        v33 = 2114;
        v34 = v19;
        _os_log_impl(&dword_270AA8000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting modify notification pipeline for %{public}@", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v20 = objc_alloc_init(MEMORY[0x277D77C90]);
      v21 = [(BBSectionInfo *)self->_effectiveSectionInfo uns_notificationSettings];
      notificationSourceDescription = self->_notificationSourceDescription;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __63__UNSDefaultDataProvider__queue_modifyBulletinForNotification___block_invoke;
      v27[3] = &unk_279E10AB8;
      v27[4] = self;
      v28 = v4;
      objc_copyWeak(&v30, buf);
      v23 = v20;
      v29 = v23;
      [UNSNotificationPipelineAdapter updateBulletin:v14 category:v26 destinations:v6 sourceDescription:notificationSourceDescription settings:v21 completion:v27];

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

- (void)_queue_addBulletinForNotification:(id)a3 shouldRepost:(BOOL)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (![v6 pipelineState])
  {
    v31 = a4;
    v32 = [(UNSDefaultDataProvider *)self _categoryForNotification:v6];
    v33 = [(UNSDefaultDataProvider *)self _destinationsForNotification:v6];
    v7 = *MEMORY[0x277CE2080];
    if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
    {
      log = v7;
      v29 = [(UNSDefaultDataProvider *)self sectionIdentifier];
      v30 = [v6 identifier];
      v27 = [v30 un_logDigest];
      v8 = [v6 hasAlertContent];
      v9 = [v6 shouldPresentAlert];
      v10 = [v6 hasSound];
      v11 = [v6 shouldPlaySound];
      v12 = [v6 interruptionLevel];
      v13 = BBPublisherDestinationStrings();
      v14 = [v6 contentDate];
      v15 = [v14 un_logString];
      *buf = 138545666;
      v40 = v29;
      v41 = 2114;
      v42 = v27;
      v43 = 1024;
      v44 = v8;
      v45 = 1024;
      v46 = v9;
      v47 = 1024;
      v48 = v10;
      v49 = 1024;
      v50 = v11;
      v51 = 2048;
      v52 = v12;
      v53 = 2048;
      v54 = v33;
      v55 = 2114;
      v56 = v13;
      v57 = 2114;
      v58 = v15;
      _os_log_impl(&dword_270AA8000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] Adding notification %{public}@ [ hasAlertContent: %d, shouldPresentAlert: %d hasSound: %d shouldPlaySound: %d ]; interruption-level: %lu; destinations %ld: %{public}@; contentDate: %{public}@", buf, 0x56u);
    }

    if (v33)
    {
      v16 = [(UNSDefaultDataProvider *)self _queue_bulletinForNotification:v6];
      v17 = *MEMORY[0x277CE2080];
      if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = [(UNSDefaultDataProvider *)self sectionIdentifier];
        v20 = [v6 identifier];
        v21 = [v20 un_logDigest];
        *buf = 138543618;
        v40 = v19;
        v41 = 2114;
        v42 = v21;
        _os_log_impl(&dword_270AA8000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting add notification pipeline for %{public}@", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v22 = objc_alloc_init(MEMORY[0x277D77C90]);
      v23 = [(BBSectionInfo *)self->_effectiveSectionInfo uns_notificationSettings];
      notificationSourceDescription = self->_notificationSourceDescription;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __73__UNSDefaultDataProvider__queue_addBulletinForNotification_shouldRepost___block_invoke;
      v34[3] = &unk_279E10B08;
      v34[4] = self;
      v35 = v6;
      objc_copyWeak(&v37, buf);
      v38 = v31;
      v25 = v22;
      v36 = v25;
      [UNSNotificationPipelineAdapter createBulletin:v16 category:v32 destinations:v33 sourceDescription:notificationSourceDescription settings:v23 completion:v34];

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

- (void)_queue_withdrawBulletinForNotification:(id)a3 shouldSync:(BOOL)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [v6 identifier];
  v8 = MEMORY[0x277CE2080];
  v9 = *MEMORY[0x277CE2080];
  v10 = *MEMORY[0x277CE2080];
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
      v12 = [(UNSDefaultDataProvider *)self sectionIdentifier];
      v13 = [v7 un_logDigest];
      *buf = 138543618;
      v31 = v12;
      v32 = 2114;
      v33 = v13;
      _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Withdrawing notification %{public}@", buf, 0x16u);
    }

    v14 = [(UNSDefaultDataProvider *)self _queue_bulletinForNotification:v6];
    v15 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [(UNSDefaultDataProvider *)self sectionIdentifier];
      v18 = [v6 identifier];
      v19 = [v18 un_logDigest];
      *buf = 138543618;
      v31 = v17;
      v32 = 2114;
      v33 = v19;
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
    v25 = v6;
    objc_copyWeak(&v28, buf);
    v26 = v7;
    v29 = a4;
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

- (id)_categoryForNotification:(id)a3
{
  v4 = [a3 categoryIdentifier];
  v5 = [(UNSDefaultDataProvider *)self _categoryForIdentifier:v4];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D77C80]);
    v7 = [(UNSDefaultDataProvider *)self bundle];
    v8 = [v6 initWithBundle:v7];

    v9 = [v8 notificationCategoryForNotificationCategoryRecord:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)_destinationsForNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 categoryIdentifier];
  v6 = [(UNSDefaultDataProvider *)self _categoryForIdentifier:v5];

  v7 = [v4 presentationOptions];
  v8 = [MEMORY[0x277CF0CA8] sharedInstance];
  v9 = [v8 deviceClass];

  v10 = v9 != 4;
  if (![v4 shouldPresentAlert] || !objc_msgSend(v4, "hasAlertContent"))
  {
    if ([v4 shouldPlaySound])
    {
      v20 = [v4 hasSound];
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_21;
  }

  v11 = v7 & 0x14;
  v12 = v10 & (v7 >> 3) | (v7 >> 2) & 1;
  v13 = v7 & 0xC;
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

    v20 = v19 | 0x80;
    if (![v6 shouldAllowInCarPlay])
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

  v14 = v11 != 0;
  if ([v4 allowsAlertDestination])
  {
    v15 = 8 * v14;
  }

  else
  {
    v15 = 0;
  }

  if (([v4 allowsLockScreenDestination] & v12) != 0)
  {
    v16 = v15 | 4;
  }

  else
  {
    v16 = v15;
  }

  v17 = [v4 allowsNotificationCenterDestination];
  v18 = v16 | 2;
  if (!v13)
  {
    v18 = v16;
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = v16;
  }

  v20 = v19 | 0x80;
  if ([v6 shouldAllowInCarPlay] && objc_msgSend(v4, "allowsCarPlayDestination"))
  {
LABEL_37:
    if (![(UNSDefaultDataProvider *)self _isAppProtectionActive])
    {
      v20 = v19 | 0xC0;
    }
  }

LABEL_21:
  if ([(UNCNotificationSourceDescription *)self->_notificationSourceDescription allowPrivateProperties])
  {
    v21 = [v4 topicIdentifiers];
  }

  else
  {
    v21 = 0;
  }

  if ([v4 hasCriticalAlertSound])
  {
    if ([(UNSDefaultDataProvider *)self _queue_supportsCriticalAlertsForSubsectionIDs:v21])
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

  return v22 | v20;
}

- (void)_addAttachments:(id)a3 toBulletinRequest:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
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

        v14 = [v11 options];
        v15 = [v14 displayLocation];

        v16 = [v11 options];
        v17 = [v16 displayLocation] == 1;

        v18 = objc_alloc_init(MEMORY[0x277CF3540]);
        [v18 setType:v13];
        v19 = [v11 URL];
        [v18 setURL:v19];

        v20 = [v11 identifier];
        [v18 setIdentifier:v20];

        v21 = [v11 type];
        [v18 setUniformType:v21];

        v22 = [v11 options];
        v23 = [v22 thumbnailGeneratorUserInfo];
        [v18 setThumbnailGeneratorUserInfo:v23];

        [v18 setThumbnailHidden:v15 == 2];
        [v18 setHiddenFromDefaultExpandedView:v17];
        v24 = [v6 primaryAttachment];

        if (v24 || v15 == 2)
        {
          v25 = [v6 additionalAttachments];
          v26 = v25;
          if (v25)
          {
            v27 = v25;
          }

          else
          {
            v27 = [MEMORY[0x277CBEA60] array];
          }

          v28 = v27;

          v29 = [v28 arrayByAddingObject:v18];

          [v6 setAdditionalAttachments:v29];
        }

        else
        {
          [v6 setPrimaryAttachment:v18];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)_sectionIconVariantForApplicationIdentifier:(id)a3 format:(int64_t)a4
{
  v5 = a3;
  if ([v5 length])
  {
    v6 = [MEMORY[0x277CF3560] variantWithFormat:a4 applicationIdentifier:v5];
    [v6 setPrecomposed:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_sectionIconVariantForUTI:(id)a3 format:(int64_t)a4
{
  v5 = a3;
  if ([v5 length])
  {
    v6 = [MEMORY[0x277CF3560] variantWithFormat:a4 uti:v5];
    [v6 setPrecomposed:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_sectionIconForNotificationSourceDescription:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleURL];
  v50 = [v5 path];

  v6 = [v4 suppressIconMask];
  v7 = [v4 iconApplicationIdentifier];
  v8 = [v4 iconUTI];
  v49 = v8;
  if ([v7 length])
  {
    v9 = [(UNSDefaultDataProvider *)self _sectionIconVariantForApplicationIdentifier:v7 format:0];
  }

  else
  {
    if (![v8 length])
    {
      [v4 defaultIconFile];
      v30 = v48 = v7;
      v70 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:v30 bundlePath:v50 format:0 precomposed:v6];

      v31 = [v4 subordinateIconFile];
      v68 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:v31 bundlePath:v50 format:26 precomposed:v6];

      v32 = [v4 carPlayIconFile];
      v66 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:v32 bundlePath:v50 format:14 precomposed:v6];

      v33 = [v4 settingsIconFile];
      v64 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:v33 bundlePath:v50 format:1 precomposed:v6];

      v34 = [v4 settingsSheetIconFile];
      v62 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:v34 bundlePath:v50 format:17 precomposed:v6];

      v35 = [v4 watchQuickLookSmallIconFile];
      v60 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:v35 bundlePath:v50 format:2 precomposed:v6];

      v36 = [v4 watchQuickLookLargeIconFile];
      v58 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:v36 bundlePath:v50 format:4 precomposed:v6];

      v37 = [v4 watchListSmallIconFile];
      v56 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:v37 bundlePath:v50 format:10 precomposed:v6];

      v38 = [v4 watchListLargeIconFile];
      v54 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:v38 bundlePath:v50 format:12 precomposed:v6];

      v39 = [v4 watchQuickLook394hIconFile];
      v52 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:v39 bundlePath:v50 format:4 precomposed:v6];

      v40 = [v4 watchQuickLook448hIconFile];
      v47 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:v40 bundlePath:v50 format:15 precomposed:v6];

      v41 = [v4 watchList394hIconFile];
      v20 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:v41 bundlePath:v50 format:12 precomposed:v6];

      v42 = [v4 watchList448hIconFile];
      v21 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:v42 bundlePath:v50 format:18 precomposed:v6];

      v43 = [v4 watchQuickLook430hIconFile];
      v22 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:v43 bundlePath:v50 format:4 precomposed:v6];

      v44 = [v4 watchQuickLook484hIconFile];
      v23 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:v44 bundlePath:v50 format:22 precomposed:v6];

      v45 = [v4 watchList430hIconFile];
      v24 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:v45 bundlePath:v50 format:12 precomposed:v6];

      v46 = [v4 watchList484hIconFile];
      v25 = [(UNSDefaultDataProvider *)self _sectionIconVariantForImageName:v46 bundlePath:v50 format:20 precomposed:v6];

      v19 = v47;
      v7 = v48;
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

    v9 = [(UNSDefaultDataProvider *)self _sectionIconVariantForUTI:v8 format:0];
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

- (unint64_t)_bulletinInterruptionLevelForInterruptionLevel:(unint64_t)a3
{
  if (a3 - 1 >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (unint64_t)_bulletinPriorityStatusForNotificationPriorityStatus:(unint64_t)a3
{
  if (a3 - 1 >= 5)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (unint64_t)_notificationRecordPriorityStatusForBulletinStatus:(unint64_t)a3
{
  if (a3 - 1 >= 5)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (unint64_t)_bulletinSummaryStatusForNotificationSummaryStatus:(unint64_t)a3
{
  if (a3 - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (unint64_t)_notificationRecordSummaryStatusForBulletinStatus:(unint64_t)a3
{
  if (a3 - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (BOOL)_isTCCUserAvailabilityGrantedForBundleId:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CE2070];
  v6 = *MEMORY[0x277CE2070];
  if (os_log_type_enabled(*MEMORY[0x277CE2070], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v4;
    _os_log_impl(&dword_270AA8000, v6, OS_LOG_TYPE_DEFAULT, "Looking up User Availability permission for bundleId: %{public}@", &v12, 0xCu);
  }

  if ([v4 length])
  {
    v7 = [(UNSDefaultDataProvider *)self _userAvailabilityTCCApprovedBundleIds];
    v8 = [v7 containsObject:v4];
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
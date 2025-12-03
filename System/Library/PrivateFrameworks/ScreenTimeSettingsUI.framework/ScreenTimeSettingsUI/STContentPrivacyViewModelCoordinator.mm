@interface STContentPrivacyViewModelCoordinator
+ (NSSet)_remoteDeviceRestrictions;
+ (id)_coreAnalyticsEventWithRestrictionsEnabled:(BOOL)enabled valuesByRestriction:(id)restriction userType:(unint64_t)type userIsManaged:(BOOL)managed;
+ (id)_localDeviceRestrictions;
+ (id)appRatingsRestrictionItem;
+ (id)visibleRestrictionsForIsLocalDevice:(BOOL)device;
- (STContentPrivacyViewModelCoordinator)initWithPersistenceController:(id)controller organizationSettingsRestrictionUtility:(id)utility userDSID:(id)d userName:(id)name currentAccountIsProto:(BOOL)proto loadCompletionHandler:(id)handler;
- (STContentPrivacyViewModelCoordinator)initWithPersistenceController:(id)controller userDSID:(id)d userName:(id)name currentAccountIsProto:(BOOL)proto;
- (STContentPrivacyViewModelCoordinator)initWithPersistenceController:(id)controller userDSID:(id)d userName:(id)name currentAccountIsProto:(BOOL)proto loadCompletionHandler:(id)handler;
- (id)_createUnrestrictedConfigurationForUser:(id)user withType:(id)type;
- (id)_restrictionsForWebFilterState:(unint64_t)state;
- (id)_valueForMCFeature:(id)feature;
- (id)_valueForSBCapability:(id)capability;
- (id)_valueForWebFilterState;
- (id)_valueInConfiguration:(id)configuration keyPath:(id)path;
- (id)_valuesByRestriction;
- (id)_visibleRestrictions;
- (id)createValuesForRestrictions:(id)restrictions multiplayerRestriction:(id)restriction;
- (id)valueForRestriction:(id)restriction;
- (void)_registerForPersistentStoreNotifications;
- (void)_reportCoreAnalyticsEventForChangedCommunicationLimits:(id)limits userType:(unint64_t)type userIsRemote:(BOOL)remote;
- (void)_reportCoreAnalyticsEventWithRestrictionsEnabled:(BOOL)enabled valuesByRestriction:(id)restriction userType:(unint64_t)type userIsManaged:(BOOL)managed;
- (void)_setValue:(id)value forMCFeature:(id)feature;
- (void)_setValue:(id)value forSBCapability:(id)capability;
- (void)_updateConfiguration:(id)configuration keyPath:(id)path value:(id)value;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)loadValuesByRestrictionWithCompletionHandler:(id)handler;
- (void)loadViewModelWithCompletionHandler:(id)handler;
- (void)reloadViewModelForRemoteChanges;
- (void)saveCommunicationLimits:(id)limits completionHandler:(id)handler;
- (void)saveContentPrivacyEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)saveRestrictionValue:(id)value forItem:(id)item completionHandler:(id)handler;
- (void)saveSiriImageGenerationIsAllowed:(BOOL)allowed completionHandler:(id)handler;
- (void)saveValuesForRestrictions:(id)restrictions completionHandler:(id)handler;
@end

@implementation STContentPrivacyViewModelCoordinator

- (STContentPrivacyViewModelCoordinator)initWithPersistenceController:(id)controller userDSID:(id)d userName:(id)name currentAccountIsProto:(BOOL)proto
{
  protoCopy = proto;
  dCopy = d;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __110__STContentPrivacyViewModelCoordinator_initWithPersistenceController_userDSID_userName_currentAccountIsProto___block_invoke;
  v14[3] = &unk_279B7D488;
  v15 = dCopy;
  selfCopy = self;
  v11 = dCopy;
  v12 = [(STContentPrivacyViewModelCoordinator *)selfCopy initWithPersistenceController:controller userDSID:v11 userName:name currentAccountIsProto:protoCopy loadCompletionHandler:v14];

  return v12;
}

void __110__STContentPrivacyViewModelCoordinator_initWithPersistenceController_userDSID_userName_currentAccountIsProto___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = +[STUILog persistence];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __110__STContentPrivacyViewModelCoordinator_initWithPersistenceController_userDSID_userName_currentAccountIsProto___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = +[STUILog contentPrivacy];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) userName];
      v8 = [*(a1 + 40) isLocalDevice];
      v9 = 138412802;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      v13 = 1026;
      v14 = v8;
      _os_log_impl(&dword_264BA2000, v5, OS_LOG_TYPE_DEFAULT, "Editing Content & Privacy for user %@ name %@ on local device %{public}d", &v9, 0x1Cu);
    }
  }
}

- (STContentPrivacyViewModelCoordinator)initWithPersistenceController:(id)controller userDSID:(id)d userName:(id)name currentAccountIsProto:(BOOL)proto loadCompletionHandler:(id)handler
{
  protoCopy = proto;
  handlerCopy = handler;
  nameCopy = name;
  dCopy = d;
  controllerCopy = controller;
  v16 = objc_opt_new();
  v17 = [objc_alloc(MEMORY[0x277D4BA10]) initWithPersistenceController:controllerCopy restrictionPayloadUtility:v16];
  v18 = [(STContentPrivacyViewModelCoordinator *)self initWithPersistenceController:controllerCopy organizationSettingsRestrictionUtility:v17 userDSID:dCopy userName:nameCopy currentAccountIsProto:protoCopy loadCompletionHandler:handlerCopy];

  return v18;
}

- (STContentPrivacyViewModelCoordinator)initWithPersistenceController:(id)controller organizationSettingsRestrictionUtility:(id)utility userDSID:(id)d userName:(id)name currentAccountIsProto:(BOOL)proto loadCompletionHandler:(id)handler
{
  controllerCopy = controller;
  utilityCopy = utility;
  dCopy = d;
  nameCopy = name;
  handlerCopy = handler;
  v37.receiver = self;
  v37.super_class = STContentPrivacyViewModelCoordinator;
  v20 = [(STContentPrivacyViewModelCoordinator *)&v37 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_persistenceController, controller);
    objc_storeStrong(&v21->_organizationSettingsRestrictionUtility, utility);
    v21->_currentAccountIsProto = proto;
    v22 = [dCopy copy];
    userDSID = v21->_userDSID;
    v21->_userDSID = v22;

    v24 = [nameCopy copy];
    userName = v21->_userName;
    v21->_userName = v24;

    v21->_isLocalDevice = 0;
    v26 = objc_opt_new();
    viewModel = v21->_viewModel;
    v21->_viewModel = v26;

    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __171__STContentPrivacyViewModelCoordinator_initWithPersistenceController_organizationSettingsRestrictionUtility_userDSID_userName_currentAccountIsProto_loadCompletionHandler___block_invoke;
    v34 = &unk_279B7D4B0;
    v36 = handlerCopy;
    v28 = v21;
    v35 = v28;
    [(STContentPrivacyViewModelCoordinator *)v28 loadViewModelWithCompletionHandler:&v31];
    [(STContentPrivacyViewModelCoordinator *)v28 _registerForPersistentStoreNotifications:v31];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v28 selector:sel__contactStoreDidChange_ name:*MEMORY[0x277CBD140] object:0];
  }

  return v21;
}

void __171__STContentPrivacyViewModelCoordinator_initWithPersistenceController_organizationSettingsRestrictionUtility_userDSID_userName_currentAccountIsProto_loadCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4, 0, a2);
  }

  else
  {
    v5 = [*(a1 + 32) viewModel];
    (*(v2 + 16))(v2, v5, 0);
  }
}

+ (id)appRatingsRestrictionItem
{
  v2 = [[STRestrictionItem alloc] initWithConfiguration:@"system.ratings" restrictionKey:@"ratingApps" labelName:@"AppsSpecifierName" type:3 restrictionValue:0];

  return v2;
}

+ (NSSet)_remoteDeviceRestrictions
{
  v85[18] = *MEMORY[0x277D85DE8];
  autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  countryCode = [autoupdatingCurrentLocale countryCode];
  if (!countryCode)
  {
    v4 = +[STUILog contentPrivacy];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[(STContentPrivacyViewModelCoordinator *)v4];
    }
  }

  v5 = [countryCode isEqual:@"CN"];
  v6 = @"MusicPodcastsNewsWorkoutsSpecifierName";
  if (v5)
  {
    v6 = @"MusicPodcastsWorkoutsSpecifierName";
  }

  v78 = v6;

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isChinaRegionCellularDevice = [currentDevice sf_isChinaRegionCellularDevice];

  v82 = *MEMORY[0x277D4BC70];
  v83 = [MEMORY[0x277CBEB58] setWithCapacity:80];
  v76 = [[STRestrictionItem alloc] initWithConfiguration:@"application.store" restrictionKey:@"allowAppInstallation" labelName:@"InstallingAppsSpecifierName" type:0 restrictionValue:0];
  v85[0] = v76;
  v74 = [[STRestrictionItem alloc] initWithConfiguration:@"application.store" restrictionKey:@"allowUIAppInstallation" labelName:@"InstallingUIAppsSpecifierName" type:0 restrictionValue:0];
  v85[1] = v74;
  v72 = [[STRestrictionItem alloc] initWithConfiguration:@"application.store" restrictionKey:@"allowMarketplaceAppInstallation" labelName:@"InstallingMarketplaceAppsSpecifierName" type:0 restrictionValue:0];
  v85[2] = v72;
  v70 = [[STRestrictionItem alloc] initWithConfiguration:@"application.store" restrictionKey:@"allowWebDistributionAppInstallation" labelName:@"InstallingWebDistributionAppsSpecifierName" type:0 restrictionValue:0];
  v85[3] = v70;
  v68 = [[STRestrictionItem alloc] initWithConfiguration:@"application.store" restrictionKey:@"allowAppRemoval" labelName:@"DeletingAppsSpecifierName" type:0 restrictionValue:0];
  v85[4] = v68;
  v66 = [[STRestrictionItem alloc] initWithConfiguration:@"application.store" restrictionKey:@"allowInAppPurchases" labelName:@"IAPSpecifierName" type:0 restrictionValue:0];
  v85[5] = v66;
  v64 = [[STRestrictionItem alloc] initWithConfiguration:@"application.store" restrictionKey:@"forceITunesStorePasswordEntry" labelName:@"RequirePasswordLabel" type:1 restrictionValue:0];
  v85[6] = v64;
  v62 = [[STRestrictionItem alloc] initWithConfiguration:@"legacy.restrictions.apps" restrictionKey:@"blacklistedAppBundleIDs" labelName:&stru_28766E5A8 type:2 restrictionValue:0];
  v85[7] = v62;
  v60 = [[STRestrictionItem alloc] initWithConfiguration:@"legacy.restrictions.apps" restrictionKey:@"allowiTunes" labelName:&stru_28766E5A8 type:0 restrictionValue:0];
  v85[8] = v60;
  v58 = [[STRestrictionItem alloc] initWithConfiguration:@"legacy.restrictions.apps" restrictionKey:@"allowNews" labelName:&stru_28766E5A8 type:0 restrictionValue:0];
  v85[9] = v58;
  v8 = [[STRestrictionItem alloc] initWithConfiguration:@"legacy.restrictions.apps" restrictionKey:@"allowSafari" labelName:&stru_28766E5A8 type:0 restrictionValue:0];
  v85[10] = v8;
  v9 = [[STRestrictionItem alloc] initWithConfiguration:@"legacy.restrictions.apps" restrictionKey:@"allowPodcasts" labelName:&stru_28766E5A8 type:0 restrictionValue:0];
  v85[11] = v9;
  v10 = [[STRestrictionItem alloc] initWithConfiguration:@"legacy.restrictions.apps" restrictionKey:@"allowVideoConferencing" labelName:&stru_28766E5A8 type:0 restrictionValue:0];
  v85[12] = v10;
  v11 = [[STRestrictionItem alloc] initWithConfiguration:@"legacy.restrictions.apps" restrictionKey:@"allowGroupActivity" labelName:&stru_28766E5A8 type:0 restrictionValue:0];
  v85[13] = v11;
  v12 = [[STRestrictionItem alloc] initWithConfiguration:@"media.settings" restrictionKey:@"allowBookstore" labelName:@"iBookstoreSpecifierName" type:0 restrictionValue:0];
  v85[14] = v12;
  v13 = [[STRestrictionItem alloc] initWithConfiguration:@"system.camera" restrictionKey:@"allowCamera" labelName:&stru_28766E5A8 type:0 restrictionValue:0];
  v85[15] = v13;
  v14 = [[STRestrictionItem alloc] initWithConfiguration:@"system.airdrop" restrictionKey:@"allowAirDrop" labelName:@"AirDropSpecifierName" type:0 restrictionValue:0];
  v85[16] = v14;
  v15 = [[STRestrictionItem alloc] initWithConfiguration:@"system.carplay" restrictionKey:@"allowVehicleUI" labelName:@"CarPlaySpecifierName" type:0 restrictionValue:0];
  v85[17] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:18];
  [v83 addObjectsFromArray:v16];

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v17 = [STRestrictionItem alloc];
    mEMORY[0x277D4BA40] = [MEMORY[0x277D4BA40] sharedRatings];
    preferredRegion = [mEMORY[0x277D4BA40] preferredRegion];
    v20 = [(STRestrictionItem *)v17 initWithConfiguration:@"system.ratings" restrictionKey:@"ratingRegion" labelName:@"RatingForSpecifierName" type:3 restrictionValue:preferredRegion];
    [v83 addObject:v20];
  }

  if (sf_isChinaRegionCellularDevice)
  {
    v21 = @"AADC_WirelessChangesSpecifierName";
  }

  else
  {
    v21 = @"AADC_CellularChangesSpecifierName";
  }

  v81 = [[STRestrictionItem alloc] initWithConfiguration:@"system.ratings" restrictionKey:@"allowExplicitContent" labelName:v78 type:0 restrictionValue:0];

  v84[0] = v81;
  v79 = [[STRestrictionItem alloc] initWithConfiguration:@"system.music" restrictionKey:@"allowMusicVideos" labelName:@"MusicVideosSpecifierName" type:0 restrictionValue:0];
  v84[1] = v79;
  v77 = [[STRestrictionItem alloc] initWithConfiguration:@"system.music" restrictionKey:@"allowMusicArtistActivity" labelName:@"MusicProfilesSpecifierName" type:0 restrictionValue:0];
  v84[2] = v77;
  v75 = [[STRestrictionItem alloc] initWithConfiguration:@"system.ratings" restrictionKey:@"ratingMovies" labelName:@"MoviesSpecifierName" type:3 restrictionValue:&unk_28769D1D8];
  v84[3] = v75;
  v73 = [[STRestrictionItem alloc] initWithConfiguration:@"system.ratings" restrictionKey:@"allowShowingUndownloadedMovies" labelName:@"UndownloadedMoviesSpecifierName" type:0 restrictionValue:0];
  v84[4] = v73;
  v71 = [[STRestrictionItem alloc] initWithConfiguration:@"system.ratings" restrictionKey:@"ratingTVShows" labelName:@"TVSpecifierName" type:3 restrictionValue:&unk_28769D1D8];
  v84[5] = v71;
  v69 = [[STRestrictionItem alloc] initWithConfiguration:@"system.ratings" restrictionKey:@"allowShowingUndownloadedTV" labelName:@"UndownloadedTVSpecifierName" type:0 restrictionValue:0];
  v84[6] = v69;
  v67 = [[STRestrictionItem alloc] initWithConfiguration:@"media.settings" restrictionKey:@"allowBookstoreErotica" labelName:@"BooksSpecifierName" type:0 restrictionValue:0];
  v84[7] = v67;
  v65 = [[STRestrictionItem alloc] initWithConfiguration:@"system.ratings" restrictionKey:@"ratingApps" labelName:@"AppsSpecifierName" type:3 restrictionValue:v82];
  v84[8] = v65;
  v63 = [[STRestrictionItem alloc] initWithConfiguration:@"application.store" restrictionKey:@"allowAppClips" labelName:@"AppClipsSpecifierName" type:0 restrictionValue:0];
  v84[9] = v63;
  v61 = [[STRestrictionItem alloc] initWithConfiguration:@"STCustomRestrictionConfiguration" restrictionKey:@"STCustomRestrictionWebFilterState" labelName:@"WebContentSpecifierName" type:3 restrictionValue:&unk_28769D1F0];
  v84[10] = v61;
  v59 = [[STRestrictionItem alloc] initWithConfiguration:@"system.webcontentfilter.basic" restrictionKey:@"useContentFilter" labelName:@"LimitAdultWebsitesSpecifierName" type:1 restrictionValue:0];
  v84[11] = v59;
  v57 = [[STRestrictionItem alloc] initWithConfiguration:@"system.webcontentfilter.basic" restrictionKey:@"whiteListEnabled" labelName:@"AllowedWebsitesSpecifierName" type:1 restrictionValue:0];
  v84[12] = v57;
  v56 = [[STRestrictionItem alloc] initWithConfiguration:@"system.webcontentfilter.basic" restrictionKey:@"siteWhiteList" labelName:@"AADC_OnlyAllowLabel" type:2 restrictionValue:0];
  v84[13] = v56;
  v55 = [[STRestrictionItem alloc] initWithConfiguration:@"system.webcontentfilter.basic" restrictionKey:@"filterWhiteList" labelName:@"AlwaysAllowLabel" type:2 restrictionValue:0];
  v84[14] = v55;
  v54 = [[STRestrictionItem alloc] initWithConfiguration:@"system.webcontentfilter.basic" restrictionKey:@"filterBlackList" labelName:@"NeverAllowLabel" type:2 restrictionValue:0];
  v84[15] = v54;
  v53 = [[STRestrictionItem alloc] initWithConfiguration:@"system.gamecenter" restrictionKey:@"allowMultiplayerGaming" labelName:@"MultiplayerGamesSpecifierName" type:0 restrictionValue:0];
  v84[16] = v53;
  v52 = [[STRestrictionItem alloc] initWithConfiguration:@"system.gamecenter" restrictionKey:@"allowedGameCenterOtherPlayerTypes" labelName:@"MultiplayerGamesSpecifierName" type:3 restrictionValue:&unk_28769D208];
  v84[17] = v52;
  v51 = [[STRestrictionItem alloc] initWithConfiguration:@"system.gamecenter" restrictionKey:@"allowAddingGameCenterFriends" labelName:@"AddingFriendsSpecifierName" type:0 restrictionValue:0];
  v84[18] = v51;
  v50 = [[STRestrictionItem alloc] initWithConfiguration:@"system.gamecenter" restrictionKey:@"allowGameCenterFriendsSharingModification" labelName:@"ConnectWithFriendsSpecifierName" type:0 restrictionValue:0];
  v84[19] = v50;
  v49 = [[STRestrictionItem alloc] initWithConfiguration:@"system.camera" restrictionKey:@"allowScreenRecording" labelName:@"ScreenRecordingSpecifierName" type:0 restrictionValue:0];
  v84[20] = v49;
  v48 = [[STRestrictionItem alloc] initWithConfiguration:@"system.gamecenter" restrictionKey:@"allowGameCenterNearbyMultiplayer" labelName:@"NearbyMultiplayerSpecifierName" type:0 restrictionValue:0];
  v84[21] = v48;
  v47 = [[STRestrictionItem alloc] initWithConfiguration:@"system.gamecenter" restrictionKey:@"allowGameCenterPrivateMessaging" labelName:@"PrivateMessagingSpecifierName" type:0 restrictionValue:0];
  v84[22] = v47;
  v46 = [[STRestrictionItem alloc] initWithConfiguration:@"system.gamecenter" restrictionKey:@"allowGameCenterProfilePrivacyModification" labelName:@"ProfilePrivacyChangesSpecifierName" type:0 restrictionValue:0];
  v84[23] = v46;
  v45 = [[STRestrictionItem alloc] initWithConfiguration:@"system.gamecenter" restrictionKey:@"allowGameCenterProfileModification" labelName:@"AvatarNicknameChangesSpecifierName" type:0 restrictionValue:0];
  v84[24] = v45;
  v44 = [[STRestrictionItem alloc] initWithConfiguration:@"system.siri" restrictionKey:@"allowAssistant" labelName:&stru_28766E5A8 type:0 restrictionValue:0];
  v84[25] = v44;
  v43 = [[STRestrictionItem alloc] initWithConfiguration:@"system.siri" restrictionKey:@"allowDictation" labelName:&stru_28766E5A8 type:0 restrictionValue:0];
  v84[26] = v43;
  v42 = [[STRestrictionItem alloc] initWithConfiguration:@"system.siri" restrictionKey:@"allowAssistantUserGeneratedContent" labelName:@"WebSearchContentSpecifierName" type:0 restrictionValue:0];
  v84[27] = v42;
  v41 = [[STRestrictionItem alloc] initWithConfiguration:@"system.siri" restrictionKey:@"forceAssistantProfanityFilter" labelName:@"ExplicitLanguageSpecifierName" type:1 restrictionValue:0];
  v84[28] = v41;
  v40 = [[STRestrictionItem alloc] initWithConfiguration:@"system.siri" restrictionKey:@"allowMathPaperSolving" labelName:&stru_28766E5A8 type:0 restrictionValue:0];
  v84[29] = v40;
  v39 = [[STRestrictionItem alloc] initWithConfiguration:@"system.siri" restrictionKey:@"allowKeyboardMathSolving" labelName:&stru_28766E5A8 type:0 restrictionValue:0];
  v84[30] = v39;
  v38 = [[STRestrictionItem alloc] initWithConfiguration:@"system.siri" restrictionKey:@"allowWritingTools" labelName:@"WritingToolsSpecifierName" type:0 restrictionValue:0];
  v84[31] = v38;
  v37 = [[STRestrictionItem alloc] initWithConfiguration:@"system.siri" restrictionKey:@"allowExternalIntelligenceIntegrations" labelName:@"IntelligenceExtensionsSpecifierName" type:0 restrictionValue:0];
  v84[32] = v37;
  v36 = [[STRestrictionItem alloc] initWithConfiguration:@"STCustomRestrictionConfiguration" restrictionKey:@"STCustomRestrictionSiriDictation" labelName:@"SiriDictationSpecifierName" type:0 restrictionValue:0];
  v84[33] = v36;
  v35 = [[STRestrictionItem alloc] initWithConfiguration:@"STCustomRestrictionConfiguration" restrictionKey:@"STCustomRestrictionMathResults" labelName:@"MathResultsSpecifierName" type:0 restrictionValue:0];
  v84[34] = v35;
  v34 = [[STRestrictionItem alloc] initWithConfiguration:@"system.icloud" restrictionKey:@"allowFindMyFriendsModification" labelName:@"ShareLocationSpecifierName" type:0 restrictionValue:0];
  v84[35] = v34;
  v33 = [[STRestrictionItem alloc] initWithConfiguration:@"passcode.settings" restrictionKey:@"allowPasscodeModification" labelName:@"AADC_PasscodeAndFaceIDSpecifierName" type:0 restrictionValue:0];
  v84[36] = v33;
  v22 = [[STRestrictionItem alloc] initWithConfiguration:@"account.settings" restrictionKey:@"allowAccountModification" labelName:@"AADC_AccountChangesSpecifierName" type:0 restrictionValue:0];
  v84[37] = v22;
  v23 = [[STRestrictionItem alloc] initWithConfiguration:@"system.music" restrictionKey:@"allowSpeakerVolumeLimitModification" labelName:@"SpeakerVolumeLimitModificationSpecifier" type:0 restrictionValue:0];
  v84[38] = v23;
  v24 = [[STRestrictionItem alloc] initWithConfiguration:@"STCustomRestrictionConfiguration" restrictionKey:@"STCustomRestrictionCellularData" labelName:v21 type:0 restrictionValue:0];
  v84[39] = v24;
  v25 = [[STRestrictionItem alloc] initWithConfiguration:@"network.cellular.settings" restrictionKey:@"allowAppCellularDataModification" labelName:&stru_28766E5A8 type:0 restrictionValue:0];
  v84[40] = v25;
  v26 = [[STRestrictionItem alloc] initWithConfiguration:@"network.cellular.settings" restrictionKey:@"allowCellularPlanModification" labelName:&stru_28766E5A8 type:0 restrictionValue:0];
  v84[41] = v26;
  v27 = [[STRestrictionItem alloc] initWithConfiguration:@"system.donotdisturb" restrictionKey:@"allowDriverDoNotDisturbModifications" labelName:@"DrivingFocusSpecifierName" type:0 restrictionValue:0];
  v84[42] = v27;
  v28 = [[STRestrictionItem alloc] initWithConfiguration:@"system.tvprovider" restrictionKey:@"allowTVProviderModification" labelName:@"TVProviderSpecifierName" type:0 restrictionValue:0];
  v84[43] = v28;
  v29 = [[STRestrictionItem alloc] initWithConfiguration:@"application.settings" restrictionKey:@"allowAutomaticAppUpdatesModification" labelName:@"AADC_BackgroundAppActivitiesSpecifierName" type:0 restrictionValue:0];
  v84[44] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:45];
  [v83 addObjectsFromArray:v30];

  v31 = [v83 copy];

  return v31;
}

+ (id)_localDeviceRestrictions
{
  v18[12] = *MEMORY[0x277D85DE8];
  v15 = MEMORY[0x277CBEB98];
  v17 = [[STRestrictionItem alloc] initWithConfiguration:@"STSBCapabilityConfiguration" restrictionKey:@"location" labelName:@"LocationServicesSpecifierName" type:0 restrictionValue:0];
  v18[0] = v17;
  v16 = [[STRestrictionItem alloc] initWithConfiguration:@"STSBCapabilityConfiguration" restrictionKey:@"kTCCServiceAddressBook" labelName:@"ContactsSpecifierName" type:0 restrictionValue:0];
  v18[1] = v16;
  v14 = [[STRestrictionItem alloc] initWithConfiguration:@"STSBCapabilityConfiguration" restrictionKey:@"kTCCServiceCalendar" labelName:@"CalendarsSpecifierName" type:0 restrictionValue:0];
  v18[2] = v14;
  v13 = [[STRestrictionItem alloc] initWithConfiguration:@"STSBCapabilityConfiguration" restrictionKey:@"kTCCServiceReminders" labelName:@"RemindersSpecifierName" type:0 restrictionValue:0];
  v18[3] = v13;
  v2 = [[STRestrictionItem alloc] initWithConfiguration:@"STSBCapabilityConfiguration" restrictionKey:@"kTCCServicePhotos" labelName:@"PhotosSpecifierName" type:0 restrictionValue:0];
  v18[4] = v2;
  v3 = [[STRestrictionItem alloc] initWithConfiguration:@"STSBCapabilityConfiguration" restrictionKey:@"kTCCServiceBluetoothAlways" labelName:@"BluetoothSharingSpecifierName" type:0 restrictionValue:0];
  v18[5] = v3;
  v4 = [[STRestrictionItem alloc] initWithConfiguration:@"STSBCapabilityConfiguration" restrictionKey:@"kTCCServiceMicrophone" labelName:@"MicrophoneSpecifierName" type:0 restrictionValue:0];
  v18[6] = v4;
  v5 = [[STRestrictionItem alloc] initWithConfiguration:@"STSBCapabilityConfiguration" restrictionKey:@"kTCCServiceSpeechRecognition" labelName:@"SpeechRecognitionSpecifierName" type:0 restrictionValue:0];
  v18[7] = v5;
  v6 = [[STRestrictionItem alloc] initWithConfiguration:@"STSBCapabilityConfiguration" restrictionKey:@"advertising" labelName:@"AdvertisingSpecifierName" type:0 restrictionValue:0];
  v18[8] = v6;
  v7 = [[STRestrictionItem alloc] initWithConfiguration:@"STSBCapabilityConfiguration" restrictionKey:@"kTCCServiceMediaLibrary" labelName:@"MediaAppleMusicSpecifierName" type:0 restrictionValue:0];
  v18[9] = v7;
  v8 = [[STRestrictionItem alloc] initWithConfiguration:@"system.web.tracking" restrictionKey:@"forceLimitAdTracking" labelName:@"UserTrackingSpecifierName" type:1 restrictionValue:0];
  v18[10] = v8;
  v9 = [[STRestrictionItem alloc] initWithConfiguration:@"STSBCapabilityConfiguration" restrictionKey:@"volumeLimit" labelName:@"ReduceLoudAudioSpecifierName" type:0 restrictionValue:0];
  v18[11] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:12];
  v11 = [v15 setWithArray:v10];

  return v11;
}

- (id)_visibleRestrictions
{
  v3 = objc_opt_class();
  isLocalDevice = [(STContentPrivacyViewModelCoordinator *)self isLocalDevice];

  return [v3 visibleRestrictionsForIsLocalDevice:isLocalDevice];
}

+ (id)visibleRestrictionsForIsLocalDevice:(BOOL)device
{
  deviceCopy = device;
  v4 = MEMORY[0x277CBEB58];
  v5 = +[STContentPrivacyViewModelCoordinator _remoteDeviceRestrictions];
  v6 = [v4 setWithSet:v5];

  if (deviceCopy)
  {
    v7 = +[STContentPrivacyViewModelCoordinator _localDeviceRestrictions];
    [v6 unionSet:v7];
  }

  return v6;
}

- (id)_valueForMCFeature:(id)feature
{
  featureCopy = feature;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [mEMORY[0x277D262A0] effectiveValueForSetting:featureCopy];

  v6 = +[STUILog contentPrivacy];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [STContentPrivacyViewModelCoordinator _valueForMCFeature:];
  }

  return v5;
}

- (void)_setValue:(id)value forMCFeature:(id)feature
{
  valueCopy = value;
  featureCopy = feature;
  v7 = +[STUILog contentPrivacy];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [STContentPrivacyViewModelCoordinator _setValue:forMCFeature:];
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] setBoolValue:objc_msgSend(valueCopy forSetting:{"BOOLValue"), featureCopy}];
}

- (id)_valueForSBCapability:(id)capability
{
  capabilityCopy = capability;
  v4 = CFPreferencesCopyAppValue(*MEMORY[0x277D4BC80], *MEMORY[0x277D4BC88]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = 0;
  }

  v5 = [v4 containsObject:capabilityCopy];
  v6 = +[STUILog contentPrivacy];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [STContentPrivacyViewModelCoordinator _valueForSBCapability:];
  }

  if (v5)
  {
    v7 = MEMORY[0x277CBEC28];
  }

  else
  {
    v7 = MEMORY[0x277CBEC38];
  }

  v8 = v7;

  return v7;
}

- (void)_setValue:(id)value forSBCapability:(id)capability
{
  valueCopy = value;
  capabilityCopy = capability;
  v8 = +[STUILog contentPrivacy];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [STContentPrivacyViewModelCoordinator _setValue:forSBCapability:];
  }

  v9 = *MEMORY[0x277D4BC80];
  v10 = *MEMORY[0x277D4BC88];
  v11 = CFPreferencesCopyAppValue(*MEMORY[0x277D4BC80], *MEMORY[0x277D4BC88]);
  if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v11 = MEMORY[0x277CBEBF8];
  }

  v12 = [MEMORY[0x277CBEB58] setWithArray:v11];
  if ([valueCopy BOOLValue])
  {
    [v12 removeObject:capabilityCopy];
  }

  else
  {
    [v12 addObject:capabilityCopy];
  }

  if ([v12 count])
  {
    v13 = *MEMORY[0x277CBED28];
  }

  else
  {
    v13 = 0;
  }

  allObjects = [v12 allObjects];

  CFPreferencesSetAppValue(v9, allObjects, v10);
  CFPreferencesSetAppValue(*MEMORY[0x277D4BC90], v13, v10);
  CFPreferencesAppSynchronize(v10);
  notify_post("com.apple.locationd/Restrictions");
  notify_post("com.apple.Preferences.ChangedRestrictionsEnabledStateNotification");
  v15 = [v11 containsObject:capabilityCopy];
  viewModel = [(STContentPrivacyViewModelCoordinator *)self viewModel];
  if (![viewModel hasPasscode] || !objc_msgSend(capabilityCopy, "isEqualToString:", @"location"))
  {
    goto LABEL_16;
  }

  bOOLValue = [valueCopy BOOLValue];

  if (v15 == bOOLValue)
  {
    [valueCopy BOOLValue];
    viewModel = objc_opt_new();
    v18 = objc_opt_new();
    [viewModel postNotificationForContext:v18];

LABEL_16:
  }
}

- (id)_valueForWebFilterState
{
  v25 = *MEMORY[0x277D85DE8];
  isRestrictAdultContentEnabledValue = [(STContentPrivacyViewModelCoordinator *)self isRestrictAdultContentEnabledValue];
  bOOLValue = [isRestrictAdultContentEnabledValue BOOLValue];

  if (bOOLValue)
  {
    isRestrictAdultContentEnabledValue2 = [(STContentPrivacyViewModelCoordinator *)self isRestrictAdultContentEnabledValue];
    isRestrictAdultContentEnabledValue3 = [(STContentPrivacyViewModelCoordinator *)self isRestrictAdultContentEnabledValue];
  }

  else
  {
    v7 = [[STRestrictionItem alloc] initWithConfiguration:@"system.webcontentfilter.basic" restrictionKey:@"restrictWeb" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
    isRestrictAdultContentEnabledValue2 = [(STContentPrivacyViewModelCoordinator *)self valueForRestriction:v7];

    v8 = [[STRestrictionItem alloc] initWithConfiguration:@"system.webcontentfilter.basic" restrictionKey:@"useContentFilter" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
    isRestrictAdultContentEnabledValue3 = [(STContentPrivacyViewModelCoordinator *)self valueForRestriction:v8];
  }

  v9 = [[STRestrictionItem alloc] initWithConfiguration:@"system.webcontentfilter.basic" restrictionKey:@"whiteListEnabled" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
  v10 = [(STContentPrivacyViewModelCoordinator *)self valueForRestriction:v9];

  if ([isRestrictAdultContentEnabledValue2 BOOLValue])
  {
    if ([isRestrictAdultContentEnabledValue3 BOOLValue] && !objc_msgSend(v10, "BOOLValue"))
    {
      v15 = &unk_28769D220;
    }

    else
    {
      if (([isRestrictAdultContentEnabledValue3 BOOLValue] & 1) != 0 || (objc_msgSend(v10, "BOOLValue") & 1) == 0)
      {
        configurationPayloadsByType = [(STContentPrivacyViewModelCoordinator *)self configurationPayloadsByType];
        v12 = [configurationPayloadsByType objectForKeyedSubscript:@"system.webcontentfilter.basic"];

        serialize = [v12 serialize];
        v14 = +[STUILog contentPrivacy];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          v17 = 138544130;
          v18 = isRestrictAdultContentEnabledValue2;
          v19 = 2114;
          v20 = isRestrictAdultContentEnabledValue3;
          v21 = 2114;
          v22 = v10;
          v23 = 2112;
          v24 = serialize;
          _os_log_fault_impl(&dword_264BA2000, v14, OS_LOG_TYPE_FAULT, "Unknown web filter state\n%{public}@ %{public}@ %{public}@ %@", &v17, 0x2Au);
        }
      }

      v15 = &unk_28769D238;
    }
  }

  else
  {
    v15 = &unk_28769D1F0;
  }

  return v15;
}

- (id)_restrictionsForWebFilterState:(unint64_t)state
{
  v51[3] = *MEMORY[0x277D85DE8];
  switch(state)
  {
    case 2uLL:
      v14 = [[STRestrictionItem alloc] initWithConfiguration:@"system.webcontentfilter.basic" restrictionKey:@"restrictWeb" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
      v46[0] = v14;
      v15 = MEMORY[0x277CBEC38];
      v47[0] = MEMORY[0x277CBEC38];
      v16 = [[STRestrictionItem alloc] initWithConfiguration:@"system.webcontentfilter.basic" restrictionKey:@"useContentFilter" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
      v46[1] = v16;
      v47[1] = MEMORY[0x277CBEC28];
      v17 = [[STRestrictionItem alloc] initWithConfiguration:@"system.webcontentfilter.basic" restrictionKey:@"whiteListEnabled" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
      v46[2] = v17;
      v47[2] = v15;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
      v5 = [v18 mutableCopy];

      v19 = [[STRestrictionItem alloc] initWithConfiguration:@"system.webcontentfilter.basic" restrictionKey:@"siteWhiteList" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
      v20 = [(STContentPrivacyViewModelCoordinator *)self valueForRestriction:v19];

      if (!v20)
      {
        v40 = v5;
        mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
        defaultUserBookmarks = [mEMORY[0x277D262A0] defaultUserBookmarks];

        v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(defaultUserBookmarks, "count")}];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v24 = defaultUserBookmarks;
        v25 = [v24 countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v42;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v42 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v41 + 1) + 8 * i);
              v30 = MEMORY[0x277CFBBF0];
              v31 = [v29 URL];
              absoluteString = [v31 absoluteString];
              title = [v29 title];
              v34 = [v30 buildWithAddress:absoluteString withPageTitle:title];

              [v23 addObject:v34];
            }

            v26 = [v24 countByEnumeratingWithState:&v41 objects:v45 count:16];
          }

          while (v26);
        }

        v35 = [v23 copy];
        v36 = [[STRestrictionItem alloc] initWithConfiguration:@"system.webcontentfilter.basic" restrictionKey:@"siteWhiteList" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
        v5 = v40;
        [(STRestrictionItem *)v40 setObject:v35 forKeyedSubscript:v36];
      }

      v13 = [(STRestrictionItem *)v5 copy];
      goto LABEL_17;
    case 1uLL:
      v5 = [[STRestrictionItem alloc] initWithConfiguration:@"system.webcontentfilter.basic" restrictionKey:@"restrictWeb" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
      v48[0] = v5;
      v12 = MEMORY[0x277CBEC38];
      v49[0] = MEMORY[0x277CBEC38];
      v7 = [[STRestrictionItem alloc] initWithConfiguration:@"system.webcontentfilter.basic" restrictionKey:@"useContentFilter" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
      v48[1] = v7;
      v49[1] = v12;
      v8 = [[STRestrictionItem alloc] initWithConfiguration:@"system.webcontentfilter.basic" restrictionKey:@"whiteListEnabled" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
      v48[2] = v8;
      v49[2] = MEMORY[0x277CBEC28];
      v9 = MEMORY[0x277CBEAC0];
      v10 = v49;
      v11 = v48;
      goto LABEL_6;
    case 0uLL:
      v5 = [[STRestrictionItem alloc] initWithConfiguration:@"system.webcontentfilter.basic" restrictionKey:@"restrictWeb" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
      v50[0] = v5;
      v6 = MEMORY[0x277CBEC28];
      v51[0] = MEMORY[0x277CBEC28];
      v7 = [[STRestrictionItem alloc] initWithConfiguration:@"system.webcontentfilter.basic" restrictionKey:@"useContentFilter" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
      v50[1] = v7;
      v51[1] = v6;
      v8 = [[STRestrictionItem alloc] initWithConfiguration:@"system.webcontentfilter.basic" restrictionKey:@"whiteListEnabled" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
      v50[2] = v8;
      v51[2] = v6;
      v9 = MEMORY[0x277CBEAC0];
      v10 = v51;
      v11 = v50;
LABEL_6:
      v13 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:3];

LABEL_17:
      goto LABEL_19;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"STContentPrivacyViewModel.m" lineNumber:714 description:{@"Unimplemented web filter state %d", state}];

  v13 = MEMORY[0x277CBEC10];
LABEL_19:

  return v13;
}

- (id)valueForRestriction:(id)restriction
{
  restrictionCopy = restriction;
  rmConfiguration = [restrictionCopy rmConfiguration];
  payloadKey = [restrictionCopy payloadKey];

  if (![rmConfiguration isEqualToString:@"STCustomRestrictionConfiguration"])
  {
    if ([rmConfiguration isEqualToString:@"STMCFeatureConfiguration"])
    {
      _valueForWebFilterState = [(STContentPrivacyViewModelCoordinator *)self _valueForMCFeature:payloadKey];
    }

    else
    {
      if (![rmConfiguration isEqualToString:@"STSBCapabilityConfiguration"])
      {
        v27 = STSupportedConfigurations();
        v28 = [v27 objectForKeyedSubscript:rmConfiguration];

        if (!v28)
        {
          [(STContentPrivacyViewModelCoordinator *)a2 valueForRestriction:rmConfiguration];
        }

        configurationPayloadsByType = [(STContentPrivacyViewModelCoordinator *)self configurationPayloadsByType];
        v12 = [configurationPayloadsByType objectForKeyedSubscript:rmConfiguration];

        if (v12)
        {
          v18 = [(STContentPrivacyViewModelCoordinator *)self _valueInConfiguration:v12 keyPath:payloadKey];
LABEL_29:

          goto LABEL_30;
        }

        goto LABEL_40;
      }

      _valueForWebFilterState = [(STContentPrivacyViewModelCoordinator *)self _valueForSBCapability:payloadKey];
    }

LABEL_16:
    v18 = _valueForWebFilterState;
    goto LABEL_30;
  }

  if ([payloadKey isEqualToString:@"STCustomRestrictionCellularData"])
  {
    v8 = @"network.cellular.settings";
    v9 = [[STRestrictionItem alloc] initWithConfiguration:@"network.cellular.settings" restrictionKey:@"allowAppCellularDataModification" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
    v10 = [(STContentPrivacyViewModelCoordinator *)self valueForRestriction:v9];

    v11 = MEMORY[0x277CBEC38];
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = MEMORY[0x277CBEC38];
    }

    v13 = [STRestrictionItem alloc];
    v14 = @"allowCellularPlanModification";
LABEL_22:
    v21 = [(STRestrictionItem *)v13 initWithConfiguration:v8 restrictionKey:v14 labelName:&stru_28766E5A8 type:3 restrictionValue:0];
    v22 = [(STContentPrivacyViewModelCoordinator *)self valueForRestriction:v21];

    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v11;
    }

    bOOLValue = [v12 BOOLValue];
    v25 = MEMORY[0x277CBEC28];
    if (bOOLValue && [v23 BOOLValue])
    {
      v25 = v11;
    }

    v18 = v25;

    goto LABEL_29;
  }

  if ([payloadKey isEqualToString:@"STCustomRestrictionSiriDictation"])
  {
    v8 = @"system.siri";
    v16 = [[STRestrictionItem alloc] initWithConfiguration:@"system.siri" restrictionKey:@"allowAssistant" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
    v17 = [(STContentPrivacyViewModelCoordinator *)self valueForRestriction:v16];

    v11 = MEMORY[0x277CBEC38];
    if (v17)
    {
      v12 = v17;
    }

    else
    {
      v12 = MEMORY[0x277CBEC38];
    }

    v13 = [STRestrictionItem alloc];
    v14 = @"allowDictation";
    goto LABEL_22;
  }

  if ([payloadKey isEqualToString:@"STCustomRestrictionMathResults"])
  {
    v8 = @"system.siri";
    v19 = [[STRestrictionItem alloc] initWithConfiguration:@"system.siri" restrictionKey:@"allowMathPaperSolving" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
    v20 = [(STContentPrivacyViewModelCoordinator *)self valueForRestriction:v19];

    v11 = MEMORY[0x277CBEC38];
    if (v20)
    {
      v12 = v20;
    }

    else
    {
      v12 = MEMORY[0x277CBEC38];
    }

    v13 = [STRestrictionItem alloc];
    v14 = @"allowKeyboardMathSolving";
    goto LABEL_22;
  }

  if ([payloadKey isEqualToString:@"STCustomRestrictionWebFilterState"])
  {
    _valueForWebFilterState = [(STContentPrivacyViewModelCoordinator *)self _valueForWebFilterState];
    goto LABEL_16;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"STContentPrivacyViewModel.m" lineNumber:764 description:{@"Unimplemented key %@", payloadKey}];

LABEL_40:
  v18 = 0;
LABEL_30:

  return v18;
}

- (id)_valuesByRestriction
{
  v19 = *MEMORY[0x277D85DE8];
  viewModel = [(STContentPrivacyViewModelCoordinator *)self viewModel];
  visibleRestrictions = [viewModel visibleRestrictions];

  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(visibleRestrictions, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = visibleRestrictions;
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

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(STContentPrivacyViewModelCoordinator *)self valueForRestriction:v11, v14];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_registerForPersistentStoreNotifications
{
  persistenceController = [(STContentPrivacyViewModelCoordinator *)self persistenceController];
  viewContext = [persistenceController viewContext];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__STContentPrivacyViewModelCoordinator__registerForPersistentStoreNotifications__block_invoke;
  v6[3] = &unk_279B7CAE0;
  v6[4] = self;
  v7 = viewContext;
  v5 = viewContext;
  [v5 performBlockAndWait:v6];
}

void __80__STContentPrivacyViewModelCoordinator__registerForPersistentStoreNotifications__block_invoke(uint64_t a1)
{
  v26[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userDSID];
  v3 = *MEMORY[0x277D4BBA0];
  v4 = [MEMORY[0x277D4B928] fetchRequestMatchingBlueprintsForUserWithDSID:v2 ofType:*MEMORY[0x277D4BBA0]];
  v5 = MEMORY[0x277CBEBF8];
  [v4 setSortDescriptors:MEMORY[0x277CBEBF8]];
  v19 = v4;
  v6 = [objc_alloc(MEMORY[0x277CBE430]) initWithFetchRequest:v4 managedObjectContext:*(a1 + 40) sectionNameKeyPath:0 cacheName:0];
  v20 = v2;
  v7 = [MEMORY[0x277D4B930] fetchRequestMatchingBlueprintsForUserWithDSID:v2 ofType:v3];
  [v7 setSortDescriptors:v5];
  v8 = [objc_alloc(MEMORY[0x277CBE430]) initWithFetchRequest:v7 managedObjectContext:*(a1 + 40) sectionNameKeyPath:0 cacheName:0];
  v9 = [MEMORY[0x277D4B980] fetchRequest];
  [v9 setSortDescriptors:v5];
  v10 = [objc_alloc(MEMORY[0x277CBE430]) initWithFetchRequest:v9 managedObjectContext:*(a1 + 40) sectionNameKeyPath:0 cacheName:0];
  v18 = v6;
  v26[0] = v6;
  v26[1] = v8;
  v26[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
  [*(a1 + 32) setFetchedResultsControllers:v11];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [*(a1 + 32) fetchedResultsControllers];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        [v17 performFetch:0];
        [v17 setDelegate:*(a1 + 32)];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  if ([(STContentPrivacyViewModelCoordinator *)self numExpectedChanges:controller])
  {
    [(STContentPrivacyViewModelCoordinator *)self setNumExpectedChanges:[(STContentPrivacyViewModelCoordinator *)self numExpectedChanges]- 1];
    v8 = +[STUILog contentPrivacy];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [STContentPrivacyViewModelCoordinator controller:? didChangeObject:? atIndexPath:? forChangeType:? newIndexPath:?];
    }
  }

  else
  {
    v9 = +[STUILog contentPrivacy];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [STContentPrivacyViewModelCoordinator controller:v9 didChangeObject:? atIndexPath:? forChangeType:? newIndexPath:?];
    }

    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_reloadViewModelForRemoteChanges object:0];
    [(STContentPrivacyViewModelCoordinator *)self performSelector:sel_reloadViewModelForRemoteChanges withObject:0 afterDelay:0.0];
  }
}

- (void)reloadViewModelForRemoteChanges
{
  viewModel = [(STContentPrivacyViewModelCoordinator *)self viewModel];
  [viewModel setIsLoaded:0];

  [(STContentPrivacyViewModelCoordinator *)self loadViewModelWithCompletionHandler:&__block_literal_global_7];
}

void __71__STContentPrivacyViewModelCoordinator_reloadViewModelForRemoteChanges__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STUILog persistence];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __71__STContentPrivacyViewModelCoordinator_reloadViewModelForRemoteChanges__block_invoke_cold_1();
    }
  }

  else
  {
    v3 = +[STUILog contentPrivacy];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_264BA2000, v3, OS_LOG_TYPE_DEFAULT, "Content & Privacy reloading because of remote change", v4, 2u);
    }
  }
}

- (id)_createUnrestrictedConfigurationForUser:(id)user withType:(id)type
{
  v18 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  userCopy = user;
  v9 = +[STUILog contentPrivacy];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = typeCopy;
    _os_log_impl(&dword_264BA2000, v9, OS_LOG_TYPE_DEFAULT, "Creating new restriction configuration %{public}@", buf, 0xCu);
  }

  v10 = [userCopy contentPrivacyConfigurationIdentifierForType:typeCopy];

  if ([typeCopy isEqualToString:@"account.settings"])
  {
    v11 = MEMORY[0x277CFBB80];
LABEL_9:
    v12 = [v11 buildRequiredOnlyWithIdentifier:v10];
LABEL_10:
    v13 = v12;
    goto LABEL_11;
  }

  if ([typeCopy isEqualToString:@"application.settings"])
  {
    v11 = MEMORY[0x277CFBB90];
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:@"application.store"])
  {
    v11 = MEMORY[0x277CFBB98];
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:@"legacy.restrictions.apps"])
  {
    v13 = [MEMORY[0x277CFBBA8] buildRequiredOnlyWithIdentifier:v10];
    [v13 setPayloadBlacklistedAppBundleIDs:MEMORY[0x277CBEBF8]];
  }

  else
  {
    if ([typeCopy isEqualToString:@"media.settings"])
    {
      v11 = MEMORY[0x277CFBBB0];
      goto LABEL_9;
    }

    if ([typeCopy isEqualToString:@"network.cellular.settings"])
    {
      v11 = MEMORY[0x277CFBBB8];
      goto LABEL_9;
    }

    if ([typeCopy isEqualToString:@"passcode.settings"])
    {
      v11 = MEMORY[0x277CFBBC0];
      goto LABEL_9;
    }

    if ([typeCopy isEqualToString:@"system.airdrop"])
    {
      v11 = MEMORY[0x277CFBBE0];
      goto LABEL_9;
    }

    if ([typeCopy isEqualToString:@"system.camera"])
    {
      v11 = MEMORY[0x277CFBBF8];
      goto LABEL_9;
    }

    if ([typeCopy isEqualToString:@"system.carplay"])
    {
      v11 = MEMORY[0x277CFBC00];
      goto LABEL_9;
    }

    if ([typeCopy isEqualToString:@"system.donotdisturb"])
    {
      v11 = MEMORY[0x277CFBC08];
      goto LABEL_9;
    }

    if ([typeCopy isEqualToString:@"system.gamecenter"])
    {
      v11 = MEMORY[0x277CFBC10];
      goto LABEL_9;
    }

    if ([typeCopy isEqualToString:@"system.icloud"])
    {
      v11 = MEMORY[0x277CFBC40];
      goto LABEL_9;
    }

    if ([typeCopy isEqualToString:@"system.music"])
    {
      v11 = MEMORY[0x277CFBC18];
      goto LABEL_9;
    }

    if ([typeCopy isEqualToString:@"system.ratings"])
    {
      v11 = MEMORY[0x277CFBC20];
      goto LABEL_9;
    }

    if ([typeCopy isEqualToString:@"system.siri"])
    {
      v11 = MEMORY[0x277CFBC28];
      goto LABEL_9;
    }

    if ([typeCopy isEqualToString:@"system.tvprovider"])
    {
      v11 = MEMORY[0x277CFBC30];
      goto LABEL_9;
    }

    if ([typeCopy isEqualToString:@"system.webcontentfilter.basic"])
    {
      v12 = [MEMORY[0x277CFBBE8] buildRequiredOnlyWithIdentifier:v10 withRestrictWeb:MEMORY[0x277CBEC28]];
      goto LABEL_10;
    }

    if ([typeCopy isEqualToString:@"system.web.tracking"])
    {
      v11 = MEMORY[0x277CFBC38];
      goto LABEL_9;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"STContentPrivacyViewModel.m" lineNumber:901 description:{@"Unimplemented for type %@", typeCopy}];

    v13 = 0;
  }

LABEL_11:

  return v13;
}

- (id)_valueInConfiguration:(id)configuration keyPath:(id)path
{
  v14[3] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  configurationCopy = configuration;
  v7 = [pathCopy substringToIndex:1];
  v8 = [pathCopy substringWithRange:{1, objc_msgSend(pathCopy, "length") - 1}];

  capitalizedString = [v7 capitalizedString];
  v14[1] = capitalizedString;
  v14[2] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v11 = [v10 componentsJoinedByString:&stru_28766E5A8];

  v12 = [configurationCopy valueForKeyPath:v11];

  return v12;
}

- (void)_updateConfiguration:(id)configuration keyPath:(id)path value:(id)value
{
  v22[3] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  valueCopy = value;
  pathCopy = path;
  v10 = [pathCopy substringToIndex:1];
  v11 = [pathCopy substringWithRange:{1, objc_msgSend(pathCopy, "length") - 1}];

  v22[0] = @"payload";
  capitalizedString = [v10 capitalizedString];
  v22[1] = capitalizedString;
  v22[2] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v14 = [v13 componentsJoinedByString:&stru_28766E5A8];

  v15 = +[STUILog contentPrivacy];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = objc_opt_class();
    v18 = 2112;
    v19 = v14;
    v20 = 2112;
    v21 = valueCopy;
    _os_log_impl(&dword_264BA2000, v15, OS_LOG_TYPE_DEFAULT, "Setting CEM key %@.%@ to %@", &v16, 0x20u);
  }

  [configurationCopy setValue:valueCopy forKeyPath:v14];
  [configurationCopy updateServerHash];
}

- (void)loadViewModelWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  viewModel = [(STContentPrivacyViewModelCoordinator *)self viewModel];
  persistenceController = [(STContentPrivacyViewModelCoordinator *)self persistenceController];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__STContentPrivacyViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke;
  v9[3] = &unk_279B7D550;
  v10 = viewModel;
  v11 = handlerCopy;
  v9[4] = self;
  v7 = viewModel;
  v8 = handlerCopy;
  [persistenceController performBackgroundTask:v9];
}

void __75__STContentPrivacyViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v156 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v105 = a1;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [v5 userObjectID];

  if (v6)
  {
    v7 = [*v4 userObjectID];
    v8 = [v3 objectWithID:v7];

    v9 = 0;
LABEL_5:
    v18 = [v8 localUserDeviceState];
    v107 = v4;
    [*v4 setIsLocalDevice:v18 != 0];

    v19 = objc_opt_new();
    v20 = [v8 communicationPolicy];
    [v19 setScreenTimeCommunicationLimit:v20];
    v21 = [v8 communicationWhileLimitedPolicy];
    [v19 setDowntimeCommunicationLimit:v21];
    v22 = [v8 contactManagementState];
    [v19 setContactManagementState:v22];
    v23 = [v8 contactsEditable];
    [v19 setContactsEditable:v23];
    if (v21 | v20 | v22)
    {
      goto LABEL_9;
    }

    v24 = [v8 effectivePasscode];
    if (!v24)
    {
      LOBYTE(v23) = 1;
    }

    if ((v23 & 1) == 0)
    {
LABEL_9:
      v25 = [v8 dsid];
      v26 = [v25 stringValue];
      [STCommunicationLimits setHasShownCompatibilityAlert:1 forDSID:v26];
    }

    v27 = [v8 managingOrganization];
    v28 = MEMORY[0x277D4B928];
    v29 = [*v4 userDSID];
    v104 = v27;
    v30 = [v28 fetchRequestMatchingBlueprintsForUserWithDSID:v29 ofType:*MEMORY[0x277D4BBA0] fromOrganization:v27];

    v146 = v9;
    v31 = [v30 execute:&v146];
    v32 = v146;

    v102 = v31;
    v103 = v30;
    if (!v31)
    {
      v42 = +[STUILog persistence];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        __75__STContentPrivacyViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_cold_3();
      }

      v43 = *(v105 + 48);
      v44 = v32;
      v45 = v27;
      if (v43)
      {
        if ([MEMORY[0x277CCACC8] isMainThread])
        {
          v43[2](v43, v44);
        }

        else
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __STUICallCompletionHandlerOnMainThread_block_invoke_0;
          v153 = &unk_279B7D130;
          v155 = v43;
          v154 = v44;
          dispatch_async(MEMORY[0x277D85CD0], buf);
        }
      }

LABEL_76:
      goto LABEL_77;
    }

    v33 = [v31 firstObject];
    v34 = [v8 organizationIdentifier];
    v106 = v33;
    if ([v34 isEqualToString:*MEMORY[0x277D4BC48]])
    {
      v35 = [v33 identifier];
      v36 = [v35 isEqualToString:*MEMORY[0x277D4BC78]];

      if (!v36)
      {
LABEL_26:
        v100 = v19;
        v101 = v8;
        v99 = v3;
        v46 = MEMORY[0x277CBEB38];
        v47 = [v106 configurations];
        v48 = [v46 dictionaryWithCapacity:{objc_msgSend(v47, "count")}];

        v49 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"objectID.URIRepresentation.absoluteString" ascending:1];
        v151 = v49;
        v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v151 count:1];

        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v51 = [v106 configurations];
        v98 = v50;
        v52 = [v51 sortedArrayUsingDescriptors:v50];

        v110 = v48;
        v115 = [v52 countByEnumeratingWithState:&v141 objects:v150 count:16];
        v53 = 0;
        if (v115)
        {
          v113 = *v142;
          v108 = v52;
          do
          {
            for (i = 0; i != v115; ++i)
            {
              v55 = v32;
              if (*v142 != v113)
              {
                objc_enumerationMutation(v52);
              }

              v56 = MEMORY[0x277CFBBA0];
              v57 = [*(*(&v141 + 1) + 8 * i) payloadPlist];
              v140 = v32;
              v58 = [v56 declarationForData:v57 error:&v140];
              v32 = v140;

              if (v58)
              {
                if (v53)
                {
                  v53 = 1;
                }

                else
                {
                  v60 = [v58 unknownPayloadKeys];
                  v53 = [v60 count] != 0;
                }

                v61 = [v58 unknownPayloadKeys];
                v62 = [v61 count];

                if (v62)
                {
                  v63 = +[STUILog contentPrivacy];
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                  {
                    v75 = [v58 unknownPayloadKeys];
                    v76 = [v58 declarationIdentifier];
                    *buf = 138543619;
                    *&buf[4] = v75;
                    *&buf[12] = 2113;
                    *&buf[14] = v76;
                    _os_log_error_impl(&dword_264BA2000, v63, OS_LOG_TYPE_ERROR, "Unknown keys found in payload. Restrictions UI will be disabled.\nUnknown keys:%{public}@\n Declaration ID:%{private}@", buf, 0x16u);
                  }
                }

                v59 = [v58 declarationType];
                v64 = [v48 objectForKeyedSubscript:v59];

                if (v64)
                {
                  v65 = +[STUILog contentPrivacy];
                  if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 138543362;
                    *&buf[4] = v59;
                    _os_log_fault_impl(&dword_264BA2000, v65, OS_LOG_TYPE_FAULT, "Duplicate configurations of type %{public}@ found, skipping", buf, 0xCu);
                  }
                }

                else
                {
                  v111 = v53;
                  v66 = v32;
                  v67 = STSupportedConfigurations();
                  v136 = 0u;
                  v137 = 0u;
                  v138 = 0u;
                  v139 = 0u;
                  v65 = v67;
                  v68 = [v65 countByEnumeratingWithState:&v136 objects:v149 count:16];
                  if (v68)
                  {
                    v69 = v68;
                    v70 = *v137;
                    while (2)
                    {
                      for (j = 0; j != v69; ++j)
                      {
                        if (*v137 != v70)
                        {
                          objc_enumerationMutation(v65);
                        }

                        v72 = *(*(&v136 + 1) + 8 * j);
                        v73 = [v65 objectForKeyedSubscript:v72];
                        if (v73 == objc_opt_class())
                        {
                          v48 = v110;
                          [v110 setObject:v58 forKeyedSubscript:v72];
                          v74 = v65;
                          v32 = v66;
                          goto LABEL_57;
                        }
                      }

                      v69 = [v65 countByEnumeratingWithState:&v136 objects:v149 count:16];
                      if (v69)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v74 = +[STUILog contentPrivacy];
                  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *&buf[4] = v59;
                    _os_log_error_impl(&dword_264BA2000, v74, OS_LOG_TYPE_ERROR, "Unknown future configuration, preserving: %@", buf, 0xCu);
                  }

                  v32 = v66;
                  v48 = v110;
LABEL_57:
                  v52 = v108;

                  v53 = v111;
                }
              }

              else
              {
                v59 = +[STUILog contentPrivacy];
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  *&buf[4] = v32;
                  _os_log_error_impl(&dword_264BA2000, v59, OS_LOG_TYPE_ERROR, "Error deserializing configuration from DB: %{public}@", buf, 0xCu);
                }

                v53 = 1;
              }
            }

            v115 = [v52 countByEnumeratingWithState:&v141 objects:v150 count:16];
          }

          while (v115);
        }

        v77 = [v101 effectivePasscode];
        v78 = [v77 length] != 0;

        v79 = [*v107 isRestrictAdultContentEnabledValue];
        v112 = v53;
        if ([v79 BOOLValue])
        {
          v80 = 1;
        }

        else
        {
          v80 = [v106 enabled];
        }

        v81 = [v101 isManaged];
        v82 = [v101 localUserDeviceState];
        v83 = v82 == 0;

        v84 = [STUIUser userTypeFromUser:v101];
        if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
        {
          v114 = [*(v105 + 32) organizationSettingsRestrictionUtility];
          v109 = [*(v105 + 32) userDSID];
          v126[0] = MEMORY[0x277D85DD0];
          v126[1] = 3221225472;
          v126[2] = __75__STContentPrivacyViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_794;
          v126[3] = &unk_279B7D500;
          v85 = &v127;
          v86 = *(v105 + 40);
          v87 = v110;
          v126[4] = *(v105 + 32);
          v127 = v110;
          v88 = &v128;
          v128 = v86;
          v131 = v78;
          v132 = v80;
          v89 = &v129;
          v90 = v100;
          v133 = v81;
          v134 = v83;
          v129 = v90;
          v130[1] = v84;
          v135 = v112;
          v91 = v130;
          v130[0] = *(v105 + 48);
          v92 = v110;
          [v114 isImageGenerationAllowedForUserDSID:v109 completionHandler:v126];
        }

        else
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __75__STContentPrivacyViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_2;
          block[3] = &unk_279B7D528;
          v85 = &v117;
          v93 = *(v105 + 40);
          v87 = v110;
          block[4] = *(v105 + 32);
          v117 = v110;
          v88 = &v118;
          v118 = v93;
          v121 = v78;
          v122 = v80;
          v89 = &v119;
          v94 = v100;
          v123 = v81;
          v124 = v83;
          v119 = v94;
          v120[1] = v84;
          v125 = v112;
          v91 = v120;
          v120[0] = *(v105 + 48);
          v95 = v110;
          dispatch_async(MEMORY[0x277D85CD0], block);
        }

        v3 = v99;
        v19 = v100;
        v8 = v101;
        v45 = v104;
        v44 = v32;
        goto LABEL_76;
      }

      v37 = +[STUILog persistence];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        __75__STContentPrivacyViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_cold_1(v106, v37);
      }

      [v106 tombstone];
      v38 = [*v4 persistenceController];
      v145 = v32;
      v39 = [v38 saveContext:v3 error:&v145];
      v40 = v145;

      v41 = +[STUILog persistence];
      v34 = v41;
      if (v39)
      {
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_264BA2000, v34, OS_LOG_TYPE_DEFAULT, "Saved database after deleting Family Restrictions blueprint with Personal organization identifier.", buf, 2u);
        }

        v34 = v106;
        v106 = 0;
      }

      else if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        __75__STContentPrivacyViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_cold_2();
      }
    }

    else
    {
      v40 = v32;
    }

    v32 = v40;
    goto LABEL_26;
  }

  v10 = MEMORY[0x277D4B988];
  v11 = [*v4 userDSID];
  v8 = [v10 fetchRequestForUsersWithDSID:v11];

  v148 = 0;
  v12 = [v8 execute:&v148];
  v13 = v148;
  if (v12)
  {
    v14 = MEMORY[0x277D4B988];
    v15 = [*v4 userDSID];
    v147 = v13;
    v16 = [v14 fetchUserWithDSID:v15 inContext:v3 error:&v147];
    v9 = v147;

    v17 = [v16 objectID];
    [*v4 setUserObjectID:v17];

    v8 = v16;
    goto LABEL_5;
  }

  v96 = +[STUILog persistence];
  if (os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
  {
    __75__STContentPrivacyViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_cold_4(v4, v13, v96);
  }

  v97 = *(v105 + 48);
  v44 = v13;
  if (v97)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v97[2](v97, v44);
    }

    else
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __STUICallCompletionHandlerOnMainThread_block_invoke_0;
      v153 = &unk_279B7D130;
      v155 = v97;
      v154 = v44;
      dispatch_async(MEMORY[0x277D85CD0], buf);
    }
  }

LABEL_77:
}

void __75__STContentPrivacyViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_794(uint64_t a1, int a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = +[STUILog contentPrivacy];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __75__STContentPrivacyViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_794_cold_1();
    }
  }

  v7 = [MEMORY[0x277D4BA00] payload];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v26 = a2;
    _os_log_impl(&dword_264BA2000, v7, OS_LOG_TYPE_DEFAULT, "Image Creation: STContentPrivacyViewModelCoordinator fetched isAllowed = %d", buf, 8u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__STContentPrivacyViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_796;
  v14[3] = &unk_279B7D4D8;
  v8 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v8;
  v9 = *(a1 + 48);
  v21 = *(a1 + 80);
  v16 = v9;
  v17 = v5;
  v22 = a2;
  v10 = *(a1 + 56);
  v23 = *(a1 + 82);
  v24 = *(a1 + 83);
  v12 = *(a1 + 64);
  v11 = *(a1 + 72);
  v18 = v10;
  v20 = v11;
  v19 = v12;
  v13 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __75__STContentPrivacyViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_796(uint64_t a1)
{
  [*(a1 + 32) setConfigurationPayloadsByType:*(a1 + 40)];
  [*(a1 + 48) setIsLocalDevice:{objc_msgSend(*(a1 + 32), "isLocalDevice")}];
  [*(a1 + 48) setHasPasscode:*(a1 + 88)];
  [*(a1 + 48) setRestrictionsEnabled:*(a1 + 89)];
  v2 = [*(a1 + 32) userName];
  [*(a1 + 48) setUserName:v2];

  v3 = [*(a1 + 32) userDSID];
  [*(a1 + 48) setUserDSID:v3];

  if (!*(a1 + 56))
  {
    [*(a1 + 48) setIsSiriImageGenerationAllowed:*(a1 + 90)];
  }

  [*(a1 + 48) setCommunicationLimits:*(a1 + 64)];
  [*(a1 + 48) setUserIsManaged:*(a1 + 91)];
  [*(a1 + 48) setUserIsRemote:*(a1 + 92)];
  [*(a1 + 48) setUserType:*(a1 + 80)];
  v4 = [*(a1 + 32) _visibleRestrictions];
  [*(a1 + 48) setVisibleRestrictions:v4];

  v5 = [*(a1 + 32) _valuesByRestriction];
  [*(a1 + 48) setValuesByRestriction:v5];

  [*(a1 + 48) setShouldAllowEditing:(*(a1 + 93) & 1) == 0];
  [*(a1 + 48) setIsLoaded:1];
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  v8 = v6;
  if (v7)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v7[2](v7, v8);
    }

    else
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __STUICallCompletionHandlerOnMainThread_block_invoke_0;
      v9[3] = &unk_279B7D130;
      v11 = v7;
      v10 = v8;
      dispatch_async(MEMORY[0x277D85CD0], v9);
    }
  }
}

void __75__STContentPrivacyViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setConfigurationPayloadsByType:*(a1 + 40)];
  [*(a1 + 48) setIsLocalDevice:{objc_msgSend(*(a1 + 32), "isLocalDevice")}];
  [*(a1 + 48) setHasPasscode:*(a1 + 80)];
  [*(a1 + 48) setRestrictionsEnabled:*(a1 + 81)];
  v2 = [*(a1 + 32) userName];
  [*(a1 + 48) setUserName:v2];

  v3 = [*(a1 + 32) userDSID];
  [*(a1 + 48) setUserDSID:v3];

  [*(a1 + 48) setCommunicationLimits:*(a1 + 56)];
  [*(a1 + 48) setUserIsManaged:*(a1 + 82)];
  [*(a1 + 48) setUserIsRemote:*(a1 + 83)];
  [*(a1 + 48) setUserType:*(a1 + 72)];
  v4 = [*(a1 + 32) _visibleRestrictions];
  [*(a1 + 48) setVisibleRestrictions:v4];

  v5 = [*(a1 + 32) _valuesByRestriction];
  [*(a1 + 48) setValuesByRestriction:v5];

  [*(a1 + 48) setShouldAllowEditing:(*(a1 + 84) & 1) == 0];
  [*(a1 + 48) setIsLoaded:1];
  v6 = *(a1 + 64);
  if (v6)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v6[2](v6, 0);
    }

    else
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __STUICallCompletionHandlerOnMainThread_block_invoke_0;
      v7[3] = &unk_279B7D130;
      v8 = 0;
      v9 = v6;
      dispatch_async(MEMORY[0x277D85CD0], v7);
    }
  }
}

- (void)loadValuesByRestrictionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__STContentPrivacyViewModelCoordinator_loadValuesByRestrictionWithCompletionHandler___block_invoke;
  v6[3] = &unk_279B7D4B0;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(STContentPrivacyViewModelCoordinator *)self loadViewModelWithCompletionHandler:v6];
}

void __85__STContentPrivacyViewModelCoordinator_loadValuesByRestrictionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v6 = [v3 viewModel];
  v5 = [v6 valuesByRestriction];
  (*(v2 + 16))(v2, v5, v4);
}

- (void)saveContentPrivacyEnabled:(BOOL)enabled completionHandler:(id)handler
{
  enabledCopy = enabled;
  *&v21[5] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = +[STUILog contentPrivacy];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    userDSID = [(STContentPrivacyViewModelCoordinator *)self userDSID];
    *buf = 67240450;
    v21[0] = enabledCopy;
    LOWORD(v21[1]) = 2112;
    *(&v21[1] + 2) = userDSID;
    _os_log_impl(&dword_264BA2000, v7, OS_LOG_TYPE_DEFAULT, "Asked to change restriction enabled/disabled to %{public}d for %@", buf, 0x12u);
  }

  if (!enabledCopy && [(STContentPrivacyViewModelCoordinator *)self isLocalDevice])
  {
    v9 = *MEMORY[0x277D4BC80];
    v10 = *MEMORY[0x277D4BC88];
    v11 = CFPreferencesCopyAppValue(*MEMORY[0x277D4BC80], *MEMORY[0x277D4BC88]);
    v12 = +[STUILog contentPrivacy];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *v21 = v11;
      _os_log_impl(&dword_264BA2000, v12, OS_LOG_TYPE_DEFAULT, "Deleting SpringBoard restrictions. Were: %{public}@", buf, 0xCu);
    }

    CFPreferencesSetAppValue(v9, 0, v10);
    CFPreferencesSetAppValue(*MEMORY[0x277D4BC90], 0, v10);
    CFPreferencesAppSynchronize(v10);
    notify_post("com.apple.locationd/Restrictions");
    notify_post("com.apple.Preferences.ChangedRestrictionsEnabledStateNotification");
    _valuesByRestriction = [(STContentPrivacyViewModelCoordinator *)self _valuesByRestriction];
    viewModel = [(STContentPrivacyViewModelCoordinator *)self viewModel];
    [viewModel setValuesByRestriction:_valuesByRestriction];
  }

  persistenceController = [(STContentPrivacyViewModelCoordinator *)self persistenceController];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__STContentPrivacyViewModelCoordinator_saveContentPrivacyEnabled_completionHandler___block_invoke;
  v17[3] = &unk_279B7D5A0;
  v17[4] = self;
  v18 = handlerCopy;
  v19 = enabledCopy;
  v16 = handlerCopy;
  [persistenceController performBackgroundTask:v17];
}

void __84__STContentPrivacyViewModelCoordinator_saveContentPrivacyEnabled_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) userObjectID];
  if (v5 && ([v3 objectWithID:v5], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [v6 managingOrganization];
    v9 = MEMORY[0x277D4B928];
    v10 = [*v4 userDSID];
    v11 = *MEMORY[0x277D4BBA0];
    v35 = v8;
    v12 = [v9 fetchRequestMatchingBlueprintsForUserWithDSID:v10 ofType:*MEMORY[0x277D4BBA0] fromOrganization:v8];

    v43 = 0;
    v13 = [v12 execute:&v43];
    v14 = v43;
    v34 = v13;
    if (v13)
    {
      v15 = [v13 firstObject];
      if (!v15)
      {
        v15 = [objc_alloc(MEMORY[0x277D4B928]) initWithContext:v3];
        [v15 setType:v11];
        v16 = [v7 contentPrivacyActivationIdentifier];
        [v15 setIdentifier:v16];

        v17 = MEMORY[0x277CBEB98];
        v18 = [v3 objectWithID:v5];
        v19 = [v17 setWithObject:v18];
        [v15 setUsers:v19];

        [v15 setOrganization:v35];
      }

      [v15 setIsDirty:1];
      [*(a1 + 32) setNumExpectedChanges:{objc_msgSend(*(a1 + 32), "numExpectedChanges") + 1}];
      [v15 setEnabled:*(a1 + 48)];
      v20 = +[STUILog contentPrivacy];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        __84__STContentPrivacyViewModelCoordinator_saveContentPrivacyEnabled_completionHandler___block_invoke_cold_1((a1 + 32));
      }

      v21 = [*v4 persistenceController];
      v42 = v14;
      v22 = [v21 saveContext:v3 error:&v42];
      v23 = v42;

      if ((v22 & 1) == 0)
      {
        v24 = +[STUILog persistence];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          __84__STContentPrivacyViewModelCoordinator_saveContentPrivacyEnabled_completionHandler___block_invoke_cold_2();
        }
      }

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v37 = __84__STContentPrivacyViewModelCoordinator_saveContentPrivacyEnabled_completionHandler___block_invoke_803;
      v38 = &unk_279B7D578;
      v25 = *(a1 + 40);
      v39 = *(a1 + 32);
      v41 = *(a1 + 48);
      v40 = v25;
      v26 = v36;
      v27 = v23;
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v37(v26, v27);
      }

      else
      {
        block = MEMORY[0x277D85DD0];
        v45 = 3221225472;
        v46 = __STUICallCompletionHandlerOnMainThread_block_invoke_0;
        v47 = &unk_279B7D130;
        v49 = v26;
        v48 = v27;
        dispatch_async(MEMORY[0x277D85CD0], &block);
      }
    }

    else
    {
      v33 = +[STUILog persistence];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        __84__STContentPrivacyViewModelCoordinator_saveContentPrivacyEnabled_completionHandler___block_invoke_cold_3();
      }

      v15 = *(a1 + 40);
      v27 = v14;
      if (v15)
      {
        if ([MEMORY[0x277CCACC8] isMainThread])
        {
          (*(v15 + 2))(v15, v27);
        }

        else
        {
          block = MEMORY[0x277D85DD0];
          v45 = 3221225472;
          v46 = __STUICallCompletionHandlerOnMainThread_block_invoke_0;
          v47 = &unk_279B7D130;
          v49 = v15;
          v48 = v27;
          dispatch_async(MEMORY[0x277D85CD0], &block);
        }
      }
    }
  }

  else
  {
    v28 = +[STUILog persistence];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      __84__STContentPrivacyViewModelCoordinator_saveContentPrivacyEnabled_completionHandler___block_invoke_cold_4();
    }

    v29 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277D4BBD8];
    v50 = *MEMORY[0x277CCA450];
    v51[0] = @"user could not be found";
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    v32 = [v29 errorWithDomain:v30 code:11 userInfo:v31];

    v7 = *(a1 + 40);
    v27 = v32;
    if (v7)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        (*(v7 + 2))(v7, v27);
      }

      else
      {
        block = MEMORY[0x277D85DD0];
        v45 = 3221225472;
        v46 = __STUICallCompletionHandlerOnMainThread_block_invoke_0;
        v47 = &unk_279B7D130;
        v49 = v7;
        v48 = v27;
        dispatch_async(MEMORY[0x277D85CD0], &block);
      }
    }
  }
}

void __84__STContentPrivacyViewModelCoordinator_saveContentPrivacyEnabled_completionHandler___block_invoke_803(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) viewModel];
  [v3 setRestrictionsEnabled:*(a1 + 48)];
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = [v3 valuesByRestriction];
  [v4 _reportCoreAnalyticsEventWithRestrictionsEnabled:v5 valuesByRestriction:v6 userType:objc_msgSend(v3 userIsManaged:{"userType"), objc_msgSend(v3, "userIsManaged")}];

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
  }
}

- (void)saveSiriImageGenerationIsAllowed:(BOOL)allowed completionHandler:(id)handler
{
  allowedCopy = allowed;
  handlerCopy = handler;
  viewModel = [(STContentPrivacyViewModelCoordinator *)self viewModel];
  isSiriImageGenerationAllowed = [viewModel isSiriImageGenerationAllowed];

  viewModel2 = [(STContentPrivacyViewModelCoordinator *)self viewModel];
  [viewModel2 setIsSiriImageGenerationAllowed:allowedCopy];

  objc_initWeak(&location, self);
  persistenceController = [(STContentPrivacyViewModelCoordinator *)self persistenceController];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__STContentPrivacyViewModelCoordinator_saveSiriImageGenerationIsAllowed_completionHandler___block_invoke;
  v12[3] = &unk_279B7D5C8;
  objc_copyWeak(&v14, &location);
  v15 = allowedCopy;
  v16 = isSiriImageGenerationAllowed;
  v11 = handlerCopy;
  v13 = v11;
  [persistenceController performBackgroundTask:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __91__STContentPrivacyViewModelCoordinator_saveSiriImageGenerationIsAllowed_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D4B988];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained userDSID];
  v19 = 0;
  v7 = [v4 fetchUserWithDSID:v6 inContext:v3 error:&v19];
  v8 = v19;

  if (v7)
  {
    if (*(a1 + 48))
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    [v7 setContentPrivacySiriImageGenerationRestriction:v9];
    v10 = objc_loadWeakRetained((a1 + 40));
    v11 = [v10 persistenceController];
    v18 = v8;
    [v11 saveContext:v3 error:&v18];
    v12 = v18;

    v8 = v12;
  }

  if (v8)
  {
    v13 = *(a1 + 49);
    v14 = objc_loadWeakRetained((a1 + 40));
    v15 = [v14 viewModel];
    [v15 setIsSiriImageGenerationAllowed:v13];
  }

  v16 = *(a1 + 32);
  v17 = v8;
  if (v16)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v16[2](v16, v17);
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __STUICallCompletionHandlerOnMainThread_block_invoke_0;
      block[3] = &unk_279B7D130;
      v22 = v16;
      v21 = v17;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)saveCommunicationLimits:(id)limits completionHandler:(id)handler
{
  limitsCopy = limits;
  handlerCopy = handler;
  userObjectID = [(STContentPrivacyViewModelCoordinator *)self userObjectID];
  persistenceController = [(STContentPrivacyViewModelCoordinator *)self persistenceController];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__STContentPrivacyViewModelCoordinator_saveCommunicationLimits_completionHandler___block_invoke;
  v13[3] = &unk_279B7D618;
  v14 = userObjectID;
  v15 = limitsCopy;
  selfCopy = self;
  v17 = handlerCopy;
  v10 = limitsCopy;
  v11 = handlerCopy;
  v12 = userObjectID;
  [persistenceController performBackgroundTask:v13];
}

void __82__STContentPrivacyViewModelCoordinator_saveCommunicationLimits_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) && ([v3 objectWithID:?], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    [v5 setCommunicationPolicy:{objc_msgSend(*(a1 + 40), "screenTimeCommunicationLimit")}];
    [v6 setCommunicationWhileLimitedPolicy:{objc_msgSend(*(a1 + 40), "downtimeCommunicationLimit")}];
    [v6 setContactManagementState:{objc_msgSend(*(a1 + 40), "contactManagementState")}];
    [v6 setContactsEditable:{objc_msgSend(*(a1 + 40), "contactsEditable")}];
    v7 = [*(a1 + 48) persistenceController];
    v32 = 0;
    v8 = [v7 saveContext:v4 error:&v32];
    v9 = v32;

    if (v8)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v28 = __82__STContentPrivacyViewModelCoordinator_saveCommunicationLimits_completionHandler___block_invoke_804;
      v29 = &unk_279B7D5F0;
      v26 = *(a1 + 40);
      v10 = v26.i64[0];
      v30 = vextq_s8(v26, v26, 8uLL);
      v31 = *(a1 + 56);
      v11 = v27;
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v28(v11, 0);
      }

      else
      {
        block = MEMORY[0x277D85DD0];
        v34 = 3221225472;
        v35 = __STUICallCompletionHandlerOnMainThread_block_invoke_0;
        v36 = &unk_279B7D130;
        v25 = v11;
        v37 = 0;
        v38 = v25;
        dispatch_async(MEMORY[0x277D85CD0], &block);
      }
    }

    else
    {
      v23 = +[STUILog persistence];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        __82__STContentPrivacyViewModelCoordinator_saveCommunicationLimits_completionHandler___block_invoke_cold_1();
      }

      v24 = *(a1 + 56);
      v9 = v9;
      if (v24)
      {
        if ([MEMORY[0x277CCACC8] isMainThread])
        {
          v24[2](v24, v9);
        }

        else
        {
          block = MEMORY[0x277D85DD0];
          v34 = 3221225472;
          v35 = __STUICallCompletionHandlerOnMainThread_block_invoke_0;
          v36 = &unk_279B7D130;
          v38 = v24;
          v37 = v9;
          dispatch_async(MEMORY[0x277D85CD0], &block);
        }
      }
    }
  }

  else
  {
    v12 = +[STUILog persistence];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __82__STContentPrivacyViewModelCoordinator_saveCommunicationLimits_completionHandler___block_invoke_cold_2(a1 + 32, v12, v13, v14, v15, v16, v17, v18);
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277D4BBD8];
    v39 = *MEMORY[0x277CCA450];
    v40[0] = @"user could not be found";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v22 = [v19 errorWithDomain:v20 code:11 userInfo:v21];

    v6 = *(a1 + 56);
    v9 = v22;
    if (v6)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        (*(v6 + 2))(v6, v9);
      }

      else
      {
        block = MEMORY[0x277D85DD0];
        v34 = 3221225472;
        v35 = __STUICallCompletionHandlerOnMainThread_block_invoke_0;
        v36 = &unk_279B7D130;
        v38 = v6;
        v37 = v9;
        dispatch_async(MEMORY[0x277D85CD0], &block);
      }
    }
  }
}

void __82__STContentPrivacyViewModelCoordinator_saveCommunicationLimits_completionHandler___block_invoke_804(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) viewModel];
  [*(a1 + 32) _reportCoreAnalyticsEventForChangedCommunicationLimits:*(a1 + 40) userType:objc_msgSend(v3 userIsRemote:{"userType"), objc_msgSend(v3, "userIsRemote")}];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

- (void)saveValuesForRestrictions:(id)restrictions completionHandler:(id)handler
{
  restrictionsCopy = restrictions;
  handlerCopy = handler;
  persistenceController = [(STContentPrivacyViewModelCoordinator *)self persistenceController];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__STContentPrivacyViewModelCoordinator_saveValuesForRestrictions_completionHandler___block_invoke;
  v12[3] = &unk_279B7D668;
  v12[4] = self;
  v13 = restrictionsCopy;
  v14 = handlerCopy;
  v15 = a2;
  v10 = restrictionsCopy;
  v11 = handlerCopy;
  [persistenceController performBackgroundTask:v12];
}

void __84__STContentPrivacyViewModelCoordinator_saveValuesForRestrictions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v117 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v87 = a1;
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) userObjectID];
  if (v5 && ([v3 objectWithID:v5], (v85 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v83 = v5;
    v84 = v3;
    v86 = objc_opt_new();
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    obj = *(a1 + 40);
    v6 = [obj countByEnumeratingWithState:&v103 objects:v110 count:16];
    v91 = (a1 + 32);
    if (v6)
    {
      v7 = v6;
      v8 = *v104;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v104 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v103 + 1) + 8 * i);
          v11 = [*(a1 + 40) objectForKeyedSubscript:v10];
          v12 = [MEMORY[0x277CBEB68] null];

          if (v11 == v12)
          {

            v11 = 0;
          }

          v13 = [v10 rmConfiguration];
          v14 = [v10 payloadKey];
          v15 = +[STUILog contentPrivacy];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [*v4 userDSID];
            *buf = 138543874;
            *&buf[4] = v10;
            *&buf[12] = 2114;
            *&buf[14] = v11;
            *&buf[22] = 2112;
            v114 = v16;
            _os_log_impl(&dword_264BA2000, v15, OS_LOG_TYPE_DEFAULT, "Asked to change restriction %{public}@ value to %{public}@ for %@", buf, 0x20u);

            v4 = v91;
          }

          if ([v13 isEqualToString:@"STCustomRestrictionConfiguration"])
          {
            v17 = [MEMORY[0x277CCA890] currentHandler];
            [v17 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"STContentPrivacyViewModel.m" lineNumber:1276 description:{@"Unimplemented restriction %@ %@", v13, v14}];
          }

          else if ([v13 isEqualToString:@"STSBCapabilityConfiguration"])
          {
            v18 = [*v4 viewModel];
            v19 = [v18 valuesByRestriction];
            [v19 setObject:v11 forKeyedSubscript:v10];

            v4 = v91;
            [*v91 _setValue:v11 forSBCapability:v14];
          }

          else
          {
            v20 = [v13 isEqualToString:@"STMCFeatureConfiguration"];
            v21 = [*v4 viewModel];
            v22 = [v21 valuesByRestriction];
            [v22 setObject:v11 forKeyedSubscript:v10];

            v4 = v91;
            v23 = *v91;
            if (v20)
            {
              [v23 _setValue:v11 forMCFeature:v14];
            }

            else
            {
              v24 = [v23 configurationPayloadsByType];
              v25 = [v24 objectForKeyedSubscript:v13];

              if (!v25)
              {
                v25 = [*v91 _createUnrestrictedConfigurationForUser:v85 withType:v13];
              }

              [*v91 _updateConfiguration:v25 keyPath:v14 value:v11];
              v26 = [*v91 configurationPayloadsByType];

              if (!v26)
              {
                v27 = [MEMORY[0x277CBEB38] dictionary];
                [*v91 setConfigurationPayloadsByType:v27];
              }

              v28 = [*v91 configurationPayloadsByType];
              [v28 setObject:v25 forKeyedSubscript:v13];

              [v86 addObject:v13];
            }

            a1 = v87;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v103 objects:v110 count:16];
      }

      while (v7);
    }

    if ([v86 count])
    {
      v29 = [v85 managingOrganization];
      v30 = MEMORY[0x277D4B928];
      v31 = [*v4 userDSID];
      v32 = *MEMORY[0x277D4BBA0];
      v33 = [v30 fetchRequestMatchingBlueprintsForUserWithDSID:v31 ofType:*MEMORY[0x277D4BBA0] fromOrganization:v29];

      v102 = 0;
      v34 = [v33 execute:&v102];
      v35 = v102;
      v5 = v83;
      v3 = v84;
      if (v34)
      {
        v88 = v33;
        v36 = [v34 firstObject];
        if (!v36)
        {
          v37 = +[STUILog persistence];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_264BA2000, v37, OS_LOG_TYPE_DEFAULT, "Restrictions blueprint is missing, will create one", buf, 2u);
          }

          v36 = [objc_alloc(MEMORY[0x277D4B928]) initWithContext:v84];
          [v36 setType:v32];
          v38 = [v85 contentPrivacyActivationIdentifier];
          [v36 setIdentifier:v38];

          v39 = MEMORY[0x277CBEB98];
          v40 = [v84 objectWithID:v83];
          v41 = [v39 setWithObject:v40];
          [v36 setUsers:v41];

          [v36 setOrganization:v29];
        }

        v82 = v34;
        [v36 setIsDirty:1];
        [*v4 setNumExpectedChanges:{objc_msgSend(*v4, "numExpectedChanges") + 1}];
        obja = v36;
        v42 = [v36 configurations];
        v43 = [v42 allObjects];

        v44 = MEMORY[0x277CBEAC0];
        v45 = [v43 valueForKey:@"type"];
        v81 = v43;
        v46 = [v44 dictionaryWithObjects:v43 forKeys:v45];

        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v47 = v86;
        v48 = [v47 countByEnumeratingWithState:&v98 objects:v109 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v99;
          v80 = v29;
          while (2)
          {
            v51 = 0;
            v52 = v35;
            do
            {
              if (*v99 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v53 = *(*(&v98 + 1) + 8 * v51);
              v54 = [*v91 configurationPayloadsByType];
              v55 = [v54 objectForKeyedSubscript:v53];

              if (!v55)
              {
                v72 = +[STUILog persistence];
                if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                {
                  __84__STContentPrivacyViewModelCoordinator_saveValuesForRestrictions_completionHandler___block_invoke_cold_2();
                }

                v73 = MEMORY[0x277CCA9B8];
                v74 = *MEMORY[0x277D4BBD8];
                v107 = *MEMORY[0x277CCA450];
                v108 = @"restrictions blueprint configuration payload not found";
                v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
                v76 = [v73 errorWithDomain:v74 code:58 userInfo:v75];

                v77 = *(v87 + 48);
                v35 = v76;
                v5 = v83;
                v3 = v84;
                v29 = v80;
                v78 = v81;
                v33 = v88;
                v34 = v82;
                if (v77)
                {
                  if ([MEMORY[0x277CCACC8] isMainThread])
                  {
                    v77[2](v77, v35);
                  }

                  else
                  {
                    *buf = MEMORY[0x277D85DD0];
                    *&buf[8] = 3221225472;
                    *&buf[16] = __STUICallCompletionHandlerOnMainThread_block_invoke_0;
                    v114 = &unk_279B7D130;
                    v116 = v77;
                    v115 = v35;
                    dispatch_async(MEMORY[0x277D85CD0], buf);
                  }
                }

                goto LABEL_74;
              }

              v56 = [v46 objectForKeyedSubscript:v53];
              if (!v56)
              {
                v56 = [objc_alloc(MEMORY[0x277D4B930]) initWithContext:v84];
                v57 = [v55 declarationIdentifier];
                [v56 setIdentifier:v57];

                [v56 setType:v53];
                [v56 setBlueprint:obja];
              }

              [v55 updateServerHash];
              v97 = v52;
              v58 = [v55 serializeAsDataWithError:&v97];
              v35 = v97;

              if (!v58)
              {
                v79 = +[STUILog persistence];
                if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
                {
                  __84__STContentPrivacyViewModelCoordinator_saveValuesForRestrictions_completionHandler___block_invoke_cold_1();
                }

                (*(*(v87 + 48) + 16))();
                v5 = v83;
                v3 = v84;
                v29 = v80;
                v78 = v81;
                v33 = v88;
                v34 = v82;
                goto LABEL_74;
              }

              [v56 setPayloadPlist:v58];
              [*v91 setNumExpectedChanges:{objc_msgSend(*v91, "numExpectedChanges") + 1}];

              ++v51;
              v52 = v35;
            }

            while (v49 != v51);
            v49 = [v47 countByEnumeratingWithState:&v98 objects:v109 count:16];
            v3 = v84;
            v29 = v80;
            if (v49)
            {
              continue;
            }

            break;
          }
        }

        v59 = +[STUILog contentPrivacy];
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          __84__STContentPrivacyViewModelCoordinator_saveValuesForRestrictions_completionHandler___block_invoke_cold_3(v91);
        }

        v60 = [*v91 persistenceController];
        v96 = v35;
        v61 = [v60 saveContext:v3 error:&v96];
        v62 = v96;

        v5 = v83;
        if ((v61 & 1) == 0)
        {
          v63 = +[STUILog persistence];
          if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
          {
            __84__STContentPrivacyViewModelCoordinator_saveValuesForRestrictions_completionHandler___block_invoke_cold_4();
          }
        }

        v92[0] = MEMORY[0x277D85DD0];
        v92[1] = 3221225472;
        v93 = __84__STContentPrivacyViewModelCoordinator_saveValuesForRestrictions_completionHandler___block_invoke_815;
        v94 = &unk_279B7D640;
        v95 = *(v87 + 48);
        v64 = v92;
        v35 = v62;
        if ([MEMORY[0x277CCACC8] isMainThread])
        {
          (v93)(v64, v35);
        }

        else
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __STUICallCompletionHandlerOnMainThread_block_invoke_0;
          v114 = &unk_279B7D130;
          v116 = v64;
          v115 = v35;
          dispatch_async(MEMORY[0x277D85CD0], buf);
        }

        v33 = v88;
        v78 = v81;
        v34 = v82;

        v47 = v95;
LABEL_74:
      }

      else
      {
        v71 = +[STUILog persistence];
        if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
        {
          __84__STContentPrivacyViewModelCoordinator_saveValuesForRestrictions_completionHandler___block_invoke_cold_5();
        }

        (*(*(v87 + 48) + 16))();
      }
    }

    else
    {
      (*(*(a1 + 48) + 16))();
      v35 = 0;
      v5 = v83;
      v3 = v84;
    }
  }

  else
  {
    v65 = +[STUILog persistence];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
    {
      __84__STContentPrivacyViewModelCoordinator_saveContentPrivacyEnabled_completionHandler___block_invoke_cold_4();
    }

    v66 = MEMORY[0x277CCA9B8];
    v67 = *MEMORY[0x277D4BBD8];
    v111 = *MEMORY[0x277CCA450];
    v112 = @"user could not be found";
    v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
    v69 = [v66 errorWithDomain:v67 code:11 userInfo:v68];

    v70 = *(v87 + 48);
    v35 = v69;
    if (v70)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v70[2](v70, v35);
      }

      else
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __STUICallCompletionHandlerOnMainThread_block_invoke_0;
        v114 = &unk_279B7D130;
        v116 = v70;
        v115 = v35;
        dispatch_async(MEMORY[0x277D85CD0], buf);
      }
    }
  }
}

- (void)saveRestrictionValue:(id)value forItem:(id)item completionHandler:(id)handler
{
  v44[2] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  itemCopy = item;
  handlerCopy = handler;
  rmConfiguration = [itemCopy rmConfiguration];
  payloadKey = [itemCopy payloadKey];
  if (!valueCopy)
  {
    valueCopy = [MEMORY[0x277CBEB68] null];
  }

  if ([rmConfiguration isEqualToString:@"STCustomRestrictionConfiguration"])
  {
    if ([payloadKey isEqualToString:@"STCustomRestrictionCellularData"])
    {
      v14 = [[STRestrictionItem alloc] initWithConfiguration:@"network.cellular.settings" restrictionKey:@"allowAppCellularDataModification" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
      v43[0] = v14;
      v44[0] = valueCopy;
      v15 = [[STRestrictionItem alloc] initWithConfiguration:@"network.cellular.settings" restrictionKey:@"allowCellularPlanModification" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
      v43[1] = v15;
      v44[1] = valueCopy;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v44;
      v18 = v43;
    }

    else if ([payloadKey isEqualToString:@"STCustomRestrictionSiriDictation"])
    {
      v14 = [[STRestrictionItem alloc] initWithConfiguration:@"system.siri" restrictionKey:@"allowAssistant" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
      v41[0] = v14;
      v42[0] = valueCopy;
      v15 = [[STRestrictionItem alloc] initWithConfiguration:@"system.siri" restrictionKey:@"allowDictation" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
      v41[1] = v15;
      v42[1] = valueCopy;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v42;
      v18 = v41;
    }

    else
    {
      if (![payloadKey isEqualToString:@"STCustomRestrictionMathResults"])
      {
        if ([payloadKey isEqualToString:@"STCustomRestrictionWebFilterState"])
        {
          v20 = -[STContentPrivacyViewModelCoordinator _restrictionsForWebFilterState:](self, "_restrictionsForWebFilterState:", [valueCopy unsignedIntegerValue]);
        }

        else
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"STContentPrivacyViewModel.m" lineNumber:1406 description:{@"Unimplemented restriction %@ %@", rmConfiguration, payloadKey}];

          v20 = 0;
        }

        goto LABEL_23;
      }

      v14 = [[STRestrictionItem alloc] initWithConfiguration:@"system.siri" restrictionKey:@"allowMathPaperSolving" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
      v39[0] = v14;
      v40[0] = valueCopy;
      v15 = [[STRestrictionItem alloc] initWithConfiguration:@"system.siri" restrictionKey:@"allowKeyboardMathSolving" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
      v39[1] = v15;
      v40[1] = valueCopy;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v40;
      v18 = v39;
    }

    v20 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:2];

LABEL_23:
    viewModel = [(STContentPrivacyViewModelCoordinator *)self viewModel];
    valuesByRestriction = [(STRestrictionItem *)viewModel valuesByRestriction];
    [(STRestrictionItem *)valuesByRestriction setObject:valueCopy forKeyedSubscript:itemCopy];
    goto LABEL_24;
  }

  viewModel = [[STRestrictionItem alloc] initWithConfiguration:@"system.gamecenter" restrictionKey:@"allowedGameCenterOtherPlayerTypes" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
  v20 = 0;
  if ([itemCopy isEqual:viewModel])
  {
    v20 = [(STContentPrivacyViewModelCoordinator *)self createValuesForRestrictions:valueCopy multiplayerRestriction:itemCopy];
  }

  valuesByRestriction = [[STRestrictionItem alloc] initWithConfiguration:@"application.store" restrictionKey:@"allowAppInstallation" labelName:&stru_28766E5A8 type:0 restrictionValue:0];
  if ([itemCopy isEqual:valuesByRestriction])
  {
    v31 = payloadKey;
    v32 = rmConfiguration;
    viewModel2 = [(STContentPrivacyViewModelCoordinator *)self viewModel];
    isEligibleForAppDistribution = [viewModel2 isEligibleForAppDistribution];

    if ((isEligibleForAppDistribution & 1) == 0)
    {
      v24 = [[STRestrictionItem alloc] initWithConfiguration:@"application.store" restrictionKey:@"allowAppInstallation" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
      v37[0] = v24;
      v38[0] = valueCopy;
      v25 = [[STRestrictionItem alloc] initWithConfiguration:@"application.store" restrictionKey:@"allowUIAppInstallation" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
      v37[1] = v25;
      v38[1] = valueCopy;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];

      v20 = v26;
    }

    payloadKey = v31;
    rmConfiguration = v32;
  }

  if (!v20)
  {
    v27 = payloadKey;
    v35 = itemCopy;
    null = valueCopy;
    if (!valueCopy)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v36 = null;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    if (!valueCopy)
    {
    }

    payloadKey = v27;
  }

LABEL_24:

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __87__STContentPrivacyViewModelCoordinator_saveRestrictionValue_forItem_completionHandler___block_invoke;
  v33[3] = &unk_279B7D690;
  v33[4] = self;
  v34 = handlerCopy;
  v29 = handlerCopy;
  [(STContentPrivacyViewModelCoordinator *)self saveValuesForRestrictions:v20 completionHandler:v33];
}

void __87__STContentPrivacyViewModelCoordinator_saveRestrictionValue_forItem_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 viewModel];
  v5 = *(a1 + 32);
  v6 = [v8 restrictionsEnabled];
  v7 = [v8 valuesByRestriction];
  [v5 _reportCoreAnalyticsEventWithRestrictionsEnabled:v6 valuesByRestriction:v7 userType:objc_msgSend(v8 userIsManaged:{"userType"), objc_msgSend(v8, "userIsManaged")}];

  (*(*(a1 + 40) + 16))();
}

- (id)createValuesForRestrictions:(id)restrictions multiplayerRestriction:(id)restriction
{
  v34 = *MEMORY[0x277D85DE8];
  restrictionsCopy = restrictions;
  restrictionCopy = restriction;
  v7 = [[STRestrictionItem alloc] initWithConfiguration:@"system.gamecenter" restrictionKey:@"allowGameCenterNearbyMultiplayer" labelName:&stru_28766E5A8 type:0 restrictionValue:0];
  viewModel = [(STContentPrivacyViewModelCoordinator *)self viewModel];
  valuesByRestriction = [viewModel valuesByRestriction];
  v10 = [valuesByRestriction objectForKeyedSubscript:v7];
  bOOLValue = [v10 BOOLValue];

  v12 = [restrictionsCopy isEqual:&unk_28769D1A8];
  v13 = [[STRestrictionItem alloc] initWithConfiguration:@"system.gamecenter" restrictionKey:@"allowedGameCenterOtherPlayerTypes" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
  viewModel2 = [(STContentPrivacyViewModelCoordinator *)self viewModel];
  valuesByRestriction2 = [viewModel2 valuesByRestriction];
  v16 = [valuesByRestriction2 objectForKeyedSubscript:v13];
  v17 = [v16 isEqual:&unk_28769D1A8];

  if (v12 && (v17 & 1) == 0 && bOOLValue)
  {
    v18 = restrictionCopy;
    v30 = restrictionCopy;
    null = restrictionsCopy;
    if (!restrictionsCopy)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v31 = v7;
    v32 = null;
    v33 = MEMORY[0x277CBEC28];
    v20 = MEMORY[0x277CBEAC0];
    v21 = &v32;
    v22 = &v30;
  }

  else
  {
    if (v12 & 1 | ((v17 & 1) == 0) | bOOLValue & 1)
    {
      v23 = 0;
      v18 = restrictionCopy;
      goto LABEL_14;
    }

    v18 = restrictionCopy;
    v26 = restrictionCopy;
    null = restrictionsCopy;
    if (!restrictionsCopy)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v27 = v7;
    v28 = null;
    v29 = MEMORY[0x277CBEC38];
    v20 = MEMORY[0x277CBEAC0];
    v21 = &v28;
    v22 = &v26;
  }

  v23 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:{2, restrictionCopy, v26, v27, v28, v29, v30, v31, v32, v33, v34}];
  if (!restrictionsCopy)
  {
  }

LABEL_14:

  return v23;
}

+ (id)_coreAnalyticsEventWithRestrictionsEnabled:(BOOL)enabled valuesByRestriction:(id)restriction userType:(unint64_t)type userIsManaged:(BOOL)managed
{
  enabledCopy = enabled;
  restrictionCopy = restriction;
  v7 = [[STRestrictionItem alloc] initWithConfiguration:@"STSBCapabilityConfiguration" restrictionKey:@"kTCCServiceMediaLibrary" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
  v8 = [restrictionCopy objectForKeyedSubscript:v7];

  if (v8)
  {
    v37 = [v8 BOOLValue] ^ 1;
  }

  else
  {
    v37 = 0;
  }

  v9 = [[STRestrictionItem alloc] initWithConfiguration:@"system.gamecenter" restrictionKey:@"allowedGameCenterOtherPlayerTypes" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
  v10 = [restrictionCopy objectForKeyedSubscript:v9];

  if (v10)
  {
    v36 = [v10 integerValue] != 2;
  }

  else
  {
    v36 = 0;
  }

  v11 = [[STRestrictionItem alloc] initWithConfiguration:@"system.gamecenter" restrictionKey:@"allowAddingGameCenterFriends" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
  v12 = [restrictionCopy objectForKeyedSubscript:v11];

  if (v12)
  {
    HIDWORD(v35) = [v12 BOOLValue] ^ 1;
  }

  else
  {
    HIDWORD(v35) = 0;
  }

  v13 = [[STRestrictionItem alloc] initWithConfiguration:@"system.gamecenter" restrictionKey:@"allowGameCenterFriendsSharingModification" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
  v14 = [restrictionCopy objectForKeyedSubscript:v13];

  if (v14)
  {
    v15 = [v14 BOOLValue] ^ 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = [[STRestrictionItem alloc] initWithConfiguration:@"system.camera" restrictionKey:@"allowScreenRecording" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
  v17 = [restrictionCopy objectForKeyedSubscript:v16];

  if (v17)
  {
    v18 = [v17 BOOLValue] ^ 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = [[STRestrictionItem alloc] initWithConfiguration:@"system.gamecenter" restrictionKey:@"allowGameCenterNearbyMultiplayer" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
  v20 = [restrictionCopy objectForKeyedSubscript:v19];

  if (v20)
  {
    v21 = [v20 BOOLValue] ^ 1;
  }

  else
  {
    v21 = 0;
  }

  v22 = [[STRestrictionItem alloc] initWithConfiguration:@"system.gamecenter" restrictionKey:@"allowGameCenterPrivateMessaging" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
  v23 = [restrictionCopy objectForKeyedSubscript:v22];

  if (v23)
  {
    v24 = [v23 BOOLValue] ^ 1;
  }

  else
  {
    v24 = 0;
  }

  v25 = [[STRestrictionItem alloc] initWithConfiguration:@"system.gamecenter" restrictionKey:@"allowGameCenterProfilePrivacyModification" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
  v26 = [restrictionCopy objectForKeyedSubscript:v25];

  if (v26)
  {
    v27 = [v26 BOOLValue] ^ 1;
  }

  else
  {
    v27 = 0;
  }

  v28 = [[STRestrictionItem alloc] initWithConfiguration:@"system.gamecenter" restrictionKey:@"allowGameCenterProfileModification" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
  v29 = [restrictionCopy objectForKeyedSubscript:v28];

  if (v29)
  {
    v30 = [v29 BOOLValue] ^ 1;
  }

  else
  {
    v30 = 0;
  }

  if (type > 7)
  {
    v31 = 0;
  }

  else
  {
    v31 = qword_264CD1A08[type];
  }

  LOBYTE(v35) = managed;
  BYTE3(v34) = v30;
  BYTE2(v34) = v27;
  BYTE1(v34) = v24;
  LOBYTE(v34) = v21;
  v32 = [objc_alloc(MEMORY[0x277D4BA68]) initWithContentAndPrivacyRestrictionsEnabled:enabledCopy mediaAndAppleMusicIsRestricted:v37 gameCenterMultiplayerGamesIsRestricted:v36 gameCenterAddingFriendsIsRestricted:HIDWORD(v35) gameCenterConnectWithFriendsIsRestricted:v15 gameCenterScreenRecordingIsRestricted:v18 gameCenterNearbyMultiplayerIsRestricted:v34 gameCenterPrivateMessagingIsRestricted:v31 gameCenterProfilePrivacyChangesIsRestricted:v35 gameCenterAvatarAndNicknameChangesIsRestricted:? userAgeGroup:? userIsManaged:?];

  return v32;
}

- (void)_reportCoreAnalyticsEventWithRestrictionsEnabled:(BOOL)enabled valuesByRestriction:(id)restriction userType:(unint64_t)type userIsManaged:(BOOL)managed
{
  v6 = [STContentPrivacyViewModelCoordinator _coreAnalyticsEventWithRestrictionsEnabled:enabled valuesByRestriction:restriction userType:type userIsManaged:managed];
  [MEMORY[0x277D4B970] reportEvent:v6];
}

- (void)_reportCoreAnalyticsEventForChangedCommunicationLimits:(id)limits userType:(unint64_t)type userIsRemote:(BOOL)remote
{
  remoteCopy = remote;
  limitsCopy = limits;
  v7 = [limitsCopy screenTimeCommunicationLimit] || objc_msgSend(limitsCopy, "downtimeCommunicationLimit");
  contactManagementState = [limitsCopy contactManagementState];
  if (type > 7)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_264CD1A08[type];
  }

  v10 = [objc_alloc(MEMORY[0x277D4B950]) initWithCommunicationLimited:v7 contactManagementEnabled:contactManagementState == 2 contactEditingAllowed:objc_msgSend(limitsCopy userAgeGroup:"contactsEditable") userIsRemote:{v9, remoteCopy}];
  [MEMORY[0x277D4B970] reportEvent:v10];
}

- (void)_valueForMCFeature:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_setValue:forMCFeature:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_valueForSBCapability:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_setValue:forSBCapability:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)valueForRestriction:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"STContentPrivacyViewModel.m" lineNumber:771 description:{@"Unimplemented configuration %@", a3}];
}

void __75__STContentPrivacyViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_264BA2000, a2, OS_LOG_TYPE_ERROR, "Deleting Family Restrictions blueprint with Personal organization identifier: %{public}@", v4, 0xCu);
}

void __75__STContentPrivacyViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_cold_4(id *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [*a1 userDSID];
  OUTLINED_FUNCTION_0();
  v7 = 2114;
  v8 = a2;
  _os_log_fault_impl(&dword_264BA2000, a3, OS_LOG_TYPE_FAULT, "failed to fetch user for restrictions %{public}@: %{public}@", v6, 0x16u);
}

@end
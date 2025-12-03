@interface STContentPrivacyMediaRestrictionsDetailController
- (STContentPrivacyMediaRestrictionsDetailController)initWithRegionRatings:(id)ratings;
- (id)_appRatingsAndExceptionsSpecifierWithRatings:(id)ratings restrictionsStringsTable:(id)table screenTimeSettingsUIBundle:(id)bundle;
- (id)_appRatingsSpecifierWithRatings:(id)ratings restrictionsStringsTable:(id)table screenTimeSettingsUIBundle:(id)bundle;
- (id)_getSpecifierValueForItem:(id)item viewModel:(id)model restrictionValues:(id)values;
- (id)_legacyAppsAndRatingsSpecifierWithRatings:(id)ratings restrictionsStringsTable:(id)table screenTimeSettingsUIBundle:(id)bundle;
- (id)_titlesAndValuesForItem:(id)item titlesByValue:(id)value sortByTitle:(BOOL)title;
- (id)defaultLinkListSpecifierWithConfiguration:(id)configuration key:(id)key;
- (id)defaultLinkListSpecifierWithConfiguration:(id)configuration key:(id)key titlesByValue:(id)value sortByTitle:(BOOL)title;
- (id)defaultLinkListSpecifierWithItem:(id)item titlesByValue:(id)value sortByTitle:(BOOL)title;
- (id)defaultSwitchSpecifierWithConfiguration:(id)configuration key:(id)key;
- (id)getItemSpecifierValue:(id)value;
- (id)linkListSpecifierForTVAndMoviesWithConfiguration:(id)configuration key:(id)key footerKey:(id)footerKey titlesByValue:(id)value;
- (id)radioGroupSpecifierWithName:(id)name footerText:(id)text item:(id)item;
- (id)specifiers;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
- (void)setItemSpecifierValue:(id)value specifier:(id)specifier;
- (void)showWebFilterRestrictions:(id)restrictions;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation STContentPrivacyMediaRestrictionsDetailController

- (STContentPrivacyMediaRestrictionsDetailController)initWithRegionRatings:(id)ratings
{
  ratingsCopy = ratings;
  v9.receiver = self;
  v9.super_class = STContentPrivacyMediaRestrictionsDetailController;
  v6 = [(STPINListViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_regionRatings, ratings);
  }

  return v7;
}

- (id)_appRatingsSpecifierWithRatings:(id)ratings restrictionsStringsTable:(id)table screenTimeSettingsUIBundle:(id)bundle
{
  bundleCopy = bundle;
  tableCopy = table;
  ratingsCopy = ratings;
  if (_os_feature_enabled_impl())
  {
    [(STContentPrivacyMediaRestrictionsDetailController *)self _appRatingsAndExceptionsSpecifierWithRatings:ratingsCopy restrictionsStringsTable:tableCopy screenTimeSettingsUIBundle:bundleCopy];
  }

  else
  {
    [(STContentPrivacyMediaRestrictionsDetailController *)self _legacyAppsAndRatingsSpecifierWithRatings:ratingsCopy restrictionsStringsTable:tableCopy screenTimeSettingsUIBundle:bundleCopy];
  }
  v11 = ;

  return v11;
}

- (id)_appRatingsAndExceptionsSpecifierWithRatings:(id)ratings restrictionsStringsTable:(id)table screenTimeSettingsUIBundle:(id)bundle
{
  bundleCopy = bundle;
  tableCopy = table;
  ratingsCopy = ratings;
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  v14 = [viewModel visibleRestrictionWithConfiguration:@"system.ratings" key:@"ratingApps"];

  uiLabel = [v14 uiLabel];
  v16 = [bundleCopy localizedStringForKey:uiLabel value:&stru_28766E5A8 table:tableCopy];

  v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v16 target:self set:sel_setItemSpecifierValue_specifier_ get:sel_getItemSpecifierValue_ detail:objc_opt_class() cell:2 edit:0];
  [v17 setIdentifier:@"APP_RATING"];
  coordinator2 = [(STPINListViewController *)self coordinator];
  [v17 setObject:coordinator2 forKeyedSubscript:@"rootViewModelCoordinator"];

  v19 = [STAppExceptionsController alloc];
  coordinator3 = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator2 = [coordinator3 contentPrivacyCoordinator];
  viewModel2 = [contentPrivacyCoordinator2 viewModel];
  userDSID = [viewModel2 userDSID];
  v24 = [(STAppExceptionsController *)v19 initWithManagedUserDSID:userDSID];
  [v17 setObject:v24 forKeyedSubscript:@"controller"];

  v25 = MEMORY[0x277CCABB0];
  coordinator4 = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator3 = [coordinator4 contentPrivacyCoordinator];
  viewModel3 = [contentPrivacyCoordinator3 viewModel];
  v29 = [v25 numberWithBool:{objc_msgSend(viewModel3, "shouldEnableRestriction:", v14)}];
  [v17 setObject:v29 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [v17 setObject:v14 forKeyedSubscript:0x287672648];
  [v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
  v30 = [(STContentPrivacyMediaRestrictionsDetailController *)self _titlesAndValuesForItem:v14 titlesByValue:ratingsCopy sortByTitle:0];

  values = [v30 values];
  titles = [v30 titles];
  [v17 setValues:values titles:titles];

  [v17 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];

  return v17;
}

- (id)_legacyAppsAndRatingsSpecifierWithRatings:(id)ratings restrictionsStringsTable:(id)table screenTimeSettingsUIBundle:(id)bundle
{
  tableCopy = table;
  bundleCopy = bundle;
  v10 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithConfiguration:@"system.ratings" key:@"ratingApps" titlesByValue:ratings sortByTitle:0];
  titleDictionary = [v10 titleDictionary];
  allKeys = [titleDictionary allKeys];
  v13 = [allKeys containsObject:&unk_28769D100];

  if (v13)
  {
    v14 = [bundleCopy localizedStringForKey:@"UnratedExplanationFooter" value:&stru_28766E5A8 table:tableCopy];
    [v10 setObject:v14 forKeyedSubscript:0x287674048];
  }

  return v10;
}

- (id)specifiers
{
  v122[2] = *MEMORY[0x277D85DE8];
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  isLoaded = [viewModel isLoaded];

  if (isLoaded)
  {
    v7 = objc_opt_new();
    v89 = v7;
    regionRatings = [(STContentPrivacyMediaRestrictionsDetailController *)self regionRatings];
    if (_os_feature_enabled_impl())
    {
      v9 = @"AllowedMediaServicesLabel";
    }

    else
    {
      v9 = @"AllowedContentLabel";
    }

    v10 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
    v11 = +[STScreenTimeSettingsUIBundle bundle];
    v101 = [v11 localizedStringForKey:v9 value:&stru_28766E5A8 table:v10];
    v12 = [STContentPrivacyMediaRestrictionsDetailController radioGroupSpecifierWithName:"radioGroupSpecifierWithName:footerText:item:" footerText:? item:?];
    [v7 addObject:v12];

    preferredRegion = [regionRatings preferredRegion];
    v102 = [regionRatings localizedMovieRatingsForRegion:preferredRegion];
    v106 = [regionRatings localizedTVRatingsForRegion:preferredRegion];
    v103 = regionRatings;
    v100 = preferredRegion;
    v105 = [regionRatings localizedAppRatingsForRegion:preferredRegion];
    v121[0] = MEMORY[0x277CBEC28];
    v14 = [v11 localizedStringForKey:@"CleanLabel" value:&stru_28766E5A8 table:v10];
    v122[0] = v14;
    v15 = MEMORY[0x277CBEC38];
    v121[1] = MEMORY[0x277CBEC38];
    v16 = [v11 localizedStringForKey:@"ExplicitLabel" value:&stru_28766E5A8 table:v10];
    v122[1] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:v121 count:2];

    v18 = MEMORY[0x277CBEC28];
    v119[0] = MEMORY[0x277CBEC28];
    v19 = [v11 localizedStringForKey:@"CleanLabelBooks" value:&stru_28766E5A8 table:v10];
    v119[1] = v15;
    v120[0] = v19;
    v20 = [v11 localizedStringForKey:@"ExplicitLabel" value:&stru_28766E5A8 table:v10];
    v120[1] = v20;
    v104 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:2];

    v117[0] = v18;
    v21 = [v11 localizedStringForKey:@"OffLabel" value:&stru_28766E5A8 table:v10];
    v117[1] = v15;
    v118[0] = v21;
    v22 = [v11 localizedStringForKey:@"OnLabel" value:&stru_28766E5A8 table:v10];
    v118[1] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:2];

    v99 = v17;
    v24 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithConfiguration:@"system.ratings" key:@"allowExplicitContent" titlesByValue:v17 sortByTitle:0];
    [v89 addObject:v24];

    v25 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithConfiguration:@"system.music" key:@"allowMusicVideos" titlesByValue:v23 sortByTitle:0];
    [v89 addObject:v25];

    v98 = v23;
    v26 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithConfiguration:@"system.music" key:@"allowMusicArtistActivity" titlesByValue:v23 sortByTitle:0];
    [v89 addObject:v26];

    coordinator2 = [(STPINListViewController *)self coordinator];
    viewModel2 = [coordinator2 viewModel];
    v29 = [viewModel2 me];
    type = [v29 type];

    if (type == 7)
    {
      lastObject = [v89 lastObject];
      [lastObject setObject:@"1" forKeyedSubscript:0x287673FE8];
    }

    v32 = v102;
    v33 = [(STContentPrivacyMediaRestrictionsDetailController *)self linkListSpecifierForTVAndMoviesWithConfiguration:@"system.ratings" key:@"ratingMovies" footerKey:@"allowShowingUndownloadedMovies" titlesByValue:v102];
    [v89 addObject:v33];

    v34 = [(STContentPrivacyMediaRestrictionsDetailController *)self linkListSpecifierForTVAndMoviesWithConfiguration:@"system.ratings" key:@"ratingTVShows" footerKey:@"allowShowingUndownloadedTV" titlesByValue:v106];
    [v89 addObject:v34];

    v35 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithConfiguration:@"media.settings" key:@"allowBookstoreErotica" titlesByValue:v104 sortByTitle:0];
    [v89 addObject:v35];

    v36 = [(STContentPrivacyMediaRestrictionsDetailController *)self _appRatingsSpecifierWithRatings:v105 restrictionsStringsTable:v10 screenTimeSettingsUIBundle:v11];
    [(STContentPrivacyMediaRestrictionsDetailController *)self setAppsSpecifier:v36];

    appsSpecifier = [(STContentPrivacyMediaRestrictionsDetailController *)self appsSpecifier];
    [v89 addObject:appsSpecifier];

    v38 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithConfiguration:@"application.store" key:@"allowAppClips"];
    [v89 addObject:v38];

    v115[0] = &unk_28769D118;
    v39 = [v11 localizedStringForKey:@"UnrestrictedAccessSpecifierName" value:&stru_28766E5A8 table:v10];
    v116[0] = v39;
    v115[1] = &unk_28769D130;
    v40 = [v11 localizedStringForKey:@"LimitAdultWebsitesSpecifierName" value:&stru_28766E5A8 table:v10];
    v116[1] = v40;
    v115[2] = &unk_28769D148;
    v41 = [v11 localizedStringForKey:@"AADC_AllowedWebsitesSpecifierName" value:&stru_28766E5A8 table:v10];
    v116[2] = v41;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:3];

    v96 = [v11 localizedStringForKey:@"WebContentSpecifierName" value:&stru_28766E5A8 table:v10];
    v43 = [STContentPrivacyMediaRestrictionsDetailController radioGroupSpecifierWithName:"radioGroupSpecifierWithName:footerText:item:" footerText:? item:?];
    [v89 addObject:v43];

    v97 = v42;
    v44 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithConfiguration:0x2876725E8 key:0x2876726E8 titlesByValue:v42 sortByTitle:0];
    coordinator3 = [(STPINListViewController *)self coordinator];
    contentPrivacyCoordinator2 = [coordinator3 contentPrivacyCoordinator];
    LOBYTE(v40) = [contentPrivacyCoordinator2 areRestrictionsEditable];

    if ((v40 & 1) == 0)
    {
      [v44 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }

    v95 = v44;
    [v89 addObject:v44];
    lastObject2 = [v89 lastObject];
    [lastObject2 setControllerLoadAction:sel_showWebFilterRestrictions_];

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v48 = [v11 localizedStringForKey:@"SiriLabel" value:&stru_28766E5A8 table:v10];
      v49 = [(STContentPrivacyMediaRestrictionsDetailController *)self radioGroupSpecifierWithName:v48 footerText:0 item:0];
      [v89 addObject:v49];

      v50 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithConfiguration:@"system.siri" key:@"allowAssistantUserGeneratedContent"];
      [v89 addObject:v50];

      v51 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithConfiguration:@"system.siri" key:@"forceAssistantProfanityFilter"];
      [v89 addObject:v51];
    }

    v94 = [v11 localizedStringForKey:@"GameCenterLabel" value:&stru_28766E5A8 table:v10];
    v52 = [STContentPrivacyMediaRestrictionsDetailController radioGroupSpecifierWithName:"radioGroupSpecifierWithName:footerText:item:" footerText:? item:?];
    [v89 addObject:v52];

    v113[0] = &unk_28769D160;
    v53 = [v11 localizedStringForKey:@"DontAllowLabel" value:&stru_28766E5A8 table:v10];
    v114[0] = v53;
    v113[1] = &unk_28769D178;
    v54 = [v11 localizedStringForKey:@"AllowWithFriendsOnlySpecifierName" value:&stru_28766E5A8 table:v10];
    v114[1] = v54;
    v113[2] = &unk_28769D190;
    v55 = [v11 localizedStringForKey:@"AllowWithEveryoneSpecifierName" value:&stru_28766E5A8 table:v10];
    v114[2] = v55;
    v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:3];

    v93 = v56;
    v57 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithConfiguration:@"system.gamecenter" key:0x2876726A8 titlesByValue:v56 sortByTitle:0];
    [v89 addObject:v57];

    v58 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithConfiguration:@"system.gamecenter" key:@"allowAddingGameCenterFriends"];
    [v89 addObject:v58];

    v59 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithConfiguration:@"system.gamecenter" key:@"allowGameCenterFriendsSharingModification"];
    v60 = [v11 localizedStringForKey:@"ConnectWithFriendsExplanatoryFooterText" value:&stru_28766E5A8 table:v10];
    [v59 setObject:v60 forKeyedSubscript:0x287674048];

    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v62 = [v11 localizedStringForKey:@"ConnectWithFriendsContinuedExplanatoryText" value:&stru_28766E5A8 table:v10];
    [emptyGroupSpecifier setObject:v62 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    v91 = emptyGroupSpecifier;
    v112 = emptyGroupSpecifier;
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:&v112 count:1];
    [v59 setObject:v63 forKeyedSubscript:0x287674008];

    v92 = v59;
    [v89 addObject:v59];
    v64 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithConfiguration:@"system.camera" key:@"allowScreenRecording"];
    [v89 addObject:v64];

    v65 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithConfiguration:@"system.gamecenter" key:0x287672688];
    [v89 addObject:v65];

    v66 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithConfiguration:@"system.gamecenter" key:@"allowGameCenterPrivateMessaging"];
    v67 = [v11 localizedStringForKey:@"PrivateMessagingFooter" value:&stru_28766E5A8 table:v10];
    [v66 setObject:v67 forKeyedSubscript:*MEMORY[0x277D40118]];

    v90 = v66;
    [v89 addObject:v66];
    v68 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithConfiguration:@"system.gamecenter" key:@"allowGameCenterProfilePrivacyModification"];
    [v89 addObject:v68];

    v69 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithConfiguration:@"system.gamecenter" key:@"allowGameCenterProfileModification"];
    [v89 addObject:v69];

    coordinator4 = [(STPINListViewController *)self coordinator];
    contentPrivacyCoordinator3 = [coordinator4 contentPrivacyCoordinator];
    LOBYTE(v59) = [contentPrivacyCoordinator3 areRestrictionsEditable];

    v72 = v103;
    if ((v59 & 1) == 0)
    {
      v87 = v11;
      v88 = v10;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v73 = v89;
      v74 = [v73 countByEnumeratingWithState:&v107 objects:v111 count:16];
      if (v74)
      {
        v75 = v74;
        v76 = *v108;
        v77 = *MEMORY[0x277D3FF38];
        v78 = MEMORY[0x277CBEC28];
        do
        {
          for (i = 0; i != v75; ++i)
          {
            if (*v108 != v76)
            {
              objc_enumerationMutation(v73);
            }

            v80 = *(*(&v107 + 1) + 8 * i);
            v81 = [(STContentPrivacyMediaRestrictionsDetailController *)self appsSpecifier:v87];

            if (v80 != v81)
            {
              [v80 setObject:v78 forKeyedSubscript:v77];
            }
          }

          v75 = [v73 countByEnumeratingWithState:&v107 objects:v111 count:16];
        }

        while (v75);
      }

      v32 = v102;
      v72 = v103;
      v11 = v87;
      v10 = v88;
    }

    v82 = [v89 copy];
    v83 = *MEMORY[0x277D3FC48];
    v84 = *(&self->super.super.super.super.super.super.super.isa + v83);
    *(&self->super.super.super.super.super.super.super.isa + v83) = v82;

    v85 = *(&self->super.super.super.super.super.super.super.isa + v83);
  }

  else
  {
    v85 = MEMORY[0x277CBEBF8];
  }

  return v85;
}

- (void)showWebFilterRestrictions:(id)restrictions
{
  restrictionsCopy = restrictions;
  v7 = objc_opt_new();
  coordinator = [(STPINListViewController *)self coordinator];
  [v7 setCoordinator:coordinator];

  [v7 setParentController:self];
  rootController = [(STContentPrivacyMediaRestrictionsDetailController *)self rootController];
  [v7 setRootController:rootController];

  [v7 setSpecifier:restrictionsCopy];
  [(STContentPrivacyMediaRestrictionsDetailController *)self showController:v7 animate:1];
}

- (id)getItemSpecifierValue:(id)value
{
  valueCopy = value;
  v5 = [valueCopy objectForKeyedSubscript:0x287672648];
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];

  values = [valueCopy values];

  v10 = [(STContentPrivacyMediaRestrictionsDetailController *)self _getSpecifierValueForItem:v5 viewModel:viewModel restrictionValues:values];

  return v10;
}

- (id)_getSpecifierValueForItem:(id)item viewModel:(id)model restrictionValues:(id)values
{
  itemCopy = item;
  modelCopy = model;
  valuesCopy = values;
  valuesByRestriction = [modelCopy valuesByRestriction];
  v12 = [valuesByRestriction objectForKeyedSubscript:itemCopy];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [modelCopy defaultValueForRestriction:itemCopy];
  }

  v15 = v14;

  if ([itemCopy restrictionType] && (objc_msgSend(itemCopy, "rmConfiguration"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"system.ratings"), v16, v17))
  {
    regionRatings = [(STContentPrivacyMediaRestrictionsDetailController *)self regionRatings];
    payloadKey = [itemCopy payloadKey];
    v20 = [regionRatings getClosestRestrictionMatch:v15 within:valuesCopy forPayloadKey:payloadKey];
  }

  else
  {
    v20 = v15;
  }

  return v20;
}

- (void)setItemSpecifierValue:(id)value specifier:(id)specifier
{
  specifierCopy = specifier;
  valueCopy = value;
  v8 = [specifierCopy objectForKeyedSubscript:0x287672648];
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__STContentPrivacyMediaRestrictionsDetailController_setItemSpecifierValue_specifier___block_invoke;
  v12[3] = &unk_279B7CBC8;
  v12[4] = self;
  v13 = specifierCopy;
  v11 = specifierCopy;
  [contentPrivacyCoordinator saveRestrictionValue:valueCopy forItem:v8 completionHandler:v12];
}

- (void)dealloc
{
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  [contentPrivacyCoordinator removeObserver:self forKeyPath:@"viewModel.isLoaded" context:@"MediaRestrictionsViewModelLoadedContext"];

  v5.receiver = self;
  v5.super_class = STContentPrivacyMediaRestrictionsDetailController;
  [(STListViewController *)&v5 dealloc];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STPINListViewController *)self coordinator];

  if (coordinator != coordinatorCopy)
  {
    coordinator2 = [(STPINListViewController *)self coordinator];
    contentPrivacyCoordinator = [coordinator2 contentPrivacyCoordinator];
    [contentPrivacyCoordinator removeObserver:self forKeyPath:@"viewModel.isLoaded" context:@"MediaRestrictionsViewModelLoadedContext"];

    v10.receiver = self;
    v10.super_class = STContentPrivacyMediaRestrictionsDetailController;
    [(STPINListViewController *)&v10 setCoordinator:coordinatorCopy];
    coordinator3 = [(STPINListViewController *)self coordinator];
    contentPrivacyCoordinator2 = [coordinator3 contentPrivacyCoordinator];
    [contentPrivacyCoordinator2 addObserver:self forKeyPath:@"viewModel.isLoaded" options:0 context:@"MediaRestrictionsViewModelLoadedContext"];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"MediaRestrictionsViewModelLoadedContext")
  {
    v7 = [(STPINListViewController *)self coordinator:path];
    contentPrivacyCoordinator = [v7 contentPrivacyCoordinator];
    viewModel = [contentPrivacyCoordinator viewModel];
    isLoaded = [viewModel isLoaded];

    if (isLoaded)
    {

      [(STContentPrivacyMediaRestrictionsDetailController *)self reloadSpecifiers];
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = STContentPrivacyMediaRestrictionsDetailController;
    [(STListViewController *)&v11 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (id)_titlesAndValuesForItem:(id)item titlesByValue:(id)value sortByTitle:(BOOL)title
{
  titleCopy = title;
  v24[2] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  itemCopy = item;
  v9 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v10 = +[STScreenTimeSettingsUIBundle bundle];
  v11 = objc_alloc_init(STSpecifierValuesAndTitles);
  restrictionType = [itemCopy restrictionType];

  if (valueCopy)
  {
    if (titleCopy)
    {
      allKeys = [valueCopy keysSortedByValueUsingSelector:sel_localizedCaseInsensitiveCompare_];
      [(STSpecifierValuesAndTitles *)v11 setValues:allKeys];
    }

    else
    {
      allKeys = [valueCopy allKeys];
      v18 = [allKeys sortedArrayUsingSelector:sel_compare_];
      [(STSpecifierValuesAndTitles *)v11 setValues:v18];
    }

    values = [(STSpecifierValuesAndTitles *)v11 values];
    v20 = [valueCopy objectsForKeys:values notFoundMarker:&stru_28766E5A8];
    [(STSpecifierValuesAndTitles *)v11 setTitles:v20];

LABEL_9:
    goto LABEL_12;
  }

  if (restrictionType == 1)
  {
    [(STSpecifierValuesAndTitles *)v11 setValues:&unk_28769D820];
    v14 = [v10 localizedStringForKey:@"AllowLabel" value:&stru_28766E5A8 table:v9];
    v15 = [v10 localizedStringForKey:@"DontAllowLabel" value:&stru_28766E5A8 table:v9];
    v23[0] = v14;
    v23[1] = v15;
    v16 = MEMORY[0x277CBEA60];
    v17 = v23;
  }

  else
  {
    if (restrictionType)
    {
      values = +[STUILog contentPrivacy];
      if (os_log_type_enabled(values, OS_LOG_TYPE_FAULT))
      {
        [STContentPrivacyMediaRestrictionsDetailController _titlesAndValuesForItem:restrictionType titlesByValue:values sortByTitle:?];
      }

      goto LABEL_9;
    }

    [(STSpecifierValuesAndTitles *)v11 setValues:&unk_28769D808];
    v14 = [v10 localizedStringForKey:@"AllowLabel" value:&stru_28766E5A8 table:v9];
    v15 = [v10 localizedStringForKey:@"DontAllowLabel" value:&stru_28766E5A8 table:v9];
    v24[0] = v14;
    v24[1] = v15;
    v16 = MEMORY[0x277CBEA60];
    v17 = v24;
  }

  v21 = [v16 arrayWithObjects:v17 count:2];
  [(STSpecifierValuesAndTitles *)v11 setTitles:v21];

LABEL_12:

  return v11;
}

- (id)defaultLinkListSpecifierWithItem:(id)item titlesByValue:(id)value sortByTitle:(BOOL)title
{
  titleCopy = title;
  valueCopy = value;
  itemCopy = item;
  v10 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v11 = +[STScreenTimeSettingsUIBundle bundle];
  uiLabel = [itemCopy uiLabel];
  v13 = [v11 localizedStringForKey:uiLabel value:&stru_28766E5A8 table:v10];

  v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v13 target:self set:sel_setItemSpecifierValue_specifier_ get:sel_getItemSpecifierValue_ detail:objc_opt_class() cell:2 edit:0];
  coordinator = [(STPINListViewController *)self coordinator];
  [v14 setObject:coordinator forKeyedSubscript:0x287675C48];

  v16 = [(STContentPrivacyMediaRestrictionsDetailController *)self _titlesAndValuesForItem:itemCopy titlesByValue:valueCopy sortByTitle:titleCopy];

  v17 = MEMORY[0x277CCABB0];
  coordinator2 = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator2 contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  v21 = [v17 numberWithBool:{objc_msgSend(viewModel, "shouldEnableRestriction:", itemCopy)}];
  [v14 setObject:v21 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  values = [v16 values];
  [v14 setObject:values forKeyedSubscript:@"STMediaRestrictionRanksSpecifierKey"];

  [v14 setObject:itemCopy forKeyedSubscript:0x287672648];
  [v14 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
  values2 = [v16 values];
  titles = [v16 titles];
  [v14 setValues:values2 titles:titles];

  return v14;
}

- (id)defaultLinkListSpecifierWithConfiguration:(id)configuration key:(id)key titlesByValue:(id)value sortByTitle:(BOOL)title
{
  titleCopy = title;
  valueCopy = value;
  keyCopy = key;
  configurationCopy = configuration;
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  v16 = [viewModel visibleRestrictionWithConfiguration:configurationCopy key:keyCopy];

  if (!v16)
  {
    [STContentPrivacyMediaRestrictionsDetailController defaultLinkListSpecifierWithConfiguration:key:titlesByValue:sortByTitle:];
  }

  v17 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithItem:v16 titlesByValue:valueCopy sortByTitle:titleCopy];

  return v17;
}

- (id)defaultLinkListSpecifierWithConfiguration:(id)configuration key:(id)key
{
  keyCopy = key;
  configurationCopy = configuration;
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  v11 = [viewModel visibleRestrictionWithConfiguration:configurationCopy key:keyCopy];

  if (!v11)
  {
    [STContentPrivacyMediaRestrictionsDetailController defaultLinkListSpecifierWithConfiguration:key:];
  }

  v12 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithItem:v11 titlesByValue:0 sortByTitle:0];

  return v12;
}

- (id)radioGroupSpecifierWithName:(id)name footerText:(id)text item:(id)item
{
  textCopy = text;
  itemCopy = item;
  v9 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:name];
  [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FFE8]];
  if (textCopy)
  {
    [v9 setObject:textCopy forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  if (itemCopy)
  {
    [v9 setObject:itemCopy forKeyedSubscript:0x287672648];
  }

  return v9;
}

- (id)defaultSwitchSpecifierWithConfiguration:(id)configuration key:(id)key
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];

  v7 = objc_opt_new();

  return v7;
}

- (id)linkListSpecifierForTVAndMoviesWithConfiguration:(id)configuration key:(id)key footerKey:(id)footerKey titlesByValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  footerKeyCopy = footerKey;
  configurationCopy = configuration;
  if (([keyCopy isEqualToString:@"ratingMovies"] & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"ratingTVShows") & 1) == 0)
  {
    [STContentPrivacyMediaRestrictionsDetailController linkListSpecifierForTVAndMoviesWithConfiguration:key:footerKey:titlesByValue:];
  }

  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  v16 = [viewModel visibleRestrictionWithConfiguration:configurationCopy key:keyCopy];

  v32 = keyCopy;
  if (!v16)
  {
    [STContentPrivacyMediaRestrictionsDetailController linkListSpecifierForTVAndMoviesWithConfiguration:key:footerKey:titlesByValue:];
  }

  allKeys = [valueCopy allKeys];
  v18 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v31 = [valueCopy objectsForKeys:v18 notFoundMarker:&stru_28766E5A8];

  v30 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v19 = +[STScreenTimeSettingsUIBundle bundle];
  uiLabel = [v16 uiLabel];
  v21 = [v19 localizedStringForKey:uiLabel value:&stru_28766E5A8 table:v30];

  v22 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v21 target:self set:sel_setItemSpecifierValue_specifier_ get:sel_getItemSpecifierValue_ detail:objc_opt_class() cell:2 edit:0];
  v23 = MEMORY[0x277CCABB0];
  coordinator2 = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator2 = [coordinator2 contentPrivacyCoordinator];
  viewModel2 = [contentPrivacyCoordinator2 viewModel];
  v27 = [v23 numberWithBool:{objc_msgSend(viewModel2, "shouldEnableRestriction:", v16)}];
  [v22 setObject:v27 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [v22 setObject:v18 forKeyedSubscript:@"STMediaRestrictionRanksSpecifierKey"];
  [v22 setObject:v16 forKeyedSubscript:0x287672648];
  [v22 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
  [v22 setObject:footerKeyCopy forKeyedSubscript:0x287674028];

  coordinator3 = [(STPINListViewController *)self coordinator];
  [v22 setObject:coordinator3 forKeyedSubscript:0x287675C48];

  [v22 setValues:v18 titles:v31];

  return v22;
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = STContentPrivacyMediaRestrictionsDetailController;
  [(STPINListViewController *)&v8 viewDidAppear:appear];
  specifier = [(STContentPrivacyMediaRestrictionsDetailController *)self specifier];
  v5 = [specifier objectForKeyedSubscript:@"STContentRestrictionAdditionalURLHandling"];
  v6 = [@"APP_RATING" isEqualToString:v5];

  if (v6)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__STContentPrivacyMediaRestrictionsDetailController_viewDidAppear___block_invoke;
    block[3] = &unk_279B7C998;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __67__STContentPrivacyMediaRestrictionsDetailController_viewDidAppear___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 appsSpecifier];
  v5 = [v2 selectSpecifier:v3];

  if (v5)
  {
    [*(a1 + 32) showController:v5];
  }

  v4 = [*(a1 + 32) specifier];
  [v4 removePropertyForKey:@"STContentRestrictionAdditionalURLHandling"];
}

- (void)_titlesAndValuesForItem:(uint64_t)a1 titlesByValue:(NSObject *)a2 sortByTitle:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&dword_264BA2000, a2, OS_LOG_TYPE_FAULT, "Unexpected restrictions value type:%@", &v4, 0xCu);
}

- (void)defaultLinkListSpecifierWithConfiguration:key:titlesByValue:sortByTitle:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"item" object:? file:? lineNumber:? description:?];
}

- (void)defaultLinkListSpecifierWithConfiguration:key:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"item" object:? file:? lineNumber:? description:?];
}

- (void)linkListSpecifierForTVAndMoviesWithConfiguration:key:footerKey:titlesByValue:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[key isEqualToString:@ratingMovies] || [key isEqualToString:@ratingTVShows]" object:? file:? lineNumber:? description:?];
}

- (void)linkListSpecifierForTVAndMoviesWithConfiguration:key:footerKey:titlesByValue:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"item" object:? file:? lineNumber:? description:?];
}

@end
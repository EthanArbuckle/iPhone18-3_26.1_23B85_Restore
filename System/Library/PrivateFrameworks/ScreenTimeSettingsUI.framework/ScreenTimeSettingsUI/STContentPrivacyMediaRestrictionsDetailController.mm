@interface STContentPrivacyMediaRestrictionsDetailController
- (STContentPrivacyMediaRestrictionsDetailController)initWithRegionRatings:(id)a3;
- (id)_appRatingsAndExceptionsSpecifierWithRatings:(id)a3 restrictionsStringsTable:(id)a4 screenTimeSettingsUIBundle:(id)a5;
- (id)_appRatingsSpecifierWithRatings:(id)a3 restrictionsStringsTable:(id)a4 screenTimeSettingsUIBundle:(id)a5;
- (id)_getSpecifierValueForItem:(id)a3 viewModel:(id)a4 restrictionValues:(id)a5;
- (id)_legacyAppsAndRatingsSpecifierWithRatings:(id)a3 restrictionsStringsTable:(id)a4 screenTimeSettingsUIBundle:(id)a5;
- (id)_titlesAndValuesForItem:(id)a3 titlesByValue:(id)a4 sortByTitle:(BOOL)a5;
- (id)defaultLinkListSpecifierWithConfiguration:(id)a3 key:(id)a4;
- (id)defaultLinkListSpecifierWithConfiguration:(id)a3 key:(id)a4 titlesByValue:(id)a5 sortByTitle:(BOOL)a6;
- (id)defaultLinkListSpecifierWithItem:(id)a3 titlesByValue:(id)a4 sortByTitle:(BOOL)a5;
- (id)defaultSwitchSpecifierWithConfiguration:(id)a3 key:(id)a4;
- (id)getItemSpecifierValue:(id)a3;
- (id)linkListSpecifierForTVAndMoviesWithConfiguration:(id)a3 key:(id)a4 footerKey:(id)a5 titlesByValue:(id)a6;
- (id)radioGroupSpecifierWithName:(id)a3 footerText:(id)a4 item:(id)a5;
- (id)specifiers;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCoordinator:(id)a3;
- (void)setItemSpecifierValue:(id)a3 specifier:(id)a4;
- (void)showWebFilterRestrictions:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation STContentPrivacyMediaRestrictionsDetailController

- (STContentPrivacyMediaRestrictionsDetailController)initWithRegionRatings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = STContentPrivacyMediaRestrictionsDetailController;
  v6 = [(STPINListViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_regionRatings, a3);
  }

  return v7;
}

- (id)_appRatingsSpecifierWithRatings:(id)a3 restrictionsStringsTable:(id)a4 screenTimeSettingsUIBundle:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (_os_feature_enabled_impl())
  {
    [(STContentPrivacyMediaRestrictionsDetailController *)self _appRatingsAndExceptionsSpecifierWithRatings:v10 restrictionsStringsTable:v9 screenTimeSettingsUIBundle:v8];
  }

  else
  {
    [(STContentPrivacyMediaRestrictionsDetailController *)self _legacyAppsAndRatingsSpecifierWithRatings:v10 restrictionsStringsTable:v9 screenTimeSettingsUIBundle:v8];
  }
  v11 = ;

  return v11;
}

- (id)_appRatingsAndExceptionsSpecifierWithRatings:(id)a3 restrictionsStringsTable:(id)a4 screenTimeSettingsUIBundle:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(STPINListViewController *)self coordinator];
  v12 = [v11 contentPrivacyCoordinator];
  v13 = [v12 viewModel];
  v14 = [v13 visibleRestrictionWithConfiguration:@"system.ratings" key:@"ratingApps"];

  v15 = [v14 uiLabel];
  v16 = [v8 localizedStringForKey:v15 value:&stru_28766E5A8 table:v9];

  v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v16 target:self set:sel_setItemSpecifierValue_specifier_ get:sel_getItemSpecifierValue_ detail:objc_opt_class() cell:2 edit:0];
  [v17 setIdentifier:@"APP_RATING"];
  v18 = [(STPINListViewController *)self coordinator];
  [v17 setObject:v18 forKeyedSubscript:@"rootViewModelCoordinator"];

  v19 = [STAppExceptionsController alloc];
  v20 = [(STPINListViewController *)self coordinator];
  v21 = [v20 contentPrivacyCoordinator];
  v22 = [v21 viewModel];
  v23 = [v22 userDSID];
  v24 = [(STAppExceptionsController *)v19 initWithManagedUserDSID:v23];
  [v17 setObject:v24 forKeyedSubscript:@"controller"];

  v25 = MEMORY[0x277CCABB0];
  v26 = [(STPINListViewController *)self coordinator];
  v27 = [v26 contentPrivacyCoordinator];
  v28 = [v27 viewModel];
  v29 = [v25 numberWithBool:{objc_msgSend(v28, "shouldEnableRestriction:", v14)}];
  [v17 setObject:v29 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [v17 setObject:v14 forKeyedSubscript:0x287672648];
  [v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
  v30 = [(STContentPrivacyMediaRestrictionsDetailController *)self _titlesAndValuesForItem:v14 titlesByValue:v10 sortByTitle:0];

  v31 = [v30 values];
  v32 = [v30 titles];
  [v17 setValues:v31 titles:v32];

  [v17 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];

  return v17;
}

- (id)_legacyAppsAndRatingsSpecifierWithRatings:(id)a3 restrictionsStringsTable:(id)a4 screenTimeSettingsUIBundle:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithConfiguration:@"system.ratings" key:@"ratingApps" titlesByValue:a3 sortByTitle:0];
  v11 = [v10 titleDictionary];
  v12 = [v11 allKeys];
  v13 = [v12 containsObject:&unk_28769D100];

  if (v13)
  {
    v14 = [v9 localizedStringForKey:@"UnratedExplanationFooter" value:&stru_28766E5A8 table:v8];
    [v10 setObject:v14 forKeyedSubscript:0x287674048];
  }

  return v10;
}

- (id)specifiers
{
  v122[2] = *MEMORY[0x277D85DE8];
  v3 = [(STPINListViewController *)self coordinator];
  v4 = [v3 contentPrivacyCoordinator];
  v5 = [v4 viewModel];
  v6 = [v5 isLoaded];

  if (v6)
  {
    v7 = objc_opt_new();
    v89 = v7;
    v8 = [(STContentPrivacyMediaRestrictionsDetailController *)self regionRatings];
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

    v13 = [v8 preferredRegion];
    v102 = [v8 localizedMovieRatingsForRegion:v13];
    v106 = [v8 localizedTVRatingsForRegion:v13];
    v103 = v8;
    v100 = v13;
    v105 = [v8 localizedAppRatingsForRegion:v13];
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

    v27 = [(STPINListViewController *)self coordinator];
    v28 = [v27 viewModel];
    v29 = [v28 me];
    v30 = [v29 type];

    if (v30 == 7)
    {
      v31 = [v89 lastObject];
      [v31 setObject:@"1" forKeyedSubscript:0x287673FE8];
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

    v37 = [(STContentPrivacyMediaRestrictionsDetailController *)self appsSpecifier];
    [v89 addObject:v37];

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
    v45 = [(STPINListViewController *)self coordinator];
    v46 = [v45 contentPrivacyCoordinator];
    LOBYTE(v40) = [v46 areRestrictionsEditable];

    if ((v40 & 1) == 0)
    {
      [v44 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }

    v95 = v44;
    [v89 addObject:v44];
    v47 = [v89 lastObject];
    [v47 setControllerLoadAction:sel_showWebFilterRestrictions_];

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

    v61 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v62 = [v11 localizedStringForKey:@"ConnectWithFriendsContinuedExplanatoryText" value:&stru_28766E5A8 table:v10];
    [v61 setObject:v62 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    v91 = v61;
    v112 = v61;
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

    v70 = [(STPINListViewController *)self coordinator];
    v71 = [v70 contentPrivacyCoordinator];
    LOBYTE(v59) = [v71 areRestrictionsEditable];

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

- (void)showWebFilterRestrictions:(id)a3
{
  v4 = a3;
  v7 = objc_opt_new();
  v5 = [(STPINListViewController *)self coordinator];
  [v7 setCoordinator:v5];

  [v7 setParentController:self];
  v6 = [(STContentPrivacyMediaRestrictionsDetailController *)self rootController];
  [v7 setRootController:v6];

  [v7 setSpecifier:v4];
  [(STContentPrivacyMediaRestrictionsDetailController *)self showController:v7 animate:1];
}

- (id)getItemSpecifierValue:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:0x287672648];
  v6 = [(STPINListViewController *)self coordinator];
  v7 = [v6 contentPrivacyCoordinator];
  v8 = [v7 viewModel];

  v9 = [v4 values];

  v10 = [(STContentPrivacyMediaRestrictionsDetailController *)self _getSpecifierValueForItem:v5 viewModel:v8 restrictionValues:v9];

  return v10;
}

- (id)_getSpecifierValueForItem:(id)a3 viewModel:(id)a4 restrictionValues:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 valuesByRestriction];
  v12 = [v11 objectForKeyedSubscript:v8];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v9 defaultValueForRestriction:v8];
  }

  v15 = v14;

  if ([v8 restrictionType] && (objc_msgSend(v8, "rmConfiguration"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"system.ratings"), v16, v17))
  {
    v18 = [(STContentPrivacyMediaRestrictionsDetailController *)self regionRatings];
    v19 = [v8 payloadKey];
    v20 = [v18 getClosestRestrictionMatch:v15 within:v10 forPayloadKey:v19];
  }

  else
  {
    v20 = v15;
  }

  return v20;
}

- (void)setItemSpecifierValue:(id)a3 specifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 objectForKeyedSubscript:0x287672648];
  v9 = [(STPINListViewController *)self coordinator];
  v10 = [v9 contentPrivacyCoordinator];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__STContentPrivacyMediaRestrictionsDetailController_setItemSpecifierValue_specifier___block_invoke;
  v12[3] = &unk_279B7CBC8;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v10 saveRestrictionValue:v7 forItem:v8 completionHandler:v12];
}

- (void)dealloc
{
  v3 = [(STPINListViewController *)self coordinator];
  v4 = [v3 contentPrivacyCoordinator];
  [v4 removeObserver:self forKeyPath:@"viewModel.isLoaded" context:@"MediaRestrictionsViewModelLoadedContext"];

  v5.receiver = self;
  v5.super_class = STContentPrivacyMediaRestrictionsDetailController;
  [(STListViewController *)&v5 dealloc];
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STPINListViewController *)self coordinator];

  if (v5 != v4)
  {
    v6 = [(STPINListViewController *)self coordinator];
    v7 = [v6 contentPrivacyCoordinator];
    [v7 removeObserver:self forKeyPath:@"viewModel.isLoaded" context:@"MediaRestrictionsViewModelLoadedContext"];

    v10.receiver = self;
    v10.super_class = STContentPrivacyMediaRestrictionsDetailController;
    [(STPINListViewController *)&v10 setCoordinator:v4];
    v8 = [(STPINListViewController *)self coordinator];
    v9 = [v8 contentPrivacyCoordinator];
    [v9 addObserver:self forKeyPath:@"viewModel.isLoaded" options:0 context:@"MediaRestrictionsViewModelLoadedContext"];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"MediaRestrictionsViewModelLoadedContext")
  {
    v7 = [(STPINListViewController *)self coordinator:a3];
    v8 = [v7 contentPrivacyCoordinator];
    v9 = [v8 viewModel];
    v10 = [v9 isLoaded];

    if (v10)
    {

      [(STContentPrivacyMediaRestrictionsDetailController *)self reloadSpecifiers];
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = STContentPrivacyMediaRestrictionsDetailController;
    [(STListViewController *)&v11 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (id)_titlesAndValuesForItem:(id)a3 titlesByValue:(id)a4 sortByTitle:(BOOL)a5
{
  v5 = a5;
  v24[2] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v10 = +[STScreenTimeSettingsUIBundle bundle];
  v11 = objc_alloc_init(STSpecifierValuesAndTitles);
  v12 = [v8 restrictionType];

  if (v7)
  {
    if (v5)
    {
      v13 = [v7 keysSortedByValueUsingSelector:sel_localizedCaseInsensitiveCompare_];
      [(STSpecifierValuesAndTitles *)v11 setValues:v13];
    }

    else
    {
      v13 = [v7 allKeys];
      v18 = [v13 sortedArrayUsingSelector:sel_compare_];
      [(STSpecifierValuesAndTitles *)v11 setValues:v18];
    }

    v19 = [(STSpecifierValuesAndTitles *)v11 values];
    v20 = [v7 objectsForKeys:v19 notFoundMarker:&stru_28766E5A8];
    [(STSpecifierValuesAndTitles *)v11 setTitles:v20];

LABEL_9:
    goto LABEL_12;
  }

  if (v12 == 1)
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
    if (v12)
    {
      v19 = +[STUILog contentPrivacy];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [STContentPrivacyMediaRestrictionsDetailController _titlesAndValuesForItem:v12 titlesByValue:v19 sortByTitle:?];
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

- (id)defaultLinkListSpecifierWithItem:(id)a3 titlesByValue:(id)a4 sortByTitle:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v11 = +[STScreenTimeSettingsUIBundle bundle];
  v12 = [v9 uiLabel];
  v13 = [v11 localizedStringForKey:v12 value:&stru_28766E5A8 table:v10];

  v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v13 target:self set:sel_setItemSpecifierValue_specifier_ get:sel_getItemSpecifierValue_ detail:objc_opt_class() cell:2 edit:0];
  v15 = [(STPINListViewController *)self coordinator];
  [v14 setObject:v15 forKeyedSubscript:0x287675C48];

  v16 = [(STContentPrivacyMediaRestrictionsDetailController *)self _titlesAndValuesForItem:v9 titlesByValue:v8 sortByTitle:v5];

  v17 = MEMORY[0x277CCABB0];
  v18 = [(STPINListViewController *)self coordinator];
  v19 = [v18 contentPrivacyCoordinator];
  v20 = [v19 viewModel];
  v21 = [v17 numberWithBool:{objc_msgSend(v20, "shouldEnableRestriction:", v9)}];
  [v14 setObject:v21 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  v22 = [v16 values];
  [v14 setObject:v22 forKeyedSubscript:@"STMediaRestrictionRanksSpecifierKey"];

  [v14 setObject:v9 forKeyedSubscript:0x287672648];
  [v14 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
  v23 = [v16 values];
  v24 = [v16 titles];
  [v14 setValues:v23 titles:v24];

  return v14;
}

- (id)defaultLinkListSpecifierWithConfiguration:(id)a3 key:(id)a4 titlesByValue:(id)a5 sortByTitle:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(STPINListViewController *)self coordinator];
  v14 = [v13 contentPrivacyCoordinator];
  v15 = [v14 viewModel];
  v16 = [v15 visibleRestrictionWithConfiguration:v12 key:v11];

  if (!v16)
  {
    [STContentPrivacyMediaRestrictionsDetailController defaultLinkListSpecifierWithConfiguration:key:titlesByValue:sortByTitle:];
  }

  v17 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithItem:v16 titlesByValue:v10 sortByTitle:v6];

  return v17;
}

- (id)defaultLinkListSpecifierWithConfiguration:(id)a3 key:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STPINListViewController *)self coordinator];
  v9 = [v8 contentPrivacyCoordinator];
  v10 = [v9 viewModel];
  v11 = [v10 visibleRestrictionWithConfiguration:v7 key:v6];

  if (!v11)
  {
    [STContentPrivacyMediaRestrictionsDetailController defaultLinkListSpecifierWithConfiguration:key:];
  }

  v12 = [(STContentPrivacyMediaRestrictionsDetailController *)self defaultLinkListSpecifierWithItem:v11 titlesByValue:0 sortByTitle:0];

  return v12;
}

- (id)radioGroupSpecifierWithName:(id)a3 footerText:(id)a4 item:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:a3];
  [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FFE8]];
  if (v7)
  {
    [v9 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  if (v8)
  {
    [v9 setObject:v8 forKeyedSubscript:0x287672648];
  }

  return v9;
}

- (id)defaultSwitchSpecifierWithConfiguration:(id)a3 key:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];

  v7 = objc_opt_new();

  return v7;
}

- (id)linkListSpecifierForTVAndMoviesWithConfiguration:(id)a3 key:(id)a4 footerKey:(id)a5 titlesByValue:(id)a6
{
  v10 = a4;
  v11 = a6;
  v33 = a5;
  v12 = a3;
  if (([v10 isEqualToString:@"ratingMovies"] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"ratingTVShows") & 1) == 0)
  {
    [STContentPrivacyMediaRestrictionsDetailController linkListSpecifierForTVAndMoviesWithConfiguration:key:footerKey:titlesByValue:];
  }

  v13 = [(STPINListViewController *)self coordinator];
  v14 = [v13 contentPrivacyCoordinator];
  v15 = [v14 viewModel];
  v16 = [v15 visibleRestrictionWithConfiguration:v12 key:v10];

  v32 = v10;
  if (!v16)
  {
    [STContentPrivacyMediaRestrictionsDetailController linkListSpecifierForTVAndMoviesWithConfiguration:key:footerKey:titlesByValue:];
  }

  v17 = [v11 allKeys];
  v18 = [v17 sortedArrayUsingSelector:sel_compare_];

  v31 = [v11 objectsForKeys:v18 notFoundMarker:&stru_28766E5A8];

  v30 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v19 = +[STScreenTimeSettingsUIBundle bundle];
  v20 = [v16 uiLabel];
  v21 = [v19 localizedStringForKey:v20 value:&stru_28766E5A8 table:v30];

  v22 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v21 target:self set:sel_setItemSpecifierValue_specifier_ get:sel_getItemSpecifierValue_ detail:objc_opt_class() cell:2 edit:0];
  v23 = MEMORY[0x277CCABB0];
  v24 = [(STPINListViewController *)self coordinator];
  v25 = [v24 contentPrivacyCoordinator];
  v26 = [v25 viewModel];
  v27 = [v23 numberWithBool:{objc_msgSend(v26, "shouldEnableRestriction:", v16)}];
  [v22 setObject:v27 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [v22 setObject:v18 forKeyedSubscript:@"STMediaRestrictionRanksSpecifierKey"];
  [v22 setObject:v16 forKeyedSubscript:0x287672648];
  [v22 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
  [v22 setObject:v33 forKeyedSubscript:0x287674028];

  v28 = [(STPINListViewController *)self coordinator];
  [v22 setObject:v28 forKeyedSubscript:0x287675C48];

  [v22 setValues:v18 titles:v31];

  return v22;
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = STContentPrivacyMediaRestrictionsDetailController;
  [(STPINListViewController *)&v8 viewDidAppear:a3];
  v4 = [(STContentPrivacyMediaRestrictionsDetailController *)self specifier];
  v5 = [v4 objectForKeyedSubscript:@"STContentRestrictionAdditionalURLHandling"];
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
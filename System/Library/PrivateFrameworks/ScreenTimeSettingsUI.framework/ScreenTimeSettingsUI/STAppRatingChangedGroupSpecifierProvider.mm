@interface STAppRatingChangedGroupSpecifierProvider
+ (id)providerWithCoordinator:(id)a3 rootViewController:(id)a4;
- (STAppRatingChangedGroupSpecifierProvider)init;
- (UIViewController)rootViewController;
- (void)closeTip:(id)a3;
- (void)openContentPrivacyAppRestrictions:(id)a3;
- (void)setCoordinator:(id)a3;
@end

@implementation STAppRatingChangedGroupSpecifierProvider

+ (id)providerWithCoordinator:(id)a3 rootViewController:(id)a4
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___STAppRatingChangedGroupSpecifierProvider;
  v5 = a4;
  v6 = objc_msgSendSuper2(&v8, sel_providerWithCoordinator_, a3);
  [v6 setRootViewController:{v5, v8.receiver, v8.super_class}];

  return v6;
}

- (STAppRatingChangedGroupSpecifierProvider)init
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = STAppRatingChangedGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v23 init];
  v3 = v2;
  if (v2)
  {
    [(STGroupSpecifierProvider *)v2 setIsHidden:1];
    v4 = MEMORY[0x277D3FAD8];
    v5 = objc_opt_new();
    v6 = [v5 UUIDString];
    v7 = [v4 groupSpecifierWithID:v6];
    [(STGroupSpecifierProvider *)v3 setGroupSpecifier:v7];

    v8 = +[STScreenTimeSettingsUIBundle bundle];
    v9 = [v8 localizedStringForKey:@"AppRestrictionsRatingHeaderSpecifierTitleFormat" value:&stru_28766E5A8 table:0];
    v22 = [v8 localizedStringForKey:@"AppRestrictionsRatingHeaderSpecifierDetailText" value:&stru_28766E5A8 table:0];
    v10 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v9 target:v3 set:0 get:0 detail:0 cell:-1 edit:0];
    v11 = NSClassFromString(&cfstr_Screentimesett.isa);
    v12 = *MEMORY[0x277D3FE58];
    [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x277D3FE58]];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:v9, &stru_28766E5A8];
    v14 = *MEMORY[0x277D40170];
    [v10 setObject:v13 forKeyedSubscript:*MEMORY[0x277D40170]];

    [v10 setObject:v22 forKeyedSubscript:*MEMORY[0x277D40160]];
    [v10 setButtonAction:sel_closeTip_];
    [(STAppRatingChangedGroupSpecifierProvider *)v3 setRatingHeaderSpecifier:v10];
    v15 = [v8 localizedStringForKey:@"AppRestrictionsReviewRestrictionSpecifierTitle" value:&stru_28766E5A8 table:0];
    v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v15 target:v3 set:0 get:0 detail:0 cell:-1 edit:0];
    [v16 setObject:@"APP_RATING_REVIEW_RESTRICTION" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
    [v16 setObject:v15 forKeyedSubscript:v14];
    [v16 setObject:NSClassFromString(&cfstr_Screentimesett_0.isa) forKeyedSubscript:v12];
    [v16 setButtonAction:sel_openContentPrivacyAppRestrictions_];
    [(STAppRatingChangedGroupSpecifierProvider *)v3 setReviewRestrictionSpecifier:v16];
    v17 = [(STGroupSpecifierProvider *)v3 mutableSpecifiers];
    v18 = [(STAppRatingChangedGroupSpecifierProvider *)v3 ratingHeaderSpecifier];
    v24[0] = v18;
    v19 = [(STAppRatingChangedGroupSpecifierProvider *)v3 reviewRestrictionSpecifier];
    v24[1] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    [v17 addObjectsFromArray:v20];
  }

  return v3;
}

- (void)closeTip:(id)a3
{
  [(STGroupSpecifierProvider *)self setIsHidden:1];
  v4 = [(STRootGroupSpecifierProvider *)self coordinator];
  [v4 setHasShownAppRatingChangeTip:1];
}

- (void)openContentPrivacyAppRestrictions:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v6 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.ScreenTime/CONTENT_PRIVACY/CONTENT_RESTRICTIONS/APP_RATING"];
  [v5 openSensitiveURL:v6 withOptions:0];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__STAppRatingChangedGroupSpecifierProvider_openContentPrivacyAppRestrictions___block_invoke;
  v8[3] = &unk_279B7CAE0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = STAppRatingChangedGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:v4];
  if (v4 && ([v4 hasShownAppRatingChangeTip] & 1) == 0)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __59__STAppRatingChangedGroupSpecifierProvider_setCoordinator___block_invoke;
    v5[3] = &unk_279B7CFA0;
    v5[4] = self;
    [v4 loadRegionRatingsWithCompletionHandler:v5];
  }
}

void __59__STAppRatingChangedGroupSpecifierProvider_setCoordinator___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = +[STUILog apps];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __59__STAppRatingChangedGroupSpecifierProvider_setCoordinator___block_invoke_cold_1(v8, v9);
    }
  }

  else if (a2)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __59__STAppRatingChangedGroupSpecifierProvider_setCoordinator___block_invoke_45;
    v10[3] = &unk_279B7CAE0;
    v10[4] = *(a1 + 32);
    v11 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __59__STAppRatingChangedGroupSpecifierProvider_setCoordinator___block_invoke_45(uint64_t a1)
{
  v2 = +[STScreenTimeSettingsUIBundle bundle];
  v5 = [v2 localizedStringForKey:@"AppRestrictionsRatingHeaderSpecifierTitleFormat" value:&stru_28766E5A8 table:0];

  v3 = [MEMORY[0x277CCACA8] stringWithFormat:v5, *(a1 + 40)];
  v4 = [*(a1 + 32) ratingHeaderSpecifier];
  [v4 setObject:v3 forKeyedSubscript:*MEMORY[0x277D40170]];

  [*(a1 + 32) setIsHidden:0];
}

- (UIViewController)rootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootViewController);

  return WeakRetained;
}

void __59__STAppRatingChangedGroupSpecifierProvider_setCoordinator___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_264BA2000, a2, OS_LOG_TYPE_ERROR, "[STAppRatingChangedGroupSpecifierProvider] error attempting to load ratings: %@", &v4, 0xCu);
}

@end
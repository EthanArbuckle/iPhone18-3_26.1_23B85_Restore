@interface PSGGeneralController
+ (id)BOOLeanCapabilitiesToTest;
- (BOOL)_hasCarPlayContent;
- (BOOL)shouldDeferPushForSpecifierID:(id)a3;
- (PSGGeneralController)init;
- (id)EDGEEnabled:(id)a3;
- (id)_createTVProviderSpecifiersIfNeeded;
- (id)atlasSpecifierForDialog:(id)a3;
- (id)sortDateTimeGroupIdentifiers:(id)a3;
- (id)sortDateTimeGroupWithSpecifiers:(id)a3;
- (id)specifiers;
- (void)_updateInteractivityForTVProviderIfNeeded;
- (void)dealloc;
- (void)delayedAsyncLoadSpecifiers;
- (void)enableEdge:(id)a3;
- (void)handleScrollPPTTestName;
- (void)homeButtonCustomizeControllerDidFinish:(id)a3;
- (void)launchHasCompleted:(id)a3;
- (void)loadAtlas:(id)a3;
- (void)loadHomeButtonSettings:(id)a3;
- (void)pairedVehiclesDidChange;
- (void)pointerDevicesDidChange;
- (void)profileNotification:(id)a3;
- (void)reloadAsyncSpecifiersWithCompletion:(id)a3;
- (void)reloadSpecifiers;
- (void)setPptRelay:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)updateAtlasFromCache:(id)a3;
- (void)updateAtlasWithCompletion:(id)a3;
- (void)updateMatterWithCompletion:(id)a3;
- (void)updateSoftwareUpdateBadge;
- (void)updateTVProviderWithCompletion:(id)a3;
- (void)updateTrackpadWithCompletion:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PSGGeneralController

+ (id)BOOLeanCapabilitiesToTest
{
  v5[8] = *MEMORY[0x277D85DE8];
  v5[0] = @"DeviceSupportsCarIntegration";
  v5[1] = @"nVh/gwNpy7Jv1NOk00CMrw";
  v5[2] = @"fcc-logos-via-software";
  v5[3] = @"accessibility";
  v5[4] = @"international-settings";
  v5[5] = @"cellular-data";
  v5[6] = @"ringer-switch";
  v5[7] = @"Jq+xaurJgFzSwxOfTqtBGw";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:8];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void __62__PSGGeneralController_insertOrderedSpecifiers_atID_animated___block_invoke(uint64_t a1)
{
  v6[42] = *MEMORY[0x277D85DE8];
  v6[0] = @"ABOUT_AND_SOFTWARE_UPDATE_GROUP";
  v6[1] = @"About";
  v6[2] = @"SOFTWARE_UPDATE_LINK";
  v6[3] = @"STORAGE_MGMT";
  v6[4] = @"ATLAS";
  v6[5] = @"COVERAGE_GROUP";
  v6[6] = @"COVERAGE";
  v6[7] = @"AIRDROP_GROUP";
  v6[8] = @"AIRDROP_LINK";
  v6[9] = @"CONTINUITY_SPEC";
  v6[10] = @"CONTACTLESS_NFC";
  v6[11] = @"PiP_SPEC";
  v6[12] = @"SCREEN_CAPTURE";
  v6[13] = @"LOCAL_CAPTURE";
  v6[14] = @"CARPLAY";
  v6[15] = @"MATTER_ACCESSORIES";
  v6[16] = @"NFC_LINK";
  v6[17] = @"HOME_BUTTON_GROUP";
  v6[18] = @"HOME_BUTTON";
  v6[19] = @"DATE_AND_TIME_GROUP";
  v6[20] = @"AUTOFILL";
  v6[21] = @"AUTO_CONTENT_DOWNLOAD";
  v6[22] = @"DATE_AND_TIME";
  v6[23] = @"DICTIONARY";
  v6[24] = @"FONT_SETTING";
  v6[25] = @"GAME_CONTROLLER";
  v6[26] = @"Keyboard";
  v6[27] = @"INTERNATIONAL";
  v6[28] = @"POINTERS";
  v6[29] = @"WINDOW_RESTORATION";
  v6[30] = @"TV_PROVIDER_GROUP";
  v6[31] = @"TV_PROVIDER";
  v6[32] = @"VPN_DEVICE_MANAGEMENT_GROUP";
  v6[33] = @"ManagedConfigurationList";
  v6[34] = @"RETAIL_KIOSK_MODE_SETTINGS_BUNDLE_GROUP";
  v6[35] = @"RETAIL_KIOSK_MODE_SETTINGS";
  v6[36] = @"LEGAL_AND_REGULATORY_GROUP";
  v6[37] = @"LEGAL_AND_REGULATORY";
  v6[38] = @"TRANSFER_ERASE_RESET_GROUP";
  v6[39] = @"Reset";
  v6[40] = @"SHUTDOWN_GROUP";
  v6[41] = @"SHUTDOWN_LABEL";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:42];
  v3 = [*(a1 + 32) sortDateTimeGroupIdentifiers:v2];
  v4 = insertOrderedSpecifiers_atID_animated__ordering;
  insertOrderedSpecifiers_atID_animated__ordering = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (void)delayedAsyncLoadSpecifiers
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[PSGGeneralController delayedAsyncLoadSpecifiers]";
  _os_log_error_impl(&dword_21CF20000, log, OS_LOG_TYPE_ERROR, "%s: expensive async load started during ppt launch test.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldDeferPushForSpecifierID:(id)a3
{
  v20[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20[0] = @"POINTERS";
  v20[1] = @"MATTER_ACCESSORIES";
  v20[2] = @"TV_PROVIDER";
  [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v4 isEqualToString:{v10, v15}])
        {
          v11 = [(PSGGeneralController *)self specifierForID:v10];

          if (!v11)
          {
            v12 = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)reloadAsyncSpecifiersWithCompletion:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(PSGGeneralController *)self setSpecifiersHaveLoaded:1];
  v5 = _PSGSignpostLoggingFacility();
  v6 = os_signpost_id_make_with_pointer(v5, "PSGGeneralController.reloadAsyncSpecifiersWithCompletion");

  v7 = _PSGSignpostLoggingFacility();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 138543618;
    v39 = self;
    v40 = 2082;
    v41 = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]";
    _os_signpost_emit_with_name_impl(&dword_21CF20000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PSGGeneralController.reloadAsyncSpecifiersWithCompletion", "%{public}@: %{public}s", buf, 0x16u);
  }

  v9 = _PSGLoggingFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v39 = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]";
    _os_log_impl(&dword_21CF20000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: async reload started.", buf, 0xCu);
  }

  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke;
  v35[3] = &unk_278325218;
  v37 = v6;
  v11 = v10;
  v36 = v11;
  [(PSGGeneralController *)self updateTrackpadWithCompletion:v35];
  if (_os_feature_enabled_impl())
  {
    dispatch_group_enter(v11);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke_258;
    v32[3] = &unk_278325218;
    v34 = v6;
    v33 = v11;
    [(PSGGeneralController *)self updateAtlasWithCompletion:v32];
  }

  if ((PSIsInEDUMode() & 1) == 0)
  {
    dispatch_group_enter(v11);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke_259;
    v29[3] = &unk_278325218;
    v31 = v6;
    v30 = v11;
    [(PSGGeneralController *)self updateMatterWithCompletion:v29];
  }

  if ((PSIsInEDUMode() & 1) == 0)
  {
    dispatch_group_enter(v11);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke_260;
    v26[3] = &unk_278325218;
    v28 = v6;
    v27 = v11;
    [(PSGGeneralController *)self updateTVProviderWithCompletion:v26];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke_261;
  block[3] = &unk_278325708;
  v25 = v6;
  v12 = v4;
  v24 = v12;
  dispatch_group_notify(v11, MEMORY[0x277D85CD0], block);
  v13 = [(PSGGeneralController *)self followUpModel];
  v14 = v13 == 0;

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x277CFE538]);
    v16 = [(PSGGeneralController *)self bundle];
    v17 = [v16 bundleIdentifier];
    v18 = [v15 initWithBundleIdentifier:v17 clientIdentifier:0];
    [(PSGGeneralController *)self setFollowUpModel:v18];

    objc_initWeak(buf, self);
    v19 = [(PSGGeneralController *)self followUpModel];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke_263;
    v21[3] = &unk_278325730;
    objc_copyWeak(&v22, buf);
    [v19 setItemChangeHandler:v21];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _PSGLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]_block_invoke";
    _os_log_impl(&dword_21CF20000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: updateTrackpadWithCompletion finished", &v7, 0xCu);
  }

  v3 = _PSGSignpostLoggingFacility();
  v4 = v3;
  v5 = *(a1 + 40);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v7 = 136446210;
    v8 = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]_block_invoke";
    _os_signpost_emit_with_name_impl(&dword_21CF20000, v4, OS_SIGNPOST_EVENT, v5, "PSGGeneralController.reloadAsyncSpecifiersWithCompletion", "%{public}s: updateTrackpadWithCompletion finished", &v7, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
  v6 = *MEMORY[0x277D85DE8];
}

void __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke_258(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _PSGLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]_block_invoke";
    _os_log_impl(&dword_21CF20000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: updateAtlasWithCompletion finished", &v7, 0xCu);
  }

  v3 = _PSGSignpostLoggingFacility();
  v4 = v3;
  v5 = *(a1 + 40);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v7 = 136446210;
    v8 = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]_block_invoke";
    _os_signpost_emit_with_name_impl(&dword_21CF20000, v4, OS_SIGNPOST_EVENT, v5, "PSGGeneralController.reloadAsyncSpecifiersWithCompletion", "%{public}s: updateAtlasWithCompletion finished", &v7, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
  v6 = *MEMORY[0x277D85DE8];
}

void __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke_259(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _PSGLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]_block_invoke";
    _os_log_impl(&dword_21CF20000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: updateMattersWithCompletion finished", &v7, 0xCu);
  }

  v3 = _PSGSignpostLoggingFacility();
  v4 = v3;
  v5 = *(a1 + 40);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v7 = 136446210;
    v8 = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]_block_invoke";
    _os_signpost_emit_with_name_impl(&dword_21CF20000, v4, OS_SIGNPOST_EVENT, v5, "PSGGeneralController.reloadAsyncSpecifiersWithCompletion", "%{public}s: updateMattersWithCompletion finished", &v7, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
  v6 = *MEMORY[0x277D85DE8];
}

void __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke_260(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _PSGLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]_block_invoke";
    _os_log_impl(&dword_21CF20000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: updateTVProviderWithCompletion finished", &v7, 0xCu);
  }

  v3 = _PSGSignpostLoggingFacility();
  v4 = v3;
  v5 = *(a1 + 40);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v7 = 136446210;
    v8 = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]_block_invoke";
    _os_signpost_emit_with_name_impl(&dword_21CF20000, v4, OS_SIGNPOST_EVENT, v5, "PSGGeneralController.reloadAsyncSpecifiersWithCompletion", "%{public}s: updateTVProviderWithCompletion finished", &v7, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke_261(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _PSGSignpostLoggingFacility();
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_21CF20000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PSGGeneralController.reloadAsyncSpecifiersWithCompletion", &unk_21CF5E2CA, &v8, 2u);
  }

  v5 = _PSGLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446210;
    v9 = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]_block_invoke";
    _os_log_impl(&dword_21CF20000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: async reload completed.", &v8, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke_263(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateSoftwareUpdateBadge];
}

- (void)updateTVProviderWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(PSGGeneralController *)self loadingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__PSGGeneralController_updateTVProviderWithCompletion___block_invoke;
  block[3] = &unk_2783257D0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __55__PSGGeneralController_updateTVProviderWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CE21F0] sharedAccountStore];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__PSGGeneralController_updateTVProviderWithCompletion___block_invoke_2;
  v3[3] = &unk_2783257A8;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [v2 fetchAccountsWithCompletionHandler:v3];

  objc_destroyWeak(&v5);
}

void __55__PSGGeneralController_updateTVProviderWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CE2268] defaultCenter];
  v3 = [v2 status];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__PSGGeneralController_updateTVProviderWithCompletion___block_invoke_3;
  block[3] = &unk_278325780;
  objc_copyWeak(v6, (a1 + 40));
  v6[1] = v3;
  v5 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v6);
}

void __55__PSGGeneralController_updateTVProviderWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _createTVProviderSpecifiersIfNeeded];
  v4 = v3;
  if (*(a1 + 48) == 1)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__PSGGeneralController_updateTVProviderWithCompletion___block_invoke_4;
    v11[3] = &unk_278325758;
    v11[4] = WeakRetained;
    [v3 na_each:v11];
  }

  else
  {
    v5 = [v3 reverseObjectEnumerator];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__PSGGeneralController_updateTVProviderWithCompletion___block_invoke_5;
    v10[3] = &unk_278325758;
    v10[4] = WeakRetained;
    [v5 na_each:v10];
  }

  v6 = [WeakRetained specifierIDPendingPush];
  if ([@"TV_PROVIDER" isEqualToString:v6])
  {
    v7 = [WeakRetained specifierIDPendingPush];
    v8 = [WeakRetained specifierForID:v7];

    if (v8)
    {
      [WeakRetained handlePendingURL];
    }
  }

  else
  {
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

void __55__PSGGeneralController_updateTVProviderWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v4 specifierForID:v5];

  if (!v6)
  {
    v7 = *(a1 + 32);
    v11[0] = v3;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v9 = [v3 identifier];
    [v7 insertOrderedSpecifiers:v8 atID:v9 animated:1];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __55__PSGGeneralController_updateTVProviderWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  [v2 removeSpecifierID:v3];
}

- (void)_updateInteractivityForTVProviderIfNeeded
{
  v3 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) specifierForID:@"TV_PROVIDER"];

  if (v3)
  {
    v17 = [(PSGGeneralController *)self specifierForID:@"TV_PROVIDER"];
    v4 = [MEMORY[0x277D262A0] sharedConnection];
    v5 = [v4 effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]];

    v6 = [MEMORY[0x277D262A0] sharedConnection];
    v7 = [v6 effectiveBoolValueForSetting:*MEMORY[0x277D26078]];

    v9 = v5 == 1 && v7 == 1;
    objc_opt_class();
    v10 = *MEMORY[0x277D3FF38];
    v11 = [v17 objectForKeyedSubscript:*MEMORY[0x277D3FF38]];
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = v13;
    if (!v13)
    {
      v13 = MEMORY[0x277CBEC38];
    }

    v15 = [v13 BOOLValue];

    if (v9 != v15)
    {
      v16 = [MEMORY[0x277CCABB0] numberWithBool:v9];
      [v17 setObject:v16 forKeyedSubscript:v10];

      [(PSGGeneralController *)self reloadSpecifierID:@"TV_PROVIDER"];
    }
  }
}

- (void)updateAtlasWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(PSGGeneralController *)self loadingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PSGGeneralController_updateAtlasWithCompletion___block_invoke;
  block[3] = &unk_278325848;
  v8 = v4;
  v6 = v4;
  objc_copyWeak(&v9, &location);
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __50__PSGGeneralController_updateAtlasWithCompletion___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CEE3F8] bagForProfile:@"Settings" profileVersion:@"1"];
  v3 = [objc_alloc(MEMORY[0x277CEE498]) initWithBag:v2];
  v4 = [objc_alloc(MEMORY[0x277CEE4C0]) initWithPlacement:@"GeneralSettings" context:0];
  v5 = objc_alloc(MEMORY[0x277CEE4A8]);
  v13[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v7 = [v5 initWithServiceType:@"Atlas" placementInfo:v6];

  v8 = [v3 enqueueMessageEvent:v7];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__PSGGeneralController_updateAtlasWithCompletion___block_invoke_2;
  v10[3] = &unk_278325820;
  v11 = *(a1 + 32);
  objc_copyWeak(&v12, (a1 + 40));
  [v8 addFinishBlock:v10];

  objc_destroyWeak(&v12);
  v9 = *MEMORY[0x277D85DE8];
}

void __50__PSGGeneralController_updateAtlasWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__PSGGeneralController_updateAtlasWithCompletion___block_invoke_3;
    block[3] = &unk_2783257F8;
    objc_copyWeak(&v11, (a1 + 40));
    v9 = v5;
    v10 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v11);
  }
}

void __50__PSGGeneralController_updateAtlasWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) messageActions];
  v3 = [v2 firstObject];
  v4 = [v3 placementsMap];
  v5 = [v4 objectForKeyedSubscript:@"GeneralSettings"];
  v6 = [v5 firstObject];

  v7 = [v6 makeDialogRequest];
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
  v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v9 setObject:v8 forKey:@"AMSPreloadedAtlasDialog"];

  v10 = [WeakRetained atlasSpecifierForDialog:v7];
  v11 = [WeakRetained specifierForID:@"ATLAS"];
  if (v10)
  {
    v12 = [WeakRetained specifierForID:@"STORAGE_MGMT"];
    if (v11)
    {
      [WeakRetained removeSpecifier:v11];
    }

    [WeakRetained insertSpecifier:v10 afterSpecifier:v12 animated:v11 == 0];
  }

  else
  {
    [WeakRetained removeSpecifier:v11 animated:1];
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))();
  }
}

- (void)updateMatterWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(PSGGeneralController *)self loadingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PSGGeneralController_updateMatterWithCompletion___block_invoke;
  block[3] = &unk_2783257D0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __51__PSGGeneralController_updateMatterWithCompletion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__PSGGeneralController_updateMatterWithCompletion___block_invoke_2;
  v2[3] = &unk_278325898;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  [PSGMatterController shouldShowMatterControllerWithCompletion:v2];

  objc_destroyWeak(&v4);
}

void __51__PSGGeneralController_updateMatterWithCompletion___block_invoke_2(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PSGGeneralController_updateMatterWithCompletion___block_invoke_3;
  block[3] = &unk_278325870;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  v7 = a2;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v6);
}

void __51__PSGGeneralController_updateMatterWithCompletion___block_invoke_3(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v7 = _PSGLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v21 = "[PSGGeneralController updateMatterWithCompletion:]_block_invoke_3";
      _os_log_impl(&dword_21CF20000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Self deallocated during load", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v4 = [WeakRetained matterSpecifier];

  if (!v4)
  {
    v7 = _PSGLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 matterSpecifier];
      *buf = 136446466;
      v21 = "[PSGGeneralController updateMatterWithCompletion:]_block_invoke";
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_21CF20000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Not updating Matter because self.matterSpecifier=%@", buf, 0x16u);
    }

LABEL_9:

    goto LABEL_19;
  }

  v5 = [v3 specifierForID:@"MATTER_ACCESSORIES"];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v9 = [v3 specifierForID:@"CARPLAY_MATTER_GROUP"];
    v6 = v9 != 0;
  }

  if ((*(a1 + 48) & 1) != 0 || !v6)
  {
    if (v6 || (*(a1 + 48) & 1) == 0)
    {
      goto LABEL_17;
    }

    v10 = [v3 matterSpecifier];
    v19 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v12 = [v3 matterSpecifier];
    v13 = [v12 identifier];
    [v3 insertOrderedSpecifiers:v11 atID:v13 animated:1];
  }

  else
  {
    v10 = [v3 matterSpecifier];
    [v3 removeSpecifier:v10 animated:1];
  }

LABEL_17:
  v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v14 setBool:*(a1 + 48) forKey:@"PSGShouldShowMatter"];

  v15 = [v3 specifierIDPendingPush];
  v16 = [v3 specifierForID:v15];

  if (v16)
  {
    [v3 handlePendingURL];
  }

LABEL_19:
  v17 = *(a1 + 32);
  if (v17)
  {
    (*(v17 + 16))();
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateTrackpadWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(PSGGeneralController *)self loadingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__PSGGeneralController_updateTrackpadWithCompletion___block_invoke;
  block[3] = &unk_2783257D0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __53__PSGGeneralController_updateTrackpadWithCompletion___block_invoke(uint64_t a1)
{
  v2 = +[PSGMousePointerController sharedInstance];
  v3 = [v2 pointerDevices];
  v4 = [v3 count] != 0;

  v5 = +[PSGMousePointerController sharedInstance];
  v6 = [v5 hasMouse];

  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v7 setBool:v4 forKey:@"HasPointerDevice"];

  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v8 setBool:v6 forKey:@"HasMouse"];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__PSGGeneralController_updateTrackpadWithCompletion___block_invoke_2;
  block[3] = &unk_2783258C0;
  objc_copyWeak(&v11, (a1 + 40));
  v12 = v4;
  v13 = v6;
  v10 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v11);
}

uint64_t __53__PSGGeneralController_updateTrackpadWithCompletion___block_invoke_2(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained specifierForID:@"POINTERS"];

  if (v3)
  {
    v4 = *(a1 + 48) ^ 1;
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 removeSpecifierID:@"POINTERS" animated:v4 & 1];
  }

  else
  {
    v4 = 1;
  }

  if (*(a1 + 48) == 1)
  {
    v6 = MEMORY[0x277D3FAD8];
    if (*(a1 + 49))
    {
      v7 = @"TRACKPAD_MOUSE";
    }

    else
    {
      v7 = @"TRACKPAD";
    }

    v8 = PSG_LocalizedStringForPointers(v7);
    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v6 preferenceSpecifierNamed:v8 target:v9 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    [v10 setIdentifier:@"POINTERS"];
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    [v10 setObject:@"com.apple.graphic-icon.trackpad-and-mouse" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
    v11 = objc_loadWeakRetained((a1 + 40));
    v15[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v11 insertOrderedSpecifiers:v12 atID:@"POINTERS" animated:v4 & 1];
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)sortDateTimeGroupIdentifiers:(id)a3
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  v5 = [v3 indexOfObject:@"DATE_AND_TIME_GROUP"];
  v6 = [v3 indexOfObject:@"TV_PROVIDER_GROUP"];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v3;
  }

  else
  {
    v8 = v5 + 1;
    v9 = [v3 subarrayWithRange:{v5 + 1, v6 - (v5 + 1)}];
    v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_8];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__PSGGeneralController_sortDateTimeGroupIdentifiers___block_invoke_2;
    v14[3] = &unk_278325908;
    v11 = v4;
    v15 = v11;
    v16 = v8;
    [v10 enumerateObjectsUsingBlock:v14];
    v12 = v11;
  }

  return v12;
}

uint64_t __53__PSGGeneralController_sortDateTimeGroupIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = PSG_LocalizedStringForGeneral(a2);
  v6 = PSG_LocalizedStringForGeneral(v4);

  v7 = [v5 localizedCompare:v6];
  return v7;
}

- (id)sortDateTimeGroupWithSpecifiers:(id)a3
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  v5 = [v3 indexOfSpecifierWithID:@"DATE_AND_TIME_GROUP"];
  v6 = [v3 indexOfNextGroupStartingAtIndex:v5];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL && v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v5 + 1;
    v9 = [v3 subarrayWithRange:{v8, v6 - v8}];
    v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_299];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __56__PSGGeneralController_sortDateTimeGroupWithSpecifiers___block_invoke_2;
    v16 = &unk_278325950;
    v17 = v4;
    v18 = v8;
    [v10 enumerateObjectsUsingBlock:&v13];
  }

  v11 = [v4 copy];

  return v11;
}

uint64_t __56__PSGGeneralController_sortDateTimeGroupWithSpecifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = PSG_LocalizedStringForGeneral(v5);
  v7 = [v4 identifier];

  v8 = PSG_LocalizedStringForGeneral(v7);
  v9 = [v6 localizedCompare:v8];

  return v9;
}

- (void)reloadSpecifiers
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_21CF20000, v1, v2, "%{public}s: called before -specifiers has completed. Don't call -reloadSpecifiers while controller is loading: %{public}@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)pairedVehiclesDidChange
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _PSGLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[PSGGeneralController pairedVehiclesDidChange]";
    _os_log_impl(&dword_21CF20000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: reloading specifiers because paired cars changed.", &v5, 0xCu);
  }

  [(PSGGeneralController *)self reloadSpecifiers];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)specifiers
{
  v148 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (v4)
  {
    goto LABEL_77;
  }

  v119 = [(PSGGeneralController *)self bundle];
  v5 = [MEMORY[0x277D75418] currentDevice];
  [v5 sf_isInternalInstall];

  v6 = objc_alloc(MEMORY[0x277CBEB38]);
  v7 = [v119 pathForResource:@"General" ofType:@"plist"];
  v8 = [v6 initWithContentsOfFile:v7];

  v128 = 0;
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v10 = *MEMORY[0x277D3FC20];
  v11 = [v9 initWithArray:*(&self->super.super.super.super.super.isa + v10)];
  v12 = *MEMORY[0x277D3FD20];
  v13 = *(&self->super.super.super.super.super.isa + v12);
  v127 = v11;
  v117 = v8;
  v14 = SpecifiersFromPlist();
  v15 = v127;
  v118 = v127;

  objc_storeStrong((&self->super.super.super.super.super.isa + v10), v15);
  [(PSGGeneralController *)self setSpecifierID:v128, &v127];
  if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
  {
    v16 = [v14 specifierForID:@"Reset"];
    [v14 removeObject:v16];
    v17 = [v14 specifierForID:@"SHUTDOWN_LABEL"];

    [v14 removeObject:v17];
  }

  v18 = [(PSGGeneralController *)self traitCollection];
  v19 = [v18 pe_isSettingsFeatureDescriptionCellSupported];

  if ((v19 & 1) == 0)
  {
    v20 = [v14 specifierForID:@"PLACARD_GROUP"];
    [v14 removeObject:v20];
    v21 = [v14 specifierForID:@"PLACARD"];
    [v14 removeObject:v21];
  }

  v22 = [(PSGGeneralController *)self gameControllersSpecifier];
  v23 = v22 == 0;

  if (v23)
  {
    v24 = [v14 specifierForID:@"GAME_CONTROLLER"];
    [(PSGGeneralController *)self setGameControllersSpecifier:v24];

    v25 = PSBundlePathForPreferenceBundle();
    v26 = [MEMORY[0x277CCAA00] defaultManager];
    v28 = v27 = v25;
    LOBYTE(v24) = [v26 fileExistsAtPath:v28];

    if ((v24 & 1) == 0)
    {
      v29 = PSBundlePathForPreferenceBundle();

      v25 = v29;
    }

    v31 = v30 = v25;
    v32 = [(PSGGeneralController *)self gameControllersSpecifier];
    [v32 setObject:v31 forKeyedSubscript:*MEMORY[0x277D40000]];
  }

  v33 = [(PSGGeneralController *)self _gameControllerDefaults];
  v34 = [v33 BOOLForKey:@"showGCPrefsPane"];

  if ((v34 & 1) == 0)
  {
    v35 = [(PSGGeneralController *)self gameControllersSpecifier];
    v36 = v35 == 0;

    if (!v36)
    {
      v37 = [(PSGGeneralController *)self gameControllersSpecifier];
      [v14 removeObject:v37];
    }
  }

  if ((PSGetCapabilityBoolAnswer() & 1) == 0 && !CFPreferencesGetAppBooleanValue(@"force-international", @"com.apple.preferences", 0))
  {
    v38 = [v14 specifierForID:@"INTERNATIONAL"];
    [v14 removeObject:v38];
  }

  v39 = [v14 specifierForID:@"AIRDROP_LINK"];
  airDropSpecifier = self->_airDropSpecifier;
  self->_airDropSpecifier = v39;

  v41 = [MEMORY[0x277D262A0] sharedConnection];
  v42 = [v41 isAirDropAllowed];

  if ((v42 & 1) == 0)
  {
    [v14 removeObject:self->_airDropSpecifier];
  }

  v43 = [(PSGGeneralController *)self carPreferences];
  v44 = v43 == 0;

  if (v44)
  {
    v129 = 0;
    v130 = &v129;
    v131 = 0x2050000000;
    v45 = getCRCarPlayPreferencesClass_softClass;
    v132 = getCRCarPlayPreferencesClass_softClass;
    if (!getCRCarPlayPreferencesClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v145 = __getCRCarPlayPreferencesClass_block_invoke;
      v146 = &unk_278325308;
      v147 = &v129;
      __getCRCarPlayPreferencesClass_block_invoke(&buf);
      v45 = v130[3];
    }

    v46 = v45;
    _Block_object_dispose(&v129, 8);
    v47 = objc_alloc_init(v45);
    [v47 setPreferencesDelegate:self];
    [(PSGGeneralController *)self setCarPreferences:v47];
    v48 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v48 addObserver:self selector:sel_pairedVehiclesDidChange name:@"CRPairedVehiclesDidChangeNotification" object:0];
  }

  if (![(PSGGeneralController *)self _hasCarPlayContent])
  {
    v49 = [v14 specifierForID:@"CARPLAY"];
    [v14 removeObject:v49];
  }

  v50 = [v14 specifierForID:@"SOFTWARE_UPDATE_LINK"];
  v51 = [(PSGGeneralController *)self loadingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__PSGGeneralController_specifiers__block_invoke;
  block[3] = &unk_278324FE8;
  v116 = v50;
  v125 = v116;
  v126 = self;
  dispatch_async(v51, block);

  [(PSGGeneralController *)self updateSoftwareUpdateBadge];
  if (_os_feature_enabled_impl() && (PSIsInEDUMode() & 1) == 0)
  {
    [(PSGGeneralController *)self updateAtlasFromCache:v14];
  }

  if (([MEMORY[0x277D38BE8] isPictureInPictureSupported] & 1) == 0)
  {
    v52 = [v14 specifierForID:@"PiP_SPEC"];
    [v14 removeObject:v52];
  }

  if ((PSGetCapabilityBoolAnswer() & 1) == 0)
  {
    v53 = CFPreferencesCopyAppValue(@"AllowTelephonyLoggingUI", @"com.apple.commcenter");
    v54 = v53;
    if (v53)
    {
      v55 = CFGetTypeID(v53);
      if (v55 == CFBooleanGetTypeID())
      {
        v56 = CFBooleanGetValue(v54) == 0;
        CFRelease(v54);
        if (!v56)
        {
          v57 = *MEMORY[0x277D3FE08];
          v142[0] = *MEMORY[0x277D40138];
          v142[1] = v57;
          v143[0] = @"PSLinkCell";
          v143[1] = @"EDGESettings";
          v58 = *MEMORY[0x277CBED10];
          v59 = *MEMORY[0x277D3FFB8];
          v142[2] = *MEMORY[0x277D3FDF8];
          v142[3] = v59;
          v143[2] = v58;
          v143[3] = @"TELEPHONY_LOGS";
          v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v142 count:4];
          v139 = v60;
          v140 = @"items";
          v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v139 count:1];
          v141 = v61;
          v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
          v63 = *(&self->super.super.super.super.super.isa + v12);
          v64 = SpecifiersFromPlist();

          v65 = [v14 specifierForID:{@"Reset", 0}];
          [v14 ps_insertObjectsFromArray:v64 afterObject:v65];
        }
      }

      else
      {
        CFRelease(v54);
      }
    }
  }

  if (+[PSGExtendedResearchUtilities getCanShowExtendedResearch])
  {
    v137[0] = *MEMORY[0x277D40170];
    v66 = PSG_LocalizedString(@"EXTENDED_RESEARCH_PROGRAM");
    v67 = *MEMORY[0x277D40020];
    v68 = MEMORY[0x277CBEC38];
    v138[0] = v66;
    v138[1] = MEMORY[0x277CBEC38];
    v69 = *MEMORY[0x277D3FFD8];
    v137[1] = v67;
    v137[2] = v69;
    v138[2] = @"com.apple.graphic-icon.extended-research-program";
    v137[3] = *MEMORY[0x277D3FE08];
    v70 = +[PSGExtendedResearchUtilities getExtendedResearchSettingsBundleName];
    v138[3] = v70;
    v71 = *MEMORY[0x277D3FFB8];
    v137[4] = *MEMORY[0x277D3FDF8];
    v137[5] = v71;
    v138[4] = v68;
    v138[5] = @"EXTENDED_RESEARCH_PROGRAM";
    v137[6] = *MEMORY[0x277D40138];
    v138[6] = @"PSLinkListCell";
    v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v138 forKeys:v137 count:7];

    v134 = v72;
    v135 = @"items";
    v73 = [MEMORY[0x277CBEA60] arrayWithObjects:&v134 count:1];
    v136 = v73;
    v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
    v75 = *(&self->super.super.super.super.super.isa + v12);
    v76 = SpecifiersFromPlist();

    v77 = [v14 specifierForID:{@"ManagedConfigurationList", 0}];
    [v14 ps_insertObjectsFromArray:v76 afterObject:v77];
  }

  else
  {
    v69 = *MEMORY[0x277D3FFD8];
  }

  v78 = [v14 specifierForID:@"Reset"];
  v79 = PSG_LocalizedStringForGeneral(@"TRANSFER_OR_RESET_TITLE");
  [v78 setName:v79];

  v80 = [MEMORY[0x277D75418] currentDevice];
  if ([v80 userInterfaceIdiom])
  {
    v81 = @"com.apple.graphic-icon.transfer-or-reset-ipad";
  }

  else
  {
    v81 = @"com.apple.graphic-icon.transfer-or-reset-iphone";
  }

  [v78 setObject:v81 forKeyedSubscript:v69];

  v82 = [v14 specifierForID:@"MATTER_ACCESSORIES"];
  [(PSGGeneralController *)self setMatterSpecifier:v82];

  v83 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v84 = [v83 BOOLForKey:@"PSGShouldShowMatter"];

  if ((v84 & 1) == 0)
  {
    v85 = [(PSGGeneralController *)self matterSpecifier];
    [v14 removeObject:v85];
  }

  if (objc_opt_class() && ([MEMORY[0x277D493B0] isDefaultContactlessAppConfigurationEligible] & 1) == 0)
  {
    v86 = _PSGLoggingFacility();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[PSGGeneralController specifiers]";
      _os_log_impl(&dword_21CF20000, v86, OS_LOG_TYPE_DEFAULT, "%s: removing CONTACTLESS_NFC", &buf, 0xCu);
    }

    v87 = [v14 specifierForID:@"CONTACTLESS_NFC"];
    [v14 removeObject:v87];
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v88 = [v14 specifierForID:@"SAD_GROUP"];
    [v14 removeObject:v88];

    v89 = [v14 specifierForID:@"HEALTH_DATA"];
    [v14 removeObject:v89];

    v90 = [v14 specifierForID:@"WEB_BROWSING"];
    [v14 removeObject:v90];

    v91 = [v14 specifierForID:@"PHOTO_LIBRARY"];
    [v14 removeObject:v91];
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v92 = _PSGLoggingFacility();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[PSGGeneralController specifiers]";
      _os_log_impl(&dword_21CF20000, v92, OS_LOG_TYPE_DEFAULT, "%s: AIDEBUG LocalCaptureSettings is not enabled", &buf, 0xCu);
    }

    v93 = [v14 specifierForID:@"LOCAL_CAPTURE"];
    [v14 removeObject:v93];
  }

  v94 = [MEMORY[0x277CC1E80] defaultWorkspace];
  if ([v94 applicationIsInstalled:@"com.apple.Health"])
  {
    v95 = [MEMORY[0x277D262A0] sharedConnection];
    v96 = [v95 restrictedAppBundleIDs];
    v97 = [v96 containsObject:@"com.apple.Health"];

    if (v97)
    {
      goto LABEL_58;
    }

    v94 = [v14 specifierForID:@"HEALTH_DATA"];
    [v14 removeObject:v94];
  }

LABEL_58:
  v98 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v99 = [v98 applicationIsInstalled:@"com.apple.mobileslideshow"];

  if (v99)
  {
    v100 = [v14 specifierForID:@"PHOTO_LIBRARY"];
    [v14 removeObject:v100];
  }

  v101 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v102 = [v101 applicationIsInstalled:@"com.apple.mobilesafari"];

  if (v102)
  {
    v103 = [v14 specifierForID:@"WEB_BROWSING"];
    [v14 removeObject:v103];
  }

  v104 = [v14 specifierForID:@"HEALTH_DATA"];
  if (!v104)
  {
    v104 = [v14 specifierForID:@"PHOTO_LIBRARY"];
    if (!v104)
    {
      v114 = [v14 specifierForID:@"WEB_BROWSING"];
      v115 = v114 == 0;

      if (!v115)
      {
        goto LABEL_65;
      }

      v104 = [v14 specifierForID:@"SAD_GROUP"];
      [v14 removeObject:v104];
    }
  }

LABEL_65:
  if (PSIsInEDUMode())
  {
    v105 = __34__PSGGeneralController_specifiers__block_invoke_399();
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v106 = [v105 countByEnumeratingWithState:&v120 objects:v133 count:16];
    if (v106)
    {
      v107 = *v121;
      do
      {
        for (i = 0; i != v106; ++i)
        {
          if (*v121 != v107)
          {
            objc_enumerationMutation(v105);
          }

          v109 = [v14 specifierForID:*(*(&v120 + 1) + 8 * i)];
          if (v109)
          {
            [v14 removeObject:v109];
          }
        }

        v106 = [v105 countByEnumeratingWithState:&v120 objects:v133 count:16];
      }

      while (v106);
    }
  }

  v110 = [(PSGGeneralController *)self sortDateTimeGroupWithSpecifiers:v14];
  v111 = *(&self->super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.isa + v3) = v110;

  v4 = *(&self->super.super.super.super.super.isa + v3);
LABEL_77:
  v112 = *MEMORY[0x277D85DE8];

  return v4;
}

void __34__PSGGeneralController_specifiers__block_invoke(uint64_t a1)
{
  IsBadgedForSoftwareUpdate = SUSUISettingsIsBadgedForSoftwareUpdate();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__PSGGeneralController_specifiers__block_invoke_2;
  block[3] = &unk_278325978;
  v8 = IsBadgedForSoftwareUpdate;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

char *__34__PSGGeneralController_specifiers__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 setProperty:&unk_282E90040 forKey:*MEMORY[0x277D3FDB0]];
  }

  else
  {
    [v3 removePropertyForKey:*MEMORY[0x277D3FDB0]];
  }

  result = *(a1 + 40);
  if (*&result[*MEMORY[0x277D3FC48]])
  {
    v5 = *(a1 + 32);

    return [result reloadSpecifier:v5];
  }

  return result;
}

id __34__PSGGeneralController_specifiers__block_invoke_399()
{
  if (PSGUserDefaultsAtlasDialogKey_block_invoke_na_once_token_27 != -1)
  {
    __34__PSGGeneralController_specifiers__block_invoke_399_cold_1();
  }

  v1 = PSGUserDefaultsAtlasDialogKey_block_invoke_na_once_object_27;

  return v1;
}

uint64_t __34__PSGGeneralController_specifiers__block_invoke_2_403()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"SOFTWARE_UPDATE_LINK", @"STORAGE_MGMT", @"COVERAGE_GROUP", @"COVERAGE", @"CONTINUITY_SPEC", @"CONTACTLESS_NFC", @"PiP_SPEC", @"CARPLAY", @"MATTER_ACCESSORIES", @"NFC_LINK", @"HOME_BUTTON_GROUP", @"HOME_BUTTON", @"WINDOW_RESTORATION", @"TV_PROVIDER_GROUP", @"TV_PROVIDER", @"RETAIL_KIOSK_MODE_SETTINGS_BUNDLE_GROUP", @"RETAIL_KIOSK_MODE_SETTINGS", @"TRANSFER_ERASE_RESET_GROUP", @"Reset", @"SHUTDOWN_GROUP", @"SHUTDOWN_LABEL", 0}];
  v1 = PSGUserDefaultsAtlasDialogKey_block_invoke_na_once_object_27;
  PSGUserDefaultsAtlasDialogKey_block_invoke_na_once_object_27 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)updateAtlasFromCache:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 dataForKey:@"AMSPreloadedAtlasDialog"];

  if (v6)
  {
    v9 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v9];
    if (v7)
    {
      v8 = [(PSGGeneralController *)self atlasSpecifierForDialog:v7];
      [v4 insertObject:v8 atIndex:{objc_msgSend(v4, "indexOfSpecifierWithID:", @"STORAGE_MGMT"}];
    }
  }
}

- (id)atlasSpecifierForDialog:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 title], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
  {
    v8 = MEMORY[0x277D3FAD8];
    v9 = [v5 title];
    v10 = [v8 preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:1 edit:0];

    [v10 setButtonAction:sel_loadAtlas_];
    [v10 setUserInfo:v5];
    [v10 setProperty:@"ATLAS" forKey:*MEMORY[0x277D3FFB8]];
    v11 = *MEMORY[0x277CBED28];
    [v10 setProperty:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277D3FF38]];
    [v10 setProperty:v11 forKey:*MEMORY[0x277D40020]];
    [v10 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
    v12 = [v5 appearanceInfo];
    v13 = [v12 objectForKeyedSubscript:@"IconUTTypeIdentifier"];

    if (v13 && [v13 length])
    {
      [v10 setProperty:v13 forKey:*MEMORY[0x277D3FFD8]];
    }

    v14 = [v5 iconURL];
    v15 = [v14 absoluteString];

    if (v15 && [v15 length])
    {
      v16 = [v5 iconURL];
      v17 = [v16 absoluteString];
      [v10 setProperty:v17 forKey:*MEMORY[0x277D40030]];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)loadAtlas:(id)a3
{
  v21[6] = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [MEMORY[0x277CEE3F8] bagForProfile:@"Settings" profileVersion:@"1"];
  v6 = [v4 defaultAction];
  v7 = [v6 deepLink];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CEE940]) initWithBag:v5 account:0 clientInfo:0];
    v9 = [v8 loadURL:v7];
    [(PSGGeneralController *)self showController:v8 animate:1];
    v10 = [objc_alloc(MEMORY[0x277CEE498]) initWithBag:v5];
    v20[0] = @"app";
    v11 = [(PSGGeneralController *)self bundle];
    v12 = [v11 bundleIdentifier];
    v21[0] = v12;
    v21[1] = @"MessageResult";
    v20[1] = @"eventType";
    v20[2] = @"serviceType";
    v21[2] = @"Atlas";
    v21[3] = @"GeneralSettings";
    v20[3] = @"placement";
    v20[4] = @"success";
    v21[4] = MEMORY[0x277CBEC38];
    v20[5] = @"result";
    v18 = @"url";
    v13 = [v7 absoluteString];
    v19 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v21[5] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
    v16 = [v10 enqueueData:v15];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)loadHomeButtonSettings:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setDelegate:self];
  v6 = [objc_alloc(MEMORY[0x277D3FAB8]) initWithRootViewController:v5];
  [v6 setSupportedInterfaceOrientations:2];
  [v6 setModalPresentationStyle:0];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v7 = getBFFStyleClass_softClass_0;
  v14 = getBFFStyleClass_softClass_0;
  if (!getBFFStyleClass_softClass_0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getBFFStyleClass_block_invoke_0;
    v10[3] = &unk_278325308;
    v10[4] = &v11;
    __getBFFStyleClass_block_invoke_0(v10);
    v7 = v12[3];
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);
  v9 = [v7 sharedStyle];
  [v9 applyThemeToNavigationController:v6];

  [v5 setUsesDoneButton:1];
  [(PSGGeneralController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)homeButtonCustomizeControllerDidFinish:(id)a3
{
  v11 = a3;
  v4 = [(PSGGeneralController *)self presentedViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (-[PSGGeneralController presentedViewController](self, "presentedViewController"), v5 = objc_claimAutoreleasedReturnValue(), [v5 topViewController], v6 = objc_claimAutoreleasedReturnValue(), v6 != v11))
  {
    [PSGGeneralController homeButtonCustomizeControllerDidFinish:];
  }

  v7 = [(PSGGeneralController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(PSGGeneralController *)self presentedViewController];
    v9 = [v8 topViewController];

    v10 = v11;
    if (v9 != v11)
    {
      goto LABEL_8;
    }

    [(PSGGeneralController *)self dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
  }

  v10 = v11;
LABEL_8:
}

- (BOOL)_hasCarPlayContent
{
  v3 = [(PSGGeneralController *)self carPreferences];
  v4 = [v3 isCarPlayAllowed];

  if (!v4)
  {
    return 0;
  }

  v5 = [(PSGGeneralController *)self carPreferences];
  v6 = [v5 isWirelessCarPlayEnabled];

  if (v6)
  {
    return 1;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v8 = getCRPairedVehicleManagerClass_softClass;
  v17 = getCRPairedVehicleManagerClass_softClass;
  if (!getCRPairedVehicleManagerClass_softClass)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __getCRPairedVehicleManagerClass_block_invoke;
    v13[3] = &unk_278325308;
    v13[4] = &v14;
    __getCRPairedVehicleManagerClass_block_invoke(v13);
    v8 = v15[3];
  }

  v9 = v8;
  _Block_object_dispose(&v14, 8);
  v10 = objc_alloc_init(v8);
  v11 = [v10 allVehicles];
  v7 = [v11 count] != 0;

  return v7;
}

- (void)dealloc
{
  v3 = [(PSGGeneralController *)self _gameControllerDefaultsObservationToken];
  [(PSGGeneralController *)self na_removeNotificationBlockObserver:v3];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.iapd.videoout.SettingsChanged", 0);
  v6 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v6 removeObserver:self];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:self name:*MEMORY[0x277D25CA0] object:0];

  v8 = [(PSGGeneralController *)self carPreferences];
  [v8 setPreferencesDelegate:0];

  [(PSGGeneralController *)self setCarPreferences:0];
  v9.receiver = self;
  v9.super_class = PSGGeneralController;
  [(PSGGeneralController *)&v9 dealloc];
}

- (void)profileNotification:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__PSGGeneralController_profileNotification___block_invoke;
  v6[3] = &unk_278324FE8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __44__PSGGeneralController_profileNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:*MEMORY[0x277D26180]];

  LODWORD(v2) = [v3 intValue];
  if (v2 != getpid())
  {
    [*(a1 + 40) _updateInteractivityForTVProviderIfNeeded];
    [*(a1 + 40) reload];
  }
}

- (PSGGeneralController)init
{
  v12.receiver = self;
  v12.super_class = PSGGeneralController;
  v2 = [(PSGGeneralController *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.GeneralSettingsUI.PSGGeneralController.loading", v3);
    [(PSGGeneralController *)v2 setLoadingQueue:v4];

    v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.GameController"];
    gameControllerDefaults = v2->__gameControllerDefaults;
    v2->__gameControllerDefaults = v5;

    v7 = [(PSGGeneralController *)v2 _gameControllerDefaults];
    v8 = [(PSGGeneralController *)v2 na_addNotificationBlockObserverForObject:v7 keyPath:@"showGCPrefsPane" options:1 usingBlock:&__block_literal_global_458];
    gameControllerDefaultsObservationToken = v2->__gameControllerDefaultsObservationToken;
    v2->__gameControllerDefaultsObservationToken = v8;

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v2 selector:sel_profileNotification_ name:@"PSProfileConnectionRestrictionChangedNotification" object:0];
    [v10 addObserver:v2 selector:sel_profileNotification_ name:@"PSProfileConnectionEffectiveSettingsChangedNotification" object:0];
    [v10 addObserver:v2 selector:sel_handleTVProviderStateDidChangeNotifications_ name:*MEMORY[0x277CE2478] object:0];
    [v10 addObserver:v2 selector:sel_handleTVProviderStateDidChangeNotifications_ name:*MEMORY[0x277CE2440] object:0];
    [v10 addObserver:v2 selector:sel_launchHasCompleted_ name:*MEMORY[0x277D3FFF8] object:0];
    [v10 addObserver:v2 selector:sel_pointerDevicesDidChange name:PSGPointerDevicesDidChangeNotification object:0];
  }

  return v2;
}

void __28__PSGGeneralController_init__block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 _gameControllerDefaults];
  v4 = [v3 BOOLForKey:@"showGCPrefsPane"];

  v5 = [v2 gameControllersSpecifier];

  if (v5)
  {
    v6 = [v2 specifierForID:@"GAME_CONTROLLER"];

    if (v4)
    {
      if (!v6)
      {
        v7 = [v2 gameControllersSpecifier];
        v10[0] = v7;
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
        [v2 insertOrderedSpecifiers:v8 atID:@"GAME_CONTROLLER" animated:1];
      }
    }

    else if (v6)
    {
      [v2 removeSpecifierID:@"GAME_CONTROLLER" animated:1];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleScrollPPTTestName
{
  v3 = [(PSGGeneralController *)self viewIfLoaded];
  v4 = [v3 window];

  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__PSGGeneralController_handleScrollPPTTestName__block_invoke;
    v6[3] = &unk_278324EE0;
    v6[4] = self;
    v5 = MEMORY[0x223D38F60](v6);
    [(PSGGeneralController *)self handleScrollPPTTestName:@"ScrollGeneralPaneRecapShort"];
    if (v5)
    {
      v5[2](v5);
    }
  }
}

void __47__PSGGeneralController_handleScrollPPTTestName__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) pptRelay];
  [v1 setPerformScrollGeneralSettingsTest:0];
}

- (void)pointerDevicesDidChange
{
  v3 = [MEMORY[0x277D3FA40] sharedInstance];
  v4 = [v3 launchHasCompleted];

  if (v4)
  {

    [(PSGGeneralController *)self updateTrackpadWithCompletion:0];
  }
}

- (void)setSpecifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = PSGGeneralController;
  v4 = a3;
  [(PSGGeneralController *)&v8 setSpecifier:v4];
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:{@"PSGPPTRelayKey", v8.receiver, v8.super_class}];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [(PSGGeneralController *)self setPptRelay:v7];
}

- (void)setPptRelay:(id)a3
{
  v9 = a3;
  v5 = [(PSGGeneralController *)self performScrollGeneralSettingsTestObservationToken];

  if (v5)
  {
    v6 = [(PSGGeneralController *)self performScrollGeneralSettingsTestObservationToken];
    [(PSGGeneralController *)self na_removeNotificationBlockObserver:v6];

    [(PSGGeneralController *)self setPerformScrollGeneralSettingsTestObservationToken:0];
  }

  objc_storeStrong(&self->_pptRelay, a3);
  v7 = v9;
  if (v9)
  {
    v8 = [(PSGGeneralController *)self na_addNotificationBlockObserverForObject:v9 keyPath:@"performScrollGeneralSettingsTest" options:7 usingBlock:&__block_literal_global_485];
    [(PSGGeneralController *)self setPerformScrollGeneralSettingsTestObservationToken:v8];

    v7 = v9;
  }
}

void __36__PSGGeneralController_setPptRelay___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if ([v7 BOOLValue])
  {
    [v8 handleScrollPPTTestName];
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PSGGeneralController;
  [(PSGGeneralController *)&v4 viewDidLoad];
  v3 = PSG_LocalizedStringForGeneral(@"General");
  [(PSGGeneralController *)self setTitle:v3];
}

- (void)launchHasCompleted:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = _PSGLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[PSGGeneralController launchHasCompleted:]";
    _os_log_impl(&dword_21CF20000, v4, OS_LOG_TYPE_DEFAULT, "%s: calling delayedAsyncLoadSpecifiers", &v6, 0xCu);
  }

  [(PSGGeneralController *)self delayedAsyncLoadSpecifiers];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PSGGeneralController;
  [(PSGGeneralController *)&v3 viewDidLayoutSubviews];
  if ([(PSGGeneralController *)self specifiersHaveLoaded])
  {
    if (*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
    {
      [(PSGGeneralController *)self updateSoftwareUpdateBadge];
    }
  }
}

- (id)EDGEEnabled:(id)a3
{
  v3 = [MEMORY[0x277D3FB18] sharedInstance];
  v4 = [v3 dataServiceID];

  v5 = [MEMORY[0x277D3FB18] sharedInstance];
  v6 = [v5 interfaceConfigurationValueForKey:@"Available" serviceID:v4];

  return v6;
}

- (void)enableEdge:(id)a3
{
  v3 = [MEMORY[0x277D3FB18] sharedInstance];
  v4 = [v3 dataServiceID];

  v6 = [MEMORY[0x277D3FB18] sharedInstance];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:1];
  [v6 setInterfaceConfigurationValue:v5 forKey:@"Available" serviceID:v4];
}

- (void)updateSoftwareUpdateBadge
{
  v3 = [(PSGGeneralController *)self loadingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PSGGeneralController_updateSoftwareUpdateBadge__block_invoke;
  block[3] = &unk_278324EE0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __49__PSGGeneralController_updateSoftwareUpdateBadge__block_invoke(uint64_t a1)
{
  IsBadgedForSoftwareUpdate = SUSUISettingsIsBadgedForSoftwareUpdate();
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__PSGGeneralController_updateSoftwareUpdateBadge__block_invoke_2;
  v3[3] = &unk_2783259E0;
  v3[4] = *(a1 + 32);
  v4 = IsBadgedForSoftwareUpdate;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __49__PSGGeneralController_updateSoftwareUpdateBadge__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) specifierForID:@"SOFTWARE_UPDATE_LINK"];
  v3 = *MEMORY[0x277D3FDB0];
  v7 = v2;
  if (*(a1 + 40) == 1)
  {
    [v2 setProperty:&unk_282E90040 forKey:v3];
  }

  else
  {
    [v2 removePropertyForKey:v3];
  }

  v4 = *(a1 + 32);
  v5 = v7;
  if (*&v4[*MEMORY[0x277D3FC48]])
  {
    v4 = [v4 reloadSpecifier:v7];
    v5 = v7;
  }

  return MEMORY[0x2821F96F8](v4, v5);
}

- (id)_createTVProviderSpecifiersIfNeeded
{
  if (PSIsInEDUMode())
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = *MEMORY[0x277D3FC48];
    v6 = [*(&self->super.super.super.super.super.isa + v5) specifierForID:@"TV_PROVIDER_GROUP"];
    if (!v6)
    {
      v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"TV_PROVIDER_GROUP"];
    }

    [v4 addObject:v6];
    v7 = [*(&self->super.super.super.super.super.isa + v5) specifierForID:@"TV_PROVIDER"];
    if (!v7)
    {
      v8 = MEMORY[0x277D3FAD8];
      v9 = PSG_LocalizedStringForGeneral(@"TV_PROVIDER_LABEL");
      v7 = [v8 preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:1 edit:0];

      [v7 setIdentifier:@"TV_PROVIDER"];
      [v7 setControllerLoadAction:sel_lazyLoadBundle_];
      v10 = MEMORY[0x277CBEC38];
      [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
      [v7 setObject:@"com.apple.graphic-icon.tv-provider" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
      [v7 setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FDF8]];
      v11 = PSBundlePathForPreferenceBundle();
      v13 = v12 = v11;
      [v7 setObject:v13 forKeyedSubscript:*MEMORY[0x277D40000]];

      v14 = [MEMORY[0x277D262A0] sharedConnection];
      LODWORD(v13) = [v14 effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]];

      v15 = [MEMORY[0x277D262A0] sharedConnection];
      v16 = [v15 effectiveBoolValueForSetting:*MEMORY[0x277D26078]];

      v18 = v13 == 1 && v16 == 1;
      v19 = [MEMORY[0x277CCABB0] numberWithBool:v18];
      [v7 setObject:v19 forKeyedSubscript:*MEMORY[0x277D3FF38]];
    }

    [v4 addObject:v7];
    v3 = [v4 copy];
  }

  return v3;
}

@end
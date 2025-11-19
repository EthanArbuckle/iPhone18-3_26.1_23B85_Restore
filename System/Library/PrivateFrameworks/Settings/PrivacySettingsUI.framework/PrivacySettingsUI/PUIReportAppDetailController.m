@interface PUIReportAppDetailController
- (BOOL)shouldShowOtherContent;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (PUIReportAppDetailController)init;
- (id)domainsSpecifiersFromResults:(id)a3;
- (id)otherSpecifiersFromResults:(id)a3;
- (id)specifiers;
- (id)websiteSpecifiersFromResults:(id)a3;
- (void)dataDidChange;
- (void)reloadAsyncSpecifiers;
@end

@implementation PUIReportAppDetailController

- (PUIReportAppDetailController)init
{
  v5.receiver = self;
  v5.super_class = PUIReportAppDetailController;
  v2 = [(PUIReportAppDetailController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_dataDidChange name:*MEMORY[0x277D76648] object:0];
  }

  return v2;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [(PUIReportAppDetailController *)self bundleID];

    if (!v6)
    {
      v7 = [(PUIReportAppDetailController *)self specifier];
      v8 = [v7 objectForKeyedSubscript:@"PUIReportAppIDKey"];
      [(PUIReportAppDetailController *)self setBundleID:v8];
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [(PUIReportAppDetailController *)self bundleID];
    PUIAnalyticsLogView(v10, v11, 0);

    v12 = objc_alloc(MEMORY[0x277CC1E70]);
    v13 = [(PUIReportAppDetailController *)self bundleID];
    v14 = [v12 initWithBundleIdentifier:v13 allowPlaceholder:0 error:0];

    v15 = [v14 localizedName];
    v16 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"APP_GROUP"];
    if (![(PUIReportAppDetailController *)self shouldShowOtherContent])
    {
      v17 = PUI_LocalizedStringForAppReport(@"APP_UPDATE_FOOTER");
      [v16 setObject:v17 forKeyedSubscript:*MEMORY[0x277D3FF88]];
    }

    [v5 addObject:v16];
    v18 = MEMORY[0x277D3FAD8];
    v19 = [v15 length];
    v20 = v15;
    if (!v19)
    {
      v20 = [(PUIReportAppDetailController *)self bundleID];
    }

    v21 = [v18 preferenceSpecifierNamed:v20 target:self set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];
    if (!v19)
    {
    }

    [v21 setIdentifier:@"APP"];
    v22 = [(PUIReportAppDetailController *)self bundleID];
    [v21 setObject:v22 forKeyedSubscript:*MEMORY[0x277D40008]];

    [v21 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    [v21 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    v23 = [v14 iTunesMetadata];
    v24 = [v23 artistName];
    v25 = [v24 length];

    if (v25)
    {
      v26 = MEMORY[0x277CCACA8];
      v27 = PUI_LocalizedStringForAppReport(@"OWNED_BY_%@");
      v28 = [v14 iTunesMetadata];
      [v28 artistName];
      v50 = v3;
      v29 = v14;
      v30 = v15;
      v31 = v16;
      v33 = v32 = v5;
      v34 = [v26 stringWithFormat:v27, v33];
      [v21 setObject:v34 forKeyedSubscript:*MEMORY[0x277D40160]];

      v5 = v32;
      v16 = v31;
      v15 = v30;
      v14 = v29;
      v3 = v50;
    }

    [v5 addObject:v21];
    if ([(PUIReportAppDetailController *)self shouldShowOtherContent])
    {
      v35 = @"DOMAINS_CONTACTED_DIRECTLY_BY_APP";
    }

    else
    {
      v35 = @"DOMAINS_CONTACTED_BY_APP";
    }

    v36 = MEMORY[0x277D3FAD8];
    v37 = PUI_LocalizedStringForAppReport(v35);
    v38 = [v36 groupSpecifierWithID:@"DOMAINS_GROUP" name:v37];
    [(PUIReportAppDetailController *)self setDomainHeader:v38];

    v39 = MEMORY[0x277D3FAD8];
    v40 = PUI_LocalizedStringForAppReport(@"WEBSITES_VISITED_IN_APP");
    v41 = [v39 groupSpecifierWithID:@"WEBSITES_GROUP" name:v40];
    [(PUIReportAppDetailController *)self setWebsiteHeader:v41];

    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    v44 = [(PUIReportAppDetailController *)self websiteHeader];
    [v44 setObject:v43 forKeyedSubscript:*MEMORY[0x277D3FF48]];

    v45 = MEMORY[0x277D3FAD8];
    v46 = PUI_LocalizedStringForAppReport(@"DOMAINS_CONTACTED_DIRECTLY_BY_OTHER_CONTENT");
    v47 = [v45 groupSpecifierWithID:@"OTHER_GROUP" name:v46];
    [(PUIReportAppDetailController *)self setOtherHeader:v47];

    v48 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)dataDidChange
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = _PUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[PUIReportAppDetailController dataDidChange]";
    _os_log_impl(&dword_2657FE000, v3, OS_LOG_TYPE_DEFAULT, "%s: Starting page load", buf, 0xCu);
  }

  v4 = PUILogForCategory(1uLL);
  v5 = os_signpost_id_make_with_pointer(v4, "PUIReportAppDetailController.load");

  v6 = PUILogForCategory(1uLL);
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2657FE000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PUIReportAppDetailController.load", "", buf, 2u);
  }

  v22 = v5;

  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v9 = objc_opt_new();
  v10 = *MEMORY[0x277D6B668];
  [v9 setObject:&unk_28772B3A8 forKeyedSubscript:*MEMORY[0x277D6B668]];
  v11 = *MEMORY[0x277D6B658];
  [v9 setObject:&unk_28772B3C0 forKeyedSubscript:*MEMORY[0x277D6B658]];
  v12 = [(PUIReportAppDetailController *)self bundleID];
  v13 = *MEMORY[0x277D6B640];
  [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x277D6B640]];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __45__PUIReportAppDetailController_dataDidChange__block_invoke;
  v28[3] = &unk_279BA1FB8;
  v28[4] = self;
  v14 = v8;
  v29 = v14;
  [PUITrackingReportManager queryWithOptions:v9 reply:v28];
  dispatch_group_enter(v14);
  v15 = objc_opt_new();
  v16 = v10;
  [v15 setObject:&unk_28772B3D8 forKeyedSubscript:v10];
  [v15 setObject:&unk_28772B3C0 forKeyedSubscript:v11];
  v17 = [(PUIReportAppDetailController *)self bundleID];
  [v15 setObject:v17 forKeyedSubscript:v13];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __45__PUIReportAppDetailController_dataDidChange__block_invoke_55;
  v26[3] = &unk_279BA1FB8;
  v26[4] = self;
  v18 = v14;
  v27 = v18;
  [PUITrackingReportManager queryWithOptions:v15 reply:v26];
  if ([(PUIReportAppDetailController *)self shouldShowOtherContent])
  {
    dispatch_group_enter(v18);
    v19 = objc_opt_new();
    [v19 setObject:&unk_28772B3F0 forKeyedSubscript:v16];
    [v19 setObject:&unk_28772B3C0 forKeyedSubscript:v11];
    v20 = [(PUIReportAppDetailController *)self bundleID];
    [v19 setObject:v20 forKeyedSubscript:v13];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __45__PUIReportAppDetailController_dataDidChange__block_invoke_59;
    v24[3] = &unk_279BA1FB8;
    v24[4] = self;
    v25 = v18;
    [PUITrackingReportManager queryWithOptions:v19 reply:v24];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__PUIReportAppDetailController_dataDidChange__block_invoke_3;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v22;
  dispatch_group_notify(v18, MEMORY[0x277D85CD0], block);

  v21 = *MEMORY[0x277D85DE8];
}

void __45__PUIReportAppDetailController_dataDidChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 objectForKeyedSubscript:@"result"];
  v5 = [v3 domainsSpecifiersFromResults:v4];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__PUIReportAppDetailController_dataDidChange__block_invoke_2;
  block[3] = &unk_279BA11C8;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __45__PUIReportAppDetailController_dataDidChange__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setDomainRowsAwaitingDisplay:*(a1 + 40)];
  [*(a1 + 32) reloadAsyncSpecifiers];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void __45__PUIReportAppDetailController_dataDidChange__block_invoke_55(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 objectForKeyedSubscript:@"result"];
  v5 = [v3 websiteSpecifiersFromResults:v4];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__PUIReportAppDetailController_dataDidChange__block_invoke_2_56;
  block[3] = &unk_279BA11C8;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __45__PUIReportAppDetailController_dataDidChange__block_invoke_2_56(uint64_t a1)
{
  [*(a1 + 32) setWebsiteRowsAwaitingDisplay:*(a1 + 40)];
  [*(a1 + 32) reloadAsyncSpecifiers];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void __45__PUIReportAppDetailController_dataDidChange__block_invoke_59(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 objectForKeyedSubscript:@"result"];
  v5 = [v3 otherSpecifiersFromResults:v4];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__PUIReportAppDetailController_dataDidChange__block_invoke_2_60;
  block[3] = &unk_279BA11C8;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __45__PUIReportAppDetailController_dataDidChange__block_invoke_2_60(uint64_t a1)
{
  [*(a1 + 32) setOtherRowsAwaitingDisplay:*(a1 + 40)];
  [*(a1 + 32) reloadAsyncSpecifiers];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void __45__PUIReportAppDetailController_dataDidChange__block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = PUILogForCategory(1uLL);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&dword_2657FE000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PUIReportAppDetailController.load", "", &v7, 2u);
  }

  v5 = _PUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[PUIReportAppDetailController dataDidChange]_block_invoke";
    _os_log_impl(&dword_2657FE000, v5, OS_LOG_TYPE_DEFAULT, "%s: Finished page load", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)reloadAsyncSpecifiers
{
  v56[1] = *MEMORY[0x277D85DE8];
  v3 = [(PUIReportAppDetailController *)self specifierForID:@"APP"];
  v4 = [(PUIReportAppDetailController *)self domainRows];
  v5 = [(PUIReportAppDetailController *)self domainRowsAwaitingDisplay];
  v6 = [(PUIReportAppDetailController *)self domainHeader];
  v56[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
  v8 = [(PSListController *)self pui_replaceRows:v4 withRows:v5 header:v7 insertPoint:v3];

  v9 = [(PUIReportAppDetailController *)self domainRowsAwaitingDisplay];
  [(PUIReportAppDetailController *)self setDomainRows:v9];

  v10 = [(PUIReportAppDetailController *)self websiteRows];
  v11 = [(PUIReportAppDetailController *)self websiteRowsAwaitingDisplay];
  v12 = [(PUIReportAppDetailController *)self websiteHeader];
  v55 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
  v14 = [(PSListController *)self pui_replaceRows:v10 withRows:v11 header:v13 insertPoint:v8];

  v15 = [(PUIReportAppDetailController *)self websiteRowsAwaitingDisplay];
  [(PUIReportAppDetailController *)self setWebsiteRows:v15];

  if ([(PUIReportAppDetailController *)self shouldShowOtherContent])
  {
    v16 = [(PUIReportAppDetailController *)self otherRows];
    v17 = [(PUIReportAppDetailController *)self otherRowsAwaitingDisplay];
    v18 = [(PUIReportAppDetailController *)self otherHeader];
    v54 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    v20 = [(PSListController *)self pui_replaceRows:v16 withRows:v17 header:v19 insertPoint:v14];

    v21 = [(PUIReportAppDetailController *)self otherRowsAwaitingDisplay];
    [(PUIReportAppDetailController *)self setOtherRows:v21];

    v14 = v20;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v22 = [(PUIReportAppDetailController *)self websiteRows];
  v23 = [v22 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v50;
    while (2)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v50 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v49 + 1) + 8 * i) objectForKeyedSubscript:@"PUITrackerBarShowAppAttributedBadgeKey"];
        v28 = [v27 BOOLValue];

        if (v28)
        {

          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          v31 = [(PUIReportAppDetailController *)self websiteHeader];
          [v31 setObject:v30 forKeyedSubscript:*MEMORY[0x277D3FF48]];

          v32 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
          v33 = [(PUIReportAppDetailController *)self websiteHeader];
          [v33 setObject:v32 forKeyedSubscript:@"PUIAttributedStringTextViewDelegateKey"];

          v34 = [MEMORY[0x277D755B8] _systemImageNamed:@"appstore"];
          v22 = [v34 imageWithRenderingMode:2];

          v35 = MEMORY[0x277CCACA8];
          v36 = PUI_LocalizedStringForAppReport(@"WEBSITE_UNVERIFIED_CONTEXT_FOOTER");
          v37 = [v35 stringWithFormat:v36, @"SF_SYMBOL_APPSTORE"];

          v38 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v37];
          v39 = [PUIAttributedStringFooter string:v38 replacingSubstring:@"SF_SYMBOL_APPSTORE" withImage:v22];
          v40 = objc_alloc(MEMORY[0x277CCAB48]);
          v41 = PUI_LocalizedStringForAppReport(@"WEBSITE_UNVERIFIED_CONTEXT_FOOTER_LINK");
          v42 = [v40 initWithString:v41];

          v43 = *MEMORY[0x277D740E8];
          v44 = [MEMORY[0x277CBEBC0] URLWithString:&stru_28771E540];
          [v42 addAttribute:v43 value:v44 range:{0, objc_msgSend(v42, "length")}];

          v45 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
          [v38 appendAttributedString:v45];

          [v38 appendAttributedString:v42];
          v46 = [(PUIReportAppDetailController *)self websiteHeader];
          [v46 setObject:v38 forKeyedSubscript:@"PUIAttributedStringFooterStringKey"];

          goto LABEL_13;
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v47 = [(PUIReportAppDetailController *)self websiteHeader];
  [(PUIReportAppDetailController *)self reloadSpecifier:v47];

  v48 = *MEMORY[0x277D85DE8];
}

- (id)domainsSpecifiersFromResults:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(PUIReportAppDetailController *)self bundleID];
  v7 = [PUIReportDomainListController domainSpecifiersFromResults:v4 showDates:1 showAppAndWebsiteCounts:0 app:v6 appOther:0 website:0];

  v8 = [v7 mutableCopy];
  v9 = [v8 count];
  v10 = [v8 count];
  if (v10 >= 5)
  {
    v11 = 5;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v8 subarrayWithRange:{0, v11}];
  v13 = [v12 mutableCopy];

  if (v9 >= 6)
  {
    v14 = MEMORY[0x277D3FAD8];
    v15 = PUI_LocalizedStringForAppReport(@"SHOW_ALL");
    v16 = [v14 preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v16 setIdentifier:@"SHOW_ALL_DOMAIN"];
    v17 = [(PUIReportAppDetailController *)self bundleID];
    [v16 setObject:v17 forKeyedSubscript:@"PUIReportDomainListEntries"];

    [v13 addObject:v16];
  }

  [v5 addObjectsFromArray:v13];
  v18 = [v5 copy];

  return v18;
}

- (id)websiteSpecifiersFromResults:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [PUIReportWebsiteListController websiteSpecifiersFromResults:v4 showDetail:1];

  v7 = [v6 mutableCopy];
  v8 = [v7 count];
  v9 = [v7 count];
  if (v9 >= 5)
  {
    v10 = 5;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v7 subarrayWithRange:{0, v10}];
  v12 = [v11 mutableCopy];

  if (v8 >= 6)
  {
    v13 = MEMORY[0x277D3FAD8];
    v14 = PUI_LocalizedStringForAppReport(@"SHOW_ALL");
    v15 = [v13 preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v15 setIdentifier:@"SHOW_ALL_WEBSITE"];
    v16 = [(PUIReportAppDetailController *)self bundleID];
    [v15 setObject:v16 forKeyedSubscript:@"PUIReportWebsiteListApp"];

    [v12 addObject:v15];
  }

  [v5 addObjectsFromArray:v12];
  v17 = [v5 copy];

  return v17;
}

- (id)otherSpecifiersFromResults:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(PUIReportAppDetailController *)self bundleID];
  v7 = [PUIReportDomainListController domainSpecifiersFromResults:v4 showDates:1 showAppAndWebsiteCounts:0 app:0 appOther:v6 website:0];

  v8 = [v7 mutableCopy];
  v9 = [v8 count];
  v10 = [v8 count];
  if (v10 >= 5)
  {
    v11 = 5;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v8 subarrayWithRange:{0, v11}];
  v13 = [v12 mutableCopy];

  if (v9 >= 6)
  {
    v14 = MEMORY[0x277D3FAD8];
    v15 = PUI_LocalizedStringForAppReport(@"SHOW_ALL");
    v16 = [v14 preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v16 setIdentifier:@"SHOW_ALL_OTHER"];
    v17 = [(PUIReportAppDetailController *)self bundleID];
    [v16 setObject:v17 forKeyedSubscript:@"PUIReportDomainListAppOther"];

    [v13 addObject:v16];
  }

  [v5 addObjectsFromArray:v13];
  v18 = [v5 copy];

  return v18;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v7 = objc_alloc(MEMORY[0x277D37688]);
  v8 = PUI_LocalizedStringForAppReport(@"LEARN_MORE_TITLE");
  v9 = [v7 initWithTitle:v8 detailText:0 symbolName:0 contentLayout:2];

  v10 = PUI_LocalizedStringForAppReport(@"LEARN_MORE_TEXT");
  [v9 addSectionWithHeader:0 content:v10];

  v11 = objc_alloc(MEMORY[0x277D751E0]);
  v12 = MEMORY[0x277D750C8];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __83__PUIReportAppDetailController_textView_shouldInteractWithURL_inRange_interaction___block_invoke;
  v19[3] = &unk_279BA0C40;
  v20 = v9;
  v13 = v9;
  v14 = [v12 actionWithHandler:v19];
  v15 = [v11 initWithBarButtonSystemItem:0 primaryAction:v14];

  v16 = [v13 navigationItem];
  [v16 setRightBarButtonItem:v15];

  v17 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v13];
  [(PUIReportAppDetailController *)self presentModalViewController:v17 withTransition:3];

  return 0;
}

void __83__PUIReportAppDetailController_textView_shouldInteractWithURL_inRange_interaction___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)shouldShowOtherContent
{
  v3 = objc_alloc(MEMORY[0x277CC1E70]);
  v4 = [(PUIReportAppDetailController *)self bundleID];
  v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];
  v6 = [v5 SDKVersion];

  v7 = [v6 compare:@"15.0" options:64];
  return v7 >= 0;
}

@end
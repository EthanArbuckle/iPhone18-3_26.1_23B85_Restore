@interface PUIReportDomainDetailController
- (PUIReportDomainDetailController)init;
- (id)appSpecifiersFromResults:(id)a3;
- (id)iconForContext:(id)a3;
- (id)nameForAppID:(id)a3;
- (id)specifiers;
- (id)timeStringForDate:(id)a3;
- (id)websiteSpecifiersFromResults:(id)a3;
- (void)dataDidChange;
- (void)didTapLearnMore;
- (void)reloadAsyncSpecifiers;
@end

@implementation PUIReportDomainDetailController

- (PUIReportDomainDetailController)init
{
  v7.receiver = self;
  v7.super_class = PUIReportDomainDetailController;
  v2 = [(PUIReportDomainDetailController *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_dataDidChange name:*MEMORY[0x277D76648] object:0];

    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    PUIAnalyticsLogView(v5, 0, 0);
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
    v6 = [(PUIReportDomainDetailController *)self domain];

    if (!v6)
    {
      v7 = [(PUIReportDomainDetailController *)self specifier];
      v8 = [v7 objectForKeyedSubscript:@"PUIReportDomainKey"];
      [(PUIReportDomainDetailController *)self setDomain:v8];
    }

    v9 = [(PUIReportDomainDetailController *)self specifier];
    v10 = [v9 objectForKeyedSubscript:@"PUIReportDomainDetailTrackerTypeKey"];
    v11 = [v10 integerValue];

    v12 = [(PUIReportDomainDetailController *)self specifier];
    v39 = [v12 objectForKeyedSubscript:@"PUIReportDomainDetailOwnerKey"];

    v13 = [(PUIReportDomainDetailController *)self domain];
    v14 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"OWNED_BY_GROUP"];
    v15 = PUI_LocalizedStringForAppReport(@"OWNED_BY_FOOTER_LINK");
    v16 = MEMORY[0x277CCACA8];
    if (v11 == 1)
    {
      v17 = @"OWNED_BY_TRACKER_FOOTER";
    }

    else
    {
      v17 = @"OWNED_BY_FOOTER";
    }

    v18 = PUI_LocalizedStringForAppReport(v17);
    v19 = [v16 stringWithFormat:@"%@ %@", v18, v15];

    [v14 setProperty:v19 forKey:*MEMORY[0x277D3FF70]];
    v40 = v15;
    v42.location = [v19 rangeOfString:v15];
    v20 = NSStringFromRange(v42);
    [v14 setProperty:v20 forKey:*MEMORY[0x277D3FF58]];

    v21 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v14 setProperty:v21 forKey:*MEMORY[0x277D3FF68]];

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [v14 setProperty:v23 forKey:*MEMORY[0x277D3FF48]];

    [v14 setProperty:@"didTapLearnMore" forKey:*MEMORY[0x277D3FF50]];
    [v14 setObject:v19 forKeyedSubscript:*MEMORY[0x277D3FF88]];
    v24 = v5;
    [v5 addObject:v14];
    v25 = MEMORY[0x277D3FAD8];
    v26 = PUI_LocalizedStringForAppReport(@"DOMAIN");
    v27 = [v25 preferenceSpecifierNamed:v26 target:self set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

    [v27 setIdentifier:@"DOMAIN"];
    [v27 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    [v27 setObject:v13 forKeyedSubscript:*MEMORY[0x277D401A8]];
    if ([v39 length])
    {
      v28 = MEMORY[0x277CCACA8];
      v29 = PUI_LocalizedStringForAppReport(@"OWNED_BY_%@");
      v30 = [v28 stringWithFormat:v29, v39];
      [v27 setObject:v30 forKeyedSubscript:@"PUITrackerCellSubtitleTextKey"];
    }

    [v24 addObject:v27];
    v31 = MEMORY[0x277D3FAD8];
    v32 = PUI_LocalizedStringForAppReport(@"APPS_CONTACTING_DOMAIN");
    v33 = [v31 groupSpecifierWithID:@"APPS_CONTACTING_TRACKER_GROUP" name:v32];
    [(PUIReportDomainDetailController *)self setAppHeader:v33];

    v34 = MEMORY[0x277D3FAD8];
    v35 = PUI_LocalizedStringForAppReport(@"SITES_CONTACTING_DOMAIN");
    v36 = [v34 groupSpecifierWithID:@"SITES_CONTACTING_TRACKER_GROUP" name:v35];
    [(PUIReportDomainDetailController *)self setWebsiteHeader:v36];

    v37 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v24;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)dataDidChange
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = _PUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[PUIReportDomainDetailController dataDidChange]";
    _os_log_impl(&dword_2657FE000, v3, OS_LOG_TYPE_DEFAULT, "%s: Starting page load", buf, 0xCu);
  }

  v4 = PUILogForCategory(1uLL);
  v5 = os_signpost_id_make_with_pointer(v4, "PUIReportDomainDetailController.load");

  v6 = PUILogForCategory(1uLL);
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2657FE000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PUIReportDomainDetailController.load", "", buf, 2u);
  }

  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v9 = objc_opt_new();
  v10 = *MEMORY[0x277D6B668];
  [v9 setObject:&unk_28772B438 forKeyedSubscript:*MEMORY[0x277D6B668]];
  v11 = [(PUIReportDomainDetailController *)self domain];
  v12 = *MEMORY[0x277D6B650];
  [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x277D6B650]];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __48__PUIReportDomainDetailController_dataDidChange__block_invoke;
  v21[3] = &unk_279BA1FB8;
  v21[4] = self;
  v13 = v8;
  v22 = v13;
  [PUITrackingReportManager queryWithOptions:v9 reply:v21];
  dispatch_group_enter(v13);
  v14 = objc_opt_new();
  [v14 setObject:&unk_28772B450 forKeyedSubscript:v10];
  v15 = [(PUIReportDomainDetailController *)self domain];
  [v14 setObject:v15 forKeyedSubscript:v12];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__PUIReportDomainDetailController_dataDidChange__block_invoke_92;
  v19[3] = &unk_279BA1FB8;
  v19[4] = self;
  v20 = v13;
  v16 = v13;
  [PUITrackingReportManager queryWithOptions:v14 reply:v19];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PUIReportDomainDetailController_dataDidChange__block_invoke_3;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v5;
  dispatch_group_notify(v16, MEMORY[0x277D85CD0], block);

  v17 = *MEMORY[0x277D85DE8];
}

void __48__PUIReportDomainDetailController_dataDidChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 objectForKeyedSubscript:@"result"];
  v5 = [v3 appSpecifiersFromResults:v4];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PUIReportDomainDetailController_dataDidChange__block_invoke_2;
  block[3] = &unk_279BA11C8;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __48__PUIReportDomainDetailController_dataDidChange__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAppRowsAwaitingDisplay:*(a1 + 40)];
  [*(a1 + 32) reloadAsyncSpecifiers];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void __48__PUIReportDomainDetailController_dataDidChange__block_invoke_92(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 objectForKeyedSubscript:@"result"];
  v5 = [v3 websiteSpecifiersFromResults:v4];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PUIReportDomainDetailController_dataDidChange__block_invoke_2_93;
  block[3] = &unk_279BA11C8;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __48__PUIReportDomainDetailController_dataDidChange__block_invoke_2_93(uint64_t a1)
{
  [*(a1 + 32) setWebsiteRowsAwaitingDisplay:*(a1 + 40)];
  [*(a1 + 32) reloadAsyncSpecifiers];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void __48__PUIReportDomainDetailController_dataDidChange__block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = PUILogForCategory(1uLL);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&dword_2657FE000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PUIReportDomainDetailController.load", "", &v7, 2u);
  }

  v5 = _PUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[PUIReportDomainDetailController dataDidChange]_block_invoke";
    _os_log_impl(&dword_2657FE000, v5, OS_LOG_TYPE_DEFAULT, "%s: Finished page load", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)reloadAsyncSpecifiers
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = [(PUIReportDomainDetailController *)self specifierForID:@"DOMAIN"];
  v4 = [(PUIReportDomainDetailController *)self appRows];
  v5 = [(PUIReportDomainDetailController *)self appRowsAwaitingDisplay];
  v6 = [(PUIReportDomainDetailController *)self appHeader];
  v18[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v8 = [(PSListController *)self pui_replaceRows:v4 withRows:v5 header:v7 insertPoint:v3];

  v9 = [(PUIReportDomainDetailController *)self appRowsAwaitingDisplay];
  [(PUIReportDomainDetailController *)self setAppRows:v9];

  v10 = [(PUIReportDomainDetailController *)self websiteRows];
  v11 = [(PUIReportDomainDetailController *)self websiteRowsAwaitingDisplay];
  v12 = [(PUIReportDomainDetailController *)self websiteHeader];
  v17 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v14 = [(PSListController *)self pui_replaceRows:v10 withRows:v11 header:v13 insertPoint:v8];

  v15 = [(PUIReportDomainDetailController *)self websiteRowsAwaitingDisplay];
  [(PUIReportDomainDetailController *)self setWebsiteRows:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)appSpecifiersFromResults:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v24 = *v27;
    v23 = *MEMORY[0x277D40008];
    v7 = *MEMORY[0x277D40020];
    v8 = *MEMORY[0x277D401A8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"bundleName"];
        v12 = MEMORY[0x277D3FAD8];
        v13 = [(PUIReportDomainDetailController *)self nameForAppID:v11];
        v14 = [v12 preferenceSpecifierNamed:v13 target:self set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

        [v14 setIdentifier:v11];
        [v14 setObject:v11 forKeyedSubscript:v23];
        [v14 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v7];
        v15 = MEMORY[0x277CBEAA8];
        v16 = [v10 objectForKeyedSubscript:@"maxTimeStamp"];
        v17 = [v15 dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v16, "integerValue")}];

        v18 = [(PUIReportDomainDetailController *)self timeStringForDate:v17];
        [v14 setObject:v18 forKeyedSubscript:v8];

        [v25 addObject:v14];
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  v19 = [v25 copy];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)websiteSpecifiersFromResults:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v22 = *v25;
    v7 = *MEMORY[0x277D401A8];
    v8 = *MEMORY[0x277D3FFC0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"context"];
        v12 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v11 target:self set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];
        [v12 setIdentifier:v11];
        v13 = MEMORY[0x277CBEAA8];
        v14 = [v10 objectForKeyedSubscript:@"maxTimeStamp"];
        v15 = [v13 dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v14, "integerValue")}];

        v16 = [(PUIReportDomainDetailController *)self timeStringForDate:v15];
        [v12 setObject:v16 forKeyedSubscript:v7];

        v17 = [(PUIReportDomainDetailController *)self iconForContext:v11];
        [v12 setObject:v17 forKeyedSubscript:v8];

        [v23 addObject:v12];
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v18 = [v23 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)didTapLearnMore
{
  v3 = objc_alloc(MEMORY[0x277D37688]);
  v4 = PUI_LocalizedStringForAppReport(@"LEARN_MORE_TITLE");
  v5 = [v3 initWithTitle:v4 detailText:0 symbolName:0 contentLayout:2];

  v6 = PUI_LocalizedStringForAppReport(@"LEARN_MORE_TEXT");
  [v5 addSectionWithHeader:0 content:v6];

  v7 = objc_alloc(MEMORY[0x277D751E0]);
  v8 = MEMORY[0x277D750C8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__PUIReportDomainDetailController_didTapLearnMore__block_invoke;
  v14[3] = &unk_279BA0C40;
  v15 = v5;
  v9 = v5;
  v10 = [v8 actionWithHandler:v14];
  v11 = [v7 initWithBarButtonSystemItem:0 primaryAction:v10];

  v12 = [v9 navigationItem];
  [v12 setRightBarButtonItem:v11];

  v13 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v9];
  [(PUIReportDomainDetailController *)self presentModalViewController:v13 withTransition:3];
}

void __50__PUIReportDomainDetailController_didTapLearnMore__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (id)nameForAppID:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v3 allowPlaceholder:1 error:0];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifierOfSystemPlaceholder:v3 error:0];
  }

  v5 = [v4 localizedName];
  if (!v5)
  {
    v5 = v3;
  }

  return v5;
}

- (id)timeStringForDate:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setTimeStyle:1];
  [v4 setDateStyle:1];
  v5 = [v4 stringFromDate:v3];

  return v5;
}

- (id)iconForContext:(id)a3
{
  v3 = a3;
  v4 = PUIWebsiteIconView();
  v5 = [v3 substringWithRange:{0, 1}];

  v6 = [v5 localizedUppercaseString];
  [v4 setText:v6];

  v7 = PUIImageFromLabel(v4);

  return v7;
}

@end
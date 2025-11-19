@interface PUIReportWebsiteListController
+ (BOOL)websiteSpecifiersWithLimit:(unint64_t)a3 showDetail:(BOOL)a4 completion:(id)a5;
+ (id)websiteSpecifiersFromResults:(id)a3 showDetail:(BOOL)a4;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (PUIReportWebsiteListController)init;
- (id)specifiers;
- (void)dataDidChange;
- (void)dealloc;
- (void)sortByWasTapped;
@end

@implementation PUIReportWebsiteListController

+ (id)websiteSpecifiersFromResults:(id)a3 showDetail:(BOOL)a4
{
  v38 = a4;
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v39 = objc_opt_new();
  v5 = dispatch_group_create();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  v7 = 0x277CCA000uLL;
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v36 = *v48;
    v35 = *MEMORY[0x277D3FE58];
    v33 = *MEMORY[0x277D6B668];
    v32 = *MEMORY[0x277D6B670];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v48 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v47 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"context"];
        v13 = [v11 objectForKeyedSubscript:@"sumHits"];
        v14 = [v13 integerValue];

        v15 = [v11 objectForKeyedSubscript:@"contextVerificationType"];
        v16 = [v15 integerValue] != 2;

        v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v12 target:a1 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
        [v17 setIdentifier:v12];
        [v17 setObject:v12 forKeyedSubscript:@"PUIReportWebsiteKey"];
        [v17 setObject:objc_opt_class() forKeyedSubscript:v35];
        [*(v7 + 2992) numberWithInteger:v14];
        v19 = v18 = v7;
        [v17 setObject:v19 forKeyedSubscript:@"PUITrackerBarValueKey"];

        v7 = v18;
        [v17 setObject:v12 forKeyedSubscript:@"PUITrackerBarIconLabelKey"];
        v20 = [*(v18 + 2992) numberWithInt:v16];
        [v17 setObject:v20 forKeyedSubscript:@"PUITrackerBarShowAppAttributedBadgeKey"];

        if (v14 > v9)
        {
          v9 = v14;
        }

        if (v38)
        {
          v21 = objc_opt_new();
          [v21 setObject:&unk_28772B528 forKeyedSubscript:v33];
          [v21 setObject:v12 forKeyedSubscript:v32];
          dispatch_group_enter(v5);
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __74__PUIReportWebsiteListController_websiteSpecifiersFromResults_showDetail___block_invoke;
          v44[3] = &unk_279BA1FB8;
          v45 = v17;
          v46 = v5;
          [PUITrackingReportManager queryWithOptions:v21 reply:v44];
        }

        dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
        [v39 addObject:v17];
      }

      v8 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v22 = v39;
  v23 = [v22 countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v41;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v40 + 1) + 8 * j);
        v28 = [*(v7 + 2992) numberWithInteger:v9];
        [v27 setObject:v28 forKeyedSubscript:@"PUITrackerBarCapacityKey"];
      }

      v24 = [v22 countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v24);
  }

  v29 = [v22 copy];
  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

void __74__PUIReportWebsiteListController_websiteSpecifiersFromResults_showDetail___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"result_count"];
  v5 = [v4 integerValue];

  v6 = [v3 objectForKeyedSubscript:@"result"];

  v7 = [v6 firstObject];
  v14 = [v7 objectForKeyedSubscript:@"domain"];

  if (v5 == 1)
  {
    [*(a1 + 32) setObject:v14 forKeyedSubscript:@"PUITrackerBarTertiaryLabelKey"];
  }

  else
  {
    v8 = MEMORY[0x277CCABB8];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v5 - 1];
    v10 = [v8 localizedStringFromNumber:v9 numberStyle:1];

    v11 = MEMORY[0x277CCACA8];
    v12 = PUI_LocalizedStringForTrackers(@"%@_AND_%@_MORE");
    v13 = [v11 localizedStringWithFormat:v12, v14, v10];
    [*(a1 + 32) setObject:v13 forKeyedSubscript:@"PUITrackerBarTertiaryLabelKey"];
  }

  dispatch_group_leave(*(a1 + 40));
}

+ (BOOL)websiteSpecifiersWithLimit:(unint64_t)a3 showDetail:(BOOL)a4 completion:(id)a5
{
  v7 = a5;
  v8 = objc_opt_new();
  [v8 setObject:&unk_28772B540 forKeyedSubscript:*MEMORY[0x277D6B668]];
  [v8 setObject:&unk_28772B558 forKeyedSubscript:*MEMORY[0x277D6B648]];
  if (a3)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x277D6B658]];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__PUIReportWebsiteListController_websiteSpecifiersWithLimit_showDetail_completion___block_invoke;
  v13[3] = &unk_279BA22C0;
  v15 = a4;
  v14 = v7;
  v10 = v7;
  v11 = [PUITrackingReportManager queryWithOptions:v8 reply:v13];

  return v11;
}

void __83__PUIReportWebsiteListController_websiteSpecifiersWithLimit_showDetail_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"result"];
  v7 = [PUIReportWebsiteListController websiteSpecifiersFromResults:v3 showDetail:*(a1 + 40)];

  v4 = [v7 count] != 0;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v5 setBool:v4 forKey:@"PSUITrackerHasDataKey"];

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7);
  }
}

- (PUIReportWebsiteListController)init
{
  v7.receiver = self;
  v7.super_class = PUIReportWebsiteListController;
  v2 = [(PUIReportWebsiteListController *)&v7 init];
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

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PUIReportWebsiteListController;
  [(PUIReportWebsiteListController *)&v4 dealloc];
}

- (id)specifiers
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = PUI_LocalizedStringForAppReport(@"WEBSITE_NETWORK_ACTIVITY_TITLE");
    [(PUIReportWebsiteListController *)self setTitle:v5];

    v6 = objc_alloc(MEMORY[0x277D751E0]);
    v7 = PUI_LocalizedStringForAppReport(@"SORT_BY");
    v8 = [v6 initWithTitle:v7 style:0 target:self action:sel_sortByWasTapped];
    v9 = [(PUIReportWebsiteListController *)self navigationItem];
    [v9 setRightBarButtonItem:v8];

    v10 = objc_opt_new();
    if ([(PUIReportWebsiteListController *)self alphabeticalSort])
    {
      v11 = &stru_28771E540;
    }

    else
    {
      v11 = PUI_LocalizedStringForAppReport(@"MOST_ACTIVE_SITE");
    }

    v12 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"HEADER_GROUP" name:v11];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = *MEMORY[0x277D3FF48];
    [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x277D3FF48]];

    [v10 addObject:v12];
    v16 = [(PUIReportWebsiteListController *)self cachedSpecifiers];

    if (!v16)
    {
      v17 = [(PUIReportWebsiteListController *)self specifier];
      v18 = [v17 objectForKeyedSubscript:@"PUIReportWebsiteListApp"];

      if ([v18 length])
      {
        v19 = objc_opt_new();
        [v19 setObject:&unk_28772B570 forKeyedSubscript:*MEMORY[0x277D6B668]];
        [v19 setObject:v18 forKeyedSubscript:*MEMORY[0x277D6B640]];
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __44__PUIReportWebsiteListController_specifiers__block_invoke;
        v59[3] = &unk_279BA22E8;
        v59[4] = self;
        [PUITrackingReportManager queryWithOptions:v19 reply:v59];
      }

      else
      {
        v20 = objc_opt_class();
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __44__PUIReportWebsiteListController_specifiers__block_invoke_3;
        v58[3] = &unk_279BA2008;
        v58[4] = self;
        [v20 websiteSpecifiersWithLimit:0 showDetail:0 completion:v58];
      }
    }

    v21 = [(PUIReportWebsiteListController *)self alphabeticalSort];
    v22 = [(PUIReportWebsiteListController *)self cachedSpecifiers];
    v23 = v22;
    if (v21)
    {
      v24 = [v22 sortedArrayUsingComparator:&__block_literal_global_21];

      v23 = v24;
    }

    [v10 addObjectsFromArray:v23];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v25 = v23;
    v26 = [v25 countByEnumeratingWithState:&v54 objects:v60 count:16];
    v27 = v25;
    if (v26)
    {
      v28 = v26;
      v51 = v11;
      v52 = v10;
      v53 = v3;
      v29 = *v55;
      while (2)
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v55 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v31 = [*(*(&v54 + 1) + 8 * i) objectForKeyedSubscript:@"PUITrackerBarShowAppAttributedBadgeKey"];
          v32 = [v31 BOOLValue];

          if (v32)
          {

            v33 = objc_opt_class();
            v34 = NSStringFromClass(v33);
            [v12 setObject:v34 forKeyedSubscript:v15];

            v35 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
            [v12 setObject:v35 forKeyedSubscript:@"PUIAttributedStringTextViewDelegateKey"];

            v36 = [MEMORY[0x277D755B8] _systemImageNamed:@"appstore"];
            v27 = [v36 imageWithRenderingMode:2];

            v37 = MEMORY[0x277CCACA8];
            v38 = PUI_LocalizedStringForAppReport(@"WEBSITE_UNVERIFIED_CONTEXT_FOOTER");
            v39 = [v37 stringWithFormat:v38, @"SF_SYMBOL_APPSTORE"];

            v40 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v39];
            v41 = [PUIAttributedStringFooter string:v40 replacingSubstring:@"SF_SYMBOL_APPSTORE" withImage:v27];
            v42 = objc_alloc(MEMORY[0x277CCAB48]);
            v43 = PUI_LocalizedStringForAppReport(@"WEBSITE_UNVERIFIED_CONTEXT_FOOTER_LINK");
            v44 = [v42 initWithString:v43];

            v45 = *MEMORY[0x277D740E8];
            v46 = [MEMORY[0x277CBEBC0] URLWithString:&stru_28771E540];
            [v44 addAttribute:v45 value:v46 range:{0, objc_msgSend(v44, "length")}];

            v47 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
            [v40 appendAttributedString:v47];

            [v40 appendAttributedString:v44];
            [v12 setObject:v40 forKeyedSubscript:@"PUIAttributedStringFooterStringKey"];

            goto LABEL_22;
          }
        }

        v28 = [v25 countByEnumeratingWithState:&v54 objects:v60 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }

      v27 = v25;
LABEL_22:
      v10 = v52;
      v3 = v53;
      v11 = v51;
    }

    v48 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v10;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  v49 = *MEMORY[0x277D85DE8];

  return v4;
}

void __44__PUIReportWebsiteListController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = [v4 objectForKeyedSubscript:@"result"];

  v7 = [v5 websiteSpecifiersFromResults:v6 showDetail:0];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__PUIReportWebsiteListController_specifiers__block_invoke_2;
  v9[3] = &unk_279BA10B0;
  v9[4] = *(a1 + 32);
  v10 = v7;
  v8 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __44__PUIReportWebsiteListController_specifiers__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCachedSpecifiers:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

void __44__PUIReportWebsiteListController_specifiers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__PUIReportWebsiteListController_specifiers__block_invoke_4;
  v5[3] = &unk_279BA10B0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __44__PUIReportWebsiteListController_specifiers__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setCachedSpecifiers:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

uint64_t __44__PUIReportWebsiteListController_specifiers__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (void)dataDidChange
{
  [(PUIReportWebsiteListController *)self setCachedSpecifiers:0];

  [(PUIReportWebsiteListController *)self reloadSpecifiers];
}

- (void)sortByWasTapped
{
  v3 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v4 = MEMORY[0x277D750F8];
  v5 = PUI_LocalizedStringForAppReport(@"MOST_ACTIVE_SITE");
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__PUIReportWebsiteListController_sortByWasTapped__block_invoke;
  v14[3] = &unk_279BA1B38;
  v14[4] = self;
  v6 = [v4 actionWithTitle:v5 style:0 handler:v14];

  [v6 _setChecked:{-[PUIReportWebsiteListController alphabeticalSort](self, "alphabeticalSort") ^ 1}];
  [v3 addAction:v6];
  v7 = MEMORY[0x277D750F8];
  v8 = PUI_LocalizedStringForAppReport(@"ALPHABETICAL");
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__PUIReportWebsiteListController_sortByWasTapped__block_invoke_2;
  v13[3] = &unk_279BA1B38;
  v13[4] = self;
  v9 = [v7 actionWithTitle:v8 style:0 handler:v13];

  [v9 _setChecked:{-[PUIReportWebsiteListController alphabeticalSort](self, "alphabeticalSort")}];
  [v3 addAction:v9];
  v10 = MEMORY[0x277D750F8];
  v11 = PUI_LocalizedStringForAppReport(@"CANCEL");
  v12 = [v10 actionWithTitle:v11 style:1 handler:0];

  [v3 addAction:v12];
  [(PUIReportWebsiteListController *)self presentViewController:v3 animated:1 completion:0];
}

uint64_t __49__PUIReportWebsiteListController_sortByWasTapped__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) alphabeticalSort];
  if (result)
  {
    [*(a1 + 32) setAlphabeticalSort:0];
    v3 = *(a1 + 32);

    return [v3 reloadSpecifiers];
  }

  return result;
}

uint64_t __49__PUIReportWebsiteListController_sortByWasTapped__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) alphabeticalSort];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setAlphabeticalSort:1];
    v3 = *(a1 + 32);

    return [v3 reloadSpecifiers];
  }

  return result;
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
  v19[2] = __85__PUIReportWebsiteListController_textView_shouldInteractWithURL_inRange_interaction___block_invoke;
  v19[3] = &unk_279BA0C40;
  v20 = v9;
  v13 = v9;
  v14 = [v12 actionWithHandler:v19];
  v15 = [v11 initWithBarButtonSystemItem:0 primaryAction:v14];

  v16 = [v13 navigationItem];
  [v16 setRightBarButtonItem:v15];

  v17 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v13];
  [(PUIReportWebsiteListController *)self presentModalViewController:v17 withTransition:3];

  return 0;
}

void __85__PUIReportWebsiteListController_textView_shouldInteractWithURL_inRange_interaction___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

@end
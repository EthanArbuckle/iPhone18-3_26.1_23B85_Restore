@interface PUIReportAppListController
+ (BOOL)appSpecifiersWithLimit:(unint64_t)a3 completion:(id)a4;
- (PUIReportAppListController)init;
- (id)specifiers;
- (void)dataDidChange;
- (void)dealloc;
- (void)sortByWasTapped;
@end

@implementation PUIReportAppListController

+ (BOOL)appSpecifiersWithLimit:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setObject:&unk_28772B408 forKeyedSubscript:*MEMORY[0x277D6B668]];
  if (a3)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277D6B658]];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__PUIReportAppListController_appSpecifiersWithLimit_completion___block_invoke;
  v12[3] = &unk_279BA1FE0;
  v13 = v6;
  v14 = a1;
  v9 = v6;
  v10 = [PUITrackingReportManager queryWithOptions:v7 reply:v12];

  return v10;
}

void __64__PUIReportAppListController_appSpecifiersWithLimit_completion___block_invoke(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v40 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v33 = v2;
  obj = [v2 objectForKeyedSubscript:@"result"];
  v3 = 0x277CCA000;
  v42 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  v4 = 0;
  if (v42)
  {
    v39 = *v48;
    v38 = *MEMORY[0x277D40020];
    v37 = *MEMORY[0x277D3FE58];
    v35 = *MEMORY[0x277D40008];
    v34 = *MEMORY[0x277D3FFD8];
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v48 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v47 + 1) + 8 * i);
        v7 = [v6 objectForKeyedSubscript:@"bundleName"];
        v8 = [v6 objectForKeyedSubscript:@"count"];
        v9 = [v8 integerValue];

        if (-[__CFString isEqualToString:](v7, "isEqualToString:", @"com.apple.mobilesafari") && ([MEMORY[0x277CC1E80] defaultWorkspace], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "applicationIsInstalled:", @"com.apple.mobilesafari"), v10, (v11 & 1) == 0))
        {
          v13 = PUI_LocalizedStringForAppReport(@"IN_APP_WEB_BROWSING");
          v14 = 1;
          v15 = @"com.apple.graphic-icon.web-browsing";
        }

        else
        {
          v12 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v7 allowPlaceholder:0 error:0];
          v13 = [v12 localizedName];

          v14 = 0;
          v15 = 0;
        }

        v16 = MEMORY[0x277D3FAD8];
        if ([(__CFString *)v13 length])
        {
          v17 = v13;
        }

        else
        {
          v17 = v7;
        }

        v18 = [v16 preferenceSpecifierNamed:v17 target:*(a1 + 40) set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
        [v18 setIdentifier:v7];
        [v18 setObject:v7 forKeyedSubscript:@"PUIReportAppIDKey"];
        [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v38];
        [v18 setObject:objc_opt_class() forKeyedSubscript:v37];
        v3 = 0x277CCA000uLL;
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
        [v18 setObject:v19 forKeyedSubscript:@"PUITrackerBarValueKey"];

        if (v14)
        {
          v20 = v15;
          v21 = v34;
        }

        else
        {
          v20 = v7;
          v21 = v35;
        }

        [v18 setObject:v20 forKeyedSubscript:v21];
        [v40 addObject:v18];
        if (v9 > v4)
        {
          v4 = v9;
        }
      }

      v42 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v42);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v22 = v40;
  v23 = [v22 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v44;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v44 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v43 + 1) + 8 * j);
        v28 = [*(v3 + 2992) numberWithUnsignedInteger:v4];
        [v27 setObject:v28 forKeyedSubscript:@"PUITrackerBarCapacityKey"];
      }

      v24 = [v22 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v24);
  }

  v29 = [v22 count] != 0;
  v30 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v30 setBool:v29 forKey:@"PSUITrackerHasDataKey"];

  v31 = *(a1 + 32);
  if (v31)
  {
    (*(v31 + 16))(v31, v22);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (PUIReportAppListController)init
{
  v7.receiver = self;
  v7.super_class = PUIReportAppListController;
  v2 = [(PUIReportAppListController *)&v7 init];
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
  v4.super_class = PUIReportAppListController;
  [(PUIReportAppListController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = PUI_LocalizedStringForAppReport(@"APP_NETWORK_ACTIVITY");
    [(PUIReportAppListController *)self setTitle:v5];

    v6 = objc_alloc(MEMORY[0x277D751E0]);
    v7 = PUI_LocalizedStringForAppReport(@"SORT_BY");
    v8 = [v6 initWithTitle:v7 style:0 target:self action:sel_sortByWasTapped];
    v9 = [(PUIReportAppListController *)self navigationItem];
    [v9 setRightBarButtonItem:v8];

    v10 = [(PUIReportAppListController *)self cachedSpecifiers];

    if (!v10)
    {
      v11 = objc_opt_class();
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __40__PUIReportAppListController_specifiers__block_invoke;
      v21[3] = &unk_279BA2008;
      v21[4] = self;
      [v11 appSpecifiersWithLimit:0 completion:v21];
    }

    v12 = objc_opt_new();
    if ([(PUIReportAppListController *)self alphabeticalSort])
    {
      v13 = &stru_28771E540;
    }

    else
    {
      v13 = PUI_LocalizedStringForAppReport(@"MOST_ACTIVE_APP");
    }

    v14 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"HEADER_GROUP" name:v13];
    [v12 addObject:v14];
    v15 = [(PUIReportAppListController *)self alphabeticalSort];
    v16 = [(PUIReportAppListController *)self cachedSpecifiers];
    v17 = v16;
    if (v15)
    {
      v18 = [v16 sortedArrayUsingComparator:&__block_literal_global_14];

      v17 = v18;
    }

    [v12 addObjectsFromArray:v17];
    v19 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v12;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

void __40__PUIReportAppListController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__PUIReportAppListController_specifiers__block_invoke_2;
  v5[3] = &unk_279BA10B0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __40__PUIReportAppListController_specifiers__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCachedSpecifiers:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

uint64_t __40__PUIReportAppListController_specifiers__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (void)dataDidChange
{
  [(PUIReportAppListController *)self setCachedSpecifiers:0];

  [(PUIReportAppListController *)self reloadSpecifiers];
}

- (void)sortByWasTapped
{
  v3 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v4 = MEMORY[0x277D750F8];
  v5 = PUI_LocalizedStringForAppReport(@"MOST_ACTIVE_APP");
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__PUIReportAppListController_sortByWasTapped__block_invoke;
  v14[3] = &unk_279BA1B38;
  v14[4] = self;
  v6 = [v4 actionWithTitle:v5 style:0 handler:v14];

  [v6 _setChecked:{-[PUIReportAppListController alphabeticalSort](self, "alphabeticalSort") ^ 1}];
  [v3 addAction:v6];
  v7 = MEMORY[0x277D750F8];
  v8 = PUI_LocalizedStringForAppReport(@"ALPHABETICAL");
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__PUIReportAppListController_sortByWasTapped__block_invoke_2;
  v13[3] = &unk_279BA1B38;
  v13[4] = self;
  v9 = [v7 actionWithTitle:v8 style:0 handler:v13];

  [v9 _setChecked:{-[PUIReportAppListController alphabeticalSort](self, "alphabeticalSort")}];
  [v3 addAction:v9];
  v10 = MEMORY[0x277D750F8];
  v11 = PUI_LocalizedStringForAppReport(@"CANCEL");
  v12 = [v10 actionWithTitle:v11 style:1 handler:0];

  [v3 addAction:v12];
  [(PUIReportAppListController *)self presentViewController:v3 animated:1 completion:0];
}

uint64_t __45__PUIReportAppListController_sortByWasTapped__block_invoke(uint64_t a1)
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

uint64_t __45__PUIReportAppListController_sortByWasTapped__block_invoke_2(uint64_t a1)
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

@end
@interface PUIReportDomainListController
+ (BOOL)domainSpecifiersWithLimit:(unint64_t)a3 showDates:(BOOL)a4 showAppAndWebsiteCounts:(BOOL)a5 showIPAddresses:(BOOL)a6 completion:(id)a7;
+ (id)domainSpecifiersFromResults:(id)a3 showDates:(BOOL)a4 showAppAndWebsiteCounts:(BOOL)a5 app:(id)a6 appOther:(id)a7 website:(id)a8;
- (PUIReportDomainListController)init;
- (id)specifiers;
- (void)dataDidChange;
- (void)dealloc;
- (void)sortByWasTapped;
@end

@implementation PUIReportDomainListController

+ (id)domainSpecifiersFromResults:(id)a3 showDates:(BOOL)a4 showAppAndWebsiteCounts:(BOOL)a5 app:(id)a6 appOther:(id)a7 website:(id)a8
{
  v11 = a4;
  v77 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v55 = a6;
  v54 = a7;
  v53 = a8;
  v59 = v11;
  if (v11)
  {
    v13 = objc_opt_new();
    [v13 setTimeStyle:1];
    v56 = v13;
    [v13 setDateStyle:1];
  }

  else
  {
    v56 = 0;
  }

  v60 = objc_opt_new();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v14 = v12;
  v52 = v14;
  v62 = [v14 countByEnumeratingWithState:&v67 objects:v76 count:16];
  v15 = 0;
  if (v62)
  {
    v61 = *v68;
    v57 = *MEMORY[0x277D3FE58];
    do
    {
      for (i = 0; i != v62; ++i)
      {
        if (*v68 != v61)
        {
          objc_enumerationMutation(v14);
        }

        v17 = *(*(&v67 + 1) + 8 * i);
        v18 = [v17 objectForKeyedSubscript:@"domain"];
        v19 = [v17 objectForKeyedSubscript:@"count"];

        if (v19)
        {
          v20 = @"count";
        }

        else
        {
          v20 = @"sumHits";
        }

        v21 = [v17 objectForKeyedSubscript:v20];
        v22 = [v21 integerValue];

        v23 = [v17 objectForKeyedSubscript:@"domainOwner"];
        if (![v18 isEqualToString:@"unnamed_domains"])
        {
          v28 = MEMORY[0x277D3FAD8];
          v29 = [MEMORY[0x277CBEBC0] URLWithString:v18];
          v30 = [v29 _lp_simplifiedDisplayString];
          v27 = [v28 preferenceSpecifierNamed:v30 target:a1 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

          goto LABEL_18;
        }

        v24 = _PUILoggingFacility();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v73 = "+[PUIReportDomainListController domainSpecifiersFromResults:showDates:showAppAndWebsiteCounts:app:appOther:website:]";
          v74 = 2112;
          v75 = v17;
          _os_log_impl(&dword_2657FE000, v24, OS_LOG_TYPE_DEFAULT, "%s: unnamed domains entry: %@", buf, 0x16u);
        }

        if (v22)
        {
          v25 = MEMORY[0x277D3FAD8];
          v26 = PUI_LocalizedStringForAppReport(@"UNNAMED_DOMAINS");
          v27 = [v25 preferenceSpecifierNamed:v26 target:a1 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

          [v27 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"PUIReportDomainListShowIPAddresses"];
          [v27 setObject:v55 forKeyedSubscript:@"PUIReportDomainListEntries"];
          [v27 setObject:v54 forKeyedSubscript:@"PUIReportDomainListAppOther"];
          [v27 setObject:v53 forKeyedSubscript:@"PUIReportDomainListWebsite"];
LABEL_18:
          [v27 setIdentifier:v18];
          [v27 setObject:v18 forKeyedSubscript:@"PUIReportDomainKey"];
          v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
          [v27 setObject:v31 forKeyedSubscript:@"PUITrackerBarValueKey"];

          v32 = [MEMORY[0x277D75348] systemBlueColor];
          [v27 setObject:v32 forKeyedSubscript:@"PUITrackerBarColorKey"];

          [v27 setObject:objc_opt_class() forKeyedSubscript:v57];
          [v27 setObject:v23 forKeyedSubscript:@"PUIReportDomainDetailOwnerKey"];
          v33 = [v17 objectForKeyedSubscript:@"domainType"];
          [v27 setObject:v33 forKeyedSubscript:@"PUIReportDomainDetailTrackerTypeKey"];

          if (v59)
          {
            v34 = MEMORY[0x277CBEAA8];
            v35 = [v17 objectForKeyedSubscript:@"maxTimeStamp"];
            v36 = [v34 dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v35, "integerValue")}];

            v37 = [v56 stringFromDate:v36];
            if ([v23 length])
            {
              v38 = MEMORY[0x277CCACA8];
              v39 = PUI_LocalizedStringForAppReport(@"TIME_AND_OWNER");
              v40 = [v38 stringWithFormat:v39, v37, v23];

              v14 = v52;
            }

            else
            {
              v40 = v37;
            }
          }

          else
          {
            v40 = v23;
          }

          if ([(__CFString *)v40 length])
          {
            v41 = v40;
          }

          else
          {
            v41 = &stru_28771E540;
          }

          [v27 setObject:v41 forKeyedSubscript:@"PUITrackerBarDomainOwnerKey"];
          if (v22 > v15)
          {
            v15 = v22;
          }

          [v60 addObject:v27];
        }
      }

      v62 = [v14 countByEnumeratingWithState:&v67 objects:v76 count:16];
    }

    while (v62);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v42 = v60;
  v43 = [v42 countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v64;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v64 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v63 + 1) + 8 * j);
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
        [v47 setObject:v48 forKeyedSubscript:@"PUITrackerBarCapacityKey"];
      }

      v44 = [v42 countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v44);
  }

  v49 = [v42 copy];
  v50 = *MEMORY[0x277D85DE8];

  return v49;
}

+ (BOOL)domainSpecifiersWithLimit:(unint64_t)a3 showDates:(BOOL)a4 showAppAndWebsiteCounts:(BOOL)a5 showIPAddresses:(BOOL)a6 completion:(id)a7
{
  v7 = a6;
  v12 = a7;
  v13 = objc_opt_new();
  [v13 setObject:&unk_28772B468 forKeyedSubscript:*MEMORY[0x277D6B668]];
  if (v7)
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
  [v13 setObject:v15 forKeyedSubscript:*MEMORY[0x277D6B660]];
  if (a3)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v13 setObject:v16 forKeyedSubscript:*MEMORY[0x277D6B658]];
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __120__PUIReportDomainListController_domainSpecifiersWithLimit_showDates_showAppAndWebsiteCounts_showIPAddresses_completion___block_invoke;
  v20[3] = &unk_279BA2190;
  v23 = a4;
  v24 = a5;
  v21 = v12;
  v22 = a1;
  v17 = v12;
  v18 = [PUITrackingReportManager queryWithOptions:v13 reply:v20];

  return v18;
}

void __120__PUIReportDomainListController_domainSpecifiersWithLimit_showDates_showAppAndWebsiteCounts_showIPAddresses_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = [a2 objectForKeyedSubscript:@"result"];
  v8 = [v3 domainSpecifiersFromResults:v4 showDates:*(a1 + 48) showAppAndWebsiteCounts:*(a1 + 49) app:0 appOther:0 website:0];

  v5 = [v8 count] != 0;
  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v6 setBool:v5 forKey:@"PSUITrackerHasDataKey"];

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
  }
}

- (PUIReportDomainListController)init
{
  v7.receiver = self;
  v7.super_class = PUIReportDomainListController;
  v2 = [(PUIReportDomainListController *)&v7 init];
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
  v4.super_class = PUIReportDomainListController;
  [(PUIReportDomainListController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (v4)
  {
    goto LABEL_22;
  }

  v5 = [(PUIReportDomainListController *)self specifier];
  v6 = [v5 objectForKeyedSubscript:@"PUIReportDomainListShowWebsiteAndAppCounts"];
  -[PUIReportDomainListController setShowWebsiteAndAppCounts:](self, "setShowWebsiteAndAppCounts:", [v6 BOOLValue]);

  v7 = PUI_LocalizedStringForAppReport(@"MOST_CONTACTED_DOMAINS_TITLE");
  [(PUIReportDomainListController *)self setTitle:v7];

  v8 = objc_alloc(MEMORY[0x277D751E0]);
  v9 = PUI_LocalizedStringForAppReport(@"SORT_BY");
  v10 = [v8 initWithTitle:v9 style:0 target:self action:sel_sortByWasTapped];
  v11 = [(PUIReportDomainListController *)self navigationItem];
  [v11 setRightBarButtonItem:v10];

  v12 = objc_opt_new();
  if ([(PUIReportDomainListController *)self alphabeticalSort])
  {
    v13 = &stru_28771E540;
  }

  else
  {
    v13 = PUI_LocalizedStringForAppReport(@"MOST_ACTIVE_DOMAIN");
  }

  v14 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"HEADER_GROUP" name:v13];
  [v12 addObject:v14];
  v15 = [(PUIReportDomainListController *)self cachedSpecifiers];

  if (!v15)
  {
    v43 = v3;
    v16 = [(PUIReportDomainListController *)self specifier];
    v17 = [v16 objectForKeyedSubscript:@"PUIReportDomainListEntries"];

    v18 = [(PUIReportDomainListController *)self specifier];
    v19 = [v18 objectForKeyedSubscript:@"PUIReportDomainListAppOther"];

    v20 = [(PUIReportDomainListController *)self specifier];
    v21 = [v20 objectForKeyedSubscript:@"PUIReportDomainListWebsite"];

    v44 = v21;
    if ([v17 length])
    {
      v22 = MEMORY[0x277D6B640];
      v23 = &unk_28772B480;
      v24 = v17;
    }

    else if ([v19 length])
    {
      v22 = MEMORY[0x277D6B640];
      v23 = &unk_28772B498;
      v24 = v19;
    }

    else
    {
      if (![v21 length])
      {
        goto LABEL_17;
      }

      v22 = MEMORY[0x277D6B670];
      v23 = &unk_28772B4B0;
      v24 = v44;
    }

    v25 = objc_opt_new();
    [v25 setObject:v23 forKeyedSubscript:*MEMORY[0x277D6B668]];
    [v25 setObject:v24 forKeyedSubscript:*v22];
    if (v25)
    {
      v26 = [(PUIReportDomainListController *)self specifier];
      v27 = [v26 objectForKeyedSubscript:@"PUIReportDomainListShowIPAddresses"];
      v28 = [v27 BOOLValue];

      if (v28)
      {
        v29 = 3;
      }

      else
      {
        v29 = 1;
      }

      v30 = [MEMORY[0x277CCABB0] numberWithInteger:v29];
      [v25 setObject:v30 forKeyedSubscript:*MEMORY[0x277D6B660]];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __43__PUIReportDomainListController_specifiers__block_invoke;
      v46[3] = &unk_279BA21B8;
      v46[4] = self;
      v47 = v17;
      v48 = v19;
      v31 = v44;
      v49 = v44;
      [PUITrackingReportManager queryWithOptions:v25 reply:v46];

      goto LABEL_18;
    }

LABEL_17:
    v32 = objc_opt_class();
    v33 = [(PUIReportDomainListController *)self showWebsiteAndAppCounts];
    v34 = [(PUIReportDomainListController *)self specifier];
    v35 = [v34 objectForKeyedSubscript:@"PUIReportDomainListShowIPAddresses"];
    v36 = [v35 BOOLValue];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __43__PUIReportDomainListController_specifiers__block_invoke_3;
    v45[3] = &unk_279BA2008;
    v45[4] = self;
    [v32 domainSpecifiersWithLimit:100 showDates:0 showAppAndWebsiteCounts:v33 showIPAddresses:v36 completion:v45];

    v31 = v44;
LABEL_18:

    v3 = v43;
  }

  v37 = [(PUIReportDomainListController *)self alphabeticalSort];
  v38 = [(PUIReportDomainListController *)self cachedSpecifiers];
  v39 = v38;
  if (v37)
  {
    v40 = [v38 sortedArrayUsingComparator:&__block_literal_global_16];

    v39 = v40;
  }

  [v12 addObjectsFromArray:v39];
  v41 = *(&self->super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.isa + v3) = v12;

  v4 = *(&self->super.super.super.super.super.isa + v3);
LABEL_22:

  return v4;
}

void __43__PUIReportDomainListController_specifiers__block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = objc_opt_class();
  v6 = [v4 objectForKeyedSubscript:@"result"];

  v7 = [v5 domainSpecifiersFromResults:v6 showDates:0 showAppAndWebsiteCounts:0 app:a1[5] appOther:a1[6] website:a1[7]];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__PUIReportDomainListController_specifiers__block_invoke_2;
  v9[3] = &unk_279BA10B0;
  v9[4] = a1[4];
  v10 = v7;
  v8 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __43__PUIReportDomainListController_specifiers__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCachedSpecifiers:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

void __43__PUIReportDomainListController_specifiers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__PUIReportDomainListController_specifiers__block_invoke_4;
  v5[3] = &unk_279BA10B0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __43__PUIReportDomainListController_specifiers__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setCachedSpecifiers:*(a1 + 40)];
  [*(a1 + 32) reloadSpecifiers];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = [*(a1 + 32) showWebsiteAndAppCounts];
  v5 = [*(a1 + 32) specifier];
  v6 = [v5 objectForKeyedSubscript:@"PUIReportDomainListShowIPAddresses"];
  v7 = [v6 BOOLValue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__PUIReportDomainListController_specifiers__block_invoke_5;
  v8[3] = &unk_279BA2008;
  v8[4] = *(a1 + 32);
  [v3 domainSpecifiersWithLimit:0 showDates:0 showAppAndWebsiteCounts:v4 showIPAddresses:v7 completion:v8];
}

void __43__PUIReportDomainListController_specifiers__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__PUIReportDomainListController_specifiers__block_invoke_6;
  v5[3] = &unk_279BA10B0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __43__PUIReportDomainListController_specifiers__block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setCachedSpecifiers:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

uint64_t __43__PUIReportDomainListController_specifiers__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (void)dataDidChange
{
  [(PUIReportDomainListController *)self setCachedSpecifiers:0];

  [(PUIReportDomainListController *)self reloadSpecifiers];
}

- (void)sortByWasTapped
{
  v3 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v4 = MEMORY[0x277D750F8];
  v5 = PUI_LocalizedStringForAppReport(@"MOST_ACTIVE_DOMAIN");
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__PUIReportDomainListController_sortByWasTapped__block_invoke;
  v14[3] = &unk_279BA1B38;
  v14[4] = self;
  v6 = [v4 actionWithTitle:v5 style:0 handler:v14];

  [v6 _setChecked:{-[PUIReportDomainListController alphabeticalSort](self, "alphabeticalSort") ^ 1}];
  [v3 addAction:v6];
  v7 = MEMORY[0x277D750F8];
  v8 = PUI_LocalizedStringForAppReport(@"ALPHABETICAL");
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__PUIReportDomainListController_sortByWasTapped__block_invoke_2;
  v13[3] = &unk_279BA1B38;
  v13[4] = self;
  v9 = [v7 actionWithTitle:v8 style:0 handler:v13];

  [v9 _setChecked:{-[PUIReportDomainListController alphabeticalSort](self, "alphabeticalSort")}];
  [v3 addAction:v9];
  v10 = MEMORY[0x277D750F8];
  v11 = PUI_LocalizedStringForAppReport(@"CANCEL");
  v12 = [v10 actionWithTitle:v11 style:1 handler:0];

  [v3 addAction:v12];
  [(PUIReportDomainListController *)self presentViewController:v3 animated:1 completion:0];
}

uint64_t __48__PUIReportDomainListController_sortByWasTapped__block_invoke(uint64_t a1)
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

uint64_t __48__PUIReportDomainListController_sortByWasTapped__block_invoke_2(uint64_t a1)
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
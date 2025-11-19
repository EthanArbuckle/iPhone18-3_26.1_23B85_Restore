@interface SPUITestingHelper
+ (id)indexPathsOfRowsForSectionTitle:(id)a3 needsCard:(BOOL)a4 forTestingViewController:(id)a5;
- (BOOL)canPerformTest:(id)a3;
- (SPUITestingHelper)initWithSearchViewController:(id)a3;
- (void)finishLaunchTestIfNeeded;
- (void)performCardScrollTest:(id)a3 queryKind:(unint64_t)a4 completion:(id)a5;
- (void)performScrollOnSearchViewWithTestName:(id)a3 completion:(id)a4;
- (void)performTest:(id)a3 options:(id)a4 completion:(id)a5;
- (void)resultViewController:(id)a3 finishedGettingAllResults:(id)a4;
- (void)runPushTest:(id)a3 sectionHeader:(id)a4 searchString:(id)a5 completion:(id)a6;
- (void)scrollEntityForTest:(id)a3 forQuery:(id)a4 completion:(id)a5;
- (void)scrollForSectionHeader:(id)a3 forSearchString:(id)a4 testName:(id)a5 queryKind:(unint64_t)a6 completion:(id)a7;
- (void)scrollMainResultsForTest:(id)a3 forQuery:(id)a4 queryKind:(unint64_t)a5 completion:(id)a6;
- (void)searchForSectionHeader:(id)a3 testName:(id)a4 forSearchString:(id)a5 queryKind:(unint64_t)a6 startPushHandler:(id)a7 finishHandler:(id)a8;
- (void)searchForString:(id)a3 testName:(id)a4 event:(unint64_t)a5 queryKind:(unint64_t)a6 completion:(id)a7;
- (void)searchManyStringsForTestName:(id)a3 options:(id)a4 event:(unint64_t)a5 queryKind:(unint64_t)a6 completion:(id)a7;
- (void)searchString:(id)a3 andOpenResultsUnderSection:(id)a4 testName:(id)a5 needsCard:(BOOL)a6 queryKind:(unint64_t)a7 completion:(id)a8;
- (void)searchViewFinishedGettingAllResultsAndFinishedDrawsWithCompletion:(id)a3;
- (void)setDefaultsForSearchVCWithqueryType:(unint64_t)a3;
- (void)tapIndexsPathsAndPopViewControllersAfter2Seconds:(id)a3 completion:(id)a4;
@end

@implementation SPUITestingHelper

- (SPUITestingHelper)initWithSearchViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = SPUITestingHelper;
  v3 = a3;
  v4 = [(SPUITestingHelper *)&v6 init];
  [(SPUITestingHelper *)v4 setSearchViewController:v3, v6.receiver, v6.super_class];

  return v4;
}

- (BOOL)canPerformTest:(id)a3
{
  v10[18] = *MEMORY[0x277D85DE8];
  v10[0] = @"ScrollResultsFPS";
  v10[1] = @"ScrollCardsFPS";
  v10[2] = @"QuerySearchButtonToResultsLatency";
  v10[3] = @"QuerySearchButtonToResultsLatencyNoParsec";
  v10[4] = @"QueryToSuggestionsMixedQueries";
  v10[5] = @"QueryToSuggestionsMixedQueriesNoParsec";
  v10[6] = @"QueryToTopHitsLatency";
  v10[7] = @"QueryToLocalSuggestionLatency";
  v3 = MEMORY[0x277CBEB98];
  v10[8] = @"QueryToParsecSuggestionLatency";
  v10[9] = @"ParsecdLaunchTime";
  v10[10] = @"SpotlightExtendedLaunch";
  v10[11] = @"MemoryTestMapsCards";
  v10[12] = @"MemoryTestContactsCards";
  v10[13] = @"MemoryTestMapsCardsAtDesk";
  v10[14] = @"MapsCardsPushAndScrollTests";
  v10[15] = @"CardPushTest";
  v10[16] = @"MapsPushTest";
  v10[17] = @"EntityScrollTest";
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v10 count:18];
  v7 = [v3 setWithArray:v6];

  LOBYTE(v3) = [v7 containsObject:v5];
  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)performTest:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isEqualToString:@"SpotlightExtendedLaunch"])
  {
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = *MEMORY[0x277D76C60];
    v13 = [MEMORY[0x277CCABD8] mainQueue];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __52__SPUITestingHelper_performTest_options_completion___block_invoke;
    v42[3] = &unk_279D07258;
    v42[4] = self;
    v14 = [v11 addObserverForName:v12 object:0 queue:v13 usingBlock:v42];

    v15 = [(SPUITestingHelper *)self searchViewController];
    v16 = [v15 proactiveResultsTestingObject];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __52__SPUITestingHelper_performTest_options_completion___block_invoke_2;
    v41[3] = &unk_279D06C78;
    v41[4] = self;
    [v16 setViewDidUpdateHandler:v41];
  }

  if ([v8 isEqualToString:@"ScrollResultsFPS"])
  {
    v17 = [v9 objectForKeyedSubscript:@"SearchText"];
    [(SPUITestingHelper *)self scrollMainResultsForTest:v8 forQuery:v17 queryKind:+[SPUISearchHeader completion:"asYouTypeSearchQueryKind"], v10];
    goto LABEL_5;
  }

  if ([v8 isEqualToString:@"ScrollCardsFPS"])
  {
    [(SPUITestingHelper *)self performCardScrollTest:v8 queryKind:+[SPUISearchHeader completion:"asYouTypeSearchQueryKind"], v10];
    goto LABEL_16;
  }

  if ([v8 isEqualToString:@"QuerySearchButtonToResultsLatency"])
  {
    v18 = +[SPUISearchHeader committedSearchQueryKind];
    v19 = self;
    v20 = v8;
    v21 = v9;
    v22 = 22;
LABEL_15:
    [(SPUITestingHelper *)v19 searchManyStringsForTestName:v20 options:v21 event:v22 queryKind:v18 completion:v10];
    goto LABEL_16;
  }

  if ([v8 isEqualToString:@"QuerySearchButtonToResultsLatencyNoParsec"])
  {
    SPSetInternetDomainsEnabled();
    v23 = +[SPUISearchHeader committedSearchQueryKind];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __52__SPUITestingHelper_performTest_options_completion___block_invoke_3;
    v39[3] = &unk_279D06F38;
    v40 = v10;
    [(SPUITestingHelper *)self searchManyStringsForTestName:v8 options:v9 event:22 queryKind:v23 completion:v39];
    v24 = v40;
LABEL_12:

    goto LABEL_16;
  }

  if ([v8 isEqualToString:@"QueryToSuggestionsMixedQueries"])
  {
    goto LABEL_14;
  }

  if ([v8 isEqualToString:@"QueryToSuggestionsMixedQueriesNoParsec"])
  {
    SPSetInternetDomainsEnabled();
    v25 = +[SPUISearchHeader asYouTypeSearchQueryKind];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __52__SPUITestingHelper_performTest_options_completion___block_invoke_4;
    v37[3] = &unk_279D06F38;
    v38 = v10;
    [(SPUITestingHelper *)self searchManyStringsForTestName:v8 options:v9 event:1 queryKind:v25 completion:v37];
    v24 = v38;
    goto LABEL_12;
  }

  if ([v8 isEqualToString:@"QueryToTopHitsLatency"])
  {
LABEL_14:
    v18 = +[SPUISearchHeader asYouTypeSearchQueryKind];
    v19 = self;
    v20 = v8;
    v21 = v9;
    v22 = 1;
    goto LABEL_15;
  }

  if ([v8 isEqualToString:@"QueryToLocalSuggestionLatency"])
  {
    SPSetInternetDomainsEnabled();
    v26 = +[SPUISearchHeader asYouTypeSearchQueryKind];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __52__SPUITestingHelper_performTest_options_completion___block_invoke_5;
    v35[3] = &unk_279D06F38;
    v36 = v10;
    [(SPUITestingHelper *)self searchManyStringsForTestName:v8 options:v9 event:1 queryKind:v26 completion:v35];
    v24 = v36;
    goto LABEL_12;
  }

  if ([v8 isEqualToString:@"QueryToParsecSuggestionLatency"])
  {
LABEL_25:
    v18 = +[SPUISearchHeader asYouTypeSearchQueryKind];
    v19 = self;
    v20 = v8;
    v21 = v9;
    v22 = 8;
    goto LABEL_15;
  }

  if ([v8 isEqualToString:@"ParsecdLaunchTime"])
  {
    PS_PSKillProcessNamed();
    goto LABEL_25;
  }

  if ([v8 isEqualToString:@"MemoryTestMapsCards"])
  {
    v27 = +[SPUISearchHeader asYouTypeSearchQueryKind];
    v34 = v10;
    v28 = @"MAPS";
    v29 = self;
    v30 = v8;
    v31 = v9;
    v32 = 1;
LABEL_30:
    [(SPUITestingHelper *)v29 performPushPopCardsOnTest:v30 options:v31 needsCard:v32 sectionHeader:v28 atDesk:0 queryKind:v27 completion:v34];
    goto LABEL_16;
  }

  if ([v8 isEqualToString:@"MemoryTestContactsCards"])
  {
    v27 = +[SPUISearchHeader asYouTypeSearchQueryKind];
    v34 = v10;
    v28 = @"CONTACTS";
    v29 = self;
    v30 = v8;
    v31 = v9;
    v32 = 0;
    goto LABEL_30;
  }

  if ([v8 isEqualToString:@"MemoryTestMapsCardsAtDesk"])
  {
    [(SPUITestingHelper *)self performPushPopCardsOnTest:v8 options:v9 needsCard:1 sectionHeader:@"MAPS" atDesk:1 queryKind:+[SPUISearchHeader completion:"asYouTypeSearchQueryKind"], v10];
    goto LABEL_16;
  }

  if ([v8 isEqualToString:@"MapsCardsPushAndScrollTests"])
  {
    v17 = [v9 objectForKey:@"queryString"];
    [(SPUITestingHelper *)self testMapsCardsPushAndScrollForTestName:v8 string:v17 queryKind:+[SPUISearchHeader completion:"asYouTypeSearchQueryKind"], v10];
  }

  else
  {
    if ([v8 isEqualToString:@"CardPushTest"])
    {
      v17 = [v9 objectForKey:@"queryString"];
      v33 = @"SPORTS";
    }

    else
    {
      if (![v8 isEqualToString:@"MapsPushTest"])
      {
        if (![v8 isEqualToString:@"EntityScrollTest"])
        {
          goto LABEL_16;
        }

        v17 = [v9 objectForKey:@"queryString"];
        [(SPUITestingHelper *)self scrollEntityForTest:v8 forQuery:v17 completion:v10];
        goto LABEL_5;
      }

      v17 = [v9 objectForKey:@"queryString"];
      v33 = @"MAPS";
    }

    [(SPUITestingHelper *)self runPushTest:v8 sectionHeader:v33 searchString:v17 completion:v10];
  }

LABEL_5:

LABEL_16:
}

uint64_t __52__SPUITestingHelper_performTest_options_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFinishedKeyboardLaunch:1];
  v2 = *(a1 + 32);

  return [v2 finishLaunchTestIfNeeded];
}

uint64_t __52__SPUITestingHelper_performTest_options_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setFinishedTableUpdate:1];
  v2 = *(a1 + 32);

  return [v2 finishLaunchTestIfNeeded];
}

uint64_t __52__SPUITestingHelper_performTest_options_completion___block_invoke_3(uint64_t a1)
{
  SPSetInternetDomainsEnabled();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __52__SPUITestingHelper_performTest_options_completion___block_invoke_4(uint64_t a1)
{
  SPSetInternetDomainsEnabled();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __52__SPUITestingHelper_performTest_options_completion___block_invoke_5(uint64_t a1)
{
  SPSetInternetDomainsEnabled();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)runPushTest:(id)a3 sectionHeader:(id)a4 searchString:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = +[SPUISearchHeader asYouTypeSearchQueryKind];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __71__SPUITestingHelper_runPushTest_sectionHeader_searchString_completion___block_invoke;
  v20[3] = &unk_279D070B8;
  v20[4] = self;
  v21 = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__SPUITestingHelper_runPushTest_sectionHeader_searchString_completion___block_invoke_2;
  v17[3] = &unk_279D07280;
  v17[4] = self;
  v18 = v21;
  v19 = v11;
  v15 = v11;
  v16 = v21;
  [(SPUITestingHelper *)self searchForSectionHeader:v13 testName:v16 forSearchString:v12 queryKind:v14 startPushHandler:v20 finishHandler:v17];
}

void __71__SPUITestingHelper_runPushTest_sectionHeader_searchString_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeApp];
  [v2 startedTest:*(a1 + 40)];
}

uint64_t __71__SPUITestingHelper_runPushTest_sectionHeader_searchString_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) activeApp];
  [v2 finishedTest:*(a1 + 40)];

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __107__SPUITestingHelper_performPushPopCardsOnTest_options_needsCard_sectionHeader_atDesk_queryKind_completion___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1)
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    *buffer = 0u;
    v13 = 0u;
    v2 = getpid();
    proc_pid_rusage(v2, 4, buffer);
    if (*(&v16 + 1) >= 0x2FAF081uLL)
    {
      v3 = [*(a1 + 32) activeApp];
      v4 = *(a1 + 40);
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Spotlight memory is above inactive jetsam limit current footprint : %llu, inactive limit: %f", *(&v16 + 1), 0x4187D78400000000, buffer[0], buffer[1], v13, v14, v15, v16];
      [v3 failedTest:v4 withFailure:v5];
    }

    if (v27 >= 0x11E1A301)
    {
      v6 = [*(a1 + 32) activeApp];
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Spotlight memory went above active jetsam limit : %llu max allowed: %f", v27, 0x41B1E1A300000000];
      [v6 failedTest:v7 withFailure:v8];
    }
  }

  v9 = [*(a1 + 32) activeApp];
  [v9 finishedTest:*(a1 + 40)];

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)finishLaunchTestIfNeeded
{
  if ([(SPUITestingHelper *)self finishedKeyboardLaunch]&& [(SPUITestingHelper *)self finishedTableUpdate])
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self name:*MEMORY[0x277D76C60] object:0];

    v4 = [(SPUITestingHelper *)self searchViewController];
    v5 = [v4 proactiveResultsTestingObject];
    [v5 setViewDidUpdateHandler:0];

    v6 = *MEMORY[0x277D76620];

    [v6 _performBlockAfterCATransactionCommits:&__block_literal_global_5];
  }
}

void __45__SPUITestingHelper_finishLaunchTestIfNeeded__block_invoke()
{
  v0 = *MEMORY[0x277D76620];
  v1 = [*MEMORY[0x277D76620] _launchTestName];
  [v0 finishedTest:v1];
}

- (void)performCardScrollTest:(id)a3 queryKind:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(SPUITestingHelper *)self activeApp];
  [v10 startedTest:v8];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__SPUITestingHelper_performCardScrollTest_queryKind_completion___block_invoke;
  v13[3] = &unk_279D07280;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [(SPUITestingHelper *)self scrollForSectionHeader:@"Sports" forSearchString:@"sf giants roster" testName:v12 queryKind:a4 completion:v13];
}

uint64_t __64__SPUITestingHelper_performCardScrollTest_queryKind_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeApp];
  [v2 finishedTest:*(a1 + 40)];

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)searchString:(id)a3 andOpenResultsUnderSection:(id)a4 testName:(id)a5 needsCard:(BOOL)a6 queryKind:(unint64_t)a7 completion:(id)a8
{
  v13 = a4;
  v14 = a8;
  v15 = a3;
  v16 = [(SPUITestingHelper *)self searchViewController];
  [v16 performTestSearchWithQuery:v15 event:22 queryKind:a7];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __101__SPUITestingHelper_searchString_andOpenResultsUnderSection_testName_needsCard_queryKind_completion___block_invoke;
  v19[3] = &unk_279D072A8;
  v23 = a6;
  v20 = v13;
  v21 = self;
  v22 = v14;
  v17 = v14;
  v18 = v13;
  [(SPUITestingHelper *)self searchViewFinishedGettingAllResultsAndFinishedDrawsWithCompletion:v19];
}

void __101__SPUITestingHelper_searchString_andOpenResultsUnderSection_testName_needsCard_queryKind_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) searchViewController];
  v5 = [v4 searchResultsTestingObject];
  v6 = [SPUITestingHelper indexPathsOfRowsForSectionTitle:v3 needsCard:v2 forTestingViewController:v5];
  v7 = [v6 mutableCopy];

  [*(a1 + 40) tapIndexsPathsAndPopViewControllersAfter2Seconds:v7 completion:*(a1 + 48)];
}

- (void)tapIndexsPathsAndPopViewControllersAfter2Seconds:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v6 lastObject];
    [v6 removeLastObject];
    v9 = [(SPUITestingHelper *)self searchViewController];
    v10 = [v9 searchResultsTestingObject];
    [v10 tapAtIndexPath:v8];

    v11 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__SPUITestingHelper_tapIndexsPathsAndPopViewControllersAfter2Seconds_completion___block_invoke;
    block[3] = &unk_279D07280;
    block[4] = self;
    v13 = v6;
    v14 = v7;
    dispatch_after(v11, MEMORY[0x277D85CD0], block);
  }

  else
  {
    v7[2](v7);
  }
}

uint64_t __81__SPUITestingHelper_tapIndexsPathsAndPopViewControllersAfter2Seconds_completion___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) searchViewController];
  v4 = [v3 navigationController];
  v5 = [v4 popViewControllerAnimated:0];

  v6 = [*(a1 + 32) searchViewController];
  v7 = [v6 navigationController];
  v8 = [v7 view];
  [v8 layoutIfNeeded];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:*MEMORY[0x277D76670] object:0];

  objc_autoreleasePoolPop(v2);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);

  return [v10 tapIndexsPathsAndPopViewControllersAfter2Seconds:v11 completion:v12];
}

- (void)resultViewController:(id)a3 finishedGettingAllResults:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_initWeak(&location, v5);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SPUITestingHelper_resultViewController_finishedGettingAllResults___block_invoke;
  v8[3] = &unk_279D07320;
  objc_copyWeak(&v10, &location);
  v7 = v6;
  v9 = v7;
  [v5 setDidFinishGettingAllResultsHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __68__SPUITestingHelper_resultViewController_finishedGettingAllResults___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDidFinishGettingAllResultsHandler:0];

  if (a2)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__SPUITestingHelper_resultViewController_finishedGettingAllResults___block_invoke_2;
    v7[3] = &unk_279D072F8;
    objc_copyWeak(&v9, (a1 + 40));
    v8 = *(a1 + 32);
    [v5 setViewDidUpdateHandler:v7];

    objc_destroyWeak(&v9);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

void __68__SPUITestingHelper_resultViewController_finishedGettingAllResults___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setViewDidUpdateHandler:0];

  v3 = *MEMORY[0x277D76620];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__SPUITestingHelper_resultViewController_finishedGettingAllResults___block_invoke_3;
  v4[3] = &unk_279D06F38;
  v5 = *(a1 + 32);
  [v3 installCACommitCompletionBlock:v4];
}

- (void)searchViewFinishedGettingAllResultsAndFinishedDrawsWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(SPUITestingHelper *)self searchViewController];
  v5 = [v6 searchResultsTestingObject];
  [(SPUITestingHelper *)self resultViewController:v5 finishedGettingAllResults:v4];
}

- (void)searchForSectionHeader:(id)a3 testName:(id)a4 forSearchString:(id)a5 queryKind:(unint64_t)a6 startPushHandler:(id)a7 finishHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v18 = a5;
  v19 = [(SPUITestingHelper *)self searchViewController];
  [v19 performTestSearchWithQuery:v18 event:22 queryKind:a6];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __110__SPUITestingHelper_searchForSectionHeader_testName_forSearchString_queryKind_startPushHandler_finishHandler___block_invoke;
  v24[3] = &unk_279D073C0;
  v25 = v14;
  v26 = self;
  v28 = v16;
  v29 = v17;
  v27 = v15;
  v20 = v15;
  v21 = v17;
  v22 = v16;
  v23 = v14;
  [(SPUITestingHelper *)self searchViewFinishedGettingAllResultsAndFinishedDrawsWithCompletion:v24];
}

void __110__SPUITestingHelper_searchForSectionHeader_testName_forSearchString_queryKind_startPushHandler_finishHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) searchViewController];
  v4 = [v3 searchResultsTestingObject];
  v5 = [SPUITestingHelper indexPathsOfRowsForSectionTitle:v2 needsCard:1 forTestingViewController:v4];
  v6 = [v5 firstObject];

  v7 = *(a1 + 40);
  if (v6)
  {
    v8 = [v7 searchViewController];
    v9 = [v8 searchResultsTestingObject];
    [v9 tapAtIndexPath:v6];

    v10 = [*(a1 + 40) searchViewController];
    v11 = [v10 searchResultsTestingObject];
    v12 = [v11 navigationController];
    v13 = [v12 topViewController];

    v14 = [v13 testingTableViewController];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __110__SPUITestingHelper_searchForSectionHeader_testName_forSearchString_queryKind_startPushHandler_finishHandler___block_invoke_2;
    aBlock[3] = &unk_279D07370;
    v15 = *(a1 + 56);
    aBlock[4] = *(a1 + 40);
    v25 = v15;
    v26 = *(a1 + 64);
    v16 = _Block_copy(aBlock);
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __110__SPUITestingHelper_searchForSectionHeader_testName_forSearchString_queryKind_startPushHandler_finishHandler___block_invoke_6;
    v19[3] = &unk_279D07398;
    v19[4] = &v20;
    [v14 iterateIndexPaths:v19];
    if (v21[3])
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __110__SPUITestingHelper_searchForSectionHeader_testName_forSearchString_queryKind_startPushHandler_finishHandler___block_invoke_7;
      v17[3] = &unk_279D06F38;
      v18 = v16;
      [v14 setViewDidUpdateHandler:v17];
    }

    else
    {
      v16[2](v16);
    }

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v13 = [v7 activeApp];
    [v13 failedTest:*(a1 + 48) withFailure:@"Couldnt find suitable section in results"];
  }
}

void __110__SPUITestingHelper_searchForSectionHeader_testName_forSearchString_queryKind_startPushHandler_finishHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) activeApp];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __110__SPUITestingHelper_searchForSectionHeader_testName_forSearchString_queryKind_startPushHandler_finishHandler___block_invoke_3;
  v4[3] = &unk_279D07348;
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v3 installCACommitCompletionBlock:v4];
}

void __110__SPUITestingHelper_searchForSectionHeader_testName_forSearchString_queryKind_startPushHandler_finishHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) activeApp];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __110__SPUITestingHelper_searchForSectionHeader_testName_forSearchString_queryKind_startPushHandler_finishHandler___block_invoke_4;
  v3[3] = &unk_279D06F38;
  v4 = *(a1 + 40);
  [v2 installCACommitCompletionBlock:v3];
}

void __110__SPUITestingHelper_searchForSectionHeader_testName_forSearchString_queryKind_startPushHandler_finishHandler___block_invoke_4(uint64_t a1)
{
  v2 = dispatch_time(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__SPUITestingHelper_searchForSectionHeader_testName_forSearchString_queryKind_startPushHandler_finishHandler___block_invoke_5;
  block[3] = &unk_279D06F38;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

- (void)scrollForSectionHeader:(id)a3 forSearchString:(id)a4 testName:(id)a5 queryKind:(unint64_t)a6 completion:(id)a7
{
  v12 = a5;
  v13 = a7;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __90__SPUITestingHelper_scrollForSectionHeader_forSearchString_testName_queryKind_completion___block_invoke;
  v16[3] = &unk_279D07280;
  v16[4] = self;
  v17 = v12;
  v18 = v13;
  v14 = v13;
  v15 = v12;
  [(SPUITestingHelper *)self searchForSectionHeader:a3 testName:v15 forSearchString:a4 queryKind:a6 startPushHandler:0 finishHandler:v16];
}

void __90__SPUITestingHelper_scrollForSectionHeader_forSearchString_testName_queryKind_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) searchViewController];
  v3 = [v2 searchResultsTestingObject];
  v4 = [v3 navigationController];
  v5 = [v4 topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 testingTableViewController];
    v7 = dispatch_time(0, 100000000);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __90__SPUITestingHelper_scrollForSectionHeader_forSearchString_testName_queryKind_completion___block_invoke_2;
    v10[3] = &unk_279D07410;
    v8 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v8;
    v12 = v6;
    v13 = *(a1 + 48);
    v9 = v6;
    dispatch_after(v7, MEMORY[0x277D85CD0], v10);
  }
}

void __90__SPUITestingHelper_scrollForSectionHeader_forSearchString_testName_queryKind_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) activeApp];
  [v2 startedTest:*(a1 + 40)];

  objc_initWeak(&location, *(a1 + 48));
  v3 = [*(a1 + 32) activeApp];
  [v3 startedSubTest:@"FirstScroll" forTest:*(a1 + 40)];

  v4 = objc_loadWeakRetained(&location);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__SPUITestingHelper_scrollForSectionHeader_forSearchString_testName_queryKind_completion___block_invoke_3;
  v11[3] = &unk_279D070B8;
  v5 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__SPUITestingHelper_scrollForSectionHeader_forSearchString_testName_queryKind_completion___block_invoke_4;
  v7[3] = &unk_279D073E8;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  objc_copyWeak(&v10, &location);
  v9 = *(a1 + 56);
  [v4 performScrollTestWithHandlerForFirstScrollCompletion:v11 completion:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __90__SPUITestingHelper_scrollForSectionHeader_forSearchString_testName_queryKind_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) activeApp];
  [v2 finishedSubTest:@"FirstScroll" forTest:*(a1 + 40)];
}

uint64_t __90__SPUITestingHelper_scrollForSectionHeader_forSearchString_testName_queryKind_completion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) activeApp];
  [v2 finishedTest:*(a1 + 40)];

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained navigationController];
  v5 = [v4 popToRootViewControllerAnimated:0];

  result = *(a1 + 48);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

+ (id)indexPathsOfRowsForSectionTitle:(id)a3 needsCard:(BOOL)a4 forTestingViewController:(id)a5
{
  v7 = a3;
  v8 = a5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__SPUITestingHelper_indexPathsOfRowsForSectionTitle_needsCard_forTestingViewController___block_invoke;
  v12[3] = &unk_279D07438;
  v9 = v7;
  v15 = a4;
  v13 = v9;
  v14 = &v16;
  [v8 iterateIndexPaths:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __88__SPUITestingHelper_indexPathsOfRowsForSectionTitle_needsCard_forTestingViewController___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v16 = a4;
  v8 = a5;
  v9 = [a2 title];
  v10 = [v9 uppercaseString];
  v11 = [*(a1 + 32) uppercaseString];
  v12 = [v10 isEqualToString:v11];

  if (v12)
  {
    if (*(a1 + 48) == 1)
    {
      v13 = [v16 nextCard];
      if (v13)
      {
      }

      else
      {
        v14 = [v16 command];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_7;
        }
      }
    }

    [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
  }

LABEL_7:
}

- (void)scrollEntityForTest:(id)a3 forQuery:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SPUITestingHelper *)self searchViewController];
  [v11 performTestSearchWithQuery:v9 event:1 queryKind:2];

  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__SPUITestingHelper_scrollEntityForTest_forQuery_completion___block_invoke;
  v15[3] = &unk_279D07460;
  v19 = v20;
  v15[4] = self;
  v12 = v8;
  v16 = v12;
  v13 = v10;
  v18 = v13;
  v14 = v9;
  v17 = v14;
  [(SPUITestingHelper *)self searchViewFinishedGettingAllResultsAndFinishedDrawsWithCompletion:v15];

  _Block_object_dispose(v20, 8);
}

void __61__SPUITestingHelper_scrollEntityForTest_forQuery_completion___block_invoke(uint64_t a1)
{
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy_;
    v19 = __Block_byref_object_dispose_;
    v20 = 0;
    v2 = [*(a1 + 32) searchViewController];
    v3 = [v2 searchResultsTestingObject];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__SPUITestingHelper_scrollEntityForTest_forQuery_completion___block_invoke_2;
    v14[3] = &unk_279D07398;
    v14[4] = &v15;
    [v3 iterateIndexPaths:v14];

    if (v16[5])
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      v4 = [*(a1 + 32) searchViewController];
      v5 = [v4 searchResultsTestingObject];
      [v5 tapAtIndexPath:v16[5]];

      v6 = dispatch_time(0, 100000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__SPUITestingHelper_scrollEntityForTest_forQuery_completion___block_invoke_3;
      block[3] = &unk_279D07280;
      v7 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v12 = v7;
      v13 = *(a1 + 56);
      dispatch_after(v6, MEMORY[0x277D85CD0], block);
    }

    else
    {
      v8 = [*(a1 + 32) activeApp];
      v9 = *(a1 + 40);
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"No entity results for %@", *(a1 + 48)];
      [v8 failedTest:v9 withFailure:v10];
    }

    _Block_object_dispose(&v15, 8);
  }
}

void __61__SPUITestingHelper_scrollEntityForTest_forQuery_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = a5;
  v8 = [a4 command];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a5);
  }
}

void __61__SPUITestingHelper_scrollEntityForTest_forQuery_completion___block_invoke_3(id *a1)
{
  v2 = [a1[4] searchViewController];
  v3 = [v2 navigationController];
  v4 = [v3 topViewController];

  v5 = a1[4];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__SPUITestingHelper_scrollEntityForTest_forQuery_completion___block_invoke_4;
  v7[3] = &unk_279D07410;
  v7[4] = v5;
  v8 = v4;
  v9 = a1[5];
  v10 = a1[6];
  v6 = v4;
  [v5 resultViewController:v6 finishedGettingAllResults:v7];
}

- (void)scrollMainResultsForTest:(id)a3 forQuery:(id)a4 queryKind:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a4;
  v13 = [(SPUITestingHelper *)self searchViewController];
  [v13 performTestSearchWithQuery:v12 event:22 queryKind:a5];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__SPUITestingHelper_scrollMainResultsForTest_forQuery_queryKind_completion___block_invoke;
  v16[3] = &unk_279D07280;
  v16[4] = self;
  v17 = v10;
  v18 = v11;
  v14 = v11;
  v15 = v10;
  [(SPUITestingHelper *)self searchViewFinishedGettingAllResultsAndFinishedDrawsWithCompletion:v16];
}

- (void)performScrollOnSearchViewWithTestName:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(SPUITestingHelper *)self searchViewController];
  v8 = [v9 searchResultsTestingObject];
  [(SPUITestingHelper *)self performScrollOnResultsView:v8 testName:v7 completion:v6];
}

- (void)searchManyStringsForTestName:(id)a3 options:(id)a4 event:(unint64_t)a5 queryKind:(unint64_t)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a3;
  v17 = [a4 objectForKey:@"queryStrings"];
  v14 = [v17 componentsSeparatedByString:{@", "}];
  v15 = [(SPUITestingHelper *)self activeApp];
  [v15 startedTest:v13];

  v16 = [v14 mutableCopy];
  [(SPUITestingHelper *)self searchForString:v16 testName:v13 event:a5 queryKind:a6 completion:v12];
}

- (void)searchForString:(id)a3 testName:(id)a4 event:(unint64_t)a5 queryKind:(unint64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [(SPUITestingHelper *)self searchViewController];
  v16 = [v15 searchResultsTestingObject];
  [v16 setDidFinishGettingAllResultsHandler:0];

  v17 = [(SPUITestingHelper *)self searchViewController];
  v18 = [v17 searchResultsTestingObject];
  [v18 setViewWillUpdateHandler:0];

  v19 = [(SPUITestingHelper *)self searchViewController];
  v20 = [v19 searchResultsTestingObject];
  [v20 setViewDidUpdateHandler:0];

  if ([v12 count])
  {
    v41 = a5;
    v21 = MEMORY[0x277CCACA8];
    v22 = [v12 lastObject];
    [v21 stringWithFormat:@"Query To Draw Latency:%@", v22];
    v42 = v14;
    v23 = v13;
    v25 = v24 = a6;

    v26 = MEMORY[0x277CCACA8];
    v27 = [v12 lastObject];
    v28 = [v26 stringWithFormat:@"Query To First Result:%@", v27];

    v29 = MEMORY[0x277CCACA8];
    v30 = [v12 lastObject];
    v31 = [v29 stringWithFormat:@"Query Latency:%@", v30];

    v32 = [SPUIPPTTypingHelper alloc];
    v33 = [v12 lastObject];
    v34 = [(SPUITestingHelper *)self searchViewController];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __73__SPUITestingHelper_searchForString_testName_event_queryKind_completion___block_invoke;
    v43[3] = &unk_279D07500;
    v43[4] = self;
    v44 = v31;
    v45 = v23;
    v46 = v28;
    v50 = v41;
    v51 = v24;
    v47 = v12;
    v48 = v25;
    v49 = v42;
    v35 = v25;
    v36 = v28;
    v37 = v31;
    v38 = v24;
    v13 = v23;
    v14 = v42;
    v39 = [(SPUIPPTTypingHelper *)v32 initWithString:v33 viewController:v34 queryKind:v38 completion:v43];
    [(SPUITestingHelper *)self setTypingHelper:v39];
  }

  else
  {
    v40 = [(SPUITestingHelper *)self activeApp];
    [v40 finishedTest:v13];

    if (v14)
    {
      v14[2](v14);
    }
  }
}

void __73__SPUITestingHelper_searchForString_testName_event_queryKind_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeApp];
  [v2 startedSubTest:*(a1 + 40) forTest:*(a1 + 48)];

  v3 = [*(a1 + 32) activeApp];
  [v3 startedSubTest:*(a1 + 56) forTest:*(a1 + 48)];

  v4 = [*(a1 + 32) searchViewController];
  v5 = [*(a1 + 64) lastObject];
  [v4 performTestSearchWithQuery:v5 event:*(a1 + 88) queryKind:*(a1 + 96)];

  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v50 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__SPUITestingHelper_searchForString_testName_event_queryKind_completion___block_invoke_2;
  aBlock[3] = &unk_279D07488;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v44 = v49;
  aBlock[4] = v6;
  v41 = v7;
  v42 = *(a1 + 48);
  v43 = *(a1 + 72);
  v8 = _Block_copy(aBlock);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __73__SPUITestingHelper_searchForString_testName_event_queryKind_completion___block_invoke_3;
  v30[3] = &unk_279D074B0;
  v9 = *(a1 + 32);
  v36 = v47;
  v30[4] = v9;
  v31 = *(a1 + 56);
  v32 = *(a1 + 48);
  v33 = *(a1 + 72);
  v37 = v49;
  v38 = v45;
  v34 = *(a1 + 64);
  v39 = *(a1 + 88);
  v35 = *(a1 + 80);
  v10 = _Block_copy(v30);
  v11 = [*(a1 + 32) searchViewController];
  v12 = [v11 searchResultsTestingObject];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __73__SPUITestingHelper_searchForString_testName_event_queryKind_completion___block_invoke_4;
  v26[3] = &unk_279D074D8;
  v13 = *(a1 + 32);
  v29 = v49;
  v26[4] = v13;
  v14 = v8;
  v27 = v14;
  v15 = v10;
  v28 = v15;
  [v12 setDidFinishGettingAllResultsHandler:v26];

  v16 = [*(a1 + 32) searchViewController];
  v17 = [v16 searchResultsTestingObject];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __73__SPUITestingHelper_searchForString_testName_event_queryKind_completion___block_invoke_5;
  v24[3] = &unk_279D06F38;
  v18 = v14;
  v25 = v18;
  [v17 setViewWillUpdateHandler:v24];

  v19 = [*(a1 + 32) searchViewController];
  v20 = [v19 searchResultsTestingObject];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __73__SPUITestingHelper_searchForString_testName_event_queryKind_completion___block_invoke_6;
  v22[3] = &unk_279D07348;
  v22[4] = *(a1 + 32);
  v21 = v15;
  v23 = v21;
  [v20 setViewDidUpdateHandler:v22];

  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v49, 8);
}

void __73__SPUITestingHelper_searchForString_testName_event_queryKind_completion___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v2 = [*(a1 + 32) activeApp];
    [v2 finishedSubTest:*(a1 + 40) forTest:*(a1 + 48)];
  }

  v3 = [*(a1 + 32) activeApp];
  [v3 startedSubTest:*(a1 + 56) forTest:*(a1 + 48)];
}

void __73__SPUITestingHelper_searchForString_testName_event_queryKind_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 80) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    v3 = [*(a1 + 32) activeApp];
    [v3 finishedSubTest:*(a1 + 40) forTest:*(a1 + 48)];
  }

  v4 = [*(a1 + 32) activeApp];
  [v4 finishedSubTest:*(a1 + 56) forTest:*(a1 + 48)];

  if (*(*(*(a1 + 88) + 8) + 24) == 1)
  {
    v5 = *(*(a1 + 96) + 8);
    if ((*(v5 + 24) & 1) == 0)
    {
      *(v5 + 24) = 1;
      [*(a1 + 64) removeLastObject];
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v8 = *(a1 + 104);
      v9 = *(a1 + 112);
      v10 = *(a1 + 64);
      v11 = *(a1 + 72);

      [v6 searchForString:v10 testName:v7 event:v8 queryKind:v9 completion:v11];
    }
  }
}

uint64_t __73__SPUITestingHelper_searchForString_testName_event_queryKind_completion___block_invoke_4(uint64_t result, char a2)
{
  *(*(*(result + 56) + 8) + 24) = 1;
  if ((a2 & 1) == 0)
  {
    v3 = result;
    v4 = [*(result + 32) searchViewController];
    v5 = [v4 searchResultsTestingObject];
    [v5 setViewWillUpdateHandler:0];

    v6 = [*(v3 + 32) searchViewController];
    v7 = [v6 searchResultsTestingObject];
    [v7 setViewDidUpdateHandler:0];

    (*(*(v3 + 40) + 16))();
    v8 = *(*(v3 + 48) + 16);

    return v8();
  }

  return result;
}

void __73__SPUITestingHelper_searchForString_testName_event_queryKind_completion___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) activeApp];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __73__SPUITestingHelper_searchForString_testName_event_queryKind_completion___block_invoke_7;
  v3[3] = &unk_279D06F38;
  v4 = *(a1 + 40);
  [v2 installCACommitCompletionBlock:v3];
}

- (void)setDefaultsForSearchVCWithqueryType:(unint64_t)a3
{
  v5 = [(SPUITestingHelper *)self searchViewController];
  [v5 performTestSearchWithQuery:&stru_287C49600 event:1 queryKind:a3];

  v6 = [(SPUITestingHelper *)self searchViewController];
  [v6 setInternetOverrideToDisable:0];
}

@end
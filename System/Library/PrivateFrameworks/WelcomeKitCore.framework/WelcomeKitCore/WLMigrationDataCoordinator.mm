@interface WLMigrationDataCoordinator
+ (unint64_t)downloadSegmentSize;
+ (unint64_t)segmentCountForItemSize:(unint64_t)a3 segmentSize:(unint64_t)a4;
- (WLMigrationDataCoordinator)init;
- (id)_recordSummaryForMigrator:(id)a3 withInfo:(id)a4 account:(id)a5;
- (void)_downloadFileInMultipleSegmentsFromSource:(id)a3 forMigrator:(id)a4 summary:(id)a5 account:(id)a6 itemSize:(unint64_t)a7 segmentCompletion:(id)a8 completion:(id)a9;
- (void)_downloadSegmentsFromSource:(id)a3 forMigrator:(id)a4 startingAtByteLocation:(unint64_t)a5 ofSummary:(id)a6 account:(id)a7 itemSize:(unint64_t)a8 toFileHandle:(id)a9 segmentCompletion:(id)a10 completion:(id)a11;
- (void)_fetchAccountsFromSource:(id)a3 forMigrator:(id)a4 statistics:(id)a5 completion:(id)a6;
- (void)_fetchSummariesFromSource:(id)a3 forMigrator:(id)a4 account:(id)a5 statistics:(id)a6 completion:(id)a7;
- (void)downloadDataFromSource:(id)a3 forMigrator:(id)a4 summary:(id)a5 account:(id)a6 completion:(id)a7;
- (void)downloadFileFromSource:(id)a3 forMigrator:(id)a4 summary:(id)a5 account:(id)a6 segmentCompletion:(id)a7 completion:(id)a8;
- (void)fetchAccountsAndSummariesFromSource:(id)a3 forMigrator:(id)a4 statistics:(id)a5 accountsRequestDurationBlock:(id)a6 summariesRequestDurationBlock:(id)a7 completion:(id)a8;
- (void)importDataForMigrator:(id)a3 fromProvider:(id)a4 forSummaries:(id)a5 summaryStart:(id)a6 summaryCompletion:(id)a7;
- (void)setStashDataLocally:(BOOL)a3;
- (void)updateSource:(id)a3 withProgress:(double)a4 remainingTime:(double)a5 completion:(id)a6;
@end

@implementation WLMigrationDataCoordinator

- (WLMigrationDataCoordinator)init
{
  v6.receiver = self;
  v6.super_class = WLMigrationDataCoordinator;
  v2 = [(WLMigrationDataCoordinator *)&v6 init];
  if (v2)
  {
    v3 = NSHomeDirectory();
    v4 = [v3 stringByAppendingPathComponent:@"/Library/WelcomeKit/Downloads/"];
    [(WLMigrationDataCoordinator *)v2 setDownloadsPath:v4];
  }

  return v2;
}

- (void)setStashDataLocally:(BOOL)a3
{
  self->_stashDataLocally = a3;
  if (a3)
  {
    +[WLLocalDataSource deleteLocalData];
  }
}

- (void)fetchAccountsAndSummariesFromSource:(id)a3 forMigrator:(id)a4 statistics:(id)a5 accountsRequestDurationBlock:(id)a6 summariesRequestDurationBlock:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = MEMORY[0x277CCACA8];
  v21 = [v15 contentType];
  v22 = [v20 stringWithFormat:@"fetch '%@' accounts and summaries", v21];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __159__WLMigrationDataCoordinator_fetchAccountsAndSummariesFromSource_forMigrator_statistics_accountsRequestDurationBlock_summariesRequestDurationBlock_completion___block_invoke;
  v30[3] = &unk_279EB57D8;
  v30[4] = self;
  v31 = v14;
  v32 = v15;
  v33 = v16;
  v34 = v22;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  v23 = v19;
  v24 = v18;
  v25 = v22;
  v26 = v16;
  v27 = v15;
  v28 = v14;
  v29 = v17;
  [(WLMigrationDataCoordinator *)self _fetchAccountsFromSource:v28 forMigrator:v27 statistics:v26 completion:v30];
}

void __159__WLMigrationDataCoordinator_fetchAccountsAndSummariesFromSource_forMigrator_statistics_accountsRequestDurationBlock_summariesRequestDurationBlock_completion___block_invoke(uint64_t a1, void *a2, void *a3, int a4, double a5)
{
  v43 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v21 = a3;
  if (a4)
  {
    v10 = *(a1 + 72);
    if (v10)
    {
      (*(v10 + 16))(a5);
    }
  }

  v25 = [MEMORY[0x277CBEB18] array];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__1;
  v40 = __Block_byref_object_dispose__1;
  v41 = 0;
  v24 = dispatch_semaphore_create(0);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v11)
  {
    v23 = *v33;
LABEL_6:
    v12 = 0;
    while (1)
    {
      if (*v33 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v32 + 1) + 8 * v12);
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __159__WLMigrationDataCoordinator_fetchAccountsAndSummariesFromSource_forMigrator_statistics_accountsRequestDurationBlock_summariesRequestDurationBlock_completion___block_invoke_6;
      v26[3] = &unk_279EB57B0;
      v26[4] = v14;
      v27 = *(a1 + 64);
      v31 = &v36;
      v30 = *(a1 + 80);
      v28 = v25;
      v18 = v24;
      v29 = v18;
      [v14 _fetchSummariesFromSource:v15 forMigrator:v16 account:v13 statistics:v17 completion:v26];
      dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
      LOBYTE(v16) = v37[5] == 0;

      if ((v16 & 1) == 0)
      {
        break;
      }

      if (v11 == ++v12)
      {
        v11 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
        if (v11)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  v19 = *(a1 + 88);
  if (v19)
  {
    (*(v19 + 16))();
  }

  _Block_object_dispose(&v36, 8);
  v20 = *MEMORY[0x277D85DE8];
}

void __159__WLMigrationDataCoordinator_fetchAccountsAndSummariesFromSource_forMigrator_statistics_accountsRequestDurationBlock_summariesRequestDurationBlock_completion___block_invoke_6(uint64_t a1, void *a2, void *a3, double a4)
{
  v12 = a2;
  v7 = a3;
  if (v7)
  {
    v10 = *(a1 + 40);
    v11 = v7;
    v9 = *(a1 + 32);
    _WLLog();
  }

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  v8 = *(a1 + 64);
  if (v8)
  {
    (*(v8 + 16))(a4);
  }

  if ([v12 count])
  {
    [*(a1 + 48) addObjectsFromArray:v12];
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

- (void)_fetchAccountsFromSource:(id)a3 forMigrator:(id)a4 statistics:(id)a5 completion:(id)a6
{
  v23[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v11 accountBased])
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [v11 contentType];
    v16 = [v14 stringWithFormat:@"fetch '%@' accounts", v15];

    _WLLog();
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __89__WLMigrationDataCoordinator__fetchAccountsFromSource_forMigrator_statistics_completion___block_invoke;
    v20[3] = &unk_279EB5800;
    v21 = v12;
    v22 = v13;
    [v10 accountsDataForMigrator:v11 completion:{v20, self, v16}];

    v17 = v21;
LABEL_5:

    goto LABEL_6;
  }

  v18 = objc_alloc_init(WLSourceDeviceAccount);
  v16 = v18;
  if (v13)
  {
    v23[0] = v18;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    (*(v13 + 2))(v13, v17, 0, 0, 0.0);
    goto LABEL_5;
  }

LABEL_6:

  v19 = *MEMORY[0x277D85DE8];
}

void __89__WLMigrationDataCoordinator__fetchAccountsFromSource_forMigrator_statistics_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, double a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a4;
  v11 = *(a1 + 32);
  if (v9)
  {
    v25 = v10;
    [v11 addToFetchByteCount:a3];
    [*(a1 + 32) incrementFetchRequestCount];
    v12 = [MEMORY[0x277CBEB18] array];
    v13 = [v9 objectForKeyedSubscript:@"dataItemSummaries"];
    v14 = [WLSourceDeviceAccount accountInfoArrayContainsNonSyncableAccount:v13];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        v19 = 0;
        do
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v26 + 1) + 8 * v19);
          if (!v14 || ![WLSourceDeviceAccount accountInfoRepresentsSyncableAccount:*(*(&v26 + 1) + 8 * v19)])
          {
            v21 = [WLSourceDeviceAccount accountWithInfo:v20];
            [v12 addObject:v21];
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v17);
    }

    v22 = *(a1 + 40);
    if (v22)
    {
      (*(v22 + 16))(v22, v12, 0, 1, a5);
    }

    v10 = v25;
  }

  else
  {
    [v11 incrementFetchFailedRequestCount];
    v23 = *(a1 + 40);
    if (v23)
    {
      (*(v23 + 16))(v23, 0, v10, 1, a5);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_fetchSummariesFromSource:(id)a3 forMigrator:(id)a4 account:(id)a5 statistics:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = MEMORY[0x277CCACA8];
  v17 = a3;
  v18 = [v12 contentType];
  v19 = [v13 identifier];
  v20 = [v16 stringWithFormat:@"fetch data summaries for '%@' account '%@'", v18, v19];

  v25 = self;
  _WLLog();
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __98__WLMigrationDataCoordinator__fetchSummariesFromSource_forMigrator_account_statistics_completion___block_invoke;
  v26[3] = &unk_279EB5828;
  v27 = v14;
  v28 = self;
  v29 = v12;
  v30 = v13;
  v31 = v15;
  v21 = v15;
  v22 = v13;
  v23 = v12;
  v24 = v14;
  [v17 summariesDataForAccount:v22 migrator:v23 completion:{v26, v25, v20}];
}

void __98__WLMigrationDataCoordinator__fetchSummariesFromSource_forMigrator_account_statistics_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, double a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a4;
  v11 = *(a1 + 32);
  if (v9)
  {
    [v11 addToFetchByteCount:a3];
    [*(a1 + 32) incrementFetchRequestCount];
    v12 = [v9 objectForKeyedSubscript:@"dataItemSummaries"];
    v13 = *(a1 + 40);
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
    v15 = [*(a1 + 48) contentType];
    v26 = [*(a1 + 56) identifier];
    _WLLog();

    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count", v13, v14, v15, v26)}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = v12;
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        v21 = 0;
        do
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(a1 + 40) _recordSummaryForMigrator:*(a1 + 48) withInfo:*(*(&v27 + 1) + 8 * v21) account:*(a1 + 56)];
          if (v22)
          {
            [v16 addObject:v22];
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v19);
    }

    v23 = *(a1 + 64);
    if (v23)
    {
      (*(v23 + 16))(v23, v16, 0, a5);
    }
  }

  else
  {
    [v11 incrementFetchFailedRequestCount];
    v24 = *(a1 + 64);
    if (v24)
    {
      (*(v24 + 16))(v24, 0, v10, a5);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)downloadFileFromSource:(id)a3 forMigrator:(id)a4 summary:(id)a5 account:(id)a6 segmentCompletion:(id)a7 completion:(id)a8
{
  v42 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = MEMORY[0x277CBEBC0];
  v19 = [v14 dataFilePath];
  v20 = [v18 fileURLWithPath:v19 isDirectory:0];

  v21 = [MEMORY[0x277CCAA00] defaultManager];
  v60[0] = 0;
  v22 = [v21 removeItemAtURL:v20 error:v60];
  v23 = v60[0];

  v43 = v23;
  if (v22)
  {
    goto LABEL_7;
  }

  v24 = [v23 domain];
  if (([v24 isEqualToString:*MEMORY[0x277CCA050]] & 1) == 0)
  {

LABEL_7:
    v40 = [MEMORY[0x277CCABB0] numberWithBool:v22];
    v33 = self;
    v38 = self;
    v39 = v20;
    _WLLog();

    goto LABEL_8;
  }

  v25 = [v23 code];
  v26 = v20;
  v27 = v17;
  v28 = v13;
  v29 = v16;
  v30 = v15;
  v31 = v25;

  v32 = v31 == 4;
  v15 = v30;
  v16 = v29;
  v13 = v28;
  v17 = v27;
  v20 = v26;
  if (!v32)
  {
    goto LABEL_7;
  }

  v33 = self;
  v38 = self;
  v39 = v20;
  _WLLog();
LABEL_8:
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v13 confirmItemSizeWithSourceBeforeDownloading])
  {
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __110__WLMigrationDataCoordinator_downloadFileFromSource_forMigrator_summary_account_segmentCompletion_completion___block_invoke;
    v52[3] = &unk_279EB5850;
    v53 = v14;
    v58 = v16;
    v59 = v17;
    v54 = v33;
    v34 = v42;
    v55 = v42;
    v56 = v13;
    v57 = v15;
    [v55 itemSizeForSummary:v53 migrator:v56 completion:v52];

    v35 = v53;
  }

  else
  {
    if ([v14 downloadSegmentCount] != 1)
    {
      v36 = [v14 itemSize];
      v37 = v33;
      v34 = v42;
      [(WLMigrationDataCoordinator *)v37 _downloadFileInMultipleSegmentsFromSource:v42 forMigrator:v13 summary:v14 account:v15 itemSize:v36 segmentCompletion:v16 completion:v17];
      goto LABEL_15;
    }

    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __110__WLMigrationDataCoordinator_downloadFileFromSource_forMigrator_summary_account_segmentCompletion_completion___block_invoke_2;
    v49[3] = &unk_279EB5878;
    v50 = v20;
    v51 = v33;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __110__WLMigrationDataCoordinator_downloadFileFromSource_forMigrator_summary_account_segmentCompletion_completion___block_invoke_3;
    v44[3] = &unk_279EB58A0;
    v44[4] = v33;
    v45 = v14;
    v46 = v13;
    v47 = v16;
    v48 = v17;
    v34 = v42;
    [v42 fileForSummary:v45 migrator:v46 fileAccessor:v49 completion:v44];

    v35 = v50;
  }

LABEL_15:
}

uint64_t __110__WLMigrationDataCoordinator_downloadFileFromSource_forMigrator_summary_account_segmentCompletion_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = *(a1 + 80);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }

  else
  {
    v6 = -[WLItemSizeConfirmationCompletionAdapter initWithUnconfirmedItemSize:segmentSize:originalSegmentCompletion:originalCompletion:]([WLItemSizeConfirmationCompletionAdapter alloc], "initWithUnconfirmedItemSize:segmentSize:originalSegmentCompletion:originalCompletion:", [*(a1 + 32) itemSize], +[WLMigrationDataCoordinator downloadSegmentSize](WLMigrationDataCoordinator, "downloadSegmentSize"), *(a1 + 72), *(a1 + 80));
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(a1 + 64);
    v12 = [(WLItemSizeConfirmationCompletionAdapter *)v6 segmentCompletion];
    v13 = [(WLItemSizeConfirmationCompletionAdapter *)v6 completion];
    [v9 _downloadFileInMultipleSegmentsFromSource:v7 forMigrator:v8 summary:v10 account:v11 itemSize:a2 segmentCompletion:v12 completion:v13];
  }

  return MEMORY[0x2821F96F8]();
}

id __110__WLMigrationDataCoordinator_downloadFileFromSource_forMigrator_summary_account_segmentCompletion_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [*(a1 + 32) URLByDeletingLastPathComponent];
  v16 = 0;
  v6 = [v4 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v16];
  v7 = v16;

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = *(a1 + 32);
    v15 = 0;
    v6 = [v9 copyItemAtURL:v3 toURL:v10 error:&v15];
    v7 = v15;
  }

  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v14 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  _WLLog();

  return v7;
}

uint64_t __110__WLMigrationDataCoordinator_downloadFileFromSource_forMigrator_summary_account_segmentCompletion_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  if (!v6 && [*(a1 + 32) stashDataLocally])
  {
    [WLLocalDataSource stashFileForSummary:*(a1 + 40) migrator:*(a1 + 48)];
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    (*(v3 + 16))(v3, [*(a1 + 40) itemSize]);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    (*(v4 + 16))(v4, v6);
  }

  return MEMORY[0x2821F96F8]();
}

+ (unint64_t)downloadSegmentSize
{
  if (downloadSegmentSize_onceToken != -1)
  {
    +[WLMigrationDataCoordinator downloadSegmentSize];
  }

  return downloadSegmentSize_downloadSegmentSize;
}

void __49__WLMigrationDataCoordinator_downloadSegmentSize__block_invoke()
{
  v1 = CFPreferencesCopyAppValue(@"DownloadSegmentSize", @"com.apple.welcomekit");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    downloadSegmentSize_downloadSegmentSize = [v1 unsignedIntegerValue];
    v0 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:downloadSegmentSize_downloadSegmentSize];
    _WLLog();
  }
}

- (void)_downloadSegmentsFromSource:(id)a3 forMigrator:(id)a4 startingAtByteLocation:(unint64_t)a5 ofSummary:(id)a6 account:(id)a7 itemSize:(unint64_t)a8 toFileHandle:(id)a9 segmentCompletion:(id)a10 completion:(id)a11
{
  v41 = a3;
  v16 = a4;
  v17 = a6;
  v35 = v17;
  v34 = a7;
  v40 = a9;
  v38 = a10;
  v37 = a11;
  v18 = +[WLMigrationDataCoordinator downloadSegmentSize];
  v36 = a8;
  if (v18 + a5 <= a8)
  {
    v19 = v18;
  }

  else
  {
    v19 = a8 - a5;
  }

  v20 = MEMORY[0x277CCACA8];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v22 = v19;
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
  v24 = [v16 contentType];
  v25 = [v17 identifier];
  v26 = [v34 identifier];
  v42 = [v20 stringWithFormat:@"fetch segment from byte start %@ len %@ into file '%@' record '%@' in account '%@'", v21, v23, v24, v25, v26];

  _WLLog();
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __162__WLMigrationDataCoordinator__downloadSegmentsFromSource_forMigrator_startingAtByteLocation_ofSummary_account_itemSize_toFileHandle_segmentCompletion_completion___block_invoke;
  v43[3] = &unk_279EB58C8;
  v52 = a5;
  v53 = v22;
  v54 = v36;
  v50 = v38;
  v51 = v37;
  v44 = v40;
  v45 = self;
  v46 = v41;
  v47 = v16;
  v48 = v17;
  v49 = v34;
  v27 = v34;
  v28 = v35;
  v29 = v16;
  v30 = v41;
  v31 = v37;
  v32 = v38;
  v33 = v40;
  [v30 dataSegmentForSummary:v28 byteRange:a5 migrator:v22 completion:{v29, v43, self, v42}];
}

void __162__WLMigrationDataCoordinator__downloadSegmentsFromSource_forMigrator_startingAtByteLocation_ofSummary_account_itemSize_toFileHandle_segmentCompletion_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = v12;
  v8 = v6;
  if (v12)
  {
    [*(a1 + 32) writeData:v12];
    [*(a1 + 32) synchronizeFile];
    v7 = v12;
  }

  if (v5)
  {
    goto LABEL_7;
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    (*(v9 + 16))(v9, [v7 length]);
  }

  v10 = *(a1 + 104) + *(a1 + 96);
  if (v10 == *(a1 + 112))
  {
LABEL_7:
    v11 = *(a1 + 88);
    if (v11)
    {
      (*(v11 + 16))(v11, v5);
    }
  }

  else
  {
    [*(a1 + 40) _downloadSegmentsFromSource:*(a1 + 48) forMigrator:*(a1 + 56) startingAtByteLocation:v10 ofSummary:*(a1 + 64) account:*(a1 + 72) itemSize:*(a1 + 32) toFileHandle:*(a1 + 80) segmentCompletion:*(a1 + 88) completion:?];
  }

  objc_autoreleasePoolPop(v8);
}

- (void)_downloadFileInMultipleSegmentsFromSource:(id)a3 forMigrator:(id)a4 summary:(id)a5 account:(id)a6 itemSize:(unint64_t)a7 segmentCompletion:(id)a8 completion:(id)a9
{
  v44 = a4;
  v14 = a5;
  v15 = a9;
  v16 = MEMORY[0x277CCAA00];
  v46 = a8;
  v45 = a6;
  v17 = a3;
  v18 = [v16 defaultManager];
  v19 = [v14 dataFilePath];
  [v18 createFileAtPath:v19 contents:0 attributes:0];

  v20 = [v14 dataFilePath];
  v21 = [v20 stringByDeletingLastPathComponent];

  _WLLog();
  v22 = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(v19) = [v22 fileExistsAtPath:v21];

  if ((v19 & 1) == 0)
  {
    v23 = [MEMORY[0x277CCAA00] defaultManager];
    v54 = 0;
    v24 = [v23 createDirectoryAtPath:v21 withIntermediateDirectories:1 attributes:0 error:&v54];
    v25 = v54;

    v41 = [MEMORY[0x277CCABB0] numberWithBool:v24];
    v43 = v25;
    v37 = self;
    v38 = v21;
    _WLLog();
  }

  v39 = [v14 dataFilePath];
  _WLLog();

  v26 = [MEMORY[0x277CCAA00] defaultManager];
  v27 = [v14 dataFilePath];
  v28 = [v26 createFileAtPath:v27 contents:0 attributes:0];

  v29 = [v14 dataFilePath];
  [MEMORY[0x277CCABB0] numberWithBool:v28];
  v42 = v40 = v29;
  _WLLog();

  v30 = MEMORY[0x277CCA9F8];
  v31 = [v14 dataFilePath];
  v32 = [v30 fileHandleForWritingAtPath:v31];

  _WLLog();
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __138__WLMigrationDataCoordinator__downloadFileInMultipleSegmentsFromSource_forMigrator_summary_account_itemSize_segmentCompletion_completion___block_invoke;
  v48[3] = &unk_279EB58F0;
  v49 = v32;
  v50 = self;
  v51 = v14;
  v52 = v44;
  v53 = v15;
  v33 = v15;
  v34 = v44;
  v35 = v14;
  v36 = v32;
  [(WLMigrationDataCoordinator *)self _downloadSegmentsFromSource:v17 forMigrator:v34 startingAtByteLocation:0 ofSummary:v35 account:v45 itemSize:a7 toFileHandle:v36 segmentCompletion:v46 completion:v48];
}

uint64_t __138__WLMigrationDataCoordinator__downloadFileInMultipleSegmentsFromSource_forMigrator_summary_account_itemSize_segmentCompletion_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) closeFile];
  if (!v5 && [*(a1 + 40) stashDataLocally])
  {
    [WLLocalDataSource stashFileForSummary:*(a1 + 48) migrator:*(a1 + 56)];
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }

  return MEMORY[0x2821F96F8]();
}

- (void)downloadDataFromSource:(id)a3 forMigrator:(id)a4 summary:(id)a5 account:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = MEMORY[0x277CCACA8];
  v16 = a6;
  v17 = a3;
  v18 = [v12 contentType];
  v19 = [v13 identifier];
  v20 = [v16 identifier];

  v21 = [v15 stringWithFormat:@"fetch '%@' record '%@' in account '%@'", v18, v19, v20];

  v26 = self;
  _WLLog();
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __92__WLMigrationDataCoordinator_downloadDataFromSource_forMigrator_summary_account_completion___block_invoke;
  v27[3] = &unk_279EB5918;
  v27[4] = self;
  v28 = v21;
  v29 = v13;
  v30 = v12;
  v31 = v14;
  v22 = v14;
  v23 = v12;
  v24 = v13;
  v25 = v21;
  [v17 dataForSummary:v24 migrator:v23 completion:{v27, v26, v21}];
}

void __92__WLMigrationDataCoordinator_downloadDataFromSource_forMigrator_summary_account_completion___block_invoke(uint64_t *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = a1[4];
  v7 = a1[5];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "length")}];
  _WLLog();

  if (v10 && !v5 && [a1[4] stashDataLocally])
  {
    [WLLocalDataSource stashData:v10 forSummary:a1[6] migrator:a1[7]];
  }

  v8 = a1[8];
  if (v8)
  {
    (*(v8 + 16))(v8, v10, v5);
  }
}

- (void)importDataForMigrator:(id)a3 fromProvider:(id)a4 forSummaries:(id)a5 summaryStart:(id)a6 summaryCompletion:(id)a7
{
  v53 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v39 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v34 = self;
  if ([(WLMigrationDataCoordinator *)self stashDataLocally])
  {
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v47 = 0u;
    v33 = v13;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v48;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v48 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v47 + 1) + 8 * i);
          if (v14)
          {
            v14[2](v14, *(*(&v47 + 1) + 8 * i));
          }

          if (v15)
          {
            v15[2](v15, v21, 0);
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v18);
    }

LABEL_32:
    v13 = v33;
    goto LABEL_33;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v37 = v12;
    v36 = dispatch_semaphore_create(0);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v33 = v13;
    obj = v13;
    v22 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v22)
    {
      v23 = v22;
      v38 = *v44;
      do
      {
        v24 = 0;
        do
        {
          if (*v44 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v43 + 1) + 8 * v24);
          v26 = objc_autoreleasePoolPush();
          if (v14)
          {
            (v14)[2](v14, v25);
          }

          v27 = v39[2](v39, v25);
          if (v27 || [v25 storeDataAsFile])
          {
            v28 = [v25 account];
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __109__WLMigrationDataCoordinator_importDataForMigrator_fromProvider_forSummaries_summaryStart_summaryCompletion___block_invoke;
            v40[3] = &unk_279EB5940;
            v42 = v15;
            v40[4] = v25;
            v29 = v36;
            v41 = v29;
            [v37 importRecordData:v27 summary:v25 account:v28 completion:v40];

            dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
          }

          else
          {
            v32 = v34;
            _WLLog();
            if (v15)
            {
              v15[2](v15, v25, 0);
            }
          }

          objc_autoreleasePoolPop(v26);
          ++v24;
        }

        while (v23 != v24);
        v30 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
        v23 = v30;
      }

      while (v30);
    }

    v12 = v37;
    goto LABEL_32;
  }

  [v12 importDataFromProvider:v39 forSummaries:v13 summaryStart:v14 summaryCompletion:v15];
LABEL_33:

  v31 = *MEMORY[0x277D85DE8];
}

intptr_t __109__WLMigrationDataCoordinator_importDataForMigrator_fromProvider_forSummaries_summaryStart_summaryCompletion___block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4]);
  }

  v3 = a1[5];

  return dispatch_semaphore_signal(v3);
}

- (void)updateSource:(id)a3 withProgress:(double)a4 remainingTime:(double)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = v11;
  if (self->_doneSent)
  {
    if (v11)
    {
      (*(v11 + 2))(v11, 1, 0);
    }
  }

  else
  {
    v13 = vcvtmd_s64_f64(a4 * 100.0) | 0x4059000000000000;
    if (a4 >= 1.0)
    {
      v14 = @"update progress to status=done (percentProgress=%d, remainingTime=%f)";
    }

    else
    {
      v14 = @"update progress to status=active (percentProgress=%d, remainingTime=%f)";
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:v14, v13, *&a5];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __81__WLMigrationDataCoordinator_updateSource_withProgress_remainingTime_completion___block_invoke;
    v16[3] = &unk_279EB5968;
    v18 = a4;
    v16[4] = self;
    v17 = v12;
    [v10 updateUIWithProgress:v15 remainingTime:v16 logString:a4 completion:a5];
  }
}

void __81__WLMigrationDataCoordinator_updateSource_withProgress_remainingTime_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3 && *(a1 + 48) >= 1.0)
  {
    *(*(a1 + 32) + 8) = 1;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = v3;
    (*(v4 + 16))(v4, v3 == 0);
    v3 = v5;
  }
}

- (id)_recordSummaryForMigrator:(id)a3 withInfo:(id)a4 account:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [WLSourceDeviceRecordSummary summaryWithInfo:a4 account:v9];
  v11 = [v8 storeRecordDataInDatabase];
  if ((v11 & 1) == 0)
  {
    [v10 setStoreDataAsFile:1];
    v25 = [(WLMigrationDataCoordinator *)self downloadsPath];
    v12 = [MEMORY[0x277CCAD78] UUID];
    v13 = [v12 UUIDString];

    v14 = [MEMORY[0x277CCAD78] UUID];
    v15 = [v14 UUIDString];

    v16 = [v10 identifier];
    v17 = [v16 lastPathComponent];
    v18 = [v17 pathExtension];
    v19 = [v18 lowercaseString];

    if (v19)
    {
      v20 = [v15 stringByAppendingPathExtension:v19];

      v15 = v20;
    }

    v21 = [v25 stringByAppendingPathComponent:v13];
    v22 = [v21 stringByAppendingPathComponent:v15];
    [v10 setDataFilePath:v22];
  }

  if (((v11 | !+[WLMigrationDataCoordinator _allowSegmentedDownloads](WLMigrationDataCoordinator, "_allowSegmentedDownloads")) & 1) == 0 && [v10 itemSize] && objc_msgSend(v8, "wantsSegmentedDownloads"))
  {
    v23 = +[WLMigrationDataCoordinator segmentCountForItemSize:segmentSize:](WLMigrationDataCoordinator, "segmentCountForItemSize:segmentSize:", [v10 itemSize], +[WLMigrationDataCoordinator downloadSegmentSize](WLMigrationDataCoordinator, "downloadSegmentSize"));
  }

  else
  {
    v23 = 1;
  }

  [v10 setDownloadSegmentCount:v23];
  if (![v10 itemSize] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 estimateItemSizeForSummary:v10 account:v9];
  }

  return v10;
}

+ (unint64_t)segmentCountForItemSize:(unint64_t)a3 segmentSize:(unint64_t)a4
{
  if (a3 / a4 * a4 >= a3)
  {
    return a3 / a4;
  }

  else
  {
    return a3 / a4 + 1;
  }
}

@end
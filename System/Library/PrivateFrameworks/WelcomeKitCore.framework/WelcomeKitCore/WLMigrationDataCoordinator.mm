@interface WLMigrationDataCoordinator
+ (unint64_t)downloadSegmentSize;
+ (unint64_t)segmentCountForItemSize:(unint64_t)size segmentSize:(unint64_t)segmentSize;
- (WLMigrationDataCoordinator)init;
- (id)_recordSummaryForMigrator:(id)migrator withInfo:(id)info account:(id)account;
- (void)_downloadFileInMultipleSegmentsFromSource:(id)source forMigrator:(id)migrator summary:(id)summary account:(id)account itemSize:(unint64_t)size segmentCompletion:(id)completion completion:(id)a9;
- (void)_downloadSegmentsFromSource:(id)source forMigrator:(id)migrator startingAtByteLocation:(unint64_t)location ofSummary:(id)summary account:(id)account itemSize:(unint64_t)size toFileHandle:(id)handle segmentCompletion:(id)self0 completion:(id)self1;
- (void)_fetchAccountsFromSource:(id)source forMigrator:(id)migrator statistics:(id)statistics completion:(id)completion;
- (void)_fetchSummariesFromSource:(id)source forMigrator:(id)migrator account:(id)account statistics:(id)statistics completion:(id)completion;
- (void)downloadDataFromSource:(id)source forMigrator:(id)migrator summary:(id)summary account:(id)account completion:(id)completion;
- (void)downloadFileFromSource:(id)source forMigrator:(id)migrator summary:(id)summary account:(id)account segmentCompletion:(id)completion completion:(id)a8;
- (void)fetchAccountsAndSummariesFromSource:(id)source forMigrator:(id)migrator statistics:(id)statistics accountsRequestDurationBlock:(id)block summariesRequestDurationBlock:(id)durationBlock completion:(id)completion;
- (void)importDataForMigrator:(id)migrator fromProvider:(id)provider forSummaries:(id)summaries summaryStart:(id)start summaryCompletion:(id)completion;
- (void)setStashDataLocally:(BOOL)locally;
- (void)updateSource:(id)source withProgress:(double)progress remainingTime:(double)time completion:(id)completion;
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

- (void)setStashDataLocally:(BOOL)locally
{
  self->_stashDataLocally = locally;
  if (locally)
  {
    +[WLLocalDataSource deleteLocalData];
  }
}

- (void)fetchAccountsAndSummariesFromSource:(id)source forMigrator:(id)migrator statistics:(id)statistics accountsRequestDurationBlock:(id)block summariesRequestDurationBlock:(id)durationBlock completion:(id)completion
{
  sourceCopy = source;
  migratorCopy = migrator;
  statisticsCopy = statistics;
  blockCopy = block;
  durationBlockCopy = durationBlock;
  completionCopy = completion;
  v20 = MEMORY[0x277CCACA8];
  contentType = [migratorCopy contentType];
  v22 = [v20 stringWithFormat:@"fetch '%@' accounts and summaries", contentType];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __159__WLMigrationDataCoordinator_fetchAccountsAndSummariesFromSource_forMigrator_statistics_accountsRequestDurationBlock_summariesRequestDurationBlock_completion___block_invoke;
  v30[3] = &unk_279EB57D8;
  v30[4] = self;
  v31 = sourceCopy;
  v32 = migratorCopy;
  v33 = statisticsCopy;
  v34 = v22;
  v35 = blockCopy;
  v36 = durationBlockCopy;
  v37 = completionCopy;
  v23 = completionCopy;
  v24 = durationBlockCopy;
  v25 = v22;
  v26 = statisticsCopy;
  v27 = migratorCopy;
  v28 = sourceCopy;
  v29 = blockCopy;
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

- (void)_fetchAccountsFromSource:(id)source forMigrator:(id)migrator statistics:(id)statistics completion:(id)completion
{
  v23[1] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  migratorCopy = migrator;
  statisticsCopy = statistics;
  completionCopy = completion;
  if ([migratorCopy accountBased])
  {
    v14 = MEMORY[0x277CCACA8];
    contentType = [migratorCopy contentType];
    v16 = [v14 stringWithFormat:@"fetch '%@' accounts", contentType];

    _WLLog();
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __89__WLMigrationDataCoordinator__fetchAccountsFromSource_forMigrator_statistics_completion___block_invoke;
    v20[3] = &unk_279EB5800;
    v21 = statisticsCopy;
    v22 = completionCopy;
    [sourceCopy accountsDataForMigrator:migratorCopy completion:{v20, self, v16}];

    v17 = v21;
LABEL_5:

    goto LABEL_6;
  }

  v18 = objc_alloc_init(WLSourceDeviceAccount);
  v16 = v18;
  if (completionCopy)
  {
    v23[0] = v18;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    (*(completionCopy + 2))(completionCopy, v17, 0, 0, 0.0);
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

- (void)_fetchSummariesFromSource:(id)source forMigrator:(id)migrator account:(id)account statistics:(id)statistics completion:(id)completion
{
  migratorCopy = migrator;
  accountCopy = account;
  statisticsCopy = statistics;
  completionCopy = completion;
  v16 = MEMORY[0x277CCACA8];
  sourceCopy = source;
  contentType = [migratorCopy contentType];
  identifier = [accountCopy identifier];
  v20 = [v16 stringWithFormat:@"fetch data summaries for '%@' account '%@'", contentType, identifier];

  selfCopy = self;
  _WLLog();
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __98__WLMigrationDataCoordinator__fetchSummariesFromSource_forMigrator_account_statistics_completion___block_invoke;
  v26[3] = &unk_279EB5828;
  v27 = statisticsCopy;
  selfCopy2 = self;
  v29 = migratorCopy;
  v30 = accountCopy;
  v31 = completionCopy;
  v21 = completionCopy;
  v22 = accountCopy;
  v23 = migratorCopy;
  v24 = statisticsCopy;
  [sourceCopy summariesDataForAccount:v22 migrator:v23 completion:{v26, selfCopy, v20}];
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

- (void)downloadFileFromSource:(id)source forMigrator:(id)migrator summary:(id)summary account:(id)account segmentCompletion:(id)completion completion:(id)a8
{
  sourceCopy = source;
  migratorCopy = migrator;
  summaryCopy = summary;
  accountCopy = account;
  completionCopy = completion;
  v17 = a8;
  v18 = MEMORY[0x277CBEBC0];
  dataFilePath = [summaryCopy dataFilePath];
  v20 = [v18 fileURLWithPath:dataFilePath isDirectory:0];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v60[0] = 0;
  v22 = [defaultManager removeItemAtURL:v20 error:v60];
  v23 = v60[0];

  v43 = v23;
  if (v22)
  {
    goto LABEL_7;
  }

  domain = [v23 domain];
  if (([domain isEqualToString:*MEMORY[0x277CCA050]] & 1) == 0)
  {

LABEL_7:
    v40 = [MEMORY[0x277CCABB0] numberWithBool:v22];
    selfCopy3 = self;
    selfCopy4 = self;
    v39 = v20;
    _WLLog();

    goto LABEL_8;
  }

  code = [v23 code];
  v26 = v20;
  v27 = v17;
  v28 = migratorCopy;
  v29 = completionCopy;
  v30 = accountCopy;
  v31 = code;

  v32 = v31 == 4;
  accountCopy = v30;
  completionCopy = v29;
  migratorCopy = v28;
  v17 = v27;
  v20 = v26;
  if (!v32)
  {
    goto LABEL_7;
  }

  selfCopy3 = self;
  selfCopy4 = self;
  v39 = v20;
  _WLLog();
LABEL_8:
  if ((objc_opt_respondsToSelector() & 1) != 0 && [migratorCopy confirmItemSizeWithSourceBeforeDownloading])
  {
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __110__WLMigrationDataCoordinator_downloadFileFromSource_forMigrator_summary_account_segmentCompletion_completion___block_invoke;
    v52[3] = &unk_279EB5850;
    v53 = summaryCopy;
    v58 = completionCopy;
    v59 = v17;
    v54 = selfCopy3;
    v34 = sourceCopy;
    v55 = sourceCopy;
    v56 = migratorCopy;
    v57 = accountCopy;
    [v55 itemSizeForSummary:v53 migrator:v56 completion:v52];

    v35 = v53;
  }

  else
  {
    if ([summaryCopy downloadSegmentCount] != 1)
    {
      itemSize = [summaryCopy itemSize];
      v37 = selfCopy3;
      v34 = sourceCopy;
      [(WLMigrationDataCoordinator *)v37 _downloadFileInMultipleSegmentsFromSource:sourceCopy forMigrator:migratorCopy summary:summaryCopy account:accountCopy itemSize:itemSize segmentCompletion:completionCopy completion:v17];
      goto LABEL_15;
    }

    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __110__WLMigrationDataCoordinator_downloadFileFromSource_forMigrator_summary_account_segmentCompletion_completion___block_invoke_2;
    v49[3] = &unk_279EB5878;
    v50 = v20;
    v51 = selfCopy3;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __110__WLMigrationDataCoordinator_downloadFileFromSource_forMigrator_summary_account_segmentCompletion_completion___block_invoke_3;
    v44[3] = &unk_279EB58A0;
    v44[4] = selfCopy3;
    v45 = summaryCopy;
    v46 = migratorCopy;
    v47 = completionCopy;
    v48 = v17;
    v34 = sourceCopy;
    [sourceCopy fileForSummary:v45 migrator:v46 fileAccessor:v49 completion:v44];

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

- (void)_downloadSegmentsFromSource:(id)source forMigrator:(id)migrator startingAtByteLocation:(unint64_t)location ofSummary:(id)summary account:(id)account itemSize:(unint64_t)size toFileHandle:(id)handle segmentCompletion:(id)self0 completion:(id)self1
{
  sourceCopy = source;
  migratorCopy = migrator;
  summaryCopy = summary;
  v35 = summaryCopy;
  accountCopy = account;
  handleCopy = handle;
  completionCopy = completion;
  v37 = a11;
  v18 = +[WLMigrationDataCoordinator downloadSegmentSize];
  sizeCopy = size;
  if (v18 + location <= size)
  {
    v19 = v18;
  }

  else
  {
    v19 = size - location;
  }

  v20 = MEMORY[0x277CCACA8];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:location];
  v22 = v19;
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
  contentType = [migratorCopy contentType];
  identifier = [summaryCopy identifier];
  identifier2 = [accountCopy identifier];
  v42 = [v20 stringWithFormat:@"fetch segment from byte start %@ len %@ into file '%@' record '%@' in account '%@'", v21, v23, contentType, identifier, identifier2];

  _WLLog();
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __162__WLMigrationDataCoordinator__downloadSegmentsFromSource_forMigrator_startingAtByteLocation_ofSummary_account_itemSize_toFileHandle_segmentCompletion_completion___block_invoke;
  v43[3] = &unk_279EB58C8;
  locationCopy = location;
  v53 = v22;
  v54 = sizeCopy;
  v50 = completionCopy;
  v51 = v37;
  v44 = handleCopy;
  selfCopy = self;
  v46 = sourceCopy;
  v47 = migratorCopy;
  v48 = summaryCopy;
  v49 = accountCopy;
  v27 = accountCopy;
  v28 = v35;
  v29 = migratorCopy;
  v30 = sourceCopy;
  v31 = v37;
  v32 = completionCopy;
  v33 = handleCopy;
  [v30 dataSegmentForSummary:v28 byteRange:location migrator:v22 completion:{v29, v43, self, v42}];
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

- (void)_downloadFileInMultipleSegmentsFromSource:(id)source forMigrator:(id)migrator summary:(id)summary account:(id)account itemSize:(unint64_t)size segmentCompletion:(id)completion completion:(id)a9
{
  migratorCopy = migrator;
  summaryCopy = summary;
  v15 = a9;
  v16 = MEMORY[0x277CCAA00];
  completionCopy = completion;
  accountCopy = account;
  sourceCopy = source;
  defaultManager = [v16 defaultManager];
  dataFilePath = [summaryCopy dataFilePath];
  [defaultManager createFileAtPath:dataFilePath contents:0 attributes:0];

  dataFilePath2 = [summaryCopy dataFilePath];
  stringByDeletingLastPathComponent = [dataFilePath2 stringByDeletingLastPathComponent];

  _WLLog();
  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(dataFilePath) = [defaultManager2 fileExistsAtPath:stringByDeletingLastPathComponent];

  if ((dataFilePath & 1) == 0)
  {
    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    v54 = 0;
    v24 = [defaultManager3 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v54];
    v25 = v54;

    v41 = [MEMORY[0x277CCABB0] numberWithBool:v24];
    v43 = v25;
    selfCopy = self;
    v38 = stringByDeletingLastPathComponent;
    _WLLog();
  }

  dataFilePath3 = [summaryCopy dataFilePath];
  _WLLog();

  defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
  dataFilePath4 = [summaryCopy dataFilePath];
  v28 = [defaultManager4 createFileAtPath:dataFilePath4 contents:0 attributes:0];

  dataFilePath5 = [summaryCopy dataFilePath];
  [MEMORY[0x277CCABB0] numberWithBool:v28];
  v42 = v40 = dataFilePath5;
  _WLLog();

  v30 = MEMORY[0x277CCA9F8];
  dataFilePath6 = [summaryCopy dataFilePath];
  v32 = [v30 fileHandleForWritingAtPath:dataFilePath6];

  _WLLog();
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __138__WLMigrationDataCoordinator__downloadFileInMultipleSegmentsFromSource_forMigrator_summary_account_itemSize_segmentCompletion_completion___block_invoke;
  v48[3] = &unk_279EB58F0;
  v49 = v32;
  selfCopy2 = self;
  v51 = summaryCopy;
  v52 = migratorCopy;
  v53 = v15;
  v33 = v15;
  v34 = migratorCopy;
  v35 = summaryCopy;
  v36 = v32;
  [(WLMigrationDataCoordinator *)self _downloadSegmentsFromSource:sourceCopy forMigrator:v34 startingAtByteLocation:0 ofSummary:v35 account:accountCopy itemSize:size toFileHandle:v36 segmentCompletion:completionCopy completion:v48];
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

- (void)downloadDataFromSource:(id)source forMigrator:(id)migrator summary:(id)summary account:(id)account completion:(id)completion
{
  migratorCopy = migrator;
  summaryCopy = summary;
  completionCopy = completion;
  v15 = MEMORY[0x277CCACA8];
  accountCopy = account;
  sourceCopy = source;
  contentType = [migratorCopy contentType];
  identifier = [summaryCopy identifier];
  identifier2 = [accountCopy identifier];

  v21 = [v15 stringWithFormat:@"fetch '%@' record '%@' in account '%@'", contentType, identifier, identifier2];

  selfCopy = self;
  _WLLog();
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __92__WLMigrationDataCoordinator_downloadDataFromSource_forMigrator_summary_account_completion___block_invoke;
  v27[3] = &unk_279EB5918;
  v27[4] = self;
  v28 = v21;
  v29 = summaryCopy;
  v30 = migratorCopy;
  v31 = completionCopy;
  v22 = completionCopy;
  v23 = migratorCopy;
  v24 = summaryCopy;
  v25 = v21;
  [sourceCopy dataForSummary:v24 migrator:v23 completion:{v27, selfCopy, v21}];
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

- (void)importDataForMigrator:(id)migrator fromProvider:(id)provider forSummaries:(id)summaries summaryStart:(id)start summaryCompletion:(id)completion
{
  v53 = *MEMORY[0x277D85DE8];
  migratorCopy = migrator;
  providerCopy = provider;
  summariesCopy = summaries;
  startCopy = start;
  completionCopy = completion;
  selfCopy = self;
  if ([(WLMigrationDataCoordinator *)self stashDataLocally])
  {
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v47 = 0u;
    v33 = summariesCopy;
    v16 = summariesCopy;
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
          if (startCopy)
          {
            startCopy[2](startCopy, *(*(&v47 + 1) + 8 * i));
          }

          if (completionCopy)
          {
            completionCopy[2](completionCopy, v21, 0);
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v18);
    }

LABEL_32:
    summariesCopy = v33;
    goto LABEL_33;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v37 = migratorCopy;
    v36 = dispatch_semaphore_create(0);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v33 = summariesCopy;
    obj = summariesCopy;
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
          if (startCopy)
          {
            (startCopy)[2](startCopy, v25);
          }

          v27 = providerCopy[2](providerCopy, v25);
          if (v27 || [v25 storeDataAsFile])
          {
            account = [v25 account];
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __109__WLMigrationDataCoordinator_importDataForMigrator_fromProvider_forSummaries_summaryStart_summaryCompletion___block_invoke;
            v40[3] = &unk_279EB5940;
            v42 = completionCopy;
            v40[4] = v25;
            v29 = v36;
            v41 = v29;
            [v37 importRecordData:v27 summary:v25 account:account completion:v40];

            dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
          }

          else
          {
            v32 = selfCopy;
            _WLLog();
            if (completionCopy)
            {
              completionCopy[2](completionCopy, v25, 0);
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

    migratorCopy = v37;
    goto LABEL_32;
  }

  [migratorCopy importDataFromProvider:providerCopy forSummaries:summariesCopy summaryStart:startCopy summaryCompletion:completionCopy];
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

- (void)updateSource:(id)source withProgress:(double)progress remainingTime:(double)time completion:(id)completion
{
  sourceCopy = source;
  completionCopy = completion;
  v12 = completionCopy;
  if (self->_doneSent)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1, 0);
    }
  }

  else
  {
    v13 = vcvtmd_s64_f64(progress * 100.0) | 0x4059000000000000;
    if (progress >= 1.0)
    {
      v14 = @"update progress to status=done (percentProgress=%d, remainingTime=%f)";
    }

    else
    {
      v14 = @"update progress to status=active (percentProgress=%d, remainingTime=%f)";
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:v14, v13, *&time];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __81__WLMigrationDataCoordinator_updateSource_withProgress_remainingTime_completion___block_invoke;
    v16[3] = &unk_279EB5968;
    progressCopy = progress;
    v16[4] = self;
    v17 = v12;
    [sourceCopy updateUIWithProgress:v15 remainingTime:v16 logString:progress completion:time];
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

- (id)_recordSummaryForMigrator:(id)migrator withInfo:(id)info account:(id)account
{
  migratorCopy = migrator;
  accountCopy = account;
  v10 = [WLSourceDeviceRecordSummary summaryWithInfo:info account:accountCopy];
  storeRecordDataInDatabase = [migratorCopy storeRecordDataInDatabase];
  if ((storeRecordDataInDatabase & 1) == 0)
  {
    [v10 setStoreDataAsFile:1];
    downloadsPath = [(WLMigrationDataCoordinator *)self downloadsPath];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    uUID2 = [MEMORY[0x277CCAD78] UUID];
    uUIDString2 = [uUID2 UUIDString];

    identifier = [v10 identifier];
    lastPathComponent = [identifier lastPathComponent];
    pathExtension = [lastPathComponent pathExtension];
    lowercaseString = [pathExtension lowercaseString];

    if (lowercaseString)
    {
      v20 = [uUIDString2 stringByAppendingPathExtension:lowercaseString];

      uUIDString2 = v20;
    }

    v21 = [downloadsPath stringByAppendingPathComponent:uUIDString];
    v22 = [v21 stringByAppendingPathComponent:uUIDString2];
    [v10 setDataFilePath:v22];
  }

  if (((storeRecordDataInDatabase | !+[WLMigrationDataCoordinator _allowSegmentedDownloads](WLMigrationDataCoordinator, "_allowSegmentedDownloads")) & 1) == 0 && [v10 itemSize] && objc_msgSend(migratorCopy, "wantsSegmentedDownloads"))
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
    [migratorCopy estimateItemSizeForSummary:v10 account:accountCopy];
  }

  return v10;
}

+ (unint64_t)segmentCountForItemSize:(unint64_t)size segmentSize:(unint64_t)segmentSize
{
  if (size / segmentSize * segmentSize >= size)
  {
    return size / segmentSize;
  }

  else
  {
    return size / segmentSize + 1;
  }
}

@end
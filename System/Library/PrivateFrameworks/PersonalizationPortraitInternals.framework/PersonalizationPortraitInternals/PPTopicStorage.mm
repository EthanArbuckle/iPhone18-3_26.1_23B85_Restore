@interface PPTopicStorage
- (BOOL)decayFeedbackCountsWithDecayRate:(double)a3 shouldContinueBlock:(id)a4;
- (BOOL)deleteAllTopicFeedbackCountRecordsOlderThanDate:(id)a3;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 algorithm:(unint64_t)a4 atLeastOneTopicRemoved:(BOOL *)a5 deletedCount:(unint64_t *)a6 error:(id *)a7;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 atLeastOneTopicRemoved:(BOOL *)a4 deletedCount:(unint64_t *)a5 error:(id *)a6;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 documentIds:(id)a4 algorithm:(unint64_t)a5 atLeastOneTopicRemoved:(BOOL *)a6 deletedCount:(unint64_t *)a7 error:(id *)a8;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 documentIds:(id)a4 atLeastOneTopicRemoved:(BOOL *)a5 deletedCount:(unint64_t *)a6 error:(id *)a7;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 groupId:(id)a4 olderThanDate:(id)a5 algorithm:(unint64_t)a6 atLeastOneTopicRemoved:(BOOL *)a7 deletedCount:(unint64_t *)a8 error:(id *)a9;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 groupId:(id)a4 olderThanDate:(id)a5 atLeastOneTopicRemoved:(BOOL *)a6 deletedCount:(unint64_t *)a7 error:(id *)a8;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 groupIds:(id)a4 algorithm:(unint64_t)a5 atLeastOneTopicRemoved:(BOOL *)a6 deletedCount:(unint64_t *)a7 error:(id *)a8;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 groupIds:(id)a4 atLeastOneTopicRemoved:(BOOL *)a5 deletedCount:(unint64_t *)a6 error:(id *)a7;
- (BOOL)deleteAllTopicsOlderThanDate:(id)a3 atLeastOneTopicRemoved:(BOOL *)a4 deletedCount:(unint64_t *)a5 error:(id *)a6;
- (BOOL)deleteAllTopicsWithTopicId:(id)a3 algorithm:(unint64_t)a4 atLeastOneTopicRemoved:(BOOL *)a5 deletedCount:(unint64_t *)a6 error:(id *)a7;
- (BOOL)deleteAllTopicsWithTopicId:(id)a3 atLeastOneTopicRemoved:(BOOL *)a4 deletedCount:(unint64_t *)a5 error:(id *)a6;
- (BOOL)donateTopics:(id)a3 source:(id)a4 algorithm:(unint64_t)a5 cloudSync:(BOOL)a6 decayRate:(double)a7 sentimentScore:(double)a8 exactMatchesInSourceText:(id)a9 error:(id *)a10;
- (BOOL)iterTopicRecordsWithQuery:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)pruneOrphanedTopicFeedbackCountRecordsWithLimit:(int64_t)a3 rowOffset:(unint64_t)a4 deletedCount:(unint64_t *)a5 isComplete:(BOOL *)a6;
- (PPTopicStorage)initWithDatabase:(id)a3;
- (id)_createRecordWithStatement:(void *)a3 txnWitness:;
- (id)_deletionQueue;
- (id)sourceStats:(unint64_t)a3 withExcludedAlgorithms:(id)a4;
- (id)tempViewForSourceIdsExcludedAlgorithms:(id)a3 txnWitness:(id)a4;
- (uint64_t)_importDKEventsWithShouldContinueBlock:(uint64_t)a3 remoteEventsOnly:(uint64_t)a4 isComplete:(uint64_t)a5 shouldContinueBlock:;
- (void)_asyncProcessNewDKEventDeletions;
- (void)dealloc;
- (void)disableSyncForBundleIds:(id)a3;
- (void)exportRecordsToDKWithShouldContinueBlock:(id)a3;
- (void)fixupDKEventsWithShouldContinueBlock:(id)a3;
- (void)processNewDKEventDeletions;
@end

@implementation PPTopicStorage

- (id)tempViewForSourceIdsExcludedAlgorithms:(id)a3 txnWitness:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = [v5 allObjects];
    v9 = [v8 _pas_componentsJoinedByString:{@", "}];
    v10 = [v7 initWithFormat:@"SELECT source_id FROM tp_records WHERE algorithm NOT IN (%@)", v9];

    v11 = [PPSQLDatabase createTempViewContainingRowsFromQuery:v10 descriptiveTableName:@"topic_sourceids" txnWitness:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)sourceStats:(unint64_t)a3 withExcludedAlgorithms:(id)a4
{
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__21669;
  v19 = __Block_byref_object_dispose__21670;
  v20 = 0;
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__PPTopicStorage_sourceStats_withExcludedAlgorithms___block_invoke;
  v11[3] = &unk_278978F38;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v13 = &v15;
  v14 = a3;
  [(PPSQLDatabase *)db writeTransactionWithClient:2 block:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __53__PPTopicStorage_sourceStats_withExcludedAlgorithms___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) tempViewForSourceIdsExcludedAlgorithms:*(a1 + 40) txnWitness:v8];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"tp_records";
  }

  v5 = [*(*(a1 + 32) + 8) sourceStats:*(a1 + 56) forTableWithName:v4 txnWitness:v8];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (v3)
  {
    [PPSQLDatabase dropViewWithName:v3 txnWitness:v8];
  }
}

- (void)disableSyncForBundleIds:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    db = self->_db;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__PPTopicStorage_disableSyncForBundleIds___block_invoke;
    v6[3] = &unk_278977CD8;
    v6[4] = self;
    v7 = v4;
    [(PPSQLDatabase *)db writeTransactionWithClient:2 block:v6];
  }
}

- (void)fixupDKEventsWithShouldContinueBlock:(id)a3
{
  v4 = a3;
  if (self->_dkStorage)
  {
    do
    {
      if (!v4[2](v4))
      {
        break;
      }

      storageHelper = self->_storageHelper;
      db = self->_db;
      v7 = [(PPDKStorage *)self->_dkStorage topicWriteBatchSize];
      v8[4] = self;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __55__PPTopicStorage_fixupDKEventsWithShouldContinueBlock___block_invoke;
      v9[3] = &unk_278977C88;
      v9[4] = self;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __55__PPTopicStorage_fixupDKEventsWithShouldContinueBlock___block_invoke_2;
      v8[3] = &unk_278977CB0;
    }

    while (![(PPRecordStorageHelper *)storageHelper fixupDKEventsWithDatabase:db fixup49995922Table:@"tp_dk_fixup_49995922" batchSize:v7 shouldContinueBlock:v4 createRecordWithStatement:v9 eventForRecord:v8]);
  }
}

- (id)_createRecordWithStatement:(void *)a3 txnWitness:
{
  v5 = a2;
  if (a1)
  {
    v6 = a3;
    v7 = [v5 nonnullNSStringForColumnName:"topic_id" table:"tp_records"];
    v8 = [v5 getInt64ForColumnName:"algorithm" table:"tp_records"];
    [v5 getDoubleForColumnName:"initial_score" table:"tp_records"];
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = v9;
    }

    [v5 getDoubleForColumnName:"decay_rate" table:"tp_records"];
    v12 = *MEMORY[0x277D3A758];
    if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v13 = *MEMORY[0x277D3A758];
    }

    else
    {
      v13 = v11;
    }

    v14 = [v5 getNSStringForColumnName:"extraction_os_build" table:"tp_records"];
    v15 = [v5 getInt64AsNSNumberForColumnName:"extraction_asset_version" table:"tp_records"];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 unsignedLongValue];
    }

    else
    {
      v17 = 0xFFFFFFFFLL;
    }

    [v5 getDoubleForColumnName:"sentiment_score" table:"tp_records"];
    v19 = v18;
    v20 = [v5 getInt64ForColumnName:"is_remote" table:"tp_records"];
    v21 = [objc_alloc(MEMORY[0x277D3A530]) initWithTopicIdentifier:v7];
    v22 = [*(a1 + 40) createSourceWithStatement:v5 txnWitness:v6];

    if (v22)
    {
      if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v19 = 0.0;
      }

      v23 = objc_opt_new();
      [v23 setTopic:v21];
      [v23 setSource:v22];
      [v23 setAlgorithm:v8];
      [v23 setInitialScore:v10];
      [v23 setDecayRate:v13];
      [v23 setExtractionOsBuild:v14];
      [v23 setExtractionAssetVersion:v17];
      [v23 setIsLocal:v20 == 0];
      [v23 setSentimentScore:v19];
      v38 = objc_alloc(MEMORY[0x277D3A538]);
      v37 = [v5 getInt64ForColumnName:"impression_count" table:"tp_records"];
      v39 = v14;
      v24 = [v5 getInt64ForColumnName:"occurrences_in_source" table:"tp_records"];
      v25 = v22;
      v26 = v16;
      v27 = v7;
      v28 = [v5 getInt64ForColumnName:"algorithm_result_position" table:"tp_records"];
      v29 = v21;
      v30 = [v5 getInt64ForColumnName:"algorithm_result_count" table:"tp_records"];
      v31 = [v5 getInt64ForColumnName:"exact_match_in_source_text" table:"tp_records"] != 0;
      v32 = v28;
      v7 = v27;
      v16 = v26;
      v22 = v25;
      v33 = v30;
      v21 = v29;
      v34 = [v38 initWithImpressionCount:v37 occurrencesInSource:v24 algorithmResultPosition:v32 algorithmResultCount:v33 exactMatchInSourceText:v31];
      [v23 setMetadata:v34];

      v14 = v39;
    }

    else
    {
      v35 = pp_topics_log_handle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23224A000, v35, OS_LOG_TYPE_ERROR, "Suppressing construction of topic record due to source with bogus date.", buf, 2u);
      }

      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)exportRecordsToDKWithShouldContinueBlock:(id)a3
{
  v4 = a3;
  if (self->_dkStorage)
  {
    v30 = 0;
    v28 = v50;
    v29 = &v59;
    v27 = v43;
    v25 = v32;
    v26 = v37;
    v5 = 0x277CBE000uLL;
    do
    {
      if (!v4[2](v4))
      {
        break;
      }

      v6 = [(PPDKStorage *)self->_dkStorage topicWriteBatchSize:v25];
      v63[0] = 0;
      v63[1] = v63;
      v63[2] = 0x2020000000;
      v64 = 0;
      v61[0] = 0;
      v61[1] = v61;
      v61[2] = 0x2020000000;
      v62 = 0;
      v58[0] = 0;
      v58[1] = v58;
      v58[2] = 0x3032000000;
      v58[3] = __Block_byref_object_copy__21669;
      v59 = __Block_byref_object_dispose__21670;
      v60 = 0;
      v57[0] = 0;
      v57[1] = v57;
      v57[2] = 0x2020000000;
      v57[3] = 0;
      v56[0] = 0;
      v56[1] = v56;
      v56[2] = 0x2020000000;
      v56[3] = 0x7FFFFFFFFFFFFFFFLL;
      v7 = v5;
      v8 = *(v5 + 2840);
      v9 = objc_opt_new();
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      v50[0] = __64__PPTopicStorage__generateExportRowIdsWithBatchSize_isComplete___block_invoke;
      v50[1] = &unk_278977BE8;
      v52 = v58;
      v10 = v9;
      v51 = v10;
      v53 = v56;
      v54 = v61;
      v55 = v57;
      v11 = _Block_copy(aBlock);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v43[0] = __64__PPTopicStorage__generateExportRowIdsWithBatchSize_isComplete___block_invoke_2;
      v43[1] = &unk_278977C10;
      v45 = v63;
      v46 = v58;
      v12 = v11;
      v44 = v12;
      v47 = v57;
      v48 = v56;
      v13 = _Block_copy(v42);
      db = self->_db;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v37[0] = __64__PPTopicStorage__generateExportRowIdsWithBatchSize_isComplete___block_invoke_3;
      v37[1] = &unk_278977C60;
      v38 = @"SELECT tp.id, tp.topic_id, src.seconds_from_1970 FROM tp_records AS tp INNER JOIN sources AS src ON tp.source_id = src.id WHERE tp.topic_id NOT IN (SELECT DISTINCT(topic_id) FROM tp_records WHERE is_remote = 0 AND dk_event_id IS NOT NULL) AND tp.is_remote = 0 AND tp.is_sync_eligible = 1 ORDER BY tp.topic_id ASC";
      v15 = v13;
      v39 = v15;
      v40 = v61;
      v41 = v6;
      [(PPSQLDatabase *)db readTransactionWithClient:2 block:v36];
      if ([v10 count] < v6)
      {
        v12[2](v12);
        v30 = 1;
      }

      v16 = v39;
      v17 = v10;

      _Block_object_dispose(v56, 8);
      _Block_object_dispose(v57, 8);
      _Block_object_dispose(v58, 8);

      _Block_object_dispose(v61, 8);
      _Block_object_dispose(v63, 8);
      v5 = v7;
      v18 = *(v7 + 2840);
      v19 = objc_opt_new();
      v20 = self->_db;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v32[0] = __59__PPTopicStorage_exportRecordsToDKWithShouldContinueBlock___block_invoke;
      v32[1] = &unk_278977BC0;
      v33 = v17;
      v34 = self;
      v35 = v19;
      v21 = v19;
      v22 = v17;
      [(PPSQLDatabase *)v20 writeTransactionWithClient:2 timeoutInSeconds:v31 block:2.5];
      dkStorage = self->_dkStorage;
      v24 = [(PPDKStorage *)dkStorage topicStream];
      [(PPDKStorage *)dkStorage saveEvents:v21 stream:v24 maxRetries:-1 retryInterval:v4 shouldContinueBlock:5.0];
    }

    while ((v30 & 1) == 0);
  }
}

void __59__PPTopicStorage_exportRecordsToDKWithShouldContinueBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__PPTopicStorage_exportRecordsToDKWithShouldContinueBlock___block_invoke_2;
  v10[3] = &unk_278978CF8;
  v11 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__PPTopicStorage_exportRecordsToDKWithShouldContinueBlock___block_invoke_3;
  v7[3] = &unk_278977B98;
  v5 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v8 = v5;
  v9 = v3;
  v6 = v3;
  [v4 prepAndRunQuery:@"SELECT * FROM tp_records AS tp JOIN sources AS src ON tp.source_id = src.id WHERE tp.id IN _pas_nsarray(:rowIds)" onPrep:v10 onRow:v7 onError:0];
}

uint64_t __59__PPTopicStorage_exportRecordsToDKWithShouldContinueBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = v4;
  if (v3)
  {
    v7 = a2;
    v8 = [v7 getInt64ForColumnName:"id" table:"tp_records"];
    v9 = [(PPTopicStorage *)v3 _createRecordWithStatement:v7 txnWitness:v6];

    if (v9)
    {
      v10 = [*(v3 + 16) eventForTopicRecord:v9 sourceDeviceID:0];
      [v10 setShouldSync:1];
      v11 = [v6 db];
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __55__PPTopicStorage__populateEvents_statement_txnWitness___block_invoke;
      v20 = &unk_278978E98;
      v12 = v10;
      v21 = v12;
      v22 = v8;
      v13 = [v11 prepAndRunQuery:@"UPDATE tp_records SET dk_event_id = :uuidBlob WHERE id = :rowid" onPrep:&v17 onRow:0 onError:0];

      if (v13)
      {
        [v5 addObject:{v12, v17, v18, v19, v20}];
      }

      v14 = *MEMORY[0x277D42690];
    }

    else
    {
      v15 = pp_topics_log_handle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v17) = 0;
        _os_log_error_impl(&dword_23224A000, v15, OS_LOG_TYPE_ERROR, "failed to create topic record from statement during _populateEvents", &v17, 2u);
      }

      v14 = *MEMORY[0x277D42690];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __55__PPTopicStorage__populateEvents_statement_txnWitness___block_invoke(uint64_t a1, void *a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v8[1] = 0;
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 UUID];
  [v5 getUUIDBytes:v8];

  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v8 length:16];
  [v4 bindNamedParam:":uuidBlob" toNSData:v6];
  [v4 bindNamedParam:":rowid" toInt64:*(a1 + 40)];

  v7 = *MEMORY[0x277D85DE8];
}

void __64__PPTopicStorage__generateExportRowIdsWithBatchSize_isComplete___block_invoke(void *a1)
{
  if (*(*(a1[5] + 8) + 40))
  {
    v2 = a1[4];
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*(a1[6] + 8) + 24)];
    [v2 addObject:v3];

    ++*(*(a1[7] + 8) + 24);
    v4 = *(a1[5] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    *(*(a1[8] + 8) + 24) = 0;
    *(*(a1[6] + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
  }
}

void __64__PPTopicStorage__generateExportRowIdsWithBatchSize_isComplete___block_invoke_2(void *a1, uint64_t a2, void *a3, double a4)
{
  v14 = a3;
  ++*(*(a1[5] + 8) + 24);
  if (*(*(a1[6] + 8) + 40) && ([v14 isEqualToString:?] & 1) == 0)
  {
    (*(a1[4] + 16))();
  }

  v8 = *(a1[6] + 8);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  if (!v10)
  {
    objc_storeStrong(v9, a3);
    v12 = (*(a1[7] + 8) + 24);
    goto LABEL_8;
  }

  v11 = *(a1[7] + 8);
  v13 = *(v11 + 24);
  v12 = (v11 + 24);
  if (v13 < a4)
  {
LABEL_8:
    *v12 = a4;
    *(*(a1[8] + 8) + 24) = a2;
  }
}

void __64__PPTopicStorage__generateExportRowIdsWithBatchSize_isComplete___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__PPTopicStorage__generateExportRowIdsWithBatchSize_isComplete___block_invoke_4;
  v7[3] = &unk_278977C38;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  v10 = *(a1 + 56);
  [v3 prepAndRunQuery:v4 onPrep:0 onRow:v7 onError:0];
}

uint64_t __64__PPTopicStorage__generateExportRowIdsWithBatchSize_isComplete___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 getInt64ForColumnName:"id" table:"tp_records"];
  v4 = [v3 getNSStringForColumnName:"topic_id" table:"tp_records"];
  [v3 getDoubleForColumnName:"seconds_from_1970" table:"sources"];
  v6 = v5;

  (*(*(a1 + 32) + 16))(v6);
  LODWORD(v3) = *(*(*(a1 + 40) + 8) + 24);
  LODWORD(a1) = *(a1 + 48);
  v7 = MEMORY[0x277D42690];
  v8 = MEMORY[0x277D42698];

  if (v3 >= a1)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  return *v9;
}

- (uint64_t)_importDKEventsWithShouldContinueBlock:(uint64_t)a3 remoteEventsOnly:(uint64_t)a4 isComplete:(uint64_t)a5 shouldContinueBlock:
{
  if (result)
  {
    v6 = *(result + 32);
    v7 = *(result + 8);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __105__PPTopicStorage__importDKEventsWithShouldContinueBlock_remoteEventsOnly_isComplete_shouldContinueBlock___block_invoke;
    v8[3] = &unk_278977B48;
    v8[4] = result;
    return [v6 importDuetEventsWithLimit:a2 database:v7 client:2 remoteEventsOnly:a3 isComplete:a4 shouldContinueBlock:a5 eventImportBlock:v8];
  }

  return result;
}

void __105__PPTopicStorage__importDKEventsWithShouldContinueBlock_remoteEventsOnly_isComplete_shouldContinueBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a3;
  v9 = a2;
  if (v6)
  {
    v10 = [*(v6 + 16) topicRecordFromEvent:v7];
    v11 = v10;
    if (v10)
    {
      v12 = *(v6 + 40);
      v13 = [v10 source];
      v14 = [v12 updateOrCreateRowForSource:v13 addingRefCount:1 txnWitness:v9];

      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = pp_topics_log_handle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v17[0]) = 0;
          _os_log_error_impl(&dword_23224A000, v15, OS_LOG_TYPE_ERROR, "Suppressing topic DKEvent import due to source with bogus date.", v17, 2u);
        }
      }

      else
      {
        v16 = [v9 db];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __77__PPTopicStorage__dkEventImportToDatabaseWithEvent_eventUUIDBlob_txnWitness___block_invoke;
        v17[3] = &unk_278977B70;
        v18 = v11;
        v21 = v14;
        v19 = v7;
        v20 = v8;
        [v16 prepAndRunQuery:@"INSERT INTO tp_records (topic_id onPrep:algorithm onRow:initial_score onError:{decay_rate, sentiment_score, extraction_os_build, extraction_asset_version, source_id, is_remote, is_sync_eligible, dk_event_id, exact_match_in_source_text) VALUES (:topic_id, :algorithm, :initialScore, :decayRate, :sentimentScore, :osBuild, :assetVersion, :sourceRowId, :isRemote, 0, :uuidBlob, :exactMatchInSourceText)", v17, 0, 0}];

        v15 = v18;
      }
    }
  }
}

void __77__PPTopicStorage__dkEventImportToDatabaseWithEvent_eventUUIDBlob_txnWitness___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) topic];
  v4 = [v3 topicIdentifier];
  [v9 bindNamedParam:":topic_id" toNSString:v4];

  [v9 bindNamedParam:":algorithm" toInt64:{objc_msgSend(*(a1 + 32), "algorithm")}];
  [*(a1 + 32) initialScore];
  [v9 bindNamedParam:":initialScore" toDouble:?];
  [*(a1 + 32) decayRate];
  [v9 bindNamedParam:":decayRate" toDouble:?];
  [*(a1 + 32) sentimentScore];
  [v9 bindNamedParam:":sentimentScore" toDouble:?];
  v5 = [*(a1 + 32) extractionOsBuild];
  [v9 bindNamedParam:":osBuild" toNSString:v5];

  if ([*(a1 + 32) extractionAssetVersion] == -1)
  {
    [v9 bindNamedParamToNull:":assetVersion"];
  }

  else
  {
    [v9 bindNamedParam:":assetVersion" toInt64:{objc_msgSend(*(a1 + 32), "extractionAssetVersion")}];
  }

  [v9 bindNamedParam:":sourceRowId" toInt64:*(a1 + 56)];
  v6 = [*(a1 + 40) source];
  v7 = [v6 deviceID];
  [v9 bindNamedParam:":isRemote" toInt64:v7 != 0];

  [v9 bindNamedParam:":uuidBlob" toNSData:*(a1 + 48)];
  v8 = [*(a1 + 32) metadata];
  [v9 bindNamedParam:":exactMatchInSourceText" toInt64:{objc_msgSend(v8, "exactMatchInSourceText")}];
}

- (void)processNewDKEventDeletions
{
  [(PPTopicStorage *)self _asyncProcessNewDKEventDeletions];
  v3 = [(PPTopicStorage *)self _deletionQueue];
  dispatch_sync(v3, &__block_literal_global_317_21729);
}

- (void)_asyncProcessNewDKEventDeletions
{
  if (a1 && *(a1 + 16))
  {
    queue = [(PPTopicStorage *)a1 _deletionQueue];
    v2 = [*(a1 + 32) duetEventDeletionProcessingBlockWithDatabase:*(a1 + 8) client:2];
    dispatch_async(queue, v2);
  }
}

- (id)_deletionQueue
{
  if (a1)
  {
    if (_deletionQueue__pasOnceToken14 != -1)
    {
      dispatch_once(&_deletionQueue__pasOnceToken14, &__block_literal_global_314);
    }

    a1 = _deletionQueue__pasExprOnceResult_21731;
    v1 = vars8;
  }

  return a1;
}

void __32__PPTopicStorage__deletionQueue__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);

  v3 = dispatch_queue_create("PPTopicStorage-_DKEvent-deletion", v2);
  v4 = _deletionQueue__pasExprOnceResult_21731;
  _deletionQueue__pasExprOnceResult_21731 = v3;

  objc_autoreleasePoolPop(v0);
}

- (BOOL)pruneOrphanedTopicFeedbackCountRecordsWithLimit:(int64_t)a3 rowOffset:(unint64_t)a4 deletedCount:(unint64_t *)a5 isComplete:(BOOL *)a6
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  db = self->_db;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __100__PPTopicStorage_pruneOrphanedTopicFeedbackCountRecordsWithLimit_rowOffset_deletedCount_isComplete___block_invoke;
  v9[3] = &unk_278978F88;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = a3;
  v9[7] = a4;
  v9[8] = a5;
  v9[9] = a6;
  [(PPSQLDatabase *)db writeTransactionWithClient:2 block:v9];
  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __100__PPTopicStorage_pruneOrphanedTopicFeedbackCountRecordsWithLimit_rowOffset_deletedCount_isComplete___block_invoke(void *a1, uint64_t a2)
{
  result = [*(a1[4] + 32) pruneOrphanedFeedbackCountRecordsWithLimit:a1[6] rowOffset:a1[7] deletedCount:a1[8] txnWitness:a2 isComplete:a1[9]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (BOOL)deleteAllTopicFeedbackCountRecordsOlderThanDate:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  db = self->_db;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__PPTopicStorage_deleteAllTopicFeedbackCountRecordsOlderThanDate___block_invoke;
  v8[3] = &unk_278978F60;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  [(PPSQLDatabase *)db writeTransactionWithClient:2 block:v8];
  LOBYTE(db) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return db;
}

uint64_t __66__PPTopicStorage_deleteAllTopicFeedbackCountRecordsOlderThanDate___block_invoke(void *a1, uint64_t a2)
{
  result = [*(a1[4] + 32) deleteFeedbackCountRecordsOlderThanDate:a1[5] txnWitness:a2];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 groupId:(id)a4 olderThanDate:(id)a5 algorithm:(unint64_t)a6 atLeastOneTopicRemoved:(BOOL *)a7 deletedCount:(unint64_t *)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__21669;
  v38 = __Block_byref_object_dispose__21670;
  v39 = 0;
  db = self->_db;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __131__PPTopicStorage_deleteAllTopicsFromSourcesWithBundleId_groupId_olderThanDate_algorithm_atLeastOneTopicRemoved_deletedCount_error___block_invoke;
  v25[3] = &unk_278977AF8;
  v29 = &v40;
  v25[4] = self;
  v19 = v15;
  v26 = v19;
  v20 = v16;
  v27 = v20;
  v21 = v17;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v28 = v21;
  v30 = &v34;
  [(PPSQLDatabase *)db writeTransactionWithClient:2 block:v25];
  if (a9)
  {
    v22 = v35[5];
    if (v22)
    {
      *a9 = v22;
    }
  }

  v23 = *(v41 + 24);

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  return v23;
}

void __131__PPTopicStorage_deleteAllTopicsFromSourcesWithBundleId_groupId_olderThanDate_algorithm_atLeastOneTopicRemoved_deletedCount_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  v9 = *(a1 + 96);
  v10 = *(*(a1 + 72) + 8);
  obj = *(v10 + 40);
  v11 = [v4 deleteAllRecordsSourcedFromBundleId:v3 groupId:v5 olderThanDate:v6 algorithm:v7 txnWitness:a2 atLeastOneRecordClusterRemoved:v8 deletedCount:v9 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  *(*(*(a1 + 64) + 8) + 24) = v11;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 groupId:(id)a4 olderThanDate:(id)a5 atLeastOneTopicRemoved:(BOOL *)a6 deletedCount:(unint64_t *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__21669;
  v36 = __Block_byref_object_dispose__21670;
  v37 = 0;
  db = self->_db;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __121__PPTopicStorage_deleteAllTopicsFromSourcesWithBundleId_groupId_olderThanDate_atLeastOneTopicRemoved_deletedCount_error___block_invoke;
  v24[3] = &unk_278977AD0;
  v28 = &v38;
  v24[4] = self;
  v18 = v14;
  v25 = v18;
  v19 = v15;
  v26 = v19;
  v20 = v16;
  v30 = a6;
  v31 = a7;
  v27 = v20;
  v29 = &v32;
  [(PPSQLDatabase *)db writeTransactionWithClient:2 block:v24];
  if (a8)
  {
    v21 = v33[5];
    if (v21)
    {
      *a8 = v21;
    }
  }

  v22 = *(v39 + 24);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v22;
}

void __121__PPTopicStorage_deleteAllTopicsFromSourcesWithBundleId_groupId_olderThanDate_atLeastOneTopicRemoved_deletedCount_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 32);
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[10];
  v8 = a1[11];
  v9 = *(a1[9] + 8);
  obj = *(v9 + 40);
  v10 = [v4 deleteAllRecordsSourcedFromBundleId:v3 groupId:v5 olderThanDate:v6 txnWitness:a2 atLeastOneRecordClusterRemoved:v7 deletedCount:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  *(*(a1[8] + 8) + 24) = v10;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 algorithm:(unint64_t)a4 atLeastOneTopicRemoved:(BOOL *)a5 deletedCount:(unint64_t *)a6 error:(id *)a7
{
  v12 = a3;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__21669;
  v29 = __Block_byref_object_dispose__21670;
  v30 = 0;
  db = self->_db;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __109__PPTopicStorage_deleteAllTopicsFromSourcesWithBundleId_algorithm_atLeastOneTopicRemoved_deletedCount_error___block_invoke;
  v18[3] = &unk_278977A58;
  v20 = &v31;
  v18[4] = self;
  v14 = v12;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v19 = v14;
  v21 = &v25;
  [(PPSQLDatabase *)db writeTransactionWithClient:2 block:v18];
  if (a7)
  {
    v15 = v26[5];
    if (v15)
    {
      *a7 = v15;
    }
  }

  v16 = *(v32 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v16;
}

void __109__PPTopicStorage_deleteAllTopicsFromSourcesWithBundleId_algorithm_atLeastOneTopicRemoved_deletedCount_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 32);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(*(a1 + 56) + 8);
  obj = *(v8 + 40);
  v9 = [v4 deleteAllRecordsSourcedFromBundleId:v3 algorithm:v5 txnWitness:a2 atLeastOneRecordClusterRemoved:v6 deletedCount:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v9;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 atLeastOneTopicRemoved:(BOOL *)a4 deletedCount:(unint64_t *)a5 error:(id *)a6
{
  v10 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__21669;
  v26 = __Block_byref_object_dispose__21670;
  v27 = 0;
  db = self->_db;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __99__PPTopicStorage_deleteAllTopicsFromSourcesWithBundleId_atLeastOneTopicRemoved_deletedCount_error___block_invoke;
  v16[3] = &unk_278977A30;
  v18 = &v28;
  v16[4] = self;
  v12 = v10;
  v20 = a4;
  v21 = a5;
  v17 = v12;
  v19 = &v22;
  [(PPSQLDatabase *)db writeTransactionWithClient:2 block:v16];
  if (a6)
  {
    v13 = v23[5];
    if (v13)
    {
      *a6 = v13;
    }
  }

  v14 = *(v29 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v14;
}

void __99__PPTopicStorage_deleteAllTopicsFromSourcesWithBundleId_atLeastOneTopicRemoved_deletedCount_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 32);
  v5 = a1[8];
  v6 = a1[9];
  v7 = *(a1[7] + 8);
  obj = *(v7 + 40);
  v8 = [v4 deleteAllRecordsSourcedFromBundleId:v3 txnWitness:a2 atLeastOneRecordClusterRemoved:v5 deletedCount:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(a1[6] + 8) + 24) = v8;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 groupIds:(id)a4 algorithm:(unint64_t)a5 atLeastOneTopicRemoved:(BOOL *)a6 deletedCount:(unint64_t *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__21669;
  v34 = __Block_byref_object_dispose__21670;
  v35 = 0;
  db = self->_db;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __118__PPTopicStorage_deleteAllTopicsFromSourcesWithBundleId_groupIds_algorithm_atLeastOneTopicRemoved_deletedCount_error___block_invoke;
  v22[3] = &unk_278977AA8;
  v25 = &v36;
  v22[4] = self;
  v17 = v14;
  v23 = v17;
  v18 = v15;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v24 = v18;
  v26 = &v30;
  [(PPSQLDatabase *)db writeTransactionWithClient:2 block:v22];
  if (a8)
  {
    v19 = v31[5];
    if (v19)
    {
      *a8 = v19;
    }
  }

  v20 = *(v37 + 24);

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  return v20;
}

void __118__PPTopicStorage_deleteAllTopicsFromSourcesWithBundleId_groupIds_algorithm_atLeastOneTopicRemoved_deletedCount_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  v9 = *(*(a1 + 64) + 8);
  obj = *(v9 + 40);
  v10 = [v4 deleteAllRecordsSourcedFromBundleId:v3 groupIds:v5 algorithm:v6 txnWitness:a2 atLeastOneRecordClusterRemoved:v7 deletedCount:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v10;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 groupIds:(id)a4 atLeastOneTopicRemoved:(BOOL *)a5 deletedCount:(unint64_t *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__21669;
  v31 = __Block_byref_object_dispose__21670;
  v32 = 0;
  db = self->_db;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __108__PPTopicStorage_deleteAllTopicsFromSourcesWithBundleId_groupIds_atLeastOneTopicRemoved_deletedCount_error___block_invoke;
  v20[3] = &unk_278977A80;
  v23 = &v33;
  v20[4] = self;
  v15 = v12;
  v21 = v15;
  v16 = v13;
  v25 = a5;
  v26 = a6;
  v22 = v16;
  v24 = &v27;
  [(PPSQLDatabase *)db writeTransactionWithClient:2 block:v20];
  if (a7)
  {
    v17 = v28[5];
    if (v17)
    {
      *a7 = v17;
    }
  }

  v18 = *(v34 + 24);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v18;
}

void __108__PPTopicStorage_deleteAllTopicsFromSourcesWithBundleId_groupIds_atLeastOneTopicRemoved_deletedCount_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 32);
  v5 = a1[6];
  v6 = a1[9];
  v7 = a1[10];
  v8 = *(a1[8] + 8);
  obj = *(v8 + 40);
  v9 = [v4 deleteAllRecordsSourcedFromBundleId:v3 groupIds:v5 txnWitness:a2 atLeastOneRecordClusterRemoved:v6 deletedCount:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(a1[7] + 8) + 24) = v9;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 documentIds:(id)a4 algorithm:(unint64_t)a5 atLeastOneTopicRemoved:(BOOL *)a6 deletedCount:(unint64_t *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__21669;
  v34 = __Block_byref_object_dispose__21670;
  v35 = 0;
  db = self->_db;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __121__PPTopicStorage_deleteAllTopicsFromSourcesWithBundleId_documentIds_algorithm_atLeastOneTopicRemoved_deletedCount_error___block_invoke;
  v22[3] = &unk_278977AA8;
  v25 = &v36;
  v22[4] = self;
  v17 = v14;
  v23 = v17;
  v18 = v15;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v24 = v18;
  v26 = &v30;
  [(PPSQLDatabase *)db writeTransactionWithClient:2 block:v22];
  if (a8)
  {
    v19 = v31[5];
    if (v19)
    {
      *a8 = v19;
    }
  }

  v20 = *(v37 + 24);

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  return v20;
}

void __121__PPTopicStorage_deleteAllTopicsFromSourcesWithBundleId_documentIds_algorithm_atLeastOneTopicRemoved_deletedCount_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  v9 = *(*(a1 + 64) + 8);
  obj = *(v9 + 40);
  v10 = [v4 deleteAllRecordsSourcedFromBundleId:v3 documentIds:v5 algorithm:v6 txnWitness:a2 atLeastOneRecordClusterRemoved:v7 deletedCount:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v10;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 documentIds:(id)a4 atLeastOneTopicRemoved:(BOOL *)a5 deletedCount:(unint64_t *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__21669;
  v31 = __Block_byref_object_dispose__21670;
  v32 = 0;
  db = self->_db;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __111__PPTopicStorage_deleteAllTopicsFromSourcesWithBundleId_documentIds_atLeastOneTopicRemoved_deletedCount_error___block_invoke;
  v20[3] = &unk_278977A80;
  v23 = &v33;
  v20[4] = self;
  v15 = v12;
  v21 = v15;
  v16 = v13;
  v25 = a5;
  v26 = a6;
  v22 = v16;
  v24 = &v27;
  [(PPSQLDatabase *)db writeTransactionWithClient:2 block:v20];
  if (a7)
  {
    v17 = v28[5];
    if (v17)
    {
      *a7 = v17;
    }
  }

  v18 = *(v34 + 24);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v18;
}

void __111__PPTopicStorage_deleteAllTopicsFromSourcesWithBundleId_documentIds_atLeastOneTopicRemoved_deletedCount_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 32);
  v5 = a1[6];
  v6 = a1[9];
  v7 = a1[10];
  v8 = *(a1[8] + 8);
  obj = *(v8 + 40);
  v9 = [v4 deleteAllRecordsSourcedFromBundleId:v3 documentIds:v5 txnWitness:a2 atLeastOneRecordClusterRemoved:v6 deletedCount:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(a1[7] + 8) + 24) = v9;
}

- (BOOL)deleteAllTopicsWithTopicId:(id)a3 algorithm:(unint64_t)a4 atLeastOneTopicRemoved:(BOOL *)a5 deletedCount:(unint64_t *)a6 error:(id *)a7
{
  v12 = a3;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__21669;
  v29 = __Block_byref_object_dispose__21670;
  v30 = 0;
  db = self->_db;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __97__PPTopicStorage_deleteAllTopicsWithTopicId_algorithm_atLeastOneTopicRemoved_deletedCount_error___block_invoke;
  v18[3] = &unk_278977A58;
  v20 = &v31;
  v18[4] = self;
  v14 = v12;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v19 = v14;
  v21 = &v25;
  [(PPSQLDatabase *)db writeTransactionWithClient:2 block:v18];
  if (a7)
  {
    v15 = v26[5];
    if (v15)
    {
      *a7 = v15;
    }
  }

  v16 = *(v32 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v16;
}

void __97__PPTopicStorage_deleteAllTopicsWithTopicId_algorithm_atLeastOneTopicRemoved_deletedCount_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 32);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(*(a1 + 56) + 8);
  obj = *(v8 + 40);
  v9 = [v4 deleteAllRecordsWithClusterIdentifier:v3 algorithm:v5 txnWitness:a2 atLeastOneRecordClusterRemoved:v6 deletedCount:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v9;
}

- (BOOL)deleteAllTopicsWithTopicId:(id)a3 atLeastOneTopicRemoved:(BOOL *)a4 deletedCount:(unint64_t *)a5 error:(id *)a6
{
  v10 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__21669;
  v26 = __Block_byref_object_dispose__21670;
  v27 = 0;
  db = self->_db;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__PPTopicStorage_deleteAllTopicsWithTopicId_atLeastOneTopicRemoved_deletedCount_error___block_invoke;
  v16[3] = &unk_278977A30;
  v18 = &v28;
  v16[4] = self;
  v12 = v10;
  v20 = a4;
  v21 = a5;
  v17 = v12;
  v19 = &v22;
  [(PPSQLDatabase *)db writeTransactionWithClient:2 block:v16];
  if (a6)
  {
    v13 = v23[5];
    if (v13)
    {
      *a6 = v13;
    }
  }

  v14 = *(v29 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v14;
}

void __87__PPTopicStorage_deleteAllTopicsWithTopicId_atLeastOneTopicRemoved_deletedCount_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 32);
  v5 = a1[8];
  v6 = a1[9];
  v7 = *(a1[7] + 8);
  obj = *(v7 + 40);
  v8 = [v4 deleteAllRecordsWithClusterIdentifier:v3 txnWitness:a2 atLeastOneRecordClusterRemoved:v5 deletedCount:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(a1[6] + 8) + 24) = v8;
}

- (BOOL)deleteAllTopicsOlderThanDate:(id)a3 atLeastOneTopicRemoved:(BOOL *)a4 deletedCount:(unint64_t *)a5 error:(id *)a6
{
  v9 = a3;
  db = self->_db;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__PPTopicStorage_deleteAllTopicsOlderThanDate_atLeastOneTopicRemoved_deletedCount_error___block_invoke;
  v13[3] = &unk_278978EC0;
  v13[4] = self;
  v14 = v9;
  v15 = a4;
  v16 = a5;
  v11 = v9;
  [(PPSQLDatabase *)db writeTransactionWithClient:2 block:v13];

  return 1;
}

void __89__PPTopicStorage_deleteAllTopicsOlderThanDate_atLeastOneTopicRemoved_deletedCount_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 32);
  v5 = a2;
  v6 = [v4 rowIdsForRecordsOlderThanDate:v3 txnWitness:v5];
  [*(a1[4] + 32) deleteRecordsForRowIds:v6 txnWitness:v5 atLeastOneClusterRemoved:a1[6] deletedCount:a1[7]];
}

- (BOOL)decayFeedbackCountsWithDecayRate:(double)a3 shouldContinueBlock:(id)a4
{
  do
  {
    v7 = (*(a4 + 2))(a4, a2);
  }

  while (v7 && ![(PPRecordStorageHelper *)self->_storageHelper decayFeedbackWithDatabase:self->_db client:2 decayRate:a3]);
  return v7;
}

- (BOOL)donateTopics:(id)a3 source:(id)a4 algorithm:(unint64_t)a5 cloudSync:(BOOL)a6 decayRate:(double)a7 sentimentScore:(double)a8 exactMatchesInSourceText:(id)a9 error:(id *)a10
{
  v45[1] = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a4;
  v20 = a9;
  v21 = 1;
  if ([v18 count])
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 1;
    db = self->_db;
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __114__PPTopicStorage_donateTopics_source_algorithm_cloudSync_decayRate_sentimentScore_exactMatchesInSourceText_error___block_invoke;
    v30 = &unk_278977990;
    v35 = &v40;
    v31 = self;
    v32 = v18;
    v33 = v19;
    v36 = a5;
    v39 = a6;
    v37 = a7;
    v38 = a8;
    v34 = v20;
    [(PPSQLDatabase *)db writeTransactionWithClient:2 block:&v27];
    v21 = *(v41 + 24);
    if (a10 && (v41[3] & 1) == 0)
    {
      v23 = objc_alloc(MEMORY[0x277CCA9B8]);
      v44 = *MEMORY[0x277CCA450];
      v45[0] = @"The donated data is invalid.";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:{1, v27, v28, v29, v30, v31, v32, v33}];
      *a10 = [v23 initWithDomain:*MEMORY[0x277D3A580] code:9 userInfo:v24];

      v21 = *(v41 + 24);
    }

    _Block_object_dispose(&v40, 8);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v21 & 1;
}

void __114__PPTopicStorage_donateTopics_source_algorithm_cloudSync_decayRate_sentimentScore_exactMatchesInSourceText_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a1;
  v132 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v92 = *(a1 + 72);
  v91 = *(a1 + 96);
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  v12 = a2;
  v93 = v4;
  if (v4)
  {
    v13 = objc_opt_new();
    v14 = objc_opt_new();
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = __120__PPTopicStorage__donateTopics_source_algorithm_cloudSync_decayRate_sentimentScore_exactMatchesInSourceText_txnWitness___block_invoke;
    v97[3] = &unk_2789779B8;
    v15 = v13;
    v98 = v15;
    v99 = v11;
    v16 = v14;
    v100 = v16;
    [v9 enumerateObjectsUsingBlock:v97];
    if ([v15 count])
    {
      v88 = v16;
      v89 = v15;
      v90 = v11;
      v76 = v3;
      v17 = v15;
      v86 = v10;
      v18 = v10;
      v85 = v12;
      v19 = v12;
      if (![v17 count])
      {
        v74 = [MEMORY[0x277CCA890] currentHandler];
        [v74 handleFailureInMethod:sel__updatePreexistingTopicsMatchingTopics_source_algorithm_txnWitness_ object:v93 file:@"PPTopicStorage.m" lineNumber:457 description:{@"Invalid parameter not satisfying: %@", @"topics.count > 0"}];
      }

      v20 = +[PPSettings sharedInstance];
      [v20 weightMultiplier];
      v22 = v21;

      v23 = objc_opt_new();
      v24 = objc_opt_new();
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      obj = v17;
      v25 = [obj countByEnumeratingWithState:&v118 objects:buf count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v119;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v119 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v118 + 1) + 8 * i);
            v30 = [v29 item];
            [v23 setObject:v29 forKeyedSubscript:v30];

            v31 = [v29 item];
            v32 = [v31 topicIdentifier];
            [v24 addObject:v32];
          }

          v26 = [obj countByEnumeratingWithState:&v118 objects:buf count:16];
        }

        while (v26);
      }

      v87 = v9;

      v33 = [obj count];
      if (v33 != [v23 count])
      {
        v75 = [MEMORY[0x277CCA890] currentHandler];
        [v75 handleFailureInMethod:sel__updatePreexistingTopicsMatchingTopics_source_algorithm_txnWitness_ object:v93 file:@"PPTopicStorage.m" lineNumber:466 description:@"scored topics array contains duplicate topics"];
      }

      v34 = objc_opt_new();
      v35 = objc_alloc(MEMORY[0x277CCACA8]);
      v36 = [v18 groupId];
      v37 = @"= :groupId";
      if (!v36)
      {
        v37 = @"IS NULL";
      }

      v38 = [v35 initWithFormat:@"SELECT tp.id, tp.topic_id, tp.initial_score, tp.decay_rate, src.seconds_from_1970 FROM tp_records AS tp INNER JOIN sources AS src ON tp.source_id = src.id WHERE src.bundle_id = :bundleId AND src.group_id %@ AND src.doc_id = :docId AND tp.is_remote = 0 AND tp.algorithm = :algorithm AND tp.topic_id IN _pas_nsset(:uniqueTopicIDs)", v37];

      v96 = v19;
      v39 = [v19 db];
      v114[0] = MEMORY[0x277D85DD0];
      v114[1] = 3221225472;
      v114[2] = __85__PPTopicStorage__updatePreexistingTopicsMatchingTopics_source_algorithm_txnWitness___block_invoke;
      v114[3] = &unk_278977918;
      v40 = v18;
      v115 = v40;
      v117 = v92;
      v79 = v24;
      v116 = v79;
      *&v109 = MEMORY[0x277D85DD0];
      *(&v109 + 1) = 3221225472;
      *&v110 = __85__PPTopicStorage__updatePreexistingTopicsMatchingTopics_source_algorithm_txnWitness___block_invoke_2;
      *(&v110 + 1) = &unk_278977940;
      *&v111 = v93;
      v41 = v34;
      *(&v111 + 1) = v41;
      v83 = v40;
      *&v112 = v83;
      v113 = v22;
      v77 = v23;
      *(&v112 + 1) = v77;
      v81 = v38;
      [v39 prepAndRunQuery:v38 onPrep:v114 onRow:&v109 onError:0];

      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v42 = v41;
      v43 = [v42 countByEnumeratingWithState:&v105 objects:v122 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v106;
        do
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v106 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = *(*(&v105 + 1) + 8 * j);
            v48 = [v96 db];
            v104[0] = MEMORY[0x277D85DD0];
            v104[1] = 3221225472;
            v104[2] = __85__PPTopicStorage__updatePreexistingTopicsMatchingTopics_source_algorithm_txnWitness___block_invoke_3;
            v104[3] = &unk_278978CF8;
            v104[4] = v47;
            [v48 prepAndRunQuery:@"UPDATE tp_records SET initial_score = :initialScore onPrep:impression_count = impression_count + 1 WHERE id = :rowId" onRow:v104 onError:{0, 0}];
          }

          v44 = [v42 countByEnumeratingWithState:&v105 objects:v122 count:16];
        }

        while (v44);
      }

      v49 = objc_opt_new();
      v101[0] = MEMORY[0x277D85DD0];
      v101[1] = 3221225472;
      v101[2] = __85__PPTopicStorage__updatePreexistingTopicsMatchingTopics_source_algorithm_txnWitness___block_invoke_4;
      v101[3] = &unk_278977968;
      v102 = v77;
      v50 = v49;
      v103 = v50;
      v51 = v77;
      [obj enumerateObjectsUsingBlock:v101];
      v52 = v103;
      v53 = v50;

      v54 = MEMORY[0x277CCAC30];
      *&v118 = MEMORY[0x277D85DD0];
      *(&v118 + 1) = 3221225472;
      *&v119 = __120__PPTopicStorage__donateTopics_source_algorithm_cloudSync_decayRate_sentimentScore_exactMatchesInSourceText_txnWitness___block_invoke_295;
      *(&v119 + 1) = &unk_2789779E0;
      v55 = v53;
      *&v120 = v55;
      [v54 predicateWithBlock:&v118];
      v82 = v16 = v88;
      v56 = [v88 filteredArrayUsingPredicate:?];
      v80 = v56;
      if ([v56 count])
      {
        [*(v93 + 32) truncateRecordsByDroppingOldestMakingRoomForCount:objc_msgSend(v56 txnWitness:{"count"), v96}];
        v57 = [*(v93 + 40) updateOrCreateRowForSource:v83 addingRefCount:objc_msgSend(v56 txnWitness:{"count"), v96}];
        v58 = v57 != 0x7FFFFFFFFFFFFFFFLL;
        v15 = v89;
        v11 = v90;
        if (v57 == 0x7FFFFFFFFFFFFFFFLL)
        {
          obja = pp_topics_log_handle();
          v12 = v85;
          v10 = v86;
          if (os_log_type_enabled(obja, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_23224A000, obja, OS_LOG_TYPE_ERROR, "Suppressing topic donation due to source with bogus date.", buf, 2u);
          }

          v3 = v76;
        }

        else
        {
          v59 = v57;
          v60 = +[PPSettings sharedInstance];
          [v60 weightMultiplier];
          v62 = v61;

          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          obja = v56;
          v63 = [obja countByEnumeratingWithState:&v109 objects:buf count:16];
          if (v63)
          {
            v64 = v63;
            v78 = v58;
            v84 = v55;
            v65 = *v110;
            do
            {
              for (k = 0; k != v64; ++k)
              {
                if (*v110 != v65)
                {
                  objc_enumerationMutation(obja);
                }

                v67 = *(*(&v109 + 1) + 8 * k);
                v68 = [v67 first];
                v69 = [v67 second];
                v70 = [v69 BOOLValue];

                v71 = [v96 db];
                v122[0] = MEMORY[0x277D85DD0];
                v122[1] = 3221225472;
                v122[2] = __120__PPTopicStorage__donateTopics_source_algorithm_cloudSync_decayRate_sentimentScore_exactMatchesInSourceText_txnWitness___block_invoke_300;
                v122[3] = &unk_278977A08;
                v122[4] = v93;
                v123 = v68;
                v124 = v92;
                v129 = v91;
                v125 = v5;
                v126 = v6;
                v130 = v70;
                v127 = v62;
                v128 = v59;
                v72 = v68;
                [v71 prepAndRunQuery:@"INSERT INTO tp_records (topic_id onPrep:algorithm onRow:initial_score onError:{decay_rate, sentiment_score, extraction_os_build, extraction_asset_version, source_id, is_remote, is_sync_eligible, occurrences_in_source, algorithm_result_position, algorithm_result_count, exact_match_in_source_text) VALUES (:topic_id, :algorithm, :initialScore, :decayRate, :sentimentScore, :osBuild, :assetVersion, :sourceRowId, 0, :shouldSync, :occurrencesInSource, :algorithmResultPosition, :algorithmResultCount, :exactMatchInSourceText)", v122, 0, 0}];
              }

              v64 = [obja countByEnumeratingWithState:&v109 objects:buf count:16];
            }

            while (v64);
            v3 = v76;
            v12 = v85;
            v10 = v86;
            v15 = v89;
            v11 = v90;
            v16 = v88;
            v55 = v84;
            v58 = v78;
          }

          else
          {
            v3 = v76;
            v12 = v85;
            v10 = v86;
          }
        }

        v9 = v87;
      }

      else
      {
        v58 = 1;
        v3 = v76;
        v10 = v86;
        v9 = v87;
        v15 = v89;
        v11 = v90;
        v12 = v85;
      }
    }

    else
    {
      v55 = pp_topics_log_handle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v55, OS_LOG_TYPE_DEFAULT, "PPTopicStorage: suppressed all donations as none were non-QID.", buf, 2u);
      }

      v58 = 1;
    }
  }

  else
  {
    v58 = 0;
  }

  *(*(*(v3 + 64) + 8) + 24) = v58;
  v73 = *MEMORY[0x277D85DE8];
}

void __120__PPTopicStorage__donateTopics_source_algorithm_cloudSync_decayRate_sentimentScore_exactMatchesInSourceText_txnWitness___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  v5 = [v14 scoredTopic];
  v6 = [v5 item];
  v7 = [v6 topicIdentifier];
  v8 = [v7 hasPrefix:@"Q"];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [v14 scoredTopic];
    [v9 addObject:v10];

    v11 = objc_alloc(MEMORY[0x277D42648]);
    v12 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    v13 = [v11 initWithFirst:v14 second:v12];

    [*(a1 + 48) addObject:v13];
  }
}

uint64_t __120__PPTopicStorage__donateTopics_source_algorithm_cloudSync_decayRate_sentimentScore_exactMatchesInSourceText_txnWitness___block_invoke_295(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 first];
  v4 = [v3 scoredTopic];
  v5 = [v4 item];
  v6 = [v2 containsObject:v5];

  return v6;
}

void __120__PPTopicStorage__donateTopics_source_algorithm_cloudSync_decayRate_sentimentScore_exactMatchesInSourceText_txnWitness___block_invoke_300(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 scoredTopic];
  v25 = *(a1 + 88);
  v26 = v6;
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v9 = *(a1 + 48);
  v24 = [*(a1 + 40) occurrencesInSource];
  v10 = [*(a1 + 40) scoredTopic];
  v23 = [v10 resultPosition];
  v11 = [*(a1 + 40) scoredTopic];
  v22 = [v11 resultCount];
  if (v4)
  {
    v12 = *(a1 + 80);
    v13 = *(a1 + 72);
    v21 = *(a1 + 89);
    v14 = v26;
    v15 = v5;
    v16 = [v14 item];
    v17 = [v16 topicIdentifier];
    [v15 bindNamedParam:":topic_id" toNSString:v17];

    [v15 bindNamedParam:":algorithm" toInt64:v9];
    [v14 score];
    v19 = v18;

    [v15 bindNamedParam:":initialScore" toDouble:v19 * v13];
    [v15 bindNamedParam:":decayRate" toDouble:v8];
    [v15 bindNamedParam:":sentimentScore" toDouble:v7];
    v20 = [MEMORY[0x277D3A578] osBuild];
    [v15 bindNamedParam:":osBuild" toNSString:v20];
    [v15 bindNamedParam:":assetVersion" toInt64:{objc_msgSend(*(v4 + 48), "treatmentsHash")}];
    [v15 bindNamedParam:":sourceRowId" toInt64:v12];
    [v15 bindNamedParam:":shouldSync" toInt64:v25];
    [v15 bindNamedParam:":occurrencesInSource" toInt64:v24];
    [v15 bindNamedParam:":algorithmResultPosition" toInt64:v23];
    [v15 bindNamedParam:":algorithmResultCount" toInt64:v22];
    [v15 bindNamedParam:":exactMatchInSourceText" toInt64:v21];
  }
}

void __85__PPTopicStorage__updatePreexistingTopicsMatchingTopics_source_algorithm_txnWitness___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) bundleId];
  [v7 bindNamedParam:":bundleId" toNSString:v3];

  v4 = [*(a1 + 32) groupId];

  if (v4)
  {
    v5 = [*(a1 + 32) groupId];
    [v7 bindNamedParam:":groupId" toNSString:v5];
  }

  v6 = [*(a1 + 32) documentId];
  [v7 bindNamedParam:":docId" toNSString:v6];

  [v7 bindNamedParam:":algorithm" toInt64:*(a1 + 48)];
  [v7 bindNamedParam:":uniqueTopicIDs" toNSSet:*(a1 + 40)];
}

uint64_t __85__PPTopicStorage__updatePreexistingTopicsMatchingTopics_source_algorithm_txnWitness___block_invoke_2(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = a2;
  v9 = v5;
  v10 = v6;
  if (!v3)
  {
    v37 = 0;
    goto LABEL_24;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = [v8 getInt64ForColumnName:"id" table:"tp_records"];
  v13 = [v8 nonnullNSStringForColumnName:"topic_id" table:"tp_records"];
  [v8 getDoubleForColumnName:"initial_score" table:"tp_records"];
  v15 = 0.0;
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v14;
  }

  [v8 getDoubleForColumnName:"decay_rate" table:"tp_records"];
  v18 = *MEMORY[0x277D3A758];
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v19 = *MEMORY[0x277D3A758];
  }

  else
  {
    v19 = v17;
  }

  [v8 getDoubleForColumnName:"seconds_from_1970" table:"sources"];
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v15 = v20;
  }

  v21 = [objc_alloc(MEMORY[0x277D3A530]) initWithTopicIdentifier:v13];
  v22 = [v10 objectForKeyedSubscript:v21];
  if (v22)
  {
    v40 = v12;
    [v10 setObject:0 forKeyedSubscript:v21];
    v23 = [v9 bundleId];
    v41 = v11;
    if (_shouldSuppressRepeatedImpressions___pasOnceToken10 != -1)
    {
      dispatch_once(&_shouldSuppressRepeatedImpressions___pasOnceToken10, &__block_literal_global_250);
    }

    v24 = [_shouldSuppressRepeatedImpressions___pasExprOnceResult_21767 containsObject:v23];

    if (v24)
    {
      v25 = pp_topics_log_handle();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
LABEL_22:

        v11 = v41;
        goto LABEL_23;
      }

      v26 = [v9 bundleId];
      *buf = 138412290;
      v43 = v26;
      _os_log_debug_impl(&dword_23224A000, v25, OS_LOG_TYPE_DEBUG, "Suppressing repeated impressions sourced from %@.", buf, 0xCu);
    }

    else
    {
      v27 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v15];
      v28 = [v9 date];
      v29 = v27;
      objc_opt_self();
      [v28 timeIntervalSinceDate:v29];
      v31 = v30;

      if (v31 >= 0.0)
      {
        v32 = -v19;
        if (v19 < 0.0)
        {
          v32 = -0.0;
        }

        v16 = exp(v32 * v31) * v16;
      }

      [v22 score];
      v34 = v16 * 0.5 + v33 * v4;
      v35 = MEMORY[0x277D42648];
      v25 = [MEMORY[0x277CCABB0] numberWithLongLong:v40];
      v26 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
      v36 = [v35 tupleWithFirst:v25 second:v26];
      [v7 addObject:v36];
    }

    goto LABEL_22;
  }

LABEL_23:
  v37 = *MEMORY[0x277D42690];

  objc_autoreleasePoolPop(v11);
LABEL_24:

  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

void __85__PPTopicStorage__updatePreexistingTopicsMatchingTopics_source_algorithm_txnWitness___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 second];
  [v5 doubleValue];
  [v4 bindNamedParam:":initialScore" toDouble:?];

  v6 = [*(a1 + 32) first];
  [v4 bindNamedParam:":rowId" toInt64:{objc_msgSend(v6, "longLongValue")}];
}

void __85__PPTopicStorage__updatePreexistingTopicsMatchingTopics_source_algorithm_txnWitness___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 item];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [v9 item];
    [v7 addObject:v8];
  }
}

void __53__PPTopicStorage__shouldSuppressRepeatedImpressions___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = [v2 initWithObjects:{*MEMORY[0x277D3A620], *MEMORY[0x277D3A630], 0}];
  objc_autoreleasePoolPop(v1);
  v4 = _shouldSuppressRepeatedImpressions___pasExprOnceResult_21767;
  _shouldSuppressRepeatedImpressions___pasExprOnceResult_21767 = v3;

  objc_autoreleasePoolPop(v0);
}

- (BOOL)iterTopicRecordsWithQuery:(id)a3 error:(id *)a4 block:(id)a5
{
  v134 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v86 = a5;
  context = objc_autoreleasePoolPush();
  if ([v7 limit])
  {
    v8 = @"INNER JOIN";
    v9 = @"ORDER BY topic_id ASC, src.seconds_from_1970 DESC";
    if ([v7 orderByIdentifier])
    {
      v84 = @"ORDER BY topic_id ASC, src.seconds_from_1970 DESC";
    }

    else
    {
      v11 = [v7 removeNearDuplicates];
      if (!v11)
      {
        v9 = @"ORDER BY src.seconds_from_1970 DESC";
      }

      v84 = v9;
      if (!v11)
      {
        v8 = @"CROSS JOIN";
      }
    }

    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT tp.id, src.id FROM sources AS src %@ tp_records AS tp ON tp.source_id = src.id WHERE 1 ", v8];
    v13 = objc_opt_new();
    v14 = [v7 fromDate];

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      if ([v7 filterByRelevanceDate])
      {
        v16 = @"AND COALESCE(src.relevance_seconds_from_1970, src.seconds_from_1970) >= :fromDateEpoch ";
      }

      else
      {
        v16 = @"AND src.seconds_from_1970 >= :fromDateEpoch ";
      }

      v17 = [v12 stringByAppendingString:v16];

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke;
      aBlock[3] = &unk_278978CF8;
      v131 = v7;
      v18 = _Block_copy(aBlock);
      [v13 addObject:v18];

      objc_autoreleasePoolPop(v15);
      v12 = v17;
    }

    v19 = [v7 toDate];

    if (v19)
    {
      v20 = objc_autoreleasePoolPush();
      if ([v7 filterByRelevanceDate])
      {
        v21 = @"AND COALESCE(src.relevance_seconds_from_1970, src.seconds_from_1970) <= :toDateEpoch ";
      }

      else
      {
        v21 = @"AND src.seconds_from_1970 <= :toDateEpoch ";
      }

      v22 = [v12 stringByAppendingString:v21];

      v128[0] = MEMORY[0x277D85DD0];
      v128[1] = 3221225472;
      v128[2] = __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_2;
      v128[3] = &unk_278978CF8;
      v129 = v7;
      v23 = _Block_copy(v128);
      [v13 addObject:v23];

      objc_autoreleasePoolPop(v20);
      v12 = v22;
    }

    if ([v7 deviceFilter])
    {
      v24 = objc_autoreleasePoolPush();
      v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"AND tp.is_remote = %u ", objc_msgSend(v7, "deviceFilter") == 2];
      v26 = [v12 stringByAppendingString:v25];

      objc_autoreleasePoolPop(v24);
      v12 = v26;
    }

    if ([v7 excludeWithoutSentiment])
    {
      v27 = objc_autoreleasePoolPush();
      v28 = [v12 stringByAppendingString:@"AND tp.sentiment_score != 0 "];

      objc_autoreleasePoolPop(v27);
      v12 = v28;
    }

    v29 = objc_autoreleasePoolPush();
    v30 = [v7 matchingDocumentIds];
    if ([v30 count])
    {
      v31 = [v12 stringByAppendingString:@"AND src.doc_id IN _pas_nsset(:matchingDocumentIds) "];

      v126[0] = MEMORY[0x277D85DD0];
      v126[1] = 3221225472;
      v126[2] = __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_3;
      v126[3] = &unk_278978CF8;
      v127 = v30;
      v32 = _Block_copy(v126);
      [v13 addObject:v32];

      v12 = v31;
    }

    objc_autoreleasePoolPop(v29);
    v33 = objc_autoreleasePoolPush();
    v34 = [v7 matchingSourceBundleIds];
    if ([v34 count])
    {
      v35 = [v12 stringByAppendingString:@"AND src.bundle_id IN _pas_nsset(:matchingSourceBundleIds) "];

      v124[0] = MEMORY[0x277D85DD0];
      v124[1] = 3221225472;
      v124[2] = __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_4;
      v124[3] = &unk_278978CF8;
      v125 = v34;
      v36 = _Block_copy(v124);
      [v13 addObject:v36];

      v12 = v35;
    }

    objc_autoreleasePoolPop(v33);
    v37 = objc_autoreleasePoolPush();
    v38 = [v7 excludingSourceBundleIds];
    if ([v38 count])
    {
      v39 = [v12 stringByAppendingString:@"AND src.bundle_id NOT IN _pas_nsset(:excludingSourceBundleIds) "];

      v122[0] = MEMORY[0x277D85DD0];
      v122[1] = 3221225472;
      v122[2] = __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_5;
      v122[3] = &unk_278978CF8;
      v123 = v38;
      v40 = _Block_copy(v122);
      [v13 addObject:v40];

      v12 = v39;
    }

    objc_autoreleasePoolPop(v37);
    v41 = objc_autoreleasePoolPush();
    v42 = [v7 matchingContactHandle];
    v43 = [v42 length] == 0;

    if (!v43)
    {
      v44 = [[PPContactStorage alloc] initWithDatabase:self->_db foundInAppsHarvestStoreGetter:&__block_literal_global_21806];
      v45 = [v7 matchingContactHandle];
      v46 = [(PPContactStorage *)v44 sourcesForContactHandle:v45];

      v47 = [(PPSourceStorage *)self->_sourceStorage whereSourceIdInSubclauseWithSourceIds:v46 tableNameAlias:@"src" binders:v13];
      v48 = [v12 stringByAppendingString:v47];

      v12 = v48;
    }

    objc_autoreleasePoolPop(v41);
    v49 = objc_autoreleasePoolPush();
    v50 = [v7 matchingGroupIds];
    if ([v50 count])
    {
      v51 = [v12 stringByAppendingString:@"AND src.group_id IN _pas_nsset(:matchingGroupIds) "];

      v120[0] = MEMORY[0x277D85DD0];
      v120[1] = 3221225472;
      v120[2] = __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_7;
      v120[3] = &unk_278978CF8;
      v121 = v50;
      v52 = _Block_copy(v120);
      [v13 addObject:v52];

      v12 = v51;
    }

    objc_autoreleasePoolPop(v49);
    v53 = objc_autoreleasePoolPush();
    v54 = [v7 matchingAlgorithms];
    if ([v54 count])
    {
      v55 = [v12 stringByAppendingString:@"AND tp.algorithm IN _pas_nsset(:matchingAlgorithms) "];

      v118[0] = MEMORY[0x277D85DD0];
      v118[1] = 3221225472;
      v118[2] = __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_8;
      v118[3] = &unk_278978CF8;
      v119 = v54;
      v56 = _Block_copy(v118);
      [v13 addObject:v56];

      v12 = v55;
    }

    objc_autoreleasePoolPop(v53);
    v57 = objc_autoreleasePoolPush();
    v58 = [v7 excludingAlgorithms];
    if ([v58 count])
    {
      v59 = [v12 stringByAppendingString:@"AND tp.algorithm NOT IN _pas_nsset(:excludingAlgorithms) "];

      v116[0] = MEMORY[0x277D85DD0];
      v116[1] = 3221225472;
      v116[2] = __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_9;
      v116[3] = &unk_278978CF8;
      v117 = v58;
      v60 = _Block_copy(v116);
      [v13 addObject:v60];

      v12 = v59;
    }

    objc_autoreleasePoolPop(v57);
    v61 = objc_autoreleasePoolPush();
    v62 = [v7 matchingTopicIds];
    if ([v62 count])
    {
      v63 = [v12 stringByAppendingString:@"AND tp.topic_id IN _pas_nsset(:matchingTopicIds) "];

      v114[0] = MEMORY[0x277D85DD0];
      v114[1] = 3221225472;
      v114[2] = __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_10;
      v114[3] = &unk_278978CF8;
      v115 = v62;
      v64 = _Block_copy(v114);
      [v13 addObject:v64];

      v12 = v63;
    }

    objc_autoreleasePoolPop(v61);
    v65 = objc_autoreleasePoolPush();
    v66 = [v7 matchingTopicTrie];

    if (v66)
    {
      trialWrapper = self->_trialWrapper;
      v68 = [v7 matchingTopicTrie];
      v69 = [(PPTrialWrapper *)trialWrapper trieForFactorName:v68 namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];

      if (!v69)
      {
        v80 = pp_default_log_handle();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
        {
          *v106 = 0;
          _os_log_fault_impl(&dword_23224A000, v80, OS_LOG_TYPE_FAULT, "Failed to load topic trie, stops this query.", v106, 2u);
        }

        objc_autoreleasePoolPop(v65);
        v10 = 0;
        goto LABEL_50;
      }

      v70 = [v12 stringByAppendingString:{@"AND _pas_block(:matchingTopicTrieBlock, tp.topic_id) "}];

      v112[0] = MEMORY[0x277D85DD0];
      v112[1] = 3221225472;
      v112[2] = __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_204;
      v112[3] = &unk_278978CF8;
      v113 = v69;
      v71 = v69;
      v72 = _Block_copy(v112);
      [v13 addObject:v72];

      v12 = v70;
    }

    objc_autoreleasePoolPop(v65);
    v73 = objc_autoreleasePoolPush();
    v74 = [v12 stringByAppendingString:v84];

    objc_autoreleasePoolPop(v73);
    *v106 = 0;
    v107 = v106;
    v108 = 0x3032000000;
    v109 = __Block_byref_object_copy__21669;
    v110 = __Block_byref_object_dispose__21670;
    v111 = 0;
    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_209;
    v105[3] = &unk_278977878;
    v105[4] = v106;
    v75 = _Block_copy(v105);
    v104[0] = 0;
    v104[1] = v104;
    v104[2] = 0x2020000000;
    v104[3] = 0;
    v98 = 0;
    v99 = &v98;
    v100 = 0x3032000000;
    v101 = __Block_byref_object_copy__21669;
    v102 = __Block_byref_object_dispose__21670;
    v103 = 0;
    db = self->_db;
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_2_211;
    v88[3] = &unk_2789778C8;
    v12 = v74;
    v89 = v12;
    v90 = v13;
    v95 = v104;
    v91 = v7;
    v92 = self;
    v96 = &v98;
    v77 = v75;
    v93 = v77;
    v97 = v106;
    v94 = v86;
    [(PPSQLDatabase *)db readTransactionWithClient:2 block:v88];
    if (v99[5])
    {
      v78 = pp_default_log_handle();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
      {
        v83 = [v99[5] count];
        *buf = 134217984;
        v133 = v83;
        _os_log_fault_impl(&dword_23224A000, v78, OS_LOG_TYPE_FAULT, "iterTopicRecordsWithQuery encountered %tu sources which did not validate; deleting associated topic records now.", buf, 0xCu);
      }

      v79 = self->_db;
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_219;
      v87[3] = &unk_278978DE0;
      v87[4] = self;
      v87[5] = &v98;
      [(PPSQLDatabase *)v79 writeTransactionWithClient:2 block:v87];
    }

    _Block_object_dispose(&v98, 8);
    _Block_object_dispose(v104, 8);

    _Block_object_dispose(v106, 8);
    v10 = 1;
LABEL_50:

    goto LABEL_51;
  }

  v10 = 1;
LABEL_51:
  objc_autoreleasePoolPop(context);

  v81 = *MEMORY[0x277D85DE8];
  return v10;
}

void __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 fromDate];
  [v4 timeIntervalSince1970];
  [v3 bindNamedParam:":fromDateEpoch" toDouble:?];
}

void __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 toDate];
  [v4 timeIntervalSince1970];
  [v3 bindNamedParam:":toDateEpoch" toDouble:?];
}

void __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_204(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_2_206;
  v3[3] = &unk_278977850;
  v4 = *(a1 + 32);
  [a2 bindNamedParam:":matchingTopicTrieBlock" toBlock:v3];
}

BOOL __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_209(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (v3)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    if (v5)
    {
      v6 = [v5 algorithm];
      if (v6 != [v3 algorithm])
      {
        goto LABEL_7;
      }

      v7 = [*(*(*(a1 + 32) + 8) + 40) topic];
      v8 = [v3 topic];
      v9 = [v7 isEqualToTopic:v8];

      if (!v9)
      {
        goto LABEL_7;
      }

      v10 = [*(*(*(a1 + 32) + 8) + 40) source];
      v11 = [v10 bundleId];
      v12 = [v3 source];
      v13 = [v12 bundleId];
      v14 = [v11 isEqualToString:v13];

      if (v14)
      {
        v15 = [v3 source];
        v16 = [v15 date];
        v17 = [*(*(*(a1 + 32) + 8) + 40) source];
        v18 = [v17 date];
        [v16 timeIntervalSinceDate:v18];
        v4 = fabs(v19) <= 1.0;
      }

      else
      {
LABEL_7:
        v4 = 0;
      }
    }
  }

  return v4;
}

void __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_2_211(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_3_212;
  v23[3] = &unk_278978CF8;
  v5 = *(a1 + 32);
  v24 = *(a1 + 40);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_4_213;
  v16[3] = &unk_2789778A0;
  v14 = *(a1 + 80);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v17 = v6;
  v18 = v7;
  v19 = v3;
  *&v9 = v14;
  *(&v9 + 1) = *(a1 + 88);
  v15 = v9;
  v10 = v8;
  v22 = *(a1 + 96);
  v11 = *(a1 + 72);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v20 = v12;
  v21 = v15;
  v13 = v3;
  [v4 prepAndRunQuery:v5 onPrep:v23 onRow:v16 onError:0];
}

void __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_219(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 db];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_2_224;
  v12[3] = &unk_278978D90;
  v12[4] = *(a1 + 40);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_3_226;
  v10 = &unk_278978DB8;
  v11 = v4;
  v6 = v4;
  [v5 prepAndRunQuery:@"SELECT id FROM tp_records WHERE source_id IN _pas_nsset(:rowidsForSourcesContainingBadData)" onPrep:v12 onRow:&v7 onError:0];

  [*(*(a1 + 32) + 32) deleteRecordsForRowIds:v6 txnWitness:v3 atLeastOneClusterRemoved:0 deletedCount:{0, v7, v8, v9, v10}];
}

void __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_3_212(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_4_213(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(*(*(a1 + 72) + 8) + 24);
  if (v5 != [*(a1 + 32) limit])
  {
    v7 = [v3 getInt64ForColumnName:"id" table:"tp_records"];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = v9;
    if (v8)
    {
      v32 = 0;
      v33 = &v32;
      v34 = 0x3032000000;
      v35 = __Block_byref_object_copy__21669;
      v36 = __Block_byref_object_dispose__21670;
      v37 = 0;
      v11 = [v9 db];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __47__PPTopicStorage__loadRecordWithId_txnWitness___block_invoke;
      v31[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
      v31[4] = v7;
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __47__PPTopicStorage__loadRecordWithId_txnWitness___block_invoke_2;
      v27 = &unk_2789778F0;
      v30 = &v32;
      v28 = v8;
      v12 = v10;
      v29 = v12;
      [v11 prepAndRunQuery:@"SELECT * FROM tp_records AS tp CROSS JOIN sources AS src ON tp.source_id = src.id WHERE tp.id = :recordId LIMIT 1" onPrep:v31 onRow:&v24 onError:0];

      v13 = v33[5];
      v14 = v13;

      _Block_object_dispose(&v32, 8);
      if (v14)
      {
        if (![*(a1 + 32) removeNearDuplicates] || !(*(*(a1 + 56) + 16))())
        {
          objc_storeStrong((*(*(a1 + 88) + 8) + 40), v13);
          LOBYTE(v24) = 0;
          (*(*(a1 + 64) + 16))();
          ++*(*(*(a1 + 72) + 8) + 24);
          v15 = MEMORY[0x277D42698];
          if ((v24 & 1) == 0)
          {
            v16 = *(*(*(a1 + 72) + 8) + 24);
            if (v16 != [*(a1 + 32) limit])
            {
              v15 = MEMORY[0x277D42690];
            }
          }

          v6 = *v15;
          goto LABEL_16;
        }

LABEL_15:
        v6 = *MEMORY[0x277D42690];
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
    }

    if (!*(*(*(a1 + 80) + 8) + 40))
    {
      v17 = objc_opt_new();
      v18 = *(*(a1 + 80) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }

    v20 = [v3 getInt64ForColumnName:"id" table:{"sources", v24, v25, v26, v27, v28}];
    v21 = *(*(*(a1 + 80) + 8) + 40);
    v22 = [MEMORY[0x277CCABB0] numberWithLongLong:v20];
    [v21 addObject:v22];

    v14 = 0;
    goto LABEL_15;
  }

  v6 = *MEMORY[0x277D42698];
LABEL_17:
  objc_autoreleasePoolPop(v4);

  return v6;
}

uint64_t __47__PPTopicStorage__loadRecordWithId_txnWitness___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [(PPTopicStorage *)*(a1 + 32) _createRecordWithStatement:a2 txnWitness:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42698];
}

id __56__PPTopicStorage_iterTopicRecordsWithQuery_error_block___block_invoke_2_206(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  v4 = [a2 objectAtIndexedSubscript:0];
  v5 = [v2 numberWithUnsignedInt:{objc_msgSend(v3, "payloadForString:", v4)}];

  return v5;
}

- (void)dealloc
{
  [(PPDKStorage *)self->_dkStorage removeObserver:self->_deletionObserver];
  v3.receiver = self;
  v3.super_class = PPTopicStorage;
  [(PPTopicStorage *)&v3 dealloc];
}

- (PPTopicStorage)initWithDatabase:(id)a3
{
  v4 = a3;
  v5 = [PPTrialWrapper alloc];
  v6 = objc_opt_new();
  v7 = +[PPTrialWrapper sharedTrialClient];
  v8 = [(PPTrialWrapper *)v5 initWithSettings:v6 database:v4 trialClient:v7];

  v9 = +[PPDKStorage sharedInstance];
  v10 = [(PPTopicStorage *)self initWithDatabase:v4 maxRecords:15000 dkStorage:v9 loadEmptyDatabaseFromDK:1 trialWrapper:v8];

  return v10;
}

void __93__PPTopicStorage_initWithDatabase_maxRecords_dkStorage_loadEmptyDatabaseFromDK_trialWrapper___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PPTopicStorage *)WeakRetained _asyncProcessNewDKEventDeletions];
}

void __63__PPTopicStorage__asyncPopulateDatabaseFromDKEventsIfNecessary__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) handleWithClient:2];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"tp_records"];
  v4 = [v2 numberOfRowsInTable:v3];

  if (v4 < 0)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PPTopicStorage.m" lineNumber:1030 description:@"negative record count in tp_records"];

LABEL_3:
    v5 = pp_topics_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEBUG, "Skipping initial _DKEvent topic import because database is nonempty.", buf, 2u);
    }

    goto LABEL_20;
  }

  if (v4)
  {
    goto LABEL_3;
  }

  v6 = pp_topics_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "Database is empty; trying to load topic data in the background from the _DKKnowledgeStore.", buf, 2u);
  }

  v7 = [*(a1 + 32) duetReadBatchSize] + 99999;
  v8 = [*(a1 + 32) duetReadBatchSize];
  v9 = 0;
  v19 = 0;
  v10 = v7 / v8;
  do
  {
    v11 = *(a1 + 32);
    v12 = [v11 duetReadBatchSize];
    if (v11)
    {
      [(PPTopicStorage *)v11 _importDKEventsWithShouldContinueBlock:v12 remoteEventsOnly:0 isComplete:&v19 shouldContinueBlock:&__block_literal_global_325_21894];
    }

    ++v9;
  }

  while ((v19 & 1) == 0 && v9 < v10);
  if ((v19 & 1) == 0)
  {
    v13 = pp_default_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v21 = v9;
      _os_log_fault_impl(&dword_23224A000, v13, OS_LOG_TYPE_FAULT, "PPTopicStorage:_asyncPopulateDatabaseFromDKEventsIfNecessary terminated due to excessive loop count %tu", buf, 0xCu);
    }
  }

  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"tp_records"];
  v15 = [v2 numberOfRowsInTable:v14];

  if (v15 < 0)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PPTopicStorage.m" lineNumber:1050 description:@"negative record count in tp_records"];
  }

  v5 = pp_topics_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = v15;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "Completed initial _DKEvent topic import. Database now contains %lld topic records.", buf, 0xCu);
  }

LABEL_20:

  v16 = *MEMORY[0x277D85DE8];
}

@end
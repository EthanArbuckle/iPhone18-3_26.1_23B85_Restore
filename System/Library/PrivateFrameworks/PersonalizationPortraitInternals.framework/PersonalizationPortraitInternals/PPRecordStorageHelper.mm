@interface PPRecordStorageHelper
- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id algorithm:(unsigned int)algorithm txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id documentIds:(id)ids algorithm:(unsigned int)algorithm txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id documentIds:(id)ids txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id groupId:(id)groupId olderThanDate:(id)date algorithm:(unsigned int)algorithm txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)self0;
- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id groupId:(id)groupId olderThanDate:(id)date txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id groupIds:(id)ids algorithm:(unsigned int)algorithm txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id groupIds:(id)ids txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllRecordsWithClusterIdentifier:(id)identifier algorithm:(unsigned int)algorithm txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllRecordsWithClusterIdentifier:(id)identifier txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllRecordsWithName:(id)name algorithm:(unsigned int)algorithm bundleId:(id)id groupId:(id)groupId category:(unsigned int)category beforeDate:(id)date txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)self0 deletedCount:(unint64_t *)self1 error:(id *)self2;
- (BOOL)deleteFeedbackCountRecordsOlderThanDate:(id)date txnWitness:(id)witness;
- (BOOL)fixupDKEventsWithDatabase:(id)database fixup49995922Table:(id)table batchSize:(unsigned int)size shouldContinueBlock:(id)block createRecordWithStatement:(id)statement eventForRecord:(id)record;
- (BOOL)pruneOrphanedFeedbackCountRecordsWithLimit:(unint64_t)limit rowOffset:(unint64_t)offset deletedCount:(unint64_t *)count txnWitness:(id)witness isComplete:(BOOL *)complete;
- (PPRecordStorageHelper)initWithName:(id)name table:(id)table clusterIdentifierColumn:(id)column maxRecords:(unsigned int)records duetStorage:(id)storage duetStream:(id)stream sourceStorage:(id)sourceStorage;
- (id)blobFromUUID:(id)d;
- (id)duetEventDeletionProcessingBlockWithDatabase:(id)database client:(unsigned __int8)client;
- (id)rowIdsForRecordsOlderThanDate:(id)date txnWitness:(id)witness;
- (id)rowIdsForRecordsSourcedFromBundleId:(id)id documentIds:(id)ids txnWitness:(id)witness;
- (id)rowIdsForRecordsSourcedFromBundleId:(id)id exactMatchGroupId:(id)groupId olderThanDate:(id)date txnWitness:(id)witness;
- (id)rowIdsForRecordsSourcedFromBundleId:(id)id groupIds:(id)ids txnWitness:(id)witness;
- (id)rowIdsForRecordsSourcedFromBundleId:(id)id txnWitness:(id)witness;
- (id)rowIdsForRecordsToDropMakingRoomForCount:(unsigned int)count txnWitness:(id)witness;
- (id)uuidForStatement:(id)statement columnName:(const char *)name tableName:(const char *)tableName;
- (void)_deleteRecordsWithRowIdsFromQuery:(void *)query txnWitness:(uint64_t)witness atLeastOneRecordClusterRemoved:(uint64_t)removed deletedCount:(void *)count bind:;
- (void)deleteRecordsForRowIds:(id)ids txnWitness:(id)witness atLeastOneClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count;
- (void)disableSyncForBundleIds:(id)ids txnWitness:(id)witness;
- (void)truncateRecordsByDroppingOldestMakingRoomForCount:(unsigned int)count txnWitness:(id)witness;
@end

@implementation PPRecordStorageHelper

void __89__PPRecordStorageHelper_firstDonationSourceCountsForDatabase_client_shouldContinueBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    v4 = [v3 db];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __89__PPRecordStorageHelper_firstDonationSourceCountsForDatabase_client_shouldContinueBlock___block_invoke_2;
    v11[3] = &unk_278973238;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v12 = v6;
    v13 = v7;
    [v4 prepAndRunQuery:v5 onPrep:&__block_literal_global_390 onRow:v11 onError:0];

    v8 = v12;
  }

  else
  {
    v9 = pp_default_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPRecordStorageHelper: not executing first sources query due to deferral request.", buf, 2u);
    }

    v10 = *(*(a1 + 48) + 8);
    v8 = *(v10 + 40);
    *(v10 + 40) = 0;
  }
}

uint64_t __89__PPRecordStorageHelper_firstDonationSourceCountsForDatabase_client_shouldContinueBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = objc_opt_new();
    v5 = [v3 nonnullNSStringForColumnAlias:"bundle_id"];
    [v4 setBundleId:v5];
    [v4 setAlgorithm:{objc_msgSend(v3, "getInt64ForColumnAlias:", "algorithm")}];
    [v4 setCount:{objc_msgSend(v3, "getInt64ForColumnAlias:", "count")}];
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
    v6 = *MEMORY[0x277D42690];
  }

  else
  {
    v7 = pp_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPRecordStorageHelper: interrupting first sources query to defer.", v11, 2u);
    }

    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;

    v6 = *MEMORY[0x277D42698];
  }

  return v6;
}

void __76__PPRecordStorageHelper_lastDonationTimeForSourcesInDatabase_client_before___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__PPRecordStorageHelper_lastDonationTimeForSourcesInDatabase_client_before___block_invoke_2;
  v6[3] = &unk_278978CF8;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__PPRecordStorageHelper_lastDonationTimeForSourcesInDatabase_client_before___block_invoke_3;
  v5[3] = &unk_278976450;
  v5[4] = *(a1 + 48);
  [v3 prepAndRunQuery:v4 onPrep:v6 onRow:v5 onError:0];
}

void __76__PPRecordStorageHelper_lastDonationTimeForSourcesInDatabase_client_before___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 timeIntervalSince1970];
  [v3 bindNamedParam:":date" toDouble:?];
}

uint64_t __76__PPRecordStorageHelper_lastDonationTimeForSourcesInDatabase_client_before___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnAlias:"bundle_id"];
  [v3 getDoubleForColumnAlias:"date"];
  v6 = v5;

  if (v4)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v6];
    [*(*(*(a1 + 32) + 8) + 40) setObject:v7 forKeyedSubscript:v4];
  }

  v8 = MEMORY[0x277D42690];

  return *v8;
}

void __71__PPRecordStorageHelper_thirdPartyBundleIdsFromTodayInDatabase_client___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__PPRecordStorageHelper_thirdPartyBundleIdsFromTodayInDatabase_client___block_invoke_3;
  v5[3] = &unk_278976450;
  v4 = *(a1 + 32);
  v5[4] = *(a1 + 40);
  [v3 prepAndRunQuery:v4 onPrep:&__block_literal_global_377 onRow:v5 onError:0];
}

uint64_t __71__PPRecordStorageHelper_thirdPartyBundleIdsFromTodayInDatabase_client___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnAlias:"third_party_bundle"];
  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  v4 = MEMORY[0x277D42690];

  return *v4;
}

void __71__PPRecordStorageHelper_thirdPartyBundleIdsFromTodayInDatabase_client___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = objc_opt_new();
  [v4 timeIntervalSince1970];
  [v2 bindNamedParam:":date" toDouble:v3 + -86400.0];
}

void __84__PPRecordStorageHelper_clusterIdentifiersExistingInDatabaseBeforeDate_client_date___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__PPRecordStorageHelper_clusterIdentifiersExistingInDatabaseBeforeDate_client_date___block_invoke_2;
  v6[3] = &unk_278978CF8;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__PPRecordStorageHelper_clusterIdentifiersExistingInDatabaseBeforeDate_client_date___block_invoke_3;
  v5[3] = &unk_278976450;
  v5[4] = *(a1 + 48);
  [v3 prepAndRunQuery:v4 onPrep:v6 onRow:v5 onError:0];
}

void __84__PPRecordStorageHelper_clusterIdentifiersExistingInDatabaseBeforeDate_client_date___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 timeIntervalSince1970];
  [v3 bindNamedParam:":date" toDouble:?];
}

uint64_t __84__PPRecordStorageHelper_clusterIdentifiersExistingInDatabaseBeforeDate_client_date___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnAlias:"cluster_id"];
  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  v4 = MEMORY[0x277D42690];

  return *v4;
}

void __63__PPRecordStorageHelper_distinctClusterCountInDatabase_client___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__PPRecordStorageHelper_distinctClusterCountInDatabase_client___block_invoke_2;
  v5[3] = &unk_278976450;
  v4 = *(a1 + 32);
  v5[4] = *(a1 + 40);
  [v3 prepAndRunQuery:v4 onPrep:0 onRow:v5 onError:0];
}

- (BOOL)fixupDKEventsWithDatabase:(id)database fixup49995922Table:(id)table batchSize:(unsigned int)size shouldContinueBlock:(id)block createRecordWithStatement:(id)statement eventForRecord:(id)record
{
  databaseCopy = database;
  tableCopy = table;
  blockCopy = block;
  statementCopy = statement;
  recordCopy = record;
  if (self->_duetStorage && self->_duetStream)
  {
    if (size <= 1)
    {
      size = 1;
    }

    *buf = 0;
    v34 = buf;
    v35 = 0x2020000000;
    v36 = 1;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke;
    v25[3] = &unk_278973210;
    sizeCopy = size;
    v26 = tableCopy;
    selfCopy = self;
    v28 = statementCopy;
    v29 = recordCopy;
    v30 = blockCopy;
    v31 = buf;
    v19 = [databaseCopy writeTransactionWithClient:1 timeoutInSeconds:v25 block:5.0];
    if ((v19 & 1) == 0)
    {
      v20 = pp_default_log_handle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v24 = 0;
        _os_log_error_impl(&dword_23224A000, v20, OS_LOG_TYPE_ERROR, "during fixup pass: SQL transaction timed out.", v24, 2u);
      }
    }

    v21 = v34[24] & v19;

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v22 = pp_default_log_handle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v22, OS_LOG_TYPE_DEFAULT, "fixupDKEventsWithBatchSize exiting early due to missing _duetStorage or _duetStream", buf, 2u);
    }

    v21 = 1;
  }

  return v21 & 1;
}

void __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 db];
  v5 = [v4 hasTableNamed:*(a1 + 32)];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 80)];
    v7 = [v3 db];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT * FROM %@ LIMIT :batchSize", *(a1 + 32)];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_2;
    v64[3] = &__block_descriptor_36_e29_v16__0___PASSqliteStatement_8l;
    v65 = *(a1 + 80);
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_3;
    v62[3] = &unk_278978DB8;
    v9 = v6;
    v63 = v9;
    [v7 prepAndRunQuery:v8 onPrep:v64 onRow:v62 onError:0];

    if ([v9 count])
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 80)];
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT * FROM %@ AS rec_tbl INNER JOIN sources ON rec_tbl.source_id = sources.id WHERE rec_tbl.id IN _pas_nsarray(:batchRowIds)", *(*(a1 + 40) + 8)];
      v12 = [v3 db];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_4;
      v60[3] = &unk_278978CF8;
      v13 = v9;
      v61 = v13;
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_5;
      v56[3] = &unk_278973180;
      v14 = *(a1 + 48);
      v56[4] = *(a1 + 40);
      v59 = v14;
      v45 = v3;
      v57 = v45;
      v15 = v10;
      v58 = v15;
      [v12 prepAndRunQuery:v11 onPrep:v60 onRow:v56 onError:0];

      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_344;
      v54[3] = &unk_2789731A8;
      v55 = *(a1 + 56);
      v16 = [v15 _pas_mappedArrayWithTransform:v54];
      v17 = [v16 _pas_mappedArrayWithTransform:&__block_literal_global_350];
      if ([*(*(a1 + 40) + 40) saveEvents:v17 stream:*(*(a1 + 40) + 48) maxRetries:-1 retryInterval:*(a1 + 64) shouldContinueBlock:5.0])
      {
        v43 = v16;
        v40 = v13;
        v41 = v11;

        v18 = [v15 _pas_mappedArrayWithTransform:&__block_literal_global_354];
        v19 = *(a1 + 40);
        v20 = *(v19 + 40);
        v21 = *(v19 + 48);
        v22 = MEMORY[0x277CFE1E0];
        v23 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v18];
        v24 = [v22 predicateForObjectsWithUUIDs:v23];
        v53 = 0;
        LOBYTE(v21) = [v20 deleteAllEventsInEventStream:v21 matchingPredicate:v24 error:&v53];
        v25 = v53;

        if ((v21 & 1) == 0)
        {
          v26 = pp_default_log_handle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v68 = v25;
            _os_log_error_impl(&dword_23224A000, v26, OS_LOG_TYPE_ERROR, "during fixup pass: failed to delete old _DKEvent batch: %@", buf, 0xCu);
          }
        }

        v27 = a1;
        v42 = v9;

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        obj = v43;
        v28 = [obj countByEnumeratingWithState:&v49 objects:v66 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v50;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v50 != v30)
              {
                objc_enumerationMutation(obj);
              }

              v32 = *(*(&v49 + 1) + 8 * i);
              v33 = [v45 db];
              v34 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"UPDATE %@ SET dk_event_id = :uuidBlob WHERE id = :rowId", *(v27[5] + 8), v40];
              v48[0] = MEMORY[0x277D85DD0];
              v48[1] = 3221225472;
              v48[2] = __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_359;
              v48[3] = &unk_2789743E8;
              v35 = v27[5];
              v48[4] = v32;
              v48[5] = v35;
              [v33 prepAndRunQuery:v34 onPrep:v48 onRow:0 onError:0];
            }

            v29 = [obj countByEnumeratingWithState:&v49 objects:v66 count:16];
          }

          while (v29);
        }

        v36 = [v45 db];
        v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DELETE FROM %@ WHERE id IN _pas_nsarray(:batchRowIds)", v27[4]];
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_2_363;
        v46[3] = &unk_278978CF8;
        v47 = v40;
        [v36 prepAndRunQuery:v37 onPrep:v46 onRow:0 onError:0];

        *(*(v27[9] + 8) + 24) = 0;
        v17 = v47;
        v9 = v42;
        v11 = v41;
        v16 = v43;
      }

      else
      {
        v38 = pp_default_log_handle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_23224A000, v38, OS_LOG_TYPE_ERROR, "during fixup pass: failed to save replacement _DKEvent batch", buf, 2u);
        }
      }
    }

    else
    {
      v15 = [v3 db];
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DROP TABLE %@", *(a1 + 32)];
      [v15 prepAndRunQuery:v11 onPrep:0 onRow:0 onError:0];
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "getInt64ForColumnName:table:", "id", 0)}];
  [v5 addObject:v6];

  v7 = MEMORY[0x277D42690];
  objc_autoreleasePoolPop(v4);

  return *v7;
}

uint64_t __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_5(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 getInt64ForColumnName:"id" table:{objc_msgSend(*(*(a1 + 32) + 8), "UTF8String")}];
  v6 = *(a1 + 40);
  v7 = (*(*(a1 + 56) + 16))();
  if (v7)
  {
    v8 = [v3 getNSDataForColumnName:"dk_event_id" table:{objc_msgSend(*(*(a1 + 32) + 8), "UTF8String")}];
    v9 = v8;
    if (v8)
    {
      if ([v8 length] == 16)
      {
        v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v9, "bytes")}];
LABEL_11:
        v13 = [[PPFixup49995922Tuple alloc] initWithRowid:v5 record:v7 dkUUID:v10];
        [*(a1 + 48) addObject:v13];

        goto LABEL_12;
      }

      v12 = pp_default_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = *(*(a1 + 32) + 8);
        v17 = 138412546;
        v18 = v16;
        v19 = 2048;
        v20 = v5;
        _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "during fixup pass: %@ row %lld has bad dk_event_id, ignoring", &v17, 0x16u);
      }
    }

    v10 = 0;
    goto LABEL_11;
  }

  v10 = pp_default_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *(*(a1 + 32) + 8);
    v17 = 138412546;
    v18 = v11;
    v19 = 2048;
    v20 = v5;
    _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "during fixup pass: %@ row %lld contains bad source, ignoring", &v17, 0x16u);
  }

LABEL_12:

  objc_autoreleasePoolPop(v4);
  v14 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42690];
}

id __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_344(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D42648];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "rowid")}];
  v7 = *(a1 + 32);
  v8 = [v4 record];

  v9 = (*(v7 + 16))(v7, v8);
  v10 = [v5 initWithFirst:v6 second:v9];

  return v10;
}

void __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_359(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 first];
  [v4 bindNamedParam:":rowId" toInt64:{objc_msgSend(v5, "longLongValue")}];

  v6 = *(a1 + 40);
  v9 = [*(a1 + 32) second];
  v7 = [v9 UUID];
  v8 = [v6 blobFromUUID:v7];
  [v4 bindNamedParam:":uuidBlob" toNSData:v8];
}

- (void)deleteRecordsForRowIds:(id)ids txnWitness:(id)witness atLeastOneClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count
{
  v98 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  witnessCopy = witness;
  v66 = idsCopy;
  if ([idsCopy count])
  {
    v61 = a2;
    removedCopy = removed;
    if (removed)
    {
      v11 = objc_alloc(MEMORY[0x277CCACA8]);
      clusterIdentifierColumn = self->_clusterIdentifierColumn;
      v13 = [v11 initWithFormat:@"SELECT %@ AS clusterIdent FROM %@ WHERE id IN _pas_nsindexset(:rowIds)", clusterIdentifierColumn, self->_table];
      v14 = objc_opt_new();
      v15 = [witnessCopy db];
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __97__PPRecordStorageHelper_deleteRecordsForRowIds_txnWitness_atLeastOneClusterRemoved_deletedCount___block_invoke;
      v79[3] = &unk_278978CF8;
      v16 = idsCopy;
      v80 = v16;
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __97__PPRecordStorageHelper_deleteRecordsForRowIds_txnWitness_atLeastOneClusterRemoved_deletedCount___block_invoke_2;
      v77[3] = &unk_278978DB8;
      v17 = v14;
      v78 = v17;
      [v15 prepAndRunQuery:v13 onPrep:v79 onRow:v77 onError:0];

      v18 = v78;
      v65 = v17;

      v19 = v16;
      v20 = witnessCopy;
    }

    else
    {
      v21 = idsCopy;
      v22 = witnessCopy;
      v65 = 0;
      if (!self)
      {
LABEL_26:

        v45 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT source_id, COUNT(source_id) FROM %@ WHERE id IN _pas_nsindexset(:rowIds) GROUP BY source_id", self->_table];
        v46 = [witnessCopy db];
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = __97__PPRecordStorageHelper_deleteRecordsForRowIds_txnWitness_atLeastOneClusterRemoved_deletedCount___block_invoke_3;
        v75[3] = &unk_278978CF8;
        v47 = v66;
        v76 = v47;
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __97__PPRecordStorageHelper_deleteRecordsForRowIds_txnWitness_atLeastOneClusterRemoved_deletedCount___block_invoke_4;
        v73[3] = &unk_278974C38;
        v73[4] = self;
        v48 = witnessCopy;
        v74 = v48;
        [v46 prepAndRunQuery:v45 onPrep:v75 onRow:v73 onError:0];

        v49 = [v48 db];
        v50 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DELETE FROM %@ WHERE id IN _pas_nsindexset(:rowIds)", self->_table];
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __97__PPRecordStorageHelper_deleteRecordsForRowIds_txnWitness_atLeastOneClusterRemoved_deletedCount___block_invoke_5;
        v71[3] = &unk_278978CF8;
        v72 = v47;
        [v49 prepAndRunQuery:v50 onPrep:v71 onRow:0 onError:0];

        if (count)
        {
          v51 = [v48 db];
          v52 = v51;
          v53 = sqlite3_changes([v51 handle]);

          if (v53 < 0)
          {
            v54 = pp_default_log_handle();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
            {
              *v89 = 67109120;
              *&v89[4] = v53;
              _os_log_fault_impl(&dword_23224A000, v54, OS_LOG_TYPE_FAULT, "Negative number of deletions found: %d", v89, 8u);
            }
          }

          *count = v53;
        }

        [(PPSourceStorage *)self->_sourceStorage pruneSourcesWithNoReferencesWithTxnWitness:v48];
        if (removedCopy)
        {
          if (!v65)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:v61 object:self file:@"PPRecordStorageHelper.m" lineNumber:1423 description:{@"Invalid parameter not satisfying: %@", @"clusterIdentSet"}];
          }

          *removedCopy = 0;
          v55 = objc_alloc(MEMORY[0x277CCACA8]);
          v56 = self->_clusterIdentifierColumn;
          v57 = [v55 initWithFormat:@"SELECT touched.value AS touchedId, remaining.%@ as remainingId FROM _pas_nsset(:clusterIdentSet) AS touched LEFT JOIN %@ AS remaining ON touchedId = remainingId WHERE remainingId IS NULL", v56, self->_table];
          v58 = [v48 db];
          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = __97__PPRecordStorageHelper_deleteRecordsForRowIds_txnWitness_atLeastOneClusterRemoved_deletedCount___block_invoke_301;
          v69[3] = &unk_278978CF8;
          v70 = v65;
          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = __97__PPRecordStorageHelper_deleteRecordsForRowIds_txnWitness_atLeastOneClusterRemoved_deletedCount___block_invoke_2_303;
          v68[3] = &__block_descriptor_40_e49___PASDBIterAction__B_16__0___PASSqliteStatement_8l;
          v68[4] = removedCopy;
          [v58 prepAndRunQuery:v57 onPrep:v69 onRow:v68 onError:0];
        }

        goto LABEL_37;
      }
    }

    if (self->_duetStream && [v66 count])
    {
      v62 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT dk_event_id FROM %@ WHERE is_remote = 0 AND dk_event_id IS NOT NULL AND id IN _pas_nsindexset(:rowIds)", self->_table];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v97 = 0;
      v23 = [witnessCopy db];
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __61__PPRecordStorageHelper__deleteDKEventsForRowIds_txnWitness___block_invoke;
      v87[3] = &unk_278978CF8;
      v24 = v66;
      v88 = v24;
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __61__PPRecordStorageHelper__deleteDKEventsForRowIds_txnWitness___block_invoke_2;
      v86[3] = &unk_278976450;
      v86[4] = buf;
      [v23 prepAndRunQuery:v62 onPrep:v87 onRow:v86 onError:0];

      LOBYTE(v23) = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (v23)
      {
        v84[0] = MEMORY[0x277D85DD0];
        v84[1] = 3221225472;
        v84[2] = __61__PPRecordStorageHelper__deleteDKEventsForRowIds_txnWitness___block_invoke_3;
        v84[3] = &unk_278978CF8;
        v85 = v24;
        v25 = [PPSQLDatabase createTempTableContainingRowsFromQuery:v62 descriptiveTableName:@"del_dk_evt" txnWitness:witnessCopy bind:v84];

        do
        {
          v26 = objc_opt_new();
          v27 = objc_opt_new();
          v28 = [witnessCopy db];
          v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rowid, dk_event_id FROM %@ LIMIT :batchSize", v25];
          *v89 = MEMORY[0x277D85DD0];
          v90 = 3221225472;
          v91 = __61__PPRecordStorageHelper__deleteDKEventsForRowIds_txnWitness___block_invoke_5;
          v92 = &unk_278977B98;
          v30 = v26;
          v93 = v30;
          v31 = v25;
          v94 = v31;
          v32 = v27;
          v95 = v32;
          [v28 prepAndRunQuery:v29 onPrep:&__block_literal_global_325_5203 onRow:v89 onError:0];

          v33 = [v30 count];
          if ([v32 count])
          {
            v34 = pp_default_log_handle();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              v43 = [v32 count];
              *buf = 134217984;
              *&buf[4] = v43;
              _os_log_debug_impl(&dword_23224A000, v34, OS_LOG_TYPE_DEBUG, "Propagating deletion of %tu _DKEvents", buf, 0xCu);
            }

            v35 = [MEMORY[0x277CFE260] predicateForObjectsWithUUIDs:v32];
            duetStorage = self->_duetStorage;
            duetStream = self->_duetStream;
            v83 = 0;
            v38 = [(PPDKStorage *)duetStorage deleteAllEventsInEventStream:duetStream matchingPredicate:v35 error:&v83];
            v39 = v83;
            if (!v38)
            {
              v40 = pp_default_log_handle();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v44 = [v32 count];
                *buf = 134218242;
                *&buf[4] = v44;
                *&buf[12] = 2112;
                *&buf[14] = v39;
                _os_log_error_impl(&dword_23224A000, v40, OS_LOG_TYPE_ERROR, "Failed to delete %tu _DKEvents: %@", buf, 0x16u);
              }
            }
          }

          if ([v30 count])
          {
            v41 = [witnessCopy db];
            v42 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DELETE FROM %@ WHERE rowid IN _pas_nsarray(:batchRowIds)", v31];
            v81[0] = MEMORY[0x277D85DD0];
            v81[1] = 3221225472;
            v81[2] = __61__PPRecordStorageHelper__deleteDKEventsForRowIds_txnWitness___block_invoke_331;
            v81[3] = &unk_278978CF8;
            v82 = v30;
            [v41 prepAndRunQuery:v42 onPrep:v81 onRow:0 onError:0];
          }
        }

        while (v33 > 0xC7);
        [PPSQLDatabase dropTableWithName:v31 txnWitness:witnessCopy];
      }
    }

    goto LABEL_26;
  }

  if (removed)
  {
    *removed = 0;
  }

  if (count)
  {
    *count = 0;
  }

LABEL_37:

  v59 = *MEMORY[0x277D85DE8];
}

uint64_t __97__PPRecordStorageHelper_deleteRecordsForRowIds_txnWitness_atLeastOneClusterRemoved_deletedCount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnAlias:"clusterIdent"];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  v4 = MEMORY[0x277D42690];

  return *v4;
}

uint64_t __97__PPRecordStorageHelper_deleteRecordsForRowIds_txnWitness_atLeastOneClusterRemoved_deletedCount___block_invoke_4(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 db];
  v6 = v4;
  v7 = v5;
  if (v3)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [v6 getInt64ForColumn:0];
    v10 = [v6 getInt64ForColumn:1];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__PPRecordStorageHelper__processRowForDeletionWithStatement_handle___block_invoke;
    v21[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
    v21[4] = v9;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __68__PPRecordStorageHelper__processRowForDeletionWithStatement_handle___block_invoke_2;
    v20[3] = &unk_278976450;
    v20[4] = &v22;
    [v7 prepAndRunQuery:@"SELECT ref_count FROM sources WHERE id = :rowId" onPrep:v21 onRow:v20 onError:0];
    v11 = v23[3];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = pp_default_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v18 = *(v3 + 8);
        *buf = 134218242;
        *&buf[4] = v9;
        *&buf[12] = 2112;
        *&buf[14] = v18;
        _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "Can't find source with id %lld during %@ record deletion", buf, 0x16u);
      }
    }

    else
    {
      v13 = v11 - v10;
      if (v11 - v10 < 0)
      {
        v14 = pp_default_log_handle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v19 = *(v3 + 8);
          *buf = 138412546;
          *&buf[4] = v19;
          *&buf[12] = 2048;
          *&buf[14] = v9;
          _os_log_error_impl(&dword_23224A000, v14, OS_LOG_TYPE_ERROR, "Record deletion from %@ is leading to negative ref_count for source with id %lld", buf, 0x16u);
        }
      }

      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __68__PPRecordStorageHelper__processRowForDeletionWithStatement_handle___block_invoke_312;
      v27 = &__block_descriptor_48_e29_v16__0___PASSqliteStatement_8l;
      v28 = v13;
      v29 = v9;
      [v7 prepAndRunQuery:@"UPDATE sources SET ref_count = :refCount WHERE id = :rowId" onPrep:buf onRow:0 onError:0];
    }

    _Block_object_dispose(&v22, 8);
    objc_autoreleasePoolPop(v8);
    v15 = *MEMORY[0x277D42690];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void __68__PPRecordStorageHelper__processRowForDeletionWithStatement_handle___block_invoke_312(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":refCount" toInt64:v3];
  [v4 bindNamedParam:":rowId" toInt64:*(a1 + 40)];
}

uint64_t __61__PPRecordStorageHelper__deleteDKEventsForRowIds_txnWitness___block_invoke_5(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [v4 numberWithLongLong:{objc_msgSend(v5, "getInt64ForColumn:", 0)}];
  [v3 addObject:v6];

  v7 = [v5 getNSDataForColumnAlias:"dk_event_id"];

  if ([v7 length] != 16)
  {
    v9 = pp_default_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v13 = 138412546;
      v14 = v12;
      v15 = 2048;
      v16 = [v7 length];
      _os_log_error_impl(&dword_23224A000, v9, OS_LOG_TYPE_ERROR, "column 'dk_event_id' in table '%@' has blob of unexpected length %tu", &v13, 0x16u);
    }

    goto LABEL_6;
  }

  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v7, "bytes")}];
  if (v8)
  {
    v9 = v8;
    [*(a1 + 48) addObject:v8];
LABEL_6:
  }

  v10 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42690];
}

- (id)rowIdsForRecordsOlderThanDate:(id)date txnWitness:(id)witness
{
  dateCopy = date;
  witnessCopy = witness;
  v8 = objc_opt_new();
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rt.id FROM %@ AS rt INNER JOIN sources AS src on rt.source_id = src.id WHERE src.seconds_from_1970 < :timestamp", self->_table];
  v10 = objc_autoreleasePoolPush();
  uTF8String = [(NSString *)self->_table UTF8String];
  v12 = [witnessCopy db];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__PPRecordStorageHelper_rowIdsForRecordsOlderThanDate_txnWitness___block_invoke;
  v19[3] = &unk_278978CF8;
  v13 = dateCopy;
  v20 = v13;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__PPRecordStorageHelper_rowIdsForRecordsOlderThanDate_txnWitness___block_invoke_2;
  v16[3] = &unk_278972D80;
  v14 = v8;
  v17 = v14;
  v18 = uTF8String;
  [v12 prepAndRunQuery:v9 onPrep:v19 onRow:v16 onError:0];

  objc_autoreleasePoolPop(v10);

  return v14;
}

void __66__PPRecordStorageHelper_rowIdsForRecordsOlderThanDate_txnWitness___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 timeIntervalSince1970];
  [v3 bindNamedParam:":timestamp" toDouble:?];
}

- (id)rowIdsForRecordsSourcedFromBundleId:(id)id exactMatchGroupId:(id)groupId olderThanDate:(id)date txnWitness:(id)witness
{
  idCopy = id;
  groupIdCopy = groupId;
  dateCopy = date;
  witnessCopy = witness;
  v14 = objc_opt_new();
  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rt.id FROM %@ AS rt INNER JOIN sources AS src ON rt.source_id = src.id WHERE src.seconds_from_1970 < :timestamp ", self->_table];
  if (([idCopy isEqualToString:@"PortraitBundleIdWildCardMatchingAll"] & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = [v15 stringByAppendingString:@"AND src.bundle_id = :bundleId "];

    objc_autoreleasePoolPop(v16);
    v15 = v17;
  }

  if (groupIdCopy)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = [v15 stringByAppendingString:@"AND src.group_id = :groupId"];

    objc_autoreleasePoolPop(v18);
    v15 = v19;
  }

  v20 = objc_autoreleasePoolPush();
  uTF8String = [(NSString *)self->_table UTF8String];
  v22 = [witnessCopy db];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __104__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_exactMatchGroupId_olderThanDate_txnWitness___block_invoke;
  v31[3] = &unk_278975708;
  v23 = idCopy;
  v32 = v23;
  v24 = dateCopy;
  v33 = v24;
  v25 = groupIdCopy;
  v34 = v25;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __104__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_exactMatchGroupId_olderThanDate_txnWitness___block_invoke_2;
  v28[3] = &unk_278972D80;
  v26 = v14;
  v29 = v26;
  v30 = uTF8String;
  [v22 prepAndRunQuery:v15 onPrep:v31 onRow:v28 onError:0];

  objc_autoreleasePoolPop(v20);

  return v26;
}

void __104__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_exactMatchGroupId_olderThanDate_txnWitness___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isEqualToString:@"PortraitBundleIdWildCardMatchingAll"] & 1) == 0)
  {
    [v3 bindNamedParam:":bundleId" toNonnullNSString:*(a1 + 32)];
  }

  [*(a1 + 40) timeIntervalSince1970];
  [v3 bindNamedParam:":timestamp" toDouble:?];
  if (*(a1 + 48))
  {
    [v3 bindNamedParam:":groupId" toNonnullNSString:?];
  }
}

- (id)rowIdsForRecordsSourcedFromBundleId:(id)id txnWitness:(id)witness
{
  idCopy = id;
  witnessCopy = witness;
  v8 = objc_opt_new();
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rt.id FROM %@ AS rt INNER JOIN sources AS src ON rt.source_id = src.id WHERE src.bundle_id = :bundleId", self->_table];
  v10 = objc_autoreleasePoolPush();
  uTF8String = [(NSString *)self->_table UTF8String];
  v12 = [witnessCopy db];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_txnWitness___block_invoke;
  v19[3] = &unk_278978CF8;
  v13 = idCopy;
  v20 = v13;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __72__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_txnWitness___block_invoke_2;
  v16[3] = &unk_278972D80;
  v14 = v8;
  v17 = v14;
  v18 = uTF8String;
  [v12 prepAndRunQuery:v9 onPrep:v19 onRow:v16 onError:0];

  objc_autoreleasePoolPop(v10);

  return v14;
}

- (id)rowIdsForRecordsSourcedFromBundleId:(id)id groupIds:(id)ids txnWitness:(id)witness
{
  idCopy = id;
  idsCopy = ids;
  witnessCopy = witness;
  v11 = objc_opt_new();
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rt.id FROM %@ AS rt INNER JOIN sources AS src ON rt.source_id = src.id WHERE src.bundle_id = :bundleId AND (src.group_id = :domain OR (src.group_id >= :domain || '.' AND src.group_id < :domain || '/'))", self->_table];
  _pas_stringBackedByUTF8CString = [v12 _pas_stringBackedByUTF8CString];

  v14 = [witnessCopy db];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __81__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_groupIds_txnWitness___block_invoke;
  v23[3] = &unk_278978A58;
  v23[4] = self;
  v24 = idsCopy;
  v25 = witnessCopy;
  v26 = _pas_stringBackedByUTF8CString;
  v27 = idCopy;
  v15 = v11;
  v28 = v15;
  v16 = idCopy;
  v17 = _pas_stringBackedByUTF8CString;
  v18 = witnessCopy;
  v19 = idsCopy;
  [v14 readTransaction:v23];

  v20 = v28;
  v21 = v15;

  return v15;
}

void __81__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_groupIds_txnWitness___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) UTF8String];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(a1 + 40);
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v8 = [*(a1 + 48) db];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __81__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_groupIds_txnWitness___block_invoke_2;
        v15[3] = &unk_2789743E8;
        v9 = *(a1 + 56);
        v16 = *(a1 + 64);
        v17 = v7;
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __81__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_groupIds_txnWitness___block_invoke_3;
        v12[3] = &unk_278972D80;
        v13 = *(a1 + 72);
        v14 = v2;
        [v8 prepAndRunQuery:v9 onPrep:v15 onRow:v12 onError:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __81__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_groupIds_txnWitness___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":bundleId" toNonnullNSString:v3];
  [v4 bindNamedParam:":domain" toNonnullNSString:*(a1 + 40)];
}

- (id)rowIdsForRecordsSourcedFromBundleId:(id)id documentIds:(id)ids txnWitness:(id)witness
{
  idCopy = id;
  idsCopy = ids;
  witnessCopy = witness;
  v11 = objc_opt_new();
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rt.id FROM %@ AS rt INNER JOIN sources AS src ON rt.source_id = src.id WHERE src.bundle_id = :bundleId AND src.doc_id IN _pas_nsarray(:documentIds)", self->_table];
  v13 = objc_autoreleasePoolPush();
  uTF8String = [(NSString *)self->_table UTF8String];
  v15 = [witnessCopy db];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __84__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_documentIds_txnWitness___block_invoke;
  v23[3] = &unk_2789743E8;
  v16 = idCopy;
  v24 = v16;
  v17 = idsCopy;
  v25 = v17;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_documentIds_txnWitness___block_invoke_2;
  v20[3] = &unk_278972D80;
  v18 = v11;
  v21 = v18;
  v22 = uTF8String;
  [v15 prepAndRunQuery:v12 onPrep:v23 onRow:v20 onError:0];

  objc_autoreleasePoolPop(v13);

  return v18;
}

void __84__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_documentIds_txnWitness___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":bundleId" toNonnullNSString:v3];
  [v4 bindNamedParam:":documentIds" toNSArray:*(a1 + 40)];
}

- (BOOL)pruneOrphanedFeedbackCountRecordsWithLimit:(unint64_t)limit rowOffset:(unint64_t)offset deletedCount:(unint64_t *)count txnWitness:(id)witness isComplete:(BOOL *)complete
{
  v12 = MEMORY[0x277CCACA8];
  witnessCopy = witness;
  v14 = [v12 alloc];
  table = self->_table;
  v16 = [v14 initWithFormat:@"DELETE FROM %@ AS fb WHERE fb.rowid IN (SELECT rowid FROM %@                    ORDER BY rowid                    LIMIT :limit                    OFFSET :offset) AND NOT EXISTS (SELECT 1 FROM %@ AS rt                 WHERE rt.%@ = fb.item_string)", self->_feedbackTable, self->_feedbackTable, table, self->_clusterIdentifierColumn];
  v17 = [witnessCopy db];
  v18 = [v17 numberOfRowsInTable:self->_feedbackTable];

  v19 = [witnessCopy db];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __113__PPRecordStorageHelper_pruneOrphanedFeedbackCountRecordsWithLimit_rowOffset_deletedCount_txnWitness_isComplete___block_invoke;
  v23[3] = &__block_descriptor_48_e29_v16__0___PASSqliteStatement_8l;
  v23[4] = limit;
  v23[5] = offset;
  v20 = [v19 prepAndRunQuery:v16 onPrep:v23 onRow:0 onError:0];

  v21 = [witnessCopy db];

  *count = sqlite3_changes([v21 handle]);
  if (offset + limit >= v18)
  {
    *complete = 1;
  }

  return v20;
}

void __113__PPRecordStorageHelper_pruneOrphanedFeedbackCountRecordsWithLimit_rowOffset_deletedCount_txnWitness_isComplete___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":limit" toInteger:v3];
  [v4 bindNamedParam:":offset" toInteger:*(a1 + 40)];
}

- (BOOL)deleteFeedbackCountRecordsOlderThanDate:(id)date txnWitness:(id)witness
{
  dateCopy = date;
  v7 = [witness db];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DELETE FROM %@ WHERE last_update_seconds_from_1970 < :secondsFrom1970", self->_feedbackTable];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__PPRecordStorageHelper_deleteFeedbackCountRecordsOlderThanDate_txnWitness___block_invoke;
  v12[3] = &unk_278978CF8;
  v13 = dateCopy;
  v9 = dateCopy;
  v10 = [v7 prepAndRunQuery:v8 onPrep:v12 onRow:0 onError:0];

  return v10;
}

void __76__PPRecordStorageHelper_deleteFeedbackCountRecordsOlderThanDate_txnWitness___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 timeIntervalSince1970];
  [v3 bindNamedParam:":secondsFrom1970" toDouble:?];
}

void __100__PPRecordStorageHelper_deleteAllRemoteRecordsMissingInDuetFromDatabase_client_shouldContinueBlock___block_invoke(uint64_t a1, void *a2)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v21 = 0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v19 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = v4;
  v8 = v5;
  if (v3)
  {
    v25 = 0;
    v9 = *(v3 + 40);
    v10 = [MEMORY[0x277CFE260] predicateForObjectsWithUUIDs:v6];
    v31[0] = *(v3 + 48);
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    v12 = [*(v3 + 40) readBatchSize];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __120__PPRecordStorageHelper__filterAndRemoveMissingRemoteRecordsFromBatch_database_client_deletedCount_shouldContinueBlock___block_invoke;
    v22[3] = &unk_2789730F0;
    v20 = v8;
    v13 = v8;
    v24 = v13;
    v14 = v6;
    v23 = v14;
    LOBYTE(v12) = [v9 iterEventBatchesMatchingPredicate:v10 streams:v11 sortDescriptors:MEMORY[0x277CBEBF8] batchSize:v12 readMetaData:0 remoteOnly:1 error:&v25 block:v22];

    if (v12)
    {
      if (![v14 count] || !v13[2](v13))
      {
        goto LABEL_9;
      }

      v15 = [v14 allObjects];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __120__PPRecordStorageHelper__filterAndRemoveMissingRemoteRecordsFromBatch_database_client_deletedCount_shouldContinueBlock___block_invoke_251;
      v27 = &unk_278973118;
      v29 = v15;
      v30 = &v21;
      v28 = v3;
      v16 = v15;
      [v7 writeTransactionWithClient:v19 block:buf];
    }

    else
    {
      v16 = pp_default_log_handle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = *(v3 + 8);
        *buf = 138412546;
        *&buf[4] = v18;
        *&buf[12] = 2112;
        *&buf[14] = v25;
        _os_log_error_impl(&dword_23224A000, v16, OS_LOG_TYPE_ERROR, "PPRecordStorageHelper(%@): error iterating the duet stream: %@", buf, 0x16u);
      }
    }

LABEL_9:
    v8 = v20;
  }

  *(*(*(a1 + 56) + 8) + 24) += v21;
  [v6 removeAllObjects];

  v17 = *MEMORY[0x277D85DE8];
}

void __100__PPRecordStorageHelper_deleteAllRemoteRecordsMissingInDuetFromDatabase_client_shouldContinueBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __100__PPRecordStorageHelper_deleteAllRemoteRecordsMissingInDuetFromDatabase_client_shouldContinueBlock___block_invoke_3;
  v9[3] = &unk_2789730A0;
  v5 = *(a1 + 64);
  v8 = *(a1 + 40);
  v6 = *(&v8 + 1);
  *&v7 = *(a1 + 56);
  *(&v7 + 1) = v5;
  v10 = v8;
  v11 = v7;
  [v3 prepAndRunQuery:v4 onPrep:0 onRow:v9 onError:0];
}

uint64_t __100__PPRecordStorageHelper_deleteAllRemoteRecordsMissingInDuetFromDatabase_client_shouldContinueBlock___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = v3[1];
  v5 = a2;
  v6 = [v3 uuidForStatement:v5 columnName:"dk_event_id" tableName:{objc_msgSend(v4, "UTF8String")}];

  if (v6)
  {
    [*(*(a1[7] + 8) + 40) addObject:v6];
  }

  v7 = [*(*(a1[7] + 8) + 40) count];
  if (v7 >= [*(a1[4] + 40) readBatchSize])
  {
    v8 = *(*(a1[7] + 8) + 40);
    (*(a1[5] + 16))();
  }

  v9 = (*(a1[6] + 16))();
  v10 = MEMORY[0x277D42690];
  v11 = MEMORY[0x277D42698];

  if (v9)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  return *v12;
}

void __120__PPRecordStorageHelper__filterAndRemoveMissingRemoteRecordsFromBatch_database_client_deletedCount_shouldContinueBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(a1 + 32);
          v12 = [*(*(&v14 + 1) + 8 * v10) UUID];
          [v11 removeObject:v12];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    *a3 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __120__PPRecordStorageHelper__filterAndRemoveMissingRemoteRecordsFromBatch_database_client_deletedCount_shouldContinueBlock___block_invoke_251(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:@"SELECT id FROM %@ WHERE dk_event_id IN _pas_nsarray(:batch)", *(*(a1 + 32) + 8)];
  v6 = *(a1 + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __120__PPRecordStorageHelper__filterAndRemoveMissingRemoteRecordsFromBatch_database_client_deletedCount_shouldContinueBlock___block_invoke_2;
  v10[3] = &unk_2789743E8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v11 = v8;
  v12 = v9;
  [(PPRecordStorageHelper *)v7 _deleteRecordsWithRowIdsFromQuery:v5 txnWitness:v4 atLeastOneRecordClusterRemoved:0 deletedCount:v6 bind:v10];
}

void __120__PPRecordStorageHelper__filterAndRemoveMissingRemoteRecordsFromBatch_database_client_deletedCount_shouldContinueBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __120__PPRecordStorageHelper__filterAndRemoveMissingRemoteRecordsFromBatch_database_client_deletedCount_shouldContinueBlock___block_invoke_3;
  v5[3] = &unk_278972DF8;
  v2 = *(a1 + 32);
  v5[4] = *(a1 + 40);
  v3 = a2;
  v4 = [v2 _pas_proxyArrayWithMapping:v5];
  [v3 bindNamedParam:":batch" toNSArray:v4];
}

- (void)_deleteRecordsWithRowIdsFromQuery:(void *)query txnWitness:(uint64_t)witness atLeastOneRecordClusterRemoved:(uint64_t)removed deletedCount:(void *)count bind:
{
  if (self)
  {
    countCopy = count;
    queryCopy = query;
    v13 = a2;
    v14 = objc_opt_new();
    v15 = [queryCopy db];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __119__PPRecordStorageHelper__deleteRecordsWithRowIdsFromQuery_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_bind___block_invoke;
    v17[3] = &unk_278978DB8;
    v18 = v14;
    v16 = v14;
    [v15 prepAndRunQuery:v13 onPrep:countCopy onRow:v17 onError:0];

    [self deleteRecordsForRowIds:v16 txnWitness:queryCopy atLeastOneClusterRemoved:witness deletedCount:removed];
  }
}

- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id groupId:(id)groupId olderThanDate:(id)date algorithm:(unsigned int)algorithm txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)self0
{
  idCopy = id;
  groupIdCopy = groupId;
  dateCopy = date;
  witnessCopy = witness;
  v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rt.id FROM %@ AS rt INNER JOIN sources AS src ON rt.source_id = src.id WHERE rt.algorithm = :algorithm AND src.seconds_from_1970 < :timestamp ", self->_table];
  if (([idCopy isEqualToString:@"PortraitBundleIdWildCardMatchingAll"] & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = [v19 stringByAppendingString:@"AND src.bundle_id = :bundleId "];

    objc_autoreleasePoolPop(v20);
    v19 = v21;
  }

  if (groupIdCopy)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = [v19 stringByAppendingString:@"AND src.group_id = :groupId"];

    objc_autoreleasePoolPop(v22);
    v19 = v23;
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __154__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupId_olderThanDate_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
  v29[3] = &unk_278973050;
  algorithmCopy = algorithm;
  v30 = idCopy;
  v31 = dateCopy;
  v32 = groupIdCopy;
  v24 = groupIdCopy;
  v25 = dateCopy;
  v26 = idCopy;
  [(PPRecordStorageHelper *)self _deleteRecordsWithRowIdsFromQuery:v19 txnWitness:witnessCopy atLeastOneRecordClusterRemoved:removed deletedCount:count bind:v29];

  return 1;
}

void __154__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupId_olderThanDate_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindNamedParam:":algorithm" toInt64:*(a1 + 56)];
  if (([*(a1 + 32) isEqualToString:@"PortraitBundleIdWildCardMatchingAll"] & 1) == 0)
  {
    [v3 bindNamedParam:":bundleId" toNSString:*(a1 + 32)];
  }

  [*(a1 + 40) timeIntervalSince1970];
  [v3 bindNamedParam:":timestamp" toDouble:?];
  if (*(a1 + 48))
  {
    [v3 bindNamedParam:":groupId" toNSString:?];
  }
}

- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id groupId:(id)groupId olderThanDate:(id)date txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  groupIdCopy = groupId;
  dateCopy = date;
  witnessCopy = witness;
  v19 = [witnessCopy db];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __144__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupId_olderThanDate_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
  v25[3] = &unk_278973028;
  v25[4] = self;
  v26 = idCopy;
  v27 = groupIdCopy;
  v28 = dateCopy;
  v29 = witnessCopy;
  removedCopy = removed;
  countCopy = count;
  v20 = witnessCopy;
  v21 = dateCopy;
  v22 = groupIdCopy;
  v23 = idCopy;
  [v19 writeTransaction:v25];

  return 1;
}

void __144__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupId_olderThanDate_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rowIdsForRecordsSourcedFromBundleId:*(a1 + 40) exactMatchGroupId:*(a1 + 48) olderThanDate:*(a1 + 56) txnWitness:*(a1 + 64)];
  [*(a1 + 32) deleteRecordsForRowIds:v2 txnWitness:*(a1 + 64) atLeastOneClusterRemoved:*(a1 + 72) deletedCount:*(a1 + 80)];
}

- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id algorithm:(unsigned int)algorithm txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  v14 = MEMORY[0x277CCACA8];
  witnessCopy = witness;
  v16 = [[v14 alloc] initWithFormat:@"SELECT rt.id FROM %@ AS rt INNER JOIN sources AS src ON rt.source_id = src.id WHERE rt.algorithm = :algorithm AND src.bundle_id = :bundleId", self->_table];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __132__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
  v19[3] = &unk_278972F60;
  algorithmCopy = algorithm;
  v20 = idCopy;
  v17 = idCopy;
  [(PPRecordStorageHelper *)self _deleteRecordsWithRowIdsFromQuery:v16 txnWitness:witnessCopy atLeastOneRecordClusterRemoved:removed deletedCount:count bind:v19];

  return 1;
}

void __132__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":algorithm" toInt64:v3];
  [v4 bindNamedParam:":bundleId" toNSString:*(a1 + 32)];
}

- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  witnessCopy = witness;
  v13 = [witnessCopy db];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __122__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
  v17[3] = &unk_278975258;
  v17[4] = self;
  v18 = idCopy;
  v19 = witnessCopy;
  removedCopy = removed;
  countCopy = count;
  v14 = witnessCopy;
  v15 = idCopy;
  [v13 writeTransaction:v17];

  return 1;
}

void __122__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [v2 rowIdsForRecordsSourcedFromBundleId:a1[5] txnWitness:a1[6]];
  [v2 deleteRecordsForRowIds:v3 txnWitness:a1[6] atLeastOneClusterRemoved:a1[7] deletedCount:a1[8]];
}

- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id groupIds:(id)ids algorithm:(unsigned int)algorithm txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  witnessCopy = witness;
  if ([idsCopy count])
  {
    v18 = [witnessCopy db];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __141__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupIds_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
    v20[3] = &unk_278973000;
    v20[4] = self;
    v21 = idCopy;
    v22 = idsCopy;
    algorithmCopy = algorithm;
    v23 = witnessCopy;
    removedCopy = removed;
    countCopy = count;
    [v18 writeTransaction:v20];
  }

  else
  {
    if (removed)
    {
      *removed = 0;
    }

    if (count)
    {
      *count = 0;
    }
  }

  return 1;
}

void __141__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupIds_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rowIdsForRecordsSourcedFromBundleId:*(a1 + 40) groupIds:*(a1 + 48) txnWitness:*(a1 + 56)];
  v3 = objc_opt_new();
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT id FROM %@ AS rt WHERE rt.id IN _pas_nsindexset(:unfilteredRowIds) AND rt.algorithm = :algorithm", *(*(a1 + 32) + 8)];
  v5 = [*(*(a1 + 32) + 8) UTF8String];
  v6 = [*(a1 + 56) db];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __141__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupIds_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke_2;
  v12[3] = &unk_278972F60;
  v13 = v2;
  v14 = *(a1 + 80);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __141__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupIds_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke_3;
  v9[3] = &unk_278972D80;
  v10 = v3;
  v11 = v5;
  v7 = v3;
  v8 = v2;
  [v6 prepAndRunQuery:v4 onPrep:v12 onRow:v9 onError:0];

  [*(a1 + 32) deleteRecordsForRowIds:v7 txnWitness:*(a1 + 56) atLeastOneClusterRemoved:*(a1 + 64) deletedCount:*(a1 + 72)];
}

void __141__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupIds_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":unfilteredRowIds" toNSIndexSet:v3];
  [v4 bindNamedParam:":algorithm" toInt64:*(a1 + 40)];
}

- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id groupIds:(id)ids txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  witnessCopy = witness;
  if ([idsCopy count])
  {
    v16 = [witnessCopy db];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __131__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupIds_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
    v18[3] = &unk_278972FB0;
    v18[4] = self;
    v19 = idCopy;
    v20 = idsCopy;
    v21 = witnessCopy;
    removedCopy = removed;
    countCopy = count;
    [v16 writeTransaction:v18];
  }

  else
  {
    if (removed)
    {
      *removed = 0;
    }

    if (count)
    {
      *count = 0;
    }
  }

  return 1;
}

void __131__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupIds_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [v2 rowIdsForRecordsSourcedFromBundleId:a1[5] groupIds:a1[6] txnWitness:a1[7]];
  [v2 deleteRecordsForRowIds:v3 txnWitness:a1[7] atLeastOneClusterRemoved:a1[8] deletedCount:a1[9]];
}

- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id documentIds:(id)ids algorithm:(unsigned int)algorithm txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  witnessCopy = witness;
  if ([idsCopy count])
  {
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rt.id FROM %@ AS rt INNER JOIN sources AS src ON rt.source_id = src.id WHERE rt.algorithm = :algorithm AND src.bundle_id = :bundleId AND src.doc_id IN _pas_nsarray(:documentIds)", self->_table];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __144__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_documentIds_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
    v20[3] = &unk_278972FD8;
    algorithmCopy = algorithm;
    v21 = idCopy;
    v22 = idsCopy;
    [(PPRecordStorageHelper *)self _deleteRecordsWithRowIdsFromQuery:v18 txnWitness:witnessCopy atLeastOneRecordClusterRemoved:removed deletedCount:count bind:v20];
  }

  else
  {
    if (removed)
    {
      *removed = 0;
    }

    if (count)
    {
      *count = 0;
    }
  }

  return 1;
}

void __144__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_documentIds_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  [v4 bindNamedParam:":algorithm" toInt64:v3];
  [v4 bindNamedParam:":bundleId" toNSString:*(a1 + 32)];
  [v4 bindNamedParam:":documentIds" toNSArray:*(a1 + 40)];
}

- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id documentIds:(id)ids txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  witnessCopy = witness;
  if ([idsCopy count])
  {
    v16 = [witnessCopy db];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __134__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_documentIds_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
    v18[3] = &unk_278972FB0;
    v18[4] = self;
    v19 = idCopy;
    v20 = idsCopy;
    v21 = witnessCopy;
    removedCopy = removed;
    countCopy = count;
    [v16 writeTransaction:v18];
  }

  else
  {
    if (removed)
    {
      *removed = 0;
    }

    if (count)
    {
      *count = 0;
    }
  }

  return 1;
}

void __134__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_documentIds_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [v2 rowIdsForRecordsSourcedFromBundleId:a1[5] documentIds:a1[6] txnWitness:a1[7]];
  [v2 deleteRecordsForRowIds:v3 txnWitness:a1[7] atLeastOneClusterRemoved:a1[8] deletedCount:a1[9]];
}

- (BOOL)deleteAllRecordsWithName:(id)name algorithm:(unsigned int)algorithm bundleId:(id)id groupId:(id)groupId category:(unsigned int)category beforeDate:(id)date txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)self0 deletedCount:(unint64_t *)self1 error:(id *)self2
{
  nameCopy = name;
  idCopy = id;
  groupIdCopy = groupId;
  dateCopy = date;
  v22 = MEMORY[0x277CCACA8];
  witnessCopy = witness;
  v24 = [[v22 alloc] initWithFormat:@"SELECT rt.id FROM %@ AS rt INNER JOIN sources src ON rt.source_id = src.id WHERE rt.algorithm = :algorithm AND rt.name = :name AND rt.category = :category AND src.group_id = :groupId AND src.bundle_id = :bundleId AND src.seconds_from_1970 <= :beforeDate", self->_table];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __158__PPRecordStorageHelper_deleteAllRecordsWithName_algorithm_bundleId_groupId_category_beforeDate_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
  v30[3] = &unk_278972F88;
  algorithmCopy = algorithm;
  categoryCopy = category;
  v31 = nameCopy;
  v32 = idCopy;
  v33 = groupIdCopy;
  v34 = dateCopy;
  v25 = dateCopy;
  v26 = groupIdCopy;
  v27 = idCopy;
  v28 = nameCopy;
  [(PPRecordStorageHelper *)self _deleteRecordsWithRowIdsFromQuery:v24 txnWitness:witnessCopy atLeastOneRecordClusterRemoved:removed deletedCount:count bind:v30];

  return 1;
}

void __158__PPRecordStorageHelper_deleteAllRecordsWithName_algorithm_bundleId_groupId_category_beforeDate_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  v4 = a2;
  [v4 bindNamedParam:":algorithm" toInt64:v3];
  [v4 bindNamedParam:":name" toNSString:*(a1 + 32)];
  [v4 bindNamedParam:":category" toInt64:*(a1 + 68)];
  [v4 bindNamedParam:":bundleId" toNSString:*(a1 + 40)];
  [v4 bindNamedParam:":groupId" toNSString:*(a1 + 48)];
  [*(a1 + 56) timeIntervalSince1970];
  [v4 bindNamedParam:":beforeDate" toDouble:?];
}

- (BOOL)deleteAllRecordsWithClusterIdentifier:(id)identifier algorithm:(unsigned int)algorithm txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  identifierCopy = identifier;
  v14 = MEMORY[0x277CCACA8];
  witnessCopy = witness;
  v16 = [v14 alloc];
  table = self->_table;
  v18 = [v16 initWithFormat:@"SELECT rt.id FROM %@ AS rt WHERE rt.algorithm = :algorithm AND rt.%@ = :clusterIdent", table, self->_clusterIdentifierColumn];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __134__PPRecordStorageHelper_deleteAllRecordsWithClusterIdentifier_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
  v21[3] = &unk_278972F60;
  algorithmCopy = algorithm;
  v22 = identifierCopy;
  v19 = identifierCopy;
  [(PPRecordStorageHelper *)self _deleteRecordsWithRowIdsFromQuery:v18 txnWitness:witnessCopy atLeastOneRecordClusterRemoved:removed deletedCount:count bind:v21];

  return 1;
}

void __134__PPRecordStorageHelper_deleteAllRecordsWithClusterIdentifier_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":algorithm" toInt64:v3];
  [v4 bindNamedParam:":clusterIdent" toNSString:*(a1 + 32)];
}

- (BOOL)deleteAllRecordsWithClusterIdentifier:(id)identifier txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  identifierCopy = identifier;
  v12 = MEMORY[0x277CCACA8];
  witnessCopy = witness;
  v14 = [v12 alloc];
  table = self->_table;
  v16 = [v14 initWithFormat:@"SELECT rt.id FROM %@ AS rt WHERE rt.%@ = :clusterIdent", table, self->_clusterIdentifierColumn];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __124__PPRecordStorageHelper_deleteAllRecordsWithClusterIdentifier_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
  v19[3] = &unk_278978CF8;
  v20 = identifierCopy;
  v17 = identifierCopy;
  [(PPRecordStorageHelper *)self _deleteRecordsWithRowIdsFromQuery:v16 txnWitness:witnessCopy atLeastOneRecordClusterRemoved:removed deletedCount:count bind:v19];

  return 1;
}

- (void)disableSyncForBundleIds:(id)ids txnWitness:(id)witness
{
  v54 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  witnessCopy = witness;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v8 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__PPRecordStorageHelper_disableSyncForBundleIds_txnWitness___block_invoke;
  aBlock[3] = &unk_2789797E0;
  v9 = v8;
  v40 = v9;
  selfCopy = self;
  v10 = _Block_copy(aBlock);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __60__PPRecordStorageHelper_disableSyncForBundleIds_txnWitness___block_invoke_201;
  v35[3] = &unk_278972F10;
  v38 = &v42;
  v11 = v9;
  v36 = v11;
  v12 = v10;
  v37 = v12;
  v13 = _Block_copy(v35);
  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rt.dk_event_id FROM %@ AS rt INNER JOIN sources AS src ON rt.source_id = src.id WHERE rt.is_remote = 0 AND rt.is_sync_eligible = 1 AND rt.dk_event_id IS NOT NULL AND src.bundle_id IN _pas_nsset(:bundleIds)", self->_table];
  v15 = [witnessCopy db];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __60__PPRecordStorageHelper_disableSyncForBundleIds_txnWitness___block_invoke_2;
  v33[3] = &unk_278978CF8;
  v16 = idsCopy;
  v34 = v16;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __60__PPRecordStorageHelper_disableSyncForBundleIds_txnWitness___block_invoke_3;
  v31[3] = &unk_278972F38;
  v31[4] = self;
  v17 = v13;
  v32 = v17;
  [v15 prepAndRunQuery:v14 onPrep:v33 onRow:v31 onError:0];

  v12[2](v12);
  v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"UPDATE %@ SET is_sync_eligible = 0 WHERE is_remote = 0 AND is_sync_eligible = 1 AND source_id IN (SELECT id FROM sources WHERE bundle_id IN _pas_nsset(:bundleIds))", self->_table];
  v19 = [witnessCopy db];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __60__PPRecordStorageHelper_disableSyncForBundleIds_txnWitness___block_invoke_4;
  v29[3] = &unk_278978CF8;
  v20 = v16;
  v30 = v20;
  [v19 prepAndRunQuery:v18 onPrep:v29 onRow:0 onError:0];

  v21 = [witnessCopy db];
  v22 = v21;
  v23 = sqlite3_changes([v21 handle]);

  v24 = pp_default_log_handle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v20 count];
    table = self->_table;
    v27 = v43[3];
    *buf = 134218754;
    v47 = v25;
    v48 = 2112;
    v49 = table;
    v50 = 1024;
    v51 = v23;
    v52 = 2048;
    v53 = v27;
    _os_log_impl(&dword_23224A000, v24, OS_LOG_TYPE_DEFAULT, "Disabled cloud sync for %tu bundleIds in %@: %d records modified, %tu _DKKnowledgeStore records deleted.", buf, 0x26u);
  }

  _Block_object_dispose(&v42, 8);
  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __60__PPRecordStorageHelper_disableSyncForBundleIds_txnWitness___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = *(a1 + 40);
    v3 = *(v2 + 40);
    if (v3)
    {
      v4 = *(v2 + 48);
      v5 = [MEMORY[0x277CFE260] predicateForObjectsWithUUIDs:*(a1 + 32)];
      v10 = 0;
      LOBYTE(v4) = [v3 deleteAllEventsInEventStream:v4 matchingPredicate:v5 error:&v10];
      v6 = v10;

      if ((v4 & 1) == 0)
      {
        v7 = pp_default_log_handle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v12 = v6;
          _os_log_error_impl(&dword_23224A000, v7, OS_LOG_TYPE_ERROR, "Failed to delete _DKEvents in response to change in bundleId sync status: %@", buf, 0xCu);
        }
      }
    }
  }

  result = [*(a1 + 32) removeAllObjects];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t __60__PPRecordStorageHelper_disableSyncForBundleIds_txnWitness___block_invoke_201(uint64_t a1, uint64_t a2)
{
  ++*(*(*(a1 + 48) + 8) + 24);
  [*(a1 + 32) addObject:a2];
  result = [*(a1 + 32) count];
  if (result >= 0xC9)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

uint64_t __60__PPRecordStorageHelper_disableSyncForBundleIds_txnWitness___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v3[1];
  v5 = a2;
  v6 = [v3 uuidForStatement:v5 columnName:"dk_event_id" tableName:{objc_msgSend(v4, "UTF8String")}];

  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  v7 = MEMORY[0x277D42690];

  return *v7;
}

void __132__PPRecordStorageHelper_importDuetEventsWithLimit_database_client_remoteEventsOnly_isComplete_shouldContinueBlock_eventImportBlock___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 48) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  v8 = *(a1 + 40);
  v9 = a2;
  if (v3)
  {
    v10 = [PPSQLKVStore loadBlobForKey:*(v3 + 56) transaction:v9];
    if (v10)
    {
      v23 = 0;
      v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v23];
      v12 = v23;
      if (v11)
      {
        v13 = v11;
        v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rt.dk_event_id FROM %@ AS rt INNER JOIN sources AS src ON rt.source_id = src.id WHERE src.seconds_from_1970 > :before_timestamp AND src.seconds_from_1970 < :after_timestamp AND rt.dk_event_id IS NOT NULL", *(v3 + 8)];
        v15 = [v9 db];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __92__PPRecordStorageHelper__addEventsSourcedOnLastImportDateToSet_lastDKImportDate_txnWitness___block_invoke;
        v21[3] = &unk_278978CF8;
        v6 = v11;
        v22 = v6;
        *v26 = MEMORY[0x277D85DD0];
        *&v26[8] = 3221225472;
        *&v26[16] = __92__PPRecordStorageHelper__addEventsSourcedOnLastImportDateToSet_lastDKImportDate_txnWitness___block_invoke_2;
        v27 = &unk_278974C38;
        v28 = v3;
        v16 = v8;
        v29 = v16;
        [v15 prepAndRunQuery:v14 onPrep:v21 onRow:v26 onError:0];

        if ([v16 count])
        {
          v17 = pp_default_log_handle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v19 = [v16 count];
            *buf = 134217984;
            v25 = v19;
            _os_log_debug_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEBUG, "importDuetEventsWithLimit skipping import of %tu events with matching starting date.", buf, 0xCu);
          }
        }
      }

      else
      {
        v14 = pp_default_log_handle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v20 = *(v3 + 56);
          *v26 = 138412546;
          *&v26[4] = v20;
          *&v26[12] = 2112;
          *&v26[14] = v12;
          _os_log_error_impl(&dword_23224A000, v14, OS_LOG_TYPE_ERROR, "Failed to unarchive blob for key %@: %@", v26, 0x16u);
        }
      }
    }
  }

  objc_storeStrong(v5, v6);
  v18 = *MEMORY[0x277D85DE8];
}

void __132__PPRecordStorageHelper_importDuetEventsWithLimit_database_client_remoteEventsOnly_isComplete_shouldContinueBlock_eventImportBlock___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  *a3 = 1;
  if ([v5 count] < *(a1 + 80))
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      *v6 = 1;
    }
  }

  if ((*(*(a1 + 48) + 16))())
  {
    v7 = *(a1 + 84);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __132__PPRecordStorageHelper_importDuetEventsWithLimit_database_client_remoteEventsOnly_isComplete_shouldContinueBlock_eventImportBlock___block_invoke_3;
    v12[3] = &unk_278972E98;
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v15 = *(a1 + 64);
    v12[4] = v8;
    v10 = v5;
    v11 = *(a1 + 72);
    v13 = v10;
    v16 = v11;
    v14 = *(a1 + 56);
    [v9 writeTransactionWithClient:v7 block:v12];
  }
}

void __132__PPRecordStorageHelper_importDuetEventsWithLimit_database_client_remoteEventsOnly_isComplete_shouldContinueBlock_eventImportBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(*(*(a1 + 56) + 8) + 40);
  v7 = *(a1 + 64);
  v8 = *(a1 + 40);
  v9 = v6;
  v24 = v5;
  v10 = a2;
  v23 = v9;
  if (v4)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__5140;
    v30 = __Block_byref_object_dispose__5141;
    v11 = v9;
    v31 = v11;
    v12 = [PPSQLKVStore loadBlobForKey:v4[7] transaction:v10];
    if (v12)
    {
      v25 = 0;
      v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:&v25];
      v14 = v25;
      if (v13)
      {
        if (([v13 isEqualToDate:v11] & 1) == 0)
        {
          v15 = pp_default_log_handle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "Detected concurrent _DK event import, aborting", buf, 2u);
          }

          if (v7)
          {
            *v7 = 1;
          }

          v4 = v27[5];

LABEL_16:
LABEL_22:
          _Block_object_dispose(&v26, 8);

          goto LABEL_23;
        }
      }

      else
      {
        v17 = pp_default_log_handle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v22 = v4[7];
          *buf = 138412546;
          *&buf[4] = v22;
          *&buf[12] = 2112;
          *&buf[14] = v14;
          _os_log_error_impl(&dword_23224A000, v17, OS_LOG_TYPE_ERROR, "Failed to unarchive blob for key %@: %@", buf, 0x16u);
        }
      }
    }

    else if (v11)
    {
      v16 = pp_default_log_handle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Detected concurrent _DK event import, aborting", buf, 2u);
      }

      if (v7)
      {
        *v7 = 1;
      }

      v4 = v27[5];
      goto LABEL_16;
    }

    [v4 truncateRecordsByDroppingOldestMakingRoomForCount:objc_msgSend(v8 txnWitness:{"count"), v10}];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __103__PPRecordStorageHelper__importDuetEventBatch_lastDKImportDate_isComplete_eventImportBlock_txnWitness___block_invoke;
    v33 = &unk_278972EE8;
    v40 = sel__importDuetEventBatch_lastDKImportDate_isComplete_eventImportBlock_txnWitness_;
    v34 = v4;
    v35 = v10;
    v38 = v24;
    v18 = v8;
    v36 = v18;
    v39 = &v26;
    v37 = v11;
    [v18 enumerateObjectsUsingBlock:buf];
    v4 = v27[5];

    goto LABEL_22;
  }

LABEL_23:

  v19 = *(*(a1 + 56) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v4;
  v21 = *MEMORY[0x277D85DE8];
}

void __103__PPRecordStorageHelper__importDuetEventBatch_lastDKImportDate_isComplete_eventImportBlock_txnWitness___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 UUID];

  if (!v6)
  {
    v34 = [MEMORY[0x277CCA890] currentHandler];
    [v34 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"PPRecordStorageHelper.m" lineNumber:708 description:@"_DKEvent has nil UUID"];
  }

  v7 = *(a1 + 32);
  v8 = [v5 UUID];
  v9 = [v7 blobFromUUID:v8];

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v10 = [*(a1 + 40) db];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT 1 FROM %@ WHERE dk_event_id = :uuidBlob", *(*(a1 + 32) + 8)];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __103__PPRecordStorageHelper__importDuetEventBatch_lastDKImportDate_isComplete_eventImportBlock_txnWitness___block_invoke_2;
  v37[3] = &unk_278978CF8;
  v12 = v9;
  v38 = v12;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __103__PPRecordStorageHelper__importDuetEventBatch_lastDKImportDate_isComplete_eventImportBlock_txnWitness___block_invoke_3;
  v36[3] = &unk_278976450;
  v36[4] = &v39;
  [v10 prepAndRunQuery:v11 onPrep:v37 onRow:v36 onError:0];

  if (*(v40 + 24) == 1)
  {
    v13 = pp_default_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v33 = [v5 UUID];
      *buf = 138412290;
      v44 = v33;
      _os_log_debug_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEBUG, "Skipping import of _DKEvent %@, already present", buf, 0xCu);
    }
  }

  else
  {
    v14 = +[PPSettings sharedInstance];
    v15 = [v5 source];
    v16 = [v15 bundleID];
    v17 = [v14 bundleIdentifierIsEnabledForCloudKit:v16];

    if (v17)
    {
      v18 = *(a1 + 40);
      (*(*(a1 + 64) + 16))();
    }
  }

  if (a3 + 1 == [*(a1 + 48) count])
  {
    v19 = [v5 startDate];
    v20 = *(*(a1 + 72) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    v22 = *(*(*(a1 + 72) + 8) + 40);
    if (v22 && *(a1 + 56) && [v22 isEqualToDate:?])
    {
      v23 = pp_default_log_handle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 56);
        *buf = 138412290;
        v44 = v24;
        _os_log_impl(&dword_23224A000, v23, OS_LOG_TYPE_DEFAULT, "_DKEvent.startDate %@ did not change across batch, bumping timestamp to avoid spin.", buf, 0xCu);
      }

      v25 = [*(a1 + 56) dateByAddingTimeInterval:1.0];
      v26 = *(*(a1 + 72) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;
    }

    v28 = *(*(*(a1 + 72) + 8) + 40);
    v35 = 0;
    v29 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v28 requiringSecureCoding:1 error:&v35];
    v30 = v35;
    if (v29)
    {
      [PPSQLKVStore storeBlob:v29 forKey:*(*(a1 + 32) + 56) transaction:*(a1 + 40)];
    }

    else
    {
      v31 = pp_default_log_handle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v44 = v30;
        _os_log_error_impl(&dword_23224A000, v31, OS_LOG_TYPE_ERROR, "Failed to serialize NSDate during _DK import: %@", buf, 0xCu);
      }
    }
  }

  _Block_object_dispose(&v39, 8);
  v32 = *MEMORY[0x277D85DE8];
}

void __92__PPRecordStorageHelper__addEventsSourcedOnLastImportDateToSet_lastDKImportDate_txnWitness___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  +[PPSourceStorage matchAccuracyForSecondsFrom1970];
  v4 = v3;
  [*(a1 + 32) timeIntervalSince1970];
  [v7 bindNamedParam:":before_timestamp" toDouble:v5 - v4];
  [*(a1 + 32) timeIntervalSince1970];
  [v7 bindNamedParam:":after_timestamp" toDouble:v4 + v6];
}

uint64_t __92__PPRecordStorageHelper__addEventsSourcedOnLastImportDateToSet_lastDKImportDate_txnWitness___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v3[1];
  v5 = a2;
  v6 = [v3 uuidForStatement:v5 columnName:"dk_event_id" tableName:{objc_msgSend(v4, "UTF8String")}];

  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }

  v7 = MEMORY[0x277D42690];

  return *v7;
}

void __86__PPRecordStorageHelper_fixupDKEventsMetadataWithShouldContinueBlock_database_client___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ((*(a1[6] + 16))())
  {
    v6 = MEMORY[0x277D425A0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __86__PPRecordStorageHelper_fixupDKEventsMetadataWithShouldContinueBlock_database_client___block_invoke_172;
    v14[3] = &unk_2789797E0;
    v7 = a1[4];
    v14[4] = a1[5];
    v15 = v5;
    [v6 runAsyncOnQueue:v7 afterDelaySeconds:v14 block:0.0];
    if (((*(a1[6] + 16))(a1[6], v8, v9, v10, v11) & 1) == 0)
    {
      v12 = pp_default_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "Deferring fix up of Duet stream.", buf, 2u);
      }

      *a3 = 1;
    }
  }

  else
  {
    v13 = pp_default_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "Deferring fix up of Duet stream.", buf, 2u);
    }

    *a3 = 1;
  }
}

void __86__PPRecordStorageHelper_fixupDKEventsMetadataWithShouldContinueBlock_database_client___block_invoke_173(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:@"%@_%@", *(*(a1 + 32) + 8), @"DuetStreamFixedUp"];
  [PPSQLKVStore setNumber:MEMORY[0x277CBEC38] forKey:v5 transaction:v4];
}

void __86__PPRecordStorageHelper_fixupDKEventsMetadataWithShouldContinueBlock_database_client___block_invoke_172(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (!v1)
  {
    v11 = 0;
LABEL_16:
    v14 = pp_default_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v17) = 138412290;
      *(&v17 + 4) = v11;
      _os_log_error_impl(&dword_23224A000, v14, OS_LOG_TYPE_ERROR, "Error cleaning events in Duet stream: %@", &v17, 0xCu);
    }

    goto LABEL_19;
  }

  v2 = [*(a1 + 40) _pas_filteredArrayWithTest:&__block_literal_global_5319];
  if (![v2 count])
  {

    v11 = 0;
    goto LABEL_19;
  }

  v3 = *(v1 + 40);
  v16 = 0;
  v4 = [v3 deleteEvents:v2 error:&v16];
  v5 = v16;
  if (v4)
  {
    *&v17 = MEMORY[0x277D85DD0];
    *(&v17 + 1) = 3221225472;
    v18 = __67__PPRecordStorageHelper__cleanUpMalformedMetadataDuetEvents_error___block_invoke_175;
    v19 = &unk_278972E48;
    v20 = v1;
    v6 = [v2 _pas_mappedArrayWithTransform:&v17];
    v7 = [*(v1 + 40) saveEvents:v6 stream:*(v1 + 48) maxRetries:-1 retryInterval:&__block_literal_global_181 shouldContinueBlock:5.0];
    if ((v7 & 1) == 0)
    {
      v8 = pp_default_log_handle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "Unable to save fixed up events to Duet", buf, 2u);
      }
    }

    v9 = pp_default_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_INFO, "Completed cleanup of malformed Duet events.", buf, 2u);
    }

    v10 = 0;
  }

  else
  {
    v12 = pp_default_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "Error deleting incompatible events: %@", buf, 0xCu);
    }

    v13 = v5;
    v7 = 0;
    v10 = v5;
  }

  v11 = v10;
  if ((v7 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:

  v15 = *MEMORY[0x277D85DE8];
}

id __67__PPRecordStorageHelper__cleanUpMalformedMetadataDuetEvents_error___block_invoke_175(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stream];
  v5 = [MEMORY[0x277CFE100] entityStream];
  v6 = [v4 isEqual:v5];

  v7 = *(*(a1 + 32) + 40);
  if (v6)
  {
    v8 = [v7 namedEntityRecordFromEvent:v3];
    if (v8)
    {
      v9 = v8;
      v10 = *(*(a1 + 32) + 40);
      v11 = [v3 source];
      v12 = [v11 deviceID];
      v13 = [v10 eventForNamedEntityRecord:v9 sourceDeviceID:v12];
LABEL_6:
      v16 = v13;

      goto LABEL_13;
    }

    v17 = pp_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 0;
      v18 = "PPRecordStorageHelper: unable to generate entity record for Duet event.";
      v19 = &v22;
LABEL_11:
      _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, v18, v19, 2u);
    }
  }

  else
  {
    v14 = [v7 topicRecordFromEvent:v3];
    if (v14)
    {
      v9 = v14;
      v15 = *(*(a1 + 32) + 40);
      v11 = [v3 source];
      v12 = [v11 deviceID];
      v13 = [v15 eventForTopicRecord:v9 sourceDeviceID:v12];
      goto LABEL_6;
    }

    v17 = pp_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v18 = "PPRecordStorageHelper: unable to generate topic record for Duet event.";
      v19 = &v21;
      goto LABEL_11;
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

BOOL __67__PPRecordStorageHelper__cleanUpMalformedMetadataDuetEvents_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 metadata];
  v3 = [v2 objectForKeyedSubscript:@"compatVersion"];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CFE0F8] compatibilityVersion];
    v4 = v5 != 0;
  }

  return v4;
}

void __78__PPRecordStorageHelper__dkEventMetadataFixupHasCompletedWithDatabase_client___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v8 = [[v3 alloc] initWithFormat:@"%@_%@", *(*(a1 + 32) + 8), @"DuetStreamFixedUp"];
  v5 = [PPSQLKVStore numberForKey:v8 transaction:v4];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)duetEventDeletionProcessingBlockWithDatabase:(id)database client:(unsigned __int8)client
{
  databaseCopy = database;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PPRecordStorageHelper_duetEventDeletionProcessingBlockWithDatabase_client___block_invoke;
  aBlock[3] = &unk_278972DD0;
  clientCopy = client;
  v11 = databaseCopy;
  selfCopy = self;
  v7 = databaseCopy;
  v8 = _Block_copy(aBlock);

  return v8;
}

void __77__PPRecordStorageHelper_duetEventDeletionProcessingBlockWithDatabase_client___block_invoke(int8x16_t *a1)
{
  v68[3] = *MEMORY[0x277D85DE8];
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__5140;
  v56 = __Block_byref_object_dispose__5141;
  v57 = 0;
  v2 = a1[2].i64[0];
  v3 = a1[3].u8[0];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __77__PPRecordStorageHelper_duetEventDeletionProcessingBlockWithDatabase_client___block_invoke_2;
  v51[3] = &unk_278978BB8;
  v51[4] = a1[2].i64[1];
  v51[5] = &v52;
  [v2 readTransactionWithClient:v3 block:v51];
  if (v53[5])
  {
    v4 = pp_default_log_handle();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_5;
    }

    v5 = *(a1[2].i64[1] + 8);
    v6 = v53[5];
    *v64 = 138412546;
    *&v64[4] = v5;
    *&v64[12] = 2112;
    *&v64[14] = v6;
    v7 = "dkEventDeletionProcessingBlock(%@): processing _DKEvent deletions after: %@";
    v8 = v4;
    v9 = 22;
  }

  else
  {
    v4 = pp_default_log_handle();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_5;
    }

    v39 = *(a1[2].i64[1] + 8);
    *v64 = 138412290;
    *&v64[4] = v39;
    v7 = "dkEventDeletionProcessingBlock(%@): processing all _DKEvent deletions";
    v8 = v4;
    v9 = 12;
  }

  _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, v7, v64, v9);
LABEL_5:

  if (v53[5])
  {
    [MEMORY[0x277CFE1E0] predicateForEventsWithStartDateAfter:?];
  }

  else
  {
    [MEMORY[0x277CCAC30] predicateWithValue:1];
  }
  v10 = ;
  v11 = MEMORY[0x277CFE1E0];
  v12 = [MEMORY[0x277CFE2A8] eventStreamName];
  v13 = [*(a1[2].i64[1] + 48) name];
  v14 = [v11 predicateForObjectsWithMetadataKey:v12 andStringValue:v13];

  v15 = MEMORY[0x277CFE1E0];
  v16 = [MEMORY[0x277CFE2A8] eventSourceDeviceID];
  v17 = [v15 predicateForObjectsWithMetadataKey:v16];

  v18 = MEMORY[0x277CCA920];
  v68[0] = v10;
  v68[1] = v14;
  v68[2] = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:3];
  v20 = [v18 andPredicateWithSubpredicates:v19];

  location = 0;
  *v64 = 0;
  *&v64[8] = v64;
  *&v64[16] = 0x3032000000;
  v65 = __Block_byref_object_copy__5140;
  v66 = __Block_byref_object_dispose__5141;
  v67 = 0;
  v21 = *(a1[2].i64[1] + 40);
  v22 = [v21 tombstoneStream];
  v63 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
  v24 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v62 = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
  v26 = [*(a1[2].i64[1] + 40) readBatchSize];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __77__PPRecordStorageHelper_duetEventDeletionProcessingBlockWithDatabase_client___block_invoke_157;
  v46[3] = &unk_278972DA8;
  v41 = a1[2];
  v27 = v41.i64[0];
  v47 = vextq_s8(v41, v41, 8uLL);
  v49 = a1[3].i8[0];
  v48 = v64;
  LOBYTE(v21) = [v21 iterEventBatchesMatchingPredicate:v20 streams:v23 sortDescriptors:v25 batchSize:v26 readMetaData:0 remoteOnly:0 error:&location block:v46];

  if ((v21 & 1) == 0)
  {
    v28 = pp_default_log_handle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v38 = *(a1[2].i64[1] + 8);
      *buf = 138412546;
      v59 = v38;
      v60 = 2112;
      v61 = location;
      _os_log_error_impl(&dword_23224A000, v28, OS_LOG_TYPE_ERROR, "dkEventDeletionProcessingBlock(%@): failed to load tombstone events: %@", buf, 0x16u);
    }
  }

  if (*(*&v64[8] + 40))
  {
    v29 = location;
    location = 0;

    v30 = *(*&v64[8] + 40);
    obj = location;
    v31 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v30 requiringSecureCoding:1 error:&obj];
    objc_storeStrong(&location, obj);
    if (v31)
    {
      v32 = a1[2].i64[0];
      v33 = a1[3].u8[0];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __77__PPRecordStorageHelper_duetEventDeletionProcessingBlockWithDatabase_client___block_invoke_159;
      v42[3] = &unk_278977CD8;
      v34 = v31;
      v35 = a1[2].i64[1];
      v43 = v34;
      v44 = v35;
      [v32 writeTransactionWithClient:v33 block:v42];
      v36 = v43;
    }

    else
    {
      v36 = pp_default_log_handle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v40 = *(a1[2].i64[1] + 8);
        *buf = 138412546;
        v59 = v40;
        v60 = 2112;
        v61 = location;
        _os_log_debug_impl(&dword_23224A000, v36, OS_LOG_TYPE_DEBUG, "dkEventDeletionProcessingBlock(%@): failed to serialize NSDate: %@", buf, 0x16u);
      }
    }
  }

  _Block_object_dispose(v64, 8);
  _Block_object_dispose(&v52, 8);

  v37 = *MEMORY[0x277D85DE8];
}

void __77__PPRecordStorageHelper_duetEventDeletionProcessingBlockWithDatabase_client___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [PPSQLKVStore loadBlobForKey:*(v3 + 64) transaction:a2];
    if (v4)
    {
      v12 = 0;
      v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v12];
      v6 = v12;
      if (!v5)
      {
        v7 = pp_default_log_handle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v11 = *(v3 + 64);
          *buf = 138412546;
          v14 = v11;
          v15 = 2112;
          v16 = v6;
          _os_log_error_impl(&dword_23224A000, v7, OS_LOG_TYPE_ERROR, "Failed to unarchive NSDate for KVS key %@: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = *MEMORY[0x277D85DE8];
}

void __77__PPRecordStorageHelper_duetEventDeletionProcessingBlockWithDatabase_client___block_invoke_157(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(*(a1 + 48) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  v9 = a2;
  v10 = v2;
  v11 = v10;
  v35 = v3;
  if (v3)
  {
    v29 = v4;
    v31 = v10;
    v34 = v6;
    v12 = [v9 lastObject];
    v13 = v12;
    if (v12)
    {
      v7 = [v12 startDate];
      v14 = v7;
    }

    v30 = v13;
    v33 = v7;
    v15 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v32 = v9;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v36 + 1) + 8 * i);
          v22 = [v21 stringValue];

          if (v22 && (v23 = objc_alloc(MEMORY[0x277CCAD78]), [v21 stringValue], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v23, "initWithUUIDString:", v24), v24, v25))
          {
            [v15 addObject:v25];
          }

          else
          {
            v25 = pp_default_log_handle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v26 = *(v35 + 8);
              v27 = [v21 stringValue];
              *buf = 138412546;
              *&buf[4] = v26;
              *&buf[12] = 2112;
              *&buf[14] = v27;
              _os_log_error_impl(&dword_23224A000, v25, OS_LOG_TYPE_ERROR, "dkEventDeletionProcessingBlock(%@): tombstone event contains bad UUIDString: %@", buf, 0x16u);
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v18);
    }

    v11 = v31;
    if ([v15 count])
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __87__PPRecordStorageHelper__processTombstoneEventBatch_database_client_lastTombstoneDate___block_invoke;
      v41 = &unk_278977CD8;
      v42 = v35;
      v43 = v15;
      [v31 writeTransactionWithClient:v29 block:buf];
    }

    v7 = v33;
    v6 = v34;
    v9 = v32;
  }

  objc_storeStrong(v6, v7);
  v28 = *MEMORY[0x277D85DE8];
}

void __87__PPRecordStorageHelper__processTombstoneEventBatch_database_client_lastTombstoneDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = a2;
    v7 = [[v5 alloc] initWithFormat:@"SELECT id FROM %@ WHERE dk_event_id IN _pas_nsarray(:eventUUIDBlobs) AND is_remote", v3[1]];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __79__PPRecordStorageHelper__cleanDatabaseOfCloudSyncedEventsWithUUIDs_txnWitness___block_invoke;
    v8[3] = &unk_2789743E8;
    v9 = v4;
    v10 = v3;
    [(PPRecordStorageHelper *)v3 _deleteRecordsWithRowIdsFromQuery:v7 txnWitness:v6 atLeastOneRecordClusterRemoved:0 deletedCount:0 bind:v8];
  }
}

void __79__PPRecordStorageHelper__cleanDatabaseOfCloudSyncedEventsWithUUIDs_txnWitness___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__PPRecordStorageHelper__cleanDatabaseOfCloudSyncedEventsWithUUIDs_txnWitness___block_invoke_2;
  v5[3] = &unk_278972DF8;
  v2 = *(a1 + 32);
  v5[4] = *(a1 + 40);
  v3 = a2;
  v4 = [v2 _pas_mappedArrayWithTransform:v5];
  [v3 bindNamedParam:":eventUUIDBlobs" toNSArray:v4];
}

- (id)rowIdsForRecordsToDropMakingRoomForCount:(unsigned int)count txnWitness:(id)witness
{
  witnessCopy = witness;
  v8 = objc_opt_new();
  v9 = [witnessCopy db];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__PPRecordStorageHelper_rowIdsForRecordsToDropMakingRoomForCount_txnWitness___block_invoke;
  v15[3] = &unk_278976ED0;
  countCopy = count;
  v15[4] = self;
  v16 = witnessCopy;
  v18 = a2;
  v10 = v8;
  v17 = v10;
  v11 = witnessCopy;
  [v9 readTransaction:v15];

  v12 = v17;
  v13 = v10;

  return v10;
}

void __77__PPRecordStorageHelper_rowIdsForRecordsToDropMakingRoomForCount_txnWitness___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  LODWORD(v3) = *(v3 + 32);
  v4 = *(a1 + 64);
  v5 = v3 >= v4;
  v6 = v3 - v4;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v2 db];
  v9 = [v8 numberOfRowsInTable:*(*(a1 + 32) + 8)];

  if (v9 < 0)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:*(a1 + 56) object:v9 file:*(*(a1 + 32) + 8) lineNumber:? description:?];
  }

  v10 = v9 - v7;
  if (v9 > v7)
  {
    if (v10 <= 0)
    {
      v15 = [MEMORY[0x277CCA890] currentHandler];
      [v15 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PPRecordStorageHelper.m" lineNumber:304 description:@"Removing non-positive row count"];
    }

    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rt.id FROM %@ AS rt INNER JOIN sources AS src ON rt.source_id = src.id ORDER BY src.seconds_from_1970 ASC LIMIT :rowsToRemove ", *(*(a1 + 32) + 8)];
    v12 = [*(*(a1 + 32) + 8) UTF8String];
    v13 = [*(a1 + 40) db];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77__PPRecordStorageHelper_rowIdsForRecordsToDropMakingRoomForCount_txnWitness___block_invoke_2;
    v19[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
    v19[4] = v10;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__PPRecordStorageHelper_rowIdsForRecordsToDropMakingRoomForCount_txnWitness___block_invoke_3;
    v16[3] = &unk_278972D80;
    v17 = *(a1 + 48);
    v18 = v12;
    [v13 prepAndRunQuery:v11 onPrep:v19 onRow:v16 onError:0];
  }
}

- (void)truncateRecordsByDroppingOldestMakingRoomForCount:(unsigned int)count txnWitness:(id)witness
{
  witnessCopy = witness;
  v7 = [witnessCopy db];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__PPRecordStorageHelper_truncateRecordsByDroppingOldestMakingRoomForCount_txnWitness___block_invoke;
  v9[3] = &unk_278978E70;
  countCopy = count;
  v9[4] = self;
  v10 = witnessCopy;
  v8 = witnessCopy;
  [v7 writeTransaction:v9];
}

void __86__PPRecordStorageHelper_truncateRecordsByDroppingOldestMakingRoomForCount_txnWitness___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 rowIdsForRecordsToDropMakingRoomForCount:*(a1 + 48) txnWitness:*(a1 + 40)];
  [v2 deleteRecordsForRowIds:v3 txnWitness:*(a1 + 40) atLeastOneClusterRemoved:0 deletedCount:0];
}

void __68__PPRecordStorageHelper_decayFeedbackWithDatabase_client_decayRate___block_invoke(void *a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  context = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_lastDecayDate", *(a1[4] + 16)];
  v5 = [PPSQLKVStore loadBlobForKey:v4 transaction:v3];
  if (v5)
  {
    v23 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v23];
    v7 = v23;
    if (!v6)
    {
      [PPSQLKVStore removeBlobForKey:v4 transaction:v3];
      v15 = pp_default_log_handle();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_12:

        v6 = 0;
        goto LABEL_17;
      }

      *buf = 138412546;
      v25 = v4;
      v26 = 2112;
      v27 = v7;
      v16 = "Clearing key %@ because the blob failed to deserialize: %@";
LABEL_19:
      _os_log_error_impl(&dword_23224A000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x16u);
      goto LABEL_12;
    }

    [v6 timeIntervalSinceNow];
    v9 = v8 / -86400.0;
    if (v8 / -86400.0 < 0.25)
    {
      *(*(a1[5] + 8) + 24) = 1;
      goto LABEL_17;
    }
  }

  else
  {
    v7 = 0;
    v9 = 1.0;
  }

  v10 = v7;
  v11 = MEMORY[0x277CCAAB0];
  v12 = objc_opt_new();
  v22 = v10;
  v6 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v22];
  v7 = v22;

  if (!v6)
  {
    v15 = pp_default_log_handle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 138412546;
    v25 = v4;
    v26 = 2112;
    v27 = v7;
    v16 = "Unable to serialize date for key %@: %@";
    goto LABEL_19;
  }

  v13 = [v3 db];
  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"UPDATE %@ SET pseudocount = :decayFactor * pseudocount", *(a1[4] + 16), context];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __68__PPRecordStorageHelper_decayFeedbackWithDatabase_client_decayRate___block_invoke_131;
  v21[3] = &__block_descriptor_48_e29_v16__0___PASSqliteStatement_8l;
  v21[4] = a1[6];
  *&v21[5] = v9;
  *(*(a1[5] + 8) + 24) = [v13 prepAndRunQuery:v14 onPrep:v21 onRow:0 onError:0];

  if (*(*(a1[5] + 8) + 24))
  {
    [PPSQLKVStore storeBlob:v6 forKey:v4 transaction:v3];
  }

  else
  {
    v17 = pp_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1[4] + 16);
      *buf = 138412290;
      v25 = v18;
      _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_INFO, "Decaying feedback counts UPSERT transaction failed for table %@", buf, 0xCu);
    }
  }

LABEL_17:

  objc_autoreleasePoolPop(context);
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __68__PPRecordStorageHelper_decayFeedbackWithDatabase_client_decayRate___block_invoke_131(uint64_t a1, void *a2)
{
  v3 = exp(-(*(a1 + 32) * *(a1 + 40)));

  return [a2 bindNamedParam:":decayFactor" toDouble:v3];
}

void __82__PPRecordStorageHelper_storeFeedback_database_client_lowercaseItemStrings_limit___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) feedbackItems];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__PPRecordStorageHelper_storeFeedback_database_client_lowercaseItemStrings_limit___block_invoke_2;
  v13[3] = &unk_278972D08;
  v18 = *(a1 + 72);
  v16 = *(a1 + 56);
  v5 = v3;
  v14 = v5;
  v15 = *(a1 + 40);
  v19 = *(a1 + 76);
  v17 = *(a1 + 64);
  [v4 enumerateObjectsUsingBlock:v13];

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v6 = [v5 db];
    v7 = [v6 numberOfRowsInTable:*(*(a1 + 48) + 16)];

    if (v7 > *(a1 + 72))
    {
      v8 = objc_autoreleasePoolPush();
      v9 = v7 - *(a1 + 72);
      v10 = [v5 db];
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DELETE FROM %@ ORDER BY last_update_seconds_from_1970 LIMIT :excessRowCount", *(*(a1 + 48) + 16)];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __82__PPRecordStorageHelper_storeFeedback_database_client_lowercaseItemStrings_limit___block_invoke_4;
      v12[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
      v12[4] = v9;
      *(*(*(a1 + 56) + 8) + 24) = [v10 prepAndRunQuery:v11 onPrep:v12 onRow:0 onError:0];

      objc_autoreleasePoolPop(v8);
    }
  }
}

void __82__PPRecordStorageHelper_storeFeedback_database_client_lowercaseItemStrings_limit___block_invoke_2(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (*(a1 + 64) <= a3)
  {
    *a4 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) db];
    v9 = *(a1 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __82__PPRecordStorageHelper_storeFeedback_database_client_lowercaseItemStrings_limit___block_invoke_3;
    v10[3] = &unk_278972CE0;
    v13 = *(a1 + 68);
    v11 = v7;
    v12 = *(a1 + 56);
    *(*(*(a1 + 48) + 8) + 24) = [v8 prepAndRunQuery:v9 onPrep:v10 onRow:0 onError:0];

    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      *a4 = 1;
    }
  }
}

void __82__PPRecordStorageHelper_storeFeedback_database_client_lowercaseItemStrings_limit___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 itemString];
  v7 = v6;
  if (v3 == 1)
  {
    v9 = v6;
    v8 = [v6 lowercaseString];

    v7 = v8;
  }

  v10 = v7;
  [v5 bindNamedParam:":itemString" toNSString:v7];
  [v5 bindNamedParam:":feedbackType" toInteger:{objc_msgSend(*(a1 + 32), "itemFeedbackType")}];
  [v5 bindNamedParam:":lastUpdateSecondsFrom1970" toDouble:*(a1 + 40)];
}

void __76__PPRecordStorageHelper_decayedFeedbackCountsForItemString_database_client___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__PPRecordStorageHelper_decayedFeedbackCountsForItemString_database_client___block_invoke_2;
  v10[3] = &unk_278978CF8;
  v4 = *(a1 + 32);
  v11 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__PPRecordStorageHelper_decayedFeedbackCountsForItemString_database_client___block_invoke_3;
  v6[3] = &unk_278972C90;
  v5 = *(a1 + 72);
  v7 = *(a1 + 56);
  v8 = v5;
  v9 = *(a1 + 88);
  *(*(*(a1 + 48) + 8) + 24) = [v3 prepAndRunQuery:v4 onPrep:v10 onRow:v6 onError:0];
}

void __76__PPRecordStorageHelper_decayedFeedbackCountsForItemString_database_client___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindNamedParam:":engagedExplicitly" toInteger:1];
  [v3 bindNamedParam:":engagedImplicitly" toInteger:2];
  [v3 bindNamedParam:":rejectedExplicitly" toInteger:3];
  [v3 bindNamedParam:":rejectedImplicitly" toInteger:4];
  [v3 bindNamedParam:":itemString" toNSString:*(a1 + 32)];
}

uint64_t __76__PPRecordStorageHelper_decayedFeedbackCountsForItemString_database_client___block_invoke_3(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a2;
  v5 = [[v3 alloc] initWithTimeIntervalSince1970:{objc_msgSend(v4, "getInt64ForColumnAlias:", "latest_date")}];
  v6 = *(a1[4] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [v4 getDoubleForColumnAlias:"engaged_explicitly"];
  *(*(a1[5] + 8) + 24) = v8;
  [v4 getDoubleForColumnAlias:"engaged_implicitly"];
  *(*(a1[6] + 8) + 24) = v9;
  [v4 getDoubleForColumnAlias:"rejected_explicitly"];
  *(*(a1[7] + 8) + 24) = v10;
  [v4 getDoubleForColumnAlias:"rejected_implicitly"];
  v12 = v11;

  *(*(a1[8] + 8) + 24) = v12;
  return *MEMORY[0x277D42698];
}

void __98__PPRecordStorageHelper_clearWithDatabase_client_deletedCount_error_clearExternalTableReferences___block_invoke(void *a1, void *a2)
{
  v8 = a2;
  v3 = a1[5];
  if (v3)
  {
    (*(v3 + 16))(v3, v8);
  }

  v4 = a1[4];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT id FROM %@", v4[1]];
  [(PPRecordStorageHelper *)v4 _deleteRecordsWithRowIdsFromQuery:v5 txnWitness:v8 atLeastOneRecordClusterRemoved:0 deletedCount:a1[6] bind:0];

  v6 = [v8 db];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DELETE FROM %@", *(a1[4] + 16)];
  [v6 prepAndRunQuery:v7 onPrep:0 onRow:0 onError:0];

  [PPSQLKVStore removeBlobForKey:*(a1[4] + 56) transaction:v8];
  [PPSQLKVStore removeBlobForKey:*(a1[4] + 64) transaction:v8];
}

- (id)uuidForStatement:(id)statement columnName:(const char *)name tableName:(const char *)tableName
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = [statement getNSDataForColumnName:name table:tableName];
  if ([v7 length] == 16)
  {
    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v7, "bytes")}];
  }

  else
  {
    v9 = pp_default_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      nameCopy = name;
      v14 = 2080;
      tableNameCopy = tableName;
      v16 = 2048;
      v17 = [v7 length];
      _os_log_error_impl(&dword_23224A000, v9, OS_LOG_TYPE_ERROR, "column '%s' in table '%s' has blob of unexpected length %tu", &v12, 0x20u);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)blobFromUUID:(id)d
{
  v3 = MEMORY[0x277CBEB28];
  dCopy = d;
  v5 = [[v3 alloc] initWithLength:16];
  [dCopy getUUIDBytes:{objc_msgSend(v5, "mutableBytes")}];

  return v5;
}

- (PPRecordStorageHelper)initWithName:(id)name table:(id)table clusterIdentifierColumn:(id)column maxRecords:(unsigned int)records duetStorage:(id)storage duetStream:(id)stream sourceStorage:(id)sourceStorage
{
  nameCopy = name;
  tableCopy = table;
  columnCopy = column;
  storageCopy = storage;
  streamCopy = stream;
  sourceStorageCopy = sourceStorage;
  v30.receiver = self;
  v30.super_class = PPRecordStorageHelper;
  v18 = [(PPRecordStorageHelper *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_table, table);
    columnCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_fb_pseudocounts", tableCopy, streamCopy, storageCopy, columnCopy];
    feedbackTable = v19->_feedbackTable;
    v19->_feedbackTable = columnCopy;

    objc_storeStrong(&v19->_clusterIdentifierColumn, column);
    v19->_maxRecords = records;
    objc_storeStrong(&v19->_duetStorage, storage);
    objc_storeStrong(&v19->_duetStream, stream);
    nameCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"lastDK%@ImportDate", nameCopy];
    lastDuetImportDateKey = v19->_lastDuetImportDateKey;
    v19->_lastDuetImportDateKey = nameCopy;

    nameCopy2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"lastDK%@DeletionDate", nameCopy];
    lastDuetDeletionDateKey = v19->_lastDuetDeletionDateKey;
    v19->_lastDuetDeletionDateKey = nameCopy2;

    objc_storeStrong(&v19->_sourceStorage, sourceStorage);
  }

  return v19;
}

@end
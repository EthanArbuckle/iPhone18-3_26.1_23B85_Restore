@interface PPSourceStorage
- (BOOL)iterSourcesWithQuery:(id)query error:(id *)error block:(id)block;
- (PPSourceStorage)initWithDatabase:(id)database;
- (id)createSourceWithStatement:(id)statement txnWitness:(id)witness;
- (id)loadSourcesWithBundleId:(id)id groupId:(id)groupId documentId:(id)documentId txnWitness:(id)witness;
- (id)whereSourceIdInSubclauseWithSourceIds:(id)ids tableNameAlias:(id)alias binders:(id)binders;
- (int64_t)pruneSourcesWithNoReferencesWithTxnWitness:(id)witness;
- (int64_t)updateOrCreateRowForSource:(id)source addingRefCount:(int64_t)count txnWitness:(id)witness;
@end

@implementation PPSourceStorage

- (int64_t)pruneSourcesWithNoReferencesWithTxnWitness:(id)witness
{
  v21 = *MEMORY[0x277D85DE8];
  witnessCopy = witness;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = [witnessCopy db];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__PPSourceStorage_pruneSourcesWithNoReferencesWithTxnWitness___block_invoke;
  v14[3] = &unk_278976450;
  v14[4] = &v15;
  [v5 prepAndRunQuery:@"SELECT COUNT(*) as count FROM sources WHERE ref_count <= 0" onPrep:0 onRow:v14 onError:0];

  if (!v16[3])
  {
    goto LABEL_10;
  }

  v6 = [witnessCopy db];
  [v6 prepAndRunNonDataQueries:&unk_284785610 onError:0];

  v7 = [(PPContactStorage *)self->_contactStorage pruneOrphanedHandlesWithTxnWitness:witnessCopy];
  if (v7)
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = v7;
      _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "PPSourceStorage: pruneSourcesWithNoReferencesWithTxnWitness: deleted %lld contact handles", buf, 0xCu);
    }
  }

  else
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, "PPSourceStorage: pruneSourcesWithNoReferencesWithTxnWitness: deleted 0 contact handles", buf, 2u);
    }
  }

  if (v16[3])
  {
    v9 = pp_default_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v16[3];
      *buf = 134217984;
      v20 = v10;
      _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPSourceStorage: pruneSourcesWithNoReferencesWithTxnWitness: deleted %lld sources", buf, 0xCu);
    }
  }

  else
  {
LABEL_10:
    v9 = pp_default_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEBUG, "PPSourceStorage: pruneSourcesWithNoReferencesWithTxnWitness: deleted 0 sources", buf, 2u);
    }
  }

  v11 = v16[3];
  _Block_object_dispose(&v15, 8);

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int64_t)updateOrCreateRowForSource:(id)source addingRefCount:(int64_t)count txnWitness:(id)witness
{
  sourceCopy = source;
  witnessCopy = witness;
  if (count > 0)
  {
    if (sourceCopy)
    {
      goto LABEL_3;
    }

LABEL_19:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPSourceStorage.m" lineNumber:232 description:{@"Invalid parameter not satisfying: %@", @"source"}];

    if (witnessCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPSourceStorage.m" lineNumber:231 description:{@"Invalid parameter not satisfying: %@", @"refCount > 0"}];

  if (!sourceCopy)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (witnessCopy)
  {
    goto LABEL_4;
  }

LABEL_20:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PPSourceStorage.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"txnWitness"}];

LABEL_4:
  date = [sourceCopy date];
  [date timeIntervalSinceReferenceDate];
  v13 = v12;

  v14 = v13 & 0x7FFFFFFFFFFFFFFFLL;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if (v14 <= 0x7FEFFFFFFFFFFFFFLL)
  {
    sha256 = [sourceCopy sha256];
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0x7FFFFFFFFFFFFFFFLL;
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0x7FFFFFFFFFFFFFFFLL;
    v17 = [witnessCopy db];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __72__PPSourceStorage_updateOrCreateRowForSource_addingRefCount_txnWitness___block_invoke;
    v44[3] = &unk_278978CF8;
    v18 = sha256;
    v45 = v18;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __72__PPSourceStorage_updateOrCreateRowForSource_addingRefCount_txnWitness___block_invoke_2;
    v43[3] = &unk_278975730;
    v43[4] = &v50;
    v43[5] = &v46;
    [v17 prepAndRunQuery:@"SELECT id onPrep:ref_count FROM sources WHERE sha256 = :sha256" onRow:v44 onError:{v43, 0}];

    if (v51[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      relevanceDate = [sourceCopy relevanceDate];

      if (relevanceDate)
      {
        v20 = MEMORY[0x277CCABB0];
        relevanceDate2 = [sourceCopy relevanceDate];
        [relevanceDate2 timeIntervalSince1970];
        relevanceDate = [v20 numberWithDouble:?];
      }

      v22 = [witnessCopy db];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __72__PPSourceStorage_updateOrCreateRowForSource_addingRefCount_txnWitness___block_invoke_3;
      v38[3] = &unk_278977B70;
      countCopy = count;
      v23 = sourceCopy;
      v39 = v23;
      v24 = relevanceDate;
      v40 = v24;
      v41 = v18;
      [v22 prepAndRunQuery:@"INSERT OR ABORT INTO sources (ref_count onPrep:bundle_id onRow:group_id onError:{doc_id, seconds_from_1970, relevance_seconds_from_1970, sha256, dwell_time_seconds, length_seconds, length_characters, donation_count, language, flags, contact_handle_count) VALUES (:refCount, :bundleId, :groupId, :docId, :timestamp, :relevanceTimestamp, :sha256, :dwellTimeSeconds, :lengthSeconds, :lengthCharacters, :donationCount, :language, :flags, :contactHandleCount)", v38, 0, 0}];

      v25 = [witnessCopy db];
      lastInsertRowId = [v25 lastInsertRowId];
      v51[3] = lastInsertRowId;

      if (v51[3] == 0x7FFFFFFFFFFFFFFFLL)
      {
        currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler4 handleFailureInMethod:a2 object:self file:@"PPSourceStorage.m" lineNumber:289 description:@"Failed to insert new source row"];
      }

      contactHandles = [v23 contactHandles];
      v28 = [contactHandles count];

      if (v28)
      {
        contactStorage = self->_contactStorage;
        contactHandles2 = [v23 contactHandles];
        [(PPContactStorage *)contactStorage storeHandleSourceMapWithHandles:contactHandles2 sourceId:v51[3] txnWitness:witnessCopy];
      }
    }

    else
    {
      if (v47[3] == 0x7FFFFFFFFFFFFFFFLL)
      {
        currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler5 handleFailureInMethod:a2 object:self file:@"PPSourceStorage.m" lineNumber:294 description:@"Failed to load preexisting source ref_count"];
      }

      v24 = [witnessCopy db];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __72__PPSourceStorage_updateOrCreateRowForSource_addingRefCount_txnWitness___block_invoke_4;
      v37[3] = &unk_278975758;
      v37[4] = &v46;
      v37[5] = &v50;
      v37[6] = count;
      [v24 prepAndRunQuery:@"UPDATE sources SET ref_count = :refCount onPrep:donation_count = donation_count + 1 WHERE id = :rowId" onRow:v37 onError:{0, 0}];
    }

    v15 = v51[3];
    _Block_object_dispose(&v46, 8);
    _Block_object_dispose(&v50, 8);
  }

  return v15;
}

uint64_t __72__PPSourceStorage_updateOrCreateRowForSource_addingRefCount_txnWitness___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 getInt64ForColumn:0];
  v4 = [v3 getInt64ForColumn:1];

  *(*(*(a1 + 40) + 8) + 24) = v4;
  return *MEMORY[0x277D42698];
}

void __72__PPSourceStorage_updateOrCreateRowForSource_addingRefCount_txnWitness___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = a2;
  [v4 bindNamedParam:":refCount" toInt64:v3];
  v5 = [*(a1 + 32) bundleId];
  [v4 bindNamedParam:":bundleId" toNSString:v5];

  v6 = [*(a1 + 32) groupId];
  [v4 bindNamedParam:":groupId" toNSString:v6];

  v7 = [*(a1 + 32) documentId];
  [v4 bindNamedParam:":docId" toNSString:v7];

  v8 = [*(a1 + 32) date];
  [v8 timeIntervalSince1970];
  [v4 bindNamedParam:":timestamp" toDouble:?];

  [v4 bindNamedParam:":relevanceTimestamp" toDoubleAsNSNumber:*(a1 + 40)];
  [v4 bindNamedParam:":sha256" toNSData:*(a1 + 48)];
  v9 = [*(a1 + 32) metadata];
  [v4 bindNamedParam:":dwellTimeSeconds" toInt64:{objc_msgSend(v9, "dwellTimeSeconds")}];

  v10 = [*(a1 + 32) metadata];
  [v4 bindNamedParam:":lengthSeconds" toInt64:{objc_msgSend(v10, "lengthSeconds")}];

  v11 = [*(a1 + 32) metadata];
  [v4 bindNamedParam:":lengthCharacters" toInt64:{objc_msgSend(v11, "lengthCharacters")}];

  [v4 bindNamedParam:":donationCount" toInt64:1];
  v12 = [*(a1 + 32) metadata];
  [v4 bindNamedParam:":contactHandleCount" toInt64:{objc_msgSend(v12, "contactHandleCount")}];

  v13 = [*(a1 + 32) language];
  [v4 bindNamedParam:":language" toNSString:v13];

  v14 = [*(a1 + 32) metadata];
  [v4 bindNamedParam:":flags" toInt64:{objc_msgSend(v14, "flags")}];
}

void __72__PPSourceStorage_updateOrCreateRowForSource_addingRefCount_txnWitness___block_invoke_4(void *a1, void *a2)
{
  v3 = *(*(a1[4] + 8) + 24);
  v4 = a1[6];
  v5 = a2;
  [v5 bindNamedParam:":refCount" toInt64:v4 + v3];
  [v5 bindNamedParam:":rowId" toInt64:*(*(a1[5] + 8) + 24)];
}

- (id)createSourceWithStatement:(id)statement txnWitness:(id)witness
{
  statementCopy = statement;
  witnessCopy = witness;
  v7 = objc_autoreleasePoolPush();
  v8 = [statementCopy nonnullNSStringForColumnName:"bundle_id" table:"sources"];
  v9 = [statementCopy getNSStringForColumnName:"group_id" table:"sources"];
  v10 = [statementCopy nonnullNSStringForColumnName:"doc_id" table:"sources"];
  [statementCopy getDoubleForColumnName:"seconds_from_1970" table:"sources"];
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v19 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v11];
    v20 = witnessCopy;
    if (([statementCopy isNullForColumnName:"relevance_seconds_from_1970" table:"sources"] & 1) != 0 || (objc_msgSend(statementCopy, "getDoubleForColumnName:table:", "relevance_seconds_from_1970", "sources"), (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL))
    {
      v15 = 0;
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v14];
    }

    v16 = [statementCopy getNSStringForColumnName:"language" table:"sources"];
    v17 = [objc_alloc(MEMORY[0x277D3A4E0]) initWithDwellTimeSeconds:objc_msgSend(statementCopy lengthSeconds:"getInt64ForColumnName:table:" lengthCharacters:"dwell_time_seconds" donationCount:"sources") contactHandleCount:objc_msgSend(statementCopy flags:{"getInt64ForColumnName:table:", "length_seconds", "sources"), objc_msgSend(statementCopy, "getInt64ForColumnName:table:", "length_characters", "sources"), objc_msgSend(statementCopy, "getInt64ForColumnName:table:", "donation_count", "sources"), objc_msgSend(statementCopy, "getInt64ForColumnName:table:", "contact_handle_count", "sources"), objc_msgSend(statementCopy, "getInt64ForColumnName:table:", "flags", "sources")}];
    v13 = [objc_alloc(MEMORY[0x277D3A4D8]) initWithBundleId:v8 groupId:v9 documentId:v10 date:v19 relevanceDate:v15 contactHandles:0 language:v16 metadata:v17];

    witnessCopy = v20;
  }

  else
  {
    v12 = pp_default_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "PPSourceStorage createSourceWithStatement got NaN or Inf secondsFrom1970", buf, 2u);
    }

    v13 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v13;
}

- (id)loadSourcesWithBundleId:(id)id groupId:(id)groupId documentId:(id)documentId txnWitness:(id)witness
{
  idCopy = id;
  groupIdCopy = groupId;
  documentIdCopy = documentId;
  witnessCopy = witness;
  v14 = objc_opt_new();
  v15 = [witnessCopy db];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __73__PPSourceStorage_loadSourcesWithBundleId_groupId_documentId_txnWitness___block_invoke;
  v27[3] = &unk_278975708;
  v28 = idCopy;
  v29 = groupIdCopy;
  v30 = documentIdCopy;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __73__PPSourceStorage_loadSourcesWithBundleId_groupId_documentId_txnWitness___block_invoke_2;
  v24[3] = &unk_278977B98;
  v24[4] = self;
  v25 = witnessCopy;
  v16 = v14;
  v26 = v16;
  v17 = witnessCopy;
  v18 = documentIdCopy;
  v19 = groupIdCopy;
  v20 = idCopy;
  [v15 prepAndRunQuery:@"SELECT * FROM sources WHERE bundle_id = :bundleId AND group_id = :groupId AND doc_id = :docId" onPrep:v27 onRow:v24 onError:0];

  v21 = v26;
  v22 = v16;

  return v16;
}

void __73__PPSourceStorage_loadSourcesWithBundleId_groupId_documentId_txnWitness___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 bindNamedParam:":bundleId" toNSString:v3];
  [v4 bindNamedParam:":groupId" toNSString:a1[5]];
  [v4 bindNamedParam:":docId" toNSString:a1[6]];
}

uint64_t __73__PPSourceStorage_loadSourcesWithBundleId_groupId_documentId_txnWitness___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) createSourceWithStatement:a2 txnWitness:*(a1 + 40)];
  if (v3)
  {
    [*(a1 + 48) addObject:v3];
  }

  v4 = MEMORY[0x277D42690];

  return *v4;
}

- (id)whereSourceIdInSubclauseWithSourceIds:(id)ids tableNameAlias:(id)alias binders:(id)binders
{
  idsCopy = ids;
  aliasCopy = alias;
  bindersCopy = binders;
  if (!idsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPSourceStorage.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"sourceIds"}];
  }

  v12 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:idsCopy];
  if ([v12 count])
  {
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = @"sources";
    if (aliasCopy)
    {
      v14 = aliasCopy;
    }

    v15 = [v13 initWithFormat:@" AND %@.id IN _pas_nsset(:sourceIdSet) ", v14];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __80__PPSourceStorage_whereSourceIdInSubclauseWithSourceIds_tableNameAlias_binders___block_invoke;
    aBlock[3] = &unk_278978CF8;
    v20 = v12;
    v16 = _Block_copy(aBlock);
    [bindersCopy addObject:v16];
  }

  else
  {
    v15 = @" AND sources.id IN () ";
  }

  return v15;
}

- (BOOL)iterSourcesWithQuery:(id)query error:(id *)error block:(id)block
{
  queryCopy = query;
  blockCopy = block;
  v9 = objc_autoreleasePoolPush();
  if ([queryCopy limit])
  {
    v10 = objc_opt_new();
    fromDate = [queryCopy fromDate];

    if (fromDate)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [@"SELECT * FROM sources AS src WHERE 1 " stringByAppendingString:@"AND src.seconds_from_1970 >= :fromDateEpoch "];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __52__PPSourceStorage_iterSourcesWithQuery_error_block___block_invoke;
      aBlock[3] = &unk_278978CF8;
      v55 = queryCopy;
      v14 = _Block_copy(aBlock);
      [v10 addObject:v14];

      objc_autoreleasePoolPop(v12);
    }

    else
    {
      v13 = @"SELECT * FROM sources AS src WHERE 1 ";
    }

    toDate = [queryCopy toDate];

    if (toDate)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = [(__CFString *)v13 stringByAppendingString:@"AND src.seconds_from_1970 <= :toDateEpoch "];

      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __52__PPSourceStorage_iterSourcesWithQuery_error_block___block_invoke_2;
      v52[3] = &unk_278978CF8;
      v53 = queryCopy;
      v18 = _Block_copy(v52);
      [v10 addObject:v18];

      objc_autoreleasePoolPop(v16);
      v13 = v17;
    }

    v19 = objc_autoreleasePoolPush();
    matchingBundleIds = [queryCopy matchingBundleIds];
    if ([matchingBundleIds count])
    {
      v21 = [(__CFString *)v13 stringByAppendingString:@"AND src.bundle_id IN _pas_nsset(:matchingBundleIds) "];

      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __52__PPSourceStorage_iterSourcesWithQuery_error_block___block_invoke_3;
      v50[3] = &unk_278978CF8;
      v51 = matchingBundleIds;
      v22 = _Block_copy(v50);
      [v10 addObject:v22];

      v13 = v21;
    }

    objc_autoreleasePoolPop(v19);
    v23 = objc_autoreleasePoolPush();
    matchingDocumentIds = [queryCopy matchingDocumentIds];
    if ([matchingDocumentIds count])
    {
      v25 = [(__CFString *)v13 stringByAppendingString:@"AND src.doc_id IN _pas_nsset(:matchingDocumentIds) "];

      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __52__PPSourceStorage_iterSourcesWithQuery_error_block___block_invoke_4;
      v48[3] = &unk_278978CF8;
      v49 = matchingDocumentIds;
      v26 = _Block_copy(v48);
      [v10 addObject:v26];

      v13 = v25;
    }

    objc_autoreleasePoolPop(v23);
    v27 = objc_autoreleasePoolPush();
    matchingContactHandle = [queryCopy matchingContactHandle];
    v29 = [matchingContactHandle length];

    if (v29)
    {
      contactStorage = self->_contactStorage;
      matchingContactHandle2 = [queryCopy matchingContactHandle];
      v32 = [(PPContactStorage *)contactStorage sourcesForContactHandle:matchingContactHandle2];

      v33 = [(PPSourceStorage *)self whereSourceIdInSubclauseWithSourceIds:v32 tableNameAlias:@"src" binders:v10];
      v34 = [(__CFString *)v13 stringByAppendingString:v33];

      v13 = v34;
    }

    objc_autoreleasePoolPop(v27);
    v35 = [(__CFString *)v13 stringByAppendingString:@"ORDER BY src.seconds_from_1970 DESC "];

    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x2020000000;
    v47[3] = 0;
    db = self->_db;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __52__PPSourceStorage_iterSourcesWithQuery_error_block___block_invoke_5;
    v40[3] = &unk_278978D68;
    v37 = v35;
    v41 = v37;
    v38 = v10;
    v42 = v38;
    v46 = v47;
    v43 = queryCopy;
    selfCopy = self;
    v45 = blockCopy;
    [(PPSQLDatabase *)db readTransactionWithClient:8 block:v40];

    _Block_object_dispose(v47, 8);
  }

  objc_autoreleasePoolPop(v9);

  return 1;
}

void __52__PPSourceStorage_iterSourcesWithQuery_error_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 fromDate];
  [v4 timeIntervalSince1970];
  [v3 bindNamedParam:":fromDateEpoch" toDouble:?];
}

void __52__PPSourceStorage_iterSourcesWithQuery_error_block___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 toDate];
  [v4 timeIntervalSince1970];
  [v3 bindNamedParam:":toDateEpoch" toDouble:?];
}

void __52__PPSourceStorage_iterSourcesWithQuery_error_block___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__PPSourceStorage_iterSourcesWithQuery_error_block___block_invoke_6;
  v16[3] = &unk_278978CF8;
  v5 = *(a1 + 32);
  v17 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__PPSourceStorage_iterSourcesWithQuery_error_block___block_invoke_7;
  v10[3] = &unk_2789756E0;
  v15 = *(a1 + 72);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v11 = v6;
  v12 = v7;
  v13 = v3;
  v14 = v8;
  v9 = v3;
  [v4 prepAndRunQuery:v5 onPrep:v16 onRow:v10 onError:0];
}

void __52__PPSourceStorage_iterSourcesWithQuery_error_block___block_invoke_6(uint64_t a1, void *a2)
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

uint64_t __52__PPSourceStorage_iterSourcesWithQuery_error_block___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(*(*(a1 + 64) + 8) + 24);
  if (v5 == [*(a1 + 32) limit])
  {
    v6 = *MEMORY[0x277D42698];
  }

  else
  {
    v7 = [*(a1 + 40) createSourceWithStatement:v3 txnWitness:*(a1 + 48)];
    if (v7)
    {
      (*(*(a1 + 56) + 16))();
      ++*(*(*(a1 + 64) + 8) + 24);
      v8 = MEMORY[0x277D42698];
      v9 = *(*(*(a1 + 64) + 8) + 24);
      if (v9 != [*(a1 + 32) limit])
      {
        v8 = MEMORY[0x277D42690];
      }

      v6 = *v8;
    }

    else
    {
      v10 = pp_default_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "failed to create source while iterating.", buf, 2u);
      }

      v6 = *MEMORY[0x277D42690];
    }
  }

  objc_autoreleasePoolPop(v4);

  return v6;
}

- (PPSourceStorage)initWithDatabase:(id)database
{
  databaseCopy = database;
  v11.receiver = self;
  v11.super_class = PPSourceStorage;
  v6 = [(PPSourceStorage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_db, database);
    v8 = [[PPContactStorage alloc] initWithDatabase:v7->_db foundInAppsHarvestStoreGetter:&__block_literal_global_15466];
    contactStorage = v7->_contactStorage;
    v7->_contactStorage = v8;
  }

  return v7;
}

@end
@interface TSCERemoteDataStore
- (BOOL)hasFullyPopulatedCache;
- (BOOL)p_isInCollaborationMode;
- (TSCECalculationEngine)calculationEngine;
- (TSCERemoteDataStore)initWithContext:(id)a3 calculationEngine:(id)a4;
- (TSCERemoteDataStoreDelegate)delegate;
- (double)remoteDataSyncKey;
- (id)allQuotes;
- (id)allRemoteData;
- (id)cachedQuoteForSymbol:(id)a3;
- (id)p_dictionaryForRemoteData:(id)a3;
- (id)p_tsceValueFromTsceCellValue:(id)a3;
- (id)p_updateCachesWithMap:(id)a3 quotes:(id)a4 overwriteValues:(BOOL)a5;
- (id)valueForRemoteData:(id)a3;
- (void)addRemoteDataInterest:(id)a3 forOwner:(const TSKUIDStruct *)a4;
- (void)dealloc;
- (void)loadFromUnarchiver:(id)a3;
- (void)p_initializeQueue;
- (void)p_recursiveWriteWillModify:(BOOL)a3 withBlock:(id)a4;
- (void)registerWithCoordinator;
- (void)remoteDataDidUpdateValues:(id)a3 quotes:(id)a4;
- (void)removeRemoteDataInterest:(id)a3 forOwner:(const TSKUIDStruct *)a4;
- (void)saveToArchiver:(id)a3;
- (void)unregisterWithCoordinator;
- (void)updateCachedStocksFromKnownStocks:(id)a3;
- (void)updateCachedStocksIntoStore:(id)a3;
- (void)updateWithRemoteDataMap:(id)a3 quotes:(id)a4 syncKey:(double)a5;
@end

@implementation TSCERemoteDataStore

- (void)p_initializeQueue
{
  v3 = dispatch_queue_create("Remote Data Store", MEMORY[0x277D85CD8]);
  queue = self->_queue;
  self->_queue = v3;

  dispatch_queue_set_specific(self->_queue, qword_27CFB4708, self->_queue, 0);
  v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
  updateQueue = self->_updateQueue;
  self->_updateQueue = v5;

  objc_msgSend_setName_(self->_updateQueue, v7, @"Remote Data Store Update", v8, v9);
  objc_msgSend_setMaxConcurrentOperationCount_(self->_updateQueue, v10, 1, v11, v12);
  v13 = dispatch_semaphore_create(1);
  tspSemaphore = self->_tspSemaphore;
  self->_tspSemaphore = v13;
}

- (void)p_recursiveWriteWillModify:(BOOL)a3 withBlock:(id)a4
{
  v4 = a3;
  block = a4;
  specific = dispatch_get_specific(qword_27CFB4708);
  queue = self->_queue;
  if (specific == queue)
  {
    block[2]();
  }

  else
  {
    if (v4)
    {
      dispatch_semaphore_wait(self->_tspSemaphore, 0xFFFFFFFFFFFFFFFFLL);
      objc_msgSend_willModify(self, v8, v9, v10, v11);
      dispatch_semaphore_signal(self->_tspSemaphore);
      queue = self->_queue;
    }

    dispatch_barrier_sync(queue, block);
  }
}

- (TSCERemoteDataStore)initWithContext:(id)a3 calculationEngine:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = TSCERemoteDataStore;
  v8 = [(TSCERemoteDataStore *)&v27 initWithContext:v6];
  if (v8)
  {
    v9 = objc_alloc_init(TSCERemoteDataValueMap);
    remoteDataMap = v8->_remoteDataMap;
    v8->_remoteDataMap = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedStocks = v8->_cachedStocks;
    v8->_cachedStocks = v11;

    v13 = objc_alloc_init(TSCERemoteDataSpecifierSet);
    interestingKeys = v8->_interestingKeys;
    v8->_interestingKeys = v13;

    v8->_hasInterestingKeys = 0;
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    ownerMap = v8->_ownerMap;
    v8->_ownerMap = v15;

    v8->_registeredWithCoordinator = 0;
    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    unSyncedStocks = v8->_unSyncedStocks;
    v8->_unSyncedStocks = v17;

    objc_msgSend_p_initializeQueue(v8, v19, v20, v21, v22);
    objc_msgSend_setCalculationEngine_(v8, v23, v7, v24, v25);
  }

  return v8;
}

- (void)dealloc
{
  if (self->_registeredWithCoordinator)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCERemoteDataStore dealloc]", v2, v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataStore.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 162, 0, "Failed to unregister store before dealloc");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  }

  v16.receiver = self;
  v16.super_class = TSCERemoteDataStore;
  [(TSCERemoteDataStore *)&v16 dealloc];
}

- (BOOL)p_isInCollaborationMode
{
  v5 = objc_msgSend_calculationEngine(self, a2, v2, v3, v4);
  v10 = objc_msgSend_isInCollaborationMode(v5, v6, v7, v8, v9);

  return v10;
}

- (void)registerWithCoordinator
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_22137C7D8;
  v3[3] = &unk_27845E3F8;
  v3[4] = self;
  objc_msgSend_p_recursiveWriteWillModify_withBlock_(self, a2, 1, v3, v2);
}

- (void)unregisterWithCoordinator
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_22137C94C;
  v3[3] = &unk_27845E3F8;
  v3[4] = self;
  objc_msgSend_p_recursiveWriteWillModify_withBlock_(self, a2, 1, v3, v2);
}

- (id)valueForRemoteData:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isCold(v4, v5, v6, v7, v8) && objc_msgSend_year(v4, v9, v10, v11, v12) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSCERemoteDataStore valueForRemoteData:]", v14, v15);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataStore.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 196, 0, "Cold specifiers must have dates!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    v31 = objc_msgSend_invalidHistoricalDateError(TSCEError, v27, v28, v29, v30);
    v35 = objc_msgSend_errorValue_(TSCEErrorValue, v32, v31, v33, v34);
  }

  else
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = sub_22137CCF4;
    v53 = sub_22137CD04;
    v54 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22137CD0C;
    block[3] = &unk_278461A90;
    v48 = &v49;
    block[4] = self;
    v47 = v4;
    dispatch_sync(queue, block);
    v40 = v50[5];
    if (v40)
    {
      v35 = objc_msgSend_p_tsceValueFromTsceCellValue_(self, v37, v40, v38, v39);
    }

    else
    {
      if (__C != -1)
      {
        sub_2216F77F8();
      }

      v41 = objc_msgSend_notReadyError(TSCEError, v37, v40, v38, v39);
      v35 = objc_msgSend_errorValue_(TSCEErrorValue, v42, v41, v43, v44);
    }

    _Block_object_dispose(&v49, 8);
  }

  return v35;
}

- (id)cachedQuoteForSymbol:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v9 = objc_msgSend_calculationEngine(self, v4, v5, v6, v7);
    v14 = objc_msgSend_documentLocale(v9, v10, v11, v12, v13);
    v19 = objc_msgSend_locale(v14, v15, v16, v17, v18);

    v23 = objc_msgSend_uppercaseStringWithLocale_(v8, v20, v19, v21, v22);
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = sub_22137CCF4;
    v76 = sub_22137CD04;
    v77 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22137D13C;
    block[3] = &unk_278461A90;
    v71 = &v72;
    block[4] = self;
    v25 = v23;
    v70 = v25;
    dispatch_sync(queue, block);
    v30 = v73[5];
    if (!v30)
    {
      v31 = objc_msgSend_calculationEngine(self, v26, v27, v28, v29);
      v36 = objc_msgSend_accessController(v31, v32, v33, v34, v35);
      v41 = objc_msgSend_hasWrite(v36, v37, v38, v39, v40);

      if (v41)
      {
        v46 = MEMORY[0x277D81150];
        v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSCERemoteDataStore cachedQuoteForSymbol:]", v44, v45);
        v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataStore.mm", v49, v50);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v52, v47, v51, 244, 0, "We're about to capture the coordinator's queue lock. We should NOT have the write lock at this time.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
      }

      v57 = objc_msgSend_coordinator(self, v42, v43, v44, v45);
      v61 = objc_msgSend_cachedQuoteForSingleSymbol_(v57, v58, v25, v59, v60);
      v62 = v73[5];
      v73[5] = v61;

      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = sub_22137D1BC;
      v67[3] = &unk_27845FEF0;
      v67[4] = self;
      v68 = v25;
      objc_msgSend_p_recursiveWriteWillModify_withBlock_(self, v63, 0, v67, v64);

      v30 = v73[5];
    }

    v65 = v30;

    _Block_object_dispose(&v72, 8);
  }

  else
  {
    v65 = 0;
  }

  return v65;
}

- (void)addRemoteDataInterest:(id)a3 forOwner:(const TSKUIDStruct *)a4
{
  v6 = a3;
  if (objc_msgSend_count(v6, v7, v8, v9, v10))
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_22137CCF4;
    v37 = sub_22137CD04;
    v38 = 0;
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = sub_22137D3A4;
    v28 = &unk_278463668;
    v32 = a4;
    v29 = self;
    v30 = v6;
    v31 = &v33;
    objc_msgSend_p_recursiveWriteWillModify_withBlock_(self, v11, 1, &v25, v12);
    v17 = v34[5];
    if (v17 && objc_msgSend_count(v17, v13, v14, v15, v16, v25, v26, v27, v28, v29))
    {
      v22 = objc_msgSend_coordinator(self, v18, v19, v20, v21);
      objc_msgSend_addRemoteDataInterest_forStore_(v22, v23, v34[5], self, v24);
    }

    _Block_object_dispose(&v33, 8);
  }
}

- (void)removeRemoteDataInterest:(id)a3 forOwner:(const TSKUIDStruct *)a4
{
  v6 = a3;
  if (objc_msgSend_count(v6, v7, v8, v9, v10))
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_22137CCF4;
    v37 = sub_22137CD04;
    v38 = 0;
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = sub_22137D6BC;
    v28 = &unk_278463690;
    v31 = &v33;
    v32 = a4;
    v29 = self;
    v30 = v6;
    objc_msgSend_p_recursiveWriteWillModify_withBlock_(self, v11, 1, &v25, v12);
    v17 = v34[5];
    if (v17 && objc_msgSend_count(v17, v13, v14, v15, v16, v25, v26, v27, v28, v29))
    {
      v22 = objc_msgSend_coordinator(self, v18, v19, v20, v21);
      objc_msgSend_removeRemoteDataInterest_forStore_(v22, v23, v34[5], self, v24);
    }

    _Block_object_dispose(&v33, 8);
  }
}

- (id)p_updateCachesWithMap:(id)a3 quotes:(id)a4 overwriteValues:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_22137CCF4;
  v26 = sub_22137CD04;
  v27 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22137DAD4;
  v16[3] = &unk_2784636E0;
  v17 = v9;
  v18 = self;
  v21 = a5;
  v19 = v8;
  v20 = &v22;
  v10 = v8;
  v11 = v9;
  objc_msgSend_p_recursiveWriteWillModify_withBlock_(self, v12, 1, v16, v13);
  v14 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v14;
}

- (double)remoteDataSyncKey
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22137DF08;
  v6[3] = &unk_27845EC10;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  remoteDataSyncKey = -1.0;
  if (!v8[3])
  {
    remoteDataSyncKey = self->_remoteDataSyncKey;
  }

  _Block_object_dispose(&v7, 8);
  return remoteDataSyncKey;
}

- (void)remoteDataDidUpdateValues:(id)a3 quotes:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_count(v6, v8, v9, v10, v11) <= 0 && !objc_msgSend_count(v7, v12, v13, v14, v15))
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSCERemoteDataStore remoteDataDidUpdateValues:quotes:]", v14, v15);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataStore.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 371, 0, "Shouldn't get an empty update!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  if (self->_registeredWithCoordinator && (objc_msgSend_calculationEngine(self, v12, v13, v14, v15), v27 = objc_claimAutoreleasedReturnValue(), v27, v27))
  {
    updateQueue = self->_updateQueue;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_22137E1B0;
    v32[3] = &unk_278462620;
    v32[4] = self;
    v33 = v6;
    v34 = v7;
    objc_msgSend_addOperationWithBlock_(updateQueue, v29, v32, v30, v31);
  }

  else if (__C != -1)
  {
    sub_2216F7820();
  }
}

- (id)p_tsceValueFromTsceCellValue:(id)a3
{
  v3 = a3;
  v12 = objc_msgSend_valueType(v3, v4, v5, v6, v7);
  if (v12 <= 4)
  {
    if (!v12)
    {
      v31 = objc_msgSend_nilValue(TSCENilValue, v8, v9, v10, v11);
      goto LABEL_14;
    }

    if (v12 == 3)
    {
      objc_opt_class();
      v13 = TSUCheckedDynamicCast();
      v18 = objc_msgSend_dateValue(v13, v19, v20, v21, v22);
      goto LABEL_13;
    }

LABEL_12:
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCERemoteDataStore p_tsceValueFromTsceCellValue:]", v10, v11);
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataStore.mm", v35, v36);
    v38 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v33, v37, 466, 0, "Attempted to create a TSCEvalue from an unsupported TSCECellValue of class: %@", v38);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
    v13 = objc_msgSend_remoteDataServerError(TSCEError, v44, v45, v46, v47);
    v18 = objc_msgSend_errorValue_(TSCEErrorValue, v48, v13, v49, v50);
    goto LABEL_13;
  }

  if (v12 == 5)
  {
    objc_opt_class();
    v13 = TSUCheckedDynamicCast();
    v18 = objc_msgSend_numberValue(v13, v23, v24, v25, v26);
    goto LABEL_13;
  }

  if (v12 == 7)
  {
    objc_opt_class();
    v13 = TSUCheckedDynamicCast();
    v18 = objc_msgSend_stringValue(v13, v27, v28, v29, v30);
    goto LABEL_13;
  }

  if (v12 != 9)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  v13 = TSUCheckedDynamicCast();
  v18 = objc_msgSend_errorValue(v13, v14, v15, v16, v17);
LABEL_13:
  v31 = v18;

LABEL_14:

  return v31;
}

- (id)allRemoteData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_22137CCF4;
  v10 = sub_22137CD04;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22137EAFC;
  v5[3] = &unk_27845EC10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)allQuotes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_22137CCF4;
  v10 = sub_22137CD04;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22137EC6C;
  v5[3] = &unk_27845EC10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)p_dictionaryForRemoteData:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_22137CCF4;
  v22 = sub_22137CD04;
  v9 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6, v7, v8);
  queue = self->_queue;
  v23 = v9;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22137EE40;
  block[3] = &unk_278463780;
  v16 = self;
  v17 = &v18;
  v15 = v4;
  v11 = v4;
  dispatch_sync(queue, block);
  v12 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v12;
}

- (void)updateWithRemoteDataMap:(id)a3 quotes:(id)a4 syncKey:(double)a5
{
  v8 = a3;
  v9 = a4;
  if ((objc_msgSend_p_isInCollaborationMode(self, v10, v11, v12, v13) & 1) == 0)
  {
    v18 = objc_msgSend_delegate(self, v14, v15, v16, v17);

    if (!v18)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSCERemoteDataStore updateWithRemoteDataMap:quotes:syncKey:]", v16, v17);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataStore.mm", v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 508, 0, "Should never get a docserver update for an unshared file!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    }
  }

  v30 = objc_msgSend_delegate(self, v14, v15, v16, v17);

  if (!v30 && __C != -1)
  {
    sub_2216F7834();
  }

  updateQueue = self->_updateQueue;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_22137F1B4;
  v37[3] = &unk_2784637D0;
  v37[4] = self;
  v32 = v8;
  v38 = v32;
  v33 = v9;
  v39 = v33;
  v40 = a5;
  objc_msgSend_addOperationWithBlock_(updateQueue, v34, v37, v35, v36);
}

- (BOOL)hasFullyPopulatedCache
{
  if (!objc_msgSend_hasArchivableState(self, a2, v2, v3, v4))
  {
    return 1;
  }

  v10 = objc_msgSend_remoteDataMap(self, v6, v7, v8, v9);
  v15 = objc_msgSend_interestingKeys(self, v11, v12, v13, v14);
  v19 = objc_msgSend_containsValueForAllSpecifiersInSet_(v10, v16, v15, v17, v18);

  return v19;
}

- (void)updateCachedStocksFromKnownStocks:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_cachedStocks(self, v5, v6, v7, v8);
  v14 = objc_msgSend_tsu_allKeysAsSet(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_tsu_allKeysAsSet(v4, v15, v16, v17, v18);
  v23 = objc_msgSend_tsu_setByIntersectingSet_(v14, v20, v19, v21, v22);

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_22137F554;
  v28[3] = &unk_2784637F8;
  v28[4] = self;
  v24 = v4;
  v29 = v24;
  objc_msgSend_enumerateObjectsUsingBlock_(v23, v25, v28, v26, v27);
}

- (void)updateCachedStocksIntoStore:(id)a3
{
  v12 = a3;
  v8 = objc_msgSend_cachedStocks(self, v4, v5, v6, v7);
  objc_msgSend_updateCachedStocksFromKnownStocks_(v12, v9, v8, v10, v11);
}

- (void)loadFromUnarchiver:(id)a3
{
  v56 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v56, v4, off_2812E2AC8[156], v5, v6);

  objc_msgSend_p_initializeQueue(self, v8, v9, v10, v11);
  v12 = [TSCERemoteDataValueMap alloc];
  if (*(v7 + 48))
  {
    v16 = objc_msgSend_initFromArchive_(v12, v13, *(v7 + 48), v14, v15);
  }

  else
  {
    v16 = objc_msgSend_initFromArchive_(v12, v13, &TSCE::_RemoteDataValueMapArchive_default_instance_, v14, v15);
  }

  remoteDataMap = self->_remoteDataMap;
  self->_remoteDataMap = v16;

  v18 = objc_alloc_init(TSCERemoteDataSpecifierSet);
  interestingKeys = self->_interestingKeys;
  self->_interestingKeys = v18;

  self->_hasInterestingKeys = 0;
  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  ownerMap = self->_ownerMap;
  self->_ownerMap = v20;

  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  cachedStocks = self->_cachedStocks;
  self->_cachedStocks = v22;

  v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
  unSyncedStocks = self->_unSyncedStocks;
  self->_unSyncedStocks = v24;

  v30 = *(v7 + 40);
  if (v30)
  {
    v31 = (v30 + 8);
  }

  else
  {
    v31 = 0;
  }

  v32 = *(v7 + 32);
  if (v32)
  {
    v33 = 8 * v32;
    do
    {
      v34 = objc_msgSend_stockFromArchive_(TSCEStock, v26, *v31, v28, v29);
      v35 = self->_cachedStocks;
      v40 = objc_msgSend_symbol(v34, v36, v37, v38, v39);
      objc_msgSend_setObject_forKeyedSubscript_(v35, v41, v34, v40, v42);

      v43 = self->_unSyncedStocks;
      v48 = objc_msgSend_symbol(v34, v44, v45, v46, v47);
      objc_msgSend_addObject_(v43, v49, v48, v50, v51);

      ++v31;
      v33 -= 8;
    }

    while (v33);
  }

  if (__C != -1)
  {
    sub_2216F7848();
  }

  v52 = objc_msgSend_sharedCoordinator(TSCERemoteDataCoordinator, v26, v27, v28, v29);
  objc_msgSend_updateKnownCachedStocksInStore_(v52, v53, self, v54, v55);
}

- (void)saveToArchiver:(id)a3
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, sub_221380188, off_2812E2AC8[156], v6);

  v43 = v7;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_22137CCF4;
  v38 = sub_22137CD04;
  v39 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_22137CCF4;
  v32[4] = sub_22137CD04;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_22137CCF4;
  v30[4] = sub_22137CD04;
  v31 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_22137FC80;
  v29[3] = &unk_278463820;
  v29[4] = self;
  v29[5] = &v34;
  v29[6] = v32;
  v29[7] = v30;
  objc_msgSend_p_recursiveWriteWillModify_withBlock_(self, v8, 0, v29, v9);
  if (__C != -1)
  {
    sub_2216F785C();
  }

  v13 = v35[5];
  v14 = v41[3];
  *(v14 + 16) |= 1u;
  v15 = *(v14 + 48);
  if (!v15)
  {
    v16 = *(v14 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RemoteDataValueMapArchive>(v16);
    *(v14 + 48) = v15;
  }

  objc_msgSend_saveToArchive_(v13, v10, v15, v11, v12);
  v21 = objc_msgSend_cachedStocks(self, v17, v18, v19, v20);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_22137FE1C;
  v28[3] = &unk_278463848;
  v28[4] = v32;
  v28[5] = &v40;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v21, v22, v28, v23, v24);

  objc_msgSend_requiresDocumentVersion_(v4, v25, *MEMORY[0x277D80978], v26, v27);
  _Block_object_dispose(v30, 8);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(&v40, 8);
}

- (TSCERemoteDataStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TSCECalculationEngine)calculationEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);

  return WeakRetained;
}

@end
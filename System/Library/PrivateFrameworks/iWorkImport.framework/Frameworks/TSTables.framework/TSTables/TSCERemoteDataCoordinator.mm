@interface TSCERemoteDataCoordinator
+ (id)sharedCoordinator;
- (BOOL)isOnlineForDataKind:(int64_t)kind;
- (BOOL)p_canUpdateStore:(id)store;
- (TSCERemoteDataCoordinator)init;
- (id)cachedQuoteForSingleSymbol:(id)symbol;
- (id)p_actionMapForKeys:(id)keys quotes:(id)quotes;
- (id)p_dataSourceFetcherForRemoteData:(id)data;
- (id)p_defaultStockList;
- (id)p_fetcherForDataKind:(int64_t)kind;
- (id)valueForSingleKey:(id)key;
- (void)addRemoteDataInterest:(id)interest forStore:(id)store;
- (void)autoCompleteQuotesWithInput:(id)input completion:(id)completion;
- (void)fetchQuotesWithTickers:(id)tickers completion:(id)completion;
- (void)p_removeRemoteDataInterest:(id)interest forStore:(id)store;
- (void)p_revalidateOnlineStatus;
- (void)registerStore:(id)store;
- (void)removeRemoteDataInterest:(id)interest forStore:(id)store;
- (void)sourceFetcherDidGoOffline:(id)offline forKeys:(id)keys;
- (void)sourceFetcherDidGoOnline:(id)online forKeys:(id)keys;
- (void)sourceFetcherDidUpdate:(id)update withValues:(id)values quotes:(id)quotes;
- (void)unregisterStore:(id)store;
- (void)updateKnownCachedStocksInStore:(id)store;
@end

@implementation TSCERemoteDataCoordinator

+ (id)sharedCoordinator
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_221294AE8;
  block[3] = &unk_278462558;
  block[4] = self;
  if (qword_27CFB53D0 != -1)
  {
    dispatch_once(&qword_27CFB53D0, block);
  }

  v2 = qword_27CFB53C8;

  return v2;
}

- (TSCERemoteDataCoordinator)init
{
  v18.receiver = self;
  v18.super_class = TSCERemoteDataCoordinator;
  v2 = [(TSCERemoteDataCoordinator *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    sourceFetchers = v2->_sourceFetchers;
    v2->_sourceFetchers = v3;

    v5 = objc_alloc_init(MEMORY[0x277D812B8]);
    storeMap = v2->_storeMap;
    v2->_storeMap = v5;

    v7 = objc_alloc_init(TSCERemoteDataValueMap);
    cachedSpecifiers = v2->_cachedSpecifiers;
    v2->_cachedSpecifiers = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedQuotes = v2->_cachedQuotes;
    v2->_cachedQuotes = v9;

    v11 = dispatch_queue_create("Remote Data Coordinator", MEMORY[0x277D85CD8]);
    queue = v2->_queue;
    v2->_queue = v11;

    v13 = objc_alloc_init(MEMORY[0x277D81208]);
    dataKindStatus = v2->_dataKindStatus;
    v2->_dataKindStatus = v13;

    objc_msgSend_setInt_forKey_(v2->_dataKindStatus, v15, 1, 1, v16);
  }

  return v2;
}

- (void)registerStore:(id)store
{
  storeCopy = store;
  if (__C != -1)
  {
    sub_2216F75D4();
  }

  v4 = self->_storeMap;
  objc_sync_enter(v4);
  v9 = objc_msgSend_storeMap(self, v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKey_(v9, v10, storeCopy, v11, v12);

  if (v13)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSCERemoteDataCoordinator registerStore:]", v16, v17);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataCoordinator.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 178, 0, "%@ is already registered!", storeCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_storeMap(self, v14, v15, v16, v17);
  v34 = objc_msgSend_set(TSCERemoteDataSpecifierSet, v30, v31, v32, v33);
  objc_msgSend_setObject_forUncopiedKey_(v29, v35, v34, storeCopy, v36);

  objc_sync_exit(v4);
}

- (void)unregisterStore:(id)store
{
  storeCopy = store;
  if (__C != -1)
  {
    sub_2216F75E8();
  }

  v4 = self->_storeMap;
  objc_sync_enter(v4);
  v9 = objc_msgSend_storeMap(self, v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKey_(v9, v10, storeCopy, v11, v12);

  if (!v13)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSCERemoteDataCoordinator unregisterStore:]", v16, v17);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataCoordinator.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 187, 0, "%@ is not registered", storeCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_storeMap(self, v14, v15, v16, v17);
  v33 = objc_msgSend_objectForKeyedSubscript_(v29, v30, storeCopy, v31, v32);

  objc_msgSend_p_removeRemoteDataInterest_forStore_(self, v34, v33, storeCopy, v35);
  v40 = objc_msgSend_storeMap(self, v36, v37, v38, v39);
  objc_msgSend_removeObjectForKey_(v40, v41, storeCopy, v42, v43);

  objc_sync_exit(v4);
}

- (BOOL)p_canUpdateStore:(id)store
{
  storeCopy = store;
  v5 = self->_storeMap;
  objc_sync_enter(v5);
  v10 = objc_msgSend_storeMap(self, v6, v7, v8, v9);
  v14 = objc_msgSend_objectForKeyedSubscript_(v10, v11, storeCopy, v12, v13);
  v15 = v14 != 0;

  objc_sync_exit(v5);
  return v15;
}

- (id)p_fetcherForDataKind:(int64_t)kind
{
  v37 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = objc_msgSend_sourceFetchers(self, a2, kind, v3, v4, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v32, v36, 16);
  if (v12)
  {
    v13 = *v33;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v33 != v13)
      {
        objc_enumerationMutation(v6);
      }

      v15 = *(*(&v32 + 1) + 8 * v14);
      if (objc_msgSend_dataKind(v15, v8, v9, v10, v11) == kind)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v32, v36, 16);
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v19 = v15;

    if (v19)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v20 = MEMORY[0x277D81150];
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSCERemoteDataCoordinator p_fetcherForDataKind:]", v17, v18);
  v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataCoordinator.mm", v23, v24);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 222, 0, "No configured fetcher for this data kind!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  v19 = 0;
LABEL_12:

  return v19;
}

- (void)fetchQuotesWithTickers:(id)tickers completion:(id)completion
{
  tickersCopy = tickers;
  completionCopy = completion;
  if (!tickersCopy || objc_msgSend_isEqualToString_(tickersCopy, v7, &stru_2834BADA0, v9, v10))
  {
    v12 = objc_msgSend_p_defaultStockList(self, v7, v8, v9, v10);
    v16 = objc_msgSend_componentsJoinedByString_(v12, v13, @",", v14, v15);

    tickersCopy = v16;
  }

  v17 = objc_msgSend_p_fetcherForDataKind_(self, v7, 1, v9, v10);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_221295424;
  v21[3] = &unk_2784625D0;
  v21[4] = self;
  v18 = completionCopy;
  v22 = v18;
  objc_msgSend_fetchQuotesWithTickers_completion_(v17, v19, tickersCopy, v21, v20);
}

- (void)autoCompleteQuotesWithInput:(id)input completion:(id)completion
{
  inputCopy = input;
  completionCopy = completion;
  v11 = objc_msgSend_p_fetcherForDataKind_(self, v8, 1, v9, v10);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2212957CC;
  v15[3] = &unk_2784625F8;
  v12 = completionCopy;
  v16 = v12;
  objc_msgSend_autoCompleteQuotesWithInput_completion_(v11, v13, inputCopy, v15, v14);
}

- (id)valueForSingleKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_22129599C;
  v16 = sub_2212959AC;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2212959B4;
  block[3] = &unk_278461A90;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)cachedQuoteForSingleSymbol:(id)symbol
{
  symbolCopy = symbol;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_22129599C;
  v16 = sub_2212959AC;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_221295B44;
  block[3] = &unk_278461A90;
  v10 = symbolCopy;
  v11 = &v12;
  block[4] = self;
  v6 = symbolCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)updateKnownCachedStocksInStore:(id)store
{
  v23 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = objc_msgSend_storeMap(self, v5, v6, v7, v8, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v18, v22, 16);
  if (v14)
  {
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v18 + 1) + 8 * v16);
        if (v17 != storeCopy)
        {
          objc_msgSend_updateCachedStocksIntoStore_(v17, v11, storeCopy, v12, v13);
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v18, v22, 16);
    }

    while (v14);
  }
}

- (void)addRemoteDataInterest:(id)interest forStore:(id)store
{
  interestCopy = interest;
  storeCopy = store;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_221295DC0;
  block[3] = &unk_278462620;
  v12 = interestCopy;
  selfCopy = self;
  v14 = storeCopy;
  v9 = storeCopy;
  v10 = interestCopy;
  dispatch_barrier_async(queue, block);
}

- (void)removeRemoteDataInterest:(id)interest forStore:(id)store
{
  interestCopy = interest;
  storeCopy = store;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2212963F0;
  block[3] = &unk_278462620;
  block[4] = self;
  v12 = interestCopy;
  v13 = storeCopy;
  v9 = storeCopy;
  v10 = interestCopy;
  dispatch_barrier_async(queue, block);
}

- (id)p_defaultStockList
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_mutableCopy(&unk_28350EEC0, a2, v2, v3, v4);
  v11 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v7, v8, v9, v10);
  v16 = objc_msgSend_locale(v11, v12, v13, v14, v15);
  v20 = objc_msgSend_objectForKey_(v16, v17, *MEMORY[0x277CBE690], v18, v19);

  if (objc_msgSend_length(v20, v21, v22, v23, v24))
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v29 = objc_msgSend_p_localeStocks(self, v25, v26, v27, v28, 0);
    v33 = objc_msgSend_objectForKey_(v29, v30, v20, v31, v32);
    v38 = objc_msgSend_reverseObjectEnumerator(v33, v34, v35, v36, v37);

    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v50, v54, 16);
    if (v43)
    {
      v44 = *v51;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v51 != v44)
          {
            objc_enumerationMutation(v38);
          }

          v46 = *(*(&v50 + 1) + 8 * i);
          objc_msgSend_removeObject_(v6, v40, v46, v41, v42);
          objc_msgSend_insertObject_atIndex_(v6, v47, v46, 0, v48);
        }

        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v40, &v50, v54, 16);
      }

      while (v43);
    }
  }

  return v6;
}

- (id)p_dataSourceFetcherForRemoteData:(id)data
{
  v39 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = objc_msgSend_sourceFetchers(self, v5, v6, v7, v8);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v34, v38, 16);
  if (v14)
  {
    v15 = *v35;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v35 != v15)
      {
        objc_enumerationMutation(v9);
      }

      v17 = *(*(&v34 + 1) + 8 * v16);
      if (objc_msgSend_canFetchKey_(v17, v11, dataCopy, v12, v13))
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v34, v38, 16);
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v21 = v17;

    if (v21)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v22 = MEMORY[0x277D81150];
  v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSCERemoteDataCoordinator p_dataSourceFetcherForRemoteData:]", v19, v20);
  v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataCoordinator.mm", v25, v26);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 453, 0, "No matching remote data source fetcher for %@", dataCopy);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  v21 = 0;
LABEL_12:

  return v21;
}

- (void)p_removeRemoteDataInterest:(id)interest forStore:(id)store
{
  v105 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  storeCopy = store;
  v7 = self->_storeMap;
  objc_sync_enter(v7);
  v94 = storeCopy;
  v12 = objc_msgSend_storeMap(self, v8, v9, v10, v11);
  v16 = objc_msgSend_objectForKey_(v12, v13, storeCopy, v14, v15);

  if (v16 && objc_msgSend_count(v16, v17, v18, v19, v20))
  {
    v24 = objc_msgSend_setByIntersectingWithSet_(interestCopy, v21, v16, v22, v23);
    v29 = objc_msgSend_storeMap(self, v25, v26, v27, v28);
    v33 = objc_msgSend_objectForKey_(v29, v30, storeCopy, v31, v32);
    objc_msgSend_removeSpecifiersFromSet_(v33, v34, v24, v35, v36);

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v41 = objc_msgSend_storeMap(self, v37, v38, v39, v40);
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v99, v104, 16);
    if (v47)
    {
      v48 = *v100;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v100 != v48)
          {
            objc_enumerationMutation(v41);
          }

          v50 = *(*(&v99 + 1) + 8 * i);
          v51 = objc_msgSend_storeMap(self, v43, v44, v45, v46, interestCopy);
          v55 = objc_msgSend_objectForKeyedSubscript_(v51, v52, v50, v53, v54);
          objc_msgSend_removeSpecifiersFromSet_(v24, v56, v55, v57, v58);
        }

        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v43, &v99, v104, 16);
      }

      while (v47);
    }
  }

  else
  {
    v24 = 0;
  }

  objc_sync_exit(v7);
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v63 = objc_msgSend_sourceFetchers(self, v59, v60, v61, v62);
  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v95, v103, 16);
  if (v68)
  {
    v69 = *v96;
    do
    {
      for (j = 0; j != v68; ++j)
      {
        if (*v96 != v69)
        {
          objc_enumerationMutation(v63);
        }

        v71 = objc_msgSend_removeRemoteDataInterest_(*(*(&v95 + 1) + 8 * j), v65, v24, v66, v67, interestCopy);
        objc_msgSend_removeSpecifiersFromSet_(v24, v72, v71, v73, v74);
      }

      v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v65, &v95, v103, 16);
    }

    while (v68);
  }

  if (objc_msgSend_count(v24, v75, v76, v77, v78))
  {
    v82 = MEMORY[0x277D81150];
    v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "[TSCERemoteDataCoordinator p_removeRemoteDataInterest:forStore:]", v80, v81);
    v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataCoordinator.mm", v85, v86);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v82, v88, v83, v87, 486, 0, "Unclaimed specifiers after unregister!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v89, v90, v91, v92);
  }
}

- (void)p_revalidateOnlineStatus
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = self->_dataKindStatus;
  objc_sync_enter(v3);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = objc_msgSend_sourceFetchers(self, v4, v5, v6, v7, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v21, v25, 16);
  if (v14)
  {
    v15 = *v22;
    v16 = 1;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v22 != v15)
      {
        objc_enumerationMutation(v8);
      }

      v18 = *(*(&v21 + 1) + 8 * v17);
      if (objc_msgSend_dataKind(v18, v10, v11, v12, v13) == 1 && (objc_msgSend_offline(v18, v10, v11, v12, v13) & 1) == 0)
      {
        break;
      }

      if (v14 == ++v17)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v21, v25, 16);
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v16 = 0;
  }

  objc_msgSend_setInt_forKey_(self->_dataKindStatus, v19, v16, 1, v20);
  objc_sync_exit(v3);
}

- (BOOL)isOnlineForDataKind:(int64_t)kind
{
  v5 = self->_dataKindStatus;
  objc_sync_enter(v5);
  if (!objc_msgSend_containsKey_(self->_dataKindStatus, v6, kind, v7, v8))
  {
    objc_sync_exit(v5);

    objc_msgSend_p_revalidateOnlineStatus(self, v12, v13, v14, v15);
    v5 = self->_dataKindStatus;
    objc_sync_enter(v5);
    if ((objc_msgSend_containsKey_(self->_dataKindStatus, v16, kind, v17, v18) & 1) == 0)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCERemoteDataCoordinator isOnlineForDataKind:]", v10, v11);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataCoordinator.mm", v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 516, 0, "No status for this data kind!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    }
  }

  v30 = objc_msgSend_intForKey_(self->_dataKindStatus, v9, kind, v10, v11) != 0;
  objc_sync_exit(v5);

  return v30;
}

- (id)p_actionMapForKeys:(id)keys quotes:(id)quotes
{
  v68 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  quotesCopy = quotes;
  v56 = objc_msgSend_dictionary(MEMORY[0x277D812B8], v6, v7, v8, v9);
  v54 = self->_storeMap;
  objc_sync_enter(v54);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  objc_msgSend_storeMap(self, v10, v11, v12, v13);
  obj = v57 = self;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v63, v67, 16);
  if (v19)
  {
    v20 = *v64;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v64 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v63 + 1) + 8 * i);
        v23 = objc_msgSend_storeMap(v57, v15, v16, v17, v18, v54);
        v27 = objc_msgSend_objectForKeyedSubscript_(v23, v24, v22, v25, v26);

        v31 = objc_msgSend_setOfSpecifiersContainedInSet_(keysCopy, v28, v27, v29, v30);
        v36 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v32, v33, v34, v35);
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = sub_221297278;
        v60[3] = &unk_278462648;
        v37 = v27;
        v61 = v37;
        v38 = v36;
        v62 = v38;
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(quotesCopy, v39, v60, v40, v41);
        if (objc_msgSend_count(v31, v42, v43, v44, v45) || objc_msgSend_count(v38, v46, v47, v48, v49))
        {
          v50 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v46, v31, v38, v49);
          objc_msgSend_setObject_forUncopiedKey_(v56, v51, v50, v22, v52);
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v63, v67, 16);
    }

    while (v19);
  }

  objc_sync_exit(v54);

  return v56;
}

- (void)sourceFetcherDidUpdate:(id)update withValues:(id)values quotes:(id)quotes
{
  valuesCopy = values;
  quotesCopy = quotes;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2212973CC;
  block[3] = &unk_278462620;
  v13 = quotesCopy;
  selfCopy = self;
  v15 = valuesCopy;
  v10 = valuesCopy;
  v11 = quotesCopy;
  dispatch_barrier_async(queue, block);
}

- (void)sourceFetcherDidGoOffline:(id)offline forKeys:(id)keys
{
  offlineCopy = offline;
  keysCopy = keys;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_221297B7C;
  block[3] = &unk_278462620;
  v12 = offlineCopy;
  selfCopy = self;
  v14 = keysCopy;
  v9 = keysCopy;
  v10 = offlineCopy;
  dispatch_barrier_async(queue, block);
}

- (void)sourceFetcherDidGoOnline:(id)online forKeys:(id)keys
{
  onlineCopy = online;
  keysCopy = keys;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_221297EB4;
  block[3] = &unk_278462620;
  v12 = onlineCopy;
  selfCopy = self;
  v14 = keysCopy;
  v9 = keysCopy;
  v10 = onlineCopy;
  dispatch_barrier_async(queue, block);
}

@end
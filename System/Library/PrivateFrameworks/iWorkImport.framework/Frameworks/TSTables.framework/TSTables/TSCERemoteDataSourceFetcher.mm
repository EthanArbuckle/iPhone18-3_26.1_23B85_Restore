@interface TSCERemoteDataSourceFetcher
+ (id)fetcherWithCoordinator:(id)a3;
- (BOOL)canFetchKey:(id)a3;
- (NSString)identifier;
- (TSCERemoteDataCoordinator)coordinator;
- (TSCERemoteDataSourceFetcher)init;
- (TSCERemoteDataSourceFetcher)initWithCoordinator:(id)a3;
- (id)addRemoteDataInterest:(id)a3;
- (id)fetchableKeysFromSet:(id)a3;
- (id)removeRemoteDataInterest:(id)a3;
- (int64_t)dataKind;
- (void)autoCompleteQuotesWithInput:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)enqueueRequestForKeys:(id)a3;
- (void)fetchQuotesWithTickers:(id)a3 completion:(id)a4;
- (void)p_configureReachabilityWithHost:(id)a3;
- (void)p_refreshSpecifiers;
- (void)requestCompleted;
- (void)requestLaunched;
- (void)resumeUpdating;
- (void)sendRequestForKeys:(id)a3;
- (void)stopUpdating;
@end

@implementation TSCERemoteDataSourceFetcher

+ (id)fetcherWithCoordinator:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithCoordinator_(v4, v5, v3, v6, v7);

  return v8;
}

- (TSCERemoteDataSourceFetcher)init
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCERemoteDataSourceFetcher init]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSourceFetcher.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 93, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%s: %s", v17, v18, "Do not call method", "[TSCERemoteDataSourceFetcher init]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v20, *MEMORY[0x277CBE658], v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (TSCERemoteDataSourceFetcher)initWithCoordinator:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = TSCERemoteDataSourceFetcher;
  v5 = [(TSCERemoteDataSourceFetcher *)&v42 init];
  if (v5)
  {
    v6 = objc_alloc_init(TSCERemoteDataSpecifierSet);
    allRequestedKeys = v5->_allRequestedKeys;
    v5->_allRequestedKeys = v6;

    v8 = objc_alloc_init(TSCERemoteDataSpecifierSet);
    newlyRequestedKeys = v5->_newlyRequestedKeys;
    v5->_newlyRequestedKeys = v8;

    objc_storeWeak(&v5->_coordinator, v4);
    v14 = objc_msgSend_reachabilityCheckHost(v5, v10, v11, v12, v13);
    v5->_offline = 0;
    v5->_state = 0;
    v5->_requestsInFlight = 0;
    objc_msgSend_p_configureReachabilityWithHost_(v5, v15, v14, v16, v17);
    v22 = objc_msgSend_distantPast(MEMORY[0x277CBEAA8], v18, v19, v20, v21);
    objc_storeStrong(&v5->_lastRequestDate, v22);
    objc_storeStrong(&v5->_lastFullRefreshDate, v22);
    v23 = MEMORY[0x277CCACA8];
    v28 = objc_msgSend_identifier(v5, v24, v25, v26, v27);
    v32 = objc_msgSend_stringWithFormat_(v23, v29, @"Remote Data Fetcher: %@", v30, v31, v28);
    v33 = v32;
    v38 = objc_msgSend_UTF8String(v33, v34, v35, v36, v37);
    v39 = dispatch_queue_create(v38, 0);
    queue = v5->_queue;
    v5->_queue = v39;
  }

  return v5;
}

- (void)p_configureReachabilityWithHost:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v50 = MEMORY[0x277D85DD0];
  v51 = 3221225472;
  v52 = sub_2213DDD60;
  v53 = &unk_278464818;
  objc_copyWeak(&v54, &location);
  v5 = MEMORY[0x223DA1C10](&v50);
  v9 = objc_msgSend_networkReachabilityWithHostName_(MEMORY[0x277D81270], v6, v4, v7, v8, v50, v51, v52, v53);
  objc_msgSend_setServerReachability_(self, v10, v9, v11, v12);

  v17 = objc_msgSend_serverReachability(self, v13, v14, v15, v16);
  objc_msgSend_setReachabilityUpdatedBlock_(v17, v18, v5, v19, v20);

  v25 = objc_msgSend_networkReachabilityForInternetConnection(MEMORY[0x277D81270], v21, v22, v23, v24);
  objc_msgSend_setInternetReachability_(self, v26, v25, v27, v28);

  v33 = objc_msgSend_internetReachability(self, v29, v30, v31, v32);
  objc_msgSend_setReachabilityUpdatedBlock_(v33, v34, v5, v35, v36);

  v41 = objc_msgSend_internetReachability(self, v37, v38, v39, v40);
  objc_msgSend_enableNotifier(v41, v42, v43, v44, v45);

  v46 = MEMORY[0x277D81270];
  v47 = dispatch_get_global_queue(0, 0);
  objc_msgSend_internetReachabilityStatusWithQueue_completion_(v46, v48, v47, v5, v49);

  objc_destroyWeak(&v54);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  v4.receiver = self;
  v4.super_class = TSCERemoteDataSourceFetcher;
  [(TSCERemoteDataSourceFetcher *)&v4 dealloc];
}

- (id)addRemoteDataInterest:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_fetchableKeysFromSet_(self, v5, v4, v6, v7);
  v13 = objc_msgSend_queue(self, v9, v10, v11, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2213DE1D4;
  v17[3] = &unk_27845FEF0;
  v14 = v8;
  v18 = v14;
  v19 = self;
  dispatch_async(v13, v17);

  v15 = v14;
  return v14;
}

- (id)removeRemoteDataInterest:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_fetchableKeysFromSet_(self, v5, v4, v6, v7);
  v13 = objc_msgSend_queue(self, v9, v10, v11, v12);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2213DE3D8;
  v18[3] = &unk_27845FEF0;
  v18[4] = self;
  v14 = v8;
  v19 = v14;
  dispatch_async(v13, v18);

  v15 = v19;
  v16 = v14;

  return v14;
}

- (void)enqueueRequestForKeys:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_queue(self, v5, v6, v7, v8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2213DE538;
  v11[3] = &unk_27845FEF0;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  dispatch_async(v9, v11);
}

- (void)requestLaunched
{
  v6 = objc_msgSend_requestsInFlight(self, a2, v2, v3, v4);
  objc_msgSend_setRequestsInFlight_(self, v7, v6 + 1, v8, v9);
  if (__C != -1)
  {
    sub_2216F7960();
  }
}

- (void)requestCompleted
{
  v6 = objc_msgSend_requestsInFlight(self, a2, v2, v3, v4);
  objc_msgSend_setRequestsInFlight_(self, v7, v6 - 1, v8, v9);
  if (objc_msgSend_requestsInFlight(self, v10, v11, v12, v13))
  {
    if (__C != -1)
    {
      sub_2216F7974();
    }
  }

  else
  {
    if (__C != -1)
    {
      sub_2216F7988();
    }

    if (objc_msgSend_state(self, v14, v15, v16, v17) == 3)
    {
      objc_msgSend_setState_(self, v18, 1, v19, v20);
      v25 = objc_msgSend_newlyRequestedKeys(self, v21, v22, v23, v24);
      v30 = objc_msgSend_count(v25, v26, v27, v28, v29);

      if (v30)
      {

        objc_msgSend_p_refreshSpecifiers(self, v31, v32, v33, v34);
      }
    }
  }
}

- (void)p_refreshSpecifiers
{
  if (objc_msgSend_offline(self, a2, v2, v3, v4))
  {
    if (__C != -1)
    {
      sub_2216F7A3C();
    }

    return;
  }

  if (objc_msgSend_state(self, v6, v7, v8, v9) == 3)
  {
    if (__C != -1)
    {
      sub_2216F7A28();
    }

    return;
  }

  if (objc_msgSend_state(self, v10, v11, v12, v13))
  {
    if (__C != -1)
    {
      sub_2216F799C();
    }

    v18 = objc_msgSend_date(MEMORY[0x277CBEAA8], v14, v15, v16, v17);
    objc_msgSend_minimumTimeBetweenRequests(self, v19, v20, v21, v22);
    v24 = v23;
    v29 = objc_msgSend_lastRequestDate(self, v25, v26, v27, v28);
    objc_msgSend_timeIntervalSinceDate_(v18, v30, v29, v31, v32);
    v34 = v24 - v33;

    if (v34 <= 0.0)
    {
      objc_msgSend_setState_(self, v35, 3, v37, v38);
      v62 = objc_msgSend_lastFullRefreshDate(self, v58, v59, v60, v61);
      objc_msgSend_timeIntervalSinceDate_(v18, v63, v62, v64, v65);
      v67 = v66;
      objc_msgSend_recommendedTimeBetweenRequests(self, v68, v69, v70, v71);
      v73 = v72;

      if (v67 >= v73)
      {
        if (__C != -1)
        {
          sub_2216F79B0();
        }

        objc_msgSend_setDoFullRefresh_(self, v74, 1, v76, v77);
      }

      v39 = objc_msgSend_set(TSCERemoteDataSpecifierSet, v74, v75, v76, v77);
      v82 = objc_msgSend_newlyRequestedKeys(self, v78, v79, v80, v81);
      v87 = objc_msgSend_count(v82, v83, v84, v85, v86);

      if (v87)
      {
        if (__C != -1)
        {
          sub_2216F79C4();
        }

        v92 = objc_msgSend_newlyRequestedKeys(self, v88, v89, v90, v91);
        objc_msgSend_insertSpecifiersFromSet_(v39, v93, v92, v94, v95);

        v100 = objc_msgSend_newlyRequestedKeys(self, v96, v97, v98, v99);
        objc_msgSend_removeAllSpecifiers(v100, v101, v102, v103, v104);
      }

      if (objc_msgSend_doFullRefresh(self, v88, v89, v90, v91))
      {
        if (objc_msgSend_containsColdSpecifiers(v39, v105, v106, v107, v108))
        {
          v113 = objc_msgSend_allRequestedKeys(self, v109, v110, v111, v112);
          v118 = objc_msgSend_hotSpecifierSet(v113, v114, v115, v116, v117);
          objc_msgSend_insertSpecifiersFromSet_(v39, v119, v118, v120, v121);
        }

        else
        {
          v113 = objc_msgSend_allRequestedKeys(self, v109, v110, v111, v112);
          objc_msgSend_insertSpecifiersFromSet_(v39, v122, v113, v123, v124);
        }

        objc_msgSend_setDoFullRefresh_(self, v125, 0, v126, v127);
        objc_msgSend_setLastFullRefreshDate_(self, v128, v18, v129, v130);
        if (__C != -1)
        {
          sub_2216F79D8();
        }
      }

      if (objc_msgSend_count(v39, v105, v106, v107, v108))
      {
        objc_msgSend_setLastRequestDate_(self, v131, v18, v132, v133);
        if (__C != -1)
        {
          sub_2216F79EC();
        }

        objc_msgSend_sendRequestForKeys_(self, v134, v39, v135, v136);
      }

      else
      {
        objc_msgSend_setState_(self, v131, 1, v132, v133);
      }
    }

    else
    {
      v39 = objc_msgSend_newlyRequestedKeys(self, v35, v36, v37, v38);
      if (objc_msgSend_count(v39, v40, v41, v42, v43))
      {
        v48 = objc_msgSend_state(self, v44, v45, v46, v47);

        if (v48 != 2)
        {
          if (__C != -1)
          {
            sub_2216F7A00();
          }

          objc_msgSend_setState_(self, v49, 2, v50, v51);
          v52 = dispatch_time(0, ((v34 + 0.1) * 1000000000.0));
          v57 = objc_msgSend_queue(self, v53, v54, v55, v56);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_2213DEC9C;
          block[3] = &unk_27845E3F8;
          block[4] = self;
          dispatch_after(v52, v57, block);
        }

        goto LABEL_39;
      }
    }

LABEL_39:
    return;
  }

  if (__C != -1)
  {
    sub_2216F7A14();
  }
}

- (void)resumeUpdating
{
  if (objc_msgSend_state(self, a2, v2, v3, v4))
  {
    if (objc_msgSend_state(self, v6, v7, v8, v9) == 1 && (objc_msgSend_earlyRefreshRequested(self, v10, v11, v12, v13) & 1) == 0)
    {
      v18 = objc_msgSend_newlyRequestedKeys(self, v14, v15, v16, v17);
      v23 = objc_msgSend_count(v18, v19, v20, v21, v22);

      if (v23)
      {
        if (__C != -1)
        {
          sub_2216F7A64();
        }

        objc_msgSend_setEarlyRefreshRequested_(self, v24, 1, v25, v26);
        v27 = dispatch_time(0, 250000000);
        v32 = objc_msgSend_queue(self, v28, v29, v30, v31);
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = sub_2213DF14C;
        v67[3] = &unk_27845E3F8;
        v67[4] = self;
        dispatch_after(v27, v32, v67);
      }
    }
  }

  else
  {
    if (__C != -1)
    {
      sub_2216F7A78();
    }

    objc_msgSend_setState_(self, v6, 1, v8, v9);
    v37 = objc_msgSend_internetReachability(self, v33, v34, v35, v36);
    objc_msgSend_disableNotifier(v37, v38, v39, v40, v41);

    v46 = objc_msgSend_serverReachability(self, v42, v43, v44, v45);
    objc_msgSend_enableNotifier(v46, v47, v48, v49, v50);

    v55 = objc_msgSend_queue(self, v51, v52, v53, v54);
    v56 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v55);
    timer = self->_timer;
    self->_timer = v56;

    objc_msgSend_recommendedTimeBetweenRequests(self, v58, v59, v60, v61);
    v63 = (v62 * 1000000000.0);
    v64 = self->_timer;
    v65 = dispatch_time(0, 100000000);
    dispatch_source_set_timer(v64, v65, v63, 3 * v63);
    v66 = self->_timer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_2213DF100;
    handler[3] = &unk_27845E3F8;
    handler[4] = self;
    dispatch_source_set_event_handler(v66, handler);
    dispatch_resume(self->_timer);
  }
}

- (void)stopUpdating
{
  if (objc_msgSend_state(self, a2, v2, v3, v4))
  {
    objc_msgSend_setState_(self, v6, 0, v7, v8);
    if (__C != -1)
    {
      sub_2216F7AA0();
    }

    v13 = objc_msgSend_serverReachability(self, v9, v10, v11, v12);
    objc_msgSend_disableNotifier(v13, v14, v15, v16, v17);

    v22 = objc_msgSend_internetReachability(self, v18, v19, v20, v21);
    objc_msgSend_enableNotifier(v22, v23, v24, v25, v26);

    dispatch_source_cancel(self->_timer);
    timer = self->_timer;
    self->_timer = 0;
  }
}

- (int64_t)dataKind
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCERemoteDataSourceFetcher dataKind]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSourceFetcher.mm", v7, v8);
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v12, v5, v9, 418, 0, "Abstract method not overridden by %{public}@", v11);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  v17 = MEMORY[0x277CBEAD8];
  v18 = MEMORY[0x277CCACA8];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v24 = objc_msgSend_stringWithFormat_(v18, v21, @"Abstract method not overridden by %@: %s", v22, v23, v20, "[TSCERemoteDataSourceFetcher dataKind]");
  v26 = objc_msgSend_exceptionWithName_reason_userInfo_(v17, v25, *MEMORY[0x277CBE658], v24, 0);
  v27 = v26;

  objc_exception_throw(v26);
}

- (NSString)identifier
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCERemoteDataSourceFetcher identifier]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSourceFetcher.mm", v7, v8);
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v12, v5, v9, 423, 0, "Abstract method not overridden by %{public}@", v11);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  v17 = MEMORY[0x277CBEAD8];
  v18 = MEMORY[0x277CCACA8];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v24 = objc_msgSend_stringWithFormat_(v18, v21, @"Abstract method not overridden by %@: %s", v22, v23, v20, "[TSCERemoteDataSourceFetcher identifier]");
  v26 = objc_msgSend_exceptionWithName_reason_userInfo_(v17, v25, *MEMORY[0x277CBE658], v24, 0);
  v27 = v26;

  objc_exception_throw(v26);
}

- (BOOL)canFetchKey:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCERemoteDataSourceFetcher canFetchKey:]", v6, v7);
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSourceFetcher.mm", v10, v11);
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v15, v8, v12, 446, 0, "Abstract method not overridden by %{public}@", v14);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  v20 = MEMORY[0x277CBEAD8];
  v21 = MEMORY[0x277CCACA8];
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v27 = objc_msgSend_stringWithFormat_(v21, v24, @"Abstract method not overridden by %@: %s", v25, v26, v23, "[TSCERemoteDataSourceFetcher canFetchKey:]");
  v29 = objc_msgSend_exceptionWithName_reason_userInfo_(v20, v28, *MEMORY[0x277CBE658], v27, 0);
  v30 = v29;

  objc_exception_throw(v29);
}

- (id)fetchableKeysFromSet:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_set(TSCERemoteDataSpecifierSet, v5, v6, v7, v8);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2213DF844;
  v17[3] = &unk_278464840;
  v17[4] = self;
  v10 = v9;
  v18 = v10;
  objc_msgSend_enumerateSpecifiersWithBlock_(v4, v11, v17, v12, v13);
  v14 = v18;
  v15 = v10;

  return v10;
}

- (void)sendRequestForKeys:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCERemoteDataSourceFetcher sendRequestForKeys:]", v6, v7);
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSourceFetcher.mm", v10, v11);
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v15, v8, v12, 465, 0, "Abstract method not overridden by %{public}@", v14);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  v20 = MEMORY[0x277CBEAD8];
  v21 = MEMORY[0x277CCACA8];
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v27 = objc_msgSend_stringWithFormat_(v21, v24, @"Abstract method not overridden by %@: %s", v25, v26, v23, "[TSCERemoteDataSourceFetcher sendRequestForKeys:]");
  v29 = objc_msgSend_exceptionWithName_reason_userInfo_(v20, v28, *MEMORY[0x277CBE658], v27, 0);
  v30 = v29;

  objc_exception_throw(v29);
}

- (void)fetchQuotesWithTickers:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCERemoteDataSourceFetcher fetchQuotesWithTickers:completion:]", v9, v10);
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSourceFetcher.mm", v13, v14);
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v18, v11, v15, 469, 0, "Abstract method not overridden by %{public}@", v17);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  v23 = MEMORY[0x277CBEAD8];
  v24 = MEMORY[0x277CCACA8];
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  v30 = objc_msgSend_stringWithFormat_(v24, v27, @"Abstract method not overridden by %@: %s", v28, v29, v26, "[TSCERemoteDataSourceFetcher fetchQuotesWithTickers:completion:]");
  v32 = objc_msgSend_exceptionWithName_reason_userInfo_(v23, v31, *MEMORY[0x277CBE658], v30, 0);
  v33 = v32;

  objc_exception_throw(v32);
}

- (void)autoCompleteQuotesWithInput:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCERemoteDataSourceFetcher autoCompleteQuotesWithInput:completion:]", v9, v10);
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSourceFetcher.mm", v13, v14);
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v18, v11, v15, 473, 0, "Abstract method not overridden by %{public}@", v17);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  v23 = MEMORY[0x277CBEAD8];
  v24 = MEMORY[0x277CCACA8];
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  v30 = objc_msgSend_stringWithFormat_(v24, v27, @"Abstract method not overridden by %@: %s", v28, v29, v26, "[TSCERemoteDataSourceFetcher autoCompleteQuotesWithInput:completion:]");
  v32 = objc_msgSend_exceptionWithName_reason_userInfo_(v23, v31, *MEMORY[0x277CBE658], v30, 0);
  v33 = v32;

  objc_exception_throw(v32);
}

- (TSCERemoteDataCoordinator)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

@end
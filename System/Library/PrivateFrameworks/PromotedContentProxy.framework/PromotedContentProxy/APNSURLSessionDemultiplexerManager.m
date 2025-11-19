@interface APNSURLSessionDemultiplexerManager
- (APNSURLSessionDemultiplexerManager)initWithProxySessionConfigProvider:(id)a3;
- (id)_getSessionDemultiplexerForId:(id)a3 maximumRequestCount:(int64_t)a4;
- (id)sessionDemultiplexerForAdByIdentifier:(id)a3 maximumRequestCount:(int64_t)a4;
- (int64_t)pretapRequestCountForIdentifier:(id)a3;
- (void)_unregisterOldSessionIfRequired;
- (void)_unregisterSessionDemultiplexerWithIdentifier:(id)a3;
- (void)unregisterSessionDemultiplexerWithIdentifier:(id)a3;
@end

@implementation APNSURLSessionDemultiplexerManager

- (APNSURLSessionDemultiplexerManager)initWithProxySessionConfigProvider:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = APNSURLSessionDemultiplexerManager;
  v6 = [(APNSURLSessionDemultiplexerManager *)&v20 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CE4AE0]);
    lock = v6->_lock;
    v6->_lock = v7;

    v9 = objc_alloc_init(MEMORY[0x277CE4AC0]);
    sessionDemultiplexerForIdentifier = v6->_sessionDemultiplexerForIdentifier;
    v6->_sessionDemultiplexerForIdentifier = v9;

    v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
    sessionSharedDelegateQueue = v6->_sessionSharedDelegateQueue;
    v6->_sessionSharedDelegateQueue = v11;

    objc_msgSend_setMaxConcurrentOperationCount_(v6->_sessionSharedDelegateQueue, v13, 1, v14, v15);
    objc_msgSend_setName_(v6->_sessionSharedDelegateQueue, v16, @"com.apple.ap.pc.proxy.session-shared-delegate", v17, v18);
    objc_storeStrong(&v6->_sessionConfigProvider, a3);
  }

  return v6;
}

- (id)sessionDemultiplexerForAdByIdentifier:(id)a3 maximumRequestCount:(int64_t)a4
{
  if (a3)
  {
    v6 = a3;
    v11 = objc_msgSend_lock(self, v7, v8, v9, v10);
    objc_msgSend_lock(v11, v12, v13, v14, v15);
    v18 = objc_msgSend__getSessionDemultiplexerForId_maximumRequestCount_(self, v16, v6, a4, v17);

    objc_msgSend_unlock(v11, v19, v20, v21, v22);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_getSessionDemultiplexerForId:(id)a3 maximumRequestCount:(int64_t)a4
{
  v77 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v11 = objc_msgSend_sessionDemultiplexerForIdentifier(self, v7, v8, v9, v10);
  v15 = objc_msgSend_objectForKeyedSubscript_(v11, v12, v6, v13, v14);

  if (v15)
  {
    v20 = v15;
  }

  else
  {
    v21 = objc_msgSend_sessionConfigProvider(self, v16, v17, v18, v19);
    v26 = objc_msgSend_connectProxyConfig(v21, v22, v23, v24, v25);

    v27 = [APNSURLSessionDemultiplexer alloc];
    v32 = objc_msgSend_sessionSharedDelegateQueue(self, v28, v29, v30, v31);
    v34 = objc_msgSend_initWithConfiguration_forIdentifier_withMaximumRequestCount_delegateQueue_(v27, v33, v26, v6, a4, v32);

    v39 = objc_msgSend_sessionDemultiplexerForIdentifier(self, v35, v36, v37, v38);
    v44 = objc_msgSend_count(v39, v40, v41, v42, v43);

    if (v44 == 49)
    {
      v49 = APLogForCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v75 = 134217984;
        v76 = 50;
        _os_log_impl(&dword_260F10000, v49, OS_LOG_TYPE_INFO, "Reached cap %lu of demultiplexer sessions.", &v75, 0xCu);
      }
    }

    v50 = objc_msgSend_sessionDemultiplexerForIdentifier(self, v45, v46, v47, v48);
    v55 = objc_msgSend_identifier(v34, v51, v52, v53, v54);
    objc_msgSend_setObject_forKeyedSubscript_(v50, v56, v34, v55, v57);

    v58 = APLogForCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      v63 = objc_msgSend_sessionDemultiplexerForIdentifier(self, v59, v60, v61, v62);
      v68 = objc_msgSend_count(v63, v64, v65, v66, v67);
      v75 = 134217984;
      v76 = v68;
      _os_log_impl(&dword_260F10000, v58, OS_LOG_TYPE_DEBUG, "Current demultiplexers count is %lu.", &v75, 0xCu);
    }

    objc_msgSend__unregisterOldSessionIfRequired(self, v69, v70, v71, v72);
    v20 = v34;
  }

  v73 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)_unregisterOldSessionIfRequired
{
  v6 = objc_msgSend_sessionDemultiplexerForIdentifier(self, a2, v2, v3, v4);
  v11 = objc_msgSend_count(v6, v7, v8, v9, v10);

  if (v11 >= 0x33)
  {
    v24 = objc_msgSend_sessionDemultiplexerForIdentifier(self, v12, v13, v14, v15);
    v20 = objc_msgSend_firstKey(v24, v16, v17, v18, v19);
    objc_msgSend__unregisterSessionDemultiplexerWithIdentifier_(self, v21, v20, v22, v23);
  }
}

- (void)_unregisterSessionDemultiplexerWithIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_sessionDemultiplexerForIdentifier(self, v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKeyedSubscript_(v9, v10, v4, v11, v12);

  if (v13)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_260F114C0;
    v19[3] = &unk_279AC8B80;
    v19[4] = self;
    v20 = v4;
    objc_msgSend_invalidateAndCancelSessionWithCompletionHandler_(v13, v14, v19, v15, v16);
  }

  else
  {
    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v22 = v4;
      _os_log_impl(&dword_260F10000, v17, OS_LOG_TYPE_INFO, "Demultiplexer session '%{public}@' was not found in a list of active sessions. Can't invalidate session.", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)unregisterSessionDemultiplexerWithIdentifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v20 = objc_msgSend_lock(self, v5, v6, v7, v8);
    objc_msgSend_lock(v20, v9, v10, v11, v12);
    objc_msgSend__unregisterSessionDemultiplexerWithIdentifier_(self, v13, v4, v14, v15);

    objc_msgSend_unlock(v20, v16, v17, v18, v19);
  }
}

- (int64_t)pretapRequestCountForIdentifier:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v9 = objc_msgSend_lock(self, v5, v6, v7, v8);
  objc_msgSend_lock(v9, v10, v11, v12, v13);
  v18 = objc_msgSend_sessionDemultiplexerForIdentifier(self, v14, v15, v16, v17);
  v22 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v4, v20, v21);

  objc_msgSend_unlock(v9, v23, v24, v25, v26);
  if (v22)
  {
    v31 = objc_msgSend_requestCount(v22, v27, v28, v29, v30);
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

@end
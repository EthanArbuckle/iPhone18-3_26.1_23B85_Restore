@interface APNSURLSessionDemultiplexer
- (APNSURLSessionDemultiplexer)initWithConfiguration:(id)a3 forIdentifier:(id)a4 withMaximumRequestCount:(int64_t)a5 delegateQueue:(id)a6;
- (id)dataTaskWithRequest:(id)a3 delegate:(id)a4 modes:(id)a5;
- (id)taskInfoForTask:(id)a3;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)dealloc;
- (void)invalidateAndCancelSessionWithCompletionHandler:(id)a3;
- (void)invalidateSession;
- (void)removeTask:(id)a3;
@end

@implementation APNSURLSessionDemultiplexer

- (APNSURLSessionDemultiplexer)initWithConfiguration:(id)a3 forIdentifier:(id)a4 withMaximumRequestCount:(int64_t)a5 delegateQueue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v38.receiver = self;
  v38.super_class = APNSURLSessionDemultiplexer;
  v13 = [(APNSURLSessionDemultiplexer *)&v38 init];
  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x277CE4AD8]);
    v18 = objc_msgSend_initWithOptions_(v14, v15, 1, v16, v17);
    v19 = *(v13 + 9);
    *(v13 + 9) = v18;

    v24 = objc_msgSend_copy(v10, v20, v21, v22, v23);
    v25 = *(v13 + 5);
    *(v13 + 5) = v24;

    v30 = objc_msgSend_copy(v11, v26, v27, v28, v29);
    v31 = *(v13 + 3);
    *(v13 + 3) = v30;

    v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v33 = *(v13 + 4);
    *(v13 + 4) = v32;

    atomic_store(0, v13 + 1);
    *(v13 + 16) = 0;
    *(v13 + 7) = a5;
    v35 = objc_msgSend_sessionWithConfiguration_delegate_delegateQueue_(MEMORY[0x277CBABB8], v34, *(v13 + 5), v13, v12);
    v36 = *(v13 + 6);
    *(v13 + 6) = v35;
  }

  return v13;
}

- (void)dealloc
{
  objc_msgSend_invalidateAndCancel(self->_session, a2, v2, v3, v4);
  v6.receiver = self;
  v6.super_class = APNSURLSessionDemultiplexer;
  [(APNSURLSessionDemultiplexer *)&v6 dealloc];
}

- (id)dataTaskWithRequest:(id)a3 delegate:(id)a4 modes:(id)a5
{
  v98 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (objc_msgSend_sessionMarkedInvalid(self, v11, v12, v13, v14))
  {
    v19 = APLogForCategory();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
LABEL_5:
      v23 = 0;
LABEL_11:

      goto LABEL_12;
    }

    *buf = 136642819;
    v93 = "[APNSURLSessionDemultiplexer dataTaskWithRequest:delegate:modes:]";
    v20 = "%{sensitive}s -- The current session is already marked for invalidation. No further requests possible.";
    v21 = v19;
    v22 = 12;
LABEL_4:
    _os_log_impl(&dword_260F10000, v21, OS_LOG_TYPE_INFO, v20, buf, v22);
    goto LABEL_5;
  }

  if (objc_msgSend_maximumRequestCount(self, v15, v16, v17, v18) < 1 || (v28 = objc_msgSend_requestCount(self, v24, v25, v26, v27), v28 < objc_msgSend_maximumRequestCount(self, v29, v30, v31, v32)))
  {
    atomic_fetch_add(&self->_requestCount, 1uLL);
    if (!objc_msgSend_count(v10, v24, v25, v26, v27))
    {
      v91 = *MEMORY[0x277CBE640];
      v37 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v33, &v91, 1, v36);

      v10 = v37;
    }

    v38 = objc_msgSend_session(self, v33, v34, v35, v36);
    v23 = objc_msgSend_dataTaskWithRequest_(v38, v39, v8, v40, v41);

    v42 = [APNSURLSessionTaskInfo alloc];
    v19 = objc_msgSend_initWithTask_delegate_modes_(v42, v43, v23, v9, v10);
    v48 = objc_msgSend_lock(self, v44, v45, v46, v47);
    objc_msgSend_lock(v48, v49, v50, v51, v52);
    v57 = objc_msgSend_taskInfoByTaskIdentifier(self, v53, v54, v55, v56);
    v58 = MEMORY[0x277CCABB0];
    v63 = objc_msgSend_taskIdentifier(v23, v59, v60, v61, v62);
    v67 = objc_msgSend_numberWithUnsignedInteger_(v58, v64, v63, v65, v66);
    objc_msgSend_setObject_forKeyedSubscript_(v57, v68, v19, v67, v69);

    objc_msgSend_unlock(v48, v70, v71, v72, v73);
    goto LABEL_11;
  }

  v76 = objc_msgSend_requestCount(self, v24, v25, v26, v27);
  if (v76 == objc_msgSend_maximumRequestCount(self, v77, v78, v79, v80))
  {
    objc_msgSend_invalidateSession(self, v81, v82, v83, v84);
    v19 = APLogForCategory();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    v89 = objc_msgSend_maximumRequestCount(self, v85, v86, v87, v88);
    identifier = self->_identifier;
    *buf = 136643331;
    v93 = "[APNSURLSessionDemultiplexer dataTaskWithRequest:delegate:modes:]";
    v94 = 2048;
    v95 = v89;
    v96 = 2112;
    v97 = identifier;
    v20 = "%{sensitive}s -- Maximum request count reached: %ld for creative: %@. Session will be invalidated.";
    v21 = v19;
    v22 = 32;
    goto LABEL_4;
  }

  v23 = 0;
LABEL_12:

  v74 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)removeTask:(id)a3
{
  if (a3)
  {
    v6 = objc_msgSend_taskInfoForTask_(self, a2, a3, v3, v4);
    if (v6)
    {
      v47 = v6;
      v11 = objc_msgSend_lock(self, v7, v8, v9, v10);
      objc_msgSend_lock(v11, v12, v13, v14, v15);
      v20 = objc_msgSend_taskInfoByTaskIdentifier(self, v16, v17, v18, v19);
      v21 = MEMORY[0x277CCABB0];
      v26 = objc_msgSend_task(v47, v22, v23, v24, v25);
      v31 = objc_msgSend_taskIdentifier(v26, v27, v28, v29, v30);
      v35 = objc_msgSend_numberWithUnsignedInteger_(v21, v32, v31, v33, v34);
      objc_msgSend_removeObjectForKey_(v20, v36, v35, v37, v38);

      objc_msgSend_unlock(v11, v39, v40, v41, v42);
      objc_msgSend_invalidate(v47, v43, v44, v45, v46);

      v6 = v47;
    }
  }
}

- (void)invalidateAndCancelSessionWithCompletionHandler:(id)a3
{
  v24 = a3;
  objc_msgSend_setSessionMarkedInvalid_(self, v4, 1, v5, v6);
  v11 = objc_msgSend_session(self, v7, v8, v9, v10);

  if (v11)
  {
    objc_msgSend_setSessionInvalidated_(self, v12, v24, v13, v14);
    v19 = objc_msgSend_session(self, v15, v16, v17, v18);
    objc_msgSend_invalidateAndCancel(v19, v20, v21, v22, v23);
  }

  else if (v24)
  {
    v24[2]();
  }
}

- (void)invalidateSession
{
  objc_msgSend_setSessionMarkedInvalid_(self, a2, 1, v2, v3);
  v13 = objc_msgSend_session(self, v5, v6, v7, v8);
  objc_msgSend_finishTasksAndInvalidate(v13, v9, v10, v11, v12);
}

- (id)taskInfoForTask:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_lock(self, v5, v6, v7, v8);
  objc_msgSend_lock(v9, v10, v11, v12, v13);
  v18 = objc_msgSend_taskInfoByTaskIdentifier(self, v14, v15, v16, v17);
  v19 = MEMORY[0x277CCABB0];
  v24 = objc_msgSend_taskIdentifier(v4, v20, v21, v22, v23);

  v28 = objc_msgSend_numberWithUnsignedInteger_(v19, v25, v24, v26, v27);
  v32 = objc_msgSend_objectForKeyedSubscript_(v18, v29, v28, v30, v31);

  objc_msgSend_unlock(v9, v33, v34, v35, v36);

  return v32;
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  objc_msgSend_setSession_(self, a2, 0, a4, v4);
  objc_msgSend_setIdentifier_(self, v6, 0, v7, v8);
  objc_msgSend_setTaskInfoByTaskIdentifier_(self, v9, 0, v10, v11);
  v16 = objc_msgSend_sessionInvalidated(self, v12, v13, v14, v15);

  if (v16)
  {
    v21 = objc_msgSend_sessionInvalidated(self, v17, v18, v19, v20);
    v21[2]();

    objc_msgSend_setSessionInvalidated_(self, v22, 0, v23, v24);
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17 = objc_msgSend_taskInfoForTask_(self, v14, v11, v15, v16);
  v22 = objc_msgSend_delegate(v17, v18, v19, v20, v21);
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_260F14F6C;
    v27[3] = &unk_279AC8BC8;
    v28 = v17;
    v29 = v10;
    v30 = v11;
    v31 = v12;
    v32 = v13;
    objc_msgSend_performBlock_(v28, v24, v27, v25, v26);
  }

  else
  {
    (*(v13 + 2))(v13, 1);
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = objc_msgSend_taskInfoForTask_(self, v11, v9, v12, v13);
  v19 = objc_msgSend_delegate(v14, v15, v16, v17, v18);
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_260F150F8;
    v24[3] = &unk_279AC8BF0;
    v25 = v14;
    v26 = v8;
    v27 = v9;
    v28 = v10;
    objc_msgSend_performBlock_(v25, v21, v24, v22, v23);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = objc_msgSend_taskInfoForTask_(self, v11, v9, v12, v13);
  v19 = objc_msgSend_lock(self, v15, v16, v17, v18);
  objc_msgSend_lock(v19, v20, v21, v22, v23);
  v28 = objc_msgSend_taskInfoByTaskIdentifier(self, v24, v25, v26, v27);
  v29 = MEMORY[0x277CCABB0];
  v34 = objc_msgSend_task(v14, v30, v31, v32, v33);
  v39 = objc_msgSend_taskIdentifier(v34, v35, v36, v37, v38);
  v43 = objc_msgSend_numberWithUnsignedInteger_(v29, v40, v39, v41, v42);
  objc_msgSend_removeObjectForKey_(v28, v44, v43, v45, v46);

  objc_msgSend_unlock(v19, v47, v48, v49, v50);
  v55 = objc_msgSend_delegate(v14, v51, v52, v53, v54);
  LOBYTE(v43) = objc_opt_respondsToSelector();

  if (v43)
  {
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = sub_260F15314;
    v63[3] = &unk_279AC8BF0;
    v64 = v14;
    v65 = v8;
    v66 = v9;
    v67 = v10;
    objc_msgSend_performBlockAndWait_(v64, v60, v63, v61, v62);
  }

  else
  {
    objc_msgSend_invalidate(v14, v56, v57, v58, v59);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20 = objc_msgSend_taskInfoForTask_(self, v17, v13, v18, v19);
  v25 = objc_msgSend_delegate(v20, v21, v22, v23, v24);
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_260F154FC;
    v30[3] = &unk_279AC8C18;
    v31 = v20;
    v32 = v12;
    v33 = v13;
    v34 = v14;
    v35 = v15;
    v36 = v16;
    objc_msgSend_performBlock_(v31, v27, v30, v28, v29);
  }

  else
  {
    (*(v16 + 2))(v16, v15);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18 = objc_msgSend_failureResponse(v12, v14, v15, v16, v17);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v24 = objc_msgSend_failureResponse(v12, v20, v21, v22, v23);
    v29 = objc_msgSend_statusCode(v24, v25, v26, v27, v28);

    v30 = v29 != 407;
  }

  else
  {
    v30 = 1;
  }

  v31 = objc_msgSend_taskInfoForTask_(self, v20, v11, v22, v23);
  v36 = objc_msgSend_delegate(v31, v32, v33, v34, v35);
  v37 = objc_opt_respondsToSelector();

  if (v30 || (v37 & 1) == 0)
  {
    v13[2](v13, 1, 0);
  }

  else
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_260F15740;
    v41[3] = &unk_279AC8BC8;
    v42 = v31;
    v43 = v10;
    v44 = v11;
    v45 = v12;
    v46 = v13;
    objc_msgSend_performBlock_(v42, v38, v41, v39, v40);
  }
}

@end
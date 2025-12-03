@interface SPRServiceClient
+ (SPRServiceClient)shared;
- (BOOL)abortAndReturnError:(id *)error;
- (BOOL)jetsamAndReturnError:(id *)error;
- (NSDate)buildDate;
- (SPRPrimer)sharedPrimer;
- (void)invalidate;
@end

@implementation SPRServiceClient

+ (SPRServiceClient)shared
{
  if (qword_2803D4020 != -1)
  {
    sub_26AA7E35C();
  }

  v3 = qword_2803D4028;

  return v3;
}

- (NSDate)buildDate
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_26A94B288;
  v15 = sub_26A94B298;
  v16 = 0;
  v4 = objc_msgSend_syncProxyWithErrorHandler_(self, a2, &unk_287B2DD20, v2, v3);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_26A94B2FC;
  v10[3] = &unk_279CA5ED0;
  v10[4] = &v11;
  objc_msgSend_copyBuildDateWithReply_(v4, v5, v10, v6, v7);

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (SPRPrimer)sharedPrimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26A94B3BC;
  block[3] = &unk_279CA5B20;
  block[4] = self;
  if (self->_primerPredicate != -1)
  {
    dispatch_once(&self->_primerPredicate, block);
  }

  return self->_sharedPrimer;
}

- (void)invalidate
{
  v6 = objc_msgSend_connection(self, a2, v2, v3, v4);
  objc_msgSend_invalidate(v6, v7, v8, v9, v10);

  objc_msgSend_onDisconnect(self, v11, v12, v13, v14);
}

- (BOOL)abortAndReturnError:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_connection(self, a2, error, v3, v4);
  v12 = objc_msgSend_processIdentifier(v7, v8, v9, v10, v11);

  v17 = objc_msgSend_xpcClient(MEMORY[0x277D498B8], v13, v14, v15, v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v33[0] = 67109120;
    v33[1] = v12;
    _os_log_impl(&dword_26A93A000, v17, OS_LOG_TYPE_INFO, "Terminating daemon (PID=%d) with SIGABRT...", v33, 8u);
  }

  v22 = terminate_with_reason();
  if (v22)
  {
    if (error)
    {
      v23 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA5B8];
      v25 = __error();
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v23, v26, v24, *v25, 0);
    }
  }

  else
  {
    objc_msgSend_onDisconnect(self, v18, v19, v20, v21);
    objc_msgSend_sleepForTimeInterval_(MEMORY[0x277CCACC8], v27, v28, v29, v30, 0.5);
  }

  result = v22 == 0;
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)jetsamAndReturnError:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_connection(self, a2, error, v3, v4);
  v12 = objc_msgSend_processIdentifier(v7, v8, v9, v10, v11);

  v17 = objc_msgSend_xpcClient(MEMORY[0x277D498B8], v13, v14, v15, v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v33[0] = 67109120;
    v33[1] = v12;
    _os_log_impl(&dword_26A93A000, v17, OS_LOG_TYPE_INFO, "Terminating daemon (PID=%d) with Jetsam...", v33, 8u);
  }

  v22 = terminate_with_reason();
  if (v22)
  {
    if (error)
    {
      v23 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA5B8];
      v25 = __error();
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v23, v26, v24, *v25, 0);
    }
  }

  else
  {
    objc_msgSend_onDisconnect(self, v18, v19, v20, v21);
    objc_msgSend_sleepForTimeInterval_(MEMORY[0x277CCACC8], v27, v28, v29, v30, 0.5);
  }

  result = v22 == 0;
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

@end
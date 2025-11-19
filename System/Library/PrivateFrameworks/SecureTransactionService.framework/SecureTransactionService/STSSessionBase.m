@interface STSSessionBase
- (STSSessionBase)init;
- (STSSessionBaseDelegate)delegate;
- (id)activateChildSession;
- (id)canStartSession;
- (id)createHandoffToken:(id *)a3;
- (id)setActiveCredential:(id)a3;
- (id)setActiveCredentials:(id)a3;
- (id)validateCredentials:(id)a3;
- (void)_tearDownOnQueue:(BOOL)a3 completion:(id)a4;
- (void)clearSessionTimer;
- (void)dealloc;
- (void)endSessionWithCompletion:(id)a3;
- (void)fireSessionDidEndUnexpectedlyEventWithStatus:(unint64_t)a3;
- (void)handleSessionResumed:(id)a3;
- (void)handleSessionSuspended:(id)a3 withToken:(id)a4;
- (void)secureElementManagerSessionDidEndUnexpectedly:(id)a3;
- (void)setSessionTimeLimit:(double)a3;
- (void)startWithDelegate:(id)a3 isFirstInQueue:(BOOL *)a4;
- (void)startWithDelegate:(id)a3 isFirstInQueue:(BOOL *)a4 completion:(id)a5;
@end

@implementation STSSessionBase

- (STSSessionBase)init
{
  v11.receiver = self;
  v11.super_class = STSSessionBase;
  v2 = [(STSSessionBase *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, -1);

    ClassName = object_getClassName(v2);
    v6 = dispatch_queue_create(ClassName, v4);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v6;

    v2->_sessionUpdateLock._os_unfair_lock_opaque = 0;
    v8 = objc_opt_new();
    nfHwManager = v2->_nfHwManager;
    v2->_nfHwManager = v8;
  }

  return v2;
}

- (void)dealloc
{
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSessionBase dealloc]", 48, self, &stru_2876E3E50, v2, v3, v5.receiver);
  [(STSSessionBase *)self clearSessionTimer];
  [(STSSessionBase *)self _tearDownOnQueue:0 completion:0];
  v5.receiver = self;
  v5.super_class = STSSessionBase;
  [(STSSessionBase *)&v5 dealloc];
}

- (void)startWithDelegate:(id)a3 isFirstInQueue:(BOOL *)a4
{
  v6 = a3;
  [(STSSessionBase *)self setDelegate:v6];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_265372674;
  aBlock[3] = &unk_279B93820;
  aBlock[4] = self;
  v14 = v6;
  v15 = a4;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  v9 = [(STSSessionBase *)self masterSESession];

  if (v9)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase startWithDelegate:isFirstInQueue:]", 113, self, @"Previous session exists, tear down now", v10, v11, v12);
    [(STSSessionBase *)self _tearDownOnQueue:1 completion:v8];
  }

  else
  {
    v8[2](v8);
  }
}

- (void)startWithDelegate:(id)a3 isFirstInQueue:(BOOL *)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = _os_activity_create(&dword_26536F000, "startWithDelegate:isFirstInQueue:completion:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  os_activity_scope_leave(&state);

  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSessionBase startWithDelegate:isFirstInQueue:completion:]", 124, self, &stru_2876E3E50, v11, v12, v15[0]);
  v13 = [(STSSessionBase *)self canStartSession];
  if (v13)
  {
    v14 = [(STSSessionBase *)self callbackQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_265372BA0;
    v15[3] = &unk_279B93848;
    v17 = v9;
    v16 = v13;
    dispatch_async(v14, v15);
  }

  else
  {
    [(STSSessionBase *)self setTheStartCallback:v9];
    [(STSSessionBase *)self startWithDelegate:v8 isFirstInQueue:a4];
  }
}

- (id)canStartSession
{
  v16[4] = *MEMORY[0x277D85DE8];
  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase canStartSession]", 137, self, @"Subclass must implement this!", v2, v3, v14);
  v5 = MEMORY[0x277CCA9B8];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v15[0] = *MEMORY[0x277CCA450];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
  v16[0] = v7;
  v16[1] = &unk_2876ECB70;
  v15[1] = @"Line";
  v15[2] = @"Method";
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
  v16[2] = v8;
  v15[3] = *MEMORY[0x277CCA068];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 138];
  v16[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v11 = [v5 errorWithDomain:v6 code:10 userInfo:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)endSessionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_26536F000, "endSessionWithCompletion:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase endSessionWithCompletion:]", 143, self, &stru_2876E3E50, v6, v7, v9);
  objc_initWeak(&state, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_265372EC0;
  v10[3] = &unk_279B93870;
  objc_copyWeak(&v12, &state);
  v8 = v4;
  v10[4] = self;
  v11 = v8;
  [(STSSessionBase *)self _tearDownOnQueue:1 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&state);
}

- (id)activateChildSession
{
  v35[4] = *MEMORY[0x277D85DE8];
  v4 = [(STSSessionBase *)self handler];

  if (v4)
  {
    v5 = [(STSSessionBase *)self handler];
    v6 = [v5 activeChildSession];

    if (v6)
    {
      sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSessionBase activateChildSession]", 180, self, @"Child session previously activated", v7, v8, v30);
      v9 = 0;
    }

    else
    {
      v16 = [(STSSessionBase *)self handler];
      v17 = [(STSSessionBase *)self masterSESession];
      v31 = 0;
      v18 = [v16 createHandoffTokenFromSession:v17 outError:&v31];
      v19 = v31;

      if (v19)
      {
        v9 = v19;
      }

      else
      {
        if ([v18 length])
        {
          sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSessionBase activateChildSession]", 196, self, @"activating new handler with token: %@", v20, v21, v18);
          v22 = [(STSSessionBase *)self handler];
          v9 = [v22 activateWithHandoffToken:v18];
        }

        else
        {
          sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase activateChildSession]", 192, self, @"Invalid token", v20, v21, v30);
          v23 = MEMORY[0x277CCA9B8];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
          v32[0] = *MEMORY[0x277CCA450];
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
          v33[0] = v24;
          v33[1] = &unk_2876ECBA0;
          v32[1] = @"Line";
          v32[2] = @"Method";
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
          v33[2] = v25;
          v32[3] = *MEMORY[0x277CCA068];
          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 193];
          v33[3] = v26;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];
          v9 = [v23 errorWithDomain:v22 code:9 userInfo:v27];
        }
      }
    }
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v34[0] = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v35[0] = v12;
    v35[1] = &unk_2876ECB88;
    v34[1] = @"Line";
    v34[2] = @"Method";
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v35[2] = v13;
    v34[3] = *MEMORY[0x277CCA068];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 176];
    v35[3] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:4];
    v9 = [v10 errorWithDomain:v11 code:9 userInfo:v15];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)setActiveCredential:(id)a3
{
  v58[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _os_activity_create(&dword_26536F000, "setActiveCredential:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredential:]", 205, self, @"%@", v7, v8, v5);
  v9 = [(STSSessionBase *)self handler];

  if (v9)
  {
    if (!v5 || (-[STSSessionBase handler](self, "handler"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 supportedCredentialType], v14 = objc_msgSend(v5, "type"), v12, v13 == v14))
    {
      v15 = 0;
      goto LABEL_11;
    }

    v17 = [(STSSessionBase *)self handler];
    v18 = [v17 activeSTSCredential];
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredential:]", 217, self, @"new handler required, switching credential from %@ to %@", v19, v20, v18);

    v21 = [(STSSessionBase *)self createHandlerForCredential:v5];
    if (!v21)
    {
      v47 = MEMORY[0x277CCA9B8];
      v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v57[0] = *MEMORY[0x277CCA450];
      v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
      v58[0] = v48;
      v58[1] = &unk_2876ECBB8;
      v57[1] = @"Line";
      v57[2] = @"Method";
      v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2), v5];
      v58[2] = v49;
      v57[3] = *MEMORY[0x277CCA068];
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 220];
      v58[3] = v50;
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:4];
      v35 = [v47 errorWithDomain:v40 code:11 userInfo:v51];

LABEL_18:
      goto LABEL_19;
    }

    v16 = v21;
    v22 = [(STSSessionBase *)self handler];
    [v22 tearDownWithCompletion:0];

    [(STSSessionBase *)self setHandler:v16];
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredential:]", 226, self, @"Waiting for Control SE session ready", v23, v24, v53);
    v25 = [(STSSessionBase *)self waitForControlSessionToBeReady:1];
    v15 = v25;
    if (v25)
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase setActiveCredential:]", 230, self, @"Control SE session not ready: %@", v26, v27, v25);
    }

LABEL_10:

LABEL_11:
    v28 = [(STSSessionBase *)self handler];

    if (v28)
    {
      v31 = [(STSSessionBase *)self handler];
      v32 = [v31 activateChildSessionOnSetActiveCredential];

      if (v32)
      {
        v35 = [(STSSessionBase *)self activateChildSession];

        if (v35)
        {
          sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase setActiveCredential:]", 240, self, @"Handler activation failure: %@", v36, v37, v35);
          v38 = [(STSSessionBase *)self handler];
          [v38 tearDownWithCompletion:0];

          [(STSSessionBase *)self setHandler:0];
          goto LABEL_19;
        }
      }

      else
      {
        sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredential:]", 247, self, @" Handoff not ready to be activated yet", v33, v34, v52);
      }

      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredential:]", 250, self, @"Seting new activeCredential %@ on handler", v36, v37, v5);
      v40 = [(STSSessionBase *)self handler];
      v35 = [v40 setActiveCredential:v5];
    }

    else
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase setActiveCredential:]", 253, self, @"Unable to find a valid handler", v29, v30, v52);
      v39 = MEMORY[0x277CCA9B8];
      v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v55[0] = *MEMORY[0x277CCA450];
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
      v56[0] = v41;
      v56[1] = &unk_2876ECBD0;
      v55[1] = @"Line";
      v55[2] = @"Method";
      v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v56[2] = v42;
      v55[3] = *MEMORY[0x277CCA068];
      v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 254];
      v56[3] = v43;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:4];
      v35 = [v39 errorWithDomain:v40 code:11 userInfo:v44];
    }

    goto LABEL_18;
  }

  if (v5)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredential:]", 213, self, @"Creating initial handler", v10, v11, v52);
    v16 = [(STSSessionBase *)self createHandlerForCredential:v5];
    [(STSSessionBase *)self setHandler:v16];
    v15 = 0;
    goto LABEL_10;
  }

  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSessionBase setActiveCredential:]", 209, self, @"Handler does not exist for deactivation.", v10, v11, v52);
  v35 = 0;
LABEL_19:

  v45 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)validateCredentials:(id)a3
{
  v46[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![v5 count])
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase validateCredentials:]", 262, self, @"Empty credential array provided.", v6, v7, v34);
    v22 = MEMORY[0x277CCA9B8];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v45[0] = *MEMORY[0x277CCA450];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v46[0] = v13;
    v46[1] = &unk_2876ECBE8;
    v45[1] = @"Line";
    v45[2] = @"Method";
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v46[2] = v23;
    v45[3] = *MEMORY[0x277CCA068];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 263];
    v46[3] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:4];
    v21 = [v22 errorWithDomain:v8 code:8 userInfo:v25];
LABEL_16:

    goto LABEL_17;
  }

  v8 = [v5 firstObject];
  v9 = [v8 type];
  if (!v9)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase validateCredentials:]", 270, self, @"Invalid credential type.", v10, v11, v34);
    v31 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v43[0] = *MEMORY[0x277CCA450];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v44[0] = v23;
    v44[1] = &unk_2876ECC00;
    v43[1] = @"Line";
    v43[2] = @"Method";
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v44[2] = v24;
    v43[3] = *MEMORY[0x277CCA068];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 271];
    v44[3] = v25;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:4];
    v21 = [v31 errorWithDomain:v13 code:8 userInfo:v29];
LABEL_15:

    goto LABEL_16;
  }

  v12 = v9;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v37;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v36 + 1) + 8 * i) type];
        if (v12 != v18)
        {
          v35 = v12;
          sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase validateCredentials:]", 279, self, @"Invalid or mismatching credential types; found %d, expects %d", v19, v20, v18);
          v26 = MEMORY[0x277CCA9B8];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
          v40[0] = *MEMORY[0x277CCA450];
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
          v41[0] = v24;
          v41[1] = &unk_2876ECC18;
          v40[1] = @"Line";
          v40[2] = @"Method";
          v27 = MEMORY[0x277CCACA8];
          Name = sel_getName(a2);
          v25 = [v27 stringWithFormat:@"%s", Name, v35, v36];
          v41[2] = v25;
          v40[3] = *MEMORY[0x277CCA068];
          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 280];
          v41[3] = v29;
          v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:4];
          v21 = [v26 errorWithDomain:v23 code:8 userInfo:v30];

          goto LABEL_15;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_17:

  v32 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)setActiveCredentials:(id)a3
{
  v59[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _os_activity_create(&dword_26536F000, "setActiveCredentials:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredentials:]", 292, self, @"%@", v7, v8, v5);
  if ([v5 count] != 1)
  {
    if (v5)
    {
      v10 = [(STSSessionBase *)self validateCredentials:v5];
      if (v10)
      {
        goto LABEL_26;
      }

      v9 = [v5 firstObject];
    }

    else
    {
      v9 = 0;
    }

    v11 = [(STSSessionBase *)self handler];

    if (v11)
    {
      if (!v9 || (-[STSSessionBase handler](self, "handler"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 supportedCredentialType], v16 = objc_msgSend(v9, "type"), v14, v15 == v16))
      {
        v17 = 0;
        goto LABEL_17;
      }

      v19 = [(STSSessionBase *)self handler];
      v20 = [v19 activeSTSCredential];
      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredentials:]", 321, self, @"new handler required, switching credential from %@ to %@", v21, v22, v20);

      v23 = [(STSSessionBase *)self createHandlerForCredential:v9];
      if (!v23)
      {
        v48 = MEMORY[0x277CCA9B8];
        v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v58[0] = *MEMORY[0x277CCA450];
        v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
        v59[0] = v49;
        v59[1] = &unk_2876ECC30;
        v58[1] = @"Line";
        v58[2] = @"Method";
        v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2), v9];
        v59[2] = v50;
        v58[3] = *MEMORY[0x277CCA068];
        v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 324];
        v59[3] = v51;
        v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:4];
        v10 = [v48 errorWithDomain:v41 code:11 userInfo:v52];

        goto LABEL_24;
      }

      v18 = v23;
      v24 = [(STSSessionBase *)self handler];
      [v24 tearDownWithCompletion:0];

      [(STSSessionBase *)self setHandler:v18];
      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredentials:]", 330, self, @"Waiting for Control SE session ready", v25, v26, v54);
      v27 = [(STSSessionBase *)self waitForControlSessionToBeReady:1];
      v17 = v27;
      if (v27)
      {
        sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase setActiveCredentials:]", 334, self, @"Control SE session not ready: %@", v28, v29, v27);
      }
    }

    else
    {
      if (!v5)
      {
        sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredentials:]", 313, self, @"Handler does not exist for deactivation.", v12, v13, v53);
        v10 = 0;
        goto LABEL_25;
      }

      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredentials:]", 317, self, @"Creating initial handler", v12, v13, v53);
      v18 = [(STSSessionBase *)self createHandlerForCredential:v9];
      [(STSSessionBase *)self setHandler:v18];
      v17 = 0;
    }

LABEL_17:
    v30 = [(STSSessionBase *)self handler];

    if (v30)
    {
      v33 = [(STSSessionBase *)self handler];
      v34 = [v33 activateChildSessionOnSetActiveCredential];

      if (v34)
      {
        v10 = [(STSSessionBase *)self activateChildSession];

        if (v10)
        {
          sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase setActiveCredentials:]", 344, self, @"Handler activation failure: %@", v37, v38, v10);
          v39 = [(STSSessionBase *)self handler];
          [v39 tearDownWithCompletion:0];

          [(STSSessionBase *)self setHandler:0];
          goto LABEL_25;
        }
      }

      else
      {
        sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredentials:]", 350, self, @"Handler not ready to be activated yet", v35, v36, v53);
      }

      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredentials:]", 353, self, @"Setting new activeCredentials %@ on handler", v37, v38, v5);
      v41 = [(STSSessionBase *)self handler];
      v10 = [v41 setActiveCredentials:v5];
    }

    else
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase setActiveCredentials:]", 356, self, @"Unable to find a valid handler", v31, v32, v53);
      v40 = MEMORY[0x277CCA9B8];
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v56[0] = *MEMORY[0x277CCA450];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
      v57[0] = v42;
      v57[1] = &unk_2876ECC48;
      v56[1] = @"Line";
      v56[2] = @"Method";
      v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v57[2] = v43;
      v56[3] = *MEMORY[0x277CCA068];
      v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 357];
      v57[3] = v44;
      v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:4];
      v10 = [v40 errorWithDomain:v41 code:11 userInfo:v45];
    }

LABEL_24:

    goto LABEL_25;
  }

  v9 = [v5 firstObject];
  v10 = [(STSSessionBase *)self setActiveCredential:v9];
LABEL_25:

LABEL_26:
  v46 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createHandoffToken:(id *)a3
{
  v56[4] = *MEMORY[0x277D85DE8];
  v6 = _os_activity_create(&dword_26536F000, "createHandoffToken:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  v7 = [(STSSessionBase *)self handler];
  v8 = [v7 consumeHandoffToken];

  if (v8)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase createHandoffToken:]", 372, self, @"Consume existing token from handler", v9, v10, v47);
    v11 = v8;
    v12 = 0;
    v13 = 0;
    *a3 = v8;
    goto LABEL_13;
  }

  v14 = [(STSSessionBase *)self handler];

  if (v14)
  {
    v15 = [(STSSessionBase *)self handler];
    v16 = [v15 activeChildSession];

    if (v16)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase createHandoffToken:]", 384, self, @"Fail to create session token; missing active session", v17, v18, v47);
    v24 = MEMORY[0x277CCA9B8];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v55[0] = *MEMORY[0x277CCA450];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v56[0] = v25;
    v56[1] = &unk_2876ECC60;
    v55[1] = @"Line";
    v55[2] = @"Method";
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v56[2] = v26;
    v55[3] = *MEMORY[0x277CCA068];
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 385];
    v56[3] = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:4];
    v13 = [v24 errorWithDomain:v16 code:9 userInfo:v28];

LABEL_10:
    v12 = 0;
    goto LABEL_13;
  }

  v16 = [(STSSessionBase *)self masterSESession];
  if (!v16)
  {
    goto LABEL_9;
  }

LABEL_5:
  v19 = [(STSSessionBase *)self handler];

  if (v19)
  {
    v20 = [(STSSessionBase *)self handler];
    v49 = 0;
    v21 = [v20 createHandoffTokenFromSession:v16 outError:&v49];
    v22 = v49;
    v23 = v21;
    *a3 = v21;

LABEL_7:
    v12 = v22;

    v13 = v12;
    goto LABEL_13;
  }

  v48 = 0;
  v29 = [v16 createSessionHandoffToken:&v48];
  v12 = v48;
  v30 = v29;
  *a3 = v29;
  if (!v12)
  {
    if ([v29 length])
    {
      v22 = 0;
      goto LABEL_7;
    }

    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase createHandoffToken:]", 397, self, @"Invalid token", v40, v41, v47);
    v42 = MEMORY[0x277CCA9B8];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v51[0] = *MEMORY[0x277CCA450];
    v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v52[0] = v43;
    v52[1] = &unk_2876ECC90;
    v51[1] = @"Line";
    v51[2] = @"Method";
    v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v52[2] = v44;
    v51[3] = *MEMORY[0x277CCA068];
    v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 398];
    v52[3] = v45;
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:4];
    v13 = [v42 errorWithDomain:v25 code:9 userInfo:v46];

    goto LABEL_10;
  }

  v31 = MEMORY[0x277CCA9B8];
  v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v53[0] = *MEMORY[0x277CCA450];
  v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
  v34 = *MEMORY[0x277CCA7E8];
  v54[0] = v33;
  v54[1] = v12;
  v53[1] = v34;
  v53[2] = @"Line";
  v54[2] = &unk_2876ECC78;
  v53[3] = @"Method";
  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
  v54[3] = v35;
  v53[4] = *MEMORY[0x277CCA068];
  v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 395];
  v54[4] = v36;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:5];
  v13 = [v31 errorWithDomain:v32 code:9 userInfo:v37];

LABEL_13:
  v38 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)setSessionTimeLimit:(double)a3
{
  v5 = _os_activity_create(&dword_26536F000, "setSessionTimeLimit:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  if (a3 <= 0.0)
  {
    [(STSSessionBase *)self clearSessionTimer];
  }

  else
  {
    sessionKillSwitch = self->_sessionKillSwitch;
    if (!sessionKillSwitch)
    {
      objc_initWeak(&state, self);
      v7 = [STSTimer alloc];
      v10 = MEMORY[0x277D85DD0];
      v11 = 3221225472;
      v12 = sub_265374D58;
      v13 = &unk_279B938C0;
      objc_copyWeak(v14, &state);
      v14[1] = *&a3;
      v8 = [(STSTimer *)v7 initSleepTimerWithCallback:&v10 queue:self->_callbackQueue];
      v9 = self->_sessionKillSwitch;
      self->_sessionKillSwitch = v8;

      objc_destroyWeak(v14);
      objc_destroyWeak(&state);
      sessionKillSwitch = self->_sessionKillSwitch;
    }

    [(STSTimer *)sessionKillSwitch startTimer:a3, v10, v11, v12, v13];
  }
}

- (void)clearSessionTimer
{
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSessionBase clearSessionTimer]", 438, self, @"Clearing session kill switch timer", v2, v3, v6);
  [(STSTimer *)self->_sessionKillSwitch stopTimer];
  sessionKillSwitch = self->_sessionKillSwitch;
  self->_sessionKillSwitch = 0;
}

- (void)_tearDownOnQueue:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSessionBase _tearDownOnQueue:completion:]", 449, self, &stru_2876E3E50, v7, v8, v17[0]);
  if (v4)
  {
    v9 = dispatch_group_create();
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_lock(&self->_sessionUpdateLock);
  v10 = [(STSSessionBase *)self handler];

  if (v10)
  {
    if (v9)
    {
      dispatch_group_enter(v9);
    }

    v11 = [(STSSessionBase *)self handler];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_2653752A8;
    v23[3] = &unk_279B938E8;
    v24 = v9;
    [v11 tearDownWithCompletion:v23];

    [(STSSessionBase *)self setHandler:0];
  }

  v12 = [(STSSessionBase *)self masterSESession];

  if (v12)
  {
    if (v9)
    {
      dispatch_group_enter(v9);
    }

    v13 = [(STSSessionBase *)self masterSESession];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2653752B8;
    v21[3] = &unk_279B93910;
    v22 = v9;
    [v13 endSessionWithCompletion:v21];

    [(STSSessionBase *)self setMasterSESession:0];
  }

  v14 = [(STSSessionBase *)self initiatingSession];

  if (v14)
  {
    if (v9)
    {
      dispatch_group_enter(v9);
    }

    v15 = [(STSSessionBase *)self initiatingSession];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_2653752C8;
    v19[3] = &unk_279B93910;
    v20 = v9;
    [v15 endSessionWithCompletion:v19];

    [(STSSessionBase *)self setInitiatingSession:0];
  }

  os_unfair_lock_unlock(&self->_sessionUpdateLock);
  if (v6)
  {
    if (v9)
    {
      v16 = [(STSSessionBase *)self callbackQueue];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_2653752D8;
      v17[3] = &unk_279B93938;
      v18 = v6;
      dispatch_group_notify(v9, v16, v17);
    }

    else
    {
      v6[2](v6);
    }
  }
}

- (void)handleSessionSuspended:(id)a3 withToken:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase handleSessionSuspended:withToken:]", 493, v7, @"Control SE session is suspended with token: %@", v8, v9, v6);
  v7->_controlSessionSuspended = 1;
  v10 = dispatch_semaphore_create(0);
  controlSessionSem = v7->_controlSessionSem;
  v7->_controlSessionSem = v10;

  objc_sync_exit(v7);
}

- (void)handleSessionResumed:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase handleSessionResumed:]", 501, v4, @"Control SE session resumed", v5, v6, v8);
  v4->_controlSessionSuspended = 0;
  controlSessionSem = v4->_controlSessionSem;
  if (controlSessionSem)
  {
    dispatch_semaphore_signal(controlSessionSem);
  }

  objc_sync_exit(v4);
}

- (void)secureElementManagerSessionDidEndUnexpectedly:(id)a3
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase secureElementManagerSessionDidEndUnexpectedly:]", 538, self, @"Connection closed unexpectedly.", v3, v4, v6);

  [(STSSessionBase *)self fireSessionDidEndUnexpectedlyEventWithStatus:0];
}

- (STSSessionBaseDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)fireSessionDidEndUnexpectedlyEventWithStatus:(unint64_t)a3
{
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSessionBase(EVENTS) fireSessionDidEndUnexpectedlyEventWithStatus:]", 16, self, @"fireSessionDidEndUnexpectedlyEventWithStatus %d", v3, v4, a3);
  v7 = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 stsSessionDidEndUnexpectedly:self errorCode:a3];
  }
}

@end
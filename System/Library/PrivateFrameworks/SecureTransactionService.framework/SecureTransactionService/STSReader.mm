@interface STSReader
- (STSReader)initWithType:(unint64_t)type queue:(id)queue;
- (id)_translateNfcdXPCHelperError:(id)error;
- (id)_translateSTSXPCHelperError:(id)error;
- (id)_translateXPCClientNotificationStatus:(unint64_t)status;
- (id)startWithConfiguration:(id)configuration connectionHandler:(id)handler tnepStatusHandler:(id)statusHandler invalidationHandler:(id)invalidationHandler completion:(id)completion;
- (id)startWithHandoverType:(unint64_t)type connectionHandler:(id)handler tnepStatusHandler:(id)statusHandler invalidationErrorHandler:(id)errorHandler completion:(id)completion;
- (void)_activateInvalidationHandler:(id)handler;
- (void)_activateOnConnectCompletion;
- (void)_activateSendRequestCompletion:(id)completion terminationRequested:(BOOL)requested error:(id)error;
- (void)_activateSessionStartCompletion:(id)completion;
- (void)_activateTnepStatusHandler:(id)handler;
- (void)_seProxyCleanup:(id)cleanup;
- (void)alternativeCarrierConnectedWithStatus:(unint64_t)status;
- (void)alternativeCarrierDisconnectedWithStatus:(unint64_t)status;
- (void)connectionEstablishedWithSTSReaderCryptarch:(id)cryptarch sessionTranscript:(id)transcript;
- (void)connectionHandoverCompleted:(id)completed;
- (void)dealloc;
- (void)executeOnSEProxyWithBlock:(id)block;
- (void)invalidate;
- (void)receiveISO18013DeviceResponse:(id)response sessionDataStatus:(id)status mDocResponseStatus:(id)responseStatus error:(id)error;
- (void)relinquishSEProxy;
- (void)sendDocumentRequest:(id)request timeoutInterval:(double)interval sessionTermination:(BOOL)termination responseHandler:(id)handler;
- (void)session:(id)session connectionHandoverProcessFailure:(id)failure;
- (void)session:(id)session didEndUnexpectedly:(id)unexpectedly;
- (void)transactionStarted:(unint64_t)started;
- (void)xpcInterrupted;
- (void)xpcInvalidated;
@end

@implementation STSReader

- (STSReader)initWithType:(unint64_t)type queue:(id)queue
{
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = STSReader;
  v7 = [(STSReader *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v7->_transmissionState = 0;
    v9 = objc_opt_new();
    nfHwManager = v8->_nfHwManager;
    v8->_nfHwManager = v9;

    if (queueCopy)
    {
      v11 = queueCopy;
      callbackQueue = v8->_callbackQueue;
      v8->_callbackQueue = v11;
    }

    else
    {
      callbackQueue = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create("STSReader", callbackQueue);
      v14 = v8->_callbackQueue;
      v8->_callbackQueue = v13;
    }

    dispatch_suspend(v8->_callbackQueue);
    v8->_queuePaused = 1;
    v8->_state = 0;
    v15 = [[STSXPCClientNotificationListener alloc] initWithDelegate:v8 queue:v8->_callbackQueue];
    stsNotificationListener = v8->_stsNotificationListener;
    v8->_stsNotificationListener = v15;

    v17 = objc_opt_new();
    caSessionStats = v8->_caSessionStats;
    v8->_caSessionStats = v17;
  }

  return v8;
}

- (void)dealloc
{
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader dealloc]", 191, self, &stru_2876E3E50, v2, v3, v10.receiver);
  caSessionStats = [(STSReader *)self caSessionStats];
  [caSessionStats postReaderSessionEvent];

  if ([(STSReader *)self state]!= 2)
  {
    responseTimeout = [(STSReader *)self responseTimeout];
    [responseTimeout stopTimer];

    handoverSession = [(STSReader *)self handoverSession];
    [handoverSession endSession];

    [(STSReader *)self _seProxyCleanup:0];
    stsHelper = [(STSReader *)self stsHelper];
    [stsHelper invalidate];

    stsNotificationListener = [(STSReader *)self stsNotificationListener];
    [stsNotificationListener invalidateXPCConnection];
  }

  v10.receiver = self;
  v10.super_class = STSReader;
  [(STSReader *)&v10 dealloc];
}

- (id)startWithHandoverType:(unint64_t)type connectionHandler:(id)handler tnepStatusHandler:(id)statusHandler invalidationErrorHandler:(id)errorHandler completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  errorHandlerCopy = errorHandler;
  statusHandlerCopy = statusHandler;
  handlerCopy = handler;
  v16 = _os_activity_create(&dword_26536F000, "startWithHandoverType:tnepStatusHandler:connectionHandler:invalidationHandler:completion:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v20.opaque[0] = 0;
  v20.opaque[1] = 0;
  os_activity_scope_enter(v16, &v20);
  os_activity_scope_leave(&v20);

  v17 = [STSEngagementConfiguration configurationWithDeviceEngagementType:0 dataRetrievalType:typeCopy & 7 engagementData:0];
  v18 = [(STSReader *)self startWithConfiguration:v17 connectionHandler:handlerCopy tnepStatusHandler:statusHandlerCopy invalidationHandler:errorHandlerCopy completion:completionCopy];

  return v18;
}

- (id)startWithConfiguration:(id)configuration connectionHandler:(id)handler tnepStatusHandler:(id)statusHandler invalidationHandler:(id)invalidationHandler completion:(id)completion
{
  v101[4] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  handlerCopy = handler;
  statusHandlerCopy = statusHandler;
  invalidationHandlerCopy = invalidationHandler;
  completionCopy = completion;
  deviceEngagementType = [configurationCopy deviceEngagementType];
  dataRetrievalType = [configurationCopy dataRetrievalType];
  engagementData = [configurationCopy engagementData];
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader startWithConfiguration:connectionHandler:tnepStatusHandler:invalidationHandler:completion:]", 238, self, @"Start with deviceEngagementType = 0x%x, dataRetrievalType = 0x%x and engagementData = %@", v17, v18, deviceEngagementType);

  v19 = _os_activity_create(&dword_26536F000, "startWithHandoverType:tnepStatusHandler:connectionHandler:invalidationHandler:completion:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v19, &state);
  os_activity_scope_leave(&state);

  if ([(STSReader *)self queuePaused])
  {
    [(STSReader *)self setQueuePaused:0];
    callbackQueue = [(STSReader *)self callbackQueue];
    dispatch_resume(callbackQueue);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(STSReader *)selfCopy state]&& [(STSReader *)selfCopy state]!= 2)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSReader startWithConfiguration:connectionHandler:tnepStatusHandler:invalidationHandler:completion:]", 258, selfCopy, @"Unexpected state; invalidate existing sessions", v22, v23, v74);
    [(STSReader *)selfCopy invalidateWithCodeSync:17];
  }

  [(STSReader *)selfCopy setSessionStartCompletion:completionCopy];
  [(STSReader *)selfCopy setTnepStatusHandler:statusHandlerCopy];
  [(STSReader *)selfCopy setConnectionHandler:handlerCopy];
  [(STSReader *)selfCopy setState:1];
  [(STSReader *)selfCopy setInvalidationHandler:invalidationHandlerCopy];
  caSessionStats = [(STSReader *)selfCopy caSessionStats];
  [caSessionStats setTotalTransactionsInSession:{objc_msgSend(caSessionStats, "totalTransactionsInSession") + 1}];

  objc_sync_exit(selfCopy);
  v25 = objc_opt_new();
  [(STSReader *)selfCopy setStsHelper:v25];

  if (![configurationCopy deviceEngagementType])
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader startWithConfiguration:connectionHandler:tnepStatusHandler:invalidationHandler:completion:]", 273, selfCopy, @"NFC Engagement", v26, v27, v74);
    dataRetrievalType2 = [configurationCopy dataRetrievalType];
    dataRetrievalType3 = [configurationCopy dataRetrievalType];
    v38 = dataRetrievalType2 & 1 | (8 * ((dataRetrievalType3 >> 1) & 1)) & 0xFFFFFFFFFFFFFFEFLL | (16 * (([configurationCopy dataRetrievalType] >> 2) & 1));
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader startWithConfiguration:connectionHandler:tnepStatusHandler:invalidationHandler:completion:]", 287, selfCopy, @"Starting nfc handover session with handover Type=0x%lx", v39, v40, v38);
    v41 = selfCopy;
    objc_sync_enter(v41);
    nfHwManager = [(STSReader *)v41 nfHwManager];
    manager = [nfHwManager manager];

    if (!manager)
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSReader startWithConfiguration:connectionHandler:tnepStatusHandler:invalidationHandler:completion:]", 292, v41, @"Hardware not available", v44, v45, v75);
      v77 = MEMORY[0x277CCA9B8];
      v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v100[0] = *MEMORY[0x277CCA450];
      v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Hardware Not Available"];
      v101[0] = v53;
      v101[1] = &unk_2876ECCD8;
      v100[1] = @"Line";
      v100[2] = @"Method";
      v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2), dataRetrievalType, engagementData];
      v101[2] = v54;
      v100[3] = *MEMORY[0x277CCA068];
      v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 293];
      v101[3] = v55;
      v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:4];
      v57 = [v77 errorWithDomain:v52 code:12 userInfo:v56];

      callbackQueue2 = [(STSReader *)v41 callbackQueue];
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = sub_265376B64;
      v97[3] = &unk_279B93848;
      v99 = completionCopy;
      v59 = v57;
      v98 = v59;
      dispatch_async(callbackQueue2, v97);

      v60 = v98;
      v35 = v59;

      objc_sync_exit(v41);
      goto LABEL_19;
    }

    objc_sync_exit(v41);

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_265376B78;
    aBlock[3] = &unk_279B93A30;
    aBlock[4] = v41;
    aBlock[5] = a2;
    v46 = _Block_copy(aBlock);
    state.opaque[0] = 0;
    state.opaque[1] = &state;
    v92 = 0x3032000000;
    v93 = sub_26537700C;
    v94 = sub_26537701C;
    v95 = 0;
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = sub_265377024;
    v88[3] = &unk_279B93A58;
    v88[4] = v41;
    v89 = v46;
    p_state = &state;
    v47 = v46;
    v48 = [manager startSecureTransactionServicesSessionWithRole:1 connectionHandoverCofig:v38 completion:v88];
    v49 = *(state.opaque[1] + 40);
    *(state.opaque[1] + 40) = v48;

    _Block_object_dispose(&state, 8);
LABEL_18:
    v35 = 0;
    goto LABEL_19;
  }

  if ([configurationCopy deviceEngagementType] != 1)
  {
    goto LABEL_18;
  }

  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader startWithConfiguration:connectionHandler:tnepStatusHandler:invalidationHandler:completion:]", 342, selfCopy, @"QR Code Engagement", v28, v29, v74);
  selfCopy->_engagementConfiguration = 64;
  if ([configurationCopy dataRetrievalType])
  {
    selfCopy->_engagementConfiguration |= 1uLL;
  }

  if (([configurationCopy dataRetrievalType] & 2) != 0)
  {
    selfCopy->_engagementConfiguration |= 2uLL;
  }

  if (([configurationCopy dataRetrievalType] & 4) != 0)
  {
    selfCopy->_engagementConfiguration |= 4uLL;
  }

  stsHelper = [(STSReader *)selfCopy stsHelper];
  v31 = [stsHelper startISO18013WithConnectionHandoverConfiguration:selfCopy->_engagementConfiguration type:1 credentialType:2 delegate:selfCopy];

  if (v31)
  {
    callbackQueue3 = [(STSReader *)selfCopy callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2653771B4;
    block[3] = &unk_279B93848;
    v87 = completionCopy;
    v33 = v31;
    v86 = v33;
    dispatch_async(callbackQueue3, block);

    v34 = v86;
    v35 = v33;

    goto LABEL_19;
  }

  stsHelper2 = [(STSReader *)selfCopy stsHelper];
  stsNotificationListener = [(STSReader *)selfCopy stsNotificationListener];
  xpcEndpoint = [stsNotificationListener xpcEndpoint];
  v64 = [stsHelper2 connectToNotificationListener:xpcEndpoint];

  if (!v64)
  {
    engagementData2 = [configurationCopy engagementData];
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader startWithConfiguration:connectionHandler:tnepStatusHandler:invalidationHandler:completion:]", 375, selfCopy, @"engagementData = %@", v69, v70, engagementData2);

    stsHelper3 = [(STSReader *)selfCopy stsHelper];
    engagementData3 = [configurationCopy engagementData];
    callbackQueue4 = [(STSReader *)selfCopy callbackQueue];
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = sub_2653771DC;
    v81[3] = &unk_279B938E8;
    v81[4] = selfCopy;
    [stsHelper3 connectRemoteWithQRCodeHandoverData:engagementData3 callbackQueue:callbackQueue4 responseHandler:v81];

    goto LABEL_18;
  }

  callbackQueue5 = [(STSReader *)selfCopy callbackQueue];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = sub_2653771C8;
  v82[3] = &unk_279B93848;
  v84 = completionCopy;
  v66 = v64;
  v83 = v66;
  dispatch_async(callbackQueue5, v82);

  v67 = v83;
  v35 = v66;

LABEL_19:
  v50 = *MEMORY[0x277D85DE8];

  return v35;
}

- (void)sendDocumentRequest:(id)request timeoutInterval:(double)interval sessionTermination:(BOOL)termination responseHandler:(id)handler
{
  terminationCopy = termination;
  v74[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  v13 = _os_activity_create(&dword_26536F000, "sendDocumentRequest:timeoutInterval:sessionTermination:responseHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  os_activity_scope_leave(&state);

  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader sendDocumentRequest:timeoutInterval:sessionTermination:responseHandler:]", 403, self, @"timeoutInterval=%f", v14, v15, *&interval);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![requestCopy length])
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSReader sendDocumentRequest:timeoutInterval:sessionTermination:responseHandler:]", 405, self, @"Invalid parameter", v16, v17, v57);
    v27 = MEMORY[0x277CCA9B8];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v73[0] = *MEMORY[0x277CCA450];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v74[0] = v29;
    v73[1] = *MEMORY[0x277CCA470];
    v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid Parameter"];
    v74[1] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
    v32 = [v27 errorWithDomain:v28 code:8 userInfo:v31];

    callbackQueue = [(STSReader *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_265377A9C;
    block[3] = &unk_279B93848;
    v64 = v32;
    v65 = handlerCopy;
    v34 = v32;
    dispatch_async(callbackQueue, block);

    goto LABEL_6;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(STSReader *)selfCopy state]== 2)
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader sendDocumentRequest:timeoutInterval:sessionTermination:responseHandler:]", 419, selfCopy, @"invalidated flag already set", v19, v20, v57);
    v21 = MEMORY[0x277CCA9B8];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v71[0] = *MEMORY[0x277CCA450];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v72[0] = v23;
    v71[1] = *MEMORY[0x277CCA470];
    v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Session invalidated"];
    v72[1] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
    v26 = [v21 errorWithDomain:v22 code:9 userInfo:v25];
    goto LABEL_9;
  }

  sendRequestCompletion = [(STSReader *)selfCopy sendRequestCompletion];

  if (sendRequestCompletion)
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader sendDocumentRequest:timeoutInterval:sessionTermination:responseHandler:]", 422, selfCopy, @"sendRequestCompletion already set", v37, v38, v57);
    v39 = MEMORY[0x277CCA9B8];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v69[0] = *MEMORY[0x277CCA450];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v70[0] = v23;
    v69[1] = *MEMORY[0x277CCA470];
    v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Pending send exists"];
    v70[1] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
    v26 = [v39 errorWithDomain:v22 code:9 userInfo:v25];
    goto LABEL_9;
  }

  if ((selfCopy->_engagementConfiguration & 0x40) == 0)
  {
    handoverSession = [(STSReader *)selfCopy handoverSession];
    v44 = handoverSession == 0;

    if (v44)
    {
      sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader sendDocumentRequest:timeoutInterval:sessionTermination:responseHandler:]", 425, selfCopy, @"Not a QRCode session and handoverSession is not created", v45, v46, v57);
      v56 = MEMORY[0x277CCA9B8];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v67[0] = *MEMORY[0x277CCA450];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
      v68[0] = v23;
      v67[1] = *MEMORY[0x277CCA470];
      v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Session has not started"];
      v68[1] = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
      v26 = [v56 errorWithDomain:v22 code:9 userInfo:v25];
LABEL_9:
      v40 = v26;

      if (v40)
      {
        callbackQueue2 = [(STSReader *)selfCopy callbackQueue];
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = sub_265377AB4;
        v60[3] = &unk_279B93848;
        v61 = v40;
        v62 = handlerCopy;
        v42 = v40;
        dispatch_async(callbackQueue2, v60);

        objc_sync_exit(selfCopy);
        goto LABEL_6;
      }
    }
  }

  if (terminationCopy && ![(STSReader *)selfCopy transmissionState])
  {
    [(STSReader *)selfCopy setTransmissionState:1];
  }

  if ([(STSReader *)selfCopy transmissionState])
  {
    v47 = [(STSReader *)selfCopy transmissionState]== 1;
  }

  else
  {
    v47 = 1;
  }

  [(STSReader *)selfCopy setSendRequestCompletion:handlerCopy];
  objc_sync_exit(selfCopy);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_265377ACC;
  aBlock[3] = &unk_279B938E8;
  aBlock[4] = selfCopy;
  v48 = _Block_copy(aBlock);
  stsNotificationListener = [(STSReader *)selfCopy stsNotificationListener];
  v50 = stsNotificationListener;
  if (v47)
  {
    [stsNotificationListener sendISO18013SessionEstablishment:requestCopy completion:v48];
  }

  else
  {
    if (terminationCopy)
    {
      v51 = &unk_2876ECD38;
    }

    else
    {
      v51 = 0;
    }

    [stsNotificationListener sendISO18013SessionData:requestCopy status:v51 completion:v48];
  }

  v52 = [STSTimer alloc];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = sub_265377B8C;
  v58[3] = &unk_279B93A80;
  v58[4] = selfCopy;
  v58[5] = a2;
  callbackQueue3 = [(STSReader *)selfCopy callbackQueue];
  v54 = [(STSTimer *)v52 initWithCallback:v58 queue:callbackQueue3];
  [(STSReader *)selfCopy setResponseTimeout:v54];

  responseTimeout = [(STSReader *)selfCopy responseTimeout];
  [responseTimeout startTimer:interval];

LABEL_6:
  v35 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader invalidate]", 480, self, &stru_2876E3E50, v2, v3, v5);

  MEMORY[0x2821F9670](self, sel_invalidateWithCode_);
}

- (void)executeOnSEProxyWithBlock:(id)block
{
  blockCopy = block;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader executeOnSEProxyWithBlock:]", 528, self, &stru_2876E3E50, v6, v7, v58);
  v8 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_265378C68;
  aBlock[3] = &unk_279B93898;
  aBlock[4] = self;
  v9 = v8;
  v95 = v9;
  v10 = _Block_copy(aBlock);
  initiatingSession = [(STSReader *)self initiatingSession];
  if (initiatingSession)
  {
  }

  else
  {
    proxyReaderSESession = [(STSReader *)self proxyReaderSESession];

    if (!proxyReaderSESession)
    {
      goto LABEL_5;
    }
  }

  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader executeOnSEProxyWithBlock:]", 557, self, @"initiatingSession or proxyReaderSESession already exists. Clean it up first", v12, v13, v59);
  [(STSReader *)self _seProxyCleanup:0];
LABEL_5:
  handoverSession = [(STSReader *)self handoverSession];

  if (!handoverSession)
  {
    proxyReaderSESession2 = [(STSReader *)self proxyReaderSESession];

    if (proxyReaderSESession2)
    {
      sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader executeOnSEProxyWithBlock:]", 594, self, @"Previous session exists, tear down now", v24, v25, v59);
      [(STSReader *)self _seProxyCleanup:v10];
    }

    else
    {
      v10[2](v10);
    }

LABEL_18:
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader executeOnSEProxyWithBlock:]", 601, self, @" Waiting for SE Proxy Session", v26, v27, v59);
    v38 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v9, v38);
    proxyReaderSESession3 = [(STSReader *)self proxyReaderSESession];

    if (!proxyReaderSESession3)
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSReader executeOnSEProxyWithBlock:]", 606, self, @"Could not get the SE Proxy session", v40, v41, v61);
      callbackQueue = [(STSReader *)self callbackQueue];
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = sub_265378E84;
      v72[3] = &unk_279B93AF8;
      v73 = blockCopy;
      v74 = a2;
      dispatch_async(callbackQueue, v72);

      [(STSReader *)self _seProxyCleanup:0];
      v22 = v73;
      goto LABEL_24;
    }

    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader executeOnSEProxyWithBlock:]", 614, self, @" Create SE ProxyListener", v40, v41, v61);
    v42 = [[NFSecureElementReaderProxyListener alloc] initWithSTSReaderSession:self];
    [(STSReader *)self setSeProxyListener:v42];

    seProxyListener = [(STSReader *)self seProxyListener];

    if (!seProxyListener)
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSReader executeOnSEProxyWithBlock:]", 619, self, @"Could not get the  Proxy Listener", v44, v45, v62);
      callbackQueue2 = [(STSReader *)self callbackQueue];
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = sub_265379038;
      v69[3] = &unk_279B93AF8;
      v70 = blockCopy;
      v71 = a2;
      dispatch_async(callbackQueue2, v69);

      [(STSReader *)self _seProxyCleanup:0];
      v22 = v70;
      goto LABEL_24;
    }

    v46 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v47 = dispatch_queue_create("STSXPCReader", v46);

    stsHelper = [(STSReader *)self stsHelper];
    seProxyListener2 = [(STSReader *)self seProxyListener];
    v50 = [stsHelper startReaderSEProxyListener:seProxyListener2 workQueue:v47];

    if (v50)
    {
      callbackQueue3 = [(STSReader *)self callbackQueue];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = sub_2653791EC;
      v65[3] = &unk_279B93B20;
      v54 = &v68;
      v68 = blockCopy;
      v66 = v50;
      selfCopy = self;
      dispatch_async(callbackQueue3, v65);
    }

    else
    {
      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader executeOnSEProxyWithBlock:]", 639, self, @"Could not startReaderSEProxyListener", v51, v52, v62);
      callbackQueue4 = [(STSReader *)self callbackQueue];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = sub_265379254;
      v63[3] = &unk_279B93AF8;
      v54 = v64;
      v64[0] = blockCopy;
      v64[1] = a2;
      dispatch_async(callbackQueue4, v63);

      [(STSReader *)self _seProxyCleanup:0];
    }

    goto LABEL_27;
  }

  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader executeOnSEProxyWithBlock:]", 562, self, @"Create a handoffToken", v16, v17, v59);
  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = sub_26537700C;
  v92 = sub_26537701C;
  v93 = 0;
  handoverSession2 = [(STSReader *)self handoverSession];
  v19 = v89;
  v87 = v89[5];
  v20 = [handoverSession2 createSessionHandoffToken:&v87];
  objc_storeStrong(v19 + 5, v87);

  if (v89[5])
  {
    callbackQueue5 = [(STSReader *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_265378E44;
    block[3] = &unk_279B93AD0;
    v85 = blockCopy;
    v86 = &v88;
    dispatch_async(callbackQueue5, block);

    [(STSReader *)self _seProxyCleanup:0];
    _Block_object_dispose(&v88, 8);
    v22 = v93;
LABEL_24:

    goto LABEL_27;
  }

  proxyReaderSESession4 = [(STSReader *)self proxyReaderSESession];

  if (proxyReaderSESession4)
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader executeOnSEProxyWithBlock:]", 575, self, @"Previous session exists, tear down now", v29, v30, v60);
    [(STSReader *)self _seProxyCleanup:v10];
  }

  else
  {
    v10[2](v10);
  }

  sub_265398094(OS_LOG_TYPE_DEFAULT, 1, "[STSReader executeOnSEProxyWithBlock:]", 581, self, @"Activating session with token: %@", v31, v32, v20);
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = sub_26537700C;
  v82 = sub_26537701C;
  initiatingSession2 = [(STSReader *)self initiatingSession];
  v83 = [initiatingSession2 activateWithToken:v20];

  v36 = v79[5];
  if (v36)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSReader executeOnSEProxyWithBlock:]", 584, self, @"Session switching error=%@", v34, v35, v79[5]);
    callbackQueue6 = [(STSReader *)self callbackQueue];
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = sub_265378E64;
    v75[3] = &unk_279B93AD0;
    v76 = blockCopy;
    v77 = &v78;
    dispatch_async(callbackQueue6, v75);

    [(STSReader *)self _seProxyCleanup:0];
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 1, "[STSReader executeOnSEProxyWithBlock:]", 591, self, @"Activated session with token: %@", v34, v35, v20);
  }

  _Block_object_dispose(&v78, 8);

  _Block_object_dispose(&v88, 8);
  if (!v36)
  {
    goto LABEL_18;
  }

LABEL_27:
}

- (void)relinquishSEProxy
{
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader relinquishSEProxy]", 650, self, &stru_2876E3E50, v2, v3, v6);
  stsHelper = [(STSReader *)self stsHelper];
  [stsHelper stopSEProxyListener];

  [(STSReader *)self setSeProxyListener:0];
}

- (void)transactionStarted:(unint64_t)started
{
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader transactionStarted:]", 658, self, @"status=%lu", v3, v4, started);
  if (started)
  {
    v7 = [(STSReader *)self _translateXPCClientNotificationStatus:started];
    [(STSReader *)self _activateInvalidationHandler:v7];
  }
}

- (void)receiveISO18013DeviceResponse:(id)response sessionDataStatus:(id)status mDocResponseStatus:(id)responseStatus error:(id)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  statusCopy = status;
  responseStatusCopy = responseStatus;
  errorCopy = error;
  v14 = [responseCopy length];
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader receiveISO18013DeviceResponse:sessionDataStatus:mDocResponseStatus:error:]", 679, self, @"dataLen=%ld, SessionData.status=%@, mDocResponseStatus=%@, error=%@", v15, v16, v14);
  responseTimeout = [(STSReader *)self responseTimeout];
  [responseTimeout stopTimer];

  [(STSReader *)self setResponseTimeout:0];
  unsignedIntegerValue = [statusCopy unsignedIntegerValue];
  if ((unsignedIntegerValue - 10) < 2)
  {
    goto LABEL_4;
  }

  if (unsignedIntegerValue == 20)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader receiveISO18013DeviceResponse:sessionDataStatus:mDocResponseStatus:error:]", 688, self, @"Session termination requested in session data status", v19, v20, v31);
LABEL_4:
    v21 = 1;
    goto LABEL_6;
  }

  v21 = 0;
LABEL_6:
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(STSReader *)selfCopy transmissionState]== 1)
  {
    stsNotificationListener = [(STSReader *)selfCopy stsNotificationListener];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_26537988C;
    v32[3] = &unk_279B938E8;
    v32[4] = selfCopy;
    [stsNotificationListener sendISO18013SessionData:0 status:&unk_2876ECD38 completion:v32];
  }

  objc_sync_exit(selfCopy);

  if ([responseCopy length])
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader receiveISO18013DeviceResponse:sessionDataStatus:mDocResponseStatus:error:]", 710, selfCopy, @"activating send request completion: terminationRequested: %d", v24, v25, v21);
    [(STSReader *)selfCopy _activateSendRequestCompletion:responseCopy terminationRequested:v21 error:0];
  }

  else if (v21)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader receiveISO18013DeviceResponse:sessionDataStatus:mDocResponseStatus:error:]", 713, selfCopy, @"Session termination request received", v24, v25, v31);
    v26 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v34[0] = off_2800174A8;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v28 = [v26 errorWithDomain:@"STSXPCHelperErrorDomain" code:17 userInfo:v27];

    v29 = [(STSReader *)selfCopy _translateSTSXPCHelperError:v28];

    [(STSReader *)selfCopy _activateInvalidationHandler:v29];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)alternativeCarrierConnectedWithStatus:(unint64_t)status
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader alternativeCarrierConnectedWithStatus:]", 730, self, @"status=%lu", v3, v4, status);
  if (status)
  {
    handoverSession = [(STSReader *)self _translateXPCClientNotificationStatus:status];
    [(STSReader *)self _activateInvalidationHandler:?];
  }

  else
  {
    [(STSReader *)self _activateOnConnectCompletion];
    handoverSession = [(STSReader *)self handoverSession];
    [handoverSession stopTNEPOperation];
  }
}

- (void)alternativeCarrierDisconnectedWithStatus:(unint64_t)status
{
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader alternativeCarrierDisconnectedWithStatus:]", 743, self, &stru_2876E3E50, v3, v4, v7);
  v8 = [(STSReader *)self _translateXPCClientNotificationStatus:status];
  [(STSReader *)self _activateInvalidationHandler:v8];
}

- (void)connectionEstablishedWithSTSReaderCryptarch:(id)cryptarch sessionTranscript:(id)transcript
{
  transcriptCopy = transcript;
  cryptarchCopy = cryptarch;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader connectionEstablishedWithSTSReaderCryptarch:sessionTranscript:]", 750, self, &stru_2876E3E50, v7, v8, v9);
  [(STSReader *)self setStsReaderCryptarch:cryptarchCopy];

  [(STSReader *)self setSessionTranscriptBytes:transcriptCopy];
}

- (void)xpcInvalidated
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader xpcInvalidated]", 756, self, &stru_2876E3E50, v2, v3, v5);

  MEMORY[0x2821F9670](self, sel_invalidateWithCode_);
}

- (void)xpcInterrupted
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader xpcInterrupted]", 761, self, &stru_2876E3E50, v2, v3, v5);

  MEMORY[0x2821F9670](self, sel_invalidateWithCode_);
}

- (void)session:(id)session connectionHandoverProcessFailure:(id)failure
{
  failureCopy = failure;
  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSReader session:connectionHandoverProcessFailure:]", 778, self, @"error=%@", v6, v7, failureCopy);
  v14 = failureCopy;
  domain = [v14 domain];
  v9 = [domain isEqualToString:@"STSXPCHelperErrorDomain"];

  v10 = v14;
  if ((v9 & 1) == 0)
  {
    userInfo = [v14 userInfo];
    v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    v10 = v14;
    if (v12)
    {
      v10 = v12;
    }
  }

  v13 = [(STSReader *)self _translateSTSXPCHelperError:v10];

  [(STSReader *)self _activateTnepStatusHandler:v13];
  [(STSReader *)self _activateInvalidationHandler:v13];
}

- (void)connectionHandoverCompleted:(id)completed
{
  completedCopy = completed;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader connectionHandoverCompleted:]", 795, self, &stru_2876E3E50, v5, v6, v7);
  [completedCopy stopTNEPOperation];

  [(STSReader *)self _activateTnepStatusHandler:0];
}

- (void)session:(id)session didEndUnexpectedly:(id)unexpectedly
{
  v24[4] = *MEMORY[0x277D85DE8];
  unexpectedlyCopy = unexpectedly;
  code = [unexpectedlyCopy code];
  v9 = MEMORY[0x277CCA9B8];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v11 = *MEMORY[0x277CCA450];
  if (code == 47)
  {
    v23[0] = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Reader mode protection enable"];
    v24[0] = v12;
    v24[1] = &unk_2876ECDE0;
    v23[1] = @"Line";
    v23[2] = @"Method";
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v24[2] = v4;
    v23[3] = *MEMORY[0x277CCA068];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 803];
    v24[3] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];
    v15 = [v9 errorWithDomain:v10 code:20 userInfo:v14];

LABEL_6:
    goto LABEL_7;
  }

  v21[0] = *MEMORY[0x277CCA450];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Aborted"];
  v22[0] = v12;
  v21[1] = *MEMORY[0x277CCA7E8];
  v13 = unexpectedlyCopy;
  if (!unexpectedlyCopy)
  {
    v16 = MEMORY[0x277CCA9B8];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v13 = [v16 errorWithDomain:v4 code:5 userInfo:0];
  }

  v22[1] = v13;
  v22[2] = &unk_2876ECDF8;
  v21[2] = @"Line";
  v21[3] = @"Method";
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
  v22[3] = v17;
  v21[4] = *MEMORY[0x277CCA068];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 805];
  v22[4] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:5];
  v15 = [v9 errorWithDomain:v10 code:3 userInfo:v19];

  if (!unexpectedlyCopy)
  {
    goto LABEL_6;
  }

LABEL_7:

  [(STSReader *)self _activateInvalidationHandler:v15];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_seProxyCleanup:(id)cleanup
{
  cleanupCopy = cleanup;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader _seProxyCleanup:]", 814, self, &stru_2876E3E50, v4, v5, v13);
  proxyReaderSESession = [(STSReader *)self proxyReaderSESession];

  if (proxyReaderSESession)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader _seProxyCleanup:]", 817, self, @"relinquish SE back", v7, v8, v14);
    proxyReaderSESession2 = [(STSReader *)self proxyReaderSESession];
    [proxyReaderSESession2 endSessionWithCompletion:&unk_2876E3CF0];

    [(STSReader *)self setProxyReaderSESession:0];
  }

  initiatingSession = [(STSReader *)self initiatingSession];

  if (initiatingSession)
  {
    initiatingSession2 = [(STSReader *)self initiatingSession];
    [initiatingSession2 endSessionWithCompletion:&unk_2876E3D10];

    [(STSReader *)self setInitiatingSession:0];
  }

  v12 = cleanupCopy;
  if (cleanupCopy)
  {
    (*(cleanupCopy + 2))(cleanupCopy);
    v12 = cleanupCopy;
  }
}

- (void)_activateSessionStartCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  callbackQueue = [(STSReader *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26537A2F0;
  block[3] = &unk_279B93B68;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(callbackQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_activateTnepStatusHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  callbackQueue = [(STSReader *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26537A4A8;
  block[3] = &unk_279B93B68;
  objc_copyWeak(&v9, &location);
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(callbackQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_activateOnConnectCompletion
{
  objc_initWeak(&location, self);
  callbackQueue = [(STSReader *)self callbackQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_26537A638;
  v4[3] = &unk_279B93B90;
  objc_copyWeak(&v5, &location);
  dispatch_async(callbackQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_activateSendRequestCompletion:(id)completion terminationRequested:(BOOL)requested error:(id)error
{
  completionCopy = completion;
  errorCopy = error;
  objc_initWeak(&location, self);
  callbackQueue = [(STSReader *)self callbackQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_26537A7EC;
  v13[3] = &unk_279B93BB8;
  objc_copyWeak(&v17, &location);
  v14 = errorCopy;
  v15 = completionCopy;
  requestedCopy = requested;
  selfCopy = self;
  v11 = completionCopy;
  v12 = errorCopy;
  dispatch_async(callbackQueue, v13);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_activateInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader _activateInvalidationHandler:]", 902, self, @"error=%@", v5, v6, handlerCopy);
  handoverSession = [(STSReader *)self handoverSession];
  [handoverSession endSession];

  objc_initWeak(&location, self);
  callbackQueue = [(STSReader *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26537AA38;
  block[3] = &unk_279B93B68;
  objc_copyWeak(&v12, &location);
  v11 = handlerCopy;
  v9 = handlerCopy;
  dispatch_async(callbackQueue, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (id)_translateXPCClientNotificationStatus:(unint64_t)status
{
  v4 = 0;
  v34[4] = *MEMORY[0x277D85DE8];
  if (status > 5)
  {
    if (status > 7)
    {
      if (status == 8)
      {
        v18 = MEMORY[0x277CCA9B8];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v23[0] = *MEMORY[0x277CCA450];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Alternative Carrier transmission error"];
        v24[0] = v7;
        v24[1] = &unk_2876ECE88;
        v23[1] = @"Line";
        v23[2] = @"Method";
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
        v24[2] = v8;
        v23[3] = *MEMORY[0x277CCA068];
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 939];
        v24[3] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];
        v11 = v18;
        v12 = v6;
        v13 = 19;
      }

      else
      {
        if (status != 9)
        {
          goto LABEL_18;
        }

        v15 = MEMORY[0x277CCA9B8];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v21[0] = *MEMORY[0x277CCA450];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
        v22[0] = v7;
        v22[1] = &unk_2876ECEA0;
        v21[1] = @"Line";
        v21[2] = @"Method";
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
        v22[2] = v8;
        v21[3] = *MEMORY[0x277CCA068];
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 941];
        v22[3] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
        v11 = v15;
        v12 = v6;
        v13 = 9;
      }
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      if (status == 6)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v27[0] = *MEMORY[0x277CCA450];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Requires Wifi power on"];
        v28[0] = v7;
        v28[1] = &unk_2876ECE58;
        v27[1] = @"Line";
        v27[2] = @"Method";
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
        v28[2] = v8;
        v27[3] = *MEMORY[0x277CCA068];
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 935];
        v28[3] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];
        v11 = v14;
        v12 = v6;
        v13 = 15;
      }

      else
      {
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v25[0] = *MEMORY[0x277CCA450];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Requires Bluetooth power on"];
        v26[0] = v7;
        v26[1] = &unk_2876ECE70;
        v25[1] = @"Line";
        v25[2] = @"Method";
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
        v26[2] = v8;
        v25[3] = *MEMORY[0x277CCA068];
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 937];
        v26[3] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
        v11 = v14;
        v12 = v6;
        v13 = 16;
      }
    }
  }

  else
  {
    if (status <= 3)
    {
      if (status - 1 >= 2)
      {
        if (status != 3)
        {
          goto LABEL_18;
        }

        v5 = MEMORY[0x277CCA9B8];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v31[0] = *MEMORY[0x277CCA450];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Timeout"];
        v32[0] = v7;
        v32[1] = &unk_2876ECE28;
        v31[1] = @"Line";
        v31[2] = @"Method";
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
        v32[2] = v8;
        v31[3] = *MEMORY[0x277CCA068];
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 931];
        v32[3] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];
        v11 = v5;
        v12 = v6;
        v13 = 4;
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    if (status == 4)
    {
LABEL_14:
      v17 = MEMORY[0x277CCA9B8];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v33[0] = *MEMORY[0x277CCA450];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Cancelled"];
      v34[0] = v7;
      v34[1] = &unk_2876ECE10;
      v33[1] = @"Line";
      v33[2] = @"Method";
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v34[2] = v8;
      v33[3] = *MEMORY[0x277CCA068];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 929];
      v34[3] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];
      v11 = v17;
      v12 = v6;
      v13 = 13;
      goto LABEL_17;
    }

    v16 = MEMORY[0x277CCA9B8];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v29[0] = *MEMORY[0x277CCA450];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"No alernative carrier available"];
    v30[0] = v7;
    v30[1] = &unk_2876ECE40;
    v29[1] = @"Line";
    v29[2] = @"Method";
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v30[2] = v8;
    v29[3] = *MEMORY[0x277CCA068];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 933];
    v30[3] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];
    v11 = v16;
    v12 = v6;
    v13 = 14;
  }

LABEL_17:
  v4 = [v11 errorWithDomain:v12 code:v13 userInfo:v10];

LABEL_18:
  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_translateSTSXPCHelperError:(id)error
{
  v122[5] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = errorCopy;
  if (!errorCopy)
  {
    a2 = 0;
    goto LABEL_16;
  }

  domain = [errorCopy domain];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v9 = [domain isEqual:v8];

  if (v9)
  {
    v10 = v6;
LABEL_7:
    a2 = v10;
    goto LABEL_16;
  }

  domain2 = [v6 domain];
  v12 = [domain2 isEqual:@"nfcd"];

  if (v12)
  {
    v10 = [(STSReader *)self _translateNfcdXPCHelperError:v6];
    goto LABEL_7;
  }

  domain3 = [v6 domain];
  v14 = [domain3 isEqual:@"STSXPCHelperErrorDomain"];

  if ((v14 & 1) == 0)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v121[0] = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unknown Error"];
    v24 = *MEMORY[0x277CCA7E8];
    v122[0] = v17;
    v122[1] = v6;
    v121[1] = v24;
    v121[2] = @"Line";
    v122[2] = &unk_2876ECEB8;
    v121[3] = @"Method";
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v122[3] = v19;
    v121[4] = *MEMORY[0x277CCA068];
    1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 957];
    v122[4] = 1002;
    v21 = MEMORY[0x277CBEAC0];
    v22 = v122;
    v23 = v121;
LABEL_12:
    v25 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:5];
    v26 = v15;
    v27 = v16;
    v28 = 5;
LABEL_13:
    a2 = [v26 errorWithDomain:v27 code:v28 userInfo:v25];

    goto LABEL_14;
  }

  switch([v6 code])
  {
    case 0:
      v56 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v119[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
      v120[0] = v17;
      v120[1] = &unk_2876ECED0;
      v119[1] = @"Line";
      v119[2] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v120[2] = v19;
      v119[3] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 965];
      v120[3] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:4];
      v26 = v56;
      v27 = v16;
      v28 = 10;
      goto LABEL_13;
    case 1:
      v57 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v117[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
      v58 = *MEMORY[0x277CCA7E8];
      v118[0] = v17;
      v118[1] = v6;
      v117[1] = v58;
      v117[2] = @"Line";
      v118[2] = &unk_2876ECEE8;
      v117[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v118[3] = v19;
      v117[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 967];
      v118[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:5];
      v26 = v57;
      v27 = v16;
      v28 = 11;
      goto LABEL_13;
    case 2:
      v47 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v115[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
      v48 = *MEMORY[0x277CCA7E8];
      v116[0] = v17;
      v116[1] = v6;
      v115[1] = v48;
      v115[2] = @"Line";
      v116[2] = &unk_2876ECF00;
      v115[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v116[3] = v19;
      v115[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 969];
      v116[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:5];
      v26 = v47;
      v27 = v16;
      v28 = 9;
      goto LABEL_13;
    case 3:
    case 9:
    case 10:
    case 11:
    case 19:
    case 20:
      v15 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v103[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unknown Error"];
      v18 = *MEMORY[0x277CCA7E8];
      v104[0] = v17;
      v104[1] = v6;
      v103[1] = v18;
      v103[2] = @"Line";
      v104[2] = &unk_2876ECF90;
      v103[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v104[3] = v19;
      v103[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 987];
      v104[4] = 1002;
      v21 = MEMORY[0x277CBEAC0];
      v22 = v104;
      v23 = v103;
      goto LABEL_12;
    case 4:
      v37 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v111[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"XPC Error"];
      v38 = *MEMORY[0x277CCA7E8];
      v112[0] = v17;
      v112[1] = v6;
      v111[1] = v38;
      v111[2] = @"Line";
      v112[2] = &unk_2876ECF30;
      v111[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v112[3] = v19;
      v111[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 973];
      v112[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:5];
      v26 = v37;
      v27 = v16;
      v28 = 6;
      goto LABEL_13;
    case 5:
      v54 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v109[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
      v55 = *MEMORY[0x277CCA7E8];
      v110[0] = v17;
      v110[1] = v6;
      v109[1] = v55;
      v109[2] = @"Line";
      v110[2] = &unk_2876ECF48;
      v109[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v110[3] = v19;
      v109[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 975];
      v110[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:5];
      v26 = v54;
      v27 = v16;
      v28 = 8;
      goto LABEL_13;
    case 6:
      v33 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v107[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Hardware Not Available"];
      v34 = *MEMORY[0x277CCA7E8];
      v108[0] = v17;
      v108[1] = v6;
      v107[1] = v34;
      v107[2] = @"Line";
      v108[2] = &unk_2876ECF60;
      v107[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v108[3] = v19;
      v107[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 977];
      v108[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:5];
      v26 = v33;
      v27 = v16;
      v28 = 12;
      goto LABEL_13;
    case 7:
      v35 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v105[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Timeout"];
      v36 = *MEMORY[0x277CCA7E8];
      v106[0] = v17;
      v106[1] = v6;
      v105[1] = v36;
      v105[2] = @"Line";
      v106[2] = &unk_2876ECF78;
      v105[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v106[3] = v19;
      v105[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 979];
      v106[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:5];
      v26 = v35;
      v27 = v16;
      v28 = 4;
      goto LABEL_13;
    case 8:
      v49 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v113[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"No alernative carrier available"];
      v50 = *MEMORY[0x277CCA7E8];
      v114[0] = v17;
      v114[1] = v6;
      v113[1] = v50;
      v113[2] = @"Line";
      v114[2] = &unk_2876ECF18;
      v113[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v114[3] = v19;
      v113[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 971];
      v114[4] = 1002;
      v51 = MEMORY[0x277CBEAC0];
      v52 = v114;
      v53 = v113;
      goto LABEL_46;
    case 12:
      v39 = v6;
      domain4 = [v39 domain];
      if (![domain4 isEqualToString:@"STSXPCHelperErrorDomain"])
      {

        goto LABEL_37;
      }

      code = [v39 code];

      if (code != 12)
      {
LABEL_37:

        v16 = 0;
        goto LABEL_38;
      }

      userInfo = [v39 userInfo];
      v43 = *MEMORY[0x277CCA7E8];
      v44 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      domain5 = [v44 domain];
      v46 = [domain5 isEqualToString:@"BluetoothDomain"];

      if (v46)
      {
        v16 = v44;
      }

      else
      {
        v16 = 0;
      }

      if (v16 && ![v16 code])
      {
        v76 = MEMORY[0x277CCA9B8];
        v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v99[0] = *MEMORY[0x277CCA450];
        v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Requires Bluetooth power on"];
        v100[0] = v78;
        v100[1] = v39;
        v99[1] = v43;
        v99[2] = @"Line";
        v100[2] = &unk_2876ECFC0;
        v99[3] = @"Method";
        v79 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
        v100[3] = v79;
        v99[4] = *MEMORY[0x277CCA068];
        v80 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 993];
        v100[4] = v80;
        v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:5];
        a2 = [v76 errorWithDomain:v77 code:16 userInfo:v81];

        goto LABEL_15;
      }

LABEL_38:
      v67 = v39;
      domain6 = [v67 domain];
      if (![domain6 isEqualToString:@"WifiDomain"])
      {

        goto LABEL_43;
      }

      code2 = [v67 code];

      if (code2 != 12)
      {
LABEL_43:

        v17 = 0;
        goto LABEL_44;
      }

      userInfo2 = [v67 userInfo];
      v71 = *MEMORY[0x277CCA7E8];
      v72 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      domain7 = [v72 domain];
      v74 = [domain7 isEqualToString:@"WifiDomain"];

      if (v74)
      {
        v17 = v72;
      }

      else
      {
        v17 = 0;
      }

      if (!v17 || [v17 code] != 3)
      {
LABEL_44:

LABEL_45:
        v49 = MEMORY[0x277CCA9B8];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v95[0] = *MEMORY[0x277CCA450];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"No alernative carrier available"];
        v75 = *MEMORY[0x277CCA7E8];
        v96[0] = v17;
        v96[1] = v6;
        v95[1] = v75;
        v95[2] = @"Line";
        v96[2] = &unk_2876ECFF0;
        v95[3] = @"Method";
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
        v96[3] = v19;
        v95[4] = *MEMORY[0x277CCA068];
        1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 1002];
        v96[4] = 1002;
        v51 = MEMORY[0x277CBEAC0];
        v52 = v96;
        v53 = v95;
LABEL_46:
        v25 = [v51 dictionaryWithObjects:v52 forKeys:v53 count:5];
        v26 = v49;
        v27 = v16;
        v28 = 14;
        goto LABEL_13;
      }

      v82 = MEMORY[0x277CCA9B8];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v97[0] = *MEMORY[0x277CCA450];
      v83 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Requires Wifi power on"];
      v98[0] = v83;
      v98[1] = v67;
      v97[1] = v71;
      v97[2] = @"Line";
      v98[2] = &unk_2876ECFD8;
      v97[3] = @"Method";
      v84 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v98[3] = v84;
      v97[4] = *MEMORY[0x277CCA068];
      v85 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 998];
      v98[4] = v85;
      v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:5];
      a2 = [v82 errorWithDomain:v19 code:15 userInfo:v86];

LABEL_14:
LABEL_15:

LABEL_16:
      v29 = *MEMORY[0x277D85DE8];

      return a2;
    case 13:
      goto LABEL_45;
    case 14:
    case 15:
      v31 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v93[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Alternative Carrier transmission error"];
      v32 = *MEMORY[0x277CCA7E8];
      v94[0] = v17;
      v94[1] = v6;
      v93[1] = v32;
      v93[2] = @"Line";
      v94[2] = &unk_2876ED008;
      v93[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v94[3] = v19;
      v93[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 1005];
      v94[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:5];
      v26 = v31;
      v27 = v16;
      v28 = 19;
      goto LABEL_13;
    case 16:
      v63 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v91[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Cancelled"];
      v64 = *MEMORY[0x277CCA7E8];
      v92[0] = v17;
      v92[1] = v6;
      v91[1] = v64;
      v91[2] = @"Line";
      v92[2] = &unk_2876ED020;
      v91[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v92[3] = v19;
      v91[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 1007];
      v92[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:5];
      v26 = v63;
      v27 = v16;
      v28 = 13;
      goto LABEL_13;
    case 17:
      v65 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v89[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalidated"];
      v66 = *MEMORY[0x277CCA7E8];
      v90[0] = v17;
      v90[1] = v6;
      v89[1] = v66;
      v89[2] = @"Line";
      v90[2] = &unk_2876ED038;
      v89[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v90[3] = v19;
      v89[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 1009];
      v90[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:5];
      v26 = v65;
      v27 = v16;
      v28 = 17;
      goto LABEL_13;
    case 18:
      v59 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v87[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"QRCode decoding error"];
      v60 = *MEMORY[0x277CCA7E8];
      v88[0] = v17;
      v88[1] = v6;
      v87[1] = v60;
      v87[2] = @"Line";
      v88[2] = &unk_2876ED050;
      v87[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v88[3] = v19;
      v87[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 1011];
      v88[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:5];
      v26 = v59;
      v27 = v16;
      v28 = 21;
      goto LABEL_13;
    case 21:
      v61 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v101[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Reader reported an error"];
      v62 = *MEMORY[0x277CCA7E8];
      v102[0] = v17;
      v102[1] = v6;
      v101[1] = v62;
      v101[2] = @"Line";
      v102[2] = &unk_2876ECFA8;
      v101[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v102[3] = v19;
      v101[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 989];
      v102[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:5];
      v26 = v61;
      v27 = v16;
      v28 = 24;
      goto LABEL_13;
    default:
      goto LABEL_16;
  }
}

- (id)_translateNfcdXPCHelperError:(id)error
{
  v41[5] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = errorCopy;
  if (!errorCopy)
  {
    goto LABEL_7;
  }

  domain = [errorCopy domain];
  v8 = [domain isEqual:@"nfcd"];

  if ((v8 & 1) == 0)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSReader _translateNfcdXPCHelperError:]", 1019, self, @"Wrong domain", v9, v10, v33);
    v12 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v40[0] = *MEMORY[0x277CCA450];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unknown Error"];
    v22 = *MEMORY[0x277CCA7E8];
    v41[0] = v14;
    v41[1] = v6;
    v40[1] = v22;
    v40[2] = @"Line";
    v41[2] = &unk_2876ED068;
    v40[3] = @"Method";
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v41[3] = v16;
    v40[4] = *MEMORY[0x277CCA068];
    1020 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 1020];
    v41[4] = 1020;
    v18 = MEMORY[0x277CBEAC0];
    v19 = v41;
    v20 = v40;
    goto LABEL_9;
  }

  code = [v6 code];
  if (code > 14)
  {
    if (code == 21)
    {
      v29 = MEMORY[0x277CCA9B8];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v36[0] = *MEMORY[0x277CCA450];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TNEP connection error"];
      v30 = *MEMORY[0x277CCA7E8];
      v37[0] = v14;
      v37[1] = v6;
      v36[1] = v30;
      v36[2] = @"Line";
      v37[2] = &unk_2876ED098;
      v36[3] = @"Method";
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v37[3] = v16;
      v36[4] = *MEMORY[0x277CCA068];
      1020 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 1033];
      v37[4] = 1020;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:5];
      v24 = v29;
      v25 = v13;
      v26 = 23;
      goto LABEL_14;
    }

    if (code != 15)
    {
      goto LABEL_6;
    }

LABEL_12:
    v27 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v38[0] = *MEMORY[0x277CCA450];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NFC tear"];
    v28 = *MEMORY[0x277CCA7E8];
    v39[0] = v14;
    v39[1] = v6;
    v38[1] = v28;
    v38[2] = @"Line";
    v39[2] = &unk_2876ED080;
    v38[3] = @"Method";
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v39[3] = v16;
    v38[4] = *MEMORY[0x277CCA068];
    1020 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 1031];
    v39[4] = 1020;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:5];
    v24 = v27;
    v25 = v13;
    v26 = 22;
    goto LABEL_14;
  }

  if (!code)
  {
LABEL_7:
    v21 = 0;
    goto LABEL_15;
  }

  if (code == 5)
  {
    goto LABEL_12;
  }

LABEL_6:
  v12 = MEMORY[0x277CCA9B8];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v34[0] = *MEMORY[0x277CCA450];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unknown Error"];
  v15 = *MEMORY[0x277CCA7E8];
  v35[0] = v14;
  v35[1] = v6;
  v34[1] = v15;
  v34[2] = @"Line";
  v35[2] = &unk_2876ED0B0;
  v34[3] = @"Method";
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
  v35[3] = v16;
  v34[4] = *MEMORY[0x277CCA068];
  1020 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 1035];
  v35[4] = 1020;
  v18 = MEMORY[0x277CBEAC0];
  v19 = v35;
  v20 = v34;
LABEL_9:
  v23 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:5];
  v24 = v12;
  v25 = v13;
  v26 = 5;
LABEL_14:
  v21 = [v24 errorWithDomain:v25 code:v26 userInfo:v23];

LABEL_15:
  v31 = *MEMORY[0x277D85DE8];

  return v21;
}

@end
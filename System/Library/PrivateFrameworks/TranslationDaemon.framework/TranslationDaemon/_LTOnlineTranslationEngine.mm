@interface _LTOnlineTranslationEngine
+ (id)blazarServiceWithBundleID:(id)d;
+ (void)initialize;
- (BOOL)_hasOngoingSpeechSession;
- (_LTOnlineTranslationEngine)initWithSelfLoggingManager:(id)manager;
- (id)_blazarService;
- (id)_serviceForTask:(int64_t)task;
- (id)_siriService;
- (id)_systemService;
- (id)_tokenizeString:(id)string inLocale:(id)locale;
- (id)_webTaskService;
- (void)_createOrUpdateBatchTranslationRequestWithParagraph:(id)paragraph index:(int64_t)index context:(id)context completion:(id)completion;
- (void)_hasOngoingSpeechSession;
- (void)_speechSessionCompletedWithError:(id)error;
- (void)cancelServerTimeout;
- (void)cancelSpeechTranslation:(BOOL)translation;
- (void)sendBatchTranslationRequestWithDelegate:(id)delegate;
- (void)serverTimeoutFired;
- (void)speak:(id)speak withContext:(id)context completion:(id)completion;
- (void)startServerTimeoutTimer;
- (void)startSpeechTranslationWithContext:(id)context delegate:(id)delegate;
- (void)startTextToSpeechTranslationWithContext:(id)context text:(id)text delegate:(id)delegate;
- (void)translate:(id)translate withContext:(id)context paragraphResult:(id)result completion:(id)completion;
- (void)translateSentence:(id)sentence withContext:(id)context completion:(id)completion;
- (void)updateServerTimeout;
@end

@implementation _LTOnlineTranslationEngine

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    completionGroup = dispatch_group_create();

    MEMORY[0x2821F96F8]();
  }
}

- (_LTOnlineTranslationEngine)initWithSelfLoggingManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = _LTOnlineTranslationEngine;
  v6 = [(_LTOnlineTranslationEngine *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.translation.online-queue", 0);
    translationQueue = v6->_translationQueue;
    v6->_translationQueue = v7;

    v9 = dispatch_queue_create("com.apple.translation.server-timer", 0);
    timerQueue = v6->_timerQueue;
    v6->_timerQueue = v9;

    objc_storeStrong(&v6->_selfLoggingManager, manager);
    v11 = v6;
  }

  return v6;
}

+ (id)blazarServiceWithBundleID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [defaultSessionConfiguration set_sourceApplicationBundleIdentifier:dCopy];
  [defaultSessionConfiguration set_allowsTLSFalseStart:1];
  [defaultSessionConfiguration setTLSMinimumSupportedProtocolVersion:771];
  [defaultSessionConfiguration setURLCache:0];
  mEMORY[0x277CCACD8] = [MEMORY[0x277CCACD8] sharedURLCache];
  [mEMORY[0x277CCACD8] removeAllCachedResponses];
  v6 = _LTPreferencesOspreyEndpointURL();
  v7 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = dCopy;
    _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Creating service with URL: %{public}@, bundleID: %{public}@", &v11, 0x16u);
  }

  v8 = [(OspreyChannel *)[FTBlazarService alloc] initWithURL:v6 configuration:defaultSessionConfiguration];
  [(OspreyChannel *)v8 setUseCompression:1];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_blazarService
{
  blazarService = self->_blazarService;
  if (!blazarService)
  {
    v4 = [_LTOnlineTranslationEngine blazarServiceWithBundleID:@"com.apple.Translate"];
    v5 = self->_blazarService;
    self->_blazarService = v4;

    blazarService = self->_blazarService;
  }

  return blazarService;
}

- (id)_siriService
{
  siriService = self->_siriService;
  if (!siriService)
  {
    v4 = [_LTOnlineTranslationEngine blazarServiceWithBundleID:@"com.apple.siri"];
    v5 = self->_siriService;
    self->_siriService = v4;

    siriService = self->_siriService;
  }

  return siriService;
}

- (id)_systemService
{
  systemService = self->_systemService;
  if (!systemService)
  {
    v4 = [_LTOnlineTranslationEngine blazarServiceWithBundleID:@"com.apple.TranslationUIServices.TranslationUIService"];
    v5 = self->_systemService;
    self->_systemService = v4;

    systemService = self->_systemService;
  }

  return systemService;
}

- (id)_webTaskService
{
  webTaskService = self->_webTaskService;
  if (!webTaskService)
  {
    v4 = [_LTOnlineTranslationEngine blazarServiceWithBundleID:@"com.apple.mobilesafari"];
    v5 = self->_webTaskService;
    self->_webTaskService = v4;

    webTaskService = self->_webTaskService;
  }

  return webTaskService;
}

- (id)_serviceForTask:(int64_t)task
{
  if (task <= 0xB)
  {
    if (((1 << task) & 0x7C8) != 0)
    {
      goto LABEL_9;
    }

    if (((1 << task) & 0x820) != 0)
    {
      _systemService = [(_LTOnlineTranslationEngine *)self _systemService];
      goto LABEL_10;
    }

    if (task == 4)
    {
      _systemService = [(_LTOnlineTranslationEngine *)self _siriService];
      goto LABEL_10;
    }
  }

  if (task == 2)
  {
    _systemService = [(_LTOnlineTranslationEngine *)self _webTaskService];
    goto LABEL_10;
  }

LABEL_9:
  _systemService = [(_LTOnlineTranslationEngine *)self _blazarService];
LABEL_10:

  return _systemService;
}

- (void)startServerTimeoutTimer
{
  objc_initWeak(&location, self);
  timerQueue = self->_timerQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53___LTOnlineTranslationEngine_startServerTimeoutTimer__block_invoke;
  v4[3] = &unk_2789B72E0;
  objc_copyWeak(&v5, &location);
  dispatch_async(timerQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)updateServerTimeout
{
  objc_initWeak(&location, self);
  timerQueue = self->_timerQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49___LTOnlineTranslationEngine_updateServerTimeout__block_invoke;
  v4[3] = &unk_2789B72E0;
  objc_copyWeak(&v5, &location);
  dispatch_async(timerQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)cancelServerTimeout
{
  v3 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "cancelServerTimeout", buf, 2u);
  }

  objc_initWeak(buf, self);
  timerQueue = self->_timerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49___LTOnlineTranslationEngine_cancelServerTimeout__block_invoke;
  block[3] = &unk_2789B72E0;
  objc_copyWeak(&v6, buf);
  dispatch_async(timerQueue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)serverTimeoutFired
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "batch timeout triggered", &v9, 2u);
  }

  if (self->batchTranslationResponseHandler)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:self->_startTime];
    v6 = v5;

    v7 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 134217984;
      v10 = v6;
      _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "serverTimeoutFired Sending batch request after %.2fs", &v9, 0xCu);
    }

    [(_LTOnlineTranslationEngine *)self sendBatchTranslationRequestWithDelegate:self->batchTranslationResponseHandler];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_tokenizeString:(id)string inLocale:(id)locale
{
  stringCopy = string;
  localeCopy = locale;
  v7 = objc_alloc_init(_LTTokenizer);
  v8 = [(_LTTokenizer *)v7 tokenize:stringCopy forLocale:localeCopy];

  return v8;
}

- (void)speak:(id)speak withContext:(id)context completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  speakCopy = speak;
  contextCopy = context;
  completionCopy = completion;
  ttsCache = [(_LTOnlineTranslationEngine *)self ttsCache];
  v12 = MEMORY[0x277CCACA8];
  localePair = [contextCopy localePair];
  targetLocale = [localePair targetLocale];
  localeIdentifier = [targetLocale localeIdentifier];
  speakCopy = [v12 stringWithFormat:@"%@-%@", localeIdentifier, speakCopy];

  v17 = [ttsCache audioDataForKey:speakCopy];
  if (v17)
  {
    v18 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v18, OS_LOG_TYPE_INFO, "Found cached TTS data", buf, 2u);
    }

    completionCopy[2](completionCopy, v17, 0);
  }

  else
  {
    v19 = [contextCopy _ospreyTTSRequestWithText:speakCopy];
    v20 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v26 = v19;
      language = [v19 language];
      gender = [v19 gender];
      *buf = 138543618;
      v35 = language;
      v36 = 2114;
      v37 = gender;
      _os_log_impl(&dword_232E53000, v20, OS_LOG_TYPE_INFO, "Start TTS request: %{public}@ / %{public}@", buf, 0x16u);

      v19 = v26;
    }

    v23 = -[_LTOnlineTranslationEngine _serviceForTask:](self, "_serviceForTask:", [contextCopy taskHint]);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __59___LTOnlineTranslationEngine_speak_withContext_completion___block_invoke;
    v32[3] = &unk_2789B7658;
    v24 = v19;
    v33 = v24;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __59___LTOnlineTranslationEngine_speak_withContext_completion___block_invoke_2;
    v27[3] = &unk_2789B7680;
    v31 = completionCopy;
    v28 = speakCopy;
    v29 = ttsCache;
    v30 = speakCopy;
    [v23 performTextToSpeechRouter:v24 requestBuilder:v32 completion:v27];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_createOrUpdateBatchTranslationRequestWithParagraph:(id)paragraph index:(int64_t)index context:(id)context completion:(id)completion
{
  v81 = *MEMORY[0x277D85DE8];
  paragraphCopy = paragraph;
  contextCopy = context;
  completionCopy = completion;
  text = [paragraphCopy text];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v15 = [text stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (![v15 length])
  {
    v27 = MEMORY[0x277CE1C18];
    localePair = [contextCopy localePair];
    targetLocale = [localePair targetLocale];
    v30 = [v27 resultWithLocale:targetLocale translations:MEMORY[0x277CBEBF8]];

    [v30 setRoute:2];
    identifier = [paragraphCopy identifier];
    [v30 setIdentifier:identifier];

    completionCopy[2](completionCopy, v30, 0);
    goto LABEL_24;
  }

  localePair2 = [contextCopy localePair];
  sourceLocale = [localePair2 sourceLocale];

  localePair3 = [contextCopy localePair];
  targetLocale2 = [localePair3 targetLocale];

  batchTranslationResponseHandler = self->batchTranslationResponseHandler;
  if (!batchTranslationResponseHandler)
  {
    goto LABEL_16;
  }

  bufferSize = [(_LTBatchTranslationResponseHandler *)batchTranslationResponseHandler bufferSize];
  v67 = _LTPreferencesBatchingMaxParagraphBufferSize();
  batchedParagraphs = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler batchedParagraphs];
  v66 = [batchedParagraphs count];
  v65 = _LTPreferencesBatchingMaxParagraphs();

  sourceLocale2 = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler sourceLocale];
  if (![sourceLocale2 isEqual:sourceLocale])
  {
    goto LABEL_11;
  }

  targetLocale3 = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler targetLocale];
  v64 = completionCopy;
  if (([targetLocale3 isEqual:targetLocale2] & 1) == 0)
  {

LABEL_11:
    v24 = v15;

    v25 = 1;
    goto LABEL_12;
  }

  taskHint = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler taskHint];
  taskHint2 = [contextCopy taskHint];
  v24 = v15;
  v25 = taskHint != taskHint2;

  if (bufferSize >= v67 || v66 >= v65)
  {
    completionCopy = v64;
  }

  else
  {
    v26 = taskHint == taskHint2;
    completionCopy = v64;
    if (v26)
    {
      goto LABEL_15;
    }
  }

LABEL_12:
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_startTime];
  v34 = v33;

  v35 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109888;
    v74 = bufferSize >= v67;
    v75 = 1024;
    v76 = v66 >= v65;
    v77 = 1024;
    v78 = v25;
    v79 = 2048;
    v80 = v34;
    _os_log_debug_impl(&dword_232E53000, v35, OS_LOG_TYPE_DEBUG, "Sending batch request: bufferSizeExceeded: %{BOOL}i; maxParagraphsExceeded: %{BOOL}i; taskChanged: %{BOOL}i; after %.2fs", buf, 0x1Eu);
  }

  [(_LTOnlineTranslationEngine *)self sendBatchTranslationRequestWithDelegate:self->batchTranslationResponseHandler];
LABEL_15:
  v15 = v24;
  if (!self->batchTranslationResponseHandler)
  {
LABEL_16:
    v36 = objc_alloc_init(_LTBatchTranslationResponseHandler);
    v37 = self->batchTranslationResponseHandler;
    self->batchTranslationResponseHandler = v36;

    v38 = MEMORY[0x277CCACA8];
    sessionID = [contextCopy sessionID];
    index = [v38 stringWithFormat:@"%@/%08zd", sessionID, index];

    v41 = objc_alloc_init(_LTBatchedParagraphsHolder);
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setBatchedParagraphs:v41];

    v42 = _LTPreferencesRequestIDOverride(index);
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setRequestID:v42];

    sessionID2 = [contextCopy sessionID];
    v44 = _LTPreferencesSessionIDOverride(sessionID2);
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setSessionID:v44];

    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setSourceLocale:sourceLocale];
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setTargetLocale:targetLocale2];
    -[_LTBatchTranslationResponseHandler setTaskHint:](self->batchTranslationResponseHandler, "setTaskHint:", [contextCopy taskHint]);
    clientIdentifier = [contextCopy clientIdentifier];
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setClientIdentifier:clientIdentifier];

    sourceURL = [contextCopy sourceURL];
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setSourceURL:sourceURL];

    sequoiaClientHeaderValue = [contextCopy sequoiaClientHeaderValue];
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setClientHeader:sequoiaClientHeaderValue];

    logIdentifier = [contextCopy logIdentifier];
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setLogIdentifier:logIdentifier];

    -[_LTBatchTranslationResponseHandler setSupportsGenderDisambiguation:](self->batchTranslationResponseHandler, "setSupportsGenderDisambiguation:", [contextCopy supportsGenderDisambiguation]);
    [contextCopy setSourceURL:0];
    [(_LTOnlineTranslationEngine *)self startServerTimeoutTimer];
  }

  v49 = objc_alloc_init(FTMutableBatchTranslationRequest_Paragraph);
  identifier2 = [paragraphCopy identifier];
  [(FTMutableBatchTranslationRequest_Paragraph *)v49 setParagraph_id:identifier2];

  text2 = [paragraphCopy text];
  [(FTMutableBatchTranslationRequest_Paragraph *)v49 setText:text2];

  v52 = objc_alloc_init(_FTParagraphBatchInfo);
  [(_FTParagraphBatchInfo *)v52 setParagraph:paragraphCopy];
  [(_FTParagraphBatchInfo *)v52 setRequestParagraph:v49];
  [(_FTParagraphBatchInfo *)v52 setCompletion:completionCopy];
  spans = [paragraphCopy spans];
  v54 = [spans count] == 0;

  if (!v54)
  {
    spans2 = [paragraphCopy spans];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __107___LTOnlineTranslationEngine__createOrUpdateBatchTranslationRequestWithParagraph_index_context_completion___block_invoke;
    v71[3] = &unk_2789B76A8;
    v72 = paragraphCopy;
    v56 = [spans2 _ltCompactMap:v71];
    [(FTMutableBatchTranslationRequest_Paragraph *)v49 setSpan:v56];
  }

  v57 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
  {
    [(FTMutableBatchTranslationRequest_Paragraph *)v49 text];
    objc_claimAutoreleasedReturnValue();
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler requestID];
    objc_claimAutoreleasedReturnValue();
    [_LTOnlineTranslationEngine _createOrUpdateBatchTranslationRequestWithParagraph:index:context:completion:];
  }

  v58 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    [(FTMutableBatchTranslationRequest_Paragraph *)v49 span];
    objc_claimAutoreleasedReturnValue();
    [_LTOnlineTranslationEngine _createOrUpdateBatchTranslationRequestWithParagraph:index:context:completion:];
  }

  v59 = self->batchTranslationResponseHandler;
  text3 = [(FTMutableBatchTranslationRequest_Paragraph *)v49 text];
  -[_LTBatchTranslationResponseHandler setBufferSize:](v59, "setBufferSize:", -[_LTBatchTranslationResponseHandler bufferSize](v59, "bufferSize") + [text3 length]);

  batchedParagraphs2 = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler batchedParagraphs];
  paragraph_id = [(FTMutableBatchTranslationRequest_Paragraph *)v49 paragraph_id];
  [batchedParagraphs2 insertParagraph:v52 withId:paragraph_id];

LABEL_24:
  v63 = *MEMORY[0x277D85DE8];
}

- (void)sendBatchTranslationRequestWithDelegate:(id)delegate
{
  v89 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v63 = delegateCopy;
  [(_LTOnlineTranslationEngine *)self cancelServerTimeout];
  v64 = objc_alloc_init(FTMutableBatchTranslationRequest);
  requestID = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler requestID];
  [(FTMutableBatchTranslationRequest *)v64 setRequest_id:requestID];

  [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler taskHint];
  v6 = _LTTranslationModelTaskString();
  [(FTMutableBatchTranslationRequest *)v64 setTask:v6];

  clientIdentifier = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler clientIdentifier];
  [(FTMutableBatchTranslationRequest *)v64 setApp_id:clientIdentifier];

  sessionID = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler sessionID];
  [(FTMutableBatchTranslationRequest *)v64 setSession_id:sessionID];

  sourceURL = [delegateCopy sourceURL];

  if (sourceURL)
  {
    sourceURL2 = [delegateCopy sourceURL];
    absoluteString = [sourceURL2 absoluteString];
    [(FTMutableBatchTranslationRequest *)v64 setUrl:absoluteString];
  }

  batchedParagraphs = [delegateCopy batchedParagraphs];
  paragraphs = [batchedParagraphs paragraphs];
  [(FTMutableBatchTranslationRequest *)v64 setParagraphs:paragraphs];

  paragraph = [delegateCopy paragraph];
  -[FTMutableBatchTranslationRequest setIs_partial:](v64, "setIs_partial:", [paragraph isFinal] ^ 1);

  sourceLocale = [delegateCopy sourceLocale];
  _ltLocaleIdentifier = [sourceLocale _ltLocaleIdentifier];
  [(FTMutableBatchTranslationRequest *)v64 setSource_language:_ltLocaleIdentifier];

  targetLocale = [delegateCopy targetLocale];
  _ltLocaleIdentifier2 = [targetLocale _ltLocaleIdentifier];
  [(FTMutableBatchTranslationRequest *)v64 setTarget_language:_ltLocaleIdentifier2];

  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  siriDataSharingOptInStatus = [mEMORY[0x277CEF368] siriDataSharingOptInStatus];
  if ((siriDataSharingOptInStatus - 1) > 2)
  {
    v21 = 0;
  }

  else
  {
    v21 = qword_233005D28[siriDataSharingOptInStatus - 1];
  }

  [(FTMutableBatchTranslationRequest *)v64 setOpt_in_status:LTDOspreyDataSharingStatus(v21)];
  v59 = objc_alloc_init(FTMutableTranslationOptions);
  -[FTMutableTranslationOptions setEnable_disambiguation_alternatives:](v59, "setEnable_disambiguation_alternatives:", [delegateCopy supportsGenderDisambiguation]);
  [(FTMutableTranslationOptions *)v59 setDisable_payload_logging:LTDDisablePayloadLogging(v21)];
  [(FTMutableBatchTranslationRequest *)v64 setOptions:v59];
  v22 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [(_LTOnlineTranslationEngine *)[(FTMutableTranslationOptions *)v59 enable_disambiguation_alternatives] sendBatchTranslationRequestWithDelegate:v88, v22];
  }

  v23 = _LTOSLogTranslationEngine();
  v24 = os_signpost_id_generate(v23);
  v25 = v23;
  v26 = v25;
  spid = v24;
  log = v25;
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    requestID2 = [v63 requestID];
    *buf = 138543362;
    v81 = requestID2;
    _os_signpost_emit_with_name_impl(&dword_232E53000, log, OS_SIGNPOST_INTERVAL_BEGIN, v24, "TranslateParagraph", "Online: Translating paragraph: %{public}@", buf, 0xCu);

    v26 = log;
  }

  v61 = _LTPreferencesOspreyEndpointURL();
  v28 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    requestID3 = [v63 requestID];
    task = [(FTMutableBatchTranslationRequest *)v64 task];
    sessionID2 = [v63 sessionID];
    *buf = 138544130;
    v81 = requestID3;
    v82 = 2114;
    v83 = task;
    v84 = 2114;
    v85 = sessionID2;
    v86 = 2114;
    v87 = v61;
    _os_log_impl(&dword_232E53000, v28, OS_LOG_TYPE_INFO, "Sending batch for requestID: %{public}@, task: %{public}@, sessionID: %{public}@, URL: %{public}@", buf, 0x2Au);
  }

  v62 = objc_alloc_init(FTMutableBatchTranslationStreamingRequest);
  [(FTMutableBatchTranslationStreamingRequest *)v62 setContentAsFTBatchTranslationRequest:v64];
  [(FTMutableBatchTranslationStreamingRequest *)v62 setContent_type:1];
  [v63 setRequest:v64];
  v32 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    batchedParagraphs2 = [v63 batchedParagraphs];
    v56 = [batchedParagraphs2 count];
    *buf = 134217984;
    v81 = v56;
    _os_log_debug_impl(&dword_232E53000, v32, OS_LOG_TYPE_DEBUG, "Translating with online engine: %zu batched paragraph(s)", buf, 0xCu);
  }

  selfLoggingManager = self->_selfLoggingManager;
  logIdentifier = [v63 logIdentifier];
  requestID4 = [v63 requestID];
  v57 = -[_LTDSELFLoggingManager sendFrameworkRequestWithInvocationId:qssSessionId:requestType:requestRoute:requestSize:](selfLoggingManager, "sendFrameworkRequestWithInvocationId:qssSessionId:requestType:requestRoute:requestSize:", logIdentifier, requestID4, 1, 1, [v63 bufferSize]);

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  paragraphs2 = [(FTMutableBatchTranslationRequest *)v64 paragraphs];
  v37 = 0;
  v38 = [paragraphs2 countByEnumeratingWithState:&v75 objects:v79 count:16];
  if (v38)
  {
    v39 = *v76;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v76 != v39)
        {
          objc_enumerationMutation(paragraphs2);
        }

        v41 = *(*(&v75 + 1) + 8 * i);
        v42 = objc_alloc(MEMORY[0x277CCA898]);
        text = [v41 text];
        v44 = [v42 initWithString:text];

        lt_sentences = [v44 lt_sentences];
        v46 = [lt_sentences count];

        v37 += v46;
      }

      v38 = [paragraphs2 countByEnumeratingWithState:&v75 objects:v79 count:16];
    }

    while (v38);
  }

  v47 = -[_LTOnlineTranslationEngine _serviceForTask:](self, "_serviceForTask:", [v63 taskHint]);
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __70___LTOnlineTranslationEngine_sendBatchTranslationRequestWithDelegate___block_invoke;
  v72[3] = &unk_2789B76D0;
  v73 = v64;
  v74 = v63;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __70___LTOnlineTranslationEngine_sendBatchTranslationRequestWithDelegate___block_invoke_2;
  v65[3] = &unk_2789B7720;
  v65[4] = self;
  v48 = log;
  v66 = v48;
  v70 = spid;
  v49 = v73;
  v67 = v49;
  v50 = v57;
  v68 = v50;
  v71 = v37;
  v51 = v74;
  v69 = v51;
  v52 = [v47 performBatchTranslationWithDelegate:v51 requestBuilder:v72 completion:v65];

  if (v52)
  {
    [v52 sendBatchTranslationStreamingRequest:v62];
    [v52 closeStream];
  }

  batchTranslationResponseHandler = self->batchTranslationResponseHandler;
  self->batchTranslationResponseHandler = 0;

  v54 = *MEMORY[0x277D85DE8];
}

- (void)translateSentence:(id)sentence withContext:(id)context completion:(id)completion
{
  sentenceCopy = sentence;
  contextCopy = context;
  completionCopy = completion;
  v11 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_INFO, "Start translating sentence with online engine", buf, 2u);
  }

  v12 = [_LTAnalyticsEvent timedEventWithName:@"OnlineTextTranslation"];
  localePair = [contextCopy localePair];
  sourceLocale = [localePair sourceLocale];
  [v12 setSourceLocale:sourceLocale];

  localePair2 = [contextCopy localePair];
  targetLocale = [localePair2 targetLocale];
  [v12 setTargetLocale:targetLocale];

  [v12 addFieldsFromDictionary:&unk_2848681F8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v19 = [objc_alloc(MEMORY[0x277CE1C10]) initWithIdentifier:uUIDString text:sentenceCopy spans:0 isFinal:1];
  v20 = _LTOSLogTranslationEngine();
  v21 = os_signpost_id_generate(v20);
  v22 = v20;
  v23 = v22;
  if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "TranslateSentence", "Online: Translating sentence", buf, 2u);
  }

  objc_initWeak(buf, self);
  translationQueue = self->_translationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71___LTOnlineTranslationEngine_translateSentence_withContext_completion___block_invoke;
  block[3] = &unk_2789B7770;
  objc_copyWeak(v36, buf);
  v31 = v19;
  v32 = contextCopy;
  v33 = v23;
  v34 = v12;
  v36[1] = v21;
  v35 = completionCopy;
  v25 = completionCopy;
  v26 = v12;
  v27 = v23;
  v28 = contextCopy;
  v29 = v19;
  dispatch_async(translationQueue, block);

  objc_destroyWeak(v36);
  objc_destroyWeak(buf);
}

- (void)translate:(id)translate withContext:(id)context paragraphResult:(id)result completion:(id)completion
{
  v37[2] = *MEMORY[0x277D85DE8];
  translateCopy = translate;
  contextCopy = context;
  resultCopy = result;
  completionCopy = completion;
  if ([translateCopy count])
  {
    v14 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v35 = [translateCopy count];
      _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_INFO, "Start translating %zu paragraphs with online engine", buf, 0xCu);
    }

    v15 = [_LTAnalyticsEvent timedEventWithName:@"OnlineTextTranslation"];
    localePair = [contextCopy localePair];
    sourceLocale = [localePair sourceLocale];
    [v15 setSourceLocale:sourceLocale];

    localePair2 = [contextCopy localePair];
    targetLocale = [localePair2 targetLocale];
    [v15 setTargetLocale:targetLocale];

    objc_initWeak(buf, self);
    translationQueue = self->_translationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79___LTOnlineTranslationEngine_translate_withContext_paragraphResult_completion___block_invoke;
    block[3] = &unk_2789B7810;
    objc_copyWeak(&v33, buf);
    v29 = translateCopy;
    v30 = contextCopy;
    v31 = resultCopy;
    v32 = completionCopy;
    dispatch_async(translationQueue, block);

    objc_destroyWeak(&v33);
    objc_destroyWeak(buf);
  }

  else
  {
    v21 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [_LTOnlineTranslationEngine translate:withContext:paragraphResult:completion:];
    }

    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = MEMORY[0x277CCA9B8];
    v36[0] = *MEMORY[0x277CCA450];
    v23 = [v15 localizedStringForKey:@"GENERIC_FAILURE_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
    v37[0] = v23;
    v36[1] = *MEMORY[0x277CCA470];
    v24 = [v15 localizedStringForKey:@"INPUT_EMPTY_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
    v37[1] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
    v26 = [v22 errorWithDomain:*MEMORY[0x277CE1C58] code:3 userInfo:v25];

    (*(completionCopy + 2))(completionCopy, v26);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)startTextToSpeechTranslationWithContext:(id)context text:(id)text delegate:(id)delegate
{
  v34 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  textCopy = text;
  delegateCopy = delegate;
  if (![(_LTOnlineTranslationEngine *)self _hasOngoingSpeechSession])
  {
LABEL_6:
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    v14 = [mEMORY[0x277CEF368] siriDataSharingOptInStatus] - 1;
    if (v14 > 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = qword_233005D28[v14];
    }

    [contextCopy setDataSharingOptInStatus:v15];

    v16 = [_LTOspreySpeechTranslationSession alloc];
    v17 = -[_LTOnlineTranslationEngine _serviceForTask:](self, "_serviceForTask:", [contextCopy taskHint]);
    v18 = [(_LTOspreySpeechTranslationSession *)v16 initWithService:v17 context:contextCopy text:textCopy delegate:delegateCopy selfLoggingManager:self->_selfLoggingManager];

    selfLoggingManager = self->_selfLoggingManager;
    logIdentifier = [contextCopy logIdentifier];
    uniqueID = [contextCopy uniqueID];
    v22 = -[_LTDSELFLoggingManager sendFrameworkRequestWithInvocationId:qssSessionId:requestType:requestRoute:requestSize:](selfLoggingManager, "sendFrameworkRequestWithInvocationId:qssSessionId:requestType:requestRoute:requestSize:", logIdentifier, uniqueID, 2, 1, [textCopy length]);

    objc_initWeak(buf, self);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __84___LTOnlineTranslationEngine_startTextToSpeechTranslationWithContext_text_delegate___block_invoke;
    v29[3] = &unk_2789B7860;
    objc_copyWeak(&v31, buf);
    v30 = v22;
    v23 = v22;
    [(_LTOspreySpeechTranslationSession *)v18 setCompletionBlock:v29];
    speechSession = self->_speechSession;
    self->_speechSession = v18;
    v25 = v18;

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
    goto LABEL_10;
  }

  if ([contextCopy overrideOngoingSessionIfNeeded])
  {
    v11 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = self->_speechSession;
      *buf = 134217984;
      v33 = v12;
      _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_INFO, "Context allows overriding ongoing speech session %p; cancelling existing session and creating a new one for TTS", buf, 0xCu);
    }

    [(_LTOspreySpeechTranslationSession *)self->_speechSession cancel];
    goto LABEL_6;
  }

  v27 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [_LTOnlineTranslationEngine startTextToSpeechTranslationWithContext:? text:? delegate:?];
  }

  if (objc_opt_respondsToSelector())
  {
    lt_speechTranslationOngoing = [MEMORY[0x277CCA9B8] lt_speechTranslationOngoing];
    [delegateCopy translationDidFinishWithError:lt_speechTranslationOngoing];
  }

LABEL_10:

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasOngoingSpeechSession
{
  p_speechSession = &self->_speechSession;
  speechSession = self->_speechSession;
  if (speechSession)
  {
    isCancelled = [(_LTOspreySpeechTranslationSession *)speechSession isCancelled];
    if (isCancelled)
    {
      v5 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(_LTOnlineTranslationEngine *)p_speechSession _hasOngoingSpeechSession];
      }
    }

    LOBYTE(speechSession) = !isCancelled;
  }

  return speechSession;
}

- (void)startSpeechTranslationWithContext:(id)context delegate:(id)delegate
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  delegateCopy = delegate;
  if (![(_LTOnlineTranslationEngine *)self _hasOngoingSpeechSession])
  {
LABEL_6:
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    v11 = [mEMORY[0x277CEF368] siriDataSharingOptInStatus] - 1;
    if (v11 > 2)
    {
      v12 = 0;
    }

    else
    {
      v12 = qword_233005D28[v11];
    }

    [contextCopy setDataSharingOptInStatus:v12];

    lt_speechTranslationOngoing = -[_LTOnlineTranslationEngine _serviceForTask:](self, "_serviceForTask:", [contextCopy taskHint]);
    v14 = [[_LTOspreySpeechTranslationSession alloc] initWithService:lt_speechTranslationOngoing context:contextCopy delegate:delegateCopy selfLoggingManager:self->_selfLoggingManager];
    ttsCache = [(_LTOnlineTranslationEngine *)self ttsCache];
    [(_LTOspreySpeechTranslationSession *)v14 setTtsCache:ttsCache];

    objc_initWeak(buf, self);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __73___LTOnlineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke;
    v19[3] = &unk_2789B7888;
    objc_copyWeak(&v20, buf);
    [(_LTOspreySpeechTranslationSession *)v14 setCompletionBlock:v19];
    speechSession = self->_speechSession;
    self->_speechSession = v14;

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
    goto LABEL_10;
  }

  if ([contextCopy overrideOngoingSessionIfNeeded])
  {
    v8 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = self->_speechSession;
      *buf = 134217984;
      v22 = v9;
      _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Context allows overriding ongoing speech session %p; cancelling existing session and creating a new one", buf, 0xCu);
    }

    [(_LTOspreySpeechTranslationSession *)self->_speechSession cancel];
    goto LABEL_6;
  }

  v18 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [_LTOnlineTranslationEngine startSpeechTranslationWithContext:? delegate:?];
  }

  if (objc_opt_respondsToSelector())
  {
    lt_speechTranslationOngoing = [MEMORY[0x277CCA9B8] lt_speechTranslationOngoing];
    [delegateCopy translationDidFinishWithError:lt_speechTranslationOngoing];
LABEL_10:
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_speechSessionCompletedWithError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_serverQueue);
  if (errorCopy)
  {
    v5 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_LTOnlineTranslationEngine _speechSessionCompletedWithError:];
    }
  }

  else
  {
    v6 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Completed current speech session successfully", v8, 2u);
    }
  }

  speechSession = self->_speechSession;
  self->_speechSession = 0;
}

- (void)cancelSpeechTranslation:(BOOL)translation
{
  objc_initWeak(&location, self);
  serverQueue = self->_serverQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54___LTOnlineTranslationEngine_cancelSpeechTranslation___block_invoke;
  block[3] = &unk_2789B7290;
  objc_copyWeak(&v7, &location);
  translationCopy = translation;
  dispatch_async(serverQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_createOrUpdateBatchTranslationRequestWithParagraph:index:context:completion:.cold.1()
{
  OUTLINED_FUNCTION_7_1();
  *v2 = 138740227;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2114;
  *(v2 + 14) = v4;
  _os_log_debug_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEBUG, "Translating: %{sensitive}@ request_id %{public}@", v5, 0x16u);
}

- (void)_createOrUpdateBatchTranslationRequestWithParagraph:index:context:completion:.cold.2()
{
  OUTLINED_FUNCTION_6_0();
  *v1 = 138739971;
  *(v1 + 4) = v2;
  _os_log_debug_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEBUG, "Spans: %{sensitive}@", v4, 0xCu);
}

- (void)sendBatchTranslationRequestWithDelegate:(os_log_t)log .cold.1(char a1, uint8_t *buf, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a1 & 1;
  _os_log_debug_impl(&dword_232E53000, log, OS_LOG_TYPE_DEBUG, "Disambiguation: Creating online batch request, setting option for enable_disambiguation_alternatives: %{BOOL}i", buf, 8u);
}

- (void)translate:withContext:paragraphResult:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startTextToSpeechTranslationWithContext:(uint64_t)a1 text:delegate:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 48);
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_hasOngoingSpeechSession
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *self;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startSpeechTranslationWithContext:(uint64_t)a1 delegate:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 48);
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_speechSessionCompletedWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end
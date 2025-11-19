@interface _LTOnlineTranslationEngine
+ (id)blazarServiceWithBundleID:(id)a3;
+ (void)initialize;
- (BOOL)_hasOngoingSpeechSession;
- (_LTOnlineTranslationEngine)initWithSelfLoggingManager:(id)a3;
- (id)_blazarService;
- (id)_serviceForTask:(int64_t)a3;
- (id)_siriService;
- (id)_systemService;
- (id)_tokenizeString:(id)a3 inLocale:(id)a4;
- (id)_webTaskService;
- (void)_createOrUpdateBatchTranslationRequestWithParagraph:(id)a3 index:(int64_t)a4 context:(id)a5 completion:(id)a6;
- (void)_hasOngoingSpeechSession;
- (void)_speechSessionCompletedWithError:(id)a3;
- (void)cancelServerTimeout;
- (void)cancelSpeechTranslation:(BOOL)a3;
- (void)sendBatchTranslationRequestWithDelegate:(id)a3;
- (void)serverTimeoutFired;
- (void)speak:(id)a3 withContext:(id)a4 completion:(id)a5;
- (void)startServerTimeoutTimer;
- (void)startSpeechTranslationWithContext:(id)a3 delegate:(id)a4;
- (void)startTextToSpeechTranslationWithContext:(id)a3 text:(id)a4 delegate:(id)a5;
- (void)translate:(id)a3 withContext:(id)a4 paragraphResult:(id)a5 completion:(id)a6;
- (void)translateSentence:(id)a3 withContext:(id)a4 completion:(id)a5;
- (void)updateServerTimeout;
@end

@implementation _LTOnlineTranslationEngine

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    completionGroup = dispatch_group_create();

    MEMORY[0x2821F96F8]();
  }
}

- (_LTOnlineTranslationEngine)initWithSelfLoggingManager:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v6->_selfLoggingManager, a3);
    v11 = v6;
  }

  return v6;
}

+ (id)blazarServiceWithBundleID:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [v4 set_sourceApplicationBundleIdentifier:v3];
  [v4 set_allowsTLSFalseStart:1];
  [v4 setTLSMinimumSupportedProtocolVersion:771];
  [v4 setURLCache:0];
  v5 = [MEMORY[0x277CCACD8] sharedURLCache];
  [v5 removeAllCachedResponses];
  v6 = _LTPreferencesOspreyEndpointURL();
  v7 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Creating service with URL: %{public}@, bundleID: %{public}@", &v11, 0x16u);
  }

  v8 = [(OspreyChannel *)[FTBlazarService alloc] initWithURL:v6 configuration:v4];
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

- (id)_serviceForTask:(int64_t)a3
{
  if (a3 <= 0xB)
  {
    if (((1 << a3) & 0x7C8) != 0)
    {
      goto LABEL_9;
    }

    if (((1 << a3) & 0x820) != 0)
    {
      v3 = [(_LTOnlineTranslationEngine *)self _systemService];
      goto LABEL_10;
    }

    if (a3 == 4)
    {
      v3 = [(_LTOnlineTranslationEngine *)self _siriService];
      goto LABEL_10;
    }
  }

  if (a3 == 2)
  {
    v3 = [(_LTOnlineTranslationEngine *)self _webTaskService];
    goto LABEL_10;
  }

LABEL_9:
  v3 = [(_LTOnlineTranslationEngine *)self _blazarService];
LABEL_10:

  return v3;
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
    v4 = [MEMORY[0x277CBEAA8] date];
    [v4 timeIntervalSinceDate:self->_startTime];
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

- (id)_tokenizeString:(id)a3 inLocale:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_LTTokenizer);
  v8 = [(_LTTokenizer *)v7 tokenize:v5 forLocale:v6];

  return v8;
}

- (void)speak:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_LTOnlineTranslationEngine *)self ttsCache];
  v12 = MEMORY[0x277CCACA8];
  v13 = [v9 localePair];
  v14 = [v13 targetLocale];
  v15 = [v14 localeIdentifier];
  v16 = [v12 stringWithFormat:@"%@-%@", v15, v8];

  v17 = [v11 audioDataForKey:v16];
  if (v17)
  {
    v18 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v18, OS_LOG_TYPE_INFO, "Found cached TTS data", buf, 2u);
    }

    v10[2](v10, v17, 0);
  }

  else
  {
    v19 = [v9 _ospreyTTSRequestWithText:v8];
    v20 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v26 = v19;
      v21 = [v19 language];
      v22 = [v19 gender];
      *buf = 138543618;
      v35 = v21;
      v36 = 2114;
      v37 = v22;
      _os_log_impl(&dword_232E53000, v20, OS_LOG_TYPE_INFO, "Start TTS request: %{public}@ / %{public}@", buf, 0x16u);

      v19 = v26;
    }

    v23 = -[_LTOnlineTranslationEngine _serviceForTask:](self, "_serviceForTask:", [v9 taskHint]);
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
    v31 = v10;
    v28 = v8;
    v29 = v11;
    v30 = v16;
    [v23 performTextToSpeechRouter:v24 requestBuilder:v32 completion:v27];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_createOrUpdateBatchTranslationRequestWithParagraph:(id)a3 index:(int64_t)a4 context:(id)a5 completion:(id)a6
{
  v81 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 text];
  v14 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v15 = [v13 stringByTrimmingCharactersInSet:v14];

  if (![v15 length])
  {
    v27 = MEMORY[0x277CE1C18];
    v28 = [v11 localePair];
    v29 = [v28 targetLocale];
    v30 = [v27 resultWithLocale:v29 translations:MEMORY[0x277CBEBF8]];

    [v30 setRoute:2];
    v31 = [v10 identifier];
    [v30 setIdentifier:v31];

    v12[2](v12, v30, 0);
    goto LABEL_24;
  }

  v16 = [v11 localePair];
  v70 = [v16 sourceLocale];

  v17 = [v11 localePair];
  v69 = [v17 targetLocale];

  batchTranslationResponseHandler = self->batchTranslationResponseHandler;
  if (!batchTranslationResponseHandler)
  {
    goto LABEL_16;
  }

  v68 = [(_LTBatchTranslationResponseHandler *)batchTranslationResponseHandler bufferSize];
  v67 = _LTPreferencesBatchingMaxParagraphBufferSize();
  v19 = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler batchedParagraphs];
  v66 = [v19 count];
  v65 = _LTPreferencesBatchingMaxParagraphs();

  v20 = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler sourceLocale];
  if (![v20 isEqual:v70])
  {
    goto LABEL_11;
  }

  v21 = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler targetLocale];
  v64 = v12;
  if (([v21 isEqual:v69] & 1) == 0)
  {

LABEL_11:
    v24 = v15;

    v25 = 1;
    goto LABEL_12;
  }

  v22 = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler taskHint];
  v23 = [v11 taskHint];
  v24 = v15;
  v25 = v22 != v23;

  if (v68 >= v67 || v66 >= v65)
  {
    v12 = v64;
  }

  else
  {
    v26 = v22 == v23;
    v12 = v64;
    if (v26)
    {
      goto LABEL_15;
    }
  }

LABEL_12:
  v32 = [MEMORY[0x277CBEAA8] date];
  [v32 timeIntervalSinceDate:self->_startTime];
  v34 = v33;

  v35 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109888;
    v74 = v68 >= v67;
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
    v39 = [v11 sessionID];
    v40 = [v38 stringWithFormat:@"%@/%08zd", v39, a4];

    v41 = objc_alloc_init(_LTBatchedParagraphsHolder);
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setBatchedParagraphs:v41];

    v42 = _LTPreferencesRequestIDOverride(v40);
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setRequestID:v42];

    v43 = [v11 sessionID];
    v44 = _LTPreferencesSessionIDOverride(v43);
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setSessionID:v44];

    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setSourceLocale:v70];
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setTargetLocale:v69];
    -[_LTBatchTranslationResponseHandler setTaskHint:](self->batchTranslationResponseHandler, "setTaskHint:", [v11 taskHint]);
    v45 = [v11 clientIdentifier];
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setClientIdentifier:v45];

    v46 = [v11 sourceURL];
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setSourceURL:v46];

    v47 = [v11 sequoiaClientHeaderValue];
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setClientHeader:v47];

    v48 = [v11 logIdentifier];
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setLogIdentifier:v48];

    -[_LTBatchTranslationResponseHandler setSupportsGenderDisambiguation:](self->batchTranslationResponseHandler, "setSupportsGenderDisambiguation:", [v11 supportsGenderDisambiguation]);
    [v11 setSourceURL:0];
    [(_LTOnlineTranslationEngine *)self startServerTimeoutTimer];
  }

  v49 = objc_alloc_init(FTMutableBatchTranslationRequest_Paragraph);
  v50 = [v10 identifier];
  [(FTMutableBatchTranslationRequest_Paragraph *)v49 setParagraph_id:v50];

  v51 = [v10 text];
  [(FTMutableBatchTranslationRequest_Paragraph *)v49 setText:v51];

  v52 = objc_alloc_init(_FTParagraphBatchInfo);
  [(_FTParagraphBatchInfo *)v52 setParagraph:v10];
  [(_FTParagraphBatchInfo *)v52 setRequestParagraph:v49];
  [(_FTParagraphBatchInfo *)v52 setCompletion:v12];
  v53 = [v10 spans];
  v54 = [v53 count] == 0;

  if (!v54)
  {
    v55 = [v10 spans];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __107___LTOnlineTranslationEngine__createOrUpdateBatchTranslationRequestWithParagraph_index_context_completion___block_invoke;
    v71[3] = &unk_2789B76A8;
    v72 = v10;
    v56 = [v55 _ltCompactMap:v71];
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
  v60 = [(FTMutableBatchTranslationRequest_Paragraph *)v49 text];
  -[_LTBatchTranslationResponseHandler setBufferSize:](v59, "setBufferSize:", -[_LTBatchTranslationResponseHandler bufferSize](v59, "bufferSize") + [v60 length]);

  v61 = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler batchedParagraphs];
  v62 = [(FTMutableBatchTranslationRequest_Paragraph *)v49 paragraph_id];
  [v61 insertParagraph:v52 withId:v62];

LABEL_24:
  v63 = *MEMORY[0x277D85DE8];
}

- (void)sendBatchTranslationRequestWithDelegate:(id)a3
{
  v89 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v63 = v4;
  [(_LTOnlineTranslationEngine *)self cancelServerTimeout];
  v64 = objc_alloc_init(FTMutableBatchTranslationRequest);
  v5 = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler requestID];
  [(FTMutableBatchTranslationRequest *)v64 setRequest_id:v5];

  [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler taskHint];
  v6 = _LTTranslationModelTaskString();
  [(FTMutableBatchTranslationRequest *)v64 setTask:v6];

  v7 = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler clientIdentifier];
  [(FTMutableBatchTranslationRequest *)v64 setApp_id:v7];

  v8 = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler sessionID];
  [(FTMutableBatchTranslationRequest *)v64 setSession_id:v8];

  v9 = [v4 sourceURL];

  if (v9)
  {
    v10 = [v4 sourceURL];
    v11 = [v10 absoluteString];
    [(FTMutableBatchTranslationRequest *)v64 setUrl:v11];
  }

  v12 = [v4 batchedParagraphs];
  v13 = [v12 paragraphs];
  [(FTMutableBatchTranslationRequest *)v64 setParagraphs:v13];

  v14 = [v4 paragraph];
  -[FTMutableBatchTranslationRequest setIs_partial:](v64, "setIs_partial:", [v14 isFinal] ^ 1);

  v15 = [v4 sourceLocale];
  v16 = [v15 _ltLocaleIdentifier];
  [(FTMutableBatchTranslationRequest *)v64 setSource_language:v16];

  v17 = [v4 targetLocale];
  v18 = [v17 _ltLocaleIdentifier];
  [(FTMutableBatchTranslationRequest *)v64 setTarget_language:v18];

  v19 = [MEMORY[0x277CEF368] sharedPreferences];
  v20 = [v19 siriDataSharingOptInStatus];
  if ((v20 - 1) > 2)
  {
    v21 = 0;
  }

  else
  {
    v21 = qword_233005D28[v20 - 1];
  }

  [(FTMutableBatchTranslationRequest *)v64 setOpt_in_status:LTDOspreyDataSharingStatus(v21)];
  v59 = objc_alloc_init(FTMutableTranslationOptions);
  -[FTMutableTranslationOptions setEnable_disambiguation_alternatives:](v59, "setEnable_disambiguation_alternatives:", [v4 supportsGenderDisambiguation]);
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
    v27 = [v63 requestID];
    *buf = 138543362;
    v81 = v27;
    _os_signpost_emit_with_name_impl(&dword_232E53000, log, OS_SIGNPOST_INTERVAL_BEGIN, v24, "TranslateParagraph", "Online: Translating paragraph: %{public}@", buf, 0xCu);

    v26 = log;
  }

  v61 = _LTPreferencesOspreyEndpointURL();
  v28 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = [v63 requestID];
    v30 = [(FTMutableBatchTranslationRequest *)v64 task];
    v31 = [v63 sessionID];
    *buf = 138544130;
    v81 = v29;
    v82 = 2114;
    v83 = v30;
    v84 = 2114;
    v85 = v31;
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
    v55 = [v63 batchedParagraphs];
    v56 = [v55 count];
    *buf = 134217984;
    v81 = v56;
    _os_log_debug_impl(&dword_232E53000, v32, OS_LOG_TYPE_DEBUG, "Translating with online engine: %zu batched paragraph(s)", buf, 0xCu);
  }

  selfLoggingManager = self->_selfLoggingManager;
  v34 = [v63 logIdentifier];
  v35 = [v63 requestID];
  v57 = -[_LTDSELFLoggingManager sendFrameworkRequestWithInvocationId:qssSessionId:requestType:requestRoute:requestSize:](selfLoggingManager, "sendFrameworkRequestWithInvocationId:qssSessionId:requestType:requestRoute:requestSize:", v34, v35, 1, 1, [v63 bufferSize]);

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v36 = [(FTMutableBatchTranslationRequest *)v64 paragraphs];
  v37 = 0;
  v38 = [v36 countByEnumeratingWithState:&v75 objects:v79 count:16];
  if (v38)
  {
    v39 = *v76;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v76 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v75 + 1) + 8 * i);
        v42 = objc_alloc(MEMORY[0x277CCA898]);
        v43 = [v41 text];
        v44 = [v42 initWithString:v43];

        v45 = [v44 lt_sentences];
        v46 = [v45 count];

        v37 += v46;
      }

      v38 = [v36 countByEnumeratingWithState:&v75 objects:v79 count:16];
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

- (void)translateSentence:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_INFO, "Start translating sentence with online engine", buf, 2u);
  }

  v12 = [_LTAnalyticsEvent timedEventWithName:@"OnlineTextTranslation"];
  v13 = [v9 localePair];
  v14 = [v13 sourceLocale];
  [v12 setSourceLocale:v14];

  v15 = [v9 localePair];
  v16 = [v15 targetLocale];
  [v12 setTargetLocale:v16];

  [v12 addFieldsFromDictionary:&unk_2848681F8];
  v17 = [MEMORY[0x277CCAD78] UUID];
  v18 = [v17 UUIDString];

  v19 = [objc_alloc(MEMORY[0x277CE1C10]) initWithIdentifier:v18 text:v8 spans:0 isFinal:1];
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
  v32 = v9;
  v33 = v23;
  v34 = v12;
  v36[1] = v21;
  v35 = v10;
  v25 = v10;
  v26 = v12;
  v27 = v23;
  v28 = v9;
  v29 = v19;
  dispatch_async(translationQueue, block);

  objc_destroyWeak(v36);
  objc_destroyWeak(buf);
}

- (void)translate:(id)a3 withContext:(id)a4 paragraphResult:(id)a5 completion:(id)a6
{
  v37[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 count])
  {
    v14 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v35 = [v10 count];
      _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_INFO, "Start translating %zu paragraphs with online engine", buf, 0xCu);
    }

    v15 = [_LTAnalyticsEvent timedEventWithName:@"OnlineTextTranslation"];
    v16 = [v11 localePair];
    v17 = [v16 sourceLocale];
    [v15 setSourceLocale:v17];

    v18 = [v11 localePair];
    v19 = [v18 targetLocale];
    [v15 setTargetLocale:v19];

    objc_initWeak(buf, self);
    translationQueue = self->_translationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79___LTOnlineTranslationEngine_translate_withContext_paragraphResult_completion___block_invoke;
    block[3] = &unk_2789B7810;
    objc_copyWeak(&v33, buf);
    v29 = v10;
    v30 = v11;
    v31 = v12;
    v32 = v13;
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

    (*(v13 + 2))(v13, v26);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)startTextToSpeechTranslationWithContext:(id)a3 text:(id)a4 delegate:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(_LTOnlineTranslationEngine *)self _hasOngoingSpeechSession])
  {
LABEL_6:
    v13 = [MEMORY[0x277CEF368] sharedPreferences];
    v14 = [v13 siriDataSharingOptInStatus] - 1;
    if (v14 > 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = qword_233005D28[v14];
    }

    [v8 setDataSharingOptInStatus:v15];

    v16 = [_LTOspreySpeechTranslationSession alloc];
    v17 = -[_LTOnlineTranslationEngine _serviceForTask:](self, "_serviceForTask:", [v8 taskHint]);
    v18 = [(_LTOspreySpeechTranslationSession *)v16 initWithService:v17 context:v8 text:v9 delegate:v10 selfLoggingManager:self->_selfLoggingManager];

    selfLoggingManager = self->_selfLoggingManager;
    v20 = [v8 logIdentifier];
    v21 = [v8 uniqueID];
    v22 = -[_LTDSELFLoggingManager sendFrameworkRequestWithInvocationId:qssSessionId:requestType:requestRoute:requestSize:](selfLoggingManager, "sendFrameworkRequestWithInvocationId:qssSessionId:requestType:requestRoute:requestSize:", v20, v21, 2, 1, [v9 length]);

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

  if ([v8 overrideOngoingSessionIfNeeded])
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
    v28 = [MEMORY[0x277CCA9B8] lt_speechTranslationOngoing];
    [v10 translationDidFinishWithError:v28];
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
    v4 = [(_LTOspreySpeechTranslationSession *)speechSession isCancelled];
    if (v4)
    {
      v5 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(_LTOnlineTranslationEngine *)p_speechSession _hasOngoingSpeechSession];
      }
    }

    LOBYTE(speechSession) = !v4;
  }

  return speechSession;
}

- (void)startSpeechTranslationWithContext:(id)a3 delegate:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(_LTOnlineTranslationEngine *)self _hasOngoingSpeechSession])
  {
LABEL_6:
    v10 = [MEMORY[0x277CEF368] sharedPreferences];
    v11 = [v10 siriDataSharingOptInStatus] - 1;
    if (v11 > 2)
    {
      v12 = 0;
    }

    else
    {
      v12 = qword_233005D28[v11];
    }

    [v6 setDataSharingOptInStatus:v12];

    v13 = -[_LTOnlineTranslationEngine _serviceForTask:](self, "_serviceForTask:", [v6 taskHint]);
    v14 = [[_LTOspreySpeechTranslationSession alloc] initWithService:v13 context:v6 delegate:v7 selfLoggingManager:self->_selfLoggingManager];
    v15 = [(_LTOnlineTranslationEngine *)self ttsCache];
    [(_LTOspreySpeechTranslationSession *)v14 setTtsCache:v15];

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

  if ([v6 overrideOngoingSessionIfNeeded])
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
    v13 = [MEMORY[0x277CCA9B8] lt_speechTranslationOngoing];
    [v7 translationDidFinishWithError:v13];
LABEL_10:
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_speechSessionCompletedWithError:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serverQueue);
  if (v4)
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

- (void)cancelSpeechTranslation:(BOOL)a3
{
  objc_initWeak(&location, self);
  serverQueue = self->_serverQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54___LTOnlineTranslationEngine_cancelSpeechTranslation___block_invoke;
  block[3] = &unk_2789B7290;
  objc_copyWeak(&v7, &location);
  v8 = a3;
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
  v7 = *a1;
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
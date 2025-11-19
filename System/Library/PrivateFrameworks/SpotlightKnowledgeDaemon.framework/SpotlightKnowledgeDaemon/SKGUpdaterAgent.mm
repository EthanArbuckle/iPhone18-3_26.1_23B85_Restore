@interface SKGUpdaterAgent
+ (BOOL)enableEventUpdaters;
+ (void)initialize;
- (BOOL)_doStart;
- (BOOL)addClientConnectionIfAllowedForConnection:(id)a3;
- (BOOL)enableAppEntities;
- (BOOL)enableDocumentUnderstanding;
- (BOOL)enableEmbeddings;
- (BOOL)enableKeyPhrases;
- (BOOL)enableProcessingStateUpdater;
- (BOOL)enableSuggestedEvents;
- (BOOL)handleCheckedInMessage:(id)a3;
- (BOOL)handleCommand:(const char *)a3 info:(id)a4 connection:(id)a5;
- (BOOL)handleDiagnose:(id)a3;
- (BOOL)handleDocumentUnderstandingProgressReport:(id)a3;
- (BOOL)handleEmbeddingCompleteness:(id)a3;
- (BOOL)handleEmbeddingGenerationConfiguration:(id)a3;
- (BOOL)handleEmbeddingProgressReport:(id)a3;
- (BOOL)handleEventsJournalsStats:(id)a3;
- (BOOL)handleExtendedKeyphraseProgressReport:(id)a3;
- (BOOL)handleHistoricalReports:(id)a3;
- (BOOL)handleKeyphraseProgressReport:(id)a3;
- (BOOL)handleLaunchUpgradeTasks:(id)a3;
- (BOOL)handleProcessRecordMessage:(id)a3;
- (BOOL)handleProgressReport:(id)a3;
- (BOOL)handleSuggestedEventsProgressReport:(id)a3;
- (BOOL)handleTurboMessage:(id)a3;
- (BOOL)start;
- (id)encodeProcessorReport:(id)a3;
- (id)encodeProgressReport:(id)a3;
- (id)formatProgressReport:(id)a3;
- (uint64_t)didStart;
- (uint64_t)setDidStart:(uint64_t)result;
- (void)_setup;
- (void)deviceStateWillChange:(BOOL)a3;
- (void)didReceiveMemoryPressureNotification:(unint64_t)a3;
- (void)didReceiveSignal:(unint64_t)a3;
- (void)locked;
- (void)locking;
- (void)unlocked;
@end

@implementation SKGUpdaterAgent

+ (BOOL)enableEventUpdaters
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (BOOL)enableProcessingStateUpdater
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = _os_feature_enabled_impl();
  if (v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = 14;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKGUpdater: %d disabled", v5, 8u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2 ^ 1;
}

- (BOOL)enableAppEntities
{
  v6 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && !_os_feature_enabled_impl())
  {
    result = 1;
  }

  else
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v2)
    {
      v5[0] = 67109120;
      v5[1] = 10;
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKGUpdater: %d disabled", v5, 8u);
      result = 0;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)enableEmbeddings
{
  v8 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && ([MEMORY[0x277D65768] sharedInstance], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "deviceCanGenerateEmbeddings"), v2, v3) && !_os_feature_enabled_impl())
  {
    result = 1;
  }

  else
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v4)
    {
      v7[0] = 67109120;
      v7[1] = 11;
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKGUpdater: %d disabled", v7, 8u);
      result = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)enableKeyPhrases
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D657A0] sharedContext];
  v3 = [v2 enableKeyphrases];

  if (v3 && !_os_feature_enabled_impl())
  {
    result = 1;
  }

  else
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v4)
    {
      v7[0] = 67109120;
      v7[1] = 12;
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKGUpdater: %d disabled", v7, 8u);
      result = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)enableSuggestedEvents
{
  v8 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && ([MEMORY[0x277D657A0] sharedContext], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "enableSuggestedEvents"), v2, (v3 & 1) != 0))
  {
    result = 1;
  }

  else
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v5)
    {
      v7[0] = 67109120;
      v7[1] = 15;
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKGUpdater: %d disabled", v7, 8u);
      result = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)enableDocumentUnderstanding
{
  v8 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && ([MEMORY[0x277D657A0] sharedContext], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "enableDocumentUnderstanding"), v2, (v3 & 1) != 0))
  {
    result = 1;
  }

  else
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v5)
    {
      v7[0] = 67109120;
      v7[1] = 16;
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKGUpdater: %d disabled", v7, 8u);
      result = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)initialize
{
  v9 = *MEMORY[0x277D85DE8];
  if (+[SKGUpdaterAgent enableEventUpdaters])
  {
    sEnableCSEventListener = 1;
    v2 = +[CSXPCEventListener sharedInstance];
  }

  v3 = [MEMORY[0x277D657A0] sharedContext];
  v4 = [v3 enableScheduledReceivers];

  if (v4)
  {
    [MEMORY[0x277D65760] setupScheduledSender];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = sEnableCSEventListener;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "sEnableCSEventListener: %d", v8, 8u);
  }

  v5 = [(CSXPCConnection *)[SKGUpdaterAgent alloc] initMachServiceListenerWithName:@"com.apple.spotlightknowledged" enableConnectionLogging:0];
  v6 = sUpdaterAgent_0;
  sUpdaterAgent_0 = v5;

  [sUpdaterAgent_0 _setup];
  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)start
{
  v3 = [MEMORY[0x277D65740] sharedLockHandler];
  v4 = [v3 unlockedSinceBoot];

  if (v4)
  {

    return [(SKGUpdaterAgent *)self _doStart];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "### delaying SKGUpdaterAgent start until first unlock", v6, 2u);
    }

    return 1;
  }
}

- (BOOL)_doStart
{
  v54 = *MEMORY[0x277D85DE8];
  if ((atomic_exchange(&self->_didStart, 1u) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "### SKGUpdaterAgent _doStart", buf, 2u);
    }

    [(CSXPCConnection *)self startListener];
    if (sEnableCSEventListener == 1)
    {
      v3 = objc_opt_new();
      if ([(SKGUpdaterAgent *)self enableProcessingStateUpdater])
      {
        v4 = objc_opt_new();
        [v3 addObject:v4];
      }

      if ([(SKGUpdaterAgent *)self enableAppEntities])
      {
        v5 = +[CSAppEntityUpdater sharedInstance];
        [v3 addObject:v5];
      }

      if ([(SKGUpdaterAgent *)self embeddingsSupported])
      {
        if ([(SKGUpdaterAgent *)self enableEmbeddings])
        {
          v6 = [MEMORY[0x277D65798] sharedProcessor];
          [v6 loadEmbedder];

          +[CSEventFeedback logEmbeddingPrewarmRequestTime];
        }

        v7 = objc_opt_new();
        [v3 addObject:v7];

        v8 = objc_opt_new();
        [v3 addObject:v8];

        if (_os_feature_enabled_impl())
        {
          v9 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"SKGUpdaters"];
          v10 = [v9 integerForKey:@"EmbeddingCacheOptions"];
          v11 = 0;
          do
          {
            if (v11 == 6 || v11 == 3)
            {
              v12 = [EmbeddingCache initInstanceWithType:v11 name:@"embedding_store.db" cacheOptions:v10];
            }

            v11 = (v11 + 1);
          }

          while (v11 != 8);
        }

        else
        {
          v13 = 0;
          do
          {
            if (v13 == 6 || v13 == 3)
            {
              v14 = [EmbeddingCache initInstanceWithType:v13 name:@"embedding_store.db"];
            }

            v13 = (v13 + 1);
          }

          while (v13 != 8);
        }
      }

      if ([(SKGUpdaterAgent *)self enableSuggestedEvents])
      {
        v15 = objc_opt_new();
        [v3 addObject:v15];
      }

      if ([(SKGUpdaterAgent *)self enableDocumentUnderstanding])
      {
        v16 = objc_opt_new();
        [v3 addObject:v16];
      }

      v17 = +[SKDDefaults sharedDefaults];
      v18 = [v17 anyPipelineEnabled];

      if (v18)
      {
        v19 = +[SKDPipelineManager sharedManager];
        v20 = [v19 journalProcessingJobs];

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v21 = v20;
        v22 = [v21 countByEnumeratingWithState:&v46 objects:v53 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v47;
          do
          {
            v25 = 0;
            do
            {
              if (*v47 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = [[CSProcessorPipelineJobUpdater alloc] initWithJournalJob:*(*(&v46 + 1) + 8 * v25)];
              [v3 addObject:v26];

              ++v25;
            }

            while (v23 != v25);
            v23 = [v21 countByEnumeratingWithState:&v46 objects:v53 count:16];
          }

          while (v23);
        }
      }

      if ([(SKGUpdaterAgent *)self enableKeyPhrases])
      {
        v27 = +[SKDDefaults sharedDefaults];
        v28 = [v27 enabledForPipeline:@"Keyphrase"];

        if ((v28 & 1) == 0)
        {
          v29 = [MEMORY[0x277D65798] sharedProcessor];
          [v29 loadKeyphraser];

          v30 = objc_opt_new();
          [v3 addObject:v30];
        }
      }

      v31 = [MEMORY[0x277D657A0] sharedContext];
      v32 = [v31 enableScheduledReceivers];

      if (v32)
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v33 = [MEMORY[0x277D65760] supportedConfigs];
        v34 = [v33 countByEnumeratingWithState:&v42 objects:v52 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v43;
          do
          {
            v37 = 0;
            do
            {
              if (*v43 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = [[CSScheduledReceiverUpdater alloc] initWithSpotlightReceiverConfig:*(*(&v42 + 1) + 8 * v37)];
              [v3 addObject:v38];

              ++v37;
            }

            while (v35 != v37);
            v35 = [v33 countByEnumeratingWithState:&v42 objects:v52 count:16];
          }

          while (v35);
        }
      }

      if ([v3 count])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = v3;
          _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        v39 = +[CSXPCEventListener sharedInstance];
        [v39 startWithEventListeners:v3];
      }

      else
      {
        +[CSXPCEventListener disable];
      }
    }
  }

  v40 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_setup
{
  [MEMORY[0x277D65750] setDelegate:self memoryStatusFlags:55];
  [MEMORY[0x277D65750] setupHandlers];
  v3 = dispatch_queue_attr_make_with_overcommit();
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_BACKGROUND, 0);
  v6 = dispatch_queue_create("com.apple.spotlightknowledged.lockhandlerqueue", v5);
  lockHandlerQueue = self->_lockHandlerQueue;
  self->_lockHandlerQueue = v6;

  [MEMORY[0x277D65740] setLockHandlerWithDelegate:self options:0];
  v12 = [MEMORY[0x277D65740] sharedLockHandler];
  [v12 start];
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_UTILITY, 0);
  v10 = dispatch_queue_create("com.apple.spotlightknowledged.client-check-in", v9);
  clientCheckInQueue = self->_clientCheckInQueue;
  self->_clientCheckInQueue = v10;
}

- (BOOL)addClientConnectionIfAllowedForConnection:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  pid = xpc_connection_get_pid(v3);
  xpc_connection_get_audit_token();

  v5 = *MEMORY[0x277CBECE8];
  memset(&token, 0, sizeof(token));
  v6 = SecTaskCreateWithAuditToken(v5, &token);
  if (v6)
  {
    v7 = v6;
    v8 = SecTaskCopyValueForEntitlement(v6, @"com.apple.private.corespotlight.skgupdater", 0);
    v9 = [v8 BOOLValue];
    CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
    if (v9)
    {
      if (CurrentLoggingLevel >= 5)
      {
        v11 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          token.val[0] = 67109120;
          token.val[1] = pid;
          _os_log_impl(&dword_231B25000, v11, OS_LOG_TYPE_INFO, "New sender connection for pid: %d", &token, 8u);
        }

LABEL_10:
      }
    }

    else if (CurrentLoggingLevel >= 2)
    {
      v11 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(SKGImporterAgent *)pid addClientConnectionIfAllowedForConnection:v11];
      }

      goto LABEL_10;
    }

    CFRelease(v7);

    goto LABEL_12;
  }

  LOBYTE(v9) = 0;
LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)handleCommand:(const char *)a3 info:(id)a4 connection:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v10 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v23 = 136315394;
      v24 = a3;
      v25 = 2048;
      v26 = v8;
      _os_log_impl(&dword_231B25000, v10, OS_LOG_TYPE_INFO, "command %s info:%p", &v23, 0x16u);
    }
  }

  if (strcmp(a3, "test"))
  {
    if (!strcmp(a3, "processCheckedInBundleID"))
    {
      v14 = [(SKGUpdaterAgent *)self handleCheckedInMessage:v8];
    }

    else if (!strcmp(a3, "processRecord"))
    {
      v14 = [(SKGUpdaterAgent *)self handleProcessRecordMessage:v8];
    }

    else if (!strcmp(a3, "turboMode"))
    {
      v14 = [(SKGUpdaterAgent *)self handleTurboMessage:v8];
    }

    else if (!strcmp(a3, "embeddingGenerationProgress"))
    {
      v14 = [(SKGUpdaterAgent *)self handleEmbeddingProgressReport:v8];
    }

    else if (!strcmp(a3, "embeddingGenerationConfiguration"))
    {
      v14 = [(SKGUpdaterAgent *)self handleEmbeddingGenerationConfiguration:v8];
    }

    else if (!strcmp(a3, "suggestedEventsGenerationProgress"))
    {
      v14 = [(SKGUpdaterAgent *)self handleSuggestedEventsProgressReport:v8];
    }

    else if (!strcmp(a3, "documentUnderstandingGenerationProgress"))
    {
      v14 = [(SKGUpdaterAgent *)self handleDocumentUnderstandingProgressReport:v8];
    }

    else if (!strcmp(a3, "keyphraseGenerationProgress"))
    {
      v14 = [(SKGUpdaterAgent *)self handleKeyphraseProgressReport:v8];
    }

    else if (!strcmp(a3, "KeyphraseProgressReport"))
    {
      v14 = [(SKGUpdaterAgent *)self handleExtendedKeyphraseProgressReport:v8];
    }

    else if (!strcmp(a3, "ProgressReport"))
    {
      v14 = [(SKGUpdaterAgent *)self handleProgressReport:v8];
    }

    else if (!strcmp(a3, "embeddingCompleteness"))
    {
      v14 = [(SKGUpdaterAgent *)self handleEmbeddingCompleteness:v8];
    }

    else if (!strcmp(a3, "eventsJournalsStats"))
    {
      v14 = [(SKGUpdaterAgent *)self handleEventsJournalsStats:v8];
    }

    else if (!strcmp(a3, "diagnose"))
    {
      v14 = [(SKGUpdaterAgent *)self handleDiagnose:v8];
    }

    else if (!strcmp(a3, "historicalReports"))
    {
      v14 = [(SKGUpdaterAgent *)self handleHistoricalReports:v8];
    }

    else
    {
      if (strcmp(a3, "launchUpgradeTasks"))
      {
        if (sEnableCSEventListener == 1 && *a3 == 106 && !a3[1])
        {
          v21 = +[CSXPCEventListener sharedInstance];
          v22 = [v21 handleMessage:v8 connection:v9];

          v11 = 1;
          if (v22)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v11 = 1;
        }

LABEL_42:
        v13 = -1;
        goto LABEL_43;
      }

      v14 = [(SKGUpdaterAgent *)self handleLaunchUpgradeTasks:v8];
    }

    v11 = 1;
    if (v14)
    {
      goto LABEL_51;
    }

    goto LABEL_42;
  }

  v12 = xpc_data_create("TEST", 5uLL);

  v13 = 0;
  v11 = v12 == 0;
LABEL_43:
  v15 = xpc_dictionary_get_remote_connection(v8);
  if (v15)
  {
    reply = xpc_dictionary_create_reply(v8);
    v17 = reply;
    v18 = reply != 0;
    if (reply)
    {
      xpc_dictionary_set_int64(reply, "status", v13);
      if (!v11)
      {
        xpc_dictionary_set_data(v17, "data", "TEST", 5uLL);
      }

      xpc_connection_send_message(v15, v17);
    }
  }

  else
  {
    v18 = 0;
  }

  v11 = v18;
LABEL_51:

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)didReceiveSignal:(unint64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v4 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = a3;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_INFO, "didReceiveSignal %ld", &v6, 0xCu);
    }
  }

  if (a3 == 15)
  {
    exit(0);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveMemoryPressureNotification:(unint64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v4 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = a3;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_INFO, "didReceiveMemoryPressureNotification %llx", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)deviceStateWillChange:(BOOL)a3
{
  if (a3)
  {
    [(SKGUpdaterAgent *)self _doStart];
  }
}

- (void)locking
{
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v2 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_INFO, "[LOCK] received locking", v4, 2u);
    }
  }

  v3 = +[CSXPCEventListener sharedInstance];
  [v3 handleDeviceLocking];
}

- (void)locked
{
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v2 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_INFO, "[LOCK] received locked", v3, 2u);
    }
  }
}

- (void)unlocked
{
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v2 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_INFO, "[LOCK] received unlocked", v4, 2u);
    }
  }

  v3 = +[CSXPCEventListener sharedInstance];
  [v3 handleDeviceUnlocked];
}

- (BOOL)handleCheckedInMessage:(id)a3
{
  v4 = a3;
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v5 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_INFO, "handleCheckedInMessage", buf, 2u);
    }
  }

  v6 = [MEMORY[0x277CC3510] copyNSStringForKey:"bundleIdentifier" fromXPCDictionary:v4];
  v7 = [SKGJobContext defaultJobContextWithDeviceUnlocked:1 force:0];
  v8 = [MEMORY[0x277D657A0] sharedContext];
  v9 = [v8 excludeBundles];
  if ([v9 containsObject:v6])
  {

LABEL_9:
    goto LABEL_10;
  }

  v10 = [v7 doNotUpdateDelegatesList];
  v11 = [v10 containsObject:v6];

  if ((v11 & 1) == 0)
  {
    v12 = [(SKGUpdaterAgent *)self clientCheckInQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __42__SKGUpdaterAgent_handleCheckedInMessage___block_invoke;
    v16[3] = &unk_27893D900;
    v17 = v7;
    v18 = v6;
    dispatch_async(v12, v16);

    v8 = v17;
    goto LABEL_9;
  }

LABEL_10:
  v13 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  xpc_dictionary_set_int64(reply, "status", 0);
  xpc_connection_send_message(v13, reply);

  return 1;
}

void __42__SKGUpdaterAgent_handleCheckedInMessage___block_invoke(uint64_t a1)
{
  v2 = [[SKGJob alloc] initWithJobContext:*(a1 + 32)];
  [(SKGJob *)v2 requestCSReindexForClientWithBundleIdentifier:*(a1 + 40) batchProcessedBlock:&__block_literal_global_43 batchUpdatedBlock:&__block_literal_global_80 cancelBlock:&__block_literal_global_83_0];
}

- (id)encodeProcessorReport:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    empty = xpc_array_create_empty();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = xpc_string_create([v10 UTF8String]);
          xpc_array_append_value(empty, v11);
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    empty = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return empty;
}

- (id)encodeProgressReport:(id)a3
{
  v96 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v90 = objc_opt_new();
    v89 = objc_opt_new();
    v88 = objc_opt_new();
    v87 = objc_opt_new();
    v86 = objc_opt_new();
    v85 = objc_opt_new();
    v84 = objc_opt_new();
    v83 = objc_opt_new();
    v82 = objc_opt_new();
    v81 = objc_opt_new();
    v80 = objc_opt_new();
    v79 = objc_opt_new();
    v78 = objc_opt_new();
    v77 = objc_opt_new();
    v76 = objc_opt_new();
    v75 = objc_opt_new();
    v74 = objc_opt_new();
    v73 = objc_opt_new();
    xdict = xpc_dictionary_create_empty();
    empty = xpc_array_create_empty();
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v91 objects:v95 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v92;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v92 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v91 + 1) + 8 * i);
          if (([v10 isEqualToString:@"Total"] & 1) == 0)
          {
            v11 = xpc_string_create([v10 UTF8String]);
            xpc_array_append_value(empty, v11);

            v12 = [v5 objectForKeyedSubscript:v10];
            v13 = [v12 objectForKeyedSubscript:@"totalItems"];
            [v90 setObject:v13 forKeyedSubscript:v10];

            v14 = [v5 objectForKeyedSubscript:v10];
            v15 = [v14 objectForKeyedSubscript:@"itemsProcessed"];
            [v89 setObject:v15 forKeyedSubscript:v10];

            v16 = [v5 objectForKeyedSubscript:v10];
            v17 = [v16 objectForKeyedSubscript:@"itemsNeedProcessing"];
            [v88 setObject:v17 forKeyedSubscript:v10];

            v18 = [v5 objectForKeyedSubscript:v10];
            v19 = [v18 objectForKeyedSubscript:@"itemsNeedEmbeddings"];
            [v87 setObject:v19 forKeyedSubscript:v10];

            v20 = [v5 objectForKeyedSubscript:v10];
            v21 = [v20 objectForKeyedSubscript:@"itemsAwaitingRedonation"];
            [v86 setObject:v21 forKeyedSubscript:v10];

            v22 = [v5 objectForKeyedSubscript:v10];
            v23 = [v22 objectForKeyedSubscript:@"itemsRedonationRequestCapReached"];
            [v85 setObject:v23 forKeyedSubscript:v10];

            v24 = [v5 objectForKeyedSubscript:v10];
            v25 = [v24 objectForKeyedSubscript:@"itemsWithPrimaryTextEmbedding"];
            [v84 setObject:v25 forKeyedSubscript:v10];

            v26 = [v5 objectForKeyedSubscript:v10];
            v27 = [v26 objectForKeyedSubscript:@"itemsWithSecondaryTextEmbedding"];
            [v83 setObject:v27 forKeyedSubscript:v10];

            v28 = [v5 objectForKeyedSubscript:v10];
            v29 = [v28 objectForKeyedSubscript:@"itemsNeedSuggestedEvents"];
            [v82 setObject:v29 forKeyedSubscript:v10];

            v30 = [v5 objectForKeyedSubscript:v10];
            v31 = [v30 objectForKeyedSubscript:@"itemsWithSuggestedEvents"];
            [v81 setObject:v31 forKeyedSubscript:v10];

            v32 = [v5 objectForKeyedSubscript:v10];
            v33 = [v32 objectForKeyedSubscript:@"itemsNeedDocumentUnderstanding"];
            [v80 setObject:v33 forKeyedSubscript:v10];

            v34 = [v5 objectForKeyedSubscript:v10];
            v35 = [v34 objectForKeyedSubscript:@"itemsWithDocumentUnderstanding"];
            [v79 setObject:v35 forKeyedSubscript:v10];

            v36 = [v5 objectForKeyedSubscript:v10];
            v37 = [v36 objectForKeyedSubscript:@"itemsNeedKeyphrases"];
            [v78 setObject:v37 forKeyedSubscript:v10];

            v38 = [v5 objectForKeyedSubscript:v10];
            v39 = [v38 objectForKeyedSubscript:@"itemsWithKeyphrases"];
            [v77 setObject:v39 forKeyedSubscript:v10];

            v40 = [v5 objectForKeyedSubscript:v10];
            v41 = [v40 objectForKeyedSubscript:@"itemsWithBreadcrumbs"];
            [v76 setObject:v41 forKeyedSubscript:v10];

            v42 = [v5 objectForKeyedSubscript:v10];
            v43 = [v42 objectForKeyedSubscript:@"itemsWithLocations"];
            [v75 setObject:v43 forKeyedSubscript:v10];

            v44 = [v5 objectForKeyedSubscript:v10];
            v45 = [v44 objectForKeyedSubscript:@"query"];

            if (v45)
            {
              v46 = [v5 objectForKeyedSubscript:v10];
              v47 = [v46 objectForKeyedSubscript:@"query"];
              [v74 setObject:v47 forKeyedSubscript:v10];
            }

            v48 = [v5 objectForKeyedSubscript:v10];
            v49 = [v48 objectForKeyedSubscript:@"fileQuery"];

            if (v49)
            {
              v50 = [v5 objectForKeyedSubscript:v10];
              v51 = [v50 objectForKeyedSubscript:@"fileQuery"];
              [v73 setObject:v51 forKeyedSubscript:v10];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v91 objects:v95 count:16];
      }

      while (v7);
    }

    xpc_dictionary_set_value(xdict, "bundleIDs", empty);
    v52 = packXPCDict(v90);
    xpc_dictionary_set_value(xdict, "totalItemsDict", v52);

    v53 = packXPCDict(v89);
    xpc_dictionary_set_value(xdict, "itemsProcessedDict", v53);

    v54 = packXPCDict(v88);
    xpc_dictionary_set_value(xdict, "itemsNeedProcessingDict", v54);

    v55 = packXPCDict(v87);
    xpc_dictionary_set_value(xdict, "itemsNeedEmbedDict", v55);

    v56 = packXPCDict(v86);
    xpc_dictionary_set_value(xdict, "itemsAwaitingRedonationDict", v56);

    v57 = packXPCDict(v85);
    xpc_dictionary_set_value(xdict, "itemsRedonationRequestCapReachedDict", v57);

    v58 = packXPCDict(v84);
    xpc_dictionary_set_value(xdict, "itemsWithPrimaryTextEmbeddingDict", v58);

    v59 = packXPCDict(v83);
    xpc_dictionary_set_value(xdict, "itemsWithSecondaryTextEmbeddingDict", v59);

    v60 = packXPCDict(v82);
    xpc_dictionary_set_value(xdict, "itemsNeedSuggestedEventsDict", v60);

    v61 = packXPCDict(v81);
    xpc_dictionary_set_value(xdict, "itemsWithSuggestedEventsDict", v61);

    v62 = packXPCDict(v80);
    xpc_dictionary_set_value(xdict, "itemsNeedDocumentUnderstandingDict", v62);

    v63 = packXPCDict(v79);
    xpc_dictionary_set_value(xdict, "itemsWithDocumentUnderstandingDict", v63);

    v64 = packXPCDict(v78);
    xpc_dictionary_set_value(xdict, "itemsNeedKeyphrasesDict", v64);

    v65 = packXPCDict(v77);
    xpc_dictionary_set_value(xdict, "itemsWithKeyphrasesDict", v65);

    v66 = packXPCDict(v76);
    xpc_dictionary_set_value(xdict, "itemsWithBreadcrumbsDict", v66);

    v67 = packXPCDict(v75);
    xpc_dictionary_set_value(xdict, "itemsWithLocationsDict", v67);

    v68 = packXPCDictString(v74);
    xpc_dictionary_set_value(xdict, "bundleQueriesDict", v68);

    v69 = packXPCDictString(v73);
    xpc_dictionary_set_value(xdict, "bundleFileQueriesDict", v69);
  }

  else
  {
    xdict = 0;
  }

  v70 = *MEMORY[0x277D85DE8];

  return xdict;
}

- (id)formatProgressReport:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v5 = [@"Bundle" stringByPaddingToLength:50 withString:@" " startingAtIndex:0];
  [v4 appendString:v5];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v6 = [&unk_2846E8598 countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v58;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v58 != v8)
        {
          objc_enumerationMutation(&unk_2846E8598);
        }

        v10 = [*(*(&v57 + 1) + 8 * i) stringByPaddingToLength:35 withString:@" " startingAtIndex:0];
        [v4 appendString:v10];
      }

      v7 = [&unk_2846E8598 countByEnumeratingWithState:&v57 objects:v64 count:16];
    }

    while (v7);
  }

  [v4 appendString:@"\n"];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v11 = v3;
  v12 = [v11 countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v54;
    v40 = *v54;
    v41 = v11;
    do
    {
      v16 = 0;
      v42 = v13;
      do
      {
        if (*v54 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v44 = v16;
        v17 = *(*(&v53 + 1) + 8 * v16);
        if ([v17 isEqual:@"Total"])
        {
          [v11 objectForKeyedSubscript:@"Total"];
          v14 = v18 = v14;
        }

        else
        {
          v43 = v14;
          v19 = [v17 stringByPaddingToLength:50 withString:@" " startingAtIndex:0];
          [v4 appendString:v19];

          v18 = [v11 objectForKeyedSubscript:v17];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v20 = [&unk_2846E8598 countByEnumeratingWithState:&v49 objects:v62 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v50;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v50 != v22)
                {
                  objc_enumerationMutation(&unk_2846E8598);
                }

                v24 = MEMORY[0x277CCACA8];
                v25 = [v18 objectForKeyedSubscript:*(*(&v49 + 1) + 8 * j)];
                v26 = [v24 stringWithFormat:@"%@", v25];
                v27 = [v26 stringByPaddingToLength:35 withString:@" " startingAtIndex:0];
                [v4 appendString:v27];
              }

              v21 = [&unk_2846E8598 countByEnumeratingWithState:&v49 objects:v62 count:16];
            }

            while (v21);
          }

          [v4 appendString:@"\n"];
          v11 = v41;
          v13 = v42;
          v14 = v43;
          v15 = v40;
        }

        v16 = v44 + 1;
      }

      while (v44 + 1 != v13);
      v13 = [v11 countByEnumeratingWithState:&v53 objects:v63 count:16];
    }

    while (v13);

    if (v14)
    {
      v28 = [@"Total" stringByPaddingToLength:50 withString:@" " startingAtIndex:0];
      [v4 appendString:v28];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v29 = [&unk_2846E8598 countByEnumeratingWithState:&v45 objects:v61 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v46;
        do
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v46 != v31)
            {
              objc_enumerationMutation(&unk_2846E8598);
            }

            v33 = MEMORY[0x277CCACA8];
            [v14 objectForKeyedSubscript:*(*(&v45 + 1) + 8 * k)];
            v35 = v34 = v14;
            v36 = [v33 stringWithFormat:@"%@", v35];
            v37 = [v36 stringByPaddingToLength:35 withString:@" " startingAtIndex:0];
            [v4 appendString:v37];

            v14 = v34;
          }

          v30 = [&unk_2846E8598 countByEnumeratingWithState:&v45 objects:v61 count:16];
        }

        while (v30);
      }

      [v4 appendString:@"\n"];
      v11 = v41;
    }
  }

  else
  {

    v14 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)handleEmbeddingProgressReport:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CC3510];
  v6 = xpc_dictionary_get_value(v4, "protectionClasses");
  v7 = [v5 copyNSStringArrayFromXPCArray:v6];

  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v8 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = v7;
      _os_log_impl(&dword_231B25000, v8, OS_LOG_TYPE_INFO, "handleEmbeddingProgressReport for protection classes:%@", &v18, 0xCu);
    }
  }

  v9 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  xpc_dictionary_set_int64(reply, "status", 0);
  v11 = objc_autoreleasePoolPush();
  v12 = [SKGJobContext defaultJobContextWithDeviceUnlocked:1];
  v13 = [[SKGJob alloc] initWithJobContext:v12];
  v14 = [(SKGJob *)v13 generateCSEmbeddingsReportForProtectionClasses:v7 withCancelBlock:&__block_literal_global_178];
  v15 = [(SKGUpdaterAgent *)self encodeProgressReport:v14];
  if (v15)
  {
    xpc_dictionary_set_value(reply, "embeddingReport", v15);
  }

  objc_autoreleasePoolPop(v11);
  xpc_connection_send_message(v9, reply);

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)handleEmbeddingGenerationConfiguration:(id)a3
{
  v3 = a3;
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v4 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_INFO, "handleEmbeddingGenerationConfiguration", buf, 2u);
    }
  }

  v5 = xpc_dictionary_get_remote_connection(v3);
  reply = xpc_dictionary_create_reply(v3);
  xpc_dictionary_set_int64(reply, "status", 0);
  v7 = objc_autoreleasePoolPush();
  empty = xpc_dictionary_create_empty();
  v9 = [MEMORY[0x277D657A0] sharedContext];
  xpc_dictionary_set_int64(empty, "embeddingVersion", [v9 embeddingVersion]);

  v10 = [MEMORY[0x277D657A0] sharedContext];
  xpc_dictionary_set_int64(empty, "embeddingModelVersion", [v10 embeddingModelVersion]);

  v11 = [MEMORY[0x277D657A0] sharedContext];
  xpc_dictionary_set_int64(empty, "embeddingRedonationThrottleHorizonDate", [v11 redonationThrottleHorizonDate]);

  v12 = [MEMORY[0x277D657A0] sharedContext];
  xpc_dictionary_set_int64(empty, "embeddingRedonationRepeatCap", [v12 redonationRepeatCap]);

  v13 = MEMORY[0x277CC3510];
  v14 = [MEMORY[0x277D657A0] sharedContext];
  v15 = [v14 embeddingExcludeBundles];
  [v13 dictionary:empty setStringArray:v15 forKey:"embeddingExcludeBundles"];

  v16 = [MEMORY[0x277D657A0] sharedContext];
  LODWORD(v14) = [v16 enableEmbeddings];

  if (v14)
  {
    v26 = [SKGJobContext defaultJobContextWithDeviceUnlocked:1];
    v17 = [v26 embeddingGenStartTime];
    v18 = [MEMORY[0x277CBEA80] currentCalendar];
    [MEMORY[0x277CBEAA8] now];
    v19 = v3;
    v20 = v5;
    v22 = v21 = v7;
    v23 = [v18 components:16 fromDate:v17 toDate:v22 options:6];
    v24 = [v23 day];

    v7 = v21;
    v5 = v20;
    v3 = v19;

    xpc_dictionary_set_int64(empty, "embeddingDaysSinceEnablement", v24);
  }

  else
  {
    xpc_dictionary_set_int64(empty, "embeddingDaysSinceEnablement", -1);
  }

  xpc_dictionary_set_value(reply, "embeddingConfiguration", empty);

  objc_autoreleasePoolPop(v7);
  xpc_connection_send_message(v5, reply);

  return 1;
}

- (BOOL)handleEventsJournalsStats:(id)a3
{
  v3 = a3;
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v4 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_INFO, "handleEventsJournalsStats", v11, 2u);
    }
  }

  v5 = xpc_dictionary_get_remote_connection(v3);
  reply = xpc_dictionary_create_reply(v3);
  xpc_dictionary_set_int64(reply, "status", 0);
  v7 = objc_autoreleasePoolPush();
  v8 = +[CSEventJournalStats generateStats];
  v9 = packXPCDictRec(v8);
  if (v9)
  {
    xpc_dictionary_set_value(reply, "journalsStats", v9);
  }

  objc_autoreleasePoolPop(v7);
  xpc_connection_send_message(v5, reply);

  return 1;
}

- (BOOL)handleSuggestedEventsProgressReport:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CC3510];
  v6 = xpc_dictionary_get_value(v4, "protectionClasses");
  v7 = [v5 copyNSStringArrayFromXPCArray:v6];

  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v8 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = v7;
      _os_log_impl(&dword_231B25000, v8, OS_LOG_TYPE_INFO, "handleSuggestedEventsProgressReport for protection classes:%@", &v18, 0xCu);
    }
  }

  v9 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  xpc_dictionary_set_int64(reply, "status", 0);
  v11 = objc_autoreleasePoolPush();
  v12 = [SKGJobContext defaultJobContextWithDeviceUnlocked:1];
  v13 = [[SKGJob alloc] initWithJobContext:v12];
  v14 = [(SKGJob *)v13 generateCSSuggestedEventsReportForProtectionClasses:v7 withCancelBlock:&__block_literal_global_192];
  v15 = [(SKGUpdaterAgent *)self encodeProgressReport:v14];
  if (v15)
  {
    xpc_dictionary_set_value(reply, "suggestedEventsReport", v15);
  }

  objc_autoreleasePoolPop(v11);
  xpc_connection_send_message(v9, reply);

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)handleDocumentUnderstandingProgressReport:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CC3510];
  v6 = xpc_dictionary_get_value(v4, "protectionClasses");
  v7 = [v5 copyNSStringArrayFromXPCArray:v6];

  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v8 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = v7;
      _os_log_impl(&dword_231B25000, v8, OS_LOG_TYPE_INFO, "handleDocumentUnderstandingProgressReport for protection classes:%@", &v18, 0xCu);
    }
  }

  v9 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  xpc_dictionary_set_int64(reply, "status", 0);
  v11 = objc_autoreleasePoolPush();
  v12 = [SKGJobContext defaultJobContextWithDeviceUnlocked:1];
  v13 = [[SKGJob alloc] initWithJobContext:v12];
  v14 = [(SKGJob *)v13 generateCSDocumentUnderstandingReportForProtectionClasses:v7 withCancelBlock:&__block_literal_global_195];
  v15 = [(SKGUpdaterAgent *)self encodeProgressReport:v14];
  if (v15)
  {
    xpc_dictionary_set_value(reply, "documentUnderstandingReport", v15);
  }

  objc_autoreleasePoolPop(v11);
  xpc_connection_send_message(v9, reply);

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)handleKeyphraseProgressReport:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CC3510];
  v6 = xpc_dictionary_get_value(v4, "protectionClasses");
  v7 = [v5 copyNSStringArrayFromXPCArray:v6];

  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v8 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = v7;
      _os_log_impl(&dword_231B25000, v8, OS_LOG_TYPE_INFO, "handleKeyphraseProgressReport for protection classes:%@", &v18, 0xCu);
    }
  }

  v9 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  xpc_dictionary_set_int64(reply, "status", 0);
  v11 = objc_autoreleasePoolPush();
  v12 = [SKGJobContext defaultJobContextWithDeviceUnlocked:1];
  v13 = [[SKGJob alloc] initWithJobContext:v12];
  v14 = [(SKGJob *)v13 generateCSKeyphraseReportForProtectionClasses:v7 withCancelBlock:&__block_literal_global_198_0];
  v15 = [(SKGUpdaterAgent *)self encodeProgressReport:v14];
  if (v15)
  {
    xpc_dictionary_set_value(reply, "keyphraseReport", v15);
  }

  objc_autoreleasePoolPop(v11);
  xpc_connection_send_message(v9, reply);

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)handleExtendedKeyphraseProgressReport:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CC3510];
  v6 = xpc_dictionary_get_value(v4, "protectionClasses");
  v7 = [v5 copyNSStringArrayFromXPCArray:v6];

  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v8 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = v7;
      _os_log_impl(&dword_231B25000, v8, OS_LOG_TYPE_INFO, "handleKeyphraseProgressReport for protection classes:%@", &v21, 0xCu);
    }
  }

  int64 = xpc_dictionary_get_int64(v4, "verbose");
  v10 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  xpc_dictionary_set_int64(reply, "status", 0);
  v12 = objc_autoreleasePoolPush();
  v13 = [SKGJobContext defaultJobContextWithDeviceUnlocked:1];
  v14 = [[SKGJob alloc] initWithJobContext:v13];
  v15 = v14;
  if (int64)
  {
    v16 = 34;
  }

  else
  {
    v16 = 32;
  }

  v17 = [(SKGJob *)v14 generateCSReportWithProtectionClasses:v7 flags:v16 verbosity:int64 cancelBlock:&__block_literal_global_202];
  v18 = [(SKGUpdaterAgent *)self encodeProcessorReport:v17];
  if (v18)
  {
    xpc_dictionary_set_value(reply, "progressReport", v18);
  }

  objc_autoreleasePoolPop(v12);
  xpc_connection_send_message(v10, reply);

  v19 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)handleProgressReport:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CC3510];
  v5 = xpc_dictionary_get_value(v3, "protectionClasses");
  v6 = [v4 copyNSStringArrayFromXPCArray:v5];

  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v7 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = v6;
      _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_INFO, "handleProgressReport for protection classes:%@", buf, 0xCu);
    }
  }

  int64 = xpc_dictionary_get_int64(v3, "verbose");
  connection = xpc_dictionary_get_remote_connection(v3);
  reply = xpc_dictionary_create_reply(v3);
  xpc_dictionary_set_int64(reply, "status", 0);
  context = objc_autoreleasePoolPush();
  v10 = [SKGJobContext defaultJobContextWithDeviceUnlocked:1];
  v11 = [[SKGJob alloc] initWithJobContext:v10];
  v12 = [MEMORY[0x277D657A0] sharedContext];
  v13 = [v12 enableEmbeddings];

  v14 = v6;
  if (v13)
  {
    v15 = 16;
  }

  else
  {
    v15 = 0;
  }

  v16 = [MEMORY[0x277D657A0] sharedContext];
  v17 = [v16 enableKeyphrases];

  if (v17)
  {
    v15 |= 0x20u;
  }

  v18 = [MEMORY[0x277D657A0] sharedContext];
  v19 = [v18 enableDocumentUnderstanding];

  if (v19)
  {
    v15 |= 0x100u;
  }

  v20 = [MEMORY[0x277D657A0] sharedContext];
  v21 = [v20 enableSuggestedEvents];

  v22 = v15 | 0x80;
  if (!v21)
  {
    v22 = v15;
  }

  if (int64)
  {
    v23 = v22 | 2;
  }

  else
  {
    v23 = v22;
  }

  v24 = [(SKGJob *)v11 generateCSReportWithProtectionClasses:v14 flags:v23 verbosity:int64 cancelBlock:&__block_literal_global_205];
  v25 = [(SKGUpdaterAgent *)self encodeProcessorReport:v24];
  if (v25)
  {
    xpc_dictionary_set_value(reply, "progressReport", v25);
  }

  objc_autoreleasePoolPop(context);
  xpc_connection_send_message(connection, reply);

  v26 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)handleHistoricalReports:(id)a3
{
  v3 = a3;
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v4 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_INFO, "handleHistoricalReports", buf, 2u);
    }
  }

  v5 = xpc_dictionary_get_double(v3, "startDate");
  v6 = xpc_dictionary_get_double(v3, "duration");
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v5];
  v8 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 duration:v6];
  v9 = [MEMORY[0x277D65758] sharedInstance];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__SKGUpdaterAgent_handleHistoricalReports___block_invoke;
  v12[3] = &unk_27893F7D0;
  v13 = v3;
  v10 = v3;
  [v9 getReportsForDateInterval:v8 reportHandler:v12];

  return 1;
}

void __43__SKGUpdaterAgent_handleHistoricalReports___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  v8 = reply;
  if (a3)
  {
    xpc_dictionary_set_int64(reply, "status", 1);
    xpc_connection_send_message(v6, v8);
  }

  else
  {
    v9 = xpc_array_create(0, 0);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = v15;
          v17 = xpc_data_create([v16 bytes], objc_msgSend(v15, "length"));
          xpc_array_append_value(v9, v17);
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    xpc_dictionary_set_value(v8, "historicalReports", v9);
    xpc_connection_send_message(v6, v8);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleLaunchUpgradeTasks:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v3 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[SKGUpdaterAgent handleLaunchUpgradeTasks:]";
      _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_INFO, "%s", &v7, 0xCu);
    }
  }

  v4 = +[CSXPCEventListener sharedInstance];
  [v4 launchQueryUpdatesTasks];

  v5 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)handleProcessRecordMessage:(id)a3
{
  v3 = a3;
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v4 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_INFO, "handleProcessRecord", buf, 2u);
    }
  }

  v5 = [MEMORY[0x277CC3510] copyBoolForKey:"includeEmbeddings" fromXPCDictionary:v3];
  v6 = [MEMORY[0x277CC3510] copyBoolForKey:"includeKeyphrases" fromXPCDictionary:v3];
  v7 = [MEMORY[0x277CC3510] copyBoolForKey:"includeSKG" fromXPCDictionary:v3];
  v8 = [MEMORY[0x277CC3510] copyNSStringForKey:"protectionClass" fromXPCDictionary:v3];
  if (!v8)
  {
    LOBYTE(v14) = 0;
    v12 = 0;
LABEL_22:
    v15 = 0;
    goto LABEL_26;
  }

  v9 = objc_alloc(MEMORY[0x277CC33C8]);
  v10 = [MEMORY[0x277CC3510] copyNSDataForKey:"record" fromXPCDictionary:v3];
  v11 = [v9 initWithData:v10];
  v12 = [v11 decode];

  if (!v12)
  {
    LOBYTE(v14) = 0;
    goto LABEL_22;
  }

  v13 = [MEMORY[0x277D65798] sharedProcessor];
  v14 = [v13 recordIsValid:v12];

  if (v14)
  {
    v15 = xpc_dictionary_get_remote_connection(v3);
    if (!v15 || (reply = xpc_dictionary_create_reply(v3)) == 0)
    {
      LOBYTE(v14) = 0;
      goto LABEL_26;
    }

    v26 = reply;
    v27 = [MEMORY[0x277CC3510] copyNSStringForKey:"referenceIdentifier" fromXPCDictionary:v3];
    v17 = v5 | v7;
    if ((v5 | v7))
    {
      v18 = [MEMORY[0x277D65798] sharedProcessor];
      [v18 loadEmbedder];
    }

    v19 = v6 | v7;
    if ((v6 | v7))
    {
      v20 = [MEMORY[0x277D65798] sharedProcessor];
      [v20 loadKeyphraser];
    }

    *buf = 0;
    v32 = buf;
    v33 = 0x2020000000;
    v34 = -1;
    v21 = [MEMORY[0x277D65798] sharedProcessor];
    v22 = 2;
    if ((v17 & 1) == 0)
    {
      v22 = 0;
    }

    if (v19)
    {
      v23 = v22 | 4;
    }

    else
    {
      v23 = v22;
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __46__SKGUpdaterAgent_handleProcessRecordMessage___block_invoke;
    v28[3] = &unk_27893E8B0;
    v24 = v26;
    v29 = v24;
    v30 = buf;
    [v21 enumerateProcessedItemsFromRecord:v12 referenceIdentifier:v27 bundleIdentifier:0 protectionClass:v8 processorFlags:v23 processedItemBlock:v28 cancelBlock:&__block_literal_global_223];

    xpc_dictionary_set_int64(v24, "status", *(v32 + 6));
    xpc_connection_send_message(v15, v24);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = 0;
    v24 = v12;
    v12 = 0;
  }

LABEL_26:
  return v14;
}

uint64_t __46__SKGUpdaterAgent_handleProcessRecordMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = attributeSetForProcessedItem(a2);
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CC33A0]);
    v5 = [v3 attributeDictionary];
    [v4 encodeObject:v5];

    v6 = [v4 data];
    v7 = v6;
    if (v6)
    {
      xpc_dictionary_set_data(*(a1 + 32), "attrDict", [v6 bytes], objc_msgSend(v6, "length"));
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  return 0;
}

- (BOOL)handleEmbeddingCompleteness:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CC3510];
  v4 = a3;
  v5 = [v3 copyNSStringForKey:"bundleIdentifier" fromXPCDictionary:v4];
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v6 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_231B25000, v6, OS_LOG_TYPE_INFO, "handleEmbeddingCompleteness for bundle:%@", &v15, 0xCu);
    }
  }

  v7 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);

  xpc_dictionary_set_int64(reply, "status", 0);
  v9 = [SKGJobContext defaultJobContextWithDeviceUnlocked:1];
  v10 = [v9 getEmbeddingGenCompletenessForBundle:v5];
  v11 = v10;
  if (v10)
  {
    [v10 doubleValue];
  }

  else
  {
    v12 = NAN;
  }

  xpc_dictionary_set_double(reply, "completeness", v12);
  xpc_connection_send_message(v7, reply);

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)handleTurboMessage:(id)a3
{
  v3 = a3;
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v4 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_INFO, "handleTurboMessage", v8, 2u);
    }
  }

  v5 = xpc_dictionary_get_BOOL(v3, "state");
  v6 = +[CSXPCEventListener sharedInstance];
  [v6 setTurboMode:v5];

  return 1;
}

- (BOOL)handleDiagnose:(id)a3
{
  v4 = a3;
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v5 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_DEFAULT, "handleDiagnose", buf, 2u);
    }
  }

  v44 = v4;
  v6 = [MEMORY[0x277CC3510] copyNSStringForKey:"path" fromXPCDictionary:v4];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v6, @"embedding-status.log"];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v6, @"events-journals-stats.log"];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v6, @"historical-reports"];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v6, @"SKGActivityJournal.log"];
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [v11 fileExistsAtPath:v7];

  if (v12)
  {
    v13 = [MEMORY[0x277CCAA00] defaultManager];
    [v13 removeItemAtPath:v7 error:0];
  }

  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [v14 fileExistsAtPath:v8];

  if (v15)
  {
    v16 = [MEMORY[0x277CCAA00] defaultManager];
    [v16 removeItemAtPath:v8 error:0];
  }

  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = [v17 fileExistsAtPath:v9];

  if (v18)
  {
    v19 = [MEMORY[0x277CCAA00] defaultManager];
    [v19 removeItemAtPath:v9 error:0];
  }

  v45 = v9;
  v20 = [MEMORY[0x277CCAA00] defaultManager];
  v21 = [v20 fileExistsAtPath:v10];

  if (v21)
  {
    v22 = [MEMORY[0x277CCAA00] defaultManager];
    [v22 removeItemAtPath:v10 error:0];
  }

  v41 = v10;
  context = objc_autoreleasePoolPush();
  v23 = [SKGJobContext defaultJobContextWithDeviceUnlocked:1];
  v24 = [[SKGJob alloc] initWithJobContext:v23];
  v25 = [(SKGJob *)v24 generateCSEmbeddingsReportWithCancelBlock:&__block_literal_global_244];
  v26 = [(SKGUpdaterAgent *)self formatProgressReport:v25];
  v43 = v7;
  [v26 writeToFile:v7 atomically:1 encoding:4 error:0];

  v27 = +[CSEventJournalStats generateStats];

  v28 = [CSEventJournalStatsFormatter tabulateStats:v27];
  v42 = v8;
  [v28 writeToFile:v8 atomically:1 encoding:4 error:0];

  v29 = [MEMORY[0x277CBEAA8] date];
  v30 = [v29 dateByAddingTimeInterval:-2592000.0];
  *buf = 0;
  v50 = buf;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__25;
  v53 = __Block_byref_object_dispose__25;
  v54 = [MEMORY[0x277CBEB28] data];
  v31 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v30 endDate:v29];
  v32 = dispatch_group_create();
  dispatch_group_enter(v32);
  v33 = [MEMORY[0x277D65758] sharedInstance];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __34__SKGUpdaterAgent_handleDiagnose___block_invoke_247;
  v46[3] = &unk_27893F7F8;
  v48 = buf;
  v34 = v32;
  v47 = v34;
  [v33 getReportsForDateInterval:v31 reportHandler:v46];

  dispatch_group_wait(v34, 0xFFFFFFFFFFFFFFFFLL);
  [*(v50 + 5) writeToFile:v45 atomically:1];

  _Block_object_dispose(buf, 8);
  objc_autoreleasePoolPop(context);
  v35 = +[SKGActivityJournal sharedJournal];
  v36 = [v35 path];

  v37 = [MEMORY[0x277CCAA00] defaultManager];
  LODWORD(v34) = [v37 fileExistsAtPath:v36];

  if (v34)
  {
    v38 = [MEMORY[0x277CCAA00] defaultManager];
    [v38 copyItemAtPath:v36 toPath:v41 error:0];
  }

  return 1;
}

void __34__SKGUpdaterAgent_handleDiagnose___block_invoke_247(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(*(a1 + 40) + 8) + 40) appendData:*(*(&v12 + 1) + 8 * v10)];
          [*(*(*(a1 + 40) + 8) + 40) appendBytes:"\n" length:1];
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  dispatch_group_leave(*(a1 + 32));

  v11 = *MEMORY[0x277D85DE8];
}

- (uint64_t)didStart
{
  if (a1)
  {
    v1 = atomic_load((a1 + 56));
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)setDidStart:(uint64_t)result
{
  if (result)
  {
    atomic_store(a2, (result + 56));
  }

  return result;
}

@end
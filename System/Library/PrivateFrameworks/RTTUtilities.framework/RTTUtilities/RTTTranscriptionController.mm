@interface RTTTranscriptionController
- (RTTTranscriptionController)init;
- (RTTTranscriptionController)initWithDelegate:(id)delegate;
- (RTTTranscriptionControllerDelegate)delegate;
- (void)startTranscribingForCallUUID:(id)d;
- (void)startTranscribingV2ForCallUUID:(id)d;
- (void)stopTranscribingForCallUUID:(id)d;
- (void)stopTranscribingV2ForCallUUID:(id)d;
@end

@implementation RTTTranscriptionController

- (RTTTranscriptionController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [(RTTTranscriptionController *)self init];
  v6 = v5;
  if (v5)
  {
    [(RTTTranscriptionController *)v5 setDelegate:delegateCopy];
  }

  return v6;
}

- (RTTTranscriptionController)init
{
  v7.receiver = self;
  v7.super_class = RTTTranscriptionController;
  v2 = [(RTTTranscriptionController *)&v7 init];
  if (v2)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v3 = getAXLTLiveTranscriptionClass_softClass;
    v12 = getAXLTLiveTranscriptionClass_softClass;
    if (!getAXLTLiveTranscriptionClass_softClass)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __getAXLTLiveTranscriptionClass_block_invoke;
      v8[3] = &unk_279AE78F0;
      v8[4] = &v9;
      __getAXLTLiveTranscriptionClass_block_invoke(v8);
      v3 = v10[3];
    }

    v4 = v3;
    _Block_object_dispose(&v9, 8);
    sharedInstance = [v3 sharedInstance];
    [(RTTTranscriptionController *)v2 setTranscriber:sharedInstance];
  }

  return v2;
}

- (void)startTranscribingForCallUUID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = +[RTTSettings sharedInstance];
  if (([v5 rttLiveTranscriptionsFeatureFlagEnabled] & 1) == 0)
  {
    goto LABEL_16;
  }

  v6 = +[RTTSettings sharedInstance];
  if (([v6 rttLiveTranscriptionsEnabled]& 1) == 0)
  {
LABEL_15:

LABEL_16:
    goto LABEL_17;
  }

  v7 = soft_AXHasCapability(@"LiveTranscription");

  if (!v7)
  {
    goto LABEL_17;
  }

  currentCallUUID = [(RTTTranscriptionController *)self currentCallUUID];
  v9 = [currentCallUUID isEqualToString:dCopy];

  if (!v9)
  {
    currentCallUUID2 = [(RTTTranscriptionController *)self currentCallUUID];

    if (currentCallUUID2)
    {
      currentCallUUID3 = [(RTTTranscriptionController *)self currentCallUUID];
      [(RTTTranscriptionController *)self stopTranscribingForCallUUID:currentCallUUID3];
    }

    if (soft_AXHasCapability(@"AXLiveCaptionsLanguageExpansion"))
    {
      [(RTTTranscriptionController *)self startTranscribingV2ForCallUUID:dCopy];
      goto LABEL_17;
    }

    transcriber = [(RTTTranscriptionController *)self transcriber];
    v16 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__RTTTranscriptionController_startTranscribingForCallUUID___block_invoke;
    v17[3] = &unk_279AE8048;
    v17[4] = self;
    [transcriber startTranscribing:1 targetPID:4294967294 callbackBlock:v17 error:&v16];
    v5 = v16;

    v14 = AXLogRTT();
    v6 = v14;
    if (!v5)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = dCopy;
        _os_log_impl(&dword_261754000, v6, OS_LOG_TYPE_INFO, "Started transcription for callUUID %@", buf, 0xCu);
      }

      [(RTTTranscriptionController *)self setCurrentTranscription:0];
      [(RTTTranscriptionController *)self setCurrentCallUUID:dCopy];
      goto LABEL_16;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [RTTTranscriptionController startTranscribingForCallUUID:];
    }

    goto LABEL_15;
  }

  v10 = AXLogRTT();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = dCopy;
    _os_log_impl(&dword_261754000, v10, OS_LOG_TYPE_INFO, "Already transcribing for callUUID %@", buf, 0xCu);
  }

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
}

void __59__RTTTranscriptionController_startTranscribingForCallUUID___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(a1 + 32) currentCallUUID];

  v4 = v14;
  if (v3)
  {
    v5 = [v14 transcribedText];
    v6 = [v5 length];

    if (v6)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = ttyLocString(@"RTTTranscriptionPrefix");
      v9 = [v14 transcribedText];
      v10 = [v7 stringWithFormat:v8, v9];

      v11 = [*(a1 + 32) currentTranscription];

      v12 = [*(a1 + 32) delegate];
      v13 = [*(a1 + 32) currentCallUUID];
      if (v11)
      {
        [v12 transcriptionDidUpdate:v10 forCallUUID:v13];
      }

      else
      {
        [v12 transcriptionDidStart:v10 forCallUUID:v13];
      }

      [*(a1 + 32) setCurrentTranscription:v10];
    }

    else
    {
      [*(a1 + 32) setCurrentTranscription:0];
    }

    v4 = v14;
  }
}

- (void)stopTranscribingForCallUUID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  currentCallUUID = [(RTTTranscriptionController *)self currentCallUUID];
  v6 = [currentCallUUID isEqualToString:dCopy];

  if (v6)
  {
    if (soft_AXHasCapability(@"AXLiveCaptionsLanguageExpansion"))
    {
      [(RTTTranscriptionController *)self stopTranscribingV2ForCallUUID:dCopy];
    }

    else
    {
      transcriber = [(RTTTranscriptionController *)self transcriber];
      v13 = 0;
      [transcriber stopTranscribing:1 targetPID:4294967294 error:&v13];
      v9 = v13;

      v10 = AXLogRTT();
      v11 = v10;
      if (v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [RTTTranscriptionController stopTranscribingForCallUUID:];
        }
      }

      else
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v15 = dCopy;
          _os_log_impl(&dword_261754000, v11, OS_LOG_TYPE_INFO, "Stopped transcription for callUUID %@", buf, 0xCu);
        }

        [(RTTTranscriptionController *)self setCurrentTranscription:0];
        [(RTTTranscriptionController *)self setCurrentCallUUID:0];
      }
    }
  }

  else
  {
    v7 = AXLogRTT();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = dCopy;
      _os_log_impl(&dword_261754000, v7, OS_LOG_TYPE_INFO, "Already not transcribing for callUUID %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)startTranscribingV2ForCallUUID:(id)d
{
  dCopy = d;
  v3 = dCopy;
  AXPerformBlockOnMainThread();
}

void __61__RTTTranscriptionController_startTranscribingV2ForCallUUID___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = +[RTTLiveCaptionsObjC shared];
  [*(a1 + 32) setLiveCaptionsService:v2];

  v3 = MEMORY[0x277CBEAF8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v4 = getAXLCLiveCaptionsSelectedLocaleIdentifierSymbolLoc_ptr;
  v21 = getAXLCLiveCaptionsSelectedLocaleIdentifierSymbolLoc_ptr;
  if (!getAXLCLiveCaptionsSelectedLocaleIdentifierSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v23 = __getAXLCLiveCaptionsSelectedLocaleIdentifierSymbolLoc_block_invoke;
    v24 = &unk_279AE78F0;
    v25 = &v18;
    v5 = LiveTranscriptionLibrary();
    v6 = dlsym(v5, "AXLCLiveCaptionsSelectedLocaleIdentifier");
    *(v25[1] + 24) = v6;
    getAXLCLiveCaptionsSelectedLocaleIdentifierSymbolLoc_ptr = *(v25[1] + 24);
    v4 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v4)
  {
    __41__RTTCall__postLocalNotificationForText___block_invoke_cold_1();
    __break(1u);
  }

  v7 = v4();
  v8 = [v3 localeWithLocaleIdentifier:v7];

  v9 = [*(a1 + 32) liveCaptionsService];
  v10 = +[RTTLiveCaptionsObjC sourceTypeDownlink];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__RTTTranscriptionController_startTranscribingV2ForCallUUID___block_invoke_2;
  v16[3] = &unk_279AE8070;
  v16[4] = *(a1 + 32);
  v17 = 0;
  [v9 startWithSource:v10 locale:v8 sharedRoute:0 excludePIDs:0 error:&v17 transcriptionResult:v16];
  v11 = v17;

  v12 = AXLogRTT();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __61__RTTTranscriptionController_startTranscribingV2ForCallUUID___block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 40);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_261754000, v13, OS_LOG_TYPE_INFO, "Started transcription V2 for callUUID %@", &buf, 0xCu);
    }

    [*(a1 + 32) setCurrentTranscription:0];
    [*(a1 + 32) setCurrentCallUUID:*(a1 + 40)];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __61__RTTTranscriptionController_startTranscribingV2ForCallUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = ttyLocString(@"RTTTranscriptionPrefix");
  v6 = [v4 text];
  v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];
  v16 = [v3 stringWithFormat:v5, v8];

  v9 = [v4 resultType];
  v10 = +[RTTLiveCaptionsObjC resultTypeFinal];
  v11 = *(a1 + 32);
  if (v9 == v10)
  {
    v12 = [v11 delegate];
    v13 = [*(a1 + 32) currentCallUUID];
    [v12 transcriptionDidUpdate:v16 forCallUUID:v13];
    v14 = 0;
  }

  else
  {
    v15 = [v11 currentTranscription];

    v12 = [*(a1 + 32) delegate];
    v13 = [*(a1 + 32) currentCallUUID];
    if (v15)
    {
      [v12 transcriptionDidUpdate:v16 forCallUUID:v13];
    }

    else
    {
      [v12 transcriptionDidStart:v16 forCallUUID:v13];
    }

    v14 = v16;
  }

  [*(a1 + 32) setCurrentTranscription:v14];
}

- (void)stopTranscribingV2ForCallUUID:(id)d
{
  dCopy = d;
  v3 = dCopy;
  AXPerformBlockOnMainThread();
}

void __60__RTTTranscriptionController_stopTranscribingV2ForCallUUID___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) liveCaptionsService];
  v8 = 0;
  [v2 stop:+[RTTLiveCaptionsObjC sourceTypeDownlink](RTTLiveCaptionsObjC error:{"sourceTypeDownlink"), &v8}];
  v3 = v8;

  v4 = AXLogRTT();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__RTTTranscriptionController_stopTranscribingV2ForCallUUID___block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Stopped transcription V2 for callUUID %@", buf, 0xCu);
    }

    [*(a1 + 32) setCurrentTranscription:0];
    [*(a1 + 32) setCurrentCallUUID:0];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (RTTTranscriptionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startTranscribingForCallUUID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_261754000, v0, v1, "Failed to start transcribing: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)stopTranscribingForCallUUID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_261754000, v0, v1, "Failed to stop transcribing: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__RTTTranscriptionController_startTranscribingV2ForCallUUID___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_261754000, v0, v1, "Failed to start transcribing V2: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__RTTTranscriptionController_stopTranscribingV2ForCallUUID___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_261754000, v0, v1, "Failed to stop transcribing V2: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end
@interface SRUIFUIBridgeClient
- (SRUIFUIBridgeClient)initWithStateHandler:(id)a3;
- (SRUIFUIBridgeClient)initWithStateHandler:(id)a3 delegateQueue:(id)a4;
- (SRUIFUIBridgeClientDelegate)delegate;
- (void)_setIsAttending:(BOOL)a3;
- (void)endForReason:(int64_t)a3;
- (void)idleAndQuietDidChange:(BOOL)a3;
- (void)newRequestWillStart;
- (void)notifySessionThatTypingStarted;
- (void)promptedUserForInput;
- (void)stopAttending;
- (void)uiBridgeServiceDetectedSpeechStart:(BOOL)a3;
- (void)uiBridgeServiceDidReceiveTasks:(id)a3;
- (void)uiBridgeServiceDidStartAttending;
- (void)uiBridgeServiceDidStopAttendingUnexpectedlyWithReason:(unint64_t)a3;
- (void)uiBridgeServiceReceivedNLRoutingDecision:(id)a3;
- (void)uiBridgeServiceReceivedRequestProgress:(id)a3;
- (void)uiBridgeServiceReceivedShowAssetsDownloadPrompt;
- (void)uiBridgeServiceReceivedSiriResponse:(id)a3;
- (void)uiBridgeServiceReceivedSpeechMitigationResult:(unint64_t)a3;
- (void)uiBridgeServiceWillStartAttending;
@end

@implementation SRUIFUIBridgeClient

- (void)newRequestWillStart
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRUIFUIBridgeClient newRequestWillStart]";
    _os_log_impl(&dword_26951F000, v2, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (SRUIFUIBridgeClient)initWithStateHandler:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v16.receiver = self;
  v16.super_class = SRUIFUIBridgeClient;
  v6 = [(SRUIFUIBridgeClient *)&v16 init];
  objc_storeStrong(&v6->_stateHandler, a3);
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[SRUIFUIBridgeClient initWithStateHandler:]";
    _os_log_impl(&dword_26951F000, v7, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - creating UIBridge client", buf, 0xCu);
  }

  v8 = [objc_alloc(MEMORY[0x277D61A20]) initWithDelegate:v6];
  client = v6->_client;
  v6->_client = v8;

  [(SUIBUIBridgeClient *)v6->_client preheat];
  v10 = dispatch_queue_create("com.apple.siri.attendingQueue", 0);
  queue = v6->_queue;
  v6->_queue = v10;

  v12 = objc_alloc_init(_TtC16SiriUIFoundation24SRUIFLatencyStateManager);
  latencyStateManager = v6->_latencyStateManager;
  v6->_latencyStateManager = v12;

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

- (SRUIFUIBridgeClient)initWithStateHandler:(id)a3 delegateQueue:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v20.receiver = self;
  v20.super_class = SRUIFUIBridgeClient;
  v8 = a4;
  v9 = [(SRUIFUIBridgeClient *)&v20 init];
  objc_storeStrong(&v9->_stateHandler, a3);
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[SRUIFUIBridgeClient initWithStateHandler:delegateQueue:]";
    _os_log_impl(&dword_26951F000, v10, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - creating UIBridge client with delegate queue", buf, 0xCu);
  }

  v11 = objc_alloc(MEMORY[0x277D61A20]);
  v12 = [v11 initWithDelegate:v9 delegateQueue:{v8, v20.receiver, v20.super_class}];

  client = v9->_client;
  v9->_client = v12;

  [(SUIBUIBridgeClient *)v9->_client preheat];
  v14 = dispatch_queue_create("com.apple.siri.attendingQueue", 0);
  queue = v9->_queue;
  v9->_queue = v14;

  v16 = objc_alloc_init(_TtC16SiriUIFoundation24SRUIFLatencyStateManager);
  latencyStateManager = v9->_latencyStateManager;
  v9->_latencyStateManager = v16;

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)idleAndQuietDidChange:(BOOL)a3
{
  if (a3 && [(SRUIFUIBridgeClient *)self isAttending])
  {
    v4 = [(SRUIFUIBridgeClient *)self _stateHandler];
    [v4 performTransitionForEvent:9];
  }
}

- (void)endForReason:(int64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v5;
    v8 = [v6 numberWithInteger:a3];
    v10 = 136315394;
    v11 = "[SRUIFUIBridgeClient endForReason:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_26951F000, v7, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - end for reason %@", &v10, 0x16u);
  }

  [(SUIBUIBridgeClient *)self->_client stopAttendingForReason:1];
  [(SUIBUIBridgeClient *)self->_client siriDismissed];
  [(SRUIFUIBridgeClient *)self _setIsAttending:0];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopAttending
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SRUIFUIBridgeClient stopAttending]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - stop attending", &v5, 0xCu);
  }

  [(SUIBUIBridgeClient *)self->_client stopAttendingForReason:1];
  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:10];
  [(SRUIFUIBridgeClient *)self _setIsAttending:0];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_setIsAttending:(BOOL)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SRUIFUIBridgeClient__setIsAttending___block_invoke;
  block[3] = &unk_279C627E0;
  objc_copyWeak(&v7, &location);
  v8 = a3;
  dispatch_sync(queue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __39__SRUIFUIBridgeClient__setIsAttending___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 32) != *(a1 + 40))
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v3 + 32);
      v6 = *(a1 + 40);
      v11 = 136315650;
      v12 = "[SRUIFUIBridgeClient _setIsAttending:]_block_invoke";
      v13 = 1024;
      v14 = v5;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&dword_26951F000, v4, OS_LOG_TYPE_DEFAULT, "%s %d => %d", &v11, 0x18u);
    }

    *(v3 + 32) = *(a1 + 40);
    v7 = objc_loadWeakRetained(v3 + 5);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(v3 + 5);
      [v9 attendingStatusChanged:*(v3 + 32)];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)promptedUserForInput
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SRUIFUIBridgeClient promptedUserForInput]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation", &v5, 0xCu);
  }

  [(SUIBUIBridgeClient *)self->_client siriPrompted];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)notifySessionThatTypingStarted
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRUIFUIBridgeClient notifySessionThatTypingStarted]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #sae prewarming for type to Siri request", &v6, 0xCu);
  }

  v4 = [objc_alloc(MEMORY[0x277D61A18]) initWithBuilder:&__block_literal_global_8];
  [(SUIBUIBridgeClient *)self->_client notifyTypingStartedWith:v4];

  v5 = *MEMORY[0x277D85DE8];
}

void __53__SRUIFUIBridgeClient_notifySessionThatTypingStarted__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  [v3 setTypingSessionId:v4];
}

- (void)uiBridgeServiceWillStartAttending
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SRUIFUIBridgeClient uiBridgeServiceWillStartAttending]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - will start attending", &v5, 0xCu);
  }

  [(SRUIFUIBridgeClient *)self _setIsAttending:1];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)uiBridgeServiceDidStartAttending
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SRUIFUIBridgeClient uiBridgeServiceDidStartAttending]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - did start attending", &v5, 0xCu);
  }

  [(SRUIFUIBridgeClient *)self _setIsAttending:1];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)uiBridgeServiceDidStopAttendingUnexpectedlyWithReason:(unint64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRUIFUIBridgeClient uiBridgeServiceDidStopAttendingUnexpectedlyWithReason:]";
    _os_log_impl(&dword_26951F000, v4, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - did stop attending", &v6, 0xCu);
  }

  [(SRUIFUIBridgeClient *)self _setIsAttending:0];
  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:10];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)uiBridgeServiceDetectedSpeechStart:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(SRUIFUIBridgeClient *)self _stateHandler];
    v8 = SRUIFSiriSessionStateGetDescription([v7 state]);
    v12 = 136315650;
    v13 = "[SRUIFUIBridgeClient uiBridgeServiceDetectedSpeechStart:]";
    v14 = 1024;
    v15 = v3;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_26951F000, v6, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - speech start detected, shouldDuckTTS: %d, currentState: %@", &v12, 0x1Cu);
  }

  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:11];
  if (v3)
  {
    self->_didDuckTTS = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    LODWORD(v10) = 1036831949;
    [WeakRetained duckTTSToVolume:&__block_literal_global_12 rampTime:v10 completion:0.5];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __58__SRUIFUIBridgeClient_uiBridgeServiceDetectedSpeechStart___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (v2)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __58__SRUIFUIBridgeClient_uiBridgeServiceDetectedSpeechStart___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[SRUIFUIBridgeClient uiBridgeServiceDetectedSpeechStart:]_block_invoke";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - successfully ducked TTS", &v12, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)uiBridgeServiceReceivedSpeechMitigationResult:(unint64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[SRUIFUIBridgeClient uiBridgeServiceReceivedSpeechMitigationResult:]";
    v15 = 2048;
    v16 = a3;
    _os_log_impl(&dword_26951F000, v6, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - mitigationResult: %ld", &v13, 0x16u);
  }

  if (a3 == 1)
  {
    v7 = 13;
  }

  else
  {
    if (a3 != 3)
    {
      goto LABEL_8;
    }

    v7 = 12;
  }

  v8 = [(SRUIFUIBridgeClient *)self _stateHandler];
  [v8 performTransitionForEvent:v7];

LABEL_8:
  if (self->_didDuckTTS)
  {
    self->_didDuckTTS = 0;
    v9 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[SRUIFUIBridgeClient uiBridgeServiceReceivedSpeechMitigationResult:]";
      _os_log_impl(&dword_26951F000, v9, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - unducking TTS", &v13, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    LODWORD(v11) = 1.0;
    [WeakRetained duckTTSToVolume:&__block_literal_global_14 rampTime:v11 completion:0.5];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __69__SRUIFUIBridgeClient_uiBridgeServiceReceivedSpeechMitigationResult___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (v2)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __69__SRUIFUIBridgeClient_uiBridgeServiceReceivedSpeechMitigationResult___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[SRUIFUIBridgeClient uiBridgeServiceReceivedSpeechMitigationResult:]_block_invoke";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - successfully unducked TTS", &v12, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)uiBridgeServiceReceivedShowAssetsDownloadPrompt
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRUIFUIBridgeClient uiBridgeServiceReceivedShowAssetsDownloadPrompt]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - Received Show Assets Download notification prompt.", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained showAssetsDownloadNotificationPrompt];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)uiBridgeServiceDidReceiveTasks:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 count];
  v6 = MEMORY[0x277CEF098];
  if (v5 >= 2)
  {
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SRUIFUIBridgeClient *)v7 uiBridgeServiceDidReceiveTasks:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  v15 = [v4 lastObject];
  v16 = [v15 taskId];

  v17 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315394;
    v24 = "[SRUIFUIBridgeClient uiBridgeServiceDidReceiveTasks:]";
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&dword_26951F000, v17, OS_LOG_TYPE_DEFAULT, "%s Siri UI received task with identifier: %@", &v23, 0x16u);
  }

  latencyStateManager = self->_latencyStateManager;
  v19 = [v16 UUIDString];
  [(SRUIFLatencyStateManager *)latencyStateManager processTaskReceivedWithIdentifier:v19];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v19) = objc_opt_respondsToSelector();

  if (v19)
  {
    v21 = objc_loadWeakRetained(&self->_delegate);
    [v21 orchestrationBeganTaskWithIdentifier:v16];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)uiBridgeServiceReceivedSiriResponse:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    [(SRUIFUIBridgeClient *)v4 uiBridgeServiceReceivedSiriResponse:v5];
  }

  v6 = [v4 inAppResponse];

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained orchestrationDidPresentResponseFullyInApp];
  }
}

- (void)uiBridgeServiceReceivedRequestProgress:(id)a3
{
  v4 = a3;
  if ([v4 progressType] == 2)
  {
    v5 = [v4 intelligenceFlowProgressUpdate];
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      [(SRUIFUIBridgeClient *)v6 uiBridgeServiceReceivedRequestProgress:v5];
    }

    [(SRUIFLatencyStateManager *)self->_latencyStateManager processLatencyProgressUpdate:v5];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      v10 = [(SRUIFLatencyStateManager *)self->_latencyStateManager getLatestLatencyInformation];
      [v9 receivedLatencyInformation:v10];
    }
  }

  else
  {
    v11 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      [(SRUIFUIBridgeClient *)v11 uiBridgeServiceReceivedRequestProgress:v4];
    }
  }
}

- (void)uiBridgeServiceReceivedNLRoutingDecision:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    [(SRUIFUIBridgeClient *)v4 uiBridgeServiceReceivedNLRoutingDecision:v5];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 receivedNLRoutingDecision:v4];
  }
}

- (SRUIFUIBridgeClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __58__SRUIFUIBridgeClient_uiBridgeServiceDetectedSpeechStart___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #IntuitiveConversation - failed to duck TTS", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __69__SRUIFUIBridgeClient_uiBridgeServiceReceivedSpeechMitigationResult___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #IntuitiveConversation - failed to unduck TTS", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)uiBridgeServiceDidReceiveTasks:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s Siri UI received more than one task. Taking the last one", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)uiBridgeServiceReceivedSiriResponse:(void *)a1 .cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 inAppResponse];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)uiBridgeServiceReceivedRequestProgress:(void *)a1 .cold.1(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 progressType];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)uiBridgeServiceReceivedRequestProgress:(void *)a1 .cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 progress];
  v10 = [a2 progressDescription];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)uiBridgeServiceReceivedNLRoutingDecision:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[SRUIFUIBridgeClient uiBridgeServiceReceivedNLRoutingDecision:]";
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_26951F000, a2, OS_LOG_TYPE_DEBUG, "%s Received uiBridgeServiceReceivedNLRoutingDecision with description: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end
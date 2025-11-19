@interface RTTUIConversationViewController
+ (BOOL)_validRectangle:(CGRect)a3;
+ (id)viewControllerForCall:(id)a3;
+ (id)viewControllerForConversation:(id)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)currentCallIsDowngraded;
- (BOOL)isCurrentCallConnected;
- (BOOL)isCurrentCallOnHold;
- (BOOL)isCurrentCallReceivingOnHold;
- (BOOL)isCurrentCallSendingOnHold;
- (BOOL)isIncomingScreeningCall;
- (BOOL)showTextViewForCurrentCall;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)utteranceIsSelected;
- (RTTUIConversationViewController)init;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_holdButtonItem;
- (id)_muteButtonItem;
- (id)_updateTableViewUtteranceOldCount:(unint64_t)a3 newCount:(unint64_t)a4;
- (id)addTranscriptionText:(id)a3 isNew:(BOOL)a4;
- (id)addTranslatedTranscriptionText:(id)a3 translatedText:(id)a4 isNew:(BOOL)a5;
- (id)addUtterance:(id)a3;
- (id)cannedResponses;
- (id)contactDisplayString;
- (id)currentContactPath;
- (id)lastConversationRowPathForUtterance:(id)a3;
- (id)serviceUpdateCellAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)utteranceCellAtIndexPath:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addServiceCellWithUpdate:(id)a3 options:(id)a4;
- (void)_define:(id)a3;
- (void)_processRealtimeTimeout;
- (void)_removeServiceCellWithUpdate:(id)a3;
- (void)_replaceServiceCellWithOldUpdate:(id)a3 withNewUpdate:(id)a4 options:(id)a5;
- (void)_scrollToIndexPathIfNecessary:(id)a3 animated:(BOOL)a4;
- (void)_updateTableViewRowAtIndexPath:(id)a3 action:(int64_t)a4 animation:(int64_t)a5;
- (void)_updateTableViewRowsAtIndexPaths:(id)a3 action:(int64_t)a4 animation:(int64_t)a5;
- (void)addServiceCellWithUpdate:(id)a3 options:(id)a4;
- (void)callDidConnect:(id)a3;
- (void)dealloc;
- (void)deviceDidReceiveString:(id)a3 forUtterance:(id)a4;
- (void)deviceDidReceiveTranslation:(id)a3 forUtterance:(id)a4;
- (void)gaButtonPressed:(id)a3;
- (void)logCallHold:(BOOL)a3;
- (void)realtimeTextDidChange;
- (void)removeServiceCellWithUpdate:(id)a3;
- (void)replaceServiceCellWithOldUpdate:(id)a3 withNewUpdate:(id)a4 options:(id)a5;
- (void)setCall:(id)a3;
- (void)setTextViewUtterance:(id)a3;
- (void)setupTableView;
- (void)shareCallInfo:(id)a3;
- (void)showCallEnded;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
- (void)toggleHold:(id)a3;
- (void)toggleMute:(id)a3;
- (void)updateBarButtons;
- (void)updateCallDowngradeStatus;
- (void)updateCallHold:(id)a3;
- (void)updateDeviceLockStatus:(BOOL)a3;
- (void)updateGAButton;
- (void)updateTableViewSizeAnimated:(BOOL)a3;
- (void)updateUtterance:(id)a3 forIndexPath:(id)a4;
- (void)updateVoiceOverAnnouncement:(id)a3;
- (void)utteranceCellDidUpdateContent:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation RTTUIConversationViewController

+ (id)viewControllerForCall:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(RTTUIConversationViewController);
  v5 = +[RTTUIConversationControllerCoordinator sharedInstance];
  [v5 addConversationController:v4];

  [(RTTUIConversationViewController *)v4 setCall:v3];

  return v4;
}

+ (id)viewControllerForConversation:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(RTTUIConversationViewController);
  [(RTTUIConversationViewController *)v4 setConversation:v3];
  v5 = +[RTTUIConversationControllerCoordinator sharedInstance];
  [v5 addConversationController:v4];

  if (_AXSInUnitTestMode())
  {
    v6 = [v3 call];
    call = v4->_call;
    v4->_call = v6;
  }

  return v4;
}

- (RTTUIConversationViewController)init
{
  v23.receiver = self;
  v23.super_class = RTTUIConversationViewController;
  v2 = [(RTTUIConversationViewController *)&v23 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_callDidConnect_ name:*MEMORY[0x277D6EFF0] object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v2 selector:sel_callDidConnect_ name:*MEMORY[0x277D6F100] object:0];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel_callDidConnect_ name:*MEMORY[0x277D6F078] object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel_updateCallHold_ name:*MEMORY[0x277D6F0B8] object:0];

    v7 = objc_alloc(MEMORY[0x277CE6950]);
    v8 = MEMORY[0x277D85CD0];
    v9 = [v7 initWithTargetSerialQueue:MEMORY[0x277D85CD0]];
    realTimeTimeout = v2->_realTimeTimeout;
    v2->_realTimeTimeout = v9;

    [(AXDispatchTimer *)v2->_realTimeTimeout setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    v11 = [objc_alloc(MEMORY[0x277CE6950]) initWithTargetSerialQueue:v8];
    muteStatusTimeout = v2->_muteStatusTimeout;
    v2->_muteStatusTimeout = v11;

    [(AXDispatchTimer *)v2->_muteStatusTimeout setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    objc_initWeak(&location, v2);
    v13 = [MEMORY[0x277D440D8] sharedInstance];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __39__RTTUIConversationViewController_init__block_invoke;
    v20[3] = &unk_279AE4F50;
    objc_copyWeak(&v21, &location);
    [v13 registerUpdateBlock:v20 forRetrieveSelector:sel_ttyShouldBeRealtime withListener:v2];

    v14 = objc_opt_new();
    serviceUpdates = v2->_serviceUpdates;
    v2->_serviceUpdates = v14;

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __39__RTTUIConversationViewController_init__block_invoke_2;
    handler[3] = &unk_279AE4F78;
    objc_copyWeak(&v19, &location);
    notify_register_dispatch("com.apple.springboard.passcodeLockedOrBlocked", &v2->_lockStateNotifyToken, MEMORY[0x277D85CD0], handler);

    objc_copyWeak(&v17, &location);
    AXPerformBlockOnMainThreadAfterDelay();
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __39__RTTUIConversationViewController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateGAButton];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setTextViewUtterance:&stru_2873F89E0];
}

void __39__RTTUIConversationViewController_init__block_invoke_2(uint64_t a1, int token)
{
  v9 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = state64;
  v4 = AXLogRTT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v8 = v3 != 0;
    _os_log_impl(&dword_261725000, v4, OS_LOG_TYPE_INFO, "Device lock state changed: %d", buf, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateDeviceLockStatus:v3 != 0];
}

void __39__RTTUIConversationViewController_init__block_invoke_339(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  out_token = 0;
  notify_register_check("com.apple.springboard.passcodeLockedOrBlocked", &out_token);
  v5 = 0;
  notify_get_state(out_token, &v5);
  v2 = v5;
  v3 = AXLogRTT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v8 = v2 != 0;
    _os_log_impl(&dword_261725000, v3, OS_LOG_TYPE_INFO, "Initial device lock state: %d", buf, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateDeviceLockStatus:v2 != 0];
}

- (void)setCall:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!self->_conversation)
  {
    v6 = AXLogRTT();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v18 = self;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_261725000, v6, OS_LOG_TYPE_INFO, "%@: No initial conversation, requesting conversation: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v7 = MEMORY[0x277D440B8];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __43__RTTUIConversationViewController_setCall___block_invoke;
    v15[3] = &unk_279AE4FC8;
    objc_copyWeak(&v16, buf);
    [v7 conversationWithCall:v5 withCallback:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  objc_storeStrong(&self->_call, a3);
  v8 = [v5 supportsTTYWithVoice];
  asciiSubstitutions = self->_asciiSubstitutions;
  if (v8)
  {
    self->_asciiSubstitutions = &unk_2873FB870;

    v10 = [MEMORY[0x277CCAB50] characterSetWithCharactersInString:@"\n"];
    unsupportedCharacterSet = self->_unsupportedCharacterSet;
    self->_unsupportedCharacterSet = v10;
  }

  else
  {
    self->_asciiSubstitutions = &unk_2873FB898;

    v12 = [MEMORY[0x277CCAB50] characterSetWithRange:{32, 95}];
    v13 = self->_unsupportedCharacterSet;
    self->_unsupportedCharacterSet = v12;

    [(NSMutableCharacterSet *)self->_unsupportedCharacterSet invert];
  }

  [(RTTUIConversationViewController *)self updateBarButtons];
  v14 = [MEMORY[0x277D440C8] sharedInstance];
  [v14 setShouldSuppressIncomingNotification:{-[RTTUIConversationViewController isCurrentCallConnected](self, "isCurrentCallConnected")}];
}

void __43__RTTUIConversationViewController_setCall___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  AXPerformBlockOnMainThreadAfterDelay();

  objc_destroyWeak(&v5);
}

void __43__RTTUIConversationViewController_setCall___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setConversation:v2];

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 tableView];
  [v5 reloadData];

  v6 = AXLogRTT();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_261725000, v6, OS_LOG_TYPE_INFO, "Received conversation: %@", &v12, 0xCu);
  }

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 rttConversationAvailabilityCallback];

  if (v9)
  {
    v10 = objc_loadWeakRetained((a1 + 40));
    v11 = [v10 rttConversationAvailabilityCallback];
    v11[2](v11, *(a1 + 32));
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D440C8] sharedInstance];
  [v3 setShouldSuppressIncomingNotification:0];

  [(RTTUIConversationViewController *)self setLookupController:0];
  [(BSInvalidatable *)self->_sleepTimerDisabledAssertion invalidate];
  notify_cancel(self->_lockStateNotifyToken);
  v4.receiver = self;
  v4.super_class = RTTUIConversationViewController;
  [(RTTUIConversationViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = RTTUIConversationViewController;
  [(RTTUIConversationViewController *)&v3 viewDidLoad];
  [(RTTUIConversationViewController *)self setupTableView];
  [(RTTUIConversationViewController *)self callDidConnect:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = self;
    _os_log_impl(&dword_261725000, v5, OS_LOG_TYPE_INFO, "RTT view controller will appear: %@", buf, 0xCu);
  }

  v14.receiver = self;
  v14.super_class = RTTUIConversationViewController;
  [(RTTUIConversationViewController *)&v14 viewWillAppear:v3];
  if ([(RTTUIConversationViewController *)self isCurrentCallConnected])
  {
    v6 = [(RTTUIConversationViewController *)self call];
    v7 = [v6 status];

    if (v7 != 1)
    {
LABEL_14:
      v13 = [MEMORY[0x277D440C8] sharedInstance];
      [v13 setShouldSuppressIncomingNotification:1];

      return;
    }

    if (![(RTTUIConversationViewController *)self isIncomingScreeningCall])
    {
      [(RTTUITextView *)self->_textView becomeFirstResponder];
      [(RTTUITextView *)self->_textView updateTTYBar];
    }

    v8 = [(RTTUIConversationViewController *)self conversation];
    v9 = [v8 utterances];
    v10 = [v9 lastObject];

    v11 = [(RTTUIConversationViewController *)self call];
    if (+[RTTUIUtilities ttyShouldBeRealtimeForCall:](RTTUIUtilities, "ttyShouldBeRealtimeForCall:", v11) && [v10 isMe] && (objc_msgSend(v10, "isComplete") & 1) == 0)
    {
      v12 = [v10 hasTimedOut];

      if (v12)
      {
LABEL_13:

        goto LABEL_14;
      }

      v11 = [v10 text];
      [(RTTUIConversationViewController *)self setTextViewUtterance:v11];
    }

    goto LABEL_13;
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = self;
    _os_log_impl(&dword_261725000, v5, OS_LOG_TYPE_INFO, "RTT view controller will disappear: %@", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = RTTUIConversationViewController;
  [(RTTUIConversationViewController *)&v7 viewWillDisappear:v3];
  [(RTTUITextView *)self->_textView overrideTTYPredictionsHidden:1];
  v6 = [MEMORY[0x277D440C8] sharedInstance];
  [v6 setShouldSuppressIncomingNotification:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x277D85DE8];
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = self;
    _os_log_impl(&dword_261725000, v5, OS_LOG_TYPE_INFO, "RTT view controller disappeared: %@", buf, 0xCu);
  }

  v11.receiver = self;
  v11.super_class = RTTUIConversationViewController;
  [(RTTUIConversationViewController *)&v11 viewDidDisappear:v3];
  if (soft_AXProcessIsInCallService())
  {
    v6 = [MEMORY[0x277D440C8] sharedInstance];
    v7 = [(RTTUIConversationViewController *)self call];
    v8 = [v7 callUUID];
    [v6 setViewControllerIsVisible:0 withCallID:v8];
  }

  sleepTimerDisabledAssertion = self->_sleepTimerDisabledAssertion;
  if (sleepTimerDisabledAssertion)
  {
    [(BSInvalidatable *)sleepTimerDisabledAssertion invalidate];
    v10 = self->_sleepTimerDisabledAssertion;
    self->_sleepTimerDisabledAssertion = 0;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_261725000, v5, OS_LOG_TYPE_INFO, "RTT view controller appeared: %@", &buf, 0xCu);
  }

  v14.receiver = self;
  v14.super_class = RTTUIConversationViewController;
  [(RTTUIConversationViewController *)&v14 viewDidAppear:v3];
  if (soft_AXProcessIsInCallService())
  {
    v6 = [MEMORY[0x277D440C8] sharedInstance];
    v7 = [(RTTUIConversationViewController *)self call];
    v8 = [v7 callUUID];
    [v6 setViewControllerIsVisible:1 withCallID:v8];
  }

  if (!self->_sleepTimerDisabledAssertion)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v9 = getAXUserEventTimerClass_softClass;
    v18 = getAXUserEventTimerClass_softClass;
    if (!getAXUserEventTimerClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v20 = __getAXUserEventTimerClass_block_invoke;
      v21 = &unk_279AE4F10;
      v22 = &v15;
      __getAXUserEventTimerClass_block_invoke(&buf);
      v9 = v16[3];
    }

    v10 = v9;
    _Block_object_dispose(&v15, 8);
    v11 = [v9 sharedInstance];
    v12 = [v11 acquireAssertionToDisableIdleTimerWithReason:@"RealTimeText"];
    sleepTimerDisabledAssertion = self->_sleepTimerDisabledAssertion;
    self->_sleepTimerDisabledAssertion = v12;
  }

  [(RTTUIConversationViewController *)self updateBarButtons];
}

- (void)updateDeviceLockStatus:(BOOL)a3
{
  v3 = a3;
  if ([(RTTUIConversationViewController *)self isIncomingScreeningCall]&& v3)
  {
    v5 = AXLogRTT();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_261725000, v5, OS_LOG_TYPE_INFO, "Springboard locked", buf, 2u);
    }

    [(RTTUIConversationViewController *)self addServiceCellWithUpdate:*MEMORY[0x277D44110] options:0];
  }

  else
  {
    [(RTTUIConversationViewController *)self removeServiceCellWithUpdate:*MEMORY[0x277D44110]];
  }

  v6 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
  v7 = MEMORY[0x277D75D18];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__RTTUIConversationViewController_updateDeviceLockStatus___block_invoke;
  v9[3] = &unk_279AE4E50;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 performWithoutAnimation:v9];
}

void __58__RTTUIConversationViewController_updateDeviceLockStatus___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 reloadSections:*(a1 + 40) withRowAnimation:100];
}

- (void)updateCallDowngradeStatus
{
  if ([(RTTUIConversationViewController *)self currentCallIsDowngraded])
  {
    v3 = AXLogRTT();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_261725000, v3, OS_LOG_TYPE_INFO, "Call downgraded", v6, 2u);
    }

    [(RTTUIConversationViewController *)self addServiceCellWithUpdate:*MEMORY[0x277D440F8] options:0];
    v4 = [(RTTUIConversationViewController *)self call];
    v5 = [v4 isUplinkMuted];

    if (v5)
    {
      [(RTTUIConversationViewController *)self toggleMute:0];
    }
  }

  else
  {
    [(RTTUIConversationViewController *)self removeServiceCellWithUpdate:*MEMORY[0x277D440F8]];
  }

  [(RTTUIConversationViewController *)self updateInputEnabled];
}

- (void)callDidConnect:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__0;
  v36 = __Block_byref_object_dispose__0;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __50__RTTUIConversationViewController_callDidConnect___block_invoke;
  v19[3] = &unk_279AE4FF0;
  v19[4] = &v32;
  v19[5] = &v26;
  v19[6] = &v20;
  [MEMORY[0x277D440E0] performCallCenterTask:v19];
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(RTTUIConversationViewController *)self call];
    *buf = 138412290;
    v39 = v6;
    _os_log_impl(&dword_261725000, v5, OS_LOG_TYPE_INFO, "Call did connect %@", buf, 0xCu);
  }

  v7 = AXLogRTT();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v33[5];
    *buf = 138412290;
    v39 = v8;
    _os_log_impl(&dword_261725000, v7, OS_LOG_TYPE_INFO, "Current call list %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = [(RTTUIConversationViewController *)self call];
  v10 = [v9 status];

  if ([(RTTUIConversationViewController *)self isCurrentCallConnected])
  {
    if ([v27[5] count] || objc_msgSend(v21[5], "count"))
    {
      v17[1] = MEMORY[0x277D85DD0];
      v17[2] = 3221225472;
      v17[3] = __50__RTTUIConversationViewController_callDidConnect___block_invoke_401;
      v17[4] = &unk_279AE4F50;
      objc_copyWeak(&v18, buf);
      AXPerformBlockOnMainThread();
      objc_destroyWeak(&v18);
    }

    else
    {
      [(RTTUIConversationViewController *)self updateCallDowngradeStatus];
      if (![(RTTUIConversationViewController *)self currentCallIsDowngraded])
      {
        v11 = +[RTTUIConversationControllerCoordinator sharedInstance];
        v12 = [(RTTUIConversationViewController *)self call];
        v13 = [v12 callUUID];
        [v11 registerForCallUpdates:v13];

        v16[1] = MEMORY[0x277D85DD0];
        v16[2] = 3221225472;
        v16[3] = __50__RTTUIConversationViewController_callDidConnect___block_invoke_2;
        v16[4] = &unk_279AE4F50;
        objc_copyWeak(v17, buf);
        AXPerformBlockOnMainThread();
        BKSHIDServicesRequestProximityDetectionMode();
        [(RTTUIConversationViewController *)self updateCallHold:0];
        v14 = [MEMORY[0x277D440C8] sharedInstance];
        [v14 setShouldSuppressIncomingNotification:1];

        objc_destroyWeak(v17);
      }
    }
  }

  else if ((v10 - 5) <= 1)
  {
    v15 = self->_textView;
    objc_copyWeak(v16, buf);
    AXPerformBlockOnMainThread();
    objc_destroyWeak(v16);
  }

  objc_destroyWeak(buf);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
}

void __50__RTTUIConversationViewController_callDidConnect___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277D440E0] sharedCallCenter];
  v3 = [v2 currentCalls];
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [MEMORY[0x277D440E0] sharedCallCenter];
  v7 = [v6 callsWithStatus:4];
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v13 = [MEMORY[0x277D440E0] sharedCallCenter];
  v10 = [v13 callsWithStatus:3];
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void __50__RTTUIConversationViewController_callDidConnect___block_invoke_401(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained navigationController];
  v2 = [v1 popViewControllerAnimated:1];
}

void __50__RTTUIConversationViewController_callDidConnect___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateTableViewSizeAnimated:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 navigationController];
  v10 = [v4 navigationBar];

  if (soft_AXProcessIsInCallService())
  {
    [v10 setBarStyle:1];
    [v10 setBackgroundImage:0 forBarMetrics:0];
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 call];
  if ([v6 supportsTTYWithVoice])
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 call];
    v9 = [v8 ttyType];

    if (!v9)
    {
      goto LABEL_8;
    }

    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 updateBarButtons];
  }

  else
  {
  }

LABEL_8:
}

void __50__RTTUIConversationViewController_callDidConnect___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) overrideTTYPredictionsHidden:1];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained navigationController];
  v4 = [v3 popViewControllerAnimated:1];

  if (soft_AXProcessIsRTTNotificationContentExtension())
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 showCallEnded];
  }
}

- (void)updateCallHold:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = [(RTTUIConversationViewController *)self isCurrentCallReceivingOnHold];
  v5 = [(RTTUIConversationViewController *)self isCurrentCallSendingOnHold];
  v6 = [(TUCall *)self->_call isConnected];
  v7 = AXLogRTT();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      call = self->_call;
      *buf = 67109634;
      v25 = v4;
      v26 = 1024;
      v27 = v5;
      v28 = 2112;
      v29 = call;
      _os_log_impl(&dword_261725000, v8, OS_LOG_TYPE_DEFAULT, "Call hold status: %d | %d, %@", buf, 0x18u);
    }

    if (v5)
    {
      v10 = *MEMORY[0x277D44108];
      v11 = *MEMORY[0x277D44120];
      v22 = *MEMORY[0x277D440F0];
      v12 = [(RTTUIConversationViewController *)self contactDisplayString];
      v23 = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v14 = self;
      v15 = v10;
      v16 = v11;
    }

    else
    {
      v18 = *MEMORY[0x277D44120];
      if (!v4)
      {
        [(RTTUIConversationViewController *)self removeServiceCellWithUpdate:*MEMORY[0x277D44120]];
        [(RTTUIConversationViewController *)self removeServiceCellWithUpdate:*MEMORY[0x277D44108]];
        goto LABEL_13;
      }

      v19 = *MEMORY[0x277D44108];
      v12 = [(RTTUIConversationViewController *)self contactDisplayString];
      v21 = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v14 = self;
      v15 = v18;
      v16 = v19;
    }

    [(RTTUIConversationViewController *)v14 replaceServiceCellWithOldUpdate:v15 withNewUpdate:v16 options:v13];

LABEL_13:
    [(RTTUIConversationViewController *)self _updateBarButtonState];
    [(RTTUIConversationViewController *)self updateInputEnabled];
    return;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v17 = self->_call;
    *buf = 67109634;
    v25 = v4;
    v26 = 1024;
    v27 = v5;
    v28 = 2112;
    v29 = v17;
    _os_log_impl(&dword_261725000, v8, OS_LOG_TYPE_INFO, "Call not connected, not showing hold status: (hold: %d | %d): %@", buf, 0x18u);
  }
}

- (void)showCallEnded
{
  v3 = AXLogRTT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_261725000, v3, OS_LOG_TYPE_INFO, "Showing call ended service message", v4, 2u);
  }

  [(RTTUIConversationViewController *)self addServiceCellWithUpdate:*MEMORY[0x277D44100] options:0];
  [(RTTUIConversationViewController *)self updateInputEnabled];
}

- (BOOL)showTextViewForCurrentCall
{
  v3 = [(RTTUIConversationViewController *)self call];
  if ([v3 isConnected])
  {
    v4 = ![(RTTUIConversationViewController *)self isIncomingScreeningCall];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isIncomingScreeningCall
{
  v3 = [(RTTUIConversationViewController *)self call];
  if ([v3 isScreening])
  {
    v4 = [(RTTUIConversationViewController *)self call];
    v5 = [v4 isIncoming];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __56__RTTUIConversationViewController__updateBarButtonState__block_invoke(uint64_t a1)
{
  v2 = _UISolariumEnabled();
  v3 = [*(a1 + 32) navigationController];
  v4 = [v3 navigationBar];
  v5 = [v4 topItem];
  v6 = v5;
  if (v2)
  {
    v7 = [v5 pinnedTrailingGroup];
    v8 = [v7 barButtonItems];
  }

  else
  {
    v8 = [v5 rightBarButtonItems];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__RTTUIConversationViewController__updateBarButtonState__block_invoke_2;
  v9[3] = &unk_279AE5040;
  v9[4] = *(a1 + 32);
  [v8 enumerateObjectsUsingBlock:v9];
}

void __56__RTTUIConversationViewController__updateBarButtonState__block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 accessibilityIdentifier];
  v5 = [v4 isEqualToString:@"BarButtonMuteIdentifier"];

  if (v5)
  {
    v6 = [*(a1 + 32) isCurrentCallSendingOnHold];
    v7 = [*(a1 + 32) call];
    v8 = [v7 isUplinkMuted] | v6;

    v9 = AXLogRTT();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v18 = 67109376;
      v19 = v8 & 1;
      v20 = 1024;
      v21 = v6 & 1;
      _os_log_impl(&dword_261725000, v9, OS_LOG_TYPE_INFO, "Setting mute button state for muted %d held %d", &v18, 0xEu);
    }

    if (_UISolariumEnabled())
    {
      [v3 setSelected:v8 & 1];
      [v3 setEnabled:(v6 & 1) == 0];
LABEL_16:
      v15 = ttyLocString();
      [v3 setAccessibilityValue:v15];
      goto LABEL_17;
    }

    v15 = [v3 customView];
    [v15 setSelected:v8 & 1];
    [v15 setEnabled:(v6 & 1) == 0];
    goto LABEL_14;
  }

  v10 = [v3 accessibilityIdentifier];
  v11 = [v10 isEqualToString:@"BarButtonHoldIdentifier"];

  if (v11)
  {
    v12 = [*(a1 + 32) isCurrentCallSendingOnHold];
    v13 = [*(a1 + 32) isCurrentCallReceivingOnHold] & (v12 ^ 1);
    v14 = AXLogRTT();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v18 = 67109376;
      v19 = v12 & 1;
      v20 = 1024;
      v21 = v13 ^ 1;
      _os_log_impl(&dword_261725000, v14, OS_LOG_TYPE_INFO, "Setting hold button state for held %d enabled %d", &v18, 0xEu);
    }

    if (_UISolariumEnabled())
    {
      [v3 setSelected:v12 & 1];
      if (v13)
      {
        [v3 setEnabled:0];
      }

      else
      {
        v17 = [*(a1 + 32) call];
        [v3 setEnabled:{objc_msgSend(v17, "isEmergency") ^ 1}];
      }

      goto LABEL_16;
    }

    v15 = [v3 customView];
    [v15 setSelected:v12 & 1];
    [v15 setEnabled:v13 ^ 1u];
LABEL_14:
    v16 = ttyLocString();
    [v15 setAccessibilityValue:v16];

LABEL_17:
  }
}

- (void)updateBarButtons
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(RTTUIConversationViewController *)self navigationController];
  v4 = [v3 navigationBar];
  v5 = [v4 topItem];
  v6 = [v5 rightBarButtonItems];
  v7 = [v6 count];

  if (!v7)
  {
    v8 = objc_opt_new();
    v9 = [(RTTUIConversationViewController *)self call];

    if (!v9)
    {
      v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:9 target:self action:sel_shareCallInfo_];
      [v8 addObject:v10];
    }

    v11 = [(RTTUIConversationViewController *)self call];
    v12 = [v11 supportsTTYWithVoice];

    if (v12)
    {
      v13 = [(RTTUIConversationViewController *)self _muteButtonItem];
      [v13 setAccessibilityIdentifier:@"BarButtonMuteIdentifier"];
      [v8 addObject:v13];
    }

    v14 = [MEMORY[0x277D440E0] sharedUtilityProvider];
    v15 = [(RTTUIConversationViewController *)self call];
    v16 = [v14 contextForCall:v15];

    v17 = [MEMORY[0x277D440D8] sharedInstance];
    v18 = [v17 rttCallHoldEnabled];

    v19 = [MEMORY[0x277D440E0] isRTTCallHoldSupportedForContext:v16];
    v20 = v19;
    if ((v18 & v12) == 1 && v19)
    {
      if ((_UISolariumEnabled() & 1) == 0)
      {
        v21 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:6 target:0 action:0];
        [v21 setWidth:24.0];
        [v8 addObject:v21];
      }

      v22 = [(RTTUIConversationViewController *)self _holdButtonItem];
      [v22 setAccessibilityIdentifier:@"BarButtonHoldIdentifier"];
      v23 = [(RTTUIConversationViewController *)self call];
      [v22 setEnabled:{objc_msgSend(v23, "isEmergency") ^ 1}];

      [v8 addObject:v22];
    }

    else
    {
      v24 = AXLogRTT();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v32[0] = 67109632;
        v32[1] = v18;
        v33 = 1024;
        v34 = v12;
        v35 = 1024;
        v36 = v20;
        _os_log_impl(&dword_261725000, v24, OS_LOG_TYPE_INFO, "Disabled RTT Hold Feature: %d %d %d", v32, 0x14u);
      }
    }

    if (_UISolariumEnabled())
    {
      v25 = objc_alloc(MEMORY[0x277D751F0]);
      v26 = [v8 reverseObjectEnumerator];
      v27 = [v26 allObjects];
      v28 = [v25 initWithBarButtonItems:v27 representativeItem:0];

      v29 = [(RTTUIConversationViewController *)self navigationController];
      v30 = [v29 navigationBar];
      v31 = [v30 topItem];
      [v31 setPinnedTrailingGroup:v28];
    }

    else
    {
      v28 = [(RTTUIConversationViewController *)self navigationController];
      v29 = [v28 navigationBar];
      v30 = [v29 topItem];
      [v30 setRightBarButtonItems:v8];
    }
  }

  [(RTTUIConversationViewController *)self _updateBarButtonState];
}

- (id)_muteButtonItem
{
  if (_UISolariumEnabled())
  {
    v3 = objc_alloc(MEMORY[0x277D751E0]);
    v4 = [MEMORY[0x277D755B8] _systemImageNamed:@"mic.slash.fill"];
    v5 = [v3 initWithImage:v4 style:0 target:self action:sel_toggleMute_];
  }

  else
  {
    v6 = [MEMORY[0x277D755B8] _systemImageNamed:@"mic.slash.fill"];
    v4 = [v6 _imageThatSuppressesAccessibilityHairlineThickening];

    v7 = ttyImageNamed(@"ttyMuteCircle");
    v8 = [MEMORY[0x277D75348] systemFillColor];
    v9 = [v7 imageWithTintColor:v8];
    v10 = [v9 _imageThatSuppressesAccessibilityHairlineThickening];

    v11 = ttyImageNamed(@"ttyMuteCircle");
    v12 = [MEMORY[0x277D75348] systemWhiteColor];
    v13 = [v11 imageWithTintColor:v12];
    v14 = [v13 _imageThatSuppressesAccessibilityHairlineThickening];

    v15 = [MEMORY[0x277D75220] buttonWithType:0];
    [v15 addTarget:self action:sel_toggleMute_ forControlEvents:64];
    v16 = [MEMORY[0x277D75348] systemWhiteColor];
    v17 = [v4 imageWithTintColor:v16 renderingMode:1];
    [v15 setImage:v17 forState:0];

    v18 = [MEMORY[0x277D75348] systemBlackColor];
    v19 = [v4 imageWithTintColor:v18 renderingMode:1];
    [v15 setImage:v19 forState:4];

    [v15 setBackgroundImage:v10 forState:0];
    [v15 setBackgroundImage:v14 forState:4];
    [v15 sizeToFit];
    v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v15];
  }

  return v5;
}

- (id)_holdButtonItem
{
  if (_UISolariumEnabled())
  {
    v3 = objc_alloc(MEMORY[0x277D751E0]);
    v4 = [MEMORY[0x277D755B8] _systemImageNamed:@"pause.fill"];
    v5 = [v3 initWithImage:v4 style:0 target:self action:sel_toggleHold_];
  }

  else
  {
    v6 = [MEMORY[0x277D755B8] _systemImageNamed:@"pause.fill"];
    v4 = [v6 _imageThatSuppressesAccessibilityHairlineThickening];

    v7 = ttyImageNamed(@"ttyMuteCircle");
    v8 = [MEMORY[0x277D75348] systemFillColor];
    v9 = [v7 imageWithTintColor:v8];
    v10 = [v9 _imageThatSuppressesAccessibilityHairlineThickening];

    v11 = ttyImageNamed(@"ttyMuteCircle");
    v12 = [MEMORY[0x277D75348] systemWhiteColor];
    v13 = [v11 imageWithTintColor:v12];
    v14 = [v13 _imageThatSuppressesAccessibilityHairlineThickening];

    v15 = [MEMORY[0x277D75220] buttonWithType:0];
    [v15 addTarget:self action:sel_toggleHold_ forControlEvents:64];
    v16 = [MEMORY[0x277D75348] systemBlackColor];
    v17 = [v4 imageWithTintColor:v16 renderingMode:1];
    [v15 setImage:v17 forState:4];

    v18 = [MEMORY[0x277D75348] systemWhiteColor];
    v19 = [v4 imageWithTintColor:v18 renderingMode:1];
    [v15 setImage:v19 forState:0];

    [v15 setBackgroundImage:v10 forState:0];
    [v15 setBackgroundImage:v14 forState:4];
    [v15 sizeToFit];
    v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v15];
  }

  return v5;
}

- (void)toggleMute:(id)a3
{
  v3 = MEMORY[0x277D440E0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__RTTUIConversationViewController_toggleMute___block_invoke;
  v6[3] = &unk_279AE4E98;
  v6[4] = self;
  v4 = [(RTTUIConversationViewController *)self call];
  v5 = [v4 callCenter];
  [v3 performCallCenterTask:v6 callCenter:v5];
}

void __46__RTTUIConversationViewController_toggleMute___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) call];
  v3 = [v2 isUplinkMuted];

  v4 = AXLogRTT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v3 ^ 1;
    _os_log_impl(&dword_261725000, v4, OS_LOG_TYPE_INFO, "Toggling TTY mute: New value: %d", &buf, 8u);
  }

  v5 = [*(a1 + 32) call];
  if ([v5 isTTY])
  {
    v6 = [*(a1 + 32) call];
    v7 = [v6 supportsTTYWithVoice];

    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = AXLogRTT();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v8;
    _os_log_impl(&dword_261725000, v9, OS_LOG_TYPE_INFO, "Will toggle downlink mute: %d", &buf, 8u);
  }

  if (v8)
  {
    v10 = [MEMORY[0x277D440C8] sharedInstance];
    v11 = [*(a1 + 32) call];
    v12 = [v11 callUUID];
    [v10 setSystemOutputAudioMuted:v3 ^ 1u withCallID:v12];
  }

  v14 = *(a1 + 32);
  v13 = (a1 + 32);
  v15 = [v14 call];
  [v15 setUplinkMuted:v3 ^ 1u];

  [*v13 _updateBarButtonState];
  if (v3)
  {
    v16 = MEMORY[0x277D44130];
  }

  else
  {
    v16 = MEMORY[0x277D44118];
  }

  v17 = *v16;
  if (v3)
  {
    v18 = MEMORY[0x277D44118];
  }

  else
  {
    v18 = MEMORY[0x277D44130];
  }

  v19 = v17;
  v20 = *v18;
  [*v13 replaceServiceCellWithOldUpdate:v20 withNewUpdate:v19 options:0];
  objc_initWeak(&buf, *v13);
  v21 = *(*v13 + 129);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __46__RTTUIConversationViewController_toggleMute___block_invoke_442;
  v23[3] = &unk_279AE4FA0;
  objc_copyWeak(&v25, &buf);
  v22 = v19;
  v24 = v22;
  [v21 afterDelay:v23 processBlock:2.0];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&buf);
}

void __46__RTTUIConversationViewController_toggleMute___block_invoke_442(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeServiceCellWithUpdate:*(a1 + 32)];
}

- (void)toggleHold:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__RTTUIConversationViewController_toggleHold___block_invoke;
  v3[3] = &unk_279AE4E98;
  v3[4] = self;
  [MEMORY[0x277D440E0] performCallCenterTask:v3];
}

uint64_t __46__RTTUIConversationViewController_toggleHold___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isCurrentCallSendingOnHold];
  v3 = AXLogRTT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = v2 ^ 1;
    _os_log_impl(&dword_261725000, v3, OS_LOG_TYPE_INFO, "Setting RTT call on hold -> %d", v7, 8u);
  }

  v4 = [MEMORY[0x277D440E0] sharedCallCenter];
  v5 = [*(a1 + 32) call];
  if (v2)
  {
    [v4 unholdCall:v5];
  }

  else
  {
    [v4 holdCall:v5];
  }

  [*(a1 + 32) logCallHold:v2 ^ 1u];
  [*(a1 + 32) updateCallHold:0];
  [*(a1 + 32) _updateBarButtonState];
  return [*(a1 + 32) updateInputEnabled];
}

- (void)logCallHold:(BOOL)a3
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RTTUIConversationViewController_logCallHold___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v6 = a3;
  dispatch_async(v4, block);
}

void __47__RTTUIConversationViewController_logCallHold___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = AXLogAggregate();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 67109120;
    v9 = v3;
    _os_log_impl(&dword_261725000, v2, OS_LOG_TYPE_INFO, "RTT call placed upstream hold: %d", buf, 8u);
  }

  v4 = [MEMORY[0x277CCABB0] numberWithBool:{*(a1 + 32), @"callHeld"}];
  v7 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  AnalyticsSendEvent();
}

- (id)contactDisplayString
{
  v3 = [(RTTUIConversationViewController *)self call];
  v4 = [v3 displayName];

  if (![v4 length])
  {
    v5 = MEMORY[0x277CBDA78];
    v6 = MEMORY[0x277CBDA58];
    v7 = [(RTTUIConversationViewController *)self conversation];
    v8 = [v7 otherContactPath];
    v9 = [v6 contactForPhoneNumber:v8];
    v10 = [v5 stringFromContact:v9 style:0];

    v4 = v10;
  }

  if (![v4 length])
  {
    v11 = [(RTTUIConversationViewController *)self conversation];
    v12 = [v11 otherContactPath];

    v4 = v12;
  }

  return v4;
}

- (BOOL)isCurrentCallConnected
{
  v2 = [(RTTUIConversationViewController *)self call];
  v3 = [v2 status];

  return (v3 - 1) < 2;
}

- (BOOL)isCurrentCallOnHold
{
  if ([(RTTUIConversationViewController *)self isCurrentCallReceivingOnHold])
  {
    return 1;
  }

  return [(RTTUIConversationViewController *)self isCurrentCallSendingOnHold];
}

- (BOOL)isCurrentCallReceivingOnHold
{
  v2 = [(RTTUIConversationViewController *)self call];
  v3 = [v2 providerContext];
  v4 = AXTTYIsTextHeldForRTTCall();
  v5 = [v3 objectForKey:v4];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v7 = AXLogRTT();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(RTTUIConversationViewController *)v7 isCurrentCallReceivingOnHold];
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)isCurrentCallSendingOnHold
{
  v2 = [(RTTUIConversationViewController *)self call];
  v3 = [v2 isOnHold];

  return v3;
}

- (BOOL)currentCallIsDowngraded
{
  v2 = [(RTTUIConversationViewController *)self call];
  v3 = [v2 ttyType] == 0;

  return v3;
}

uint64_t __53__RTTUIConversationViewController_updateInputEnabled__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) call];
  v3 = [v2 status];

  if ([*(a1 + 32) currentCallIsDowngraded] & 1) != 0 || (objc_msgSend(*(a1 + 32), "isCurrentCallOnHold") & 1) != 0 || (v3 - 5) < 2 || (objc_msgSend(*(a1 + 32), "isIncomingScreeningCall"))
  {
    v4 = [*(a1 + 32) call];
    v5 = [RTTUIUtilities ttyShouldBeRealtimeForCall:v4];

    v6 = *(a1 + 32);
    if (v5)
    {
      [*(v6 + 992) setEditable:0];
      v7 = *(*(a1 + 32) + 992);

      return [v7 resignFirstResponder];
    }

    v9 = *(v6 + 1008);
    v10 = 0;
  }

  else
  {
    [*(*(a1 + 32) + 992) setEditable:1];
    v9 = *(*(a1 + 32) + 1008);
    v10 = 1;
  }

  return [v9 setEnabled:v10];
}

- (void)addServiceCellWithUpdate:(id)a3 options:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
  AXPerformBlockOnMainThread();
}

- (void)_addServiceCellWithUpdate:(id)a3 options:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  _AXAssertIsMainThread();
  v8 = [objc_alloc(MEMORY[0x277D440D0]) initWithServiceUpdateType:v6 options:v7];

  if (([(NSMutableArray *)self->_serviceUpdates containsObject:v8]& 1) == 0)
  {
    v9 = [(NSMutableArray *)self->_serviceUpdates count];
    v10 = [MEMORY[0x277CCAA70] indexPathForRow:v9 inSection:1];
    v11 = AXLogRTT();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_261725000, v11, OS_LOG_TYPE_INFO, "Add service cell %@ %@", &v13, 0x16u);
    }

    [(NSMutableArray *)self->_serviceUpdates addObject:v8];
    if (v10)
    {
      [(RTTUIConversationViewController *)self _updateTableViewRowAtIndexPath:v10 action:1 animation:4];
      v12 = [(RTTUIConversationViewController *)self tableView];
      [v12 scrollToRowAtIndexPath:v10 atScrollPosition:3 animated:1];
    }
  }
}

- (void)removeServiceCellWithUpdate:(id)a3
{
  v4 = a3;
  v3 = v4;
  AXPerformBlockOnMainThread();
}

- (void)_removeServiceCellWithUpdate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _AXAssertIsMainThread();
  serviceUpdates = self->_serviceUpdates;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__RTTUIConversationViewController__removeServiceCellWithUpdate___block_invoke;
  v11[3] = &unk_279AE50B0;
  v6 = v4;
  v12 = v6;
  v7 = [(NSMutableArray *)serviceUpdates indexOfObjectPassingTest:v11];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    v9 = [MEMORY[0x277CCAA70] indexPathForRow:v7 inSection:1];
    v10 = AXLogRTT();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_261725000, v10, OS_LOG_TYPE_INFO, "Remove service cell %@ %@", buf, 0x16u);
    }

    [(NSMutableArray *)self->_serviceUpdates removeObjectAtIndex:v8];
    if (v9)
    {
      [(RTTUIConversationViewController *)self _updateTableViewRowAtIndexPath:v9 action:2 animation:4];
    }
  }
}

BOOL __64__RTTUIConversationViewController__removeServiceCellWithUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 serviceUpdateType];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)replaceServiceCellWithOldUpdate:(id)a3 withNewUpdate:(id)a4 options:(id)a5
{
  v7 = a3;
  v11 = a4;
  v12 = a5;
  v8 = v12;
  v9 = v11;
  v10 = v7;
  AXPerformBlockOnMainThread();
}

- (void)_replaceServiceCellWithOldUpdate:(id)a3 withNewUpdate:(id)a4 options:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  _AXAssertIsMainThread();
  serviceUpdates = self->_serviceUpdates;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__RTTUIConversationViewController__replaceServiceCellWithOldUpdate_withNewUpdate_options___block_invoke;
  v17[3] = &unk_279AE50B0;
  v12 = v8;
  v18 = v12;
  v13 = [(NSMutableArray *)serviceUpdates indexOfObjectPassingTest:v17];
  v14 = [objc_alloc(MEMORY[0x277D440D0]) initWithServiceUpdateType:v9 options:v10];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL || ([(NSMutableArray *)self->_serviceUpdates containsObject:v14]& 1) != 0)
  {
    [(RTTUIConversationViewController *)self _addServiceCellWithUpdate:v9 options:v10];
  }

  else
  {
    v15 = [MEMORY[0x277CCAA70] indexPathForRow:v13 inSection:1];
    v16 = AXLogRTT();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v20 = v12;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_261725000, v16, OS_LOG_TYPE_INFO, "Replace service cell %@ %@ with %@", buf, 0x20u);
    }

    [(NSMutableArray *)self->_serviceUpdates setObject:v14 atIndexedSubscript:v13];
    [(RTTUIConversationViewController *)self _updateTableViewRowAtIndexPath:v15 action:0 animation:0];
  }
}

BOOL __90__RTTUIConversationViewController__replaceServiceCellWithOldUpdate_withNewUpdate_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 serviceUpdateType];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (id)addTranscriptionText:(id)a3 isNew:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(RTTUIConversationViewController *)self conversation];
  v8 = [v7 utterances];
  v9 = [v8 count];

  v10 = [(RTTUIConversationViewController *)self conversation];
  v11 = v10;
  if (v4)
  {
    v12 = [v10 addTranscriptionFromOtherContactPath:v6];
  }

  else
  {
    v13 = [v10 updateTranscriptionFromOtherContactPath:v6];
  }

  v14 = [(RTTUIConversationViewController *)self conversation];
  v15 = [v14 utterances];
  v16 = [v15 count];

  v17 = objc_alloc(MEMORY[0x277D440D0]);
  v18 = [v17 initWithServiceUpdateType:*MEMORY[0x277D44110] options:0];
  v19 = [(NSMutableArray *)self->_serviceUpdates containsObject:v18];
  v20 = AXLogRTT();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (v19)
  {
    if (v21)
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_261725000, v20, OS_LOG_TYPE_INFO, "Not adding transcription text to table view because screen is locked", &v24, 2u);
    }

    v22 = 0;
  }

  else
  {
    if (v21)
    {
      v24 = 138412802;
      v25 = v6;
      v26 = 1024;
      v27 = v9;
      v28 = 1024;
      v29 = v16;
      _os_log_impl(&dword_261725000, v20, OS_LOG_TYPE_INFO, "Adding transcription: %@ (old count: %d, new count: %d)", &v24, 0x18u);
    }

    v22 = [(RTTUIConversationViewController *)self _updateTableViewUtteranceOldCount:v9 newCount:v16];
  }

  return v22;
}

- (id)addTranslatedTranscriptionText:(id)a3 translatedText:(id)a4 isNew:(BOOL)a5
{
  v5 = a5;
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(RTTUIConversationViewController *)self conversation];
  v11 = [v10 utterances];
  v12 = [v11 count];

  v13 = [(RTTUIConversationViewController *)self conversation];
  v14 = v13;
  if (v5)
  {
    v15 = [v13 addTranslatedTranscriptionFromOtherContactPath:v9 original:v8];
  }

  else
  {
    v16 = [v13 updateTranslatedTranscriptionFromOtherContactPath:v9 original:v8];
  }

  v17 = [(RTTUIConversationViewController *)self conversation];
  v18 = [v17 utterances];
  v19 = [v18 count];

  v20 = objc_alloc(MEMORY[0x277D440D0]);
  v21 = [v20 initWithServiceUpdateType:*MEMORY[0x277D44110] options:0];
  v22 = [(NSMutableArray *)self->_serviceUpdates containsObject:v21];
  v23 = AXLogRTT();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
  if (v22)
  {
    if (v24)
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_261725000, v23, OS_LOG_TYPE_INFO, "Not adding transcription text to table view because screen is locked", &v27, 2u);
    }

    v25 = 0;
  }

  else
  {
    if (v24)
    {
      v27 = 138412802;
      v28 = v8;
      v29 = 1024;
      v30 = v12;
      v31 = 1024;
      v32 = v19;
      _os_log_impl(&dword_261725000, v23, OS_LOG_TYPE_INFO, "Adding transcription: %@ (old count: %d, new count: %d)", &v27, 0x18u);
    }

    v25 = [(RTTUIConversationViewController *)self _updateTableViewUtteranceOldCount:v12 newCount:v19];
  }

  return v25;
}

- (id)addUtterance:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RTTUIConversationViewController *)self conversation];
  v6 = [v5 utterances];
  v7 = [v6 count];

  v8 = [(RTTUIConversationViewController *)self conversation];
  [v8 addUtterance:v4];

  v9 = [(RTTUIConversationViewController *)self conversation];
  v10 = [v9 utterances];
  v11 = [v10 count];

  v12 = objc_alloc(MEMORY[0x277D440D0]);
  v13 = [v12 initWithServiceUpdateType:*MEMORY[0x277D44110] options:0];
  v14 = [(NSMutableArray *)self->_serviceUpdates containsObject:v13];
  v15 = AXLogRTT();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v14)
  {
    if (v16)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_261725000, v15, OS_LOG_TYPE_INFO, "Not adding utterance because screen is locked", &v19, 2u);
    }

    v17 = 0;
  }

  else
  {
    if (v16)
    {
      v19 = 138412802;
      v20 = v4;
      v21 = 1024;
      v22 = v7;
      v23 = 1024;
      v24 = v11;
      _os_log_impl(&dword_261725000, v15, OS_LOG_TYPE_INFO, "Adding utterance: %@ (old count: %d, new count: %d)", &v19, 0x18u);
    }

    v17 = [(RTTUIConversationViewController *)self _updateTableViewUtteranceOldCount:v7 newCount:v11];
  }

  return v17;
}

- (id)_updateTableViewUtteranceOldCount:(unint64_t)a3 newCount:(unint64_t)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB18] array];
  if (a3 >= a4)
  {
    if (a3 > a4)
    {
      do
      {
        v10 = [MEMORY[0x277CCAA70] indexPathForRow:--a3 inSection:0];
        [v7 addObject:v10];
      }

      while (a3 > a4);
      a3 = a4;
    }

    [(RTTUIConversationViewController *)self _updateTableViewRowsAtIndexPaths:v7 action:2 animation:4];
    v9 = AXLogRTT();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v24 = 138412290;
      v25 = v7;
      _os_log_impl(&dword_261725000, v9, OS_LOG_TYPE_INFO, "Deleting rows: %@", &v24, 0xCu);
    }
  }

  else
  {
    do
    {
      v8 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:0];
      [v7 addObject:v8];

      ++a3;
    }

    while (a4 != a3);
    [(RTTUIConversationViewController *)self _updateTableViewRowsAtIndexPaths:v7 action:1 animation:4];
    v9 = AXLogRTT();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v24 = 138412290;
      v25 = v7;
      _os_log_impl(&dword_261725000, v9, OS_LOG_TYPE_INFO, "Inserting rows: %@", &v24, 0xCu);
    }

    a3 = a4;
  }

  if (a4)
  {
    v11 = a4 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = [MEMORY[0x277CCAA70] indexPathForRow:v11 inSection:0];
  v13 = AXLogRTT();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v24 = 134218754;
    v25 = v11;
    v26 = 2048;
    v27 = a3;
    v28 = 2048;
    v29 = a4;
    v30 = 2112;
    v31 = v12;
    _os_log_impl(&dword_261725000, v13, OS_LOG_TYPE_INFO, "Trying to update utterance and cell: %lld (old count, %lld, new count %lld) path: %@", &v24, 0x2Au);
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v14 = [(RTTUIConversationViewController *)self tableView];
    v15 = [v14 cellForRowAtIndexPath:v12];

    v16 = [(RTTUIConversationViewController *)self conversation];
    v17 = [v16 utterances];
    v18 = [v17 lastObject];
    [v15 updateUtterance:v18];

    v19 = [(RTTUIConversationViewController *)self tableView];
    v20 = [v19 numberOfRowsInSection:0];

    v21 = AXLogRTT();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [MEMORY[0x277CCABB0] numberWithInteger:v20];
      v24 = 138412802;
      v25 = v15;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v22;
      _os_log_impl(&dword_261725000, v21, OS_LOG_TYPE_INFO, "Updated cell: %@, index path: %@, number of rows: %@", &v24, 0x20u);
    }

    if ([v12 row] < v20 && !v15)
    {
      [(RTTUIConversationViewController *)self _scrollToIndexPathIfNecessary:v12 animated:1];
    }
  }

  return v12;
}

- (void)updateUtterance:(id)a3 forIndexPath:(id)a4
{
  v6 = a3;
  v7 = [(RTTUIConversationViewController *)self utteranceCellAtIndexPath:a4];
  [v7 updateUtterance:v6];

  [(RTTUIConversationViewController *)self utteranceCellDidUpdateContent:v7];
}

- (void)setTextViewUtterance:(id)a3
{
  [(RTTUITextView *)self->_textView setText:a3];

  [(RTTUIConversationViewController *)self updateTableViewSizeAnimated:1];
}

- (id)utteranceCellAtIndexPath:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RTTUIConversationViewController *)self tableView];
  v6 = [v5 cellForRowAtIndexPath:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v8 = AXLogRTT();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [RTTUIConversationViewController utteranceCellAtIndexPath:];
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_261725000, v9, OS_LOG_TYPE_INFO, "No utterance cell found at index path: %@", &v11, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)serviceUpdateCellAtIndexPath:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RTTUIConversationViewController *)self tableView];
  v6 = [v5 cellForRowAtIndexPath:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v8 = AXLogRTT();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [RTTUIConversationViewController serviceUpdateCellAtIndexPath:];
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_261725000, v9, OS_LOG_TYPE_INFO, "No service update cell found at index path: %@", &v11, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)cannedResponses
{
  v2 = [MEMORY[0x277D440D8] sharedInstance];
  v3 = [v2 cannedResponses];

  return v3;
}

- (id)currentContactPath
{
  v3 = [MEMORY[0x277D440E0] sharedUtilityProvider];
  v4 = [(RTTUIConversationViewController *)self call];
  v5 = [v3 contactPathForCall:v4];

  return v5;
}

+ (BOOL)_validRectangle:(CGRect)a3
{
  result = 0;
  if ((*&a3.origin.x & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a3.origin.y & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    return !CGRectIsInfinite(a3);
  }

  return result;
}

- (void)updateVoiceOverAnnouncement:(id)a3
{
  v4 = a3;
  voAnnouncementTimer = self->_voAnnouncementTimer;
  if (!voAnnouncementTimer)
  {
    v6 = objc_alloc(MEMORY[0x277CE6950]);
    v7 = [v6 initWithTargetSerialQueue:MEMORY[0x277D85CD0]];
    v8 = self->_voAnnouncementTimer;
    self->_voAnnouncementTimer = v7;

    v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
    voAnnouncementBuffer = self->_voAnnouncementBuffer;
    self->_voAnnouncementBuffer = v9;

    voAnnouncementTimer = self->_voAnnouncementTimer;
  }

  [(AXDispatchTimer *)voAnnouncementTimer cancel];
  if ([v4 length] && objc_msgSend(v4, "characterAtIndex:", 0) == 8)
  {
    if ([(NSMutableString *)self->_voAnnouncementBuffer length])
    {
      [(NSMutableString *)self->_voAnnouncementBuffer deleteCharactersInRange:[(NSMutableString *)self->_voAnnouncementBuffer length]- 1, 1];
    }
  }

  else
  {
    [(NSMutableString *)self->_voAnnouncementBuffer appendString:v4];
  }

  v11 = [(NSMutableString *)self->_voAnnouncementBuffer trimmedString];
  v12 = [v11 length];

  if (v12)
  {
    v13 = self->_voAnnouncementTimer;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__RTTUIConversationViewController_updateVoiceOverAnnouncement___block_invoke;
    v14[3] = &unk_279AE4E98;
    v14[4] = self;
    [(AXDispatchTimer *)v13 afterDelay:v14 processBlock:4.0];
  }
}

void __63__RTTUIConversationViewController_updateVoiceOverAnnouncement___block_invoke(uint64_t a1)
{
  argument = [MEMORY[0x277CE6B98] stringWithString:*(*(a1 + 32) + 1064)];
  [argument setAttribute:&unk_2873FB8C0 forKey:*MEMORY[0x277CE6BC8]];
  [argument setAttribute:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CE6CA0]];
  UIAccessibilityPostNotification(*MEMORY[0x277D76438], argument);
  [*(*(a1 + 32) + 1064) setString:&stru_2873F89E0];
}

- (void)_scrollToIndexPathIfNecessary:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  *&v53[5] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(RTTUIConversationViewController *)self view];
  v8 = [(RTTUIConversationViewController *)self tableView];
  [v8 rectForRowAtIndexPath:v6];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(RTTUIConversationViewController *)self tableView];
  [v7 convertRect:v17 fromView:{v10, v12, v14, v16}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [(RTTUIConversationViewController *)self view];
  [(RTTUITextView *)self->_textView bounds];
  [v26 convertRect:self->_textView fromView:?];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v54.origin.x = v19;
  v54.origin.y = v21;
  v54.size.width = v23;
  v54.size.height = v25;
  v56.origin.x = v28;
  v56.origin.y = v30;
  v56.size.width = v32;
  v56.size.height = v34;
  v35 = CGRectIntersectsRect(v54, v56);
  v36 = [(RTTUIConversationViewController *)self tableView];
  v37 = [v36 indexPathsForVisibleRows];
  v38 = [v37 containsObject:v6] ^ 1;

  if ((v38 & 1) != 0 || v35)
  {
    v39 = [v6 section];
    v40 = [(RTTUIConversationViewController *)self tableView];
    if (v39 >= [v40 numberOfSections])
    {
    }

    else
    {
      v41 = [v6 row];
      v42 = [(RTTUIConversationViewController *)self tableView];
      v43 = [v42 numberOfRowsInSection:{objc_msgSend(v6, "section")}];

      if (v41 < v43)
      {
        v44 = AXLogRTT();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = [(RTTUIConversationViewController *)self tableView];
          [v45 rectForRowAtIndexPath:v6];
          v46 = NSStringFromRect(v55);
          v51 = 138412546;
          *v52 = v6;
          *&v52[8] = 2112;
          *v53 = v46;
          _os_log_impl(&dword_261725000, v44, OS_LOG_TYPE_INFO, "Scrolling to row: %@ - %@", &v51, 0x16u);
        }

        v47 = AXLogRTT();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          v51 = 67109632;
          *v52 = v35;
          *&v52[4] = 1024;
          *&v52[6] = v38;
          v53[0] = 1024;
          *&v53[1] = v21 > v30;
          _os_log_debug_impl(&dword_261725000, v47, OS_LOG_TYPE_DEBUG, "Scroll row options: %d, %d, %d", &v51, 0x14u);
        }

        v48 = [(RTTUIConversationViewController *)self tableView];
        v49 = v48;
        v50 = v21 > v30 && v4;
        [v48 scrollToRowAtIndexPath:v6 atScrollPosition:3 animated:v50];
LABEL_16:

        goto LABEL_17;
      }
    }

    v49 = AXLogRTT();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v51 = 138412802;
      *v52 = v6;
      *&v52[8] = 1024;
      *v53 = [v6 section];
      v53[2] = 1024;
      *&v53[3] = [v6 row];
      _os_log_impl(&dword_261725000, v49, OS_LOG_TYPE_INFO, "Not scrolling to path[%@], because tableview doesn't have any sections[%d] or rows[%d]", &v51, 0x18u);
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)deviceDidReceiveString:(id)a3 forUtterance:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = AXLogRTT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_261725000, v8, OS_LOG_TYPE_INFO, "TTY receive |%@|=%@", buf, 0x16u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__RTTUIConversationViewController_deviceDidReceiveString_forUtterance___block_invoke;
  v15[3] = &unk_279AE5100;
  v15[4] = self;
  v12 = v7;
  v13 = v6;
  v14 = MEMORY[0x26670A470](v15);
  v9 = v14;
  v10 = v6;
  v11 = v7;
  AXPerformBlockOnMainThread();
}

void __71__RTTUIConversationViewController_deviceDidReceiveString_forUtterance___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  AXPerformBlockAsynchronouslyOnMainThread();
}

void __71__RTTUIConversationViewController_deviceDidReceiveString_forUtterance___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  HCPerformSafeBlock();
}

void __71__RTTUIConversationViewController_deviceDidReceiveString_forUtterance___block_invoke_4(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) conversation];
  v3 = [v2 utterances];
  v4 = [v3 lastObject];
  v5 = [*(a1 + 32) tableView];
  [v5 bounds];
  [RTTUIUtteranceCell heightForUtterance:v4 andWidth:CGRectGetWidth(v60)];
  v7 = v6;

  v8 = [*(a1 + 32) conversation];
  v9 = [v8 utterances];
  v10 = [v9 count];

  v11 = [*(a1 + 32) conversation];
  v12 = [v11 lastUtteranceForMe:0];

  [*(a1 + 32) lastConversationRowPathForUtterance:v12];
  v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v14 = [v12 text];
  if (v14)
  {
    v15 = v14;
    v16 = *(a1 + 40);
    v17 = [v12 text];
    v18 = [v17 stringByAppendingString:*(a1 + 48)];
    LODWORD(v16) = [v16 isEqualToString:v18];

    if (v16)
    {
      [v12 updateText:*(a1 + 40)];
      AXLogRTT();
      *&v19 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v20 = *(a1 + 40);
      [v12 text];
      *&v21 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412802;
      v54 = v20;
      v55 = 2112;
      v56 = *&v21;
      v57 = 2112;
      v58 = v12;
      v22 = "total utterance: %@, utterance text: %@, updated: %@";
      v23 = v19;
      v24 = 32;
      goto LABEL_11;
    }
  }

  v25 = [*(a1 + 32) conversation];
  [v25 appendStringFromOtherContactPath:*(a1 + 48)];
  *&v19 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  v26 = AXLogRTT();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = *(a1 + 48);
    *buf = 138412546;
    v54 = v27;
    v55 = 2112;
    v56 = *&v19;
    _os_log_impl(&dword_261725000, v26, OS_LOG_TYPE_INFO, "Append utterance: %@ -> %@", buf, 0x16u);
  }

  if (*(a1 + 40))
  {
    v28 = [v19 text];
    v29 = [v28 isEqualToString:*(a1 + 40)];

    if ((v29 & 1) == 0)
    {
      [v19 updateText:*(a1 + 40)];
      AXLogRTT();
      *&v21 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
LABEL_12:

        goto LABEL_13;
      }

      *buf = 138412290;
      v54 = *&v19;
      v22 = "updated utterance: %@";
      v23 = v21;
      v24 = 12;
LABEL_11:
      _os_log_impl(&dword_261725000, v23, OS_LOG_TYPE_INFO, v22, buf, v24);
      goto LABEL_12;
    }
  }

LABEL_13:

  v30 = [*(a1 + 32) conversation];
  v31 = [v30 utterances];
  v32 = [v31 count];

  v33 = objc_alloc(MEMORY[0x277D440D0]);
  v34 = [v33 initWithServiceUpdateType:*MEMORY[0x277D44110] options:0];
  if (![*(*(a1 + 32) + 1072) containsObject:v34])
  {
    [*(a1 + 32) updateVoiceOverAnnouncement:*(a1 + 48)];
    if (v32 <= v10)
    {
      if (v32 >= v10)
      {
        if (!v10)
        {
LABEL_22:
          if ([v12 isComplete])
          {
            v38 = [*(a1 + 32) call];
            if ([v38 ttyType] != 2)
            {
LABEL_26:

              goto LABEL_27;
            }

            v39 = [*(a1 + 32) conversation];
            v40 = [v39 utteranceCountForMe:1];

            if (!v40)
            {
              v41 = MEMORY[0x277CCACA8];
              v42 = ttyLocString();
              v43 = [*(a1 + 32) call];
              v44 = [v43 handle];
              v45 = [v44 value];
              v38 = [v41 stringWithFormat:v42, v45];

              v46 = +[RTTUIConversationControllerCoordinator sharedInstance];
              [v46 sendNewUtteranceString:v38 controller:*(a1 + 32)];

              goto LABEL_26;
            }
          }

LABEL_27:
          [*(a1 + 32) updateTableViewSizeAnimated:0];
          goto LABEL_28;
        }

        [*(a1 + 32) utteranceCellAtIndexPath:*&v13];
        *&v36 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v49 = [*(a1 + 32) tableView];
        [v49 bounds];
        [RTTUIUtteranceCell heightForUtterance:v12 andWidth:CGRectGetWidth(v61)];
        v51 = v50;

        [v36 updateUtterance:v12];
        if (v51 != v7)
        {
          v52 = AXLogRTT();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v54 = v7;
            v55 = 2048;
            v56 = v51;
            _os_log_impl(&dword_261725000, v52, OS_LOG_TYPE_INFO, "Updating utterance cell height from %f to %f", buf, 0x16u);
          }

          if (v13 != 0.0)
          {
            [*(a1 + 32) _updateTableViewRowAtIndexPath:*&v13 action:0 animation:0];
          }
        }

        if (*&v36 != 0.0)
        {
          (*(*(a1 + 56) + 16))();
        }
      }

      else
      {
        [*(a1 + 32) _updateTableViewRowAtIndexPath:*&v13 action:2 animation:1];
        if (v32)
        {
          v47 = *(a1 + 56);
          v48 = [MEMORY[0x277CCAA70] indexPathForRow:v32 - 1 inSection:0];
          (*(v47 + 16))(v47, v48, 1);
        }

        AXLogRTT();
        *&v36 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v54 = v13;
          _os_log_impl(&dword_261725000, v36, OS_LOG_TYPE_INFO, "Deleting row: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      [MEMORY[0x277CCAA70] indexPathForRow:v32 - 1 inSection:0];
      *&v36 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      [*(a1 + 32) _updateTableViewRowAtIndexPath:v36 action:1 animation:2];
      (*(*(a1 + 56) + 16))();
      v37 = AXLogRTT();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v54 = *&v36;
        _os_log_impl(&dword_261725000, v37, OS_LOG_TYPE_INFO, "Inserting row: %@", buf, 0xCu);
      }
    }

    goto LABEL_22;
  }

  v35 = AXLogRTT();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_261725000, v35, OS_LOG_TYPE_INFO, "Not adding received string for utterance to table view because screen is locked", buf, 2u);
  }

LABEL_28:
}

- (void)deviceDidReceiveTranslation:(id)a3 forUtterance:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = AXLogRTT();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_261725000, v7, OS_LOG_TYPE_INFO, "TTY receive translation |%@|=%@", buf, 0x16u);
  }

  v10 = v5;
  v8 = v5;
  v9 = v6;
  AXPerformBlockOnMainThread();
}

void __76__RTTUIConversationViewController_deviceDidReceiveTranslation_forUtterance___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) conversation];
  v3 = [v2 lastUtteranceForMe:0 withText:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) tableView];
    [v4 bounds];
    [RTTUIUtteranceCell heightForUtterance:v3 andWidth:CGRectGetWidth(v18)];
    v6 = v5;

    v7 = [*(a1 + 32) lastConversationRowPathForUtterance:v3];
    [v3 updateTranslation:*(a1 + 48)];
    v8 = [*(a1 + 32) utteranceCellAtIndexPath:v7];
    v9 = [*(a1 + 32) tableView];
    [v9 bounds];
    [RTTUIUtteranceCell heightForUtterance:v3 andWidth:CGRectGetWidth(v19)];
    v11 = v10;

    [v8 updateUtterance:v3];
    if (v11 != v6)
    {
      v12 = AXLogRTT();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = 134218240;
        v14 = v6;
        v15 = 2048;
        v16 = v11;
        _os_log_impl(&dword_261725000, v12, OS_LOG_TYPE_INFO, "Updating utterance cell height from %f to %f", &v13, 0x16u);
      }

      if (v7)
      {
        [*(a1 + 32) _updateTableViewRowAtIndexPath:v7 action:0 animation:0];
      }
    }

    [*(a1 + 32) updateTableViewSizeAnimated:0];
  }
}

- (void)gaButtonPressed:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = AXLogRTT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(RTTUIConversationViewController *)self textViewUtterance];
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_261725000, v4, OS_LOG_TYPE_INFO, "GA button pressed: %@", &v11, 0xCu);
  }

  v6 = [(RTTUIConversationViewController *)self textViewUtterance];
  if ([v6 length])
  {
    v7 = [MEMORY[0x277D440D8] sharedInstance];
    v8 = [v7 ttyShouldBeRealtime];

    if ((v8 & 1) == 0)
    {
      v9 = +[RTTUIConversationControllerCoordinator sharedInstance];
      v10 = [(RTTUIConversationViewController *)self textViewUtterance];
      [v9 sendNewUtteranceString:v10 controller:self];

      [(RTTUIConversationViewController *)self setTextViewUtterance:&stru_2873F89E0];
      [(RTTUIConversationViewController *)self setCurrentUtterance:0];
      [(RTTUIConversationViewController *)self updateTableViewSizeAnimated:1];
    }
  }

  else
  {
  }
}

- (id)lastConversationRowPathForUtterance:(id)a3
{
  v4 = MEMORY[0x277CCAA70];
  v5 = a3;
  v6 = [(RTTUIConversationViewController *)self conversation];
  v7 = [v6 utterances];
  v8 = [v7 indexOfObjectIdenticalTo:v5];

  v9 = [v4 indexPathForRow:v8 inSection:0];

  return v9;
}

- (void)realtimeTextDidChange
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(RTTUIConversationViewController *)self currentUtterance];
  v4 = [(RTTUIConversationViewController *)self lastConversationRowPathForUtterance:v3];
  v5 = +[RTTUIConversationControllerCoordinator sharedInstance];
  v6 = [v5 realtimeTextDidChange:self forUtterance:v3 lastRowPath:v4];

  v7 = AXLogRTT();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    *v36 = v6;
    *&v36[4] = 2112;
    *&v36[6] = v3;
    *&v36[14] = 2112;
    *&v36[16] = v4;
    _os_log_impl(&dword_261725000, v7, OS_LOG_TYPE_INFO, "Real time text changed: %d, utterance: %@, path: %@", buf, 0x1Cu);
  }

  if (v6)
  {
    v8 = AXLogRTT();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v3 hasTimedOut];
      *buf = 138412546;
      *v36 = v3;
      *&v36[8] = 1024;
      *&v36[10] = v9;
      _os_log_impl(&dword_261725000, v8, OS_LOG_TYPE_INFO, "Realtime text changed. Last utterance: %@, timeout: %d", buf, 0x12u);
    }

    if ([v3 isMe] && (objc_msgSend(v3, "hasTimedOut") & 1) == 0)
    {
      v20 = [(RTTUIConversationViewController *)self tableView];
      v21 = [v20 cellForRowAtIndexPath:v4];

      [v21 updateUtterance:v3];
      [v21 bounds];
      Height = CGRectGetHeight(v38);
      v23 = [v21 utterance];
      v24 = [(RTTUIConversationViewController *)self tableView];
      [v24 bounds];
      [RTTUIUtteranceCell heightForUtterance:v23 andWidth:CGRectGetWidth(v39)];
      v26 = v25;

      if (Height != v26)
      {
        [(RTTUIConversationViewController *)self utteranceCellDidUpdateContent:v21];
      }

      v27 = AXLogRTT();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v36 = v21;
        *&v36[8] = 2112;
        *&v36[10] = v3;
        _os_log_impl(&dword_261725000, v27, OS_LOG_TYPE_INFO, "Updating utterance since it's still me: %@ %@", buf, 0x16u);
      }

      v28 = [v3 text];
      v29 = [v28 length];

      if (!v29)
      {
        v30 = [(RTTUIConversationViewController *)self conversation];
        v31 = [v30 utterances];
        [v31 removeObject:v3];

        [(RTTUIConversationViewController *)self setCurrentUtterance:0];
        if (v4 && [v4 row] != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(RTTUIConversationViewController *)self _updateTableViewRowAtIndexPath:v4 action:2 animation:1];
        }

        v32 = AXLogRTT();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v36 = v3;
          _os_log_impl(&dword_261725000, v32, OS_LOG_TYPE_INFO, "Deleting utterance since text length was empty: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v10 = [(RTTUIConversationViewController *)self textViewUtterance];
      v11 = [v10 length];

      if (v11)
      {
        v12 = AXLogRTT();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [(RTTUIConversationViewController *)self textViewUtterance];
          *buf = 138412546;
          *v36 = v13;
          *&v36[8] = 2112;
          *&v36[10] = self;
          _os_log_impl(&dword_261725000, v12, OS_LOG_TYPE_INFO, "Sending updated utterance: %@, from %@", buf, 0x16u);
        }

        v14 = +[RTTUIConversationControllerCoordinator sharedInstance];
        v15 = [(RTTUIConversationViewController *)self textViewUtterance];
        [v14 sendNewUtteranceString:v15 controller:self];

        v16 = [(RTTUIConversationViewController *)self conversation];
        v17 = [v16 lastUtteranceForMe:1];
        [(RTTUIConversationViewController *)self setCurrentUtterance:v17];

        v18 = AXLogRTT();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = [(RTTUIConversationViewController *)self currentUtterance];
          *buf = 138412290;
          *v36 = v19;
          _os_log_impl(&dword_261725000, v18, OS_LOG_TYPE_INFO, "Updating current utterance to last utterance from me: %@", buf, 0xCu);
        }

        [(RTTUIConversationViewController *)self updateTableViewSizeAnimated:1];
      }
    }
  }

  realTimeTimeout = self->_realTimeTimeout;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __56__RTTUIConversationViewController_realtimeTextDidChange__block_invoke;
  v34[3] = &unk_279AE4E98;
  v34[4] = self;
  [(AXDispatchTimer *)realTimeTimeout afterDelay:v34 processBlock:3.0];
}

- (void)_processRealtimeTimeout
{
  v3 = [(RTTUIConversationViewController *)self currentUtterance];
  if ([v3 hasTimedOut])
  {
    [(RTTUIConversationViewController *)self setCurrentUtterance:0];
    [(RTTUIConversationViewController *)self setTextViewUtterance:&stru_2873F89E0];
  }
}

- (void)updateGAButton
{
  if (self->_gaButton)
  {
    goto LABEL_2;
  }

  v6 = [(RTTUIConversationViewController *)self call];
  v7 = [RTTUIUtilities ttyShouldBeRealtimeForCall:v6];

  if (!v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D75220]) initWithFrame:{0.0, 0.0, 40.0, 35.0}];
    gaButton = self->_gaButton;
    self->_gaButton = v8;

    v10 = ttyImageNamed(@"TTYSend");
    if (soft_AXProcessIsRTTNotificationContentExtension())
    {
      [MEMORY[0x277D75348] labelColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemWhiteColor];
    }
    v11 = ;
    v5 = [v10 imageWithTintColor:v11];

    [(UIButton *)self->_gaButton setImage:v5 forState:0];
    [(UIButton *)self->_gaButton addTarget:self action:sel_gaButtonPressed_ forControlEvents:64];
    v12 = self->_gaButton;
    v13 = ttyLocString();
    [(UIButton *)v12 setAccessibilityLabel:v13];

    v14 = [(RTTUIConversationViewController *)self view];
    [v14 addSubview:self->_gaButton];

LABEL_11:
    goto LABEL_12;
  }

  if (self->_gaButton)
  {
LABEL_2:
    v3 = [(RTTUIConversationViewController *)self call];
    v4 = [RTTUIUtilities ttyShouldBeRealtimeForCall:v3];

    if (!v4)
    {
      goto LABEL_12;
    }

    [(UIButton *)self->_gaButton removeFromSuperview];
    v5 = self->_gaButton;
    self->_gaButton = 0;
    goto LABEL_11;
  }

LABEL_12:

  [(RTTUIConversationViewController *)self updateInputEnabled];
}

- (void)updateTableViewSizeAnimated:(BOOL)a3
{
  v3 = a3;
  [(RTTUIConversationViewController *)self updateGAButton];
  v5 = [MEMORY[0x277D756A8] activeKeyboardSceneDelegate];
  [v5 visibleFrameInView:0];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v60.origin.x = v7;
  v60.origin.y = v9;
  v60.size.width = v11;
  v60.size.height = v13;
  MinY = CGRectGetMinY(v60);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v15 = getAXUIKeyboardIsOnScreenSymbolLoc_ptr;
  v59 = getAXUIKeyboardIsOnScreenSymbolLoc_ptr;
  if (!getAXUIKeyboardIsOnScreenSymbolLoc_ptr)
  {
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __getAXUIKeyboardIsOnScreenSymbolLoc_block_invoke;
    v55[3] = &unk_279AE4F10;
    v55[4] = &v56;
    __getAXUIKeyboardIsOnScreenSymbolLoc_block_invoke(v55);
    v15 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v15)
  {
    v53 = [RTTUIConversationControllerCoordinator registerForCallUpdates:];
    _Block_object_dispose(&v56, 8);
    _Unwind_Resume(v53);
  }

  if (!v15() || v13 == 0.0 || ([(RTTUITextView *)self->_textView isFirstResponder]& 1) == 0)
  {
    v16 = [(RTTUIConversationViewController *)self view];
    [v16 bounds];
    v18 = v17;
    v19 = [(RTTUIConversationViewController *)self view];
    v20 = [v19 window];
    [v20 safeAreaInsets];
    MinY = v18 - v21;
  }

  [(RTTUITextView *)self->_textView frame];
  v23 = v22;
  v25 = v24;
  if (([MEMORY[0x277D12B60] deviceHasHomeButton] & 1) == 0 && objc_msgSend(MEMORY[0x277D12B60], "deviceIsPhone"))
  {
    v26 = [(RTTUIConversationViewController *)self view];
    v27 = [v26 window];
    v28 = [v27 windowScene];
    v29 = [v28 statusBarManager];
    [v29 statusBarFrame];
    CGRectGetHeight(v61);
  }

  v30 = +[RTTUIUtilities sharedUtilityProvider];
  [v30 bubbleInsetForMe:1];
  v32 = v31;
  v34 = v33;

  v35 = MEMORY[0x277D440E8];
  v36 = [(RTTUIConversationViewController *)self currentContactPath];
  v37 = [(RTTUIConversationViewController *)self textViewUtterance];
  v38 = [v35 utteranceWithContactPath:v36 andText:v37];
  v39 = [(RTTUIConversationViewController *)self view];
  [v39 bounds];
  [RTTUIUtteranceCell heightForUtterance:v38 andWidth:CGRectGetWidth(v62) + 20.0];
  v41 = v34 + v32 + v40;

  if (soft_AXProcessIsRTTNotificationContentExtension())
  {
    v42 = [(RTTUIConversationViewController *)self view];
    [v42 bounds];
    v44 = v43 - v41 + -5.0;

    v45 = [(RTTUIConversationViewController *)self view];
    [v45 bounds];
    v25 = v46 + -5.0;
  }

  else
  {
    [(RTTUITextView *)self->_textView ttyBarHeight];
    v44 = MinY - (v41 + v47 + 5.0);
  }

  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __63__RTTUIConversationViewController_updateTableViewSizeAnimated___block_invoke;
  v54[3] = &unk_279AE5150;
  v54[4] = self;
  v54[5] = v23;
  *&v54[6] = v44;
  *&v54[7] = v25;
  *&v54[8] = v41;
  v48 = MEMORY[0x26670A470](v54);
  v49 = v48;
  if (v3)
  {
    [MEMORY[0x277D75D18] animateWithDuration:v48 animations:0.2];
  }

  else
  {
    (*(v48 + 16))(v48);
  }

  v50 = [(RTTUIConversationViewController *)self tableView];
  v51 = [v50 numberOfRowsInSection:0];

  if (v51)
  {
    v52 = [MEMORY[0x277CCAA70] indexPathForRow:v51 - 1 inSection:0];
    [(RTTUIConversationViewController *)self _scrollToIndexPathIfNecessary:v52 animated:v3];
  }
}

uint64_t __63__RTTUIConversationViewController_updateTableViewSizeAnimated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 992) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1000);
  v4 = MEMORY[0x277D75208];
  v5 = [*(v2 + 992) layer];
  [v5 bounds];
  v10 = [v4 bezierPathWithRoundedRect:v6 + 15.0 cornerRadius:{v7 + 2.0, v8 + -30.0, v9 + -4.0, 20.0}];
  [v3 setPath:{objc_msgSend(v10, "CGPath")}];

  v11 = *(*(a1 + 32) + 992);
  v12 = [v11 beginningOfDocument];
  [v11 caretRectForPosition:v12];
  v14 = v13;

  v15 = v14 + v14;
  v41.origin.x = *(a1 + 40);
  v41.origin.y = *(a1 + 48);
  v41.size.width = *(a1 + 56);
  v16 = *(a1 + 64);
  v41.size.height = v16;
  MaxY = CGRectGetMaxY(v41);
  if (v15 <= v16)
  {
    v19 = MaxY + -40.0;
    v18 = *(a1 + 64);
  }

  else
  {
    v18 = *(a1 + 64);
    v19 = MaxY + v18 * -0.5 + -17.5;
  }

  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  [*(*(a1 + 32) + 1008) setFrame:{CGRectGetWidth(*(&v18 - 3)) + -55.0, v19, 40.0, 35.0}];
  v23 = [*(*(a1 + 32) + 1008) titleLabel];
  [v23 setHidden:0];

  v24 = [*(a1 + 32) view];
  [v24 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  MinY = v31;

  v33 = [*(a1 + 32) call];
  v34 = [v33 isConnected];

  if (v34)
  {
    MinY = CGRectGetMinY(*(a1 + 40));
  }

  v35 = [*(a1 + 32) tableView];
  [v35 setFrame:{v26, v28, v30, MinY}];

  [*(*(a1 + 32) + 992) setHidden:{objc_msgSend(*(a1 + 32), "showTextViewForCurrentCall") ^ 1}];
  v36 = *(a1 + 32);
  v37 = v36[126];
  v38 = [v36 showTextViewForCurrentCall] ^ 1;

  return [v37 setHidden:v38];
}

- (void)setupTableView
{
  v3 = [MEMORY[0x277D440C8] sharedInstance];
  [v3 setShouldSuppressIncomingNotification:{-[RTTUIConversationViewController isCurrentCallConnected](self, "isCurrentCallConnected")}];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_updateViewForKeyboard_ name:*MEMORY[0x277D76C60] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel_updateViewForKeyboard_ name:*MEMORY[0x277D76C50] object:0];

  v50 = [(RTTUIConversationViewController *)self contactDisplayString];
  [(RTTUIConversationViewController *)self setTitle:?];
  v6 = objc_alloc(MEMORY[0x277D75B40]);
  v7 = [(RTTUIConversationViewController *)self view];
  [v7 bounds];
  v8 = [v6 initWithFrame:?];

  [v8 setDelegate:self];
  [v8 setDataSource:self];
  [v8 setSeparatorStyle:0];
  [v8 registerClass:objc_opt_class() forCellReuseIdentifier:@"AXRTTConversationCellIdentifier"];
  IsRTTNotificationContentExtension = soft_AXProcessIsRTTNotificationContentExtension();
  if (![(RTTUIConversationViewController *)self isCurrentCallConnected]|| IsRTTNotificationContentExtension)
  {
    v10 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v8 setBackgroundColor:v10];
  }

  else
  {
    v10 = [MEMORY[0x277D75348] whiteColor];
    v11 = [v10 colorWithAlphaComponent:0.001];
    [v8 setBackgroundColor:v11];
  }

  [v8 setContentInset:{15.0, 0.0, 0.0, 0.0}];
  [v8 setCanCancelContentTouches:1];
  [(RTTUIConversationViewController *)self setTableView:v8];
  v12 = [(RTTUIConversationViewController *)self view];
  [v12 addSubview:v8];

  [(UITableView *)self->_tableView reloadData];
  v13 = objc_alloc(MEMORY[0x277CCA898]);
  v14 = ttyLocString();
  v15 = [v13 initWithString:v14];

  v16 = [RTTUITextView alloc];
  v17 = [(RTTUIConversationViewController *)self view];
  [v17 bounds];
  v18 = [(RTTUITextView *)v16 initWithFrame:0 textContainer:?];
  textView = self->_textView;
  self->_textView = v18;

  v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(RTTUITextView *)self->_textView setFont:v20];

  v21 = soft_AXProcessIsRTTNotificationContentExtension();
  v22 = self->_textView;
  if (v21)
  {
    v23 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(RTTUITextView *)v22 setBackgroundColor:v23];

    v24 = self->_textView;
    v25 = [MEMORY[0x277D75348] labelColor];
    [(RTTUITextView *)v24 setTextColor:v25];
  }

  else
  {
    v26 = [MEMORY[0x277D75348] whiteColor];
    [(RTTUITextView *)v22 setTextColor:v26];

    v27 = self->_textView;
    v25 = [MEMORY[0x277D75348] clearColor];
    [(RTTUITextView *)v27 setBackgroundColor:v25];
  }

  [(RTTUITextView *)self->_textView setDelegate:self];
  v28 = [(RTTUIConversationViewController *)self view];
  [v28 addSubview:self->_textView];

  v29 = [(RTTUITextView *)self->_textView textContainer];
  [v29 setLineBreakMode:0];

  v30 = [(RTTUITextView *)self->_textView textContainer];
  [v30 setMaximumNumberOfLines:0];

  [(RTTUITextView *)self->_textView setDataDetectorTypes:-1];
  [(RTTUITextView *)self->_textView setEditable:1];
  [(RTTUITextView *)self->_textView setSelectable:1];
  v31 = [(RTTUIConversationViewController *)self call];
  LODWORD(v30) = [RTTUIUtilities ttyShouldBeRealtimeForCall:v31];

  if (v30)
  {
    [(RTTUITextView *)self->_textView setInlinePredictionType:1];
  }

  [(RTTUITextView *)self->_textView setScrollEnabled:0];
  [(RTTUITextView *)self->_textView setTextContainerInset:11.0, 24.0, 0.0, 50.0];
  [(RTTUITextView *)self->_textView setAttributedPlaceholder:v15];
  v32 = self->_textView;
  v33 = [(RTTUIConversationViewController *)self call];
  -[RTTUITextView setKeyboardType:](v32, "setKeyboardType:", [v33 supportsTTYWithVoice] ^ 1);

  [(RTTUITextView *)self->_textView setAutoresizingMask:2];
  v34 = objc_alloc_init(MEMORY[0x277CD9F90]);
  v35 = [MEMORY[0x277D75348] clearColor];
  [v34 setFillColor:{objc_msgSend(v35, "cgColor")}];

  v36 = MEMORY[0x277D75208];
  v37 = [(RTTUITextView *)self->_textView layer];
  [v37 bounds];
  v38 = [v36 bezierPathWithRect:?];
  [v34 setPath:{objc_msgSend(v38, "CGPath")}];

  v39 = [(RTTUITextView *)self->_textView layer];
  [v39 insertSublayer:v34 atIndex:0];

  v40 = objc_alloc_init(MEMORY[0x277CD9F90]);
  bubbleLayer = self->_bubbleLayer;
  self->_bubbleLayer = v40;

  v42 = self->_bubbleLayer;
  v43 = [MEMORY[0x277D75348] clearColor];
  -[CAShapeLayer setFillColor:](v42, "setFillColor:", [v43 cgColor]);

  v44 = self->_bubbleLayer;
  v45 = [MEMORY[0x277D75348] grayColor];
  -[CAShapeLayer setStrokeColor:](v44, "setStrokeColor:", [v45 cgColor]);

  v46 = self->_bubbleLayer;
  v47 = MEMORY[0x277D75208];
  v48 = [(RTTUITextView *)self->_textView layer];
  [v48 bounds];
  v53 = CGRectInset(v52, 5.0, 5.0);
  v49 = [v47 bezierPathWithRoundedRect:v53.origin.x cornerRadius:{v53.origin.y, v53.size.width, v53.size.height, 15.0}];
  -[CAShapeLayer setPath:](v46, "setPath:", [v49 CGPath]);

  [v34 addSublayer:self->_bubbleLayer];
  [(RTTUIConversationViewController *)self updateViewForKeyboard:0];
}

- (void)shareCallInfo:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = +[RTTUIUtilities sharedUtilityProvider];
  v7 = [(RTTUIConversationViewController *)self conversation];
  v8 = [v6 transcriptStringForConversation:v7];
  [v5 setTranscript:v8];

  v9 = objc_alloc(MEMORY[0x277D546D8]);
  v13[0] = v5;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [v9 initWithActivityItems:v10 applicationActivities:0];

  v12 = [v11 popoverPresentationController];
  [v12 setSourceView:v4];

  [(RTTUIConversationViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 3)
  {
    v12 = [(RTTUIConversationViewController *)self cannedResponses];
    v9 = [v12 count];
  }

  else if (a4 == 1)
  {
    v9 = [(NSMutableArray *)self->_serviceUpdates count];
  }

  else if (a4)
  {
    v9 = 0;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277D440D0]);
    v8 = [v7 initWithServiceUpdateType:*MEMORY[0x277D44110] options:0];
    v9 = 0;
    if (([(NSMutableArray *)self->_serviceUpdates containsObject:v8]& 1) == 0)
    {
      v10 = [(RTTUIConversationViewController *)self conversation];
      v11 = [v10 utterances];
      v9 = [v11 count];
    }
  }

  return v9;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(RTTUIConversationViewController *)self conversation];
  v7 = [v6 utterances];

  v8 = [(RTTUIConversationViewController *)self cannedResponses];
  v9 = [v5 row];
  v10 = [v5 section];
  v11 = 20.0;
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = 50.0;
      goto LABEL_15;
    }

    if (v10 == 3 && v9 < [v8 count])
    {
      v12 = objc_alloc_init(RTTUIResponseCell);
      v15 = [(RTTUIResponseCell *)v12 textLabel];
      v16 = [v8 objectAtIndex:v9];
      [v15 setText:v16];

      v17 = [(RTTUIResponseCell *)v12 textLabel];
      v18 = [(RTTUIConversationViewController *)self tableView];
      [v18 bounds];
      [v17 textRectForBounds:0 limitedToNumberOfLines:{0.0, 0.0, CGRectGetWidth(v25), 3.40282347e38}];
      v20 = v19;

      if (v20 + 25.0 >= 35.0)
      {
        v11 = v20 + 25.0;
      }

      else
      {
        v11 = 35.0;
      }

      goto LABEL_13;
    }
  }

  else if (v10)
  {
    if (v10 == 1)
    {
      v12 = -[NSMutableArray objectAtIndex:](self->_serviceUpdates, "objectAtIndex:", [v5 row]);
      v13 = [(RTTUIConversationViewController *)self tableView];
      [v13 bounds];
      [RTTUIServiceUpdateCell heightForWidth:self delegate:v12 serviceUpdate:CGRectGetWidth(v24)];
      v11 = v14;

LABEL_13:
    }
  }

  else if (v9 < [v7 count])
  {
    v12 = [v7 objectAtIndex:v9];
    v21 = [(RTTUIConversationViewController *)self tableView];
    [v21 bounds];
    [RTTUIUtteranceCell heightForUtterance:v12 andWidth:CGRectGetWidth(v26)];
    v11 = v22;

    goto LABEL_13;
  }

LABEL_15:

  return v11;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  v9 = [v7 section];
  switch(v9)
  {
    case 3:
      v10 = [v6 dequeueReusableCellWithIdentifier:@"AXRTTUIResponseCellIdentifier"];
      if (!v10)
      {
        v10 = [[RTTUIResponseCell alloc] initWithStyle:0 reuseIdentifier:@"AXRTTUIResponseCellIdentifier"];
      }

      v27 = [(RTTUIConversationViewController *)self cannedResponses];
      v28 = [v27 count];

      if (v8 >= v28)
      {
        v26 = 0;
      }

      else
      {
        v29 = [(RTTUIConversationViewController *)self cannedResponses];
        v26 = [v29 objectAtIndex:v8];
      }

      v30 = [(RTTUIResponseCell *)v10 textLabel];
      [v30 setText:v26];

      if ([(RTTUIConversationViewController *)self isCurrentCallOnHold])
      {
        v31 = 0;
      }

      else
      {
        v31 = [(RTTUIConversationViewController *)self currentCallIsDowngraded]^ 1;
      }

      [(RTTUIResponseCell *)v10 setUserInteractionEnabled:v31];
      goto LABEL_23;
    case 1:
      v26 = -[NSMutableArray objectAtIndex:](self->_serviceUpdates, "objectAtIndex:", [v7 row]);
      v10 = [[RTTUIServiceUpdateCell alloc] initWithStyle:0 reuseIdentifier:@"AXRTTUIServiceCellIdentifier" serviceUpdate:v26];
      [(RTTUIResponseCell *)v10 setDelegate:self];
LABEL_23:

      goto LABEL_35;
    case 0:
      v10 = [v6 dequeueReusableCellWithIdentifier:@"AXRTTConversationCellIdentifier" forIndexPath:v7];
      if (!v10)
      {
        v10 = [[RTTUIUtteranceCell alloc] initWithStyle:0 reuseIdentifier:@"AXRTTConversationCellIdentifier"];
      }

      v11 = [(RTTUIConversationViewController *)self conversation];
      v12 = [v11 utterances];
      v43 = [v12 objectAtIndex:v8];

      [(RTTUIResponseCell *)v10 setUtterance:v43];
      [(RTTUIResponseCell *)v10 setDelegate:self];
      v13 = [(RTTUIConversationViewController *)self call];
      if ([RTTUIUtilities ttyShouldBeRealtimeForCall:v13])
      {
        v42 = +[RTTUIConversationControllerCoordinator sharedInstance];
        v14 = [v42 inProgressRealTimeUtterance];
        v15 = [v14 contactPath];
        v16 = [v43 contactPath];
        if ([v15 isEqualToString:v16])
        {
          v41 = +[RTTUIConversationControllerCoordinator sharedInstance];
          v40 = [v41 inProgressRealTimeIndexPath];
          if ([v40 isEqual:v7])
          {
            v39 = +[RTTUIConversationControllerCoordinator sharedInstance];
            v38 = [v39 inProgressRealTimeUtterance];
            v37 = [v38 text];
            v17 = [v43 text];
            v36 = [v37 isEqualToString:v17];

            if ((v36 & 1) == 0)
            {
              v18 = +[RTTUIConversationControllerCoordinator sharedInstance];
              v19 = [v18 inProgressRealTimeUtterance];
              v20 = [v19 text];
              [v43 updateText:v20];

              textView = self->_textView;
              v22 = [v43 text];
              [(RTTUITextView *)textView setText:v22];

              [(RTTUIConversationViewController *)self setCurrentUtterance:v43];
              realTimeTimeout = self->_realTimeTimeout;
              v47[0] = MEMORY[0x277D85DD0];
              v47[1] = 3221225472;
              v47[2] = __67__RTTUIConversationViewController_tableView_cellForRowAtIndexPath___block_invoke;
              v47[3] = &unk_279AE4E98;
              v47[4] = self;
              [(AXDispatchTimer *)realTimeTimeout afterDelay:v47 processBlock:3.0];
              v24 = AXLogRTT();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                v25 = [(RTTUIConversationViewController *)self currentUtterance];
                *buf = 138412290;
                v49 = v25;
                _os_log_impl(&dword_261725000, v24, OS_LOG_TYPE_INFO, "this cell is not using the right utterance because we have one in flight, swapping with current utterance: %@", buf, 0xCu);
              }
            }

LABEL_27:
            v32 = [(RTTUIConversationViewController *)self conversation];
            v33 = [v32 utterances];
            if ([v33 count] - 1 == v8)
            {
              v34 = [v43 isMe];

              if (!v34)
              {
LABEL_32:
                objc_initWeak(buf, self);
                if (objc_opt_respondsToSelector())
                {
                  v44[0] = MEMORY[0x277D85DD0];
                  v44[1] = 3221225472;
                  v44[2] = __67__RTTUIConversationViewController_tableView_cellForRowAtIndexPath___block_invoke_496;
                  v44[3] = &unk_279AE5178;
                  v45 = v43;
                  objc_copyWeak(&v46, buf);
                  [(RTTUIResponseCell *)v10 _setAccessibilityIsRealtimeElementBlock:v44];
                  objc_destroyWeak(&v46);
                }

                objc_destroyWeak(buf);

LABEL_35:
                if (v10)
                {
                  goto LABEL_37;
                }

                break;
              }

              v32 = [(RTTUIConversationViewController *)self call];
              -[RTTUIResponseCell setEditingUtterance:](v10, "setEditingUtterance:", [v32 isConnected]);
            }

            else
            {
            }

            goto LABEL_32;
          }
        }
      }

      goto LABEL_27;
  }

  v10 = [v6 dequeueReusableCellWithIdentifier:@"EmptyCell" forIndexPath:v7];
LABEL_37:

  return v10;
}

uint64_t __67__RTTUIConversationViewController_tableView_cellForRowAtIndexPath___block_invoke_496(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isMe])
  {
    return 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained conversation];
  v5 = [v4 utterances];
  v6 = [v5 reverseObjectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (![v11 isMe])
        {
          v2 = [*(a1 + 32) isEqual:v11];
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v2 = 0;
LABEL_13:

  return v2;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 row];
  v7 = [v5 section];

  if (v7 == 3)
  {
    v8 = [(RTTUIConversationViewController *)self cannedResponses];
    if (v6 < [v8 count])
    {
      v9 = [v8 objectAtIndex:v6];
      v10 = [v9 stringByAppendingString:@" "];

      v11 = +[RTTUIConversationControllerCoordinator sharedInstance];
      [v11 sendNewUtteranceString:v10 controller:self];

      AXPerformBlockAsynchronouslyOnMainThread();
    }
  }
}

void __69__RTTUIConversationViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v3 = [v2 numberOfRowsInSection:0];

  if (v3 >= 1)
  {
    v5 = [*(a1 + 32) tableView];
    v4 = [MEMORY[0x277CCAA70] indexPathForRow:v3 - 1 inSection:0];
    [v5 scrollToRowAtIndexPath:v4 atScrollPosition:3 animated:1];
  }
}

- (void)_updateTableViewRowAtIndexPath:(id)a3 action:(int64_t)a4 animation:(int64_t)a5
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v11 = a3;
    v8 = MEMORY[0x277CBEA60];
    v9 = a3;
    v10 = [v8 arrayWithObjects:&v11 count:1];

    [(RTTUIConversationViewController *)self _updateTableViewRowsAtIndexPaths:v10 action:a4 animation:a5, v11, v12];
  }
}

- (void)_updateTableViewRowsAtIndexPaths:(id)a3 action:(int64_t)a4 animation:(int64_t)a5
{
  v8 = a3;
  objc_initWeak(&location, self);
  if (a4 == 2)
  {
    v9 = v14;
    v10 = &v15;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v11 = __85__RTTUIConversationViewController__updateTableViewRowsAtIndexPaths_action_animation___block_invoke_3;
  }

  else if (a4 == 1)
  {
    v9 = v16;
    v10 = &v17;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v11 = __85__RTTUIConversationViewController__updateTableViewRowsAtIndexPaths_action_animation___block_invoke_2;
  }

  else
  {
    v9 = v18;
    v10 = &v19;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v11 = __85__RTTUIConversationViewController__updateTableViewRowsAtIndexPaths_action_animation___block_invoke;
  }

  v9[2] = v11;
  v9[3] = &unk_279AE51A0;
  objc_copyWeak(v10, &location);
  v12 = v8;
  v9[4] = v12;
  v9[6] = a5;
  v13 = MEMORY[0x26670A470](v9);

  objc_destroyWeak(v10);
  v13[2](v13);
  objc_destroyWeak(&location);
}

void __85__RTTUIConversationViewController__updateTableViewRowsAtIndexPaths_action_animation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained tableView];
  [v2 reloadRowsAtIndexPaths:*(a1 + 32) withRowAnimation:*(a1 + 48)];
}

void __85__RTTUIConversationViewController__updateTableViewRowsAtIndexPaths_action_animation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained tableView];
  [v2 insertRowsAtIndexPaths:*(a1 + 32) withRowAnimation:*(a1 + 48)];
}

void __85__RTTUIConversationViewController__updateTableViewRowsAtIndexPaths_action_animation___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained tableView];
  [v2 deleteRowsAtIndexPaths:*(a1 + 32) withRowAnimation:*(a1 + 48)];
}

- (void)utteranceCellDidUpdateContent:(id)a3
{
  v4 = a3;
  v5 = [(RTTUIConversationViewController *)self tableView];
  v6 = [v5 indexPathForCell:v4];

  if (v6)
  {
    v7 = [(RTTUIConversationViewController *)self tableView];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__RTTUIConversationViewController_utteranceCellDidUpdateContent___block_invoke;
    v8[3] = &unk_279AE4E50;
    v8[4] = self;
    v9 = v6;
    [v7 performBatchUpdates:v8 completion:0];
  }
}

uint64_t __65__RTTUIConversationViewController_utteranceCellDidUpdateContent___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateTableViewRowAtIndexPath:*(a1 + 40) action:0 animation:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _scrollToIndexPathIfNecessary:v3 animated:1];
}

- (void)textViewDidChangeSelection:(id)a3
{
  v7 = a3;
  v4 = [(RTTUIConversationViewController *)self call];
  if ([RTTUIUtilities ttyShouldBeRealtimeForCall:v4])
  {
    v5 = [v7 text];
    v6 = [v5 length];

    if (!v6)
    {
      goto LABEL_5;
    }

    v4 = [(RTTUIConversationViewController *)self currentUtterance];
    [v4 resetTimeout];
  }

LABEL_5:
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v38 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = [(RTTUIConversationViewController *)self call];
  if (![RTTUIUtilities ttyShouldBeRealtimeForCall:v11])
  {
    goto LABEL_4;
  }

  v12 = [v9 text];
  if ([v12 length])
  {

LABEL_4:
    goto LABEL_5;
  }

  v24 = [v10 length];

  if (v24)
  {
LABEL_5:
    if (self->_unsupportedCharacterSet)
    {
      v33 = location;
      v13 = [v10 length];
      v14 = [v10 mutableCopy];
      if (v13)
      {
        v31 = length;
        v32 = v9;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        transform = *MEMORY[0x277CBF110];
        v34 = *MEMORY[0x277CBF100];
        do
        {
          v18 = [v10 characterAtIndex:v17];
          if ([(NSMutableCharacterSet *)self->_unsupportedCharacterSet characterIsMember:v18])
          {
            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", v18];
            v20 = [(NSDictionary *)self->_asciiSubstitutions objectForKey:v19];
            if (!v20)
            {
              v20 = [v19 mutableCopy];
              CFStringTransform(v20, 0, transform, 0);
              CFStringTransform(v20, 0, v34, 0);
              if (([(__CFString *)v20 isEqualToString:@"?"]& 1) != 0 || [(__CFString *)v20 isEqualToString:v19])
              {
                [(__CFString *)v20 setString:@" "];
              }
            }

            v15 = 1;
            [v14 replaceCharactersInRange:v16 + v17 withString:{1, v20}];
            v16 = v16 + [(__CFString *)v20 length]- 1;
          }

          ++v17;
        }

        while (v13 != v17);
        if (v15)
        {
          v9 = v32;
          v21 = [v32 text];
          v22 = [v21 stringByReplacingCharactersInRange:v33 withString:{v31, v14}];

          [v32 setText:v22];
          [(RTTUIConversationViewController *)self textViewDidChange:v32];

          v23 = 0;
        }

        else
        {
          v23 = 1;
          v9 = v32;
        }
      }

      else
      {
        v23 = 1;
      }
    }

    else
    {
      v23 = 1;
    }

    goto LABEL_25;
  }

  v25 = [(RTTUIConversationViewController *)self conversation];
  v26 = [v25 lastUtteranceForMe:1];

  [v26 resetTimeout];
  v27 = [v26 text];
  [(RTTUIConversationViewController *)self setTextViewUtterance:v27];

  [(RTTUIConversationViewController *)self setCurrentUtterance:v26];
  v28 = AXLogRTT();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = [v26 text];
    *buf = 138412290;
    v37 = v29;
    _os_log_impl(&dword_261725000, v28, OS_LOG_TYPE_INFO, "Should text view change: %@", buf, 0xCu);
  }

  [(RTTUIConversationViewController *)self realtimeTextDidChange];
  v23 = 0;
LABEL_25:

  return v23;
}

- (void)textViewDidChange:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(RTTUIConversationViewController *)self updateTableViewSizeAnimated:1];
  [(RTTUITextView *)self->_textView setShowTTYPredictions:0];
  ttyPredictionsTimer = self->_ttyPredictionsTimer;
  if (!ttyPredictionsTimer)
  {
    v6 = objc_alloc(MEMORY[0x277CE6950]);
    v7 = [v6 initWithTargetSerialQueue:MEMORY[0x277D85CD0]];
    v8 = self->_ttyPredictionsTimer;
    self->_ttyPredictionsTimer = v7;

    ttyPredictionsTimer = self->_ttyPredictionsTimer;
  }

  [(AXDispatchTimer *)ttyPredictionsTimer cancel];
  objc_initWeak(&location, self);
  v9 = self->_ttyPredictionsTimer;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__RTTUIConversationViewController_textViewDidChange___block_invoke;
  v14[3] = &unk_279AE5018;
  v14[4] = self;
  objc_copyWeak(&v15, &location);
  [(AXDispatchTimer *)v9 afterDelay:v14 processBlock:1.75];
  v10 = [(RTTUIConversationViewController *)self call];
  v11 = [RTTUIUtilities ttyShouldBeRealtimeForCall:v10];

  if (v11)
  {
    v12 = AXLogRTT();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_261725000, v12, OS_LOG_TYPE_INFO, "Text view did change: %@", buf, 0xCu);
    }

    [(RTTUIConversationViewController *)self realtimeTextDidChange];
  }

  v13 = dispatch_time(0, 100000000);
  dispatch_after(v13, MEMORY[0x277D85CD0], &__block_literal_global_0);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __53__RTTUIConversationViewController_textViewDidChange___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 992) setShowTTYPredictions:1];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateTableViewSizeAnimated:0];
}

- (BOOL)utteranceIsSelected
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  [(RTTUITextView *)self->_textView selectedRange];
  if (v3)
  {
    *(v10 + 24) = 1;
  }

  else if (([(RTTUITextView *)self->_textView isEditing]& 1) == 0)
  {
    v4 = [(RTTUIConversationViewController *)self tableView];
    v5 = [v4 visibleCells];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__RTTUIConversationViewController_utteranceIsSelected__block_invoke;
    v8[3] = &unk_279AE51E8;
    v8[4] = &v9;
    [v5 enumerateObjectsUsingBlock:v8];
  }

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __54__RTTUIConversationViewController_utteranceIsSelected__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v10;
    [v6 selectedTextRange];
    if (v7)
    {
      [v6 selectedTextRange];
      if (v8)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (sel__define_ == a3)
  {
    v6 = [MEMORY[0x277D75688] sharedInputModeController];
    v5 = ([v6 deviceStateIsLocked] & 1) == 0 && -[RTTUIConversationViewController utteranceIsSelected](self, "utteranceIsSelected");
  }

  else
  {
    v8.receiver = self;
    v8.super_class = RTTUIConversationViewController;
    return [RTTUIConversationViewController canPerformAction:sel_canPerformAction_withSender_ withSender:?];
  }

  return v5;
}

- (void)_define:(id)a3
{
  v4 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3010000000;
  v25 = 0;
  v26 = 0;
  v24 = &unk_2617456BD;
  v25 = [(RTTUITextView *)self->_textView selectedRange];
  v26 = v5;
  if (v22[5])
  {
    v6 = [(RTTUITextView *)self->_textView text];
    v7 = v28[5];
    v28[5] = v6;

    v8 = [(RTTUITextView *)self->_textView selectedRange];
    v9 = v22;
    v22[4] = v8;
    v9[5] = v10;
  }

  else
  {
    v11 = [(RTTUIConversationViewController *)self tableView];
    v12 = [v11 visibleCells];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __43__RTTUIConversationViewController__define___block_invoke;
    v20[3] = &unk_279AE5210;
    v20[4] = &v27;
    v20[5] = &v21;
    [v12 enumerateObjectsUsingBlock:v20];
  }

  if ([v28[5] length])
  {
    [(RTTUIConversationViewController *)self setLookupController:0];
    v34 = 0;
    v35 = &v34;
    v36 = 0x2050000000;
    v13 = getDDParsecCollectionViewControllerClass_softClass;
    v37 = getDDParsecCollectionViewControllerClass_softClass;
    if (!getDDParsecCollectionViewControllerClass_softClass)
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __getDDParsecCollectionViewControllerClass_block_invoke;
      v33[3] = &unk_279AE4F10;
      v33[4] = &v34;
      __getDDParsecCollectionViewControllerClass_block_invoke(v33);
      v13 = v35[3];
    }

    v14 = v13;
    _Block_object_dispose(&v34, 8);
    v15 = [v13 alloc];
    v16 = [v15 initWithString:v28[5] range:{v22[4], v22[5]}];
    [(RTTUIConversationViewController *)self setLookupController:v16];

    v17 = [(RTTUIConversationViewController *)self lookupController];
    [v17 setModalPresentationStyle:6];

    v18 = [(RTTUIConversationViewController *)self navigationController];
    v19 = [(RTTUIConversationViewController *)self lookupController];
    [v18 presentModalViewController:v19 withTransition:0];
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
}

uint64_t __43__RTTUIConversationViewController__define___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v17;
    v7 = [v6 selectedTextRange];
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v11 = [v6 utterance];
      v12 = [v11 text];
      v13 = *(*(a1 + 32) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v15 = *(*(a1 + 40) + 8);
      *(v15 + 32) = v9;
      *(v15 + 40) = v10;
      *a4 = 1;
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)utteranceCellAtIndexPath:.cold.1()
{
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0(v0);
  OUTLINED_FUNCTION_1(&dword_261725000, v2, v3, "Wrong cell type found at index path: %@. Expected update cell, got %@", v4, v5, v6, v7, v8);
}

- (void)serviceUpdateCellAtIndexPath:.cold.1()
{
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0(v0);
  OUTLINED_FUNCTION_1(&dword_261725000, v2, v3, "Wrong cell type found at index path: %@. Expected service cell, got %@", v4, v5, v6, v7, v8);
}

@end
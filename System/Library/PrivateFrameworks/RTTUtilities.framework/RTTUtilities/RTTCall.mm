@interface RTTCall
- (BOOL)_handleInitialGarbageTextFromTTY:(id)y device:(id)device;
- (NSString)description;
- (RTTCall)initWithCall:(id)call;
- (RTTCallDelegate)delegate;
- (id)_processText:(id)text withDevice:(id)device;
- (id)formatMessage:(id)message withType:(int64_t)type isMe:(BOOL)me;
- (void)_postLocalNotificationForText:(id)text;
- (void)_sendTranslationForUtterance:(id)utterance;
- (void)audioSessionWasInterrupted:(id)interrupted;
- (void)callDidReceiveText:(id)text forUtterance:(id)utterance;
- (void)callStatusDidChange:(id)change;
- (void)dealloc;
- (void)device:(id)device didReceiveText:(id)text;
- (void)device:(id)device didStart:(BOOL)start error:(id)error;
- (void)deviceDidStop:(id)stop;
- (void)mediaServerDied;
- (void)recreateTTYDevice:(id)device;
- (void)registerNotifications;
- (void)saveTranscribedTextForConversation:(id)conversation isNew:(BOOL)new;
- (void)saveTranslatedTranscribedTextForConversation:(id)conversation translatedText:(id)text isNew:(BOOL)new;
- (void)sendString:(id)string;
- (void)sendToTTYDeviceWithString:(id)string;
- (void)setTranslationLocalesWithLocal:(id)local remote:(id)remote;
- (void)start;
- (void)stop;
@end

@implementation RTTCall

- (RTTCall)initWithCall:(id)call
{
  callCopy = call;
  v18.receiver = self;
  v18.super_class = RTTCall;
  v5 = [(RTTCall *)&v18 init];
  v6 = v5;
  if (v5)
  {
    [(RTTCall *)v5 setCall:callCopy];
    v7 = +[RTTDatabaseManager sharedManager];
    callUUID = [callCopy callUUID];
    v9 = [v7 conversationForCallUID:callUUID];

    if (!v9)
    {
      v9 = [RTTConversation conversationWithCall:callCopy];
      v10 = +[RTTDatabaseManager sharedManager];
      [v10 saveConversation:v9];
    }

    [(RTTCall *)v6 setConversation:v9];
    v11 = dispatch_queue_create("tty-call-queue", 0);
    callQueue = v6->_callQueue;
    v6->_callQueue = v11;

    [(RTTCall *)v6 setSubstitutions:&unk_2873FFCF8];
    [(RTTCall *)v6 registerNotifications];
    v13 = [objc_alloc(MEMORY[0x277CE6950]) initWithTargetSerialQueue:v6->_callQueue];
    incomingMessageTimeout = v6->_incomingMessageTimeout;
    v6->_incomingMessageTimeout = v13;

    [(AXDispatchTimer *)v6->_incomingMessageTimeout setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    v15 = [objc_alloc(MEMORY[0x277CE6950]) initWithTargetSerialQueue:v6->_callQueue];
    outgoingMessageTimeout = v6->_outgoingMessageTimeout;
    v6->_outgoingMessageTimeout = v15;

    [(AXDispatchTimer *)v6->_outgoingMessageTimeout setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(RTTCall *)self setDelegate:0];
  [(RTTCall *)self setCall:0];
  [(RTTCall *)self stop];
  v4.receiver = self;
  v4.super_class = RTTCall;
  [(RTTCall *)&v4 dealloc];
}

- (void)registerNotifications
{
  v15[1] = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_recreateTTYDevice_ name:*MEMORY[0x277D6F0A8] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_recreateTTYDevice_ name:*MEMORY[0x277D6F0B8] object:0];

  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  v6 = MEMORY[0x277D26D40];
  v15[0] = *MEMORY[0x277D26D40];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [mEMORY[0x277D26E58] setAttribute:v7 forKey:*MEMORY[0x277D26DD0] error:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = *v6;
  mEMORY[0x277D26E58]2 = [MEMORY[0x277D26E58] sharedAVSystemController];
  [defaultCenter3 addObserver:self selector:sel_mediaServerDied name:v9 object:mEMORY[0x277D26E58]2];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel_audioSessionWasInterrupted_ name:*MEMORY[0x277CB8068] object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel_callStatusDidChange_ name:*MEMORY[0x277D6EFF0] object:0];

  defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter6 addObserver:self selector:sel_callStatusDidChange_ name:*MEMORY[0x277D6EFE0] object:0];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setTranslationLocalesWithLocal:(id)local remote:(id)remote
{
  localCopy = local;
  remoteCopy = remote;
  v8 = remoteCopy;
  if (localCopy != remoteCopy && localCopy && remoteCopy)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v9 = get_LTTranslatorClass_softClass;
    v23 = get_LTTranslatorClass_softClass;
    if (!get_LTTranslatorClass_softClass)
    {
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __get_LTTranslatorClass_block_invoke;
      v18 = &unk_279AE78F0;
      v19 = &v20;
      __get_LTTranslatorClass_block_invoke(&v15);
      v9 = v21[3];
    }

    v10 = v9;
    _Block_object_dispose(&v20, 8);
    v11 = objc_alloc_init(v9);
    [(RTTCall *)self setTranslator:v11];

    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v12 = get_LTLocalePairClass_softClass;
    v23 = get_LTLocalePairClass_softClass;
    if (!get_LTLocalePairClass_softClass)
    {
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __get_LTLocalePairClass_block_invoke;
      v18 = &unk_279AE78F0;
      v19 = &v20;
      __get_LTLocalePairClass_block_invoke(&v15);
      v12 = v21[3];
    }

    v13 = v12;
    _Block_object_dispose(&v20, 8);
    v14 = [[v12 alloc] initWithSourceLocale:localCopy targetLocale:v8];
    [(RTTCall *)self setTranslationLocales:v14];
  }

  else
  {
    [(RTTCall *)self setTranslator:0];
    [(RTTCall *)self setTranslationLocales:0];
  }
}

- (void)audioSessionWasInterrupted:(id)interrupted
{
  v9 = *MEMORY[0x277D85DE8];
  interruptedCopy = interrupted;
  v4 = AXLogRTT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = interruptedCopy;
    _os_log_impl(&dword_261754000, v4, OS_LOG_TYPE_INFO, "Media server interrupted %@", buf, 0xCu);
  }

  v5 = interruptedCopy;
  AXPerformBlockOnMainThread();

  v6 = *MEMORY[0x277D85DE8];
}

void __38__RTTCall_audioSessionWasInterrupted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:*MEMORY[0x277CB8080]];
  v4 = [v3 unsignedIntegerValue];

  if (!v4)
  {
    v5 = *(a1 + 40);

    [v5 recreateTTYDevice:0];
  }
}

- (void)mediaServerDied
{
  v3 = AXLogRTT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_261754000, v3, OS_LOG_TYPE_INFO, "Media server died.", v5, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(RTTCall *)self performSelector:sel_registerNotifications withObject:0 afterDelay:2.0];
  [(RTTCall *)self recreateTTYDevice:0];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = RTTCall;
  v4 = [(RTTCall *)&v9 description];
  call = [(RTTCall *)self call];
  conversation = [(RTTCall *)self conversation];
  v7 = [v3 stringWithFormat:@"%@ - %@ = %@", v4, call, conversation];

  return v7;
}

- (void)callStatusDidChange:(id)change
{
  v21 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  object = [changeCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [changeCopy object];
    callUUID = [object2 callUUID];
    call = [(RTTCall *)self call];
    callUUID2 = [call callUUID];
    v11 = [callUUID isEqualToString:callUUID2];

    if (v11)
    {
      v12 = AXLogRTT();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        conversation = [(RTTCall *)self conversation];
        v17 = 138412546;
        v18 = conversation;
        v19 = 2112;
        v20 = object2;
        _os_log_impl(&dword_261754000, v12, OS_LOG_TYPE_INFO, "Call status changed, saving conversation to database. %@ - %@", &v17, 0x16u);
      }

      v14 = +[RTTDatabaseManager sharedManager];
      conversation2 = [(RTTCall *)self conversation];
      [v14 saveConversation:conversation2];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)recreateTTYDevice:(id)device
{
  v45 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  object = [deviceCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_6;
  }

  object2 = [deviceCopy object];
  callUUID = [object2 callUUID];
  call = [(RTTCall *)self call];
  callUUID2 = [call callUUID];
  v11 = [callUUID isEqualToString:callUUID2];

  v12 = AXLogRTT();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_261754000, v12, OS_LOG_TYPE_INFO, "Recreating TTY device with updated call", buf, 2u);
    }

    [(RTTCall *)self setCall:object2];
LABEL_6:
    [MEMORY[0x277CE56E0] stopAudioSession];
    ttyDevice = [(RTTCall *)self ttyDevice];
    [ttyDevice stop];

    [(RTTCall *)self setTtyDevice:0];
    call2 = [(RTTCall *)self call];
    supportsTTYWithVoice = [call2 supportsTTYWithVoice];

    if ((supportsTTYWithVoice & 1) == 0)
    {
      [MEMORY[0x277CE56E0] setAudioSessionProperties:&unk_2873FFD48];
      [MEMORY[0x277CE56E0] startAudioSession];
    }

    self->_ttyMode = 0;
    call3 = [(RTTCall *)self call];
    supportsTTYWithVoice2 = [call3 supportsTTYWithVoice];

    if (supportsTTYWithVoice2)
    {
      self->_ttyMode = 3;
      call4 = [(RTTCall *)self call];
      providerContext = [call4 providerContext];
      v21 = AXTTYTextStreamToken();
      v22 = [providerContext objectForKey:v21];
      integerValue = [v22 integerValue];
    }

    else
    {
      call5 = [(RTTCall *)self call];
      isUsingBaseband = [call5 isUsingBaseband];

      if (isUsingBaseband)
      {
        self->_ttyMode = 1;
        goto LABEL_17;
      }

      integerValue = 0;
    }

    if (self->_ttyMode == 3)
    {
      v36 = 0;
      v26 = &v36;
      v27 = [objc_alloc(MEMORY[0x277CE5760]) initWithStreamToken:integerValue error:&v36];
LABEL_18:
      v12 = v27;
      object2 = *v26;
      [v12 setDelegate:self];
      v30 = AXLogRTT();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        ttyMode = self->_ttyMode;
        call6 = [(RTTCall *)self call];
        *buf = 134218754;
        v38 = ttyMode;
        v39 = 2112;
        v40 = object2;
        v41 = 2112;
        v42 = deviceCopy;
        v43 = 2112;
        v44 = call6;
        _os_log_impl(&dword_261754000, v30, OS_LOG_TYPE_INFO, "Creating TTY %ld, %@ = %@ = %@", buf, 0x2Au);
      }

      [(RTTCall *)self setTtyDevice:v12];
      ttyDevice2 = [(RTTCall *)self ttyDevice];
      [ttyDevice2 start];

      goto LABEL_21;
    }

LABEL_17:
    v28 = objc_alloc(MEMORY[0x277CE5760]);
    v29 = self->_ttyMode;
    v35 = 0;
    v26 = &v35;
    v27 = [v28 initWithMode:v29 error:&v35];
    goto LABEL_18;
  }

  if (v13)
  {
    *buf = 0;
    _os_log_impl(&dword_261754000, v12, OS_LOG_TYPE_INFO, "Call UUID did not match current call. Ignoring call update", buf, 2u);
  }

LABEL_21:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  ttyDevice = [(RTTCall *)self ttyDevice];

  if (ttyDevice)
  {
    ttyDevice2 = [(RTTCall *)self ttyDevice];
    [ttyDevice2 start];
  }

  else
  {
    [(RTTCall *)self recreateTTYDevice:0];
  }

  call = [(RTTCall *)self call];
  if ([call isEmergency])
  {
    v6 = +[RTTTelephonyUtilities isTTYSupported];

    if (v6)
    {
      v7 = AXLogRTT();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_261754000, v7, OS_LOG_TYPE_INFO, "Sending emergency announce", buf, 2u);
      }

      v8 = 15;
      do
      {
        [(RTTCall *)self sendString:@" "];
        --v8;
      }

      while (v8);
      goto LABEL_16;
    }
  }

  else
  {
  }

  call2 = [(RTTCall *)self call];
  if ([call2 isTTY])
  {
    call3 = [(RTTCall *)self call];
    supportsTTYWithVoice = [call3 supportsTTYWithVoice];

    if ((supportsTTYWithVoice & 1) == 0)
    {
      [(RTTCall *)self toggleSystemOutputMute:1];
    }
  }

  else
  {
  }

LABEL_16:
  v12 = +[RTTTelephonyUtilities sharedUtilityProvider];
  call4 = [(RTTCall *)self call];
  v14 = [v12 answerRTTCallAsMutedForCall:call4];

  if ((v14 & 1) == 0)
  {
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

void __16__RTTCall_start__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) call];
  [v1 setUplinkMuted:0];
}

- (void)stop
{
  [MEMORY[0x277CE56E0] stopAudioSession];
  ttyDevice = [(RTTCall *)self ttyDevice];
  [ttyDevice stop];

  [(RTTCall *)self setTtyDevice:0];
  v5 = +[RTTDatabaseManager sharedManager];
  conversation = [(RTTCall *)self conversation];
  [v5 saveConversation:conversation];
}

- (void)sendString:(id)string
{
  stringCopy = string;
  callQueue = self->_callQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __22__RTTCall_sendString___block_invoke;
  v7[3] = &unk_279AE7760;
  v7[4] = self;
  v8 = stringCopy;
  v6 = stringCopy;
  dispatch_async(callQueue, v7);
}

void __22__RTTCall_sendString___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v3 = [*(a1 + 32) call];
  v4 = [v2 contactPathForCall:v3];

  v5 = [RTTUtterance utteranceWithContactPath:v4 andText:*(a1 + 40)];
  v6 = [*(a1 + 32) conversation];
  [v6 addUtterance:v5];

  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __22__RTTCall_sendString___block_invoke_2;
  v14[3] = &unk_279AE7738;
  v14[4] = v7;
  [v8 afterDelay:v14 processBlock:3.0];
  v9 = AXLogRTT();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 40);
    *buf = 138412546;
    v16 = v10;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_261754000, v9, OS_LOG_TYPE_INFO, "Sending string[%@] with uttererance: %@", buf, 0x16u);
  }

  v11 = AXLogRTT();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [*(a1 + 32) conversation];
    *buf = 138412290;
    v16 = v12;
    _os_log_impl(&dword_261754000, v11, OS_LOG_TYPE_INFO, "Sending with convo: %@", buf, 0xCu);
  }

  [*(a1 + 32) sendToTTYDeviceWithString:*(a1 + 40)];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)sendToTTYDeviceWithString:(id)string
{
  v19 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = stringCopy;
  if (self->_ttyMode == 3)
  {
    ttyDevice = [(RTTCall *)self ttyDevice];
    v7 = [ttyDevice sendText:v5];

    ttyDevice2 = AXLogRTT();
    if (os_log_type_enabled(ttyDevice2, OS_LOG_TYPE_INFO))
    {
      v13 = 67109634;
      v14 = v7;
      v15 = 2112;
      v16 = v5;
      v17 = 2048;
      v18 = [v5 length];
      _os_log_impl(&dword_261754000, ttyDevice2, OS_LOG_TYPE_INFO, "TTY send string %d = |%@| %lu", &v13, 0x1Cu);
    }
  }

  else
  {
    v9 = [stringCopy characterAtIndex:0];
    v10 = AXLogRTT();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 67109376;
      v14 = v9;
      v15 = 1024;
      LODWORD(v16) = v9;
      _os_log_impl(&dword_261754000, v10, OS_LOG_TYPE_INFO, "TTY send %C, |%x|", &v13, 0xEu);
    }

    ttyDevice2 = [(RTTCall *)self ttyDevice];
    v11 = [ttyDevice2 sendCharacter:v9];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)formatMessage:(id)message withType:(int64_t)type isMe:(BOOL)me
{
  meCopy = me;
  messageCopy = message;
  if ((type - 2) > 6)
  {
    v15 = @"%@";
  }

  else
  {
    v10 = off_279AE7F88[type - 2];
    translationLocales = [(RTTCall *)self translationLocales];

    if (translationLocales)
    {
      translationLocales2 = [(RTTCall *)self translationLocales];
      v13 = translationLocales2;
      if (meCopy)
      {
        translationLocales = [translationLocales2 targetLocale];
        [translationLocales localeIdentifier];
      }

      else
      {
        sourceLocale = [translationLocales2 sourceLocale];
        [sourceLocale localeIdentifier];
      }
      v14 = ;
      v15 = ttyLocStringAndLocale(v10, v14);

      if (meCopy)
      {
      }

      else
      {
      }
    }

    else
    {
      v15 = ttyLocString(v10);
    }
  }

  messageCopy = [MEMORY[0x277CCACA8] stringWithFormat:v15, messageCopy];

  return messageCopy;
}

- (void)device:(id)device didStart:(BOOL)start error:(id)error
{
  startCopy = start;
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = AXLogRTT();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109378;
    v9[1] = startCopy;
    v10 = 2112;
    v11 = errorCopy;
    _os_log_impl(&dword_261754000, v7, OS_LOG_TYPE_INFO, "TTY Start %d %@", v9, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deviceDidStop:(id)stop
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = AXLogRTT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    call = [(RTTCall *)self call];
    v9[0] = 67109120;
    v9[1] = [call status];
    _os_log_impl(&dword_261754000, v4, OS_LOG_TYPE_INFO, "TTY Stop %d", v9, 8u);
  }

  call2 = [(RTTCall *)self call];
  status = [call2 status];

  if ((status - 1) <= 1)
  {
    [(RTTCall *)self recreateTTYDevice:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_handleInitialGarbageTextFromTTY:(id)y device:(id)device
{
  yCopy = y;
  deviceCopy = device;
  if (([yCopy isEqualToString:@"O"] & 1) != 0 || objc_msgSend(yCopy, "isEqualToString:", @";") && (-[NSMutableString isEqualToString:](self->_garbageCollection, "isEqualToString:", @"O") & 1) != 0 || objc_msgSend(yCopy, "isEqualToString:", @"?") && -[NSMutableString isEqualToString:](self->_garbageCollection, "isEqualToString:", @"O;"))
  {
    if (!self->_garbageCharacterStripperTimer)
    {
      v8 = [objc_alloc(MEMORY[0x277CE6950]) initWithTargetSerialQueue:self->_callQueue];
      garbageCharacterStripperTimer = self->_garbageCharacterStripperTimer;
      self->_garbageCharacterStripperTimer = v8;

      string = [MEMORY[0x277CCAB68] string];
      garbageCollection = self->_garbageCollection;
      self->_garbageCollection = string;
    }

    [(NSMutableString *)self->_garbageCollection appendString:yCopy];
    v12 = [(NSMutableString *)self->_garbageCollection length];
    [(AXDispatchTimer *)self->_garbageCharacterStripperTimer cancel];
    if (v12 == 3)
    {
      v13 = self->_garbageCollection;
      self->_garbageCollection = 0;
    }

    else
    {
      v15 = self->_garbageCharacterStripperTimer;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __51__RTTCall__handleInitialGarbageTextFromTTY_device___block_invoke;
      v17[3] = &unk_279AE7760;
      v17[4] = self;
      v18 = deviceCopy;
      [(AXDispatchTimer *)v15 afterDelay:v17 processBlock:1.0];
      v13 = v18;
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __51__RTTCall__handleInitialGarbageTextFromTTY_device___block_invoke(uint64_t a1)
{
  [*(a1 + 32) device:*(a1 + 40) didReceiveText:*(*(a1 + 32) + 24)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;
}

- (void)_sendTranslationForUtterance:(id)utterance
{
  utteranceCopy = utterance;
  translator = [(RTTCall *)self translator];
  if (translator)
  {
    v6 = translator;
    translationLocales = [(RTTCall *)self translationLocales];
    if (translationLocales)
    {
      v8 = translationLocales;
      text = [utteranceCopy text];
      v10 = [text length];

      if (v10)
      {
        text2 = [utteranceCopy text];
        isMe = [utteranceCopy isMe];
        translationLocales2 = [(RTTCall *)self translationLocales];
        sourceLocale = [translationLocales2 sourceLocale];

        translationLocales3 = [(RTTCall *)self translationLocales];
        targetLocale = [translationLocales3 targetLocale];

        v32 = 0;
        v33 = &v32;
        v34 = 0x2050000000;
        v17 = get_LTTextTranslationRequestClass_softClass;
        v35 = get_LTTextTranslationRequestClass_softClass;
        if (!get_LTTextTranslationRequestClass_softClass)
        {
          location[0] = MEMORY[0x277D85DD0];
          location[1] = 3221225472;
          location[2] = __get_LTTextTranslationRequestClass_block_invoke;
          location[3] = &unk_279AE78F0;
          location[4] = &v32;
          __get_LTTextTranslationRequestClass_block_invoke(location);
          v17 = v33[3];
        }

        v18 = v17;
        _Block_object_dispose(&v32, 8);
        v19 = [v17 alloc];
        if (isMe)
        {
          v20 = sourceLocale;
        }

        else
        {
          v20 = targetLocale;
        }

        if (isMe)
        {
          v21 = targetLocale;
        }

        else
        {
          v21 = sourceLocale;
        }

        v22 = [v19 initWithSourceLocale:v20 targetLocale:v21];
        v23 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:text2];
        [v22 setText:v23];

        [v22 setTaskHint:5];
        objc_initWeak(location, self);
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __40__RTTCall__sendTranslationForUtterance___block_invoke;
        v26[3] = &unk_279AE7CF0;
        v24 = text2;
        v27 = v24;
        objc_copyWeak(&v29, location);
        v30 = isMe;
        v28 = utteranceCopy;
        [v22 setCompletionHandler:v26];
        translator2 = [(RTTCall *)self translator];
        [translator2 translate:v22];

        objc_destroyWeak(&v29);
        objc_destroyWeak(location);
      }
    }

    else
    {
    }
  }
}

void __40__RTTCall__sendTranslationForUtterance___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 translatedText], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v7 = AXLogRTT();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __40__RTTCall__sendTranslationForUtterance___block_invoke_cold_1(v6, v7);
    }
  }

  else
  {
    v9 = [v5 translatedText];
    v10 = [v9 string];
    v11 = [v10 isEqualToString:*(a1 + 32)];

    if (v11)
    {
      goto LABEL_5;
    }

    v12 = AXLogRTT();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&dword_261754000, v12, OS_LOG_TYPE_INFO, "Successfully translated utterance", v19, 2u);
    }

    v13 = [v5 translatedText];
    v7 = [v13 string];

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v15 = [WeakRetained formatMessage:v7 withType:6 isMe:*(a1 + 56)];

    if (*(a1 + 56) == 1)
    {
      v16 = objc_loadWeakRetained((a1 + 48));
      [v16 sendToTTYDeviceWithString:v15];
    }

    else
    {
      [*(a1 + 40) updateTranslation:v7];
      v16 = objc_loadWeakRetained((a1 + 48));
      v17 = [v16 delegate];
      v18 = objc_loadWeakRetained((a1 + 48));
      [v17 ttyCall:v18 didUpdateTranslation:v7 forUtterance:*(a1 + 32)];
    }
  }

LABEL_5:
}

- (id)_processText:(id)text withDevice:(id)device
{
  v19 = *MEMORY[0x277D85DE8];
  textCopy = text;
  deviceCopy = device;
  conversation = [(RTTCall *)self conversation];
  utterances = [conversation utterances];
  v10 = [utterances count];

  if (v10)
  {
LABEL_9:
    textCopy = textCopy;
    v12 = textCopy;
    goto LABEL_10;
  }

  if (![(RTTCall *)self _handleInitialGarbageTextFromTTY:textCopy device:deviceCopy])
  {
    if ([(NSMutableString *)self->_garbageCollection length])
    {
      [(NSMutableString *)self->_garbageCollection appendString:textCopy];
      v13 = [(NSMutableString *)self->_garbageCollection copy];

      textCopy = v13;
    }

    garbageCollection = self->_garbageCollection;
    self->_garbageCollection = 0;

    goto LABEL_9;
  }

  v11 = AXLogRTT();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    v18 = textCopy;
    _os_log_impl(&dword_261754000, v11, OS_LOG_TYPE_INFO, "not processing initial text because it looks like garbage: %@", &v17, 0xCu);
  }

  v12 = 0;
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)callDidReceiveText:(id)text forUtterance:(id)utterance
{
  v18 = *MEMORY[0x277D85DE8];
  textCopy = text;
  utteranceCopy = utterance;
  v8 = AXLogRTT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    delegate = [(RTTCall *)self delegate];
    v12 = 138412802;
    v13 = delegate;
    v14 = 2112;
    v15 = textCopy;
    v16 = 2112;
    v17 = utteranceCopy;
    _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "Delegate handling call did receive: %@ for [%@]->%@", &v12, 0x20u);
  }

  delegate2 = [(RTTCall *)self delegate];
  [delegate2 ttyCall:self didReceiveString:textCopy forUtterance:utteranceCopy];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)saveTranscribedTextForConversation:(id)conversation isNew:(BOOL)new
{
  conversationCopy = conversation;
  callQueue = self->_callQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__RTTCall_saveTranscribedTextForConversation_isNew___block_invoke;
  block[3] = &unk_279AE7D18;
  newCopy = new;
  block[4] = self;
  v10 = conversationCopy;
  v8 = conversationCopy;
  dispatch_async(callQueue, block);
}

uint64_t __52__RTTCall_saveTranscribedTextForConversation_isNew___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) conversation];
  v4 = v3;
  v5 = *(a1 + 40);
  if (v2 == 1)
  {
    v6 = [v3 addTranscriptionFromOtherContactPath:v5];
  }

  else
  {
    v7 = [v3 updateTranscriptionFromOtherContactPath:v5];
  }

  v8 = +[RTTDatabaseManager sharedManager];
  v9 = [*(a1 + 32) conversation];
  [v8 saveConversation:v9];

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);

  return [v10 _postLocalNotificationForText:v11];
}

- (void)saveTranslatedTranscribedTextForConversation:(id)conversation translatedText:(id)text isNew:(BOOL)new
{
  conversationCopy = conversation;
  textCopy = text;
  callQueue = self->_callQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__RTTCall_saveTranslatedTranscribedTextForConversation_translatedText_isNew___block_invoke;
  v13[3] = &unk_279AE7D40;
  newCopy = new;
  v13[4] = self;
  v14 = textCopy;
  v15 = conversationCopy;
  v11 = conversationCopy;
  v12 = textCopy;
  dispatch_async(callQueue, v13);
}

uint64_t __77__RTTCall_saveTranslatedTranscribedTextForConversation_translatedText_isNew___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) conversation];
  v4 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  if (v2 == 1)
  {
    v7 = [v3 addTranslatedTranscriptionFromOtherContactPath:v5 original:v6];
  }

  else
  {
    v8 = [v3 updateTranslatedTranscriptionFromOtherContactPath:v5 original:v6];
  }

  v9 = +[RTTDatabaseManager sharedManager];
  v10 = [*(a1 + 32) conversation];
  [v9 saveConversation:v10];

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);

  return [v11 _postLocalNotificationForText:v12];
}

- (void)_postLocalNotificationForText:(id)text
{
  v49 = *MEMORY[0x277D85DE8];
  textCopy = text;
  if (![(RTTCall *)self isViewControllerVisible])
  {
    goto LABEL_11;
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v5 = getAXSpringBoardServerClass_softClass;
  v44 = getAXSpringBoardServerClass_softClass;
  if (!getAXSpringBoardServerClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    selfCopy = __getAXSpringBoardServerClass_block_invoke;
    v47 = &unk_279AE78F0;
    v48 = &v41;
    __getAXSpringBoardServerClass_block_invoke(&buf);
    v5 = v42[3];
  }

  v6 = v5;
  _Block_object_dispose(&v41, 8);
  server = [v5 server];
  focusedApps = [server focusedApps];
  v9 = [focusedApps ax_filteredArrayUsingBlock:&__block_literal_global_3];
  v10 = [v9 count];

  v11 = AXLogRTT();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v10 != 0;
    _os_log_impl(&dword_261754000, v11, OS_LOG_TYPE_INFO, "VC was visible, but was InCallService? %d", &buf, 8u);
  }

  if (v10)
  {
    if (![(RTTCall *)self isVisibleSent])
    {
      v12 = +[RTTSettings sharedInstance];
      rttLiveTranscriptionsEnabled = [v12 rttLiveTranscriptionsEnabled];

      if (rttLiveTranscriptionsEnabled)
      {
        [(RTTCall *)self setIsVisibleSent:1];
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, @"RTTCallUIVisibleNotificationName", 0, 0, 1u);
      }
    }

    v15 = 1;
  }

  else
  {
LABEL_11:
    v15 = 0;
  }

  call = [(RTTCall *)self call];
  if ([call isIncoming])
  {
    call2 = [(RTTCall *)self call];
    isScreening = [call2 isScreening];

    if (isScreening)
    {
      displayName = AXLogRTT();
      if (os_log_type_enabled(displayName, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_261754000, displayName, OS_LOG_TYPE_INFO, "Skipping user notification for incoming call in screening state", &buf, 2u);
      }

LABEL_31:

      goto LABEL_32;
    }
  }

  else
  {
  }

  v20 = AXLogRTT();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    call3 = [(RTTCall *)self call];
    isEndpointOnCurrentDevice = [call3 isEndpointOnCurrentDevice];
    LODWORD(buf) = 67109634;
    DWORD1(buf) = isEndpointOnCurrentDevice;
    WORD4(buf) = 1024;
    *(&buf + 10) = v15 ^ 1;
    HIWORD(buf) = 2112;
    selfCopy = self;
    _os_log_impl(&dword_261754000, v20, OS_LOG_TYPE_INFO, "Generating user notification based on whether device is endpoint %d of call and view control is hidden: %d [%@]", &buf, 0x18u);
  }

  if ((v15 & 1) == 0)
  {
    call4 = [(RTTCall *)self call];
    isEndpointOnCurrentDevice2 = [call4 isEndpointOnCurrentDevice];

    if (isEndpointOnCurrentDevice2)
    {
      call5 = [(RTTCall *)self call];
      displayName = [call5 displayName];

      if (![displayName length])
      {
        v26 = MEMORY[0x277CBDA78];
        v27 = MEMORY[0x277CBDA58];
        conversation = [(RTTCall *)self conversation];
        otherContactPath = [conversation otherContactPath];
        v30 = [v27 contactForPhoneNumber:otherContactPath];
        v31 = [v26 stringFromContact:v30 style:0];

        displayName = v31;
      }

      conversation2 = [(RTTCall *)self conversation];
      utterances = [conversation2 utterances];
      lastObject = [utterances lastObject];

      v35 = AXLogRTT();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = lastObject;
        _os_log_impl(&dword_261754000, v35, OS_LOG_TYPE_INFO, "Generating user notification with utterance: %@", &buf, 0xCu);
      }

      isMe = [lastObject isMe];
      if (lastObject)
      {
        v37 = isMe;
      }

      else
      {
        v37 = 1;
      }

      if ((v37 & 1) == 0)
      {
        call6 = [(RTTCall *)self call];
        callUUID = [call6 callUUID];
        RTTGenerateUserNotificationForContact(displayName, textCopy, lastObject, callUUID);
      }

      goto LABEL_31;
    }
  }

LABEL_32:

  v40 = *MEMORY[0x277D85DE8];
}

uint64_t __41__RTTCall__postLocalNotificationForText___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 bundleIdentifier];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getAXInCallServiceNameSymbolLoc_ptr;
  v12 = getAXInCallServiceNameSymbolLoc_ptr;
  if (!getAXInCallServiceNameSymbolLoc_ptr)
  {
    v5 = AccessibilityUtilitiesLibrary();
    v10[3] = dlsym(v5, "AXInCallServiceName");
    getAXInCallServiceNameSymbolLoc_ptr = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    v8 = __41__RTTCall__postLocalNotificationForText___block_invoke_cold_1();
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v8);
  }

  v6 = [v3 isEqualToString:*v4];

  return v6;
}

- (void)device:(id)device didReceiveText:(id)text
{
  v25 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  textCopy = text;
  v8 = AXLogRTT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [textCopy length];
    if (v9)
    {
      LODWORD(v9) = [textCopy characterAtIndex:0];
    }

    *buf = 138412546;
    v22 = textCopy;
    v23 = 1024;
    v24 = v9;
    _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "TTY receive string '%@' [%d]", buf, 0x12u);
  }

  substitutions = [(RTTCall *)self substitutions];
  v11 = [substitutions objectForKey:textCopy];

  if (v11)
  {
    v12 = v11;

    v13 = AXLogRTT();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v12;
      _os_log_impl(&dword_261754000, v13, OS_LOG_TYPE_INFO, "Replacing with |%@|", buf, 0xCu);
    }
  }

  else
  {
    v12 = textCopy;
  }

  callQueue = self->_callQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__RTTCall_device_didReceiveText___block_invoke;
  block[3] = &unk_279AE7D88;
  block[4] = self;
  v19 = v12;
  v20 = deviceCopy;
  v15 = deviceCopy;
  v16 = v12;
  dispatch_async(callQueue, block);

  v17 = *MEMORY[0x277D85DE8];
}

void __33__RTTCall_device_didReceiveText___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _processText:*(a1 + 40) withDevice:*(a1 + 48)];
  if ([v2 length])
  {
    v4 = 0;
    *&v3 = 138412290;
    v17 = v3;
    do
    {
      v5 = [v2 rangeOfComposedCharacterSequenceAtIndex:{v4, v17}];
      v7 = v6;
      v8 = [v2 substringWithRange:{v5, v6}];
      v9 = AXLogRTT();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = v17;
        v20 = v8;
        _os_log_impl(&dword_261754000, v9, OS_LOG_TYPE_INFO, "Processing individual substring: '%@'", buf, 0xCu);
      }

      v10 = [*(a1 + 32) conversation];
      v11 = [v10 appendStringFromOtherContactPath:v8];

      v12 = *(a1 + 32);
      v13 = [v11 text];
      [v12 callDidReceiveText:v8 forUtterance:v13];

      v4 += v7;
    }

    while (v4 < [v2 length]);
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 40);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __33__RTTCall_device_didReceiveText___block_invoke_419;
  v18[3] = &unk_279AE7738;
  v18[4] = v14;
  [v15 afterDelay:v18 processBlock:3.0];
  [*(a1 + 32) _postLocalNotificationForText:*(a1 + 40)];

  v16 = *MEMORY[0x277D85DE8];
}

- (RTTCallDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __40__RTTCall__sendTranslationForUtterance___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_261754000, a2, OS_LOG_TYPE_ERROR, "Failed to translate utterance with error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t __41__RTTCall__postLocalNotificationForText___block_invoke_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return [RTTRemoteCall responseForRequest:v0 options:?];
}

@end
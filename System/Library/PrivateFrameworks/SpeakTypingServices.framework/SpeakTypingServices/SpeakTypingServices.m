@interface SpeakTypingServices
+ (id)sharedInstance;
- (AXUIClient)speakTypingClient;
- (BOOL)notifySpeakServicesForAttributedSpeechOutput:(id)a3;
- (BOOL)notifySpeakServicesForSpeakAutoCorrections:(id)a3 forCurrentInputMode:(id)a4;
- (BOOL)notifySpeakServicesForSpeechOutput:(id)a3 volume:(double)a4 speakingRate:(double)a5;
- (BOOL)notifySpeakServicesToFeedbackQuickTypePrediction:(id)a3 forCurrentInputMode:(id)a4;
- (BOOL)notifySpeakServicesToInitializeServerConnection;
- (BOOL)notifySpeakServicesToStopSpeaking;
- (BOOL)notifySpeakServicesToStopSpeakingAutocorrections;
- (BOOL)verifyTestingConnection;
- (SpeakTypingServices)init;
- (id)_clientIdentifier;
- (id)lastSpokenString;
- (id)lastUsedVoiceIdentifier;
- (void)clearLastSpokenString;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3;
- (void)dealloc;
- (void)initializeServerConnection;
- (void)setVoiceIdentifier:(id)a3 forLanguage:(id)a4;
@end

@implementation SpeakTypingServices

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SpeakTypingServices sharedInstance];
  }

  v3 = sharedInstance__Shared;

  return v3;
}

uint64_t __37__SpeakTypingServices_sharedInstance__block_invoke()
{
  sharedInstance__Shared = objc_alloc_init(SpeakTypingServices);

  return MEMORY[0x2821F96F8]();
}

- (SpeakTypingServices)init
{
  v6.receiver = self;
  v6.super_class = SpeakTypingServices;
  v2 = [(SpeakTypingServices *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)dealloc
{
  v3 = [(SpeakTypingServices *)self speakTypingClient];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = SpeakTypingServices;
  [(SpeakTypingServices *)&v4 dealloc];
}

- (AXUIClient)speakTypingClient
{
  speakTypingClient = self->_speakTypingClient;
  if (!speakTypingClient)
  {
    [(SpeakTypingServices *)self initializeServerConnection];
    speakTypingClient = self->_speakTypingClient;
  }

  return speakTypingClient;
}

- (void)clearLastSpokenString
{
  v4 = [(SpeakTypingServices *)self speakTypingClient];
  v2 = [v4 sendSynchronousMessage:MEMORY[0x277CBEC10] withIdentifier:9 error:0];
  v3 = [v2 objectForKey:@"result"];
}

- (void)setVoiceIdentifier:(id)a3 forLanguage:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(SpeakTypingServices *)self speakTypingClient];
  v12[0] = @"voiceIdentifier";
  v12[1] = @"language";
  v13[0] = v7;
  v13[1] = v6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = [v8 sendSynchronousMessage:v9 withIdentifier:10 error:0];
  v11 = *MEMORY[0x277D85DE8];
}

- (id)lastUsedVoiceIdentifier
{
  v2 = [(SpeakTypingServices *)self speakTypingClient];
  v3 = [v2 sendSynchronousMessage:MEMORY[0x277CBEC10] withIdentifier:8 error:0];
  v4 = [v3 objectForKey:@"result"];

  return v4;
}

- (id)lastSpokenString
{
  v2 = [(SpeakTypingServices *)self speakTypingClient];
  v3 = [v2 sendSynchronousMessage:MEMORY[0x277CBEC10] withIdentifier:7 error:0];
  v4 = [v3 objectForKey:@"result"];

  return v4;
}

- (BOOL)verifyTestingConnection
{
  v2 = [(SpeakTypingServices *)self speakTypingClient];
  v3 = [v2 sendSynchronousMessage:MEMORY[0x277CBEC10] withIdentifier:15 error:0];
  v4 = [v3 objectForKey:@"result"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)notifySpeakServicesToStopSpeaking
{
  v2 = [(SpeakTypingServices *)self speakTypingClient];
  [v2 sendAsynchronousMessage:MEMORY[0x277CBEC10] withIdentifier:5 targetAccessQueue:0 completion:0];

  return 1;
}

- (BOOL)notifySpeakServicesToStopSpeakingAutocorrections
{
  v2 = [(SpeakTypingServices *)self speakTypingClient];
  [v2 sendAsynchronousMessage:&unk_287BD1608 withIdentifier:5 targetAccessQueue:0 completion:0];

  return 1;
}

- (BOOL)notifySpeakServicesToInitializeServerConnection
{
  if (!self->_speakTypingClient)
  {
    [(SpeakTypingServices *)self initializeServerConnection];
  }

  return 1;
}

- (BOOL)notifySpeakServicesForAttributedSpeechOutput:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
    v6 = [(SpeakTypingServices *)self speakTypingClient];
    v10 = *MEMORY[0x277CE7C80];
    v11[0] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v6 sendAsynchronousMessage:v7 withIdentifier:6 targetAccessQueue:0 completion:0];
  }

  result = a3 != 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)notifySpeakServicesForSpeechOutput:(id)a3 volume:(double)a4 speakingRate:(double)a5
{
  v18[3] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v9 = a3;
    v10 = [(SpeakTypingServices *)self speakTypingClient];
    v11 = *MEMORY[0x277CE7C80];
    v18[0] = v9;
    v17[0] = v11;
    v17[1] = @"AXSpeakTypingPayloadKeyVolume";
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v18[1] = v12;
    v17[2] = @"AXSpeakTypingPayloadKeyRate";
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
    v18[2] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

    [v10 sendAsynchronousMessage:v14 withIdentifier:6 targetAccessQueue:0 completion:0];
  }

  result = a3 != 0;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)notifySpeakServicesForSpeakAutoCorrections:(id)a3 forCurrentInputMode:(id)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (a3)
  {
    if (!v6)
    {
      v7 = &stru_287BD1328;
    }

    v8 = a3;
    v9 = [(SpeakTypingServices *)self speakTypingClient];
    v13[0] = *MEMORY[0x277CE7C80];
    v13[1] = @"AXSpeakTypingPayloadKeyLanguage";
    v14[0] = v8;
    v14[1] = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

    [v9 sendAsynchronousMessage:v10 withIdentifier:4 targetAccessQueue:0 completion:0];
  }

  v11 = *MEMORY[0x277D85DE8];
  return a3 != 0;
}

- (BOOL)notifySpeakServicesToFeedbackQuickTypePrediction:(id)a3 forCurrentInputMode:(id)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (UIAccessibilityIsVoiceOverRunning() || ![v6 length])
  {
    v10 = 0;
  }

  else
  {
    v8 = [(SpeakTypingServices *)self speakTypingClient];
    v13[0] = *MEMORY[0x277CE7C78];
    v13[1] = @"AXSpeakTypingPayloadKeyLanguage";
    v14[0] = v6;
    v14[1] = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    [v8 sendAsynchronousMessage:v9 withIdentifier:3 targetAccessQueue:0 completion:0];

    v10 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)_clientIdentifier
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 processIdentifier];

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v6 = [v4 stringWithFormat:@"SpeakTypingClientIdentifier-%@", v5];

  return v6;
}

- (void)initializeServerConnection
{
  if (!self->_speakTypingClient)
  {
    v4 = objc_alloc(MEMORY[0x277CE7740]);
    v5 = [(SpeakTypingServices *)self _clientIdentifier];
    v6 = [v4 initWithIdentifier:v5 serviceBundleName:@"SpeakServer"];
    speakTypingClient = self->_speakTypingClient;
    self->_speakTypingClient = v6;

    [(AXUIClient *)self->_speakTypingClient setDelegate:self];
    v8 = MEMORY[0x277CBEC10];
    v9 = self->_speakTypingClient;

    [(AXUIClient *)v9 sendAsynchronousMessage:v8 withIdentifier:14 targetAccessQueue:0 completion:0];
  }
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3
{
  if (self->_speakTypingClient == a3)
  {
    block[5] = v3;
    block[6] = v4;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__SpeakTypingServices_connectionWithServiceWasInterruptedForUserInterfaceClient___block_invoke;
    block[3] = &unk_279CD8D40;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __81__SpeakTypingServices_connectionWithServiceWasInterruptedForUserInterfaceClient___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) speakTypingClient];
  [v2 setDelegate:0];

  [*(a1 + 32) setSpeakTypingClient:0];
  if (_AXSWordFeedbackEnabled() || _AXSLetterFeedbackEnabled() || _AXSPhoneticFeedbackEnabled() || ([MEMORY[0x277CE7E20] sharedInstance], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "speakCorrectionsEnabled"), v3, v4))
  {
    v5 = *(a1 + 32);

    [v5 initializeServerConnection];
  }
}

@end
@interface SRUIFInstrumentationManager
+ (id)sharedManager;
- (BOOL)_hasDismissedForTurnContext:(id)a3;
- (SRUIFInstrumentationManager)init;
- (id)_convertVirtualAudioSubTypeToString:(unsigned int)a3;
- (id)_displayedDialogForAssistantUtteranceView:(id)a3;
- (id)_pnrErrorMessageWithError:(id)a3;
- (id)_routeInfoForOutputRoute;
- (id)cardIDforSnippetAceID:(id)a3;
- (id)latestResponseProducingTurn;
- (id)latestStoredTurn;
- (void)_barrierWithCompletion:(id)a3;
- (void)_emitInstrumentation:(id)a3 forTurn:(id)a4 atTime:(unint64_t)a5;
- (void)_populateDefaultHardwareInformationWithRouteInfo:(id)a3 forTTSEvent:(id)a4;
- (void)_populateWirelessHardwareInformationWithRouteInfo:(id)a3 forTTSEvent:(id)a4;
- (void)_prepareForTesting;
- (void)_resetBargeInDetectedEvent;
- (void)_storeCurrentInstrumentationTurnContextInLatestResponseProducingTurn;
- (void)_willInstrument:(id)a3 forTurn:(id)a4;
- (void)boostQueuedMessagesAndPerformOnQueueCompletion:(id)a3 timeout:(double)a4;
- (void)emitCasinoRelationshipEventWithViewIDFrom:(id)a3 ViewIDTo:(id)a4 casinoFromType:(int)a5;
- (void)emitFinalSpeechTranscriptionEventForAceObjectWithIdentifier:(id)a3;
- (void)emitInstrumentation:(id)a3;
- (void)emitInstrumentation:(id)a3 atTime:(unint64_t)a4;
- (void)emitPartialSpeechTranscriptionEventForAceObjectWithIdentifier:(id)a3;
- (void)emitPunchOutEventWithURL:(id)a3 appID:(id)a4 punchoutOrigin:(int)a5;
- (void)emitRequestFailedWithError:(id)a3;
- (void)emitRevealSpeechTranscriptionEventForAceObjectWithIdentifier:(id)a3;
- (void)emitTextToSpeechBeginEvent:(id)a3;
- (void)emitTextToSpeechEndEvent:(id)a3;
- (void)emitTextToSpeechRequestReceivedEventFor:(id)a3 atTime:(unint64_t)a4;
- (void)emitUIStateTransitionEventWithFromState:(int)a3 toState:(int)a4 withPresentationType:(int)a5 machAbsoluteTransitionTime:(double)a6;
- (void)emitUIStateTransitionForSiriDismissalWithReason:(int)a3;
- (void)emitUUFRCasinoCardSelectedEventWithCardSectionID:(id)a3 ordinalCardSectionPosition:(int64_t)a4 snippetAceId:(id)a5;
- (void)emitUUFRPresentedEventWith:(id)a3 snippetClass:(id)a4 dialogIdentifier:(id)a5 dialogPhase:(id)a6;
- (void)emitUUFRShownForAceObject:(id)a3 presentationType:(int)a4 dialogPhase:(id)a5 mode:(int)a6 viewRegion:(int)a7;
- (void)emitUUFRSpokenForAceObject:(id)a3 presentationType:(int)a4 dialogPhase:(id)a5 mode:(int)a6 speakableText:(id)a7 dialogIdentifierOverride:(id)a8;
- (void)emitUserBargeInEventForBargedInTurn;
- (void)emitUserBargeInEventForBargedInTurn:(id)a3 machAbsoluteTime:(double)a4;
- (void)emitUserViewRegionInteractionEventWithViewRegion:(int)a3 userViewInteraction:(int)a4;
- (void)emitVRXInstrumentationEvent:(id)a3 aceViewId:(id)a4 cardEngagementProcessed:(BOOL)a5;
- (void)hostDidBecomeActive;
- (void)hostWillResignActive;
- (void)processSessionEvent:(int64_t)a3 isSpeechSynthesisSpeaking:(BOOL)a4 machAbsoluteTime:(double)a5;
- (void)setDialogIdentifiers:(id)a3 forAceViewSpeakableTextWithIdentifier:(id)a4;
- (void)storeCardID:(id)a3 forSnippetAceID:(id)a4;
- (void)storeClientGeneratedDUC:(id)a3;
- (void)storeCurrentInstrumentationTurnContext:(id)a3;
@end

@implementation SRUIFInstrumentationManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[SRUIFInstrumentationManager sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

- (id)latestStoredTurn
{
  v2 = [(NSUserDefaults *)self->_userDefaults stringForKey:@"LastStoredInstrumentationTurn"];
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v2];

  return v3;
}

- (void)hostDidBecomeActive
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRUIFInstrumentationManager hostDidBecomeActive]";
    _os_log_impl(&dword_26951F000, v2, OS_LOG_TYPE_DEFAULT, "%s #instrumentation", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_storeCurrentInstrumentationTurnContextInLatestResponseProducingTurn
{
  v20 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__7;
  v13 = __Block_byref_object_dispose__7;
  v14 = [(SRUIFInstrumentationManager *)self currentInstrumentationTurnContext];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v10[5] turnIdentifier];
    *buf = 136315394;
    v17 = "[SRUIFInstrumentationManager _storeCurrentInstrumentationTurnContextInLatestResponseProducingTurn]";
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New turn produced output %@", buf, 0x16u);
  }

  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__SRUIFInstrumentationManager__storeCurrentInstrumentationTurnContextInLatestResponseProducingTurn__block_invoke;
  block[3] = &unk_279C62790;
  objc_copyWeak(&v8, &location);
  block[4] = &v9;
  dispatch_async(instrumentationManagerQueue, block);
  objc_destroyWeak(&v8);
  _Block_object_dispose(&v9, 8);

  objc_destroyWeak(&location);
  v6 = *MEMORY[0x277D85DE8];
}

void __99__SRUIFInstrumentationManager__storeCurrentInstrumentationTurnContextInLatestResponseProducingTurn__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[6];
    v6 = WeakRetained;
    v4 = [*(*(*(a1 + 32) + 8) + 40) turnIdentifier];
    v5 = [v4 UUIDString];
    [v3 setObject:v5 forKey:@"LatestResponseProducingTurnIdentifier"];

    [v6[6] synchronize];
    WeakRetained = v6;
  }
}

uint64_t __44__SRUIFInstrumentationManager_sharedManager__block_invoke()
{
  sharedManager_sharedManager = objc_alloc_init(SRUIFInstrumentationManager);

  return MEMORY[0x2821F96F8]();
}

- (SRUIFInstrumentationManager)init
{
  v12.receiver = self;
  v12.super_class = SRUIFInstrumentationManager;
  v2 = [(SRUIFInstrumentationManager *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentSiriUIState = 0;
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v5 = dispatch_queue_create("com.apple.siri.SerialInstrumentationManagerQueue", v4);
    instrumentationManagerQueue = v3->_instrumentationManagerQueue;
    v3->_instrumentationManagerQueue = v5;

    v7 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.SiriViewService"];
    userDefaults = v3->_userDefaults;
    v3->_userDefaults = v7;

    v3->_shouldInstrument = 1;
    v9 = [MEMORY[0x277CBEB38] dictionary];
    cardInfo = v3->_cardInfo;
    v3->_cardInfo = v9;
  }

  return v3;
}

- (void)storeCurrentInstrumentationTurnContext:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 turnIdentifier];
    *buf = 136315394;
    v15 = "[SRUIFInstrumentationManager storeCurrentInstrumentationTurnContext:]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New turn provided %@", buf, 0x16u);
  }

  [(SRUIFInstrumentationManager *)self setPreviousInstrumentationTurnContext:self->_currentInstrumentationTurnContext];
  [(SRUIFInstrumentationManager *)self setCurrentInstrumentationTurnContext:v4];
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SRUIFInstrumentationManager_storeCurrentInstrumentationTurnContext___block_invoke;
  block[3] = &unk_279C61898;
  objc_copyWeak(&v12, &location);
  v11 = v4;
  v8 = v4;
  dispatch_async(instrumentationManagerQueue, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  v9 = *MEMORY[0x277D85DE8];
}

void __70__SRUIFInstrumentationManager_storeCurrentInstrumentationTurnContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[6];
    v6 = WeakRetained;
    v4 = [*(a1 + 32) turnIdentifier];
    v5 = [v4 UUIDString];
    [v3 setObject:v5 forKey:@"LastStoredInstrumentationTurn"];

    [v6[6] synchronize];
    WeakRetained = v6;
  }
}

- (id)latestResponseProducingTurn
{
  v2 = [(NSUserDefaults *)self->_userDefaults stringForKey:@"LatestResponseProducingTurnIdentifier"];
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v2];

  return v3;
}

- (void)hostWillResignActive
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRUIFInstrumentationManager hostWillResignActive]";
    _os_log_impl(&dword_26951F000, v2, OS_LOG_TYPE_DEFAULT, "%s #instrumentation", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (id)cardIDforSnippetAceID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_cardInfo objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_cardInfo objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDialogIdentifiers:(id)a3 forAceViewSpeakableTextWithIdentifier:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEB38];
  v21 = v7;
  v22[0] = v6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v10 = [v8 dictionaryWithDictionary:v9];
  aceViewDialogIdentifiers = self->_aceViewDialogIdentifiers;
  self->_aceViewDialogIdentifiers = v10;

  objc_initWeak(&location, self);
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__SRUIFInstrumentationManager_setDialogIdentifiers_forAceViewSpeakableTextWithIdentifier___block_invoke;
  block[3] = &unk_279C61820;
  objc_copyWeak(&v19, &location);
  v17 = v7;
  v18 = v6;
  v13 = v6;
  v14 = v7;
  dispatch_async(instrumentationManagerQueue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  v15 = *MEMORY[0x277D85DE8];
}

void __90__SRUIFInstrumentationManager_setDialogIdentifiers_forAceViewSpeakableTextWithIdentifier___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277CBEB38];
    v4 = *(a1 + 40);
    v9 = *(a1 + 32);
    v10[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v3 dictionaryWithDictionary:v5];
    v7 = WeakRetained[4];
    WeakRetained[4] = v6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)emitInstrumentation:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SRUIFInstrumentationManager *)self currentInstrumentationTurnContext];
  v6 = mach_absolute_time();
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SRUIFInstrumentationManager_emitInstrumentation___block_invoke;
  block[3] = &unk_279C62AF0;
  objc_copyWeak(v13, &location);
  v11 = v4;
  v12 = v5;
  v13[1] = v6;
  v8 = v5;
  v9 = v4;
  dispatch_async(instrumentationManagerQueue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __51__SRUIFInstrumentationManager_emitInstrumentation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _emitInstrumentation:*(a1 + 32) forTurn:*(a1 + 40) atTime:*(a1 + 56)];
}

- (void)emitInstrumentation:(id)a3 atTime:(unint64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = [(SRUIFInstrumentationManager *)self currentInstrumentationTurnContext];
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SRUIFInstrumentationManager_emitInstrumentation_atTime___block_invoke;
  block[3] = &unk_279C62AF0;
  objc_copyWeak(v14, &location);
  v12 = v6;
  v13 = v7;
  v14[1] = a4;
  v9 = v7;
  v10 = v6;
  dispatch_async(instrumentationManagerQueue, block);

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

void __58__SRUIFInstrumentationManager_emitInstrumentation_atTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _emitInstrumentation:*(a1 + 32) forTurn:*(a1 + 40) atTime:*(a1 + 56)];
}

- (void)_emitInstrumentation:(id)a3 forTurn:(id)a4 atTime:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v10 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [SRUIFInstrumentationManager _emitInstrumentation:v10 forTurn:? atTime:?];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v8;
    v12 = [v11 startedOrChanged];

    if (v12 || ([v11 ended], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
    {
      [(SRUIFInstrumentationManager *)self setHasNotYetEmittedLaunchContextEnd:v12 != 0];
    }
  }

  [(SRUIFInstrumentationManager *)self _willInstrument:v8 forTurn:v9];
  if (self->_shouldInstrument)
  {
    [v9 emitInstrumentation:v8 machAbsoluteTime:a5];
  }
}

- (void)_willInstrument:(id)a3 forTurn:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [a4 turnIdentifier];
    v9 = [v5 formattedText];
    v11 = 136315906;
    v12 = "[SRUIFInstrumentationManager _willInstrument:forTurn:]";
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_26951F000, v7, OS_LOG_TYPE_DEFAULT, "%s #noisy #instrumentation %@ in turn %@: \n%@", &v11, 0x2Au);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)storeClientGeneratedDUC:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SRUIFInstrumentationManager_storeClientGeneratedDUC___block_invoke;
  block[3] = &unk_279C61898;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(instrumentationManagerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __55__SRUIFInstrumentationManager_storeClientGeneratedDUC___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = (WeakRetained + 104);
    if (([*(a1 + 32) isEqualToString:*(WeakRetained + 13)] & 1) == 0)
    {
      objc_storeStrong(v3, *(a1 + 32));
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)storeCardID:(id)a3 forSnippetAceID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    objc_initWeak(&location, self);
    instrumentationManagerQueue = self->_instrumentationManagerQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__SRUIFInstrumentationManager_storeCardID_forSnippetAceID___block_invoke;
    v11[3] = &unk_279C61820;
    objc_copyWeak(&v14, &location);
    v12 = v8;
    v13 = v6;
    dispatch_async(instrumentationManagerQueue, v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SRUIFInstrumentationManager *)v6 storeCardID:v8 forSnippetAceID:v10];
    }
  }
}

void __59__SRUIFInstrumentationManager_storeCardID_forSnippetAceID___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277CBEB38];
    v4 = *(a1 + 40);
    v9 = *(a1 + 32);
    v10[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v3 dictionaryWithDictionary:v5];
    v7 = WeakRetained[5];
    WeakRetained[5] = v6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)emitUIStateTransitionEventWithFromState:(int)a3 toState:(int)a4 withPresentationType:(int)a5 machAbsoluteTransitionTime:(double)a6
{
  v11 = [(SRUIFInstrumentationManager *)self currentInstrumentationTurnContext];
  objc_initWeak(&location, self);
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __127__SRUIFInstrumentationManager_emitUIStateTransitionEventWithFromState_toState_withPresentationType_machAbsoluteTransitionTime___block_invoke;
  v14[3] = &unk_279C62B18;
  objc_copyWeak(v16, &location);
  v15 = v11;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v16[1] = *&a6;
  v13 = v11;
  dispatch_async(instrumentationManagerQueue, v14);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __127__SRUIFInstrumentationManager_emitUIStateTransitionEventWithFromState_toState_withPresentationType_machAbsoluteTransitionTime___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (![WeakRetained _hasDismissedForTurnContext:*(a1 + 32)])
    {
      v7 = objc_alloc_init(MEMORY[0x277D5AC20]);
      [v7 setPreviousState:*(a1 + 56)];
      [v7 setCurrentState:*(a1 + 60)];
      v8 = objc_alloc_init(MEMORY[0x277D5AC18]);
      [v7 setPresenting:v8];
      [v8 setPresentationType:*(a1 + 64)];
      [v3 setCurrentSiriUIState:{-[NSObject currentState](v7, "currentState")}];
      [v3 _emitInstrumentation:v7 forTurn:*(a1 + 32) atTime:*(a1 + 48)];
      v9 = *(a1 + 60);
      v10 = (v9 & 0xFFFFFFFE) != 2 && (v9 != 5 || *(a1 + 64) != 3);
      v12 = [v3 hasNotYetEmittedLaunchContextEnd];
      if (!v10 && v12)
      {
        v13 = objc_alloc_init(MEMORY[0x277D5AB70]);
        [v13 setExists:1];
        v14 = objc_alloc_init(MEMORY[0x277D5AB68]);
        [v14 setEnded:v13];
        [v3 _emitInstrumentation:v14 forTurn:*(a1 + 32) atTime:*(a1 + 48)];
      }

      goto LABEL_22;
    }

    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 56) - 1;
      if (v5 > 4)
      {
        v6 = @"SIRIUISTATE_UNKNOWN_SIRI_UI_STATE";
      }

      else
      {
        v6 = off_279C62CF0[v5];
      }

      v15 = *(a1 + 60) - 1;
      if (v15 > 4)
      {
        v16 = @"SIRIUISTATE_UNKNOWN_SIRI_UI_STATE";
      }

      else
      {
        v16 = off_279C62CF0[v15];
      }

      v17 = *(a1 + 32);
      v7 = v4;
      v18 = [v17 turnIdentifier];
      v8 = [v18 UUIDString];
      v20 = 136315906;
      v21 = "[SRUIFInstrumentationManager emitUIStateTransitionEventWithFromState:toState:withPresentationType:machAbsoluteTransitionTime:]_block_invoke";
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_26951F000, v7, OS_LOG_TYPE_DEFAULT, "%s #instrumentation Not instrumenting state transition %@ -> %@ for turn %@ after dismissal", &v20, 0x2Au);

LABEL_22:
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)emitUIStateTransitionForSiriDismissalWithReason:(int)a3
{
  objc_initWeak(&location, self);
  v5 = [(SRUIFInstrumentationManager *)self currentInstrumentationTurnContext];
  v6 = mach_absolute_time();
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__SRUIFInstrumentationManager_emitUIStateTransitionForSiriDismissalWithReason___block_invoke;
  block[3] = &unk_279C62B40;
  objc_copyWeak(v11, &location);
  v12 = a3;
  v10 = v5;
  v11[1] = v6;
  v8 = v5;
  dispatch_async(instrumentationManagerQueue, block);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

uint64_t __79__SRUIFInstrumentationManager_emitUIStateTransitionForSiriDismissalWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    if (([WeakRetained _hasDismissedForTurnContext:*(a1 + 32)] & 1) == 0)
    {
      v3 = objc_alloc_init(MEMORY[0x277D5AC20]);
      [v3 setPreviousState:{objc_msgSend(v9, "currentSiriUIState")}];
      [v3 setCurrentState:4];
      v4 = objc_alloc_init(MEMORY[0x277D5AC10]);
      [v4 setDismissalReason:*(a1 + 56)];
      [v3 setDismissed:v4];
      [v9 setCurrentSiriUIState:{objc_msgSend(v3, "currentState")}];
      [v9 _emitInstrumentation:v3 forTurn:*(a1 + 32) atTime:*(a1 + 48)];
      v5 = [*(a1 + 32) turnIdentifier];
      v6 = [v5 UUIDString];
      v7 = v9[1];
      v9[1] = v6;
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)emitPartialSpeechTranscriptionEventForAceObjectWithIdentifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SRUIFInstrumentationManager *)self currentInstrumentationTurnContext];
  v6 = mach_absolute_time();
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__SRUIFInstrumentationManager_emitPartialSpeechTranscriptionEventForAceObjectWithIdentifier___block_invoke;
  block[3] = &unk_279C62AF0;
  objc_copyWeak(v13, &location);
  v11 = v4;
  v12 = v5;
  v13[1] = v6;
  v8 = v5;
  v9 = v4;
  dispatch_async(instrumentationManagerQueue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __93__SRUIFInstrumentationManager_emitPartialSpeechTranscriptionEventForAceObjectWithIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_alloc_init(MEMORY[0x277D5AA38]);
    [v3 setAceID:*(a1 + 32)];
    [v3 setSpeechTranscriptionType:1];
    [v4 _emitInstrumentation:v3 forTurn:*(a1 + 40) atTime:*(a1 + 56)];

    WeakRetained = v4;
  }
}

- (void)emitFinalSpeechTranscriptionEventForAceObjectWithIdentifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SRUIFInstrumentationManager *)self currentInstrumentationTurnContext];
  v6 = mach_absolute_time();
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__SRUIFInstrumentationManager_emitFinalSpeechTranscriptionEventForAceObjectWithIdentifier___block_invoke;
  block[3] = &unk_279C62AF0;
  objc_copyWeak(v13, &location);
  v11 = v4;
  v12 = v5;
  v13[1] = v6;
  v8 = v5;
  v9 = v4;
  dispatch_async(instrumentationManagerQueue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __91__SRUIFInstrumentationManager_emitFinalSpeechTranscriptionEventForAceObjectWithIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_alloc_init(MEMORY[0x277D5AA38]);
    [v3 setAceID:*(a1 + 32)];
    [v3 setSpeechTranscriptionType:2];
    [v4 _emitInstrumentation:v3 forTurn:*(a1 + 40) atTime:*(a1 + 56)];

    WeakRetained = v4;
  }
}

- (void)emitRevealSpeechTranscriptionEventForAceObjectWithIdentifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SRUIFInstrumentationManager *)self currentInstrumentationTurnContext];
  v6 = mach_absolute_time();
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__SRUIFInstrumentationManager_emitRevealSpeechTranscriptionEventForAceObjectWithIdentifier___block_invoke;
  block[3] = &unk_279C62AF0;
  objc_copyWeak(v13, &location);
  v11 = v4;
  v12 = v5;
  v13[1] = v6;
  v8 = v5;
  v9 = v4;
  dispatch_async(instrumentationManagerQueue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __92__SRUIFInstrumentationManager_emitRevealSpeechTranscriptionEventForAceObjectWithIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_alloc_init(MEMORY[0x277D5AA38]);
    [v3 setAceID:*(a1 + 32)];
    [v3 setSpeechTranscriptionType:3];
    [v4 _emitInstrumentation:v3 forTurn:*(a1 + 40) atTime:*(a1 + 56)];

    WeakRetained = v4;
  }
}

- (void)emitTextToSpeechRequestReceivedEventFor:(id)a3 atTime:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SRUIFInstrumentationManager *)self currentInstrumentationTurnContext];
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__SRUIFInstrumentationManager_emitTextToSpeechRequestReceivedEventFor_atTime___block_invoke;
  v11[3] = &unk_279C62B68;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v15 = a4;
  v9 = v7;
  v10 = v6;
  dispatch_async(instrumentationManagerQueue, v11);
}

void __78__SRUIFInstrumentationManager_emitTextToSpeechRequestReceivedEventFor_atTime___block_invoke(uint64_t a1)
{
  v8 = objc_alloc_init(MEMORY[0x277D5A998]);
  v2 = [*(a1 + 32) valueForKey:@"voice_asset_key"];
  [v8 setVoiceAssetKey:v2];

  v3 = [*(a1 + 32) valueForKey:@"voice_resource_asset_key"];
  [v8 setVoiceResourceAssetKey:v3];

  v4 = [*(a1 + 32) valueForKey:@"is_warm_start"];
  [v8 setIsWarmStart:{objc_msgSend(v4, "BOOLValue")}];

  v5 = [*(a1 + 32) valueForKey:@"is_synthesis_cached"];
  [v8 setIsSynthesisCached:{objc_msgSend(v5, "BOOLValue")}];

  v6 = [*(a1 + 32) valueForKey:@"source_of_tts"];
  [v8 setSourceOfTTS:{objc_msgSend(v6, "intValue")}];

  v7 = [*(a1 + 32) valueForKey:@"error_code"];
  [v8 setSpeechError:{objc_msgSend(v7, "intValue")}];

  [*(a1 + 40) _emitInstrumentation:v8 forTurn:*(a1 + 48) atTime:*(a1 + 56)];
}

- (void)emitTextToSpeechBeginEvent:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SRUIFInstrumentationManager *)self currentInstrumentationTurnContext];
  v6 = mach_absolute_time();
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__SRUIFInstrumentationManager_emitTextToSpeechBeginEvent___block_invoke;
  v10[3] = &unk_279C62B90;
  objc_copyWeak(v14, &location);
  v11 = v4;
  v12 = self;
  v13 = v5;
  v14[1] = v6;
  v8 = v5;
  v9 = v4;
  dispatch_async(instrumentationManagerQueue, v10);

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

void __58__SRUIFInstrumentationManager_emitTextToSpeechBeginEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = objc_alloc_init(MEMORY[0x277D5AA58]);
    [v3 setAceID:*(a1 + 32)];
    v4 = [*(a1 + 40) _routeInfoForOutputRoute];
    v5 = [v4 valueForKey:*MEMORY[0x277D26D28]];
    if ([v5 isEqual:*MEMORY[0x277D26C48]])
    {
      [*(a1 + 40) _populateDefaultHardwareInformationWithRouteInfo:v4 forTTSEvent:v3];
    }

    else if ([v5 isEqual:*MEMORY[0x277D26C58]])
    {
      [*(a1 + 40) _populateWirelessHardwareInformationWithRouteInfo:v4 forTTSEvent:v3];
    }

    [v6 _emitInstrumentation:v3 forTurn:*(a1 + 48) atTime:*(a1 + 64)];

    WeakRetained = v6;
  }
}

- (id)_routeInfoForOutputRoute
{
  v2 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v3 = [v2 attributeForKey:*MEMORY[0x277D26C70]];

  return v3;
}

- (void)_populateDefaultHardwareInformationWithRouteInfo:(id)a3 forTTSEvent:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [v15 valueForKey:*MEMORY[0x277D26CA8]];
  if (([v7 isEqualToString:@"Speaker"] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"CarAudioOutput") & 1) == 0)
  {
    v8 = [v15 valueForKey:*MEMORY[0x277D26D10]];
    v9 = [(SRUIFInstrumentationManager *)self _convertVirtualAudioSubTypeToString:1751410292];
    if (([v8 isEqualToString:v9] & 1) == 0)
    {
      v10 = [(SRUIFInstrumentationManager *)self _convertVirtualAudioSubTypeToString:1214539380];
      if (([v8 isEqualToString:v10] & 1) == 0)
      {
        v11 = [(SRUIFInstrumentationManager *)self _convertVirtualAudioSubTypeToString:1752709424];
        if ([v8 isEqualToString:v11])
        {
        }

        else
        {
          v12 = [(SRUIFInstrumentationManager *)self _convertVirtualAudioSubTypeToString:2004367664];
          v13 = [v8 isEqualToString:v12];

          if (v13)
          {
LABEL_11:

            goto LABEL_12;
          }

          v9 = objc_alloc_init(MEMORY[0x277D5A8D8]);
          v10 = [v15 valueForKey:*MEMORY[0x277D26CD0]];
          v14 = [&unk_287A18CC0 stringValue];
          [v9 setInterfaceVendorID:v14];

          [v9 setInterfaceProductID:v10];
          [v6 setHardwareInterfaceVendorID:v9];
        }
      }
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)_populateWirelessHardwareInformationWithRouteInfo:(id)a3 forTTSEvent:(id)a4
{
  v5 = MEMORY[0x277D5A8D8];
  v6 = a4;
  v7 = a3;
  v12 = objc_alloc_init(v5);
  v8 = [v7 valueForKey:*MEMORY[0x277D26CD0]];

  v9 = [v8 componentsSeparatedByString:{@", "}];
  v10 = [v9 firstObject];
  v11 = [v9 lastObject];
  [v12 setInterfaceVendorID:v10];
  [v12 setInterfaceProductID:v11];
  [v6 setHardwareInterfaceVendorID:v12];
}

- (id)_convertVirtualAudioSubTypeToString:(unsigned int)a3
{
  if (a3)
  {
    cStr[0] = HIBYTE(a3);
    cStr[1] = BYTE2(a3);
    cStr[2] = BYTE1(a3);
    cStr[3] = a3;
    cStr[4] = 0;
    v4 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)emitTextToSpeechEndEvent:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SRUIFInstrumentationManager *)self currentInstrumentationTurnContext];
  v6 = mach_absolute_time();
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SRUIFInstrumentationManager_emitTextToSpeechEndEvent___block_invoke;
  block[3] = &unk_279C62AF0;
  objc_copyWeak(v13, &location);
  v11 = v4;
  v12 = v5;
  v13[1] = v6;
  v8 = v5;
  v9 = v4;
  dispatch_async(instrumentationManagerQueue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __56__SRUIFInstrumentationManager_emitTextToSpeechEndEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_alloc_init(MEMORY[0x277D5AA60]);
    [v3 setAceID:*(a1 + 32)];
    [v4 _emitInstrumentation:v3 forTurn:*(a1 + 40) atTime:*(a1 + 56)];

    WeakRetained = v4;
  }
}

- (void)emitUUFRPresentedEventWith:(id)a3 snippetClass:(id)a4 dialogIdentifier:(id)a5 dialogPhase:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v14 = [(SRUIFInstrumentationManager *)self currentInstrumentationTurnContext];
  v15 = mach_absolute_time();
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __100__SRUIFInstrumentationManager_emitUUFRPresentedEventWith_snippetClass_dialogIdentifier_dialogPhase___block_invoke;
  v22[3] = &unk_279C62BB8;
  objc_copyWeak(v28, &location);
  v23 = v10;
  v24 = v11;
  v25 = v13;
  v26 = v12;
  v27 = v14;
  v28[1] = v15;
  v17 = v14;
  v18 = v12;
  v19 = v13;
  v20 = v11;
  v21 = v10;
  dispatch_async(instrumentationManagerQueue, v22);

  objc_destroyWeak(v28);
  objc_destroyWeak(&location);
}

void __100__SRUIFInstrumentationManager_emitUUFRPresentedEventWith_snippetClass_dialogIdentifier_dialogPhase___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = objc_alloc_init(MEMORY[0x277D5ACB0]);
    [v3 setViewID:*(a1 + 32)];
    [v3 setSnippetClass:*(a1 + 40)];
    v4 = [*(a1 + 48) aceDialogPhaseValue];
    [v3 setDialogPhase:v4];

    if (*(a1 + 56))
    {
      [v3 setDialogIdentifier:?];
    }

    else if ([*(a1 + 48) isErrorDialogPhase] && v7[13])
    {
      [v3 setDialogIdentifier:?];
      v5 = v7[13];
      v7[13] = 0;
    }

    v6 = objc_alloc_init(MEMORY[0x277D5AC40]);
    [v6 setViewContainer:v3];
    [v7 _emitInstrumentation:v6 forTurn:*(a1 + 64) atTime:*(a1 + 80)];

    WeakRetained = v7;
  }
}

- (void)emitCasinoRelationshipEventWithViewIDFrom:(id)a3 ViewIDTo:(id)a4 casinoFromType:(int)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SRUIFInstrumentationManager *)self currentInstrumentationTurnContext];
  v11 = mach_absolute_time();
  objc_initWeak(&location, self);
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__SRUIFInstrumentationManager_emitCasinoRelationshipEventWithViewIDFrom_ViewIDTo_casinoFromType___block_invoke;
  block[3] = &unk_279C62BE0;
  objc_copyWeak(v20, &location);
  v17 = v8;
  v18 = v9;
  v21 = a5;
  v19 = v10;
  v20[1] = v11;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(instrumentationManagerQueue, block);

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

void __97__SRUIFInstrumentationManager_emitCasinoRelationshipEventWithViewIDFrom_ViewIDTo_casinoFromType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_alloc_init(MEMORY[0x277D5A7F8]);
    [v3 setViewIDFrom:*(a1 + 32)];
    [v3 setViewIDTo:*(a1 + 40)];
    [v3 setCasinoFromType:*(a1 + 72)];
    [v4 _emitInstrumentation:v3 forTurn:*(a1 + 48) atTime:*(a1 + 64)];

    WeakRetained = v4;
  }
}

- (void)emitUserViewRegionInteractionEventWithViewRegion:(int)a3 userViewInteraction:(int)a4
{
  v7 = [(SRUIFInstrumentationManager *)self currentInstrumentationTurnContext];
  v8 = mach_absolute_time();
  objc_initWeak(&location, self);
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__SRUIFInstrumentationManager_emitUserViewRegionInteractionEventWithViewRegion_userViewInteraction___block_invoke;
  block[3] = &unk_279C62C08;
  objc_copyWeak(v13, &location);
  v14 = a3;
  v15 = a4;
  v12 = v7;
  v13[1] = v8;
  v10 = v7;
  dispatch_async(instrumentationManagerQueue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __100__SRUIFInstrumentationManager_emitUserViewRegionInteractionEventWithViewRegion_userViewInteraction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_alloc_init(MEMORY[0x277D5AC90]);
    [v3 setViewRegionDesignation:*(a1 + 56)];
    [v3 setUserViewInteraction:*(a1 + 60)];
    [v4 _emitInstrumentation:v3 forTurn:*(a1 + 32) atTime:*(a1 + 48)];

    WeakRetained = v4;
  }
}

- (void)emitUUFRShownForAceObject:(id)a3 presentationType:(int)a4 dialogPhase:(id)a5 mode:(int)a6 viewRegion:(int)a7
{
  v12 = a3;
  v13 = a5;
  v14 = [(SRUIFInstrumentationManager *)self currentInstrumentationTurnContext];
  v15 = mach_absolute_time();
  objc_initWeak(&location, self);
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__SRUIFInstrumentationManager_emitUUFRShownForAceObject_presentationType_dialogPhase_mode_viewRegion___block_invoke;
  block[3] = &unk_279C62C30;
  v21 = v12;
  v22 = self;
  v23 = v13;
  v26 = a4;
  v27 = a6;
  v28 = a7;
  v17 = v13;
  v18 = v12;
  objc_copyWeak(v25, &location);
  v24 = v14;
  v25[1] = v15;
  v19 = v14;
  dispatch_async(instrumentationManagerQueue, block);

  objc_destroyWeak(v25);
  objc_destroyWeak(&location);
}

void __102__SRUIFInstrumentationManager_emitUUFRShownForAceObject_presentationType_dialogPhase_mode_viewRegion___block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) _uufrShownRequestedByInstrumentationManager:*(a1 + 40)];
  v2 = [*(a1 + 40) _responseContextWithPresentationType:*(a1 + 80) dialogPhase:*(a1 + 48) mode:*(a1 + 84)];
  [v10 setSiriResponseContext:v2];
  [v10 setViewRegionDesignation:*(a1 + 88)];
  v3 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    if ([v4 canUseServerTTS])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 64));
      v6 = [WeakRetained _displayedDialogForAssistantUtteranceView:v4];

      if (v6)
      {
        v7 = [v6 linkId];
        [v10 setLinkId:v7];

        v8 = objc_loadWeakRetained((a1 + 64));
        [v8 _emitInstrumentation:v10 forTurn:*(a1 + 56) atTime:*(a1 + 72)];

        v9 = objc_loadWeakRetained((a1 + 64));
        [v9 _emitInstrumentation:v6 forTurn:*(a1 + 56) atTime:*(a1 + 72)];

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v6 = objc_loadWeakRetained((a1 + 64));
  [v6 _emitInstrumentation:v10 forTurn:*(a1 + 56) atTime:*(a1 + 72)];
LABEL_7:

  [*(a1 + 40) _storeCurrentInstrumentationTurnContextInLatestResponseProducingTurn];
}

- (id)_displayedDialogForAssistantUtteranceView:(id)a3
{
  v3 = MEMORY[0x277D5AC60];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = objc_alloc(MEMORY[0x277D5AC78]);
  v7 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v8 = [v6 initWithNSUUID:v7];

  v9 = [v4 text];

  [v5 setDisplayedSiriDialogOutput:v9];
  [v5 setLinkId:v8];

  return v5;
}

- (void)emitUUFRSpokenForAceObject:(id)a3 presentationType:(int)a4 dialogPhase:(id)a5 mode:(int)a6 speakableText:(id)a7 dialogIdentifierOverride:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  objc_initWeak(&location, self);
  v18 = [(SRUIFInstrumentationManager *)self currentInstrumentationTurnContext];
  v19 = mach_absolute_time();
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __131__SRUIFInstrumentationManager_emitUUFRSpokenForAceObject_presentationType_dialogPhase_mode_speakableText_dialogIdentifierOverride___block_invoke;
  v26[3] = &unk_279C62C58;
  objc_copyWeak(v33, &location);
  v34 = a4;
  v35 = a6;
  v27 = v15;
  v28 = v14;
  v29 = v16;
  v30 = v18;
  v33[1] = v19;
  v31 = v17;
  v32 = self;
  v21 = v17;
  v22 = v18;
  v23 = v16;
  v24 = v14;
  v25 = v15;
  dispatch_async(instrumentationManagerQueue, v26);

  objc_destroyWeak(v33);
  objc_destroyWeak(&location);
}

void __131__SRUIFInstrumentationManager_emitUUFRSpokenForAceObject_presentationType_dialogPhase_mode_speakableText_dialogIdentifierOverride___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _responseContextWithPresentationType:*(a1 + 96) dialogPhase:*(a1 + 32) mode:*(a1 + 100)];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v5 = [*(a1 + 40) sruif__uufrSaid];
    v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          [v10 setSiriResponseContext:v4];
          if ([*(a1 + 48) containsString:@"\\audio=/successSonicResponse"])
          {
            [v10 setHasSonicResponse:1];
            if ([*(a1 + 48) containsString:@"\\audio=/successSonicResponse&overlap"])
            {
              v11 = 2;
            }

            else
            {
              v11 = 4;
            }

            [v10 setSonicResponse:v11];
          }

          [v3 _emitInstrumentation:v10 forTurn:*(a1 + 56) atTime:*(a1 + 88)];
        }

        v7 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v7);
    }

    v12 = v3[4];
    v13 = [*(a1 + 40) aceId];
    v14 = [v12 objectForKeyedSubscript:v13];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v14;
    v15 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v27 + 1) + 8 * j);
          v20 = objc_alloc_init(MEMORY[0x277D5AC48]);
          v21 = *(a1 + 64);
          if (!v21)
          {
            v21 = v19;
          }

          v22 = v21;
          [v20 setDialogIdentifier:v22];
          v23 = [*(a1 + 40) aceId];
          [v20 setAceViewID:v23];

          v24 = [*(a1 + 40) encodedClassName];
          [v20 setAceViewClass:v24];

          [v20 setSiriResponseContext:v4];
          [v3 _emitInstrumentation:v20 forTurn:*(a1 + 56) atTime:*(a1 + 88)];
        }

        v16 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v16);
    }

    [*(a1 + 72) _storeCurrentInstrumentationTurnContextInLatestResponseProducingTurn];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)emitUUFRCasinoCardSelectedEventWithCardSectionID:(id)a3 ordinalCardSectionPosition:(int64_t)a4 snippetAceId:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = mach_absolute_time();
  v11 = [(SRUIFInstrumentationManager *)self currentInstrumentationTurnContext];
  objc_initWeak(&location, self);
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__SRUIFInstrumentationManager_emitUUFRCasinoCardSelectedEventWithCardSectionID_ordinalCardSectionPosition_snippetAceId___block_invoke;
  block[3] = &unk_279C62C80;
  objc_copyWeak(v20, &location);
  v17 = v8;
  v18 = v9;
  v20[1] = a4;
  v20[2] = v10;
  v19 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v8;
  dispatch_async(instrumentationManagerQueue, block);

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

void __120__SRUIFInstrumentationManager_emitUUFRCasinoCardSelectedEventWithCardSectionID_ordinalCardSectionPosition_snippetAceId___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_alloc_init(MEMORY[0x277D5AC50]);
    v4 = objc_alloc_init(MEMORY[0x277D5AC28]);
    [v4 setCardSectionId:*(a1 + 32)];
    [v4 setOrdinalCardSectionPosition:*(a1 + 64)];
    [v4 setSnippetAceId:*(a1 + 40)];
    [v3 setCasinoCardSelected:v4];
    [v5 _emitInstrumentation:v3 forTurn:*(a1 + 48) atTime:*(a1 + 72)];

    WeakRetained = v5;
  }
}

- (void)emitUserBargeInEventForBargedInTurn
{
  v3 = [(SRUIFInstrumentationManager *)self previousInstrumentationTurnContext];
  [(SRUIFInstrumentationManager *)self emitUserBargeInEventForBargedInTurn:v3 machAbsoluteTime:mach_absolute_time()];
}

- (void)emitUserBargeInEventForBargedInTurn:(id)a3 machAbsoluteTime:(double)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__SRUIFInstrumentationManager_emitUserBargeInEventForBargedInTurn_machAbsoluteTime___block_invoke;
  v9[3] = &unk_279C617D0;
  objc_copyWeak(v11, &location);
  v10 = v6;
  v11[1] = *&a4;
  v8 = v6;
  dispatch_async(instrumentationManagerQueue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __84__SRUIFInstrumentationManager_emitUserBargeInEventForBargedInTurn_machAbsoluteTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_alloc_init(MEMORY[0x277D5ABE8]);
    [v3 setExists:1];
    [v4 _emitInstrumentation:v3 forTurn:*(a1 + 32) atTime:*(a1 + 48)];

    WeakRetained = v4;
  }
}

- (void)processSessionEvent:(int64_t)a3 isSpeechSynthesisSpeaking:(BOOL)a4 machAbsoluteTime:(double)a5
{
  v9 = [(SRUIFInstrumentationManager *)self currentInstrumentationTurnContext];
  objc_initWeak(&location, self);
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__SRUIFInstrumentationManager_processSessionEvent_isSpeechSynthesisSpeaking_machAbsoluteTime___block_invoke;
  v12[3] = &unk_279C62CA8;
  objc_copyWeak(v14, &location);
  v15 = a4;
  v14[2] = *&a5;
  v14[1] = a3;
  v13 = v9;
  v11 = v9;
  dispatch_async(instrumentationManagerQueue, v12);

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

void __94__SRUIFInstrumentationManager_processSessionEvent_isSpeechSynthesisSpeaking_machAbsoluteTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 48);
    if (v3 == 13)
    {
      if (*(WeakRetained + 57) != 1)
      {
        goto LABEL_14;
      }

      v4 = WeakRetained;
      [WeakRetained _resetBargeInDetectedEvent];
      goto LABEL_13;
    }

    if (v3 == 12)
    {
      if (*(WeakRetained + 57) != 1)
      {
        goto LABEL_14;
      }

      *(WeakRetained + 57) = 0;
      v4 = WeakRetained;
      [WeakRetained emitUserBargeInEventForBargedInTurn:*(WeakRetained + 9) machAbsoluteTime:*(WeakRetained + 8)];
      [v4 _resetBargeInDetectedEvent];
      goto LABEL_13;
    }

    if (v3 == 11 && *(a1 + 64) == 1 && (*(WeakRetained + 57) & 1) == 0)
    {
      *(WeakRetained + 57) = 1;
      *(WeakRetained + 8) = *(a1 + 56);
      v4 = WeakRetained;
      objc_storeStrong(WeakRetained + 9, *(a1 + 32));
LABEL_13:
      WeakRetained = v4;
    }
  }

LABEL_14:
}

- (void)emitPunchOutEventWithURL:(id)a3 appID:(id)a4 punchoutOrigin:(int)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SRUIFInstrumentationManager *)self currentInstrumentationTurnContext];
  v11 = mach_absolute_time();
  objc_initWeak(&location, self);
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SRUIFInstrumentationManager_emitPunchOutEventWithURL_appID_punchoutOrigin___block_invoke;
  block[3] = &unk_279C62BE0;
  objc_copyWeak(v20, &location);
  v17 = v8;
  v18 = v9;
  v21 = a5;
  v19 = v10;
  v20[1] = v11;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(instrumentationManagerQueue, block);

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

void __77__SRUIFInstrumentationManager_emitPunchOutEventWithURL_appID_punchoutOrigin___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = [v3 scheme];
      v6 = [v4 stringWithFormat:@"%@://%@", v5, @"#TRUNCATED"];

      v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];
    }

    else
    {
      v7 = 0;
    }

    v8 = objc_alloc_init(MEMORY[0x277D5A9B0]);
    v9 = [v7 absoluteString];
    [v8 setUrlScheme:v9];

    [v8 setAppID:*(a1 + 40)];
    [v8 setPunchOutUI:*(a1 + 72)];
    [v10 _emitInstrumentation:v8 forTurn:*(a1 + 48) atTime:*(a1 + 64)];

    WeakRetained = v10;
  }
}

- (void)emitVRXInstrumentationEvent:(id)a3 aceViewId:(id)a4 cardEngagementProcessed:(BOOL)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [VRXFeedbackConverter convertFeedbackToVRX:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    if ([v10 requiresNewTurn] && !a5)
    {
      v11 = [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentInstrumentationTurnContext turnIdentifier];
      v12 = [MEMORY[0x277CEF168] newTurnBasedContextWithPreviousTurnID:v11];
      currentInstrumentationTurnContext = self->_currentInstrumentationTurnContext;
      self->_currentInstrumentationTurnContext = v12;

      v14 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v15 = self->_currentInstrumentationTurnContext;
        v16 = v14;
        v17 = [(AFAnalyticsTurnBasedInstrumentationContext *)v15 turnIdentifier];
        v21 = 136315650;
        v22 = "[SRUIFInstrumentationManager emitVRXInstrumentationEvent:aceViewId:cardEngagementProcessed:]";
        v23 = 2112;
        v24 = v17;
        v25 = 2112;
        v26 = v11;
        _os_log_impl(&dword_26951F000, v16, OS_LOG_TYPE_INFO, "%s #noisy #instrumentation New Turn %@ <-> Old Turn %@", &v21, 0x20u);
      }
    }

    v18 = [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentInstrumentationTurnContext turnIdentifier];
    if (v8)
    {
      [v10 emitWithTurnIdentifier:v18 aceViewId:v8];
    }

    else
    {
      [v10 emitWithTurnIdentifier:v18];
    }
  }

  else
  {
    v19 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v21 = 136315138;
      v22 = "[SRUIFInstrumentationManager emitVRXInstrumentationEvent:aceViewId:cardEngagementProcessed:]";
      _os_log_impl(&dword_26951F000, v19, OS_LOG_TYPE_INFO, "%s #noisy #instrumentation Instrumentation event skipped, not a VRXTurnBasedInstrumentationEvent", &v21, 0xCu);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)emitRequestFailedWithError:(id)a3
{
  v4 = a3;
  v5 = [(SRUIFInstrumentationManager *)self currentInstrumentationTurnContext];
  v6 = mach_absolute_time();
  objc_initWeak(&location, self);
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SRUIFInstrumentationManager_emitRequestFailedWithError___block_invoke;
  block[3] = &unk_279C62AF0;
  objc_copyWeak(v13, &location);
  v11 = v4;
  v12 = v5;
  v13[1] = v6;
  v8 = v5;
  v9 = v4;
  dispatch_async(instrumentationManagerQueue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __58__SRUIFInstrumentationManager_emitRequestFailedWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = objc_alloc_init(MEMORY[0x277D5AC38]);
    [v3 setErrorCode:{objc_msgSend(*(a1 + 32), "code")}];
    v4 = [*(a1 + 32) domain];
    [v3 setErrorDomain:v4];

    v5 = [v6 _pnrErrorMessageWithError:*(a1 + 32)];
    [v6 _emitInstrumentation:v3 forTurn:*(a1 + 40) atTime:*(a1 + 56)];
    [v6 _emitInstrumentation:v5 forTurn:*(a1 + 40) atTime:*(a1 + 56)];

    WeakRetained = v6;
  }
}

- (BOOL)_hasDismissedForTurnContext:(id)a3
{
  v4 = [a3 turnIdentifier];
  v5 = [v4 UUIDString];

  lastDismissedIdentifier = self->_lastDismissedIdentifier;
  if (lastDismissedIdentifier)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7 && [(NSString *)lastDismissedIdentifier isEqualToString:v5];

  return v8;
}

- (id)_pnrErrorMessageWithError:(id)a3
{
  v4 = MEMORY[0x277D5A980];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc_init(MEMORY[0x277D5A988]);
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%ld", objc_msgSend(v5, "code")];
  [v7 setErrorCode:v8];

  v9 = [v5 domain];
  [v7 setErrorDomain:v9];

  [v6 setError:v7];
  v10 = [v5 userInfo];

  v11 = [v10 objectForKey:*MEMORY[0x277CCA7E8]];

  if (v11)
  {
    v12 = [(SRUIFInstrumentationManager *)self _pnrErrorMessageWithError:v11];
    v13 = [v12 error];

    if (v13)
    {
      v14 = [v12 error];
      [v6 setUnderlyingError:v14];
    }

    v15 = [v12 underlyingError];

    if (v15)
    {
      v16 = [v12 underlyingError];
      [v6 setUnderUnderlyingError:v16];
    }
  }

  return v6;
}

- (void)_resetBargeInDetectedEvent
{
  self->_potentialBargeInDetected = 0;
  potentialBargedInTurn = self->_potentialBargedInTurn;
  self->_potentialBargeInDetectedTime = 0.0;
  self->_potentialBargedInTurn = 0;
  MEMORY[0x2821F96F8]();
}

- (void)_prepareForTesting
{
  userDefaults = self->_userDefaults;
  self->_userDefaults = 0;

  self->_shouldInstrument = 0;
}

- (void)_barrierWithCompletion:(id)a3
{
  v4 = a3;
  instrumentationManagerQueue = self->_instrumentationManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SRUIFInstrumentationManager__barrierWithCompletion___block_invoke;
  block[3] = &unk_279C61A08;
  v8 = v4;
  v6 = v4;
  dispatch_sync(instrumentationManagerQueue, block);
}

uint64_t __54__SRUIFInstrumentationManager__barrierWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)boostQueuedMessagesAndPerformOnQueueCompletion:(id)a3 timeout:(double)a4
{
  v6 = a3;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__94;
  v23[4] = __Block_byref_object_dispose__95;
  v24 = _Block_copy(v6);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__SRUIFInstrumentationManager_boostQueuedMessagesAndPerformOnQueueCompletion_timeout___block_invoke;
  aBlock[3] = &unk_279C62CD0;
  aBlock[4] = v23;
  v7 = _Block_copy(aBlock);
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [v8 UUIDString];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__SRUIFInstrumentationManager_boostQueuedMessagesAndPerformOnQueueCompletion_timeout___block_invoke_3;
  block[3] = &unk_279C61CE0;
  v10 = v9;
  v20 = v10;
  v11 = v7;
  v21 = v11;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(self->_instrumentationManagerQueue, v12);
  v13 = dispatch_time(0, (a4 * 1000000000.0));
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __86__SRUIFInstrumentationManager_boostQueuedMessagesAndPerformOnQueueCompletion_timeout___block_invoke_97;
  v16[3] = &unk_279C61CE0;
  v17 = v10;
  v18 = v11;
  v14 = v11;
  v15 = v10;
  dispatch_after(v13, MEMORY[0x277D85CD0], v16);

  _Block_object_dispose(v23, 8);
}

void __86__SRUIFInstrumentationManager_boostQueuedMessagesAndPerformOnQueueCompletion_timeout___block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __86__SRUIFInstrumentationManager_boostQueuedMessagesAndPerformOnQueueCompletion_timeout___block_invoke_2;
  v1[3] = &unk_279C62CD0;
  v1[4] = *(a1 + 32);
  SRUIFInvokeOnMainQueue(v1);
}

void __86__SRUIFInstrumentationManager_boostQueuedMessagesAndPerformOnQueueCompletion_timeout___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  if (v3)
  {
    v3[2]();
    v2 = *(*(a1 + 32) + 8);
    v3 = *(v2 + 40);
  }

  *(v2 + 40) = 0;
}

void __86__SRUIFInstrumentationManager_boostQueuedMessagesAndPerformOnQueueCompletion_timeout___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CEF158] sharedAnalytics];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __86__SRUIFInstrumentationManager_boostQueuedMessagesAndPerformOnQueueCompletion_timeout___block_invoke_4;
  v3[3] = &unk_279C61CE0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 boostQueuedEvents:v3];
}

uint64_t __86__SRUIFInstrumentationManager_boostQueuedMessagesAndPerformOnQueueCompletion_timeout___block_invoke_4(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[SRUIFInstrumentationManager boostQueuedMessagesAndPerformOnQueueCompletion:timeout:]_block_invoke_4";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_26951F000, v2, OS_LOG_TYPE_DEFAULT, "%s #instrumentation Flushed queued events - %@", &v6, 0x16u);
  }

  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __86__SRUIFInstrumentationManager_boostQueuedMessagesAndPerformOnQueueCompletion_timeout___block_invoke_97(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[SRUIFInstrumentationManager boostQueuedMessagesAndPerformOnQueueCompletion:timeout:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_26951F000, v2, OS_LOG_TYPE_DEFAULT, "%s #instrumentation Instrumentation message flush timeout - %@", &v6, 0x16u);
  }

  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_emitInstrumentation:(os_log_t)log forTurn:atTime:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SRUIFInstrumentationManager _emitInstrumentation:forTurn:atTime:]";
  _os_log_error_impl(&dword_26951F000, log, OS_LOG_TYPE_ERROR, "%s #noisy #instrumentation Emit instrumentation event requested but turn context provided is nil", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)storeCardID:(os_log_t)log forSnippetAceID:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "[SRUIFInstrumentationManager storeCardID:forSnippetAceID:]";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_26951F000, log, OS_LOG_TYPE_ERROR, "%s SiriIUIInstrumentationManager: Attempted to store cardID or aceID that was nil: %@ %@", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

@end
@interface SBSystemApertureDebuggingUtility
- (NSMutableArray)systemApertureModelStateDump;
- (SBSystemApertureDebuggingUtility)initWithDelegate:(id)a3;
- (SBSystemApertureDebuggingUtilityDelegate)delegate;
- (id)_createRegisterBlockForElement:(id)a3;
- (id)_repackageDictionaryDescribable:(id)a3;
- (id)availableRecordableFlipBookElementIdentifiers;
- (id)elementCoordinator:(id)a3 directoryForCapturingFlipBookElement:(id)a4;
- (id)errorWithDescription:(id)a3;
- (void)_collectPreferences:(id)a3 context:(id)a4 withStackDepiction:(id)a5 andQueryIteration:(unint64_t)a6;
- (void)_handleStreamBuddySessionForPreferences:(id)a3 context:(id)a4 withStackDepiction:(id)a5 andQueryIteration:(unint64_t)a6;
- (void)_observeAnimationFrames:(id)a3;
- (void)_setupTestRecipe;
- (void)clearBufferEntries;
- (void)elementCoordinator:(id)a3 finishedCaptureOfElement:(id)a4 error:(id)a5;
- (void)elementCoordinatorFinishedCapturing:(id)a3;
- (void)initiateFlipBookRecordingForSecureFlipBookElement:(id)a3 withSecureElementCoordinator:(id)a4 withCompletion:(id)a5;
- (void)setAnimationFrameRecording:(BOOL)a3;
- (void)setSystemApertureUnderAutomationTesting:(BOOL)a3;
- (void)settings:(id)a3 changedValueForKeyPath:(id)a4;
- (void)streamBuddySession:(id)a3 connectionState:(int)a4 withError:(id)a5;
- (void)updatedPreferences:(id)a3 context:(id)a4 withStackDepiction:(id)a5 andQueryIteration:(unint64_t)a6;
@end

@implementation SBSystemApertureDebuggingUtility

- (void)clearBufferEntries
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  bufferEntries = self->_bufferEntries;

  [(NSMutableArray *)bufferEntries removeAllObjects];
}

- (SBSystemApertureDebuggingUtility)initWithDelegate:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SBSystemApertureDebuggingUtility;
  v5 = [(SBSystemApertureDebuggingUtility *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_new();
    bufferEntries = v5->_bufferEntries;
    v5->_bufferEntries = v6;

    v5->_isAppleInternal = os_variant_has_internal_diagnostics();
    objc_storeWeak(&v5->_delegate, v4);
    v8 = +[SBSystemApertureDomain rootSettings];
    settings = v5->_settings;
    v5->_settings = v8;

    [(PTSettings *)v5->_settings addKeyPathObserver:v5];
    v10 = dispatch_queue_create("com.apple.springboard.debuggingutility.completion", 0);
    completionQueue = v5->_completionQueue;
    v5->_completionQueue = v10;

    [(SBSystemApertureDebuggingUtility *)v5 _setupTestRecipe];
  }

  return v5;
}

- (void)setAnimationFrameRecording:(BOOL)a3
{
  v5 = dispatch_semaphore_create(0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SBSystemApertureDebuggingUtility_setAnimationFrameRecording___block_invoke;
  block[3] = &unk_2783A97D8;
  v10 = a3;
  block[4] = self;
  v9 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v7 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v6, v7);
}

intptr_t __63__SBSystemApertureDebuggingUtility_setAnimationFrameRecording___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2 || *(a1 + 48) != 1)
  {
    [v2 invalidate];
    v8 = 0;
    v9 = 16;
  }

  else
  {
    v3 = [MEMORY[0x277CD9E48] displayLinkWithTarget:? selector:?];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v6 = *(*(a1 + 32) + 16);
    v7 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v6 addToRunLoop:v7 forMode:*MEMORY[0x277CBE738]];

    v8 = objc_opt_new();
    v9 = 104;
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + v9);
  *(v10 + v9) = v8;

  v12 = *(a1 + 40);

  return dispatch_semaphore_signal(v12);
}

- (void)setSystemApertureUnderAutomationTesting:(BOOL)a3
{
  v5 = dispatch_semaphore_create(0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__SBSystemApertureDebuggingUtility_setSystemApertureUnderAutomationTesting___block_invoke;
  block[3] = &unk_2783A97D8;
  v10 = a3;
  block[4] = self;
  v9 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v7 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v6, v7);
}

intptr_t __76__SBSystemApertureDebuggingUtility_setSystemApertureUnderAutomationTesting___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained systemApertureDebuggingUtility:*(a1 + 32) shouldCreateDebuggingLabel:*(a1 + 48)];

  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

- (void)updatedPreferences:(id)a3 context:(id)a4 withStackDepiction:(id)a5 andQueryIteration:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  self->_queryIteration = a6;
  [(SBSystemApertureDebuggingUtility *)self _collectPreferences:v12 context:v11 withStackDepiction:v10 andQueryIteration:a6];
  [(SBSystemApertureDebuggingUtility *)self _handleStreamBuddySessionForPreferences:v12 context:v11 withStackDepiction:v10 andQueryIteration:a6];
}

- (NSMutableArray)systemApertureModelStateDump
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__75;
  v10 = __Block_byref_object_dispose__75;
  v11 = objc_opt_new();
  v5 = dispatch_semaphore_create(0);
  BSDispatchMain();
  v2 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v5, v2);
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

intptr_t __64__SBSystemApertureDebuggingUtility_systemApertureModelStateDump__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(*(a1 + 32) + 24);
  v2 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v17 = *v19;
    do
    {
      v4 = 0;
      do
      {
        if (*v19 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v18 + 1) + 8 * v4);
        v22[0] = @"queryIteration";
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v5, "queryIteration")];
        v23[0] = v6;
        v22[1] = @"SBSAPreferences";
        v7 = *(a1 + 32);
        v8 = [v5 preferences];
        v9 = [v7 _repackageDictionaryDescribable:v8];
        v23[1] = v9;
        v22[2] = @"SBSAContext";
        v10 = *(a1 + 32);
        v11 = [v5 context];
        v12 = [v10 _repackageDictionaryDescribable:v11];
        v23[2] = v12;
        v22[3] = @"stackDepiction";
        v13 = [v5 stackDepiction];
        v23[3] = v13;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];

        [*(*(*(a1 + 48) + 8) + 40) addObject:v14];
        ++v4;
      }

      while (v3 != v4);
      v3 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v3);
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (void)initiateFlipBookRecordingForSecureFlipBookElement:(id)a3 withSecureElementCoordinator:(id)a4 withCompletion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v15 = v7;
  v17 = dispatch_semaphore_create(0);
  v16 = v8;
  v10 = v17;
  v11 = v8;
  v12 = v9;
  v13 = v7;
  BSDispatchMain();
  v14 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v10, v14);
}

void __130__SBSystemApertureDebuggingUtility_initiateFlipBookRecordingForSecureFlipBookElement_withSecureElementCoordinator_withCompletion___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _createRegisterBlockForElement:*(a1 + 40)];
  v3 = *(a1 + 64);
  if (v2)
  {
    v4 = [*(a1 + 64) copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = v4;

    v7 = *(a1 + 48);
    v8 = MEMORY[0x223D6F7F0](v2);
    v13[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [v7 captureElementsWithRegistrationBlocks:v9 elementCapturingDelegate:*(a1 + 32)];
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unkown element '%@'", *(a1 + 40)];
    v12 = [v10 errorWithDescription:v11];
    (*(v3 + 16))(v3, 0, v12);
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

- (id)_createRegisterBlockForElement:(id)a3
{
  v4 = a3;
  if (!_os_feature_enabled_impl())
  {
    v6 = 0;
    goto LABEL_20;
  }

  if (([v4 isEqualToString:@"com.apple.springboard-prototype.flipbook.lock"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"com.apple.springboard-systemApertureElementIdentifierLock"])
    {
      v7 = objc_opt_class();
      if (objc_opt_respondsToSelector())
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __67__SBSystemApertureDebuggingUtility__createRegisterBlockForElement___block_invoke_2;
        v16[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v16[4] = v7;
        v8 = v16;
LABEL_17:
        v5 = MEMORY[0x223D6F7F0](v8);
        goto LABEL_19;
      }
    }

    else if ([v4 isEqualToString:@"com.apple.CoreAuthUI-LocalAuthentication"] && _os_feature_enabled_impl())
    {
      v9 = objc_opt_class();
      if (objc_opt_respondsToSelector())
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __67__SBSystemApertureDebuggingUtility__createRegisterBlockForElement___block_invoke_3;
        v15[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v15[4] = v9;
        v8 = v15;
        goto LABEL_17;
      }
    }

    else if ([v4 isEqualToString:@"com.apple.PassbookUISceneService-WalletElement"])
    {
      pkInvalidatableBlock = self->_pkInvalidatableBlock;
      if (pkInvalidatableBlock)
      {
        [(PKInvalidatable *)pkInvalidatableBlock invalidate];
        v11 = self->_pkInvalidatableBlock;
        self->_pkInvalidatableBlock = 0;
      }

      v12 = objc_opt_class();
      if (objc_opt_respondsToSelector())
      {
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __67__SBSystemApertureDebuggingUtility__createRegisterBlockForElement___block_invoke_4;
        v14[3] = &unk_2783B9B08;
        v14[4] = self;
        v14[5] = v12;
        v8 = v14;
        goto LABEL_17;
      }
    }

    v5 = 0;
    goto LABEL_19;
  }

  v5 = &__block_literal_global_213;
LABEL_19:
  v6 = MEMORY[0x223D6F7F0](v5);

LABEL_20:

  return v6;
}

void __67__SBSystemApertureDebuggingUtility__createRegisterBlockForElement___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 40) registerElementForRecording:1 withCompletion:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;
}

- (id)availableRecordableFlipBookElementIdentifiers
{
  v2 = objc_opt_new();
  if (_os_feature_enabled_impl())
  {
    [v2 setObject:@"Prototype Test Recipe" forKey:@"com.apple.springboard-prototype.flipbook.lock"];
    [v2 setObject:@"SpringBoard Lockscreen Element" forKey:@"com.apple.springboard-systemApertureElementIdentifierLock"];
    objc_opt_class();
    if ((objc_opt_respondsToSelector() & 1) != 0 && _os_feature_enabled_impl())
    {
      [v2 setObject:@"Secure indicator for local authentication" forKey:@"com.apple.CoreAuthUI-LocalAuthentication"];
    }

    objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      [v2 setObject:@"Wallet" forKey:@"com.apple.PassbookUISceneService-WalletElement"];
    }
  }

  return v2;
}

- (void)_setupTestRecipe
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__SBSystemApertureDebuggingUtility__setupTestRecipe__block_invoke;
  v3[3] = &unk_2783A9398;
  v3[4] = self;
  v2 = [MEMORY[0x277D432B0] recipeWithTitle:@"Toggle StreamBuddy" toggleAction:v3];
  [(PTDomain *)SBAppSwitcherDomain registerTestRecipe:v2];
}

void __52__SBSystemApertureDebuggingUtility__setupTestRecipe__block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2 && *(v3 + 40) == 1 && !*(v3 + 8))
  {
    v6 = objc_alloc_init(SBStreamBuddySession);
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    *(v7 + 8) = v6;

    [*(*(a1 + 32) + 8) setDelegate:?];
    v9 = *(*(a1 + 32) + 8);

    [v9 start];
  }

  else
  {
    [*(v3 + 8) stop];
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = 0;
  }
}

- (id)_repackageDictionaryDescribable:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [a3 dictionaryDescription];
  v4 = [v3 copy];

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v6 objectForKey:v11];
        if (objc_opt_respondsToSelector())
        {
          v13 = [(SBSystemApertureDebuggingUtility *)self _repackageDictionaryDescribable:v12];
          v14 = [v13 description];
          [v5 setObject:v14 forKey:v11];
        }

        else
        {
          [v5 setObject:v12 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_collectPreferences:(id)a3 context:(id)a4 withStackDepiction:(id)a5 andQueryIteration:(unint64_t)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  if (self->_isAppleInternal)
  {
    v12 = +[SBDefaults localDefaults];
    v13 = [v12 systemApertureDefaults];
    v14 = [v13 enableSystemApertureStateCollection];

    if (v14)
    {
      v15 = [[SBSystemApertureDebuggingUtilityBufferEntry alloc] initWithQueryIteration:a6 preferences:v16 context:v10 stackDepiction:v11];
      if ([(NSMutableArray *)self->_bufferEntries count]== 50 && ![(SBSystemApertureDebuggingUtility *)self isSystemApertureUnderAutomationTesting])
      {
        [(NSMutableArray *)self->_bufferEntries removeObjectAtIndex:0];
      }

      [(NSMutableArray *)self->_bufferEntries addObject:v15];
    }
  }
}

- (void)_handleStreamBuddySessionForPreferences:(id)a3 context:(id)a4 withStackDepiction:(id)a5 andQueryIteration:(unint64_t)a6
{
  v19[4] = *MEMORY[0x277D85DE8];
  if (self->_streamBuddySession)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = [v10 stringWithFormat:@"%lu", a6, @"queryIteration"];
    v19[0] = v14;
    v18[1] = @"SBSAPreferences";
    v15 = [(SBSystemApertureDebuggingUtility *)self _repackageDictionaryDescribable:v13];

    v19[1] = v15;
    v18[2] = @"SBSAContext";
    v16 = [(SBSystemApertureDebuggingUtility *)self _repackageDictionaryDescribable:v12];

    v18[3] = @"stackDepiction";
    v19[2] = v16;
    v19[3] = v11;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

    [(SBStreamBuddySession *)self->_streamBuddySession sendSystemApertureStateDump:v17];
  }
}

- (id)errorWithDescription:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v3 errorWithDomain:@"SBSystemApertureDebuggingUtility" code:-1 userInfo:v6];

  return v7;
}

- (void)_observeAnimationFrames:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained systemApertureDebuggingUtilityOrderedContainerViews:self];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v5;
  v26 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v26)
  {
    v25 = *v28;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v8 = [v7 elementViewController];
        v9 = [v8 elementViewProvider];
        v10 = [v9 element];

        if (v10)
        {
          v11 = [v10 elementIdentifier];
          v12 = MEMORY[0x277CCAE60];
          v13 = [v7 layer];
          v14 = [v13 presentationLayer];
          [v14 frame];
          v15 = [v12 valueWithRect:?];

          v16 = MEMORY[0x277CCABB0];
          v17 = [v7 layer];
          v18 = [v17 presentationLayer];
          [v18 cornerRadius];
          *&v19 = v19;
          v20 = [v16 numberWithFloat:v19];

          v21 = [MEMORY[0x277CCABB0] numberWithInteger:self->_queryIteration];
          v31[0] = @"frame";
          v31[1] = @"cornerRadius";
          v32[0] = v15;
          v32[1] = v20;
          v31[2] = @"queryIteration";
          v32[2] = v21;
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
          v23 = [(NSMutableDictionary *)self->_animationFrameRecordings objectForKey:v11];
          if (!v23)
          {
            v23 = objc_opt_new();
          }

          [v23 addObject:v22];
          [(NSMutableDictionary *)self->_animationFrameRecordings setObject:v23 forKey:v11];
        }
      }

      v26 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v26);
  }
}

- (void)settings:(id)a3 changedValueForKeyPath:(id)a4
{
  if ([a4 isEqualToString:@"showQueryIterationLabel"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained systemApertureDebuggingUtility:self shouldCreateDebuggingLabel:{-[SBSystemApertureSettings showQueryIterationLabel](self->_settings, "showQueryIterationLabel")}];
  }
}

- (void)streamBuddySession:(id)a3 connectionState:(int)a4 withError:(id)a5
{
  v5 = *&a4;
  v20 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = SBLogStreamBuddy();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v11 = SBStringFromStreamBuddyConnectionState(v5);
    v12 = [v8 debugDescription];
    v14 = 138412802;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%@ State:%@ withError:%@", &v14, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained systemApertureDebuggingUtility:self updateUIForConnectionState:v5];
}

- (id)elementCoordinator:(id)a3 directoryForCapturingFlipBookElement:(id)a4
{
  v5 = a4;
  v6 = NSTemporaryDirectory();
  v7 = MEMORY[0x277CCACA8];
  v8 = [v5 clientIdentifier];
  v9 = [v5 elementIdentifier];

  v10 = [v7 stringWithFormat:@"%@-%@", v8, v9];

  v11 = [v6 stringByAppendingPathComponent:v10];
  v12 = [v11 stringByStandardizingPath];

  v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
  [v14 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:0];

  objc_storeStrong(&self->_flipBookRecordingDestinationURL, v13);

  return v13;
}

- (void)elementCoordinator:(id)a3 finishedCaptureOfElement:(id)a4 error:(id)a5
{
  v6 = a5;
  completionQueue = self->_completionQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__SBSystemApertureDebuggingUtility_elementCoordinator_finishedCaptureOfElement_error___block_invoke;
  v9[3] = &unk_2783A92D8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(completionQueue, v9);
}

void __86__SBSystemApertureDebuggingUtility_elementCoordinator_finishedCaptureOfElement_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[7];
  if (v3)
  {
    (*(v3 + 16))(v3, v2[8], *(a1 + 40));
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = 0;

    v6 = *(a1 + 32);
    v7 = *(v6 + 64);
    *(v6 + 64) = 0;

    v2 = *(a1 + 32);
  }

  v8 = v2[9];
  if (v8)
  {
    [v8 invalidate];
    v9 = *(a1 + 32);
    v10 = *(v9 + 72);
    *(v9 + 72) = 0;
  }
}

- (void)elementCoordinatorFinishedCapturing:(id)a3
{
  completionQueue = self->_completionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__SBSystemApertureDebuggingUtility_elementCoordinatorFinishedCapturing___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(completionQueue, block);
}

void __72__SBSystemApertureDebuggingUtility_elementCoordinatorFinishedCapturing___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[7];
  if (v3)
  {
    v4 = v2[8];
    v5 = [v2 errorWithDescription:@"Stale Block"];
    (*(v3 + 16))(v3, v4, v5);

    v2 = *(a1 + 32);
    v6 = v2[7];
  }

  else
  {
    v6 = 0;
  }

  v2[7] = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 64);
  *(v7 + 64) = 0;

  v9 = *(*(a1 + 32) + 72);
  if (v9)
  {
    [v9 invalidate];
    v10 = *(a1 + 32);
    v11 = *(v10 + 72);
    *(v10 + 72) = 0;
  }
}

- (SBSystemApertureDebuggingUtilityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
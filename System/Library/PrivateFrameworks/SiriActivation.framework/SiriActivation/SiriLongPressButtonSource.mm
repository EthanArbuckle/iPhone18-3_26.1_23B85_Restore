@interface SiriLongPressButtonSource
+ (id)longPressButtonForIdentifier:(int64_t)a3;
- (BOOL)_shouldClearActiveOverrideOnInactiveTransition;
- (BOOL)isActive;
- (SiriLongPressButtonSourceDelegate)delegate;
- (double)_timestampForSpeechInteractionActivityWithTimestamp:(double)a3;
- (double)hintGlowTimeIntervalInMs;
- (id)_initWithButtonIdentifier:(int64_t)a3;
- (id)prepareForActivation;
- (id)prepareForActivationWithTimestamp:(double)a3;
- (id)speechInteractionActivityWithTimestamp:(double)a3;
- (void)_clearActiveOverride;
- (void)activeChangedTo:(id)a3;
- (void)activeOverrideDidChange:(id)a3;
- (void)configurationUpdateManager:(id)a3 configurationDidUpdateForLongPressSource:(id)a4;
- (void)configureConnection;
- (void)didRecognizeButtonSinglePressUp;
- (void)didRecognizeLongPress;
- (void)didRecognizeLongPressInteraction:(id)a3;
- (void)invalidateHintGlowTimer;
- (void)requestConfigurationUpdatesBasedOnDeviceSettings;
- (void)setupHintGlowTimerIfNeededWithButtonIdentifier:(id)a3 buttonContext:(id)a4;
- (void)signalForHintGlow:(id)a3;
- (void)stopConfigurationUpdates;
@end

@implementation SiriLongPressButtonSource

+ (id)longPressButtonForIdentifier:(int64_t)a3
{
  v3 = [[SiriLongPressButtonSource alloc] _initWithButtonIdentifier:a3];
  v4 = objc_alloc_init(SiriLongPressButtonContext);
  [v3 setContext:v4];

  v5 = [v3 context];
  [v5 setButtonDownTimestamp:0.0];

  v6 = [v3 context];
  [v6 setLongPressBehavior:-1];

  return v3;
}

- (id)_initWithButtonIdentifier:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = SiriLongPressButtonSource;
  v4 = [(SiriActivationSource *)&v10 init];
  v5 = v4;
  if (v4)
  {
    [(SiriLongPressButtonSource *)v4 setActiveOverride:0];
    [(SiriLongPressButtonSource *)v5 setActiveOverrideSpecified:0];
    [(SiriLongPressButtonSource *)v5 setButtonIdentifier:a3];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(SiriLongPressButtonSource *)v5 setLock_activityAssertions:v6];

    [(SiriLongPressButtonSource *)v5 configureConnection];
    v7 = objc_alloc_init(SiriLongPressButtonContext);
    [(SiriLongPressButtonSource *)v5 setContext:v7];

    v8 = [[SiriLongPressButtonConfiguration alloc] initWithButtonIdentifier:a3];
    [(SiriLongPressButtonSource *)v5 setConfiguration:v8];

    [(SiriLongPressButtonSource *)v5 setCurrentTimeGenerator:&__block_literal_global_13];
  }

  return v5;
}

- (double)hintGlowTimeIntervalInMs
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.siri.internal"];
  v3 = [v2 valueForKey:@"HintGlowIntervalInMs"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 250.0;
  }

  return v5;
}

- (void)configureConnection
{
  v3 = MEMORY[0x1E698F498];
  v4 = +[SASBoardServicesConfiguration configuration];
  v5 = [v4 machServiceIdentifier];
  v6 = +[SASBoardServicesConfiguration configuration];
  v7 = [v6 identifierForService:1];
  v8 = [v3 endpointForMachName:v5 service:v7 instance:0];

  v9 = [MEMORY[0x1E698F490] connectionWithEndpoint:v8];
  connection = self->super._connection;
  self->super._connection = v9;

  objc_initWeak(&location, self);
  v11 = self->super._connection;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __48__SiriLongPressButtonSource_configureConnection__block_invoke;
  v15 = &unk_1E82F3658;
  objc_copyWeak(&v16, &location);
  [(BSServiceConnection *)v11 configureConnection:&v12];
  [(BSServiceConnection *)self->super._connection activate:v12];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __48__SiriLongPressButtonSource_configureConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained buttonIdentifier];
    v7 = [v5 identifier];
    v8 = +[SASSignalServer serviceQuality];
    [v3 setServiceQuality:v8];

    v9 = +[SASSignalServer interface];
    [v3 setInterface:v9];

    [v3 setInterfaceTarget:v5];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __48__SiriLongPressButtonSource_configureConnection__block_invoke_2;
    v15[3] = &unk_1E82F3940;
    v17 = v6;
    v10 = v7;
    v16 = v10;
    [v3 setInvalidationHandler:v15];
    [v3 setInterruptionHandler:&__block_literal_global_50];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__SiriLongPressButtonSource_configureConnection__block_invoke_51;
    v12[3] = &unk_1E82F3F70;
    objc_copyWeak(v14, (a1 + 32));
    v14[1] = v6;
    v11 = v10;
    v13 = v11;
    [v3 setActivationHandler:v12];

    objc_destroyWeak(v14);
  }
}

void __48__SiriLongPressButtonSource_configureConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SiriLongPressButtonSource configureConnection]_block_invoke_2";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation BSServiceConnection Invalidated %@", &v8, 0x16u);
  }

  v5 = [v3 remoteTarget];
  v6 = [[SASButtonIdentifierTransport alloc] initWithSiriButtonIdentifier:*(a1 + 40)];
  [v5 unregisterButtonIdentifier:v6 withUUID:*(a1 + 32)];

  v7 = *MEMORY[0x1E69E9840];
}

void __48__SiriLongPressButtonSource_configureConnection__block_invoke_48(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
  {
    __48__SiriLongPressButtonSource_configureConnection__block_invoke_48_cold_1(v2, v3);
  }

  [v2 activate];
}

void __48__SiriLongPressButtonSource_configureConnection__block_invoke_51(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v40 = "[SiriLongPressButtonSource configureConnection]_block_invoke";
    v41 = 2048;
    v42 = WeakRetained;
    v43 = 2112;
    v44 = v3;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation BSServiceConnection Activated strongSelf=%p connection=%@", buf, 0x20u);
  }

  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    v6 = [v3 remoteTarget];
    v7 = [[SASButtonIdentifierTransport alloc] initWithSiriButtonIdentifier:*(a1 + 48)];
    [v6 registerButtonIdentifier:v7 withUUID:*(a1 + 32)];

    v8 = 0x1E82F2000uLL;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = [(os_unfair_lock_s *)WeakRetained lock_activityAssertions];
    v33 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (!v33)
    {
      goto LABEL_16;
    }

    v10 = *v35;
    v32 = *v35;
    while (1)
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v13 = [v12 reason];
        v14 = [v13 isEqualToString:@"prepare"];

        if (v14)
        {
          v15 = [v3 remoteTarget];
          v16 = objc_alloc(*(v8 + 3872));
          v17 = [v12 reference];
          v18 = [v16 initWithString:v17];
          v19 = [SASTimeIntervalTransport alloc];
          [(os_unfair_lock_s *)WeakRetained longPressInterval];
          v20 = [(SASTimeIntervalTransport *)v19 initWithTimeInterval:?];
          [v15 prewarmFromButtonIdentifier:v18 longPressInterval:v20];
        }

        else
        {
          v21 = [v12 reason];
          v22 = [v21 isEqualToString:@"speechInteraction"];

          if (!v22)
          {
            continue;
          }

          v23 = objc_alloc(*(v8 + 3872));
          v24 = [v12 reference];
          v15 = [v23 initWithString:v24];

          v17 = [(os_unfair_lock_s *)WeakRetained context];
          [(os_unfair_lock_s *)WeakRetained setupHintGlowTimerIfNeededWithButtonIdentifier:v15 buttonContext:v17];
          v18 = [v3 remoteTarget];
          v25 = v9;
          v26 = WeakRetained;
          v27 = v8;
          v28 = v3;
          v29 = [SASTimeIntervalTransport alloc];
          [v12 timestamp];
          v30 = v29;
          v3 = v28;
          v8 = v27;
          WeakRetained = v26;
          v9 = v25;
          v10 = v32;
          v20 = [(SASTimeIntervalTransport *)v30 initWithTimeInterval:?];
          [v18 buttonDownFromButtonIdentifier:v15 timestamp:v20 context:v17];
        }
      }

      v33 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (!v33)
      {
LABEL_16:

        os_unfair_lock_unlock(WeakRetained + 4);
        break;
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (id)prepareForActivationWithTimestamp:(double)a3
{
  v4 = SiriSystemUpTimeFromCFAbsoluteCurrentTime(a3);
  objc_initWeak(&location, self);
  v5 = [SiriActivityAssertion alloc];
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];
  v8 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:{-[SiriLongPressButtonSource buttonIdentifier](self, "buttonIdentifier")}];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __63__SiriLongPressButtonSource_prepareForActivationWithTimestamp___block_invoke;
  v20 = &unk_1E82F3738;
  objc_copyWeak(&v21, &location);
  v9 = [(SiriActivityAssertion *)v5 initWithIdentifier:v7 reference:v8 reason:@"prepare" timestamp:&v17 invalidationBlock:v4];

  os_unfair_lock_lock(&self->super._lock);
  [(NSMutableArray *)self->_lock_activityAssertions addObject:v9, v17, v18, v19, v20];
  v10 = [(BSServiceConnection *)self->super._connection remoteTarget];
  v11 = [SASButtonIdentifierTransport alloc];
  v12 = [(SiriActivityAssertion *)v9 reference];
  v13 = [(SASButtonIdentifierTransport *)v11 initWithString:v12];
  v14 = [SASTimeIntervalTransport alloc];
  [(SiriLongPressButtonSource *)self longPressInterval];
  v15 = [(SASTimeIntervalTransport *)v14 initWithTimeInterval:?];
  [v10 prewarmFromButtonIdentifier:v13 longPressInterval:v15];

  os_unfair_lock_unlock(&self->super._lock);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v9;
}

void __63__SiriLongPressButtonSource_prepareForActivationWithTimestamp___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    v5 = [*&v4[2]._os_unfair_lock_opaque remoteTarget];
    v6 = [SASButtonIdentifierTransport alloc];
    v7 = [v10 reference];
    v8 = [(SASButtonIdentifierTransport *)v6 initWithString:v7];
    [v5 cancelPrewarmFromButtonIdentifier:v8];

    v9 = [(os_unfair_lock_s *)v4 lock_activityAssertions];
    [v9 removeObject:v10];

    os_unfair_lock_unlock(v4 + 4);
  }
}

- (void)setupHintGlowTimerIfNeededWithButtonIdentifier:(id)a3 buttonContext:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!self->_saeHintGlowTimer)
  {
    v8 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[SiriLongPressButtonSource setupHintGlowTimerIfNeededWithButtonIdentifier:buttonContext:]";
      _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation setup hint glow activation timer", buf, 0xCu);
    }

    v9 = MEMORY[0x1E695DFF0];
    [(SiriLongPressButtonSource *)self hintGlowTimeIntervalInMs];
    v16[0] = @"buttonIdentifier";
    v16[1] = @"buttonContext";
    v17[0] = v6;
    v17[1] = v7;
    v11 = v10 / 1000.0;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v13 = [v9 scheduledTimerWithTimeInterval:self target:sel_signalForHintGlow_ selector:v12 userInfo:0 repeats:v11];
    saeHintGlowTimer = self->_saeHintGlowTimer;
    self->_saeHintGlowTimer = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)invalidateHintGlowTimer
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_saeHintGlowTimer)
  {
    v3 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[SiriLongPressButtonSource invalidateHintGlowTimer]";
      _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s #activation invalidate hint glow activation timer", &v6, 0xCu);
    }

    [(NSTimer *)self->_saeHintGlowTimer invalidate];
    saeHintGlowTimer = self->_saeHintGlowTimer;
    self->_saeHintGlowTimer = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)signalForHintGlow:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[SiriLongPressButtonSource signalForHintGlow:]";
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation hint glow activation timer fired", &v12, 0xCu);
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"buttonIdentifier"];

  v8 = [v4 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"buttonContext"];

  v10 = [(BSServiceConnection *)self->super._connection remoteTarget];
  [v10 setHintGlowAssertionFromButtonIdentifier:v7 context:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (id)prepareForActivation
{
  v3 = [(SiriLongPressButtonSource *)self currentTimeGenerator];
  v4 = v3[2]();

  return [(SiriLongPressButtonSource *)self prepareForActivationWithTimestamp:v4];
}

- (id)speechInteractionActivityWithTimestamp:(double)a3
{
  objc_initWeak(&location, self);
  [(SiriLongPressButtonSource *)self _timestampForSpeechInteractionActivityWithTimestamp:a3];
  v6 = v5;
  v7 = [(SiriLongPressButtonSource *)self context];
  [v7 setButtonDownTimestamp:v6];

  v8 = [(SiriLongPressButtonSource *)self context];
  [v8 setLongPressBehavior:{-[SiriLongPressButtonSource longPressBehavior](self, "longPressBehavior")}];

  v9 = [(SiriLongPressButtonSource *)self context];
  v10 = [SiriActivityAssertion alloc];
  v11 = [MEMORY[0x1E696AFB0] UUID];
  v12 = [v11 UUIDString];
  v13 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:{-[SiriLongPressButtonSource buttonIdentifier](self, "buttonIdentifier")}];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __68__SiriLongPressButtonSource_speechInteractionActivityWithTimestamp___block_invoke;
  v24[3] = &unk_1E82F3F98;
  objc_copyWeak(&v26, &location);
  v14 = v9;
  v25 = v14;
  v15 = [(SiriActivityAssertion *)v10 initWithIdentifier:v12 reference:v13 reason:@"speechInteraction" timestamp:v24 invalidationBlock:v6];

  os_unfair_lock_lock(&self->super._lock);
  [(NSMutableArray *)self->_lock_activityAssertions addObject:v15];
  v16 = [SASButtonIdentifierTransport alloc];
  v17 = [(SiriActivityAssertion *)v15 reference];
  v18 = [(SASButtonIdentifierTransport *)v16 initWithString:v17];

  [(SiriLongPressButtonSource *)self setupHintGlowTimerIfNeededWithButtonIdentifier:v18 buttonContext:v14];
  v19 = [(BSServiceConnection *)self->super._connection remoteTarget];
  v20 = [SASTimeIntervalTransport alloc];
  [(SiriActivityAssertion *)v15 timestamp];
  v21 = [(SASTimeIntervalTransport *)v20 initWithTimeInterval:?];
  v22 = [(SiriLongPressButtonSource *)self context];
  [v19 buttonDownFromButtonIdentifier:v18 timestamp:v21 context:v22];

  os_unfair_lock_unlock(&self->super._lock);
  objc_destroyWeak(&v26);

  objc_destroyWeak(&location);

  return v15;
}

void __68__SiriLongPressButtonSource_speechInteractionActivityWithTimestamp___block_invoke(uint64_t a1, void *a2, double a3)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    [(os_unfair_lock_s *)v6 invalidateHintGlowTimer];
    v7 = [*&v6[2]._os_unfair_lock_opaque remoteTarget];
    v8 = [SASButtonIdentifierTransport alloc];
    v9 = [v14 reference];
    v10 = [(SASButtonIdentifierTransport *)v8 initWithString:v9];
    v11 = [(os_unfair_lock_s *)v6 _deviceIdentifier];
    v12 = [[SASTimeIntervalTransport alloc] initWithTimeInterval:a3];
    [v7 buttonUpFromButtonIdentifier:v10 deviceIdentifier:v11 timestamp:v12 context:*(a1 + 32)];

    v13 = [(os_unfair_lock_s *)v6 lock_activityAssertions];
    [v13 removeObject:v14];

    os_unfair_lock_unlock(v6 + 4);
  }
}

- (void)didRecognizeButtonSinglePressUp
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = [(BSServiceConnection *)self->super._connection remoteTarget];
  v4 = [[SASButtonIdentifierTransport alloc] initWithSiriButtonIdentifier:[(SiriLongPressButtonSource *)self buttonIdentifier]];
  v5 = [[SASTimeIntervalTransport alloc] initWithTimeInterval:CFAbsoluteTimeGetCurrent()];
  v6 = [(SiriLongPressButtonSource *)self context];
  [v3 buttonTapFromButtonIdentifier:v4 timestamp:v5 context:v6];

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)didRecognizeLongPress
{
  v3 = objc_alloc_init(SiriLongPressButtonInteraction);
  [(SiriLongPressButtonSource *)self didRecognizeLongPressInteraction:v3];
}

- (void)didRecognizeLongPressInteraction:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = [(SiriLongPressButtonSource *)self context];
  [v4 setLongPressBehavior:{-[SiriLongPressButtonSource longPressBehavior](self, "longPressBehavior")}];

  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = [v6 stringWithSiriButtonIdentifier:{-[SiriLongPressButtonSource buttonIdentifier](self, "buttonIdentifier")}];
    *buf = 136315394;
    v46 = "[SiriLongPressButtonSource didRecognizeLongPressInteraction:]";
    v47 = 2112;
    v48 = v8;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s #activation %@ didRecognizeLongPress", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->super._lock);
  if ([(SiriLongPressButtonSource *)self buttonIdentifier]== 4)
  {
    v9 = [(SiriLongPressButtonSource *)self context];
    [v9 buttonDownTimestamp];
    v11 = v10;

    if (v11 == 0.0)
    {
      v12 = [(NSMutableArray *)self->_lock_activityAssertions lastObject];
      v13 = [v12 reason];
      v14 = [v13 isEqualToString:@"prepare"];

      if (v14)
      {
        v15 = [(NSMutableArray *)self->_lock_activityAssertions lastObject];
        [v15 timestamp];
        v17 = v16;
      }

      else
      {
        v18 = [(SiriLongPressButtonSource *)self currentTimeGenerator];
        v19 = v18[2]();

        v17 = SiriSystemUpTimeFromCFAbsoluteCurrentTime(v19);
      }

      v20 = [(SiriLongPressButtonSource *)self context];
      [v20 setButtonDownTimestamp:v17];
    }
  }

  v21 = [(BSServiceConnection *)self->super._connection remoteTarget];
  v22 = [[SASButtonIdentifierTransport alloc] initWithSiriButtonIdentifier:[(SiriLongPressButtonSource *)self buttonIdentifier]];
  v23 = [(SiriLongPressButtonSource *)self context];
  [v21 buttonLongPressFromButtonIdentifier:v22 context:v23];

  if ([(SiriLongPressButtonSource *)self buttonIdentifier]== 2 || [(SiriLongPressButtonSource *)self buttonIdentifier]== 1)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v24 = self->_lock_activityAssertions;
    v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v41;
LABEL_13:
      v28 = 0;
      while (1)
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v40 + 1) + 8 * v28) reason];
        v30 = [v29 isEqualToString:@"speechInteraction"];

        if (v30)
        {
          break;
        }

        if (v26 == ++v28)
        {
          v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v40 objects:v44 count:16];
          if (v26)
          {
            goto LABEL_13;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:

      v31 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
      {
        [SiriLongPressButtonSource didRecognizeLongPressInteraction:v31];
      }

      v24 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:{-[SiriLongPressButtonSource buttonIdentifier](self, "buttonIdentifier", v40)}];
      [(SiriLongPressButtonSource *)self _timestampForSpeechInteractionActivityWithTimestamp:CFAbsoluteTimeGetCurrent()];
      v33 = v32;
      [(SiriLongPressButtonSource *)self invalidateHintGlowTimer];
      v34 = [(BSServiceConnection *)self->super._connection remoteTarget];
      v35 = [[SASButtonIdentifierTransport alloc] initWithString:v24];
      v36 = [(SiriLongPressButtonSource *)self _deviceIdentifier];
      v37 = [[SASTimeIntervalTransport alloc] initWithTimeInterval:v33];
      v38 = [(SiriLongPressButtonSource *)self context];
      [v34 buttonUpFromButtonIdentifier:v35 deviceIdentifier:v36 timestamp:v37 context:v38];
    }
  }

  os_unfair_lock_unlock(&self->super._lock);
  v39 = *MEMORY[0x1E69E9840];
}

- (void)activeChangedTo:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 BOOLValue] & 1) == 0 && -[SiriLongPressButtonSource _shouldClearActiveOverrideOnInactiveTransition](self, "_shouldClearActiveOverrideOnInactiveTransition"))
  {
    v5 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[SiriLongPressButtonSource activeChangedTo:]";
      _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation clearing active override", buf, 0xCu);
    }

    [(SiriLongPressButtonSource *)self _clearActiveOverride];
  }

  v7.receiver = self;
  v7.super_class = SiriLongPressButtonSource;
  [(SiriActivationSource *)&v7 activeChangedTo:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldClearActiveOverrideOnInactiveTransition
{
  if ([(SiriLongPressButtonSource *)self buttonIdentifier]!= 2)
  {
    return 0;
  }

  return [(SiriLongPressButtonSource *)self activeOverrideSpecified];
}

- (void)_clearActiveOverride
{
  [(SiriLongPressButtonSource *)self setActiveOverride:0];

  [(SiriLongPressButtonSource *)self setActiveOverrideSpecified:0];
}

- (void)activeOverrideDidChange:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 BOOLValue];
    v8 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:self->_buttonIdentifier];
    v10 = 136315650;
    v11 = "[SiriLongPressButtonSource activeOverrideDidChange:]";
    v12 = 1024;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation Setting override %{BOOL}d for %@", &v10, 0x1Cu);
  }

  -[SiriLongPressButtonSource setActiveOverride:](self, "setActiveOverride:", [v4 BOOLValue]);
  [(SiriLongPressButtonSource *)self setActiveOverrideSpecified:1];

  v9 = *MEMORY[0x1E69E9840];
}

- (double)_timestampForSpeechInteractionActivityWithTimestamp:(double)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(SiriLongPressButtonSource *)self _shouldReplaceSpeechInteractionActivityTimestampWithPrewarmTimestamp])
  {
    os_unfair_lock_lock(&self->super._lock);
    v5 = [(NSMutableArray *)self->_lock_activityAssertions lastObject];
    v6 = [v5 reason];
    v7 = [v6 isEqualToString:@"prepare"];

    if (v7)
    {
      v8 = [(NSMutableArray *)self->_lock_activityAssertions lastObject];
      [v8 timestamp];
      v10 = v9;

      v11 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
      {
        v12 = MEMORY[0x1E696AD98];
        v13 = v11;
        v14 = [v12 numberWithDouble:v10];
        v22 = 136315394;
        v23 = "[SiriLongPressButtonSource _timestampForSpeechInteractionActivityWithTimestamp:]";
        v24 = 2112;
        v25 = v14;
        _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation #zll carplay steering wheel button with previous prepare assertion, replaced timestamp with %@", &v22, 0x16u);
      }
    }

    else
    {
      v19 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
      {
        [SiriLongPressButtonSource _timestampForSpeechInteractionActivityWithTimestamp:v19];
      }

      v10 = SiriSystemUpTimeFromCFAbsoluteCurrentTime(a3);
    }

    os_unfair_lock_unlock(&self->super._lock);
  }

  else
  {
    v10 = SiriSystemUpTimeFromCFAbsoluteCurrentTime(a3);
    v15 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v16 = MEMORY[0x1E696AD98];
      v17 = v15;
      v18 = [v16 numberWithDouble:v10];
      v22 = 136315394;
      v23 = "[SiriLongPressButtonSource _timestampForSpeechInteractionActivityWithTimestamp:]";
      v24 = 2112;
      v25 = v18;
      _os_log_impl(&dword_1C8137000, v17, OS_LOG_TYPE_DEFAULT, "%s #activation #zll not a carplay steering wheel button, converted passed in timestamp: %@", &v22, 0x16u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)requestConfigurationUpdatesBasedOnDeviceSettings
{
  if ([(SiriLongPressButtonSource *)self _sourceSupportsAutomaticConfigurationUpdates]&& !self->_updateManager)
  {
    v3 = objc_alloc_init(SiriLongPressButtonConfigurationUpdateManager);
    updateManager = self->_updateManager;
    self->_updateManager = v3;

    v5 = self->_updateManager;

    [(SiriLongPressButtonConfigurationUpdateManager *)v5 startManagingConfigurationFromSource:self withDelegate:self];
  }
}

- (void)stopConfigurationUpdates
{
  updateManager = self->_updateManager;
  if (updateManager)
  {
    [(SiriLongPressButtonConfigurationUpdateManager *)updateManager stopManagingAllConfigurations];
    v4 = self->_updateManager;
    self->_updateManager = 0;
  }
}

- (void)configurationUpdateManager:(id)a3 configurationDidUpdateForLongPressSource:(id)a4
{
  v5 = [(SiriLongPressButtonSource *)self delegate:a3];
  if (v5)
  {
    v6 = v5;
    v7 = [(SiriLongPressButtonSource *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(SiriLongPressButtonSource *)self delegate];
      [v9 configurationDidUpdateOnLongPressSource:self];
    }
  }
}

- (BOOL)isActive
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(SiriLongPressButtonSource *)self buttonIdentifier]!= 4)
  {
    if ([(SiriLongPressButtonSource *)self buttonIdentifier]!= 2 || ![(SiriLongPressButtonSource *)self activeOverrideSpecified])
    {
      v7.receiver = self;
      v7.super_class = SiriLongPressButtonSource;
      result = [(SiriActivationSource *)&v7 isActive];
      goto LABEL_10;
    }

    v4 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      *buf = 136315394;
      v10 = "[SiriLongPressButtonSource isActive]";
      v11 = 1024;
      v12 = [(SiriLongPressButtonSource *)self activeOverride];
      _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation activeOverride is specified and set to %d", buf, 0x12u);
    }

    goto LABEL_8;
  }

  v8.receiver = self;
  v8.super_class = SiriLongPressButtonSource;
  if (![(SiriActivationSource *)&v8 isActive])
  {
LABEL_8:
    result = [(SiriLongPressButtonSource *)self activeOverride];
    goto LABEL_10;
  }

  result = 1;
LABEL_10:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (SiriLongPressButtonSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __48__SiriLongPressButtonSource_configureConnection__block_invoke_48_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[SiriLongPressButtonSource configureConnection]_block_invoke";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_1C8137000, a2, OS_LOG_TYPE_ERROR, "%s #activation BSServiceConnection Interrupted, re-activating %@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)didRecognizeLongPressInteraction:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[SiriLongPressButtonSource didRecognizeLongPressInteraction:]";
  _os_log_error_impl(&dword_1C8137000, log, OS_LOG_TYPE_ERROR, "%s #activation Board sent a long press without a Speech interaction", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_timestampForSpeechInteractionActivityWithTimestamp:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[SiriLongPressButtonSource _timestampForSpeechInteractionActivityWithTimestamp:]";
  _os_log_error_impl(&dword_1C8137000, log, OS_LOG_TYPE_ERROR, "%s #activation #zll carplay steering wheel button with no previous prepare assertion", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end
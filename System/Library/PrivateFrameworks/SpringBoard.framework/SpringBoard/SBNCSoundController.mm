@interface SBNCSoundController
- (AVSpeechSynthesizer)speechSynthesizer;
- (BOOL)_isDeviceUILocked;
- (BOOL)_preventVibrations;
- (BOOL)canPlaySoundForNotificationRequest:(id)a3;
- (SBNCSoundController)init;
- (SBNCSoundController)initWithLockScreenManager:(id)a3 lockStateAggregator:(id)a4;
- (id)_ambientPresentationController;
- (void)_hardwareButtonPressed:(id)a3;
- (void)_killSounds;
- (void)_lockStateChanged:(id)a3;
- (void)_playSoundForNotificationRequest:(id)a3 presentingDestination:(id)a4 completion:(id)a5;
- (void)_playSoundIfPossibleForNotificationRequest:(id)a3 presentingDestination:(id)a4 completion:(id)a5;
- (void)playSoundAndReadOutForNotificationRequest:(id)a3 presentingDestination:(id)a4;
- (void)stopSoundForNotificationRequest:(id)a3;
@end

@implementation SBNCSoundController

- (BOOL)_isDeviceUILocked
{
  v2 = [(SBNCSoundController *)self lockStateAggregator];
  v3 = [v2 hasAnyLockState];

  return v3;
}

- (void)_killSounds
{
  v3 = [(SBNCSoundController *)self playingSounds];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(SBNCSoundController *)self playingSounds];
    v10 = [v5 mutableCopy];

    v6 = [(SBNCSoundController *)self requestsRequiringExplicitKill];
    v7 = [v6 allObjects];
    [v10 removeObjectsForKeys:v7];

    [v10 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_440];
    v8 = [(SBNCSoundController *)self playingSounds];
    v9 = [v10 allKeys];
    [v8 removeObjectsForKeys:v9];
  }
}

- (SBNCSoundController)init
{
  [(SBNCSoundController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (SBNCSoundController)initWithLockScreenManager:(id)a3 lockStateAggregator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = SBNCSoundController;
  v9 = [(SBNCSoundController *)&v16 init];
  if (v9)
  {
    v10 = objc_opt_new();
    playingSounds = v9->_playingSounds;
    v9->_playingSounds = v10;

    v12 = objc_opt_new();
    requestsRequiringExplicitKill = v9->_requestsRequiringExplicitKill;
    v9->_requestsRequiringExplicitKill = v12;

    objc_storeStrong(&v9->_lockScreenManager, a3);
    objc_storeStrong(&v9->_lockStateAggregator, a4);
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v9 selector:sel__hardwareButtonPressed_ name:*MEMORY[0x277D67A80] object:0];
    [v14 addObserver:v9 selector:sel__hardwareButtonPressed_ name:*MEMORY[0x277D67A88] object:0];
    [v14 addObserver:v9 selector:sel__lockStateChanged_ name:@"SBAggregateLockStateDidChangeNotification" object:0];
  }

  return v9;
}

- (BOOL)canPlaySoundForNotificationRequest:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 sound];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 options];
  v9 = [v8 canPlaySound] & v7;

  v10 = [(SBNCSoundController *)self lockScreenManager];
  v11 = v9 & ([v10 isInLostMode] ^ 1);

  if ([(SBNCSoundController *)self _isDeviceUILocked])
  {
    v12 = [v5 options];
    v11 &= [v12 alertsWhenLocked];
  }

  v13 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    v24 = [v5 notificationIdentifier];
    v14 = [v24 un_logDigest];
    v23 = [v5 sound];
    v15 = [v5 options];
    v16 = [v15 canPlaySound];
    v17 = [(SBNCSoundController *)self lockScreenManager];
    v18 = [v17 isInLostMode];
    v19 = [(SBNCSoundController *)self _isDeviceUILocked];
    v20 = [v5 options];
    *buf = 138545154;
    v26 = v14;
    v27 = 1024;
    v28 = v11;
    v29 = 1024;
    v30 = v5 != 0;
    v31 = 1024;
    v32 = v23 != 0;
    v33 = 1024;
    v34 = v16;
    v35 = 1024;
    v36 = v18;
    v37 = 1024;
    v38 = v19;
    v39 = 1024;
    v40 = [v20 alertsWhenLocked];
    _os_log_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEFAULT, "Sound can be played for notification %{public}@: %d [ hasRequest: %d hasSound: %d canPlaySound: %d isInLostMode: %d isDeviceUILocked: %d alertsWhenLocked: %d ]", buf, 0x36u);
  }

  return v11;
}

- (void)_playSoundForNotificationRequest:(id)a3 presentingDestination:(id)a4 completion:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && ([v8 sound], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [(SBNCSoundController *)self playingSounds];
    v13 = [v8 notificationIdentifier];
    v14 = [v12 objectForKey:v13];

    if (v14)
    {
      v15 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = [v8 notificationIdentifier];
        v18 = [v17 un_logDigest];
        *buf = 138543362;
        v45 = v18;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Already playing sound for notification %{public}@", buf, 0xCu);
      }

      if (v10)
      {
        v10[2](v10, 1);
      }
    }

    else
    {
      v19 = [v8 sound];
      v20 = [v19 alertConfiguration];
      v21 = [v20 copy];

      if ([(SBNCSoundController *)self _preventVibrations])
      {
        [v21 setVibrationIdentifier:*MEMORY[0x277D72070]];
      }

      v22 = [MEMORY[0x277D71F50] alertWithConfiguration:v21];
      v23 = [objc_alloc(MEMORY[0x277D679C8]) initWithToneAlert:v22];
      v24 = *MEMORY[0x277D77DB0];
      v25 = os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT);
      if (v23)
      {
        if (v25)
        {
          v26 = v24;
          v27 = [v8 notificationIdentifier];
          v28 = [v27 un_logDigest];
          *buf = 138543618;
          v45 = v28;
          v46 = 2114;
          v47 = v22;
          _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "Play sound for notification %{public}@ : %{public}@", buf, 0x16u);
        }

        if ([v9 isEqualToString:*MEMORY[0x277D77FD0]])
        {
          v29 = 3;
        }

        else
        {
          v29 = 1;
        }

        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __89__SBNCSoundController__playSoundForNotificationRequest_presentingDestination_completion___block_invoke;
        v41[3] = &unk_2783AA1E8;
        v41[4] = self;
        v30 = v8;
        v42 = v30;
        v31 = v10;
        v43 = v31;
        if ([v23 playInEvironments:v29 completion:v41])
        {
          playingSounds = self->_playingSounds;
          v33 = [v30 notificationIdentifier];
          [(NSMutableDictionary *)playingSounds setObject:v23 forKey:v33];

          v34 = [v30 options];
          LOBYTE(v33) = [v34 silencedByMenuButtonPress];

          if ((v33 & 1) == 0)
          {
            v35 = [(SBNCSoundController *)self requestsRequiringExplicitKill];
            v36 = [v30 notificationIdentifier];
            [v35 addObject:v36];
          }
        }

        else if (v31)
        {
          v31[2](v31, 0);
        }
      }

      else
      {
        if (v25)
        {
          v37 = v24;
          v38 = [v8 notificationIdentifier];
          v39 = [v38 un_logDigest];
          v40 = [v8 sound];
          *buf = 138543618;
          v45 = v39;
          v46 = 2112;
          v47 = v40;
          _os_log_impl(&dword_21ED4E000, v37, OS_LOG_TYPE_DEFAULT, "cannot play sound for notification (failed to create SBUISound) %{public}@ : ncSound=%@", buf, 0x16u);
        }

        if (v10)
        {
          v10[2](v10, 0);
        }
      }
    }
  }

  else if (v10)
  {
    v10[2](v10, 0);
  }
}

uint64_t __89__SBNCSoundController__playSoundForNotificationRequest_presentingDestination_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playingSounds];
  v3 = [*(a1 + 40) notificationIdentifier];
  [v2 removeObjectForKey:v3];

  v4 = [*(a1 + 32) requestsRequiringExplicitKill];
  v5 = [*(a1 + 40) notificationIdentifier];
  [v4 removeObject:v5];

  result = *(a1 + 48);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (void)_playSoundIfPossibleForNotificationRequest:(id)a3 presentingDestination:(id)a4 completion:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(SBNCSoundController *)self canPlaySoundForNotificationRequest:v8])
  {
    v11 = [v8 alertOptions];
    v12 = [v11 shouldSuppress];

    if (!v12)
    {
      [(SBNCSoundController *)self _playSoundForNotificationRequest:v8 presentingDestination:v9 completion:v10];
      goto LABEL_8;
    }

    v13 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [v8 notificationIdentifier];
      v16 = [v15 un_logDigest];
      v17 = 138543362;
      v18 = v16;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Sound cannot be played for notification %{public}@ because DND suppressed it", &v17, 0xCu);
    }
  }

  if (v10)
  {
    v10[2](v10, 0);
  }

LABEL_8:
}

- (void)playSoundAndReadOutForNotificationRequest:(id)a3 presentingDestination:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__SBNCSoundController_playSoundAndReadOutForNotificationRequest_presentingDestination___block_invoke;
  v9[3] = &unk_2783ABB98;
  objc_copyWeak(&v11, &location);
  v8 = v6;
  v10 = v8;
  [(SBNCSoundController *)self _playSoundIfPossibleForNotificationRequest:v8 presentingDestination:v7 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __87__SBNCSoundController_playSoundAndReadOutForNotificationRequest_presentingDestination___block_invoke(uint64_t a1, char a2)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ((a2 & 1) == 0)
    {
      v5 = [*(a1 + 32) sound];

      if (v5)
      {
        v6 = [*(a1 + 32) options];
        v7 = [v6 speechLanguage];

        if ([v7 length])
        {
          v8 = [*(a1 + 32) content];
          v9 = [v8 title];

          v10 = [*(a1 + 32) content];
          v11 = [v10 subtitle];

          v12 = [*(a1 + 32) content];
          v13 = [v12 message];

          v14 = [MEMORY[0x277CCAB68] string];
          if ([v9 length])
          {
            [v14 appendString:v9];
          }

          if ([v11 length])
          {
            if ([v14 length])
            {
              [v14 appendString:{@", "}];
            }

            [v14 appendString:v11];
          }

          if ([v13 length])
          {
            if ([v14 length])
            {
              [v14 appendString:{@", "}];
            }

            [v14 appendString:v13];
          }

          if ([v14 length])
          {
            v15 = *MEMORY[0x277D77DB0];
            if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
            {
              v16 = *(a1 + 32);
              v17 = v15;
              v18 = [v16 notificationIdentifier];
              v19 = [v18 un_logDigest];
              v23 = 138543618;
              v24 = v19;
              v25 = 2114;
              v26 = v7;
              _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Read out notification %{public}@ in language %{public}@", &v23, 0x16u);
            }

            v20 = [MEMORY[0x277CB84C8] speechUtteranceWithString:v14];
            v21 = [MEMORY[0x277CB84A0] voiceWithLanguage:v7];
            [v20 setVoice:v21];

            v22 = [WeakRetained speechSynthesizer];
            [v22 speakUtterance:v20];
          }
        }
      }
    }
  }
}

- (void)stopSoundForNotificationRequest:(id)a3
{
  v9 = a3;
  v4 = [(SBNCSoundController *)self playingSounds];
  v5 = [v9 notificationIdentifier];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    [v6 stop];
    v7 = [(SBNCSoundController *)self playingSounds];
    v8 = [v9 notificationIdentifier];
    [v7 removeObjectForKey:v8];
  }
}

- (void)_hardwareButtonPressed:(id)a3
{
  v4 = [a3 name];
  if (-[SBNCSoundController _isDeviceUILocked](self, "_isDeviceUILocked") && (([v4 isEqualToString:*MEMORY[0x277D67A88]] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D67A80])))
  {
    [(SBNCSoundController *)self _killSounds];
  }
}

- (void)_lockStateChanged:(id)a3
{
  if (![(SBLockScreenManager *)self->_lockScreenManager isUILocked])
  {

    [(SBNCSoundController *)self _killSounds];
  }
}

- (BOOL)_preventVibrations
{
  v2 = [(SBNCSoundController *)self _ambientPresentationController];
  v3 = [v2 isPresented];

  return v3;
}

- (id)_ambientPresentationController
{
  v2 = [SBApp windowSceneManager];
  v3 = [v2 activeDisplayWindowScene];
  v4 = [v3 ambientPresentationController];

  return v4;
}

- (AVSpeechSynthesizer)speechSynthesizer
{
  speechSynthesizer = self->_speechSynthesizer;
  if (!speechSynthesizer)
  {
    v4 = objc_alloc_init(MEMORY[0x277CB84B0]);
    v5 = self->_speechSynthesizer;
    self->_speechSynthesizer = v4;

    [(AVSpeechSynthesizer *)self->_speechSynthesizer setIsInternalSynth:1];
    [(AVSpeechSynthesizer *)self->_speechSynthesizer setUsesApplicationAudioSession:0];
    speechSynthesizer = self->_speechSynthesizer;
  }

  return speechSynthesizer;
}

@end
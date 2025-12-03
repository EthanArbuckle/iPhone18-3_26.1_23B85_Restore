@interface SBNCSoundController
- (AVSpeechSynthesizer)speechSynthesizer;
- (BOOL)_isDeviceUILocked;
- (BOOL)_preventVibrations;
- (BOOL)canPlaySoundForNotificationRequest:(id)request;
- (SBNCSoundController)init;
- (SBNCSoundController)initWithLockScreenManager:(id)manager lockStateAggregator:(id)aggregator;
- (id)_ambientPresentationController;
- (void)_hardwareButtonPressed:(id)pressed;
- (void)_killSounds;
- (void)_lockStateChanged:(id)changed;
- (void)_playSoundForNotificationRequest:(id)request presentingDestination:(id)destination completion:(id)completion;
- (void)_playSoundIfPossibleForNotificationRequest:(id)request presentingDestination:(id)destination completion:(id)completion;
- (void)playSoundAndReadOutForNotificationRequest:(id)request presentingDestination:(id)destination;
- (void)stopSoundForNotificationRequest:(id)request;
@end

@implementation SBNCSoundController

- (BOOL)_isDeviceUILocked
{
  lockStateAggregator = [(SBNCSoundController *)self lockStateAggregator];
  hasAnyLockState = [lockStateAggregator hasAnyLockState];

  return hasAnyLockState;
}

- (void)_killSounds
{
  playingSounds = [(SBNCSoundController *)self playingSounds];
  v4 = [playingSounds count];

  if (v4)
  {
    playingSounds2 = [(SBNCSoundController *)self playingSounds];
    v10 = [playingSounds2 mutableCopy];

    requestsRequiringExplicitKill = [(SBNCSoundController *)self requestsRequiringExplicitKill];
    allObjects = [requestsRequiringExplicitKill allObjects];
    [v10 removeObjectsForKeys:allObjects];

    [v10 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_440];
    playingSounds3 = [(SBNCSoundController *)self playingSounds];
    allKeys = [v10 allKeys];
    [playingSounds3 removeObjectsForKeys:allKeys];
  }
}

- (SBNCSoundController)init
{
  [(SBNCSoundController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (SBNCSoundController)initWithLockScreenManager:(id)manager lockStateAggregator:(id)aggregator
{
  managerCopy = manager;
  aggregatorCopy = aggregator;
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

    objc_storeStrong(&v9->_lockScreenManager, manager);
    objc_storeStrong(&v9->_lockStateAggregator, aggregator);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__hardwareButtonPressed_ name:*MEMORY[0x277D67A80] object:0];
    [defaultCenter addObserver:v9 selector:sel__hardwareButtonPressed_ name:*MEMORY[0x277D67A88] object:0];
    [defaultCenter addObserver:v9 selector:sel__lockStateChanged_ name:@"SBAggregateLockStateDidChangeNotification" object:0];
  }

  return v9;
}

- (BOOL)canPlaySoundForNotificationRequest:(id)request
{
  v41 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = requestCopy;
  if (requestCopy)
  {
    sound = [requestCopy sound];
    v7 = sound != 0;
  }

  else
  {
    v7 = 0;
  }

  options = [v5 options];
  v9 = [options canPlaySound] & v7;

  lockScreenManager = [(SBNCSoundController *)self lockScreenManager];
  v11 = v9 & ([lockScreenManager isInLostMode] ^ 1);

  if ([(SBNCSoundController *)self _isDeviceUILocked])
  {
    options2 = [v5 options];
    v11 &= [options2 alertsWhenLocked];
  }

  v13 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    notificationIdentifier = [v5 notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    sound2 = [v5 sound];
    options3 = [v5 options];
    canPlaySound = [options3 canPlaySound];
    lockScreenManager2 = [(SBNCSoundController *)self lockScreenManager];
    isInLostMode = [lockScreenManager2 isInLostMode];
    _isDeviceUILocked = [(SBNCSoundController *)self _isDeviceUILocked];
    options4 = [v5 options];
    *buf = 138545154;
    v26 = un_logDigest;
    v27 = 1024;
    v28 = v11;
    v29 = 1024;
    v30 = v5 != 0;
    v31 = 1024;
    v32 = sound2 != 0;
    v33 = 1024;
    v34 = canPlaySound;
    v35 = 1024;
    v36 = isInLostMode;
    v37 = 1024;
    v38 = _isDeviceUILocked;
    v39 = 1024;
    alertsWhenLocked = [options4 alertsWhenLocked];
    _os_log_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEFAULT, "Sound can be played for notification %{public}@: %d [ hasRequest: %d hasSound: %d canPlaySound: %d isInLostMode: %d isDeviceUILocked: %d alertsWhenLocked: %d ]", buf, 0x36u);
  }

  return v11;
}

- (void)_playSoundForNotificationRequest:(id)request presentingDestination:(id)destination completion:(id)completion
{
  v48 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  destinationCopy = destination;
  completionCopy = completion;
  if (requestCopy && ([requestCopy sound], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    playingSounds = [(SBNCSoundController *)self playingSounds];
    notificationIdentifier = [requestCopy notificationIdentifier];
    v14 = [playingSounds objectForKey:notificationIdentifier];

    if (v14)
    {
      v15 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        notificationIdentifier2 = [requestCopy notificationIdentifier];
        un_logDigest = [notificationIdentifier2 un_logDigest];
        *buf = 138543362;
        v45 = un_logDigest;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Already playing sound for notification %{public}@", buf, 0xCu);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
      }
    }

    else
    {
      sound = [requestCopy sound];
      alertConfiguration = [sound alertConfiguration];
      v21 = [alertConfiguration copy];

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
          notificationIdentifier3 = [requestCopy notificationIdentifier];
          un_logDigest2 = [notificationIdentifier3 un_logDigest];
          *buf = 138543618;
          v45 = un_logDigest2;
          v46 = 2114;
          v47 = v22;
          _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "Play sound for notification %{public}@ : %{public}@", buf, 0x16u);
        }

        if ([destinationCopy isEqualToString:*MEMORY[0x277D77FD0]])
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
        v30 = requestCopy;
        v42 = v30;
        v31 = completionCopy;
        v43 = v31;
        if ([v23 playInEvironments:v29 completion:v41])
        {
          playingSounds = self->_playingSounds;
          notificationIdentifier4 = [v30 notificationIdentifier];
          [(NSMutableDictionary *)playingSounds setObject:v23 forKey:notificationIdentifier4];

          options = [v30 options];
          LOBYTE(notificationIdentifier4) = [options silencedByMenuButtonPress];

          if ((notificationIdentifier4 & 1) == 0)
          {
            requestsRequiringExplicitKill = [(SBNCSoundController *)self requestsRequiringExplicitKill];
            notificationIdentifier5 = [v30 notificationIdentifier];
            [requestsRequiringExplicitKill addObject:notificationIdentifier5];
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
          notificationIdentifier6 = [requestCopy notificationIdentifier];
          un_logDigest3 = [notificationIdentifier6 un_logDigest];
          sound2 = [requestCopy sound];
          *buf = 138543618;
          v45 = un_logDigest3;
          v46 = 2112;
          v47 = sound2;
          _os_log_impl(&dword_21ED4E000, v37, OS_LOG_TYPE_DEFAULT, "cannot play sound for notification (failed to create SBUISound) %{public}@ : ncSound=%@", buf, 0x16u);
        }

        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0);
        }
      }
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
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

- (void)_playSoundIfPossibleForNotificationRequest:(id)request presentingDestination:(id)destination completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  destinationCopy = destination;
  completionCopy = completion;
  if ([(SBNCSoundController *)self canPlaySoundForNotificationRequest:requestCopy])
  {
    alertOptions = [requestCopy alertOptions];
    shouldSuppress = [alertOptions shouldSuppress];

    if (!shouldSuppress)
    {
      [(SBNCSoundController *)self _playSoundForNotificationRequest:requestCopy presentingDestination:destinationCopy completion:completionCopy];
      goto LABEL_8;
    }

    v13 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      notificationIdentifier = [requestCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v17 = 138543362;
      v18 = un_logDigest;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Sound cannot be played for notification %{public}@ because DND suppressed it", &v17, 0xCu);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_8:
}

- (void)playSoundAndReadOutForNotificationRequest:(id)request presentingDestination:(id)destination
{
  requestCopy = request;
  destinationCopy = destination;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__SBNCSoundController_playSoundAndReadOutForNotificationRequest_presentingDestination___block_invoke;
  v9[3] = &unk_2783ABB98;
  objc_copyWeak(&v11, &location);
  v8 = requestCopy;
  v10 = v8;
  [(SBNCSoundController *)self _playSoundIfPossibleForNotificationRequest:v8 presentingDestination:destinationCopy completion:v9];

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

- (void)stopSoundForNotificationRequest:(id)request
{
  requestCopy = request;
  playingSounds = [(SBNCSoundController *)self playingSounds];
  notificationIdentifier = [requestCopy notificationIdentifier];
  v6 = [playingSounds objectForKey:notificationIdentifier];

  if (v6)
  {
    [v6 stop];
    playingSounds2 = [(SBNCSoundController *)self playingSounds];
    notificationIdentifier2 = [requestCopy notificationIdentifier];
    [playingSounds2 removeObjectForKey:notificationIdentifier2];
  }
}

- (void)_hardwareButtonPressed:(id)pressed
{
  name = [pressed name];
  if (-[SBNCSoundController _isDeviceUILocked](self, "_isDeviceUILocked") && (([name isEqualToString:*MEMORY[0x277D67A88]] & 1) != 0 || objc_msgSend(name, "isEqualToString:", *MEMORY[0x277D67A80])))
  {
    [(SBNCSoundController *)self _killSounds];
  }
}

- (void)_lockStateChanged:(id)changed
{
  if (![(SBLockScreenManager *)self->_lockScreenManager isUILocked])
  {

    [(SBNCSoundController *)self _killSounds];
  }
}

- (BOOL)_preventVibrations
{
  _ambientPresentationController = [(SBNCSoundController *)self _ambientPresentationController];
  isPresented = [_ambientPresentationController isPresented];

  return isPresented;
}

- (id)_ambientPresentationController
{
  windowSceneManager = [SBApp windowSceneManager];
  activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
  ambientPresentationController = [activeDisplayWindowScene ambientPresentationController];

  return ambientPresentationController;
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
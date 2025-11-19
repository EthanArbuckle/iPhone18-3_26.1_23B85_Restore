@interface TPDialerSoundController
+ (void)_delayedDeactivate;
- (TPDialerSoundController)init;
- (void)_stopAllSoundsForcingCallbacks:(BOOL)a3;
- (void)dealloc;
- (void)playSoundForDialerCharacter:(int64_t)a3;
- (void)setSoundsActivated:(BOOL)a3;
- (void)soundCompletedPlaying:(unsigned int)a3;
- (void)stopSoundForDialerCharacter:(int64_t)a3;
@end

@implementation TPDialerSoundController

+ (void)_delayedDeactivate
{
  v7 = *MEMORY[0x1E69E9840];
  if (!__SystemSoundActivationCount_0)
  {
    inPropertyData = 0;
    AudioServicesSetProperty(0x61637421u, 4u, &kSoundIDs_0, 4u, &inPropertyData);
    v2 = TPDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v6 = inPropertyData;
      _os_log_impl(&dword_1B4894000, v2, OS_LOG_TYPE_DEFAULT, "Called AudioServicesSetProperty() with kAudioServicesPropertyActivate and active=%d", buf, 8u);
    }

    __PendingDeactivate_0 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (TPDialerSoundController)init
{
  v5.receiver = self;
  v5.super_class = TPDialerSoundController;
  v2 = [(TPDialerSoundController *)&v5 init];
  if (v2)
  {
    v2->_inflightSounds = CFSetCreateMutable(0, 12, 0);
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel_applicationSuspendedNotification_ name:*MEMORY[0x1E69DDBA0] object:0];
    [v3 addObserver:v2 selector:sel_applicationSuspendedNotification_ name:*MEMORY[0x1E69DDB98] object:0];
    [v3 addObserver:v2 selector:sel_applicationResumedNotification_ name:*MEMORY[0x1E69DDB80] object:0];
    [v3 addObserver:v2 selector:sel_applicationResumedNotification_ name:*MEMORY[0x1E69DDB78] object:0];
    [(TPDialerSoundController *)v2 setSoundsActivated:1];
  }

  return v2;
}

- (void)dealloc
{
  [(TPDialerSoundController *)self setSoundsActivated:0];
  if (self->_inflightSounds)
  {
    [(TPDialerSoundController *)self _stopAllSoundsForcingCallbacks:1];
    CFRelease(self->_inflightSounds);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TPDialerSoundController;
  [(TPDialerSoundController *)&v4 dealloc];
}

- (void)playSoundForDialerCharacter:(int64_t)a3
{
  if (a3 <= 11)
  {
    v4 = kSoundIDs_0[a3];
    if (v4)
    {
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 postNotificationName:@"TPDialerSoundControllerWillBeginSoundsNotification" object:self];

      Current = CFRunLoopGetCurrent();
      AudioServicesAddSystemSoundCompletion(v4, Current, *MEMORY[0x1E695E8D0], _SoundCompletedPlaying_0, self);
      [(TPDialerSoundController *)self setIncompleteSoundCount:[(TPDialerSoundController *)self incompleteSoundCount]+ 1];
      AudioServicesStartSystemSound();
      inflightSounds = self->_inflightSounds;

      CFSetAddValue(inflightSounds, a3);
    }
  }
}

- (void)stopSoundForDialerCharacter:(int64_t)a3
{
  if (a3 <= 11 && kSoundIDs_0[a3])
  {
    AudioServicesStopSystemSound();
    inflightSounds = self->_inflightSounds;

    CFSetRemoveValue(inflightSounds, a3);
  }
}

- (void)soundCompletedPlaying:(unsigned int)a3
{
  if ([(TPDialerSoundController *)self incompleteSoundCount])
  {
    [(TPDialerSoundController *)self setIncompleteSoundCount:[(TPDialerSoundController *)self incompleteSoundCount]- 1];
    if (![(TPDialerSoundController *)self incompleteSoundCount])
    {
      AudioServicesRemoveSystemSoundCompletion(a3);
      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      [v5 postNotificationName:@"TPDialerSoundControllerWillEndSoundsNotification" object:self];
    }
  }
}

- (void)setSoundsActivated:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(self + 16);
  if (a3)
  {
    v6 = [MEMORY[0x1E69DC668] sharedApplication];
    if ([v6 isSuspended])
    {

      if ((v5 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    v7 = [MEMORY[0x1E69DC668] sharedApplication];
    v8 = [v7 isSuspendedEventsOnly] ^ v5;

    if ((v8 & 1) == 0)
    {
LABEL_9:
      v9 = __SystemSoundActivationCount_0++;
      if (!v9 && (__PendingDeactivate_0 & 1) == 0)
      {
        inPropertyData = 1;
        AudioServicesSetProperty(0x61637421u, 4u, kSoundIDs_0, 4u, &inPropertyData);
        v10 = TPDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v14 = inPropertyData;
          _os_log_impl(&dword_1B4894000, v10, OS_LOG_TYPE_DEFAULT, "Called AudioServicesSetProperty() with kAudioServicesPropertyActivate and active=%d", buf, 8u);
        }
      }

LABEL_14:
      *(self + 16) = *(self + 16) & 0xFE | a3;
    }
  }

  else if (*(self + 16))
  {
    if (!--__SystemSoundActivationCount_0)
    {
      [objc_opt_class() performSelector:sel__delayedDeactivate withObject:0 afterDelay:0.0];
      __PendingDeactivate_0 = 1;
    }

    goto LABEL_14;
  }

LABEL_15:
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_stopAllSoundsForcingCallbacks:(BOOL)a3
{
  inflightSounds = self->_inflightSounds;
  if (inflightSounds)
  {
    v5 = a3;
    CFSetApplyFunction(inflightSounds, __TPStopSoundForKeyCallback_0, self);
    CFSetRemoveAllValues(self->_inflightSounds);
    if (v5)
    {
      for (i = 0; i != 12; ++i)
      {
        AudioServicesRemoveSystemSoundCompletion(kSoundIDs_0[i]);
      }

      if ([(TPDialerSoundController *)self incompleteSoundCount])
      {
        v7 = [MEMORY[0x1E696AD88] defaultCenter];
        [v7 postNotificationName:@"TPDialerSoundControllerWillEndSoundsNotification" object:self];
      }

      [(TPDialerSoundController *)self setIncompleteSoundCount:0];
    }
  }
}

@end
@interface _UIDefaultFocusSoundPlayer
+ (id)sharedInstance;
- (id)_init;
- (void)_playSystemSound:(unsigned int)sound behavior:(unsigned int)behavior withVolume:(double)volume pan:(double)pan;
- (void)_registerForSystemSoundsIfNecessary;
- (void)dealloc;
- (void)playSoundWithFocusSound:(int64_t)sound volume:(double)volume pan:(double)pan;
- (void)playSoundWithURL:(id)l volume:(double)volume pan:(double)pan;
@end

@implementation _UIDefaultFocusSoundPlayer

- (id)_init
{
  v15.receiver = self;
  v15.super_class = _UIDefaultFocusSoundPlayer;
  v2 = [(_UIDefaultFocusSoundPlayer *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    urlPools = v2->_urlPools;
    v2->_urlPools = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    focusSoundPools = v2->_focusSoundPools;
    v2->_focusSoundPools = v5;

    v7 = [[_UIFocusSoundPool alloc] initWithSystemSoundID:1125];
    [(NSMutableDictionary *)v2->_focusSoundPools setObject:v7 forKeyedSubscript:&unk_1EFE30838];

    v8 = [[_UIFocusSoundPool alloc] initWithSystemSoundID:1127];
    [(NSMutableDictionary *)v2->_focusSoundPools setObject:v8 forKeyedSubscript:&unk_1EFE30850];

    v9 = [[_UIFocusSoundPool alloc] initWithSystemSoundID:1126];
    [(NSMutableDictionary *)v2->_focusSoundPools setObject:v9 forKeyedSubscript:&unk_1EFE30868];

    v10 = [[_UIFocusSoundPool alloc] initWithSystemSoundID:1124];
    [(NSMutableDictionary *)v2->_focusSoundPools setObject:v10 forKeyedSubscript:&unk_1EFE30880];

    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v12 = dispatch_queue_create("com.apple.UIKit.FocusSounds", v11);
    soundQueue = v2->_soundQueue;
    v2->_soundQueue = v12;

    [(_UIDefaultFocusSoundPlayer *)v2 _registerForSystemSoundsIfNecessary];
  }

  return v2;
}

- (void)_registerForSystemSoundsIfNecessary
{
  unregisterTimer = self->_unregisterTimer;
  if (unregisterTimer)
  {
    [(NSTimer *)unregisterTimer invalidate];
    v4 = self->_unregisterTimer;
    self->_unregisterTimer = 0;
  }

  else
  {
    v4 = +[UIDevice currentDevice];
    [v4 _registerForSystemSounds:self];
  }

  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E695DFF0];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __65___UIDefaultFocusSoundPlayer__registerForSystemSoundsIfNecessary__block_invoke;
  v12 = &unk_1E70F4130;
  objc_copyWeak(&v13, &location);
  v6 = [v5 timerWithTimeInterval:0 repeats:&v9 block:10.0];
  v7 = self->_unregisterTimer;
  self->_unregisterTimer = v6;

  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [mainRunLoop addTimer:self->_unregisterTimer forMode:*MEMORY[0x1E695DA28]];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

+ (id)sharedInstance
{
  if (_MergedGlobals_1099 != -1)
  {
    dispatch_once(&_MergedGlobals_1099, &__block_literal_global_232);
  }

  v3 = qword_1ED49DEE0;

  return v3;
}

- (void)dealloc
{
  unregisterTimer = self->_unregisterTimer;
  if (unregisterTimer)
  {
    [(NSTimer *)unregisterTimer invalidate];
    v4 = self->_unregisterTimer;
    self->_unregisterTimer = 0;
  }

  v5 = +[UIDevice currentDevice];
  [v5 _unregisterForSystemSounds:self];

  v6.receiver = self;
  v6.super_class = _UIDefaultFocusSoundPlayer;
  [(_UIDefaultFocusSoundPlayer *)&v6 dealloc];
}

- (void)playSoundWithURL:(id)l volume:(double)volume pan:(double)pan
{
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusSoundGenerator.m" lineNumber:366 description:{@"Invalid parameter not satisfying: %@", @"url"}];

    lCopy = 0;
  }

  if (fabs(volume) >= 2.22044605e-16)
  {
    v12 = lCopy;
    v10 = [(NSMutableDictionary *)self->_urlPools objectForKeyedSubscript:lCopy];
    if (!v10)
    {
      v10 = [[_UIFocusSoundPool alloc] initWithSoundFileURL:v12];
      [(NSMutableDictionary *)self->_urlPools setObject:v10 forKeyedSubscript:v12];
    }

    [(_UIDefaultFocusSoundPlayer *)self _playSystemSound:[(_UIFocusSoundPool *)v10 playableSystemSoundID] behavior:[(_UIFocusSoundPool *)v10 originalSystemSoundID] withVolume:volume pan:pan];

    lCopy = v12;
  }
}

- (void)playSoundWithFocusSound:(int64_t)sound volume:(double)volume pan:(double)pan
{
  if (sound && fabs(volume) >= 2.22044605e-16)
  {
    focusSoundPools = self->_focusSoundPools;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v10 = [(NSMutableDictionary *)focusSoundPools objectForKeyedSubscript:v9];

    -[_UIDefaultFocusSoundPlayer _playSystemSound:behavior:withVolume:pan:](self, "_playSystemSound:behavior:withVolume:pan:", [v10 playableSystemSoundID], objc_msgSend(v10, "originalSystemSoundID"), volume, pan);
  }
}

- (void)_playSystemSound:(unsigned int)sound behavior:(unsigned int)behavior withVolume:(double)volume pan:(double)pan
{
  [(_UIDefaultFocusSoundPlayer *)self _registerForSystemSoundsIfNecessary];
  v11 = +[UIDevice currentDevice];
  _isSystemSoundEnabled = [v11 _isSystemSoundEnabled];

  if (_isSystemSoundEnabled)
  {
    soundQueue = self->_soundQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71___UIDefaultFocusSoundPlayer__playSystemSound_behavior_withVolume_pan___block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    *&block[4] = volume;
    *&block[5] = pan;
    behaviorCopy = behavior;
    soundCopy = sound;
    dispatch_async(soundQueue, block);
  }
}

@end
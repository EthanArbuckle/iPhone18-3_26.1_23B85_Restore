@interface _UIKeyboardCameraLiveTextEnabledObserver
+ (_UIKeyboardCameraLiveTextEnabledObserver)sharedInstance;
- (BOOL)isLiveTextEnabled;
- (_UIKeyboardCameraLiveTextEnabledObserver)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation _UIKeyboardCameraLiveTextEnabledObserver

+ (_UIKeyboardCameraLiveTextEnabledObserver)sharedInstance
{
  if (qword_1ED4994C0 != -1)
  {
    dispatch_once(&qword_1ED4994C0, &__block_literal_global_642);
  }

  v3 = qword_1ED4994B8;

  return v3;
}

- (_UIKeyboardCameraLiveTextEnabledObserver)init
{
  v5.receiver = self;
  v5.super_class = _UIKeyboardCameraLiveTextEnabledObserver;
  v2 = [(_UIKeyboardCameraLiveTextEnabledObserver *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v3 addObserver:v2 forKeyPath:@"AppleLiveTextEnabled" options:1 context:_liveTextEnabledObserverContext];
  }

  return v2;
}

- (BOOL)isLiveTextEnabled
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_isLiveTextEnabledIsValid)
  {
    isLiveTextEnabled = v2->_isLiveTextEnabled;
  }

  else
  {
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [v4 objectForKey:@"AppleLiveTextEnabled" inDomain:*MEMORY[0x1E696A400]];

    if (v5)
    {
      isLiveTextEnabled = [v5 BOOLValue];
    }

    else
    {
      v6 = MEMORY[0x1E695DF58];
      v7 = [MEMORY[0x1E695DF58] _deviceLanguage];
      v11[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      v9 = [v6 matchedLanguagesFromAvailableLanguages:&unk_1EFE2DDE0 forPreferredLanguages:v8];

      isLiveTextEnabled = [v9 count] != 0;
    }

    v2->_isLiveTextEnabled = isLiveTextEnabled;
    v2->_isLiveTextEnabledIsValid = 1;
  }

  objc_sync_exit(v2);

  return isLiveTextEnabled & 1;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"AppleLiveTextEnabled" context:_liveTextEnabledObserverContext];

  v4.receiver = self;
  v4.super_class = _UIKeyboardCameraLiveTextEnabledObserver;
  [(_UIKeyboardCameraLiveTextEnabledObserver *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (_liveTextEnabledObserverContext == a6)
  {
    obj = self;
    objc_sync_enter(obj);
    obj->_isLiveTextEnabledIsValid = 0;
    objc_sync_exit(obj);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIKeyboardCameraLiveTextEnabledObserver;
    [(_UIKeyboardCameraLiveTextEnabledObserver *)&v7 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

@end
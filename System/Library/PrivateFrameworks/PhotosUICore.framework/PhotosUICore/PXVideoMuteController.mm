@interface PXVideoMuteController
+ (PXVideoMuteController)sharedController;
- (PXVideoMuteController)initWithAutoplaySetting:(BOOL)setting;
- (id)debugDescription;
- (void)_updateIsMuted;
- (void)applicationDidMoveToBackground;
- (void)autoplaySettingDidChange;
- (void)resetMuteState;
- (void)setAutoplayEnabled:(BOOL)enabled;
- (void)setIsMuted:(BOOL)muted;
- (void)setMuteState:(int64_t)state;
- (void)userDidMute;
- (void)userDidUnmute;
@end

@implementation PXVideoMuteController

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXVideoMuteController *)self muteState]- 1;
  if (v6 > 3)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1E7738D28[v6];
  }

  isMuted = [(PXVideoMuteController *)self isMuted];
  v9 = @"NO";
  if (isMuted)
  {
    v9 = @"YES";
  }

  v10 = [v3 initWithFormat:@"<%@ %p; State: %@, Muted: %@>", v5, self, v7, v9];

  return v10;
}

- (void)setIsMuted:(BOOL)muted
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_isMuted != muted)
  {
    self->_isMuted = muted;
    [(PXVideoMuteController *)self signalChange:1];
    v4 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(PXVideoMuteController *)self debugDescription];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "Video Mute State Changed: %@", &v6, 0xCu);
    }
  }
}

- (void)_updateIsMuted
{
  muteState = [(PXVideoMuteController *)self muteState];
  isAutoplayEnabled = [(PXVideoMuteController *)self isAutoplayEnabled];
  if ((muteState - 3) < 2)
  {
    v5 = 1;
  }

  else if (muteState == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = isAutoplayEnabled;
    if (!muteState)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL isMutedForMuteState(PXVideoMuteState, BOOL)"}];
      [currentHandler handleFailureInFunction:v7 file:@"PXVideoMuteController.m" lineNumber:59 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  [(PXVideoMuteController *)self setIsMuted:v5];
}

- (void)setAutoplayEnabled:(BOOL)enabled
{
  if (self->_isAutoplayEnabled != enabled)
  {
    self->_isAutoplayEnabled = enabled;
    [(PXVideoMuteController *)self autoplaySettingDidChange];
  }
}

- (void)setMuteState:(int64_t)state
{
  if (self->_muteState != state)
  {
    self->_muteState = state;
    [(PXVideoMuteController *)self _updateIsMuted];
  }
}

- (void)resetMuteState
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __39__PXVideoMuteController_resetMuteState__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXVideoMuteController *)self performChanges:v2];
}

- (void)autoplaySettingDidChange
{
  if ([(PXVideoMuteController *)self muteState]== 1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __49__PXVideoMuteController_autoplaySettingDidChange__block_invoke;
    v3[3] = &unk_1E774C5F8;
    v3[4] = self;
    [(PXVideoMuteController *)self performChanges:v3];
  }

  else
  {

    [(PXVideoMuteController *)self resetMuteState];
  }
}

- (void)applicationDidMoveToBackground
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__PXVideoMuteController_applicationDidMoveToBackground__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXVideoMuteController *)self performChanges:v2];
}

- (void)userDidUnmute
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __38__PXVideoMuteController_userDidUnmute__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXVideoMuteController *)self performChanges:v2];
}

- (void)userDidMute
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __36__PXVideoMuteController_userDidMute__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXVideoMuteController *)self performChanges:v2];
}

- (PXVideoMuteController)initWithAutoplaySetting:(BOOL)setting
{
  v5.receiver = self;
  v5.super_class = PXVideoMuteController;
  result = [(PXVideoMuteController *)&v5 init];
  if (result)
  {
    result->_muteState = 1;
    result->_isAutoplayEnabled = setting;
    result->_isMuted = setting;
  }

  return result;
}

+ (PXVideoMuteController)sharedController
{
  if (sharedController_onceToken_105616 != -1)
  {
    dispatch_once(&sharedController_onceToken_105616, &__block_literal_global_105617);
  }

  v3 = sharedController_sharedController_105618;

  return v3;
}

void __41__PXVideoMuteController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(PXApplicationVideoMuteController);
  v1 = sharedController_sharedController_105618;
  sharedController_sharedController_105618 = v0;
}

@end
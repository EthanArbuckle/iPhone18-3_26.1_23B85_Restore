@interface VUITransitionalPlaybackUIManager
- (BOOL)_canMenu;
- (BOOL)_canSwipeUp;
- (BOOL)onSupplementaryUIShouldPresent;
- (VUIMediaPlaybackManagerDelegate)delegate;
- (VUITransitionalPlaybackUIManager)initWithMediaController:(id)controller;
- (int)_processBackgroundedStateTriggers;
- (int)_processForegroundedStateTriggers;
- (int)_processPausedStateTriggers;
- (int)_processUndefinedStateTriggers;
- (int)_processWaitingForTimeoutStateTriggers;
- (int)_processWillBeBackgroundedStateTriggers;
- (int)_processWillBeForegroundedStateTriggers;
- (void)_processStateEnter;
- (void)_processStateExit;
- (void)_processTrigger;
- (void)_scheduleBackgroundedTimer;
- (void)dealloc;
- (void)onAppear;
- (void)onSupplementaryUIShouldDismiss;
- (void)setDelegate:(id)delegate;
- (void)setShowcaseFactor:(double)factor;
@end

@implementation VUITransitionalPlaybackUIManager

- (VUITransitionalPlaybackUIManager)initWithMediaController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = VUITransitionalPlaybackUIManager;
  v6 = [(VUITransitionalPlaybackUIManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaController, controller);
    v7->_isFirstAppearance = 1;
  }

  return v7;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundedTimer);
  [WeakRetained invalidate];

  v4.receiver = self;
  v4.super_class = VUITransitionalPlaybackUIManager;
  [(VUITransitionalPlaybackUIManager *)&v4 dealloc];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  v5 = objc_opt_respondsToSelector();

  self->_delegateFlags.hasShouldEnableUIModeImplicitly = v5 & 1;
}

- (void)onAppear
{
  self->_mediaPlaybackTrigger = 1;
  [(VUITransitionalPlaybackUIManager *)self _processTrigger];
  self->_isFirstAppearance = 0;
}

- (BOOL)onSupplementaryUIShouldPresent
{
  mediaPlaybackState = self->_mediaPlaybackState;
  if (mediaPlaybackState == 2)
  {
    self->_mediaPlaybackTrigger = 3;
    self->_mediaPlaybackTriggerModifier |= 3uLL;
    [(VUITransitionalPlaybackUIManager *)self _processTrigger];
  }

  return mediaPlaybackState == 2;
}

- (void)onSupplementaryUIShouldDismiss
{
  if (self->_mediaPlaybackState == 1 && [(VUITransitionalPlaybackUIManager *)self currentUIMode]== 1)
  {
    self->_mediaPlaybackTrigger = 3;

    [(VUITransitionalPlaybackUIManager *)self _processTrigger];
  }
}

- (void)setShowcaseFactor:(double)factor
{
  if (self->_showcaseFactor != factor)
  {
    self->_showcaseFactor = factor;
    [(VUITransitionalPlaybackUIManager *)self _onShowcaseFactorDidChange];
  }
}

- (void)_processTrigger
{
  v3 = 0;
  mediaPlaybackState = self->_mediaPlaybackState;
  if (mediaPlaybackState <= 2)
  {
    if (mediaPlaybackState)
    {
      if (mediaPlaybackState == 1)
      {
        _processBackgroundedStateTriggers = [(VUITransitionalPlaybackUIManager *)self _processBackgroundedStateTriggers];
      }

      else
      {
        if (mediaPlaybackState != 2)
        {
          goto LABEL_17;
        }

        _processBackgroundedStateTriggers = [(VUITransitionalPlaybackUIManager *)self _processForegroundedStateTriggers];
      }
    }

    else
    {
      _processBackgroundedStateTriggers = [(VUITransitionalPlaybackUIManager *)self _processUndefinedStateTriggers];
    }
  }

  else if (mediaPlaybackState > 4)
  {
    if (mediaPlaybackState == 5)
    {
      _processBackgroundedStateTriggers = [(VUITransitionalPlaybackUIManager *)self _processWillBeForegroundedStateTriggers];
    }

    else
    {
      if (mediaPlaybackState != 6)
      {
        goto LABEL_17;
      }

      _processBackgroundedStateTriggers = [(VUITransitionalPlaybackUIManager *)self _processPausedStateTriggers];
    }
  }

  else if (mediaPlaybackState == 3)
  {
    _processBackgroundedStateTriggers = [(VUITransitionalPlaybackUIManager *)self _processWaitingForTimeoutStateTriggers];
  }

  else
  {
    _processBackgroundedStateTriggers = [(VUITransitionalPlaybackUIManager *)self _processWillBeBackgroundedStateTriggers];
  }

  v3 = _processBackgroundedStateTriggers;
LABEL_17:
  self->_mediaPlaybackTrigger = 0;
  self->_mediaPlaybackTriggerModifier = 0;
  if (v3 != self->_mediaPlaybackState)
  {
    [(VUITransitionalPlaybackUIManager *)self _processStateExit];
    self->_mediaPlaybackState = v3;

    [(VUITransitionalPlaybackUIManager *)self _processStateEnter];
  }
}

- (void)_processStateEnter
{
  mediaPlaybackState = self->_mediaPlaybackState;
  if (mediaPlaybackState <= 3)
  {
    if (mediaPlaybackState)
    {
      if (mediaPlaybackState != 2)
      {
        if (mediaPlaybackState == 3)
        {

          [(VUITransitionalPlaybackUIManager *)self _scheduleBackgroundedTimer];
        }

        return;
      }

      mediaController = [(VUITransitionalPlaybackUIManager *)self mediaController];
      [mediaController setShowsVideoControls:1];
    }

    self->_mediaPlaybackStateModifier = 0;
    return;
  }

  if ((mediaPlaybackState - 4) < 2)
  {
    delegate = [(VUITransitionalPlaybackUIManager *)self delegate];
    if (mediaPlaybackState == 5)
    {
      mediaController2 = [(VUITransitionalPlaybackUIManager *)self mediaController];
      mediaInfo = [mediaController2 mediaInfo];
      if ([mediaInfo intent] == 1)
      {
        hasPresentPlaybackController = self->_delegateFlags.hasPresentPlaybackController;

        if (hasPresentPlaybackController && ([delegate presentForegroundPlaybackControllerForMediaPlaybackManager:self] & 1) != 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__VUITransitionalPlaybackUIManager__processStateEnter__block_invoke;
    v11[3] = &unk_1E872D768;
    v11[4] = self;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__VUITransitionalPlaybackUIManager__processStateEnter__block_invoke_2;
    v10[3] = &unk_1E872F758;
    v10[4] = self;
    [delegate mediaPlaybackManager:self shouldHideUI:mediaPlaybackState == 5 animated:1 animations:v11 completion:v10];
LABEL_22:

    return;
  }

  if (mediaPlaybackState == 6)
  {
    mediaController3 = [(VUITransitionalPlaybackUIManager *)self mediaController];
    [mediaController3 pause];
  }
}

void __54__VUITransitionalPlaybackUIManager__processStateEnter__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[2] == 5;
  v3 = [v1 mediaController];
  [v3 transitionToForeground:v2 animated:1];
}

uint64_t __54__VUITransitionalPlaybackUIManager__processStateEnter__block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _onTimeout];
  }

  return result;
}

- (void)_processStateExit
{
  mediaPlaybackState = self->_mediaPlaybackState;
  switch(mediaPlaybackState)
  {
    case 2:
      WeakRetained = [(VUITransitionalPlaybackUIManager *)self mediaController];
      [WeakRetained setShowsVideoControls:0];
      break;
    case 6:
      WeakRetained = [(VUITransitionalPlaybackUIManager *)self mediaController];
      [WeakRetained play];
      break;
    case 3:
      WeakRetained = objc_loadWeakRetained(&self->_backgroundedTimer);
      [WeakRetained invalidate];
      break;
    default:
      return;
  }
}

- (int)_processUndefinedStateTriggers
{
  mediaPlaybackState = self->_mediaPlaybackState;
  if ((self->_mediaPlaybackTrigger | 4) == 5)
  {
    mediaController = [(VUITransitionalPlaybackUIManager *)self mediaController];
    state = [mediaController state];

    if (state)
    {
      mediaController2 = [(VUITransitionalPlaybackUIManager *)self mediaController];
      state2 = [mediaController2 state];

      delegate = [(VUITransitionalPlaybackUIManager *)self delegate];
      if (state2 != 1 && self->_isFirstAppearance && -[VUITransitionalPlaybackUIManager goesToForegroundOnFirstAppear](self, "goesToForegroundOnFirstAppear") || self->_delegateFlags.hasShouldEnableUIModeImplicitly && ![delegate mediaPlaybackManager:self shouldEnableUIModeImplicitly:0])
      {
        mediaPlaybackState = 2;
        v9 = 1;
      }

      else
      {
        v9 = 0;
        if ((state2 - 1) < 2 || state2 == 4)
        {
          mediaPlaybackState = 1;
        }

        else
        {
          mediaPlaybackState = 3;
        }
      }

      [delegate mediaPlaybackManager:self shouldHideUI:v9 animated:0 animations:0 completion:0];
    }
  }

  return mediaPlaybackState;
}

- (int)_processBackgroundedStateTriggers
{
  mediaPlaybackState = self->_mediaPlaybackState;
  mediaPlaybackTrigger = self->_mediaPlaybackTrigger;
  if (mediaPlaybackTrigger > 4)
  {
    if (mediaPlaybackTrigger == 5)
    {
      mediaController = [(VUITransitionalPlaybackUIManager *)self mediaController];
      state = [mediaController state];

      if (state == 3)
      {
        return 3;
      }
    }

    else if (mediaPlaybackTrigger == 7 && [(VUITransitionalPlaybackUIManager *)self _shouldPause])
    {
      return 6;
    }
  }

  else
  {
    if (mediaPlaybackTrigger == 3)
    {
      v4 = 5;
    }

    else
    {
      v4 = self->_mediaPlaybackState;
    }

    if (mediaPlaybackTrigger == 2)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  return mediaPlaybackState;
}

- (int)_processForegroundedStateTriggers
{
  mediaPlaybackState = self->_mediaPlaybackState;
  mediaPlaybackTrigger = self->_mediaPlaybackTrigger;
  switch(mediaPlaybackTrigger)
  {
    case 5:
      mediaController = [(VUITransitionalPlaybackUIManager *)self mediaController];
      if ([mediaController state] == 1)
      {
      }

      else
      {
        mediaController2 = [(VUITransitionalPlaybackUIManager *)self mediaController];
        state = [mediaController2 state];

        if (state != 2)
        {
          return mediaPlaybackState;
        }
      }

      return 4;
    case 3:
      self->_mediaPlaybackStateModifier |= self->_mediaPlaybackTriggerModifier & 3;
      return 4;
    case 2:
      return 0;
  }

  return mediaPlaybackState;
}

- (int)_processWaitingForTimeoutStateTriggers
{
  mediaPlaybackState = self->_mediaPlaybackState;
  mediaPlaybackTrigger = self->_mediaPlaybackTrigger;
  if (mediaPlaybackTrigger <= 4)
  {
    if (mediaPlaybackTrigger == 2)
    {
      return 0;
    }

    if (mediaPlaybackTrigger != 3)
    {
      if (mediaPlaybackTrigger == 4)
      {
        [(VUITransitionalPlaybackUIManager *)self _scheduleBackgroundedTimer];
      }

      return mediaPlaybackState;
    }

    return 5;
  }

  if (mediaPlaybackTrigger == 5)
  {
    mediaController = [(VUITransitionalPlaybackUIManager *)self mediaController];
    state = [mediaController state];

    if (state != 3)
    {
      return 1;
    }
  }

  else
  {
    if (mediaPlaybackTrigger == 6)
    {
      return 5;
    }

    if (mediaPlaybackTrigger == 7 && [(VUITransitionalPlaybackUIManager *)self _shouldPause])
    {
      return 6;
    }
  }

  return mediaPlaybackState;
}

- (int)_processWillBeBackgroundedStateTriggers
{
  mediaPlaybackTrigger = self->_mediaPlaybackTrigger;
  if (mediaPlaybackTrigger == 6)
  {
    mediaController = [(VUITransitionalPlaybackUIManager *)self mediaController];
    if ([mediaController state] == 3)
    {
      if ((self->_mediaPlaybackStateModifier & 2) != 0)
      {
        v4 = 1;
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      v4 = 1;
    }
  }

  else if (mediaPlaybackTrigger == 2)
  {
    return 0;
  }

  else
  {
    return self->_mediaPlaybackState;
  }

  return v4;
}

- (int)_processWillBeForegroundedStateTriggers
{
  mediaPlaybackState = self->_mediaPlaybackState;
  mediaPlaybackTrigger = self->_mediaPlaybackTrigger;
  if (mediaPlaybackTrigger == 2)
  {
    mediaPlaybackState = 0;
  }

  if (mediaPlaybackTrigger == 6)
  {
    return 2;
  }

  else
  {
    return mediaPlaybackState;
  }
}

- (int)_processPausedStateTriggers
{
  mediaPlaybackState = self->_mediaPlaybackState;
  if (self->_mediaPlaybackTrigger == 7 && ![(VUITransitionalPlaybackUIManager *)self _shouldPause])
  {
    mediaController = [(VUITransitionalPlaybackUIManager *)self mediaController];
    state = [mediaController state];

    mediaController2 = [(VUITransitionalPlaybackUIManager *)self mediaController];
    mediaInfo = [mediaController2 mediaInfo];
    intent = [mediaInfo intent];

    if (intent == 1 && state == 2)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  return mediaPlaybackState;
}

- (void)_scheduleBackgroundedTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundedTimer);
  [WeakRetained invalidate];

  v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__onTimeout selector:0 userInfo:0 repeats:5.0];
  objc_storeWeak(&self->_backgroundedTimer, v4);
}

- (BOOL)_canSwipeUp
{
  if ((self->_mediaPlaybackState - 1) > 2)
  {
    return 0;
  }

  mediaController = [(VUITransitionalPlaybackUIManager *)self mediaController];
  state = [mediaController state];

  if (state == 4)
  {
    return 0;
  }

  v6 = state & 0xFFFFFFFFFFFFFFFELL;
  mediaController2 = [(VUITransitionalPlaybackUIManager *)self mediaController];
  mediaInfo = [mediaController2 mediaInfo];
  intent = [mediaInfo intent];

  mediaPlaybackState = self->_mediaPlaybackState;
  if (mediaPlaybackState != 1 || intent)
  {
    v11 = 0;
    if (mediaPlaybackState == 2 && intent == 1)
    {
      if (self->_delegateFlags.hasShouldEnableUIModeImplicitly)
      {
        delegate = [(VUITransitionalPlaybackUIManager *)self delegate];
        v11 = [delegate mediaPlaybackManager:self shouldEnableUIModeImplicitly:1];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  return (v6 == 2) & v11;
}

- (BOOL)_canMenu
{
  mediaController = [(VUITransitionalPlaybackUIManager *)self mediaController];
  mediaInfo = [mediaController mediaInfo];
  intent = [mediaInfo intent];

  mediaPlaybackState = self->_mediaPlaybackState;
  if (mediaPlaybackState == 2)
  {
    if (intent != 1)
    {
      return 1;
    }

    if (!self->_delegateFlags.hasShouldEnableUIModeImplicitly)
    {
      return 1;
    }

    delegate = [(VUITransitionalPlaybackUIManager *)self delegate];
    v8 = [delegate mediaPlaybackManager:self shouldEnableUIModeImplicitly:0];

    if (v8)
    {
      return 1;
    }

    mediaPlaybackState = self->_mediaPlaybackState;
  }

  return (mediaPlaybackState | 2) == 3 && [(VUITransitionalPlaybackUIManager *)self currentUIMode]== 1;
}

- (VUIMediaPlaybackManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
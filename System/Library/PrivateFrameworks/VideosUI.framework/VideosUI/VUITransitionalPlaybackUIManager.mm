@interface VUITransitionalPlaybackUIManager
- (BOOL)_canMenu;
- (BOOL)_canSwipeUp;
- (BOOL)onSupplementaryUIShouldPresent;
- (VUIMediaPlaybackManagerDelegate)delegate;
- (VUITransitionalPlaybackUIManager)initWithMediaController:(id)a3;
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
- (void)setDelegate:(id)a3;
- (void)setShowcaseFactor:(double)a3;
@end

@implementation VUITransitionalPlaybackUIManager

- (VUITransitionalPlaybackUIManager)initWithMediaController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VUITransitionalPlaybackUIManager;
  v6 = [(VUITransitionalPlaybackUIManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaController, a3);
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

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
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

- (void)setShowcaseFactor:(double)a3
{
  if (self->_showcaseFactor != a3)
  {
    self->_showcaseFactor = a3;
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
        v5 = [(VUITransitionalPlaybackUIManager *)self _processBackgroundedStateTriggers];
      }

      else
      {
        if (mediaPlaybackState != 2)
        {
          goto LABEL_17;
        }

        v5 = [(VUITransitionalPlaybackUIManager *)self _processForegroundedStateTriggers];
      }
    }

    else
    {
      v5 = [(VUITransitionalPlaybackUIManager *)self _processUndefinedStateTriggers];
    }
  }

  else if (mediaPlaybackState > 4)
  {
    if (mediaPlaybackState == 5)
    {
      v5 = [(VUITransitionalPlaybackUIManager *)self _processWillBeForegroundedStateTriggers];
    }

    else
    {
      if (mediaPlaybackState != 6)
      {
        goto LABEL_17;
      }

      v5 = [(VUITransitionalPlaybackUIManager *)self _processPausedStateTriggers];
    }
  }

  else if (mediaPlaybackState == 3)
  {
    v5 = [(VUITransitionalPlaybackUIManager *)self _processWaitingForTimeoutStateTriggers];
  }

  else
  {
    v5 = [(VUITransitionalPlaybackUIManager *)self _processWillBeBackgroundedStateTriggers];
  }

  v3 = v5;
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

      v8 = [(VUITransitionalPlaybackUIManager *)self mediaController];
      [v8 setShowsVideoControls:1];
    }

    self->_mediaPlaybackStateModifier = 0;
    return;
  }

  if ((mediaPlaybackState - 4) < 2)
  {
    v4 = [(VUITransitionalPlaybackUIManager *)self delegate];
    if (mediaPlaybackState == 5)
    {
      v5 = [(VUITransitionalPlaybackUIManager *)self mediaController];
      v6 = [v5 mediaInfo];
      if ([v6 intent] == 1)
      {
        hasPresentPlaybackController = self->_delegateFlags.hasPresentPlaybackController;

        if (hasPresentPlaybackController && ([v4 presentForegroundPlaybackControllerForMediaPlaybackManager:self] & 1) != 0)
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
    [v4 mediaPlaybackManager:self shouldHideUI:mediaPlaybackState == 5 animated:1 animations:v11 completion:v10];
LABEL_22:

    return;
  }

  if (mediaPlaybackState == 6)
  {
    v9 = [(VUITransitionalPlaybackUIManager *)self mediaController];
    [v9 pause];
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
    v4 = [(VUITransitionalPlaybackUIManager *)self mediaController];
    v5 = [v4 state];

    if (v5)
    {
      v6 = [(VUITransitionalPlaybackUIManager *)self mediaController];
      v7 = [v6 state];

      v8 = [(VUITransitionalPlaybackUIManager *)self delegate];
      if (v7 != 1 && self->_isFirstAppearance && -[VUITransitionalPlaybackUIManager goesToForegroundOnFirstAppear](self, "goesToForegroundOnFirstAppear") || self->_delegateFlags.hasShouldEnableUIModeImplicitly && ![v8 mediaPlaybackManager:self shouldEnableUIModeImplicitly:0])
      {
        mediaPlaybackState = 2;
        v9 = 1;
      }

      else
      {
        v9 = 0;
        if ((v7 - 1) < 2 || v7 == 4)
        {
          mediaPlaybackState = 1;
        }

        else
        {
          mediaPlaybackState = 3;
        }
      }

      [v8 mediaPlaybackManager:self shouldHideUI:v9 animated:0 animations:0 completion:0];
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
      v5 = [(VUITransitionalPlaybackUIManager *)self mediaController];
      v6 = [v5 state];

      if (v6 == 3)
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
      v5 = [(VUITransitionalPlaybackUIManager *)self mediaController];
      if ([v5 state] == 1)
      {
      }

      else
      {
        v6 = [(VUITransitionalPlaybackUIManager *)self mediaController];
        v7 = [v6 state];

        if (v7 != 2)
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
    v4 = [(VUITransitionalPlaybackUIManager *)self mediaController];
    v5 = [v4 state];

    if (v5 != 3)
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
    v5 = [(VUITransitionalPlaybackUIManager *)self mediaController];
    if ([v5 state] == 3)
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
    v4 = [(VUITransitionalPlaybackUIManager *)self mediaController];
    v5 = [v4 state];

    v6 = [(VUITransitionalPlaybackUIManager *)self mediaController];
    v7 = [v6 mediaInfo];
    v8 = [v7 intent];

    if (v8 == 1 && v5 == 2)
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

  v3 = [(VUITransitionalPlaybackUIManager *)self mediaController];
  v4 = [v3 state];

  if (v4 == 4)
  {
    return 0;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFELL;
  v7 = [(VUITransitionalPlaybackUIManager *)self mediaController];
  v8 = [v7 mediaInfo];
  v9 = [v8 intent];

  mediaPlaybackState = self->_mediaPlaybackState;
  if (mediaPlaybackState != 1 || v9)
  {
    v11 = 0;
    if (mediaPlaybackState == 2 && v9 == 1)
    {
      if (self->_delegateFlags.hasShouldEnableUIModeImplicitly)
      {
        v12 = [(VUITransitionalPlaybackUIManager *)self delegate];
        v11 = [v12 mediaPlaybackManager:self shouldEnableUIModeImplicitly:1];
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
  v3 = [(VUITransitionalPlaybackUIManager *)self mediaController];
  v4 = [v3 mediaInfo];
  v5 = [v4 intent];

  mediaPlaybackState = self->_mediaPlaybackState;
  if (mediaPlaybackState == 2)
  {
    if (v5 != 1)
    {
      return 1;
    }

    if (!self->_delegateFlags.hasShouldEnableUIModeImplicitly)
    {
      return 1;
    }

    v7 = [(VUITransitionalPlaybackUIManager *)self delegate];
    v8 = [v7 mediaPlaybackManager:self shouldEnableUIModeImplicitly:0];

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
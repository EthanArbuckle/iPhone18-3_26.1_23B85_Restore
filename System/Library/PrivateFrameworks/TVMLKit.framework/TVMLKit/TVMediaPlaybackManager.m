@interface TVMediaPlaybackManager
- (BOOL)_canMenu;
- (BOOL)_canSwipeUp;
- (BOOL)onSupplementaryUIShouldPresent;
- (TVMediaPlaybackManager)initWithMediaController:(id)a3;
- (TVMediaPlaybackManagerDelegate)delegate;
- (int)_processBackgroundedStateTriggers;
- (int)_processForegroundedStateTriggers;
- (int)_processPausedStateTriggers;
- (int)_processUndefinedStateTriggers;
- (int)_processWaitingForTimeoutStateTriggers;
- (int)_processWillBeBackgroundedStateTriggers;
- (int)_processWillBeForegroundedStateTriggers;
- (void)_onMenu;
- (void)_onSwipeUp;
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

@implementation TVMediaPlaybackManager

- (TVMediaPlaybackManager)initWithMediaController:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = TVMediaPlaybackManager;
  v6 = [(TVMediaPlaybackManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaController, a3);
    v8 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v7 action:sel__onMenu];
    [(UITapGestureRecognizer *)v8 setDelegate:v7];
    [(UITapGestureRecognizer *)v8 setAllowedPressTypes:&unk_287E487B0];
    [(UITapGestureRecognizer *)v8 setEnabled:0];
    menuGestureRecognizer = v7->_menuGestureRecognizer;
    v7->_menuGestureRecognizer = v8;
    v10 = v8;

    v11 = [[_TVNonFocusSwipeUpCapture alloc] initWithTarget:v7 action:sel__onSwipeUp];
    swipeUpCapture = v7->_swipeUpCapture;
    v7->_swipeUpCapture = v11;

    v7->_isFirstAppearance = 1;
  }

  return v7;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundedTimer);
  [WeakRetained invalidate];

  v4.receiver = self;
  v4.super_class = TVMediaPlaybackManager;
  [(TVMediaPlaybackManager *)&v4 dealloc];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  self->_delegateFlags.hasShouldEnableUIModeImplicitly = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.hasEvaluateSwipeUpMessage = objc_opt_respondsToSelector() & 1;
  v5 = objc_opt_respondsToSelector();

  self->_delegateFlags.hasPresentPlaybackController = v5 & 1;
}

- (void)onAppear
{
  self->_mediaPlaybackTrigger = 1;
  [(TVMediaPlaybackManager *)self _processTrigger];
  self->_isFirstAppearance = 0;
}

- (BOOL)onSupplementaryUIShouldPresent
{
  mediaPlaybackState = self->_mediaPlaybackState;
  if (mediaPlaybackState == 2)
  {
    self->_mediaPlaybackTrigger = 3;
    self->_mediaPlaybackTriggerModifier |= 3uLL;
    [(TVMediaPlaybackManager *)self _processTrigger];
  }

  return mediaPlaybackState == 2;
}

- (void)onSupplementaryUIShouldDismiss
{
  if (self->_mediaPlaybackState == 1 && [(TVMediaPlaybackManager *)self currentUIMode]== 1)
  {
    self->_mediaPlaybackTrigger = 3;

    [(TVMediaPlaybackManager *)self _processTrigger];
  }
}

- (void)setShowcaseFactor:(double)a3
{
  if (self->_showcaseFactor != a3)
  {
    self->_showcaseFactor = a3;
    [(TVMediaPlaybackManager *)self _onShowcaseFactorDidChange];
  }
}

- (void)_onMenu
{
  self->_mediaPlaybackTrigger = 3;
  if ([(TVMediaPlaybackManager *)self currentUIMode]== 1)
  {
    self->_mediaPlaybackTriggerModifier |= 1uLL;
  }

  [(TVMediaPlaybackManager *)self _processTrigger];
}

- (void)_onSwipeUp
{
  self->_mediaPlaybackTrigger = 3;
  if (self->_mediaPlaybackState == 2)
  {
    self->_mediaPlaybackTriggerModifier |= 1uLL;
  }

  [(TVMediaPlaybackManager *)self _processTrigger];
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
        v5 = [(TVMediaPlaybackManager *)self _processBackgroundedStateTriggers];
      }

      else
      {
        if (mediaPlaybackState != 2)
        {
          goto LABEL_17;
        }

        v5 = [(TVMediaPlaybackManager *)self _processForegroundedStateTriggers];
      }
    }

    else
    {
      v5 = [(TVMediaPlaybackManager *)self _processUndefinedStateTriggers];
    }
  }

  else if (mediaPlaybackState > 4)
  {
    if (mediaPlaybackState == 5)
    {
      v5 = [(TVMediaPlaybackManager *)self _processWillBeForegroundedStateTriggers];
    }

    else
    {
      if (mediaPlaybackState != 6)
      {
        goto LABEL_17;
      }

      v5 = [(TVMediaPlaybackManager *)self _processPausedStateTriggers];
    }
  }

  else if (mediaPlaybackState == 3)
  {
    v5 = [(TVMediaPlaybackManager *)self _processWaitingForTimeoutStateTriggers];
  }

  else
  {
    v5 = [(TVMediaPlaybackManager *)self _processWillBeBackgroundedStateTriggers];
  }

  v3 = v5;
LABEL_17:
  self->_mediaPlaybackTrigger = 0;
  self->_mediaPlaybackTriggerModifier = 0;
  if (v3 != self->_mediaPlaybackState)
  {
    [(TVMediaPlaybackManager *)self _processStateExit];
    self->_mediaPlaybackState = v3;
    [(TVMediaPlaybackManager *)self _processStateEnter];
  }

  v6 = [(TVMediaPlaybackManager *)self menuGestureRecognizer];
  [v6 setEnabled:{-[TVMediaPlaybackManager _canMenu](self, "_canMenu")}];

  v7 = [(TVMediaPlaybackManager *)self swipeUpGestureRecognizer];
  [v7 setEnabled:{-[TVMediaPlaybackManager _canSwipeUp](self, "_canSwipeUp")}];

  if ((v3 & 0xFFFFFFFE) != 4 && self->_delegateFlags.hasEvaluateSwipeUpMessage)
  {
    v8 = [(TVMediaPlaybackManager *)self delegate];
    [v8 evaluateSwipeUpMessageForMediaPlaybackManager:self];
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

          [(TVMediaPlaybackManager *)self _scheduleBackgroundedTimer];
        }

        return;
      }

      v9 = [(TVMediaPlaybackManager *)self mediaController];
      [v9 setShowsVideoControls:1];
    }

    self->_mediaPlaybackStateModifier = 0;
    return;
  }

  if ((mediaPlaybackState - 4) < 2)
  {
    if (mediaPlaybackState == 5)
    {
      v4 = [(TVMediaPlaybackManager *)self mediaController];
      v5 = [v4 mediaInfo];
      if ([v5 intent] == 1)
      {
        hasPresentPlaybackController = self->_delegateFlags.hasPresentPlaybackController;

        if (hasPresentPlaybackController)
        {
          v7 = [(TVMediaPlaybackManager *)self delegate];
          v8 = [v7 presentForegroundPlaybackControllerForMediaPlaybackManager:self];

          if (v8)
          {
            return;
          }
        }
      }

      else
      {
      }
    }

    v10 = [(TVMediaPlaybackManager *)self delegate];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __44__TVMediaPlaybackManager__processStateEnter__block_invoke;
    v13[3] = &unk_279D6E7F8;
    v13[4] = self;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__TVMediaPlaybackManager__processStateEnter__block_invoke_2;
    v12[3] = &unk_279D6EBD0;
    v12[4] = self;
    [v10 mediaPlaybackManager:self shouldHideUI:mediaPlaybackState == 5 animated:1 animations:v13 completion:v12];

    return;
  }

  if (mediaPlaybackState == 6)
  {
    v11 = [(TVMediaPlaybackManager *)self mediaController];
    [v11 pause];
  }
}

void __44__TVMediaPlaybackManager__processStateEnter__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[2] == 5;
  v3 = [v1 mediaController];
  [v3 transitionToForeground:v2 animated:1];
}

uint64_t __44__TVMediaPlaybackManager__processStateEnter__block_invoke_2(uint64_t result, int a2)
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
      WeakRetained = [(TVMediaPlaybackManager *)self mediaController];
      [WeakRetained setShowsVideoControls:0];
      break;
    case 6:
      WeakRetained = [(TVMediaPlaybackManager *)self mediaController];
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
    v4 = [(TVMediaPlaybackManager *)self mediaController];
    v5 = [v4 state];

    if (v5)
    {
      v6 = [(TVMediaPlaybackManager *)self mediaController];
      v7 = [v6 state];

      if (v7 != 1 && self->_isFirstAppearance && -[TVMediaPlaybackManager goesToForegroundOnFirstAppear](self, "goesToForegroundOnFirstAppear") || self->_delegateFlags.hasShouldEnableUIModeImplicitly && (-[TVMediaPlaybackManager delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 mediaPlaybackManager:self shouldEnableUIModeImplicitly:0], v8, !v9))
      {
        mediaPlaybackState = 2;
        v10 = 1;
      }

      else
      {
        v10 = 0;
        if ((v7 - 1) < 2 || v7 == 4)
        {
          mediaPlaybackState = 1;
        }

        else
        {
          mediaPlaybackState = 3;
        }
      }

      v12 = [(TVMediaPlaybackManager *)self delegate];
      [v12 mediaPlaybackManager:self shouldHideUI:v10 animated:0 animations:0 completion:0];
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
      v5 = [(TVMediaPlaybackManager *)self mediaController];
      v6 = [v5 state];

      if (v6 == 3)
      {
        return 3;
      }
    }

    else if (mediaPlaybackTrigger == 7 && [(TVMediaPlaybackManager *)self _shouldPause])
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
      v5 = [(TVMediaPlaybackManager *)self mediaController];
      if ([v5 state] == 1)
      {
      }

      else
      {
        v6 = [(TVMediaPlaybackManager *)self mediaController];
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
        [(TVMediaPlaybackManager *)self _scheduleBackgroundedTimer];
      }

      return mediaPlaybackState;
    }

    return 5;
  }

  if (mediaPlaybackTrigger == 5)
  {
    v4 = [(TVMediaPlaybackManager *)self mediaController];
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

    if (mediaPlaybackTrigger == 7 && [(TVMediaPlaybackManager *)self _shouldPause])
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
    v5 = [(TVMediaPlaybackManager *)self mediaController];
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
  if (self->_mediaPlaybackTrigger == 7 && ![(TVMediaPlaybackManager *)self _shouldPause])
  {
    v4 = [(TVMediaPlaybackManager *)self mediaController];
    v5 = [v4 state];

    v6 = [(TVMediaPlaybackManager *)self mediaController];
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

  v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__onTimeout selector:0 userInfo:0 repeats:5.0];
  objc_storeWeak(&self->_backgroundedTimer, v4);
}

- (BOOL)_canSwipeUp
{
  if ((self->_mediaPlaybackState - 1) > 2)
  {
    return 0;
  }

  v3 = [(TVMediaPlaybackManager *)self mediaController];
  v4 = [v3 state];

  if (v4 == 4)
  {
    return 0;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFELL;
  v7 = [(TVMediaPlaybackManager *)self mediaController];
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
        v12 = [(TVMediaPlaybackManager *)self delegate];
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
  v3 = [(TVMediaPlaybackManager *)self mediaController];
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

    v7 = [(TVMediaPlaybackManager *)self delegate];
    v8 = [v7 mediaPlaybackManager:self shouldEnableUIModeImplicitly:0];

    if (v8)
    {
      return 1;
    }

    mediaPlaybackState = self->_mediaPlaybackState;
  }

  return (mediaPlaybackState | 2) == 3 && [(TVMediaPlaybackManager *)self currentUIMode]== 1;
}

- (TVMediaPlaybackManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
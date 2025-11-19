@interface TKVibrationRecorderTouchSurface
- (TKVibrationRecorderTouchSurface)initWithVibrationPatternMaximumDuration:(double)a3 styleProvider:(id)a4;
- (TKVibrationRecorderTouchSurfaceDelegate)delegate;
- (void)_updateTouchLocationForReplayMode:(id)a3;
- (void)currentVibrationComponentShouldEnd;
- (void)dealloc;
- (void)enterRecordingMode;
- (void)enterReplayModeWithVibrationPattern:(id)a3;
- (void)exitRecordingMode;
- (void)exitReplayMode;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation TKVibrationRecorderTouchSurface

- (TKVibrationRecorderTouchSurface)initWithVibrationPatternMaximumDuration:(double)a3 styleProvider:(id)a4
{
  v9.receiver = self;
  v9.super_class = TKVibrationRecorderTouchSurface;
  v5 = [(TKVibrationRecorderRippleView *)&v9 initWithStyleProvider:a4];
  v6 = v5;
  if (v5)
  {
    [(TKVibrationRecorderTouchSurface *)v5 setMultipleTouchEnabled:0];
    [(TKVibrationRecorderTouchSurface *)v6 setUserInteractionEnabled:1];
    [(TKVibrationRecorderTouchSurface *)v6 setClipsToBounds:1];
    v7 = TLLocalizedString();
    [(TKVibrationRecorderTouchSurface *)v6 setAccessibilityLabel:v7];

    [(TKVibrationRecorderTouchSurface *)v6 setAccessibilityHint:0];
    v6->_vibrationPatternMaximumDuration = a3;
  }

  return v6;
}

- (void)dealloc
{
  [(TKVibrationRecorderTouchSurface *)self exitRecordingMode];
  [(TKVibrationRecorderTouchSurface *)self exitReplayMode];
  v3.receiver = self;
  v3.super_class = TKVibrationRecorderTouchSurface;
  [(TKVibrationRecorderRippleView *)&v3 dealloc];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v14 = a3;
  v6 = [(TKVibrationRecorderTouchSurface *)self delegate];
  v7 = v6;
  if ((self->_isRecordingModeEnabled || self->_isReplayModeEnabled || [v6 vibrationRecorderTouchSurfaceDidEnterRecordingMode:self] && self->_isRecordingModeEnabled) && (!a4 || !v14 || !self->_isReplayModeEnabled))
  {
    v8 = [v14 anyObject];
    v9 = v8;
    if (v8)
    {
      [v8 locationInView:self];
      v11 = v10;
      v13 = v12;
    }

    else
    {
      v11 = *MEMORY[0x277CBF348];
      v13 = *(MEMORY[0x277CBF348] + 8);
    }

    if (self->_isRecordingModeEnabled)
    {
      self->_shouldIgnoreCurrentTouch = 0;
      [(TKVibrationRecorderTouchSurface *)self _recordTouchLocation:1 touchPhase:v11, v13];
      [(TKVibrationRecorderRippleView *)self _touchBeganAtLocation:v11, v13];
      [v7 vibrationComponentDidStartForVibrationRecorderTouchSurface:self];
    }

    else
    {
      [(TKVibrationRecorderRippleView *)self _touchBeganAtLocation:v11, v13];
    }
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v23 = a3;
  v6 = a4;
  isRecordingModeEnabled = self->_isRecordingModeEnabled;
  if ((isRecordingModeEnabled || self->_isReplayModeEnabled) && (!self->_isRecordingModeEnabled || !self->_shouldIgnoreCurrentTouch) && (!v23 || !v6 || !self->_isReplayModeEnabled))
  {
    [(TKVibrationRecorderTouchSurface *)self bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [v23 anyObject];
    v17 = v16;
    if (v16)
    {
      [v16 locationInView:self];
      v19 = v18;
      v21 = v20;
    }

    else
    {
      v19 = *MEMORY[0x277CBF348];
      v21 = *(MEMORY[0x277CBF348] + 8);
    }

    Height = 0.0;
    if (v21 >= 0.0)
    {
      v25.origin.x = v9;
      v25.origin.y = v11;
      v25.size.width = v13;
      v25.size.height = v15;
      Height = v21;
      if (v21 > CGRectGetHeight(v25))
      {
        v26.origin.x = v9;
        v26.origin.y = v11;
        v26.size.width = v13;
        v26.size.height = v15;
        Height = CGRectGetHeight(v26);
      }
    }

    if (isRecordingModeEnabled)
    {
      [(TKVibrationRecorderTouchSurface *)self _recordTouchLocation:2 touchPhase:v19, Height];
    }

    [(TKVibrationRecorderRippleView *)self _touchMovedToLocation:v19, Height];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v16 = a3;
  v6 = a4;
  isRecordingModeEnabled = self->_isRecordingModeEnabled;
  if (!self->_isReplayModeEnabled)
  {
    if (!self->_isRecordingModeEnabled)
    {
      goto LABEL_13;
    }

LABEL_6:
    v9 = [v16 anyObject];
    v10 = v9;
    if (v9)
    {
      [v9 locationInView:self];
      v12 = v11;
      v14 = v13;
      if (isRecordingModeEnabled)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = *MEMORY[0x277CBF348];
      v14 = *(MEMORY[0x277CBF348] + 8);
      if (isRecordingModeEnabled)
      {
LABEL_8:
        [(TKVibrationRecorderTouchSurface *)self _recordTouchLocation:3 touchPhase:v12, v14];
        if (!self->_shouldIgnoreCurrentTouch)
        {
          [(TKVibrationRecorderRippleView *)self _touchEndedAtLocation:v12, v14];
          v15 = [(TKVibrationRecorderTouchSurface *)self delegate];
          [v15 vibrationComponentDidEndForVibrationRecorderTouchSurface:self];
        }

        goto LABEL_12;
      }
    }

    [(TKVibrationRecorderRippleView *)self _touchEndedAtLocation:v12, v14];
LABEL_12:

    goto LABEL_13;
  }

  v8 = [v16 count];
  if (!v6 || !v8)
  {
    goto LABEL_6;
  }

LABEL_13:
}

- (void)enterRecordingMode
{
  if (!self->_isRecordingModeEnabled)
  {
    self->_isRecordingModeEnabled = 1;
    v4 = [[TKVibrationRecorderTouchSurfaceRecordedDataWrapper alloc] initWithVibrationPatternMaximumDuration:self->_vibrationPatternMaximumDuration];
    recordedDataWrapper = self->_recordedDataWrapper;
    self->_recordedDataWrapper = v4;

    MEMORY[0x2821F96F8](v4, recordedDataWrapper);
  }
}

- (void)exitRecordingMode
{
  if (self->_isRecordingModeEnabled)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
    [(TKVibrationRecorderTouchSurface *)self touchesEnded:v5 withEvent:0];
    self->_isRecordingModeEnabled = 0;
    [(TKVibrationRecorderTouchSurfaceRecordedDataWrapper *)self->_recordedDataWrapper didStopRecording];
    v3 = [(TKVibrationRecorderTouchSurface *)self delegate];
    [v3 vibrationRecorderTouchSurface:self didExitRecordingModeWithContextObject:self->_recordedDataWrapper];

    recordedDataWrapper = self->_recordedDataWrapper;
    self->_recordedDataWrapper = 0;
  }
}

- (void)currentVibrationComponentShouldEnd
{
  if (self->_isRecordingModeEnabled)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB98]);
    [(TKVibrationRecorderTouchSurface *)self touchesEnded:v4 withEvent:0];
    self->_shouldIgnoreCurrentTouch = 1;
  }
}

- (void)enterReplayModeWithVibrationPattern:(id)a3
{
  v5 = a3;
  if (!self->_isReplayModeEnabled)
  {
    self->_isReplayModeEnabled = 1;
    objc_storeStrong(&self->_vibrationPatternToReplay, a3);
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_replayModeWasEnteredStartTime = v6;
    v7 = +[TKDisplayLinkManager currentDisplayLinkManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__TKVibrationRecorderTouchSurface_enterReplayModeWithVibrationPattern___block_invoke;
    v10[3] = &unk_278316958;
    v10[4] = self;
    v8 = [v7 addObserverWithHandler:v10];
    displayLinkManagerObserverToken = self->_displayLinkManagerObserverToken;
    self->_displayLinkManagerObserverToken = v8;
  }
}

- (void)exitReplayMode
{
  if (self->_isReplayModeEnabled)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB98]);
    [(TKVibrationRecorderTouchSurface *)self touchesEnded:v6 withEvent:0];
    self->_isReplayModeEnabled = 0;
    vibrationPatternToReplay = self->_vibrationPatternToReplay;
    self->_vibrationPatternToReplay = 0;

    v4 = +[TKDisplayLinkManager currentDisplayLinkManager];
    [v4 removeObserverWithToken:self->_displayLinkManagerObserverToken];

    displayLinkManagerObserverToken = self->_displayLinkManagerObserverToken;
    self->_displayLinkManagerObserverToken = 0;
  }
}

- (void)_updateTouchLocationForReplayMode:(id)a3
{
  v19 = *MEMORY[0x277CBF348];
  v18 = 0;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v5 = v4 - self->_replayModeWasEnteredStartTime;
  v6 = [(TLVibrationPattern *)self->_vibrationPatternToReplay contextObject];
  v7 = [v6 getNormalizedTouchLocation:&v19 touchPhase:&v18 forTimeInterval:v5];

  if (v7)
  {
    if (v18)
    {
      [(TKVibrationRecorderTouchSurface *)self bounds];
      x = v20.origin.x;
      y = v20.origin.y;
      width = v20.size.width;
      height = v20.size.height;
      v12 = *&v19;
      v13 = v12 * CGRectGetWidth(v20);
      v14 = *(&v19 + 1);
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v15 = v14 * CGRectGetHeight(v21);
      v16 = [(TKVibrationRecorderRippleView *)self _isTouchDown];
      if (v18 == 2 && !v16)
      {
        v18 = 1;
LABEL_6:
        [(TKVibrationRecorderRippleView *)self _touchBeganAtLocation:v13, v15];
        return;
      }

      if (v18 == 1 && v16)
      {
        v18 = 2;
LABEL_11:
        [(TKVibrationRecorderRippleView *)self _touchMovedToLocation:v13, v15];
        return;
      }

      switch(v18)
      {
        case 3:
          [(TKVibrationRecorderRippleView *)self _touchEndedAtLocation:v13, v15];
          break;
        case 2:
          goto LABEL_11;
        case 1:
          goto LABEL_6;
      }
    }
  }

  else
  {
    [(TKVibrationRecorderTouchSurface *)self exitReplayMode];
    v17 = [(TKVibrationRecorderTouchSurface *)self delegate];
    [v17 vibrationRecorderTouchSurfaceDidFinishReplayingVibration:self];
  }
}

- (TKVibrationRecorderTouchSurfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
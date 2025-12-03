@interface PGControlsViewModel
- (BOOL)isPrerollSkippable;
- (PGControlsViewModel)init;
- (PGControlsViewModelDelegate)delegate;
- (double)preferredMinimumHeight;
- (double)preferredMinimumWidth;
- (int64_t)secondsUntilPrerollSkippable;
- (unint64_t)recommendedUpdateCadenceForProgressBarWithWidthInPixels:(double)pixels;
- (void)_updateViewModelValues;
- (void)handleActionButtonTapped;
- (void)handleCancelButtonTapped;
- (void)handleDoubleDoubleTap;
- (void)handleDoubleTap;
- (void)handleRestoreButtonTapped;
- (void)handleSingleTap;
- (void)handleSkipBackButtonTapped;
- (void)handleSkipForwardButtonTapped;
- (void)handleSkipPrerollButtonTapped;
- (void)setInActivitySession:(BOOL)session;
- (void)setInterrupted:(BOOL)interrupted;
- (void)updatePlaybackStateWithDiff:(id)diff;
@end

@implementation PGControlsViewModel

- (PGControlsViewModel)init
{
  v8.receiver = self;
  v8.super_class = PGControlsViewModel;
  v2 = [(PGControlsViewModel *)&v8 init];
  if (v2)
  {
    v3 = [[PGPlaybackState alloc] initWithDictionary:0];
    playbackState = v2->_playbackState;
    v2->_playbackState = v3;

    v5 = objc_alloc_init(PGControlsViewModelValues);
    values = v2->_values;
    v2->_values = v5;

    [(PGControlsViewModel *)v2 _updateViewModelValues];
  }

  return v2;
}

- (void)updatePlaybackStateWithDiff:(id)diff
{
  diffCopy = diff;
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(PGControlsViewModel *)diffCopy updatePlaybackStateWithDiff:v5];
  }

  playbackState = [(PGControlsViewModel *)self playbackState];
  [playbackState updatePlaybackStateWithDiff:diffCopy];

  v7 = PGLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(PGControlsViewModel *)self updatePlaybackStateWithDiff:v7];
  }

  [(PGControlsViewModel *)self _updateViewModelValues];
}

- (void)setInterrupted:(BOOL)interrupted
{
  if (self->_interrupted != interrupted)
  {
    self->_interrupted = interrupted;
    [(PGControlsViewModel *)self _updateViewModelValues];
  }
}

- (void)setInActivitySession:(BOOL)session
{
  if (self->_inActivitySession != session)
  {
    self->_inActivitySession = session;
    [(PGControlsViewModel *)self _updateViewModelValues];
  }
}

- (unint64_t)recommendedUpdateCadenceForProgressBarWithWidthInPixels:(double)pixels
{
  values = [(PGControlsViewModel *)self values];
  progressBarShouldUpdate = [values progressBarShouldUpdate];

  if (!progressBarShouldUpdate)
  {
    return 0;
  }

  playbackState = [(PGControlsViewModel *)self playbackState];
  [playbackState contentDuration];
  v9 = pixels / v8;

  return vcvtpd_u64_f64(v9);
}

- (void)handleActionButtonTapped
{
  playbackState = [(PGControlsViewModel *)self playbackState];
  contentType = [playbackState contentType];
  if ((contentType - 1) < 2)
  {
    playbackState2 = [(PGControlsViewModel *)self playbackState];
    v6 = +[PGCommand commandForSetPlaying:](PGCommand, "commandForSetPlaying:", [playbackState2 timeControlStatus] == 0);
    goto LABEL_8;
  }

  if (contentType == 3)
  {
    playbackState2 = [(PGControlsViewModel *)self playbackState];
    v6 = +[PGCommand commandForSetMuted:](PGCommand, "commandForSetMuted:", [playbackState2 isMuted] ^ 1);
LABEL_8:
    v4 = v6;

    if (!v4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (contentType == 4)
  {
    v4 = +[PGCommand commandForSendActionButtonTapped];
    if (v4)
    {
LABEL_9:
      delegate = [(PGControlsViewModel *)self delegate];
      [delegate controlsViewModel:self didIssueCommand:v4];
    }
  }

LABEL_10:
}

- (void)handleCancelButtonTapped
{
  if ([(PGControlsViewModel *)self isInActivitySession])
  {
    +[PGCommand commandForEndOrLeaveActivityRequested];
  }

  else
  {
    +[PGCommand commandForCancelPIP];
  }
  v4 = ;
  delegate = [(PGControlsViewModel *)self delegate];
  [delegate controlsViewModel:self didIssueCommand:v4];
}

- (void)handleDoubleTap
{
  values = [(PGControlsViewModel *)self values];
  includesDoubleTapGestureRecognizer = [values includesDoubleTapGestureRecognizer];

  if (includesDoubleTapGestureRecognizer)
  {
    delegate = [(PGControlsViewModel *)self delegate];
    v5 = +[PGCommand commandForToggleZoom];
    [delegate controlsViewModel:self didIssueCommand:v5];
  }
}

- (void)handleSingleTap
{
  playbackState = [(PGControlsViewModel *)self playbackState];
  contentType = [playbackState contentType];
  if (contentType <= 6)
  {
    if (((1 << contentType) & 0xE) != 0)
    {
      if ([(PGControlsViewModel *)self isInterrupted])
      {
        goto LABEL_11;
      }

      v4 = +[PGCommand commandForToggleControlsVisibility];
    }

    else
    {
      if (((1 << contentType) & 0x31) != 0)
      {
        +[PGCommand commandForRestoreFromPIP];
      }

      else
      {
        +[PGCommand commandForSendActionButtonTapped];
      }
      v4 = ;
    }

    v5 = v4;
    if (v4)
    {
      delegate = [(PGControlsViewModel *)self delegate];
      [delegate controlsViewModel:self didIssueCommand:v5];
    }
  }

LABEL_11:
}

- (void)handleDoubleDoubleTap
{
  values = [(PGControlsViewModel *)self values];
  includesDoubleDoubleTapGestureRecognizer = [values includesDoubleDoubleTapGestureRecognizer];

  if (includesDoubleDoubleTapGestureRecognizer)
  {
    delegate = [(PGControlsViewModel *)self delegate];
    v5 = +[PGCommand commandForRestoreFromPIP];
    [delegate controlsViewModel:self didIssueCommand:v5];
  }
}

- (void)handleRestoreButtonTapped
{
  delegate = [(PGControlsViewModel *)self delegate];
  v3 = +[PGCommand commandForRestoreFromPIP];
  [delegate controlsViewModel:self didIssueCommand:v3];
}

- (void)handleSkipBackButtonTapped
{
  playbackState = [(PGControlsViewModel *)self playbackState];
  contentType = [playbackState contentType];

  if (contentType == 4)
  {
    playbackState2 = [(PGControlsViewModel *)self playbackState];
    supportsFaceTimeActions = [playbackState2 supportsFaceTimeActions];

    if (!supportsFaceTimeActions)
    {
      return;
    }

    playbackState3 = [(PGControlsViewModel *)self playbackState];
    v16 = +[PGCommand commandForSetMicrophoneMuted:](PGCommand, "commandForSetMicrophoneMuted:", [playbackState3 isMicrophoneMuted] ^ 1);

    v10 = v16;
    if (!v16)
    {
      return;
    }

    goto LABEL_12;
  }

  if (contentType != 2)
  {
    if (contentType != 1)
    {
      return;
    }

    playbackState4 = [(PGControlsViewModel *)self playbackState];
    requiresLinearPlayback = [playbackState4 requiresLinearPlayback];

    if (requiresLinearPlayback)
    {
      return;
    }

    goto LABEL_8;
  }

  playbackState5 = [(PGControlsViewModel *)self playbackState];
  if (([playbackState5 requiresLinearPlayback] & 1) == 0)
  {
    playbackState6 = [(PGControlsViewModel *)self playbackState];
    [playbackState6 contentDuration];
    v9 = v8;

    if (v9 <= 30.0)
    {
      return;
    }

LABEL_8:
    v10 = [PGCommand commandForSkipByInterval:-10.0];
    if (!v10)
    {
      return;
    }

LABEL_12:
    playbackState5 = v10;
    delegate = [(PGControlsViewModel *)self delegate];
    [delegate controlsViewModel:self didIssueCommand:playbackState5];
  }
}

- (void)handleSkipForwardButtonTapped
{
  playbackState = [(PGControlsViewModel *)self playbackState];
  contentType = [playbackState contentType];

  if (contentType != 4)
  {
    if (contentType != 2)
    {
      if (contentType != 1)
      {
        return;
      }

      playbackState2 = [(PGControlsViewModel *)self playbackState];
      requiresLinearPlayback = [playbackState2 requiresLinearPlayback];

      if (requiresLinearPlayback)
      {
        return;
      }

      goto LABEL_13;
    }

    playbackState3 = [(PGControlsViewModel *)self playbackState];
    if ([playbackState3 requiresLinearPlayback])
    {
    }

    else
    {
      playbackState4 = [(PGControlsViewModel *)self playbackState];
      [playbackState4 contentDuration];
      v12 = v11;

      if (v12 > 30.0)
      {
LABEL_13:
        v13 = [PGCommand commandForSkipByInterval:10.0];
        if (!v13)
        {
          return;
        }

        goto LABEL_16;
      }
    }

    v13 = +[PGCommand commandForSkipToLive];
    if (!v13)
    {
      return;
    }

LABEL_16:
    playbackState5 = v13;
    delegate = [(PGControlsViewModel *)self delegate];
    [delegate controlsViewModel:self didIssueCommand:playbackState5];

    goto LABEL_17;
  }

  playbackState5 = [(PGControlsViewModel *)self playbackState];
  if ([playbackState5 supportsFaceTimeActions])
  {
    if ([(PGControlsViewModel *)self isInterrupted])
    {
      playbackState6 = [(PGControlsViewModel *)self playbackState];
      isCameraActive = [playbackState6 isCameraActive];

      if (!isCameraActive)
      {
        return;
      }
    }

    else
    {
    }

    playbackState7 = [(PGControlsViewModel *)self playbackState];
    v17 = +[PGCommand commandForSetCameraEnabled:](PGCommand, "commandForSetCameraEnabled:", [playbackState7 isCameraActive] ^ 1);

    v13 = v17;
    if (!v17)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)handleSkipPrerollButtonTapped
{
  if ([(PGControlsViewModel *)self isPrerollSkippable])
  {
    delegate = [(PGControlsViewModel *)self delegate];
    v3 = +[PGCommand commandForSkipPreroll];
    [delegate controlsViewModel:self didIssueCommand:v3];
  }
}

- (int64_t)secondsUntilPrerollSkippable
{
  values = [(PGControlsViewModel *)self values];
  prerollAttributes = [values prerollAttributes];
  [prerollAttributes requiredLinearPlaybackEndTime];
  v6 = v5;
  v7 = v5;

  v8 = (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  values2 = [(PGControlsViewModel *)self values];
  LODWORD(prerollAttributes) = [values2 isPrerollActive];

  if (!prerollAttributes || !v8)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  playbackState = [(PGControlsViewModel *)self playbackState];
  [playbackState elapsedTime];
  v12 = v6 - v11;

  v13 = vcvtpd_s64_f64(v12);
  return v13 & ~(v13 >> 63);
}

- (BOOL)isPrerollSkippable
{
  values = [(PGControlsViewModel *)self values];
  if ([values isPrerollActive])
  {
    v4 = [(PGControlsViewModel *)self secondsUntilPrerollSkippable]== 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)preferredMinimumWidth
{
  playbackState = [(PGControlsViewModel *)self playbackState];
  contentType = [playbackState contentType];

  if ((contentType - 1) > 3)
  {
    return 128.0;
  }

  else
  {
    return dbl_1BB2CC5C8[contentType - 1];
  }
}

- (double)preferredMinimumHeight
{
  values = [(PGControlsViewModel *)self values];
  if ([values controlsViewWantsGlassBackground])
  {
    v3 = 247.0;
  }

  else
  {
    v3 = 110.0;
  }

  return v3;
}

- (void)_updateViewModelValues
{
  playbackState = [(PGControlsViewModel *)self playbackState];
  values = [(PGControlsViewModel *)self values];
  v4 = [values copy];

  [playbackState contentDuration];
  v6 = v5;
  [playbackState elapsedTime];
  v8 = v7;
  requiresLinearPlayback = [playbackState requiresLinearPlayback];
  isMuted = [playbackState isMuted];
  isInterrupted = [(PGControlsViewModel *)self isInterrupted];
  contentType = [playbackState contentType];
  timeControlStatus = [playbackState timeControlStatus];
  v170 = PGLocalizedString(@"RESTORE_FULLSCREEN");
  v169 = PGLocalizedString(@"CLOSE_PIP");
  v14 = contentType;
  v15 = 0;
  v149 = contentType;
  v151 = v4;
  if (contentType > 2)
  {
    if (contentType == 6)
    {
      v20 = 0;
      v15 = 0;
      v152 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v21 = 1;
      v16 = 1;
      v153 = 1;
    }

    else
    {
      v16 = 1;
      v153 = 1;
      v152 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 1;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      if (v14 == 3)
      {
        if (isMuted)
        {
          whiteColor = [MEMORY[0x1E69DC888] whiteColor];
          systemYellowColor = 0;
        }

        else
        {
          whiteColor = [MEMORY[0x1E69DC888] blackColor];
          systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
        }

        v50 = systemYellowColor;
        v51 = whiteColor;
        playbackState2 = [(PGControlsViewModel *)self playbackState];
        cameraHasMicrophone = [playbackState2 cameraHasMicrophone];

        if ([playbackState isMuted])
        {
          v54 = @"UNMUTE";
        }

        else
        {
          v54 = @"MUTE";
        }

        v19 = PGLocalizedString(v54);
        v20 = 0;
        v152 = 0;
        v17 = 0;
        v18 = 0;
        v24 = 0;
        v25 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v32 = 0;
        v33 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v15 = 1;
        v21 = 1;
        v22 = 1;
        v16 = 1;
        v153 = 1;
        v34 = 1;
        v31 = @"mic.fill";
        v27 = v51;
        v26 = v50;
        v23 = cameraHasMicrophone;
      }
    }
  }

  else
  {
    if (contentType == 1)
    {
      v43 = v6 == 0.0 && !self->_hasBegun;
      isInterrupted2 = [(PGControlsViewModel *)self isInterrupted];
      prerollAttributes = [playbackState prerollAttributes];
      v46 = (v6 > 0.0) & ~(v43 | requiresLinearPlayback);
      if (prerollAttributes)
      {
        v46 = 0;
      }

      v167 = v46;
      v47 = v46 & ~isInterrupted;
      if (v8 > 0.0)
      {
        v48 = v47;
      }

      else
      {
        v48 = 0;
      }

      v160 = v48;
      if (v8 < v6)
      {
        v49 = v47;
      }

      else
      {
        v49 = 0;
      }

      [playbackState hasInvalidTiming];
      if (isInterrupted)
      {
        v40 = @"play.slash.fill";
      }

      else
      {
        v55 = @"pause.fill";
        if (!timeControlStatus)
        {
          v55 = @"play.fill";
        }

        v40 = v55;
      }

      v158 = !v43;
      v153 = (isInterrupted | v43) ^ 1;
      v56 = v43;
      v57 = (timeControlStatus == 1) & ~isInterrupted2;
      v58 = PGLocalizedString(@"SKIP_FORWARD_10_SECONDS");
      v18 = PGLocalizedString(@"SKIP_BACK_10_SECONDS");
      v162 = v56;
      v164 = v57;
      v59 = v49;
      if (timeControlStatus)
      {
        v166 = PGLocalizedString(@"PAUSE");
        v60 = (v56 | v57) ^ 1;
        if (timeControlStatus != 2)
        {
          v60 = 0;
        }

        v152 = v60;
      }

      else
      {
        v166 = PGLocalizedString(@"PLAY");
        v152 = 0;
      }

      v17 = v58;
      isInterrupted3 = [(PGControlsViewModel *)self isInterrupted];
      v15 = 0;
      v16 = !isInterrupted3;
      if (v6 <= 0.0)
      {
        v26 = 0;
        v27 = 0;
        v30 = @"gobackward.10";
        v20 = prerollAttributes;
        v21 = 1;
        v31 = v40;
        v22 = 1;
        v34 = 1;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v29 = @"goforward.10";
        v19 = v166;
        v32 = v59;
        v25 = v56;
        v28 = v164;
        v23 = v158;
        v33 = v160;
        v24 = v167;
        goto LABEL_50;
      }

      v154 = !isInterrupted3;
      v147 = 0;
      v39 = v59;
    }

    else
    {
      v16 = 1;
      v153 = 1;
      v152 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 1;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      if (v14 != 2)
      {
        goto LABEL_50;
      }

      v164 = (timeControlStatus == 1) & ~[(PGControlsViewModel *)self isInterrupted:1];
      v38 = PGLocalizedString(@"SKIP_FORWARD_10_SECONDS");
      PGLocalizedString(@"SKIP_BACK_10_SECONDS");
      v39 = ((isInterrupted | requiresLinearPlayback) & 1) == 0;
      v153 = isInterrupted ^ 1;
      v18 = v152 = timeControlStatus == 2;
      v17 = v38;
      if (isInterrupted)
      {
        v166 = 0;
        v40 = @"play.slash.fill";
      }

      else if (timeControlStatus)
      {
        if (requiresLinearPlayback)
        {
          v166 = PGLocalizedString(@"STOP");
          v40 = @"stop.fill";
        }

        else
        {
          v166 = PGLocalizedString(@"PAUSE");
          v40 = @"pause.fill";
        }
      }

      else
      {
        v166 = PGLocalizedString(@"PLAY");
        v40 = @"play.fill";
      }

      prerollAttributes = 0;
      v162 = 0;
      v154 = ![(PGControlsViewModel *)self isInterrupted];
      v158 = 1;
      v167 = 1;
      v160 = ((isInterrupted | requiresLinearPlayback) & 1) == 0;
      v147 = 1;
    }

    v156 = v39;
    playbackState3 = [(PGControlsViewModel *)self playbackState];
    hasInvalidTiming = [playbackState3 hasInvalidTiming];

    if (hasInvalidTiming)
    {
      v15 = 0;
      v26 = 0;
      v27 = 0;
      v37 = 0;
    }

    else
    {
      playbackState4 = [(PGControlsViewModel *)self playbackState];
      v65 = [playbackState4 timeControlStatus] == 2;

      v37 = v65;
      v15 = 0;
      v26 = 0;
      v27 = 0;
    }

    v30 = @"gobackward.10";
    v21 = 1;
    v22 = 1;
    v34 = 1;
    v36 = 1;
    v29 = @"goforward.10";
    v20 = prerollAttributes;
    v19 = v166;
    v31 = v40;
    v32 = v156;
    v23 = v158;
    v25 = v162;
    v28 = v164;
    v33 = v160;
    v24 = v167;
    v16 = v154;
    v35 = v147;
  }

LABEL_50:
  v137 = v15;
  v159 = v23;
  v161 = v33;
  v163 = v25;
  v165 = v28;
  v155 = v16;
  v157 = v32;
  v138 = v34;
  v139 = v36;
  v141 = v31;
  v142 = v29;
  v143 = v30;
  v145 = v27;
  v146 = v26;
  v148 = v20;
  v168 = v37;
  v140 = v21 | v22 | v23 | v24 | v35 | v36;
  v66 = v24;
  v144 = _UISolariumEnabled();
  values2 = [(PGControlsViewModel *)self values];
  v68 = [MEMORY[0x1E696AD98] numberWithInteger:v149];
  [values2 setValue:v68 forKey:@"contentType"];

  values3 = [(PGControlsViewModel *)self values];
  v70 = [MEMORY[0x1E696AD98] numberWithBool:v152];
  [values3 setValue:v70 forKey:@"controlsShouldAutoHide"];

  values4 = [(PGControlsViewModel *)self values];
  [values4 setValue:v170 forKey:@"restoreButtonAccessibilityIdentifier"];

  values5 = [(PGControlsViewModel *)self values];
  [values5 setValue:v169 forKey:@"cancelButtonAccessibilityIdentifier"];

  values6 = [(PGControlsViewModel *)self values];
  [values6 setValue:v19 forKey:@"actionButtonAccessibilityIdentifier"];

  values7 = [(PGControlsViewModel *)self values];
  v150 = v18;
  [values7 setValue:v18 forKey:@"skipBackButtonAccessibilityIdentifier"];

  values8 = [(PGControlsViewModel *)self values];
  [values8 setValue:v17 forKey:@"skipForwardButtonAccessibilityIdentifier"];

  values9 = [(PGControlsViewModel *)self values];
  v77 = [MEMORY[0x1E696AD98] numberWithBool:v35];
  [values9 setValue:v77 forKey:@"includesLiveIndicatorBadge"];

  values10 = [(PGControlsViewModel *)self values];
  v79 = [MEMORY[0x1E696AD98] numberWithBool:v22];
  [values10 setValue:v79 forKey:@"includesRestoreButton"];

  values11 = [(PGControlsViewModel *)self values];
  v81 = [MEMORY[0x1E696AD98] numberWithBool:v21];
  [values11 setValue:v81 forKey:@"includesCancelButton"];

  values12 = [(PGControlsViewModel *)self values];
  v83 = [MEMORY[0x1E696AD98] numberWithBool:v159 & 1];
  [values12 setValue:v83 forKey:@"includesActionButton"];

  values13 = [(PGControlsViewModel *)self values];
  v85 = [MEMORY[0x1E696AD98] numberWithBool:v66];
  [values13 setValue:v85 forKey:@"includesSkipBackButton"];

  values14 = [(PGControlsViewModel *)self values];
  v87 = [MEMORY[0x1E696AD98] numberWithBool:v66];
  [values14 setValue:v87 forKey:@"includesSkipForwardButton"];

  values15 = [(PGControlsViewModel *)self values];
  v89 = [MEMORY[0x1E696AD98] numberWithBool:v163];
  [values15 setValue:v89 forKey:@"includesContentLoadingIndicator"];

  values16 = [(PGControlsViewModel *)self values];
  v91 = [MEMORY[0x1E696AD98] numberWithBool:v165];
  [values16 setValue:v91 forKey:@"includesWaitingToPlayIndicator"];

  values17 = [(PGControlsViewModel *)self values];
  v93 = [MEMORY[0x1E696AD98] numberWithBool:v161];
  [values17 setValue:v93 forKey:@"isSkipBackButtonEnabled"];

  values18 = [(PGControlsViewModel *)self values];
  v95 = [MEMORY[0x1E696AD98] numberWithBool:v153 & 1];
  [values18 setValue:v95 forKey:@"isActionButtonEnabled"];

  values19 = [(PGControlsViewModel *)self values];
  v97 = [MEMORY[0x1E696AD98] numberWithBool:v157];
  [values19 setValue:v97 forKey:@"isSkipForwardButtonEnabled"];

  values20 = [(PGControlsViewModel *)self values];
  v99 = [MEMORY[0x1E696AD98] numberWithBool:v155];
  [values20 setValue:v99 forKey:@"includesSingleTapGestureRecognizer"];

  values21 = [(PGControlsViewModel *)self values];
  v101 = [MEMORY[0x1E696AD98] numberWithBool:v138];
  [values21 setValue:v101 forKey:@"includesDoubleTapGestureRecognizer"];

  values22 = [(PGControlsViewModel *)self values];
  v103 = [MEMORY[0x1E696AD98] numberWithBool:v138];
  [values22 setValue:v103 forKey:@"includesDoubleDoubleTapGestureRecognizer"];

  values23 = [(PGControlsViewModel *)self values];
  v105 = [MEMORY[0x1E696AD98] numberWithBool:v139];
  [values23 setValue:v105 forKey:@"includesProgressBar"];

  values24 = [(PGControlsViewModel *)self values];
  v107 = [MEMORY[0x1E696AD98] numberWithBool:v140 & 1];
  [values24 setValue:v107 forKey:@"includesDimmingView"];

  values25 = [(PGControlsViewModel *)self values];
  v109 = [MEMORY[0x1E696AD98] numberWithBool:v168];
  [values25 setValue:v109 forKey:@"progressBarShouldUpdate"];

  values26 = [(PGControlsViewModel *)self values];
  [values26 setValue:v141 forKey:@"actionButtonSystemImageName"];

  values27 = [(PGControlsViewModel *)self values];
  [values27 setValue:v142 forKey:@"skipForwardButtonSystemImageName"];

  values28 = [(PGControlsViewModel *)self values];
  [values28 setValue:v143 forKey:@"skipBackButtonSystemImageName"];

  values29 = [(PGControlsViewModel *)self values];
  [values29 setValue:@"xmark" forKey:@"cancelButtonSystemImageName"];

  values30 = [(PGControlsViewModel *)self values];
  v115 = [MEMORY[0x1E696AD98] numberWithBool:v144];
  [values30 setValue:v115 forKey:@"controlsViewWantsGlassBackground"];

  values31 = [(PGControlsViewModel *)self values];
  [values31 setValue:v145 forKey:@"actionButtonImageTintColor"];

  values32 = [(PGControlsViewModel *)self values];
  [values32 setValue:v146 forKey:@"actionButtonBackgroundTintColor"];

  values33 = [(PGControlsViewModel *)self values];
  [values33 setValue:0 forKey:@"skipBackButtonImageTintColor"];

  values34 = [(PGControlsViewModel *)self values];
  [values34 setValue:0 forKey:@"skipBackButtonBackgroundTintColor"];

  values35 = [(PGControlsViewModel *)self values];
  [values35 setValue:0 forKey:@"skipForwardButtonImageTintColor"];

  values36 = [(PGControlsViewModel *)self values];
  [values36 setValue:0 forKey:@"skipForwardButtonBackgroundTintColor"];

  values37 = [(PGControlsViewModel *)self values];
  [values37 setValue:0 forKey:@"cancelButtonImageTintColor"];

  values38 = [(PGControlsViewModel *)self values];
  [values38 setValue:0 forKey:@"cancelButtonBackgroundTintColor"];

  values39 = [(PGControlsViewModel *)self values];
  [values39 setValue:v148 forKey:@"prerollAttributes"];

  values40 = [(PGControlsViewModel *)self values];
  v126 = [MEMORY[0x1E696AD98] numberWithBool:v144];
  [values40 setValue:v126 forKey:@"cancelButtonWantsBackground"];

  values41 = [(PGControlsViewModel *)self values];
  v128 = [MEMORY[0x1E696AD98] numberWithBool:v144];
  [values41 setValue:v128 forKey:@"restoreButtonWantsBackground"];

  values42 = [(PGControlsViewModel *)self values];
  v144 = [MEMORY[0x1E696AD98] numberWithBool:v137 | v144];
  [values42 setValue:v144 forKey:@"actionButtonsWantBackground"];

  values43 = [(PGControlsViewModel *)self values];
  [values43 setValue:0 forKey:@"cancelButtonCustomText"];

  values44 = [(PGControlsViewModel *)self values];
  [values44 setValue:0 forKey:@"cancelButtonCustomImage"];

  v133 = !v168 && self->_lastKnownElapsedTime != v8;
  self->_lastKnownElapsedTime = v8;
  values45 = [(PGControlsViewModel *)self values];
  v135 = [v151 isEqual:values45];

  if (!v135 || v133)
  {
    delegate = [(PGControlsViewModel *)self delegate];
    [delegate controlsViewModel:self valuesChangedFromOldValue:v151];
  }
}

- (PGControlsViewModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updatePlaybackStateWithDiff:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1BB282000, a2, OS_LOG_TYPE_DEBUG, "updatePlaybackStateWithDiff: %@", &v2, 0xCu);
}

- (void)updatePlaybackStateWithDiff:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 playbackState];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1BB282000, a2, OS_LOG_TYPE_DEBUG, "playback state after updates: %@", &v4, 0xCu);
}

@end
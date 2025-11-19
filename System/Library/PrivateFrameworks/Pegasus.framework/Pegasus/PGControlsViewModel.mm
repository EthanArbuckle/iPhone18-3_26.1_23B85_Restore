@interface PGControlsViewModel
- (BOOL)isPrerollSkippable;
- (PGControlsViewModel)init;
- (PGControlsViewModelDelegate)delegate;
- (double)preferredMinimumHeight;
- (double)preferredMinimumWidth;
- (int64_t)secondsUntilPrerollSkippable;
- (unint64_t)recommendedUpdateCadenceForProgressBarWithWidthInPixels:(double)a3;
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
- (void)setInActivitySession:(BOOL)a3;
- (void)setInterrupted:(BOOL)a3;
- (void)updatePlaybackStateWithDiff:(id)a3;
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

- (void)updatePlaybackStateWithDiff:(id)a3
{
  v4 = a3;
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(PGControlsViewModel *)v4 updatePlaybackStateWithDiff:v5];
  }

  v6 = [(PGControlsViewModel *)self playbackState];
  [v6 updatePlaybackStateWithDiff:v4];

  v7 = PGLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(PGControlsViewModel *)self updatePlaybackStateWithDiff:v7];
  }

  [(PGControlsViewModel *)self _updateViewModelValues];
}

- (void)setInterrupted:(BOOL)a3
{
  if (self->_interrupted != a3)
  {
    self->_interrupted = a3;
    [(PGControlsViewModel *)self _updateViewModelValues];
  }
}

- (void)setInActivitySession:(BOOL)a3
{
  if (self->_inActivitySession != a3)
  {
    self->_inActivitySession = a3;
    [(PGControlsViewModel *)self _updateViewModelValues];
  }
}

- (unint64_t)recommendedUpdateCadenceForProgressBarWithWidthInPixels:(double)a3
{
  v5 = [(PGControlsViewModel *)self values];
  v6 = [v5 progressBarShouldUpdate];

  if (!v6)
  {
    return 0;
  }

  v7 = [(PGControlsViewModel *)self playbackState];
  [v7 contentDuration];
  v9 = a3 / v8;

  return vcvtpd_u64_f64(v9);
}

- (void)handleActionButtonTapped
{
  v8 = [(PGControlsViewModel *)self playbackState];
  v3 = [v8 contentType];
  if ((v3 - 1) < 2)
  {
    v5 = [(PGControlsViewModel *)self playbackState];
    v6 = +[PGCommand commandForSetPlaying:](PGCommand, "commandForSetPlaying:", [v5 timeControlStatus] == 0);
    goto LABEL_8;
  }

  if (v3 == 3)
  {
    v5 = [(PGControlsViewModel *)self playbackState];
    v6 = +[PGCommand commandForSetMuted:](PGCommand, "commandForSetMuted:", [v5 isMuted] ^ 1);
LABEL_8:
    v4 = v6;

    if (!v4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v3 == 4)
  {
    v4 = +[PGCommand commandForSendActionButtonTapped];
    if (v4)
    {
LABEL_9:
      v7 = [(PGControlsViewModel *)self delegate];
      [v7 controlsViewModel:self didIssueCommand:v4];
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
  v3 = [(PGControlsViewModel *)self delegate];
  [v3 controlsViewModel:self didIssueCommand:v4];
}

- (void)handleDoubleTap
{
  v3 = [(PGControlsViewModel *)self values];
  v4 = [v3 includesDoubleTapGestureRecognizer];

  if (v4)
  {
    v6 = [(PGControlsViewModel *)self delegate];
    v5 = +[PGCommand commandForToggleZoom];
    [v6 controlsViewModel:self didIssueCommand:v5];
  }
}

- (void)handleSingleTap
{
  v7 = [(PGControlsViewModel *)self playbackState];
  v3 = [v7 contentType];
  if (v3 <= 6)
  {
    if (((1 << v3) & 0xE) != 0)
    {
      if ([(PGControlsViewModel *)self isInterrupted])
      {
        goto LABEL_11;
      }

      v4 = +[PGCommand commandForToggleControlsVisibility];
    }

    else
    {
      if (((1 << v3) & 0x31) != 0)
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
      v6 = [(PGControlsViewModel *)self delegate];
      [v6 controlsViewModel:self didIssueCommand:v5];
    }
  }

LABEL_11:
}

- (void)handleDoubleDoubleTap
{
  v3 = [(PGControlsViewModel *)self values];
  v4 = [v3 includesDoubleDoubleTapGestureRecognizer];

  if (v4)
  {
    v6 = [(PGControlsViewModel *)self delegate];
    v5 = +[PGCommand commandForRestoreFromPIP];
    [v6 controlsViewModel:self didIssueCommand:v5];
  }
}

- (void)handleRestoreButtonTapped
{
  v4 = [(PGControlsViewModel *)self delegate];
  v3 = +[PGCommand commandForRestoreFromPIP];
  [v4 controlsViewModel:self didIssueCommand:v3];
}

- (void)handleSkipBackButtonTapped
{
  v3 = [(PGControlsViewModel *)self playbackState];
  v4 = [v3 contentType];

  if (v4 == 4)
  {
    v11 = [(PGControlsViewModel *)self playbackState];
    v12 = [v11 supportsFaceTimeActions];

    if (!v12)
    {
      return;
    }

    v13 = [(PGControlsViewModel *)self playbackState];
    v16 = +[PGCommand commandForSetMicrophoneMuted:](PGCommand, "commandForSetMicrophoneMuted:", [v13 isMicrophoneMuted] ^ 1);

    v10 = v16;
    if (!v16)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v4 != 2)
  {
    if (v4 != 1)
    {
      return;
    }

    v5 = [(PGControlsViewModel *)self playbackState];
    v6 = [v5 requiresLinearPlayback];

    if (v6)
    {
      return;
    }

    goto LABEL_8;
  }

  v15 = [(PGControlsViewModel *)self playbackState];
  if (([v15 requiresLinearPlayback] & 1) == 0)
  {
    v7 = [(PGControlsViewModel *)self playbackState];
    [v7 contentDuration];
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
    v15 = v10;
    v14 = [(PGControlsViewModel *)self delegate];
    [v14 controlsViewModel:self didIssueCommand:v15];
  }
}

- (void)handleSkipForwardButtonTapped
{
  v3 = [(PGControlsViewModel *)self playbackState];
  v4 = [v3 contentType];

  if (v4 != 4)
  {
    if (v4 != 2)
    {
      if (v4 != 1)
      {
        return;
      }

      v5 = [(PGControlsViewModel *)self playbackState];
      v6 = [v5 requiresLinearPlayback];

      if (v6)
      {
        return;
      }

      goto LABEL_13;
    }

    v7 = [(PGControlsViewModel *)self playbackState];
    if ([v7 requiresLinearPlayback])
    {
    }

    else
    {
      v10 = [(PGControlsViewModel *)self playbackState];
      [v10 contentDuration];
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
    v16 = v13;
    v14 = [(PGControlsViewModel *)self delegate];
    [v14 controlsViewModel:self didIssueCommand:v16];

    goto LABEL_17;
  }

  v16 = [(PGControlsViewModel *)self playbackState];
  if ([v16 supportsFaceTimeActions])
  {
    if ([(PGControlsViewModel *)self isInterrupted])
    {
      v8 = [(PGControlsViewModel *)self playbackState];
      v9 = [v8 isCameraActive];

      if (!v9)
      {
        return;
      }
    }

    else
    {
    }

    v15 = [(PGControlsViewModel *)self playbackState];
    v17 = +[PGCommand commandForSetCameraEnabled:](PGCommand, "commandForSetCameraEnabled:", [v15 isCameraActive] ^ 1);

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
    v4 = [(PGControlsViewModel *)self delegate];
    v3 = +[PGCommand commandForSkipPreroll];
    [v4 controlsViewModel:self didIssueCommand:v3];
  }
}

- (int64_t)secondsUntilPrerollSkippable
{
  v3 = [(PGControlsViewModel *)self values];
  v4 = [v3 prerollAttributes];
  [v4 requiredLinearPlaybackEndTime];
  v6 = v5;
  v7 = v5;

  v8 = (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  v9 = [(PGControlsViewModel *)self values];
  LODWORD(v4) = [v9 isPrerollActive];

  if (!v4 || !v8)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = [(PGControlsViewModel *)self playbackState];
  [v10 elapsedTime];
  v12 = v6 - v11;

  v13 = vcvtpd_s64_f64(v12);
  return v13 & ~(v13 >> 63);
}

- (BOOL)isPrerollSkippable
{
  v3 = [(PGControlsViewModel *)self values];
  if ([v3 isPrerollActive])
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
  v2 = [(PGControlsViewModel *)self playbackState];
  v3 = [v2 contentType];

  if ((v3 - 1) > 3)
  {
    return 128.0;
  }

  else
  {
    return dbl_1BB2CC5C8[v3 - 1];
  }
}

- (double)preferredMinimumHeight
{
  v2 = [(PGControlsViewModel *)self values];
  if ([v2 controlsViewWantsGlassBackground])
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
  v171 = [(PGControlsViewModel *)self playbackState];
  v3 = [(PGControlsViewModel *)self values];
  v4 = [v3 copy];

  [v171 contentDuration];
  v6 = v5;
  [v171 elapsedTime];
  v8 = v7;
  v9 = [v171 requiresLinearPlayback];
  v10 = [v171 isMuted];
  v11 = [(PGControlsViewModel *)self isInterrupted];
  v12 = [v171 contentType];
  v13 = [v171 timeControlStatus];
  v170 = PGLocalizedString(@"RESTORE_FULLSCREEN");
  v169 = PGLocalizedString(@"CLOSE_PIP");
  v14 = v12;
  v15 = 0;
  v149 = v12;
  v151 = v4;
  if (v12 > 2)
  {
    if (v12 == 6)
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
        if (v10)
        {
          v41 = [MEMORY[0x1E69DC888] whiteColor];
          v42 = 0;
        }

        else
        {
          v41 = [MEMORY[0x1E69DC888] blackColor];
          v42 = [MEMORY[0x1E69DC888] systemYellowColor];
        }

        v50 = v42;
        v51 = v41;
        v52 = [(PGControlsViewModel *)self playbackState];
        v53 = [v52 cameraHasMicrophone];

        if ([v171 isMuted])
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
        v23 = v53;
      }
    }
  }

  else
  {
    if (v12 == 1)
    {
      v43 = v6 == 0.0 && !self->_hasBegun;
      v44 = [(PGControlsViewModel *)self isInterrupted];
      v45 = [v171 prerollAttributes];
      v46 = (v6 > 0.0) & ~(v43 | v9);
      if (v45)
      {
        v46 = 0;
      }

      v167 = v46;
      v47 = v46 & ~v11;
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

      [v171 hasInvalidTiming];
      if (v11)
      {
        v40 = @"play.slash.fill";
      }

      else
      {
        v55 = @"pause.fill";
        if (!v13)
        {
          v55 = @"play.fill";
        }

        v40 = v55;
      }

      v158 = !v43;
      v153 = (v11 | v43) ^ 1;
      v56 = v43;
      v57 = (v13 == 1) & ~v44;
      v58 = PGLocalizedString(@"SKIP_FORWARD_10_SECONDS");
      v18 = PGLocalizedString(@"SKIP_BACK_10_SECONDS");
      v162 = v56;
      v164 = v57;
      v59 = v49;
      if (v13)
      {
        v166 = PGLocalizedString(@"PAUSE");
        v60 = (v56 | v57) ^ 1;
        if (v13 != 2)
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
      v61 = [(PGControlsViewModel *)self isInterrupted];
      v15 = 0;
      v16 = !v61;
      if (v6 <= 0.0)
      {
        v26 = 0;
        v27 = 0;
        v30 = @"gobackward.10";
        v20 = v45;
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

      v154 = !v61;
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

      v164 = (v13 == 1) & ~[(PGControlsViewModel *)self isInterrupted:1];
      v38 = PGLocalizedString(@"SKIP_FORWARD_10_SECONDS");
      PGLocalizedString(@"SKIP_BACK_10_SECONDS");
      v39 = ((v11 | v9) & 1) == 0;
      v153 = v11 ^ 1;
      v18 = v152 = v13 == 2;
      v17 = v38;
      if (v11)
      {
        v166 = 0;
        v40 = @"play.slash.fill";
      }

      else if (v13)
      {
        if (v9)
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

      v45 = 0;
      v162 = 0;
      v154 = ![(PGControlsViewModel *)self isInterrupted];
      v158 = 1;
      v167 = 1;
      v160 = ((v11 | v9) & 1) == 0;
      v147 = 1;
    }

    v156 = v39;
    v62 = [(PGControlsViewModel *)self playbackState];
    v63 = [v62 hasInvalidTiming];

    if (v63)
    {
      v15 = 0;
      v26 = 0;
      v27 = 0;
      v37 = 0;
    }

    else
    {
      v64 = [(PGControlsViewModel *)self playbackState];
      v65 = [v64 timeControlStatus] == 2;

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
    v20 = v45;
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
  v67 = [(PGControlsViewModel *)self values];
  v68 = [MEMORY[0x1E696AD98] numberWithInteger:v149];
  [v67 setValue:v68 forKey:@"contentType"];

  v69 = [(PGControlsViewModel *)self values];
  v70 = [MEMORY[0x1E696AD98] numberWithBool:v152];
  [v69 setValue:v70 forKey:@"controlsShouldAutoHide"];

  v71 = [(PGControlsViewModel *)self values];
  [v71 setValue:v170 forKey:@"restoreButtonAccessibilityIdentifier"];

  v72 = [(PGControlsViewModel *)self values];
  [v72 setValue:v169 forKey:@"cancelButtonAccessibilityIdentifier"];

  v73 = [(PGControlsViewModel *)self values];
  [v73 setValue:v19 forKey:@"actionButtonAccessibilityIdentifier"];

  v74 = [(PGControlsViewModel *)self values];
  v150 = v18;
  [v74 setValue:v18 forKey:@"skipBackButtonAccessibilityIdentifier"];

  v75 = [(PGControlsViewModel *)self values];
  [v75 setValue:v17 forKey:@"skipForwardButtonAccessibilityIdentifier"];

  v76 = [(PGControlsViewModel *)self values];
  v77 = [MEMORY[0x1E696AD98] numberWithBool:v35];
  [v76 setValue:v77 forKey:@"includesLiveIndicatorBadge"];

  v78 = [(PGControlsViewModel *)self values];
  v79 = [MEMORY[0x1E696AD98] numberWithBool:v22];
  [v78 setValue:v79 forKey:@"includesRestoreButton"];

  v80 = [(PGControlsViewModel *)self values];
  v81 = [MEMORY[0x1E696AD98] numberWithBool:v21];
  [v80 setValue:v81 forKey:@"includesCancelButton"];

  v82 = [(PGControlsViewModel *)self values];
  v83 = [MEMORY[0x1E696AD98] numberWithBool:v159 & 1];
  [v82 setValue:v83 forKey:@"includesActionButton"];

  v84 = [(PGControlsViewModel *)self values];
  v85 = [MEMORY[0x1E696AD98] numberWithBool:v66];
  [v84 setValue:v85 forKey:@"includesSkipBackButton"];

  v86 = [(PGControlsViewModel *)self values];
  v87 = [MEMORY[0x1E696AD98] numberWithBool:v66];
  [v86 setValue:v87 forKey:@"includesSkipForwardButton"];

  v88 = [(PGControlsViewModel *)self values];
  v89 = [MEMORY[0x1E696AD98] numberWithBool:v163];
  [v88 setValue:v89 forKey:@"includesContentLoadingIndicator"];

  v90 = [(PGControlsViewModel *)self values];
  v91 = [MEMORY[0x1E696AD98] numberWithBool:v165];
  [v90 setValue:v91 forKey:@"includesWaitingToPlayIndicator"];

  v92 = [(PGControlsViewModel *)self values];
  v93 = [MEMORY[0x1E696AD98] numberWithBool:v161];
  [v92 setValue:v93 forKey:@"isSkipBackButtonEnabled"];

  v94 = [(PGControlsViewModel *)self values];
  v95 = [MEMORY[0x1E696AD98] numberWithBool:v153 & 1];
  [v94 setValue:v95 forKey:@"isActionButtonEnabled"];

  v96 = [(PGControlsViewModel *)self values];
  v97 = [MEMORY[0x1E696AD98] numberWithBool:v157];
  [v96 setValue:v97 forKey:@"isSkipForwardButtonEnabled"];

  v98 = [(PGControlsViewModel *)self values];
  v99 = [MEMORY[0x1E696AD98] numberWithBool:v155];
  [v98 setValue:v99 forKey:@"includesSingleTapGestureRecognizer"];

  v100 = [(PGControlsViewModel *)self values];
  v101 = [MEMORY[0x1E696AD98] numberWithBool:v138];
  [v100 setValue:v101 forKey:@"includesDoubleTapGestureRecognizer"];

  v102 = [(PGControlsViewModel *)self values];
  v103 = [MEMORY[0x1E696AD98] numberWithBool:v138];
  [v102 setValue:v103 forKey:@"includesDoubleDoubleTapGestureRecognizer"];

  v104 = [(PGControlsViewModel *)self values];
  v105 = [MEMORY[0x1E696AD98] numberWithBool:v139];
  [v104 setValue:v105 forKey:@"includesProgressBar"];

  v106 = [(PGControlsViewModel *)self values];
  v107 = [MEMORY[0x1E696AD98] numberWithBool:v140 & 1];
  [v106 setValue:v107 forKey:@"includesDimmingView"];

  v108 = [(PGControlsViewModel *)self values];
  v109 = [MEMORY[0x1E696AD98] numberWithBool:v168];
  [v108 setValue:v109 forKey:@"progressBarShouldUpdate"];

  v110 = [(PGControlsViewModel *)self values];
  [v110 setValue:v141 forKey:@"actionButtonSystemImageName"];

  v111 = [(PGControlsViewModel *)self values];
  [v111 setValue:v142 forKey:@"skipForwardButtonSystemImageName"];

  v112 = [(PGControlsViewModel *)self values];
  [v112 setValue:v143 forKey:@"skipBackButtonSystemImageName"];

  v113 = [(PGControlsViewModel *)self values];
  [v113 setValue:@"xmark" forKey:@"cancelButtonSystemImageName"];

  v114 = [(PGControlsViewModel *)self values];
  v115 = [MEMORY[0x1E696AD98] numberWithBool:v144];
  [v114 setValue:v115 forKey:@"controlsViewWantsGlassBackground"];

  v116 = [(PGControlsViewModel *)self values];
  [v116 setValue:v145 forKey:@"actionButtonImageTintColor"];

  v117 = [(PGControlsViewModel *)self values];
  [v117 setValue:v146 forKey:@"actionButtonBackgroundTintColor"];

  v118 = [(PGControlsViewModel *)self values];
  [v118 setValue:0 forKey:@"skipBackButtonImageTintColor"];

  v119 = [(PGControlsViewModel *)self values];
  [v119 setValue:0 forKey:@"skipBackButtonBackgroundTintColor"];

  v120 = [(PGControlsViewModel *)self values];
  [v120 setValue:0 forKey:@"skipForwardButtonImageTintColor"];

  v121 = [(PGControlsViewModel *)self values];
  [v121 setValue:0 forKey:@"skipForwardButtonBackgroundTintColor"];

  v122 = [(PGControlsViewModel *)self values];
  [v122 setValue:0 forKey:@"cancelButtonImageTintColor"];

  v123 = [(PGControlsViewModel *)self values];
  [v123 setValue:0 forKey:@"cancelButtonBackgroundTintColor"];

  v124 = [(PGControlsViewModel *)self values];
  [v124 setValue:v148 forKey:@"prerollAttributes"];

  v125 = [(PGControlsViewModel *)self values];
  v126 = [MEMORY[0x1E696AD98] numberWithBool:v144];
  [v125 setValue:v126 forKey:@"cancelButtonWantsBackground"];

  v127 = [(PGControlsViewModel *)self values];
  v128 = [MEMORY[0x1E696AD98] numberWithBool:v144];
  [v127 setValue:v128 forKey:@"restoreButtonWantsBackground"];

  v129 = [(PGControlsViewModel *)self values];
  v130 = [MEMORY[0x1E696AD98] numberWithBool:v137 | v144];
  [v129 setValue:v130 forKey:@"actionButtonsWantBackground"];

  v131 = [(PGControlsViewModel *)self values];
  [v131 setValue:0 forKey:@"cancelButtonCustomText"];

  v132 = [(PGControlsViewModel *)self values];
  [v132 setValue:0 forKey:@"cancelButtonCustomImage"];

  v133 = !v168 && self->_lastKnownElapsedTime != v8;
  self->_lastKnownElapsedTime = v8;
  v134 = [(PGControlsViewModel *)self values];
  v135 = [v151 isEqual:v134];

  if (!v135 || v133)
  {
    v136 = [(PGControlsViewModel *)self delegate];
    [v136 controlsViewModel:self valuesChangedFromOldValue:v151];
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
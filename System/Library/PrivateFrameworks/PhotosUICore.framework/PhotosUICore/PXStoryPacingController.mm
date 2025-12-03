@interface PXStoryPacingController
- ($98F545CD36100C1EB7458A589033337F)currentPacingDecision;
- (PXStoryModel)model;
- (PXStoryPacingController)initWithModel:(id)model timeSource:(id)source cueSource:(id)cueSource;
- (PXStoryPacingController)initWithObservableModel:(id)model;
- (PXStoryPacingCueSource)cueSource;
- (id)diagnosticTextForHUDType:(int64_t)type;
- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size;
- (void)_handleTimelineDidChange;
- (void)_invalidateCanChangePlaybackTime;
- (void)_invalidateTargetEndTimeWithReason:(id)reason;
- (void)_updateCanChangePlaybackTime;
- (void)_updateTargetEndTime;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
- (void)configureUpdater:(id)updater;
- (void)handleModelChange:(unint64_t)change;
- (void)setCanChangePlaybackTime:(BOOL)time;
- (void)setCurrentPacingDecision:(id *)decision;
- (void)setIsActive:(BOOL)active;
- (void)setTargetEndTime:(id *)time;
- (void)timeSource:(id)source didIncrementByTime:(id *)time;
@end

@implementation PXStoryPacingController

- ($98F545CD36100C1EB7458A589033337F)currentPacingDecision
{
  v3 = *&self[1].var8.var1;
  *&retstr->var8.var3 = *&self[1].var7;
  *&retstr->var10 = v3;
  *&retstr->var11.var1 = *&self[1].var9;
  v4 = *&self[1].var4.var0.var3;
  *&retstr->var4.var1 = *&self[1].var4.var0.var0;
  *&retstr->var6.var0 = v4;
  v5 = *&self[1].var6.var1;
  *&retstr->var6.var3 = *&self[1].var5;
  *&retstr->var8.var0 = v5;
  v6 = *&self[1].var2.var0;
  *&retstr->var2.var1 = *&self[1].var1.var1.var1;
  *&retstr->var3.var0 = v6;
  v7 = *&self[1].var3.var1;
  *&retstr->var3.var3 = *&self[1].var2.var3;
  *&retstr->var4.var0.var1 = v7;
  v8 = *&self->var11.var3;
  *&retstr->var0 = *&self->var11.var0;
  *&retstr->var1.var0.var1 = v8;
  v9 = *&self[1].var1.var0.var3;
  *&retstr->var1.var1.var0 = *&self[1].var1.var0.var0;
  *&retstr->var1.var1.var3 = v9;
  return self;
}

- (PXStoryPacingCueSource)cueSource
{
  WeakRetained = objc_loadWeakRetained(&self->_cueSource);

  return WeakRetained;
}

- (PXStoryModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  containerCopy = container;
  pacingDecisionHistory = [(PXStoryPacingController *)self pacingDecisionHistory];
  v5 = [pacingDecisionHistory descriptionWithShortStyle:0];
  [containerCopy addAttachmentWithText:v5 name:@"PacingDecisions"];
}

- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  cueSource = [(PXStoryPacingController *)self cueSource];
  v9 = cueSource;
  if (cueSource)
  {
    audioCueSource = [cueSource audioCueSource];
    isEmpty = [audioCueSource isEmpty];

    if ((isEmpty & 1) == 0)
    {
      v38 = 0uLL;
      v39 = 0;
      [v9 currentTime];
      pacingDecisionHistory = [(PXStoryPacingController *)self pacingDecisionHistory];
      v13 = pacingDecisionHistory;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(v30, 0, sizeof(v30));
      if (pacingDecisionHistory)
      {
        v25 = v38;
        *&v26 = v39;
        [pacingDecisionHistory firstPacingDecisionAfterTime:&v25];
        v14 = v36;
        if (v36 > 0xAu)
        {
          v15 = @"??";
LABEL_9:
          v16 = v15;
          [v7 appendFormat:@"Transition: %@", v16];

          if (v31 > 4)
          {
            v17 = @"Unspecified";
          }

          else
          {
            v17 = off_1E772DC08[v31];
          }

          v18 = v17;
          [v7 appendFormat:@"\n       Cue: %@", v18];

          v29 = v33;
          v25 = *(v30 + 8);
          v26 = *(&v30[1] + 8);
          v27 = *(&v30[2] + 8);
          v28 = v32;
          v19 = [v9 diagnosticCueStringForSize:&v28 withIndicatorTime:&v25 rangeIndicatorTimeRange:{width, height}];
          [v7 appendFormat:@"\n%@\n", v19];

          if (v13)
          {
            [v13 currentError];
          }

          else
          {
            v25 = 0uLL;
            *&v26 = 0;
          }

          v20 = PXStoryTimeDescription(&v25);
          [v7 appendFormat:@"\n Overall Time Error: %@\n", v20];

          onBarCount = [v13 onBarCount];
          decisionCount = [v13 decisionCount];
          [v13 onBarPercentage];
          [v7 appendFormat:@"Transitions on bars: %ld / %ld (%.0f%%)\n\n", onBarCount, decisionCount, v23];

          goto LABEL_16;
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = off_1E7740168[v14];
      goto LABEL_9;
    }
  }

  [v7 appendString:@"\n No Cues Found"];
LABEL_16:

  return v7;
}

- (void)handleModelChange:(unint64_t)change
{
  v6.receiver = self;
  v6.super_class = PXStoryPacingController;
  [(PXStoryController *)&v6 handleModelChange:?];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__PXStoryPacingController_handleModelChange___block_invoke;
  v5[3] = &unk_1E7748690;
  v5[4] = self;
  v5[5] = change;
  [(PXStoryController *)self performChanges:v5];
}

void __45__PXStoryPacingController_handleModelChange___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ((*(a1 + 40) & 0x9862421400ALL) != 0)
  {
    [*(a1 + 32) _invalidateCanChangePlaybackTime];
  }

  v3 = [*(a1 + 32) model];
  v4 = [v3 changesOrigins];
  v5 = [*(a1 + 32) modelChangeOrigin];
  v6 = [v4 containsObject:v5];

  if ((v6 & 1) == 0)
  {
    v7 = *(a1 + 40);
    if ((v7 & 0x20) != 0)
    {
      [*(a1 + 32) _invalidateTargetEndTimeWithReason:@"Segment Changed"];
    }

    else if ((v7 & 0x10) != 0)
    {
      [*(a1 + 32) _handleTimelineDidChange];
    }
  }
}

- (void)_handleTimelineDidChange
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __51__PXStoryPacingController__handleTimelineDidChange__block_invoke;
  v2[3] = &unk_1E7748668;
  v2[4] = self;
  [(PXStoryController *)self performChanges:v2];
}

uint64_t __51__PXStoryPacingController__handleTimelineDidChange__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTimelineVersion:{objc_msgSend(*(a1 + 32), "timelineVersion") + 1}];
  v2 = *(a1 + 32);

  return [v2 _invalidateTargetEndTimeWithReason:@"Timeline Changed"];
}

- (void)_updateCanChangePlaybackTime
{
  model = [(PXStoryPacingController *)self model];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PXStoryPacingController__updateCanChangePlaybackTime__block_invoke;
  aBlock[3] = &unk_1E7748620;
  aBlock[4] = self;
  v4 = model;
  v14 = v4;
  v5 = _Block_copy(aBlock);
  readinessStatus = [v4 readinessStatus];
  v7 = readinessStatus < 3;
  v8 = v5[2](v5, v7 & (3u >> (readinessStatus & 7)));
  [(PXStoryPacingController *)self setCanChangePlaybackTime:v5[2](v5, v7)];
  model2 = [(PXStoryPacingController *)self model];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__PXStoryPacingController__updateCanChangePlaybackTime__block_invoke_2;
  v11[3] = &__block_descriptor_33_e31_v16__0___PXStoryMutableModel__8l;
  v12 = v8;
  modelChangeOrigin = [(PXStoryPacingController *)self modelChangeOrigin];
  [model2 performChanges:v11 origin:modelChangeOrigin];
}

uint64_t __55__PXStoryPacingController__updateCanChangePlaybackTime__block_invoke(uint64_t a1, int a2)
{
  v4 = +[PXStorySettings sharedInstance];
  if (([*(a1 + 32) isActive] & 1) == 0)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = "!self.isActive";
    goto LABEL_7;
  }

  if ([*(a1 + 40) desiredPlayState] != 1)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = "model.desiredPlayState != PXStoryDesiredPlayStatePlaying";
    goto LABEL_7;
  }

  if ([*(a1 + 40) isScrolling])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = "model.isScrolling";
LABEL_7:
    v7 = [v5 stringWithUTF8String:v6];
    [*(a1 + 32) setReasonPreventingPlaybackTimeChange:v7];

    v8 = 0;
    goto LABEL_8;
  }

  if ([*(a1 + 40) inLiveResize])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = "model.inLiveResize";
    goto LABEL_7;
  }

  if ([v4 playbackShouldWaitForBufferingToBeReady] && a2)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = "isBuffering";
    goto LABEL_7;
  }

  v10 = [*(a1 + 40) viewMode];
  if ([*(a1 + 40) viewMode] == 4)
  {
    v11 = [v4 shouldPauseInStyleSwitcher] ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = [*(a1 + 40) viewMode];
  if (v10 != 1 && (v11 & 1) == 0 && v12 != 5)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = "!isFullScreen && !isStyleSwitcher && !isMiniPlayer";
    goto LABEL_7;
  }

  if ([*(a1 + 40) isTouching])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = "model.isTouching";
    goto LABEL_7;
  }

  if ([*(a1 + 40) isPerformingViewControllerTransition])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = "model.isPerformingViewControllerTransition";
    goto LABEL_7;
  }

  v13 = *(a1 + 40);
  v16 = 0;
  v14 = [v13 checkIfShouldPreventAdvancingAndReturnReason:&v16];
  if (v14)
  {
    v15 = v16;
  }

  else
  {
    v15 = 0;
  }

  [*(a1 + 32) setReasonPreventingPlaybackTimeChange:v15];
  v8 = v14 ^ 1u;
LABEL_8:

  return v8;
}

- (void)_invalidateCanChangePlaybackTime
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateCanChangePlaybackTime];
}

- (void)_updateTargetEndTime
{
  model = [(PXStoryPacingController *)self model];
  v4 = model;
  memset(&v16, 0, sizeof(v16));
  if (model)
  {
    [model nominalPlaybackTime];
  }

  timeline = [v4 timeline];
  v6 = timeline;
  if (timeline)
  {
    [timeline timeRange];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v13 = 0u;
  }

  v15 = *(v14 + 8);

  memset(&v12, 0, sizeof(v12));
  rhs = v16;
  lhs = v15;
  CMTimeSubtract(&v12, &lhs, &rhs);
  memset(&v11, 0, sizeof(v11));
  cueSource = [(PXStoryPacingController *)self cueSource];
  v8 = cueSource;
  if (cueSource)
  {
    [cueSource currentTime];
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
  }

  if ((v11.flags & 0x1D) == 1)
  {
    lhs = v11;
    rhs = v12;
    CMTimeAdd(&v10, &lhs, &rhs);
    *&lhs.value = *&v10.value;
    epoch = v10.epoch;
  }

  else
  {
    *&lhs.value = *MEMORY[0x1E6960C70];
    epoch = *(MEMORY[0x1E6960C70] + 16);
  }

  lhs.epoch = epoch;
  [(PXStoryPacingController *)self setTargetEndTime:&lhs];
}

- (void)_invalidateTargetEndTimeWithReason:(id)reason
{
  v4 = [reason copy];
  [(PXStoryPacingController *)self setTargetEndUpdateReason:v4];

  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateTargetEndTime];
}

- (void)timeSource:(id)source didIncrementByTime:(id *)time
{
  v107 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  model = [(PXStoryPacingController *)self model];
  currentSegmentIdentifier = [model currentSegmentIdentifier];
  memset(&v91[1], 0, sizeof(CMTime));
  if (model)
  {
    [model timeIntoCurrentSegment];
  }

  v8 = +[PXStorySettings sharedInstance];
  v91[0] = v91[1];
  v89 = 0uLL;
  v90 = 0;
  if (model)
  {
    [model timeLeftInCurrentSegment];
  }

  if ([(PXStoryPacingController *)self canChangePlaybackTime])
  {
    timeline = [model timeline];
    timelineVersion = [(PXStoryPacingController *)self timelineVersion];
    *lhs = v91[0];
    *rhs = *&time->var0;
    *&rhs[16] = time->var3;
    CMTimeAdd(time2, lhs, rhs);
    v91[0] = *time2;
    cueSource = [(PXStoryPacingController *)self cueSource];
    memset(v88, 0, sizeof(v88));
    v87 = 0u;
    v86 = 0u;
    memset(v85, 0, sizeof(v85));
    v84 = 0u;
    memset(rhs, 0, sizeof(rhs));
    [(PXStoryPacingController *)self currentPacingDecision];
    if (*rhs == currentSegmentIdentifier)
    {
      if (cueSource)
      {
        v104 = v87;
        v105 = v88[0];
        v106 = v88[1];
        v100 = v85[2];
        v101 = v85[3];
        v103 = v86;
        v102 = v85[4];
        v96 = *&rhs[64];
        v97 = v84;
        v99 = v85[1];
        v98 = v85[0];
        *lhs = *rhs;
        *&lhs[16] = *&rhs[16];
        v95 = *&rhs[48];
        v94 = *&rhs[32];
        if (!PXStoryPacingDecisionEqualToPacingDecision(lhs, &PXStoryPacingDecisionNull))
        {
          if ([sourceCopy isRealTime])
          {
            if ([v8 adjustToWallClockTime])
            {
              Current = CFAbsoluteTimeGetCurrent();
              memset(v51, 0, 24);
              CMTimeMakeWithSeconds(v42, Current - *(&v85[4] + 1), 600);
              *lhs = v86;
              *&lhs[16] = v87;
              *time2 = *v42;
              *&time2[16] = *&v42[16];
              CMTimeAdd(v51, lhs, time2);
              *lhs = *v51;
              *&lhs[16] = *&v51[16];
              *time2 = v91[0];
              if (!PXStoryTimeApproximatelyEqualToTime(lhs, time2))
              {
                memset(v42, 0, 24);
                *lhs = *v51;
                *&lhs[16] = *&v51[16];
                *time2 = v91[0];
                CMTimeSubtract(v42, lhs, time2);
                v12 = [(PXStoryPacingController *)self log];
                v13 = os_signpost_id_make_with_pointer(v12, self);
                if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v14 = v13;
                  if (os_signpost_enabled(v12))
                  {
                    v30 = v14;
                    logContext = [(PXStoryPacingController *)self logContext];
                    *lhs = *v42;
                    *&lhs[16] = *&v42[16];
                    v32 = PXStoryTimeDescription(lhs);
                    *lhs = v91[0];
                    v31 = PXStoryTimeDescription(lhs);
                    *lhs = *v51;
                    *&lhs[16] = *&v51[16];
                    v15 = PXStoryTimeDescription(lhs);
                    *lhs = 134218754;
                    *&lhs[4] = logContext;
                    *&lhs[12] = 2114;
                    *&lhs[14] = v32;
                    *&lhs[22] = 2114;
                    *&lhs[24] = v31;
                    LOWORD(v94) = 2114;
                    *(&v94 + 2) = v15;
                    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_EVENT, v30, "PXStoryPacingController.adjustTimeIntoSegment", "Context=%{signpost.telemetry:string2}lu Adjustment=%{signpost.description:attribute,public}@ NewTime=%{signpost.description:attribute,public}@ WallClockTime=%{signpost.description:attribute,public}@ ", lhs, 0x2Au);
                  }
                }

                v16 = PLStoryGetLog();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
                {
                  *lhs = *v42;
                  *&lhs[16] = *&v42[16];
                  v17 = PXStoryTimeDescription(lhs);
                  *lhs = 138412290;
                  *&lhs[4] = v17;
                  _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEBUG, "[Pacing] Compensating for apparent main queue lag. Adjusting current time into segment by %@", lhs, 0xCu);
                }

                v91[0] = *v51;
              }
            }
          }
        }
      }
    }

    else
    {
      if (timeline)
      {
        [timeline timeRangeForSegmentWithIdentifier:currentSegmentIdentifier];
      }

      else
      {
        v81 = 0u;
        memset(v82, 0, sizeof(v82));
      }

      v79 = *(v82 + 8);
      v80 = *(&v82[1] + 1);
      v77 = *(v82 + 8);
      v78 = *(&v82[1] + 1);
      v18 = CFAbsoluteTimeGetCurrent();
      v76 = v91[0];
      timelineVersion2 = [(PXStoryPacingController *)self timelineVersion];
      v75 = 0;
      *&v74[3] = PXStoryTimeZero;
      memset(&rhs[8], 0, 48);
      *&rhs[56] = v79;
      *rhs = currentSegmentIdentifier;
      *&rhs[72] = v80;
      v84 = v77;
      *&v85[0] = v78;
      memset(v85 + 8, 0, 64);
      *(&v85[4] + 1) = v18;
      v86 = *&v76.value;
      *&v87 = v76.epoch;
      *(&v87 + 1) = timelineVersion2;
      LOBYTE(v88[0]) = 0;
      *(v88 + 1) = *v74;
      *(v88 + 12) = *(&PXStoryTimeZero + 1);
    }

    *lhs = v91[0];
    *time2 = v84;
    *&time2[16] = *&v85[0];
    if (CMTimeCompare(lhs, time2) >= 1 && ([model shouldPauseTransitions] & 1) == 0)
    {
      memset(v51, 0, 24);
      *lhs = v91[0];
      *time2 = v84;
      *&time2[16] = *&v85[0];
      CMTimeSubtract(v51, lhs, time2);
      *lhs = *v51;
      *&lhs[16] = *&v51[16];
      currentSegmentIdentifier = [timeline identifierForSegmentWithOffset:lhs fromEndOfSegmentWithIdentifier:currentSegmentIdentifier timeIntoSegment:v91];
    }

    cuesVersion = [cueSource cuesVersion];
    if (*rhs == currentSegmentIdentifier && *(&v85[2] + 1) == cuesVersion && *(&v87 + 1) == timelineVersion)
    {
      *(&v88[1] + 4) = 0;
      *(v88 + 4) = PXStoryTimeZero;
    }

    else
    {
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      if (timeline)
      {
        [timeline timeRangeForSegmentWithIdentifier:currentSegmentIdentifier];
      }

      v67 = 0;
      v68 = &v67;
      v69 = 0x2020000000;
      v70 = 0;
      v65[0] = 0;
      v65[1] = v65;
      v65[2] = 0x2020000000;
      v66 = 0;
      v61 = 0;
      v62 = &v61;
      v63 = 0x2020000000;
      v64 = 0;
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __57__PXStoryPacingController_timeSource_didIncrementByTime___block_invoke;
      v60[3] = &unk_1E77485D8;
      v60[4] = &v67;
      v60[5] = &v61;
      v60[6] = v65;
      *lhs = v71;
      *&lhs[16] = v72;
      v94 = v73;
      [timeline enumerateClipsInTimeRange:lhs rect:v60 usingBlock:{*MEMORY[0x1E695F040], *(MEMORY[0x1E695F040] + 8), *(MEMORY[0x1E695F040] + 16), *(MEMORY[0x1E695F040] + 24)}];
      v58 = 0u;
      memset(v59, 0, sizeof(v59));
      memset(time2, 0, sizeof(time2));
      if (timeline)
      {
        [timeline infoForSegmentWithIdentifier:currentSegmentIdentifier];
        v21 = v59[0];
      }

      else
      {
        v21 = 0;
      }

      v54 = *&v59[104];
      v55 = *&v59[120];
      v56 = *&v59[136];
      *v51 = *&v59[40];
      *&v51[16] = *&v59[56];
      v52 = *&v59[72];
      v53 = *&v59[88];
      v49 = *&v59[4];
      v50 = *&v59[20];
      if (*(v68 + 24) == 1)
      {
        v22 = [timeline clipWithIdentifier:v62[3]];
        v94 = 0u;
        memset(lhs, 0, sizeof(lhs));
        *v42 = v71;
        *&v42[16] = v72;
        v43 = v73;
        PXStoryClipSegmentPlaybackTimeRangeIncludingJLCuts(v22, v42, 0, lhs);
        *v42 = v53;
        *&v42[16] = v54;
        v92 = *lhs;
        CMTimeSubtract(&v48, v42, &v92);
        v53 = *&v48.value;
        *&v54 = v48.epoch;
      }

      memset(&v92, 0, sizeof(v92));
      v23 = +[PXStoryTransitionsSettings sharedInstance];
      [v23 cueAlignmentForTransitionKind:v21];
      *lhs = v49;
      *&lhs[16] = v50;
      CMTimeMultiplyByFloat64(&v92, lhs, v24);

      if ([v8 useMusicCuesForPacing])
      {
        v25 = cueSource;
      }

      else
      {
        v25 = 0;
      }

      timeSource = [(PXStoryPacingController *)self timeSource];
      isRealTime = [timeSource isRealTime];
      v45 = v54;
      v46 = v55;
      *v42 = *v51;
      *&v42[16] = *&v51[16];
      v43 = v52;
      v44 = v53;
      v47 = v56;
      v48 = v91[0];
      v41 = v92;
      PXStoryPacingControllerGeneratePacingDecision(currentSegmentIdentifier, v42, &v48, &v41, v25, timelineVersion, isRealTime, lhs);
      v87 = v104;
      v88[0] = v105;
      v88[1] = v106;
      v85[2] = v100;
      v85[3] = v101;
      v86 = v103;
      v85[4] = v102;
      *&rhs[64] = v96;
      v84 = v97;
      v85[1] = v99;
      v85[0] = v98;
      *rhs = *lhs;
      *&rhs[16] = *&lhs[16];
      *&rhs[48] = v95;
      *&rhs[32] = v94;

      LOBYTE(v88[0]) = v21;
      *(&v88[1] + 4) = 0;
      *(v88 + 4) = PXStoryTimeZero;
      _Block_object_dispose(&v61, 8);
      _Block_object_dispose(v65, 8);
      _Block_object_dispose(&v67, 8);
    }

    *lhs = v84;
    *&lhs[16] = *&v85[0];
    *time2 = v91[0];
    CMTimeSubtract(v51, lhs, time2);
    v89 = *v51;
    v90 = *&v51[16];
    v104 = v87;
    v105 = v88[0];
    v106 = v88[1];
    v100 = v85[2];
    v101 = v85[3];
    v103 = v86;
    v102 = v85[4];
    v96 = *&rhs[64];
    v97 = v84;
    v99 = v85[1];
    v98 = v85[0];
    *lhs = *rhs;
    *&lhs[16] = *&rhs[16];
    v95 = *&rhs[48];
    v94 = *&rhs[32];
    [(PXStoryPacingController *)self setCurrentPacingDecision:lhs];
  }

  memset(time2, 0, 24);
  if (model)
  {
    [model elapsedTime];
  }

  *lhs = *time2;
  *&lhs[16] = *&time2[16];
  *rhs = *&time->var0;
  *&rhs[16] = time->var3;
  CMTimeAdd(v51, lhs, rhs);
  *time2 = *v51;
  *&time2[16] = *&v51[16];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __57__PXStoryPacingController_timeSource_didIncrementByTime___block_invoke_2;
  v35[3] = &__block_descriptor_112_e31_v16__0___PXStoryMutableModel__8l;
  v36 = *v51;
  v37 = *&v51[16];
  v35[4] = currentSegmentIdentifier;
  v38 = v91[0];
  v40 = v90;
  v39 = v89;
  modelChangeOrigin = [(PXStoryPacingController *)self modelChangeOrigin];
  [model performChanges:v35 origin:modelChangeOrigin];
}

void *__57__PXStoryPacingController_timeSource_didIncrementByTime___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 >= 1)
  {
    do
    {
      v5 = a5[19];
      if ((v5 - 3) <= 1 && (*(*(result[4] + 8) + 24) & 1) == 0)
      {
        *(*(result[5] + 8) + 24) = *a5;
        *(*(result[4] + 8) + 24) = 1;
      }

      *(*(result[6] + 8) + 24) |= (v5 & 0xFFFFFFFFFFFFFFFBLL) != 1;
      a5 += 96;
      --a2;
    }

    while (a2);
  }

  return result;
}

void __57__PXStoryPacingController_timeSource_didIncrementByTime___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v3 = a2;
  [v3 setElapsedTime:&v7];
  v4 = *(a1 + 32);
  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 104);
  [v3 setCurrentSegmentIdentifier:v4 timeIntoSegment:&v7 timeLeftInSegment:&v5 changeSource:0];
}

- (void)setTargetEndTime:(id *)time
{
  p_targetEndTime = &self->_targetEndTime;
  time1 = *time;
  time2 = self->_targetEndTime;
  if (CMTimeCompare(&time1, &time2))
  {
    v6 = *&time->var0;
    p_targetEndTime->epoch = time->var3;
    *&p_targetEndTime->value = v6;
    memset(&v12, 0, sizeof(v12));
    cueSource = [(PXStoryPacingController *)self cueSource];
    v8 = cueSource;
    if (cueSource)
    {
      [cueSource currentTime];
    }

    else
    {
      memset(&v12, 0, sizeof(v12));
    }

    pacingDecisionHistory = [(PXStoryPacingController *)self pacingDecisionHistory];
    time1 = *time;
    time2 = v12;
    CMTimeSubtract(&v11, &time1, &time2);
    targetEndUpdateReason = [(PXStoryPacingController *)self targetEndUpdateReason];
    [pacingDecisionHistory resetWithTargetDuration:&v11 reason:targetEndUpdateReason];
  }
}

- (void)setCurrentPacingDecision:(id *)decision
{
  p_currentPacingDecision = &self->_currentPacingDecision;
  v6 = *&decision->var10;
  v52 = *&decision->var8.var3;
  v53 = v6;
  v54 = *&decision->var11.var1;
  v7 = *&decision->var6.var0;
  v48 = *&decision->var4.var1;
  v49 = v7;
  v8 = *&decision->var8.var0;
  v50 = *&decision->var6.var3;
  v51 = v8;
  v9 = *&decision->var3.var0;
  v44 = *&decision->var2.var1;
  v45 = v9;
  v10 = *&decision->var4.var0.var1;
  v46 = *&decision->var3.var3;
  v47 = v10;
  v11 = *&decision->var1.var0.var1;
  v40 = *&decision->var0;
  v41 = v11;
  v12 = *&decision->var1.var1.var3;
  v42 = *&decision->var1.var1.var0;
  v43 = v12;
  v13 = *&self->_currentPacingDecision.transitionKind;
  v39[12] = *&self->_currentPacingDecision.startTimeIntoSegment.epoch;
  v39[13] = v13;
  v39[14] = *&self->_currentPacingDecision.transitionCorrection.timescale;
  v14 = *&self->_currentPacingDecision.cueTime.value;
  v39[8] = *&self->_currentPacingDecision.cue.rank;
  v39[9] = v14;
  v15 = *&self->_currentPacingDecision.startTimeIntoSegment.value;
  v39[10] = *&self->_currentPacingDecision.cueTime.epoch;
  v39[11] = v15;
  v16 = *&self->_currentPacingDecision.adjustedDuration.value;
  v39[4] = *&self->_currentPacingDecision.originalDuration.timescale;
  v39[5] = v16;
  v17 = *&self->_currentPacingDecision.cue.time.timescale;
  v39[6] = *&self->_currentPacingDecision.adjustedDuration.epoch;
  v39[7] = v17;
  v18 = *&self->_currentPacingDecision.allowedTimeRange.start.timescale;
  v39[0] = *&self->_currentPacingDecision.segmentIdentifier;
  v39[1] = v18;
  v19 = *&self->_currentPacingDecision.allowedTimeRange.duration.epoch;
  v39[2] = *&self->_currentPacingDecision.allowedTimeRange.duration.value;
  v39[3] = v19;
  if (!PXStoryPacingDecisionEqualToPacingDecision(&v40, v39))
  {
    v20 = *&decision->var0;
    v21 = *&decision->var1.var1.var0;
    *&p_currentPacingDecision->allowedTimeRange.start.timescale = *&decision->var1.var0.var1;
    *&p_currentPacingDecision->allowedTimeRange.duration.value = v21;
    *&p_currentPacingDecision->segmentIdentifier = v20;
    v22 = *&decision->var1.var1.var3;
    v23 = *&decision->var2.var1;
    v24 = *&decision->var3.var3;
    *&p_currentPacingDecision->adjustedDuration.value = *&decision->var3.var0;
    *&p_currentPacingDecision->adjustedDuration.epoch = v24;
    *&p_currentPacingDecision->allowedTimeRange.duration.epoch = v22;
    *&p_currentPacingDecision->originalDuration.timescale = v23;
    v25 = *&decision->var4.var0.var1;
    v26 = *&decision->var4.var1;
    v27 = *&decision->var6.var3;
    *&p_currentPacingDecision->cueTime.value = *&decision->var6.var0;
    *&p_currentPacingDecision->cueTime.epoch = v27;
    *&p_currentPacingDecision->cue.time.timescale = v25;
    *&p_currentPacingDecision->cue.rank = v26;
    v28 = *&decision->var8.var0;
    v29 = *&decision->var8.var3;
    v30 = *&decision->var11.var1;
    *&p_currentPacingDecision->transitionKind = *&decision->var10;
    *&p_currentPacingDecision->transitionCorrection.timescale = v30;
    *&p_currentPacingDecision->startTimeIntoSegment.value = v28;
    *&p_currentPacingDecision->startTimeIntoSegment.epoch = v29;
    pacingDecisionHistory = [(PXStoryPacingController *)self pacingDecisionHistory];
    v32 = *&decision->var10;
    v52 = *&decision->var8.var3;
    v53 = v32;
    v54 = *&decision->var11.var1;
    v33 = *&decision->var6.var0;
    v48 = *&decision->var4.var1;
    v49 = v33;
    v34 = *&decision->var8.var0;
    v50 = *&decision->var6.var3;
    v51 = v34;
    v35 = *&decision->var3.var0;
    v44 = *&decision->var2.var1;
    v45 = v35;
    v36 = *&decision->var4.var0.var1;
    v46 = *&decision->var3.var3;
    v47 = v36;
    v37 = *&decision->var1.var0.var1;
    v40 = *&decision->var0;
    v41 = v37;
    v38 = *&decision->var1.var1.var3;
    v42 = *&decision->var1.var1.var0;
    v43 = v38;
    [pacingDecisionHistory recordDecision:&v40];
  }
}

- (void)setCanChangePlaybackTime:(BOOL)time
{
  if (self->_canChangePlaybackTime != time)
  {
    self->_canChangePlaybackTime = time;
    [(PXStoryPacingController *)self _invalidateCurrentPacingDecision];

    [(PXStoryPacingController *)self _invalidateTargetEndTimeWithReason:@"Pacing Started/Stopped"];
  }
}

- (id)diagnosticTextForHUDType:(int64_t)type
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  canChangePlaybackTime = [(PXStoryPacingController *)self canChangePlaybackTime];
  v7 = @"paused advancing time";
  if (canChangePlaybackTime)
  {
    v7 = @"advancing time";
  }

  [v5 appendFormat:@"Pacing Status: %@\n", v7];
  canChangePlaybackTime2 = [(PXStoryPacingController *)self canChangePlaybackTime];
  if (type == 14 && !canChangePlaybackTime2)
  {
    reasonPreventingPlaybackTimeChange = [(PXStoryPacingController *)self reasonPreventingPlaybackTimeChange];
    [v5 appendFormat:@"Paused Reason: %@\n", reasonPreventingPlaybackTimeChange];
  }

  v10 = [v5 copy];

  return v10;
}

- (void)setIsActive:(BOOL)active
{
  if (self->_isActive != active)
  {
    activeCopy = active;
    self->_isActive = active;
    timeSource = [(PXStoryPacingController *)self timeSource];
    [timeSource setActive:activeCopy];

    [(PXStoryPacingController *)self _invalidateCanChangePlaybackTime];
  }
}

- (void)configureUpdater:(id)updater
{
  v4.receiver = self;
  v4.super_class = PXStoryPacingController;
  updaterCopy = updater;
  [(PXStoryController *)&v4 configureUpdater:updaterCopy];
  [updaterCopy addUpdateSelector:{sel__updateCanChangePlaybackTime, v4.receiver, v4.super_class}];
  [updaterCopy addUpdateSelector:sel__updateTargetEndTime];
}

- (PXStoryPacingController)initWithModel:(id)model timeSource:(id)source cueSource:(id)cueSource
{
  modelCopy = model;
  sourceCopy = source;
  cueSourceCopy = cueSource;
  v26.receiver = self;
  v26.super_class = PXStoryPacingController;
  v11 = [(PXStoryController *)&v26 initWithObservableModel:modelCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_model, modelCopy);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __62__PXStoryPacingController_initWithModel_timeSource_cueSource___block_invoke;
    v24[3] = &unk_1E77485B0;
    v13 = v12;
    v25 = v13;
    [modelCopy performChanges:v24];
    objc_storeStrong(&v13->_timeSource, source);
    objc_storeWeak(&v13->_cueSource, cueSourceCopy);
    [(PXStoryPacingTimeSource *)v13->_timeSource setDelegate:v13];
    v14 = [_PXStoryPacingControllerChangeOrigin alloc];
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v15 initWithFormat:@"changeOrigin-%@-%p", v17, v13];
    v19 = [(_PXStoryPacingControllerChangeOrigin *)v14 initWithDescription:v18];
    modelChangeOrigin = v13->_modelChangeOrigin;
    v13->_modelChangeOrigin = v19;

    v21 = objc_alloc_init(_PXStoryPacingControllerDecisionHistory);
    pacingDecisionHistory = v13->_pacingDecisionHistory;
    v13->_pacingDecisionHistory = v21;
  }

  return v12;
}

- (PXStoryPacingController)initWithObservableModel:(id)model
{
  modelCopy = model;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPacingController.m" lineNumber:59 description:{@"%s is not available as initializer", "-[PXStoryPacingController initWithObservableModel:]"}];

  abort();
}

@end
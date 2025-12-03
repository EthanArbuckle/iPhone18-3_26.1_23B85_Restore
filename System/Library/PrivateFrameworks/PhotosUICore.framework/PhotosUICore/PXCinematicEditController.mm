@interface PXCinematicEditController
- (BOOL)canToggleBackToUserFocusState;
- (BOOL)cinematicAdjustmentActive;
- (BOOL)isInAutoFocusState;
- (PTCinematographyScriptChanges)scriptChangesDelegate;
- (PXCinematicEditControllerDelegate)delegate;
- (PXFocusTimelineController)focusTimelineDelegate;
- (double)cinematicAperture;
- (id)axDescriptionForFocusDecisionAtTime:(id *)time;
- (id)cinematographyState;
- (id)compositionController;
- (int64_t)cinematicDebugMode;
- (void)_updatePortraitVideoAdjustmentFromCinematography;
- (void)cinematographyWasEdited;
- (void)cinematographyWasEditedAtTime:(id *)time;
- (void)removeFocusDecisionAtTime:(id *)time;
- (void)resetToCinematographyState:(id)state;
- (void)setAsset:(id)asset editSource:(id)source;
- (void)setCinematicAdjustmentActive:(BOOL)active;
- (void)setCinematicAperture:(double)aperture;
- (void)setCinematicDebugMode:(int64_t)mode;
- (void)toggleAutoFocusState;
- (void)updateFocusDecisions;
@end

@implementation PXCinematicEditController

- (PXFocusTimelineController)focusTimelineDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_focusTimelineDelegate);

  return WeakRetained;
}

- (PTCinematographyScriptChanges)scriptChangesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scriptChangesDelegate);

  return WeakRetained;
}

- (PXCinematicEditControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)axDescriptionForFocusDecisionAtTime:(id *)time
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__229438;
  v21 = __Block_byref_object_dispose__229439;
  v22 = &stru_1F1741150;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  cinematographyScript = self->_cinematographyScript;
  if (cinematographyScript)
  {
    [(PTCinematographyScript *)cinematographyScript timeRange];
    if (BYTE4(v16))
    {
      v6 = self->_cinematographyScript;
      v13[0] = v14;
      v13[1] = v15;
      v13[2] = v16;
      v7 = [(PTCinematographyScript *)v6 userDecisionsInTimeRange:v13];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __65__PXCinematicEditController_axDescriptionForFocusDecisionAtTime___block_invoke;
      v10[3] = &unk_1E7748538;
      v11 = *&time->var0;
      var3 = time->var3;
      v10[4] = self;
      v10[5] = &v17;
      [v7 enumerateObjectsUsingBlock:v10];
    }
  }

  v8 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v8;
}

void __65__PXCinematicEditController_axDescriptionForFocusDecisionAtTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  memset(&v14, 0, sizeof(v14));
  if (v3)
  {
    [v3 time];
    if (v14.flags)
    {
      time1 = v14;
      v12 = *(a1 + 48);
      if (!CMTimeCompare(&time1, &v12))
      {
        v5 = *(*(a1 + 32) + 32);
        [v4 time];
        v6 = [v5 frameNearestTime:&time1];
        v7 = v6;
        if (v6)
        {
          v8 = [v6 focusDetection];
          v9 = [MEMORY[0x1E69C4F70] accessibilityLabelForDetectionType:{objc_msgSend(v8, "detectionType")}];
          v10 = *(*(a1 + 40) + 8);
          v11 = *(v10 + 40);
          *(v10 + 40) = v9;
        }
      }
    }
  }
}

- (void)resetToCinematographyState:(id)state
{
  stateCopy = state;
  cinematographyScript = [(PXCinematicEditController *)self cinematographyScript];
  [cinematographyScript reloadWithChangesDictionary:stateCopy];

  [(PXCinematicEditController *)self cinematographyWasEdited];
}

- (id)cinematographyState
{
  compositionController = [(PXCinematicEditController *)self compositionController];
  portraitVideoAdjustmentController = [compositionController portraitVideoAdjustmentController];
  cinematographyState = [portraitVideoAdjustmentController cinematographyState];
  v5 = [cinematographyState copy];

  return v5;
}

- (BOOL)canToggleBackToUserFocusState
{
  savedManualFocusCinematographyState = [(PXCinematicEditController *)self savedManualFocusCinematographyState];
  v4 = [savedManualFocusCinematographyState objectForKeyedSubscript:@"user_decisions"];
  v5 = v4;
  v6 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  if ([(PXCinematicEditController *)self isInAutoFocusState])
  {
    if ([v7 count])
    {
      v8 = 1;
    }

    else
    {
      uneditedUserDecisions = [(PXCinematicEditController *)self uneditedUserDecisions];
      v8 = [uneditedUserDecisions count] != 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isInAutoFocusState
{
  cinematographyScript = [(PXCinematicEditController *)self cinematographyScript];
  start = **&MEMORY[0x1E6960CC0];
  v5 = **&MEMORY[0x1E6960C68];
  CMTimeRangeMake(&v7, &start, &v5);
  v3 = [cinematographyScript userDecisionsInTimeRange:&v7];

  LOBYTE(cinematographyScript) = [v3 count] == 0;
  return cinematographyScript;
}

- (void)toggleAutoFocusState
{
  if ([(PXCinematicEditController *)self isInAutoFocusState])
  {
    savedManualFocusCinematographyState = [(PXCinematicEditController *)self savedManualFocusCinematographyState];
    [(PXCinematicEditController *)self resetToCinematographyState:savedManualFocusCinematographyState];
  }

  else
  {
    cinematographyState = [(PXCinematicEditController *)self cinematographyState];
    [(PXCinematicEditController *)self setSavedManualFocusCinematographyState:cinematographyState];

    cinematographyScript = [(PXCinematicEditController *)self cinematographyScript];
    [cinematographyScript removeAllUserDecisions];

    [(PXCinematicEditController *)self cinematographyWasEdited];
  }
}

- (id)compositionController
{
  delegate = [(PXCinematicEditController *)self delegate];
  compositionController = [delegate compositionController];

  if (compositionController)
  {
    v4 = compositionController;
  }

  else
  {
    v5 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "PXCinematicEditController: Could not get composition controller", v7, 2u);
    }
  }

  return compositionController;
}

- (void)setCinematicAperture:(double)aperture
{
  compositionController = [(PXCinematicEditController *)self compositionController];
  adjustmentConstants = [compositionController adjustmentConstants];
  pIPortraitVideoAdjustmentKey = [adjustmentConstants PIPortraitVideoAdjustmentKey];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PXCinematicEditController_setCinematicAperture___block_invoke;
  v8[3] = &unk_1E7748510;
  v8[4] = self;
  *&v8[5] = aperture;
  [compositionController modifyAdjustmentWithKey:pIPortraitVideoAdjustmentKey modificationBlock:v8];
}

void __50__PXCinematicEditController_setCinematicAperture___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) originalAperture];
  if (vabdd_f64(v3, *(a1 + 40)) <= 0.1)
  {
    [v5 setAperture:0];
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v5 setAperture:v4];
  }
}

- (void)removeFocusDecisionAtTime:(id *)time
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  cinematographyScript = self->_cinematographyScript;
  if (cinematographyScript && ([(PTCinematographyScript *)cinematographyScript timeRange], (BYTE4(v16) & 1) != 0))
  {
    v7 = self->_cinematographyScript;
    *buf = v14;
    v12 = v15;
    v13 = v16;
    v6 = [(PTCinematographyScript *)v7 userDecisionsInTimeRange:buf];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__PXCinematicEditController_removeFocusDecisionAtTime___block_invoke;
    v8[3] = &unk_1E77484E8;
    v9 = *&time->var0;
    var3 = time->var3;
    v8[4] = self;
    [v6 enumerateObjectsUsingBlock:v8];
  }

  else
  {
    v6 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Cinematography script time range invalid", buf, 2u);
    }
  }
}

void __55__PXCinematicEditController_removeFocusDecisionAtTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  memset(&v15, 0, sizeof(v15));
  if (v3)
  {
    [v3 time];
    if (v15.flags)
    {
      time1 = v15;
      v13 = *(a1 + 40);
      if (!CMTimeCompare(&time1, &v13))
      {
        v5 = [*(a1 + 32) delegate];
        v6 = objc_opt_respondsToSelector();

        v7 = *(a1 + 32);
        if (v6)
        {
          v8 = [v7 delegate];
          [v8 removeUserDecision:v4];
        }

        else
        {
          [v7[4] removeUserDecision:v4];
        }

        [*(a1 + 32) cinematographyWasEdited];
        v9 = [*(a1 + 32) cinematographyState];
        [*(a1 + 32) setSavedManualFocusCinematographyState:v9];

        v10 = [*(a1 + 32) delegate];
        v11 = objc_opt_respondsToSelector();

        if (v11)
        {
          v12 = [*(a1 + 32) delegate];
          [v12 didRemoveUserDecision];
        }
      }
    }
  }
}

- (void)setCinematicDebugMode:(int64_t)mode
{
  compositionController = [(PXCinematicEditController *)self compositionController];
  adjustmentConstants = [compositionController adjustmentConstants];
  pIPortraitVideoAdjustmentKey = [adjustmentConstants PIPortraitVideoAdjustmentKey];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PXCinematicEditController_setCinematicDebugMode___block_invoke;
  v7[3] = &__block_descriptor_40_e45_v16__0__PIPortraitVideoAdjustmentController_8l;
  v7[4] = mode;
  [compositionController modifyAdjustmentWithKey:pIPortraitVideoAdjustmentKey modificationBlock:v7];
}

- (int64_t)cinematicDebugMode
{
  compositionController = [(PXCinematicEditController *)self compositionController];
  portraitVideoAdjustmentController = [compositionController portraitVideoAdjustmentController];
  debugMode = [portraitVideoAdjustmentController debugMode];

  return debugMode;
}

- (double)cinematicAperture
{
  compositionController = [(PXCinematicEditController *)self compositionController];
  portraitVideoAdjustmentController = [compositionController portraitVideoAdjustmentController];
  aperture = [portraitVideoAdjustmentController aperture];

  if (!aperture || ([portraitVideoAdjustmentController aperture], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "doubleValue"), v8 = v7, v6, v8 < 0.8))
  {
    [(PXCinematicEditController *)self originalAperture];
    v8 = v9;
  }

  return v8;
}

- (BOOL)cinematicAdjustmentActive
{
  compositionController = [(PXCinematicEditController *)self compositionController];
  v3 = compositionController;
  if (compositionController)
  {
    portraitVideoAdjustmentController = [compositionController portraitVideoAdjustmentController];
    enabled = [portraitVideoAdjustmentController enabled];
  }

  else
  {
    v6 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "_updatePortraitVideoAdjustmentFromCinematography: Could not get composition controller", v8, 2u);
    }

    enabled = 0;
  }

  return enabled;
}

- (void)setCinematicAdjustmentActive:(BOOL)active
{
  compositionController = [(PXCinematicEditController *)self compositionController];
  v5 = compositionController;
  if (compositionController)
  {
    adjustmentConstants = [compositionController adjustmentConstants];
    pIPortraitVideoAdjustmentKey = [adjustmentConstants PIPortraitVideoAdjustmentKey];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__PXCinematicEditController_setCinematicAdjustmentActive___block_invoke;
    v8[3] = &__block_descriptor_33_e45_v16__0__PIPortraitVideoAdjustmentController_8l;
    activeCopy = active;
    [v5 modifyAdjustmentWithKey:pIPortraitVideoAdjustmentKey modificationBlock:v8];
  }

  else
  {
    adjustmentConstants = PLPhotoEditGetLog();
    if (os_log_type_enabled(adjustmentConstants, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, adjustmentConstants, OS_LOG_TYPE_ERROR, "_updatePortraitVideoAdjustmentFromCinematography: Could not get composition controller", buf, 2u);
    }
  }
}

- (void)cinematographyWasEditedAtTime:(id *)time
{
  [(PXCinematicEditController *)self _updatePortraitVideoAdjustmentFromCinematography];
  v5 = *time;
  [(PXCinematicEditController *)self updateFocusDecisionsAnimatedAtTime:&v5];
}

- (void)cinematographyWasEdited
{
  [(PXCinematicEditController *)self _updatePortraitVideoAdjustmentFromCinematography];

  [(PXCinematicEditController *)self updateFocusDecisions];
}

- (void)updateFocusDecisions
{
  v2 = *MEMORY[0x1E6960C70];
  v3 = *(MEMORY[0x1E6960C70] + 16);
  [(PXCinematicEditController *)self updateFocusDecisionsAnimatedAtTime:&v2];
}

void __64__PXCinematicEditController_updateFocusDecisionsAnimatedAtTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) focusTimelineDelegate];
  [v2 resetTimeline];

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v3 = *(*(a1 + 32) + 32);
  if (v3 && ([v3 timeRange], (BYTE4(v31) & 1) != 0))
  {
    v5 = [*(a1 + 32) focusTimelineDelegate];
    *buf = v29;
    v27 = v30;
    v28 = v31;
    [v5 updateFocusTimelineWithTimeRange:buf];

    v6 = *(*(a1 + 32) + 32);
    *buf = v29;
    v27 = v30;
    v28 = v31;
    v7 = [v6 decisionsInTimeRange:buf];
    v8 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __64__PXCinematicEditController_updateFocusDecisionsAnimatedAtTime___block_invoke_2;
    v20 = &unk_1E7748480;
    v24 = *(a1 + 40);
    v25 = *(a1 + 56);
    v9 = *(a1 + 32);
    v21 = v7;
    v22 = v9;
    v10 = v8;
    v23 = v10;
    v4 = v7;
    [v4 enumerateObjectsUsingBlock:&v17];
    v11 = *(a1 + 32);
    v12 = *(v11 + 80);
    *(v11 + 80) = v10;
    v13 = v10;

    v14 = [*(a1 + 32) focusTimelineDelegate];
    [v14 updateFocusTimeline];

    v15 = [*(a1 + 32) focusTimelineDelegate];
    v16 = [*(*(a1 + 32) + 80) array];
    [v15 didUpdateFocusEventsWithTimes:v16];
  }

  else
  {
    v4 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "Cinematography script time range invalid", buf, 2u);
    }
  }
}

void __64__PXCinematicEditController_updateFocusDecisionsAnimatedAtTime___block_invoke_2(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = a2;
  v6 = v5;
  memset(&v21, 0, sizeof(v21));
  if (!v5 || ([v5 time], (v21.flags & 1) == 0))
  {
    a3 = PLPhotoEditGetLog();
    if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_1A3C1C000, a3, OS_LOG_TYPE_ERROR, "Cinematography decision time invalid", &buf, 2u);
    }

    goto LABEL_23;
  }

  v7 = [v6 isUserDecision];
  v8 = [v6 groupIdentifier];
  if (a3)
  {
    a3 = [*(a1 + 32) objectAtIndexedSubscript:&a3[-1].isa + 7];
  }

  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v10 = [v9 BOOLForKey:@"disableTimelineAnimations"];

  if (v10)
  {
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  if (*(a1 + 68))
  {
    buf = *(a1 + 56);
    time2 = v21;
    v11 = CMTimeCompare(&buf, &time2) == 0;
    if (!a3)
    {
      goto LABEL_17;
    }

LABEL_12:
    if (v11)
    {
      goto LABEL_17;
    }

    [a3 time];
    time2 = *(a1 + 56);
    if (!CMTimeCompare(&time2, &buf) && [v6 isUserDecision])
    {
      buf.value = 0;
      *&buf.timescale = &buf;
      buf.epoch = 0x2020000000;
      v19 = 0;
      v12 = *(*(a1 + 40) + 80);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __64__PXCinematicEditController_updateFocusDecisionsAnimatedAtTime___block_invoke_3;
      v16[3] = &unk_1E7748458;
      v17 = v21;
      v16[4] = &buf;
      [v12 enumerateObjectsUsingBlock:v16];
      v11 = *(*&buf.timescale + 24) ^ 1;
      _Block_object_dispose(&buf, 8);
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v11 = 0;
  if (a3)
  {
    goto LABEL_12;
  }

LABEL_17:
  if (!PTGroupIDIsValid() || !a3 || v7 && ![a3 isUserDecision]|| v8 != [a3 groupIdentifier])
  {
    v13 = [*(a1 + 40) focusTimelineDelegate];
    buf = v21;
    [v13 updateFocusTimelineWithEvent:&buf userInitiated:v7 shouldAnimate:v11 & 1];

    v14 = *(a1 + 48);
    buf = v21;
    v15 = [MEMORY[0x1E696B098] valueWithCMTime:&buf];
    [v14 addObject:v15];
  }

LABEL_23:
}

void __64__PXCinematicEditController_updateFocusDecisionsAnimatedAtTime___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = v6;
  if (v6)
  {
    [v6 CMTimeValue];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v8 = *(a1 + 40);
  if (!CMTimeCompare(&time1, &v8))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)_updatePortraitVideoAdjustmentFromCinematography
{
  cinematographyScript = self->_cinematographyScript;
  v4 = MEMORY[0x1E6960CC0];
  start = **&MEMORY[0x1E6960CC0];
  duration = **&MEMORY[0x1E6960C68];
  v15 = *&duration.value;
  epoch = duration.epoch;
  CMTimeRangeMake(&v22, &start, &duration);
  v6 = [(PTCinematographyScript *)cinematographyScript userDecisionsInTimeRange:&v22];
  uneditedUserDecisions = [(PXCinematicEditController *)self uneditedUserDecisions];
  v8 = [v6 isEqualToArray:uneditedUserDecisions];

  v9 = self->_cinematographyScript;
  start = *v4;
  *&duration.value = v15;
  duration.epoch = epoch;
  CMTimeRangeMake(&v22, &start, &duration);
  v10 = [(PTCinematographyScript *)v9 framesInTimeRange:&v22];
  if ([v10 count])
  {
    compositionController = [(PXCinematicEditController *)self compositionController];
    adjustmentConstants = [compositionController adjustmentConstants];

    compositionController2 = [(PXCinematicEditController *)self compositionController];
    pIPortraitVideoAdjustmentKey = [adjustmentConstants PIPortraitVideoAdjustmentKey];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __77__PXCinematicEditController__updatePortraitVideoAdjustmentFromCinematography__block_invoke;
    v16[3] = &unk_1E7748430;
    v19 = v8;
    v17 = v10;
    selfCopy = self;
    [compositionController2 modifyAdjustmentWithKey:pIPortraitVideoAdjustmentKey modificationBlock:v16];
  }

  else
  {
    adjustmentConstants = PLPhotoEditGetLog();
    if (os_log_type_enabled(adjustmentConstants, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v22.start.value) = 0;
      _os_log_impl(&dword_1A3C1C000, adjustmentConstants, OS_LOG_TYPE_ERROR, "ERROR: Cinematography returned no frames", &v22, 2u);
    }
  }
}

void __77__PXCinematicEditController__updatePortraitVideoAdjustmentFromCinematography__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48) == 1)
  {
    [v3 setDisparityKeyframes:0];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = objc_alloc(MEMORY[0x1E69BDF18]);
          if (v11)
          {
            [v11 time];
          }

          else
          {
            memset(v16, 0, sizeof(v16));
          }

          [v11 focusDistance];
          v14 = [v12 initWithTime:v16 value:v13];
          [v5 addObject:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    [v4 setDisparityKeyframes:v5];
  }

  v15 = [*(*(a1 + 40) + 32) changesDictionary];
  if (![v15 count] || *(a1 + 48) == 1)
  {

    v15 = 0;
  }

  [v4 setCinematographyState:v15];
}

- (void)setAsset:(id)asset editSource:(id)source
{
  location[3] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  sourceCopy = source;
  if (self->_asset != assetCopy)
  {
    asset = [(PXCinematicEditController *)self asset];

    if (asset)
    {
      [(PXCinematicEditController *)self setAsset:0];
      [(PXCinematicEditController *)self setEditSource:0];
      [(PXCinematicEditController *)self setCinematographyScript:0];
    }

    objc_storeStrong(&self->_asset, asset);
    objc_storeStrong(&self->_editSource, source);
    v10 = objc_alloc_init(MEMORY[0x1E695DFB8]);
    focusEventTimes = self->_focusEventTimes;
    self->_focusEventTimes = v10;

    if (assetCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        videoURL = [sourceCopy videoURL];
        v13 = [MEMORY[0x1E6988168] assetWithURL:videoURL];
        if (v13)
        {
          cinematographyState = [(PXCinematicEditController *)self cinematographyState];
          v15 = cinematographyState == 0;

          delegate = [(PXCinematicEditController *)self delegate];
          [delegate disableCinematicUIForLoadingAsset];

          v17 = objc_alloc_init(MEMORY[0x1E69C4F80]);
          [(PXCinematicEditController *)self setCinematographyScript:v17];

          objc_initWeak(location, self);
          v18 = dispatch_get_global_queue(25, 0);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __49__PXCinematicEditController_setAsset_editSource___block_invoke;
          block[3] = &unk_1E77492D0;
          v21 = assetCopy;
          selfCopy = self;
          v23 = v13;
          objc_copyWeak(&v24, location);
          v25 = v15;
          dispatch_async(v18, block);

          objc_destroyWeak(&v24);
          objc_destroyWeak(location);
        }

        else
        {
          v19 = PLPhotoEditGetLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            LODWORD(location[0]) = 138412290;
            *(location + 4) = videoURL;
            _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_ERROR, "Couldn't create AVAsset for %@", location, 0xCu);
          }
        }
      }

      else
      {
        videoURL = PLPhotoEditGetLog();
        if (os_log_type_enabled(videoURL, OS_LOG_TYPE_ERROR))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = sourceCopy;
          _os_log_impl(&dword_1A3C1C000, videoURL, OS_LOG_TYPE_ERROR, "Can't start cinematography for non-video edit source %@", location, 0xCu);
        }
      }
    }
  }
}

void __49__PXCinematicEditController_setAsset_editSource___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "Cinematography script load asset: %@", buf, 0xCu);
  }

  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [*(a1 + 40) cinematographyScript];
  v6 = *(a1 + 48);
  v7 = [*(a1 + 40) cinematographyState];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__PXCinematicEditController_setAsset_editSource___block_invoke_32;
  v10[3] = &unk_1E7748408;
  v8 = v4;
  v11 = v8;
  objc_copyWeak(&v13, (a1 + 56));
  v14 = *(a1 + 64);
  v12 = *(a1 + 40);
  v9 = [v5 loadWithAsset:v6 changesDictionary:v7 completion:v10];

  objc_destroyWeak(&v13);
}

void __49__PXCinematicEditController_setAsset_editSource___block_invoke_32(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E696AD98];
  v7 = [MEMORY[0x1E695DF00] date];
  [v7 timeIntervalSinceDate:*(a1 + 32)];
  v8 = [v6 numberWithDouble:?];

  v9 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v8;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Cinematography script load completed with duration: %@", buf, 0xCu);
  }

  objc_copyWeak(&v10, (a1 + 48));
  v11 = a2;
  v12 = *(a1 + 56);
  v5;
  px_dispatch_on_main_queue();
}

void __49__PXCinematicEditController_setAsset_editSource___block_invoke_34(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (*(a1 + 56) == 1)
  {
    v4 = [WeakRetained cinematographyScript];
    if (isAppleInternal_onceToken_229483 != -1)
    {
      dispatch_once(&isAppleInternal_onceToken_229483, &__block_literal_global_229484);
    }

    if (isAppleInternal_hasInternalDiagnostics_229485 == 1)
    {
      v5 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        start = **&MEMORY[0x1E6960CC0];
        v12 = **&MEMORY[0x1E6960C68];
        CMTimeRangeMake(&v14, &start, &v12);
        v6 = [v4 framesInTimeRange:&v14];
        LODWORD(v14.start.value) = 138412290;
        *(&v14.start.value + 4) = v6;
        _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Cinematography script allFrames:%@", &v14, 0xCu);
      }
    }

    if (*(a1 + 57) == 1)
    {
      v7 = *(*(a1 + 32) + 32);
      start = **&MEMORY[0x1E6960CC0];
      v12 = **&MEMORY[0x1E6960C68];
      CMTimeRangeMake(&v14, &start, &v12);
      v8 = [v7 userDecisionsInTimeRange:&v14];
      [v3 setUneditedUserDecisions:v8];
    }

    [v3 _updatePortraitVideoAdjustmentFromCinematography];
    v9 = [v3 delegate];
    [v9 cineScriptBecameAvailable:v4];
  }

  else
  {
    v10 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      LODWORD(v14.start.value) = 138412290;
      *(&v14.start.value + 4) = v11;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Cinematography script failed to load asset: %@", &v14, 0xCu);
    }

    v4 = [v3 delegate];
    [v4 cineScriptCouldNotInitializeWithError:*(a1 + 40)];
  }
}

@end
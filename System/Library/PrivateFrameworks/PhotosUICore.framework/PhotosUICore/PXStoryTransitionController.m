@interface PXStoryTransitionController
+ (BOOL)_isSupportedTransitionWithKind:(char)a3 forClipWithResourceKind:(int64_t)a4;
- ($0AC6E346AE4835514AAA8AC86D8F4844)activeTransition;
- (BOOL)_canStartTransitionWithKind:(char)a3;
- (PXGEntityManager)entityManager;
- (PXStoryModel)model;
- (PXStoryTransitionController)initWithModel:(id)a3 transitionSource:(id)a4;
- (PXStoryTransitionSource)transitionSource;
- (id)diagnosticErrorsByComponentForHUDType:(int64_t)a3;
- (id)diagnosticTextForHUDType:(int64_t)a3 displaySize:(CGSize)a4;
- (void)_handleTransitionCompleted:(id)a3;
- (void)_interruptActiveTransitions;
- (void)_reportInterruptedTransitionForNewTransitionBetweenSegmentWithIdentifier:(int64_t)a3 andSegmentWithIdentifier:(int64_t)a4;
- (void)_startTransition:(id)a3;
- (void)_updateCurrentSegmentIdentifierIfNeeded;
- (void)_updatePendingTransitionModelWithSegmentTransitionInfo:(id)a3;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
- (void)enumerateClipIdentifiersForActiveTransitionsUsingBlock:(id)a3;
- (void)enumerateClipIdentifiersForPendingTransitionUsingBlock:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)setActiveTransition:(id)a3;
- (void)setCurrentError:(id)a3;
- (void)setCurrentSegmentIdentifier:(int64_t)a3 allowTransitions:(BOOL)a4;
- (void)setPendingTransitionModel:(id)a3;
- (void)startPendingTransitionIfNeeded;
@end

@implementation PXStoryTransitionController

- (PXStoryTransitionSource)transitionSource
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionSource);

  return WeakRetained;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)activeTransition
{
  p_activeTransition = &self->_activeTransition;
  fromSegmentIdentifier = self->_activeTransition.fromSegmentIdentifier;
  toSegmentIdentifier = p_activeTransition->toSegmentIdentifier;
  result.var1 = toSegmentIdentifier;
  result.var0 = fromSegmentIdentifier;
  return result;
}

- (PXStoryModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

- (PXGEntityManager)entityManager
{
  WeakRetained = objc_loadWeakRetained(&self->_entityManager);

  return WeakRetained;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v8 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(PXStoryTransitionProducer *)self->_transitionProducer fallbackTransitionReasons];
  [v4 addObjectsFromArray:v5];
  v6 = [(PXStoryTransitionController *)self interruptedTransitionErrorDescriptions];
  [v4 addObjectsFromArray:v6];

  if ([v4 count])
  {
    v7 = [v4 componentsJoinedByString:@"\n"];
    [v8 addAttachmentWithText:v7 name:@"TransitionErrors"];
  }
}

- (id)diagnosticErrorsByComponentForHUDType:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  v5 = [(PXStoryTransitionController *)self currentError];
  [v4 setObject:v5 forKeyedSubscript:@"Transitions"];

  v6 = [v4 copy];

  return v6;
}

- (id)diagnosticTextForHUDType:(int64_t)a3 displaySize:(CGSize)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  WeakRetained = objc_loadWeakRetained(&self->_model);
  v7 = [WeakRetained timeline];

  v8 = objc_loadWeakRetained(&self->_model);
  v9 = v8;
  if (v8)
  {
    [v8 nominalPlaybackTime];
  }

  +[PXStoryAutoEditConfigurationFactory autoEditConfiguration];
  objc_claimAutoreleasedReturnValue();
  v10 = objc_loadWeakRetained(&self->_model);
  v11 = [v10 currentStyle];
  [v11 originalColorGradeCategory];
  objc_claimAutoreleasedReturnValue();

  [v7 size];
  PXRectWithOriginAndSize();
}

void __68__PXStoryTransitionController_diagnosticTextForHUDType_displaySize___block_invoke(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (a2 >= 1)
  {
    v47 = v11;
    v48 = v10;
    v49 = v9;
    v50 = v8;
    v51 = v7;
    v52 = v6;
    v53 = v4;
    v54 = v5;
    v14 = a2;
    v32 = v35;
    do
    {
      v16 = a3[1];
      v44 = *a3;
      v45 = v16;
      v46 = a3[2];
      v17 = *(a4 + 48);
      [*(a1 + 32) appendFormat:@"Segment: %ld @", *a4, v32];
      v18 = @"??";
      if (v17 <= 0xA)
      {
        v18 = off_1E7740168[v17];
      }

      a4 += 200;
      v19 = v18;
      [*(a1 + 32) appendFormat:@" ➡️: %@\n", v19];
      [*(a1 + 32) appendString:@" Clips: "];
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v35[0] = __68__PXStoryTransitionController_diagnosticTextForHUDType_displaySize___block_invoke_2;
      v35[1] = &unk_1E773E2E0;
      v22 = *(a1 + 40);
      v21 = *(a1 + 48);
      v37 = v44;
      v38 = v45;
      v23 = *(a1 + 96);
      v39 = v46;
      v40 = v23;
      v41 = *(a1 + 112);
      v24 = *(a1 + 120);
      v43 = *(a1 + 136);
      v42 = v24;
      v35[2] = v21;
      v36 = v20;
      v33[0] = v44;
      v33[1] = v45;
      v33[2] = v46;
      v25 = *(a1 + 56);
      v26 = *(a1 + 64);
      v27 = *(a1 + 72);
      v28 = *(a1 + 80);
      v29 = v20;
      [v22 enumerateClipsInTimeRange:v33 rect:v34 usingBlock:{v25, v26, v27, v28}];
      v30 = *(a1 + 32);
      v31 = [v29 componentsJoinedByString:{@", "}];
      [v30 appendFormat:@"%@ \n", v31];

      ++*(*(a1 + 88) + 4 * v17);
      a3 += 3;
      --v14;
    }

    while (v14);
  }
}

void __68__PXStoryTransitionController_diagnosticTextForHUDType_displaySize___block_invoke_2(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t *a5)
{
  if (a2 >= 1)
  {
    v7 = a2;
    do
    {
      v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v10 = *a5;
      v11 = a3[1];
      v23 = *a3;
      v24 = v11;
      v25 = a3[2];
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      v12 = *(a1 + 32);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __68__PXStoryTransitionController_diagnosticTextForHUDType_displaySize___block_invoke_3;
      v18[3] = &unk_1E773E2B8;
      v18[4] = &v19;
      v18[5] = v10;
      [v12 enumerateClipIdentifiersForActiveTransitionsUsingBlock:v18];
      if (*(v20 + 24) == 1)
      {
        v13 = *(a1 + 64);
        *&range.start.value = *(a1 + 48);
        *&range.start.epoch = v13;
        *&range.duration.timescale = *(a1 + 80);
        *&time.value = v23;
        time.epoch = v24;
        if (CMTimeRangeContainsTime(&range, &time))
        {
          v14 = @"▶️";
        }

        else
        {
          v14 = @"✅";
        }
      }

      else
      {
        v15 = *(a1 + 64);
        *&range.start.value = *(a1 + 48);
        *&range.start.epoch = v15;
        v16 = *(a1 + 96);
        *&range.duration.timescale = *(a1 + 80);
        *&time.value = v16;
        time.epoch = *(a1 + 112);
        v17 = CMTimeRangeContainsTime(&range, &time);
        v14 = @"🟧";
        if (!v17)
        {
          *&range.start.value = v23;
          range.start.epoch = v24;
          time = *(a1 + 120);
          if (CMTimeCompare(&range.start, &time) >= 0)
          {
            v14 = @"🟥";
          }

          else
          {
            v14 = @"✅";
          }
        }
      }

      [v9 appendFormat:v14];
      [v9 appendFormat:@" %ld", v10];
      [*(a1 + 40) addObject:v9];
      a5 += 96;
      _Block_object_dispose(&v19, 8);

      a3 += 3;
      --v7;
    }

    while (v7);
  }
}

uint64_t __68__PXStoryTransitionController_diagnosticTextForHUDType_displaySize___block_invoke_3(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(result + 40) == a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (void)_updateCurrentSegmentIdentifierIfNeeded
{
  v3 = [(PXStoryTransitionController *)self model];
  v4 = ([v3 shouldPauseTransitions] & 1) == 0 && objc_msgSend(v3, "lastPlaybackTimeChangeSource") == 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__PXStoryTransitionController__updateCurrentSegmentIdentifierIfNeeded__block_invoke;
  v6[3] = &unk_1E773E290;
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [(PXStoryTransitionController *)self performChanges:v6];
}

void __70__PXStoryTransitionController__updateCurrentSegmentIdentifierIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setCurrentSegmentIdentifier:objc_msgSend(v3 allowTransitions:{"currentSegmentIdentifier"), *(a1 + 40)}];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if (ModelObservationContext_155756 == a5)
  {
    if ((a4 & 0x40020) != 0)
    {
      [(PXStoryTransitionController *)self _updateCurrentSegmentIdentifierIfNeeded];
    }

    if ((a4 & 0x400010000) != 0)
    {
      [(PXStoryTransitionController *)self _interruptActiveTransitions];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PXStoryTransitionController;
    [(PXStoryController *)&v9 observable:v8 didChange:a4 context:a5];
  }
}

- (void)setCurrentError:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self->_currentError;
  v7 = v6;
  if (v6 == v5)
  {
  }

  else
  {
    v8 = [(NSError *)v6 isEqual:v5];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_currentError, a3);
      if (v5)
      {
        v9 = PLStoryGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = 138412290;
          v11 = v5;
          _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_INFO, "Transition controller encountered error: %@", &v10, 0xCu);
        }
      }
    }
  }
}

- (void)enumerateClipIdentifiersForActiveTransitionsUsingBlock:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  PXFilter();
}

- (void)enumerateClipIdentifiersForPendingTransitionUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryTransitionController *)self pendingTransitionModel];
  v6 = v5;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  if (v5)
  {
    [v5 transitionInfo];
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    [v6 orderOutCompositionInfo];
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    [v6 orderInCompositionInfo];
  }

  else
  {
    v24 = 0;
    v22 = 0uLL;
    v23 = 0uLL;
    v21 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__PXStoryTransitionController_enumerateClipIdentifiersForPendingTransitionUsingBlock___block_invoke;
  v8[3] = &unk_1E773E248;
  v10 = v25;
  v11 = v26;
  v12 = v27;
  v13 = v22;
  v14 = v23;
  v15 = v24;
  v18 = v21;
  v17 = v20;
  v16 = v19;
  v9 = v4;
  v7 = v4;
  [v6 enumerateClipIdentifiersUsingBlock:v8];
}

uint64_t __86__PXStoryTransitionController_enumerateClipIdentifiersForPendingTransitionUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 56);
  v11[0] = *(a1 + 40);
  v11[1] = v5;
  v12 = *(a1 + 72);
  v6 = *(a1 + 96);
  v9[0] = *(a1 + 80);
  v9[1] = v6;
  v10 = *(a1 + 112);
  PXStoryTransitionGetLayoutOrder(v11, v9, a3, a4);
  v7 = *(*(a1 + 32) + 16);

  return v7();
}

- (BOOL)_canStartTransitionWithKind:(char)a3
{
  v4 = a3;
  v5 = [(PXStoryTransitionController *)self model];
  v6 = [v5 desiredPlayState];
  v7 = [(PXStoryTransitionController *)self entityManager];

  v8 = 0;
  v10 = [v5 viewMode] == 4 && (v4 - 4) < 0xFFFFFFFD;
  if (v6 == 1 && !v10 && v7)
  {
    if ([v5 isScrolling] & 1) != 0 || (objc_msgSend(v5, "inLiveResize") & 1) != 0 || (objc_msgSend(v5, "isTouching") & 1) != 0 || (objc_msgSend(v5, "isPerformingViewControllerTransition"))
    {
      v8 = 0;
    }

    else
    {
      v12 = +[PXStorySettings sharedInstance];
      v8 = [v12 wantsTransitions];
    }
  }

  return v8;
}

- (void)setActiveTransition:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  p_activeTransition = &self->_activeTransition;
  fromSegmentIdentifier = self->_activeTransition.fromSegmentIdentifier;
  toSegmentIdentifier = self->_activeTransition.toSegmentIdentifier;
  if (fromSegmentIdentifier != a3.var0 || toSegmentIdentifier != a3.var1)
  {
    var1 = a3.var1;
    var0 = a3.var0;
    if (fromSegmentIdentifier | toSegmentIdentifier)
    {
      v10 = [(PXStoryTransitionController *)self log];
      v11 = os_signpost_id_make_with_pointer(v10, self);
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = v11;
        if (os_signpost_enabled(v10))
        {
          v17 = 134217984;
          v18 = [(PXStoryTransitionController *)self logContext];
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_END, v12, "PXStoryTransitionControllerChangedActiveTransition", "Context=%{signpost.telemetry:string2}lu ", &v17, 0xCu);
        }
      }
    }

    if (var0 | var1)
    {
      v13 = [(PXStoryTransitionController *)self log];
      v14 = os_signpost_id_make_with_pointer(v13, self);
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v15 = v14;
        if (os_signpost_enabled(v13))
        {
          v16 = [(PXStoryTransitionController *)self logContext];
          v17 = 134218496;
          v18 = v16;
          v19 = 2048;
          v20 = var0;
          v21 = 2048;
          v22 = var1;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PXStoryTransitionControllerChangedActiveTransition", "Context=%{signpost.telemetry:string2}lu segmentIdentifier: %ld -> %ld", &v17, 0x20u);
        }
      }
    }

    p_activeTransition->fromSegmentIdentifier = var0;
    p_activeTransition->toSegmentIdentifier = var1;
    [(PXStoryTransitionController *)self signalChange:1];
  }
}

- (void)setPendingTransitionModel:(id)a3
{
  v5 = a3;
  if (self->_pendingTransitionModel != v5)
  {
    objc_storeStrong(&self->_pendingTransitionModel, a3);
    if (v5)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __57__PXStoryTransitionController_setPendingTransitionModel___block_invoke;
      v6[3] = &unk_1E773E220;
      v6[4] = self;
      v7 = v5;
      [(PXStoryTransitionController *)self performChanges:v6];
    }
  }
}

uint64_t __57__PXStoryTransitionController_setPendingTransitionModel___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 40) segmentTransitionInfo];
  v4 = *(a1 + 32);

  return [v4 setActiveTransition:{v3, v2}];
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXStoryTransitionController;
  [(PXStoryController *)&v3 performChanges:a3];
}

- (void)_handleTransitionCompleted:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXStoryTransitionController *)self log];
  v6 = os_signpost_id_make_with_pointer(v5, v4);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 134217984;
      v10 = [(PXStoryTransitionController *)self logContext];
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryTransitionActive", "Context=%{signpost.telemetry:string2}lu ", buf, 0xCu);
    }
  }

  [(NSMutableArray *)self->_activeClipTransitions removeObject:v4];
  if (![(NSMutableArray *)self->_activeClipTransitions count])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__PXStoryTransitionController__handleTransitionCompleted___block_invoke;
    v8[3] = &unk_1E773E1D0;
    v8[4] = self;
    [(PXStoryTransitionController *)self performChanges:v8];
  }
}

- (void)_reportInterruptedTransitionForNewTransitionBetweenSegmentWithIdentifier:(int64_t)a3 andSegmentWithIdentifier:(int64_t)a4
{
  v7 = [(PXStoryTransitionController *)self activeTransition];
  v9 = v8;
  v10 = [(PXStoryTransitionController *)self interruptedTransitionErrorDescriptions];
  v11 = v10;
  v12 = MEMORY[0x1E695E0F0];
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = MEMORY[0x1E696AEC0];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld → %ld", a3, a4];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld → %ld", v7, v9];
  v17 = [v14 stringWithFormat:@"New transition (%@) started while existing one (%@) was in progress.", v15, v16];
  v26 = [v13 arrayByAddingObject:v17];

  [(PXStoryTransitionController *)self setInterruptedTransitionErrorDescriptions:v26];
  v18 = [v26 count];
  v25 = PXStoryErrorCreateWithCodeDebugFormat(18, @"Transitions got interrupted %ld times.", v19, v20, v21, v22, v23, v24, v18);
  [(PXStoryTransitionController *)self setCurrentError:v25];
}

- (void)_interruptActiveTransitions
{
  v14 = *MEMORY[0x1E69E9840];
  [(PXStoryTransitionController *)self setPendingTransitionModel:0];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(NSMutableArray *)self->_activeClipTransitions copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        [v8 performChanges:&__block_literal_global_15_155782];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_startTransition:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXStoryTransitionController *)self log];
  v6 = os_signpost_id_make_with_pointer(v5, v4);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 134218242;
      v20 = [(PXStoryTransitionController *)self logContext];
      v21 = 2114;
      v22 = v4;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PXStoryTransitionActive", "Context=%{signpost.telemetry:string2}lu %{public}@", buf, 0x16u);
    }
  }

  if (v4)
  {
    [(NSMutableArray *)self->_activeClipTransitions addObject:v4];
    objc_initWeak(buf, self);
    objc_initWeak(&location, v4);
    v8 = [v4 completionHandler];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__PXStoryTransitionController__startTransition___block_invoke;
    v14[3] = &unk_1E773E1F8;
    objc_copyWeak(&v16, buf);
    objc_copyWeak(&v17, &location);
    v9 = v8;
    v15 = v9;
    [v4 setCompletionHandler:v14];
    v10 = [(PXStoryTransitionController *)self model];
    v11 = [v10 animationController];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__PXStoryTransitionController__startTransition___block_invoke_2;
    v12[3] = &unk_1E774A370;
    v13 = v4;
    [v11 performChanges:v12];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v16);

    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }
}

uint64_t __48__PXStoryTransitionController__startTransition___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleTransitionCompleted:v3];

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)startPendingTransitionIfNeeded
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(PXStoryTransitionController *)self pendingTransitionModel];
  if (v3)
  {
    [(PXStoryTransitionController *)self setPendingTransitionModel:0];
    v4 = [(PXStoryTransitionController *)self model];
    v5 = objc_alloc_init(PXStoryTransitionConfiguration);
    [(PXStoryTransitionConfiguration *)v5 setTransitionModel:v3];
    v6 = [(PXStoryTransitionController *)self entityManager];
    [(PXStoryTransitionConfiguration *)v5 setEntityManager:v6];

    v7 = [(PXStoryTransitionController *)self transitionSource];
    [(PXStoryTransitionConfiguration *)v5 setSource:v7];

    v8 = [v4 timeline];
    [(PXStoryTransitionConfiguration *)v5 setTimeline:v8];

    v9 = [v4 timelineSpec];
    [(PXStoryTransitionConfiguration *)v5 setTimelineSpec:v9];

    v10 = [(PXStoryTransitionProducer *)self->_transitionProducer transitionsWithConfiguration:v5];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        v14 = 0;
        do
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(PXStoryTransitionController *)self _startTransition:*(*(&v25 + 1) + 8 * v14++)];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    if (![v10 count])
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __61__PXStoryTransitionController_startPendingTransitionIfNeeded__block_invoke;
      v24[3] = &unk_1E773E1D0;
      v24[4] = self;
      [(PXStoryTransitionController *)self performChanges:v24];
    }

    v15 = [(PXStoryTransitionProducer *)self->_transitionProducer fallbackTransitionReasons];
    v16 = [v15 count];

    if (v16 >= 1)
    {
      v23 = PXStoryErrorCreateWithCodeDebugFormat(18, @"Transitions fell back to cuts %ld times.", v17, v18, v19, v20, v21, v22, v16);
      [(PXStoryTransitionController *)self setCurrentError:v23];
    }
  }
}

- (void)_updatePendingTransitionModelWithSegmentTransitionInfo:(id)a3
{
  v3 = [(PXStoryTransitionController *)self model];
  v4 = [v3 timeline];

  [v4 size];
  PXRectWithOriginAndSize();
}

void __86__PXStoryTransitionController__updatePendingTransitionModelWithSegmentTransitionInfo___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v5 = *(a1 + 32);
  if (v5)
  {
    [v5 timeRangeForSegmentWithIdentifier:a2];
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__PXStoryTransitionController__updatePendingTransitionModelWithSegmentTransitionInfo___block_invoke_2;
  v9[3] = &unk_1E773E180;
  v7 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v12 = *(a1 + 88);
  v10 = v7;
  v11 = a3;
  v8[0] = v13;
  v8[1] = v14;
  v8[2] = v15;
  [v6 enumerateClipsInTimeRange:v8 rect:v9 usingBlock:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
}

uint64_t __86__PXStoryTransitionController__updatePendingTransitionModelWithSegmentTransitionInfo___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v17 = v5;
    v18 = v6;
    v7 = a2;
    v8 = result;
    v9 = (a5 + 16);
    do
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      memcpy(__dst, v9, sizeof(__dst));
      result = [objc_opt_class() _isSupportedTransitionWithKind:*(v8 + 56) forClipWithResourceKind:v11];
      if (result)
      {
        v12 = *(v8 + 40);
        v13 = *(v8 + 48);
        v14[0] = v10;
        v14[1] = v11;
        memcpy(v15, __dst, sizeof(v15));
        result = [v12 addClipWithIdentifier:v10 info:v14 event:v13];
      }

      v9 += 96;
      --v7;
    }

    while (v7);
  }

  return result;
}

- (void)setCurrentSegmentIdentifier:(int64_t)a3 allowTransitions:(BOOL)a4
{
  currentSegmentIdentifier = self->_currentSegmentIdentifier;
  if (currentSegmentIdentifier != a3)
  {
    v5 = a4;
    self->_currentSegmentIdentifier = a3;
    v8 = [(PXStoryTransitionController *)self activeTransition];
    if (v8 | v9)
    {
      v10 = +[PXStoryTransitionsSettings sharedInstance];
      v11 = v10;
      if (v5 && ([v10 suppressInterruptedTransitionErrors] & 1) == 0)
      {
        [(PXStoryTransitionController *)self _reportInterruptedTransitionForNewTransitionBetweenSegmentWithIdentifier:currentSegmentIdentifier andSegmentWithIdentifier:a3];
      }

      [(PXStoryTransitionController *)self _interruptActiveTransitions];
    }

    if (v5)
    {
      v12 = [(PXStoryTransitionController *)self model];
      v14 = [v12 timeline];

      v13 = [v14 indexOfSegmentWithIdentifier:currentSegmentIdentifier];
      if (v13 + 1 == [v14 indexOfSegmentWithIdentifier:a3])
      {
        [(PXStoryTransitionController *)self _updatePendingTransitionModelWithSegmentTransitionInfo:currentSegmentIdentifier, a3];
      }
    }
  }
}

- (PXStoryTransitionController)initWithModel:(id)a3 transitionSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = PXStoryTransitionController;
  v8 = [(PXStoryController *)&v20 initWithObservableModel:v6];
  v9 = v8;
  if (v8)
  {
    v10 = objc_storeWeak(&v8->_model, v6);
    [v6 registerChangeObserver:v9 context:ModelObservationContext_155756];

    WeakRetained = objc_loadWeakRetained(&v9->_model);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __62__PXStoryTransitionController_initWithModel_transitionSource___block_invoke;
    v18[3] = &unk_1E77485B0;
    v12 = v9;
    v19 = v12;
    [WeakRetained performChanges:v18];

    v12->_activeTransition.fromSegmentIdentifier = 0;
    v12->_activeTransition.toSegmentIdentifier = 0;
    objc_storeWeak(&v12->_transitionSource, v7);
    v13 = objc_alloc_init(PXStoryTransitionProducer);
    transitionProducer = v12->_transitionProducer;
    v12->_transitionProducer = v13;

    v12->_currentSegmentIdentifier = [v6 currentSegmentIdentifier];
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    activeClipTransitions = v12->_activeClipTransitions;
    v12->_activeClipTransitions = v15;
  }

  return v9;
}

+ (BOOL)_isSupportedTransitionWithKind:(char)a3 forClipWithResourceKind:(int64_t)a4
{
  if (_isSupportedTransitionWithKind_forClipWithResourceKind__onceToken != -1)
  {
    dispatch_once(&_isSupportedTransitionWithKind_forClipWithResourceKind__onceToken, &__block_literal_global_155802);
  }

  v5 = _isSupportedTransitionWithKind_forClipWithResourceKind__supportedTransitionKinds;

  return [v5 containsIndex:a4];
}

void __86__PXStoryTransitionController__isSupportedTransitionWithKind_forClipWithResourceKind___block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v2 addIndex:1];
  [v2 addIndex:3];
  [v2 addIndex:4];
  [v2 addIndex:5];
  v0 = [v2 copy];
  v1 = _isSupportedTransitionWithKind_forClipWithResourceKind__supportedTransitionKinds;
  _isSupportedTransitionWithKind_forClipWithResourceKind__supportedTransitionKinds = v0;
}

@end
@interface PXStoryTransitionController
+ (BOOL)_isSupportedTransitionWithKind:(char)kind forClipWithResourceKind:(int64_t)resourceKind;
- ($0AC6E346AE4835514AAA8AC86D8F4844)activeTransition;
- (BOOL)_canStartTransitionWithKind:(char)kind;
- (PXGEntityManager)entityManager;
- (PXStoryModel)model;
- (PXStoryTransitionController)initWithModel:(id)model transitionSource:(id)source;
- (PXStoryTransitionSource)transitionSource;
- (id)diagnosticErrorsByComponentForHUDType:(int64_t)type;
- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size;
- (void)_handleTransitionCompleted:(id)completed;
- (void)_interruptActiveTransitions;
- (void)_reportInterruptedTransitionForNewTransitionBetweenSegmentWithIdentifier:(int64_t)identifier andSegmentWithIdentifier:(int64_t)withIdentifier;
- (void)_startTransition:(id)transition;
- (void)_updateCurrentSegmentIdentifierIfNeeded;
- (void)_updatePendingTransitionModelWithSegmentTransitionInfo:(id)info;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
- (void)enumerateClipIdentifiersForActiveTransitionsUsingBlock:(id)block;
- (void)enumerateClipIdentifiersForPendingTransitionUsingBlock:(id)block;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)setActiveTransition:(id)transition;
- (void)setCurrentError:(id)error;
- (void)setCurrentSegmentIdentifier:(int64_t)identifier allowTransitions:(BOOL)transitions;
- (void)setPendingTransitionModel:(id)model;
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

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  containerCopy = container;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  fallbackTransitionReasons = [(PXStoryTransitionProducer *)self->_transitionProducer fallbackTransitionReasons];
  [v4 addObjectsFromArray:fallbackTransitionReasons];
  interruptedTransitionErrorDescriptions = [(PXStoryTransitionController *)self interruptedTransitionErrorDescriptions];
  [v4 addObjectsFromArray:interruptedTransitionErrorDescriptions];

  if ([v4 count])
  {
    v7 = [v4 componentsJoinedByString:@"\n"];
    [containerCopy addAttachmentWithText:v7 name:@"TransitionErrors"];
  }
}

- (id)diagnosticErrorsByComponentForHUDType:(int64_t)type
{
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  currentError = [(PXStoryTransitionController *)self currentError];
  [v4 setObject:currentError forKeyedSubscript:@"Transitions"];

  v6 = [v4 copy];

  return v6;
}

- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  WeakRetained = objc_loadWeakRetained(&self->_model);
  timeline = [WeakRetained timeline];

  v8 = objc_loadWeakRetained(&self->_model);
  v9 = v8;
  if (v8)
  {
    [v8 nominalPlaybackTime];
  }

  +[PXStoryAutoEditConfigurationFactory autoEditConfiguration];
  objc_claimAutoreleasedReturnValue();
  v10 = objc_loadWeakRetained(&self->_model);
  currentStyle = [v10 currentStyle];
  [currentStyle originalColorGradeCategory];
  objc_claimAutoreleasedReturnValue();

  [timeline size];
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
  model = [(PXStoryTransitionController *)self model];
  v4 = ([model shouldPauseTransitions] & 1) == 0 && objc_msgSend(model, "lastPlaybackTimeChangeSource") == 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__PXStoryTransitionController__updateCurrentSegmentIdentifierIfNeeded__block_invoke;
  v6[3] = &unk_1E773E290;
  v7 = model;
  v8 = v4;
  v5 = model;
  [(PXStoryTransitionController *)self performChanges:v6];
}

void __70__PXStoryTransitionController__updateCurrentSegmentIdentifierIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setCurrentSegmentIdentifier:objc_msgSend(v3 allowTransitions:{"currentSegmentIdentifier"), *(a1 + 40)}];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ModelObservationContext_155756 == context)
  {
    if ((change & 0x40020) != 0)
    {
      [(PXStoryTransitionController *)self _updateCurrentSegmentIdentifierIfNeeded];
    }

    if ((change & 0x400010000) != 0)
    {
      [(PXStoryTransitionController *)self _interruptActiveTransitions];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PXStoryTransitionController;
    [(PXStoryController *)&v9 observable:observableCopy didChange:change context:context];
  }
}

- (void)setCurrentError:(id)error
{
  v12 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = self->_currentError;
  v7 = v6;
  if (v6 == errorCopy)
  {
  }

  else
  {
    v8 = [(NSError *)v6 isEqual:errorCopy];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_currentError, error);
      if (errorCopy)
      {
        v9 = PLStoryGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = 138412290;
          v11 = errorCopy;
          _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_INFO, "Transition controller encountered error: %@", &v10, 0xCu);
        }
      }
    }
  }
}

- (void)enumerateClipIdentifiersForActiveTransitionsUsingBlock:(id)block
{
  v4 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  PXFilter();
}

- (void)enumerateClipIdentifiersForPendingTransitionUsingBlock:(id)block
{
  blockCopy = block;
  pendingTransitionModel = [(PXStoryTransitionController *)self pendingTransitionModel];
  v6 = pendingTransitionModel;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  if (pendingTransitionModel)
  {
    [pendingTransitionModel transitionInfo];
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
  v9 = blockCopy;
  v7 = blockCopy;
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

- (BOOL)_canStartTransitionWithKind:(char)kind
{
  kindCopy = kind;
  model = [(PXStoryTransitionController *)self model];
  desiredPlayState = [model desiredPlayState];
  entityManager = [(PXStoryTransitionController *)self entityManager];

  wantsTransitions = 0;
  v10 = [model viewMode] == 4 && (kindCopy - 4) < 0xFFFFFFFD;
  if (desiredPlayState == 1 && !v10 && entityManager)
  {
    if ([model isScrolling] & 1) != 0 || (objc_msgSend(model, "inLiveResize") & 1) != 0 || (objc_msgSend(model, "isTouching") & 1) != 0 || (objc_msgSend(model, "isPerformingViewControllerTransition"))
    {
      wantsTransitions = 0;
    }

    else
    {
      v12 = +[PXStorySettings sharedInstance];
      wantsTransitions = [v12 wantsTransitions];
    }
  }

  return wantsTransitions;
}

- (void)setActiveTransition:(id)transition
{
  v23 = *MEMORY[0x1E69E9840];
  p_activeTransition = &self->_activeTransition;
  fromSegmentIdentifier = self->_activeTransition.fromSegmentIdentifier;
  toSegmentIdentifier = self->_activeTransition.toSegmentIdentifier;
  if (fromSegmentIdentifier != transition.var0 || toSegmentIdentifier != transition.var1)
  {
    var1 = transition.var1;
    var0 = transition.var0;
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
          logContext = [(PXStoryTransitionController *)self logContext];
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
          logContext2 = [(PXStoryTransitionController *)self logContext];
          v17 = 134218496;
          logContext = logContext2;
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

- (void)setPendingTransitionModel:(id)model
{
  modelCopy = model;
  if (self->_pendingTransitionModel != modelCopy)
  {
    objc_storeStrong(&self->_pendingTransitionModel, model);
    if (modelCopy)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __57__PXStoryTransitionController_setPendingTransitionModel___block_invoke;
      v6[3] = &unk_1E773E220;
      v6[4] = self;
      v7 = modelCopy;
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

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXStoryTransitionController;
  [(PXStoryController *)&v3 performChanges:changes];
}

- (void)_handleTransitionCompleted:(id)completed
{
  v11 = *MEMORY[0x1E69E9840];
  completedCopy = completed;
  v5 = [(PXStoryTransitionController *)self log];
  v6 = os_signpost_id_make_with_pointer(v5, completedCopy);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 134217984;
      logContext = [(PXStoryTransitionController *)self logContext];
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryTransitionActive", "Context=%{signpost.telemetry:string2}lu ", buf, 0xCu);
    }
  }

  [(NSMutableArray *)self->_activeClipTransitions removeObject:completedCopy];
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

- (void)_reportInterruptedTransitionForNewTransitionBetweenSegmentWithIdentifier:(int64_t)identifier andSegmentWithIdentifier:(int64_t)withIdentifier
{
  activeTransition = [(PXStoryTransitionController *)self activeTransition];
  v9 = v8;
  interruptedTransitionErrorDescriptions = [(PXStoryTransitionController *)self interruptedTransitionErrorDescriptions];
  v11 = interruptedTransitionErrorDescriptions;
  v12 = MEMORY[0x1E695E0F0];
  if (interruptedTransitionErrorDescriptions)
  {
    v12 = interruptedTransitionErrorDescriptions;
  }

  v13 = v12;

  v14 = MEMORY[0x1E696AEC0];
  withIdentifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld → %ld", identifier, withIdentifier];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld → %ld", activeTransition, v9];
  v17 = [v14 stringWithFormat:@"New transition (%@) started while existing one (%@) was in progress.", withIdentifier, v16];
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

- (void)_startTransition:(id)transition
{
  v23 = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  v5 = [(PXStoryTransitionController *)self log];
  v6 = os_signpost_id_make_with_pointer(v5, transitionCopy);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 134218242;
      logContext = [(PXStoryTransitionController *)self logContext];
      v21 = 2114;
      v22 = transitionCopy;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PXStoryTransitionActive", "Context=%{signpost.telemetry:string2}lu %{public}@", buf, 0x16u);
    }
  }

  if (transitionCopy)
  {
    [(NSMutableArray *)self->_activeClipTransitions addObject:transitionCopy];
    objc_initWeak(buf, self);
    objc_initWeak(&location, transitionCopy);
    completionHandler = [transitionCopy completionHandler];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__PXStoryTransitionController__startTransition___block_invoke;
    v14[3] = &unk_1E773E1F8;
    objc_copyWeak(&v16, buf);
    objc_copyWeak(&v17, &location);
    v9 = completionHandler;
    v15 = v9;
    [transitionCopy setCompletionHandler:v14];
    model = [(PXStoryTransitionController *)self model];
    animationController = [model animationController];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__PXStoryTransitionController__startTransition___block_invoke_2;
    v12[3] = &unk_1E774A370;
    v13 = transitionCopy;
    [animationController performChanges:v12];

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
  pendingTransitionModel = [(PXStoryTransitionController *)self pendingTransitionModel];
  if (pendingTransitionModel)
  {
    [(PXStoryTransitionController *)self setPendingTransitionModel:0];
    model = [(PXStoryTransitionController *)self model];
    v5 = objc_alloc_init(PXStoryTransitionConfiguration);
    [(PXStoryTransitionConfiguration *)v5 setTransitionModel:pendingTransitionModel];
    entityManager = [(PXStoryTransitionController *)self entityManager];
    [(PXStoryTransitionConfiguration *)v5 setEntityManager:entityManager];

    transitionSource = [(PXStoryTransitionController *)self transitionSource];
    [(PXStoryTransitionConfiguration *)v5 setSource:transitionSource];

    timeline = [model timeline];
    [(PXStoryTransitionConfiguration *)v5 setTimeline:timeline];

    timelineSpec = [model timelineSpec];
    [(PXStoryTransitionConfiguration *)v5 setTimelineSpec:timelineSpec];

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

    fallbackTransitionReasons = [(PXStoryTransitionProducer *)self->_transitionProducer fallbackTransitionReasons];
    v16 = [fallbackTransitionReasons count];

    if (v16 >= 1)
    {
      v23 = PXStoryErrorCreateWithCodeDebugFormat(18, @"Transitions fell back to cuts %ld times.", v17, v18, v19, v20, v21, v22, v16);
      [(PXStoryTransitionController *)self setCurrentError:v23];
    }
  }
}

- (void)_updatePendingTransitionModelWithSegmentTransitionInfo:(id)info
{
  model = [(PXStoryTransitionController *)self model];
  timeline = [model timeline];

  [timeline size];
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

- (void)setCurrentSegmentIdentifier:(int64_t)identifier allowTransitions:(BOOL)transitions
{
  currentSegmentIdentifier = self->_currentSegmentIdentifier;
  if (currentSegmentIdentifier != identifier)
  {
    transitionsCopy = transitions;
    self->_currentSegmentIdentifier = identifier;
    activeTransition = [(PXStoryTransitionController *)self activeTransition];
    if (activeTransition | v9)
    {
      v10 = +[PXStoryTransitionsSettings sharedInstance];
      v11 = v10;
      if (transitionsCopy && ([v10 suppressInterruptedTransitionErrors] & 1) == 0)
      {
        [(PXStoryTransitionController *)self _reportInterruptedTransitionForNewTransitionBetweenSegmentWithIdentifier:currentSegmentIdentifier andSegmentWithIdentifier:identifier];
      }

      [(PXStoryTransitionController *)self _interruptActiveTransitions];
    }

    if (transitionsCopy)
    {
      model = [(PXStoryTransitionController *)self model];
      timeline = [model timeline];

      v13 = [timeline indexOfSegmentWithIdentifier:currentSegmentIdentifier];
      if (v13 + 1 == [timeline indexOfSegmentWithIdentifier:identifier])
      {
        [(PXStoryTransitionController *)self _updatePendingTransitionModelWithSegmentTransitionInfo:currentSegmentIdentifier, identifier];
      }
    }
  }
}

- (PXStoryTransitionController)initWithModel:(id)model transitionSource:(id)source
{
  modelCopy = model;
  sourceCopy = source;
  v20.receiver = self;
  v20.super_class = PXStoryTransitionController;
  v8 = [(PXStoryController *)&v20 initWithObservableModel:modelCopy];
  v9 = v8;
  if (v8)
  {
    v10 = objc_storeWeak(&v8->_model, modelCopy);
    [modelCopy registerChangeObserver:v9 context:ModelObservationContext_155756];

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
    objc_storeWeak(&v12->_transitionSource, sourceCopy);
    v13 = objc_alloc_init(PXStoryTransitionProducer);
    transitionProducer = v12->_transitionProducer;
    v12->_transitionProducer = v13;

    v12->_currentSegmentIdentifier = [modelCopy currentSegmentIdentifier];
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    activeClipTransitions = v12->_activeClipTransitions;
    v12->_activeClipTransitions = v15;
  }

  return v9;
}

+ (BOOL)_isSupportedTransitionWithKind:(char)kind forClipWithResourceKind:(int64_t)resourceKind
{
  if (_isSupportedTransitionWithKind_forClipWithResourceKind__onceToken != -1)
  {
    dispatch_once(&_isSupportedTransitionWithKind_forClipWithResourceKind__onceToken, &__block_literal_global_155802);
  }

  v5 = _isSupportedTransitionWithKind_forClipWithResourceKind__supportedTransitionKinds;

  return [v5 containsIndex:resourceKind];
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
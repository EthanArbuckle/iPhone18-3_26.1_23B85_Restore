@interface PXStoryValidationController
+ (id)_validateTimeline:(id)timeline progress:(id)progress;
- (PXStoryValidationController)initWithObservableModel:(id)model;
- (PXStoryValidationController)initWithViewModel:(id)model;
- (PXStoryViewModel)viewModel;
- (id)diagnosticErrorsByComponentForHUDType:(int64_t)type;
- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size;
- (void)_handleTimelineValidationError:(id)error progress:(id)progress;
- (void)_invalidateModel;
- (void)_invalidateTimelineToValidate;
- (void)_invalidateTimelineValidation;
- (void)_updateModel;
- (void)_updateTimelineToValidate;
- (void)_updateTimelineValidation;
- (void)configureUpdater:(id)updater;
- (void)dealloc;
- (void)handleModelChange:(unint64_t)change;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setIsActive:(BOOL)active;
- (void)setModel:(id)model;
- (void)setTimelineToValidate:(id)validate;
- (void)setTimelineValidationError:(id)error;
- (void)setTimelineValidationProgress:(id)progress;
@end

@implementation PXStoryValidationController

- (PXStoryViewModel)viewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ModelObservationContext_38280 == context)
  {
    if ((change & 0x20000010) != 0)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __60__PXStoryValidationController_observable_didChange_context___block_invoke;
      v10[3] = &unk_1E7731240;
      v10[4] = self;
      [(PXStoryController *)self performChanges:v10];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PXStoryValidationController;
    [(PXStoryController *)&v9 observable:observableCopy didChange:change context:context];
  }
}

- (void)handleModelChange:(unint64_t)change
{
  changeCopy = change;
  v6.receiver = self;
  v6.super_class = PXStoryValidationController;
  [(PXStoryController *)&v6 handleModelChange:?];
  if ((changeCopy & 0x40) != 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__PXStoryValidationController_handleModelChange___block_invoke;
    v5[3] = &unk_1E7731240;
    v5[4] = self;
    [(PXStoryController *)self performChanges:v5];
  }
}

- (id)diagnosticErrorsByComponentForHUDType:(int64_t)type
{
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  timelineValidationError = [(PXStoryValidationController *)self timelineValidationError];
  [v4 setObject:timelineValidationError forKeyedSubscript:@"TimelineValidation"];

  v6 = [v4 copy];

  return v6;
}

- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([(PXStoryValidationController *)self isActive])
  {
    timelineToValidate = [(PXStoryValidationController *)self timelineToValidate];

    if (timelineToValidate)
    {
      timelineValidationProgress = [(PXStoryValidationController *)self timelineValidationProgress];

      if (timelineValidationProgress)
      {
        v8 = @"Validating…";
      }

      else
      {
        timelineValidationError = [(PXStoryValidationController *)self timelineValidationError];

        v10 = objc_alloc(MEMORY[0x1E696AEC0]);
        v11 = v10;
        if (timelineValidationError)
        {
          timelineValidationError2 = [(PXStoryValidationController *)self timelineValidationError];
          v13 = PXStoryErrorDetailsDescription(timelineValidationError2);
          v8 = [v11 initWithFormat:@"❌ %@", v13];
        }

        else
        {
          v8 = [v10 initWithFormat:@"✅"];
        }
      }
    }

    else
    {
      v8 = @"Waiting…";
    }

    [v5 appendFormat:@"Timeline: %@\n", v8];
    [v5 appendFormat:@"Validation Count: %li\n", -[PXStoryValidationController timelineValidationCount](self, "timelineValidationCount")];
  }

  else
  {
    [v5 appendString:@"⚠️ Inactive"];
  }

  v14 = [v5 copy];

  return v14;
}

- (void)_handleTimelineValidationError:(id)error progress:(id)progress
{
  errorCopy = error;
  if (([progress isCancelled] & 1) == 0)
  {
    [(PXStoryValidationController *)self setTimelineValidationProgress:0];
    [(PXStoryValidationController *)self setTimelineValidationError:errorCopy];
    [(PXStoryValidationController *)self setTimelineValidationCount:[(PXStoryValidationController *)self timelineValidationCount]+ 1];
  }
}

- (void)_updateTimelineValidation
{
  if ([(PXStoryValidationController *)self isActive])
  {
    timelineToValidate = [(PXStoryValidationController *)self timelineToValidate];
    if (timelineToValidate)
    {
      v4 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:0];
      objc_initWeak(&location, self);
      workQueue = [(PXStoryValidationController *)self workQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__PXStoryValidationController__updateTimelineValidation__block_invoke;
      block[3] = &unk_1E7748228;
      v6 = v4;
      v8 = v6;
      v9 = timelineToValidate;
      selfCopy = self;
      objc_copyWeak(&v11, &location);
      dispatch_async(workQueue, block);

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }

    else
    {
      v6 = 0;
    }

    [(PXStoryValidationController *)self setTimelineValidationProgress:v6];
  }
}

void __56__PXStoryValidationController__updateTimelineValidation__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v2 = [PXStoryValidationController _validateTimeline:*(a1 + 40) progress:*(a1 + 32)];
    v3 = [*(a1 + 48) storyQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__PXStoryValidationController__updateTimelineValidation__block_invoke_2;
    block[3] = &unk_1E774B708;
    objc_copyWeak(&v8, (a1 + 56));
    v6 = v2;
    v7 = *(a1 + 32);
    v4 = v2;
    dispatch_async(v3, block);

    objc_destroyWeak(&v8);
  }
}

void __56__PXStoryValidationController__updateTimelineValidation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleTimelineValidationError:*(a1 + 32) progress:*(a1 + 40)];
}

- (void)_invalidateTimelineValidation
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateTimelineValidation];
}

- (void)_updateTimelineToValidate
{
  model = [(PXStoryValidationController *)self model];
  v3 = +[PXStorySettings sharedInstance];
  if ([v3 validationShouldWaitForTimelineToBeReadyToPlay])
  {
    v4 = [model timelineAttributes] & 3;

    if (!v4)
    {
      timeline = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  timeline = [model timeline];
LABEL_6:
  [(PXStoryValidationController *)self setTimelineToValidate:timeline];
}

- (void)_invalidateTimelineToValidate
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateTimelineToValidate];
}

- (void)_updateModel
{
  viewModel = [(PXStoryValidationController *)self viewModel];
  mainModel = [viewModel mainModel];
  [(PXStoryValidationController *)self setModel:mainModel];
}

- (void)_invalidateModel
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateModel];
}

- (void)setTimelineValidationError:(id)error
{
  errorCopy = error;
  if (self->_timelineValidationError != errorCopy)
  {
    v7 = errorCopy;
    objc_storeStrong(&self->_timelineValidationError, error);
    errorReporter = [(PXStoryValidationController *)self errorReporter];
    [errorReporter setError:self->_timelineValidationError forComponent:@"TimelineValidation"];

    errorCopy = v7;
  }
}

- (void)setTimelineValidationProgress:(id)progress
{
  progressCopy = progress;
  timelineValidationProgress = self->_timelineValidationProgress;
  if (timelineValidationProgress != progressCopy)
  {
    v7 = progressCopy;
    [(NSProgress *)timelineValidationProgress cancel];
    objc_storeStrong(&self->_timelineValidationProgress, progress);
    progressCopy = v7;
  }
}

- (void)setTimelineToValidate:(id)validate
{
  validateCopy = validate;
  v6 = validateCopy;
  if (self->_timelineToValidate != validateCopy)
  {
    v8 = validateCopy;
    v7 = [(PXStoryTimeline *)validateCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_timelineToValidate, validate);
      [(PXStoryValidationController *)self _invalidateTimelineValidation];
      v6 = v8;
    }
  }
}

- (void)setModel:(id)model
{
  modelCopy = model;
  model = self->_model;
  if (model != modelCopy)
  {
    v7 = modelCopy;
    [(PXStoryModel *)model unregisterChangeObserver:self context:ModelObservationContext_38280];
    objc_storeStrong(&self->_model, model);
    [(PXStoryModel *)self->_model registerChangeObserver:self context:ModelObservationContext_38280];
    [(PXStoryValidationController *)self _invalidateTimelineToValidate];
    modelCopy = v7;
  }
}

- (void)setIsActive:(BOOL)active
{
  if (self->_isActive != active)
  {
    self->_isActive = active;
    [(PXStoryValidationController *)self _invalidateTimelineValidation];
  }
}

- (void)configureUpdater:(id)updater
{
  v4.receiver = self;
  v4.super_class = PXStoryValidationController;
  updaterCopy = updater;
  [(PXStoryController *)&v4 configureUpdater:updaterCopy];
  [updaterCopy addUpdateSelector:{sel__updateModel, v4.receiver, v4.super_class}];
  [updaterCopy addUpdateSelector:sel__updateTimelineToValidate];
  [updaterCopy addUpdateSelector:sel__updateTimelineValidation];
}

- (void)dealloc
{
  [(NSProgress *)self->_timelineValidationProgress cancel];
  v3.receiver = self;
  v3.super_class = PXStoryValidationController;
  [(PXStoryValidationController *)&v3 dealloc];
}

- (PXStoryValidationController)initWithViewModel:(id)model
{
  modelCopy = model;
  v24.receiver = self;
  v24.super_class = PXStoryValidationController;
  v5 = [(PXStoryController *)&v24 initWithObservableModel:modelCopy];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_viewModel, modelCopy);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __49__PXStoryValidationController_initWithViewModel___block_invoke;
    v22[3] = &unk_1E774B048;
    v8 = v6;
    v23 = v8;
    [modelCopy performChanges:v22];

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    uTF8String = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_UTILITY, 0);
    v14 = dispatch_queue_create(uTF8String, v13);
    workQueue = v8->_workQueue;
    v8->_workQueue = v14;

    WeakRetained = objc_loadWeakRetained(&v6->_viewModel);
    errorReporter = [WeakRetained errorReporter];
    errorReporter = v8->_errorReporter;
    v8->_errorReporter = errorReporter;

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __49__PXStoryValidationController_initWithViewModel___block_invoke_2;
    v20[3] = &unk_1E7731240;
    v21 = v8;
    [(PXStoryController *)v21 performChanges:v20];
  }

  return v6;
}

- (PXStoryValidationController)initWithObservableModel:(id)model
{
  modelCopy = model;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryValidationController.m" lineNumber:39 description:{@"%s is not available as initializer", "-[PXStoryValidationController initWithObservableModel:]"}];

  abort();
}

+ (id)_validateTimeline:(id)timeline progress:(id)progress
{
  timelineCopy = timeline;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [timelineCopy size];
  PXRectWithOriginAndSize();
}

void __58__PXStoryValidationController__validateTimeline_progress___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = 0;
  v61 = PXStoryTransitionInfoNone;
  v62 = unk_1A5383378;
  if (a2 >= 1)
  {
    v5 = a2;
    v6 = 0;
    v7 = MEMORY[0x1E69E9820];
    v8 = (a4 + 136);
    v9 = (a3 + 24);
    v28 = MEMORY[0x1E69E9820];
    do
    {
      aBlock[0] = v7;
      aBlock[1] = 3221225472;
      aBlock[2] = __58__PXStoryValidationController__validateTimeline_progress___block_invoke_2;
      aBlock[3] = &unk_1E7731290;
      v59 = *(a1 + 32);
      v60 = v6;
      v10 = _Block_copy(aBlock);
      v11 = *(v9 - 8);
      v55 = *(v9 - 24);
      v56 = v11;
      v57 = *(v9 + 8);
      v12 = *(v8 + 8);
      v13 = *(v8 + 40);
      v52 = *(v8 + 24);
      v53 = v13;
      v54 = *(v8 + 7);
      v14 = *(v8 - 56);
      v15 = *(v8 - 24);
      v48 = *(v8 - 40);
      v49 = v15;
      v50 = *(v8 - 8);
      v51 = v12;
      v16 = *(v8 - 120);
      v17 = *(v8 - 88);
      v44 = *(v8 - 104);
      v45 = v17;
      v46 = *(v8 - 72);
      v47 = v14;
      v42 = *(v8 - 136);
      v43 = v16;
      v40 = *v9;
      v41 = *(v9 + 2);
      v38 = *v8;
      v39 = *(v8 + 2);
      *time1 = *v9;
      *&time1[16] = *(v9 + 2);
      time2 = *v8;
      if (CMTimeCompare(time1, &time2) == 1)
      {
        v18 = *(a1 + 32);
        v19 = MEMORY[0x1E696AEC0];
        *time1 = v40;
        *&time1[16] = v41;
        v20 = PXStoryTimeDescription(time1);
        *time1 = v38;
        *&time1[16] = v39;
        v21 = PXStoryTimeDescription(time1);
        v22 = [v19 stringWithFormat:@"segment duration exceeding maximum allowed (#%li: %@ > %@)", v6, v20, v21];
        [v18 addObject:v22];

        v5 = a2;
        v7 = v28;
      }

      time2.value = 0;
      *&time2.timescale = &time2;
      time2.epoch = 0x2020000000;
      v37 = 0;
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v35 = 0;
      v23 = *(a1 + 40);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __58__PXStoryValidationController__validateTimeline_progress___block_invoke_6;
      v31[3] = &unk_1E77312B8;
      v31[4] = &time2;
      v31[5] = &v32;
      *time1 = v55;
      *&time1[16] = v56;
      v30 = v57;
      [v23 enumerateClipsInTimeRange:time1 rect:v31 usingBlock:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
      if (*(*&time2.timescale + 24) == 1)
      {
        v24 = v33[3];
      }

      else
      {
        v24 = 0;
      }

      v25 = v10[2];
      *time1 = v61;
      *&time1[16] = v62;
      *&v30 = v63;
      v25(v10, v24, time1, 0);
      v26 = v10[2];
      *time1 = v45;
      *&time1[16] = v46;
      *&v30 = v47;
      v26(v10, v24, time1, 1);
      v61 = v45;
      v62 = v46;
      v63 = v47;
      _Block_object_dispose(&v32, 8);
      _Block_object_dispose(&time2, 8);

      ++v6;
      v8 = (v8 + 200);
      v9 += 3;
    }

    while (v5 != v6);
  }
}

void __58__PXStoryValidationController__validateTimeline_progress___block_invoke_2(uint64_t a1, uint64_t a2, unsigned __int8 *a3, char a4)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__PXStoryValidationController__validateTimeline_progress___block_invoke_3;
  aBlock[3] = &unk_1E7731268;
  v8 = *(a1 + 32);
  v28 = a4;
  v9 = *(a1 + 40);
  v26 = v8;
  v27 = v9;
  v10 = _Block_copy(aBlock);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __58__PXStoryValidationController__validateTimeline_progress___block_invoke_4;
  v23[3] = &unk_1E774C250;
  v11 = v10;
  v24 = v11;
  v12 = _Block_copy(v23);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __58__PXStoryValidationController__validateTimeline_progress___block_invoke_5;
  v21[3] = &unk_1E774C250;
  v22 = v11;
  v13 = v11;
  v14 = _Block_copy(v21);
  v15 = v14;
  v16 = *a3;
  if (v16 <= 0xA)
  {
    v17 = qword_1A53825E0[v16];
    if (v17 > 3)
    {
      if (v17 != 4)
      {
        if (v17 != 6)
        {
          goto LABEL_37;
        }

LABEL_8:
        v18 = a3[29];
        if (v18 == 2)
        {
          v14 = v12;
          if (a2 != 2)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v18 != 1)
          {
            goto LABEL_37;
          }

          v14 = v12;
          if (a2 != 3)
          {
            goto LABEL_37;
          }
        }

        goto LABEL_36;
      }

      v20 = a3[29];
      if (v20 == 2)
      {
        v14 = v12;
        if ((a2 - 11) > 2)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      if (v20 == 1)
      {
        v14 = v12;
        if ((a2 - 8) < 3)
        {
LABEL_36:
          (*(v14 + 2))();
        }
      }
    }

    else
    {
      if (v17 != 2)
      {
        if (v17 != 3)
        {
          goto LABEL_37;
        }

        goto LABEL_8;
      }

      v19 = a3[29];
      if (v19 > 2)
      {
        if (v19 == 3)
        {
          if ((a2 - 4) < 2)
          {
            goto LABEL_36;
          }

          v14 = v12;
          if (a2 == 7)
          {
            goto LABEL_36;
          }
        }

        else if (v19 == 4)
        {
          if ((a2 - 4) < 2)
          {
            goto LABEL_36;
          }

          v14 = v12;
          if (a2 == 6)
          {
            goto LABEL_36;
          }
        }
      }

      else if (v19 == 1)
      {
        if ((a2 - 6) < 2)
        {
          goto LABEL_36;
        }

        v14 = v12;
        if (a2 == 5)
        {
          goto LABEL_36;
        }
      }

      else if (v19 == 2)
      {
        if ((a2 - 6) < 2)
        {
          goto LABEL_36;
        }

        v14 = v12;
        if (a2 == 4)
        {
          goto LABEL_36;
        }
      }
    }
  }

LABEL_37:
}

uint64_t __58__PXStoryValidationController__validateTimeline_progress___block_invoke_6(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v14 = v5;
    v15 = v6;
    v8 = a2;
    do
    {
      if (*(a5 + 8) == 1)
      {
        ++*(*(*(result + 32) + 8) + 24);
        v9 = *(a5 + 632);
        v12[4] = *(a5 + 616);
        v12[5] = v9;
        v12[6] = *(a5 + 648);
        v13 = *(a5 + 664);
        v10 = *(a5 + 568);
        v12[0] = *(a5 + 552);
        v12[1] = v10;
        v11 = *(a5 + 600);
        v12[2] = *(a5 + 584);
        v12[3] = v11;
        PXStoryClipKenBurnsAnimationInfoGetMovementType(v12);
      }

      a5 += 768;
      --v8;
    }

    while (v8);
  }

  return result;
}

void __58__PXStoryValidationController__validateTimeline_progress___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E696AEC0];
  v5 = a2;
  v6 = [v4 alloc];
  v7 = @"before";
  if (*(a1 + 48))
  {
    v7 = @"after";
  }

  v8 = [v6 initWithFormat:@"%@ (%@ segment #%li)", v5, v7, *(a1 + 40)];

  [v3 addObject:v8];
}

@end
@interface PXStoryTimelineManager
+ (PXStoryTimelineManager)timelineManagerWithTimelineProducer:(id)producer resourcesDataSourceManager:(id)manager styleManager:(id)styleManager specManager:(id)specManager configuration:(id)configuration loadingCoordinator:(id)coordinator paperTrailOptions:(unint64_t)options;
- (BOOL)requiresUpdatedTargetTimelineImmediately;
- (PXStoryTimelineManager)init;
- (PXStoryTimelineManager)initWithTimelineProducer:(id)producer resourcesDataSourceManager:(id)manager styleManager:(id)styleManager specManager:(id)specManager loadingCoordinator:(id)coordinator errorReporter:(id)reporter options:(unint64_t)options paperTrailOptions:(unint64_t)self0;
- (_NSRange)_rangeOfVisibleDisplayAssetsInResourcesDataSource:(id)source;
- (id)_diagnosticMovementTextForClipInfo:(id *)info segmentClipCount:(int)count autoEditClip:(id)clip;
- (id)_diagnosticStyleTextForClipInfo:(id *)info segmentClipCount:(int)count autoEditClip:(id)clip;
- (id)_diagnosticTextForSegmentIdentifier:(int64_t)identifier segmentTimeRange:(id *)range HUDType:(int64_t)type decisionList:(id)list;
- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size;
- (void)_applyPendingVisibleSegmentIdentifiers;
- (void)_handleUpdatedTargetTimelineResult:(id)result;
- (void)_invalidatePendingVisibleSegmentIdentifiers;
- (void)_invalidateTargetTimeline;
- (void)_invalidateTimeline;
- (void)_invalidateTimelineAttributes;
- (void)_updatePendingVisibleSegmentIdentifiers;
- (void)_updateTargetTimeline;
- (void)_updateTimeline;
- (void)_updateTimelineAttributes;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
- (void)dealloc;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)setIsTargetTimelineFinal:(BOOL)final;
- (void)setIsTimelineFinal:(BOOL)final;
- (void)setTargetTimelineProgress:(id)progress;
- (void)setTargetTimelineResult:(id)result;
- (void)setTimeline:(id)timeline;
- (void)setTimelineAttributes:(unint64_t)attributes;
- (void)setVisibleSegmentIdentifiers:(id)identifiers;
- (void)setVisibleSegmentIdentifiers:(id)identifiers afterUpdatePass:(BOOL)pass;
@end

@implementation PXStoryTimelineManager

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  v34 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v23 = objc_alloc_init(PXStoryDurationFormatter);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  selfCopy = self;
  v5 = self->_targetTimelineResultsPaperTrail;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        object = [v10 object];
        diagnosticDescription = [object diagnosticDescription];
        isDegraded = [v10 isDegraded];
        [v10 productionDuration];
        v14 = [(PXStoryDurationFormatter *)v23 stringFromTimeInterval:?];
        [v4 appendFormat:@"Timeline: %@\n Is Degraded: %d\nProduction Duration: %@\n\n\n", diagnosticDescription, isDegraded, v14, selfCopy];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  [containerCopy addAttachmentWithText:v4 name:@"TimelineManagerTargetTimelineResults"];
  v15 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = selfCopy->_timelinesPaperTrail;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [v15 appendFormat:@"%@\n\n\n", *(*(&v24 + 1) + 8 * j)];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  [containerCopy addAttachmentWithText:v4 name:@"TimelineManagerTimelines"];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__PXStoryTimelineManager_observable_didChange_context___block_invoke;
  v5[3] = &unk_1E7746748;
  v5[4] = self;
  v5[5] = context;
  v5[6] = change;
  v5[7] = a2;
  [(PXStoryTimelineManager *)self performChanges:v5];
}

void __55__PXStoryTimelineManager_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4 == ResourcesDataSourceManagerObservationContext_133803)
  {
    v5 = *(a1 + 48);
    v8 = v3;
    if (v5)
    {
      [*(a1 + 32) _invalidateTargetTimeline];
      v3 = v8;
      v5 = *(a1 + 48);
    }

    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_13:
    [*(a1 + 32) _invalidateTimelineAttributes];
    goto LABEL_14;
  }

  if (v4 == StyleManagerObservationContext_133804)
  {
    v6 = *(a1 + 48);
    v8 = v3;
    if ((v6 & 4) != 0)
    {
      [*(a1 + 32) _invalidateTargetTimeline];
      v3 = v8;
      v6 = *(a1 + 48);
    }

    if ((v6 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v4 != SpecManagerObservationContext_133805)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXStoryTimelineManager.m" lineNumber:400 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (*(a1 + 48))
  {
    v8 = v3;
    [*(a1 + 32) _invalidateTargetTimeline];
LABEL_14:
    v3 = v8;
  }

LABEL_15:
}

- (void)_updateTimelineAttributes
{
  targetTimelineProgress = [(PXStoryTimelineManager *)self targetTimelineProgress];

  if (targetTimelineProgress)
  {
    return;
  }

  resourcesDataSourceManager = [(PXStoryTimelineManager *)self resourcesDataSourceManager];
  if (![resourcesDataSourceManager isDataSourceFinal])
  {

    goto LABEL_6;
  }

  isTargetTimelineFinal = [(PXStoryTimelineManager *)self isTargetTimelineFinal];

  if (!isTargetTimelineFinal)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  styleManager = [(PXStoryTimelineManager *)self styleManager];
  currentStyleAttributes = [styleManager currentStyleAttributes];

  v8 = currentStyleAttributes & 3;
LABEL_7:

  [(PXStoryTimelineManager *)self setTimelineAttributes:v8];
}

- (void)_invalidateTimelineAttributes
{
  updater = [(PXStoryTimelineManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateTimelineAttributes];
}

- (void)_updateTimeline
{
  isUpdatingTimeline = self->_isUpdatingTimeline;
  self->_isUpdatingTimeline = 1;
  timeline = [(PXStoryTimelineManager *)self timeline];
  visibleSegmentIdentifiers = [(PXStoryTimelineManager *)self visibleSegmentIdentifiers];
  targetTimelineResult = [(PXStoryTimelineManager *)self targetTimelineResult];
  object = [targetTimelineResult object];

  v8 = [PXStoryRecombinedTimeline timelineByRecombiningSourceTimeline:timeline withTargetTimeline:object visibleSegmentIdentifiers:visibleSegmentIdentifiers];
  v9 = visibleSegmentIdentifiers;
  v10 = v9;
  if ([v9 count])
  {
    v10 = v9;
    if (([v8 containsAllSegmentsWithIdentifiers:v9] & 1) == 0)
    {
      v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __41__PXStoryTimelineManager__updateTimeline__block_invoke;
      v13[3] = &unk_1E774C1B0;
      v14 = v8;
      v15 = timeline;
      v16 = v11;
      v12 = v11;
      [v9 enumerateIndexesUsingBlock:v13];
      v10 = [v12 copy];
    }
  }

  [(PXStoryTimelineManager *)self setTimeline:v8];
  [(PXStoryTimelineManager *)self setVisibleSegmentIdentifiers:v10];
  self->_isUpdatingTimeline = isUpdatingTimeline;
}

uint64_t __41__PXStoryTimelineManager__updateTimeline__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) identifierOfSegmentClosestToSegmentWithIdentifier:a2 inTimeline:*(a1 + 40)];
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 48);

    return [v5 addIndex:v4];
  }

  return result;
}

- (void)_invalidateTimeline
{
  updater = [(PXStoryTimelineManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateTimeline];
}

- (void)_updatePendingVisibleSegmentIdentifiers
{
  pendingVisibleSegmentIdentifiers = [(PXStoryTimelineManager *)self pendingVisibleSegmentIdentifiers];
  if (pendingVisibleSegmentIdentifiers)
  {
    v4 = pendingVisibleSegmentIdentifiers;
    [(PXStoryTimelineManager *)self setVisibleSegmentIdentifiers:pendingVisibleSegmentIdentifiers];
    [(PXStoryTimelineManager *)self setPendingVisibleSegmentIdentifiers:0];
    pendingVisibleSegmentIdentifiers = v4;
  }
}

- (void)_invalidatePendingVisibleSegmentIdentifiers
{
  updater = [(PXStoryTimelineManager *)self updater];
  [updater setNeedsUpdateOf:sel__updatePendingVisibleSegmentIdentifiers];
}

- (void)_handleUpdatedTargetTimelineResult:(id)result
{
  resultCopy = result;
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __61__PXStoryTimelineManager__handleUpdatedTargetTimelineResult___block_invoke;
  v9 = &unk_1E773BF10;
  selfCopy = self;
  v11 = resultCopy;
  v5 = resultCopy;
  [(PXStoryTimelineManager *)self performChanges:&v6];
  [(NSMutableArray *)self->_targetTimelineResultsPaperTrail px_addObject:v5 removingFirstObjectIfNeededToKeepMaximumCount:self->_paperTrailLength, v6, v7, v8, v9, selfCopy];
}

uint64_t __61__PXStoryTimelineManager__handleUpdatedTargetTimelineResult___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTargetTimelineResult:*(a1 + 40)];
  result = [*(a1 + 40) isDegraded];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setTargetTimelineProgress:0];
  }

  return result;
}

- (void)_updateTargetTimeline
{
  if (([(PXStoryTimelineManager *)self timelineAttributes]& 2) == 0 || ([(PXStoryTimelineManager *)self options]& 1) == 0)
  {
    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x3032000000;
    v5[3] = __Block_byref_object_copy__133819;
    v5[4] = __Block_byref_object_dispose__133820;
    v5[5] = 0;
    specManager = [(PXStoryTimelineManager *)self specManager];
    timelineSpec = [specManager timelineSpec];

    [timelineSpec viewportSize];
    PXSizeIsNull();
  }
}

void __47__PXStoryTimelineManager__updateTargetTimeline__block_invoke_32(uint64_t a1)
{
  if (([*(*(*(a1 + 40) + 8) + 40) isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _handleUpdatedTargetTimelineResult:*(a1 + 32)];
  }
}

- (void)_invalidateTargetTimeline
{
  updater = [(PXStoryTimelineManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateTargetTimeline];
}

- (void)_applyPendingVisibleSegmentIdentifiers
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64__PXStoryTimelineManager__applyPendingVisibleSegmentIdentifiers__block_invoke;
  v2[3] = &unk_1E773BEC0;
  v2[4] = self;
  [(PXStoryTimelineManager *)self performChanges:v2];
}

- (void)setVisibleSegmentIdentifiers:(id)identifiers afterUpdatePass:(BOOL)pass
{
  passCopy = pass;
  identifiersCopy = identifiers;
  v7 = identifiersCopy;
  if (passCopy)
  {
    if (identifiersCopy)
    {
      [(PXStoryTimelineManager *)self setPendingVisibleSegmentIdentifiers:identifiersCopy];
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E696AC90]);
      [(PXStoryTimelineManager *)self setPendingVisibleSegmentIdentifiers:v8];
    }

    objc_initWeak(&location, self);
    storyQueue = [(PXStoryTimelineManager *)self storyQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__PXStoryTimelineManager_setVisibleSegmentIdentifiers_afterUpdatePass___block_invoke;
    v10[3] = &unk_1E774C318;
    objc_copyWeak(&v11, &location);
    dispatch_async(storyQueue, v10);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PXStoryTimelineManager *)self setVisibleSegmentIdentifiers:identifiersCopy];
  }
}

void __71__PXStoryTimelineManager_setVisibleSegmentIdentifiers_afterUpdatePass___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _applyPendingVisibleSegmentIdentifiers];
}

- (void)setVisibleSegmentIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = identifiersCopy;
  if (self->_visibleSegmentIdentifiers != identifiersCopy)
  {
    v9 = identifiersCopy;
    v6 = [(NSIndexSet *)identifiersCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSIndexSet *)v9 copy];
      visibleSegmentIdentifiers = self->_visibleSegmentIdentifiers;
      self->_visibleSegmentIdentifiers = v7;

      [(PXStoryTimelineManager *)self setPendingVisibleSegmentIdentifiers:0];
      v5 = v9;
      if (!self->_isUpdatingTimeline)
      {
        [(PXStoryTimelineManager *)self _invalidateTimeline];
        v5 = v9;
      }
    }
  }
}

- (_NSRange)_rangeOfVisibleDisplayAssetsInResourcesDataSource:(id)source
{
  sourceCopy = source;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3010000000;
  v20 = &unk_1A561E057;
  v21 = xmmword_1A5380D90;
  timeline = [(PXStoryTimelineManager *)self timeline];
  visibleSegmentIdentifiers = [(PXStoryTimelineManager *)self visibleSegmentIdentifiers];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__PXStoryTimelineManager__rangeOfVisibleDisplayAssetsInResourcesDataSource___block_invoke;
  v13[3] = &unk_1E773BE98;
  v7 = timeline;
  v14 = v7;
  v8 = sourceCopy;
  v15 = v8;
  v16 = &v17;
  [visibleSegmentIdentifiers enumerateIndexesUsingBlock:v13];

  v9 = v18[4];
  v10 = v18[5];

  _Block_object_dispose(&v17, 8);
  v11 = v9;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

void __76__PXStoryTimelineManager__rangeOfVisibleDisplayAssetsInResourcesDataSource___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) indexesOfResourcesWithKind:1 inResourcesDataSource:*(a1 + 40) forClipsInSegmentWithIdentifier:a2];
  if ([v5 count])
  {
    v3 = *(*(a1 + 48) + 8);
    v7.location = [v5 firstIndex];
    v7.length = 1;
    *(*(*(a1 + 48) + 8) + 32) = NSUnionRange(v3[2], v7);
    v4 = *(*(a1 + 48) + 8);
    v8.location = [v5 lastIndex];
    v8.length = 1;
    *(*(*(a1 + 48) + 8) + 32) = NSUnionRange(v4[2], v8);
  }
}

- (void)setTargetTimelineProgress:(id)progress
{
  progressCopy = progress;
  targetTimelineProgress = self->_targetTimelineProgress;
  if (targetTimelineProgress != progressCopy)
  {
    v7 = progressCopy;
    [(NSProgress *)targetTimelineProgress cancel];
    objc_storeStrong(&self->_targetTimelineProgress, progress);
    [(PXStoryTimelineManager *)self _invalidateTimelineAttributes];
    progressCopy = v7;
  }
}

- (BOOL)requiresUpdatedTargetTimelineImmediately
{
  targetTimelineResult = [(PXStoryTimelineManager *)self targetTimelineResult];
  object = [targetTimelineResult object];

  if (!object)
  {
    goto LABEL_11;
  }

  [object size];
  if (v6 == *MEMORY[0x1E695F060] && v5 == *(MEMORY[0x1E695F060] + 8))
  {
    goto LABEL_11;
  }

  [object size];
  v9 = v8;
  v11 = v10;
  specManager = [(PXStoryTimelineManager *)self specManager];
  timelineSpec = [specManager timelineSpec];
  [timelineSpec viewportSize];
  if (v9 == v15 && v11 == v14)
  {

LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  options = [(PXStoryTimelineManager *)self options];

  if ((options & 4) != 0)
  {
    goto LABEL_11;
  }

  v17 = 1;
LABEL_12:

  return v17;
}

- (void)setIsTimelineFinal:(BOOL)final
{
  if (self->_isTimelineFinal != final)
  {
    self->_isTimelineFinal = final;
    [(PXStoryTimelineManager *)self signalChange:2];
  }
}

- (void)setTimelineAttributes:(unint64_t)attributes
{
  if (self->_timelineAttributes != attributes)
  {
    self->_timelineAttributes = attributes;
    [(PXStoryTimelineManager *)self signalChange:4];
    v4 = (self->_timelineAttributes >> 1) & 1;

    [(PXStoryTimelineManager *)self setIsTimelineFinal:v4];
  }
}

- (void)setTimeline:(id)timeline
{
  timelineCopy = timeline;
  v6 = timelineCopy;
  if (self->_timeline != timelineCopy)
  {
    v8 = timelineCopy;
    v7 = [(PXStoryTimeline *)timelineCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_timeline, timeline);
      [(PXStoryTimelineManager *)self signalChange:1];
      [(NSMutableArray *)self->_timelinesPaperTrail px_addObject:self->_timeline removingFirstObjectIfNeededToKeepMaximumCount:self->_paperTrailLength];
      v6 = v8;
    }
  }
}

- (void)setIsTargetTimelineFinal:(BOOL)final
{
  if (self->_isTargetTimelineFinal != final)
  {
    self->_isTargetTimelineFinal = final;
    [(PXStoryTimelineManager *)self _invalidateTimelineAttributes];
  }
}

- (void)setTargetTimelineResult:(id)result
{
  resultCopy = result;
  v6 = resultCopy;
  if (self->_targetTimelineResult != resultCopy)
  {
    v8 = resultCopy;
    v7 = [(PXStoryProducerResult *)resultCopy isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_targetTimelineResult, result);
      [(PXStoryTimelineManager *)self setIsTargetTimelineFinal:[(PXStoryProducerResult *)v8 isDegraded]^ 1];
      [(PXStoryTimelineManager *)self _invalidatePendingVisibleSegmentIdentifiers];
      [(PXStoryTimelineManager *)self _invalidateTimeline];
      v6 = v8;
    }
  }
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryTimelineManager;
  [(PXStoryTimelineManager *)&v4 didPerformChanges];
  updater = [(PXStoryTimelineManager *)self updater];
  [updater updateIfNeeded];
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  storyQueue = [(PXStoryTimelineManager *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  v6.receiver = self;
  v6.super_class = PXStoryTimelineManager;
  [(PXStoryTimelineManager *)&v6 performChanges:changesCopy];
}

- (void)dealloc
{
  [(NSProgress *)self->_targetTimelineProgress cancel];
  v3.receiver = self;
  v3.super_class = PXStoryTimelineManager;
  [(PXStoryTimelineManager *)&v3 dealloc];
}

- (PXStoryTimelineManager)initWithTimelineProducer:(id)producer resourcesDataSourceManager:(id)manager styleManager:(id)styleManager specManager:(id)specManager loadingCoordinator:(id)coordinator errorReporter:(id)reporter options:(unint64_t)options paperTrailOptions:(unint64_t)self0
{
  producerCopy = producer;
  managerCopy = manager;
  styleManagerCopy = styleManager;
  specManagerCopy = specManager;
  coordinatorCopy = coordinator;
  reporterCopy = reporter;
  v37.receiver = self;
  v37.super_class = PXStoryTimelineManager;
  v20 = [(PXStoryTimelineManager *)&v37 init];
  v21 = v20;
  if (v20)
  {
    [(PXStoryTimelineManager *)v20 copyLogConfigurationFrom:managerCopy];
    objc_storeStrong(&v21->_timelineProducer, producer);
    objc_storeStrong(&v21->_resourcesDataSourceManager, manager);
    [(PXStoryResourcesDataSourceManager *)v21->_resourcesDataSourceManager registerChangeObserver:v21 context:ResourcesDataSourceManagerObservationContext_133803];
    objc_storeStrong(&v21->_styleManager, styleManager);
    [(PXStoryStyleManager *)v21->_styleManager registerChangeObserver:v21 context:StyleManagerObservationContext_133804];
    objc_storeStrong(&v21->_specManager, specManager);
    [(PXStoryTimelineSpecManager *)v21->_specManager registerChangeObserver:v21 context:SpecManagerObservationContext_133805];
    storyQueue = [managerCopy storyQueue];
    storyQueue = v21->_storyQueue;
    v21->_storyQueue = storyQueue;

    objc_storeStrong(&v21->_loadingCoordinator, coordinator);
    objc_storeStrong(&v21->_errorReporter, reporter);
    v21->_options = options;
    v21->_paperTrailOptions = trailOptions;
    v24 = [[off_1E7721940 alloc] initWithTarget:v21 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v21->_updater;
    v21->_updater = v24;

    [(PXUpdater *)v21->_updater addUpdateSelector:sel__updateTargetTimeline];
    [(PXUpdater *)v21->_updater addUpdateSelector:sel__updatePendingVisibleSegmentIdentifiers];
    [(PXUpdater *)v21->_updater addUpdateSelector:sel__updateTimeline];
    [(PXUpdater *)v21->_updater addUpdateSelector:sel__updateTimelineAttributes];
    if (trailOptions)
    {
      v26 = +[PXStorySettings sharedInstance];
      v21->_paperTrailLength = [v26 timelineManagerPaperTrailLength];

      v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v21->_paperTrailLength];
      targetTimelineResultsPaperTrail = v21->_targetTimelineResultsPaperTrail;
      v21->_targetTimelineResultsPaperTrail = v27;

      v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v21->_paperTrailLength];
      timelinesPaperTrail = v21->_timelinesPaperTrail;
      v21->_timelinesPaperTrail = v29;
    }

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __162__PXStoryTimelineManager_initWithTimelineProducer_resourcesDataSourceManager_styleManager_specManager_loadingCoordinator_errorReporter_options_paperTrailOptions___block_invoke;
    v35[3] = &unk_1E774C5F8;
    v36 = v21;
    [(PXStoryTimelineManager *)v36 performChanges:v35];
  }

  return v21;
}

- (PXStoryTimelineManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTimelineManager.m" lineNumber:61 description:{@"%s is not available as initializer", "-[PXStoryTimelineManager init]"}];

  abort();
}

+ (PXStoryTimelineManager)timelineManagerWithTimelineProducer:(id)producer resourcesDataSourceManager:(id)manager styleManager:(id)styleManager specManager:(id)specManager configuration:(id)configuration loadingCoordinator:(id)coordinator paperTrailOptions:(unint64_t)options
{
  coordinatorCopy = coordinator;
  configurationCopy = configuration;
  specManagerCopy = specManager;
  styleManagerCopy = styleManager;
  managerCopy = manager;
  producerCopy = producer;
  options = [configurationCopy options];
  if (([configurationCopy options] & 0xC) != 0)
  {
    v21 = options & 3 | 8;
  }

  else
  {
    v21 = options & 3;
  }

  v22 = [PXStoryTimelineManager alloc];
  errorReporter = [configurationCopy errorReporter];

  v24 = [(PXStoryTimelineManager *)v22 initWithTimelineProducer:producerCopy resourcesDataSourceManager:managerCopy styleManager:styleManagerCopy specManager:specManagerCopy loadingCoordinator:coordinatorCopy errorReporter:errorReporter options:v21 paperTrailOptions:options];

  return v24;
}

- (id)_diagnosticMovementTextForClipInfo:(id *)info segmentClipCount:(int)count autoEditClip:(id)clip
{
  clipCopy = clip;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v8 = *&info->var9.var0.var0.a;
  v9 = *&info->var9.var0.var0.tx;
  v20 = *&info->var9.var0.var0.c;
  v21 = v9;
  v10 = *&info->var9.var1.var0.c;
  v16 = *&info->var9.var1.var0.a;
  v17 = v10;
  v18 = *&info->var9.var1.var0.tx;
  v19 = v8;
  v13 = v8;
  v11 = *&info->var9.var0.var0.tx;
  v14 = v20;
  v15 = v11;
  PXStoryRectIsEmpty();
}

- (id)_diagnosticStyleTextForClipInfo:(id *)info segmentClipCount:(int)count autoEditClip:(id)clip
{
  clipCopy = clip;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v21 = *&info->var4.var1.var0;
  *&v22 = info->var4.var1.var3;
  v8 = PXStoryTimeDescription(&v21);
  [v7 appendFormat:@"    Duration=%@", v8];

  if (clipCopy)
  {
    v23 = 0u;
    memset(&v24, 0, sizeof(v24));
    v21 = 0u;
    v22 = 0u;
    [clipCopy durationInfo];
    var1 = info->var4.var1;
    *&v19.value = v21;
    v19.epoch = v22;
    v18 = v24;
    *&time1.value = v21;
    time1.epoch = v22;
    time2 = info->var4.var1;
    v9 = @"🟥";
    if (CMTimeCompare(&time1, &time2) <= 0)
    {
      time1 = var1;
      time2 = v18;
      if (CMTimeCompare(&time1, &time2) < 1)
      {
        v9 = @"✅";
      }
    }

    v10 = PXStoryTimeDescription(&v19);
    v11 = PXStoryTimeDescription(&v18);
    [v7 appendFormat:@", AE (min=%@/max=%@): %@", v10, v11, v9];

    v12 = clipCopy;
    [v12 durationMultiplier];
    v14 = v13;

    [v7 appendFormat:@", baked-in multiplier: %.2f", v14];
  }

  else
  {
    [v7 appendString:@" (AE: N/A)"];
  }

  [v7 appendString:@"\n"];
  PXDisplayAssetPlaybackStyleDescription();
}

- (id)_diagnosticTextForSegmentIdentifier:(int64_t)identifier segmentTimeRange:(id *)range HUDType:(int64_t)type decisionList:(id)list
{
  listCopy = list;
  [objc_alloc_init(MEMORY[0x1E696AD60]) appendFormat:@"Segment: %ld\n", identifier];
  [(PXStoryTimelineManager *)self timeline];
  [objc_claimAutoreleasedReturnValue() size];
  PXRectWithOriginAndSize();
}

uint64_t __113__PXStoryTimelineManager_Diagnostics___diagnosticTextForSegmentIdentifier_segmentTimeRange_HUDType_decisionList___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v5 = (a5 + 152);
    do
    {
      if (*(v5 - 18) == 1 && *v5 != 0)
      {
        ++*(*(*(result + 32) + 8) + 24);
      }

      v5 += 96;
      --a2;
    }

    while (a2);
  }

  return result;
}

void __113__PXStoryTimelineManager_Diagnostics___diagnosticTextForSegmentIdentifier_segmentTimeRange_HUDType_decisionList___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2 >= 1)
  {
    v52 = v5;
    v53 = v6;
    v8 = a2;
    while (1)
    {
      v10 = a5[19];
      v51 = a5[18];
      v12 = *a5;
      v11 = a5[1];
      v13 = *(a5 + 8);
      v49 = *(a5 + 7);
      v50 = v13;
      v14 = *(a5 + 4);
      v45 = *(a5 + 3);
      v46 = v14;
      v15 = *(a5 + 6);
      v47 = *(a5 + 5);
      v48 = v15;
      v16 = *(a5 + 2);
      v43 = *(a5 + 1);
      v44 = v16;
      memcpy(__dst, a5 + 20, sizeof(__dst));
      v17 = [*(a1 + 32) clipWithIdentifier:v12];
      v18 = v17;
      if (v11 != 1 || !v10)
      {
        goto LABEL_14;
      }

      [*(a1 + 40) appendFormat:@"  Clip %6ld\n", objc_msgSend(v17, "identifier")];
      if (*(a1 + 48))
      {
        v19 = [v18 resource];
        v20 = [v19 px_storyResourceDisplayAsset];
        v21 = [*(a1 + 48) clipForDisplayAsset:v20];
      }

      else
      {
        v21 = 0;
      }

      v22 = *(a1 + 80);
      if (v22 == 11)
      {
        break;
      }

      v23 = &stru_1F1741150;
      if (v22 == 7)
      {
        v24 = *(a1 + 56);
        v25 = *(*(*(a1 + 64) + 8) + 24);
        v29 = v12;
        v30 = 1;
        v37 = v49;
        v38 = v50;
        v39 = v51;
        v33 = v45;
        v34 = v46;
        v35 = v47;
        v36 = v48;
        v31 = v43;
        v32 = v44;
        v40 = v10;
        memcpy(v41, __dst, sizeof(v41));
        v26 = [v24 _diagnosticStyleTextForClipInfo:&v29 segmentClipCount:v25 autoEditClip:v21];
LABEL_12:
        v23 = v26;
      }

      [*(a1 + 40) appendFormat:@"%@\n", v23];

LABEL_14:
      a5 += 96;
      if (!--v8)
      {
        return;
      }
    }

    v27 = *(a1 + 56);
    v28 = *(*(*(a1 + 64) + 8) + 24);
    v29 = v12;
    v30 = 1;
    v37 = v49;
    v38 = v50;
    v39 = v51;
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v31 = v43;
    v32 = v44;
    v40 = v10;
    memcpy(v41, __dst, sizeof(v41));
    v26 = [v27 _diagnosticMovementTextForClipInfo:&v29 segmentClipCount:v28 autoEditClip:v21];
    goto LABEL_12;
  }
}

- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size
{
  v6 = [(PXStoryTimelineManager *)self styleManager:size.width];
  currentStyle = [v6 currentStyle];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    autoEditDecisionList = [currentStyle autoEditDecisionList];
    v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
    if (autoEditDecisionList)
    {
      [v9 appendFormat:@"Auto-Edit decision list contains: %ld clips\n", objc_msgSend(autoEditDecisionList, "numberOfClips")];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  }

  [v9 appendString:@"No Auto-Edit decision list present\n"];
  autoEditDecisionList = 0;
LABEL_6:
  originalColorGradeCategory = [currentStyle originalColorGradeCategory];
  v11 = originalColorGradeCategory;
  v12 = @"-";
  if (originalColorGradeCategory)
  {
    v12 = originalColorGradeCategory;
  }

  [v9 appendFormat:@"Color grade category: %@\n", v12];
  [v9 appendString:@"\n"];
  timeline = [(PXStoryTimelineManager *)self timeline];
  v14 = +[PXStorySettings sharedInstance];
  if ([v14 useVerboseStyleHUDText])
  {
    if (timeline)
    {
      [timeline timeRange];
    }

    else
    {
      memset(v33, 0, sizeof(v33));
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __76__PXStoryTimelineManager_Diagnostics__diagnosticTextForHUDType_displaySize___block_invoke;
    v29[3] = &unk_1E773FA98;
    v29[4] = self;
    v30 = autoEditDecisionList;
    v31 = v9;
    typeCopy = type;
    v19 = v9;
    v20 = autoEditDecisionList;
    [timeline enumerateSegmentsInTimeRange:v33 usingBlock:v29];

    v18 = v30;
  }

  else
  {
    visibleSegmentIdentifiers = [(PXStoryTimelineManager *)self visibleSegmentIdentifiers];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __76__PXStoryTimelineManager_Diagnostics__diagnosticTextForHUDType_displaySize___block_invoke_2;
    v23[3] = &unk_1E773FAC0;
    v24 = timeline;
    selfCopy = self;
    v27 = v9;
    typeCopy2 = type;
    v26 = autoEditDecisionList;
    v16 = v9;
    v17 = autoEditDecisionList;
    [visibleSegmentIdentifiers enumerateIndexesUsingBlock:v23];

    v18 = v24;
  }

  v21 = [v9 copy];

  return v21;
}

void __76__PXStoryTimelineManager_Diagnostics__diagnosticTextForHUDType_displaySize___block_invoke(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t *a4)
{
  if (a2 >= 1)
  {
    v14 = v4;
    v15 = v5;
    v8 = a2;
    do
    {
      v10 = *a4;
      a4 += 25;
      v11 = a3[1];
      v13[0] = *a3;
      v13[1] = v11;
      v13[2] = a3[2];
      v12 = [*(a1 + 32) _diagnosticTextForSegmentIdentifier:v10 segmentTimeRange:v13 HUDType:*(a1 + 56) decisionList:*(a1 + 40)];
      [*(a1 + 48) appendFormat:@"%@\n", v12];

      a3 += 3;
      --v8;
    }

    while (v8);
  }
}

void __76__PXStoryTimelineManager_Diagnostics__diagnosticTextForHUDType_displaySize___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 timeRangeForSegmentWithIdentifier:a2];
  }

  v5 = *(a1 + 64);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9[0] = v10;
  v9[1] = v11;
  v9[2] = v12;
  v8 = [v6 _diagnosticTextForSegmentIdentifier:a2 segmentTimeRange:v9 HUDType:v5 decisionList:v7];
  [*(a1 + 56) appendFormat:@"%@\n", v8];
}

@end
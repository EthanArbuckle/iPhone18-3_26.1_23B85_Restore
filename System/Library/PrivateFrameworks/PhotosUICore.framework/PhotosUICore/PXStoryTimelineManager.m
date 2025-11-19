@interface PXStoryTimelineManager
+ (PXStoryTimelineManager)timelineManagerWithTimelineProducer:(id)a3 resourcesDataSourceManager:(id)a4 styleManager:(id)a5 specManager:(id)a6 configuration:(id)a7 loadingCoordinator:(id)a8 paperTrailOptions:(unint64_t)a9;
- (BOOL)requiresUpdatedTargetTimelineImmediately;
- (PXStoryTimelineManager)init;
- (PXStoryTimelineManager)initWithTimelineProducer:(id)a3 resourcesDataSourceManager:(id)a4 styleManager:(id)a5 specManager:(id)a6 loadingCoordinator:(id)a7 errorReporter:(id)a8 options:(unint64_t)a9 paperTrailOptions:(unint64_t)a10;
- (_NSRange)_rangeOfVisibleDisplayAssetsInResourcesDataSource:(id)a3;
- (id)_diagnosticMovementTextForClipInfo:(id *)a3 segmentClipCount:(int)a4 autoEditClip:(id)a5;
- (id)_diagnosticStyleTextForClipInfo:(id *)a3 segmentClipCount:(int)a4 autoEditClip:(id)a5;
- (id)_diagnosticTextForSegmentIdentifier:(int64_t)a3 segmentTimeRange:(id *)a4 HUDType:(int64_t)a5 decisionList:(id)a6;
- (id)diagnosticTextForHUDType:(int64_t)a3 displaySize:(CGSize)a4;
- (void)_applyPendingVisibleSegmentIdentifiers;
- (void)_handleUpdatedTargetTimelineResult:(id)a3;
- (void)_invalidatePendingVisibleSegmentIdentifiers;
- (void)_invalidateTargetTimeline;
- (void)_invalidateTimeline;
- (void)_invalidateTimelineAttributes;
- (void)_updatePendingVisibleSegmentIdentifiers;
- (void)_updateTargetTimeline;
- (void)_updateTimeline;
- (void)_updateTimelineAttributes;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
- (void)dealloc;
- (void)didPerformChanges;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)setIsTargetTimelineFinal:(BOOL)a3;
- (void)setIsTimelineFinal:(BOOL)a3;
- (void)setTargetTimelineProgress:(id)a3;
- (void)setTargetTimelineResult:(id)a3;
- (void)setTimeline:(id)a3;
- (void)setTimelineAttributes:(unint64_t)a3;
- (void)setVisibleSegmentIdentifiers:(id)a3;
- (void)setVisibleSegmentIdentifiers:(id)a3 afterUpdatePass:(BOOL)a4;
@end

@implementation PXStoryTimelineManager

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v23 = objc_alloc_init(PXStoryDurationFormatter);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = self;
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
        v11 = [v10 object];
        v12 = [v11 diagnosticDescription];
        v13 = [v10 isDegraded];
        [v10 productionDuration];
        v14 = [(PXStoryDurationFormatter *)v23 stringFromTimeInterval:?];
        [v4 appendFormat:@"Timeline: %@\n Is Degraded: %d\nProduction Duration: %@\n\n\n", v12, v13, v14, v21];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  [v22 addAttachmentWithText:v4 name:@"TimelineManagerTargetTimelineResults"];
  v15 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v21->_timelinesPaperTrail;
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

  [v22 addAttachmentWithText:v4 name:@"TimelineManagerTimelines"];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__PXStoryTimelineManager_observable_didChange_context___block_invoke;
  v5[3] = &unk_1E7746748;
  v5[4] = self;
  v5[5] = a5;
  v5[6] = a4;
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
  v3 = [(PXStoryTimelineManager *)self targetTimelineProgress];

  if (v3)
  {
    return;
  }

  v4 = [(PXStoryTimelineManager *)self resourcesDataSourceManager];
  if (![v4 isDataSourceFinal])
  {

    goto LABEL_6;
  }

  v5 = [(PXStoryTimelineManager *)self isTargetTimelineFinal];

  if (!v5)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v6 = [(PXStoryTimelineManager *)self styleManager];
  v7 = [v6 currentStyleAttributes];

  v8 = v7 & 3;
LABEL_7:

  [(PXStoryTimelineManager *)self setTimelineAttributes:v8];
}

- (void)_invalidateTimelineAttributes
{
  v2 = [(PXStoryTimelineManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateTimelineAttributes];
}

- (void)_updateTimeline
{
  isUpdatingTimeline = self->_isUpdatingTimeline;
  self->_isUpdatingTimeline = 1;
  v4 = [(PXStoryTimelineManager *)self timeline];
  v5 = [(PXStoryTimelineManager *)self visibleSegmentIdentifiers];
  v6 = [(PXStoryTimelineManager *)self targetTimelineResult];
  v7 = [v6 object];

  v8 = [PXStoryRecombinedTimeline timelineByRecombiningSourceTimeline:v4 withTargetTimeline:v7 visibleSegmentIdentifiers:v5];
  v9 = v5;
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
      v15 = v4;
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
  v2 = [(PXStoryTimelineManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateTimeline];
}

- (void)_updatePendingVisibleSegmentIdentifiers
{
  v3 = [(PXStoryTimelineManager *)self pendingVisibleSegmentIdentifiers];
  if (v3)
  {
    v4 = v3;
    [(PXStoryTimelineManager *)self setVisibleSegmentIdentifiers:v3];
    [(PXStoryTimelineManager *)self setPendingVisibleSegmentIdentifiers:0];
    v3 = v4;
  }
}

- (void)_invalidatePendingVisibleSegmentIdentifiers
{
  v2 = [(PXStoryTimelineManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePendingVisibleSegmentIdentifiers];
}

- (void)_handleUpdatedTargetTimelineResult:(id)a3
{
  v4 = a3;
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __61__PXStoryTimelineManager__handleUpdatedTargetTimelineResult___block_invoke;
  v9 = &unk_1E773BF10;
  v10 = self;
  v11 = v4;
  v5 = v4;
  [(PXStoryTimelineManager *)self performChanges:&v6];
  [(NSMutableArray *)self->_targetTimelineResultsPaperTrail px_addObject:v5 removingFirstObjectIfNeededToKeepMaximumCount:self->_paperTrailLength, v6, v7, v8, v9, v10];
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
    v3 = [(PXStoryTimelineManager *)self specManager];
    v4 = [v3 timelineSpec];

    [v4 viewportSize];
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
  v2 = [(PXStoryTimelineManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateTargetTimeline];
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

- (void)setVisibleSegmentIdentifiers:(id)a3 afterUpdatePass:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    if (v6)
    {
      [(PXStoryTimelineManager *)self setPendingVisibleSegmentIdentifiers:v6];
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E696AC90]);
      [(PXStoryTimelineManager *)self setPendingVisibleSegmentIdentifiers:v8];
    }

    objc_initWeak(&location, self);
    v9 = [(PXStoryTimelineManager *)self storyQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__PXStoryTimelineManager_setVisibleSegmentIdentifiers_afterUpdatePass___block_invoke;
    v10[3] = &unk_1E774C318;
    objc_copyWeak(&v11, &location);
    dispatch_async(v9, v10);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PXStoryTimelineManager *)self setVisibleSegmentIdentifiers:v6];
  }
}

void __71__PXStoryTimelineManager_setVisibleSegmentIdentifiers_afterUpdatePass___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _applyPendingVisibleSegmentIdentifiers];
}

- (void)setVisibleSegmentIdentifiers:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_visibleSegmentIdentifiers != v4)
  {
    v9 = v4;
    v6 = [(NSIndexSet *)v4 isEqual:?];
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

- (_NSRange)_rangeOfVisibleDisplayAssetsInResourcesDataSource:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3010000000;
  v20 = &unk_1A561E057;
  v21 = xmmword_1A5380D90;
  v5 = [(PXStoryTimelineManager *)self timeline];
  v6 = [(PXStoryTimelineManager *)self visibleSegmentIdentifiers];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__PXStoryTimelineManager__rangeOfVisibleDisplayAssetsInResourcesDataSource___block_invoke;
  v13[3] = &unk_1E773BE98;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  v15 = v8;
  v16 = &v17;
  [v6 enumerateIndexesUsingBlock:v13];

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

- (void)setTargetTimelineProgress:(id)a3
{
  v5 = a3;
  targetTimelineProgress = self->_targetTimelineProgress;
  if (targetTimelineProgress != v5)
  {
    v7 = v5;
    [(NSProgress *)targetTimelineProgress cancel];
    objc_storeStrong(&self->_targetTimelineProgress, a3);
    [(PXStoryTimelineManager *)self _invalidateTimelineAttributes];
    v5 = v7;
  }
}

- (BOOL)requiresUpdatedTargetTimelineImmediately
{
  v3 = [(PXStoryTimelineManager *)self targetTimelineResult];
  v4 = [v3 object];

  if (!v4)
  {
    goto LABEL_11;
  }

  [v4 size];
  if (v6 == *MEMORY[0x1E695F060] && v5 == *(MEMORY[0x1E695F060] + 8))
  {
    goto LABEL_11;
  }

  [v4 size];
  v9 = v8;
  v11 = v10;
  v12 = [(PXStoryTimelineManager *)self specManager];
  v13 = [v12 timelineSpec];
  [v13 viewportSize];
  if (v9 == v15 && v11 == v14)
  {

LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  v16 = [(PXStoryTimelineManager *)self options];

  if ((v16 & 4) != 0)
  {
    goto LABEL_11;
  }

  v17 = 1;
LABEL_12:

  return v17;
}

- (void)setIsTimelineFinal:(BOOL)a3
{
  if (self->_isTimelineFinal != a3)
  {
    self->_isTimelineFinal = a3;
    [(PXStoryTimelineManager *)self signalChange:2];
  }
}

- (void)setTimelineAttributes:(unint64_t)a3
{
  if (self->_timelineAttributes != a3)
  {
    self->_timelineAttributes = a3;
    [(PXStoryTimelineManager *)self signalChange:4];
    v4 = (self->_timelineAttributes >> 1) & 1;

    [(PXStoryTimelineManager *)self setIsTimelineFinal:v4];
  }
}

- (void)setTimeline:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_timeline != v5)
  {
    v8 = v5;
    v7 = [(PXStoryTimeline *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_timeline, a3);
      [(PXStoryTimelineManager *)self signalChange:1];
      [(NSMutableArray *)self->_timelinesPaperTrail px_addObject:self->_timeline removingFirstObjectIfNeededToKeepMaximumCount:self->_paperTrailLength];
      v6 = v8;
    }
  }
}

- (void)setIsTargetTimelineFinal:(BOOL)a3
{
  if (self->_isTargetTimelineFinal != a3)
  {
    self->_isTargetTimelineFinal = a3;
    [(PXStoryTimelineManager *)self _invalidateTimelineAttributes];
  }
}

- (void)setTargetTimelineResult:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_targetTimelineResult != v5)
  {
    v8 = v5;
    v7 = [(PXStoryProducerResult *)v5 isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_targetTimelineResult, a3);
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
  v3 = [(PXStoryTimelineManager *)self updater];
  [v3 updateIfNeeded];
}

- (void)performChanges:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryTimelineManager *)self storyQueue];
  dispatch_assert_queue_V2(v5);

  v6.receiver = self;
  v6.super_class = PXStoryTimelineManager;
  [(PXStoryTimelineManager *)&v6 performChanges:v4];
}

- (void)dealloc
{
  [(NSProgress *)self->_targetTimelineProgress cancel];
  v3.receiver = self;
  v3.super_class = PXStoryTimelineManager;
  [(PXStoryTimelineManager *)&v3 dealloc];
}

- (PXStoryTimelineManager)initWithTimelineProducer:(id)a3 resourcesDataSourceManager:(id)a4 styleManager:(id)a5 specManager:(id)a6 loadingCoordinator:(id)a7 errorReporter:(id)a8 options:(unint64_t)a9 paperTrailOptions:(unint64_t)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v34 = a6;
  v33 = a7;
  v32 = a8;
  v37.receiver = self;
  v37.super_class = PXStoryTimelineManager;
  v20 = [(PXStoryTimelineManager *)&v37 init];
  v21 = v20;
  if (v20)
  {
    [(PXStoryTimelineManager *)v20 copyLogConfigurationFrom:v18];
    objc_storeStrong(&v21->_timelineProducer, a3);
    objc_storeStrong(&v21->_resourcesDataSourceManager, a4);
    [(PXStoryResourcesDataSourceManager *)v21->_resourcesDataSourceManager registerChangeObserver:v21 context:ResourcesDataSourceManagerObservationContext_133803];
    objc_storeStrong(&v21->_styleManager, a5);
    [(PXStoryStyleManager *)v21->_styleManager registerChangeObserver:v21 context:StyleManagerObservationContext_133804];
    objc_storeStrong(&v21->_specManager, a6);
    [(PXStoryTimelineSpecManager *)v21->_specManager registerChangeObserver:v21 context:SpecManagerObservationContext_133805];
    v22 = [v18 storyQueue];
    storyQueue = v21->_storyQueue;
    v21->_storyQueue = v22;

    objc_storeStrong(&v21->_loadingCoordinator, a7);
    objc_storeStrong(&v21->_errorReporter, a8);
    v21->_options = a9;
    v21->_paperTrailOptions = a10;
    v24 = [[off_1E7721940 alloc] initWithTarget:v21 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v21->_updater;
    v21->_updater = v24;

    [(PXUpdater *)v21->_updater addUpdateSelector:sel__updateTargetTimeline];
    [(PXUpdater *)v21->_updater addUpdateSelector:sel__updatePendingVisibleSegmentIdentifiers];
    [(PXUpdater *)v21->_updater addUpdateSelector:sel__updateTimeline];
    [(PXUpdater *)v21->_updater addUpdateSelector:sel__updateTimelineAttributes];
    if (a10)
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryTimelineManager.m" lineNumber:61 description:{@"%s is not available as initializer", "-[PXStoryTimelineManager init]"}];

  abort();
}

+ (PXStoryTimelineManager)timelineManagerWithTimelineProducer:(id)a3 resourcesDataSourceManager:(id)a4 styleManager:(id)a5 specManager:(id)a6 configuration:(id)a7 loadingCoordinator:(id)a8 paperTrailOptions:(unint64_t)a9
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [v15 options];
  if (([v15 options] & 0xC) != 0)
  {
    v21 = v20 & 3 | 8;
  }

  else
  {
    v21 = v20 & 3;
  }

  v22 = [PXStoryTimelineManager alloc];
  v23 = [v15 errorReporter];

  v24 = [(PXStoryTimelineManager *)v22 initWithTimelineProducer:v19 resourcesDataSourceManager:v18 styleManager:v17 specManager:v16 loadingCoordinator:v14 errorReporter:v23 options:v21 paperTrailOptions:a9];

  return v24;
}

- (id)_diagnosticMovementTextForClipInfo:(id *)a3 segmentClipCount:(int)a4 autoEditClip:(id)a5
{
  v6 = a5;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v8 = *&a3->var9.var0.var0.a;
  v9 = *&a3->var9.var0.var0.tx;
  v20 = *&a3->var9.var0.var0.c;
  v21 = v9;
  v10 = *&a3->var9.var1.var0.c;
  v16 = *&a3->var9.var1.var0.a;
  v17 = v10;
  v18 = *&a3->var9.var1.var0.tx;
  v19 = v8;
  v13 = v8;
  v11 = *&a3->var9.var0.var0.tx;
  v14 = v20;
  v15 = v11;
  PXStoryRectIsEmpty();
}

- (id)_diagnosticStyleTextForClipInfo:(id *)a3 segmentClipCount:(int)a4 autoEditClip:(id)a5
{
  v6 = a5;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v21 = *&a3->var4.var1.var0;
  *&v22 = a3->var4.var1.var3;
  v8 = PXStoryTimeDescription(&v21);
  [v7 appendFormat:@"    Duration=%@", v8];

  if (v6)
  {
    v23 = 0u;
    memset(&v24, 0, sizeof(v24));
    v21 = 0u;
    v22 = 0u;
    [v6 durationInfo];
    var1 = a3->var4.var1;
    *&v19.value = v21;
    v19.epoch = v22;
    v18 = v24;
    *&time1.value = v21;
    time1.epoch = v22;
    time2 = a3->var4.var1;
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

    v12 = v6;
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

- (id)_diagnosticTextForSegmentIdentifier:(int64_t)a3 segmentTimeRange:(id *)a4 HUDType:(int64_t)a5 decisionList:(id)a6
{
  v8 = a6;
  [objc_alloc_init(MEMORY[0x1E696AD60]) appendFormat:@"Segment: %ld\n", a3];
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

- (id)diagnosticTextForHUDType:(int64_t)a3 displaySize:(CGSize)a4
{
  v6 = [(PXStoryTimelineManager *)self styleManager:a4.width];
  v7 = [v6 currentStyle];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 autoEditDecisionList];
    v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
    if (v8)
    {
      [v9 appendFormat:@"Auto-Edit decision list contains: %ld clips\n", objc_msgSend(v8, "numberOfClips")];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  }

  [v9 appendString:@"No Auto-Edit decision list present\n"];
  v8 = 0;
LABEL_6:
  v10 = [v7 originalColorGradeCategory];
  v11 = v10;
  v12 = @"-";
  if (v10)
  {
    v12 = v10;
  }

  [v9 appendFormat:@"Color grade category: %@\n", v12];
  [v9 appendString:@"\n"];
  v13 = [(PXStoryTimelineManager *)self timeline];
  v14 = +[PXStorySettings sharedInstance];
  if ([v14 useVerboseStyleHUDText])
  {
    if (v13)
    {
      [v13 timeRange];
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
    v30 = v8;
    v31 = v9;
    v32 = a3;
    v19 = v9;
    v20 = v8;
    [v13 enumerateSegmentsInTimeRange:v33 usingBlock:v29];

    v18 = v30;
  }

  else
  {
    v15 = [(PXStoryTimelineManager *)self visibleSegmentIdentifiers];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __76__PXStoryTimelineManager_Diagnostics__diagnosticTextForHUDType_displaySize___block_invoke_2;
    v23[3] = &unk_1E773FAC0;
    v24 = v13;
    v25 = self;
    v27 = v9;
    v28 = a3;
    v26 = v8;
    v16 = v9;
    v17 = v8;
    [v15 enumerateIndexesUsingBlock:v23];

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
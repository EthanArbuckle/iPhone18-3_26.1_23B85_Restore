@interface PXCuratedLibraryEventTracker
- (PXCuratedLibraryEventTracker)initWithViewModel:(id)model layout:(id)layout;
- (PXCuratedLibraryEventTracker)initWithViewName:(id)name;
- (void)_configureTimerForSlowScrollRegimeUpdatesIfNeeded;
- (void)_invalidateCurrentAllPhotosZoomState;
- (void)_invalidateCurrentlyViewedZoomLevel;
- (void)_invalidateDominantObjectReference;
- (void)_invalidateFirstTimeExperienceReadinessLogging;
- (void)_logDidEndViewingAllPhotosZoomStateName:(id)name;
- (void)_logDidStartViewingAllPhotosZoomStateName:(id)name;
- (void)_logDidStartViewingZoomLevel:(int64_t)level;
- (void)_updateCurrentAllPhotosZoomState;
- (void)_updateCurrentlyViewedZoomLevel;
- (void)_updateDominantObjectReference;
- (void)_updateFirstTimeExperienceReadinessLogging;
- (void)dealloc;
- (void)logAnalysisProgress:(float)progress;
- (void)logLibraryItemsCount:(int64_t)count;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setAnalysisProgress:(float)progress;
- (void)setCurrentAllPhotosZoomStateName:(id)name;
- (void)setCurrentlyViewedZoomLevel:(int64_t)level;
- (void)setDominantObjectReference:(id)reference;
- (void)setLibraryItemsCount:(int64_t)count;
@end

@implementation PXCuratedLibraryEventTracker

- (void)_invalidateCurrentAllPhotosZoomState
{
  updater = [(PXUserInterfaceElementEventTracker *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentAllPhotosZoomState];
}

- (void)_invalidateDominantObjectReference
{
  updater = [(PXUserInterfaceElementEventTracker *)self updater];
  [updater setNeedsUpdateOf:sel__updateDominantObjectReference];
}

- (void)_updateCurrentAllPhotosZoomState
{
  if ([(PXViewControllerEventTracker *)self isViewVisible]&& [(PXCuratedLibraryEventTracker *)self currentlyViewedZoomLevel]== 4)
  {
    viewModel = [(PXCuratedLibraryEventTracker *)self viewModel];
    zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
    v5 = zoomablePhotosViewModel;
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    if (zoomablePhotosViewModel)
    {
      [zoomablePhotosViewModel zoomState];
    }

    v6 = 0;
    if (![viewModel zoomLevelTransitionPhase] && BYTE11(v14) == 1 && (BYTE8(v14) & 1) == 0)
    {
      if ([v5 isDisplayingIndividualItems])
      {
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.photos.CPAnalytics.curatedLibraryAllPhotos%liColumnsDisplayed", v13];
      }

      else
      {
        v8 = objc_alloc(MEMORY[0x1E696AEC0]);
        v9[4] = v15;
        v9[5] = v16;
        v10 = v17;
        v9[0] = v11;
        v9[1] = v12;
        v9[2] = v13;
        v9[3] = v14;
        v7 = [v8 initWithFormat:@"com.apple.photos.CPAnalytics.curatedLibraryAllPhotosDenseLevel%liDisplayed", objc_msgSend(v5, "denseZoomLevelForZoomState:", v9)];
      }

      v6 = v7;
    }
  }

  else
  {
    v6 = 0;
  }

  [(PXCuratedLibraryEventTracker *)self setCurrentAllPhotosZoomStateName:v6];
}

- (void)_updateDominantObjectReference
{
  viewModel = [(PXCuratedLibraryEventTracker *)self viewModel];
  if ([viewModel scrollRegime] || objc_msgSend(viewModel, "zoomLevelTransitionPhase"))
  {
    [(PXViewControllerEventTracker *)self isViewVisible];
    dominantObjectReference = 0;
  }

  else
  {
    zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
    v6 = zoomablePhotosViewModel;
    if (zoomablePhotosViewModel)
    {
      [zoomablePhotosViewModel zoomState];
      v7 = BYTE8(v12);
    }

    else
    {
      v7 = 0;
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
    }

    dominantObjectReference = 0;
    if ([(PXViewControllerEventTracker *)self isViewVisible]&& (v7 & 1) == 0)
    {
      layout = [(PXCuratedLibraryEventTracker *)self layout];
      dominantObjectReference = [layout dominantObjectReference];
    }
  }

  [(PXCuratedLibraryEventTracker *)self setDominantObjectReference:dominantObjectReference, v9, v10, v11, v12, v13, v14, v15];
}

- (void)_invalidateCurrentlyViewedZoomLevel
{
  updater = [(PXUserInterfaceElementEventTracker *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentlyViewedZoomLevel];
}

- (void)_updateCurrentlyViewedZoomLevel
{
  if ([(PXViewControllerEventTracker *)self isViewVisible])
  {
    viewModel = [(PXCuratedLibraryEventTracker *)self viewModel];
    zoomLevel = [viewModel zoomLevel];
  }

  else
  {
    zoomLevel = 0;
  }

  [(PXCuratedLibraryEventTracker *)self setCurrentlyViewedZoomLevel:zoomLevel];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (CuratedLibraryViewModelObserverContext == context)
  {
    v9 = (change >> 2) & 1;
    context = ((change >> 13) & 1);
    LODWORD(v10) = (change & 0x2800) != 0;
    if ((change & 0x800) != 0)
    {
      [(PXCuratedLibraryEventTracker *)self _configureTimerForSlowScrollRegimeUpdatesIfNeeded];
      if (((change >> 2) & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_12:
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __61__PXCuratedLibraryEventTracker_observable_didChange_context___block_invoke;
      v11[3] = &unk_1E7737B78;
      v12 = v9;
      v11[4] = self;
      contextCopy = context;
      v14 = v10;
      [(PXCuratedLibraryEventTracker *)self performChanges:v11];
      goto LABEL_13;
    }

LABEL_9:
    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (operator|| == context)
  {
    LOBYTE(v9) = 0;
    LOBYTE(context) = change & 1;
    LODWORD(v10) = change & 1;
    goto LABEL_9;
  }

  if (EventTrackerObserverContext == context)
  {
    LOBYTE(context) = 0;
    v10 = (change >> 3) & 1;
    LOBYTE(v9) = v10;
    if (((change >> 3) & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v15.receiver = self;
  v15.super_class = PXCuratedLibraryEventTracker;
  [(PXMediaViewControllerEventTracker *)&v15 observable:observableCopy didChange:change context:context];
  LOBYTE(v9) = 0;
  LOBYTE(context) = 0;
  LODWORD(v10) = 0;
LABEL_10:
  if ((context & 1) != 0 || v10)
  {
    goto LABEL_12;
  }

LABEL_13:
}

void __61__PXCuratedLibraryEventTracker_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _invalidateCurrentlyViewedZoomLevel];
  }

  if (*(a1 + 41) == 1)
  {
    [*(a1 + 32) _invalidateCurrentAllPhotosZoomState];
  }

  if (*(a1 + 42) == 1)
  {
    [*(a1 + 32) _invalidateDominantObjectReference];
  }
}

- (void)logAnalysisProgress:(float)progress
{
  if (progress >= 0.0)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __52__PXCuratedLibraryEventTracker_logAnalysisProgress___block_invoke;
    v5[3] = &unk_1E77467C0;
    v5[4] = self;
    progressCopy = progress;
    [(PXCuratedLibraryEventTracker *)self performChanges:v5];
  }
}

- (void)logLibraryItemsCount:(int64_t)count
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__PXCuratedLibraryEventTracker_logLibraryItemsCount___block_invoke;
  v3[3] = &unk_1E7749D78;
  v3[4] = self;
  v3[5] = count;
  [(PXCuratedLibraryEventTracker *)self performChanges:v3];
}

- (void)_configureTimerForSlowScrollRegimeUpdatesIfNeeded
{
  viewModel = [(PXCuratedLibraryEventTracker *)self viewModel];
  scrollRegime = [viewModel scrollRegime];

  slowScrollRegimeTimer = self->_slowScrollRegimeTimer;
  if (scrollRegime == 1)
  {
    if (!slowScrollRegimeTimer)
    {
      objc_initWeak(&location, self);
      v6 = MEMORY[0x1E695DFF0];
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __81__PXCuratedLibraryEventTracker__configureTimerForSlowScrollRegimeUpdatesIfNeeded__block_invoke;
      v14 = &unk_1E7747228;
      objc_copyWeak(&v15, &location);
      v7 = [v6 timerWithTimeInterval:1 repeats:&v11 block:0.45];
      v8 = self->_slowScrollRegimeTimer;
      self->_slowScrollRegimeTimer = v7;

      mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
      [mainRunLoop addTimer:self->_slowScrollRegimeTimer forMode:*MEMORY[0x1E695DA28]];
      [mainRunLoop addTimer:self->_slowScrollRegimeTimer forMode:*MEMORY[0x1E69DE760]];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [(NSTimer *)slowScrollRegimeTimer invalidate];
    v10 = self->_slowScrollRegimeTimer;
    self->_slowScrollRegimeTimer = 0;
  }
}

void __81__PXCuratedLibraryEventTracker__configureTimerForSlowScrollRegimeUpdatesIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__PXCuratedLibraryEventTracker__configureTimerForSlowScrollRegimeUpdatesIfNeeded__block_invoke_2;
  v5[3] = &unk_1E774B4A8;
  objc_copyWeak(&v6, (a1 + 32));
  [WeakRetained performChanges:v5];

  objc_destroyWeak(&v6);
}

void __81__PXCuratedLibraryEventTracker__configureTimerForSlowScrollRegimeUpdatesIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateDominantObjectReference];
}

- (void)setDominantObjectReference:(id)reference
{
  referenceCopy = reference;
  v6 = referenceCopy;
  if (self->_dominantObjectReference != referenceCopy)
  {
    v10 = referenceCopy;
    v7 = [(PXSectionedObjectReference *)referenceCopy isEqual:?];
    v6 = v10;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_dominantObjectReference, reference);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        asset = [(PXSectionedObjectReference *)v10 asset];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          assetCollection = [(PXSectionedObjectReference *)v10 assetCollection];
          asset = 0;
LABEL_9:
          [(PXMediaViewControllerEventTracker *)self setDisplayedAsset:asset];
          [(PXMediaViewControllerEventTracker *)self setDisplayedAssetCollection:assetCollection];

          v6 = v10;
          goto LABEL_10;
        }

        asset = 0;
      }

      assetCollection = 0;
      goto LABEL_9;
    }
  }

LABEL_10:
}

- (void)_logDidEndViewingAllPhotosZoomStateName:(id)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6991F28];
  nameCopy = name;
  currentAllPhotosZoomStateSignpost = [(PXCuratedLibraryEventTracker *)self currentAllPhotosZoomStateSignpost];
  v7 = *MEMORY[0x1E6991C98];
  v10 = *MEMORY[0x1E6991E40];
  v11[0] = nameCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9 = [(PXUserInterfaceElementEventTracker *)self finalPayloadWithPayload:v8];
  [v4 endSignpost:currentAllPhotosZoomStateSignpost forEventName:v7 withPayload:v9];

  [(PXCuratedLibraryEventTracker *)self setCurrentAllPhotosZoomStateSignpost:0];
}

- (void)_logDidStartViewingAllPhotosZoomStateName:(id)name
{
  if ([(PXCuratedLibraryEventTracker *)self currentAllPhotosZoomStateSignpost])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryEventTracker.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"self.currentAllPhotosZoomStateSignpost == CPAnalyticsSignpostIDNull"}];
  }

  startSignpost = [MEMORY[0x1E6991F28] startSignpost];

  [(PXCuratedLibraryEventTracker *)self setCurrentAllPhotosZoomStateSignpost:startSignpost];
}

- (void)setCurrentAllPhotosZoomStateName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (self->_currentAllPhotosZoomStateName != nameCopy)
  {
    v9 = nameCopy;
    v6 = [(NSString *)nameCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      if (self->_currentAllPhotosZoomStateName)
      {
        [(PXCuratedLibraryEventTracker *)self _logDidEndViewingAllPhotosZoomStateName:?];
        v5 = v9;
      }

      v7 = [(NSString *)v5 copy];
      currentAllPhotosZoomStateName = self->_currentAllPhotosZoomStateName;
      self->_currentAllPhotosZoomStateName = v7;

      v5 = v9;
      if (self->_currentAllPhotosZoomStateName)
      {
        [(PXCuratedLibraryEventTracker *)self _logDidStartViewingAllPhotosZoomStateName:?];
        v5 = v9;
      }
    }
  }
}

- (void)_logDidStartViewingZoomLevel:(int64_t)level
{
  v7 = *MEMORY[0x1E69E9840];
  if ([(PXCuratedLibraryEventTracker *)self currentZoomLevelSignpost])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryEventTracker.m" lineNumber:201 description:{@"Invalid parameter not satisfying: %@", @"self.currentZoomLevelSignpost == CPAnalyticsSignpostIDNull"}];
  }

  -[PXCuratedLibraryEventTracker setCurrentZoomLevelSignpost:](self, "setCurrentZoomLevelSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
  v6 = *MEMORY[0x1E6991E20];
  PXCuratedLibraryAnalyticsViewNameForZoomLevel();
}

- (void)setCurrentlyViewedZoomLevel:(int64_t)level
{
  currentlyViewedZoomLevel = self->_currentlyViewedZoomLevel;
  if (currentlyViewedZoomLevel != level)
  {
    if (currentlyViewedZoomLevel)
    {
      [(PXCuratedLibraryEventTracker *)self _logDidEndViewingZoomLevel:?];
    }

    self->_currentlyViewedZoomLevel = level;
    if (level)
    {
      [(PXCuratedLibraryEventTracker *)self _logDidStartViewingZoomLevel:level];
    }

    [(PXCuratedLibraryEventTracker *)self _invalidateCurrentAllPhotosZoomState];
  }
}

- (void)_updateFirstTimeExperienceReadinessLogging
{
  v25 = *MEMORY[0x1E69E9840];
  if (!self->_loggedFirstTimeExperience)
  {
    [(PXCuratedLibraryEventTracker *)self firstTimeExperienceAnalysisProgress];
    if (v3 >= 0.0 && ([(PXCuratedLibraryEventTracker *)self firstTimeExperienceLibraryItemsCount]& 0x8000000000000000) == 0)
    {
      self->_loggedFirstTimeExperience = 1;
      [(PXCuratedLibraryEventTracker *)self firstTimeExperienceAnalysisProgress];
      v5 = v4;
      firstTimeExperienceLibraryItemsCount = [(PXCuratedLibraryEventTracker *)self firstTimeExperienceLibraryItemsCount];
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v8 = [standardUserDefaults integerForKey:@"LastCuratedLibraryFirstTimeExperienceReadinessLogged"];

      if (v8 < 1 || (+[PXCuratedLibrarySettings sharedInstance](PXCuratedLibrarySettings, "sharedInstance"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 firstTimeExperienceAlwaysLogReadiness], v9, v10))
      {
        if (v5 <= 0.9)
        {
          v11 = @"com.apple.photos.CPAnalytics.firstTimeExperienceNotReady";
        }

        else
        {
          v11 = @"com.apple.photos.CPAnalytics.firstTimeExperienceReady";
        }

        v12 = MEMORY[0x1E6991F28];
        v13 = [(PXUserInterfaceElementEventTracker *)self finalPayloadWithPayload:0];
        [v12 sendEvent:v11 withPayload:v13];

        standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
        [standardUserDefaults2 setInteger:1 forKey:@"LastCuratedLibraryFirstTimeExperienceReadinessLogged"];

        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v16 = PLUIGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = @"NO";
        if (v5 > 0.9)
        {
          v17 = @"YES";
        }

        v18 = v17;
        v19 = 138412802;
        v20 = v15;
        v21 = 2112;
        v22 = v18;
        v23 = 2048;
        v24 = firstTimeExperienceLibraryItemsCount;
        _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, "[CuratedLibraryEventTracker]: FTE did log <%@> isReady <%@> for library size <%li>", &v19, 0x20u);
      }
    }
  }
}

- (void)_invalidateFirstTimeExperienceReadinessLogging
{
  updater = [(PXUserInterfaceElementEventTracker *)self updater];
  [updater setNeedsUpdateOf:sel__updateFirstTimeExperienceReadinessLogging];
}

- (void)setAnalysisProgress:(float)progress
{
  if (self->_analysisProgress != progress)
  {
    self->_analysisProgress = progress;
    if (self->_firstTimeExperienceAnalysisProgress < 0.0)
    {
      self->_firstTimeExperienceAnalysisProgress = progress;
      [(PXCuratedLibraryEventTracker *)self _invalidateFirstTimeExperienceReadinessLogging];
    }
  }
}

- (void)setLibraryItemsCount:(int64_t)count
{
  if (count < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryEventTracker.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"libraryItemsCount >= 0"}];
  }

  if (self->_libraryItemsCount != count)
  {
    self->_libraryItemsCount = count;
    if (self->_firstTimeExperienceLibraryItemsCount < 0)
    {
      self->_firstTimeExperienceLibraryItemsCount = count;

      [(PXCuratedLibraryEventTracker *)self _invalidateFirstTimeExperienceReadinessLogging];
    }
  }
}

- (void)dealloc
{
  [(NSTimer *)self->_slowScrollRegimeTimer invalidate];
  slowScrollRegimeTimer = self->_slowScrollRegimeTimer;
  self->_slowScrollRegimeTimer = 0;

  v4.receiver = self;
  v4.super_class = PXCuratedLibraryEventTracker;
  [(PXCuratedLibraryEventTracker *)&v4 dealloc];
}

- (PXCuratedLibraryEventTracker)initWithViewModel:(id)model layout:(id)layout
{
  modelCopy = model;
  layoutCopy = layout;
  v14.receiver = self;
  v14.super_class = PXCuratedLibraryEventTracker;
  v9 = [(PXMediaViewControllerEventTracker *)&v14 initWithViewName:@"CuratedLibrary"];
  v10 = v9;
  if (v9)
  {
    [(PXCuratedLibraryEventTracker *)v9 registerChangeObserver:v9 context:EventTrackerObserverContext];
    v10->_libraryItemsCount = -1;
    v10->_analysisProgress = -1.0;
    v10->_firstTimeExperienceAnalysisProgress = -1.0;
    v10->_firstTimeExperienceLibraryItemsCount = -1;
    objc_storeStrong(&v10->_viewModel, model);
    [(PXCuratedLibraryViewModel *)v10->_viewModel registerChangeObserver:v10 context:CuratedLibraryViewModelObserverContext];
    zoomablePhotosViewModel = [(PXCuratedLibraryViewModel *)v10->_viewModel zoomablePhotosViewModel];
    [zoomablePhotosViewModel registerChangeObserver:v10 context:operator||];

    objc_storeStrong(&v10->_layout, layout);
    updater = [(PXUserInterfaceElementEventTracker *)v10 updater];
    [updater addUpdateSelector:sel__updateFirstTimeExperienceReadinessLogging];
    [updater addUpdateSelector:sel__updateCurrentlyViewedZoomLevel];
    [updater addUpdateSelector:sel__updateCurrentAllPhotosZoomState];
    [updater addUpdateSelector:sel__updateDominantObjectReference];
  }

  return v10;
}

- (PXCuratedLibraryEventTracker)initWithViewName:(id)name
{
  nameCopy = name;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryEventTracker.m" lineNumber:76 description:{@"%s is not available as initializer", "-[PXCuratedLibraryEventTracker initWithViewName:]"}];

  abort();
}

@end
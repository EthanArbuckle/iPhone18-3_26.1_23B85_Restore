@interface PXCuratedLibraryEventTracker
- (PXCuratedLibraryEventTracker)initWithViewModel:(id)a3 layout:(id)a4;
- (PXCuratedLibraryEventTracker)initWithViewName:(id)a3;
- (void)_configureTimerForSlowScrollRegimeUpdatesIfNeeded;
- (void)_invalidateCurrentAllPhotosZoomState;
- (void)_invalidateCurrentlyViewedZoomLevel;
- (void)_invalidateDominantObjectReference;
- (void)_invalidateFirstTimeExperienceReadinessLogging;
- (void)_logDidEndViewingAllPhotosZoomStateName:(id)a3;
- (void)_logDidStartViewingAllPhotosZoomStateName:(id)a3;
- (void)_logDidStartViewingZoomLevel:(int64_t)a3;
- (void)_updateCurrentAllPhotosZoomState;
- (void)_updateCurrentlyViewedZoomLevel;
- (void)_updateDominantObjectReference;
- (void)_updateFirstTimeExperienceReadinessLogging;
- (void)dealloc;
- (void)logAnalysisProgress:(float)a3;
- (void)logLibraryItemsCount:(int64_t)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setAnalysisProgress:(float)a3;
- (void)setCurrentAllPhotosZoomStateName:(id)a3;
- (void)setCurrentlyViewedZoomLevel:(int64_t)a3;
- (void)setDominantObjectReference:(id)a3;
- (void)setLibraryItemsCount:(int64_t)a3;
@end

@implementation PXCuratedLibraryEventTracker

- (void)_invalidateCurrentAllPhotosZoomState
{
  v2 = [(PXUserInterfaceElementEventTracker *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentAllPhotosZoomState];
}

- (void)_invalidateDominantObjectReference
{
  v2 = [(PXUserInterfaceElementEventTracker *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDominantObjectReference];
}

- (void)_updateCurrentAllPhotosZoomState
{
  if ([(PXViewControllerEventTracker *)self isViewVisible]&& [(PXCuratedLibraryEventTracker *)self currentlyViewedZoomLevel]== 4)
  {
    v3 = [(PXCuratedLibraryEventTracker *)self viewModel];
    v4 = [v3 zoomablePhotosViewModel];
    v5 = v4;
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    if (v4)
    {
      [v4 zoomState];
    }

    v6 = 0;
    if (![v3 zoomLevelTransitionPhase] && BYTE11(v14) == 1 && (BYTE8(v14) & 1) == 0)
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
  v3 = [(PXCuratedLibraryEventTracker *)self viewModel];
  if ([v3 scrollRegime] || objc_msgSend(v3, "zoomLevelTransitionPhase"))
  {
    [(PXViewControllerEventTracker *)self isViewVisible];
    v4 = 0;
  }

  else
  {
    v5 = [v3 zoomablePhotosViewModel];
    v6 = v5;
    if (v5)
    {
      [v5 zoomState];
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

    v4 = 0;
    if ([(PXViewControllerEventTracker *)self isViewVisible]&& (v7 & 1) == 0)
    {
      v8 = [(PXCuratedLibraryEventTracker *)self layout];
      v4 = [v8 dominantObjectReference];
    }
  }

  [(PXCuratedLibraryEventTracker *)self setDominantObjectReference:v4, v9, v10, v11, v12, v13, v14, v15];
}

- (void)_invalidateCurrentlyViewedZoomLevel
{
  v2 = [(PXUserInterfaceElementEventTracker *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentlyViewedZoomLevel];
}

- (void)_updateCurrentlyViewedZoomLevel
{
  if ([(PXViewControllerEventTracker *)self isViewVisible])
  {
    v3 = [(PXCuratedLibraryEventTracker *)self viewModel];
    v4 = [v3 zoomLevel];
  }

  else
  {
    v4 = 0;
  }

  [(PXCuratedLibraryEventTracker *)self setCurrentlyViewedZoomLevel:v4];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if (CuratedLibraryViewModelObserverContext == a5)
  {
    v9 = (a4 >> 2) & 1;
    a5 = ((a4 >> 13) & 1);
    LODWORD(v10) = (a4 & 0x2800) != 0;
    if ((a4 & 0x800) != 0)
    {
      [(PXCuratedLibraryEventTracker *)self _configureTimerForSlowScrollRegimeUpdatesIfNeeded];
      if (((a4 >> 2) & 1) == 0)
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
      v13 = a5;
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

  if (operator|| == a5)
  {
    LOBYTE(v9) = 0;
    LOBYTE(a5) = a4 & 1;
    LODWORD(v10) = a4 & 1;
    goto LABEL_9;
  }

  if (EventTrackerObserverContext == a5)
  {
    LOBYTE(a5) = 0;
    v10 = (a4 >> 3) & 1;
    LOBYTE(v9) = v10;
    if (((a4 >> 3) & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v15.receiver = self;
  v15.super_class = PXCuratedLibraryEventTracker;
  [(PXMediaViewControllerEventTracker *)&v15 observable:v8 didChange:a4 context:a5];
  LOBYTE(v9) = 0;
  LOBYTE(a5) = 0;
  LODWORD(v10) = 0;
LABEL_10:
  if ((a5 & 1) != 0 || v10)
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

- (void)logAnalysisProgress:(float)a3
{
  if (a3 >= 0.0)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __52__PXCuratedLibraryEventTracker_logAnalysisProgress___block_invoke;
    v5[3] = &unk_1E77467C0;
    v5[4] = self;
    v6 = a3;
    [(PXCuratedLibraryEventTracker *)self performChanges:v5];
  }
}

- (void)logLibraryItemsCount:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__PXCuratedLibraryEventTracker_logLibraryItemsCount___block_invoke;
  v3[3] = &unk_1E7749D78;
  v3[4] = self;
  v3[5] = a3;
  [(PXCuratedLibraryEventTracker *)self performChanges:v3];
}

- (void)_configureTimerForSlowScrollRegimeUpdatesIfNeeded
{
  v3 = [(PXCuratedLibraryEventTracker *)self viewModel];
  v4 = [v3 scrollRegime];

  slowScrollRegimeTimer = self->_slowScrollRegimeTimer;
  if (v4 == 1)
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

      v9 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [v9 addTimer:self->_slowScrollRegimeTimer forMode:*MEMORY[0x1E695DA28]];
      [v9 addTimer:self->_slowScrollRegimeTimer forMode:*MEMORY[0x1E69DE760]];

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

- (void)setDominantObjectReference:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_dominantObjectReference != v5)
  {
    v10 = v5;
    v7 = [(PXSectionedObjectReference *)v5 isEqual:?];
    v6 = v10;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_dominantObjectReference, a3);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [(PXSectionedObjectReference *)v10 asset];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [(PXSectionedObjectReference *)v10 assetCollection];
          v8 = 0;
LABEL_9:
          [(PXMediaViewControllerEventTracker *)self setDisplayedAsset:v8];
          [(PXMediaViewControllerEventTracker *)self setDisplayedAssetCollection:v9];

          v6 = v10;
          goto LABEL_10;
        }

        v8 = 0;
      }

      v9 = 0;
      goto LABEL_9;
    }
  }

LABEL_10:
}

- (void)_logDidEndViewingAllPhotosZoomStateName:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6991F28];
  v5 = a3;
  v6 = [(PXCuratedLibraryEventTracker *)self currentAllPhotosZoomStateSignpost];
  v7 = *MEMORY[0x1E6991C98];
  v10 = *MEMORY[0x1E6991E40];
  v11[0] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9 = [(PXUserInterfaceElementEventTracker *)self finalPayloadWithPayload:v8];
  [v4 endSignpost:v6 forEventName:v7 withPayload:v9];

  [(PXCuratedLibraryEventTracker *)self setCurrentAllPhotosZoomStateSignpost:0];
}

- (void)_logDidStartViewingAllPhotosZoomStateName:(id)a3
{
  if ([(PXCuratedLibraryEventTracker *)self currentAllPhotosZoomStateSignpost])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryEventTracker.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"self.currentAllPhotosZoomStateSignpost == CPAnalyticsSignpostIDNull"}];
  }

  v5 = [MEMORY[0x1E6991F28] startSignpost];

  [(PXCuratedLibraryEventTracker *)self setCurrentAllPhotosZoomStateSignpost:v5];
}

- (void)setCurrentAllPhotosZoomStateName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_currentAllPhotosZoomStateName != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
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

- (void)_logDidStartViewingZoomLevel:(int64_t)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ([(PXCuratedLibraryEventTracker *)self currentZoomLevelSignpost])
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryEventTracker.m" lineNumber:201 description:{@"Invalid parameter not satisfying: %@", @"self.currentZoomLevelSignpost == CPAnalyticsSignpostIDNull"}];
  }

  -[PXCuratedLibraryEventTracker setCurrentZoomLevelSignpost:](self, "setCurrentZoomLevelSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
  v6 = *MEMORY[0x1E6991E20];
  PXCuratedLibraryAnalyticsViewNameForZoomLevel();
}

- (void)setCurrentlyViewedZoomLevel:(int64_t)a3
{
  currentlyViewedZoomLevel = self->_currentlyViewedZoomLevel;
  if (currentlyViewedZoomLevel != a3)
  {
    if (currentlyViewedZoomLevel)
    {
      [(PXCuratedLibraryEventTracker *)self _logDidEndViewingZoomLevel:?];
    }

    self->_currentlyViewedZoomLevel = a3;
    if (a3)
    {
      [(PXCuratedLibraryEventTracker *)self _logDidStartViewingZoomLevel:a3];
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
      v6 = [(PXCuratedLibraryEventTracker *)self firstTimeExperienceLibraryItemsCount];
      v7 = [MEMORY[0x1E695E000] standardUserDefaults];
      v8 = [v7 integerForKey:@"LastCuratedLibraryFirstTimeExperienceReadinessLogged"];

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

        v14 = [MEMORY[0x1E695E000] standardUserDefaults];
        [v14 setInteger:1 forKey:@"LastCuratedLibraryFirstTimeExperienceReadinessLogged"];

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
        v24 = v6;
        _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, "[CuratedLibraryEventTracker]: FTE did log <%@> isReady <%@> for library size <%li>", &v19, 0x20u);
      }
    }
  }
}

- (void)_invalidateFirstTimeExperienceReadinessLogging
{
  v2 = [(PXUserInterfaceElementEventTracker *)self updater];
  [v2 setNeedsUpdateOf:sel__updateFirstTimeExperienceReadinessLogging];
}

- (void)setAnalysisProgress:(float)a3
{
  if (self->_analysisProgress != a3)
  {
    self->_analysisProgress = a3;
    if (self->_firstTimeExperienceAnalysisProgress < 0.0)
    {
      self->_firstTimeExperienceAnalysisProgress = a3;
      [(PXCuratedLibraryEventTracker *)self _invalidateFirstTimeExperienceReadinessLogging];
    }
  }
}

- (void)setLibraryItemsCount:(int64_t)a3
{
  if (a3 < 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryEventTracker.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"libraryItemsCount >= 0"}];
  }

  if (self->_libraryItemsCount != a3)
  {
    self->_libraryItemsCount = a3;
    if (self->_firstTimeExperienceLibraryItemsCount < 0)
    {
      self->_firstTimeExperienceLibraryItemsCount = a3;

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

- (PXCuratedLibraryEventTracker)initWithViewModel:(id)a3 layout:(id)a4
{
  v7 = a3;
  v8 = a4;
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
    objc_storeStrong(&v10->_viewModel, a3);
    [(PXCuratedLibraryViewModel *)v10->_viewModel registerChangeObserver:v10 context:CuratedLibraryViewModelObserverContext];
    v11 = [(PXCuratedLibraryViewModel *)v10->_viewModel zoomablePhotosViewModel];
    [v11 registerChangeObserver:v10 context:operator||];

    objc_storeStrong(&v10->_layout, a4);
    v12 = [(PXUserInterfaceElementEventTracker *)v10 updater];
    [v12 addUpdateSelector:sel__updateFirstTimeExperienceReadinessLogging];
    [v12 addUpdateSelector:sel__updateCurrentlyViewedZoomLevel];
    [v12 addUpdateSelector:sel__updateCurrentAllPhotosZoomState];
    [v12 addUpdateSelector:sel__updateDominantObjectReference];
  }

  return v10;
}

- (PXCuratedLibraryEventTracker)initWithViewName:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryEventTracker.m" lineNumber:76 description:{@"%s is not available as initializer", "-[PXCuratedLibraryEventTracker initWithViewName:]"}];

  abort();
}

@end
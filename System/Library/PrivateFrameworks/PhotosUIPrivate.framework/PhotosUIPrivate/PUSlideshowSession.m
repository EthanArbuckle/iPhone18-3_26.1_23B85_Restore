@interface PUSlideshowSession
- (PUSlideshowSession)init;
- (PUSlideshowSession)initWithFetchResult:(id)a3 assetCollection:(id)a4 startIndex:(unint64_t)a5;
- (id)_resolutionSizes;
- (void)_addCurrentSettingsToPayload:(id)a3;
- (void)_beginDisablingIdleTimer;
- (void)_configurePresentationViewController:(id)a3;
- (void)_distributeSlideshowDisplayContextWithPresentationController:(id)a3;
- (void)_endDisablingIdleTimerIfNecessary;
- (void)_setDisablingIdleTimer:(BOOL)a3;
- (void)_slideshowSettingsViewModel:(id)a3 didChange:(id)a4;
- (void)_slideshowViewModel:(id)a3 didChange:(id)a4;
- (void)_updateCurrentState;
- (void)dealloc;
- (void)registerSlideshowDisplayContext:(id)a3;
- (void)setCurrentState:(int64_t)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)unregisterSlideshowDisplayContext:(id)a3;
- (void)updatePresentationViewController;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUSlideshowSession

- (void)_endDisablingIdleTimerIfNecessary
{
  v3 = [(PUSlideshowSession *)self _disablingIdleTimerToken];
  if (v3)
  {
    v5 = v3;
    v4 = [MEMORY[0x1E69C3358] sharedState];
    [v4 endDisablingIdleTimer:v5];

    [(PUSlideshowSession *)self _setDisablingIdleTimerToken:0];
    v3 = v5;
  }
}

- (void)_beginDisablingIdleTimer
{
  v3 = [(PUSlideshowSession *)self _disablingIdleTimerToken];

  if (!v3)
  {
    v4 = [MEMORY[0x1E69C3358] sharedState];
    v5 = [v4 beginDisablingIdleTimerForReason:@"Slideshow (PUSlideshowSession)"];

    [(PUSlideshowSession *)self _setDisablingIdleTimerToken:v5];
  }
}

- (void)_setDisablingIdleTimer:(BOOL)a3
{
  if (self->__disablingIdleTimer != a3)
  {
    self->__disablingIdleTimer = a3;
    if (a3)
    {
      [(PUSlideshowSession *)self _beginDisablingIdleTimer];
    }

    else
    {
      [(PUSlideshowSession *)self _endDisablingIdleTimerIfNecessary];
    }
  }
}

- (void)_slideshowSettingsViewModel:(id)a3 didChange:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_settingsViewModel == v6)
  {
    [PUSlideshowSettingsPersistency saveSlideshowSettingsViewModel:?];
    if ([v7 presetDidChange])
    {
      viewModel = self->_viewModel;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __60__PUSlideshowSession__slideshowSettingsViewModel_didChange___block_invoke;
      v14[3] = &unk_1E7B80DD0;
      v14[4] = self;
      [(PUViewModel *)viewModel performChanges:v14];
    }

    if ([v7 mediaItemDidChange])
    {
      v9 = [(PUSlideshowSettingsViewModel *)v6 mediaItem];
      v10 = [v9 audioURL];

      presentationViewController = self->_presentationViewController;
      if (v10)
      {
        v15[0] = v10;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
        [(OKPresentationViewController *)presentationViewController setAudioURLs:v12];
      }

      else
      {
        [(OKPresentationViewController *)self->_presentationViewController setAudioURLs:0];
      }
    }

    if ([v7 stepDurationDidChange])
    {
      v13 = self->_presentationViewController;
      [(PUSlideshowSettingsViewModel *)v6 stepDuration];
      [(OKPresentationViewController *)v13 setCouchModeDefaultStepDuration:?];
    }

    if ([v7 shouldRepeatDidChange])
    {
      [(OKPresentationViewController *)self->_presentationViewController setCouchModeLoops:[(PUSlideshowSettingsViewModel *)v6 shouldRepeat]];
    }
  }
}

- (void)_slideshowViewModel:(id)a3 didChange:(id)a4
{
  v9 = a3;
  v7 = a4;
  if (self->_viewModel != v9)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUSlideshowSession.m" lineNumber:322 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ([v7 currentStateDidChange])
  {
    [(PUSlideshowSession *)self _invalidateCurrentState];
  }
}

- (void)_updateCurrentState
{
  v3 = [(PUSlideshowSession *)self viewModel];
  -[PUSlideshowSession setCurrentState:](self, "setCurrentState:", [v3 currentState]);
}

- (void)_addCurrentSettingsToPayload:(id)a3
{
  v4 = a3;
  v16 = [(PUSlideshowSession *)self settingsViewModel];
  v5 = [v16 preset];
  v6 = [v5 audioURLs];
  if ([v6 count] == 1)
  {
    v7 = [v6 firstObject];
    v8 = [v7 scheme];
    v9 = [v8 isEqualToString:@"opus-producer"];

    if (v9)
    {
      v10 = [v7 absoluteString];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 uniqueIdentifier];
  [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69C3FB8]];

  [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69C3F90]];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
  [v4 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69C3FA0]];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "shouldRepeat")}];
  [v4 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69C3FA8]];

  v14 = MEMORY[0x1E696AD98];
  [v16 stepDuration];
  v15 = [v14 numberWithDouble:?];
  [v4 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69C3F98]];
}

- (void)setCurrentState:(int64_t)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  currentState = self->_currentState;
  if (currentState == a3)
  {
    return;
  }

  self->_currentState = a3;
  [(PUSlideshowSession *)self _setDisablingIdleTimer:(a3 - 1) < 2];
  v5 = self->_currentState;
  if ((v5 - 5) < 2)
  {
    [(PUSlideshowSession *)self setDidStartOnce:0];
    v23 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:7];
    v12 = [(PUSlideshowSession *)self uuid];
    [v23 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69C3FB0]];

    if (self->_currentState == 5)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
    [v23 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69C3FC0]];

    [(PUSlideshowSession *)self _addCurrentSettingsToPayload:v23];
    v15 = MEMORY[0x1E6991F28];
    v16 = MEMORY[0x1E69C3F68];
    goto LABEL_11;
  }

  if (v5 == 3)
  {
    v6 = MEMORY[0x1E6991F28];
    v7 = *MEMORY[0x1E69C3F70];
    v24 = *MEMORY[0x1E69C3FB0];
    v8 = [(PUSlideshowSession *)self uuid];
    v25 = v8;
    v9 = MEMORY[0x1E695DF20];
    v10 = &v25;
    v11 = &v24;
    goto LABEL_15;
  }

  if (v5 != 2)
  {
    return;
  }

  if (currentState == 3)
  {
    v6 = MEMORY[0x1E6991F28];
    v7 = *MEMORY[0x1E69C3F78];
    v26 = *MEMORY[0x1E69C3FB0];
    v8 = [(PUSlideshowSession *)self uuid];
    v27[0] = v8;
    v9 = MEMORY[0x1E695DF20];
    v10 = v27;
    v11 = &v26;
LABEL_15:
    v17 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
    [v6 sendEvent:v7 withPayload:v17];

    return;
  }

  if (![(PUSlideshowSession *)self didStartOnce])
  {
    [(PUSlideshowSession *)self setDidStartOnce:1];
    v23 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
    v18 = [(PUSlideshowSession *)self uuid];
    [v23 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69C3FB0]];

    v19 = objc_alloc(MEMORY[0x1E69C44C0]);
    v20 = [(PUSlideshowSession *)self fetchResult];
    v21 = [v19 initWithAssetFetchResult:v20];
    [v23 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69C3F88]];

    v22 = [(PUSlideshowSession *)self assetCollection];
    [v23 setObject:v22 forKeyedSubscript:*MEMORY[0x1E6991E08]];

    [(PUSlideshowSession *)self _addCurrentSettingsToPayload:v23];
    v15 = MEMORY[0x1E6991F28];
    v16 = MEMORY[0x1E69C3F80];
LABEL_11:
    [v15 sendEvent:*v16 withPayload:v23];
  }
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v7 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PUSlideshowSession *)self _slideshowViewModel:v7 didChange:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PUSlideshowSession *)self _slideshowSettingsViewModel:v7 didChange:v6];
    }
  }
}

- (void)_configurePresentationViewController:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 setCouchInitialDelay:0.0];
  [(PUSlideshowSettingsViewModel *)self->_settingsViewModel stepDuration];
  [v4 setCouchModeDefaultStepDuration:?];
  [v4 setCouchModeLoops:{-[PUSlideshowSettingsViewModel shouldRepeat](self->_settingsViewModel, "shouldRepeat")}];
  v5 = [(PUSlideshowSettingsViewModel *)self->_settingsViewModel mediaItem];
  v6 = [v5 audioURL];

  if (v6)
  {
    v20[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [v4 setAudioURLs:v7];
  }

  else
  {
    [v4 setAudioURLs:0];
  }

  v8 = +[PUSlideshowSettings sharedInstance];
  [v4 setInteractivityEnabled:{objc_msgSend(v8, "allowUserInteractivity")}];

  v9 = +[PUSlideshowSettings sharedInstance];
  v10 = [v9 transitionSettingsAreDefaults];

  if ((v10 & 1) == 0)
  {
    v11 = +[PUSlideshowSettings sharedInstance];
    [v11 interactiveTransitionFingerTrackingBoxRadiusDefaultValue];
    v13 = v12;

    [(OKPresentationViewController *)self->_presentationViewController setInteractiveTransitionTrackingBoxRadius:v13];
    v14 = +[PUSlideshowSettings sharedInstance];
    [v14 interactiveTransitionProgressThresholdDefaultValue];
    v16 = v15;

    [(OKPresentationViewController *)self->_presentationViewController setInteractiveTransitionProgressThreshold:v16];
    v17 = +[PUSlideshowSettings sharedInstance];
    [v17 interactiveTransitionVelocityThresholdForAlwaysFinishingDefaultValue];
    v19 = v18;

    [(OKPresentationViewController *)self->_presentationViewController setInteractiveTransitionVelocityThreshold:v19];
  }
}

- (id)_resolutionSizes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B098] valueWithCGSize:{320.0, 568.0}];
  v3 = [MEMORY[0x1E696B098] valueWithCGSize:{568.0, 320.0}];
  v4 = [MEMORY[0x1E696B098] valueWithCGSize:{768.0, 1024.0}];
  v5 = [MEMORY[0x1E696B098] valueWithCGSize:{1024.0, 768.0}];
  v6 = [MEMORY[0x1E696B098] valueWithCGSize:{1920.0, 1080.0}];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];

  return v7;
}

- (void)unregisterSlideshowDisplayContext:(id)a3
{
  v4 = a3;
  if ([(PUSlideshowContextRegistry *)self->_contextRegistry removeDisplayContext:?])
  {
    [v4 slideshowSession:self stopDisplayingPresentationViewController:self->_presentationViewController];
    [(PUSlideshowSession *)self _distributeSlideshowDisplayContextWithPresentationController:self->_presentationViewController];
  }
}

- (void)registerSlideshowDisplayContext:(id)a3
{
  if ([(PUSlideshowContextRegistry *)self->_contextRegistry addDisplayContext:a3])
  {
    presentationViewController = self->_presentationViewController;

    [(PUSlideshowSession *)self _distributeSlideshowDisplayContextWithPresentationController:presentationViewController];
  }
}

- (void)_distributeSlideshowDisplayContextWithPresentationController:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self->_presentationViewController;
  if (self->_presentationViewController != v5)
  {
    objc_storeStrong(&self->_presentationViewController, a3);
  }

  if (([(OKPresentationViewController *)v6 isPaused]& 1) == 0)
  {
    [(OKPresentationViewController *)v6 instantPause];
  }

  v7 = [(PUSlideshowContextRegistry *)self->_contextRegistry displayContexts];
  v8 = [(PUSlideshowContextRegistry *)self->_contextRegistry currentDisplayContext];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v18 + 1) + 8 * v13++) slideshowSession:self stopDisplayingPresentationViewController:v6];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__PUSlideshowSession__distributeSlideshowDisplayContextWithPresentationController___block_invoke;
  v15[3] = &unk_1E7B80C38;
  v16 = v8;
  v17 = self;
  v14 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

uint64_t __83__PUSlideshowSession__distributeSlideshowDisplayContextWithPresentationController___block_invoke(uint64_t a1)
{
  [*(a1 + 32) slideshowSession:*(a1 + 40) startDisplayingPresentationViewController:*(*(a1 + 40) + 72)];
  result = [*(*(a1 + 40) + 56) currentState];
  if (result == 2)
  {
    v3 = *(*(a1 + 40) + 72);

    return [v3 instantPlay];
  }

  return result;
}

- (void)updatePresentationViewController
{
  currentPreset = self->_currentPreset;
  v4 = [(PUSlideshowSettingsViewModel *)self->_settingsViewModel preset];
  LOBYTE(currentPreset) = [(OKProducerPreset *)currentPreset isEqual:v4];

  if ((currentPreset & 1) == 0)
  {
    v5 = [(PUSlideshowSettingsViewModel *)self->_settingsViewModel preset];
    v6 = self->_currentPreset;
    self->_currentPreset = v5;

    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [getOKPresentationGuidelineClass() guidelineLiveAuthoringEnabled:1];
    [v7 addObject:v8];
    OKPresentationGuidelineClass = getOKPresentationGuidelineClass();
    v10 = [(PUSlideshowSession *)self _resolutionSizes];
    v11 = [OKPresentationGuidelineClass guidelineAuthoringRecommendedResolutionSizes:v10];

    [v7 addObject:v11];
    if ([MEMORY[0x1E69C37B8] shouldDisplayTitleOfAssetCollection:self->_assetCollection])
    {
      v12 = [(PHAssetCollection *)self->_assetCollection localizedTitle];
      v13 = [getOKPresentationGuidelineClass() guidelineAuthoringTitle:v12];

      if (v13)
      {
        [v7 addObject:v13];
      }
    }

    else
    {
      v13 = 0;
    }

    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v14 = getOKPresentationViewControllerClass_softClass;
    v22 = getOKPresentationViewControllerClass_softClass;
    if (!getOKPresentationViewControllerClass_softClass)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __getOKPresentationViewControllerClass_block_invoke;
      v18[3] = &unk_1E7B800F0;
      v18[4] = &v19;
      __getOKPresentationViewControllerClass_block_invoke(v18);
      v14 = v20[3];
    }

    v15 = v14;
    _Block_object_dispose(&v19, 8);
    v16 = [[v14 alloc] initWithPreset:self->_currentPreset guidelines:v7 mediaFeeder:self->_mediaFeeder];
    v17 = +[PUSlideshowSettings sharedInstance];
    [v17 setCurrentPreset:self->_currentPreset];

    [(PUSlideshowSession *)self _configurePresentationViewController:v16];
    [(PUSlideshowSession *)self _distributeSlideshowDisplayContextWithPresentationController:v16];
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v24 = a4;
  v5 = NSStringFromSelector(sel_allowUserInteractivity);
  v6 = [v24 isEqual:v5];

  if (v6)
  {
    presentationViewController = self->_presentationViewController;
    v8 = +[PUSlideshowSettings sharedInstance];
    -[OKPresentationViewController setInteractivityEnabled:](presentationViewController, "setInteractivityEnabled:", [v8 allowUserInteractivity]);
  }

  else
  {
    v9 = NSStringFromSelector(sel_interactiveTransitionFingerTrackingBoxRadiusDefaultValue);
    v10 = [v24 isEqual:v9];

    if (v10)
    {
      v11 = +[PUSlideshowSettings sharedInstance];
      [v11 interactiveTransitionFingerTrackingBoxRadiusDefaultValue];
      v13 = v12;

      [(OKPresentationViewController *)self->_presentationViewController setInteractiveTransitionTrackingBoxRadius:v13];
    }

    else
    {
      v14 = NSStringFromSelector(sel_interactiveTransitionProgressThresholdDefaultValue);
      v15 = [v24 isEqual:v14];

      if (v15)
      {
        v16 = +[PUSlideshowSettings sharedInstance];
        [v16 interactiveTransitionProgressThresholdDefaultValue];
        v18 = v17;

        [(OKPresentationViewController *)self->_presentationViewController setInteractiveTransitionProgressThreshold:v18];
      }

      else
      {
        v19 = NSStringFromSelector(sel_interactiveTransitionVelocityThresholdForAlwaysFinishingDefaultValue);
        v20 = [v24 isEqual:v19];

        if (v20)
        {
          v21 = +[PUSlideshowSettings sharedInstance];
          [v21 interactiveTransitionVelocityThresholdForAlwaysFinishingDefaultValue];
          v23 = v22;

          [(OKPresentationViewController *)self->_presentationViewController setInteractiveTransitionVelocityThreshold:v23];
        }
      }
    }
  }
}

- (void)dealloc
{
  [(PUSlideshowViewModel *)self->_viewModel unregisterChangeObserver:self];
  [(PUSlideshowSettingsViewModel *)self->_settingsViewModel unregisterChangeObserver:self];
  [(PUSlideshowSession *)self _endDisablingIdleTimerIfNecessary];
  [(OKPresentationViewController *)self->_presentationViewController forceCleanup];
  v3.receiver = self;
  v3.super_class = PUSlideshowSession;
  [(PUSlideshowSession *)&v3 dealloc];
}

- (PUSlideshowSession)initWithFetchResult:(id)a3 assetCollection:(id)a4 startIndex:(unint64_t)a5
{
  v10 = a3;
  v11 = a4;
  if (!v10)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PUSlideshowSession.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"fetchResult"}];
  }

  if ([v10 count] <= a5)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PUSlideshowSession.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"startIndex < [fetchResult count]"}];
  }

  v31.receiver = self;
  v31.super_class = PUSlideshowSession;
  v12 = [(PUSlideshowSession *)&v31 init];
  if (v12)
  {
    v13 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v12->_uuid;
    v12->_uuid = v13;

    objc_storeStrong(&v12->_fetchResult, a3);
    objc_storeStrong(&v12->_assetCollection, a4);
    v15 = [[PUSlideshowViewModel alloc] initWithAssetCollection:v12->_assetCollection];
    viewModel = v12->_viewModel;
    v12->_viewModel = v15;

    [(PUSlideshowViewModel *)v12->_viewModel registerChangeObserver:v12];
    v17 = +[PUSlideshowSettingsPersistency createSlideshowSettingsViewModel];
    settingsViewModel = v12->_settingsViewModel;
    v12->_settingsViewModel = v17;

    [(PUSlideshowSettingsViewModel *)v12->_settingsViewModel registerChangeObserver:v12];
    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v19 = getOKMediaFeederPhotoKitClass_softClass;
    v36 = getOKMediaFeederPhotoKitClass_softClass;
    if (!getOKMediaFeederPhotoKitClass_softClass)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __getOKMediaFeederPhotoKitClass_block_invoke;
      v32[3] = &unk_1E7B800F0;
      v32[4] = &v33;
      __getOKMediaFeederPhotoKitClass_block_invoke(v32);
      v19 = v34[3];
    }

    v20 = v19;
    _Block_object_dispose(&v33, 8);
    v21 = [v19 mediaFeederWithFetchResult:v10];
    mediaFeeder = v12->_mediaFeeder;
    v12->_mediaFeeder = v21;

    [(OKMediaFeederPhotoKit *)v12->_mediaFeeder setStartIndex:a5];
    [(OKMediaFeederPhotoKit *)v12->_mediaFeeder setRotationEnabled:0];
    v23 = objc_alloc_init(PUSlideshowContextRegistry);
    contextRegistry = v12->_contextRegistry;
    v12->_contextRegistry = v23;

    [(PUSlideshowSession *)v12 _updateCurrentState];
    v25 = [MEMORY[0x1E69C4598] sharedScheduler];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __69__PUSlideshowSession_initWithFetchResult_assetCollection_startIndex___block_invoke;
    v29[3] = &unk_1E7B80DD0;
    v30 = v12;
    [v25 scheduleMainQueueTask:v29];
  }

  return v12;
}

void __69__PUSlideshowSession_initWithFetchResult_assetCollection_startIndex___block_invoke(uint64_t a1)
{
  v2 = +[PUSlideshowSettings sharedInstance];
  [v2 addKeyObserver:*(a1 + 32)];
}

- (PUSlideshowSession)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUSlideshowSession.m" lineNumber:57 description:{@"%@ must be created with the designated initilizer", objc_opt_class()}];

  return [(PUSlideshowSession *)self initWithFetchResult:0 assetCollection:0 startIndex:0];
}

@end
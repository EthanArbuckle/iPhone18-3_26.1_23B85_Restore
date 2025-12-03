@interface PUSlideshowSession
- (PUSlideshowSession)init;
- (PUSlideshowSession)initWithFetchResult:(id)result assetCollection:(id)collection startIndex:(unint64_t)index;
- (id)_resolutionSizes;
- (void)_addCurrentSettingsToPayload:(id)payload;
- (void)_beginDisablingIdleTimer;
- (void)_configurePresentationViewController:(id)controller;
- (void)_distributeSlideshowDisplayContextWithPresentationController:(id)controller;
- (void)_endDisablingIdleTimerIfNecessary;
- (void)_setDisablingIdleTimer:(BOOL)timer;
- (void)_slideshowSettingsViewModel:(id)model didChange:(id)change;
- (void)_slideshowViewModel:(id)model didChange:(id)change;
- (void)_updateCurrentState;
- (void)dealloc;
- (void)registerSlideshowDisplayContext:(id)context;
- (void)setCurrentState:(int64_t)state;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)unregisterSlideshowDisplayContext:(id)context;
- (void)updatePresentationViewController;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUSlideshowSession

- (void)_endDisablingIdleTimerIfNecessary
{
  _disablingIdleTimerToken = [(PUSlideshowSession *)self _disablingIdleTimerToken];
  if (_disablingIdleTimerToken)
  {
    v5 = _disablingIdleTimerToken;
    mEMORY[0x1E69C3358] = [MEMORY[0x1E69C3358] sharedState];
    [mEMORY[0x1E69C3358] endDisablingIdleTimer:v5];

    [(PUSlideshowSession *)self _setDisablingIdleTimerToken:0];
    _disablingIdleTimerToken = v5;
  }
}

- (void)_beginDisablingIdleTimer
{
  _disablingIdleTimerToken = [(PUSlideshowSession *)self _disablingIdleTimerToken];

  if (!_disablingIdleTimerToken)
  {
    mEMORY[0x1E69C3358] = [MEMORY[0x1E69C3358] sharedState];
    v5 = [mEMORY[0x1E69C3358] beginDisablingIdleTimerForReason:@"Slideshow (PUSlideshowSession)"];

    [(PUSlideshowSession *)self _setDisablingIdleTimerToken:v5];
  }
}

- (void)_setDisablingIdleTimer:(BOOL)timer
{
  if (self->__disablingIdleTimer != timer)
  {
    self->__disablingIdleTimer = timer;
    if (timer)
    {
      [(PUSlideshowSession *)self _beginDisablingIdleTimer];
    }

    else
    {
      [(PUSlideshowSession *)self _endDisablingIdleTimerIfNecessary];
    }
  }
}

- (void)_slideshowSettingsViewModel:(id)model didChange:(id)change
{
  v15[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  changeCopy = change;
  if (self->_settingsViewModel == modelCopy)
  {
    [PUSlideshowSettingsPersistency saveSlideshowSettingsViewModel:?];
    if ([changeCopy presetDidChange])
    {
      viewModel = self->_viewModel;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __60__PUSlideshowSession__slideshowSettingsViewModel_didChange___block_invoke;
      v14[3] = &unk_1E7B80DD0;
      v14[4] = self;
      [(PUViewModel *)viewModel performChanges:v14];
    }

    if ([changeCopy mediaItemDidChange])
    {
      mediaItem = [(PUSlideshowSettingsViewModel *)modelCopy mediaItem];
      audioURL = [mediaItem audioURL];

      presentationViewController = self->_presentationViewController;
      if (audioURL)
      {
        v15[0] = audioURL;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
        [(OKPresentationViewController *)presentationViewController setAudioURLs:v12];
      }

      else
      {
        [(OKPresentationViewController *)self->_presentationViewController setAudioURLs:0];
      }
    }

    if ([changeCopy stepDurationDidChange])
    {
      v13 = self->_presentationViewController;
      [(PUSlideshowSettingsViewModel *)modelCopy stepDuration];
      [(OKPresentationViewController *)v13 setCouchModeDefaultStepDuration:?];
    }

    if ([changeCopy shouldRepeatDidChange])
    {
      [(OKPresentationViewController *)self->_presentationViewController setCouchModeLoops:[(PUSlideshowSettingsViewModel *)modelCopy shouldRepeat]];
    }
  }
}

- (void)_slideshowViewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  if (self->_viewModel != modelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSlideshowSession.m" lineNumber:322 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ([changeCopy currentStateDidChange])
  {
    [(PUSlideshowSession *)self _invalidateCurrentState];
  }
}

- (void)_updateCurrentState
{
  viewModel = [(PUSlideshowSession *)self viewModel];
  -[PUSlideshowSession setCurrentState:](self, "setCurrentState:", [viewModel currentState]);
}

- (void)_addCurrentSettingsToPayload:(id)payload
{
  payloadCopy = payload;
  settingsViewModel = [(PUSlideshowSession *)self settingsViewModel];
  preset = [settingsViewModel preset];
  audioURLs = [preset audioURLs];
  if ([audioURLs count] == 1)
  {
    firstObject = [audioURLs firstObject];
    scheme = [firstObject scheme];
    v9 = [scheme isEqualToString:@"opus-producer"];

    if (v9)
    {
      absoluteString = [firstObject absoluteString];
    }

    else
    {
      absoluteString = 0;
    }
  }

  else
  {
    absoluteString = 0;
  }

  uniqueIdentifier = [preset uniqueIdentifier];
  [payloadCopy setObject:uniqueIdentifier forKeyedSubscript:*MEMORY[0x1E69C3FB8]];

  [payloadCopy setObject:absoluteString forKeyedSubscript:*MEMORY[0x1E69C3F90]];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(audioURLs, "count")}];
  [payloadCopy setObject:v12 forKeyedSubscript:*MEMORY[0x1E69C3FA0]];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(settingsViewModel, "shouldRepeat")}];
  [payloadCopy setObject:v13 forKeyedSubscript:*MEMORY[0x1E69C3FA8]];

  v14 = MEMORY[0x1E696AD98];
  [settingsViewModel stepDuration];
  v15 = [v14 numberWithDouble:?];
  [payloadCopy setObject:v15 forKeyedSubscript:*MEMORY[0x1E69C3F98]];
}

- (void)setCurrentState:(int64_t)state
{
  v27[1] = *MEMORY[0x1E69E9840];
  currentState = self->_currentState;
  if (currentState == state)
  {
    return;
  }

  self->_currentState = state;
  [(PUSlideshowSession *)self _setDisablingIdleTimer:(state - 1) < 2];
  v5 = self->_currentState;
  if ((v5 - 5) < 2)
  {
    [(PUSlideshowSession *)self setDidStartOnce:0];
    v23 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:7];
    uuid = [(PUSlideshowSession *)self uuid];
    [v23 setObject:uuid forKeyedSubscript:*MEMORY[0x1E69C3FB0]];

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
    uuid2 = [(PUSlideshowSession *)self uuid];
    v25 = uuid2;
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
    uuid2 = [(PUSlideshowSession *)self uuid];
    v27[0] = uuid2;
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
    uuid3 = [(PUSlideshowSession *)self uuid];
    [v23 setObject:uuid3 forKeyedSubscript:*MEMORY[0x1E69C3FB0]];

    v19 = objc_alloc(MEMORY[0x1E69C44C0]);
    fetchResult = [(PUSlideshowSession *)self fetchResult];
    v21 = [v19 initWithAssetFetchResult:fetchResult];
    [v23 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69C3F88]];

    assetCollection = [(PUSlideshowSession *)self assetCollection];
    [v23 setObject:assetCollection forKeyedSubscript:*MEMORY[0x1E6991E08]];

    [(PUSlideshowSession *)self _addCurrentSettingsToPayload:v23];
    v15 = MEMORY[0x1E6991F28];
    v16 = MEMORY[0x1E69C3F80];
LABEL_11:
    [v15 sendEvent:*v16 withPayload:v23];
  }
}

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PUSlideshowSession *)self _slideshowViewModel:modelCopy didChange:changeCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PUSlideshowSession *)self _slideshowSettingsViewModel:modelCopy didChange:changeCopy];
    }
  }
}

- (void)_configurePresentationViewController:(id)controller
{
  v20[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  [controllerCopy setCouchInitialDelay:0.0];
  [(PUSlideshowSettingsViewModel *)self->_settingsViewModel stepDuration];
  [controllerCopy setCouchModeDefaultStepDuration:?];
  [controllerCopy setCouchModeLoops:{-[PUSlideshowSettingsViewModel shouldRepeat](self->_settingsViewModel, "shouldRepeat")}];
  mediaItem = [(PUSlideshowSettingsViewModel *)self->_settingsViewModel mediaItem];
  audioURL = [mediaItem audioURL];

  if (audioURL)
  {
    v20[0] = audioURL;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [controllerCopy setAudioURLs:v7];
  }

  else
  {
    [controllerCopy setAudioURLs:0];
  }

  v8 = +[PUSlideshowSettings sharedInstance];
  [controllerCopy setInteractivityEnabled:{objc_msgSend(v8, "allowUserInteractivity")}];

  v9 = +[PUSlideshowSettings sharedInstance];
  transitionSettingsAreDefaults = [v9 transitionSettingsAreDefaults];

  if ((transitionSettingsAreDefaults & 1) == 0)
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

- (void)unregisterSlideshowDisplayContext:(id)context
{
  contextCopy = context;
  if ([(PUSlideshowContextRegistry *)self->_contextRegistry removeDisplayContext:?])
  {
    [contextCopy slideshowSession:self stopDisplayingPresentationViewController:self->_presentationViewController];
    [(PUSlideshowSession *)self _distributeSlideshowDisplayContextWithPresentationController:self->_presentationViewController];
  }
}

- (void)registerSlideshowDisplayContext:(id)context
{
  if ([(PUSlideshowContextRegistry *)self->_contextRegistry addDisplayContext:context])
  {
    presentationViewController = self->_presentationViewController;

    [(PUSlideshowSession *)self _distributeSlideshowDisplayContextWithPresentationController:presentationViewController];
  }
}

- (void)_distributeSlideshowDisplayContextWithPresentationController:(id)controller
{
  v23 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v6 = self->_presentationViewController;
  if (self->_presentationViewController != controllerCopy)
  {
    objc_storeStrong(&self->_presentationViewController, controller);
  }

  if (([(OKPresentationViewController *)v6 isPaused]& 1) == 0)
  {
    [(OKPresentationViewController *)v6 instantPause];
  }

  displayContexts = [(PUSlideshowContextRegistry *)self->_contextRegistry displayContexts];
  currentDisplayContext = [(PUSlideshowContextRegistry *)self->_contextRegistry currentDisplayContext];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = displayContexts;
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
  v16 = currentDisplayContext;
  selfCopy = self;
  v14 = currentDisplayContext;
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
  preset = [(PUSlideshowSettingsViewModel *)self->_settingsViewModel preset];
  LOBYTE(currentPreset) = [(OKProducerPreset *)currentPreset isEqual:preset];

  if ((currentPreset & 1) == 0)
  {
    preset2 = [(PUSlideshowSettingsViewModel *)self->_settingsViewModel preset];
    v6 = self->_currentPreset;
    self->_currentPreset = preset2;

    array = [MEMORY[0x1E695DF70] array];
    v8 = [getOKPresentationGuidelineClass() guidelineLiveAuthoringEnabled:1];
    [array addObject:v8];
    OKPresentationGuidelineClass = getOKPresentationGuidelineClass();
    _resolutionSizes = [(PUSlideshowSession *)self _resolutionSizes];
    v11 = [OKPresentationGuidelineClass guidelineAuthoringRecommendedResolutionSizes:_resolutionSizes];

    [array addObject:v11];
    if ([MEMORY[0x1E69C37B8] shouldDisplayTitleOfAssetCollection:self->_assetCollection])
    {
      localizedTitle = [(PHAssetCollection *)self->_assetCollection localizedTitle];
      v13 = [getOKPresentationGuidelineClass() guidelineAuthoringTitle:localizedTitle];

      if (v13)
      {
        [array addObject:v13];
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
    v16 = [[v14 alloc] initWithPreset:self->_currentPreset guidelines:array mediaFeeder:self->_mediaFeeder];
    v17 = +[PUSlideshowSettings sharedInstance];
    [v17 setCurrentPreset:self->_currentPreset];

    [(PUSlideshowSession *)self _configurePresentationViewController:v16];
    [(PUSlideshowSession *)self _distributeSlideshowDisplayContextWithPresentationController:v16];
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  keyCopy = key;
  v5 = NSStringFromSelector(sel_allowUserInteractivity);
  v6 = [keyCopy isEqual:v5];

  if (v6)
  {
    presentationViewController = self->_presentationViewController;
    v8 = +[PUSlideshowSettings sharedInstance];
    -[OKPresentationViewController setInteractivityEnabled:](presentationViewController, "setInteractivityEnabled:", [v8 allowUserInteractivity]);
  }

  else
  {
    v9 = NSStringFromSelector(sel_interactiveTransitionFingerTrackingBoxRadiusDefaultValue);
    v10 = [keyCopy isEqual:v9];

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
      v15 = [keyCopy isEqual:v14];

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
        v20 = [keyCopy isEqual:v19];

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

- (PUSlideshowSession)initWithFetchResult:(id)result assetCollection:(id)collection startIndex:(unint64_t)index
{
  resultCopy = result;
  collectionCopy = collection;
  if (!resultCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSlideshowSession.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"fetchResult"}];
  }

  if ([resultCopy count] <= index)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUSlideshowSession.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"startIndex < [fetchResult count]"}];
  }

  v31.receiver = self;
  v31.super_class = PUSlideshowSession;
  v12 = [(PUSlideshowSession *)&v31 init];
  if (v12)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v12->_uuid;
    v12->_uuid = uUID;

    objc_storeStrong(&v12->_fetchResult, result);
    objc_storeStrong(&v12->_assetCollection, collection);
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
    v21 = [v19 mediaFeederWithFetchResult:resultCopy];
    mediaFeeder = v12->_mediaFeeder;
    v12->_mediaFeeder = v21;

    [(OKMediaFeederPhotoKit *)v12->_mediaFeeder setStartIndex:index];
    [(OKMediaFeederPhotoKit *)v12->_mediaFeeder setRotationEnabled:0];
    v23 = objc_alloc_init(PUSlideshowContextRegistry);
    contextRegistry = v12->_contextRegistry;
    v12->_contextRegistry = v23;

    [(PUSlideshowSession *)v12 _updateCurrentState];
    mEMORY[0x1E69C4598] = [MEMORY[0x1E69C4598] sharedScheduler];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __69__PUSlideshowSession_initWithFetchResult_assetCollection_startIndex___block_invoke;
    v29[3] = &unk_1E7B80DD0;
    v30 = v12;
    [mEMORY[0x1E69C4598] scheduleMainQueueTask:v29];
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUSlideshowSession.m" lineNumber:57 description:{@"%@ must be created with the designated initilizer", objc_opt_class()}];

  return [(PUSlideshowSession *)self initWithFetchResult:0 assetCollection:0 startIndex:0];
}

@end
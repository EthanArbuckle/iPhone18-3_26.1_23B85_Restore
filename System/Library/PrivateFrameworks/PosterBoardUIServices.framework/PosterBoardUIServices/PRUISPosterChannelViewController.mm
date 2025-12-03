@interface PRUISPosterChannelViewController
+ (id)_emptyContext;
- (BOOL)addEvent:(id)event outError:(id *)error;
- (CGRect)salientContentRectangle;
- (FBScene)scene;
- (PRUISPosterChannelViewController)initWithChannel:(id)channel purpose:(id)purpose;
- (PRUISPosterChannelViewController)initWithChannel:(id)channel purpose:(id)purpose context:(id)context delegate:(id)delegate initialRenderingOptions:(id)options;
- (PRUISPosterChannelViewControllerDelegate)delegate;
- (PRUISPosterMotionEventsGenerating)motionEventsGenerator;
- (id)_createViewControllerForPoster:(id)poster;
- (id)_fetchInitialStateSnapshotBundleForPoster:(id)poster;
- (id)_fetchSnapshotBundlesFutureForPosterUUID:(id)d;
- (id)_fetchWaitingForLiveRenderingSnapshotBundlesForPoster:(id)poster;
- (id)_latestSnapshotBundleForConfiguration:(id)configuration;
- (id)_logPrefix;
- (id)_snapshotDestinationFromScene:(id)scene;
- (id)_waitingForLiveRenderingSceneSnapshotRequestForPosterConfiguration:(id)configuration;
- (void)_addViewController:(id)controller;
- (void)_purgeInitialStateSnapshotForPosterConfiguration:(id)configuration;
- (void)_purgeSnapshotBundle:(id)bundle;
- (void)_purgeSnapshotBundleFuture:(id)future;
- (void)_purgeSnapshotBundles:(id)bundles;
- (void)_purgeSnapshotBundlesFuture:(id)future;
- (void)_snapshotCurrentPosterConfiguration;
- (void)_teardownPosterViewController:(id)controller;
- (void)addTransition:(id)transition;
- (void)channel:(id)channel didUpdatePoster:(id)poster;
- (void)channelWillInvalidate:(id)invalidate;
- (void)dealloc;
- (void)loadView;
- (void)setContentOcclusionRectangles:(id)rectangles;
- (void)setRenderingMode:(unint64_t)mode;
- (void)setSalientContentRectangle:(CGRect)rectangle;
- (void)setSceneViewBackgroundColor:(id)color;
- (void)setViewBackgroundColor:(id)color;
- (void)userTapEventOccurredWithLocation:(CGPoint)location;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PRUISPosterChannelViewController

- (PRUISPosterChannelViewController)initWithChannel:(id)channel purpose:(id)purpose
{
  purposeCopy = purpose;
  channelCopy = channel;
  _emptyContext = [objc_opt_class() _emptyContext];
  v9 = [(PRUISPosterChannelViewController *)self initWithChannel:channelCopy purpose:purposeCopy context:_emptyContext];

  return v9;
}

- (PRUISPosterChannelViewController)initWithChannel:(id)channel purpose:(id)purpose context:(id)context delegate:(id)delegate initialRenderingOptions:(id)options
{
  channelCopy = channel;
  purposeCopy = purpose;
  contextCopy = context;
  delegateCopy = delegate;
  optionsCopy = options;
  if (channelCopy)
  {
    if (purposeCopy)
    {
      goto LABEL_3;
    }

LABEL_19:
    [PRUISPosterChannelViewController initWithChannel:a2 purpose:self context:? delegate:? initialRenderingOptions:?];
    if (contextCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  [PRUISPosterChannelViewController initWithChannel:a2 purpose:self context:? delegate:? initialRenderingOptions:?];
  if (!purposeCopy)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (contextCopy)
  {
    goto LABEL_4;
  }

LABEL_20:
  [PRUISPosterChannelViewController initWithChannel:a2 purpose:self context:? delegate:? initialRenderingOptions:?];
LABEL_4:
  v42.receiver = self;
  v42.super_class = PRUISPosterChannelViewController;
  v19 = [(PRUISPosterChannelViewController *)&v42 initWithNibName:0 bundle:0];
  if (v19)
  {
    *(v19 + 124) = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation];
    objc_storeStrong(v19 + 137, channel);
    [channelCopy addChannelObserver:v19];
    objc_storeWeak(v19 + 135, delegateCopy);
    objc_storeStrong(v19 + 125, purpose);
    objc_storeStrong(v19 + 126, context);
    snapshotController = [channelCopy snapshotController];
    v21 = *(v19 + 129);
    *(v19 + 129) = snapshotController;

    if (optionsCopy)
    {
      *(v19 + 133) = [optionsCopy renderingMode];
      [optionsCopy salientContentRectangle];
      *(v19 + 139) = v22;
      *(v19 + 140) = v23;
      *(v19 + 141) = v24;
      *(v19 + 142) = v25;
      contentOcclusionRectangles = [optionsCopy contentOcclusionRectangles];
    }

    else
    {
      contentOcclusionRectangles = 0;
      *(v19 + 133) = 2;
      v27 = *(MEMORY[0x1E695F058] + 16);
      *(v19 + 1112) = *MEMORY[0x1E695F058];
      *(v19 + 1128) = v27;
    }

    objc_storeStrong(v19 + 134, contentOcclusionRectangles);
    if (optionsCopy)
    {

      [optionsCopy viewBackgroundColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] blackColor];
    }
    v28 = ;
    objc_storeStrong(v19 + 131, v28);

    if (optionsCopy)
    {
      [optionsCopy sceneViewBackgroundColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] blackColor];
    }
    v29 = ;
    objc_storeStrong(v19 + 132, v29);

    objc_initWeak(&location, v19);
    v30 = MEMORY[0x1E69E96A0];
    v39 = MEMORY[0x1E69E9820];
    objc_copyWeak(&v40, &location);
    v31 = BSLogAddStateCaptureBlockWithTitle();
    v32 = *(v19 + 130);
    *(v19 + 130) = v31;

    posterConfiguration = [*(v19 + 137) posterConfiguration];
    if (posterConfiguration)
    {
      v34 = [v19 _fetchInitialStateSnapshotBundleForPoster:posterConfiguration];
      v35 = *(v19 + 127);
      *(v19 + 127) = v34;

      v36 = [v19 _createViewControllerForPoster:posterConfiguration];
      v37 = *(v19 + 128);
      *(v19 + 128) = v36;
    }

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  return v19;
}

id __101__PRUISPosterChannelViewController_initWithChannel_purpose_context_delegate_initialRenderingOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x1E698E680] builderWithObject:WeakRetained];
    v3 = [v2 appendObject:WeakRetained[125] withName:@"purpose"];
    v4 = [v2 appendObject:WeakRetained[137] withName:@"channel"];
    v5 = WeakRetained[128];
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"viewController [%@]", v8];
    v10 = [v2 appendObject:v5 withName:v9];

    v11 = [v2 build];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PRUISLogChannels();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _logPrefix = [(PRUISPosterChannelViewController *)self _logPrefix];
    *buf = 138543362;
    v8 = _logPrefix;
    _os_log_impl(&dword_1CAE63000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocating...", buf, 0xCu);
  }

  [(PRUISPosterChannelViewController *)self _teardownPosterViewController:self->_viewController];
  viewController = self->_viewController;
  self->_viewController = 0;

  [(PRUISPosterChannel *)self->_channel removeChannelObserver:self];
  [(BSInvalidatable *)self->_stateCaptureHandle invalidate];
  v6.receiver = self;
  v6.super_class = PRUISPosterChannelViewController;
  [(PRUISPosterChannelViewController *)&v6 dealloc];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = PRUISPosterChannelViewController;
  coordinatorCopy = coordinator;
  [(PRUISPosterChannelViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  containerView = [coordinatorCopy containerView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    window = containerView;
  }

  else
  {
    window = [containerView window];
  }

  v10 = window;
  if (coordinatorCopy)
  {
    _toWindowOrientation = [window _toWindowOrientation];
  }

  else
  {
    _toWindowOrientation = [(PRUISPosterChannelViewController *)self interfaceOrientation];
  }

  self->_activeOrientation = _toWindowOrientation;
}

- (void)loadView
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = PRUISPosterChannelViewController;
  [(PRUISPosterChannelViewController *)&v6 loadView];
  view = [(PRUISPosterChannelViewController *)self view];
  [view setBackgroundColor:self->_viewBackgroundColor];

  v4 = PRUISLogChannels();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _logPrefix = [(PRUISPosterChannelViewController *)self _logPrefix];
    *buf = 138543362;
    v8 = _logPrefix;
    _os_log_impl(&dword_1CAE63000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ loadView...", buf, 0xCu);
  }

  if (self->_viewController)
  {
    [(PRUISPosterChannelViewController *)self _addViewController:?];
  }
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PRUISPosterChannelViewController;
  [(PRUISPosterChannelViewController *)&v5 viewDidLayoutSubviews];
  if ([(PRUISPosterRenderingViewController *)self->_viewController isViewLoaded])
  {
    if ([(PRUISPosterChannelViewController *)self isViewLoaded])
    {
      view = [(PRUISPosterRenderingViewController *)self->_viewController view];
      view2 = [(PRUISPosterChannelViewController *)self view];
      [view2 bounds];
      [view setFrame:?];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v14 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = PRUISPosterChannelViewController;
  [(PRUISPosterChannelViewController *)&v11 viewDidAppear:appear];
  v4 = PRUISLogChannels();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _logPrefix = [(PRUISPosterChannelViewController *)self _logPrefix];
    *buf = 138543362;
    v13 = _logPrefix;
    _os_log_impl(&dword_1CAE63000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ viewDidAppear...", buf, 0xCu);
  }

  posterConfiguration = [(PRUISPosterChannel *)self->_channel posterConfiguration];
  v7 = posterConfiguration;
  if (self->_viewController)
  {
    v8 = 1;
  }

  else
  {
    v8 = posterConfiguration == 0;
  }

  if (!v8)
  {
    v9 = [(PRUISPosterChannelViewController *)self _createViewControllerForPoster:posterConfiguration];
    viewController = self->_viewController;
    self->_viewController = v9;

    [(PRUISPosterChannelViewController *)self _addViewController:self->_viewController];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v11 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PRUISPosterChannelViewController;
  [(PRUISPosterChannelViewController *)&v8 viewDidDisappear:disappear];
  v4 = PRUISLogChannels();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _logPrefix = [(PRUISPosterChannelViewController *)self _logPrefix];
    *buf = 138543362;
    v10 = _logPrefix;
    _os_log_impl(&dword_1CAE63000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ viewDidDisappear...", buf, 0xCu);
  }

  if (self->_viewController)
  {
    view = [(PRUISPosterChannelViewController *)self view];
    [view bounds];
    v7 = CGRectEqualToRect(v12, *MEMORY[0x1E695F058]);

    if (!v7)
    {
      [(PRUISPosterChannelViewController *)self _snapshotCurrentPosterConfiguration];
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v10 = *MEMORY[0x1E69E9840];
  v5 = PRUISLogChannels();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _logPrefix = [(PRUISPosterChannelViewController *)self _logPrefix];
    *buf = 138543362;
    v9 = _logPrefix;
    _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ viewWillDisappear...", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = PRUISPosterChannelViewController;
  [(PRUISPosterChannelViewController *)&v7 viewWillDisappear:disappearCopy];
}

- (PRUISPosterMotionEventsGenerating)motionEventsGenerator
{
  viewController = self->_viewController;
  if (viewController)
  {
    v3 = viewController;
  }

  return viewController;
}

- (void)channel:(id)channel didUpdatePoster:(id)poster
{
  channelCopy = channel;
  posterCopy = poster;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__PRUISPosterChannelViewController_channel_didUpdatePoster___block_invoke;
  aBlock[3] = &unk_1E83A85F8;
  objc_copyWeak(&v16, &location);
  v8 = _Block_copy(aBlock);
  v9 = self->_viewController;
  configuration = [(PRUISPosterRenderingViewController *)v9 configuration];
  if (configuration)
  {
    [(PRUISPosterChannelViewController *)self _purgeInitialStateSnapshotForPosterConfiguration:configuration];
  }

  objc_copyWeak(&v14, &location);
  v11 = posterCopy;
  v13 = v8;
  v12 = v9;
  BSDispatchMain();

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __60__PRUISPosterChannelViewController_channel_didUpdatePoster___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__PRUISPosterChannelViewController_channel_didUpdatePoster___block_invoke_2;
    aBlock[3] = &unk_1E83A85A8;
    aBlock[4] = WeakRetained;
    v9 = _Block_copy(aBlock);
    v10 = v9;
    if (v6)
    {
      v11 = MEMORY[0x1E698E7D0];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __60__PRUISPosterChannelViewController_channel_didUpdatePoster___block_invoke_3;
      v15[3] = &unk_1E83A72F8;
      v16 = v5;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __60__PRUISPosterChannelViewController_channel_didUpdatePoster___block_invoke_4;
      v12[3] = &unk_1E83A85D0;
      v14 = v10;
      v13 = v16;
      [v11 animateWithSettings:v6 actions:v15 completion:v12];
    }

    else
    {
      (*(v9 + 2))(v9, v5);
    }
  }
}

void __60__PRUISPosterChannelViewController_channel_didUpdatePoster___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

void __60__PRUISPosterChannelViewController_channel_didUpdatePoster___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[136];
    if (*(a1 + 32))
    {
      v5 = [v3 _createViewControllerForPoster:?];
      if (v5)
      {
        objc_storeStrong(v3 + 128, v5);
        [v3 _addViewController:v5];
        if (v4)
        {
          v6 = [v5 view];
          [v6 setAlpha:0.0];

          v7 = MEMORY[0x1E698E7D0];
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __60__PRUISPosterChannelViewController_channel_didUpdatePoster___block_invoke_6;
          v11[3] = &unk_1E83A7100;
          v12 = v5;
          v13 = *(a1 + 40);
          v8[0] = MEMORY[0x1E69E9820];
          v8[1] = 3221225472;
          v8[2] = __60__PRUISPosterChannelViewController_channel_didUpdatePoster___block_invoke_7;
          v8[3] = &unk_1E83A85D0;
          v10 = *(a1 + 48);
          v9 = *(a1 + 40);
          [v7 animateWithSettings:v4 actions:v11 completion:v8];
        }

        else
        {
          (*(*(a1 + 48) + 16))();
        }
      }
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

void __60__PRUISPosterChannelViewController_channel_didUpdatePoster___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 40) view];
  [v3 setAlpha:0.0];
}

- (void)channelWillInvalidate:(id)invalidate
{
  posterConfiguration = [invalidate posterConfiguration];
  if (posterConfiguration)
  {
    posterConfiguration = [(PRUISPosterChannelViewController *)self _purgeInitialStateSnapshotForPosterConfiguration:posterConfiguration];
  }

  MEMORY[0x1EEE66BB8](posterConfiguration);
}

- (void)setRenderingMode:(unint64_t)mode
{
  if (self->_renderingMode != mode)
  {
    viewController = self->_viewController;
    if (viewController)
    {
      [(PRUISPosterRenderingViewController *)viewController setRenderingMode:?];
    }
  }
}

- (void)setSalientContentRectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  p_salientContentRectangle = &self->_salientContentRectangle;
  if (!CGRectEqualToRect(self->_salientContentRectangle, rectangle))
  {
    p_salientContentRectangle->origin.x = x;
    p_salientContentRectangle->origin.y = y;
    p_salientContentRectangle->size.width = width;
    p_salientContentRectangle->size.height = height;
    viewController = self->_viewController;
    if (viewController)
    {

      [(PRUISPosterRenderingViewController *)viewController setSalientContentRectangle:x, y, width, height];
    }
  }
}

- (void)setContentOcclusionRectangles:(id)rectangles
{
  rectanglesCopy = rectangles;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_contentOcclusionRectangles, rectangles);
    viewController = self->_viewController;
    if (viewController)
    {
      [(PRUISPosterRenderingViewController *)viewController setContentOcclusionRectangles:rectanglesCopy];
    }
  }
}

- (void)setViewBackgroundColor:(id)color
{
  colorCopy = color;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_viewBackgroundColor, color);
    viewIfLoaded = [(PRUISPosterChannelViewController *)self viewIfLoaded];
    [viewIfLoaded setBackgroundColor:colorCopy];

    viewController = self->_viewController;
    if (viewController)
    {
      [(PRUISPosterRenderingViewController *)viewController setViewBackgroundColor:colorCopy];
    }
  }
}

- (void)setSceneViewBackgroundColor:(id)color
{
  colorCopy = color;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_sceneViewBackgroundColor, color);
    viewController = self->_viewController;
    if (viewController)
    {
      [(PRUISPosterRenderingViewController *)viewController setSceneViewBackgroundColor:colorCopy];
    }
  }
}

- (BOOL)addEvent:(id)event outError:(id *)error
{
  viewController = self->_viewController;
  if (viewController)
  {

    return [(PRUISPosterRenderingViewController *)viewController addEvent:event outError:?];
  }

  else
  {
    v7 = PFFunctionNameForAddress();
    v8 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

    v9 = PRUISLogChannels();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PRUISPosterChannelViewController addEvent:outError:];
    }

    if (error)
    {
      v10 = v8;
      *error = v8;
    }

    return 0;
  }
}

- (void)userTapEventOccurredWithLocation:(CGPoint)location
{
  viewController = self->_viewController;
  if (viewController)
  {

    [(PRUISPosterRenderingViewController *)viewController userTapEventOccurredWithLocation:location.x, location.y];
  }

  else
  {
    v5 = PRUISLogChannels();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PRUISPosterChannelViewController userTapEventOccurredWithLocation:?];
    }
  }
}

- (void)addTransition:(id)transition
{
  viewController = self->_viewController;
  if (viewController)
  {

    [(PRUISPosterRenderingViewController *)viewController addTransition:transition];
  }

  else
  {
    v5 = PRUISLogChannels();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PRUISPosterChannelViewController addTransition:?];
    }
  }
}

- (FBScene)scene
{
  viewController = self->_viewController;
  if (viewController)
  {
    viewController = [viewController scene];
    v2 = vars8;
  }

  return viewController;
}

- (void)_snapshotCurrentPosterConfiguration
{
  _logPrefix = [self _logPrefix];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

id __71__PRUISPosterChannelViewController__snapshotCurrentPosterConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 serverIdentity];
    v6 = [v5 posterUUID];
    v7 = [WeakRetained _fetchSnapshotBundlesFutureForPosterUUID:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __71__PRUISPosterChannelViewController__snapshotCurrentPosterConfiguration__block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = PRUISLogChannels();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained _logPrefix];
    *buf = 138543618;
    v18 = v6;
    v19 = 2114;
    v20 = v3;
    _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully captured snapshot. Result: %{public}@.", buf, 0x16u);
  }

  v7 = [MEMORY[0x1E69C55C8] predicateMatchingRequest:*(a1 + 32)];
  [*(a1 + 40) clearCachedSnapshotBundlesSatisfyingPredicate:v7];
  [*(a1 + 40) cacheSnapshotBundle:v3 forPredicate:v7];
  v8 = [*(a1 + 48) _fetchWaitingForLiveRenderingSnapshotBundlesForPoster:*(a1 + 56)];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__PRUISPosterChannelViewController__snapshotCurrentPosterConfiguration__block_invoke_95;
  v14[3] = &unk_1E83A8698;
  v9 = v3;
  v10 = *(a1 + 48);
  v15 = v9;
  v16 = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__PRUISPosterChannelViewController__snapshotCurrentPosterConfiguration__block_invoke_100;
  v12[3] = &unk_1E83A86C0;
  v12[4] = v10;
  v13 = v9;
  v11 = v9;
  [v8 addSuccessBlock:v14 andFailureBlock:v12];
}

void __71__PRUISPosterChannelViewController__snapshotCurrentPosterConfiguration__block_invoke_95(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AE18];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__PRUISPosterChannelViewController__snapshotCurrentPosterConfiguration__block_invoke_2_97;
  v11[3] = &unk_1E83A8670;
  v12 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 predicateWithBlock:v11];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  if ([v7 count])
  {
    v8 = PRUISLogChannels();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) _logPrefix];
      v10 = [v7 count];
      *buf = 138543618;
      v14 = v9;
      v15 = 2048;
      v16 = v10;
      _os_log_impl(&dword_1CAE63000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Purging %lu old waitingForLiveRenderingScene snapshots", buf, 0x16u);
    }

    [*(a1 + 40) _purgeSnapshotBundles:v7];
  }
}

void __71__PRUISPosterChannelViewController__snapshotCurrentPosterConfiguration__block_invoke_100(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PRUISLogChannels();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) _logPrefix];
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1CAE63000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to fetch waitingForLiveRenderingScene snapshot bundles for cleanup: %{public}@, falling back to naive cleanup", &v7, 0x16u);
  }

  v6 = *(*(a1 + 32) + 1016);
  if (v6 && (BSEqualObjects() & 1) == 0)
  {
    [*(a1 + 32) _purgeSnapshotBundle:v6];
  }
}

void __71__PRUISPosterChannelViewController__snapshotCurrentPosterConfiguration__block_invoke_103(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = PRUISLogChannels();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __71__PRUISPosterChannelViewController__snapshotCurrentPosterConfiguration__block_invoke_103_cold_1();
  }
}

- (id)_snapshotDestinationFromScene:(id)scene
{
  sceneCopy = scene;
  _snapshotCache = [(PRUISPosterChannelViewController *)self _snapshotCache];
  underlyingCache = [_snapshotCache underlyingCache];

  v7 = MEMORY[0x1E698E620];
  clientHandle = [sceneCopy clientHandle];

  processHandle = [clientHandle processHandle];
  v10 = processHandle;
  if (processHandle)
  {
    [processHandle auditToken];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  v11 = [v7 tokenFromAuditToken:v14];

  v12 = [MEMORY[0x1E69C55E0] destinationForCache:underlyingCache clientAuditToken:v11 error:0];

  return v12;
}

- (id)_waitingForLiveRenderingSceneSnapshotRequestForPosterConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = +[PRUISPosterChannelSnapshotDefinition waitingForLiveRenderingSceneDefinition];
  v6 = [(UIViewController *)self pruis_snapshotRequestForDefinition:v5 interfaceOrientation:self->_activeOrientation bounds:0 screen:configurationCopy posterContents:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];

  v11 = 0;
  v7 = [v6 buildPUISnapshotRequestForPriority:0 sceneAttachments:0 error:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = PRUISLogChannels();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PRUISPosterChannelViewController _waitingForLiveRenderingSceneSnapshotRequestForPosterConfiguration:];
    }
  }

  return v7;
}

+ (id)_emptyContext
{
  if (_emptyContext_onceToken != -1)
  {
    +[PRUISPosterChannelViewController _emptyContext];
  }

  v3 = _emptyContext_context;

  return v3;
}

uint64_t __49__PRUISPosterChannelViewController__emptyContext__block_invoke()
{
  v0 = objc_alloc_init(_PRUISEmptyPosterContext);
  _emptyContext_context = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

- (void)_purgeInitialStateSnapshotForPosterConfiguration:(id)configuration
{
  v4 = [(PRUISPosterChannelViewController *)self _fetchWaitingForLiveRenderingSnapshotBundlesForPoster:configuration];
  [(PRUISPosterChannelViewController *)self _purgeSnapshotBundlesFuture:v4];
}

- (void)_purgeSnapshotBundlesFuture:(id)future
{
  futureCopy = future;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__PRUISPosterChannelViewController__purgeSnapshotBundlesFuture___block_invoke;
  v5[3] = &unk_1E83A8710;
  objc_copyWeak(&v6, &location);
  [futureCopy addSuccessBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __64__PRUISPosterChannelViewController__purgeSnapshotBundlesFuture___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _purgeSnapshotBundles:v5];
  }
}

- (void)_purgeSnapshotBundleFuture:(id)future
{
  futureCopy = future;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__PRUISPosterChannelViewController__purgeSnapshotBundleFuture___block_invoke;
  v5[3] = &unk_1E83A8738;
  objc_copyWeak(&v6, &location);
  [futureCopy addSuccessBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __63__PRUISPosterChannelViewController__purgeSnapshotBundleFuture___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _purgeSnapshotBundle:v5];
  }
}

- (void)_purgeSnapshotBundle:(id)bundle
{
  v8 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v4 = MEMORY[0x1E695DEC8];
  bundleCopy2 = bundle;
  v6 = [v4 arrayWithObjects:&bundleCopy count:1];

  [(PRUISPosterChannelViewController *)self _purgeSnapshotBundles:v6, bundleCopy, v8];
}

- (void)_purgeSnapshotBundles:(id)bundles
{
  v31 = *MEMORY[0x1E69E9840];
  bundlesCopy = bundles;
  if ([bundlesCopy count])
  {
    v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(bundlesCopy, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = bundlesCopy;
    v6 = bundlesCopy;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          bundleURL = [*(*(&v22 + 1) + 8 * i) bundleURL];
          uRLByStandardizingPath = [bundleURL URLByStandardizingPath];

          v13 = PRUISLogChannels();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            _logPrefix = [(PRUISPosterChannelViewController *)self _logPrefix];
            *buf = 138543618;
            v27 = _logPrefix;
            v28 = 2114;
            v29 = uRLByStandardizingPath;
            _os_log_impl(&dword_1CAE63000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Purging snapshot bundle at url: %{public}@.", buf, 0x16u);
          }

          [v5 addObject:uRLByStandardizingPath];
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v8);
    }

    v15 = MEMORY[0x1E696AE18];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __58__PRUISPosterChannelViewController__purgeSnapshotBundles___block_invoke;
    v20[3] = &unk_1E83A8760;
    v21 = v5;
    v16 = v5;
    v17 = [v15 predicateWithBlock:v20];
    _snapshotCache = [(PRUISPosterChannelViewController *)self _snapshotCache];
    [_snapshotCache discardSnapshotsForPostersMatchingPredicate:v17];

    bundlesCopy = v19;
  }
}

uint64_t __58__PRUISPosterChannelViewController__purgeSnapshotBundles___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 URLByStandardizingPath];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)_latestSnapshotBundleForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [(PRUISPosterChannelViewController *)self _waitingForLiveRenderingSceneSnapshotRequestForPosterConfiguration:configurationCopy];
  v6 = [MEMORY[0x1E69C55C8] predicateMatchingRequest:v5];
  _snapshotCache = [(PRUISPosterChannelViewController *)self _snapshotCache];
  underlyingCache = [_snapshotCache underlyingCache];
  v9 = [underlyingCache latestSnapshotBundleMatchingPredicate:v6];

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__PRUISPosterChannelViewController__latestSnapshotBundleForConfiguration___block_invoke;
  v11[3] = &unk_1E83A7500;
  objc_copyWeak(&v12, &location);
  [v9 addFailureBlock:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v9;
}

void __74__PRUISPosterChannelViewController__latestSnapshotBundleForConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = PRUISLogChannels();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __74__PRUISPosterChannelViewController__latestSnapshotBundleForConfiguration___block_invoke_cold_1();
  }
}

- (id)_fetchInitialStateSnapshotBundleForPoster:(id)poster
{
  v36 = *MEMORY[0x1E69E9840];
  posterCopy = poster;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v6 = WeakRetained, v7 = objc_loadWeakRetained(&self->_delegate), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(PRUISPosterChannelViewController *)self _waitingForLiveRenderingSceneSnapshotRequestForPosterConfiguration:posterCopy];
    v10 = [MEMORY[0x1E69C55C8] predicateMatchingRequest:v9];
    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = [v11 initialStateSnapshotDescriptorForPosterConfiguration:posterCopy];

    v13 = [v10 predicateApplyingOptions:{objc_msgSend(v12, "predicateOptions")}];

    v14 = 1;
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x1E69C55C8]);
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_activeOrientation];
    [v13 setInterfaceOrientation:v9];
    v14 = 0;
  }

  pr_posterUUID = [posterCopy pr_posterUUID];

  [v13 setPosterUUID:pr_posterUUID];
  v16 = +[PRUISPosterChannelSnapshotDefinition waitingForLiveRenderingSceneDefinition];
  uniqueIdentifier = [v16 uniqueIdentifier];
  [v13 setSnapshotDefinitionIdentifier:uniqueIdentifier];

  v18 = PRUISLogChannels();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    _logPrefix = [(PRUISPosterChannelViewController *)self _logPrefix];
    channel = self->_channel;
    v30 = 138543618;
    v31 = _logPrefix;
    v32 = 2112;
    v33 = channel;
    _os_log_impl(&dword_1CAE63000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@[_fetchInitialStateSnapshotBundleForPoster] channel: %@", &v30, 0x16u);
  }

  v21 = PRUISLogChannels();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    _logPrefix2 = [(PRUISPosterChannelViewController *)self _logPrefix];
    v23 = @"NO";
    v30 = 138543874;
    v31 = _logPrefix2;
    v32 = 2114;
    if (v14)
    {
      v23 = @"YES";
    }

    v33 = v23;
    v34 = 2114;
    v35 = v13;
    _os_log_impl(&dword_1CAE63000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@[_fetchInitialStateSnapshotBundleForPoster] fetching initial state snapshot bundle for predicate (host-provided? %{public}@): %{public}@", &v30, 0x20u);
  }

  v24 = [(PRUISPosterChannel *)self->_channel cachedSnapshotBundleSatisfyingPredicate:v13];
  _snapshotCache = PRUISLogChannels();
  v26 = os_log_type_enabled(_snapshotCache, OS_LOG_TYPE_DEFAULT);
  if (v24)
  {
    if (!v26)
    {
      goto LABEL_18;
    }

    _logPrefix3 = [(PRUISPosterChannelViewController *)self _logPrefix];
    v30 = 138543362;
    v31 = _logPrefix3;
    _os_log_impl(&dword_1CAE63000, _snapshotCache, OS_LOG_TYPE_DEFAULT, "%{public}@[_fetchInitialStateSnapshotBundleForPoster] found in-memory cache for snapshot bundle", &v30, 0xCu);
  }

  else
  {
    if (v26)
    {
      _logPrefix4 = [(PRUISPosterChannelViewController *)self _logPrefix];
      v30 = 138543362;
      v31 = _logPrefix4;
      _os_log_impl(&dword_1CAE63000, _snapshotCache, OS_LOG_TYPE_DEFAULT, "%{public}@[_fetchInitialStateSnapshotBundleForPoster] did not find in-memory cache for snapshot bundle. Checking SQLite cache.", &v30, 0xCu);
    }

    _snapshotCache = [(PRUISPosterChannelViewController *)self _snapshotCache];
    _logPrefix3 = [_snapshotCache underlyingCache];
    v24 = [_logPrefix3 latestSnapshotBundleMatchingPredicate:v13 outError:0];
  }

LABEL_18:

  return v24;
}

- (id)_fetchSnapshotBundlesFutureForPosterUUID:(id)d
{
  if (d)
  {
    v4 = MEMORY[0x1E69C55C8];
    dCopy = d;
    v6 = objc_alloc_init(v4);
    [v6 setPosterUUID:dCopy];

    _snapshotCache = [(PRUISPosterChannelViewController *)self _snapshotCache];
    underlyingCache = [_snapshotCache underlyingCache];
    v9 = [underlyingCache snapshotBundlesMatchingPredicate:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_fetchWaitingForLiveRenderingSnapshotBundlesForPoster:(id)poster
{
  v4 = MEMORY[0x1E69C55C8];
  posterCopy = poster;
  v6 = objc_alloc_init(v4);
  pr_posterUUID = [posterCopy pr_posterUUID];

  [v6 setPosterUUID:pr_posterUUID];
  v8 = +[PRUISPosterChannelSnapshotDefinition waitingForLiveRenderingSceneDefinition];
  uniqueIdentifier = [v8 uniqueIdentifier];
  [v6 setSnapshotDefinitionIdentifier:uniqueIdentifier];

  _snapshotCache = [(PRUISPosterChannelViewController *)self _snapshotCache];
  underlyingCache = [_snapshotCache underlyingCache];
  v12 = [underlyingCache snapshotBundlesMatchingPredicate:v6];

  return v12;
}

- (id)_createViewControllerForPoster:(id)poster
{
  v24 = *MEMORY[0x1E69E9840];
  posterCopy = poster;
  channel = self->_channel;
  v19 = 0;
  v6 = [(PRUISPosterChannel *)channel pooledExtensionInstanceWithError:&v19];
  v7 = v19;
  if (!v7)
  {
    initialStateWaitingForLiveRenderingSnapshotBundle = self->_initialStateWaitingForLiveRenderingSnapshotBundle;
    v11 = PRUISLogChannels();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (initialStateWaitingForLiveRenderingSnapshotBundle)
    {
      if (v12)
      {
        _logPrefix = [(PRUISPosterChannelViewController *)self _logPrefix];
        v14 = self->_initialStateWaitingForLiveRenderingSnapshotBundle;
        *buf = 138543618;
        v21 = _logPrefix;
        v22 = 2114;
        v23 = v14;
        v15 = "%{public}@ initializing rendering view controller with snapshotBundle: %{public}@";
        v16 = v11;
        v17 = 22;
LABEL_10:
        _os_log_impl(&dword_1CAE63000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }
    }

    else if (v12)
    {
      _logPrefix = [(PRUISPosterChannelViewController *)self _logPrefix];
      *buf = 138543362;
      v21 = _logPrefix;
      v15 = "%{public}@ initializing rendering view controller with nil snapshotBundle";
      v16 = v11;
      v17 = 12;
      goto LABEL_10;
    }

    v8 = [PRUISPosterSnapshotBundle snapshotBundleWithPUIPosterSnapshotBundle:self->_initialStateWaitingForLiveRenderingSnapshotBundle];
    v9 = [[PRUISPosterRenderingViewController alloc] initWithPosterContents:posterCopy context:self->_renderingContext boundingShape:-1 extensionInstance:v6 snapshotController:self->_snapshotController initialSnapshotBundle:v8 renderingMode:self->_renderingMode];
    [(PRUISPosterRenderingViewController *)v9 setShowsContentWhenReady:1];
    [(PRUISPosterRenderingViewController *)v9 setSalientContentRectangle:self->_salientContentRectangle.origin.x, self->_salientContentRectangle.origin.y, self->_salientContentRectangle.size.width, self->_salientContentRectangle.size.height];
    [(PRUISPosterRenderingViewController *)v9 setContentOcclusionRectangles:self->_contentOcclusionRectangles];
    [(PRUISPosterRenderingViewController *)v9 setViewBackgroundColor:self->_viewBackgroundColor];
    [(PRUISPosterRenderingViewController *)v9 setSceneViewBackgroundColor:self->_sceneViewBackgroundColor];
    goto LABEL_12;
  }

  v8 = PRUISLogChannels();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [PRUISPosterChannelViewController _createViewControllerForPoster:];
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (void)_addViewController:(id)controller
{
  v15 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  childViewControllers = [(PRUISPosterChannelViewController *)self childViewControllers];
  v6 = [childViewControllers containsObject:controllerCopy];

  view = PRUISLogChannels();
  v8 = os_log_type_enabled(view, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      _logPrefix = [(PRUISPosterChannelViewController *)self _logPrefix];
      v11 = 138543618;
      v12 = _logPrefix;
      v13 = 2114;
      v14 = controllerCopy;
      _os_log_impl(&dword_1CAE63000, view, OS_LOG_TYPE_DEFAULT, "%{public}@ view controller is already a child of self: %{public}@", &v11, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      _logPrefix2 = [(PRUISPosterChannelViewController *)self _logPrefix];
      v11 = 138543618;
      v12 = _logPrefix2;
      v13 = 2114;
      v14 = controllerCopy;
      _os_log_impl(&dword_1CAE63000, view, OS_LOG_TYPE_DEFAULT, "%{public}@ adding new view controller: %{public}@", &v11, 0x16u);
    }

    [(PRUISPosterChannelViewController *)self bs_addChildViewController:controllerCopy];
    view = [(PRUISPosterChannelViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)_teardownPosterViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    v5 = self->_channel;
    _logPrefix = [(PRUISPosterChannelViewController *)self _logPrefix];
    scene = [controllerCopy scene];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__PRUISPosterChannelViewController__teardownPosterViewController___block_invoke;
    v11[3] = &unk_1E83A8788;
    v8 = controllerCopy;
    v12 = v8;
    v13 = _logPrefix;
    v14 = v5;
    v9 = v5;
    v10 = _logPrefix;
    [scene pui_invalidateWithCompletion:v11];

    [(PRUISPosterChannelViewController *)self bs_removeChildViewController:v8];
  }
}

void __66__PRUISPosterChannelViewController__teardownPosterViewController___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) extensionInstance];
  v3 = PRUISLogChannels();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v2;
    _os_log_impl(&dword_1CAE63000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ relinquishing extension instance: %{public}@", &v7, 0x16u);
  }

  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) extensionInstance];
  [v5 relinquishPooledExtensionInstance:v6];
}

- (id)_logPrefix
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p> [%@]", v5, self, self->_purpose];

  return v6;
}

- (CGRect)salientContentRectangle
{
  x = self->_salientContentRectangle.origin.x;
  y = self->_salientContentRectangle.origin.y;
  width = self->_salientContentRectangle.size.width;
  height = self->_salientContentRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PRUISPosterChannelViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithChannel:(uint64_t)a1 purpose:(uint64_t)a2 context:delegate:initialRenderingOptions:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRUISPosterChannelViewController.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"channel"}];
}

- (void)initWithChannel:(uint64_t)a1 purpose:(uint64_t)a2 context:delegate:initialRenderingOptions:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRUISPosterChannelViewController.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"purpose"}];
}

- (void)initWithChannel:(uint64_t)a1 purpose:(uint64_t)a2 context:delegate:initialRenderingOptions:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRUISPosterChannelViewController.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"context"}];
}

- (void)addEvent:outError:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = [v0 _logPrefix];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)userTapEventOccurredWithLocation:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 _logPrefix];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)addTransition:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 _logPrefix];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __71__PRUISPosterChannelViewController__snapshotCurrentPosterConfiguration__block_invoke_103_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  [v1 _logPrefix];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4_0() localizedDescription];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_waitingForLiveRenderingSceneSnapshotRequestForPosterConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  [v1 _logPrefix];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4_0() localizedDescription];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __74__PRUISPosterChannelViewController__latestSnapshotBundleForConfiguration___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  [v1 _logPrefix];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4_0() localizedDescription];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_createViewControllerForPoster:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  [v1 _logPrefix];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4_0() localizedDescription];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

@end
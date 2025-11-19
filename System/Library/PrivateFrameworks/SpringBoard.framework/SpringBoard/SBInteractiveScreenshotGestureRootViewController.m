@interface SBInteractiveScreenshotGestureRootViewController
- (CATransform3D)_anchoredTransformForAnchorPoint:(SEL)a3 bounds:(CGPoint)a4 center:(CGRect)a5 transform:(CGPoint)a6;
- (CATransform3D)_contentTransformForCommitProgress:(SEL)a3 contentInsets:(double)a4 additionalContentTranslation:(UIEdgeInsets)a5;
- (CATransform3D)_inverseContentTransformForCommitProgress:(SEL)a3 contentInsets:(double)a4 additionalContentTranslation:(UIEdgeInsets)a5;
- (CGPoint)_contentScaleForCommitProgress:(double)a3 contentInsets:(UIEdgeInsets)a4 additionalContentTranslation:(CGPoint)a5;
- (SBInteractiveScreenshotGestureRootViewController)initWithWindowScene:(id)a3;
- (SBInteractiveScreenshotGestureRootViewControllerDelegate)delegate;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (double)_gestureCommitProgressUpdateVelocityOverTimeInterval:(double)a3;
- (id)_createFlashViewWithFrame:(CGRect)a3;
- (id)_createScreenshotImageViewWithFrame:(CGRect)a3;
- (int64_t)gestureStyle;
- (unint64_t)flashViewLayerRenderID;
- (unsigned)flashViewLayerContextID;
- (void)_addGestureUpdateWithCommitProgress:(double)a3 timestamp:(double)a4;
- (void)_cancellationCommitProgressAnimatablePropertyPresentationValueDidChange;
- (void)_getContentTranslation:(CGPoint *)a3 scale:(CGPoint *)a4 forCommitProgress:(double)a5 contentInsets:(UIEdgeInsets)a6 additionalContentTranslation:(CGPoint)a7;
- (void)_getDistanceTraveled:(double *)a3 fullDistance:(double *)a4 commitProgress:(double *)a5 forTranslationFromCorner:(CGPoint)a6 bounds:(CGRect)a7;
- (void)_prepareViewHierarchyForCommittedScreenshot:(BOOL)a3 gestureStyle:(int64_t)a4;
- (void)_updateContentTransformUsingPresentationValues:(BOOL)a3;
- (void)_updateCropLinesMultiPartAnimationForCropsProgress;
- (void)_updateWithUpdateMode:(int64_t)a3 commitProgress:(double)a4 additionalContentTranslation:(CGPoint)a5 completion:(id)a6;
- (void)_updateWithUpdateMode:(int64_t)a3 contentAnimationSettings:(id)a4 commitProgress:(double)a5 additionalContentTranslation:(CGPoint)a6 completion:(id)a7;
- (void)cancelInteractionWithStyle:(int64_t)a3 settlingCompletionHandler:(id)a4;
- (void)captureScreenshotWithInterfaceOrientation:(int64_t)a3 completion:(id)a4;
- (void)commitInteractionWithScreenshotImage:(id)a3 screenshotInterfaceOrientation:(int64_t)a4 settlingCompletionHandler:(id)a5 flashCompletionHandler:(id)a6;
- (void)handlePanGestureRecognizerAction:(id)a3;
- (void)invalidate;
- (void)removePlaceholderChrome;
- (void)setGestureStyle:(int64_t)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SBInteractiveScreenshotGestureRootViewController

- (SBInteractiveScreenshotGestureRootViewController)initWithWindowScene:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SBInteractiveScreenshotGestureRootViewController;
  v5 = [(SBInteractiveScreenshotGestureRootViewController *)&v19 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.SpringBoard.SBInteractiveScreenshotGestureRootViewController.accessQueue", 0);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v6;

    v8 = [MEMORY[0x277D0AAD8] sharedInstance];
    v9 = [v4 _FBSScene];
    v10 = [v9 identityToken];
    v11 = [v8 sceneFromIdentityToken:v10];
    sourceScene = v5->_sourceScene;
    v5->_sourceScene = v11;

    v13 = +[SBInteractiveScreenshotDomain rootSettings];
    settings = v5->_settings;
    v5->_settings = v13;

    v15 = [(SBInteractiveScreenshotSettings *)v5->_settings cropsAnimationSettings];
    v16 = [v15 copy];
    trackingCropsAnimationSettings = v5->_trackingCropsAnimationSettings;
    v5->_trackingCropsAnimationSettings = v16;
  }

  return v5;
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = SBInteractiveScreenshotGestureRootViewController;
  [(SBInteractiveScreenshotGestureRootViewController *)&v2 viewDidLayoutSubviews];
}

- (void)viewDidLoad
{
  v93[4] = *MEMORY[0x277D85DE8];
  v91.receiver = self;
  v91.super_class = SBInteractiveScreenshotGestureRootViewController;
  [(SBInteractiveScreenshotGestureRootViewController *)&v91 viewDidLoad];
  v3 = [(SBInteractiveScreenshotGestureRootViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v12];

  v13 = objc_alloc_init(MEMORY[0x277D4BE28]);
  chromePlaceholderViewController = self->_chromePlaceholderViewController;
  self->_chromePlaceholderViewController = v13;

  v80 = [(FBScene *)self->_sourceScene identifier];
  v82 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBInteractiveGestureContent-%@", v80];
  v15 = [[_SBInteractiveScreenshotGestureBackdropView alloc] initWithFrame:v5, v7, v9, v11];
  contentCapturingView = self->_contentCapturingView;
  self->_contentCapturingView = v15;

  [(_SBInteractiveScreenshotGestureBackdropView *)self->_contentCapturingView bs_setHitTestingDisabled:1];
  v83 = [(_SBInteractiveScreenshotGestureBackdropView *)self->_contentCapturingView backdropLayer];
  [v83 setGroupName:v82];
  [v83 setCaptureOnly:1];
  [v3 addSubview:self->_contentCapturingView];
  v17 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:1 transformOptions:0];
  wallpaperEffectView = self->_wallpaperEffectView;
  self->_wallpaperEffectView = v17;

  [(PBUIWallpaperEffectViewBase *)self->_wallpaperEffectView setStyle:0];
  [(SBWallpaperEffectView *)self->_wallpaperEffectView bs_setHitTestingDisabled:1];
  [(PBUIWallpaperEffectViewBase *)self->_wallpaperEffectView setForcesOpaque:1];
  [(PBUIWallpaperEffectViewBase *)self->_wallpaperEffectView setFullscreen:1];
  [v3 addSubview:self->_wallpaperEffectView];
  v19 = [(SSChromePlaceholderViewController *)self->_chromePlaceholderViewController backgroundBlurEffectStyle];
  v20 = objc_alloc_init(MEMORY[0x277D75D68]);
  materialView = self->_materialView;
  self->_materialView = v20;

  v22 = self->_materialView;
  v23 = [MEMORY[0x277D75210] effectWithStyle:v19];
  [(UIVisualEffectView *)v22 setEffect:v23];

  [(UIVisualEffectView *)self->_materialView bs_setHitTestingDisabled:1];
  [v3 addSubview:self->_materialView];
  v24 = [objc_alloc(MEMORY[0x277CF0D78]) initWithFrame:{v5, v7, v9, v11}];
  chromePlaceholderOrientationWrapperView = self->_chromePlaceholderOrientationWrapperView;
  self->_chromePlaceholderOrientationWrapperView = v24;

  [(BSUIOrientationTransformWrapperView *)self->_chromePlaceholderOrientationWrapperView setContainerOrientation:1];
  [v3 addSubview:self->_chromePlaceholderOrientationWrapperView];
  [(SBInteractiveScreenshotGestureRootViewController *)self addChildViewController:self->_chromePlaceholderViewController];
  [(SSChromePlaceholderViewController *)self->_chromePlaceholderViewController beginAppearanceTransition:1 animated:0];
  v81 = [(SSChromePlaceholderViewController *)self->_chromePlaceholderViewController view];
  [v81 sb_setBoundsAndPositionFromFrame:{v5, v7, v9, v11}];
  [(BSUIOrientationTransformWrapperView *)self->_chromePlaceholderOrientationWrapperView addContentView:v81];
  [(SSChromePlaceholderViewController *)self->_chromePlaceholderViewController endAppearanceTransition];
  [(SSChromePlaceholderViewController *)self->_chromePlaceholderViewController didMoveToParentViewController:self];
  if ([(SSChromePlaceholderViewController *)self->_chromePlaceholderViewController _preferredStatusBarVisibility]== 2)
  {
    v26 = [SBApp windowSceneManager];
    v27 = [(FBScene *)self->_sourceScene settings];
    v28 = [v27 displayConfiguration];
    v29 = [v28 identity];
    v30 = [v26 windowSceneForDisplayIdentity:v29];

    v31 = [v30 statusBarManager];
    v32 = [v31 reusePool];
    v33 = [(SBInteractiveScreenshotGestureRootViewController *)self description];
    v34 = [v32 getReusableStatusBarWithReason:v33 withFrame:{v5, v7, v9, v11}];
    chromePlaceholderStatusBar = self->_chromePlaceholderStatusBar;
    self->_chromePlaceholderStatusBar = v34;

    v36 = [(SSChromePlaceholderViewController *)self->_chromePlaceholderViewController preferredStatusBarStyle];
    v37 = [objc_alloc(MEMORY[0x277D6BFE8]) initWithResolvedStyle:_SBStatusBarStyleFromLegacyStyle(v36) foregroundColor:0];
    [(UIStatusBar *)self->_chromePlaceholderStatusBar setStyleRequest:v37 animationParameters:0];
    [(BSUIOrientationTransformWrapperView *)self->_chromePlaceholderOrientationWrapperView addContentView:self->_chromePlaceholderStatusBar];
  }

  v38 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v7, v9, v11}];
  topContentContainerView = self->_topContentContainerView;
  self->_topContentContainerView = v38;

  [(UIView *)self->_topContentContainerView setClipsToBounds:1];
  v40 = [(UIView *)self->_topContentContainerView layer];
  v41 = *MEMORY[0x277CDA138];
  [v40 setCornerCurve:*MEMORY[0x277CDA138]];

  [v3 addSubview:self->_topContentContainerView];
  v42 = [_SBInteractiveScreenshotGestureReplicatorView alloc];
  [(UIView *)self->_topContentContainerView bounds];
  v43 = [(_SBInteractiveScreenshotGestureReplicatorView *)v42 initWithFrame:?];
  replicatorView = self->_replicatorView;
  self->_replicatorView = v43;

  [(_SBInteractiveScreenshotGestureReplicatorView *)self->_replicatorView bs_setHitTestingDisabled:1];
  v79 = [(_SBInteractiveScreenshotGestureReplicatorView *)self->_replicatorView replicatorLayer];
  [v79 setInstanceCount:2];
  [(UIView *)self->_topContentContainerView addSubview:self->_replicatorView];
  v45 = [_SBInteractiveScreenshotGestureBackdropView alloc];
  [(_SBInteractiveScreenshotGestureReplicatorView *)self->_replicatorView bounds];
  v46 = [(_SBInteractiveScreenshotGestureBackdropView *)v45 initWithFrame:?];
  contentBackdropView = self->_contentBackdropView;
  self->_contentBackdropView = v46;

  [(_SBInteractiveScreenshotGestureBackdropView *)self->_contentBackdropView bs_setHitTestingDisabled:1];
  v48 = [(_SBInteractiveScreenshotGestureBackdropView *)self->_contentBackdropView backdropLayer];
  [v48 setGroupName:v82];
  [(_SBInteractiveScreenshotGestureReplicatorView *)self->_replicatorView addSubview:self->_contentBackdropView];
  v49 = [(SBInteractiveScreenshotGestureRootViewController *)self _createFlashViewWithFrame:v5, v7, v9, v11];
  flashView = self->_flashView;
  self->_flashView = v49;

  [(SSFlashView *)self->_flashView setHidden:1];
  v51 = [(SSFlashView *)self->_flashView layer];
  [v51 setCornerCurve:v41];

  [v3 addSubview:self->_flashView];
  _UISolariumEnabled();
  v52 = [objc_alloc(objc_opt_class()) initWithFrame:{v5, v7, v9, v11}];
  cropsView = self->_cropsView;
  self->_cropsView = v52;

  [(SBInteractiveScreenshotGestureCropsView *)self->_cropsView bs_setHitTestingDisabled:1];
  v54 = self->_cropsView;
  v55 = [(SSChromePlaceholderViewController *)self->_chromePlaceholderViewController cropsCornerColor];
  [(SBInteractiveScreenshotGestureCropsView *)v54 setCornerColor:v55];

  v56 = self->_cropsView;
  v57 = [(SSChromePlaceholderViewController *)self->_chromePlaceholderViewController cropsCornerColor];
  [(SBInteractiveScreenshotGestureCropsView *)v56 setLineColor:v57];

  [(SBInteractiveScreenshotGestureCropsView *)self->_cropsView setLineWidth:1.0];
  v58 = self->_cropsView;
  v59 = [(SSChromePlaceholderViewController *)self->_chromePlaceholderViewController cropsCornerColor];
  [(SBInteractiveScreenshotGestureCropsView *)v58 setLineGrabberColor:v59];

  v60 = self->_cropsView;
  [(SSChromePlaceholderViewController *)self->_chromePlaceholderViewController cropsCornerLineWidth];
  [(SBInteractiveScreenshotGestureCropsView *)v60 setGrabberLineWidth:?];
  v61 = self->_cropsView;
  [(SSChromePlaceholderViewController *)self->_chromePlaceholderViewController cropsCornerEdgeLength];
  [(SBInteractiveScreenshotGestureCropsView *)v61 setCornerEdgeLength:?];
  v62 = self->_cropsView;
  [(SSChromePlaceholderViewController *)self->_chromePlaceholderViewController cropsCornerEdgeLength];
  [(SBInteractiveScreenshotGestureCropsView *)v62 setLineGrabberEdgeLength:?];
  [(SBInteractiveScreenshotGestureCropsView *)self->_cropsView setCornerAlpha:0.0];
  [v3 addSubview:self->_cropsView];
  v63 = objc_alloc_init(MEMORY[0x277D75D38]);
  transformProgressAnimatableProperty = self->_transformProgressAnimatableProperty;
  self->_transformProgressAnimatableProperty = v63;

  [(UIViewFloatAnimatableProperty *)self->_transformProgressAnimatableProperty setValue:0.0];
  v65 = objc_alloc_init(MEMORY[0x277D75D38]);
  translationXAnimatableProperty = self->_translationXAnimatableProperty;
  self->_translationXAnimatableProperty = v65;

  [(UIViewFloatAnimatableProperty *)self->_translationXAnimatableProperty setValue:0.0];
  v67 = objc_alloc_init(MEMORY[0x277D75D38]);
  translationYAnimatableProperty = self->_translationYAnimatableProperty;
  self->_translationYAnimatableProperty = v67;

  [(UIViewFloatAnimatableProperty *)self->_translationYAnimatableProperty setValue:0.0];
  v69 = objc_alloc_init(MEMORY[0x277D75D38]);
  cropsProgressSeparatedValuesAnimatableProperty = self->_cropsProgressSeparatedValuesAnimatableProperty;
  self->_cropsProgressSeparatedValuesAnimatableProperty = v69;

  [(UIViewFloatAnimatableProperty *)self->_cropsProgressSeparatedValuesAnimatableProperty setValue:0.0];
  v71 = objc_alloc_init(MEMORY[0x277D75D38]);
  cropsProgressPresentationValueAnimatableProperty = self->_cropsProgressPresentationValueAnimatableProperty;
  self->_cropsProgressPresentationValueAnimatableProperty = v71;

  [(UIViewFloatAnimatableProperty *)self->_cropsProgressPresentationValueAnimatableProperty setValue:0.0];
  objc_initWeak(&location, self);
  v73 = MEMORY[0x277D75D18];
  v74 = self->_transformProgressAnimatableProperty;
  v93[0] = self->_cropsProgressSeparatedValuesAnimatableProperty;
  v93[1] = v74;
  v75 = self->_translationYAnimatableProperty;
  v93[2] = self->_translationXAnimatableProperty;
  v93[3] = v75;
  v76 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:4];
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __63__SBInteractiveScreenshotGestureRootViewController_viewDidLoad__block_invoke;
  v88[3] = &unk_2783A8C68;
  objc_copyWeak(&v89, &location);
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __63__SBInteractiveScreenshotGestureRootViewController_viewDidLoad__block_invoke_2;
  v86[3] = &unk_2783A8C68;
  objc_copyWeak(&v87, &location);
  [v73 _createTransformerWithInputAnimatableProperties:v76 modelValueSetter:v88 presentationValueSetter:v86];

  v77 = MEMORY[0x277D75D18];
  v92 = self->_cropsProgressPresentationValueAnimatableProperty;
  v78 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __63__SBInteractiveScreenshotGestureRootViewController_viewDidLoad__block_invoke_3;
  v84[3] = &unk_2783A8C68;
  objc_copyWeak(&v85, &location);
  [v77 _createTransformerWithInputAnimatableProperties:v78 presentationValueChangedCallback:v84];

  objc_destroyWeak(&v85);
  objc_destroyWeak(&v87);
  objc_destroyWeak(&v89);
  objc_destroyWeak(&location);
}

void __63__SBInteractiveScreenshotGestureRootViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateContentTransformUsingPresentationValues:0];
}

void __63__SBInteractiveScreenshotGestureRootViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateContentTransformUsingPresentationValues:1];
}

void __63__SBInteractiveScreenshotGestureRootViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCropLinesMultiPartAnimationForCropsProgress];
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  if (self->_chromePlaceholderViewController == a3)
  {
    v14 = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
    [(UIStatusBar *)self->_chromePlaceholderStatusBar currentHeight];
    v15 = [v14 sb_displayEdgeInfoWithSafeAreaInsetsForStatusBarHeight:?];

    v16 = [(BSUIOrientationTransformWrapperView *)self->_chromePlaceholderOrientationWrapperView contentOrientation];
    v17 = [(SBInteractiveScreenshotGestureRootViewController *)self traitCollection];
    [v15 sb_orientedEdgeInsetsForInterfaceOrientation:v16 traitCollection:v17];
    v7 = v18;
    v9 = v19;
    v11 = v20;
    v13 = v21;

    if (a4)
    {
      *a4 = 1;
    }
  }

  else
  {
    v26.receiver = self;
    v26.super_class = SBInteractiveScreenshotGestureRootViewController;
    [SBInteractiveScreenshotGestureRootViewController _edgeInsetsForChildViewController:sel__edgeInsetsForChildViewController_insetsAreAbsolute_ insetsAreAbsolute:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  v22 = v7;
  v23 = v9;
  v24 = v11;
  v25 = v13;
  result.right = v25;
  result.bottom = v24;
  result.left = v23;
  result.top = v22;
  return result;
}

- (void)invalidate
{
  self->_hasCrossedCommitThreshold = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SBInteractiveScreenshotGestureRootViewController_invalidate__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_sync(accessQueue, block);
  [(UIScenePresenter *)self->_sourceScenePresenter invalidate];
  sourceScenePresenter = self->_sourceScenePresenter;
  self->_sourceScenePresenter = 0;

  [(UIViewFloatAnimatableProperty *)self->_transformProgressAnimatableProperty invalidate];
  transformProgressAnimatableProperty = self->_transformProgressAnimatableProperty;
  self->_transformProgressAnimatableProperty = 0;

  [(UIViewFloatAnimatableProperty *)self->_translationXAnimatableProperty invalidate];
  translationXAnimatableProperty = self->_translationXAnimatableProperty;
  self->_translationXAnimatableProperty = 0;

  [(UIViewFloatAnimatableProperty *)self->_translationYAnimatableProperty invalidate];
  translationYAnimatableProperty = self->_translationYAnimatableProperty;
  self->_translationYAnimatableProperty = 0;

  [(UIViewFloatAnimatableProperty *)self->_cropsProgressSeparatedValuesAnimatableProperty invalidate];
  cropsProgressSeparatedValuesAnimatableProperty = self->_cropsProgressSeparatedValuesAnimatableProperty;
  self->_cropsProgressSeparatedValuesAnimatableProperty = 0;

  [(UIViewFloatAnimatableProperty *)self->_cropsProgressPresentationValueAnimatableProperty invalidate];
  cropsProgressPresentationValueAnimatableProperty = self->_cropsProgressPresentationValueAnimatableProperty;
  self->_cropsProgressPresentationValueAnimatableProperty = 0;

  [(UIViewFloatAnimatableProperty *)self->_cancellationCommitProgressAnimatableProperty invalidate];
  cancellationCommitProgressAnimatableProperty = self->_cancellationCommitProgressAnimatableProperty;
  self->_cancellationCommitProgressAnimatableProperty = 0;

  if (self->_chromePlaceholderStatusBar)
  {
    v11 = [(UIViewController *)self _sbWindowScene];
    v12 = [v11 statusBarManager];
    v13 = [v12 reusePool];
    [v13 recycleStatusBar:self->_chromePlaceholderStatusBar];

    chromePlaceholderStatusBar = self->_chromePlaceholderStatusBar;
    self->_chromePlaceholderStatusBar = 0;
  }
}

- (unsigned)flashViewLayerContextID
{
  v2 = [(SSFlashView *)self->_flashView layer];
  v3 = [v2 context];
  v4 = [v3 contextId];

  return v4;
}

- (unint64_t)flashViewLayerRenderID
{
  v2 = [(SSFlashView *)self->_flashView layer];
  RenderId = CALayerGetRenderId();

  return RenderId;
}

- (int64_t)gestureStyle
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__SBInteractiveScreenshotGestureRootViewController_gestureStyle__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setGestureStyle:(int64_t)a3
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__SBInteractiveScreenshotGestureRootViewController_setGestureStyle___block_invoke;
  v4[3] = &unk_2783A8BC8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(accessQueue, v4);
}

- (void)cancelInteractionWithStyle:(int64_t)a3 settlingCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = [(SBInteractiveScreenshotSettings *)self->_settings contentAnimationSettings];
  if (!a3)
  {
    v8 = [(SBInteractiveScreenshotSettings *)self->_settings disabledGestureContentAnimationSettings];

    [(SBInteractiveScreenshotGestureRootViewController *)self _currentCommitProgressVelocity];
    v10 = v9;
    [(SBInteractiveScreenshotSettings *)self->_settings disabledGestureVelocityScale];
    [(SBInteractiveScreenshotGestureRootViewController *)self _injectCommitProgressVelocity:v10 * v11];
    v7 = v8;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  accessQueue = self->_accessQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __105__SBInteractiveScreenshotGestureRootViewController_cancelInteractionWithStyle_settlingCompletionHandler___block_invoke;
  v14[3] = &unk_2783A8CE0;
  v14[4] = self;
  v14[5] = &v15;
  dispatch_sync(accessQueue, v14);
  if ([(SBInteractiveScreenshotGestureRootViewController *)self _isGestureStyleReducedMotion:v16[3]])
  {
    v13 = 4;
  }

  else
  {
    v13 = 3;
  }

  [(SBInteractiveScreenshotGestureRootViewController *)self _updateWithUpdateMode:v13 contentAnimationSettings:v7 commitProgress:v6 additionalContentTranslation:0.0 completion:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  _Block_object_dispose(&v15, 8);
}

- (void)captureScreenshotWithInterfaceOrientation:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  [(SBInteractiveScreenshotGestureRootViewController *)self loadViewIfNeeded];
  sourceScenePresentationView = self->_sourceScenePresentationView;
  if (sourceScenePresentationView)
  {
    v8 = [(UIScenePresentation *)sourceScenePresentationView layer];
    v9 = [v8 hasBeenCommitted];

    if (v9)
    {
      ImageFromInterfaceOrientedView = SBInteractiveScreenshotCreateImageFromInterfaceOrientedView(self->_sourceScenePresentationView, a3);
      v6[2](v6, ImageFromInterfaceOrientedView);
    }

    else
    {
      v11 = *MEMORY[0x277D76620];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __105__SBInteractiveScreenshotGestureRootViewController_captureScreenshotWithInterfaceOrientation_completion___block_invoke;
      v12[3] = &unk_2783B8140;
      v12[4] = self;
      v13 = v6;
      v14 = a3;
      [v11 sb_performBlockAfterCATransactionSynchronizedCommit:v12];
    }
  }

  else
  {
    v6[2](v6, 0);
  }
}

void __105__SBInteractiveScreenshotGestureRootViewController_captureScreenshotWithInterfaceOrientation_completion___block_invoke(void *a1)
{
  v1 = a1[5];
  ImageFromInterfaceOrientedView = SBInteractiveScreenshotCreateImageFromInterfaceOrientedView(*(a1[4] + 1192), a1[6]);
  (*(v1 + 16))(v1, ImageFromInterfaceOrientedView);
}

- (void)commitInteractionWithScreenshotImage:(id)a3 screenshotInterfaceOrientation:(int64_t)a4 settlingCompletionHandler:(id)a5 flashCompletionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  accessQueue = self->_accessQueue;
  v53 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __169__SBInteractiveScreenshotGestureRootViewController_commitInteractionWithScreenshotImage_screenshotInterfaceOrientation_settlingCompletionHandler_flashCompletionHandler___block_invoke;
  block[3] = &unk_2783B8168;
  block[4] = self;
  block[5] = &v54;
  block[6] = &v50;
  dispatch_sync(accessQueue, block);
  if ((v55[3] & 1) == 0)
  {
    [(SBInteractiveScreenshotGestureRootViewController *)self _prepareViewHierarchyForCommittedScreenshot:1 gestureStyle:v51[3]];
  }

  [(UIImageView *)self->_screenshotImageView setImage:v10];
  queue_displayScale = self->_queue_displayScale;
  [(UIImageView *)self->_screenshotImageView sizeThatFits:1.79769313e308, 1.79769313e308];
  [(UIView *)self->_screenshotContainerView bounds];
  UIRectCenteredIntegralRectScale();
  [(UIImageView *)self->_screenshotImageView sb_setBoundsAndPositionFromFrame:*&queue_displayScale];
  switch(a4)
  {
    case 1:
      v15 = 0.0;
      break;
    case 3:
      v15 = 1.57079633;
      break;
    case 4:
      v15 = -1.57079633;
      break;
    default:
      v15 = 3.14159265;
      if (a4 != 2)
      {
        v15 = 0.0;
      }

      break;
  }

  screenshotImageView = self->_screenshotImageView;
  CATransform3DMakeRotation(&v48, v15, 0.0, 0.0, 1.0);
  [(UIImageView *)screenshotImageView setTransform3D:&v48];
  if ([(SBInteractiveScreenshotGestureRootViewController *)self _isGestureStyleReducedMotion:v51[3]])
  {
    if (v12)
    {
      (*(v12 + 2))(v12, 0, 0);
    }

    v17 = [MEMORY[0x277CDA000] animation];
    v18 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7A8]];
    [v17 setTimingFunction:v18];

    [v17 setType:*MEMORY[0x277CDA928]];
    [v17 setDuration:0.3];
    v19 = objc_alloc_init(SBCAAnimationBlockDelegate);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __169__SBInteractiveScreenshotGestureRootViewController_commitInteractionWithScreenshotImage_screenshotInterfaceOrientation_settlingCompletionHandler_flashCompletionHandler___block_invoke_8;
    v36[3] = &unk_2783B81E0;
    v37 = v11;
    [(SBCAAnimationBlockDelegate *)v19 setAnimationDidStopHandler:v36];
    [v17 setDelegate:v19];
    v20 = [(SBInteractiveScreenshotGestureRootViewController *)self view];
    v21 = [v20 layer];
    [v21 addAnimation:v17 forKey:@"crossFade"];

    [(SBInteractiveScreenshotGestureCropsView *)self->_cropsView setLineAlpha:1.0];
    [(SBInteractiveScreenshotGestureCropsView *)self->_cropsView setLineGrabberAlpha:1.0];
    [(SBInteractiveScreenshotGestureRootViewController *)self _updateWithUpdateMode:4 commitProgress:0 additionalContentTranslation:1.0 completion:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  }

  else
  {
    if ([(SBInteractiveScreenshotSettings *)self->_settings shouldInjectVelocity])
    {
      [(SBInteractiveScreenshotGestureRootViewController *)self _gestureCommitProgressUpdateVelocityOverTimeInterval:0.0416666667];
      v23 = v22;
      [(SBInteractiveScreenshotSettings *)self->_settings maximumInjectedVelocity];
      if (v23 < v24)
      {
        v24 = v23;
      }

      [(SBInteractiveScreenshotGestureRootViewController *)self _injectCommitProgressVelocity:v24];
    }

    v25 = [SBInteractiveScreenshotGestureMultiPartAnimation alloc];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __169__SBInteractiveScreenshotGestureRootViewController_commitInteractionWithScreenshotImage_screenshotInterfaceOrientation_settlingCompletionHandler_flashCompletionHandler___block_invoke_2;
    v46[3] = &unk_2783B8190;
    v47 = v11;
    v26 = [(SBInteractiveScreenshotGestureMultiPartAnimation *)v25 initWithCompletionHandler:v46];
    [(SBInteractiveScreenshotGestureMultiPartAnimation *)v26 beginAnimationWithIdentifier:@"cropLinesMultiPartAnimation"];
    [(SBInteractiveScreenshotGestureMultiPartAnimation *)v26 beginAnimationWithIdentifier:@"mainUpdate"];
    objc_initWeak(&v48, self);
    v27 = [SBInteractiveScreenshotGestureMultiPartAnimation alloc];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __169__SBInteractiveScreenshotGestureRootViewController_commitInteractionWithScreenshotImage_screenshotInterfaceOrientation_settlingCompletionHandler_flashCompletionHandler___block_invoke_3;
    v43[3] = &unk_2783B81B8;
    objc_copyWeak(&v45, &v48);
    v28 = v26;
    v44 = v28;
    v29 = [(SBInteractiveScreenshotGestureMultiPartAnimation *)v27 initWithCompletionHandler:v43];
    [(SBInteractiveScreenshotGestureMultiPartAnimation *)v29 beginAnimationWithIdentifier:@"cropsProgressThreshold"];
    cropLinesAlphaMultiPartAnimations = self->_cropLinesAlphaMultiPartAnimations;
    if (!cropLinesAlphaMultiPartAnimations)
    {
      v31 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      v32 = self->_cropLinesAlphaMultiPartAnimations;
      self->_cropLinesAlphaMultiPartAnimations = v31;

      cropLinesAlphaMultiPartAnimations = self->_cropLinesAlphaMultiPartAnimations;
    }

    [(NSMutableArray *)cropLinesAlphaMultiPartAnimations addObject:v29];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __169__SBInteractiveScreenshotGestureRootViewController_commitInteractionWithScreenshotImage_screenshotInterfaceOrientation_settlingCompletionHandler_flashCompletionHandler___block_invoke_6;
    v40[3] = &unk_2783B5CD8;
    v33 = v28;
    v41 = v33;
    v34 = v29;
    v42 = v34;
    [(SBInteractiveScreenshotGestureRootViewController *)self _updateWithUpdateMode:3 commitProgress:v40 additionalContentTranslation:1.0 completion:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    [(SBInteractiveScreenshotGestureRootViewController *)self _updateCropLinesMultiPartAnimationForCropsProgress];
    flashView = self->_flashView;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __169__SBInteractiveScreenshotGestureRootViewController_commitInteractionWithScreenshotImage_screenshotInterfaceOrientation_settlingCompletionHandler_flashCompletionHandler___block_invoke_7;
    v38[3] = &unk_2783A9348;
    v39 = v12;
    [(SSFlashView *)flashView flashWithCompletion:v38];

    objc_destroyWeak(&v45);
    objc_destroyWeak(&v48);

    v17 = v47;
  }

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);
}

void *__169__SBInteractiveScreenshotGestureRootViewController_commitInteractionWithScreenshotImage_screenshotInterfaceOrientation_settlingCompletionHandler_flashCompletionHandler___block_invoke(void *result)
{
  *(*(result[5] + 8) + 24) = *(result[4] + 1296);
  *(result[4] + 1296) = 1;
  *(*(result[6] + 8) + 24) = *(result[4] + 1280);
  return result;
}

uint64_t __169__SBInteractiveScreenshotGestureRootViewController_commitInteractionWithScreenshotImage_screenshotInterfaceOrientation_settlingCompletionHandler_flashCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3, a4);
  }

  return result;
}

void __169__SBInteractiveScreenshotGestureRootViewController_commitInteractionWithScreenshotImage_screenshotInterfaceOrientation_settlingCompletionHandler_flashCompletionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_4;
  }

  [WeakRetained[137] removeObject:v7];
  if (![v9[137] count])
  {
    v10 = v9[137];
    v9[137] = 0;

    if (a4)
    {
      goto LABEL_4;
    }

LABEL_6:
    v11 = MEMORY[0x277D75D18];
    v12 = [v9[147] cropLinesAlphaAnimationSettings];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __169__SBInteractiveScreenshotGestureRootViewController_commitInteractionWithScreenshotImage_screenshotInterfaceOrientation_settlingCompletionHandler_flashCompletionHandler___block_invoke_4;
    v15[3] = &unk_2783A8C18;
    v16 = v9;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __169__SBInteractiveScreenshotGestureRootViewController_commitInteractionWithScreenshotImage_screenshotInterfaceOrientation_settlingCompletionHandler_flashCompletionHandler___block_invoke_5;
    v13[3] = &unk_2783AE4B8;
    v14 = *(a1 + 32);
    [v11 sb_animateWithSettings:v12 mode:3 animations:v15 completion:v13];

    goto LABEL_7;
  }

  if ((a4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  [*(a1 + 32) completeAnimationWithIdentifier:@"cropLinesMultiPartAnimation" finished:a3 retargeted:a4];
LABEL_7:
}

uint64_t __169__SBInteractiveScreenshotGestureRootViewController_commitInteractionWithScreenshotImage_screenshotInterfaceOrientation_settlingCompletionHandler_flashCompletionHandler___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 1040) setLineAlpha:1.0];
  v2 = *(*(a1 + 32) + 1040);

  return [v2 setLineGrabberAlpha:1.0];
}

uint64_t __169__SBInteractiveScreenshotGestureRootViewController_commitInteractionWithScreenshotImage_screenshotInterfaceOrientation_settlingCompletionHandler_flashCompletionHandler___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) completeAnimationWithIdentifier:@"mainUpdate" finished:a2 retargeted:a3];
  v6 = *(a1 + 40);

  return [v6 completeAnimationWithIdentifier:@"cropsProgressThreshold" finished:a2 retargeted:a3];
}

uint64_t __169__SBInteractiveScreenshotGestureRootViewController_commitInteractionWithScreenshotImage_screenshotInterfaceOrientation_settlingCompletionHandler_flashCompletionHandler___block_invoke_7(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __169__SBInteractiveScreenshotGestureRootViewController_commitInteractionWithScreenshotImage_screenshotInterfaceOrientation_settlingCompletionHandler_flashCompletionHandler___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3, a3 ^ 1);
  }

  return result;
}

- (void)handlePanGestureRecognizerAction:(id)a3
{
  v4 = a3;
  v5 = [(SBInteractiveScreenshotGestureRootViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(SBInteractiveScreenshotGestureRootViewController *)self traitCollection];
  [v14 displayScale];
  v16 = v15;
  if (BSFloatLessThanOrEqualToFloat())
  {
    v17 = [MEMORY[0x277D759A0] mainScreen];
    [v17 scale];
    v16 = v18;
  }

  v19 = [v4 state];
  v104 = 0;
  v105 = &v104;
  v106 = 0x2020000000;
  v107 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__SBInteractiveScreenshotGestureRootViewController_handlePanGestureRecognizerAction___block_invoke;
  block[3] = &unk_2783A8CE0;
  block[4] = self;
  block[5] = &v104;
  dispatch_sync(accessQueue, block);
  if (v19 == 1)
  {
    [(SBInteractiveScreenshotGestureRootViewController *)self _prepareViewHierarchyForCommittedScreenshot:0 gestureStyle:v105[3]];
    [(SBInteractiveScreenshotGestureCropsView *)self->_cropsView sb_setBoundsAndPositionFromFrame:v7, v9, v11, v13];
  }

  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v102 = 0;
  [v4 locationInView:v5];
  v22 = v21;
  v24 = v23;
  if (v19 == 1)
  {
    v25 = [v4 _touchInterfaceOrientation];
    v100[3] = v25;
    self->_gesturePortraitAnchorPoint.x = v22;
    self->_gesturePortraitAnchorPoint.y = v24;
    [(UIStatusBar *)self->_chromePlaceholderStatusBar setOrientation:v25];
    [(BSUIOrientationTransformWrapperView *)self->_chromePlaceholderOrientationWrapperView setContentOrientation:v100[3]];
    [(SSChromePlaceholderViewController *)self->_chromePlaceholderViewController _updateContentOverlayInsetsFromParentIfNecessary];
    v91 = v16;
    if (_UISolariumEnabled())
    {
      v26 = 0x4040800000000000;
    }

    else
    {
      [v14 displayCornerRadius];
    }

    v90 = v26;
    [(SSChromePlaceholderViewController *)self->_chromePlaceholderViewController screenshotContentFrame];
    v88 = v29;
    v89 = v28;
    v87 = v30;
    v32 = v31;
    [(SSChromePlaceholderViewController *)self->_chromePlaceholderViewController cropsCornerLineWidth];
    v34 = v33;
    [(SSChromePlaceholderViewController *)self->_chromePlaceholderViewController cropsCornerContentPadding];
    v35 = self->_accessQueue;
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = __85__SBInteractiveScreenshotGestureRootViewController_handlePanGestureRecognizerAction___block_invoke_2;
    v98[3] = &unk_2783B8208;
    *&v98[6] = v7;
    *&v98[7] = v9;
    *&v98[8] = v11;
    *&v98[9] = v13;
    v98[10] = v89;
    v98[11] = v88;
    v98[12] = v32;
    v98[13] = v87;
    v98[14] = v91;
    v98[15] = v90;
    v98[16] = v34;
    v98[17] = v36;
    v98[4] = self;
    v98[5] = &v99;
    dispatch_sync(v35, v98);
    [(SBInteractiveScreenshotGestureRootViewController *)self _updateWithUpdateMode:1 commitProgress:0 additionalContentTranslation:0.0 completion:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  }

  else
  {
    v27 = self->_accessQueue;
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = __85__SBInteractiveScreenshotGestureRootViewController_handlePanGestureRecognizerAction___block_invoke_3;
    v97[3] = &unk_2783A8CE0;
    v97[4] = self;
    v97[5] = &v99;
    dispatch_sync(v27, v97);
  }

  _UIWindowConvertPointFromOrientationToOrientation();
  v38 = v37;
  v40 = v39;
  _UIWindowConvertRectFromOrientationToOrientation();
  v93 = v41;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = [v4 edges];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  _UIWindowConvertPointFromOrientationToOrientation();
  if (v19 == 4)
  {
    v59 = 0;
    goto LABEL_21;
  }

  v52 = v50;
  v53 = v51;
  if (v19 == 3)
  {
    if ([(SBInteractiveScreenshotGestureRootViewController *)self _isGestureStyleDisabled:v105[3]])
    {
      v59 = 1;
LABEL_21:
      [WeakRetained interactiveScreenshotGestureRootViewController:self gestureDidCompleteWithIntent:v59];
      goto LABEL_56;
    }

    [v4 velocityInView:v5];
    v62 = v60;
    v63 = v100[3];
    v92 = v47;
    if (v63 == 4)
    {
      v64 = v60;
      v62 = -v61;
    }

    else if (v63 == 3)
    {
      v64 = -v60;
      v62 = v61;
    }

    else
    {
      v64 = v61;
      if (v63 == 2)
      {
        v62 = -v60;
        v64 = -v61;
      }
    }

    [(SBInteractiveScreenshotSettings *)self->_settings projectionDecelerationRate];
    v79 = v38 + v62 / 1000.0 * v78 / (1.0 - v78);
    v80 = v40 + v64 / 1000.0 * v78 / (1.0 - v78);
    if (v48 == 12)
    {
      v82 = v79 - v52;
      v83 = v80 - v53;
      v86 = v82 < 0.00000011920929 && v83 < 0.00000011920929;
      v81 = v92;
      if (!v86)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v81 = v92;
      if (v48 != 6 || ((v82 = v79 - v52, v83 = v80 - v53, v82 > 0.00000011920929) ? (v84 = v83 < 0.00000011920929) : (v84 = 0), !v84))
      {
LABEL_46:
        v85 = 1;
LABEL_55:
        [WeakRetained interactiveScreenshotGestureRootViewController:self gestureDidCompleteWithIntent:v85];
        goto LABEL_56;
      }
    }

    v96 = 0.0;
    [(SBInteractiveScreenshotGestureRootViewController *)self _getDistanceTraveled:0 fullDistance:0 commitProgress:&v96 forTranslationFromCorner:fabs(v82) bounds:fabs(v83), v43, v45, v81, v93];
    if (BSFloatGreaterThanOrEqualToFloat())
    {
      v85 = 2;
    }

    else
    {
      v85 = 1;
    }

    goto LABEL_55;
  }

  if (v19 == 2)
  {
    v54 = vabdd_f64(v38, v50);
    v95 = 0;
    v96 = 0.0;
    v55 = vabdd_f64(v40, v51);
    v94 = 0.0;
    [(SBInteractiveScreenshotGestureRootViewController *)self _getDistanceTraveled:&v96 fullDistance:&v95 commitProgress:&v94 forTranslationFromCorner:v54 bounds:v55, v43, v45, v47, v93];
    [(SBInteractiveScreenshotGestureRootViewController *)self _addGestureUpdateWithCommitProgress:v94 timestamp:CACurrentMediaTime()];
    [(SBInteractiveScreenshotSettings *)self->_settings baseCornerTranslationDegrees];
    BSDegreesToRadians();
    v57 = __sincos_stret(v56);
    v58 = v96;
    if ([(SBInteractiveScreenshotGestureRootViewController *)self _isGestureStyleReducedMotion:v105[3]])
    {
      if (![(SBInteractiveScreenshotGestureRootViewController *)self _isGestureStyleDisabled:v105[3]]&& BSFloatGreaterThanOrEqualToFloat())
      {
        [WeakRetained interactiveScreenshotGestureRootViewController:self gestureDidCompleteWithIntent:2];
      }
    }

    else
    {
      BSUIConstrainValueWithRubberBand();
      v66 = v65;
      [(SBInteractiveScreenshotSettings *)self->_settings horizontalTranslationFactor];
      v68 = v67;
      [(SBInteractiveScreenshotSettings *)self->_settings verticalTranslationFactor];
      v69 = (v57.__cosval * v58 - v54) * (1.0 - v66) * v68;
      v71 = (v57.__sinval * v58 - v55) * (1.0 - v66) * v70;
      v72 = v100[3];
      v73 = -v69;
      v74 = -v71;
      if (v72 == 2)
      {
        v75 = -v71;
      }

      else
      {
        v75 = v71;
      }

      if (v72 == 2)
      {
        v76 = -v69;
      }

      else
      {
        v76 = (v57.__cosval * v58 - v54) * (1.0 - v66) * v68;
      }

      if (v72 != 3)
      {
        v69 = v75;
        v74 = v76;
      }

      if (v72 == 4)
      {
        v77 = v71;
      }

      else
      {
        v73 = v69;
        v77 = v74;
      }

      [(SBInteractiveScreenshotGestureRootViewController *)self _updateWithUpdateMode:5 commitProgress:0 additionalContentTranslation:v94 completion:v77, v73, v74];
    }
  }

LABEL_56:

  _Block_object_dispose(&v99, 8);
  _Block_object_dispose(&v104, 8);
}

double __85__SBInteractiveScreenshotGestureRootViewController_handlePanGestureRecognizerAction___block_invoke_2(uint64_t a1)
{
  v1 = (*(a1 + 32) + 1304);
  v2 = *(a1 + 64);
  *v1 = *(a1 + 48);
  v1[1] = v2;
  v3 = (*(a1 + 32) + 1336);
  v4 = *(a1 + 96);
  *v3 = *(a1 + 80);
  v3[1] = v4;
  *(*(a1 + 32) + 1272) = *(a1 + 112);
  *(*(a1 + 32) + 1264) = *(a1 + 120);
  *(*(a1 + 32) + 1256) = *(a1 + 128);
  result = *(a1 + 136);
  *(*(a1 + 32) + 1248) = result;
  *(*(a1 + 32) + 1288) = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (void)removePlaceholderChrome
{
  [(PBUIWallpaperEffectViewBase *)self->_wallpaperEffectView setHidden:1];
  [(_SBInteractiveScreenshotGestureBackdropView *)self->_contentCapturingView setHidden:1];
  [(_SBInteractiveScreenshotGestureBackdropView *)self->_contentBackdropView setHidden:1];
  [(UIView *)self->_topContentContainerView setHidden:1];
  [(SBInteractiveScreenshotGestureCropsView *)self->_cropsView setHidden:1];
  [(UIVisualEffectView *)self->_materialView setHidden:1];
  [(_SBInteractiveScreenshotGestureReplicatorView *)self->_replicatorView setHidden:1];
  [(UIScenePresentation *)self->_sourceScenePresentationView setHidden:1];
  [(UIView *)self->_screenshotContainerView setHidden:1];
  chromePlaceholderOrientationWrapperView = self->_chromePlaceholderOrientationWrapperView;

  [(BSUIOrientationTransformWrapperView *)chromePlaceholderOrientationWrapperView setHidden:1];
}

- (CATransform3D)_anchoredTransformForAnchorPoint:(SEL)a3 bounds:(CGPoint)a4 center:(CGRect)a5 transform:(CGPoint)a6
{
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  v8 = *&a7->m33;
  *&v17.m31 = *&a7->m31;
  *&v17.m33 = v8;
  v9 = *&a7->m43;
  *&v17.m41 = *&a7->m41;
  *&v17.m43 = v9;
  v10 = *&a7->m13;
  *&v17.m11 = *&a7->m11;
  *&v17.m13 = v10;
  v11 = *&a7->m23;
  *&v17.m21 = *&a7->m21;
  *&v17.m23 = v11;
  CATransform3DTranslate(retstr, &v17, -(a4.x * a5.size.width), -(a4.y * a5.size.height), 0.0);
  result = CATransform3DTranslateRight();
  v13 = *&v17.m33;
  *&retstr->m31 = *&v17.m31;
  *&retstr->m33 = v13;
  v14 = *&v17.m43;
  *&retstr->m41 = *&v17.m41;
  *&retstr->m43 = v14;
  v15 = *&v17.m13;
  *&retstr->m11 = *&v17.m11;
  *&retstr->m13 = v15;
  v16 = *&v17.m23;
  *&retstr->m21 = *&v17.m21;
  *&retstr->m23 = v16;
  return result;
}

- (void)_cancellationCommitProgressAnimatablePropertyPresentationValueDidChange
{
  [(UIViewFloatAnimatableProperty *)self->_cancellationCommitProgressAnimatableProperty presentationValue];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x4010000000;
  v11[3] = &unk_21F9DA6A3;
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  v12 = *MEMORY[0x277CBF3A0];
  v13 = v3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  accessQueue = self->_accessQueue;
  v10 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __123__SBInteractiveScreenshotGestureRootViewController__cancellationCommitProgressAnimatablePropertyPresentationValueDidChange__block_invoke;
  block[3] = &unk_2783B8168;
  block[4] = self;
  block[5] = &v7;
  block[6] = v11;
  dispatch_sync(accessQueue, block);
  if ([(SBInteractiveScreenshotGestureRootViewController *)self _isGestureStyleDisabled:v8[3]])
  {
    [(SBInteractiveScreenshotSettings *)self->_settings normalizedDistanceForCommitThreshold];
    [(SBInteractiveScreenshotSettings *)self->_settings disabledGestureCancellationDistance];
    if (BSFloatGreaterThanOrEqualToFloat())
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained interactiveScreenshotGestureRootViewControllerRequestsGestureRecognizerCancellation:self];
    }
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(v11, 8);
}

__n128 __123__SBInteractiveScreenshotGestureRootViewController__cancellationCommitProgressAnimatablePropertyPresentationValueDidChange__block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 1280);
  v1 = *(a1[6] + 8);
  result = *(a1[4] + 1320);
  *(v1 + 32) = *(a1[4] + 1304);
  *(v1 + 48) = result;
  return result;
}

- (CGPoint)_contentScaleForCommitProgress:(double)a3 contentInsets:(UIEdgeInsets)a4 additionalContentTranslation:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  dispatch_assert_queue_V2(self->_accessQueue);
  __asm { FMOV            V0.2D, #1.0 }

  v20 = _Q0;
  [(SBInteractiveScreenshotGestureRootViewController *)self _getContentTranslation:0 scale:&v20 forCommitProgress:a3 contentInsets:top additionalContentTranslation:left, bottom, right, x, y];
  v19 = *(&v20 + 1);
  v18 = *&v20;
  result.y = v19;
  result.x = v18;
  return result;
}

- (CATransform3D)_contentTransformForCommitProgress:(SEL)a3 contentInsets:(double)a4 additionalContentTranslation:(UIEdgeInsets)a5
{
  y = a6.y;
  x = a6.x;
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  dispatch_assert_queue_V2(self->_accessQueue);
  v15 = *MEMORY[0x277CBF348];
  __asm { FMOV            V0.2D, #1.0 }

  v32 = _Q0;
  v33 = v15;
  [(SBInteractiveScreenshotGestureRootViewController *)self _getContentTranslation:&v33 scale:&v32 forCommitProgress:a4 contentInsets:top additionalContentTranslation:left, bottom, right, x, y];
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  CATransform3DMakeTranslation(retstr, *&v33, *(&v33 + 1), 0.0);
  v21 = *&retstr->m33;
  *&v30.m31 = *&retstr->m31;
  *&v30.m33 = v21;
  v22 = *&retstr->m43;
  *&v30.m41 = *&retstr->m41;
  *&v30.m43 = v22;
  v23 = *&retstr->m13;
  *&v30.m11 = *&retstr->m11;
  *&v30.m13 = v23;
  v24 = *&retstr->m23;
  *&v30.m21 = *&retstr->m21;
  *&v30.m23 = v24;
  result = CATransform3DScale(&v31, &v30, *&v32, *(&v32 + 1), 1.0);
  v26 = *&v31.m33;
  *&retstr->m31 = *&v31.m31;
  *&retstr->m33 = v26;
  v27 = *&v31.m43;
  *&retstr->m41 = *&v31.m41;
  *&retstr->m43 = v27;
  v28 = *&v31.m13;
  *&retstr->m11 = *&v31.m11;
  *&retstr->m13 = v28;
  v29 = *&v31.m23;
  *&retstr->m21 = *&v31.m21;
  *&retstr->m23 = v29;
  return result;
}

- (CATransform3D)_inverseContentTransformForCommitProgress:(SEL)a3 contentInsets:(double)a4 additionalContentTranslation:(UIEdgeInsets)a5
{
  y = a6.y;
  x = a6.x;
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  dispatch_assert_queue_V2(self->_accessQueue);
  v15 = *MEMORY[0x277CBF348];
  __asm { FMOV            V0.2D, #1.0 }

  v32 = _Q0;
  v33 = v15;
  [(SBInteractiveScreenshotGestureRootViewController *)self _getContentTranslation:&v33 scale:&v32 forCommitProgress:a4 contentInsets:top additionalContentTranslation:left, bottom, right, x, y];
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  CATransform3DMakeScale(retstr, 1.0 / *&v32, 1.0 / *(&v32 + 1), 0.0);
  v21 = *&retstr->m33;
  *&v30.m31 = *&retstr->m31;
  *&v30.m33 = v21;
  v22 = *&retstr->m43;
  *&v30.m41 = *&retstr->m41;
  *&v30.m43 = v22;
  v23 = *&retstr->m13;
  *&v30.m11 = *&retstr->m11;
  *&v30.m13 = v23;
  v24 = *&retstr->m23;
  *&v30.m21 = *&retstr->m21;
  *&v30.m23 = v24;
  result = CATransform3DTranslate(&v31, &v30, -*&v33, -*(&v33 + 1), 1.0);
  v26 = *&v31.m33;
  *&retstr->m31 = *&v31.m31;
  *&retstr->m33 = v26;
  v27 = *&v31.m43;
  *&retstr->m41 = *&v31.m41;
  *&retstr->m43 = v27;
  v28 = *&v31.m13;
  *&retstr->m11 = *&v31.m11;
  *&retstr->m13 = v28;
  v29 = *&v31.m23;
  *&retstr->m21 = *&v31.m21;
  *&retstr->m23 = v29;
  return result;
}

- (id)_createFlashViewWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x277D4BE30] flashViewForStyle:v7];
  [v8 bs_setHitTestingDisabled:1];
  [v8 setClipsToBounds:1];
  [v8 setFrame:{x, y, width, height}];

  return v8;
}

- (id)_createScreenshotImageViewWithFrame:(CGRect)a3
{
  v3 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  [v3 setContentMode:4];
  v4 = [v3 layer];
  [v4 setMinificationFilter:*MEMORY[0x277CDA630]];
  [v4 setCornerCurve:*MEMORY[0x277CDA138]];

  return v3;
}

- (void)_addGestureUpdateWithCommitProgress:(double)a3 timestamp:(double)a4
{
  gestureCommitProgressUpdates = self->_gestureCommitProgressUpdates;
  if (gestureCommitProgressUpdates)
  {
    if ([(NSMutableArray *)gestureCommitProgressUpdates count]== 32)
    {
      [(NSMutableArray *)self->_gestureCommitProgressUpdates removeObjectAtIndex:[(NSMutableArray *)self->_gestureCommitProgressUpdates count]- 1];
    }
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:32];
    v9 = self->_gestureCommitProgressUpdates;
    self->_gestureCommitProgressUpdates = v8;
  }

  gestureCommitProgressUpdateTimestamps = self->_gestureCommitProgressUpdateTimestamps;
  if (gestureCommitProgressUpdateTimestamps)
  {
    if ([(NSMutableArray *)gestureCommitProgressUpdateTimestamps count]== 32)
    {
      [(NSMutableArray *)self->_gestureCommitProgressUpdateTimestamps removeObjectAtIndex:[(NSMutableArray *)self->_gestureCommitProgressUpdateTimestamps count]- 1];
    }
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:32];
    v12 = self->_gestureCommitProgressUpdateTimestamps;
    self->_gestureCommitProgressUpdateTimestamps = v11;
  }

  v13 = self->_gestureCommitProgressUpdates;
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableArray *)v13 insertObject:v14 atIndex:0];

  v15 = self->_gestureCommitProgressUpdateTimestamps;
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  [(NSMutableArray *)v15 insertObject:v16 atIndex:0];
}

- (double)_gestureCommitProgressUpdateVelocityOverTimeInterval:(double)a3
{
  if (![(NSMutableArray *)self->_gestureCommitProgressUpdates count])
  {
    return 0.0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0.0;
  v8 = 0.0;
  do
  {
    if (v5 >= [(NSMutableArray *)self->_gestureCommitProgressUpdates count]- 1)
    {
      break;
    }

    v9 = [(NSMutableArray *)self->_gestureCommitProgressUpdates objectAtIndex:v5];
    [v9 doubleValue];
    v11 = v10;

    v12 = [(NSMutableArray *)self->_gestureCommitProgressUpdateTimestamps objectAtIndex:v5];
    [v12 doubleValue];
    v14 = v13;

    if (!v5)
    {
      v7 = v14;
    }

    v15 = [(NSMutableArray *)self->_gestureCommitProgressUpdates objectAtIndex:++v5];
    [v15 doubleValue];
    v17 = v16;

    v18 = [(NSMutableArray *)self->_gestureCommitProgressUpdateTimestamps objectAtIndex:v5];
    [v18 doubleValue];
    v20 = v19;

    if (v14 - v20 > 0.00000011920929)
    {
      v8 = v8 + (v11 - v17) / (v14 - v20);
      ++v6;
    }
  }

  while (v7 - v20 <= a3);
  if (v6)
  {
    return v8 / v6;
  }

  else
  {
    return 0.0;
  }
}

- (void)_getContentTranslation:(CGPoint *)a3 scale:(CGPoint *)a4 forCommitProgress:(double)a5 contentInsets:(UIEdgeInsets)a6 additionalContentTranslation:(CGPoint)a7
{
  right = a6.right;
  bottom = a6.bottom;
  left = a6.left;
  top = a6.top;
  dispatch_assert_queue_V2(self->_accessQueue);
  width = self->_queue_portraitBounds.size.width;
  height = self->_queue_portraitBounds.size.height;
  _UIWindowConvertRectFromOrientationToOrientation();
  v18 = v17 - (left + right);
  v20 = v19 - (top + bottom);
  UIRectGetCenter();
  v22 = v21;
  v24 = v23;
  UIRectGetCenter();
  if (a3)
  {
    a3->x = a7.x + (v22 - v25) * a5 + 0.0;
    a3->y = a7.y + (v24 - v26) * a5 + 0.0;
  }

  if (a4)
  {
    a4->x = (v18 / width + -1.0) * a5 + 1.0;
    a4->y = (v20 / height + -1.0) * a5 + 1.0;
  }
}

- (void)_getDistanceTraveled:(double *)a3 fullDistance:(double *)a4 commitProgress:(double *)a5 forTranslationFromCorner:(CGPoint)a6 bounds:(CGRect)a7
{
  v11 = sqrt(a6.y * a6.y + a6.x * a6.x);
  v12 = sqrt(a7.size.height * a7.size.height + a7.size.width * a7.size.width);
  [(SBInteractiveScreenshotSettings *)self->_settings normalizedDistanceForCommitThreshold];
  [(SBInteractiveScreenshotSettings *)self->_settings rubberbandingRange];
  BSUIConstrainValueToIntervalWithRubberBand();
  if (a3)
  {
    *a3 = v11;
  }

  if (a4)
  {
    *a4 = v12;
  }

  if (a5)
  {
    *a5 = v13;
  }
}

- (void)_prepareViewHierarchyForCommittedScreenshot:(BOOL)a3 gestureStyle:(int64_t)a4
{
  v5 = a3;
  v45[1] = *MEMORY[0x277D85DE8];
  v7 = [(SBInteractiveScreenshotGestureRootViewController *)self view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(SBInteractiveScreenshotGestureRootViewController *)self _isGestureStyleDisabled:a4];
  cancellationCommitProgressAnimatableProperty = self->_cancellationCommitProgressAnimatableProperty;
  if (v16)
  {
    if (!cancellationCommitProgressAnimatableProperty)
    {
      v18 = objc_alloc_init(MEMORY[0x277D75D38]);
      v19 = self->_cancellationCommitProgressAnimatableProperty;
      self->_cancellationCommitProgressAnimatableProperty = v18;

      [(UIViewFloatAnimatableProperty *)self->_cancellationCommitProgressAnimatableProperty setValue:0.0];
      objc_initWeak(&location, self);
      v20 = MEMORY[0x277D75D18];
      v45[0] = self->_cancellationCommitProgressAnimatableProperty;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
      v39 = MEMORY[0x277D85DD0];
      v40 = 3221225472;
      v41 = __109__SBInteractiveScreenshotGestureRootViewController__prepareViewHierarchyForCommittedScreenshot_gestureStyle___block_invoke;
      v42 = &unk_2783A8C68;
      objc_copyWeak(&v43, &location);
      [v20 _createTransformerWithInputAnimatableProperties:v21 presentationValueChangedCallback:&v39];

      objc_destroyWeak(&v43);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [(UIViewFloatAnimatableProperty *)cancellationCommitProgressAnimatableProperty invalidate];
    v22 = self->_cancellationCommitProgressAnimatableProperty;
    self->_cancellationCommitProgressAnimatableProperty = 0;
  }

  if (v5)
  {
    [(UIScenePresentation *)self->_sourceScenePresentationView removeFromSuperview];
    sourceScenePresentationView = self->_sourceScenePresentationView;
    self->_sourceScenePresentationView = 0;

    [(UIScenePresenter *)self->_sourceScenePresenter invalidate];
    sourceScenePresenter = self->_sourceScenePresenter;
    self->_sourceScenePresenter = 0;

    screenshotContainerView = self->_screenshotContainerView;
    if (screenshotContainerView)
    {
      [(UIView *)screenshotContainerView sb_setBoundsAndPositionFromFrame:v9, v11, v13, v15];
    }

    else
    {
      v33 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v11, v13, v15}];
      v34 = self->_screenshotContainerView;
      self->_screenshotContainerView = v33;

      [(UIView *)self->_screenshotContainerView bounds];
      v35 = [(SBInteractiveScreenshotGestureRootViewController *)self _createScreenshotImageViewWithFrame:?];
      screenshotImageView = self->_screenshotImageView;
      self->_screenshotImageView = v35;

      [(UIView *)self->_screenshotContainerView addSubview:self->_screenshotImageView];
      [v7 insertSubview:self->_screenshotContainerView atIndex:0];
    }

    [(UIView *)self->_screenshotContainerView setHidden:0, v39, v40, v41, v42];
    p_flashView = &self->_flashView;
    [(SSFlashView *)self->_flashView sb_setBoundsAndPositionFromFrame:v9, v11, v13, v15];
  }

  else
  {
    if (!self->_sourceScenePresenter)
    {
      v26 = [(FBScene *)self->_sourceScene uiPresentationManager];
      v27 = [v26 createPresenterWithIdentifier:@"SBInteractiveScreenshotGestureRootViewController" priority:5000];
      v28 = self->_sourceScenePresenter;
      self->_sourceScenePresenter = v27;

      [(UIScenePresenter *)self->_sourceScenePresenter activate];
    }

    v29 = self->_sourceScenePresentationView;
    if (!v29)
    {
      v30 = [(UIScenePresenter *)self->_sourceScenePresenter presentationView];
      v31 = self->_sourceScenePresentationView;
      self->_sourceScenePresentationView = v30;

      v32 = self->_sourceScenePresentationView;
      if (v32)
      {
        [v7 insertSubview:v32 atIndex:0];
        v29 = self->_sourceScenePresentationView;
      }

      else
      {
        v29 = 0;
      }
    }

    [(UIScenePresentation *)v29 bs_setHitTestingDisabled:[(SBInteractiveScreenshotGestureRootViewController *)self _isGestureStyleDisabled:a4, v39, v40, v41, v42]^ 1];
    [(UIScenePresentation *)self->_sourceScenePresentationView sb_setBoundsAndPositionFromFrame:v9, v11, v13, v15];
    [(UIScenePresentation *)self->_sourceScenePresentationView setHidden:0];
    [(UIView *)self->_screenshotContainerView setHidden:1];
    [(SBInteractiveScreenshotGestureCropsView *)self->_cropsView setLineGrabberAlpha:0.0];
    [(SBInteractiveScreenshotGestureCropsView *)self->_cropsView setLineAlpha:0.0];
    p_flashView = &self->_flashView;
  }

  [(SSFlashView *)*p_flashView setHidden:!v5];
  [(SBWallpaperEffectView *)self->_wallpaperEffectView sb_setBoundsAndPositionFromFrame:v9, v11, v13, v15];
  [(PBUIWallpaperEffectViewBase *)self->_wallpaperEffectView setHidden:0];
  [(UIVisualEffectView *)self->_materialView sb_setBoundsAndPositionFromFrame:v9, v11, v13, v15];
  [(UIVisualEffectView *)self->_materialView setHidden:0];
  [(_SBInteractiveScreenshotGestureBackdropView *)self->_contentCapturingView sb_setBoundsAndPositionFromFrame:v9, v11, v13, v15];
  [(_SBInteractiveScreenshotGestureBackdropView *)self->_contentCapturingView setHidden:0];
  [(BSUIOrientationTransformWrapperView *)self->_chromePlaceholderOrientationWrapperView sb_setBoundsAndPositionFromFrame:v9, v11, v13, v15];
  [(BSUIOrientationTransformWrapperView *)self->_chromePlaceholderOrientationWrapperView setHidden:[(SBInteractiveScreenshotGestureRootViewController *)self _isGestureStyleDisabled:a4]];
  [(_SBInteractiveScreenshotGestureReplicatorView *)self->_replicatorView sb_setBoundsAndPositionFromFrame:v9, v11, v13, v15];
  [(_SBInteractiveScreenshotGestureReplicatorView *)self->_replicatorView setHidden:0];
  [(UIView *)self->_topContentContainerView sb_setBoundsAndPositionFromFrame:v9, v11, v13, v15];
  [(UIView *)self->_topContentContainerView setHidden:0];
  contentBackdropView = self->_contentBackdropView;
  [(_SBInteractiveScreenshotGestureReplicatorView *)self->_replicatorView bounds];
  [(_SBInteractiveScreenshotGestureBackdropView *)contentBackdropView sb_setBoundsAndPositionFromFrame:?];
  [(_SBInteractiveScreenshotGestureBackdropView *)self->_contentBackdropView setHidden:0];
  [(SBInteractiveScreenshotGestureCropsView *)self->_cropsView setHidden:0];
}

void __109__SBInteractiveScreenshotGestureRootViewController__prepareViewHierarchyForCommittedScreenshot_gestureStyle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancellationCommitProgressAnimatablePropertyPresentationValueDidChange];
}

- (void)_updateContentTransformUsingPresentationValues:(BOOL)a3
{
  v3 = a3;
  transformProgressAnimatableProperty = self->_transformProgressAnimatableProperty;
  if (a3)
  {
    [(UIViewFloatAnimatableProperty *)transformProgressAnimatableProperty presentationValue];
    v7 = v6;
    [(UIViewFloatAnimatableProperty *)self->_translationXAnimatableProperty presentationValue];
    v9 = v8;
    [(UIViewFloatAnimatableProperty *)self->_translationYAnimatableProperty presentationValue];
    v11 = v10;
    [(UIViewFloatAnimatableProperty *)self->_cropsProgressSeparatedValuesAnimatableProperty presentationValue];
  }

  else
  {
    [(UIViewFloatAnimatableProperty *)transformProgressAnimatableProperty value];
    v7 = v13;
    [(UIViewFloatAnimatableProperty *)self->_translationXAnimatableProperty value];
    v9 = v14;
    [(UIViewFloatAnimatableProperty *)self->_translationYAnimatableProperty value];
    v11 = v15;
    [(UIViewFloatAnimatableProperty *)self->_cropsProgressSeparatedValuesAnimatableProperty value];
  }

  v137 = 0;
  v138 = &v137;
  v139 = 0x4010000000;
  v140 = &unk_21F9DA6A3;
  v16 = MEMORY[0x277CBF3A0];
  v17 = *(MEMORY[0x277CBF3A0] + 16);
  v141 = *MEMORY[0x277CBF3A0];
  v142 = v17;
  v133 = 0;
  v134 = &v133;
  v135 = 0x2020000000;
  v136 = 0;
  v129 = 0;
  v130 = &v129;
  v131 = 0x2020000000;
  v132 = 0;
  v117 = 0;
  v118 = &v117;
  v119 = 0xA010000000;
  v120 = &unk_21F9DA6A3;
  v18 = *(MEMORY[0x277CD9DE8] + 80);
  v125 = *(MEMORY[0x277CD9DE8] + 64);
  v126 = v18;
  v19 = *(MEMORY[0x277CD9DE8] + 112);
  v127 = *(MEMORY[0x277CD9DE8] + 96);
  v128 = v19;
  v20 = *(MEMORY[0x277CD9DE8] + 16);
  v121 = *MEMORY[0x277CD9DE8];
  v122 = v20;
  v21 = *(MEMORY[0x277CD9DE8] + 48);
  v123 = *(MEMORY[0x277CD9DE8] + 32);
  v124 = v21;
  v105 = 0;
  v106 = &v105;
  v107 = 0xA010000000;
  v108 = &unk_21F9DA6A3;
  v113 = v125;
  v114 = v18;
  v115 = v127;
  v116 = v19;
  v109 = v121;
  v110 = v20;
  v111 = v123;
  v112 = v21;
  v96[0] = 0;
  v96[1] = v96;
  v96[2] = 0xA010000000;
  v96[3] = &unk_21F9DA6A3;
  v101 = v125;
  v102 = v18;
  v103 = v127;
  v104 = v19;
  v97 = v121;
  v98 = v20;
  v99 = v123;
  v100 = v21;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__SBInteractiveScreenshotGestureRootViewController__updateContentTransformUsingPresentationValues___block_invoke;
  block[3] = &unk_2783B8230;
  block[4] = self;
  block[5] = &v117;
  block[11] = v7;
  *&block[12] = v9;
  block[6] = &v105;
  block[7] = v96;
  *&block[13] = v11;
  *&block[14] = v12;
  *&block[15] = v9 * v12;
  *&block[16] = v11 * v12;
  block[8] = &v137;
  block[9] = &v129;
  block[10] = &v133;
  dispatch_sync(accessQueue, block);
  BSRectWithSize();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  __asm { FMOV            V1.2D, #0.5 }

  v82 = vmlaq_f64(v138[2], _Q1, v138[3]);
  if (v3)
  {
    v36 = *(v118 + 7);
    v91 = *(v118 + 6);
    v92 = v36;
    v37 = *(v118 + 9);
    v93 = *(v118 + 8);
    v94 = v37;
    v38 = *(v118 + 3);
    v87 = *(v118 + 2);
    v88 = v38;
    v39 = *(v118 + 5);
    v89 = *(v118 + 4);
    v90 = v39;
    v40 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v87];
    [(UIView *)self->_topContentContainerView _setPresentationValue:v40 forKey:@"transform"];
    [(_SBInteractiveScreenshotGestureReplicatorView *)self->_replicatorView _setPresentationValue:v40 forKey:@"instanceTransform"];
    [(SSFlashView *)self->_flashView _setPresentationValue:v40 forKey:@"transform"];
    v41 = *(v106 + 7);
    v91 = *(v106 + 6);
    v92 = v41;
    v42 = *(v106 + 9);
    v93 = *(v106 + 8);
    v94 = v42;
    v43 = *(v106 + 3);
    v87 = *(v106 + 2);
    v88 = v43;
    v44 = *(v106 + 5);
    v89 = *(v106 + 4);
    v90 = v44;
    v45 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v87];
    [(_SBInteractiveScreenshotGestureReplicatorView *)self->_replicatorView _setPresentationValue:v45 forKey:@"transform"];
    cropsView = self->_cropsView;
    *v86 = v24;
    *&v86[1] = v26;
    *&v86[2] = v28;
    *&v86[3] = v30;
    v47 = [MEMORY[0x277CCAE60] valueWithBytes:v86 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [(SBInteractiveScreenshotGestureCropsView *)cropsView _setPresentationValue:v47 forKey:@"bounds"];

    v48 = self->_cropsView;
    v85 = v82;
    v49 = [MEMORY[0x277CCAE60] valueWithBytes:&v85 objCType:"{CGPoint=dd}"];
    [(SBInteractiveScreenshotGestureCropsView *)v48 _setPresentationValue:v49 forKey:@"position"];

    v50 = self->_cropsView;
    v51 = [MEMORY[0x277CCABB0] numberWithDouble:v130[3]];
    [(SBInteractiveScreenshotGestureCropsView *)v50 _setPresentationValue:v51 forKey:@"cornerAlpha"];

    flashView = self->_flashView;
    v53 = [MEMORY[0x277CCABB0] numberWithDouble:v134[3]];
    [(SSFlashView *)flashView _setPresentationValue:v53 forKey:@"cornerRadius"];

    topContentContainerView = self->_topContentContainerView;
    v55 = [MEMORY[0x277CCABB0] numberWithDouble:v134[3]];
    [(UIView *)topContentContainerView _setPresentationValue:v55 forKey:@"cornerRadius"];

    screenshotImageView = self->_screenshotImageView;
    v57 = [MEMORY[0x277CCABB0] numberWithDouble:v134[3]];
    [(UIImageView *)screenshotImageView _setPresentationValue:v57 forKey:@"cornerRadius"];
  }

  else
  {
    v58 = self->_topContentContainerView;
    v59 = *(v118 + 7);
    v91 = *(v118 + 6);
    v92 = v59;
    v60 = *(v118 + 9);
    v93 = *(v118 + 8);
    v94 = v60;
    v61 = *(v118 + 3);
    v87 = *(v118 + 2);
    v88 = v61;
    v62 = *(v118 + 5);
    v89 = *(v118 + 4);
    v90 = v62;
    [(UIView *)v58 setTransform3D:&v87];
    v63 = [(_SBInteractiveScreenshotGestureReplicatorView *)self->_replicatorView replicatorLayer];
    v64 = *(v118 + 7);
    v91 = *(v118 + 6);
    v92 = v64;
    v65 = *(v118 + 9);
    v93 = *(v118 + 8);
    v94 = v65;
    v66 = *(v118 + 3);
    v87 = *(v118 + 2);
    v88 = v66;
    v67 = *(v118 + 5);
    v89 = *(v118 + 4);
    v90 = v67;
    [v63 setInstanceTransform:&v87];

    v68 = self->_flashView;
    v69 = *(v118 + 7);
    v91 = *(v118 + 6);
    v92 = v69;
    v70 = *(v118 + 9);
    v93 = *(v118 + 8);
    v94 = v70;
    v71 = *(v118 + 3);
    v87 = *(v118 + 2);
    v88 = v71;
    v72 = *(v118 + 5);
    v89 = *(v118 + 4);
    v90 = v72;
    [(SSFlashView *)v68 setTransform3D:&v87];
    replicatorView = self->_replicatorView;
    v74 = *(v106 + 7);
    v91 = *(v106 + 6);
    v92 = v74;
    v75 = *(v106 + 9);
    v93 = *(v106 + 8);
    v94 = v75;
    v76 = *(v106 + 3);
    v87 = *(v106 + 2);
    v88 = v76;
    v77 = *(v106 + 5);
    v89 = *(v106 + 4);
    v90 = v77;
    [(_SBInteractiveScreenshotGestureReplicatorView *)replicatorView setTransform3D:&v87];
    v78 = [(SSFlashView *)self->_flashView layer];
    [v78 setCornerRadius:v134[3]];

    v79 = [(UIView *)self->_topContentContainerView layer];
    [v79 setCornerRadius:v134[3]];

    v80 = [(UIImageView *)self->_screenshotImageView layer];
    [v80 setCornerRadius:v134[3]];

    [(SBInteractiveScreenshotGestureCropsView *)self->_cropsView bounds];
    if (BSRectEqualToRect())
    {
      [(SBInteractiveScreenshotGestureCropsView *)self->_cropsView setBounds:*v16, v16[1], v16[2], v16[3]];
    }

    [(SBInteractiveScreenshotGestureCropsView *)self->_cropsView setBounds:v24, v26, v28, v30, *&v82];
    [(SBInteractiveScreenshotGestureCropsView *)self->_cropsView center];
    if (BSPointEqualToPoint())
    {
      [(SBInteractiveScreenshotGestureCropsView *)self->_cropsView setCenter:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    }

    [(SBInteractiveScreenshotGestureCropsView *)self->_cropsView setCenter:v83, v84];
    [(SBInteractiveScreenshotGestureCropsView *)self->_cropsView cornerAlpha];
    if (BSFloatEqualToFloat())
    {
      v81 = v130[3] + -0.1;
      if (v81 < -0.00000011920929)
      {
        v81 = v81 + 1.0;
      }

      [(SBInteractiveScreenshotGestureCropsView *)self->_cropsView setCornerAlpha:v81];
    }

    [(SBInteractiveScreenshotGestureCropsView *)self->_cropsView setCornerAlpha:v130[3]];
  }

  _Block_object_dispose(v96, 8);
  _Block_object_dispose(&v105, 8);
  _Block_object_dispose(&v117, 8);
  _Block_object_dispose(&v129, 8);
  _Block_object_dispose(&v133, 8);
  _Block_object_dispose(&v137, 8);
}

uint64_t __99__SBInteractiveScreenshotGestureRootViewController__updateContentTransformUsingPresentationValues___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[164];
  v4 = v2[166];
  v55 = v2[163];
  v56 = v2[165];
  v58 = v2[156];
  v59 = v2[158];
  v57 = v2[157];
  v5 = *MEMORY[0x277D768C8];
  v6 = *(MEMORY[0x277D768C8] + 8);
  v7 = *(MEMORY[0x277D768C8] + 16);
  v8 = *(MEMORY[0x277D768C8] + 24);
  [v2 _contentTransformForCommitProgress:*(a1 + 88) contentInsets:*MEMORY[0x277D768C8] additionalContentTranslation:{v6, v7, v8, *(a1 + 96), *(a1 + 104)}];
  v9 = *(*(a1 + 40) + 8);
  v11 = v60[34];
  v10 = v60[35];
  v12 = v60[33];
  v9[2] = v60[32];
  v9[3] = v12;
  v14 = v60[38];
  v13 = v60[39];
  v15 = v60[37];
  v9[6] = v60[36];
  v9[7] = v15;
  v9[8] = v14;
  v9[9] = v13;
  v9[4] = v11;
  v9[5] = v10;
  v16 = *(a1 + 32);
  v17 = *(a1 + 88);
  UIEdgeInsetsMakeWithEdges();
  [v16 _inverseContentTransformForCommitProgress:v17 contentInsets:v18 additionalContentTranslation:{v19, v20, v21, *(a1 + 96), *(a1 + 104)}];
  v22 = *(*(a1 + 48) + 8);
  v24 = v60[26];
  v23 = v60[27];
  v25 = v60[25];
  v22[2] = v60[24];
  v22[3] = v25;
  v27 = v60[30];
  v26 = v60[31];
  v28 = v60[29];
  v22[6] = v60[28];
  v22[7] = v28;
  v22[8] = v27;
  v22[9] = v26;
  v22[4] = v24;
  v22[5] = v23;
  [*(a1 + 32) _contentTransformForCommitProgress:*(a1 + 112) * *(a1 + 88) contentInsets:v5 additionalContentTranslation:{v6, v7, v8, *(a1 + 120), *(a1 + 128)}];
  v29 = *(*(a1 + 56) + 8);
  v31 = v60[18];
  v30 = v60[19];
  v32 = v60[17];
  v29[2] = v60[16];
  v29[3] = v32;
  v34 = v60[22];
  v33 = v60[23];
  v35 = v60[21];
  v29[6] = v60[20];
  v29[7] = v35;
  v29[8] = v34;
  v29[9] = v33;
  v29[4] = v31;
  v29[5] = v30;
  v36 = *(a1 + 32);
  UIRectGetCenter();
  if (v36)
  {
    v39 = v38;
    v40 = *(*(a1 + 56) + 8);
    v41 = v40[7];
    v60[4] = v40[6];
    v60[5] = v41;
    v42 = v40[9];
    v60[6] = v40[8];
    v60[7] = v42;
    v43 = v40[3];
    v60[0] = v40[2];
    v60[1] = v43;
    v44 = v40[5];
    v60[2] = v40[4];
    v60[3] = v44;
    [v36 _anchoredTransformForAnchorPoint:v60 bounds:0.5 center:0.5 transform:{v55, v3, v56, v4, v37, v39}];
  }

  else
  {
    memset(&v60[8], 0, 128);
  }

  CA_CGRectApplyTransform();
  *(*(*(a1 + 64) + 8) + 32) = CGRectInset(v61, -(v58 + v57), -(v58 + v57));
  [*(*(a1 + 32) + 1176) cropCornersVisibleProgressThreshold];
  v46 = *(a1 + 112);
  if (v45 >= v46)
  {
    v46 = v45;
  }

  *(*(*(a1 + 72) + 8) + 24) = (fmin(v46, 1.0) - v45) / (1.0 - v45) + 0.0;
  v47 = _UISolariumEnabled();
  v48 = *(a1 + 32);
  if (v47)
  {
    result = [v48 _contentScaleForCommitProgress:*(a1 + 88) contentInsets:v5 additionalContentTranslation:{v6, v7, v8, *(a1 + 96), *(a1 + 104)}];
    v52 = v59 * (2.0 / (v50 + v51));
  }

  else
  {
    result = [v48[147] cornerRadiusVisibleProgressThreshold];
    v54 = *(a1 + 112);
    if (v53 >= v54)
    {
      v54 = v53;
    }

    v52 = v59 + (0.0 - v59) * (fmin(v54, 1.0) - v53) / (1.0 - v53);
  }

  *(*(*(a1 + 80) + 8) + 24) = v52;
  return result;
}

- (void)_updateCropLinesMultiPartAnimationForCropsProgress
{
  v16 = *MEMORY[0x277D85DE8];
  [(UIViewFloatAnimatableProperty *)self->_cropsProgressPresentationValueAnimatableProperty presentationValue];
  v4 = v3;
  [(SBInteractiveScreenshotSettings *)self->_settings cropLinesVisibleProgressThreshold];
  if (v4 >= v5)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_cropLinesAlphaMultiPartAnimations;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) completeAnimationWithIdentifier:@"cropsProgressThreshold" finished:1 retargeted:{0, v11}];
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_updateWithUpdateMode:(int64_t)a3 commitProgress:(double)a4 additionalContentTranslation:(CGPoint)a5 completion:(id)a6
{
  y = a5.y;
  x = a5.x;
  settings = self->_settings;
  v12 = a6;
  v13 = [(SBInteractiveScreenshotSettings *)settings contentAnimationSettings];
  [(SBInteractiveScreenshotGestureRootViewController *)self _updateWithUpdateMode:a3 contentAnimationSettings:v13 commitProgress:v12 additionalContentTranslation:a4 completion:x, y];
}

- (void)_updateWithUpdateMode:(int64_t)a3 contentAnimationSettings:(id)a4 commitProgress:(double)a5 additionalContentTranslation:(CGPoint)a6 completion:(id)a7
{
  y = a6.y;
  x = a6.x;
  v13 = a4;
  v14 = a7;
  v15 = BSFloatGreaterThanOrEqualToFloat();
  v16 = v15;
  if (v15)
  {
    if (!self->_hasCrossedCommitThreshold && !self->_cropsTrackingDiscreteAnimationProgressAnimatableProperty)
    {
      v17 = objc_alloc_init(MEMORY[0x277D75D38]);
      cropsTrackingDiscreteAnimationProgressAnimatableProperty = self->_cropsTrackingDiscreteAnimationProgressAnimatableProperty;
      self->_cropsTrackingDiscreteAnimationProgressAnimatableProperty = v17;

      [(UIViewFloatAnimatableProperty *)self->_cropsTrackingDiscreteAnimationProgressAnimatableProperty setValue:0.0];
      objc_initWeak(location, self->_cropsTrackingDiscreteAnimationProgressAnimatableProperty);
      objc_initWeak(&from, self);
      v19 = MEMORY[0x277D75D18];
      v20 = [(SBInteractiveScreenshotSettings *)self->_settings cropsAnimationSettings];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __154__SBInteractiveScreenshotGestureRootViewController__updateWithUpdateMode_contentAnimationSettings_commitProgress_additionalContentTranslation_completion___block_invoke;
      v34[3] = &unk_2783A8C18;
      v34[4] = self;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __154__SBInteractiveScreenshotGestureRootViewController__updateWithUpdateMode_contentAnimationSettings_commitProgress_additionalContentTranslation_completion___block_invoke_2;
      v31[3] = &unk_2783B8258;
      objc_copyWeak(&v32, &from);
      objc_copyWeak(&v33, location);
      [v19 sb_animateWithSettings:v20 mode:3 animations:v34 completion:v31];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&v32);
      objc_destroyWeak(&from);
      objc_destroyWeak(location);
    }
  }

  else if (self->_hasCrossedCommitThreshold)
  {
    [(UIViewFloatAnimatableProperty *)self->_cropsTrackingDiscreteAnimationProgressAnimatableProperty invalidate];
    v21 = self->_cropsTrackingDiscreteAnimationProgressAnimatableProperty;
    self->_cropsTrackingDiscreteAnimationProgressAnimatableProperty = 0;
  }

  self->_hasCrossedCommitThreshold = v16;
  v22 = MEMORY[0x277D65DA0];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __154__SBInteractiveScreenshotGestureRootViewController__updateWithUpdateMode_contentAnimationSettings_commitProgress_additionalContentTranslation_completion___block_invoke_3;
  v24[3] = &unk_2783B8280;
  v26 = self;
  v27 = a3;
  v25 = v13;
  v28 = a5;
  v29 = x;
  v30 = y;
  v23 = v13;
  [v22 perform:v24 finalCompletion:v14];
}

void __154__SBInteractiveScreenshotGestureRootViewController__updateWithUpdateMode_contentAnimationSettings_commitProgress_additionalContentTranslation_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = v2;
  if (WeakRetained)
  {
    if (v2)
    {
      v4 = WeakRetained[138];
      if (v4 == v3)
      {
        [v4 invalidate];
        v5 = WeakRetained[138];
        WeakRetained[138] = 0;
      }
    }
  }
}

void __154__SBInteractiveScreenshotGestureRootViewController__updateWithUpdateMode_contentAnimationSettings_commitProgress_additionalContentTranslation_completion___block_invoke_3(uint64_t a1, void (**a2)(id, __CFString *))
{
  v3 = MEMORY[0x277D75D18];
  v4 = *(a1 + 48);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __154__SBInteractiveScreenshotGestureRootViewController__updateWithUpdateMode_contentAnimationSettings_commitProgress_additionalContentTranslation_completion___block_invoke_4;
  v30[3] = &unk_2783AECC8;
  v5 = *(a1 + 32);
  v30[4] = *(a1 + 40);
  v30[5] = *(a1 + 56);
  v31 = *(a1 + 64);
  v7 = a2 + 2;
  v6 = a2[2];
  v8 = a2;
  v9 = v6();
  [v3 sb_animateWithSettings:v5 mode:v4 animations:v30 completion:v9];

  v10 = *(*(a1 + 40) + 1216);
  v11 = [*(*(a1 + 40) + 1176) cropsAnimationSettings];
  v12 = *(*(a1 + 40) + 1104);
  v13 = 0.0;
  if (v12)
  {
    [v12 presentationValue];
    v13 = fmin(fmax(v14, 0.0), 1.0);
  }

  [*(a1 + 32) trackingResponse];
  v16 = v15;
  [v11 response];
  v18 = v13 * (v16 - v17);
  [v11 response];
  [v10 setTrackingResponse:v19 + v18];
  [*(a1 + 32) trackingDampingRatio];
  v21 = v20;
  [v11 dampingRatio];
  v23 = v13 * (v21 - v22);
  [v11 dampingRatio];
  [v10 setTrackingDampingRatio:v24 + v23];
  if (BSFloatGreaterThanOrEqualToFloat())
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.0;
  }

  v26 = MEMORY[0x277D75D18];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __154__SBInteractiveScreenshotGestureRootViewController__updateWithUpdateMode_contentAnimationSettings_commitProgress_additionalContentTranslation_completion___block_invoke_5;
  v29[3] = &unk_2783A8BC8;
  v27 = *(a1 + 48);
  v29[4] = *(a1 + 40);
  *&v29[5] = v25;
  v28 = (*v7)(v8, @"crops");

  [v26 sb_animateWithSettings:v10 mode:v27 animations:v29 completion:v28];
}

uint64_t __154__SBInteractiveScreenshotGestureRootViewController__updateWithUpdateMode_contentAnimationSettings_commitProgress_additionalContentTranslation_completion___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 1128) setValue:*(a1 + 40)];
  [*(*(a1 + 32) + 1088) setValue:*(a1 + 40)];
  [*(*(a1 + 32) + 1136) setValue:*(a1 + 48)];
  [*(*(a1 + 32) + 1144) setValue:*(a1 + 56)];
  [*(*(a1 + 32) + 1008) setContentAlpha:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 1024);
  v3 = *(a1 + 40);

  return [v2 setAlpha:v3];
}

uint64_t __154__SBInteractiveScreenshotGestureRootViewController__updateWithUpdateMode_contentAnimationSettings_commitProgress_additionalContentTranslation_completion___block_invoke_5(uint64_t a1)
{
  [*(*(a1 + 32) + 1120) setValue:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 1112);
  v3 = *(a1 + 40);

  return [v2 setValue:v3];
}

- (SBInteractiveScreenshotGestureRootViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
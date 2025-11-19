@interface SBElasticValueViewController
- (BOOL)_changeValue:(float)a3;
- (BOOL)_computeCachedRouteDisplayInformation;
- (BOOL)_isStateChangeAllowedFrom:(int64_t)a3 toState:(int64_t)a4;
- (BOOL)updateActiveRouteDisplay:(id *)a3;
- (CGPoint)centerForElasticHUDWhenInInteractingState;
- (CGPoint)centerForState:(int64_t)a3 sliderSize:(CGSize)a4 bounds:(CGRect)a5;
- (CGPoint)positionOffset;
- (CGSize)maximumSizeForSlider;
- (CGSize)sizeForState:(int64_t)a3;
- (SBElasticValueDataSource)dataSource;
- (SBElasticValueViewController)initWithCoder:(id)a3;
- (SBElasticValueViewController)initWithDataSource:(id)a3;
- (SBElasticValueViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SBElasticValueViewControllerDelegate)delegate;
- (SBHUDAttachmentDelegate)attachmentDelegate;
- (double)glyphScaleForState:(int64_t)a3;
- (float)currentValue;
- (id)createSliderView;
- (int64_t)hudPresentationOrientation;
- (unint64_t)_updateSliderValue:(float)a3 animated:(BOOL)a4 transitioningStateContextuallyIfNecessary:(BOOL)a5;
- (unint64_t)axis;
- (unint64_t)layoutAxisForInterfaceOrientation:(int64_t)a3;
- (void)_actuallyDismiss;
- (void)_animateFromState:(int64_t)a3 toState:(int64_t)a4 primaryAnimations:(id)a5 primaryCompletion:(id)a6 positionAnimations:(id)a7 positionCompletion:(id)a8 finalCompletion:(id)a9;
- (void)_beginDeflationDismissalAnimation;
- (void)_debugAutoDismissalSwitchValueChanged:(id)a3;
- (void)_debugChangingStateFromSegmentedControl:(id)a3;
- (void)_debugDidTapNextRoute:(id)a3;
- (void)_debugDidTapResetRoute:(id)a3;
- (void)_debugDimensionSliderValueDidChange:(id)a3;
- (void)_debugDump:(id)a3;
- (void)_debugLockStateSwitchValueChanged:(id)a3;
- (void)_dismissalTimerFired:(id)a3;
- (void)_displayLinkFired:(id)a3;
- (void)_handleShortLongPressGestureRecognizer:(id)a3;
- (void)_invalidateDismissalTimerForReason:(id)a3;
- (void)_noteSliderViewDidBeginTracking;
- (void)_noteSliderViewDidEndTracking;
- (void)_refreshDebugUI:(BOOL)a3;
- (void)_reloadData;
- (void)_scheduleDismissal:(id)a3;
- (void)_scheduleDismissal:(id)a3 afterInterval:(double)a4;
- (void)_sliderEditingDidBegin:(id)a3;
- (void)_sliderEditingDidEnd:(id)a3;
- (void)_sliderIndirectInputDidBegin:(id)a3;
- (void)_sliderIndirectInputDidEnd:(id)a3;
- (void)_sliderValueDidChange:(id)a3;
- (void)_sliderViewMetricsUpdatersForState:(int64_t)a3 bounds:(CGRect)a4 primaryMetricsUpdater:(id *)a5 positionUpdater:(id *)a6;
- (void)_startMonitoringForSliderVisiblyOffscreen;
- (void)_stopMonitoringForSliderVisiblyOffscreen;
- (void)_updateDebugString:(id)a3;
- (void)_updateDebugUIPositions;
- (void)_updateDimmingVisible:(BOOL)a3;
- (void)_updateGlyphStateIfNecessaryForValue:(float *)a3;
- (void)_updateLabelsForAxis:(unint64_t)a3;
- (void)_updateLiveRenderingAssertion;
- (void)_updateSliderTracking;
- (void)_updateSliderViewMetricsForState:(int64_t)a3 bounds:(CGRect)a4;
- (void)_updateSliderWithAxis:(unint64_t)a3;
- (void)_updateTouchTrackingArea;
- (void)changeValue:(float)a3 animated:(BOOL)a4;
- (void)dealloc;
- (void)dismissAnimatedWithCompletion:(id)a3;
- (void)loadView;
- (void)reloadData;
- (void)setButtonStepCount:(unint64_t)a3;
- (void)setHUDAttached:(BOOL)a3;
- (void)setPositionOffset:(CGPoint)a3;
- (void)setupFailureRelationshipForGestureRecognizer:(id)a3;
- (void)transitionStateContextuallyForValueChangeEvent;
- (void)transitionToState:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)updateValue:(float)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SBElasticValueViewController

- (SBElasticValueViewController)initWithDataSource:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBElasticValueViewController *)a2 initWithDataSource:?];
  }

  v13.receiver = self;
  v13.super_class = SBElasticValueViewController;
  v6 = [(SBElasticValueViewController *)&v13 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    v6->_previousState = -1;
    v6->_state = -1;
    v6->_axis = 0;
    objc_storeWeak(&v6->_dataSource, v5);
    v8 = +[SBElasticHUDDomain rootSettings];
    settings = v7->_settings;
    v7->_settings = v8;

    [(PTSettings *)v7->_settings addKeyObserver:v7];
    v7->_isDebugging = [(SBElasticHUDSettings *)v7->_settings showDebugUI];
    v7->_reduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v10 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v7 action:sel__handleShortLongPressGestureRecognizer_];
    shortLongPressGestureRecognizer = v7->_shortLongPressGestureRecognizer;
    v7->_shortLongPressGestureRecognizer = v10;

    [(UILongPressGestureRecognizer *)v7->_shortLongPressGestureRecognizer setMinimumPressDuration:0.0];
    [(UILongPressGestureRecognizer *)v7->_shortLongPressGestureRecognizer setDelegate:v7];
  }

  return v7;
}

- (SBElasticValueViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"SBElasticValueViewController.m" lineNumber:167 description:@"Use -initWithDataSource: instead."];

  return [(SBElasticValueViewController *)self initWithDataSource:0];
}

- (SBElasticValueViewController)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"SBElasticValueViewController.m" lineNumber:172 description:@"Use -initWithDataSource: instead."];

  return [(SBElasticValueViewController *)self initWithDataSource:0];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D65F80]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v4 setOpaque:0];
  [(SBElasticValueViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v62 = *MEMORY[0x277D85DE8];
  v59.receiver = self;
  v59.super_class = SBElasticValueViewController;
  [(SBElasticValueViewController *)&v59 viewDidLoad];
  v3 = [(SBElasticValueViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [objc_alloc(MEMORY[0x277D65F80]) initWithFrame:{v4, v6, v8, v10}];
  dimmingView = self->_dimmingView;
  self->_dimmingView = v12;

  [(UIView *)self->_dimmingView setAutoresizingMask:18];
  v14 = [(UIView *)self->_dimmingView layer];
  [v14 setAllowsHitTesting:0];

  [v3 addSubview:self->_dimmingView];
  if (self->_isDebugging)
  {
    v15 = [objc_alloc(MEMORY[0x277D65F80]) initWithFrame:{v5, v7, v9, v11}];
    debugContainerView = self->_debugContainerView;
    self->_debugContainerView = v15;

    [v3 addSubview:self->_debugContainerView];
  }

  v17 = [objc_alloc(MEMORY[0x277D65F80]) initWithFrame:{v5, v7, v9, v11}];
  sliderContainerView = self->_sliderContainerView;
  self->_sliderContainerView = v17;

  v54 = v3;
  [v3 addSubview:self->_sliderContainerView];
  v19 = [MEMORY[0x277D760A8] sharedInstanceForStyle:1];
  [(SBElasticValueViewController *)self _computeCachedRouteDisplayInformation];
  [(SBElasticHUDSettings *)self->_settings legibilityStrength];
  v21 = v20;
  v22 = objc_alloc(MEMORY[0x277D760A0]);
  v23 = MEMORY[0x277D74300];
  [MEMORY[0x277D74300] systemFontSize];
  v24 = [v23 boldSystemFontOfSize:?];
  v25 = [v22 initWithSettings:v19 strength:@"  " string:v24 font:v21];
  leadingLabel = self->_leadingLabel;
  self->_leadingLabel = v25;

  v27 = objc_alloc(MEMORY[0x277D760A0]);
  v28 = MEMORY[0x277D74300];
  [MEMORY[0x277D74300] systemFontSize];
  v29 = [v28 boldSystemFontOfSize:?];
  v30 = [v27 initWithSettings:v19 strength:@"  " string:v29 font:v21];
  trailingLabel = self->_trailingLabel;
  self->_trailingLabel = v30;

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v32 = self->_trailingLabel;
  v60[0] = self->_leadingLabel;
  v60[1] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
  v34 = [v33 countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v56;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v56 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v55 + 1) + 8 * i);
        [v38 setAlpha:0.0];
        [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
      }

      v35 = [v33 countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v35);
  }

  v39 = [(SBElasticValueViewController *)self createSliderView];
  sliderView = self->_sliderView;
  self->_sliderView = v39;

  [(SBFTouchPassThroughView *)self->_sliderContainerView addSubview:self->_sliderView];
  v41 = self->_sliderView;
  v42 = [(SBElasticRouteDisplaying *)self->_routeDisplayInfo glyphImage];
  [(CCUIBaseSliderView *)v41 setGlyphImage:v42];

  v43 = self->_sliderView;
  v44 = [(SBElasticRouteDisplaying *)self->_routeDisplayInfo glyphPackage];
  [(CCUIBaseSliderView *)v43 setGlyphPackageDescription:v44];

  v45 = self->_sliderView;
  [(SBElasticValueViewController *)self currentValue];
  [(CCUIBaseSliderView *)v45 setValue:0 animated:?];
  v46 = self->_sliderView;
  v47 = [(SBElasticValueViewController *)self sliderAccessibilityIdentifier];
  [(SBElasticSliderView *)v46 setAccessibilityIdentifier:v47];

  [(SBElasticSliderView *)self->_sliderView setLeadingAccessoryView:self->_leadingLabel];
  [(SBElasticSliderView *)self->_sliderView setTrailingAccessoryView:self->_trailingLabel];
  v48 = self->_sliderView;
  [(SBElasticHUDSettings *)self->_settings labelPadding];
  [(SBElasticSliderView *)v48 setAccessoryViewPadding:?];
  [(SBElasticSliderView *)self->_sliderView addTarget:self action:sel__sliderEditingDidBegin_ forControlEvents:0x10000];
  [(SBElasticSliderView *)self->_sliderView addTarget:self action:sel__sliderValueDidChange_ forControlEvents:4096];
  [(SBElasticSliderView *)self->_sliderView addTarget:self action:sel__sliderEditingDidEnd_ forControlEvents:0x40000];
  [(SBElasticSliderView *)self->_sliderView addTarget:self action:sel__sliderIndirectInputDidBegin_ forControlEvents:*MEMORY[0x277CFC8B8]];
  [(SBElasticSliderView *)self->_sliderView addTarget:self action:sel__sliderIndirectInputDidEnd_ forControlEvents:*MEMORY[0x277CFC8C0]];
  [(SBElasticSliderView *)self->_sliderView addTarget:self action:sel__sliderTrackingDidBegin_ forControlEvents:1];
  [(SBElasticSliderView *)self->_sliderView addTarget:self action:sel__sliderTrackingDidEnd_ forControlEvents:448];
  v49 = objc_alloc(MEMORY[0x277D75D18]);
  v50 = [v49 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  touchTrackingView = self->_touchTrackingView;
  self->_touchTrackingView = v50;

  [(UIView *)self->_touchTrackingView setTranslatesAutoresizingMaskIntoConstraints:0];
  v52 = [(UIView *)self->_touchTrackingView layer];
  [v52 setHitTestsAsOpaque:1];

  [(SBFTouchPassThroughView *)self->_sliderContainerView insertSubview:self->_touchTrackingView atIndex:0];
  [(SBElasticSliderView *)self->_sliderView addGestureRecognizer:self->_shortLongPressGestureRecognizer];
  v53 = [MEMORY[0x277CCAB98] defaultCenter];
  [v53 addObserver:self selector:sel__reduceMotionStatusDidChange name:*MEMORY[0x277D764C0] object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D764C0] object:0];

  [(SBElasticValueViewController *)self _stopMonitoringForSliderVisiblyOffscreen];
  [(SBElasticValueViewController *)self _refreshDebugUI:1];
  v4.receiver = self;
  v4.super_class = SBElasticValueViewController;
  [(SBElasticValueViewController *)&v4 dealloc];
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = SBElasticValueViewController;
  [(SBElasticValueViewController *)&v14 viewWillLayoutSubviews];
  v3 = [(SBElasticValueViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5 + self->_positionOffset.x;
  v13 = v7 + self->_positionOffset.y;
  [(SBFTouchPassThroughView *)self->_sliderContainerView setFrame:v12, v13, v9, v11];
  [(UIView *)self->_debugContainerView setFrame:v12, v13, v9, v11];
}

- (void)setPositionOffset:(CGPoint)a3
{
  if (a3.x != self->_positionOffset.x || a3.y != self->_positionOffset.y)
  {
    self->_positionOffset = a3;
    v5 = [(SBElasticValueViewController *)self view];
    [v5 setNeedsLayout];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SBElasticValueViewController;
  [(SBElasticValueViewController *)&v12 viewWillAppear:?];
  v5 = [(SBElasticValueViewController *)self view];
  v6 = [(SBElasticValueViewController *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = _SBFLoggingMethodProem();
    *buf = 138412546;
    v14 = v7;
    v15 = 1024;
    v16 = v3;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "%@ animated: %{BOOL}u", buf, 0x12u);
  }

  [(SBElasticValueViewController *)self _updateLiveRenderingAssertion];
  [(SBElasticValueViewController *)self _updateGlyphStateIfNecessaryForValue:0];
  v8 = MEMORY[0x277D75D18];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__SBElasticValueViewController_viewWillAppear___block_invoke;
  v10[3] = &unk_2783A8C18;
  v11 = v5;
  v9 = v5;
  [v8 performWithoutAnimation:v10];
}

uint64_t __47__SBElasticValueViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = SBElasticValueViewController;
  [(SBElasticValueViewController *)&v11 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if (a3)
  {
    self->_axis = 0;
    v6 = [(SBElasticValueViewController *)self axis];
    v7 = [(SBElasticValueViewController *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = _SBFLoggingMethodProem();
      v9 = v8;
      if (v6 > 2)
      {
        v10 = @"both";
      }

      else
      {
        v10 = off_2783B35C0[v6];
      }

      *buf = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "%@ axis: %@", buf, 0x16u);
    }

    [(SBElasticValueViewController *)self _updateForAxisChange:v6];
    if (self->_state == -1)
    {
      [(SBElasticValueViewController *)self transitionToState:0 animated:0 completion:0];
    }
  }

  else
  {
    [(SBElasticValueViewController *)self _stopMonitoringForSliderVisiblyOffscreen];
  }

  [(SBElasticValueViewController *)self _updateLiveRenderingAssertion];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = SBElasticValueViewController;
  [(SBElasticValueViewController *)&v7 viewDidAppear:?];
  v5 = [(SBElasticValueViewController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = _SBFLoggingMethodProem();
    *buf = 138412546;
    v9 = v6;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "%@ animated: %{BOOL}u", buf, 0x12u);
  }

  [(SBElasticValueViewController *)self _refreshDebugUI:0];
  [(SBElasticValueViewController *)self transitionToState:1 animated:1 completion:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = SBElasticValueViewController;
  [(SBElasticValueViewController *)&v8 viewDidDisappear:?];
  v5 = [(SBElasticValueViewController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = _SBFLoggingMethodProem();
    *buf = 138412546;
    v10 = v6;
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "%@ animated: %{BOOL}u", buf, 0x12u);
  }

  v7 = [(SBElasticValueViewController *)self view];
  [v7 setAlpha:0.0];

  [(SBElasticValueViewController *)self _updateLiveRenderingAssertion];
  [(SBElasticValueViewController *)self _actuallyDismiss];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v54 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v47.receiver = self;
  v47.super_class = SBElasticValueViewController;
  [(SBElasticValueViewController *)&v47 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(SBElasticValueViewController *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = _SBFLoggingMethodProem();
    v55.width = width;
    v55.height = height;
    v10 = NSStringFromSize(v55);
    *buf = 138412802;
    v49 = v9;
    v50 = 2112;
    v51 = v10;
    v52 = 2112;
    v53 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "%@ size:%@ coordinator:%@", buf, 0x20u);
  }

  [(SBElasticValueViewController *)self _invalidateDismissalTimerForReason:@"viewWillTransitionToSize:withTranisitionCoordinator:"];
  self->_isRotating = 1;
  state = self->_state;
  BSRectWithSize();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(SBElasticValueViewController *)self layoutAxisForInterfaceOrientation:[(SBElasticValueViewController *)self _rotatingToInterfaceOrientation]];
  v21 = v20 != [(SBElasticValueViewController *)self axis];
  v22 = self->_sliderContainerView;
  v23 = self->_sliderView;
  objc_initWeak(buf, self);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __83__SBElasticValueViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v44[3] = &unk_2783B3310;
  objc_copyWeak(v46, buf);
  v24 = v23;
  v45 = v24;
  v46[1] = v20;
  v46[2] = state;
  v46[3] = v13;
  v46[4] = v15;
  v46[5] = v17;
  v46[6] = v19;
  v25 = MEMORY[0x223D6F7F0](v44);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __83__SBElasticValueViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v35[3] = &unk_2783B3338;
  v35[4] = self;
  v38 = v13;
  v39 = v15;
  v40 = v17;
  v41 = v19;
  v43 = v21;
  v26 = v22;
  v36 = v26;
  v27 = v25;
  v37 = v27;
  v42 = state;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __83__SBElasticValueViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
  v30[3] = &unk_2783B3360;
  objc_copyWeak(v33, buf);
  v34 = v21;
  v28 = v27;
  v32 = v28;
  v33[1] = v20;
  v29 = v26;
  v31 = v29;
  v33[2] = state;
  [v7 animateAlongsideTransition:v35 completion:v30];

  objc_destroyWeak(v33);
  objc_destroyWeak(v46);
  objc_destroyWeak(buf);
}

void __83__SBElasticValueViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) _removeAllRetargetableAnimations:1];
  [WeakRetained _updateForAxisChange:*(a1 + 48)];
  [WeakRetained _updateSliderViewMetricsForState:*(a1 + 56) bounds:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
}

uint64_t __83__SBElasticValueViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 992) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(*(a1 + 32) + 1112) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  if (*(a1 + 96) == 1)
  {
    [*(a1 + 40) setAlpha:0.0];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v2 = [*(a1 + 32) attachmentDelegate];
    [v2 updateAttachmentStateForHUDViewController:*(a1 + 32)];
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 88) == 3;

  return [v3 _updateDimmingVisible:v4];
}

void __83__SBElasticValueViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 1107) = 0;
    if (*(WeakRetained + 126))
    {
      if (*(a1 + 72) == 1)
      {
        [MEMORY[0x277D75D18] performWithoutAnimation:*(a1 + 40)];
      }

      [v3 _updateLabelsForAxis:*(a1 + 56)];
      if (*(a1 + 72) == 1)
      {
        v4 = MEMORY[0x277D75D18];
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 3221225472;
        v6[2] = __83__SBElasticValueViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4;
        v6[3] = &unk_2783A8C18;
        v7 = *(a1 + 32);
        [v4 animateWithDuration:v6 animations:0.2];
        v5 = [v3 attachmentDelegate];
        [v5 updateAttachmentStateForHUDViewController:v3];
      }

      [v3 _updateTouchTrackingArea];
      if (*(a1 + 64) != 3 || ([v3 isSliderTracking] & 1) == 0)
      {
        [v3 _scheduleDismissal:@"Rotation"];
      }
    }

    else
    {
      [WeakRetained _actuallyDismiss];
    }
  }
}

- (void)setButtonStepCount:(unint64_t)a3
{
  [(SBElasticValueViewController *)self loadViewIfNeeded];
  sliderView = self->_sliderView;

  [(CCUIBaseSliderView *)sliderView setButtonInputStepCount:a3];
}

- (void)updateValue:(float)a3
{
  if (![(SBElasticValueViewController *)self isSliderTracking])
  {
    if ([(SBElasticValueViewController *)self isViewLoaded])
    {
      v6 = [(SBElasticValueViewController *)self bs_isAppearingOrAppeared];
    }

    else
    {
      v6 = 0;
    }

    *&v5 = a3;

    [(SBElasticValueViewController *)self _updateSliderValue:v6 animated:v5];
  }
}

- (void)reloadData
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(SBElasticValueViewController *)self _computeCachedRouteDisplayInformation])
  {
    v3 = [(SBElasticValueViewController *)self axis];
    v4 = self->_initialTransitionCompleted && [(SBElasticValueViewController *)self _appearState]== 2 && (self->_state & 0xFFFFFFFFFFFFFFFDLL) == 1;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __42__SBElasticValueViewController_reloadData__block_invoke;
    v24[3] = &unk_2783A8C18;
    v24[4] = self;
    v5 = MEMORY[0x223D6F7F0](v24);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __42__SBElasticValueViewController_reloadData__block_invoke_2;
    v23[3] = &unk_2783A8BC8;
    v23[4] = self;
    v23[5] = v3;
    v6 = MEMORY[0x223D6F7F0](v23);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __42__SBElasticValueViewController_reloadData__block_invoke_3;
    v22[3] = &unk_2783A8C18;
    v22[4] = self;
    v7 = MEMORY[0x223D6F7F0](v22);
    if (v4)
    {
      v8 = MEMORY[0x277D75D18];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __42__SBElasticValueViewController_reloadData__block_invoke_4;
      v21[3] = &unk_2783A8C18;
      v21[4] = self;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __42__SBElasticValueViewController_reloadData__block_invoke_5;
      v15[3] = &unk_2783B3388;
      v15[4] = self;
      v16 = v5;
      v19 = 0x3FE6666666666666;
      v20 = 6;
      v17 = v7;
      v18 = v6;
      [v8 animateWithDuration:65542 delay:v21 options:v15 animations:0.1 completion:0.0];

      v9 = v16;
    }

    else
    {
      v5[2](v5);
      v10 = MEMORY[0x277D75D18];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __42__SBElasticValueViewController_reloadData__block_invoke_8;
      v12[3] = &unk_2783AAE68;
      v13 = v7;
      v14 = v6;
      [v10 performWithoutAnimation:v12];

      v9 = v13;
    }

    v11 = [(SBElasticValueViewController *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v26 = v4;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "Refreshing route UI animated: %{BOOL}u...", buf, 8u);
    }
  }
}

uint64_t __42__SBElasticValueViewController_reloadData__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1288);
  v4 = [*(v2 + 1216) glyphImage];
  [v3 setGlyphImage:v4];

  v5 = *(a1 + 32);
  v6 = *(v5 + 1288);
  v7 = [*(v5 + 1216) glyphPackage];
  [v6 setGlyphPackageDescription:v7];

  v8 = *(a1 + 32);

  return [v8 _updateGlyphStateIfNecessaryForValue:0];
}

uint64_t __42__SBElasticValueViewController_reloadData__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateLabelsForAxis:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 1288);

  return [v2 layoutIfNeeded];
}

uint64_t __42__SBElasticValueViewController_reloadData__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[161];
  [v2 glyphScaleForState:v2[126]];
  [v3 setAdditiveGlyphScaleFactor:?];
  v4 = *(*(a1 + 32) + 1288);

  return [v4 layoutIfNeeded];
}

uint64_t __42__SBElasticValueViewController_reloadData__block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 1288) additiveGlyphScaleFactor];
  [*(*(a1 + 32) + 1288) setAdditiveGlyphScaleFactor:v2 * 0.875];
  v3 = *(*(a1 + 32) + 1288);

  return [v3 layoutIfNeeded];
}

void __42__SBElasticValueViewController_reloadData__block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(*(a1 + 32) + 1288) layoutIfNeeded];
  v2 = MEMORY[0x277D75D18];
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__SBElasticValueViewController_reloadData__block_invoke_6;
  v10[3] = &unk_2783A9348;
  v11 = *(a1 + 48);
  [v2 animateWithDuration:v4 delay:v10 usingSpringWithDamping:0 initialSpringVelocity:v3 options:0.0 animations:0.5 completion:0.0];
  v5 = MEMORY[0x277D75D18];
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__SBElasticValueViewController_reloadData__block_invoke_7;
  v8[3] = &unk_2783A9348;
  v9 = *(a1 + 56);
  [v5 animateWithDuration:v7 delay:v8 usingSpringWithDamping:0 initialSpringVelocity:v6 options:0.0 animations:1.0 completion:0.0];
}

uint64_t __42__SBElasticValueViewController_reloadData__block_invoke_8(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)setupFailureRelationshipForGestureRecognizer:(id)a3
{
  v4 = a3;
  [v4 requireGestureRecognizerToFail:self->_shortLongPressGestureRecognizer];
  v5 = [(SBElasticValueViewController *)self log];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v7 = [(SBElasticValueViewController *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(SBElasticValueViewController *)v4 setupFailureRelationshipForGestureRecognizer:v7];
    }
  }
}

- (CGPoint)centerForElasticHUDWhenInInteractingState
{
  v3 = [(SBElasticValueViewController *)self sliderView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  [(SBFTouchPassThroughView *)self->_sliderContainerView bounds];
  [(SBElasticValueViewController *)self centerForState:3 sliderSize:v5 bounds:v7, v8, v9, v10, v11];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (BOOL)updateActiveRouteDisplay:(id *)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"SBElasticValueViewController.m" lineNumber:501 description:@"Subclasses must implement this method and should not call super."];

  return 0;
}

- (unint64_t)layoutAxisForInterfaceOrientation:(int64_t)a3
{
  if ((a3 - 1) >= 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)createSliderView
{
  v2 = [SBElasticSliderView alloc];
  v3 = [(SBElasticSliderView *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(CCUIBaseSliderView *)v3 setShouldScaleWithButtonInput:1];

  return v3;
}

- (void)dismissAnimatedWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__SBElasticValueViewController_dismissAnimatedWithCompletion___block_invoke;
  v6[3] = &unk_2783B33B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SBElasticValueViewController *)self transitionToState:0 animated:1 completion:v6];
}

uint64_t __62__SBElasticValueViewController_dismissAnimatedWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a5;
  }

  if (v6 == 1)
  {
    [*(a1 + 32) _actuallyDismiss];
  }

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (void)setHUDAttached:(BOOL)a3
{
  self->_isHUDAttached = a3;
  v4 = [(SBElasticValueViewController *)self attachmentDelegate];
  [v4 updateAttachmentStateForHUDViewController:self];
}

- (float)currentValue
{
  v3 = [(SBElasticValueViewController *)self dataSource];
  [v3 elasticValueViewControllerCurrentValue:self];
  v5 = v4;

  return v5;
}

- (void)changeValue:(float)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([(SBElasticValueViewController *)self _changeValue:?])
  {
    *&v7 = a3;

    [(SBElasticValueViewController *)self _updateSliderValue:v4 animated:v7];
  }

  else
  {
    v8 = [(SBElasticValueViewController *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Data source rejected updateCurrentValue; skipping...", v9, 2u);
    }
  }
}

- (BOOL)_changeValue:(float)a3
{
  v4 = self;
  v5 = [(SBElasticValueViewController *)self dataSource];
  *&v6 = a3;
  LOBYTE(v4) = [v5 elasticValueViewController:v4 updateCurrentValue:v6];

  return v4;
}

- (unint64_t)axis
{
  result = self->_axis;
  if (!result)
  {
    result = [(SBElasticValueViewController *)self layoutAxisForInterfaceOrientation:[(SBElasticValueViewController *)self hudPresentationOrientation]];
    self->_axis = result;
  }

  return result;
}

- (int64_t)hudPresentationOrientation
{
  v2 = [(SBElasticValueViewController *)self viewIfLoaded];
  v3 = [v2 window];

  if (v3)
  {
    v4 = [v3 interfaceOrientation];
  }

  else
  {
    v5 = SBLogCommon();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      NSLog(&cfstr_ThisIsnTTheWor.isa);
    }

    v4 = 1;
  }

  return v4;
}

- (void)transitionStateContextuallyForValueChangeEvent
{
  if ([(SBElasticValueViewController *)self _appearState]== 2)
  {
    if (self->_state || self->_initialTransitionCompleted)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    [(SBElasticValueViewController *)self transitionToState:v3 animated:1 completion:0];
  }
}

- (void)transitionToState:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v108 = *MEMORY[0x277D85DE8];
  v8 = a5;
  state = self->_state;
  if ([(SBElasticValueViewController *)self _isStateChangeAllowedFrom:state toState:a3])
  {
    if (self->_lockState)
    {
      if (a3)
      {
        goto LABEL_32;
      }

      v55 = v5;
      v62 = v8;
      a3 = 1;
    }

    else
    {
      v55 = v5;
      v62 = v8;
    }

    v10 = [(SBElasticValueViewController *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSBElasticValueState(state);
      v12 = NSStringFromSBElasticValueState(a3);
      *buf = 138543618;
      v105 = v11;
      v106 = 2114;
      v107 = v12;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Preparing to transition from %{public}@ -> %{public}@", buf, 0x16u);
    }

    self->_previousState = state;
    self->_state = a3;
    objc_initWeak(buf, self);
    v13 = self;
    v14 = v13;
    if (state)
    {
      v15 = 0;
    }

    else
    {
      v15 = a3 == 1;
    }

    if (v15)
    {
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke;
      v103[3] = &unk_2783A8C18;
      v103[4] = v13;
      v60 = MEMORY[0x223D6F7F0](v103);
      v17 = v102;
      v102[0] = MEMORY[0x277D85DD0];
      v102[1] = 3221225472;
      v18 = __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_91;
    }

    else
    {
      if (state == -1 || a3 != 0)
      {
        v53 = 0;
        v60 = 0;
        goto LABEL_22;
      }

      v101[0] = MEMORY[0x277D85DD0];
      v101[1] = 3221225472;
      v101[2] = __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_92;
      v101[3] = &unk_2783A8C18;
      v101[4] = v13;
      v60 = MEMORY[0x223D6F7F0](v101);
      v17 = v100;
      v100[0] = MEMORY[0x277D85DD0];
      v100[1] = 3221225472;
      v18 = __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_93;
    }

    v17[2] = v18;
    v17[3] = &unk_2783A8C18;
    v17[4] = v14;
    v53 = MEMORY[0x223D6F7F0]();
LABEL_22:
    v19 = v14->_debugStateSegmentedControl;
    v20 = v14->_leadingLabel;
    v21 = v14->_trailingLabel;
    v22 = [(SBElasticValueViewController *)v14 sliderView];
    v23 = [(SBElasticValueViewController *)v14 axis];
    v56 = v21;
    v58 = v20;
    v49 = v19;
    [(SBFTouchPassThroughView *)v14->_sliderContainerView bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    LOBYTE(v19) = v14->_reduceMotionEnabled;
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_94;
    v98[3] = &unk_2783B33D8;
    objc_copyWeak(&v99, buf);
    v32 = MEMORY[0x223D6F7F0](v98);
    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_2;
    v96[3] = &unk_2783B3400;
    objc_copyWeak(&v97, buf);
    v51 = MEMORY[0x223D6F7F0](v96);
    v95 = 0;
    v94 = 0;
    [(SBElasticValueViewController *)v14 _sliderViewMetricsUpdatersForState:a3 bounds:&v95 primaryMetricsUpdater:&v94 positionUpdater:v25, v27, v29, v31];
    v33 = MEMORY[0x223D6F7F0](v95);
    v34 = MEMORY[0x223D6F7F0](v94);
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_3;
    v86[3] = &unk_2783B3428;
    objc_copyWeak(v92, buf);
    v44 = v60;
    v88 = v44;
    v92[1] = state;
    v92[2] = a3;
    v35 = v32;
    v89 = v35;
    v92[3] = v23;
    v93 = v19;
    v36 = v33;
    v90 = v36;
    v37 = v22;
    v87 = v37;
    v38 = v34;
    v91 = v38;
    v61 = MEMORY[0x223D6F7F0](v86);
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_100;
    v77[3] = &unk_2783B3450;
    objc_copyWeak(v85, buf);
    v85[1] = state;
    v85[2] = a3;
    v46 = v37;
    v78 = v46;
    v79 = v14;
    v48 = v36;
    v82 = v48;
    v47 = v35;
    v83 = v47;
    v85[3] = v23;
    v39 = v51;
    v84 = v39;
    v52 = v56;
    v80 = v52;
    v45 = v58;
    v81 = v45;
    v40 = MEMORY[0x223D6F7F0](v77);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_2_102;
    v73[3] = &unk_2783B3478;
    objc_copyWeak(v76, buf);
    v59 = v38;
    v74 = v59;
    v57 = v39;
    v75 = v57;
    v76[1] = a3;
    v76[2] = v23;
    v41 = MEMORY[0x223D6F7F0](v73);
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_3_103;
    v71[3] = &unk_2783AFE38;
    objc_copyWeak(v72, buf);
    v72[1] = state;
    v42 = MEMORY[0x223D6F7F0](v71);
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_4;
    v67[3] = &unk_2783B34A0;
    objc_copyWeak(v70, buf);
    v70[1] = state;
    v70[2] = a3;
    v50 = v49;
    v68 = v50;
    v54 = v53;
    v69 = v54;
    v43 = MEMORY[0x223D6F7F0](v67);
    if (state == -1 || a3 || ![(SBElasticValueViewController *)v14 bs_isAppearingOrAppeared])
    {
      [(SBElasticValueViewController *)v14 _stopMonitoringForSliderVisiblyOffscreen];
    }

    else
    {
      [(SBElasticValueViewController *)v14 _startMonitoringForSliderVisiblyOffscreen];
    }

    v61[2]();
    if (v55)
    {
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_2_109;
      v63[3] = &unk_2783B34C8;
      v64 = v43;
      objc_copyWeak(v66, buf);
      v65 = v62;
      v66[1] = state;
      v66[2] = a3;
      [(SBElasticValueViewController *)v14 _animateFromState:state toState:a3 primaryAnimations:v40 primaryCompletion:&__block_literal_global_115 positionAnimations:v41 positionCompletion:v42 finalCompletion:v63];

      objc_destroyWeak(v66);
    }

    else
    {
      [MEMORY[0x277D75D18] performWithoutAnimation:v40];
      [MEMORY[0x277D75D18] performWithoutAnimation:v41];
      v42[2](v42);
      v43[2](v43);
      if (v62)
      {
        (v62)[2](v62, state, a3, self->_state, 1);
      }
    }

    objc_destroyWeak(v70);
    objc_destroyWeak(v72);

    objc_destroyWeak(v76);
    objc_destroyWeak(v85);

    objc_destroyWeak(v92);
    objc_destroyWeak(&v97);

    objc_destroyWeak(&v99);
    objc_destroyWeak(buf);
    v8 = v62;
    goto LABEL_32;
  }

  if (v8)
  {
    (*(v8 + 2))(v8, state, a3, self->_state, 0);
  }

LABEL_32:
}

uint64_t __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke(uint64_t a1)
{
  v2 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_HUD_PRESENT_VOLUME", " enableTelemetry=YES  isAnimation=YES ", v5, 2u);
  }

  kdebug_trace();
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"SBElasticValueViewControllerWillPresentNotificationName" object:*(a1 + 32)];

  return [*(a1 + 32) setHUDAttached:0];
}

uint64_t __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_91(uint64_t a1)
{
  v2 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_HUD_PRESENT_VOLUME", " enableTelemetry=YES  isAnimation=YES ", v5, 2u);
  }

  kdebug_trace();
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"SBElasticValueViewControllerDidPresentNotificationName" object:*(a1 + 32)];

  return [*(a1 + 32) setHUDAttached:1];
}

void __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_92(uint64_t a1)
{
  v2 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_HUD_DISMISS_VOLUME", " enableTelemetry=YES  isAnimation=YES ", v4, 2u);
  }

  kdebug_trace();
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"SBElasticValueViewControllerWillDismissNotificationName" object:*(a1 + 32)];
}

void __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_93(uint64_t a1)
{
  v2 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_HUD_DISMISS_VOLUME", " enableTelemetry=YES  isAnimation=YES ", v4, 2u);
  }

  kdebug_trace();
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"SBElasticValueViewControllerDidDismissNotificationName" object:*(a1 + 32)];
}

void __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_94(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateLabelsForAxis:a2];
}

void __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTouchTrackingArea];
}

void __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))();
    }

    v4 = [WeakRetained log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromSBElasticValueState(*(a1 + 80));
      v6 = NSStringFromSBElasticValueState(*(a1 + 88));
      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "(State transition from %{public}@ -> %{public}@) preAnimations", &v7, 0x16u);
    }

    [WeakRetained _invalidateDismissalTimerForReason:@"transitionToState pre-animations"];
    (*(*(a1 + 48) + 16))();
    if (*(a1 + 104) == 1 && !*(a1 + 80))
    {
      (*(*(a1 + 56) + 16))();
      (*(*(a1 + 64) + 16))();
      [*(a1 + 32) layoutIfNeeded];
    }
  }
}

void __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_100(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromSBElasticValueState(*(a1 + 96));
      v6 = NSStringFromSBElasticValueState(*(a1 + 104));
      v20 = 138543618;
      v21 = v5;
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "(State transition from %{public}@ -> %{public}@) animations", &v20, 0x16u);
    }

    [v3 _updateDimmingVisible:*(a1 + 104) == 3];
    v7 = *(a1 + 104);
    if (v7 == 2)
    {
      v8 = 0;
    }

    else
    {
      if (v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = *(a1 + 96) == 2;
      }

      v8 = !v9;
    }

    [*(a1 + 32) setGlyphVisible:v8];
    v10 = *(a1 + 32);
    v11 = *(*(a1 + 40) + 1280);
    if (*(a1 + 104) == 3)
    {
      [v11 interactingStretchAmount];
    }

    else
    {
      [v11 compactStretchAmount];
    }

    [v10 setElasticContentStretchAmount:?];
    (*(*(a1 + 64) + 16))();
    (*(*(a1 + 72) + 16))();
    (*(*(a1 + 80) + 16))();
    v12 = *(a1 + 48);
    if (*(a1 + 112))
    {
      if (*(a1 + 104) == 3)
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.0;
      }

      [v12 setAlpha:v13];
      v14 = *(a1 + 56);
      if (*(a1 + 104) == 3)
      {
        v15 = 1.0;
      }

      else
      {
        v15 = 0.0;
      }
    }

    else
    {
      [v12 setAlpha:0.0];
      v14 = *(a1 + 56);
      v15 = 0.0;
    }

    [v14 setAlpha:v15];
    v16 = *(a1 + 104);
    if (v16)
    {
      [*(a1 + 32) setShadowMode:v16 == 2];
    }

    [*(a1 + 32) layoutIfNeeded];
    if (v3[1108] == 1)
    {
      v17 = *(a1 + 104);
      if (!v17 || !*(a1 + 96))
      {
        if (v17)
        {
          v18 = 1.0;
        }

        else
        {
          v18 = 0.0;
        }

        v19 = [v3 view];
        [v19 setAlpha:v18];
      }
    }
  }
}

void __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_2_102(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    (*(*(a1 + 40) + 16))();
    WeakRetained = v3;
  }
}

void __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_3_103(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained[1104];
    if (*(a1 + 40))
    {
      if (WeakRetained[1104])
      {
        goto LABEL_8;
      }
    }

    else
    {
      WeakRetained[1104] = 1;
      if (v3)
      {
        goto LABEL_8;
      }
    }

    if (*(WeakRetained + 126) == 1)
    {
      WeakRetained[1104] = 1;
      v4 = WeakRetained;
      [WeakRetained _beginDeflationDismissalAnimation];
      WeakRetained = v4;
    }
  }

LABEL_8:
}

void __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_4(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromSBElasticValueState(*(a1 + 56));
      v6 = NSStringFromSBElasticValueState(*(a1 + 64));
      *buf = 138543618;
      v23 = v5;
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "(State transition from %{public}@ -> %{public}@) postAnimations", buf, 0x16u);
    }

    v7 = *(a1 + 64);
    if (v7 && v7 != 3 && ([v3[134] isValid] & 1) == 0 && v3[126] == *(a1 + 64))
    {
      [v3[160] postTransitionDismissalInterval];
      v9 = v8;
      v10 = MEMORY[0x277CCACA8];
      v11 = NSStringFromSBElasticValueState(*(a1 + 56));
      v12 = NSStringFromSBElasticValueState(*(a1 + 64));
      v13 = [v10 stringWithFormat:@"Transition from %@ -> %@", v11, v12];

      [v3 _scheduleDismissal:v13 afterInterval:v9];
    }

    [v3 _updateDebugUIPositions];
    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = MEMORY[0x277D75D18];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_108;
      v19[3] = &unk_2783A8BC8;
      v16 = v14;
      v17 = *(a1 + 64);
      v20 = v16;
      v21 = v17;
      [v15 performWithoutAnimation:v19];
    }

    v18 = *(a1 + 40);
    if (v18)
    {
      (*(v18 + 16))();
    }
  }
}

void __70__SBElasticValueViewController_transitionToState_animated_completion___block_invoke_2_109(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 126);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = v5;
    (*(v7 + 16))(v7, *(a1 + 56), *(a1 + 64), v6, a2);
    v5 = v8;
  }
}

- (void)_animateFromState:(int64_t)a3 toState:(int64_t)a4 primaryAnimations:(id)a5 primaryCompletion:(id)a6 positionAnimations:(id)a7 positionCompletion:(id)a8 finalCompletion:(id)a9
{
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v33 = a9;
  v19 = [(SBElasticValueViewController *)self settings];
  v20 = v19;
  v34 = a4;
  if (!a3 && a4 == 1)
  {
    v21 = [v19 baseToInitialTransitionSettings];
    v22 = [v20 baseToInitialPositionSettings];
    goto LABEL_4;
  }

  if (a3 == 1 && a4 == 4)
  {
    v24 = [v19 deflationTransitionSettings];
LABEL_9:
    v21 = v24;
    v23 = 0;
    if (!v24)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if (a3 != 4 || a4)
  {
    if (a4)
    {
      v23 = 0;
      goto LABEL_17;
    }

    if (a3 == 2 && !self->_reduceMotionEnabled)
    {
      v24 = [v19 compactToBaseTransitionSettings];
    }

    else
    {
      v24 = [v19 generalToBaseTransitionSettings];
    }

    goto LABEL_9;
  }

  v21 = [v19 deflatingToBaseTransitionSettings];
  v22 = [v20 deflatingToBasePositionSettings];
LABEL_4:
  v23 = v22;
  if (!v21)
  {
LABEL_17:
    v21 = [v20 defaultTransitionSettings];
    if (!v23)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (!v23)
  {
LABEL_18:
    v23 = v21;
  }

LABEL_11:
  v47 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v21 setFrameRateRange:1114141 highFrameRateReason:{*&v47.minimum, *&v47.maximum, *&v47.preferred}];
  v48 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v23 setFrameRateRange:1114141 highFrameRateReason:{*&v48.minimum, *&v48.maximum, *&v48.preferred}];
  objc_initWeak(location, self);
  v25 = MEMORY[0x277D65DA0];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __148__SBElasticValueViewController__animateFromState_toState_primaryAnimations_primaryCompletion_positionAnimations_positionCompletion_finalCompletion___block_invoke;
  v38[3] = &unk_2783B34F0;
  v26 = v21;
  v39 = v26;
  v45 = 3;
  v27 = v15;
  v41 = v27;
  v28 = v16;
  v42 = v28;
  v29 = v23;
  v40 = v29;
  v30 = v17;
  v43 = v30;
  v31 = v18;
  v44 = v31;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __148__SBElasticValueViewController__animateFromState_toState_primaryAnimations_primaryCompletion_positionAnimations_positionCompletion_finalCompletion___block_invoke_4;
  v35[3] = &unk_2783B3518;
  objc_copyWeak(v37, location);
  v32 = v33;
  v36 = v32;
  v37[1] = v34;
  [v25 perform:v38 finalCompletion:v35];

  objc_destroyWeak(v37);
  objc_destroyWeak(location);
}

void __148__SBElasticValueViewController__animateFromState_toState_primaryAnimations_primaryCompletion_positionAnimations_positionCompletion_finalCompletion___block_invoke(uint64_t a1, void (**a2)(id, __CFString *))
{
  v4 = a2 + 2;
  v3 = a2[2];
  v5 = a2;
  v6 = v3();
  v7 = MEMORY[0x277D75D18];
  v8 = *(a1 + 32);
  v9 = *(a1 + 80);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __148__SBElasticValueViewController__animateFromState_toState_primaryAnimations_primaryCompletion_positionAnimations_positionCompletion_finalCompletion___block_invoke_2;
  v21[3] = &unk_2783AE5C8;
  v10 = *(a1 + 48);
  v22 = *(a1 + 56);
  v23 = v6;
  v11 = v6;
  [v7 sb_animateWithSettings:v8 mode:v9 animations:v10 completion:v21];
  v12 = (*v4)(v5, @"positionAnimations");

  v13 = MEMORY[0x277D75D18];
  v14 = *(a1 + 40);
  v15 = *(a1 + 64);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __148__SBElasticValueViewController__animateFromState_toState_primaryAnimations_primaryCompletion_positionAnimations_positionCompletion_finalCompletion___block_invoke_3;
  v18[3] = &unk_2783AE5C8;
  v16 = *(a1 + 80);
  v19 = *(a1 + 72);
  v20 = v12;
  v17 = v12;
  [v13 sb_animateWithSettings:v14 mode:v16 animations:v15 completion:v18];
}

uint64_t __148__SBElasticValueViewController__animateFromState_toState_primaryAnimations_primaryCompletion_positionAnimations_positionCompletion_finalCompletion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __148__SBElasticValueViewController__animateFromState_toState_primaryAnimations_primaryCompletion_positionAnimations_positionCompletion_finalCompletion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __148__SBElasticValueViewController__animateFromState_toState_primaryAnimations_primaryCompletion_positionAnimations_positionCompletion_finalCompletion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 126);
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v3 == *(a1 + 48));
}

- (BOOL)_isStateChangeAllowedFrom:(int64_t)a3 toState:(int64_t)a4
{
  v26 = *MEMORY[0x277D85DE8];
  if (!self->_isRotating)
  {
    if (a3 == a4)
    {
      v7 = [(SBElasticValueViewController *)self log];
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v13 = NSStringFromSBElasticValueState(a3);
      v14 = NSStringFromSBElasticValueState(a3);
      *buf = 138543618;
      v21 = v13;
      v22 = 2114;
      v23 = v14;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Denying state change from %{public}@ -> %{public}@; this is the same state.", buf, 0x16u);
    }

    else
    {
      if (a3 != -1 || !a4)
      {
        if (a3)
        {
          return 1;
        }

        v17 = [(SBElasticValueViewController *)self delegate];
        v19 = 0;
        v18 = [v17 elasticValueViewControllerCanBePresented:self withReason:&v19];
        v7 = v19;

        if (v18)
        {
          v15 = 1;
          goto LABEL_15;
        }

        v8 = [(SBElasticValueViewController *)self log];
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_5;
        }

        v9 = NSStringFromSBElasticValueState(a4);
        *buf = 138543874;
        v21 = @"Base";
        v22 = 2114;
        v23 = v9;
        v24 = 2114;
        v25 = v7;
        v10 = "Denying state change from %{public}@ -> %{public}@; presentation disallowed by delegate with reason: %{public}@";
        v11 = v8;
        v12 = 32;
LABEL_4:
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);

LABEL_5:
        goto LABEL_14;
      }

      v7 = [(SBElasticValueViewController *)self log];
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v13 = NSStringFromSBElasticValueState(a4);
      *buf = 138543618;
      v21 = @"Null";
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Denying state change from %{public}@ -> %{public}@; NULL can only transition to base.", buf, 0x16u);
    }

    goto LABEL_14;
  }

  v7 = [(SBElasticValueViewController *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSBElasticValueState(a3);
    v9 = NSStringFromSBElasticValueState(a4);
    *buf = 138543618;
    v21 = v8;
    v22 = 2114;
    v23 = v9;
    v10 = "Denying state change from %{public}@ -> %{public}@; no state changes while rotating.";
    v11 = v7;
    v12 = 22;
    goto LABEL_4;
  }

LABEL_14:
  v15 = 0;
LABEL_15:

  return v15;
}

- (void)_beginDeflationDismissalAnimation
{
  if (!self->_reduceMotionEnabled)
  {
    [(SBElasticValueViewController *)self transitionToState:4 animated:1 completion:0];
    [(SBElasticHUDSettings *)self->_settings deflationDismissalInterval];

    [(SBElasticValueViewController *)self _scheduleDismissal:@"Deflation" afterInterval:?];
  }
}

- (void)_startMonitoringForSliderVisiblyOffscreen
{
  if (!self->_displayLinkForVisiblyOffscreenMonitoring)
  {
    v3 = [(SBElasticValueViewController *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Started monitoring for being visibly offscreen", v8, 2u);
    }

    v4 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkFired_];
    displayLinkForVisiblyOffscreenMonitoring = self->_displayLinkForVisiblyOffscreenMonitoring;
    self->_displayLinkForVisiblyOffscreenMonitoring = v4;

    v6 = self->_displayLinkForVisiblyOffscreenMonitoring;
    v7 = [MEMORY[0x277CBEB88] mainRunLoop];
    [(CADisplayLink *)v6 addToRunLoop:v7 forMode:*MEMORY[0x277CBE738]];
  }
}

- (void)_stopMonitoringForSliderVisiblyOffscreen
{
  if (self->_displayLinkForVisiblyOffscreenMonitoring)
  {
    v3 = [(SBElasticValueViewController *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Stopped monitoring for being visibly offscreen", v5, 2u);
    }

    [(CADisplayLink *)self->_displayLinkForVisiblyOffscreenMonitoring invalidate];
    displayLinkForVisiblyOffscreenMonitoring = self->_displayLinkForVisiblyOffscreenMonitoring;
    self->_displayLinkForVisiblyOffscreenMonitoring = 0;
  }
}

- (void)_displayLinkFired:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  if (self->_state)
  {
    return;
  }

  v4 = [(SBElasticValueViewController *)self sliderView];
  v5 = [v4 layer];
  [v5 position];
  [v5 bounds];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = [v5 presentationModifiers];
  v7 = [v6 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (!v7)
  {

    goto LABEL_20;
  }

  v8 = v7;
  v44 = self;
  v45 = v4;
  v9 = 0;
  v10 = *v48;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v48 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v47 + 1) + 8 * i);
      v13 = [v12 keyPath];
      v14 = [v13 isEqual:@"position"];

      if (v14)
      {
        v15 = [v12 value];
        [v15 CGPointValue];
        v9 = 1;
      }

      else
      {
        v16 = [v12 keyPath];
        v17 = [v16 isEqual:@"bounds"];

        if (!v17)
        {
          continue;
        }

        v15 = [v12 value];
        [v15 CGRectValue];
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v47 objects:v51 count:16];
  }

  while (v8);

  v4 = v45;
  if (v9)
  {
    SBUnintegralizedRectCenteredAboutPoint();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [v45 shadowOutsets];
    v27 = v19 + v26;
    v29 = v21 + v28;
    v31 = v23 - (v26 + v30);
    v33 = v25 - (v28 + v32);
    v34 = [(SBElasticValueViewController *)v44 view];
    [v34 bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v53.origin.x = v27;
    v53.origin.y = v29;
    v53.size.width = v31;
    v53.size.height = v33;
    v54.origin.x = v36;
    v54.origin.y = v38;
    v54.size.width = v40;
    v54.size.height = v42;
    if (!CGRectIntersectsRect(v53, v54))
    {
      v43 = [(SBElasticValueViewController *)v44 log];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v43, OS_LOG_TYPE_DEFAULT, "Dismissing immediately due to being visibly offscreen in the base state", buf, 2u);
      }

      [(SBElasticValueViewController *)v44 _actuallyDismiss];
    }
  }

LABEL_20:
}

- (void)_scheduleDismissal:(id)a3
{
  v7 = a3;
  v4 = [(SBElasticValueViewController *)self settings];
  [v4 dismissalInterval];
  v6 = v5;

  [(SBElasticValueViewController *)self _scheduleDismissal:v7 afterInterval:v6];
}

- (void)_scheduleDismissal:(id)a3 afterInterval:(double)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SBElasticValueViewController *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v18 = a4;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "_scheduleDismissal after %fs: %{public}@", buf, 0x16u);
  }

  [(SBElasticValueViewController *)self _invalidateDismissalTimerForReason:@"SCHEDULING NEW DISMISSAL TIMER"];
  v8 = MEMORY[0x277CBEBB8];
  v15 = @"DismissalReason";
  v16 = v6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v10 = [v8 timerWithTimeInterval:self target:sel__dismissalTimerFired_ selector:v9 userInfo:0 repeats:a4];
  dismissalTimer = self->_dismissalTimer;
  self->_dismissalTimer = v10;

  v12 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v12 addTimer:self->_dismissalTimer forMode:*MEMORY[0x277CBE738]];

  v13 = [(SBElasticValueViewController *)self log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = self->_dismissalTimer;
    *buf = 138543362;
    v18 = *&v14;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "_scheduleDismissal's new timer: %{public}@", buf, 0xCu);
  }
}

- (void)_invalidateDismissalTimerForReason:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBElasticValueViewController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSTimer *)self->_dismissalTimer userInfo];
    v7 = [v6 objectForKey:@"DismissalReason"];
    dismissalTimer = self->_dismissalTimer;
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = dismissalTimer;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "_invalidateDismissalTimer; (original dismissal timer reason: '%{public}@') -- invalidating %{public}@ for reason '%{public}@'", &v10, 0x20u);
  }

  [(NSTimer *)self->_dismissalTimer invalidate];
  v9 = self->_dismissalTimer;
  self->_dismissalTimer = 0;
}

- (void)_dismissalTimerFired:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(SBElasticValueViewController *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    dismissalTimer = self->_dismissalTimer;
    v8 = [(NSTimer *)dismissalTimer userInfo];
    v9 = [v8 objectForKey:@"DismissalReason"];
    *buf = 138543618;
    v20 = dismissalTimer;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "_dismissalTimerFired:%{public}@; (original dismissal timer reason: '%{public}@')", buf, 0x16u);
  }

  if (self->_dismissalTimer != v5)
  {
    [(SBElasticValueViewController *)a2 _dismissalTimerFired:?];
  }

  if ([(SBElasticValueViewController *)self isSliderTracking]|| self->_sliderIsEditing || self->_lockState)
  {
    [(SBElasticValueViewController *)self _scheduleDismissal:@"We're tracking / expanded; deferring dismissal timer fire."];
    v10 = [(SBElasticValueViewController *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_dismissalTimer;
      v12 = [(SBElasticValueViewController *)self isSliderTracking];
      *buf = 138543618;
      v20 = v11;
      v21 = 1024;
      LODWORD(v22) = v12;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "_dismissalTimerFired:%{public}@; aborting dismissal; tracking state has us locked down. (isSliderTracking:%{BOOL}u, _lockState:{BOOL}u", buf, 0x12u);
    }
  }

  else
  {
    v13 = [(NSTimer *)v5 userInfo];
    v10 = [v13 objectForKey:@"DismissalReason"];

    [(SBElasticValueViewController *)self _invalidateDismissalTimerForReason:@"DISMISSAL TIMER FIRED; CLEANUP ANY RESIDUAL STATE"];
    objc_initWeak(&location, self);
    v14 = [(SBElasticValueViewController *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v5;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "_dismissalTimerFired:%{public}@; transitioning to base state for dismissal", buf, 0xCu);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__SBElasticValueViewController__dismissalTimerFired___block_invoke;
    v15[3] = &unk_2783B3540;
    objc_copyWeak(&v17, &location);
    v16 = v5;
    [(SBElasticValueViewController *)self transitionToState:0 animated:1 completion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __53__SBElasticValueViewController__dismissalTimerFired___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained && a5)
  {
    v10 = [WeakRetained log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v18 = 138543362;
      v19 = v11;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "_dismissalTimerFired:%{public}@; transitioned to base state for dismissal.", &v18, 0xCu);
    }

    if (a4)
    {
      v12 = [v9 log];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
LABEL_13:

        goto LABEL_14;
      }

      v13 = *(a1 + 32);
      v18 = 138543362;
      v19 = v13;
      v14 = "_dismissalTimerFired:%{public}@; dismissal was cancelled.  Bailing.";
    }

    else
    {
      v15 = [v9 settings];
      v16 = [v15 autoDismiss];

      if (v16)
      {
        [v9 _actuallyDismiss];
      }

      v9[1104] = 0;
      v12 = [v9 log];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v17 = *(a1 + 32);
      v18 = 138543362;
      v19 = v17;
      v14 = "_dismissalTimerFired:%{public}@; dismissal complete.  Mission Accomplished.";
    }

    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, v14, &v18, 0xCu);
    goto LABEL_13;
  }

LABEL_14:
}

- (void)_actuallyDismiss
{
  [(SBElasticValueViewController *)self _stopMonitoringForSliderVisiblyOffscreen];
  v3 = [(SBElasticValueViewController *)self delegate];
  [v3 elasticValueViewControllerNeedsDismissal:self];

  [(SBElasticValueViewController *)self _invalidateDismissalTimerForReason:@"actually dismissing"];
  v4 = [(SBElasticValueViewController *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "_actuallyDismiss -- actually dismissing.", v5, 2u);
  }
}

- (void)_handleShortLongPressGestureRecognizer:(id)a3
{
  if (self->_shortLongPressGestureRecognizer == a3)
  {
    v4 = [a3 state];
    if (v4 != 2)
    {
      if (v4 == 1)
      {
        [(SBElasticValueViewController *)self _noteSliderViewDidBeginTracking];

        [(SBElasticValueViewController *)self transitionToState:3 animated:1 completion:0];
      }

      else
      {

        [(SBElasticValueViewController *)self _noteSliderViewDidEndTracking];
      }
    }
  }
}

- (void)_sliderEditingDidBegin:(id)a3
{
  v4 = a3;
  self->_sliderIsEditing = 1;
  [(SBElasticValueViewController *)self noteContinuousValueInteractionWillBegin];
  if (!self->_sliderApplyValueTimer)
  {
    [(SBElasticValueViewController *)self interactiveValueUpdateDiscontinuityInterval];
    v6 = v5;
    objc_initWeak(&location, self);
    v7 = MEMORY[0x277CBEBB8];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__SBElasticValueViewController__sliderEditingDidBegin___block_invoke;
    v10[3] = &unk_2783AA438;
    objc_copyWeak(&v11, &location);
    v8 = [v7 scheduledTimerWithTimeInterval:1 repeats:v10 block:v6];
    sliderApplyValueTimer = self->_sliderApplyValueTimer;
    self->_sliderApplyValueTimer = v8;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __55__SBElasticValueViewController__sliderEditingDidBegin___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isValid])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v4 = WeakRetained[136];
      if (v4)
      {
        v7 = WeakRetained;
        v5 = v4;
        [v5 floatValue];
        [v7 _changeValue:?];
        v6 = v7[136];
        v7[136] = 0;

        WeakRetained = v7;
      }
    }
  }
}

- (void)_sliderValueDidChange:(id)a3
{
  [a3 value];
  v5 = v4;
  [(SBElasticValueViewController *)self _updateSliderValue:1 animated:?];
  LODWORD(v6) = v5;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  pendingValueToApply = self->_pendingValueToApply;
  self->_pendingValueToApply = v7;
}

- (void)_sliderIndirectInputDidBegin:(id)a3
{
  [(SBElasticValueViewController *)self _invalidateDismissalTimerForReason:@"Button Input Began"];
  if (self->_isRotating)
  {
    v4 = [(SBElasticValueViewController *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "_sliderDidReceiveButtonInput: -- skipping; we're rotating.", buf, 2u);
    }
  }

  else if (![(SBElasticValueViewController *)self isSliderTracking])
  {
    v5 = [(SBElasticValueViewController *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "(_sliderIndirectInputDidBegin) Slider not tracking; forcing contextual transition to state 1 or 2", v6, 2u);
    }

    [(SBElasticValueViewController *)self transitionStateContextuallyForValueChangeEvent];
  }
}

- (void)_sliderIndirectInputDidEnd:(id)a3
{
  if (self->_initialTransitionCompleted)
  {
    [(SBElasticValueViewController *)self _scheduleDismissal:@"Button Input Ended"];
  }
}

- (void)_sliderEditingDidEnd:(id)a3
{
  [(NSTimer *)self->_sliderApplyValueTimer invalidate];
  sliderApplyValueTimer = self->_sliderApplyValueTimer;
  self->_sliderApplyValueTimer = 0;

  pendingValueToApply = self->_pendingValueToApply;
  if (pendingValueToApply)
  {
    v6 = pendingValueToApply;
    [(NSNumber *)v6 floatValue];
    [(SBElasticValueViewController *)self changeValue:1 animated:?];
    v7 = self->_pendingValueToApply;
    self->_pendingValueToApply = 0;
  }

  self->_sliderIsEditing = 0;
  [(SBElasticValueViewController *)self noteContinuousValueInteractionDidEnd];
  [(SBElasticValueViewController *)self currentValue];

  [(SBElasticValueViewController *)self _updateSliderValue:1 animated:0 transitioningStateContextuallyIfNecessary:?];
}

- (void)_noteSliderViewDidBeginTracking
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [(SBElasticValueViewController *)self isSliderTracking];
  ++self->_sliderTrackingCount;
  v4 = [(SBElasticValueViewController *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sliderTrackingCount = self->_sliderTrackingCount;
    v6 = 134217984;
    v7 = sliderTrackingCount;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "_noteSliderViewDidBeginTracking: %lu", &v6, 0xCu);
  }

  if (v3 != [(SBElasticValueViewController *)self isSliderTracking])
  {
    [(SBElasticValueViewController *)self _updateSliderTracking];
  }
}

- (void)_noteSliderViewDidEndTracking
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBElasticValueViewController.m" lineNumber:1258 description:@"_sliderTrackingCount overflow"];
}

- (void)_updateSliderTracking
{
  v3 = [(SBElasticValueViewController *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "_updateSliderTracking", v5, 2u);
  }

  if (![(SBElasticValueViewController *)self isSliderTracking]&& (self->_state + 1) >= 2)
  {
    if (self->_previousState == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    [(SBElasticValueViewController *)self transitionToState:v4 animated:1 completion:0];
  }
}

- (void)_reloadData
{
  self->_isDebugging = [(SBElasticHUDSettings *)self->_settings showDebugUI];
  state = self->_state;
  [(SBFTouchPassThroughView *)self->_sliderContainerView bounds];
  [(SBElasticValueViewController *)self _updateSliderViewMetricsForState:state bounds:?];
  [(SBElasticHUDSettings *)self->_settings legibilityStrength];
  v5 = v4;
  [(_UILegibilityLabel *)self->_trailingLabel setStrength:?];
  [(_UILegibilityLabel *)self->_leadingLabel setStrength:v5];
  v6 = self->_state == 3;

  [(SBElasticValueViewController *)self _updateDimmingVisible:v6];
}

- (void)_refreshDebugUI:(BOOL)a3
{
  v262[2] = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content())
  {
    v5 = [(SBElasticValueViewController *)self settings];
    [v5 showDebugUI];
    IsZero = BSFloatIsZero();
    v7 = [(SBElasticValueViewController *)self view];
    v8 = v7;
    debugContainerView = self->_debugContainerView;
    if (IsZero)
    {
      [v7 sendSubviewToBack:debugContainerView];
    }

    else
    {
      [v7 bringSubviewToFront:debugContainerView];

      if (!a3)
      {
        debugLabel = self->_debugLabel;
        if (!debugLabel)
        {
          v25 = objc_opt_new();
          v26 = self->_debugLabel;
          self->_debugLabel = v25;

          debugLabel = self->_debugLabel;
        }

        [(UILabel *)debugLabel setText:@"LAYING IN WAIT FOR ACTION"];
        v27 = self->_debugLabel;
        v28 = [MEMORY[0x277D75348] whiteColor];
        [(UILabel *)v27 setTextColor:v28];

        v29 = self->_debugLabel;
        v30 = [MEMORY[0x277D75348] blackColor];
        [(UILabel *)v29 setBackgroundColor:v30];

        [(UILabel *)self->_debugLabel sizeToFit];
        [(UILabel *)self->_debugLabel setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UIView *)self->_debugContainerView addSubview:self->_debugLabel];
        debugDumpButton = self->_debugDumpButton;
        if (!debugDumpButton)
        {
          v32 = [MEMORY[0x277D75220] buttonWithType:1];
          v33 = self->_debugDumpButton;
          self->_debugDumpButton = v32;

          debugDumpButton = self->_debugDumpButton;
        }

        [(UIButton *)debugDumpButton setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UIButton *)self->_debugDumpButton setTitle:@"  DUMP TO CONSOLE  " forState:0];
        [(UIButton *)self->_debugDumpButton addTarget:self action:sel__debugDump_ forControlEvents:64];
        v34 = self->_debugDumpButton;
        v35 = [MEMORY[0x277D75348] whiteColor];
        [(UIButton *)v34 setTitleColor:v35 forState:0];

        v36 = self->_debugDumpButton;
        v37 = [MEMORY[0x277D75348] blackColor];
        [(UIButton *)v36 setBackgroundColor:v37];

        [(UIButton *)self->_debugDumpButton _setContinuousCornerRadius:8.0];
        [(UIView *)self->_debugContainerView addSubview:self->_debugDumpButton];
        if (!self->_debugNextAudioRouteButton)
        {
          v38 = [MEMORY[0x277D75220] buttonWithType:1];
          debugNextAudioRouteButton = self->_debugNextAudioRouteButton;
          self->_debugNextAudioRouteButton = v38;
        }

        if (!self->_debugResetAudioRouteButton)
        {
          v40 = [MEMORY[0x277D75220] buttonWithType:1];
          debugResetAudioRouteButton = self->_debugResetAudioRouteButton;
          self->_debugResetAudioRouteButton = v40;
        }

        [(UIButton *)self->_debugNextAudioRouteButton _setContinuousCornerRadius:8.0];
        v42 = self->_debugNextAudioRouteButton;
        v43 = [MEMORY[0x277D75348] darkGrayColor];
        [(UIButton *)v42 setBackgroundColor:v43];

        [(UIButton *)self->_debugNextAudioRouteButton setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UIButton *)self->_debugNextAudioRouteButton setTitle:@"  NEXT ROUTE →  " forState:0];
        v44 = self->_debugNextAudioRouteButton;
        v45 = [MEMORY[0x277D75348] whiteColor];
        [(UIButton *)v44 setTitleColor:v45 forState:0];

        [(UIButton *)self->_debugNextAudioRouteButton addTarget:self action:sel__debugDidTapNextRoute_ forControlEvents:64];
        [(UIButton *)self->_debugResetAudioRouteButton _setContinuousCornerRadius:8.0];
        v46 = self->_debugResetAudioRouteButton;
        v47 = [MEMORY[0x277D75348] darkGrayColor];
        [(UIButton *)v46 setBackgroundColor:v47];

        [(UIButton *)self->_debugResetAudioRouteButton setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UIButton *)self->_debugResetAudioRouteButton setTitle:@"  ↺ RESET ROUTE  " forState:0];
        v48 = self->_debugResetAudioRouteButton;
        v49 = [MEMORY[0x277D75348] whiteColor];
        [(UIButton *)v48 setTitleColor:v49 forState:0];

        [(UIButton *)self->_debugResetAudioRouteButton addTarget:self action:sel__debugDidTapResetRoute_ forControlEvents:64];
        [(UIView *)self->_debugContainerView addSubview:self->_debugNextAudioRouteButton];
        [(UIView *)self->_debugContainerView addSubview:self->_debugResetAudioRouteButton];
        debugStateSegmentedControl = self->_debugStateSegmentedControl;
        if (!debugStateSegmentedControl)
        {
          v51 = objc_alloc(MEMORY[0x277D75A08]);
          v52 = __48__SBElasticValueViewController__refreshDebugUI___block_invoke();
          v53 = [v51 initWithItems:v52];
          v54 = self->_debugStateSegmentedControl;
          self->_debugStateSegmentedControl = v53;

          debugStateSegmentedControl = self->_debugStateSegmentedControl;
        }

        [(UISegmentedControl *)debugStateSegmentedControl sizeToFit];
        [(UISegmentedControl *)self->_debugStateSegmentedControl addTarget:self action:sel__debugChangingStateFromSegmentedControl_ forControlEvents:4096];
        v55 = self->_debugStateSegmentedControl;
        v56 = [MEMORY[0x277D75348] blackColor];
        [(UISegmentedControl *)v55 setBackgroundColor:v56];

        [(UISegmentedControl *)self->_debugStateSegmentedControl setSelectedSegmentIndex:self->_state];
        [(UISegmentedControl *)self->_debugStateSegmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UIView *)self->_debugContainerView addSubview:self->_debugStateSegmentedControl];
        debugAutoDismissalSwitch = self->_debugAutoDismissalSwitch;
        if (!debugAutoDismissalSwitch)
        {
          v58 = objc_alloc_init(MEMORY[0x277D75AE8]);
          v59 = self->_debugAutoDismissalSwitch;
          self->_debugAutoDismissalSwitch = v58;

          debugAutoDismissalSwitch = self->_debugAutoDismissalSwitch;
        }

        [(UISwitch *)debugAutoDismissalSwitch sizeToFit];
        v256 = v5;
        -[UISwitch setOn:](self->_debugAutoDismissalSwitch, "setOn:", [v5 autoDismiss]);
        v60 = self->_debugAutoDismissalSwitch;
        v61 = [MEMORY[0x277D75348] blackColor];
        [(UISwitch *)v60 setBackgroundColor:v61];

        [(UISwitch *)self->_debugAutoDismissalSwitch addTarget:self action:sel__debugAutoDismissalSwitchValueChanged_ forControlEvents:4096];
        [(UISwitch *)self->_debugAutoDismissalSwitch setTranslatesAutoresizingMaskIntoConstraints:0];
        debugAutoDismissLabel = self->_debugAutoDismissLabel;
        if (!debugAutoDismissLabel)
        {
          v63 = objc_opt_new();
          v64 = self->_debugAutoDismissLabel;
          self->_debugAutoDismissLabel = v63;

          debugAutoDismissLabel = self->_debugAutoDismissLabel;
        }

        [(UILabel *)debugAutoDismissLabel setText:@"AutoDismiss"];
        v65 = self->_debugAutoDismissLabel;
        v66 = [MEMORY[0x277D75348] blackColor];
        [(UILabel *)v65 setBackgroundColor:v66];

        v67 = self->_debugAutoDismissLabel;
        v68 = [MEMORY[0x277D75348] whiteColor];
        [(UILabel *)v67 setTextColor:v68];

        [(UILabel *)self->_debugAutoDismissLabel setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UILabel *)self->_debugAutoDismissLabel sizeToFit];
        [(UIView *)self->_debugContainerView addSubview:self->_debugAutoDismissalSwitch];
        [(UIView *)self->_debugContainerView addSubview:self->_debugAutoDismissLabel];
        debugLockStateSwitch = self->_debugLockStateSwitch;
        if (!debugLockStateSwitch)
        {
          v70 = objc_alloc_init(MEMORY[0x277D75AE8]);
          v71 = self->_debugLockStateSwitch;
          self->_debugLockStateSwitch = v70;

          debugLockStateSwitch = self->_debugLockStateSwitch;
        }

        [(UISwitch *)debugLockStateSwitch sizeToFit];
        v72 = self->_debugLockStateSwitch;
        v73 = [MEMORY[0x277D75348] blackColor];
        [(UISwitch *)v72 setBackgroundColor:v73];

        [(UISwitch *)self->_debugLockStateSwitch addTarget:self action:sel__debugLockStateSwitchValueChanged_ forControlEvents:4096];
        [(UISwitch *)self->_debugLockStateSwitch setTranslatesAutoresizingMaskIntoConstraints:0];
        debugLockStateLabel = self->_debugLockStateLabel;
        if (!debugLockStateLabel)
        {
          v75 = objc_opt_new();
          v76 = self->_debugLockStateLabel;
          self->_debugLockStateLabel = v75;

          debugLockStateLabel = self->_debugLockStateLabel;
        }

        [(UILabel *)debugLockStateLabel setText:@"Lock State?"];
        v77 = self->_debugLockStateLabel;
        v78 = [MEMORY[0x277D75348] blackColor];
        [(UILabel *)v77 setBackgroundColor:v78];

        v79 = self->_debugLockStateLabel;
        v80 = [MEMORY[0x277D75348] whiteColor];
        [(UILabel *)v79 setTextColor:v80];

        [(UILabel *)self->_debugLockStateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UILabel *)self->_debugLockStateLabel sizeToFit];
        [(UIView *)self->_debugContainerView addSubview:self->_debugLockStateSwitch];
        [(UIView *)self->_debugContainerView addSubview:self->_debugLockStateLabel];
        if (!self->_debugWidthSlider)
        {
          v81 = objc_opt_new();
          debugWidthSlider = self->_debugWidthSlider;
          self->_debugWidthSlider = v81;
        }

        debugHeightSlider = self->_debugHeightSlider;
        if (!debugHeightSlider)
        {
          v84 = objc_opt_new();
          v85 = self->_debugHeightSlider;
          self->_debugHeightSlider = v84;

          debugHeightSlider = self->_debugHeightSlider;
        }

        v262[0] = self->_debugWidthSlider;
        v262[1] = debugHeightSlider;
        v86 = [MEMORY[0x277CBEA60] arrayWithObjects:v262 count:2];
        v87 = [MEMORY[0x277D75418] currentDevice];
        v88 = [v87 userInterfaceIdiom];

        if ((v88 & 0xFFFFFFFFFFFFFFFBLL) != 1)
        {
          v89 = objc_opt_new();
          debugPortraitYOriginSlider = self->_debugPortraitYOriginSlider;
          self->_debugPortraitYOriginSlider = v89;

          v91 = [v86 arrayByAddingObject:self->_debugPortraitYOriginSlider];

          v86 = v91;
        }

        v259 = 0u;
        v260 = 0u;
        v257 = 0u;
        v258 = 0u;
        v92 = v86;
        v93 = [v92 countByEnumeratingWithState:&v257 objects:v261 count:16];
        if (v93)
        {
          v94 = v93;
          v95 = *v258;
          do
          {
            for (i = 0; i != v94; ++i)
            {
              if (*v258 != v95)
              {
                objc_enumerationMutation(v92);
              }

              v97 = *(*(&v257 + 1) + 8 * i);
              [v97 setTranslatesAutoresizingMaskIntoConstraints:0];
              LODWORD(v98) = 5.0;
              [v97 setMinimumValue:v98];
              LODWORD(v99) = 1140457472;
              [v97 setMaximumValue:v99];
              [v97 addTarget:self action:sel__debugDimensionSliderValueDidChange_ forControlEvents:4096];
            }

            v94 = [v92 countByEnumeratingWithState:&v257 objects:v261 count:16];
          }

          while (v94);
        }

        [(UIView *)self->_debugContainerView addSubview:self->_debugWidthSlider];
        [(UIView *)self->_debugContainerView addSubview:self->_debugHeightSlider];
        v100 = self->_debugPortraitYOriginSlider;
        if (v100)
        {
          v101 = [MEMORY[0x277D759A0] mainScreen];
          [v101 bounds];
          *&v103 = v102;
          [(UISlider *)v100 setMaximumValue:v103];

          [(UIView *)self->_debugContainerView addSubview:self->_debugPortraitYOriginSlider];
        }

        v22 = self->_debugAutoLayoutConstraints;
        v104 = [(UIView *)self->_touchTrackingView layer];
        [v104 setBorderWidth:1.0];

        v105 = [(UIView *)self->_touchTrackingView layer];
        v106 = [MEMORY[0x277D75348] blackColor];
        [v105 setBorderColor:{objc_msgSend(v106, "CGColor")}];

        v107 = [(SBFTouchPassThroughView *)self->_sliderContainerView layer];
        [v107 setBorderWidth:5.0];

        v108 = [(SBFTouchPassThroughView *)self->_sliderContainerView layer];
        v109 = [MEMORY[0x277D75348] systemPinkColor];
        [v108 setBorderColor:{objc_msgSend(v109, "CGColor")}];

        v110 = [(SBFTouchPassThroughView *)self->_sliderContainerView layer];
        v111 = [(SBElasticValueViewController *)self traitCollection];
        [v111 displayCornerRadius];
        [v110 setCornerRadius:?];

        v112 = [(SBFTouchPassThroughView *)self->_sliderContainerView layer];
        v113 = *MEMORY[0x277CDA138];
        [v112 setCornerCurve:*MEMORY[0x277CDA138]];

        v114 = [(SBElasticSliderView *)self->_sliderView layer];
        [v114 setBorderWidth:1.0];

        v115 = [(SBElasticSliderView *)self->_sliderView layer];
        v116 = [MEMORY[0x277D75348] magentaColor];
        [v115 setBorderColor:{objc_msgSend(v116, "CGColor")}];

        v117 = [(UIView *)self->_debugContainerView layer];
        [v117 setBorderWidth:1.0];

        v118 = [(UIView *)self->_debugContainerView layer];
        v119 = [MEMORY[0x277D75348] systemYellowColor];
        [v118 setBorderColor:{objc_msgSend(v119, "CGColor")}];

        v120 = [(UIView *)self->_debugContainerView layer];
        v121 = [(SBElasticValueViewController *)self traitCollection];
        [v121 displayCornerRadius];
        [v120 setCornerRadius:?];

        v122 = [(UIView *)self->_debugContainerView layer];
        [v122 setCornerCurve:v113];

        v123 = [(_UILegibilityLabel *)self->_leadingLabel layer];
        [v123 setBorderWidth:1.0];

        v124 = [(_UILegibilityLabel *)self->_trailingLabel layer];
        [v124 setBorderWidth:1.0];

        v125 = objc_opt_new();
        v126 = [(UISegmentedControl *)self->_debugStateSegmentedControl centerXAnchor];
        v127 = [(UIView *)self->_debugContainerView centerXAnchor];
        v128 = [v126 constraintEqualToAnchor:v127];
        [(NSArray *)v125 addObject:v128];

        v129 = [(UISegmentedControl *)self->_debugStateSegmentedControl centerYAnchor];
        v130 = [(UIView *)self->_debugContainerView centerYAnchor];
        v131 = [v129 constraintEqualToAnchor:v130];
        [(NSArray *)v125 addObject:v131];

        v132 = [(UILabel *)self->_debugLabel centerXAnchor];
        v133 = [(UIView *)self->_debugContainerView centerXAnchor];
        v134 = [v132 constraintEqualToAnchor:v133];
        [(NSArray *)v125 addObject:v134];

        v135 = [(UILabel *)self->_debugLabel leadingAnchor];
        v136 = [(UIView *)self->_debugContainerView leadingAnchor];
        v137 = [v135 constraintGreaterThanOrEqualToAnchor:v136];
        [(NSArray *)v125 addObject:v137];

        v138 = [(UILabel *)self->_debugLabel trailingAnchor];
        v139 = [(UIView *)self->_debugContainerView trailingAnchor];
        v140 = [v138 constraintLessThanOrEqualToAnchor:v139];
        [(NSArray *)v125 addObject:v140];

        v141 = [(UILabel *)self->_debugLabel topAnchor];
        v142 = [(UISegmentedControl *)self->_debugStateSegmentedControl bottomAnchor];
        v143 = [v141 constraintEqualToAnchor:v142 constant:10.0];
        [(NSArray *)v125 addObject:v143];

        v144 = [(UISwitch *)self->_debugAutoDismissalSwitch topAnchor];
        v145 = [(UILabel *)self->_debugLabel bottomAnchor];
        v146 = [v144 constraintEqualToAnchor:v145 constant:10.0];
        [(NSArray *)v125 addObject:v146];

        v147 = [(UISwitch *)self->_debugAutoDismissalSwitch centerXAnchor];
        v148 = [(UIView *)self->_debugContainerView centerXAnchor];
        v149 = [v147 constraintEqualToAnchor:v148];
        [(NSArray *)v125 addObject:v149];

        v150 = [(UISwitch *)self->_debugAutoDismissalSwitch leadingAnchor];
        v151 = [(UIView *)self->_debugContainerView leadingAnchor];
        v152 = [v150 constraintGreaterThanOrEqualToAnchor:v151];
        [(NSArray *)v125 addObject:v152];

        v153 = [(UISwitch *)self->_debugAutoDismissalSwitch widthAnchor];
        v154 = [v153 constraintEqualToConstant:100.0];
        [(NSArray *)v125 addObject:v154];

        v155 = [(UISwitch *)self->_debugAutoDismissalSwitch trailingAnchor];
        v156 = [(UIView *)self->_debugContainerView trailingAnchor];
        v157 = [v155 constraintLessThanOrEqualToAnchor:v156];
        [(NSArray *)v125 addObject:v157];

        v158 = [(UILabel *)self->_debugAutoDismissLabel widthAnchor];
        v159 = [v158 constraintEqualToConstant:200.0];
        [(NSArray *)v125 addObject:v159];

        v160 = [(UILabel *)self->_debugAutoDismissLabel centerYAnchor];
        v161 = [(UISwitch *)self->_debugAutoDismissalSwitch centerYAnchor];
        v162 = [v160 constraintEqualToAnchor:v161];
        [(NSArray *)v125 addObject:v162];

        v163 = [(UILabel *)self->_debugAutoDismissLabel leadingAnchor];
        v164 = [(UIView *)self->_debugContainerView leadingAnchor];
        v165 = [v163 constraintGreaterThanOrEqualToAnchor:v164];
        [(NSArray *)v125 addObject:v165];

        v166 = [(UILabel *)self->_debugAutoDismissLabel trailingAnchor];
        v167 = [(UISwitch *)self->_debugAutoDismissalSwitch leadingAnchor];
        v168 = [v166 constraintLessThanOrEqualToAnchor:v167 constant:-50.0];
        [(NSArray *)v125 addObject:v168];

        v169 = [(UISwitch *)self->_debugLockStateSwitch topAnchor];
        v170 = [(UISwitch *)self->_debugAutoDismissalSwitch bottomAnchor];
        v171 = [v169 constraintEqualToAnchor:v170 constant:10.0];
        [(NSArray *)v125 addObject:v171];

        v172 = [(UISwitch *)self->_debugLockStateSwitch centerXAnchor];
        v173 = [(UIView *)self->_debugContainerView centerXAnchor];
        v174 = [v172 constraintEqualToAnchor:v173];
        [(NSArray *)v125 addObject:v174];

        v175 = [(UISwitch *)self->_debugLockStateSwitch widthAnchor];
        v176 = [v175 constraintEqualToConstant:100.0];
        [(NSArray *)v125 addObject:v176];

        v177 = [(UISwitch *)self->_debugLockStateSwitch leadingAnchor];
        v178 = [(UIView *)self->_debugContainerView leadingAnchor];
        v179 = [v177 constraintGreaterThanOrEqualToAnchor:v178];
        [(NSArray *)v125 addObject:v179];

        v180 = [(UISwitch *)self->_debugLockStateSwitch trailingAnchor];
        v181 = [(UIView *)self->_debugContainerView trailingAnchor];
        v182 = [v180 constraintLessThanOrEqualToAnchor:v181];
        [(NSArray *)v125 addObject:v182];

        v183 = [(UILabel *)self->_debugLockStateLabel widthAnchor];
        v184 = [v183 constraintEqualToConstant:200.0];
        [(NSArray *)v125 addObject:v184];

        v185 = [(UILabel *)self->_debugLockStateLabel centerYAnchor];
        v186 = [(UISwitch *)self->_debugLockStateSwitch centerYAnchor];
        v187 = [v185 constraintEqualToAnchor:v186];
        [(NSArray *)v125 addObject:v187];

        v188 = [(UILabel *)self->_debugLockStateLabel leadingAnchor];
        v189 = [(UIView *)self->_debugContainerView leadingAnchor];
        v190 = [v188 constraintGreaterThanOrEqualToAnchor:v189];
        [(NSArray *)v125 addObject:v190];

        v191 = [(UILabel *)self->_debugLockStateLabel trailingAnchor];
        v192 = [(UISwitch *)self->_debugLockStateSwitch leadingAnchor];
        v193 = [v191 constraintLessThanOrEqualToAnchor:v192 constant:-50.0];
        [(NSArray *)v125 addObject:v193];

        v194 = [(UISlider *)self->_debugWidthSlider topAnchor];
        v195 = [(UILabel *)self->_debugLockStateLabel bottomAnchor];
        v196 = [v194 constraintEqualToAnchor:v195 constant:30.0];
        [(NSArray *)v125 addObject:v196];

        v197 = [(UISlider *)self->_debugWidthSlider centerXAnchor];
        v198 = [(UIView *)self->_debugContainerView centerXAnchor];
        v199 = [v197 constraintEqualToAnchor:v198];
        [(NSArray *)v125 addObject:v199];

        v200 = [(UISlider *)self->_debugWidthSlider widthAnchor];
        v201 = [v200 constraintEqualToConstant:300.0];
        [(NSArray *)v125 addObject:v201];

        v202 = [(UISlider *)self->_debugWidthSlider leadingAnchor];
        v203 = [(UIView *)self->_debugContainerView leadingAnchor];
        v204 = [v202 constraintGreaterThanOrEqualToAnchor:v203];
        [(NSArray *)v125 addObject:v204];

        v205 = [(UISlider *)self->_debugWidthSlider trailingAnchor];
        v206 = [(UIView *)self->_debugContainerView trailingAnchor];
        v207 = [v205 constraintLessThanOrEqualToAnchor:v206];
        [(NSArray *)v125 addObject:v207];

        v208 = [(UISlider *)self->_debugHeightSlider topAnchor];
        v209 = [(UISlider *)self->_debugWidthSlider bottomAnchor];
        v210 = [v208 constraintEqualToAnchor:v209 constant:30.0];
        [(NSArray *)v125 addObject:v210];

        v211 = [(UISlider *)self->_debugHeightSlider centerXAnchor];
        v212 = [(UIView *)self->_debugContainerView centerXAnchor];
        v213 = [v211 constraintEqualToAnchor:v212];
        [(NSArray *)v125 addObject:v213];

        v214 = [(UISlider *)self->_debugHeightSlider widthAnchor];
        v215 = [v214 constraintEqualToConstant:300.0];
        [(NSArray *)v125 addObject:v215];

        v216 = [(UISlider *)self->_debugHeightSlider leadingAnchor];
        v217 = [(UIView *)self->_debugContainerView leadingAnchor];
        v218 = [v216 constraintGreaterThanOrEqualToAnchor:v217];
        [(NSArray *)v125 addObject:v218];

        v219 = [(UISlider *)self->_debugHeightSlider trailingAnchor];
        v220 = [(UIView *)self->_debugContainerView trailingAnchor];
        v221 = [v219 constraintLessThanOrEqualToAnchor:v220];
        [(NSArray *)v125 addObject:v221];

        v222 = self->_debugPortraitYOriginSlider;
        if (v222)
        {
          v223 = [(UISlider *)v222 topAnchor];
          v224 = [(UISlider *)self->_debugHeightSlider bottomAnchor];
          v225 = [v223 constraintEqualToAnchor:v224 constant:30.0];
          [(NSArray *)v125 addObject:v225];

          v226 = [(UISlider *)self->_debugPortraitYOriginSlider centerXAnchor];
          v227 = [(UIView *)self->_debugContainerView centerXAnchor];
          v228 = [v226 constraintEqualToAnchor:v227];
          [(NSArray *)v125 addObject:v228];

          v229 = [(UISlider *)self->_debugPortraitYOriginSlider widthAnchor];
          v230 = [v229 constraintEqualToConstant:300.0];
          [(NSArray *)v125 addObject:v230];

          v231 = [(UISlider *)self->_debugPortraitYOriginSlider leadingAnchor];
          v232 = [(UIView *)self->_debugContainerView leadingAnchor];
          v233 = [v231 constraintGreaterThanOrEqualToAnchor:v232];
          [(NSArray *)v125 addObject:v233];

          v234 = [(UISlider *)self->_debugPortraitYOriginSlider trailingAnchor];
          v235 = [(UIView *)self->_debugContainerView trailingAnchor];
          v236 = [v234 constraintLessThanOrEqualToAnchor:v235];
          [(NSArray *)v125 addObject:v236];
        }

        v237 = [(UIButton *)self->_debugDumpButton centerXAnchor];
        v238 = [(UISegmentedControl *)self->_debugStateSegmentedControl centerXAnchor];
        v239 = [v237 constraintEqualToAnchor:v238];
        [(NSArray *)v125 addObject:v239];

        v240 = [(UIButton *)self->_debugDumpButton centerYAnchor];
        v241 = [(UISegmentedControl *)self->_debugStateSegmentedControl centerYAnchor];
        v242 = [v240 constraintEqualToAnchor:v241 constant:-50.0];
        [(NSArray *)v125 addObject:v242];

        v243 = [(UIButton *)self->_debugResetAudioRouteButton centerXAnchor];
        v244 = [(UISegmentedControl *)self->_debugStateSegmentedControl centerXAnchor];
        v245 = [v243 constraintEqualToAnchor:v244];
        [(NSArray *)v125 addObject:v245];

        v246 = [(UIButton *)self->_debugResetAudioRouteButton centerYAnchor];
        v247 = [(UIButton *)self->_debugDumpButton centerYAnchor];
        v248 = [v246 constraintEqualToAnchor:v247 constant:-40.0];
        [(NSArray *)v125 addObject:v248];

        v249 = [(UIButton *)self->_debugNextAudioRouteButton centerXAnchor];
        v250 = [(UISegmentedControl *)self->_debugStateSegmentedControl centerXAnchor];
        v251 = [v249 constraintEqualToAnchor:v250];
        [(NSArray *)v125 addObject:v251];

        v252 = [(UIButton *)self->_debugNextAudioRouteButton centerYAnchor];
        v253 = [(UIButton *)self->_debugResetAudioRouteButton centerYAnchor];
        v254 = [v252 constraintEqualToAnchor:v253 constant:-40.0];
        [(NSArray *)v125 addObject:v254];

        debugAutoLayoutConstraints = self->_debugAutoLayoutConstraints;
        self->_debugAutoLayoutConstraints = v125;
        v23 = v125;

        [MEMORY[0x277CCAAD0] activateConstraints:self->_debugAutoLayoutConstraints];
        v5 = v256;
        goto LABEL_42;
      }
    }

    [(UILabel *)self->_debugLabel removeFromSuperview];
    v10 = self->_debugLabel;
    self->_debugLabel = 0;

    [(UIButton *)self->_debugDumpButton removeFromSuperview];
    v11 = self->_debugDumpButton;
    self->_debugDumpButton = 0;

    [(UIButton *)self->_debugNextAudioRouteButton removeFromSuperview];
    [(UIButton *)self->_debugResetAudioRouteButton removeFromSuperview];
    v12 = self->_debugNextAudioRouteButton;
    self->_debugNextAudioRouteButton = 0;

    v13 = self->_debugResetAudioRouteButton;
    self->_debugResetAudioRouteButton = 0;

    [(UISegmentedControl *)self->_debugStateSegmentedControl removeFromSuperview];
    v14 = self->_debugStateSegmentedControl;
    self->_debugStateSegmentedControl = 0;

    [(UILabel *)self->_debugAutoDismissLabel removeFromSuperview];
    v15 = self->_debugAutoDismissLabel;
    self->_debugAutoDismissLabel = 0;

    [(UISwitch *)self->_debugAutoDismissalSwitch removeFromSuperview];
    v16 = self->_debugAutoDismissalSwitch;
    self->_debugAutoDismissalSwitch = 0;

    [(UILabel *)self->_debugLockStateLabel removeFromSuperview];
    v17 = self->_debugLockStateLabel;
    self->_debugLockStateLabel = 0;

    [(UISwitch *)self->_debugLockStateSwitch removeFromSuperview];
    v18 = self->_debugLockStateSwitch;
    self->_debugLockStateSwitch = 0;

    [(UISlider *)self->_debugHeightSlider removeFromSuperview];
    v19 = self->_debugHeightSlider;
    self->_debugHeightSlider = 0;

    [(UISlider *)self->_debugWidthSlider removeFromSuperview];
    v20 = self->_debugWidthSlider;
    self->_debugWidthSlider = 0;

    [(UISlider *)self->_debugPortraitYOriginSlider removeFromSuperview];
    v21 = self->_debugPortraitYOriginSlider;
    self->_debugPortraitYOriginSlider = 0;

    v22 = self->_debugAutoLayoutConstraints;
    [MEMORY[0x277CCAAD0] deactivateConstraints:v22];
    v23 = self->_debugAutoLayoutConstraints;
    self->_debugAutoLayoutConstraints = 0;
LABEL_42:
  }
}

id __48__SBElasticValueViewController__refreshDebugUI___block_invoke()
{
  v0 = objc_opt_new();
  for (i = 0; i != 5; ++i)
  {
    v2 = NSStringFromSBElasticValueState(i);
    [v0 addObject:v2];
  }

  return v0;
}

- (void)_updateDebugString:(id)a3
{
  [(UILabel *)self->_debugLabel setText:a3];
  debugLabel = self->_debugLabel;

  [(UILabel *)debugLabel sizeToFit];
}

- (void)_debugDump:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [(SBElasticHUDSettings *)self->_settings performSelector:sel__ivarDescription];
  v5 = [(SBElasticValueViewController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "ELASTIC HUD DUMP: %@", &v11, 0xCu);
  }

  v6 = MEMORY[0x277CBEBC0];
  v7 = NSTemporaryDirectory();
  v8 = [v6 fileURLWithPath:v7];
  v9 = [v8 URLByAppendingPathComponent:@"ElasticHUD.dump"];

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  [v10 removeItemAtURL:v9 error:0];

  [v4 writeToURL:v9 atomically:1 encoding:4 error:0];
}

- (void)_debugDidTapNextRoute:(id)a3
{
  [(SBElasticValueViewController *)self _debugHandleNextRoute];
  [(SBElasticValueViewController *)self _invalidateDismissalTimerForReason:@"DEBUG NEXT ROUTE"];

  [(SBElasticValueViewController *)self reloadData];
}

- (void)_debugDidTapResetRoute:(id)a3
{
  [(SBElasticValueViewController *)self _debugHandleResetRoute];

  [(SBElasticValueViewController *)self reloadData];
}

- (void)_debugChangingStateFromSegmentedControl:(id)a3
{
  v4 = [a3 selectedSegmentIndex];

  [(SBElasticValueViewController *)self transitionToState:v4 animated:1 completion:0];
}

- (void)_debugAutoDismissalSwitchValueChanged:(id)a3
{
  v5 = a3;
  v6 = NSStringFromSelector(a2);
  [(SBElasticValueViewController *)self _invalidateDismissalTimerForReason:v6];

  v7 = [(SBElasticValueViewController *)self settings];
  [v7 setAutoDismiss:{objc_msgSend(v5, "isOn")}];

  LODWORD(v7) = [v5 isOn];
  if (v7 && !self->_state)
  {

    [(SBElasticValueViewController *)self _actuallyDismiss];
  }
}

- (void)_debugLockStateSwitchValueChanged:(id)a3
{
  v5 = a3;
  v6 = NSStringFromSelector(a2);
  [(SBElasticValueViewController *)self _invalidateDismissalTimerForReason:v6];

  LODWORD(v6) = [v5 isOn];
  self->_lockState = v6;
  [(UISegmentedControl *)self->_debugStateSegmentedControl setEnabled:v6 ^ 1];

  [(SBElasticValueViewController *)self _scheduleDismissal:@"RESUME AFTER DEBUGGING LOCK"];
}

- (void)_debugDimensionSliderValueDidChange:(id)a3
{
  v20 = a3;
  v4 = [(SBElasticValueViewController *)self settings];
  state = self->_state;
  v6 = [(SBElasticValueViewController *)self axis];
  if (!v6)
  {
    goto LABEL_40;
  }

  if (self->_debugHeightSlider == v20)
  {
    if (state > 2)
    {
      if (state == 3)
      {
        if (v6 == 1)
        {
          [(UISlider *)v20 value];
          [v4 setLandscapeState3Height:v16];
        }

        else if (v6 == 2)
        {
          [(UISlider *)v20 value];
          [v4 setPortraitState3Height:v13];
        }

        goto LABEL_40;
      }

      if (state != 4)
      {
        goto LABEL_40;
      }
    }

    else if (state >= 2)
    {
      if (state == 2)
      {
        if (v6 == 1)
        {
          [(UISlider *)v20 value];
          [v4 setLandscapeState2Height:v17];
        }

        else if (v6 == 2)
        {
          [(UISlider *)v20 value];
          [v4 setPortraitState2Height:v8];
        }
      }

      goto LABEL_40;
    }

    if (v6 == 1)
    {
      [(UISlider *)v20 value];
      [v4 setLandscapeState1Height:v12];
    }

    else if (v6 == 2)
    {
      [(UISlider *)v20 value];
      [v4 setPortraitState1Height:v10];
    }

    goto LABEL_40;
  }

  if (self->_debugWidthSlider != v20)
  {
    if (self->_debugPortraitYOriginSlider)
    {
      [(UISlider *)v20 value];
      [v4 setVolumeButtonsCenterY:v7];
    }

    goto LABEL_40;
  }

  if (state <= 2)
  {
    if (state >= 2)
    {
      if (state == 2)
      {
        if (v6 == 1)
        {
          [(UISlider *)v20 value];
          [v4 setLandscapeState2Width:v19];
        }

        else if (v6 == 2)
        {
          [(UISlider *)v20 value];
          [v4 setPortraitState2Width:v9];
        }
      }

      goto LABEL_40;
    }

    goto LABEL_25;
  }

  if (state != 3)
  {
    if (state != 4)
    {
      goto LABEL_40;
    }

LABEL_25:
    if (v6 == 1)
    {
      [(UISlider *)v20 value];
      [v4 setLandscapeState1Width:v14];
    }

    else if (v6 == 2)
    {
      [(UISlider *)v20 value];
      [v4 setPortraitState1Width:v11];
    }

    goto LABEL_40;
  }

  if (v6 == 1)
  {
    [(UISlider *)v20 value];
    [v4 setLandscapeState3Width:v18];
  }

  else if (v6 == 2)
  {
    [(UISlider *)v20 value];
    [v4 setPortraitState3Width:v15];
  }

LABEL_40:
}

- (void)_updateLiveRenderingAssertion
{
  v26[3] = *MEMORY[0x277D85DE8];
  v3 = [(SBElasticValueViewController *)self viewIfLoaded];
  v4 = [v3 window];
  v5 = [v4 windowScene];

  if (v5)
  {
    v6 = [(SBElasticValueViewController *)self _appearState]!= 0;
  }

  else
  {
    v6 = 0;
  }

  liveRenderingAssertion = self->_liveRenderingAssertion;
  v8 = [(BLSAssertion *)liveRenderingAssertion isAcquired];
  v9 = v8;
  if (v6 && (v8 & 1) == 0)
  {
    v10 = [(SBElasticValueViewController *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = self;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "%@ is requesting live rendering", &v22, 0xCu);
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [(BLSAssertion *)self->_liveRenderingAssertion invalidate];
    v13 = MEMORY[0x277CF0868];
    v14 = [MEMORY[0x277CF09A8] requestLiveUpdatingForScene:v5];
    v26[0] = v14;
    v15 = [MEMORY[0x277CF09B0] requestUnrestrictedFramerateForScene:v5];
    v26[1] = v15;
    v16 = [MEMORY[0x277CF09E8] ignoreWhenBacklightInactivates];
    v26[2] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
    v18 = [v13 acquireWithExplanation:v12 observer:0 attributes:v17];
    v19 = self->_liveRenderingAssertion;
    self->_liveRenderingAssertion = v18;

LABEL_16:
    goto LABEL_17;
  }

  if (liveRenderingAssertion)
  {
    v20 = v6;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    v21 = [(SBElasticValueViewController *)self log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412546;
      v23 = self;
      v24 = 1024;
      v25 = v9;
      _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_INFO, "%@ is relinquishing live rendering (was acquired: %{BOOL}u)", &v22, 0x12u);
    }

    [(BLSAssertion *)self->_liveRenderingAssertion invalidate];
    v12 = self->_liveRenderingAssertion;
    self->_liveRenderingAssertion = 0;
    goto LABEL_16;
  }

LABEL_17:
}

- (CGSize)maximumSizeForSlider
{
  [(SBElasticValueViewController *)self sizeForState:3];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeForState:(int64_t)a3
{
  v5 = [(SBElasticValueViewController *)self axis];
  v6 = [(SBElasticValueViewController *)self settings];
  v7 = v6;
  if (v5 != 2)
  {
    if (v5 != 1)
    {
      goto LABEL_20;
    }

    if (a3 > 2)
    {
      if (a3 == 3)
      {
        [v6 landscapeState3Width];
        [v7 landscapeState3Height];
        goto LABEL_20;
      }

      if (a3 != 4)
      {
        goto LABEL_20;
      }
    }

    else if (a3 >= 2)
    {
      if (a3 == 2)
      {
        [v6 landscapeState2Width];
        [v7 landscapeState2Height];
      }

      goto LABEL_20;
    }

    [v6 landscapeState1Width];
    [v7 landscapeState1Height];
    goto LABEL_20;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      [v6 portraitState3Width];
      [v7 portraitState3Height];
      goto LABEL_20;
    }

    if (a3 != 4)
    {
      goto LABEL_20;
    }

LABEL_17:
    [v6 portraitState1Width];
    [v7 portraitState1Height];
    goto LABEL_20;
  }

  if (a3 < 2)
  {
    goto LABEL_17;
  }

  if (a3 == 2)
  {
    [v6 portraitState2Width];
    [v7 portraitState2Height];
  }

LABEL_20:
  if (!self->_reduceMotionEnabled)
  {
    if (a3 == 4)
    {
      [(SBElasticHUDSettings *)self->_settings deflatedScaleFactor];
    }

    else if (!a3)
    {
      [(SBElasticHUDSettings *)self->_settings baseScaleFactor];
    }
  }

  v8 = [(SBElasticValueViewController *)self traitCollection];
  [v8 displayScale];

  BSSizeRoundForScale();
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGPoint)centerForState:(int64_t)a3 sliderSize:(CGSize)a4 bounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = [(SBElasticValueViewController *)self axis];
  v12 = [(SBElasticValueViewController *)self settings];
  v13 = v12;
  if (a3 == 3)
  {
    v16 = height;
  }

  else
  {
    if (a3 != 2)
    {
      if (!a3 && !self->_reduceMotionEnabled)
      {
        [v12 offscreenTopMargin];
        [v13 offscreenLeadingMargin];
        [v13 volumeButtonsCenterY];
        if (v11 == 1)
        {
          v28.origin.x = x;
          v28.origin.y = y;
          v28.size.width = width;
          v28.size.height = height;
          CGRectGetMidX(v28);
        }

        goto LABEL_18;
      }

LABEL_9:
      v16 = height;
      goto LABEL_12;
    }

    if (v11 == 1)
    {
      v14 = [MEMORY[0x277D75418] currentDevice];
      v15 = [v14 userInterfaceIdiom];

      if ((v15 & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        v16 = height;
LABEL_14:
        [v13 onscreenTopMargin];
        v29.origin.x = x;
        v29.origin.y = y;
        v29.size.width = width;
        v29.size.height = v16;
        CGRectGetMidX(v29);
        v17 = [MEMORY[0x277D75418] currentDevice];
        v18 = [v17 userInterfaceIdiom];

        if ((v18 & 0xFFFFFFFFFFFFFFFBLL) != 1 && ([(SBElasticValueViewController *)self hudPresentationOrientation]- 1) <= 1)
        {
          v19 = [(SBElasticValueViewController *)self view];
          [v19 safeAreaInsets];
        }

        goto LABEL_18;
      }

      goto LABEL_9;
    }

    v16 = height;
  }

LABEL_12:
  if (v11 == 2)
  {
    [v13 onscreenLeadingMargin];
    [v13 volumeButtonsCenterY];
    goto LABEL_18;
  }

  if (v11 == 1)
  {
    goto LABEL_14;
  }

LABEL_18:
  v20 = [(SBElasticValueViewController *)self traitCollection];
  [v20 displayScale];

  BSRectWithSize();
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  v22 = v21;
  v24 = v23;

  v25 = v22;
  v26 = v24;
  result.y = v26;
  result.x = v25;
  return result;
}

- (double)glyphScaleForState:(int64_t)a3
{
  v5 = [(SBElasticValueViewController *)self settings];
  v6 = v5;
  v7 = 1.17549435e-38;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v7 = 1.0;
      }

      goto LABEL_15;
    }

    [v5 baseScaleFactor];
LABEL_10:
    v7 = v8;
    goto LABEL_15;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      goto LABEL_15;
    }

    [(SBElasticHUDSettings *)self->_settings deflatedScaleFactor];
    goto LABEL_10;
  }

  if ([(SBElasticValueViewController *)self axis]== 2)
  {
    [v6 portraitState3Width];
    v10 = v9;
    [v6 portraitState1Width];
  }

  else
  {
    [v6 landscapeState3Height];
    v10 = v12;
    [v6 landscapeState1Height];
  }

  v7 = v10 / v11;
LABEL_15:

  return v7;
}

- (BOOL)_computeCachedRouteDisplayInformation
{
  v7 = 0;
  v3 = [(SBElasticValueViewController *)self updateActiveRouteDisplay:&v7];
  v4 = v7;
  v5 = v7;
  if (v3)
  {
    objc_storeStrong(&self->_routeDisplayInfo, v4);
  }

  return v3;
}

- (void)_updateGlyphStateIfNecessaryForValue:(float *)a3
{
  v5 = [(SBElasticRouteDisplaying *)self->_routeDisplayInfo glyphStateValueTransformer];
  if (v5)
  {
    if (a3)
    {
      v6.n128_f32[0] = *a3;
    }

    else
    {
      [(SBElasticValueViewController *)self currentValue];
    }

    v7 = v5[2](v5, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [(CCUIBaseSliderView *)self->_sliderView setGlyphState:v7];
}

- (void)_updateLabelsForAxis:(unint64_t)a3
{
  v34[1] = *MEMORY[0x277D85DE8];
  if (__sb__runningInSpringBoard())
  {
    v5 = (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1) && ([(SBElasticValueViewController *)self hudPresentationOrientation]- 1) < 2;
  }

  else
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    if ([v6 userInterfaceIdiom])
    {
      v5 = 0;
    }

    else
    {
      v5 = ([(SBElasticValueViewController *)self hudPresentationOrientation]- 1) < 2;
    }
  }

  if (!self->_routeDisplayInfo)
  {
    goto LABEL_14;
  }

  v7 = [(CCUIBaseSliderView *)self->_sliderView glyphPackageDescription];
  if (v7)
  {

    goto LABEL_15;
  }

  v8 = [(CCUIBaseSliderView *)self->_sliderView glyphImage];

  if (!v8)
  {
LABEL_14:
    [(SBElasticValueViewController *)self _computeCachedRouteDisplayInformation];
    sliderView = self->_sliderView;
    v10 = [(SBElasticRouteDisplaying *)self->_routeDisplayInfo glyphImage];
    [(CCUIBaseSliderView *)sliderView setGlyphImage:v10];

    v11 = self->_sliderView;
    v12 = [(SBElasticRouteDisplaying *)self->_routeDisplayInfo glyphPackage];
    [(CCUIBaseSliderView *)v11 setGlyphPackageDescription:v12];

    [(SBElasticValueViewController *)self _updateGlyphStateIfNecessaryForValue:0];
  }

LABEL_15:
  v13 = [(SBElasticValueViewController *)self overrideDisplayNameForRoute:self->_routeDisplayInfo];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [(SBElasticRouteDisplaying *)self->_routeDisplayInfo localizedDisplayName];
  }

  v16 = v15;
  v17 = 2;
  if (v5)
  {
    v17 = 4;
  }

  if (a3 == 1)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  [(SBElasticSliderView *)self->_sliderView setAccessoryLayoutEdge:v18];
  v19 = [(SBElasticValueViewController *)self traitCollection];
  [v19 displayScale];

  v20 = [(_UILegibilityLabel *)self->_trailingLabel string];
  v21 = BSEqualStrings();

  v22 = MEMORY[0x277D740A8];
  if ((v21 & 1) == 0)
  {
    v33 = *MEMORY[0x277D740A8];
    v23 = [(_UILegibilityLabel *)self->_trailingLabel font];
    v34[0] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    [0 sizeWithAttributes:v24];

    BSSizeCeilForScale();
    trailingLabel = self->_trailingLabel;
    BSRectWithSize();
    [(_UILegibilityLabel *)trailingLabel setBounds:?];
    [(_UILegibilityLabel *)self->_trailingLabel setString:0];
    [(SBElasticSliderView *)self->_sliderView setNeedsLayout];
  }

  v26 = [(_UILegibilityLabel *)self->_leadingLabel string];
  v27 = BSEqualStrings();

  if ((v27 & 1) == 0)
  {
    v31 = *v22;
    v28 = [(_UILegibilityLabel *)self->_leadingLabel font];
    v32 = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    [v16 sizeWithAttributes:v29];

    BSSizeCeilForScale();
    leadingLabel = self->_leadingLabel;
    BSRectWithSize();
    [(_UILegibilityLabel *)leadingLabel setBounds:?];
    [(_UILegibilityLabel *)self->_leadingLabel setString:v16];
    [(SBElasticSliderView *)self->_sliderView setNeedsLayout];
  }
}

- (void)_updateDimmingVisible:(BOOL)a3
{
  v3 = a3;
  settings = self->_settings;
  v5 = self->_dimmingView;
  [(SBElasticHUDSettings *)settings dimmingAlpha];
  v7 = v6;
  if (v3)
  {
    v8 = [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  v9 = [v8 colorWithAlphaComponent:v7];
  [(UIView *)v5 setBackgroundColor:v9];
}

- (void)_updateSliderViewMetricsForState:(int64_t)a3 bounds:(CGRect)a4
{
  v7 = 0;
  v8 = 0;
  [(SBElasticValueViewController *)self _sliderViewMetricsUpdatersForState:a3 bounds:&v8 primaryMetricsUpdater:&v7 positionUpdater:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  v5 = MEMORY[0x223D6F7F0](v8);
  v6 = MEMORY[0x223D6F7F0](v7);
  (v5)[2](v5, self->_sliderView);
  (v6)[2](v6, self->_sliderView);
}

- (void)_sliderViewMetricsUpdatersForState:(int64_t)a3 bounds:(CGRect)a4 primaryMetricsUpdater:(id *)a5 positionUpdater:(id *)a6
{
  previousState = self->_previousState;
  if (a3 || !self->_reduceMotionEnabled)
  {
    v12 = previousState == 2;
  }

  else
  {
    if (previousState != -1)
    {
      if (a5)
      {
        *a5 = &__block_literal_global_226_0;
      }

      if (a6)
      {
        v11 = &__block_literal_global_228_0;
LABEL_17:
        *a6 = v11;
        return;
      }

      return;
    }

    v12 = 0;
  }

  v13 = a3 == 0;
  v14 = v13 && v12;
  if (v13 && v12)
  {
    v15 = 2;
  }

  else
  {
    v15 = a3;
  }

  [(SBElasticValueViewController *)self glyphScaleForState:a3];
  v17 = v16;
  [(SBElasticValueViewController *)self sizeForState:v15];
  v19 = v18;
  v21 = v20;
  [SBElasticValueViewController centerForState:"centerForState:sliderSize:bounds:" sliderSize:a3 bounds:?];
  v23 = v22;
  v25 = v24;
  if (a5)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __112__SBElasticValueViewController__sliderViewMetricsUpdatersForState_bounds_primaryMetricsUpdater_positionUpdater___block_invoke_3;
    v27[3] = &__block_descriptor_57_e29_v16__0__SBElasticSliderView_8l;
    v28 = v14;
    v27[4] = v17;
    v27[5] = v19;
    v27[6] = v21;
    *a5 = MEMORY[0x223D6F7F0](v27);
  }

  if (a6)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __112__SBElasticValueViewController__sliderViewMetricsUpdatersForState_bounds_primaryMetricsUpdater_positionUpdater___block_invoke_4;
    v26[3] = &__block_descriptor_48_e29_v16__0__SBElasticSliderView_8l;
    v26[4] = v23;
    v26[5] = v25;
    v11 = MEMORY[0x223D6F7F0](v26);
    goto LABEL_17;
  }
}

void __112__SBElasticValueViewController__sliderViewMetricsUpdatersForState_bounds_primaryMetricsUpdater_positionUpdater___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(a1 + 56) & 1) == 0)
  {
    [v3 setAdditiveGlyphScaleFactor:*(a1 + 32)];
  }

  BSRectWithSize();
  [v3 setBounds:?];
}

- (void)_updateTouchTrackingArea
{
  [(SBElasticSliderView *)self->_sliderView center];
  [(SBElasticValueViewController *)self maximumSizeForSlider];
  [(SBElasticValueViewController *)self axis];
  [(SBElasticSliderView *)self->_sliderView frame];
  v4 = v3;
  v27 = v5;
  v28 = v6;
  v26 = v7;
  BSRectWithSize();
  SBUnintegralizedRectCenteredAboutPoint();
  v12 = v9;
  v13 = v10;
  v14 = v11;
  if (self->_state)
  {
    if (v8 < 0.0)
    {
      v8 = 0.0;
    }

    if (v9 < 0.0)
    {
      v12 = 0.0;
    }
  }

  v15 = v12;
  v16 = v8;
  v22 = v8;
  MinY = CGRectGetMinY(*&v8);
  v30.origin.x = v4;
  v30.origin.y = v27;
  v30.size.width = v28;
  v30.size.height = v26;
  v25 = MinY - CGRectGetMinY(v30);
  v31.origin.x = v16;
  v31.origin.y = v12;
  v31.size.width = v13;
  v31.size.height = v14;
  MinX = CGRectGetMinX(v31);
  v32.origin.x = v4;
  v32.origin.y = v27;
  v32.size.width = v28;
  v32.size.height = v26;
  v23 = MinX - CGRectGetMinX(v32);
  v33.origin.x = v4;
  v33.origin.y = v27;
  v33.size.width = v28;
  v33.size.height = v26;
  MaxY = CGRectGetMaxY(v33);
  v34.origin.x = v22;
  v34.origin.y = v12;
  v34.size.width = v13;
  v34.size.height = v14;
  v21 = MaxY - CGRectGetMaxY(v34);
  v35.origin.x = v4;
  v35.origin.y = v27;
  v35.size.width = v28;
  v35.size.height = v26;
  MaxX = CGRectGetMaxX(v35);
  v36.origin.x = v22;
  v36.origin.y = v12;
  v36.size.width = v13;
  v36.size.height = v14;
  v19 = MaxX - CGRectGetMaxX(v36);
  [(SBElasticSliderView *)self->_sliderView _setTouchInsets:v25, v23, v21, v19];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __56__SBElasticValueViewController__updateTouchTrackingArea__block_invoke;
  v29[3] = &unk_2783AC828;
  v29[4] = self;
  *&v29[5] = v4 + v23;
  *&v29[6] = v27 + v25;
  *&v29[7] = v28 - (v23 + v19);
  *&v29[8] = v26 - (v25 + v21);
  [MEMORY[0x277D75D18] performWithoutAnimation:v29];
}

- (void)_updateDebugUIPositions
{
  v9 = [(SBElasticValueViewController *)self sliderView];
  if (([(UISlider *)self->_debugWidthSlider isTracking]& 1) == 0)
  {
    [v9 bounds];
    *&v4 = v3;
    [(UISlider *)self->_debugWidthSlider setValue:v4];
  }

  if (([(UISlider *)self->_debugHeightSlider isTracking]& 1) == 0)
  {
    [v9 bounds];
    *&v6 = v5;
    [(UISlider *)self->_debugHeightSlider setValue:v6];
  }

  if (([(UISlider *)self->_debugPortraitYOriginSlider isTracking]& 1) == 0)
  {
    [v9 center];
    *&v8 = v7;
    [(UISlider *)self->_debugPortraitYOriginSlider setValue:v8];
  }
}

- (void)_updateSliderWithAxis:(unint64_t)a3
{
  v15 = [(SBElasticValueViewController *)self sliderView];
  [v15 setAxis:a3];
  v5 = [(SBElasticValueViewController *)self settings];
  v6 = v5;
  if (a3 == 1)
  {
    [v5 landscapeCornerRadiusFraction];
    v8 = v7;
    [v6 landscapeState1Height];
    v10 = v9;
    [v6 landscapeState2Height];
  }

  else
  {
    [v5 portraitCornerRadiusFraction];
    v8 = v12;
    [v6 portraitState1Width];
    v10 = v13;
    [v6 portraitState2Width];
  }

  v14 = v11;
  [v15 setCornerRadiusMinorAxisFraction:v8];
  [v15 setRegularMinorAxisDimension:v10];
  [v15 setCompactMinorAxisDimension:v14];
}

- (unint64_t)_updateSliderValue:(float)a3 animated:(BOOL)a4 transitioningStateContextuallyIfNecessary:(BOOL)a5
{
  v6 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v9 = [(SBElasticValueViewController *)self log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    dismissalTimer = self->_dismissalTimer;
    *buf = 134218498;
    v24 = a3;
    v25 = 1024;
    v26 = v6;
    v27 = 2112;
    v28 = dismissalTimer;
    _os_log_debug_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEBUG, "updateSliderValue:%f animated:%{BOOL}u -- Dismissal Timer: %@", buf, 0x1Cu);
  }

  sliderIsEditing = self->_sliderIsEditing;
  if (sliderIsEditing)
  {
    v11 = 1;
  }

  else
  {
    [(CCUIBaseSliderView *)self->_sliderView value];
    v11 = BSFloatApproximatelyEqualToFloat();
    sliderView = self->_sliderView;
    v13 = [(SBElasticValueViewController *)self bs_isAppearingOrAppeared];
    *&v14 = a3;
    [(CCUIBaseSliderView *)sliderView setValue:v13 & v6 animated:v14];
  }

  [(SBElasticValueViewController *)self _updateGlyphStateIfNecessaryForValue:&v22];
  v15 = self->_dismissalTimer;
  v16 = 1;
  if (v15 && (v11 & 1) == 0)
  {
    v17 = [(NSTimer *)v15 userInfo];
    v18 = [v17 objectForKey:@"DismissalReason"];

    [(SBElasticValueViewController *)self _invalidateDismissalTimerForReason:@"updateSliderValue:animated: called"];
    [(SBElasticValueViewController *)self _scheduleDismissal:v18];

    v16 = 0;
  }

  v19 = [(SBElasticValueViewController *)self isSliderTracking];
  if (!((self->_state == 2 || !a5) | v11 & 1) && !v19 && !sliderIsEditing)
  {
    [(SBElasticValueViewController *)self transitionStateContextuallyForValueChangeEvent];
  }

  return v16;
}

- (SBHUDAttachmentDelegate)attachmentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_attachmentDelegate);

  return WeakRetained;
}

- (SBElasticValueDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (SBElasticValueViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)positionOffset
{
  x = self->_positionOffset.x;
  y = self->_positionOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)initWithDataSource:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBElasticValueViewController.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"dataSource"}];
}

- (void)setupFailureRelationshipForGestureRecognizer:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Setting up gesture recognizer failure relationship for %{public}@", &v2, 0xCu);
}

- (void)_dismissalTimerFired:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBElasticValueViewController.m" lineNumber:1083 description:{@"Invalid parameter not satisfying: %@", @"timer == _dismissalTimer"}];
}

@end
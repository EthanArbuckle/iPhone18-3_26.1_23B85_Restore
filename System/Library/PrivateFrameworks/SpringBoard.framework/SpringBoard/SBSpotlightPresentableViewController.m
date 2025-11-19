@interface SBSpotlightPresentableViewController
- (BOOL)_setUpHostedContentMetrics;
- (CGRect)searchAffordanceReferenceFrame;
- (SBSpotlightHostedContentMetrics)hostedContentMetrics;
- (SBSpotlightPresentableViewController)initWithSpotlightMultiplexingViewController:(id)a3;
- (SBSpotlightPresentableViewControllerDelegate)delegate;
- (SBSpotlightPresentationMetrics)_presentationMetricsWithProgress:(SEL)a3 offset:(double)a4 velocity:(double)a5 presentationState:(double)a6 previousPresentationState:(int64_t)a7 anticipatedPresentationState:(int64_t)a8 searchContentPresentationState:(int64_t)a9 searchAffordancePresentationState:(int64_t)a10 hostedContentMetrics:(int64_t)a11;
- (SBSpotlightPresentationMetrics)appliedKeyboardAlignedElementsMetrics;
- (SBSpotlightTransitionRange)backgroundBlurRange;
- (SBSpotlightTransitionRange)backgroundUnblurRange;
- (SBSpotlightTransitionRange)searchAffordanceBackgroundMaterialFadeRange;
- (SBSpotlightTransitionRange)searchAffordanceContentFadeRange;
- (SBSpotlightTransitionRange)searchAffordanceScaleAndTranslateRange;
- (SBSpotlightTransitionRange)searchBarContentFadeRange;
- (SBSpotlightTransitionRange)searchContentFadeInRange;
- (SBSpotlightTransitionRange)searchContentFadeOutRange;
- (id)_sharedRemoteSearchViewController;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)willBeginModifyingPresentationProgressForState:(int64_t)a3 animated:(BOOL)a4 needsInitialLayout:(BOOL *)a5;
- (int64_t)_searchAffordancePresentationStateWithOffset:(double)a3 presentationState:(int64_t)a4 previousSearchAffordancePresentationState:(int64_t)a5;
- (unint64_t)_activeTransitionCount;
- (void)_beginRequiringSearchBarPortalViewForReason:(id)a3;
- (void)_configureHostedContent;
- (void)_createBackgroundBlurProperty;
- (void)_createKeyboardFadeProperty;
- (void)_createScaleProperty;
- (void)_createSearchContentFadeProperty;
- (void)_endRequiringSearchBarPortalViewForReason:(id)a3;
- (void)_ensureSearchAffordanceIsInstalledInView:(id)a3;
- (void)_getSearchAffordanceMetricsForDefaultSize:(CGSize)a3 presentationState:(int64_t)a4 presentationOffset:(double)a5 scaleX:(double *)a6 scaleY:(double *)a7 offset:(double *)a8 size:(CGSize *)a9 cornerRadius:(double *)a10;
- (void)_layoutSearchAffordanceWithMetrics:(SBSpotlightPresentationMetrics *)a3;
- (void)_layoutSearchContentWithMetrics:(SBSpotlightPresentationMetrics *)a3;
- (void)_layoutWithMetrics:(SBSpotlightPresentationMetrics *)a3;
- (void)_positionKeyboardAlignedElementsWithMetrics:(SBSpotlightPresentationMetrics *)a3;
- (void)_requestDismissal;
- (void)_setCornerRounded:(BOOL)a3;
- (void)_setHitTestingDisabledOnHostedContent:(BOOL)a3;
- (void)_setUpHomeAffordance;
- (void)_setUpSearchAffordance;
- (void)_setUpSearchAnimationSettings;
- (void)_setUpSearchBackground;
- (void)_setUpSearchBackgroundMatchMoveAnimation;
- (void)_tearDownBackgroundBlurProperty;
- (void)_tearDownKeyboardFadeProperty;
- (void)_tearDownSearchAffordanceReferenceBackgroundFadeProperty;
- (void)_updateForScalePropertyChanged;
- (void)_updateHomeAffordanceInteractionEnablement;
- (void)_updatePresentationProgress:(double)a3 withOffset:(double)a4 velocity:(double)a5 presentationState:(int64_t)a6 previousPresentationState:(int64_t)a7;
- (void)dealloc;
- (void)invalidateBackgroundView;
- (void)invalidateSearchAffordanceView;
- (void)loadView;
- (void)setAppliedKeyboardAlignedElementsMetrics:(SBSpotlightPresentationMetrics *)a3;
- (void)setHostedContentMetrics:(SBSpotlightHostedContentMetrics *)a3;
- (void)setSearchTransitionSettings:(id)a3;
- (void)setSpotlightScale:(double)a3 interactive:(BOOL)a4;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)spotlightMultiplexingViewController:(id)a3 externalKeyboardViewContainsKeyboardDidChange:(BOOL)a4;
- (void)spotlightMultiplexingViewController:(id)a3 searchContentAvailabilityDidChange:(BOOL)a4;
- (void)updatePresentationProgress:(double)a3 withOffset:(double)a4 velocity:(double)a5 presentationState:(int64_t)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SBSpotlightPresentableViewController

void __67__SBSpotlightPresentableViewController__createKeyboardFadeProperty__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_29;
  }

  v3 = WeakRetained[159];
  if (!v3)
  {
    goto LABEL_29;
  }

  v4 = *(v2 + 141);
  [v3 value];
  [*(v2 + 159) presentationValue];
  v6 = v5;
  if (BSFloatIsOne())
  {
    v7 = 0.0;
    if ((*(v2 + 998) & 1) == 0)
    {
      v8 = (v6 - *(v2 + 160)) / (1.0 - *(v2 + 160));
      if (v8 <= 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = v8 + 0.0;
      }

LABEL_12:
      v7 = fmin(v9, 1.0);
    }
  }

  else
  {
    v7 = v6;
    if (*(v2 + 996) == 1)
    {
      v10 = (v6 - *(v2 + 188)) / (*(v2 + 187) - *(v2 + 188));
      if (v10 <= 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = v10 + 0.0;
      }

      goto LABEL_12;
    }
  }

  v11 = *(v2 + 142);
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  [v11 _setPresentationValue:v12 forKey:@"opacity"];

  v13 = *(v2 + 143);
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  [v13 _setPresentationValue:v14 forKey:@"opacity"];

  if (!v4)
  {
    if (*(v2 + 994))
    {
      v32 = *(v2 + 144);
      v33 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
      [v32 _setPresentationValue:v33 forKey:@"opacity"];
    }

    v26 = *(v2 + 146);
    v34 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
    v35 = @"opacity";
    goto LABEL_28;
  }

  if (*(v2 + 994))
  {
    v15 = (v6 - *(v2 + 193)) / (*(v2 + 194) - *(v2 + 193));
    if (v15 <= 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v15 + 0.0;
    }

    v17 = fmin(v16, 1.0);
    v18 = (v6 - *(v2 + 192)) / (*(v2 + 191) - *(v2 + 192));
    if (v18 <= 0.0)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = v18 + 0.0;
    }

    v20 = fmin(v19, 1.0);
    v21 = *(v2 + 144);
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
    [v21 _setPresentationValue:v22 forKey:@"opacity"];

    v23 = *(v2 + 137);
    v24 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
    [v23 _setPresentationValue:v24 forKey:@"opacity"];

    v25 = *(v2 + 219);
    if (BSFloatIsOne())
    {
      v26 = *(v2 + 137);
      v27 = MEMORY[0x277CCAE60];
      v28 = *(MEMORY[0x277CD9DE8] + 80);
      *&v41.m31 = *(MEMORY[0x277CD9DE8] + 64);
      *&v41.m33 = v28;
      v29 = *(MEMORY[0x277CD9DE8] + 112);
      *&v41.m41 = *(MEMORY[0x277CD9DE8] + 96);
      *&v41.m43 = v29;
      v30 = *(MEMORY[0x277CD9DE8] + 16);
      *&v41.m11 = *MEMORY[0x277CD9DE8];
      *&v41.m13 = v30;
      v31 = *(MEMORY[0x277CD9DE8] + 48);
      *&v41.m21 = *(MEMORY[0x277CD9DE8] + 32);
      *&v41.m23 = v31;
    }

    else
    {
      v36 = fmax((v25 + -1.0) * (v6 - *(v2 + 191)) / (*(v2 + 192) - *(v2 + 191)) + 1.0, 0.0);
      memset(&v40, 0, sizeof(v40));
      v37 = fmin(v36, 1.0);
      CGAffineTransformMakeScale(&v40, v37, v37);
      v26 = *(v2 + 137);
      v38 = MEMORY[0x277CCAE60];
      v39 = v40;
      CATransform3DMakeAffineTransform(&v41, &v39);
      v27 = v38;
    }

    v34 = [v27 valueWithCATransform3D:&v41];
    v35 = @"transform";
LABEL_28:
    [v26 _setPresentationValue:v34 forKey:v35];
  }

LABEL_29:
}

void __72__SBSpotlightPresentableViewController__createSearchContentFadeProperty__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 155);
    if (v3)
    {
      v18 = v2;
      [v3 value];
      [*(v18 + 155) presentationValue];
      v5 = v4;
      v6 = (v18 + 1480);
      v7 = *(v18 + 185);
      v8 = (v18 + 1488);
      v9 = *(v18 + 186);
      if (BSFloatIsOne())
      {
        v10 = v18;
        v11 = 0.0;
        if (v18[997])
        {
LABEL_17:
          v16 = [v10[127] view];
          v17 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
          [v16 _setPresentationValue:v17 forKey:@"opacity"];

          v2 = v18;
          goto LABEL_18;
        }

        v12 = *(v18 + 158);
        if (v12 < *v6)
        {
          v12 = *v6;
        }
      }

      else
      {
        v13 = (v5 - v7) / (v9 - v7);
        if (v13 <= 0.0)
        {
          v14 = 0.0;
        }

        else
        {
          v14 = v13 + 0.0;
        }

        v10 = v18;
        if (v18[996] != 1)
        {
          goto LABEL_16;
        }

        v8 = (v18 + 1496);
        v12 = *(v18 + 188);
      }

      v15 = (v5 - v12) / (*v8 - v12);
      if (v15 <= 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v15 + 0.0;
      }

LABEL_16:
      v11 = fmin(v14, 1.0);
      goto LABEL_17;
    }
  }

LABEL_18:
}

- (id)succinctDescription
{
  v2 = [(SBSpotlightPresentableViewController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)_sharedRemoteSearchViewController
{
  v2 = objc_opt_class();

  return [v2 sharedRemoteSearchViewController];
}

- (BOOL)_setUpHostedContentMetrics
{
  spotlightMultiplexingViewController = self->_spotlightMultiplexingViewController;
  if (spotlightMultiplexingViewController)
  {
    [(SBSpotlightMultiplexingViewController *)spotlightMultiplexingViewController spotlightHostedContentMetrics];
  }

  keyboardHeight = self->_hostedContentMetrics.keyboardHeight;
  result = keyboardHeight != 0.0;
  if (keyboardHeight != 0.0)
  {
    self->_hostedContentMetrics.keyboardHeight = 0.0;
  }

  if (self->_hostedContentMetrics.keyboardProtectorHeight != 0.0)
  {
    self->_hostedContentMetrics.keyboardProtectorHeight = 0.0;
    result = 1;
  }

  if (self->_hostedContentMetrics.searchBarSize.width != 0.0 || self->_hostedContentMetrics.searchBarSize.height != 0.0)
  {
    self->_hostedContentMetrics.searchBarSize = 0u;
    result = 1;
  }

  if (self->_hostedContentMetrics.dockedSearchBarSize.width != 0.0 || self->_hostedContentMetrics.dockedSearchBarSize.height != 0.0)
  {
    self->_hostedContentMetrics.dockedSearchBarSize = 0u;
    result = 1;
  }

  if (self->_hostedContentMetrics.searchBarCornerRadius != 0.0)
  {
    self->_hostedContentMetrics.searchBarCornerRadius = 0.0;
    return 1;
  }

  return result;
}

void __67__SBSpotlightPresentableViewController__createKeyboardFadeProperty__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[159];
    if (v3)
    {
      v4 = *(v2 + 141);
      [v3 value];
      v6 = v5;
      [*(v2 + 142) setAlpha:?];
      [*(v2 + 143) setAlpha:v6];
      if (v4)
      {
        if (*(v2 + 994))
        {
          [*(v2 + 144) setAlpha:v6];
          [*(v2 + 137) setAlpha:1.0 - v6];
          v7 = *(v2 + 219);
          if (BSFloatIsOne())
          {
            v8 = *(v2 + 137);
            v9 = *(MEMORY[0x277CBF2C0] + 16);
            *&v12.a = *MEMORY[0x277CBF2C0];
            *&v12.c = v9;
            *&v12.tx = *(MEMORY[0x277CBF2C0] + 32);
            v10 = &v12;
          }

          else
          {
            memset(&v12, 0, sizeof(v12));
            CGAffineTransformMakeScale(&v12, v7, v7);
            v8 = *(v2 + 137);
            v11 = v12;
            v10 = &v11;
          }

          [v8 setTransform:{v10, *&v11.a, *&v11.c, *&v11.tx, *&v12.a, *&v12.b, *&v12.c, *&v12.d, *&v12.tx, *&v12.ty}];
        }
      }

      else
      {
        if (*(v2 + 994))
        {
          [*(v2 + 144) setAlpha:v6];
        }

        [*(v2 + 146) setAlpha:v6];
      }
    }
  }
}

- (void)_createKeyboardFadeProperty
{
  v12[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x277D75D38]);
  keyboardFadeProperty = self->_keyboardFadeProperty;
  self->_keyboardFadeProperty = v3;

  [(UIViewFloatAnimatableProperty *)self->_keyboardFadeProperty setVelocityUsableForVFD:1];
  v5 = MEMORY[0x277D75D18];
  v12[0] = self->_keyboardFadeProperty;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__SBSpotlightPresentableViewController__createKeyboardFadeProperty__block_invoke;
  v9[3] = &unk_2783A8C68;
  objc_copyWeak(&v10, &location);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__SBSpotlightPresentableViewController__createKeyboardFadeProperty__block_invoke_2;
  v7[3] = &unk_2783A8C68;
  objc_copyWeak(&v8, &location);
  [v5 _createTransformerWithInputAnimatableProperties:v6 modelValueSetter:v9 presentationValueSetter:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_configureHostedContent
{
  if ([(NSMutableSet *)self->_searchBarPortalRequirementReasons count])
  {
    [(SBSpotlightPresentableViewController *)self _setUpHostedContentMetrics];
    [(SBSpotlightMultiplexingViewController *)self->_spotlightMultiplexingViewController setDelegate:self];
    v3 = self->_scaleView;
    searchAffordance = self->_searchAffordance;
    if (searchAffordance && !self->_searchAffordancePortalView)
    {
      v42 = v3;
      [(SBHSearchAffordance *)searchAffordance setAlpha:1.0];
      v5 = objc_alloc_init(MEMORY[0x277D76180]);
      searchAffordancePortalView = self->_searchAffordancePortalView;
      self->_searchAffordancePortalView = v5;

      [(_UIPortalView *)self->_searchAffordancePortalView setSourceView:self->_searchAffordance];
      [(_UIPortalView *)self->_searchAffordancePortalView setHidesSourceView:1];
      [(_UIPortalView *)self->_searchAffordancePortalView setForwardsClientHitTestingToSourceView:1];
      [(_UIPortalView *)self->_searchAffordancePortalView setAllowsBackdropGroups:1];
      [(UIView *)v42 insertSubview:self->_searchAffordancePortalView belowSubview:self->_searchAffordanceContentContainerView];
      v3 = v42;
    }

    p_searchBarPortalView = &self->_searchBarPortalView;
    if (!self->_searchBarPortalView)
    {
      p_searchBarBackgroundPortalView = &self->_searchBarBackgroundPortalView;
      if (!self->_searchBarBackgroundPortalView)
      {
        v43 = v3;
        v9 = [(SBSpotlightPresentableViewController *)self _sharedRemoteSearchViewController];
        v10 = [v9 searchHeaderLayerRenderID];
        v11 = [v9 searchHeaderContextID];
        v12 = [v9 searchHeaderBlurLayerRenderID];
        v13 = [v9 searchHeaderBlurContextID];
        v40 = v13;
        if (self->_supportsSeparateSearchBarBackground)
        {
          if (v12)
          {
            v14 = v13 == 0;
          }

          else
          {
            v14 = 1;
          }

          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v41 = [v9 searchHeaderBackgroundLayerRenderID];
        v16 = [v9 searchHeaderBackgroundContextID];
        if (v10 && v11 && v41 && v16 && (v15 & 1) == 0)
        {
          v39 = v16;
          if (self->_supportsSeparateSearchBarBackground || (v17 = objc_alloc_init(MEMORY[0x277D76180]), v18 = *p_searchBarPortalView, *p_searchBarPortalView = v17, v18, [*p_searchBarPortalView bs_setHitTestingDisabled:1], objc_msgSend(*p_searchBarPortalView, "setHidesSourceView:", 1), objc_msgSend(*p_searchBarPortalView, "portalLayer"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "setSourceLayerRenderId:", v10), v19, objc_msgSend(*p_searchBarPortalView, "portalLayer"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "setSourceContextId:", v11), v20, self->_supportsSeparateSearchBarBackground))
          {
            v21 = objc_alloc_init(MEMORY[0x277D76180]);
            v22 = *p_searchBarBackgroundPortalView;
            *p_searchBarBackgroundPortalView = v21;

            [*p_searchBarBackgroundPortalView bs_setHitTestingDisabled:1];
            [*p_searchBarBackgroundPortalView setHidesSourceView:1];
            v23 = [*p_searchBarBackgroundPortalView portalLayer];
            [v23 setSourceLayerRenderId:v12];

            v24 = [*p_searchBarBackgroundPortalView portalLayer];
            [v24 setSourceContextId:v40];
          }

          v25 = objc_alloc_init(MEMORY[0x277D75D18]);
          searchBarPortalClippingContainerView = self->_searchBarPortalClippingContainerView;
          self->_searchBarPortalClippingContainerView = v25;

          [(UIView *)self->_searchBarPortalClippingContainerView setClipsToBounds:1];
          if (self->_supportsSeparateSearchBarBackground)
          {
            v27 = &self->_searchBarBackgroundPortalView;
          }

          else
          {
            v27 = &self->_searchBarPortalView;
          }

          v28 = *v27;
          [(UIView *)self->_searchBarPortalClippingContainerView addSubview:v28];
          v29 = self->_searchBarPortalClippingContainerView;
          if (self->_searchAffordancePortalView)
          {
            [(UIView *)v43 insertSubview:v29 belowSubview:?];
          }

          else
          {
            [(UIView *)v43 addSubview:v29];
          }

          v30 = objc_alloc_init(MEMORY[0x277D76180]);
          keyboardProtectorPortalView = self->_keyboardProtectorPortalView;
          self->_keyboardProtectorPortalView = v30;

          [(_UIPortalView *)self->_keyboardProtectorPortalView bs_setHitTestingDisabled:1];
          [(_UIPortalView *)self->_keyboardProtectorPortalView setHidesSourceView:1];
          v32 = [(_UIPortalView *)self->_keyboardProtectorPortalView portalLayer];
          [v32 setSourceLayerRenderId:v41];

          v33 = [(_UIPortalView *)self->_keyboardProtectorPortalView portalLayer];
          [v33 setSourceContextId:v39];

          v34 = self->_keyboardProtectorPortalView;
          v35 = [(SBSpotlightMultiplexingViewController *)self->_spotlightMultiplexingViewController view];
          [(UIView *)v43 insertSubview:v34 aboveSubview:v35];
        }

        v3 = v43;
      }
    }

    if (!self->_keyboardView)
    {
      v44 = v3;
      [(SBSpotlightPresentableViewController *)self _tearDownKeyboardFadeProperty];
      [(SBSpotlightPresentableViewController *)self _createKeyboardFadeProperty];
      self->_initializingKeyboardView = 1;
      [(SBSpotlightMultiplexingViewController *)self->_spotlightMultiplexingViewController setWantsExternalKeyboardView:1];
      v36 = [(SBSpotlightMultiplexingViewController *)self->_spotlightMultiplexingViewController externalKeyboardView];
      keyboardView = self->_keyboardView;
      self->_keyboardView = v36;

      v38 = self->_keyboardView;
      if (self->_homeAffordance)
      {
        [(UIView *)v44 insertSubview:v38 belowSubview:?];
      }

      else
      {
        [(UIView *)v44 addSubview:v38];
      }

      self->_initializingKeyboardView = 0;
      v3 = v44;
    }
  }
}

- (void)_tearDownKeyboardFadeProperty
{
  keyboardFadeProperty = self->_keyboardFadeProperty;
  if (keyboardFadeProperty)
  {
    if (([(UIViewFloatAnimatableProperty *)keyboardFadeProperty isInvalidated]& 1) == 0)
    {
      [(UIViewFloatAnimatableProperty *)self->_keyboardFadeProperty invalidate];
    }

    v4 = self->_keyboardFadeProperty;
    self->_keyboardFadeProperty = 0;
  }
}

void __72__SBSpotlightPresentableViewController__createSearchContentFadeProperty__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 155);
    if (v3)
    {
      v9 = v2;
      [v3 value];
      v5 = (v4 - *(v9 + 185)) / (*(v9 + 186) - *(v9 + 185));
      if (v5 <= 0.0)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = v5 + 0.0;
      }

      v7 = fmin(v6, 1.0);
      v8 = [*(v9 + 127) view];
      [v8 setAlpha:v7];

      v2 = v9;
    }
  }
}

uint64_t __62__SBSpotlightPresentableViewController__activeTransitionCount__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEqualToString:@"SBWaitingForSearchBarPortalReason"])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isEqualToString:@"SBKeyboardAdjustmentAnimationReason"] ^ 1;
  }

  return v3;
}

- (void)_setUpSearchAnimationSettings
{
  v3 = [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings pullTransitionAnimationSettings];
  searchAnimationSettings = self->_searchAnimationSettings;
  self->_searchAnimationSettings = v3;

  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings pullTransitionActivationThreshold];
  self->_spotlightActivationThreshold = v5;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings backgroundBlurInteractiveTransitionDistance];
  self->_backgroundInteractiveBlurDistance = v6;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings backgroundBlurStartThreshold];
  v8 = v7;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings backgroundBlurEndThreshold];
  self->_backgroundBlurRange.start = v8;
  self->_backgroundBlurRange.end = v9;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings backgroundUnblurStartThreshold];
  v11 = v10;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings backgroundUnblurEndThreshold];
  self->_backgroundUnblurRange.start = v11;
  self->_backgroundUnblurRange.end = v12;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings searchContentFadeInteractiveTransitionDistance];
  self->_searchContentInteractiveFadeInDistance = v13;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings searchContentFadeInStartThreshold];
  v15 = v14;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings searchContentFadeInEndThreshold];
  self->_searchContentFadeInRange.start = v15;
  self->_searchContentFadeInRange.end = v16;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings searchContentFadeOutStartThreshold];
  v18 = v17;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings searchContentFadeOutEndThreshold];
  self->_searchContentFadeOutRange.start = v18;
  self->_searchContentFadeOutRange.end = v19;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings searchAffordanceBackgroundMaterialFadeInteractiveTransitionDistance];
  self->_searchAffordanceBackgroundMaterialInteractiveFadeDistance = v20;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings searchAffordanceBackgroundMaterialFadeStartThreshold];
  v22 = v21;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings searchAffordanceBackgroundMaterialFadeEndThreshold];
  self->_searchAffordanceBackgroundMaterialFadeRange.start = v22;
  self->_searchAffordanceBackgroundMaterialFadeRange.end = v23;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings searchAffordanceContentFadeStartThreshold];
  v25 = v24;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings searchAffordanceContentFadeEndThreshold];
  self->_searchAffordanceContentFadeRange.start = v25;
  self->_searchAffordanceContentFadeRange.end = v26;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings searchBarContentFadeStartThreshold];
  v28 = v27;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings searchBarContentFadeEndThreshold];
  self->_searchBarContentFadeRange.start = v28;
  self->_searchBarContentFadeRange.end = v29;
  self->_scalesSearchAffordanceContentWhileFading = [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings scalesSearchAffordanceContentWhileFading];
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings searchAffordanceTransformStartThreshold];
  v31 = v30;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings searchAffordanceTransformEndThreshold];
  self->_searchAffordanceScaleAndTranslateRange.start = v31;
  self->_searchAffordanceScaleAndTranslateRange.end = v32;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings searchAffordanceMaxScaleX];
  self->_searchAffordanceMaxScaleX = v33;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings searchAffordanceMaxScaleY];
  self->_searchAffordanceMaxScaleY = v34;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings searchAffordanceScaleRubberbandingRange];
  self->_searchAffordanceScaleRubberbandingRange = v35;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings searchAffordanceMaxOffset];
  self->_searchAffordanceMaxOffset = v36;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings searchAffordanceOffsetRubberbandingRange];
  self->_searchAffordanceOffsetRubberbandingRange = v37;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings searchAffordanceTransientFadeInThreshold];
  self->_searchAffordanceTransientFadeInThreshold = v38;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings pullTransitionDistance];
  self->_pullTransitionDistance = v39;
  self->_allowsKeyboardWhileInteractive = [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings allowsKeyboardWhileInteractive];
  self->_allowsKeyboardWhileInteractiveWithoutSearchAffordance = [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings allowsKeyboardWhileInteractiveWithoutSearchAffordance];
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings interactiveKeyboardPresentationThreshold];
  self->_interactiveKeyboardPresentationThreshold = v40;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings interactiveKeyboardPresentationOffset];
  self->_interactiveKeyboardPresentationOffset = v41;
  self->_keyboardFollowsSpotlightContent = [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings keyboardFollowsSpotlightContent];
  self->_allowsVelocityInjection = [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings allowsVelocityInjection];
  self->_injectsVelocityOnlyForShortSwipes = [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings injectsVelocityOnlyForShortSwipes];
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings shortSwipeMaximumPercentageOfExpectedVelocity];
  self->_shortSwipeMaximumPercentageOfExpectedVelocity = v42;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings injectedPercentageOfGestureVelocity];
  self->_injectedPercentageOfGestureVelocity = v43;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings keyboardInjectedVelocityPercentage];
  self->_keyboardInjectedVelocityPercentage = v44;
  self->_injectsVelocityForNonInteractiveTransitions = [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings injectsVelocityForNonInteractiveTransitions];
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings injectedVelocityForNonInteractiveTransitions];
  self->_injectedVelocityForNonInteractiveTransitions = v45;
  [(SBHHomePullToSearchSettings *)self->_searchTransitionSettings keyboardInjectedVelocityPercentageForNonInteractiveTransitions];
  self->_keyboardInjectedVelocityPercentageForNonInteractiveTransitions = v46;
}

- (unint64_t)_activeTransitionCount
{
  v2 = [(NSMutableSet *)self->_searchBarPortalRequirementReasons bs_filter:&__block_literal_global_389];
  v3 = [v2 count];

  return v3;
}

void __69__SBSpotlightPresentableViewController__createBackgroundBlurProperty__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 157);
    if (v3)
    {
      v9 = v2;
      [v3 presentationValue];
      if (v9[996] == 1)
      {
        v5 = (v9 + 1464);
        v6 = (v9 + 1472);
      }

      else
      {
        v6 = (v9 + 1448);
        v5 = (v9 + 1456);
      }

      v7 = (v4 - *v6) / (*v5 - *v6);
      if (v7 <= 0.0)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = v7 + 0.0;
      }

      [*(v9 + 131) setSpotlightBackgroundWeighting:{fmin(v8, 1.0)}];
      v2 = v9;
    }
  }
}

- (void)_updateHomeAffordanceInteractionEnablement
{
  homeAffordance = self->_homeAffordance;
  if (homeAffordance)
  {
    v3 = [(SBSpotlightPresentableViewController *)self bs_isAppearingOrAppeared];

    [(SBHomeGrabberView *)homeAffordance setHomeAffordanceInteractionEnabled:v3];
  }
}

- (SBSpotlightPresentableViewController)initWithSpotlightMultiplexingViewController:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = SBSpotlightPresentableViewController;
  v6 = [(SBSpotlightPresentableViewController *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_spotlightMultiplexingViewController, a3);
    v7->_hasUnifiedKeyboardBackground = [MEMORY[0x277D65D28] useUnifiedBackground];
    v7->_supportsSeparateSearchBarBackground = [MEMORY[0x277D65D28] separateHeaderBlurLayeringEnabled];
    v8 = MEMORY[0x277CCACA8];
    v9 = [(SBSpotlightPresentableViewController *)v7 succinctDescription];
    v10 = [v8 stringWithFormat:@"SpringBoard - Spotlight - %@", v9];

    objc_initWeak(&location, v7);
    v11 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v15, &location);
    v12 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureHandle = v7->_stateCaptureHandle;
    v7->_stateCaptureHandle = v12;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v7;
}

id __84__SBSpotlightPresentableViewController_initWithSpotlightMultiplexingViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

- (void)dealloc
{
  [(UIViewFloatAnimatableProperty *)self->_scaleProperty invalidate];
  [(UIViewFloatAnimatableProperty *)self->_backgroundBlurProperty invalidate];
  [(UIViewFloatAnimatableProperty *)self->_searchContentFadeProperty invalidate];
  [(UIViewFloatAnimatableProperty *)self->_searchAffordanceReferenceBackgroundFadeProperty invalidate];
  [(UIViewFloatAnimatableProperty *)self->_keyboardFadeProperty invalidate];
  [(BSInvalidatable *)self->_stateCaptureHandle invalidate];
  v3.receiver = self;
  v3.super_class = SBSpotlightPresentableViewController;
  [(SBSpotlightPresentableViewController *)&v3 dealloc];
}

- (void)invalidateBackgroundView
{
  [(SBSpotlightBackgroundWeighting *)self->_searchBackgroundView spotlightBackgroundWeighting];
  v4 = v3;
  [(SBSpotlightBackgroundWeighting *)self->_searchBackgroundView removeFromSuperview];
  searchBackgroundView = self->_searchBackgroundView;
  self->_searchBackgroundView = 0;

  [(SBSpotlightPresentableViewController *)self _setUpSearchBackground];
  [(SBSpotlightPresentableViewController *)self _tearDownBackgroundBlurProperty];
  [(SBSpotlightPresentableViewController *)self _createBackgroundBlurProperty];
  [(UIViewFloatAnimatableProperty *)self->_backgroundBlurProperty setValue:v4];
  v6 = self->_searchBackgroundView;

  [(SBSpotlightBackgroundWeighting *)v6 setSpotlightBackgroundWeighting:v4];
}

- (void)invalidateSearchAffordanceView
{
  [(UIView *)self->_searchAffordanceContentContainerView removeFromSuperview];
  searchAffordanceContentContainerView = self->_searchAffordanceContentContainerView;
  self->_searchAffordanceContentContainerView = 0;

  [(SBHSearchAffordance *)self->_searchAffordance removeFromSuperview];
  searchAffordance = self->_searchAffordance;
  self->_searchAffordance = 0;

  [(SBSpotlightPresentableViewController *)self _setUpSearchAffordance];
  if (self->_presentationState == 2)
  {
    v5 = [(SBHSearchAffordance *)self->_searchAffordance searchAffordanceReferenceView];
    searchAffordanceReferenceView = self->_searchAffordanceReferenceView;
    self->_searchAffordanceReferenceView = v5;

    [(SBHSearchAffordance *)self->_searchAffordance searchAffordanceReferenceFrame];
    self->_searchAffordanceReferenceFrame.origin.x = v7;
    self->_searchAffordanceReferenceFrame.origin.y = v8;
    self->_searchAffordanceReferenceFrame.size.width = v9;
    self->_searchAffordanceReferenceFrame.size.height = v10;
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    presentationProgress = self->_presentationProgress;
    presentationOffset = self->_presentationOffset;
    presentationState = self->_presentationState;
    v37 = 0u;
    v38 = 0u;
    previousPresentationState = self->_previousPresentationState;
    v35 = 0u;
    v36 = 0u;
    anticipatedPresentationState = self->_anticipatedPresentationState;
    v33 = 0;
    v34 = 0u;
    searchAffordancePresentationState = self->_searchAffordancePresentationState;
    v31 = 0u;
    v32 = 0;
    searchBarSize = self->_hostedContentMetrics.searchBarSize;
    v18 = *&self->_hostedContentMetrics.keyboardHeight;
    v19 = searchBarSize;
    dockedSearchBarSize = self->_hostedContentMetrics.dockedSearchBarSize;
    *&v21 = self->_hostedContentMetrics.searchBarCornerRadius;
    [(SBSpotlightPresentableViewController *)self _presentationMetricsWithProgress:presentationState offset:previousPresentationState velocity:anticipatedPresentationState presentationState:presentationState previousPresentationState:searchAffordancePresentationState anticipatedPresentationState:&v18 searchContentPresentationState:presentationProgress searchAffordancePresentationState:presentationOffset hostedContentMetrics:0.0];
    v28 = v41;
    v29 = v42;
    v30 = v43;
    v24 = v37;
    v25 = v38;
    v26 = v39;
    v27 = v40;
    dockedSearchBarSize = v33;
    v21 = v34;
    v22 = v35;
    v23 = v36;
    v18 = v31;
    v19 = v32;
    [(SBSpotlightPresentableViewController *)self _layoutSearchAffordanceWithMetrics:&v18];
    v28 = v41;
    v29 = v42;
    v30 = v43;
    v24 = v37;
    v25 = v38;
    v26 = v39;
    v27 = v40;
    dockedSearchBarSize = v33;
    v21 = v34;
    v22 = v35;
    v23 = v36;
    v18 = v31;
    v19 = v32;
    [(SBSpotlightPresentableViewController *)self _positionKeyboardAlignedElementsWithMetrics:&v18];
  }
}

- (void)setSpotlightScale:(double)a3 interactive:(BOOL)a4
{
  v4 = a4;
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    [(SBSpotlightPresentableViewController *)self _setCornerRounded:1];
  }

  if (v4)
  {
    v7 = 5;
  }

  else
  {
    v7 = 3;
  }

  scaleSettings = self->_scaleSettings;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__SBSpotlightPresentableViewController_setSpotlightScale_interactive___block_invoke;
  v11[3] = &unk_2783A8BC8;
  v11[4] = self;
  *&v11[5] = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__SBSpotlightPresentableViewController_setSpotlightScale_interactive___block_invoke_2;
  v9[3] = &unk_2783AD430;
  v10 = v4;
  v9[4] = self;
  [MEMORY[0x277D75D18] sb_animateWithSettings:scaleSettings mode:v7 animations:v11 completion:v9];
}

uint64_t __70__SBSpotlightPresentableViewController_setSpotlightScale_interactive___block_invoke_2(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return [*(result + 32) _setCornerRounded:0];
  }

  return result;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D65F80]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(SBSpotlightPresentableViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = SBSpotlightPresentableViewController;
  [(SBSpotlightPresentableViewController *)&v15 viewDidLoad];
  [(SBSpotlightPresentableViewController *)self _createScaleProperty];
  [(SBSpotlightPresentableViewController *)self _createBackgroundBlurProperty];
  [(SBSpotlightPresentableViewController *)self _createSearchContentFadeProperty];
  [(SBSpotlightPresentableViewController *)self _createKeyboardFadeProperty];
  v3 = [(SBSpotlightPresentableViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [objc_alloc(MEMORY[0x277D65F80]) initWithFrame:{v4, v6, v8, v10}];
  scaleView = self->_scaleView;
  self->_scaleView = v12;

  [(UIView *)self->_scaleView setAutoresizingMask:18];
  [v3 addSubview:self->_scaleView];
  [(SBSpotlightPresentableViewController *)self _setUpSearchBackground];
  [(SBSpotlightMultiplexingViewController *)self->_spotlightMultiplexingViewController setSpotlightDelegate:self];
  [(SBSpotlightPresentableViewController *)self bs_addChildViewController:self->_spotlightMultiplexingViewController withSuperview:self->_scaleView];
  v14 = [(SBSpotlightMultiplexingViewController *)self->_spotlightMultiplexingViewController view];
  [v14 setFrame:{v5, v7, v9, v11}];
  [v14 setAutoresizingMask:18];
  [(SBSpotlightPresentableViewController *)self _setUpSearchAffordance];
  [(SBSpotlightPresentableViewController *)self _setUpHomeAffordance];
  [(SBSpotlightPresentableViewController *)self _setUpSearchAnimationSettings];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v6 = a3;
  if (v6)
  {
    [(SBSpotlightPresentableViewController *)self _setUpSearchBackgroundMatchMoveAnimation];
    if (self->_searchAffordance)
    {
      [(SBSpotlightPresentableViewController *)self _ensureSearchAffordanceIsInstalledInView:v6];
    }
  }

  else
  {
    v5 = [(SBSpotlightBackgroundWeighting *)self->_searchBackgroundView layer];
    [v5 removeAnimationForKey:@"SBSearchBackgroundMatchMoveAnimation"];

    [(SBHSearchAffordance *)self->_searchAffordance removeFromSuperview];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  searchBackgroundView = self->_searchBackgroundView;
  if (searchBackgroundView)
  {
    v9 = [(SBSpotlightBackgroundWeighting *)searchBackgroundView layer];
    v10 = [v9 animationForKey:@"SBSearchBackgroundMatchMoveAnimation"];
    [v9 removeAnimationForKey:@"SBSearchBackgroundMatchMoveAnimation"];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __91__SBSpotlightPresentableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v17[3] = &unk_2783B50F8;
    v17[4] = self;
    *&v17[5] = width;
    *&v17[6] = height;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __91__SBSpotlightPresentableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v14[3] = &unk_2783B6F60;
    v15 = v9;
    v16 = v10;
    v11 = v10;
    v12 = v9;
    [v7 animateAlongsideTransition:v17 completion:v14];
  }

  v13.receiver = self;
  v13.super_class = SBSpotlightPresentableViewController;
  [(SBSpotlightPresentableViewController *)&v13 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

uint64_t __91__SBSpotlightPresentableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1048);
  BSRectWithSize();

  return [v1 setFrame:?];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBSpotlightPresentableViewController;
  [(SBSpotlightPresentableViewController *)&v4 viewDidAppear:a3];
  [(SBSpotlightPresentableViewController *)self _updateHomeAffordanceInteractionEnablement];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBSpotlightPresentableViewController;
  [(SBSpotlightPresentableViewController *)&v4 viewDidDisappear:a3];
  [(SBSpotlightPresentableViewController *)self _updateHomeAffordanceInteractionEnablement];
}

- (void)setSearchTransitionSettings:(id)a3
{
  v5 = a3;
  if (([(SBHHomePullToSearchSettings *)self->_searchTransitionSettings isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_searchTransitionSettings, a3);
    [v5 addKeyObserver:self];
    if ([(SBSpotlightPresentableViewController *)self isViewLoaded])
    {
      [(SBSpotlightPresentableViewController *)self _setUpSearchAnimationSettings];
    }
  }
}

- (void)updatePresentationProgress:(double)a3 withOffset:(double)a4 velocity:(double)a5 presentationState:(int64_t)a6
{
  presentationState = self->_presentationState;
  if (a6 == 1 && presentationState == 1)
  {
    goto LABEL_10;
  }

  self->_previousPresentationState = presentationState;
  if (presentationState == a6)
  {
    goto LABEL_10;
  }

  self->_presentationState = a6;
  if (!a6)
  {
    v11 = 0;
    goto LABEL_9;
  }

  if (!self->_previousPresentationState && [(SBSpotlightPresentableViewController *)self _activeTransitionCount]>= 2)
  {
    v11 = 1;
LABEL_9:
    self->_cancellingDismissAnimation = v11;
  }

LABEL_10:
  self->_presentationProgress = a3;
  self->_presentationOffset = a4;
  v12 = self->_presentationState;
  previousPresentationState = self->_previousPresentationState;

  [(SBSpotlightPresentableViewController *)self _updatePresentationProgress:v12 withOffset:previousPresentationState velocity:a3 presentationState:a4 previousPresentationState:a5];
}

- (void)_updatePresentationProgress:(double)a3 withOffset:(double)a4 velocity:(double)a5 presentationState:(int64_t)a6 previousPresentationState:(int64_t)a7
{
  v13 = [(SBSpotlightPresentableViewController *)self view];
  searchBackgroundView = self->_searchBackgroundView;
  v31 = v13;
  [v13 bounds];
  [(SBSpotlightBackgroundWeighting *)searchBackgroundView setFrame:?];
  v15 = [(SBSpotlightMultiplexingViewController *)self->_spotlightMultiplexingViewController isSearchContentAvailable];
  v16 = [(NSMutableSet *)self->_searchBarPortalRequirementReasons count];
  self->_searchContentFadeInStartValue = 0.0;
  if (a6 == 2)
  {
    v17 = (v16 != 0) & ~v15;
    self->_waitingForSearchContentAvailabilityForFadeIn = v17;
    if (v17 && !self->_searchBarPortalView)
    {
      v18 = 2 * (self->_searchBarBackgroundPortalView != 0);
    }

    else
    {
      v18 = 2;
    }
  }

  else
  {
    self->_waitingForSearchContentAvailabilityForFadeIn = 0;
    v18 = a6;
  }

  v19 = self->_outstandingAnimationCount != 0;
  searchAffordancePresentationState = self->_searchAffordancePresentationState;
  v21 = [(SBSpotlightPresentableViewController *)self _searchAffordancePresentationStateWithOffset:a6 presentationState:searchAffordancePresentationState previousSearchAffordancePresentationState:a4];
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0;
  v63 = 0u;
  anticipatedPresentationState = self->_anticipatedPresentationState;
  v60 = 0u;
  v61 = 0;
  searchBarSize = self->_hostedContentMetrics.searchBarSize;
  v47 = *&self->_hostedContentMetrics.keyboardHeight;
  v48 = searchBarSize;
  dockedSearchBarSize = self->_hostedContentMetrics.dockedSearchBarSize;
  *&v50 = self->_hostedContentMetrics.searchBarCornerRadius;
  [(SBSpotlightPresentableViewController *)self _presentationMetricsWithProgress:a6 offset:a7 velocity:anticipatedPresentationState presentationState:v18 previousPresentationState:v21 anticipatedPresentationState:&v47 searchContentPresentationState:a3 searchAffordancePresentationState:a4 hostedContentMetrics:a5];
  v24 = v18 == 1 && v19;
  if (v18 != 1 || v21 == searchAffordancePresentationState || v21 == 1)
  {
    v26 = v24 ^ 1;
    if (v21 != 2)
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0)
    {
      v27 = [(UIView *)self->_keyboardView layer];
      v28 = [v27 presentationLayer];

      if (v28)
      {
        [v28 position];
        v24 = BSFloatGreaterThanOrEqualToFloat() ^ 1;
      }

      else
      {
        v24 = 1;
      }
    }

    v25 = 4;
  }

  else
  {
    v24 = 1;
    v25 = 3;
  }

  v57 = v70;
  v58 = v71;
  v59 = v72;
  v53 = v66;
  v54 = v67;
  v55 = v68;
  v56 = v69;
  dockedSearchBarSize = v62;
  v50 = v63;
  v51 = v64;
  v52 = v65;
  v47 = v60;
  v48 = v61;
  [(SBSpotlightPresentableViewController *)self _layoutSearchContentWithMetrics:&v47];
  self->_searchAffordancePresentationState = v21;
  self->_keyboardFadeInStartValue = 0.0;
  if (v21 == 2)
  {
    v29 = ![(SBSpotlightMultiplexingViewController *)self->_spotlightMultiplexingViewController externalKeyboardViewContainsKeyboard];
  }

  else
  {
    v29 = 0;
  }

  self->_waitingForKeyboardPresentationForFadeIn = v29;
  if (v24)
  {
    ++self->_outstandingAnimationCount;
    searchAnimationSettings = self->_searchAnimationSettings;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v43 = v69;
    v44 = v70;
    v45 = v71;
    v39 = v65;
    v40 = v66;
    v41 = v67;
    v42 = v68;
    v35 = v61;
    v36 = v62;
    v37 = v63;
    v38 = v64;
    v33[2] = __132__SBSpotlightPresentableViewController__updatePresentationProgress_withOffset_velocity_presentationState_previousPresentationState___block_invoke;
    v33[3] = &unk_2783C1478;
    v33[4] = self;
    v46 = v72;
    v34 = v60;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __132__SBSpotlightPresentableViewController__updatePresentationProgress_withOffset_velocity_presentationState_previousPresentationState___block_invoke_2;
    v32[3] = &unk_2783AE4B8;
    v32[4] = self;
    [MEMORY[0x277D75D18] sb_animateWithSettings:searchAnimationSettings mode:v25 animations:v33 completion:v32];
  }

  else
  {
    v57 = v70;
    v58 = v71;
    v59 = v72;
    v53 = v66;
    v54 = v67;
    v55 = v68;
    v56 = v69;
    dockedSearchBarSize = v62;
    v50 = v63;
    v51 = v64;
    v52 = v65;
    v47 = v60;
    v48 = v61;
    [(SBSpotlightPresentableViewController *)self _layoutSearchAffordanceWithMetrics:&v47];
    v57 = v70;
    v58 = v71;
    v59 = v72;
    v53 = v66;
    v54 = v67;
    v55 = v68;
    v56 = v69;
    dockedSearchBarSize = v62;
    v50 = v63;
    v51 = v64;
    v52 = v65;
    v47 = v60;
    v48 = v61;
    [(SBSpotlightPresentableViewController *)self _positionKeyboardAlignedElementsWithMetrics:&v47];
  }
}

uint64_t __132__SBSpotlightPresentableViewController__updatePresentationProgress_withOffset_velocity_presentationState_previousPresentationState___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 184);
  v4 = *(a1 + 216);
  v27 = *(a1 + 200);
  v28 = v4;
  v29 = *(a1 + 232);
  v5 = *(a1 + 120);
  v6 = *(a1 + 152);
  v23 = *(a1 + 136);
  v24 = v6;
  v25 = *(a1 + 168);
  v26 = v3;
  v7 = *(a1 + 56);
  v8 = *(a1 + 88);
  v19 = *(a1 + 72);
  v20 = v8;
  v21 = *(a1 + 104);
  v22 = v5;
  v17 = *(a1 + 40);
  v18 = v7;
  [v2 _layoutSearchAffordanceWithMetrics:&v17];
  v9 = *(a1 + 32);
  v10 = *(a1 + 184);
  v11 = *(a1 + 216);
  v27 = *(a1 + 200);
  v28 = v11;
  v29 = *(a1 + 232);
  v12 = *(a1 + 120);
  v13 = *(a1 + 152);
  v23 = *(a1 + 136);
  v24 = v13;
  v25 = *(a1 + 168);
  v26 = v10;
  v14 = *(a1 + 56);
  v15 = *(a1 + 88);
  v19 = *(a1 + 72);
  v20 = v15;
  v21 = *(a1 + 104);
  v22 = v12;
  v17 = *(a1 + 40);
  v18 = v14;
  return [v9 _positionKeyboardAlignedElementsWithMetrics:&v17];
}

- (void)_layoutWithMetrics:(SBSpotlightPresentationMetrics *)a3
{
  v5 = *&a3->homeAffordanceCenter.y;
  v33 = *&a3->keyboardProtectorCenter.y;
  v34 = v5;
  keyboardVelocity = a3->keyboardVelocity;
  v6 = *&a3->fullSearchBarSize.height;
  v29 = *&a3->searchAffordanceCornerRadius;
  v30 = v6;
  v7 = *&a3->keyboardAlpha;
  keyboardCenter = a3->keyboardCenter;
  v32 = v7;
  v8 = *&a3->searchAffordanceSize.height;
  v25 = *&a3->searchAffordanceBackgroundAlpha;
  v26 = v8;
  v9 = *&a3->searchAffordanceContentAlignment;
  v27 = *&a3->searchAffordanceCenter.y;
  v28 = v9;
  v10 = *&a3->searchContentCenter.y;
  v23 = *&a3->backgroundWeighting;
  v24 = v10;
  [(SBSpotlightPresentableViewController *)self _layoutSearchContentWithMetrics:&v23];
  v11 = *&a3->homeAffordanceCenter.y;
  v33 = *&a3->keyboardProtectorCenter.y;
  v34 = v11;
  keyboardVelocity = a3->keyboardVelocity;
  v12 = *&a3->fullSearchBarSize.height;
  v29 = *&a3->searchAffordanceCornerRadius;
  v30 = v12;
  v13 = *&a3->keyboardAlpha;
  keyboardCenter = a3->keyboardCenter;
  v32 = v13;
  v14 = *&a3->searchAffordanceSize.height;
  v25 = *&a3->searchAffordanceBackgroundAlpha;
  v26 = v14;
  v15 = *&a3->searchAffordanceContentAlignment;
  v27 = *&a3->searchAffordanceCenter.y;
  v28 = v15;
  v16 = *&a3->searchContentCenter.y;
  v23 = *&a3->backgroundWeighting;
  v24 = v16;
  [(SBSpotlightPresentableViewController *)self _layoutSearchAffordanceWithMetrics:&v23];
  v17 = *&a3->homeAffordanceCenter.y;
  v33 = *&a3->keyboardProtectorCenter.y;
  v34 = v17;
  keyboardVelocity = a3->keyboardVelocity;
  v18 = *&a3->fullSearchBarSize.height;
  v29 = *&a3->searchAffordanceCornerRadius;
  v30 = v18;
  v19 = *&a3->keyboardAlpha;
  keyboardCenter = a3->keyboardCenter;
  v32 = v19;
  v20 = *&a3->searchAffordanceSize.height;
  v25 = *&a3->searchAffordanceBackgroundAlpha;
  v26 = v20;
  v21 = *&a3->searchAffordanceContentAlignment;
  v27 = *&a3->searchAffordanceCenter.y;
  v28 = v21;
  v22 = *&a3->searchContentCenter.y;
  v23 = *&a3->backgroundWeighting;
  v24 = v22;
  [(SBSpotlightPresentableViewController *)self _positionKeyboardAlignedElementsWithMetrics:&v23];
}

- (void)_layoutSearchContentWithMetrics:(SBSpotlightPresentationMetrics *)a3
{
  v6 = [(SBSpotlightMultiplexingViewController *)self->_spotlightMultiplexingViewController view];
  [v6 setCenter:{a3->searchContentCenter.x, a3->searchContentCenter.y}];
  if ((BSFloatIsZero() & 1) == 0)
  {
    v5 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, a3->searchContentVelocity}];
    [v6 _setVelocity:v5 forKey:@"position"];
  }

  [(UIViewFloatAnimatableProperty *)self->_backgroundBlurProperty setValue:a3->backgroundWeighting];
  [(UIViewFloatAnimatableProperty *)self->_searchContentFadeProperty setValue:a3->searchContentAlpha];
}

- (void)_layoutSearchAffordanceWithMetrics:(SBSpotlightPresentationMetrics *)a3
{
  BSRectWithSize();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  searchAffordanceReferenceView = self->_searchAffordanceReferenceView;
  [(UIViewFloatAnimatableProperty *)self->_searchAffordanceReferenceBackgroundFadeProperty setValue:a3->searchAffordanceBackgroundAlpha];
  [(UIView *)self->_searchAffordanceContentContainerView setBounds:v6, v8, v10, v12];
  [(SBHSearchAffordance *)self->_searchAffordance setSearchAffordanceContentAlignment:a3->searchAffordanceContentAlignment];
  [(SBHSearchAffordance *)self->_searchAffordance setAppliesSearchAffordanceCornerRadius:1];
  [(SBHSearchAffordance *)self->_searchAffordance setSearchAffordanceCornerRadius:a3->searchAffordanceCornerRadius];
  [(SBHSearchAffordance *)self->_searchAffordance setBounds:v6, v8, v10, v12];
  [(UIView *)self->_searchAffordanceReferenceBackgroundView setFrame:v6, v8, v10, v12];
  [(UIView *)self->_searchAffordanceReferenceBackgroundView _setContinuousCornerRadius:a3->searchAffordanceCornerRadius];
  [(SBHSearchAffordance *)self->_searchAffordance layoutIfNeeded];
  [(_UIPortalView *)self->_searchAffordancePortalView setAlpha:a3->searchAffordanceAlpha];
  if (!searchAffordanceReferenceView || !self->_supportsSeparateSearchBarBackground)
  {
    [(UIView *)self->_searchAffordanceContentContainerView setAlpha:a3->searchAffordanceAlpha];
  }

  [(UIView *)self->_searchAffordanceBackgroundCapturingView setBounds:v6, v8, v10, v12];
  [(UIView *)self->_searchBarPortalClippingContainerView setBounds:v6, v8, v10, v12];
  [(UIView *)self->_searchBarPortalClippingContainerView _setContinuousCornerRadius:a3->searchAffordanceCornerRadius];
  v14 = v10 / a3->fullSearchBarSize.width;
  v15 = v12 / a3->fullSearchBarSize.height;
  if (BSFloatEqualToFloat() && BSFloatEqualToFloat())
  {
    v16 = 1152;
    searchBarPortalView = self->_searchBarPortalView;
    v24 = *(MEMORY[0x277CBF2C0] + 16);
    v25 = *MEMORY[0x277CBF2C0];
    *&v28.a = *MEMORY[0x277CBF2C0];
    *&v28.c = v24;
    v23 = *(MEMORY[0x277CBF2C0] + 32);
    *&v28.tx = v23;
    [(_UIPortalView *)searchBarPortalView setTransform:&v28];
    if (self->_supportsSeparateSearchBarBackground)
    {
      searchBarBackgroundPortalView = self->_searchBarBackgroundPortalView;
      *&v28.a = v25;
      *&v28.c = v24;
      *&v28.tx = v23;
      [(_UIPortalView *)searchBarBackgroundPortalView setTransform:&v28];
    }
  }

  else
  {
    memset(&v28, 0, sizeof(v28));
    CGAffineTransformMakeScale(&v28, v14, v15);
    if (self->_supportsSeparateSearchBarBackground)
    {
      v19 = self->_searchBarBackgroundPortalView;
      v27 = v28;
      [(_UIPortalView *)v19 setTransform:&v27];
      memset(&v27.c, 0, 32);
      if (v14 <= v15)
      {
        v20 = v14;
      }

      else
      {
        v20 = v15;
      }

      *&v27.a = 0uLL;
      CGAffineTransformMakeScale(&v27, v20, v20);
      v16 = 1152;
      v21 = self->_searchBarPortalView;
      v26 = v27;
      v22 = &v26;
    }

    else
    {
      v16 = 1152;
      v21 = self->_searchBarPortalView;
      v27 = v28;
      v22 = &v27;
    }

    [(_UIPortalView *)v21 setTransform:v22];
  }

  UIRectGetCenter();
  if (self->_supportsSeparateSearchBarBackground)
  {
    v16 = 1160;
  }

  [*(&self->super.super.super.isa + v16) setCenter:?];
  if (searchAffordanceReferenceView)
  {
    [(UIView *)self->_searchBarPortalClippingContainerView setAlpha:a3->searchBarAlpha];
  }
}

- (void)_positionKeyboardAlignedElementsWithMetrics:(SBSpotlightPresentationMetrics *)a3
{
  *&self->_appliedKeyboardAlignedElementsMetrics.backgroundWeighting = *&a3->backgroundWeighting;
  v5 = *&a3->searchAffordanceCenter.y;
  v7 = *&a3->searchContentCenter.y;
  v6 = *&a3->searchAffordanceBackgroundAlpha;
  *&self->_appliedKeyboardAlignedElementsMetrics.searchAffordanceSize.height = *&a3->searchAffordanceSize.height;
  *&self->_appliedKeyboardAlignedElementsMetrics.searchAffordanceCenter.y = v5;
  *&self->_appliedKeyboardAlignedElementsMetrics.searchContentCenter.y = v7;
  *&self->_appliedKeyboardAlignedElementsMetrics.searchAffordanceBackgroundAlpha = v6;
  keyboardCenter = a3->keyboardCenter;
  v10 = *&a3->searchAffordanceContentAlignment;
  v9 = *&a3->searchAffordanceCornerRadius;
  *&self->_appliedKeyboardAlignedElementsMetrics.fullSearchBarSize.height = *&a3->fullSearchBarSize.height;
  self->_appliedKeyboardAlignedElementsMetrics.keyboardCenter = keyboardCenter;
  *&self->_appliedKeyboardAlignedElementsMetrics.searchAffordanceContentAlignment = v10;
  *&self->_appliedKeyboardAlignedElementsMetrics.searchAffordanceCornerRadius = v9;
  v12 = *&a3->keyboardProtectorCenter.y;
  v11 = *&a3->homeAffordanceCenter.y;
  v13 = *&a3->keyboardAlpha;
  self->_appliedKeyboardAlignedElementsMetrics.keyboardVelocity = a3->keyboardVelocity;
  *&self->_appliedKeyboardAlignedElementsMetrics.keyboardProtectorCenter.y = v12;
  *&self->_appliedKeyboardAlignedElementsMetrics.homeAffordanceCenter.y = v11;
  *&self->_appliedKeyboardAlignedElementsMetrics.keyboardAlpha = v13;
  if (BSFloatIsZero())
  {
    v14 = 0;
  }

  else
  {
    v14 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, a3->keyboardVelocity}];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__SBSpotlightPresentableViewController__positionKeyboardAlignedElementsWithMetrics___block_invoke;
  v17[3] = &unk_2783C14A0;
  v15 = v14;
  v18 = v15;
  v16 = MEMORY[0x223D6F7F0](v17);
  [(_UIPortalView *)self->_searchAffordancePortalView setCenter:a3->searchAffordanceCenter.x, a3->searchAffordanceCenter.y];
  (v16)[2](v16, self->_searchAffordancePortalView);
  [(UIView *)self->_searchAffordanceContentContainerView setCenter:a3->searchAffordanceCenter.x, a3->searchAffordanceCenter.y];
  (v16)[2](v16, self->_searchAffordanceContentContainerView);
  [(UIView *)self->_searchAffordanceBackgroundCapturingView setCenter:a3->searchAffordanceCenter.x, a3->searchAffordanceCenter.y];
  (v16)[2](v16, self->_searchAffordanceBackgroundCapturingView);
  [(UIView *)self->_searchBarPortalClippingContainerView setCenter:a3->searchAffordanceCenter.x, a3->searchAffordanceCenter.y];
  (v16)[2](v16, self->_searchBarPortalClippingContainerView);
  if (self->_supportsSeparateSearchBarBackground)
  {
    [(_UIPortalView *)self->_searchBarPortalView setCenter:a3->searchAffordanceCenter.x, a3->searchAffordanceCenter.y];
    (v16)[2](v16, self->_searchBarPortalView);
  }

  [(UIViewFloatAnimatableProperty *)self->_keyboardFadeProperty setValue:a3->keyboardAlpha];
  [(UIView *)self->_keyboardView setCenter:a3->keyboardCenter.x, a3->keyboardCenter.y];
  (v16)[2](v16, self->_keyboardView);
  [(_UIPortalView *)self->_keyboardProtectorPortalView setCenter:a3->keyboardProtectorCenter.x, a3->keyboardProtectorCenter.y];
  (v16)[2](v16, self->_keyboardProtectorPortalView);
  [(SBHomeGrabberView *)self->_homeAffordance setCenter:a3->homeAffordanceCenter.x, a3->homeAffordanceCenter.y];
  (v16)[2](v16, self->_homeAffordance);
}

uint64_t __84__SBSpotlightPresentableViewController__positionKeyboardAlignedElementsWithMetrics___block_invoke(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    return [a2 _setVelocity:v2 forKey:@"position"];
  }

  return result;
}

- (int64_t)_searchAffordancePresentationStateWithOffset:(double)a3 presentationState:(int64_t)a4 previousSearchAffordancePresentationState:(int64_t)a5
{
  v8 = [(NSMutableSet *)self->_searchBarPortalRequirementReasons count];
  if (self->_searchBarPortalView)
  {
    v9 = 1;
  }

  else
  {
    v9 = self->_searchBarBackgroundPortalView != 0;
  }

  searchAffordanceReferenceView = self->_searchAffordanceReferenceView;
  if (a4 == 2)
  {
    if (v8 == 0 || v9)
    {
      return 2;
    }

    else
    {
      return searchAffordanceReferenceView != 0;
    }
  }

  else if (a4 == 1)
  {
    v11 = &OBJC_IVAR___SBSpotlightPresentableViewController__allowsKeyboardWhileInteractive;
    if (!searchAffordanceReferenceView)
    {
      v11 = &OBJC_IVAR___SBSpotlightPresentableViewController__allowsKeyboardWhileInteractiveWithoutSearchAffordance;
    }

    v12 = *(&self->super.super.super.isa + *v11);
    v13 = v12 ^ 1;
    if (v12 & v9)
    {
      v14 = BSFloatLessThanOrEqualToFloat();
      if (a5 == 2 && (v14 & 1) != 0)
      {
        v15 = 0;
        v16 = 0;
      }

      else
      {
        v17 = BSFloatGreaterThanOrEqualToFloat();
        if (a5 == 2)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        v15 = v18 ^ 1;
        v19 = v18 == 0;
        v16 = 1;
        if (!v19)
        {
          v16 = 2;
        }
      }
    }

    else
    {
      v15 = 1;
      v16 = 1;
    }

    if (searchAffordanceReferenceView)
    {
      v15 = 0;
    }

    if ((v15 | v13))
    {
      return 0;
    }

    else
    {
      return v16;
    }
  }

  return a4;
}

- (SBSpotlightPresentationMetrics)_presentationMetricsWithProgress:(SEL)a3 offset:(double)a4 velocity:(double)a5 presentationState:(double)a6 previousPresentationState:(int64_t)a7 anticipatedPresentationState:(int64_t)a8 searchContentPresentationState:(int64_t)a9 searchAffordancePresentationState:(int64_t)a10 hostedContentMetrics:(int64_t)a11
{
  retstr->searchAffordanceSize = 0u;
  p_searchAffordanceSize = &retstr->searchAffordanceSize;
  retstr->homeAffordanceCenter = 0u;
  *&retstr->searchContentVelocity = 0u;
  *&retstr->keyboardCenter.y = 0u;
  retstr->keyboardProtectorCenter = 0u;
  retstr->fullSearchBarSize = 0u;
  *&retstr->searchBarAlpha = 0u;
  *&retstr->searchAffordanceAlpha = 0u;
  *&retstr->searchAffordanceContentScale = 0u;
  retstr->searchAffordanceCenter = 0u;
  v105 = [(SBSpotlightPresentableViewController *)self view:a7];
  [v105 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v113 = v26;
  UIRectGetCenter();
  v28 = v27;
  v30 = v29;
  [(SBSpotlightPresentableViewController *)self topOffset];
  searchAffordanceReferenceBackgroundView = self->_searchAffordanceReferenceBackgroundView;
  v33 = 1.0;
  if (searchAffordanceReferenceBackgroundView)
  {
    v33 = 0.0;
  }

  if (a7)
  {
    if (a7 == 2)
    {
      __asm { FMOV            V4.2D, #1.0 }

      v33 = 1.0;
      v34 = v30;
    }

    else
    {
      v34 = v30;
      _Q4 = 0uLL;
      if (a7 == 1)
      {
        v34 = v30 + v31 + a5;
        v36.f64[0] = self->_searchContentInteractiveFadeInDistance;
        v36.f64[1] = self->_backgroundInteractiveBlurDistance;
        v37 = vdivq_f64(vdupq_lane_s64(*&a5, 0), v36);
        __asm { FMOV            V2.2D, #1.0 }

        _Q4 = vminnmq_f64(vandq_s8(vaddq_f64(v37, 0), vcgtzq_f64(v37)), _Q2);
        if (searchAffordanceReferenceBackgroundView)
        {
          v43 = a5 / self->_searchAffordanceBackgroundMaterialInteractiveFadeDistance;
          if (v43 <= 0.0)
          {
            v44 = 0.0;
          }

          else
          {
            v44 = v43 + 0.0;
          }

          v33 = fmin(v44, 1.0);
        }

        else
        {
          v33 = 1.0;
        }
      }
    }
  }

  else
  {
    v34 = v30 + v31;
    _Q4 = 0uLL;
  }

  v107 = a8;
  retstr->backgroundWeighting = _Q4.f64[1];
  v108 = v28;
  retstr->searchContentCenter.x = v28;
  retstr->searchContentCenter.y = v34;
  retstr->searchContentAlpha = _Q4.f64[0];
  retstr->searchAffordanceBackgroundAlpha = v33;
  searchAffordanceReferenceView = self->_searchAffordanceReferenceView;
  width = a12->searchBarSize.width;
  height = a12->searchBarSize.height;
  searchBarCornerRadius = a12->searchBarCornerRadius;
  v96 = v21;
  UIRectGetCenter();
  v106 = v48;
  v50 = v49;
  if (searchAffordanceReferenceView)
  {
    size = self->_searchAffordanceReferenceFrame.size;
    v51 = size.height;
  }

  else
  {
    size.width = width;
    size.height = height;
    v51 = height;
  }

  v52 = v51 * 0.5;
  v117 = v51 * 0.5;
  v112 = a9 == 0;
  v53 = [SBApp isHardwareKeyboardAttached];
  v54 = [(SBSpotlightMultiplexingViewController *)self->_spotlightMultiplexingViewController externalKeyboardViewContainsKeyboard];
  v110 = height;
  v111 = width;
  v97 = v25;
  if (a9)
  {
    v55 = a11;
    if (v54 || !self->_cancellingDismissAnimation)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v55 = a11;
  if (!v54)
  {
LABEL_19:
    v53 = 1;
  }

LABEL_20:
  keyboardHeight = a12->keyboardHeight;
  keyboardProtectorHeight = a12->keyboardProtectorHeight;
  v57 = v30 + a12->keyboardHeight;
  v58 = 3.0;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
    v60 = v59 = v53;
    v61 = [v60 safeAreaInsetsPortrait];
    [v61 bottomInset];
    v58 = v62 + 3.0;

    v53 = v59;
    v55 = a11;
  }

  v63 = v57 - v113;
  v64 = 1.0;
  if (v55)
  {
    if (v55 != 2)
    {
      v65 = 0.0;
      if (v55 == 1)
      {
        v115 = 0x3FF0000000000000;
        v116 = 1.0;
        v114 = 0.0;
        [(SBSpotlightPresentableViewController *)self _getSearchAffordanceMetricsForDefaultSize:a7 presentationState:&v116 presentationOffset:&v115 scaleX:&v114 scaleY:&size offset:&v117 size:size.width cornerRadius:v51, a5, 1.0];
        v50 = v50 + v114;
        v64 = 1.0;
        v109 = 1.0;
        if (!searchAffordanceReferenceView)
        {
          v66 = a4 / self->_searchAffordanceTransientFadeInThreshold;
          if (v66 <= 0.0)
          {
            v67 = 0.0;
          }

          else
          {
            v67 = v66 + 0.0;
          }

          v109 = fmin(v67, 1.0);
        }

        v63 = v57 - v113;
        v57 = v57 - v113 + v50 + size.height * 0.5;
        v112 = 1;
      }

      else
      {
        v112 = 1;
        v109 = 1.0;
      }

      goto LABEL_62;
    }

    if (v53)
    {
      v50 = v113 - v58 + a12->dockedSearchBarSize.height * -0.5;
      size = a12->dockedSearchBarSize;
    }

    else
    {
      v69 = size.width;
      size.width = v111;
      size.height = v110;
      if (a7 == 1 && self->_keyboardFollowsSpotlightContent)
      {
        if (searchAffordanceReferenceView)
        {
          v116 = 0.0;
          [(SBSpotlightPresentableViewController *)self _getSearchAffordanceMetricsForDefaultSize:1 presentationState:0 presentationOffset:0 scaleX:&v116 scaleY:0 offset:0 size:v69 cornerRadius:v51, self->_interactiveKeyboardPresentationThreshold];
          v63 = v57 - v113;
          v70 = v50 + v116 + self->_interactiveKeyboardPresentationOffset;
          v71 = a5 - self->_interactiveKeyboardPresentationThreshold;
          v50 = v70 + v71;
          v57 = v71 + v57 - v113 + v70 + size.height * 0.5 + 3.0;
          v117 = searchBarCornerRadius;
LABEL_51:
          v109 = 0.0;
          v65 = 1.0;
          v68 = v107;
          if (self->_supportsSeparateSearchBarBackground && self->_scalesSearchAffordanceContentWhileFading)
          {
            v72 = v63;
            v73 = self->_searchAffordanceContentFadeRange.end - self->_searchBarContentFadeRange.start;
            v109 = 0.0;
            if (BSFloatGreaterThanFloat())
            {
              v74 = v73 * 0.5 + self->_searchBarContentFadeRange.start;
              v75 = size.height / v110;
              if (size.height / v110 > size.width / v111)
              {
                v75 = size.width / v111;
              }

              v76 = v110 * (v75 + v74 * (1.0 - v75)) / size.height;
              v77 = v110 / size.height;
              if (v110 / size.height > v111 / size.width)
              {
                v77 = v111 / size.width;
              }

              v64 = v76 * (1.0 / (v74 * (v77 + -1.0) + 1.0)) * ((self->_searchAffordanceContentFadeRange.end - self->_searchAffordanceContentFadeRange.start) / v74);
            }

            else
            {
              v64 = 1.0;
            }

            v63 = v72;
          }

          else
          {
            v64 = 1.0;
          }

          goto LABEL_63;
        }

        v50 = v113 - keyboardHeight + v110 * -0.5 + -3.0 + a5;
        v57 = v30 + a5;
        v117 = searchBarCornerRadius;
LABEL_61:
        v109 = 0.0;
        v65 = 1.0;
        v64 = 1.0;
LABEL_62:
        v68 = v107;
        goto LABEL_63;
      }

      v57 = v30;
      v50 = v113 - keyboardHeight + v110 * -0.5 + -3.0;
    }

    v117 = searchBarCornerRadius;
    if (searchAffordanceReferenceView)
    {
      goto LABEL_51;
    }

    goto LABEL_61;
  }

  if (searchAffordanceReferenceView)
  {
    v109 = 1.0;
    v65 = 0.0;
    if (a7 == 1)
    {
      v116 = 0.0;
      [(SBSpotlightPresentableViewController *)self _getSearchAffordanceMetricsForDefaultSize:1 presentationState:0 presentationOffset:0 scaleX:&v116 scaleY:&size offset:&v117 size:size.width cornerRadius:v51, a5, 1.0];
      v64 = 1.0;
      v63 = v57 - v113;
      v50 = v50 + v116;
    }

    v68 = v107;
  }

  else
  {
    v68 = v107;
    v109 = 0.0;
    if (v107 == 2)
    {
      v65 = 0.0;
    }

    else
    {
      v65 = 1.0;
    }

    size.width = v111;
    size.height = v110;
    v117 = searchBarCornerRadius;
    v52 = v110 * 0.5;
    v50 = v113 + v110 * 0.5;
  }

  v57 = v63 + v50 + v52 + 3.0;
  v112 = 1;
LABEL_63:
  if (self->_hasUnifiedKeyboardBackground)
  {
    v78 = v113 * 0.5 - keyboardProtectorHeight * 0.5 + v57;
  }

  else
  {
    v78 = v57 - (v63 + keyboardProtectorHeight * 0.5);
  }

  if (v68 != 1 && v68 != a7 && a7 == 2 && self->_allowsVelocityInjection)
  {
    injectedVelocityForNonInteractiveTransitions = 0.0;
    v80 = 0.0;
    if (!self->_injectsVelocityForNonInteractiveTransitions)
    {
      goto LABEL_82;
    }

    goto LABEL_77;
  }

  if (v68 != a7 && a7 == 2 && self->_allowsVelocityInjection && v68 == 1 && self->_injectsVelocityOnlyForShortSwipes)
  {
    v81 = v78;
    v82 = v64;
    v83 = [(SBSpotlightMultiplexingViewController *)self->_spotlightMultiplexingViewController view];
    v84 = [v83 _velocityForKey:@"position"];
    [v84 CGPointValue];

    LOBYTE(v84) = BSFloatGreaterThanOrEqualToFloat();
    v64 = v82;
    v78 = v81;
    injectedVelocityForNonInteractiveTransitions = 0.0;
    v80 = 0.0;
    if (v84)
    {
      goto LABEL_82;
    }

LABEL_76:
    injectedVelocityForNonInteractiveTransitions = self->_injectedPercentageOfGestureVelocity * a6;
    goto LABEL_78;
  }

  injectedVelocityForNonInteractiveTransitions = 0.0;
  v80 = 0.0;
  if (v68 == a7 || a7 != 2 || !self->_allowsVelocityInjection)
  {
    goto LABEL_82;
  }

  if (v68 == 1)
  {
    goto LABEL_76;
  }

LABEL_77:
  injectedVelocityForNonInteractiveTransitions = self->_injectedVelocityForNonInteractiveTransitions;
LABEL_78:
  if (v55 == 2)
  {
    v85 = &OBJC_IVAR___SBSpotlightPresentableViewController__keyboardInjectedVelocityPercentageForNonInteractiveTransitions;
    if (v68 == 1)
    {
      v85 = &OBJC_IVAR___SBSpotlightPresentableViewController__keyboardInjectedVelocityPercentage;
    }

    v80 = injectedVelocityForNonInteractiveTransitions * *(&self->super.super.super.isa + *v85);
  }

LABEL_82:
  v86 = v57;
  if (v53)
  {
    v87 = v64;
    v88 = [(SBSpotlightPresentableViewController *)self spotlightMultiplexingViewController];
    v89 = [v88 level];

    v64 = v87;
    v86 = v57;
    if (!v89)
    {
      [(SBHomeGrabberView *)self->_homeAffordance bounds];
      v101 = v90 + v91;
      [(SBHomeGrabberView *)self->_homeAffordance grabberFrameForBounds:v96, v23, v97, v113];
      v102 = v101 - v92;
      UIRectGetCenter();
      v64 = v87;
      v86 = v93 + (1.0 - a4) * v102;
    }
  }

  *p_searchAffordanceSize = size;
  retstr->searchAffordanceCenter.x = v106;
  retstr->searchAffordanceCenter.y = v50;
  retstr->searchAffordanceAlpha = v109;
  retstr->searchAffordanceContentAlignment = v112;
  v94 = v117;
  retstr->searchAffordanceContentScale = v64;
  retstr->searchAffordanceCornerRadius = v94;
  retstr->fullSearchBarSize.width = v111;
  retstr->fullSearchBarSize.height = v110;
  retstr->searchBarAlpha = v65;
  retstr->keyboardCenter.x = v108;
  retstr->keyboardCenter.y = v57;
  retstr->keyboardAlpha = v65;
  retstr->keyboardProtectorCenter.x = v108;
  retstr->keyboardProtectorCenter.y = v78;
  retstr->homeAffordanceCenter.x = v108;
  retstr->homeAffordanceCenter.y = v86;
  retstr->searchContentVelocity = injectedVelocityForNonInteractiveTransitions;
  retstr->keyboardVelocity = v80;

  return result;
}

- (void)_getSearchAffordanceMetricsForDefaultSize:(CGSize)a3 presentationState:(int64_t)a4 presentationOffset:(double)a5 scaleX:(double *)a6 scaleY:(double *)a7 offset:(double *)a8 size:(CGSize *)a9 cornerRadius:(double *)a10
{
  width = a3.width;
  height = a3.height;
  searchAffordanceMaxScaleX = self->_searchAffordanceMaxScaleX;
  v30.a = 1.0;
  v30.c = searchAffordanceMaxScaleX;
  *&v30.b = 1;
  *&v30.d = 1;
  BSUIConstrainValueToIntervalWithRubberBand();
  v19 = v18;
  if (a6)
  {
    *a6 = v18;
  }

  searchAffordanceMaxScaleY = self->_searchAffordanceMaxScaleY;
  v30.a = 1.0;
  v30.c = searchAffordanceMaxScaleY;
  *&v30.b = 1;
  *&v30.d = 1;
  BSUIConstrainValueToIntervalWithRubberBand();
  v22 = v21;
  if (a7)
  {
    *a7 = v21;
  }

  v23 = 0;
  if (a4 != 2)
  {
    searchAffordanceMaxOffset = self->_searchAffordanceMaxOffset;
    *&v30.a = 0u;
    v30.c = searchAffordanceMaxOffset;
    LOBYTE(v30.b) = 1;
    *&v30.d = 1;
    BSUIConstrainValueToIntervalWithRubberBand();
  }

  if (a8)
  {
    *a8 = v23;
  }

  if (!BSFloatEqualToFloat() || (BSFloatEqualToFloat() & 1) == 0)
  {
    memset(&v30, 0, sizeof(v30));
    CGAffineTransformMakeScale(&v30, v19, v22);
    v25 = [(SBSpotlightPresentableViewController *)self view];
    UISizeRoundToViewScale();
    width = v26;
    height = v27;
  }

  if (a9)
  {
    a9->width = width;
    a9->height = height;
  }

  if (a10)
  {
    *a10 = height * 0.5;
  }
}

- (id)willBeginModifyingPresentationProgressForState:(int64_t)a3 animated:(BOOL)a4 needsInitialLayout:(BOOL *)a5
{
  v6 = a4;
  self->_anticipatedPresentationState = a3;
  if (self->_presentationState != 2)
  {
    v9 = [(SBHSearchAffordance *)self->_searchAffordance searchAffordanceReferenceView];
    searchAffordanceReferenceView = self->_searchAffordanceReferenceView;
    self->_searchAffordanceReferenceView = v9;

    [(SBHSearchAffordance *)self->_searchAffordance searchAffordanceReferenceFrame];
    self->_searchAffordanceReferenceFrame.origin.x = v11;
    self->_searchAffordanceReferenceFrame.origin.y = v12;
    self->_searchAffordanceReferenceFrame.size.width = v13;
    self->_searchAffordanceReferenceFrame.size.height = v14;
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = [MEMORY[0x277CCAD78] UUID];
  v17 = [v16 UUIDString];
  v18 = v17;
  v19 = @"InteractivePresentation-%@";
  if (!a3)
  {
    v19 = @"AnimatedDismissal-%@";
  }

  if (a3 == 2)
  {
    v20 = @"AnimatedPresentation-%@";
  }

  else
  {
    v20 = v19;
  }

  v21 = [v15 stringWithFormat:v20, v17];

  v22 = v6 && self->_searchBarPortalView == 0;
  v23 = self->_presentationState == 2 && a3 == 0;
  v24 = v23 || v22;
  self->_dismissingFromFullyPresented = v22 && v23;
  if (v6)
  {
    [(SBSpotlightPresentableViewController *)self _beginRequiringSearchBarPortalViewForReason:v21];
    [(SBSpotlightPresentableViewController *)self _setHitTestingDisabledOnHostedContent:a3 == 0];
    *a5 = v24;
    objc_initWeak(&location, self);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __115__SBSpotlightPresentableViewController_willBeginModifyingPresentationProgressForState_animated_needsInitialLayout___block_invoke;
    v27[3] = &unk_2783B00B0;
    objc_copyWeak(&v30, &location);
    v28 = v21;
    v29 = self;
    v25 = MEMORY[0x223D6F7F0](v27);

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  else
  {
    [(SBSpotlightPresentableViewController *)self _setHitTestingDisabledOnHostedContent:0];
    v25 = 0;
    *a5 = v24;
  }

  return v25;
}

void __115__SBSpotlightPresentableViewController_willBeginModifyingPresentationProgressForState_animated_needsInitialLayout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _endRequiringSearchBarPortalViewForReason:*(a1 + 32)];
    if (!v3[144] && !v3[145])
    {
      [v3 _setHitTestingDisabledOnHostedContent:0];
      *(*(a1 + 40) + 995) = 0;
      *(*(a1 + 40) + 996) = 0;
    }

    if (v3[150] == 2 && !v3[142])
    {
      [v3[137] alpha];
      if ((BSFloatEqualToFloat() & 1) == 0)
      {
        v43 = 0;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v4 = *(a1 + 40);
        v5 = *(v4 + 1216);
        v6 = *(v4 + 1208);
        v7 = *(v4 + 1200);
        v8 = *(v4 + 1192);
        v9 = *(v4 + 1184);
        v10 = *(v4 + 1608);
        v11 = *(v4 + 1624);
        v12 = *(v4 + 1640);
        v30 = *(v4 + 1656);
        v29[1] = v11;
        v29[2] = v12;
        v29[0] = v10;
        [v3 _presentationMetricsWithProgress:v7 offset:v6 velocity:v5 presentationState:v7 previousPresentationState:v7 anticipatedPresentationState:v29 searchContentPresentationState:v9 searchAffordancePresentationState:v8 hostedContentMetrics:0.0];
        v13 = MEMORY[0x277D75D18];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __115__SBSpotlightPresentableViewController_willBeginModifyingPresentationProgressForState_animated_needsInitialLayout___block_invoke_2;
        v14[3] = &unk_2783C14C8;
        v14[4] = *(a1 + 40);
        v15 = v3;
        v26 = v41;
        v27 = v42;
        v28 = v43;
        v22 = v37;
        v23 = v38;
        v25 = v40;
        v24 = v39;
        v18 = v33;
        v19 = v34;
        v21 = v36;
        v20 = v35;
        v17 = v32;
        v16 = v31;
        [v13 performWithoutAnimation:v14];
      }
    }
  }
}

void __115__SBSpotlightPresentableViewController_willBeginModifyingPresentationProgressForState_animated_needsInitialLayout___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v3 = *(*(a1 + 32) + 1288);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __115__SBSpotlightPresentableViewController_willBeginModifyingPresentationProgressForState_animated_needsInitialLayout___block_invoke_3;
  v11[3] = &unk_2783C1478;
  v4 = *(a1 + 40);
  v5 = *(a1 + 176);
  v22 = *(a1 + 192);
  v6 = *(a1 + 224);
  v23 = *(a1 + 208);
  v24 = v6;
  v7 = *(a1 + 112);
  v18 = *(a1 + 128);
  v8 = *(a1 + 160);
  v19 = *(a1 + 144);
  v20 = v8;
  v21 = v5;
  v9 = *(a1 + 48);
  v14 = *(a1 + 64);
  v10 = *(a1 + 96);
  v15 = *(a1 + 80);
  v16 = v10;
  v17 = v7;
  v12 = v4;
  v25 = *(a1 + 240);
  v13 = v9;
  [v2 sb_animateWithSettings:v3 mode:2 animations:v11 completion:0];
}

uint64_t __115__SBSpotlightPresentableViewController_willBeginModifyingPresentationProgressForState_animated_needsInitialLayout___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 184);
  v3 = *(a1 + 216);
  v9[10] = *(a1 + 200);
  v9[11] = v3;
  v10 = *(a1 + 232);
  v4 = *(a1 + 120);
  v5 = *(a1 + 152);
  v9[6] = *(a1 + 136);
  v9[7] = v5;
  v9[8] = *(a1 + 168);
  v9[9] = v2;
  v6 = *(a1 + 56);
  v7 = *(a1 + 88);
  v9[2] = *(a1 + 72);
  v9[3] = v7;
  v9[4] = *(a1 + 104);
  v9[5] = v4;
  v9[0] = *(a1 + 40);
  v9[1] = v6;
  return [v1 _layoutWithMetrics:v9];
}

- (void)spotlightMultiplexingViewController:(id)a3 searchContentAvailabilityDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    if (self->_waitingForSearchContentAvailabilityForFadeIn)
    {
      self->_waitingForSearchContentAvailabilityForFadeIn = 0;
      [(UIViewFloatAnimatableProperty *)self->_searchContentFadeProperty presentationValue];
      self->_searchContentFadeInStartValue = v7;
    }

    if (self->_presentationState)
    {
      if (self->_searchBarPortalView || self->_searchBarBackgroundPortalView)
      {
        if (![(SBSpotlightPresentableViewController *)self _setUpHostedContentMetrics])
        {
          goto LABEL_17;
        }

        v8 = 0;
      }

      else
      {
        [(SBSpotlightPresentableViewController *)self _configureHostedContent];
        v8 = 1;
      }

      [(SBSpotlightPresentableViewController *)self _beginRequiringSearchBarPortalViewForReason:@"SBWaitingForSearchBarPortalReason"];
      presentationState = self->_presentationState;
      if ((v8 & 1) == 0 && presentationState != 1 || ((v10 = self->_searchAffordanceReferenceView != 0, v50 = 0, v48 = 0u, v49 = 0u, presentationState == 1) ? (v11 = 1) : (v11 = 2), v46 = 0uLL, v47 = 0uLL, v44 = 0uLL, v45 = 0uLL, presentationProgress = self->_presentationProgress, v42 = 0uLL, v43 = 0uLL, presentationOffset = self->_presentationOffset, v40 = 0uLL, v41 = 0uLL, previousPresentationState = self->_previousPresentationState, v38 = 0uLL, v39 = 0uLL, searchBarSize = self->_hostedContentMetrics.searchBarSize, v36[0] = *&self->_hostedContentMetrics.keyboardHeight, v36[1] = searchBarSize, v36[2] = self->_hostedContentMetrics.dockedSearchBarSize, searchBarCornerRadius = self->_hostedContentMetrics.searchBarCornerRadius, -[SBSpotlightPresentableViewController _presentationMetricsWithProgress:offset:velocity:presentationState:previousPresentationState:anticipatedPresentationState:searchContentPresentationState:searchAffordancePresentationState:hostedContentMetrics:](self, "_presentationMetricsWithProgress:offset:velocity:presentationState:previousPresentationState:anticipatedPresentationState:searchContentPresentationState:searchAffordancePresentationState:hostedContentMetrics:", v11, previousPresentationState, v11, presentationState == 1, v10, v36, presentationProgress, presentationOffset, 0.0), v16 = self->_searchAnimationSettings, v22[0] = MEMORY[0x277D85DD0], v22[1] = 3221225472, v32 = v47, v33 = v48, v34 = v49, v28 = v43, v29 = v44, v30 = v45, v31 = v46, v24 = v39, v25 = v40, v26 = v41, v27 = v42, v22[2] = __111__SBSpotlightPresentableViewController_spotlightMultiplexingViewController_searchContentAvailabilityDidChange___block_invoke, v22[3] = &unk_2783C1478, v22[4] = self, v35 = v50, v23 = v38, v20[0] = MEMORY[0x277D85DD0], v20[1] = 3221225472, v20[2] = __111__SBSpotlightPresentableViewController_spotlightMultiplexingViewController_searchContentAvailabilityDidChange___block_invoke_2, v20[3] = &unk_2783AD430, v21 = presentationState == 1, v20[4] = self, [MEMORY[0x277D75D18] sb_animateWithSettings:v16 mode:2 animations:v22 completion:v20], presentationState != 1))
      {
        searchAnimationSettings = self->_searchAnimationSettings;
        v18[4] = self;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __111__SBSpotlightPresentableViewController_spotlightMultiplexingViewController_searchContentAvailabilityDidChange___block_invoke_3;
        v19[3] = &unk_2783A8C18;
        v19[4] = self;
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __111__SBSpotlightPresentableViewController_spotlightMultiplexingViewController_searchContentAvailabilityDidChange___block_invoke_4;
        v18[3] = &unk_2783AE4B8;
        [MEMORY[0x277D75D18] sb_animateWithSettings:searchAnimationSettings mode:3 animations:v19 completion:v18];
      }
    }
  }

LABEL_17:
}

uint64_t __111__SBSpotlightPresentableViewController_spotlightMultiplexingViewController_searchContentAvailabilityDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 184);
  v3 = *(a1 + 216);
  v9[10] = *(a1 + 200);
  v9[11] = v3;
  v10 = *(a1 + 232);
  v4 = *(a1 + 120);
  v5 = *(a1 + 152);
  v9[6] = *(a1 + 136);
  v9[7] = v5;
  v9[8] = *(a1 + 168);
  v9[9] = v2;
  v6 = *(a1 + 56);
  v7 = *(a1 + 88);
  v9[2] = *(a1 + 72);
  v9[3] = v7;
  v9[4] = *(a1 + 104);
  v9[5] = v4;
  v9[0] = *(a1 + 40);
  v9[1] = v6;
  return [v1 _layoutWithMetrics:v9];
}

uint64_t __111__SBSpotlightPresentableViewController_spotlightMultiplexingViewController_searchContentAvailabilityDidChange___block_invoke_2(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) _endRequiringSearchBarPortalViewForReason:@"SBWaitingForSearchBarPortalReason"];
  }

  return result;
}

- (void)spotlightMultiplexingViewController:(id)a3 externalKeyboardViewContainsKeyboardDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 && !self->_initializingKeyboardView)
  {
    if (self->_waitingForKeyboardPresentationForFadeIn)
    {
      self->_waitingForKeyboardPresentationForFadeIn = 0;
      [(UIViewFloatAnimatableProperty *)self->_keyboardFadeProperty presentationValue];
      self->_keyboardFadeInStartValue = v7;
    }

    if (self->_presentationState)
    {
      [(SBSpotlightPresentableViewController *)self _setUpHostedContentMetrics];
      if ((BSFloatEqualToFloat() & 1) == 0)
      {
        v47 = 0;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        presentationProgress = self->_presentationProgress;
        presentationOffset = self->_presentationOffset;
        presentationState = self->_presentationState;
        previousPresentationState = self->_previousPresentationState;
        anticipatedPresentationState = self->_anticipatedPresentationState;
        searchAffordancePresentationState = self->_searchAffordancePresentationState;
        searchBarSize = self->_hostedContentMetrics.searchBarSize;
        v33[0] = *&self->_hostedContentMetrics.keyboardHeight;
        v33[1] = searchBarSize;
        v33[2] = self->_hostedContentMetrics.dockedSearchBarSize;
        searchBarCornerRadius = self->_hostedContentMetrics.searchBarCornerRadius;
        [(SBSpotlightPresentableViewController *)self _presentationMetricsWithProgress:presentationState offset:previousPresentationState velocity:anticipatedPresentationState presentationState:presentationState previousPresentationState:searchAffordancePresentationState anticipatedPresentationState:v33 searchContentPresentationState:presentationProgress searchAffordancePresentationState:presentationOffset hostedContentMetrics:0.0];
        [(SBSpotlightPresentableViewController *)self _beginRequiringSearchBarPortalViewForReason:@"SBKeyboardAdjustmentAnimationReason"];
        v15 = self->_presentationState;
        searchAnimationSettings = self->_searchAnimationSettings;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v29 = v44;
        v30 = v45;
        v31 = v46;
        v25 = v40;
        v26 = v41;
        v27 = v42;
        v28 = v43;
        v21 = v36;
        v22 = v37;
        v23 = v38;
        v24 = v39;
        if (v15 == 1)
        {
          v17 = 2;
        }

        else
        {
          v17 = 3;
        }

        v19[2] = __122__SBSpotlightPresentableViewController_spotlightMultiplexingViewController_externalKeyboardViewContainsKeyboardDidChange___block_invoke;
        v19[3] = &unk_2783C1478;
        v19[4] = self;
        v32 = v47;
        v20 = v35;
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __122__SBSpotlightPresentableViewController_spotlightMultiplexingViewController_externalKeyboardViewContainsKeyboardDidChange___block_invoke_2;
        v18[3] = &unk_2783AE4B8;
        v18[4] = self;
        [MEMORY[0x277D75D18] sb_animateWithSettings:searchAnimationSettings mode:v17 animations:v19 completion:v18];
      }
    }
  }
}

uint64_t __122__SBSpotlightPresentableViewController_spotlightMultiplexingViewController_externalKeyboardViewContainsKeyboardDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 184);
  v3 = *(a1 + 216);
  v9[10] = *(a1 + 200);
  v9[11] = v3;
  v10 = *(a1 + 232);
  v4 = *(a1 + 120);
  v5 = *(a1 + 152);
  v9[6] = *(a1 + 136);
  v9[7] = v5;
  v9[8] = *(a1 + 168);
  v9[9] = v2;
  v6 = *(a1 + 56);
  v7 = *(a1 + 88);
  v9[2] = *(a1 + 72);
  v9[3] = v7;
  v9[4] = *(a1 + 104);
  v9[5] = v4;
  v9[0] = *(a1 + 40);
  v9[1] = v6;
  return [v1 _positionKeyboardAlignedElementsWithMetrics:v9];
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if ([(SBSpotlightPresentableViewController *)self isViewLoaded:a3])
  {

    [(SBSpotlightPresentableViewController *)self _setUpSearchAnimationSettings];
  }
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSpotlightPresentableViewController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBSpotlightPresentableViewController *)self succinctDescriptionBuilder];
  [v5 setActiveMultilinePrefix:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__SBSpotlightPresentableViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __78__SBSpotlightPresentableViewController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 1200);
  if (v3 > 2)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = off_2783C14E8[v3];
  }

  [v2 appendString:v4 withName:@"presentationState"];
  v5 = *(a1 + 32);
  [*(*(a1 + 40) + 1016) _appearState];
  v6 = SBFStringForAppearState();
  [v5 appendString:v6 withName:@"appearState"];

  v7 = *(a1 + 32);
  v8 = [*(*(a1 + 40) + 1176) allObjects];
  [v7 appendArraySection:v8 withName:@"searchBarPortalRequirementReasons" skipIfEmpty:1];
}

- (void)_createScaleProperty
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75D38]);
  scaleProperty = self->_scaleProperty;
  self->_scaleProperty = v3;

  [(UIViewFloatAnimatableProperty *)self->_scaleProperty setValue:1.0];
  [(UIViewFloatAnimatableProperty *)self->_scaleProperty setVelocityUsableForVFD:1];
  v5 = objc_alloc_init(MEMORY[0x277D65E60]);
  scaleSettings = self->_scaleSettings;
  self->_scaleSettings = v5;

  [(SBFFluidBehaviorSettings *)self->_scaleSettings setBehaviorType:2];
  [(SBFFluidBehaviorSettings *)self->_scaleSettings setDampingRatio:1.0];
  [(SBFFluidBehaviorSettings *)self->_scaleSettings setResponse:0.5];
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D75D18];
  v12[0] = self->_scaleProperty;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__SBSpotlightPresentableViewController__createScaleProperty__block_invoke;
  v9[3] = &unk_2783A8C68;
  objc_copyWeak(&v10, &location);
  [v7 _createTransformerWithInputAnimatableProperties:v8 presentationValueChangedCallback:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __60__SBSpotlightPresentableViewController__createScaleProperty__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateForScalePropertyChanged];
}

- (void)_updateForScalePropertyChanged
{
  v3 = 1.0;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    [(UIViewFloatAnimatableProperty *)self->_scaleProperty presentationValue];
    v3 = v4;
  }

  memset(&v7, 0, sizeof(v7));
  CGAffineTransformMakeScale(&v7, v3, v3);
  scaleView = self->_scaleView;
  v6 = v7;
  [(UIView *)scaleView setTransform:&v6];
}

- (void)_createSearchContentFadeProperty
{
  v12[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x277D75D38]);
  searchContentFadeProperty = self->_searchContentFadeProperty;
  self->_searchContentFadeProperty = v3;

  [(UIViewFloatAnimatableProperty *)self->_searchContentFadeProperty setVelocityUsableForVFD:1];
  v5 = MEMORY[0x277D75D18];
  v12[0] = self->_searchContentFadeProperty;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__SBSpotlightPresentableViewController__createSearchContentFadeProperty__block_invoke;
  v9[3] = &unk_2783A8C68;
  objc_copyWeak(&v10, &location);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__SBSpotlightPresentableViewController__createSearchContentFadeProperty__block_invoke_2;
  v7[3] = &unk_2783A8C68;
  objc_copyWeak(&v8, &location);
  [v5 _createTransformerWithInputAnimatableProperties:v6 modelValueSetter:v9 presentationValueSetter:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_tearDownSearchAffordanceReferenceBackgroundFadeProperty
{
  searchAffordanceReferenceBackgroundFadeProperty = self->_searchAffordanceReferenceBackgroundFadeProperty;
  if (searchAffordanceReferenceBackgroundFadeProperty)
  {
    if (([(UIViewFloatAnimatableProperty *)searchAffordanceReferenceBackgroundFadeProperty isInvalidated]& 1) == 0)
    {
      [(UIViewFloatAnimatableProperty *)self->_searchAffordanceReferenceBackgroundFadeProperty invalidate];
    }

    v4 = self->_searchAffordanceReferenceBackgroundFadeProperty;
    self->_searchAffordanceReferenceBackgroundFadeProperty = 0;
  }
}

- (void)_createBackgroundBlurProperty
{
  v10[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x277D75D38]);
  backgroundBlurProperty = self->_backgroundBlurProperty;
  self->_backgroundBlurProperty = v3;

  [(UIViewFloatAnimatableProperty *)self->_backgroundBlurProperty setVelocityUsableForVFD:1];
  v5 = MEMORY[0x277D75D18];
  v10[0] = self->_backgroundBlurProperty;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__SBSpotlightPresentableViewController__createBackgroundBlurProperty__block_invoke;
  v7[3] = &unk_2783A8C68;
  objc_copyWeak(&v8, &location);
  [v5 _createTransformerWithInputAnimatableProperties:v6 presentationValueChangedCallback:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_tearDownBackgroundBlurProperty
{
  backgroundBlurProperty = self->_backgroundBlurProperty;
  if (backgroundBlurProperty)
  {
    if (([(UIViewFloatAnimatableProperty *)backgroundBlurProperty isInvalidated]& 1) == 0)
    {
      [(UIViewFloatAnimatableProperty *)self->_backgroundBlurProperty invalidate];
    }

    v4 = self->_backgroundBlurProperty;
    self->_backgroundBlurProperty = 0;
  }
}

- (void)_setCornerRounded:(BOOL)a3
{
  v3 = a3;
  scaleView = self->_scaleView;
  if (a3)
  {
    v6 = [(SBSpotlightPresentableViewController *)self _screen];
    v7 = [v6 traitCollection];
    [v7 displayCornerRadius];
    [(UIView *)scaleView _setContinuousCornerRadius:?];
  }

  else
  {
    [(UIView *)self->_scaleView _setContinuousCornerRadius:0.0];
  }

  v8 = self->_scaleView;

  [(UIView *)v8 setClipsToBounds:v3];
}

- (void)_setUpSearchBackground
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v3 = [WeakRetained backgroundViewForSpotlightPresentableViewController:self];
    searchBackgroundView = self->_searchBackgroundView;
    self->_searchBackgroundView = v3;
  }

  v5 = self->_searchBackgroundView;
  if (v5)
  {
    [(SBSpotlightBackgroundWeighting *)v5 bs_setHitTestingDisabled:1];
    v6 = [(SBSpotlightPresentableViewController *)self view];
    [v6 addSubview:self->_searchBackgroundView];
    [v6 sendSubviewToBack:self->_searchBackgroundView];
  }
}

- (void)_setUpSearchAffordance
{
  [(UIView *)self->_searchAffordanceReferenceBackgroundView removeFromSuperview];
  searchAffordanceReferenceBackgroundView = self->_searchAffordanceReferenceBackgroundView;
  self->_searchAffordanceReferenceBackgroundView = 0;

  [(SBSpotlightPresentableViewController *)self _tearDownSearchAffordanceReferenceBackgroundFadeProperty];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained searchAffordanceViewForSpotlightPresentableViewController:self];
    searchAffordance = self->_searchAffordance;
    self->_searchAffordance = v4;
  }

  v6 = self->_searchAffordance;
  if (v6)
  {
    [(SBHSearchAffordance *)v6 setAlpha:0.0];
    v7 = objc_alloc_init(MEMORY[0x277D75D18]);
    searchAffordanceContentContainerView = self->_searchAffordanceContentContainerView;
    self->_searchAffordanceContentContainerView = v7;

    [(UIView *)self->_searchAffordanceContentContainerView bs_setHitTestingDisabled:1];
    v9 = [(SBHSearchAffordance *)self->_searchAffordance searchAffordanceContentView];
    [v9 removeFromSuperview];
    [(UIView *)self->_searchAffordanceContentContainerView addSubview:v9];
    v10 = self->_scaleView;
    v11 = [(UIView *)v10 window];
    if (v11)
    {
      [(SBSpotlightPresentableViewController *)self _ensureSearchAffordanceIsInstalledInView:v11];
    }

    if (self->_searchAffordanceReferenceBackgroundView)
    {
      [(SBHSearchAffordance *)self->_searchAffordance addSubview:?];
    }

    [(UIView *)v10 addSubview:self->_searchAffordanceContentContainerView];
  }
}

- (void)_setUpHomeAffordance
{
  if (SBFEffectiveHomeButtonType() == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained wantsHomeAffordanceForSpotlightPresentableViewController:self])
    {
      v3 = self->_scaleView;
      v4 = [SBHomeGrabberView alloc];
      [(UIView *)v3 bounds];
      v5 = [(SBHomeGrabberView *)v4 initWithFrame:?];
      homeAffordance = self->_homeAffordance;
      self->_homeAffordance = v5;

      [(SBHomeGrabberView *)self->_homeAffordance setAutoresizingMask:18];
      [(SBHomeGrabberView *)self->_homeAffordance setColorBias:2];
      [(SBHomeGrabberView *)self->_homeAffordance setPointerClickDelegate:self];
      [(UIView *)v3 addSubview:self->_homeAffordance];
    }
  }
}

- (void)_setUpSearchBackgroundMatchMoveAnimation
{
  if (self->_searchBackgroundView)
  {
    v3 = MEMORY[0x277D65DE0];
    v4 = [(SBSpotlightPresentableViewController *)self view];
    v5 = [v4 window];
    v6 = [v3 matchMoveAnimationForPinningToView:v5];

    [(SBSpotlightBackgroundWeighting *)self->_searchBackgroundView addAnimation:v6 forKey:@"SBSearchBackgroundMatchMoveAnimation"];
  }
}

- (void)_beginRequiringSearchBarPortalViewForReason:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [(SBSpotlightPresentableViewController *)a2 _beginRequiringSearchBarPortalViewForReason:?];
  }

  searchBarPortalRequirementReasons = self->_searchBarPortalRequirementReasons;
  if (!searchBarPortalRequirementReasons)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    v8 = self->_searchBarPortalRequirementReasons;
    self->_searchBarPortalRequirementReasons = v7;

    searchBarPortalRequirementReasons = self->_searchBarPortalRequirementReasons;
  }

  [(NSMutableSet *)searchBarPortalRequirementReasons addObject:v5];
  v9 = SBLogSpotlight();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(SBSpotlightPresentableViewController *)self succinctDescription];
    v11 = [(NSMutableSet *)self->_searchBarPortalRequirementReasons count];
    v13 = 138543874;
    v14 = v10;
    v15 = 2114;
    v16 = v5;
    v17 = 2048;
    v18 = v11;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ requiring search bar portal for reason: %{public}@ -- new count: %lu", &v13, 0x20u);
  }

  v12 = [(SBSpotlightPresentableViewController *)self _sharedRemoteSearchViewController];
  [v12 setRevealProgress:1.0];

  [(SBSpotlightPresentableViewController *)self _configureHostedContent];
}

- (void)_endRequiringSearchBarPortalViewForReason:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableSet *)self->_searchBarPortalRequirementReasons count];
  [(NSMutableSet *)self->_searchBarPortalRequirementReasons removeObject:v4];
  v6 = [(NSMutableSet *)self->_searchBarPortalRequirementReasons count];
  v7 = SBLogSpotlight();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(SBSpotlightPresentableViewController *)self succinctDescription];
    v16 = 138543874;
    v17 = v8;
    v18 = 2114;
    v19 = v4;
    v20 = 2048;
    v21 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ ended requiring search bar portal for reason: %{public}@ -- new count: %lu", &v16, 0x20u);
  }

  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v5 == 0;
  }

  if (!v9)
  {
    [(SBSpotlightMultiplexingViewController *)self->_spotlightMultiplexingViewController setDelegate:0];
    [(UIView *)self->_searchBarPortalClippingContainerView removeFromSuperview];
    searchBarPortalClippingContainerView = self->_searchBarPortalClippingContainerView;
    self->_searchBarPortalClippingContainerView = 0;

    if (self->_supportsSeparateSearchBarBackground)
    {
      [(_UIPortalView *)self->_searchBarPortalView removeFromSuperview];
    }

    searchBarPortalView = self->_searchBarPortalView;
    self->_searchBarPortalView = 0;

    searchBarBackgroundPortalView = self->_searchBarBackgroundPortalView;
    self->_searchBarBackgroundPortalView = 0;

    [(SBHSearchAffordance *)self->_searchAffordance setAlpha:0.0];
    [(_UIPortalView *)self->_searchAffordancePortalView removeFromSuperview];
    searchAffordancePortalView = self->_searchAffordancePortalView;
    self->_searchAffordancePortalView = 0;

    [(_UIPortalView *)self->_keyboardProtectorPortalView removeFromSuperview];
    keyboardProtectorPortalView = self->_keyboardProtectorPortalView;
    self->_keyboardProtectorPortalView = 0;

    [(UIView *)self->_keyboardView bs_setHitTestingDisabled:0];
    [(SBSpotlightMultiplexingViewController *)self->_spotlightMultiplexingViewController setWantsExternalKeyboardView:0];
    [(UIView *)self->_keyboardView removeFromSuperview];
    keyboardView = self->_keyboardView;
    self->_keyboardView = 0;
  }
}

- (void)_ensureSearchAffordanceIsInstalledInView:(id)a3
{
  v4 = a3;
  searchAffordance = self->_searchAffordance;
  if (searchAffordance)
  {
    v7 = v4;
    v6 = [(SBHSearchAffordance *)searchAffordance superview];

    v4 = v7;
    if (v6 != v7)
    {
      [(SBHSearchAffordance *)self->_searchAffordance removeFromSuperview];
      [v7 addSubview:self->_searchAffordance];
      [v7 sendSubviewToBack:self->_searchAffordance];
      v4 = v7;
    }
  }
}

- (void)_setHitTestingDisabledOnHostedContent:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBSpotlightMultiplexingViewController *)self->_spotlightMultiplexingViewController view];
  [v5 bs_setHitTestingDisabled:v3];

  [(UIView *)self->_keyboardView bs_setHitTestingDisabled:v3];
  [(_UIPortalView *)self->_keyboardProtectorPortalView bs_setHitTestingDisabled:v3];
  [(UIView *)self->_searchBarPortalClippingContainerView bs_setHitTestingDisabled:v3];
  if (self->_supportsSeparateSearchBarBackground)
  {
    searchBarPortalView = self->_searchBarPortalView;

    [(_UIPortalView *)searchBarPortalView bs_setHitTestingDisabled:v3];
  }
}

- (void)_requestDismissal
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained spotlightPresentableViewControllerShouldDismiss:self];
}

- (SBSpotlightPresentableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBSpotlightPresentationMetrics)appliedKeyboardAlignedElementsMetrics
{
  searchAffordanceSize = self[9].searchAffordanceSize;
  *&retstr->keyboardProtectorCenter.y = *&self[9].searchContentAlpha;
  *&retstr->homeAffordanceCenter.y = searchAffordanceSize;
  retstr->keyboardVelocity = self[9].searchAffordanceCenter.x;
  v4 = *&self[8].homeAffordanceCenter.y;
  *&retstr->searchAffordanceCornerRadius = *&self[8].keyboardProtectorCenter.y;
  *&retstr->fullSearchBarSize.height = v4;
  searchContentCenter = self[9].searchContentCenter;
  retstr->keyboardCenter = *&self[8].keyboardVelocity;
  *&retstr->keyboardAlpha = searchContentCenter;
  v6 = *&self[8].fullSearchBarSize.height;
  *&retstr->searchAffordanceBackgroundAlpha = *&self[8].searchAffordanceCornerRadius;
  *&retstr->searchAffordanceSize.height = v6;
  v7 = *&self[8].keyboardAlpha;
  *&retstr->searchAffordanceCenter.y = self[8].keyboardCenter;
  *&retstr->searchAffordanceContentAlignment = v7;
  v8 = *&self[8].searchAffordanceContentAlignment;
  *&retstr->backgroundWeighting = *&self[8].searchAffordanceCenter.y;
  *&retstr->searchContentCenter.y = v8;
  return self;
}

- (void)setAppliedKeyboardAlignedElementsMetrics:(SBSpotlightPresentationMetrics *)a3
{
  *&self->_appliedKeyboardAlignedElementsMetrics.backgroundWeighting = *&a3->backgroundWeighting;
  v3 = *&a3->searchAffordanceCenter.y;
  v5 = *&a3->searchContentCenter.y;
  v4 = *&a3->searchAffordanceBackgroundAlpha;
  *&self->_appliedKeyboardAlignedElementsMetrics.searchAffordanceSize.height = *&a3->searchAffordanceSize.height;
  *&self->_appliedKeyboardAlignedElementsMetrics.searchAffordanceCenter.y = v3;
  *&self->_appliedKeyboardAlignedElementsMetrics.searchContentCenter.y = v5;
  *&self->_appliedKeyboardAlignedElementsMetrics.searchAffordanceBackgroundAlpha = v4;
  keyboardCenter = a3->keyboardCenter;
  v8 = *&a3->searchAffordanceContentAlignment;
  v7 = *&a3->searchAffordanceCornerRadius;
  *&self->_appliedKeyboardAlignedElementsMetrics.fullSearchBarSize.height = *&a3->fullSearchBarSize.height;
  self->_appliedKeyboardAlignedElementsMetrics.keyboardCenter = keyboardCenter;
  *&self->_appliedKeyboardAlignedElementsMetrics.searchAffordanceContentAlignment = v8;
  *&self->_appliedKeyboardAlignedElementsMetrics.searchAffordanceCornerRadius = v7;
  v10 = *&a3->keyboardProtectorCenter.y;
  v9 = *&a3->homeAffordanceCenter.y;
  v11 = *&a3->keyboardAlpha;
  self->_appliedKeyboardAlignedElementsMetrics.keyboardVelocity = a3->keyboardVelocity;
  *&self->_appliedKeyboardAlignedElementsMetrics.keyboardProtectorCenter.y = v10;
  *&self->_appliedKeyboardAlignedElementsMetrics.homeAffordanceCenter.y = v9;
  *&self->_appliedKeyboardAlignedElementsMetrics.keyboardAlpha = v11;
}

- (CGRect)searchAffordanceReferenceFrame
{
  x = self->_searchAffordanceReferenceFrame.origin.x;
  y = self->_searchAffordanceReferenceFrame.origin.y;
  width = self->_searchAffordanceReferenceFrame.size.width;
  height = self->_searchAffordanceReferenceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (SBSpotlightHostedContentMetrics)hostedContentMetrics
{
  v3 = *&self[29].keyboardHeight;
  *&retstr->keyboardHeight = *&self[28].dockedSearchBarSize.height;
  retstr->searchBarSize = v3;
  retstr->dockedSearchBarSize = self[29].searchBarSize;
  retstr->searchBarCornerRadius = self[29].dockedSearchBarSize.width;
  return self;
}

- (void)setHostedContentMetrics:(SBSpotlightHostedContentMetrics *)a3
{
  searchBarSize = a3->searchBarSize;
  dockedSearchBarSize = a3->dockedSearchBarSize;
  v5 = *&a3->keyboardHeight;
  self->_hostedContentMetrics.searchBarCornerRadius = a3->searchBarCornerRadius;
  self->_hostedContentMetrics.searchBarSize = searchBarSize;
  self->_hostedContentMetrics.dockedSearchBarSize = dockedSearchBarSize;
  *&self->_hostedContentMetrics.keyboardHeight = v5;
}

- (SBSpotlightTransitionRange)backgroundBlurRange
{
  start = self->_backgroundBlurRange.start;
  end = self->_backgroundBlurRange.end;
  result.end = end;
  result.start = start;
  return result;
}

- (SBSpotlightTransitionRange)backgroundUnblurRange
{
  start = self->_backgroundUnblurRange.start;
  end = self->_backgroundUnblurRange.end;
  result.end = end;
  result.start = start;
  return result;
}

- (SBSpotlightTransitionRange)searchContentFadeInRange
{
  start = self->_searchContentFadeInRange.start;
  end = self->_searchContentFadeInRange.end;
  result.end = end;
  result.start = start;
  return result;
}

- (SBSpotlightTransitionRange)searchContentFadeOutRange
{
  start = self->_searchContentFadeOutRange.start;
  end = self->_searchContentFadeOutRange.end;
  result.end = end;
  result.start = start;
  return result;
}

- (SBSpotlightTransitionRange)searchAffordanceBackgroundMaterialFadeRange
{
  start = self->_searchAffordanceBackgroundMaterialFadeRange.start;
  end = self->_searchAffordanceBackgroundMaterialFadeRange.end;
  result.end = end;
  result.start = start;
  return result;
}

- (SBSpotlightTransitionRange)searchAffordanceContentFadeRange
{
  start = self->_searchAffordanceContentFadeRange.start;
  end = self->_searchAffordanceContentFadeRange.end;
  result.end = end;
  result.start = start;
  return result;
}

- (SBSpotlightTransitionRange)searchBarContentFadeRange
{
  start = self->_searchBarContentFadeRange.start;
  end = self->_searchBarContentFadeRange.end;
  result.end = end;
  result.start = start;
  return result;
}

- (SBSpotlightTransitionRange)searchAffordanceScaleAndTranslateRange
{
  start = self->_searchAffordanceScaleAndTranslateRange.start;
  end = self->_searchAffordanceScaleAndTranslateRange.end;
  result.end = end;
  result.start = start;
  return result;
}

- (void)_beginRequiringSearchBarPortalViewForReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSpotlightPresentableViewController.m" lineNumber:1356 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

@end
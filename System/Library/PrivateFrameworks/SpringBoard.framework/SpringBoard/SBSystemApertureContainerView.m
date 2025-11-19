@interface SBSystemApertureContainerView
+ (double)_defaultCornerRadiusForBounds:(CGRect)a3 inWindow:(id)a4;
- (BOOL)_isInRotationTransition;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (SAUIElementViewControlling)elementViewController;
- (SAUIElementViewControlling)outgoingElementViewController;
- (SBSAContainerViewDescription)containerViewDescription;
- (SBSystemApertureContainerRenderingConfiguration)renderingConfiguration;
- (SBSystemApertureContainerView)initWithInterfaceElementIdentifier:(id)a3;
- (SBSystemApertureContainerViewDelegate)delegate;
- (SBSystemApertureElementOrientationAuthority)elementOrientationAuthority;
- (UIColor)keyLineTintColor;
- (id)_generateAccessibilityIdentifier;
- (id)_validatedKeyLineTintColor;
- (int64_t)activeElementInterfaceOrientationForSystemApertureElementOrientationObserver:(id)a3;
- (void)_applySettingsValues;
- (void)_layoutHitTestViewWithBounds:(CGRect)a3;
- (void)_setContentViewTransform:(CGAffineTransform *)a3 elementViewControllerInterfaceOrientation:(int64_t)a4;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_setCornerRadius:(double)a3;
- (void)_updateContentViewTransformImmediately;
- (void)_updateKeyLineFilters;
- (void)_updateShadowStyleIfNeeded;
- (void)addContainerViewGeometryObserver:(id)a3;
- (void)addContentSubview:(id)a3;
- (void)backgroundLumaView:(id)a3 didTransitionToLevel:(unint64_t)a4;
- (void)elementOrientationDidChangeWithTransitionCoordinator:(id)a3;
- (void)layoutSubviews;
- (void)removeContainerViewGeometryObserver:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setElementOrientationAuthority:(id)a3;
- (void)setElementViewController:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setIDCornerRadius:(double)a3;
- (void)setKeyLineMode:(int64_t)a3;
- (void)setKeyLineTintColor:(id)a3;
- (void)setNeedsLayout;
- (void)setRank:(unint64_t)a3;
- (void)setRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)a3;
- (void)setShadowStyle:(int64_t)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation SBSystemApertureContainerView

- (SAUIElementViewControlling)elementViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_elementViewController);

  return WeakRetained;
}

- (SAUIElementViewControlling)outgoingElementViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_outgoingElementViewController);

  return WeakRetained;
}

- (SBSAContainerViewDescription)containerViewDescription
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__SBSystemApertureContainerView_containerViewDescription__block_invoke;
  v4[3] = &unk_2783A93E8;
  v4[4] = self;
  v4[5] = a2;
  v2 = [(SBSAViewDescription *)SBSAContainerViewDescription instanceWithBlock:v4];

  return v2;
}

void __57__SBSystemApertureContainerView_containerViewDescription__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      __57__SBSystemApertureContainerView_containerViewDescription__block_invoke_cold_1(a1);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 32) interfaceElementIdentifier];
  [v7 setInterfaceElementIdentifier:v8];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 720));
  v10 = [WeakRetained elementViewProvider];
  v11 = [v10 element];
  [v7 setAssociatedSystemApertureElementIdentity:v11];

  [*(a1 + 32) center];
  [v7 setCenter:?];
  [*(a1 + 32) bounds];
  [v7 setBounds:?];
  v12 = [*(a1 + 32) _velocityForKey:@"bounds"];
  [v12 CGRectValue];
  [v7 setBoundsVelocity:?];

  [*(a1 + 32) IDCornerRadius];
  [v7 setCornerRadius:?];
  [*(a1 + 32) alpha];
  [v7 setAlpha:?];
  [v7 setKeyLineMode:{objc_msgSend(*(a1 + 32), "keyLineMode")}];
  v13 = [*(a1 + 32) keyLineTintColor];
  [v7 setKeyLineTintColor:v13];

  [v7 setSampledBackgroundLuminanceLevel:{objc_msgSend(*(a1 + 32), "sampledBackgroundLuminanceLevel")}];
  v14 = *(a1 + 32);
  if (v14)
  {
    [v14 renderingConfiguration];
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  [v7 setRenderingConfiguration:v15];
}

- (UIColor)keyLineTintColor
{
  v2 = [(UIColor *)self->_keyLineTintColor copy];

  return v2;
}

- (SBSystemApertureContainerRenderingConfiguration)renderingConfiguration
{
  result = self->_gainMapView;
  if (result)
  {
    return [(SBSystemApertureContainerRenderingConfiguration *)result renderingConfiguration];
  }

  retstr->renderingStyle = 0;
  retstr->cloningStyle = 0;
  *&retstr->alwaysRenderInSnapshots = 0;
  return result;
}

- (void)_applySettingsValues
{
  [(SBSystemApertureSettings *)self->_settings keyLineThickness];
  SBSystemApertureKeyLineThickness = v3;
  [(SBSystemApertureSettings *)self->_settings adaptiveKeyLineThickness];
  SBSystemApertureAdaptiveKeyLineThickness = v4;
  [(SBSystemApertureSettings *)self->_settings keyLineAlpha];
  SBSystemApertureKeyLineDarkBkgEnabledOpacity = v5;

  [(SBSystemApertureContainerView *)self _updateKeyLineFilters];
}

- (void)_updateKeyLineFilters
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2C0]];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v4 = [(SBSystemApertureSettings *)self->_settings adaptiveKeyLineColorMatrix];
  v5 = v4;
  if (v4)
  {
    [v4 colorMatrix];
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
  }

  v19[2] = v22;
  v19[3] = v23;
  v19[4] = v24;
  v19[0] = v20;
  v19[1] = v21;
  v6 = [MEMORY[0x277CCAE60] valueWithBytes:v19 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
  [v3 setValue:v6 forKey:@"inputColorMatrix"];

  v26[0] = v3;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  if (_AXSClassicInvertColorsEnabled() || _AXSInvertColorsEnabled())
  {
    v8 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2B0]];
    v25 = v8;
    v9 = 1;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v11 = [v10 arrayByAddingObjectsFromArray:v7];

    v7 = v11;
  }

  else
  {
    v9 = 0;
  }

  v12 = [(_SBAdaptiveKeyLineBackdropView *)self->_lightBkgKeyLineView backdropLayer];
  [v12 setAllowsInPlaceFiltering:v9 ^ 1u];

  v13 = [(_SBAdaptiveKeyLineBackdropView *)self->_lightBkgKeyLineView layer];
  [v13 setFilters:v7];

  [(SBSystemApertureSettings *)self->_settings keyLineDarkToMixedMinLuma];
  v15 = v14;
  if ((v9 ^ 1))
  {
    [(SBSystemApertureSettings *)self->_settings keyLineMixedToDarkMaxLuma];
    v17 = v18;
  }

  else
  {
    v15 = 1.0 - v14;
    [(SBSystemApertureSettings *)self->_settings keyLineMixedToDarkMaxLuma];
    v17 = 1.0 - v16;
  }

  [(_UILumaTrackingBackdropView *)self->_backgroundLumaSamplingBackdrop setTransitionBoundaries:v15, v17];
}

- (void)_updateContentViewTransformImmediately
{
  v3 = [(SBSystemApertureContainerView *)self activeElementInterfaceOrientationForSystemApertureElementOrientationObserver:self];
  [SBSystemApertureViewControllerRotationTransitionContext transformForRotationToInterfaceOrientation:v3];
  v4 = v9;
  *&self->_activeContentRotationTransform.a = v8;
  *&self->_activeContentRotationTransform.c = v4;
  *&self->_activeContentRotationTransform.tx = v10;
  v6 = *&self->_activeContentRotationTransform.c;
  v5 = *&self->_activeContentRotationTransform.tx;
  *&self->_previousContentTransform.a = *&self->_activeContentRotationTransform.a;
  *&self->_previousContentTransform.c = v6;
  *&self->_previousContentTransform.tx = v5;
  v7 = *&self->_activeContentRotationTransform.c;
  v8 = *&self->_activeContentRotationTransform.a;
  v9 = v7;
  v10 = *&self->_activeContentRotationTransform.tx;
  [(SBSystemApertureContainerView *)self _setContentViewTransform:&v8 elementViewControllerInterfaceOrientation:v3];
}

- (void)setNeedsLayout
{
  v3.receiver = self;
  v3.super_class = SBSystemApertureContainerView;
  [(SBSystemApertureContainerView *)&v3 setNeedsLayout];
  [(UIView *)self->_rotatingContentView setNeedsLayout];
  [(UIView *)self->_scalingContentView setNeedsLayout];
}

- (id)_generateAccessibilityIdentifier
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"jindo-container-view:%lu", self->_rank + 1];
  v4 = [(SBSystemApertureContainerView *)self elementViewController];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 elementViewProvider];
    v7 = [v6 element];
    v8 = [v7 clientIdentifier];

    v9 = [v5 elementViewProvider];
    v10 = [v9 element];
    v11 = [v10 elementIdentifier];

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@", client-identifier:%@, element-identifier:%@", v8, v11];
    v13 = [v3 stringByAppendingString:v12];

    v3 = v13;
  }

  return v3;
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = SBSystemApertureContainerView;
  [(SBSystemApertureContainerView *)&v28 layoutSubviews];
  [(SBSystemApertureContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SBSystemApertureContainerView *)self frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(UIView *)self->_subBackgroundGroupingView setFrame:?];
  [(UIView *)self->_backgroundGroupingView setFrame:v12, v14, v16, v18];
  top = self->_gainMapLayerInsets.top;
  left = self->_gainMapLayerInsets.left;
  v21 = v4 + left;
  v22 = v6 + top;
  v23 = v8 - (left + self->_gainMapLayerInsets.right);
  v24 = v10 - (top + self->_gainMapLayerInsets.bottom);
  [(_UILumaTrackingBackdropView *)self->_backgroundLumaSamplingBackdrop setFrame:v4 + left, v6 + top, v23, v24];
  [(UIView *)self->_shadowView setFrame:v21 + 1.0, v22 + 1.0, v23 + -2.0, v24 + -2.0];
  [(UIView *)self->_darkBkgKeyLineView setFrame:v21 - *&SBSystemApertureKeyLineThickness, v22 - *&SBSystemApertureKeyLineThickness, v23 - (-*&SBSystemApertureKeyLineThickness - *&SBSystemApertureKeyLineThickness), v24 - (-*&SBSystemApertureKeyLineThickness - *&SBSystemApertureKeyLineThickness)];
  [(_SBAdaptiveKeyLineBackdropView *)self->_lightBkgKeyLineView setFrame:v21 - *&SBSystemApertureAdaptiveKeyLineThickness, v22 - *&SBSystemApertureAdaptiveKeyLineThickness, v23 - (-*&SBSystemApertureAdaptiveKeyLineThickness - *&SBSystemApertureAdaptiveKeyLineThickness), v24 - (-*&SBSystemApertureAdaptiveKeyLineThickness - *&SBSystemApertureAdaptiveKeyLineThickness)];
  [(_SBSystemApertureGainMapView *)self->_gainMapView setFrame:v21, v22, v23, v24];
  [(UIView *)self->_blobEnablingBlackFillView setFrame:v21 + 0.666666667, v22 + 0.666666667, v23 + -1.33333333, v24 + -1.33333333];
  [(SBSystemApertureContainerView *)self _layoutHitTestViewWithBounds:v4, v6, v8, v10];
  rotatingContentView = self->_rotatingContentView;
  v26 = *&self->_activeContentRotationTransform.c;
  v27[0] = *&self->_activeContentRotationTransform.a;
  v27[1] = v26;
  v27[2] = *&self->_activeContentRotationTransform.tx;
  [(UIView *)rotatingContentView setTransform:v27];
  [(SBSystemApertureContainerView *)self _updateShadowStyleIfNeeded];
}

- (void)_updateShadowStyleIfNeeded
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = SBStringFromSystemApertureShadowStyle(a2);
  v9 = 138543874;
  v10 = v7;
  v11 = 2050;
  v12 = a1;
  v13 = 2114;
  v14 = v8;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "<%{public}@: %{public}p>: Updating Container to Shadow Style: %{public}@", &v9, 0x20u);
}

- (id)_validatedKeyLineTintColor
{
  cachedValidatedKeyLineTintColor = self->_cachedValidatedKeyLineTintColor;
  if (!cachedValidatedKeyLineTintColor)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained keyLineColorValidatorForSystemApertureContainerView:self];
    v6 = [v5 validateKeyLineColor:self->_keyLineTintColor];
    v7 = self->_cachedValidatedKeyLineTintColor;
    self->_cachedValidatedKeyLineTintColor = v6;

    cachedValidatedKeyLineTintColor = self->_cachedValidatedKeyLineTintColor;
  }

  return cachedValidatedKeyLineTintColor;
}

- (SBSystemApertureContainerView)initWithInterfaceElementIdentifier:(id)a3
{
  v101[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [(SBSystemApertureContainerView *)a2 initWithInterfaceElementIdentifier:?];
  }

  v97.receiver = self;
  v97.super_class = SBSystemApertureContainerView;
  v6 = [(SBSystemApertureContainerView *)&v97 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v6)
  {
    v91 = v5;
    v7 = [v5 copy];
    interfaceElementIdentifier = v6->_interfaceElementIdentifier;
    v6->_interfaceElementIdentifier = v7;

    v9 = +[SBSystemApertureDomain rootSettings];
    settings = v6->_settings;
    v6->_settings = v9;

    [(PTSettings *)v6->_settings addKeyObserver:v6];
    v11 = [(SBSystemApertureSettings *)v6->_settings adaptiveKeyLineColorMatrix];
    [v11 addKeyObserver:v6];

    [(SBSystemApertureContainerView *)v6 _applySettingsValues];
    [(SBSystemApertureContainerView *)v6 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = objc_alloc_init(MEMORY[0x277D75D18]);
    hitTestView = v6->_hitTestView;
    v6->_hitTestView = v20;

    v22 = [(UIView *)v6->_hitTestView layer];
    v92 = v6;
    [v22 setHitTestsAsOpaque:1];

    [(SBSystemApertureContainerView *)v92 addSubview:v92->_hitTestView];
    v23 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v13, v15, v17, v19}];
    contentClippingView = v6->_contentClippingView;
    v6->_contentClippingView = v23;

    [(UIView *)v6->_contentClippingView setClipsToBounds:1];
    [(SBSystemApertureContainerView *)v92 addSubview:v92->_contentClippingView];
    [(UIView *)v6->_contentClippingView setAutoresizingMask:18];
    v25 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v13, v15, v17, v19}];
    subBackgroundGroupingView = v6->_subBackgroundGroupingView;
    v6->_subBackgroundGroupingView = v25;

    [(UIView *)v92->_contentClippingView addSubview:v92->_subBackgroundGroupingView];
    v27 = objc_alloc(MEMORY[0x277D760C0]);
    [(SBSystemApertureSettings *)v6->_settings keyLineDarkToMixedMinLuma];
    v29 = v28;
    [(SBSystemApertureSettings *)v6->_settings keyLineMixedToDarkMaxLuma];
    v31 = v30;
    [(SBSystemApertureContainerView *)v6 bounds];
    v36 = [v27 initWithTransitionBoundaries:v6 delegate:v29 frame:{v31, v32, v33, v34, v35}];
    backgroundLumaSamplingBackdrop = v6->_backgroundLumaSamplingBackdrop;
    v6->_backgroundLumaSamplingBackdrop = v36;

    v6->_sampledBackgroundLuminanceLevel = 0;
    [(UIView *)v92->_subBackgroundGroupingView addSubview:v92->_backgroundLumaSamplingBackdrop];
    v38 = objc_alloc_init(MEMORY[0x277D75D18]);
    darkBkgKeyLineView = v6->_darkBkgKeyLineView;
    v6->_darkBkgKeyLineView = v38;

    [(UIView *)v6->_darkBkgKeyLineView setAlpha:0.0];
    v40 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    v41 = [(UIView *)v6->_darkBkgKeyLineView layer];
    v90 = v40;
    v101[0] = v40;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:1];
    [v41 setFilters:v42];

    [(UIView *)v92->_subBackgroundGroupingView addSubview:v92->_darkBkgKeyLineView];
    v43 = objc_alloc_init(_SBAdaptiveKeyLineBackdropView);
    lightBkgKeyLineView = v92->_lightBkgKeyLineView;
    v92->_lightBkgKeyLineView = v43;

    v45 = [(_SBAdaptiveKeyLineBackdropView *)v92->_lightBkgKeyLineView backdropLayer];
    [v45 setAllowsInPlaceFiltering:1];

    [(_SBAdaptiveKeyLineBackdropView *)v92->_lightBkgKeyLineView setAlpha:0.0];
    [(SBSystemApertureContainerView *)v92 _updateKeyLineFilters];
    [(UIView *)v92->_subBackgroundGroupingView addSubview:v92->_lightBkgKeyLineView];
    v46 = objc_alloc_init(MEMORY[0x277D75D18]);
    shadowView = v92->_shadowView;
    v92->_shadowView = v46;

    v48 = [(UIView *)v92->_shadowView layer];
    v49 = [MEMORY[0x277D75348] blackColor];
    [v48 setShadowColor:{objc_msgSend(v49, "CGColor")}];

    v50 = [(UIView *)v92->_shadowView layer];
    [v50 setShadowOpacity:0.0];

    v51 = [(UIView *)v92->_shadowView layer];
    [v51 setShadowPathIsBounds:1];

    v92->_needsShadowStyleUpdate = 1;
    v52 = v92;
    [(UIView *)v92->_subBackgroundGroupingView addSubview:v92->_shadowView];
    v53 = objc_alloc_init(_SBSystemApertureGainMapView);
    gainMapView = v92->_gainMapView;
    v92->_gainMapView = v53;

    [(UIView *)v52->_subBackgroundGroupingView addSubview:v52->_gainMapView];
    v55 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v13, v15, v17, v19}];
    backgroundGroupingView = v92->_backgroundGroupingView;
    v92->_backgroundGroupingView = v55;

    [(UIView *)v92->_backgroundGroupingView setClipsToBounds:1];
    [(UIView *)v52->_contentClippingView addSubview:v52->_backgroundGroupingView];
    v57 = objc_alloc_init(MEMORY[0x277D75D18]);
    blobEnablingBlackFillView = v92->_blobEnablingBlackFillView;
    v92->_blobEnablingBlackFillView = v57;

    v59 = v92->_blobEnablingBlackFillView;
    v60 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v59 setBackgroundColor:v60];

    [(UIView *)v92->_blobEnablingBlackFillView setClipsToBounds:1];
    [(UIView *)v52->_backgroundGroupingView addSubview:v52->_blobEnablingBlackFillView];
    v61 = MEMORY[0x277CBF2C0];
    v62 = *MEMORY[0x277CBF2C0];
    v63 = *(MEMORY[0x277CBF2C0] + 16);
    *&v92->_previousContentTransform.a = *MEMORY[0x277CBF2C0];
    *&v92->_previousContentTransform.c = v63;
    v64 = *(v61 + 32);
    *&v92->_previousContentTransform.tx = v64;
    *&v92->_activeContentRotationTransform.a = v62;
    *&v92->_activeContentRotationTransform.c = v63;
    *&v92->_activeContentRotationTransform.tx = v64;
    v65 = objc_alloc_init(_SBSystemApertureContainerViewScalingContentView);
    scalingContentView = v92->_scalingContentView;
    v92->_scalingContentView = &v65->super.super;

    v67 = objc_alloc_init(_SBSystemApertureContainerViewRotatingContentView);
    rotatingContentView = v92->_rotatingContentView;
    v92->_rotatingContentView = &v67->super.super;

    v69 = v92->_scalingContentView;
    v70 = objc_opt_class();
    v71 = v69;
    if (v70)
    {
      if (objc_opt_isKindOfClass())
      {
        v72 = v71;
      }

      else
      {
        v72 = 0;
      }
    }

    else
    {
      v72 = 0;
    }

    v73 = v72;

    [(UIView *)v73 setContentView:v92->_rotatingContentView];
    [(UIView *)v92->_contentClippingView addSubview:v92->_scalingContentView];
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v74 = [(SBSystemApertureContainerView *)v92 layer];
    v99[0] = v74;
    v75 = [(UIView *)v92->_subBackgroundGroupingView layer];
    v99[1] = v75;
    v76 = [(UIView *)v92->_backgroundGroupingView layer];
    v99[2] = v76;
    v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:3];

    v78 = [v77 countByEnumeratingWithState:&v93 objects:v100 count:16];
    if (v78)
    {
      v79 = v78;
      v80 = *v94;
      v81 = *MEMORY[0x277CDA2B8];
      v82 = MEMORY[0x277CBEC38];
      do
      {
        for (i = 0; i != v79; ++i)
        {
          if (*v94 != v80)
          {
            objc_enumerationMutation(v77);
          }

          v84 = *(*(&v93 + 1) + 8 * i);
          v85 = [MEMORY[0x277CD9EA0] filterWithType:v81];
          [v85 setValue:v82 forKey:@"inputReversed"];
          v98 = v85;
          v86 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
          [v84 setFilters:v86];
        }

        v79 = [v77 countByEnumeratingWithState:&v93 objects:v100 count:16];
      }

      while (v79);
    }

    v6 = v92;
    v87 = [(SBSystemApertureContainerView *)v92 layer];
    [v87 setHitTestsAsOpaque:1];

    v88 = [MEMORY[0x277CCAB98] defaultCenter];
    [v88 addObserver:v92 selector:sel__invertColorsChanged_ name:*MEMORY[0x277D76480] object:0];

    v5 = v91;
  }

  return v6;
}

- (void)addContentSubview:(id)a3
{
  v4 = a3;
  v5 = self->_rotatingContentView;
  v6 = [v4 superview];

  if (v6 != v5)
  {
    v7 = MEMORY[0x277D75D18];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__SBSystemApertureContainerView_addContentSubview___block_invoke;
    v8[3] = &unk_2783A92D8;
    v9 = v5;
    v10 = v4;
    [v7 _performWithoutRetargetingAnimations:v8];
  }
}

void __51__SBSystemApertureContainerView_addContentSubview___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__SBSystemApertureContainerView_addContentSubview___block_invoke_2;
  v3[3] = &unk_2783A92D8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 _modifyAnimationsByDecomposingGeometricTypes:1 animations:v3];
}

uint64_t __51__SBSystemApertureContainerView_addContentSubview___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 setContentView:*(a1 + 40)];
  v7 = *(a1 + 40);

  return [v7 layoutIfNeeded];
}

- (void)addContainerViewGeometryObserver:(id)a3
{
  v4 = a3;
  geometryObservers = self->_geometryObservers;
  v8 = v4;
  if (!geometryObservers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_geometryObservers;
    self->_geometryObservers = v6;

    v4 = v8;
    geometryObservers = self->_geometryObservers;
  }

  if (![(NSHashTable *)geometryObservers containsObject:v4])
  {
    [(NSHashTable *)self->_geometryObservers addObject:v8];
  }
}

- (void)removeContainerViewGeometryObserver:(id)a3
{
  geometryObservers = self->_geometryObservers;
  if (geometryObservers)
  {
    [(NSHashTable *)geometryObservers removeObject:a3];
  }
}

- (void)setKeyLineMode:(int64_t)a3
{
  if (self->_keyLineMode != a3)
  {
    v3 = a3;
    self->_keyLineMode = a3;
    if (![(SBSystemApertureSettings *)self->_settings keyLineEnabled])
    {
      v3 = 0;
    }

    [(_UILumaTrackingBackdropView *)self->_backgroundLumaSamplingBackdrop setPaused:v3 == 0];
    if (v3 == 2)
    {
      [(UIView *)self->_darkBkgKeyLineView setAlpha:*&SBSystemApertureKeyLineDarkBkgEnabledOpacity];
      v5 = 0.0;
    }

    else if (v3 == 1)
    {
      [(UIView *)self->_darkBkgKeyLineView setAlpha:0.0];
      v5 = 1.0;
    }

    else
    {
      if (v3)
      {
        return;
      }

      v5 = 0.0;
      [(UIView *)self->_darkBkgKeyLineView setAlpha:0.0];
    }

    lightBkgKeyLineView = self->_lightBkgKeyLineView;

    [(_SBAdaptiveKeyLineBackdropView *)lightBkgKeyLineView setAlpha:v5];
  }
}

- (void)setKeyLineTintColor:(id)a3
{
  v9 = a3;
  if (([(UIColor *)self->_keyLineTintColor isEqual:?]& 1) == 0)
  {
    v4 = [v9 copy];
    keyLineTintColor = self->_keyLineTintColor;
    self->_keyLineTintColor = v4;

    cachedValidatedKeyLineTintColor = self->_cachedValidatedKeyLineTintColor;
    self->_cachedValidatedKeyLineTintColor = 0;

    darkBkgKeyLineView = self->_darkBkgKeyLineView;
    v8 = [(SBSystemApertureContainerView *)self _validatedKeyLineTintColor];
    [(UIView *)darkBkgKeyLineView setBackgroundColor:v8];
  }
}

- (void)setShadowStyle:(int64_t)a3
{
  if (self->_shadowStyle != a3)
  {
    self->_shadowStyle = a3;
    self->_needsShadowStyleUpdate = 1;
    [(SBSystemApertureContainerView *)self _updateShadowStyleIfNeeded];
  }
}

- (void)setRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)a3
{
  gainMapView = self->_gainMapView;
  v8 = *a3;
  [(_SBSystemApertureGainMapView *)gainMapView setRenderingConfiguration:&v8];
  v6 = a3->renderingStyle == 1;
  v7 = a3->renderingStyle == 1 || a3->renderingStyle == 4;
  [(_UILumaTrackingBackdropView *)self->_backgroundLumaSamplingBackdrop setHidden:v7];
  [(UIView *)self->_darkBkgKeyLineView setHidden:v7];
  [(_SBAdaptiveKeyLineBackdropView *)self->_lightBkgKeyLineView setHidden:v7];
  [(UIView *)self->_blobEnablingBlackFillView setHidden:v7];
  [(UIView *)self->_contentClippingView setHidden:v6];
  [(UIView *)self->_rotatingContentView setHidden:v6];
  [(UIView *)self->_scalingContentView setHidden:v6];
  [(UIView *)self->_shadowView setHidden:v7];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v31 = *MEMORY[0x277D85DE8];
  [(SBSystemApertureContainerView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v29.receiver = self;
  v29.super_class = SBSystemApertureContainerView;
  [(SBSystemApertureContainerView *)&v29 setFrame:x, y, width, height];
  [(SBSystemApertureContainerView *)self frame];
  v33.origin.x = v16;
  v33.origin.y = v17;
  v33.size.width = v18;
  v33.size.height = v19;
  v32.origin.x = v9;
  v32.origin.y = v11;
  v32.size.width = v13;
  v32.size.height = v15;
  if (!CGRectEqualToRect(v32, v33))
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v20 = self->_geometryObservers;
    v21 = [(NSHashTable *)v20 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v26;
      do
      {
        v24 = 0;
        do
        {
          if (*v26 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v25 + 1) + 8 * v24++) systemApertureContainerView:self didChangeFrame:{x, y, width, height, v25}];
        }

        while (v22 != v24);
        v22 = [(NSHashTable *)v20 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v22);
    }

    [(SBSystemApertureContainerView *)self setNeedsLayout];
  }
}

- (void)setCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v24 = *MEMORY[0x277D85DE8];
  [(SBSystemApertureContainerView *)self center];
  v7 = v6;
  v9 = v8;
  v22.receiver = self;
  v22.super_class = SBSystemApertureContainerView;
  [(SBSystemApertureContainerView *)&v22 setCenter:x, y];
  [(SBSystemApertureContainerView *)self center];
  if (v7 != v11 || v9 != v10)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = self->_geometryObservers;
    v14 = [(NSHashTable *)v13 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        v17 = 0;
        do
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v18 + 1) + 8 * v17++) systemApertureContainerView:self didChangeCenter:{x, y, v18}];
        }

        while (v15 != v17);
        v15 = [(NSHashTable *)v13 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v15);
    }

    [(SBSystemApertureContainerView *)self setNeedsLayout];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SBSystemApertureContainerView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v20.receiver = self;
  v20.super_class = SBSystemApertureContainerView;
  [(SBSystemApertureContainerView *)&v20 setBounds:x, y, width, height];
  [(SBSystemApertureContainerView *)self bounds];
  v22.origin.x = v16;
  v22.origin.y = v17;
  v22.size.width = v18;
  v22.size.height = v19;
  v21.origin.x = v9;
  v21.origin.y = v11;
  v21.size.width = v13;
  v21.size.height = v15;
  if (!CGRectEqualToRect(v21, v22))
  {
    [(SBSystemApertureContainerView *)self setNeedsLayout];
  }
}

- (void)_layoutHitTestViewWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v19 = 0;
    [WeakRetained systemApertureContainerView:self hitRectForBounds:&v19 debugColor:{x, y, width, height}];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    hitTestView = self->_hitTestView;
    v18 = v19;
    [(UIView *)hitTestView setFrame:v10, v12, v14, v16];
    [(UIView *)self->_hitTestView setBackgroundColor:v18];
  }
}

- (void)willMoveToSuperview:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBSystemApertureContainerView;
  [(SBSystemApertureContainerView *)&v8 willMoveToSuperview:?];
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained parentViewForSubBackgroundForSystemApertureContainerView:self];
    [v6 addSubview:self->_subBackgroundGroupingView];

    v7 = [WeakRetained parentViewForBackgroundForSystemApertureContainerView:self];
    [v7 addSubview:self->_backgroundGroupingView];
  }

  else
  {
    [(UIView *)self->_contentClippingView insertSubview:self->_subBackgroundGroupingView atIndex:0];
    [(UIView *)self->_contentClippingView insertSubview:self->_backgroundGroupingView atIndex:1];
  }
}

- (void)setIDCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = SBSystemApertureContainerView;
  [(UIView *)&v5 setIDCornerRadius:?];
  [(_UILumaTrackingBackdropView *)self->_backgroundLumaSamplingBackdrop setIDCornerRadius:a3];
  [(UIView *)self->_shadowView setIDCornerRadius:a3 + -1.0];
  [(UIView *)self->_darkBkgKeyLineView setIDCornerRadius:*&SBSystemApertureKeyLineThickness + a3];
  [(UIView *)self->_lightBkgKeyLineView setIDCornerRadius:*&SBSystemApertureAdaptiveKeyLineThickness + a3];
  [(_SBSystemApertureGainMapView *)self->_gainMapView setIDCornerRadius:a3];
  [(UIView *)self->_blobEnablingBlackFillView setIDCornerRadius:a3 + -0.666666667];
  [(UIView *)self->_scalingContentView setIDCornerRadius:a3];
  [(UIView *)self->_contentClippingView setIDCornerRadius:a3];
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"SBSystemApertureContainerView.m" lineNumber:479 description:@"use -[UIView setIDCornerRadius:] instead"];

  v7.receiver = self;
  v7.super_class = SBSystemApertureContainerView;
  [(SBSystemApertureContainerView *)&v7 _setContinuousCornerRadius:a3];
}

- (void)_setCornerRadius:(double)a3
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"SBSystemApertureContainerView.m" lineNumber:484 description:@"use -[UIView setIDCornerRadius:] instead"];

  v7.receiver = self;
  v7.super_class = SBSystemApertureContainerView;
  [(SBSystemApertureContainerView *)&v7 _setCornerRadius:a3];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(SBSystemApertureContainerView *)self isUserInteractionEnabled])
  {
    v11.receiver = self;
    v11.super_class = SBSystemApertureContainerView;
    if ([(SBSystemApertureContainerView *)&v11 pointInside:v7 withEvent:x, y])
    {
      v8 = 1;
    }

    else
    {
      hitTestView = self->_hitTestView;
      [(SBSystemApertureContainerView *)self convertPoint:hitTestView toView:x, y];
      v8 = [(UIView *)hitTestView pointInside:v7 withEvent:?];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setElementViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_elementViewController);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_elementViewController);
    objc_storeWeak(&self->_outgoingElementViewController, v5);
    objc_storeWeak(&self->_elementViewController, obj);
    [(SBSystemApertureContainerView *)self _updateContentViewTransformImmediately];
    [(SBSystemApertureContainerView *)self setContentClippingEnabled:1];
    v6 = [(SBSystemApertureContainerView *)self _generateAccessibilityIdentifier];
    [(SBSystemApertureContainerView *)self setAccessibilityIdentifier:v6];
  }
}

- (void)setElementOrientationAuthority:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_elementOrientationAuthority);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_elementOrientationAuthority, obj);
    [(SBSystemApertureContainerView *)self _updateContentViewTransformImmediately];
    v5 = obj;
  }
}

- (void)elementOrientationDidChangeWithTransitionCoordinator:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_elementViewController);
  v6 = SBSAIsElementViewControllerFixedInOrientation(WeakRetained);

  if ((v6 & 1) == 0)
  {
    v8 = *&self->_activeContentRotationTransform.c;
    v7 = *&self->_activeContentRotationTransform.tx;
    *&self->_previousContentTransform.a = *&self->_activeContentRotationTransform.a;
    *&self->_previousContentTransform.c = v8;
    *&self->_previousContentTransform.tx = v7;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    if (v4)
    {
      [v4 targetTransform];
    }

    v9 = v17;
    v10 = v18;
    *&self->_activeContentRotationTransform.a = v17;
    *&self->_activeContentRotationTransform.c = v10;
    v11 = v19;
    *&self->_activeContentRotationTransform.tx = v19;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __86__SBSystemApertureContainerView_elementOrientationDidChangeWithTransitionCoordinator___block_invoke;
    v16[3] = &unk_2783A9488;
    v16[4] = self;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __86__SBSystemApertureContainerView_elementOrientationDidChangeWithTransitionCoordinator___block_invoke_2;
    v12[3] = &unk_2783AC800;
    v14 = v10;
    v13 = v9;
    v15 = v11;
    v12[4] = self;
    [v4 animateAlongsideTransition:v16 completion:v12];
  }
}

uint64_t __86__SBSystemApertureContainerView_elementOrientationDidChangeWithTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeElementInterfaceOrientationForSystemApertureElementOrientationObserver:*(a1 + 32)];
  v3 = *(a1 + 32);
  v4 = v3[40];
  v5 = v3[42];
  v7[1] = v3[41];
  v7[2] = v5;
  v7[0] = v4;
  return [v3 _setContentViewTransform:v7 elementViewControllerInterfaceOrientation:v2];
}

__n128 __86__SBSystemApertureContainerView_elementOrientationDidChangeWithTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  *&t1.a = *(a1 + 40);
  *&t1.c = v2;
  *&t1.tx = *(a1 + 72);
  v3 = *(v1 + 640);
  v4 = *(v1 + 672);
  *&v7.c = *(v1 + 656);
  *&v7.tx = v4;
  *&v7.a = v3;
  if (CGAffineTransformEqualToTransform(&t1, &v7))
  {
    v6 = *(v1 + 656);
    result = *(v1 + 672);
    *(v1 + 592) = *(v1 + 640);
    *(v1 + 608) = v6;
    *(v1 + 624) = result;
  }

  return result;
}

- (int64_t)activeElementInterfaceOrientationForSystemApertureElementOrientationObserver:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_elementViewController);
  v5 = SBSAIsElementViewControllerFixedInOrientation(WeakRetained);

  if (v5)
  {
    return 1;
  }

  v7 = objc_loadWeakRetained(&self->_elementOrientationAuthority);
  v8 = [v7 activeElementInterfaceOrientationForSystemApertureElementOrientationObserver:self];

  return v8;
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v6 = a4;
  [(SBSystemApertureContainerView *)self _applySettingsValues];
  if (([v6 containsString:@"keyLineColorFixedLstar"] & 1) != 0 || objc_msgSend(v6, "containsString:", @"activityKeyLineColorEnabled"))
  {
    cachedValidatedKeyLineTintColor = self->_cachedValidatedKeyLineTintColor;
    self->_cachedValidatedKeyLineTintColor = 0;
  }

  [(SBSystemApertureContainerView *)self setNeedsLayout];
}

- (void)backgroundLumaView:(id)a3 didTransitionToLevel:(unint64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  if (_AXSClassicInvertColorsEnabled())
  {
    if (a4 == 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    goto LABEL_12;
  }

  v7 = _AXSInvertColorsEnabled();
  v8 = a4 == 2;
  v9 = 1;
  if (a4 == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if (!v8)
  {
    v9 = 2;
  }

  if (v7)
  {
    v6 = v9;
LABEL_12:
    v10 = 1;
    goto LABEL_13;
  }

  v10 = 0;
LABEL_13:
  v11 = SBLogSystemApertureController();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = SBStringFromSystemApertureBackgroundLuminanceLevel(self->_sampledBackgroundLuminanceLevel);
    v13 = SBStringFromSystemApertureBackgroundLuminanceLevel(v6);
    v14 = v13;
    v15 = &stru_283094718;
    v17 = 138543874;
    v18 = v12;
    if (v10)
    {
      v15 = @"(Inverted)";
    }

    v19 = 2114;
    v20 = v13;
    v21 = 2112;
    v22 = v15;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Key Line: Sampled background luma (%{public}@) -> (%{public}@) %@", &v17, 0x20u);
  }

  self->_sampledBackgroundLuminanceLevel = v6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained systemApertureContainerView:self sampledLuminanceLevelChangedTo:v6];
}

+ (double)_defaultCornerRadiusForBounds:(CGRect)a3 inWindow:(id)a4
{
  v4 = CGRectGetHeight(a3) * 0.5;
  v5 = [MEMORY[0x277D67E28] sharedInstanceForEmbeddedDisplay];
  [v5 maximumContinuousCornerRadius];
  v7 = v6;

  if (v4 <= v7)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

- (BOOL)_isInRotationTransition
{
  v2 = *&self->_previousContentTransform.c;
  *&t1.a = *&self->_previousContentTransform.a;
  *&t1.c = v2;
  *&t1.tx = *&self->_previousContentTransform.tx;
  v3 = *&self->_activeContentRotationTransform.c;
  *&v5.a = *&self->_activeContentRotationTransform.a;
  *&v5.c = v3;
  *&v5.tx = *&self->_activeContentRotationTransform.tx;
  return !CGAffineTransformEqualToTransform(&t1, &v5);
}

- (void)_setContentViewTransform:(CGAffineTransform *)a3 elementViewControllerInterfaceOrientation:(int64_t)a4
{
  rotatingContentView = self->_rotatingContentView;
  v7 = *&a3->c;
  v13 = *&a3->a;
  v14 = v7;
  v15 = *&a3->tx;
  v8 = rotatingContentView;
  [(UIView *)v8 setTransform:&v13];
  WeakRetained = objc_loadWeakRetained(&self->_elementViewController);
  v10 = [WeakRetained elementViewProvider];
  v11 = [v10 element];

  LOBYTE(WeakRetained) = objc_opt_respondsToSelector();
  if (WeakRetained)
  {
    if (a4 > 4)
    {
      v12 = 0;
    }

    else
    {
      v12 = qword_21F8A5C10[a4];
    }

    [v11 setObstructionEdge:v12];
  }
}

- (SBSystemApertureElementOrientationAuthority)elementOrientationAuthority
{
  WeakRetained = objc_loadWeakRetained(&self->_elementOrientationAuthority);

  return WeakRetained;
}

- (SBSystemApertureContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setRank:(unint64_t)a3
{
  if (self->_rank != a3)
  {
    self->_rank = a3;
    v5 = [(SBSystemApertureContainerView *)self _generateAccessibilityIdentifier];
    [(SBSystemApertureContainerView *)self setAccessibilityIdentifier:v5];
  }
}

- (void)initWithInterfaceElementIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSystemApertureContainerView.m" lineNumber:170 description:{@"Invalid parameter not satisfying: %@", @"interfaceElementIdentifier"}];
}

void __57__SBSystemApertureContainerView_containerViewDescription__block_invoke_cold_1(uint64_t a1)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  v5 = NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:v3 object:v2 file:@"SBSystemApertureContainerView.m" lineNumber:363 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

@end
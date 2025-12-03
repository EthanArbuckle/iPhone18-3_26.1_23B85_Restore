@interface SBDynamicFlashlightActivityElementView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SBDynamicFlashlightActivityElementView)initWithFrame:(CGRect)frame beamState:(CGPoint)state optionsProvider:(id)provider;
- (id)_flashlightStateForWidth:(double)width intensity:(double)intensity;
- (void)_applyBeamState;
- (void)_layoutSensorShadow;
- (void)_setupBeamState:(CGPoint)state;
- (void)_setupLayers;
- (void)_transitionToCollapsedState;
- (void)_transitionToExpandedStateWithIntensity:(double)intensity width:(double)width;
- (void)layoutSubviews;
- (void)setBeamState:(CGPoint)state;
- (void)setExpanded:(BOOL)expanded intensity:(double)intensity width:(double)width;
- (void)setTouching:(BOOL)touching;
@end

@implementation SBDynamicFlashlightActivityElementView

- (SBDynamicFlashlightActivityElementView)initWithFrame:(CGRect)frame beamState:(CGPoint)state optionsProvider:(id)provider
{
  y = state.y;
  x = state.x;
  height = frame.size.height;
  width = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  providerCopy = provider;
  v25.receiver = self;
  v25.super_class = SBDynamicFlashlightActivityElementView;
  height = [(SBDynamicFlashlightActivityElementView *)&v25 initWithFrame:v11, v10, width, height];
  v15 = height;
  if (height)
  {
    packageState = height->_packageState;
    height->_packageState = @"State 0";

    v15->_isExpanded = 0;
    objc_storeStrong(&v15->_optionsProvider, provider);
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 URLForResource:@"Flashlight-Dynamic" withExtension:@"ca"];

    v19 = [objc_alloc(MEMORY[0x277CF0D48]) initWithURL:v18];
    packageView = v15->_packageView;
    v15->_packageView = v19;

    v21 = [[SBDynamicFlashlightActivityElementPackageLayerController alloc] initWithPackageView:v15->_packageView];
    layerManager = v15->_layerManager;
    v15->_layerManager = v21;

    [(SBDynamicFlashlightActivityElementView *)v15 _setupLayers];
    [(SBDynamicFlashlightActivityElementView *)v15 _setupBeamState:x, y];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(SBDynamicFlashlightActivityElementView *)v15 setBackgroundColor:blackColor];

    [(SBDynamicFlashlightActivityElementView *)v15 setNeedsLayout];
  }

  return v15;
}

- (void)_setupLayers
{
  [(SBDynamicFlashlightActivityElementView *)self addSubview:self->_packageView];
  sensorShadowPortalLayer = [(SBDynamicFlashlightActivityElementPackageLayerController *)self->_layerManager sensorShadowPortalLayer];
  sensorShadowLayer = self->_sensorShadowLayer;
  self->_sensorShadowLayer = sensorShadowPortalLayer;

  layer = [(SBDynamicFlashlightActivityElementView *)self layer];
  [layer addSublayer:self->_sensorShadowLayer];

  [(SBDynamicFlashlightActivityElementView *)self setNeedsLayout];
}

- (void)_setupBeamState:(CGPoint)state
{
  y = state.y;
  x = state.x;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = [objc_alloc(MEMORY[0x277D75D50]) initWithLength:2];
  beamState = self->_beamState;
  self->_beamState = v6;

  v8 = self->_beamState;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__SBDynamicFlashlightActivityElementView__setupBeamState___block_invoke;
  v14[3] = &__block_descriptor_48_e9_v16__0_d8l;
  *&v14[4] = x;
  *&v14[5] = y;
  [(UIViewVectorAnimatableProperty *)v8 _mutateValue:v14];
  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D75D18];
  v15[0] = self->_beamState;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__SBDynamicFlashlightActivityElementView__setupBeamState___block_invoke_2;
  v11[3] = &unk_2783A8C68;
  objc_copyWeak(&v12, &location);
  [v9 _createTransformerWithInputAnimatableProperties:v10 presentationValueChangedCallback:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

double __58__SBDynamicFlashlightActivityElementView__setupBeamState___block_invoke(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 8) = result;
  return result;
}

void __58__SBDynamicFlashlightActivityElementView__setupBeamState___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _applyBeamState];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 238.666667;
  v4 = 339.333333;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBDynamicFlashlightActivityElementView;
  [(SBDynamicFlashlightActivityElementView *)&v4 layoutSubviews];
  [(SBDynamicFlashlightActivityElementView *)self bounds];
  packageView = self->_packageView;
  BSRectWithSize();
  [(BSUICAPackageView *)packageView setBounds:?];
  BSRectGetCenter();
  [(BSUICAPackageView *)self->_packageView setCenter:?];
  if (![(CALayer *)self->_sensorShadowLayer isHidden])
  {
    [(SBDynamicFlashlightActivityElementView *)self _layoutSensorShadow];
  }
}

- (void)_layoutSensorShadow
{
  systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
  [systemApertureControllerForMainDisplay defaultIslandFrameInCoordinateSpace:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  if (!CGRectEqualToRect(self->_sensorAreaRect, v19))
  {
    self->_sensorAreaRect.origin.x = v5;
    self->_sensorAreaRect.origin.y = v7;
    self->_sensorAreaRect.size.width = v9;
    self->_sensorAreaRect.size.height = v11;
    BSRectGetCenter();
    v13 = v12;
    v15 = v14;
    [(CALayer *)self->_sensorShadowLayer frame];
    sensorShadowLayer = self->_sensorShadowLayer;

    [(CALayer *)sensorShadowLayer setPosition:v13, v15 + v16 * 0.5];
  }
}

- (void)setExpanded:(BOOL)expanded intensity:(double)intensity width:(double)width
{
  expandedCopy = expanded;
  v9 = SBLogFlashlightHUD();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SBDynamicFlashlightActivityElementView setExpanded:intensity:width:];
  }

  self->_isExpanded = expandedCopy;
  if (expandedCopy)
  {
    [(SBDynamicFlashlightActivityElementView *)self _transitionToExpandedStateWithIntensity:intensity width:width];
  }

  else
  {
    [(SBDynamicFlashlightActivityElementView *)self _transitionToCollapsedState];
  }
}

- (void)_transitionToExpandedStateWithIntensity:(double)intensity width:(double)width
{
  [(BSUICAPackageView *)self->_packageView setState:@"State 0" animated:0];
  [(SBDynamicFlashlightActivityElementPackageLayerController *)self->_layerManager setBeamIntensity:0 width:intensity animated:width];
  [MEMORY[0x277CD9FF0] begin];
  v7 = [(SBDynamicFlashlightActivityElementView *)self _flashlightStateForWidth:width intensity:intensity];
  v8 = SBLogFlashlightHUD();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SBDynamicFlashlightActivityElementView _transitionToExpandedStateWithIntensity:width:];
  }

  [(BSUICAPackageView *)self->_packageView setState:v7];
  packageState = self->_packageState;
  self->_packageState = v7;
  v10 = v7;

  [MEMORY[0x277CD9FF0] commit];
}

- (void)_transitionToCollapsedState
{
  [MEMORY[0x277CD9FF0] begin];
  [(BSUICAPackageView *)self->_packageView setState:@"State 0" animated:1];
  v3 = MEMORY[0x277CD9FF0];

  [v3 commit];
}

- (void)setBeamState:(CGPoint)state
{
  beamState = self->_beamState;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__SBDynamicFlashlightActivityElementView_setBeamState___block_invoke;
  v4[3] = &__block_descriptor_48_e9_v16__0_d8l;
  stateCopy = state;
  [(UIViewVectorAnimatableProperty *)beamState _mutateValue:v4];
}

__n128 __55__SBDynamicFlashlightActivityElementView_setBeamState___block_invoke(__n128 *a1, __n128 *a2)
{
  result = a1[2];
  *a2 = result;
  return result;
}

- (void)_applyBeamState
{
  _presentationValue = [(UIViewVectorAnimatableProperty *)self->_beamState _presentationValue];
  v4 = *_presentationValue;
  v5 = _presentationValue[1];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v6 = [(SBDynamicFlashlightActivityElementView *)self _flashlightStateForWidth:v4 intensity:v5];
  if (([v6 isEqualToString:self->_packageState] & 1) == 0)
  {
    v7 = SBLogFlashlightHUD();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SBDynamicFlashlightActivityElementView _transitionToExpandedStateWithIntensity:width:];
    }

    [(BSUICAPackageView *)self->_packageView setState:v6];
    objc_storeStrong(&self->_packageState, v6);
  }

  [(SBDynamicFlashlightActivityElementPackageLayerController *)self->_layerManager setBeamIntensity:0 width:v5 animated:v4];
  [(SBDynamicFlashlightActivityElementPackageLayerController *)self->_layerManager setTouching:self->_touching animated:1];
  [(SBDynamicFlashlightActivityElementView *)self _layoutSensorShadow];
  [MEMORY[0x277CD9FF0] commit];
}

- (id)_flashlightStateForWidth:(double)width intensity:(double)intensity
{
  [(SBDynamicFlashlightOptionsProvider *)self->_optionsProvider minimumIntensity];
  v7 = @"State 1";
  if (width < 0.12)
  {
    v7 = @"State 1 - narrowest";
  }

  if (v6 <= intensity)
  {
    return v7;
  }

  else
  {
    return @"Off";
  }
}

- (void)setTouching:(BOOL)touching
{
  v5 = SBLogFlashlightHUD();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBDynamicFlashlightActivityElementView setTouching:];
  }

  self->_touching = touching;
}

@end
@interface VKCVisualSearchResultItemView
- (BOOL)containsVisualSearchItemAtPoint:(CGPoint)point;
- (CATransform3D)_pinEndTransform;
- (CGPoint)_offsetForPinBubbleFrameWithDirection:(int64_t)direction pinBubbleBounds:(CGRect)bounds;
- (CGPoint)pointForVisualSearchIcon;
- (CGRect)_pinButtonRect;
- (CGRect)_rectForViewSpace:(CGRect)space;
- (CGRect)boundsFromVisualSearchResult;
- (CGRect)currentImageRectForLayerContents;
- (CGRect)rectForIndicatorDot;
- (CGSize)_pinSizeForViewScale;
- (CGSize)cachedDotSize;
- (NSString)description;
- (UIImage)imageForButton;
- (UIImage)tintedImageForButton;
- (VKCVisualSearchResultItemView)initWithVisualSearchResultItem:(id)item;
- (VKCVisualSearchResultItemViewDelegate)delegate;
- (double)_screenZoomScale;
- (double)contentSizeScaleFactor;
- (id)_queryForProcessingResult;
- (id)_queryString;
- (id)_symbolNameForItem;
- (id)circlePathForPinBubbleWithDirection:(int64_t)direction withRadius:(double)radius;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)trianglePathForPinBubbleWithDirection:(int64_t)direction withRadius:(double)radius;
- (int64_t)_pinArrowDirection;
- (int64_t)interfaceOrientation;
- (void)_animatePin:(BOOL)pin;
- (void)_didDismissVisualResultsPane:(id)pane;
- (void)_updateLayout;
- (void)animateToVisualResultsPane:(BOOL)pane;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)beginAnimatingDotAfterDelay:(double)delay;
- (void)dealloc;
- (void)deviceOrientationDidChange:(id)change;
- (void)didDismissVisualResultsPane;
- (void)didFinishAnimatingDots;
- (void)didTap:(id)tap;
- (void)hideDots;
- (void)layoutSubviews;
- (void)removePulsing;
- (void)setImageContentsInLayer:(id)layer withMaterialLayer:(id)materialLayer withRect:(CGRect)rect;
- (void)setImageContentsInLayer:(id)layer withRect:(CGRect)rect;
- (void)setInterfaceOrientation:(int64_t)orientation;
- (void)showLookupUIPaneForResultItem;
- (void)showPinForTappedDot;
- (void)showVisualResultsPane;
- (void)tintedImageForButton;
- (void)updateIndicatorDotForState;
- (void)updatePinLayerFrame;
@end

@implementation VKCVisualSearchResultItemView

- (void)dealloc
{
  if (!self->_observingInteractionDidFinish)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = getkDDRVInteractionDidFinishNotification_0();
    [defaultCenter removeObserver:self name:v4 object:0];
  }

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69DDCB8] object:0];

  v6.receiver = self;
  v6.super_class = VKCVisualSearchResultItemView;
  [(VKCVisualSearchResultItemView *)&v6 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  visualSearchResultItem = [(VKCVisualSearchResultItemView *)self visualSearchResultItem];
  queryID = [visualSearchResultItem queryID];
  visualSearchResultItem2 = [(VKCVisualSearchResultItemView *)self visualSearchResultItem];
  analysis = [visualSearchResultItem2 analysis];
  v9 = [v3 stringWithFormat:@"<%@: %p> queryID: %llu analysisID: %d", v4, self, queryID, objc_msgSend(analysis, "analysisRequestID")];

  return v9;
}

- (VKCVisualSearchResultItemView)initWithVisualSearchResultItem:(id)item
{
  v32[2] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v31.receiver = self;
  v31.super_class = VKCVisualSearchResultItemView;
  v6 = [(VKCVisualSearchResultItemView *)&v31 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_visualSearchResultItem, item);
    v8 = objc_alloc_init(VKCLookupButton);
    lookupButton = v7->_lookupButton;
    v7->_lookupButton = v8;

    [(VKCVisualSearchResultItemView *)v7 lookupButtonSize];
    [(VKCLookupButton *)v7->_lookupButton setFrame:0.0, 0.0, v10, v10];
    [(VKCVisualSearchResultItemView *)v7 addSubview:v7->_lookupButton];
    layer = [MEMORY[0x1E6979398] layer];
    iconInLookupButtonLayer = v7->_iconInLookupButtonLayer;
    v7->_iconInLookupButtonLayer = layer;

    layer2 = [MEMORY[0x1E6979398] layer];
    pulsingLayer = v7->_pulsingLayer;
    v7->_pulsingLayer = layer2;

    [(VKCLookupButton *)v7->_lookupButton setAccessibilityIdentifier:@"com.apple.visionkit.visualSearchIndicator"];
    [(VKCVisualSearchResultItemView *)v7 setPulsing:1];
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    v16 = [(VKCVisualSearchResultItemView *)v7 registerForTraitChanges:v15 withAction:sel__updateLayout];

    v17 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v7 action:sel_didTap_];
    [(VKCLookupButton *)v7->_lookupButton addGestureRecognizer:v17];
    [(VKCVisualSearchResultItemView *)v7 setTapGestureRecognizer:v17];
    v18 = v7->_lookupButton;
    v19 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v7];
    [(VKCLookupButton *)v18 addInteraction:v19];

    objc_initWeak(&location, v7);
    v20 = dispatch_get_global_queue(-2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__VKCVisualSearchResultItemView_initWithVisualSearchResultItem___block_invoke;
    block[3] = &unk_1E7BE7438;
    v27 = itemCopy;
    v21 = v7;
    v28 = v21;
    objc_copyWeak(&v29, &location);
    dispatch_async(v20, block);

    v21->_interfaceOrientation = 0;
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    [currentDevice beginGeneratingDeviceOrientationNotifications];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    [defaultCenter addObserver:v21 selector:sel_deviceOrientationDidChange_ name:*MEMORY[0x1E69DDCB8] object:currentDevice2];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __64__VKCVisualSearchResultItemView_initWithVisualSearchResultItem___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1B4335000, v2, OS_LOG_TYPE_INFO, "Pre loading image for visual search item: %@, %@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained tintedImageForButton];
}

- (double)contentSizeScaleFactor
{
  traitCollection = [(VKCVisualSearchResultItemView *)self traitCollection];
  [traitCollection vk_contentSizeScaleFactor];
  v4 = v3;

  return fmax(v4, 1.0);
}

- (CGRect)boundsFromVisualSearchResult
{
  visualSearchResultItem = [(VKCVisualSearchResultItemView *)self visualSearchResultItem];
  [visualSearchResultItem normalizedBoundingBox];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  delegate = [(VKCVisualSearchResultItemView *)self delegate];
  [delegate contentsRect];
  v14 = v13;
  superview = [(VKCVisualSearchResultItemView *)self superview];
  [superview bounds];
  v17 = v14 * v16;
  delegate2 = [(VKCVisualSearchResultItemView *)self delegate];
  [delegate2 contentsRect];
  v20 = v19;
  superview2 = [(VKCVisualSearchResultItemView *)self superview];
  [superview2 bounds];
  v23 = v20 * v22;
  superview3 = [(VKCVisualSearchResultItemView *)self superview];
  [superview3 bounds];
  v26 = v25;
  delegate3 = [(VKCVisualSearchResultItemView *)self delegate];
  [delegate3 contentsRect];
  v29 = v26 * v28;
  superview4 = [(VKCVisualSearchResultItemView *)self superview];
  [superview4 bounds];
  v32 = v31;
  delegate4 = [(VKCVisualSearchResultItemView *)self delegate];
  [delegate4 contentsRect];
  v35 = v32 * v34;

  superview5 = [(VKCVisualSearchResultItemView *)self superview];
  [superview5 bounds];
  v38 = v9 * v37;
  delegate5 = [(VKCVisualSearchResultItemView *)self delegate];
  [delegate5 contentsRect];
  v41 = v38 * v40;

  superview6 = [(VKCVisualSearchResultItemView *)self superview];
  [superview6 bounds];
  v44 = v11 * v43;
  delegate6 = [(VKCVisualSearchResultItemView *)self delegate];
  [delegate6 contentsRect];
  v47 = v44 * v46;

  v48 = round(v17 + v5 * v29);
  v49 = round(v23 + v7 * v35);
  v50 = round(v41);
  v51 = round(v47);
  result.size.height = v51;
  result.size.width = v50;
  result.origin.y = v49;
  result.origin.x = v48;
  return result;
}

- (CGPoint)pointForVisualSearchIcon
{
  visualSearchResultItem = [(VKCVisualSearchResultItemView *)self visualSearchResultItem];
  [visualSearchResultItem normalizedIconLocation];
  v5 = v4;
  v7 = v6;

  superview = [(VKCVisualSearchResultItemView *)self superview];
  [superview bounds];
  v10 = v5 * v9;
  delegate = [(VKCVisualSearchResultItemView *)self delegate];
  [delegate contentsRect];
  v13 = v10 * v12;
  superview2 = [(VKCVisualSearchResultItemView *)self superview];
  [superview2 bounds];
  v16 = v7 * v15;
  delegate2 = [(VKCVisualSearchResultItemView *)self delegate];
  [delegate2 contentsRect];
  v19 = v16 * v18;

  v20 = v13;
  v21 = v19;
  result.y = v21;
  result.x = v20;
  return result;
}

- (void)setInterfaceOrientation:(int64_t)orientation
{
  interfaceOrientation = self->_interfaceOrientation;
  if (interfaceOrientation != orientation)
  {
    if (interfaceOrientation)
    {
      [getDDRevealBridgeClass() underlyingViewDisappeared:self->_lookupButton];
    }

    if (orientation)
    {
      self->_interfaceOrientation = orientation;
    }
  }
}

- (int64_t)interfaceOrientation
{
  window = [(VKCVisualSearchResultItemView *)self window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  return interfaceOrientation;
}

- (void)deviceOrientationDidChange:(id)change
{
  window = [(VKCVisualSearchResultItemView *)self window];
  windowScene = [window windowScene];
  -[VKCVisualSearchResultItemView setInterfaceOrientation:](self, "setInterfaceOrientation:", [windowScene interfaceOrientation]);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VKCVisualSearchResultItemView;
  [(VKCVisualSearchResultItemView *)&v3 layoutSubviews];
  [(VKCVisualSearchResultItemView *)self _updateLayout];
}

- (void)_updateLayout
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(VKCVisualSearchResultItemView *)self boundsFromVisualSearchResult];
  [(VKCVisualSearchResultItemView *)self setFrame:?];
  [(VKCVisualSearchResultItemView *)self updateIndicatorDotForState];
  [(VKCVisualSearchResultItemView *)self updatePulsingLayer];
  v3 = MEMORY[0x1E6979518];

  [v3 commit];
}

- (CGRect)rectForIndicatorDot
{
  [(VKCVisualSearchResultItemView *)self lookupButtonSize];
  [(VKCVisualSearchResultItemView *)self _rectForViewSpace:0.0, 0.0, v3, v3];
  v5 = v4;
  [(VKCVisualSearchResultItemView *)self bounds];
  v10 = VKMCenterOfRect(v6, v7, v8, v9);
  v12 = VKMRectWithCenterAndSize(v10, v11, v5);

  v16 = VKMAliasRoundedRectForScale(v12, v13, v14, v15, 1.0);
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)updateIndicatorDotForState
{
  status = self->_status;
  if (status == 1)
  {
    [(VKCVisualSearchResultItemView *)self lookupButtonSize];
    v23 = v22;
    [(VKCVisualSearchResultItemView *)self _rectForViewSpace:0.0, 0.0, v23, v23];
    v25 = v24 / v23;
    [(VKCVisualSearchResultItemView *)self _transformForButtonScale];
    layer = [(VKCLookupButton *)self->_lookupButton layer];
    v32 = v31;
    [layer setTransform:&v32];

    layer2 = [(VKCLookupButton *)self->_lookupButton layer];
    [layer2 setBorderWidth:v25 + v25];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    cGColor = [whiteColor CGColor];
    layer3 = [(VKCLookupButton *)self->_lookupButton layer];
    [layer3 setBorderColor:cGColor];

    [(CALayer *)self->_iconInLookupButtonLayer setOpacity:0.0];
  }

  else
  {
    if (status)
    {
      return;
    }

    [(VKCVisualSearchResultItemView *)self rectForIndicatorDot];
    [(VKCLookupButton *)self->_lookupButton setFrame:?];
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)self->_lookupButton setVk_backgroundColor:whiteColor2];

    [(VKCVisualSearchResultItemView *)self rectForIndicatorDot];
    v6 = v5 * 0.5;
    layer4 = [(VKCLookupButton *)self->_lookupButton layer];
    [layer4 setCornerRadius:v6];

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor2 = [blackColor CGColor];
    layer5 = [(VKCLookupButton *)self->_lookupButton layer];
    [layer5 setShadowColor:cGColor2];

    layer6 = [(VKCLookupButton *)self->_lookupButton layer];
    LODWORD(v12) = 1053609165;
    [layer6 setShadowOpacity:v12];

    layer7 = [(VKCLookupButton *)self->_lookupButton layer];
    [layer7 setShadowRadius:4.0];

    layer8 = [(VKCLookupButton *)self->_lookupButton layer];
    [layer8 setShadowOffset:{0.0, 5.0}];

    layer9 = [(VKCLookupButton *)self->_lookupButton layer];
    [layer9 setMasksToBounds:0];

    layer10 = [(VKCLookupButton *)self->_lookupButton layer];
    [layer10 setBorderWidth:0.0];

    CATransform3DMakeScale(&v33, 1.0, 1.0, 1.0);
    layer11 = [(VKCLookupButton *)self->_lookupButton layer];
    v32 = v33;
    [layer11 setTransform:&v32];

    superlayer = [(CALayer *)self->_iconInLookupButtonLayer superlayer];

    if (!superlayer)
    {
      layer12 = [(VKCLookupButton *)self->_lookupButton layer];
      [layer12 addSublayer:self->_iconInLookupButtonLayer];
    }

    LODWORD(v19) = 1.0;
    [(CALayer *)self->_iconInLookupButtonLayer setOpacity:v19];
    iconInLookupButtonLayer = self->_iconInLookupButtonLayer;
    [(VKCLookupButton *)self->_lookupButton bounds];
    [(VKCVisualSearchResultItemView *)self setImageContentsInLayer:iconInLookupButtonLayer withRect:?];
  }

  [(VKCVisualSearchResultItemView *)self updatePulsingLayer];
}

- (CGRect)_rectForViewSpace:(CGRect)space
{
  height = space.size.height;
  width = space.size.width;
  y = space.origin.y;
  x = space.origin.x;
  window = [(VKCVisualSearchResultItemView *)self window];
  screen = [window screen];
  fixedCoordinateSpace = [screen fixedCoordinateSpace];
  coordinateSpace = [(VKCVisualSearchResultItemView *)self coordinateSpace];
  [fixedCoordinateSpace convertRect:coordinateSpace toCoordinateSpace:{x, y, width, height}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (UIImage)imageForButton
{
  v3 = MEMORY[0x1E69DCAB8];
  _symbolNameForItem = [(VKCVisualSearchResultItemView *)self _symbolNameForItem];
  v5 = [v3 vk_symbolImageWithName:_symbolNameForItem];

  if (!v5)
  {
    v6 = MEMORY[0x1E69DCAB8];
    _defaultSymbolName = [(VKCVisualSearchResultItemView *)self _defaultSymbolName];
    v5 = [v6 vk_symbolImageWithName:_defaultSymbolName];
  }

  return v5;
}

- (UIImage)tintedImageForButton
{
  v13 = *MEMORY[0x1E69E9840];
  tintedImageForButton = self->_tintedImageForButton;
  if (!tintedImageForButton)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_tintedImageForButton)
    {
      imageForButton = [(VKCVisualSearchResultItemView *)selfCopy imageForButton];
      if (!imageForButton)
      {
        v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          visualSearchResultItem = [(VKCVisualSearchResultItemView *)selfCopy visualSearchResultItem];
          [(VKCVisualSearchResultItemView *)visualSearchResultItem tintedImageForButton];
        }

        [VKAssert handleFailedAssertWithCondition:"((image) != nil)" functionName:"[VKCVisualSearchResultItemView tintedImageForButton]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "image"];
      }

      v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
      [imageForButton size];
      v9 = [imageForButton vk_imageWithTint:v8 size:?];
      v10 = self->_tintedImageForButton;
      self->_tintedImageForButton = v9;
    }

    objc_sync_exit(selfCopy);

    tintedImageForButton = self->_tintedImageForButton;
  }

  return tintedImageForButton;
}

- (id)_symbolNameForItem
{
  visualSearchResultItem = [(VKCVisualSearchResultItemView *)self visualSearchResultItem];
  glyphName = [visualSearchResultItem glyphName];

  return glyphName;
}

- (void)removePulsing
{
  [(CALayer *)self->_pulsingLayer setOpacity:0.0];
  pulsingLayer = self->_pulsingLayer;

  [(CALayer *)pulsingLayer removeAllAnimations];
}

- (void)animateToVisualResultsPane:(BOOL)pane
{
  paneCopy = pane;
  v5 = @"animateOut";
  if (pane)
  {
    v5 = @"animateIn";
  }

  v6 = v5;
  if (self->_pinLayer)
  {
    [(VKCVisualSearchResultItemView *)self _animatePin:paneCopy];
  }

  v7 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform"];
  [v7 setDamping:20.0];
  [v7 setStiffness:380.0];
  [v7 setDuration:0.4936];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  [(VKCVisualSearchResultItemView *)self _transformForButtonScale];
  if (paneCopy)
  {
    v33 = v41;
    v34 = v42;
    v35 = v43;
    v36 = v44;
    v29 = v37;
    v30 = v38;
    v31 = v39;
    v32 = v40;
    v8 = *(MEMORY[0x1E69792E8] + 112);
    v28[6] = *(MEMORY[0x1E69792E8] + 96);
    v28[7] = v8;
    v9 = *(MEMORY[0x1E69792E8] + 80);
    v28[4] = *(MEMORY[0x1E69792E8] + 64);
    v28[5] = v9;
    v10 = *(MEMORY[0x1E69792E8] + 48);
    v28[2] = *(MEMORY[0x1E69792E8] + 32);
    v28[3] = v10;
    v11 = *(MEMORY[0x1E69792E8] + 16);
    v28[0] = *MEMORY[0x1E69792E8];
    v28[1] = v11;
    v12 = [MEMORY[0x1E696B098] valueWithBytes:v28 objCType:"{CATransform3D=dddddddddddddddd}"];
    v13 = &unk_1F2C39158;
    v14 = 0.0;
    v15 = &unk_1F2C39168;
  }

  else
  {
    v16 = *(MEMORY[0x1E69792E8] + 80);
    v33 = *(MEMORY[0x1E69792E8] + 64);
    v34 = v16;
    v17 = *(MEMORY[0x1E69792E8] + 112);
    v35 = *(MEMORY[0x1E69792E8] + 96);
    v36 = v17;
    v18 = *(MEMORY[0x1E69792E8] + 16);
    v29 = *MEMORY[0x1E69792E8];
    v30 = v18;
    v19 = *(MEMORY[0x1E69792E8] + 48);
    v31 = *(MEMORY[0x1E69792E8] + 32);
    v32 = v19;
    v27[6] = v43;
    v27[7] = v44;
    v27[4] = v41;
    v27[5] = v42;
    v27[2] = v39;
    v27[3] = v40;
    v27[0] = v37;
    v27[1] = v38;
    v12 = [MEMORY[0x1E696B098] valueWithBytes:v27 objCType:"{CATransform3D=dddddddddddddddd}"];
    v13 = &unk_1F2C39168;
    v14 = 1.0;
    v15 = &unk_1F2C39158;
  }

  [v7 setFromValue:v12];

  v26[4] = v33;
  v26[5] = v34;
  v26[6] = v35;
  v26[7] = v36;
  v26[0] = v29;
  v26[1] = v30;
  v26[2] = v31;
  v26[3] = v32;
  v20 = [MEMORY[0x1E696B098] valueWithBytes:v26 objCType:"{CATransform3D=dddddddddddddddd}"];
  [v7 setToValue:v20];

  layer = [(VKCLookupButton *)self->_lookupButton layer];
  v25[4] = v33;
  v25[5] = v34;
  v25[6] = v35;
  v25[7] = v36;
  v25[0] = v29;
  v25[1] = v30;
  v25[2] = v31;
  v25[3] = v32;
  [layer setTransform:v25];

  layer2 = [(VKCLookupButton *)self->_lookupButton layer];
  [layer2 addAnimation:v7 forKey:@"buttonScaleAnimation"];

  v23 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v23 setDuration:0.2];
  [v23 setFromValue:v13];
  [v23 setToValue:v15];
  *&v24 = v14;
  [(CALayer *)self->_iconInLookupButtonLayer setOpacity:v24];
  [v23 setDelegate:self];
  [v23 setValue:v6 forKey:@"animationName"];
  [(CALayer *)self->_iconInLookupButtonLayer addAnimation:v23 forKey:@"iconImageAnimation"];
}

- (void)_animatePin:(BOOL)pin
{
  pinCopy = pin;
  v45[2] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform"];
  [v5 setDamping:20.0];
  [v5 setStiffness:380.0];
  [v5 setDuration:0.4936];
  v6 = MEMORY[0x1E696B098];
  v7 = MEMORY[0x1E69792E8];
  if (pinCopy)
  {
    [(VKCVisualSearchResultItemView *)self _pinEndTransform];
    v8 = [v6 valueWithBytes:v44 objCType:"{CATransform3D=dddddddddddddddd}"];
    [v5 setFromValue:v8];

    v9 = v7[5];
    v43[4] = v7[4];
    v43[5] = v9;
    v10 = v7[7];
    v43[6] = v7[6];
    v43[7] = v10;
    v11 = v7[1];
    v43[0] = *v7;
    v43[1] = v11;
    v12 = v7[3];
    v43[2] = v7[2];
    v43[3] = v12;
    v13 = [MEMORY[0x1E696B098] valueWithBytes:v43 objCType:"{CATransform3D=dddddddddddddddd}"];
    v14 = &unk_1F2C38F50;
    v15 = &unk_1F2C38F68;
  }

  else
  {
    v16 = *(MEMORY[0x1E69792E8] + 80);
    v42[4] = *(MEMORY[0x1E69792E8] + 64);
    v42[5] = v16;
    v17 = *(MEMORY[0x1E69792E8] + 112);
    v42[6] = *(MEMORY[0x1E69792E8] + 96);
    v42[7] = v17;
    v18 = *(MEMORY[0x1E69792E8] + 16);
    v42[0] = *MEMORY[0x1E69792E8];
    v42[1] = v18;
    v19 = *(MEMORY[0x1E69792E8] + 48);
    v42[2] = *(MEMORY[0x1E69792E8] + 32);
    v42[3] = v19;
    v20 = [MEMORY[0x1E696B098] valueWithBytes:v42 objCType:"{CATransform3D=dddddddddddddddd}"];
    [v5 setFromValue:v20];

    v21 = MEMORY[0x1E696B098];
    [(VKCVisualSearchResultItemView *)self _pinEndTransform];
    v13 = [v21 valueWithBytes:v41 objCType:"{CATransform3D=dddddddddddddddd}"];
    v14 = &unk_1F2C38F68;
    v15 = &unk_1F2C38F50;
  }

  [v5 setToValue:v13];

  v22 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"opacity"];
  [v22 setDamping:20.0];
  [v22 setStiffness:380.0];
  [v22 setDuration:0.4936];
  [v22 setFromValue:v14];
  [v22 setToValue:v15];
  animation = [MEMORY[0x1E6979308] animation];
  v45[0] = v5;
  v45[1] = v22;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  [animation setAnimations:v24];

  [animation setDuration:0.4936];
  if (pinCopy)
  {
    v25 = v7[5];
    v37 = v7[4];
    v38 = v25;
    v26 = v7[7];
    v39 = v7[6];
    v40 = v26;
    v27 = v7[1];
    v33 = *v7;
    v34 = v27;
    v28 = v7[3];
    v35 = v7[2];
    v36 = v28;
    v29 = 1.0;
  }

  else
  {
    [(VKCVisualSearchResultItemView *)self _pinEndTransform];
    v29 = 0.0;
  }

  pinLayer = self->_pinLayer;
  v32[4] = v37;
  v32[5] = v38;
  v32[6] = v39;
  v32[7] = v40;
  v32[0] = v33;
  v32[1] = v34;
  v32[2] = v35;
  v32[3] = v36;
  [(CALayer *)pinLayer setTransform:v32];
  *&v31 = v29;
  [(CALayer *)self->_pinLayer setOpacity:v31];
  [(CALayer *)self->_pinLayer addAnimation:animation forKey:@"pinAnimation"];
}

- (CATransform3D)_pinEndTransform
{
  [(VKCVisualSearchResultItemView *)self _pinSizeForViewScale];
  v6 = v5;
  v8 = v7;
  memset(&v18, 0, sizeof(v18));
  CATransform3DMakeScale(&v18, 0.01, 0.01, 0.01);
  memset(&v17, 0, sizeof(v17));
  _pinArrowDirection = [(VKCVisualSearchResultItemView *)self _pinArrowDirection];
  if (_pinArrowDirection == 3)
  {
    v13 = -0.5;
LABEL_9:
    v12 = v6 * v13;
    v11 = 0.0;
    goto LABEL_10;
  }

  if (_pinArrowDirection == 1)
  {
    v10 = 0.5;
    goto LABEL_6;
  }

  if (_pinArrowDirection)
  {
    v13 = 0.5;
    goto LABEL_9;
  }

  v10 = -0.5;
LABEL_6:
  v11 = v8 * v10;
  v12 = 0.0;
LABEL_10:
  CATransform3DMakeTranslation(&v17, v12, v11, 0.0);
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  a = v18;
  v15 = v17;
  return CATransform3DConcat(retstr, &a, &v15);
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v5 = [stop valueForKey:{@"animationName", finished}];
  if ([v5 isEqualToString:@"animateOut"])
  {
    [(CALayer *)self->_pinLayer removeFromSuperlayer];
    pinLayer = self->_pinLayer;
    self->_pinLayer = 0;
  }

  else if ([v5 isEqualToString:@"animateIn"])
  {
    delegate = [(VKCVisualSearchResultItemView *)self delegate];
    visualSearchResultItem = [(VKCVisualSearchResultItemView *)self visualSearchResultItem];
    [visualSearchResultItem normalizedBoundingBox];
    [delegate visualSearchItemView:self didTapVisualSearchIndicatorWithNormalizedBoundingBox:?];

    [(VKCVisualSearchResultItemView *)self showLookupUIPaneForResultItem];
  }

  else if ([v5 isEqualToString:@"dotAnimateIn"])
  {
    layer = [(VKCVisualSearchResultItemView *)self layer];
    LODWORD(v10) = 1.0;
    [layer setOpacity:v10];

    CATransform3DMakeScale(&v13, 1.0, 1.0, 1.0);
    layer2 = [(VKCVisualSearchResultItemView *)self layer];
    v12 = v13;
    [layer2 setTransform:&v12];
  }
}

- (void)setImageContentsInLayer:(id)layer withRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layerCopy = layer;
  VKMScaledRect(x, y, width, height, 0.5);
  v9 = VKMRectWithSize();
  v13 = VKMCenterRectOverRect(v9, v10, v11, v12, x, y, width, height);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (self->_iconInLookupButtonLayer != layerCopy || ([(VKCVisualSearchResultItemView *)self currentImageRectForLayerContents], v43.origin.x = v13, v43.origin.y = v15, v43.size.width = v17, v43.size.height = v19, !CGRectEqualToRect(v42, v43)))
  {
    [(VKCVisualSearchResultItemView *)self setCurrentImageRectForLayerContents:v13, v15, v17, v19];
    tintedImageForButton = [(VKCVisualSearchResultItemView *)self tintedImageForButton];
    -[CALayer setContents:](layerCopy, "setContents:", [tintedImageForButton vk_cgImage]);
    [tintedImageForButton size];
    v23 = VKMFitOrFillSizeInRect(0, v21, v22, v13, v15, v17, v19);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    window = [(VKCVisualSearchResultItemView *)self window];
    screen = [window screen];
    [screen scale];
    v33 = VKMAliasRoundedRectForScale(v23, v25, v27, v29, v32);
    v35 = v34;
    v37 = v36;
    v39 = v38;

    [(CALayer *)layerCopy setFrame:v33, v35, v37, v39];
  }
}

- (void)setImageContentsInLayer:(id)layer withMaterialLayer:(id)materialLayer withRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  materialLayerCopy = materialLayer;
  layerCopy = layer;
  [(VKCVisualSearchResultItemView *)self setImageContentsInLayer:layerCopy withRect:x, y, width, height];
  v14 = [materialLayerCopy visualStylingProviderForCategory:*MEMORY[0x1E6997F20]];

  v13 = [v14 visualStylingForStyle:*MEMORY[0x1E6997F40]];
  [layerCopy mt_replaceAllVisualStylingWithStyling:v13];
}

- (void)showPinForTappedDot
{
  [(CALayer *)self->_pinLayer removeFromSuperlayer];
  pinLayer = self->_pinLayer;
  self->_pinLayer = 0;

  layer = [MEMORY[0x1E6979398] layer];
  v5 = self->_pinLayer;
  self->_pinLayer = layer;

  LODWORD(v6) = 1.0;
  [(CALayer *)self->_pinLayer setOpacity:v6];
  layer2 = [(VKCVisualSearchResultItemView *)self layer];
  [layer2 addSublayer:self->_pinLayer];

  [(VKCVisualSearchResultItemView *)self _pinSizeForViewScale];
  v9 = v8;
  [(VKCVisualSearchResultItemView *)self _screenZoomScale];
  v11 = v9 + v10 * -6.0;
  _pinArrowDirection = [(VKCVisualSearchResultItemView *)self _pinArrowDirection];
  [(VKCVisualSearchResultItemView *)self updatePinLayerFrame];
  layer3 = [MEMORY[0x1E69794A0] layer];
  [(CALayer *)self->_pinLayer bounds];
  [layer3 setFrame:?];
  v13 = [(VKCVisualSearchResultItemView *)self trianglePathForPinBubbleWithDirection:_pinArrowDirection withRadius:v11];
  v14 = [(VKCVisualSearchResultItemView *)self circlePathForPinBubbleWithDirection:_pinArrowDirection withRadius:v11];
  [v13 vk_appendBezierPath:v14];

  [layer3 setPath:{objc_msgSend(v13, "vk_CGPath")}];
  v15 = objc_alloc_init(MEMORY[0x1E6997F68]);
  [v15 setRecipe:*MEMORY[0x1E6997EC0]];
  [v15 setWeighting:1.0];
  [(CALayer *)self->_pinLayer bounds];
  [v15 setFrame:?];
  [v15 setMask:layer3];
  [(CALayer *)self->_pinLayer addSublayer:v15];
  [(UIView *)self vk_viewPointRatioFromWindow];
  v17 = v16;
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  -[CALayer setShadowColor:](self->_pinLayer, "setShadowColor:", [blackColor CGColor]);

  v19 = v17 * 0.1;
  *&v19 = v17 * 0.1;
  [(CALayer *)self->_pinLayer setShadowOpacity:v19];
  [(CALayer *)self->_pinLayer setShadowRadius:v17 * 10.0];
  [(CALayer *)self->_pinLayer setShadowOffset:0.0, v17 + v17];
  [(CALayer *)self->_pinLayer setMasksToBounds:0];
  v27.origin.x = VKMRectWithSize();
  v28 = CGRectInset(v27, (v9 - v11) * 0.5, (v9 - v11) * 0.5);
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  layer4 = [MEMORY[0x1E6979398] layer];
  [(VKCVisualSearchResultItemView *)self setImageContentsInLayer:layer4 withMaterialLayer:v15 withRect:x, y, width, height];
  [(CALayer *)self->_pinLayer addSublayer:layer4];
}

- (CGRect)_pinButtonRect
{
  v2 = 66.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 66.0;
  result.size.height = v5;
  result.size.width = v2;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGSize)_pinSizeForViewScale
{
  [(VKCVisualSearchResultItemView *)self _pinButtonRect];
  [(VKCVisualSearchResultItemView *)self _rectForViewSpace:?];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (double)_screenZoomScale
{
  [(VKCVisualSearchResultItemView *)self _pinButtonRect];
  [(VKCVisualSearchResultItemView *)self _rectForViewSpace:?];
  v4 = v3;
  [(VKCVisualSearchResultItemView *)self _pinButtonRect];
  return v4 / v5;
}

- (int64_t)_pinArrowDirection
{
  visualSearchResultItem = [(VKCVisualSearchResultItemView *)self visualSearchResultItem];
  domainInfo = [visualSearchResultItem domainInfo];
  domain = [domainInfo domain];
  v6 = [domain isEqual:@"com.apple.argos.domain_key.dogs"];

  if (v6)
  {
    return 0;
  }

  visualSearchResultItem2 = [(VKCVisualSearchResultItemView *)self visualSearchResultItem];
  domainInfo2 = [visualSearchResultItem2 domainInfo];
  domain2 = [domainInfo2 domain];
  v11 = [domain2 isEqual:@"com.apple.argos.domain_key.cats"];

  return v11 ^ 1u;
}

- (void)updatePinLayerFrame
{
  _pinArrowDirection = [(VKCVisualSearchResultItemView *)self _pinArrowDirection];
  [(VKCVisualSearchResultItemView *)self _pinSizeForViewScale];
  v5 = v4;
  v7 = v6;
  [(VKCVisualSearchResultItemView *)self _offsetForPinBubbleFrameWithDirection:_pinArrowDirection pinBubbleBounds:VKMRectWithSize()];
  v9 = v8;
  v11 = v10;
  [(VKCLookupButton *)self->_lookupButton frame];
  v16 = VKMCenterOfRect(v12, v13, v14, v15);
  v17 = VKMAddPoints(v9, v11, v16);
  v20 = VKMRectWithOriginAndSize(v18, v17, v19, v5, v7);
  pinLayer = self->_pinLayer;

  [(CALayer *)pinLayer setFrame:v20];
}

- (CGPoint)_offsetForPinBubbleFrameWithDirection:(int64_t)direction pinBubbleBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  [(VKCVisualSearchResultItemView *)self _screenZoomScale:bounds.origin.x];
  v11 = v10 * 3.0;
  if (direction > 1)
  {
    if (direction == 2)
    {
      [(VKCLookupButton *)self->_lookupButton frame];
      v14 = -0.5;
      v8 = v16 * -0.5 - width - v11;
    }

    else
    {
      if (direction != 3)
      {
        goto LABEL_11;
      }

      [(VKCLookupButton *)self->_lookupButton frame];
      v8 = v11 + v13 * 0.5;
      v14 = -0.5;
    }

    v9 = height * v14;
    goto LABEL_11;
  }

  if (direction)
  {
    if (direction == 1)
    {
      v8 = width * -0.5;
      [(VKCLookupButton *)self->_lookupButton frame];
      v9 = v12 * -0.5 - height - v11;
    }
  }

  else
  {
    v8 = width * -0.5;
    [(VKCLookupButton *)self->_lookupButton frame];
    v9 = v11 + v15 * 0.5;
  }

LABEL_11:
  v17 = v8;
  v18 = v9;
  result.y = v18;
  result.x = v17;
  return result;
}

- (id)circlePathForPinBubbleWithDirection:(int64_t)direction withRadius:(double)radius
{
  [(CALayer *)self->_pinLayer bounds];
  v9 = VKMCenterOfRect(v5, v6, v7, v8);
  v11 = VKMRectWithCenterAndSize(v9, v10, radius);
  v12 = MEMORY[0x1E69DC728];

  return [v12 bezierPathWithOvalInRect:v11];
}

- (id)trianglePathForPinBubbleWithDirection:(int64_t)direction withRadius:(double)radius
{
  v7 = radius / 6.0;
  [(CALayer *)self->_pinLayer bounds];
  v9 = (v8 - radius) * 0.5 + 1.0;
  v10 = objc_alloc_init(MEMORY[0x1E69DC728]);
  if (direction > 1)
  {
    if (direction == 2)
    {
      [(CALayer *)self->_pinLayer bounds];
      v22 = CGRectGetMaxX(v43) - v9;
      [(CALayer *)self->_pinLayer bounds];
      v17 = v7 * 0.5;
      [v10 moveToPoint:{v22, CGRectGetMidY(v44) - v17}];
      [(CALayer *)self->_pinLayer bounds];
      MaxX = CGRectGetMaxX(v45);
      [(CALayer *)self->_pinLayer bounds];
      [v10 vk_addLineToPoint:{MaxX, CGRectGetMidY(v46)}];
      [(CALayer *)self->_pinLayer bounds];
      MidX = CGRectGetMaxX(v47) - v9;
    }

    else
    {
      if (direction != 3)
      {
        goto LABEL_12;
      }

      [(CALayer *)self->_pinLayer bounds];
      v16 = v9 + CGRectGetMinX(v32);
      [(CALayer *)self->_pinLayer bounds];
      v17 = v7 * 0.5;
      [v10 moveToPoint:{v16, CGRectGetMidY(v33) - v17}];
      [(CALayer *)self->_pinLayer bounds];
      MinX = CGRectGetMinX(v34);
      [(CALayer *)self->_pinLayer bounds];
      [v10 vk_addLineToPoint:{MinX, CGRectGetMidY(v35)}];
      [(CALayer *)self->_pinLayer bounds];
      MidX = v9 + CGRectGetMinX(v36);
    }

    [(CALayer *)self->_pinLayer bounds];
    MaxY = v17 + CGRectGetMidY(v48);
  }

  else if (direction)
  {
    if (direction != 1)
    {
      goto LABEL_12;
    }

    [(CALayer *)self->_pinLayer bounds];
    v11 = v7 * 0.5;
    v12 = CGRectGetMidX(v26) - v11;
    [(CALayer *)self->_pinLayer bounds];
    [v10 moveToPoint:{v12, CGRectGetMaxY(v27) - v9}];
    [(CALayer *)self->_pinLayer bounds];
    v13 = v11 + CGRectGetMidX(v28);
    [(CALayer *)self->_pinLayer bounds];
    [v10 vk_addLineToPoint:{v13, CGRectGetMaxY(v29) - v9}];
    [(CALayer *)self->_pinLayer bounds];
    MidX = CGRectGetMidX(v30);
    [(CALayer *)self->_pinLayer bounds];
    MaxY = CGRectGetMaxY(v31);
  }

  else
  {
    [(CALayer *)self->_pinLayer bounds];
    v19 = v7 * 0.5;
    v20 = CGRectGetMidX(v37) - v19;
    [(CALayer *)self->_pinLayer bounds];
    [v10 moveToPoint:{v20, v9 + CGRectGetMinY(v38)}];
    [(CALayer *)self->_pinLayer bounds];
    v21 = CGRectGetMidX(v39);
    [(CALayer *)self->_pinLayer bounds];
    [v10 vk_addLineToPoint:{v21, CGRectGetMinY(v40)}];
    [(CALayer *)self->_pinLayer bounds];
    MidX = v19 + CGRectGetMidX(v41);
    [(CALayer *)self->_pinLayer bounds];
    MaxY = v9 + CGRectGetMinY(v42);
  }

  [v10 vk_addLineToPoint:{MidX, MaxY}];
  [v10 closePath];
LABEL_12:

  return v10;
}

- (BOOL)containsVisualSearchItemAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(VKCVisualSearchResultItemView *)self _rectForViewSpace:VKMRectWithSize()];
  v7 = v6;
  lookupButton = [(VKCVisualSearchResultItemView *)self lookupButton];
  [lookupButton frame];
  v13 = VKMCenterOfRect(v9, v10, v11, v12);
  v15 = VKMRectWithCenterAndSize(v13, v14, v7);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  v26 = x;
  v27 = y;

  return CGRectContainsPoint(*&v22, *&v26);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  if (([(VKCVisualSearchResultItemView *)self isHidden]& 1) != 0 || ![(VKCVisualSearchResultItemView *)self containsVisualSearchItemAtPoint:x, y])
  {
    lookupButton = 0;
  }

  else
  {
    lookupButton = [(VKCVisualSearchResultItemView *)self lookupButton];
  }

  return lookupButton;
}

- (void)didTap:(id)tap
{
  [tap locationInView:self];
  v5 = v4;
  v7 = v6;
  delegate = [(VKCVisualSearchResultItemView *)self delegate];
  v9 = [delegate visualSearchItemView:self shouldBeginAtPoint:{v5, v7}];

  if (v9)
  {
    visualSearchResultItem = [(VKCVisualSearchResultItemView *)self visualSearchResultItem];
    [visualSearchResultItem setCurrentInvocationType:1];

    [(VKCVisualSearchResultItemView *)self showVisualResultsPane];
  }
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v4 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self->_lookupButton];
  v5 = [MEMORY[0x1E69DCDB8] effectWithPreview:v4];
  v6 = [MEMORY[0x1E69DCDD0] styleWithEffect:v5 shape:0];

  return v6;
}

- (void)beginAnimatingDotAfterDelay:(double)delay
{
  v32[2] = *MEMORY[0x1E69E9840];
  [(VKCVisualSearchResultItemView *)self hideDots];
  [(VKCVisualSearchResultItemView *)self setShouldShowDots:1];
  [(VKCVisualSearchResultItemView *)self _updateLayout];
  v5 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v5 setFromValue:&unk_1F2C39168];
  [v5 setToValue:&unk_1F2C39158];
  v6 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform"];
  [v6 setDamping:20.0];
  [v6 setStiffness:770.0];
  [v6 setDuration:0.73763];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  [(VKCVisualSearchResultItemView *)self _initialDotAnimationTransform];
  v20 = v28;
  v21 = v29;
  v22 = v30;
  v23 = v31;
  v16 = v24;
  v17 = v25;
  v18 = v26;
  v19 = v27;
  v7 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v16];
  [v6 setFromValue:v7];

  v8 = *(MEMORY[0x1E69792E8] + 80);
  v20 = *(MEMORY[0x1E69792E8] + 64);
  v21 = v8;
  v9 = *(MEMORY[0x1E69792E8] + 112);
  v22 = *(MEMORY[0x1E69792E8] + 96);
  v23 = v9;
  v10 = *(MEMORY[0x1E69792E8] + 16);
  v16 = *MEMORY[0x1E69792E8];
  v17 = v10;
  v11 = *(MEMORY[0x1E69792E8] + 48);
  v18 = *(MEMORY[0x1E69792E8] + 32);
  v19 = v11;
  v12 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v16];
  [v6 setToValue:v12];

  animation = [MEMORY[0x1E6979308] animation];
  [animation setDuration:0.4];
  v32[0] = v5;
  v32[1] = v6;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  [animation setAnimations:v14];

  [animation setBeginTime:CACurrentMediaTime() + delay];
  [animation setDelegate:self];
  [animation setValue:@"dotAnimateIn" forKey:@"animationName"];
  [animation setFillMode:*MEMORY[0x1E69797E8]];
  [animation setRemovedOnCompletion:0];
  layer = [(VKCVisualSearchResultItemView *)self layer];
  [layer addAnimation:animation forKey:@"animateIn"];
}

- (void)didFinishAnimatingDots
{
  if ([(VKCVisualSearchResultItemView *)self shouldShowDots])
  {
    if (self->_automaticallyShowVisualSearchResults)
    {
      delegate = [(VKCVisualSearchResultItemView *)self delegate];
      [(VKCVisualSearchResultItemView *)self bounds];
      v8 = [delegate visualSearchItemView:self shouldBeginAtPoint:{VKMCenterOfRect(v4, v5, v6, v7)}];

      if (v8)
      {

        [(VKCVisualSearchResultItemView *)self showVisualResultsPane];
      }
    }
  }
}

- (void)hideDots
{
  [(VKCVisualSearchResultItemView *)self setShouldShowDots:0];
  layer = [(VKCVisualSearchResultItemView *)self layer];
  [layer setOpacity:0.0];
}

- (void)showVisualResultsPane
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "Visual search activated: %@", &v6, 0xCu);
  }

  if (!self->_isShowingVisualResultsPane)
  {
    self->_status = 1;
    self->_isShowingVisualResultsPane = 1;
    [(VKCVisualSearchResultItemView *)self updateIndicatorDotForState];
    traitCollection = [(VKCVisualSearchResultItemView *)self traitCollection];
    vk_hasCompactWidth = [traitCollection vk_hasCompactWidth];

    if (vk_hasCompactWidth)
    {
      [(VKCVisualSearchResultItemView *)self showPinForTappedDot];
      [(CALayer *)self->_pinLayer setOpacity:0.0];
    }

    [(VKCVisualSearchResultItemView *)self animateToVisualResultsPane:1];
  }
}

- (void)_didDismissVisualResultsPane:(id)pane
{
  paneCopy = pane;
  v5 = objc_opt_class();
  object = [paneCopy object];

  v14 = VKDynamicCast(v5, object);

  v7 = objc_opt_class();
  clientHints = [v14 clientHints];
  v9 = VKDynamicCast(v7, clientHints);

  if (v9)
  {
    currentRVItemID = [(VKCVisualSearchResultItemView *)self currentRVItemID];
    v11 = [v9 isEqualToString:currentRVItemID];

    if (v11)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v13 = getkDDRVInteractionDidFinishNotification_0();
      [defaultCenter removeObserver:self name:v13 object:0];

      [(VKCVisualSearchResultItemView *)self setObservingInteractionDidFinish:0];
      [(VKCVisualSearchResultItemView *)self setCurrentRVItemID:0];
      [(VKCVisualSearchResultItemView *)self didDismissVisualResultsPane];
    }
  }
}

- (void)didDismissVisualResultsPane
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "Visual search pane was dismissed: %@", &v5, 0xCu);
  }

  self->_isShowingVisualResultsPane = 0;
  self->_status = 0;
  [(VKCVisualSearchResultItemView *)self animateToVisualResultsPane:0];
  [(VKCVisualSearchResultItemView *)self updateIndicatorDotForState];
  [(VKCVisualSearchResultItemView *)self setNeedsLayout];
  delegate = [(VKCVisualSearchResultItemView *)self delegate];
  [delegate visualSearchItemViewDidDismissController:self];
}

- (id)_queryString
{
  v2 = VKBundle();
  v3 = [v2 localizedStringForKey:@"VK_RESULTS_LOOKUP_PANEL_TITLE" value:@"VK_RESULTS_LOOKUP_PANEL_TITLE" table:@"Localizable"];

  return v3;
}

- (id)_queryForProcessingResult
{
  objc_initWeak(&location, self);
  v3 = +[VKCImageAnalyzerRequest newQueryIDForParsec];
  v4 = objc_alloc(MEMORY[0x1E69C7520]);
  _queryString = [(VKCVisualSearchResultItemView *)self _queryString];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__VKCVisualSearchResultItemView__queryForProcessingResult__block_invoke;
  v8[3] = &unk_1E7BE3ED0;
  objc_copyWeak(v9, &location);
  v8[4] = self;
  v9[1] = v3;
  v6 = [v4 initWithTitle:_queryString clientIdentifier:@"com.apple.mediaanalysisd" userAgent:@"VisualIntelligence/1" queryID:v3 queryProvider:v8];

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);

  return v6;
}

void __58__VKCVisualSearchResultItemView__queryForProcessingResult__block_invoke(uint64_t a1, int a2, int a3, void *a4)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (a2 && a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      if ([WeakRetained didProcessResult])
      {
        v10 = [v9 visualSearchResultItem];
        v11 = [v10 searchItem];
        v12 = [v11 searchSections];
        v7[2](v7, v12, 0);

        v13 = [v9 delegate];
        [v13 visualSearchItemView:v9 didProcessResultsWithDuration:0.0];

        v14 = +[VKImageAnalyzerMadInterface sharedInterface];
        v15 = *(a1 + 48);
        v16 = [v9 visualSearchResultItem];
        v17 = [v16 queryID];
        v18 = [v9 visualSearchResultItem];
        [v14 didShowVisualSearchCachedResultsForQueryID:v15 cachedResultQueryID:v17 item:v18];
      }

      else
      {
        v20 = [MEMORY[0x1E695DF00] now];
        v21 = [*(a1 + 32) delegate];
        v22 = [v9 visualSearchResultItem];
        v30[0] = v22;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __58__VKCVisualSearchResultItemView__queryForProcessingResult__block_invoke_2;
        v25[3] = &unk_1E7BE3EA8;
        v26 = v20;
        v27 = v9;
        v29 = *(a1 + 48);
        v28 = v7;
        v24 = v20;
        [v21 generateVisualSearchResultForItems:v23 queryID:v29 completionHandler:v25];
      }
    }
  }

  else
  {
    v19 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __58__VKCVisualSearchResultItemView__queryForProcessingResult__block_invoke_cold_1(a1, v19);
    }

    v7[2](v7, 0, 0);
  }
}

void __58__VKCVisualSearchResultItemView__queryForProcessingResult__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__VKCVisualSearchResultItemView__queryForProcessingResult__block_invoke_3;
  v11[3] = &unk_1E7BE3E80;
  v12 = *(a1 + 32);
  v13 = v7;
  v8 = *(a1 + 48);
  v14 = *(a1 + 40);
  v15 = v6;
  v17 = *(a1 + 56);
  v16 = v8;
  v9 = v6;
  v10 = v7;
  vk_performBlockOnMainThread(v11);
}

void __58__VKCVisualSearchResultItemView__queryForProcessingResult__block_invoke_3(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] now];
  [v2 timeIntervalSinceDate:*(a1 + 32)];
  v4 = v3;

  v5 = *(a1 + 40);
  v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __58__VKCVisualSearchResultItemView__queryForProcessingResult__block_invoke_3_cold_1((a1 + 40), a1, v7);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v21 = 138412290;
      v22 = v8;
      _os_log_impl(&dword_1B4335000, v7, OS_LOG_TYPE_DEFAULT, "Successfully processed visual search results: %@", &v21, 0xCu);
    }

    v9 = [*(a1 + 56) userFeedbackPayload];
    [*(a1 + 48) setUserReportPayload:v9];

    [*(a1 + 48) setDidProcessResult:1];
    v10 = [*(a1 + 56) resultItems];
    v11 = [v10 firstObject];
    v12 = [v11 searchItem];
    v13 = [*(a1 + 48) visualSearchResultItem];
    [v13 setSearchItem:v12];

    v14 = *(a1 + 72);
    v15 = [*(a1 + 48) visualSearchResultItem];
    [v15 setQueryID:v14];

    v16 = *(a1 + 64);
    v17 = [*(a1 + 48) visualSearchResultItem];
    v18 = [v17 searchItem];
    v19 = [v18 searchSections];
    (*(v16 + 16))(v16, v19, 0);

    v20 = [*(a1 + 48) delegate];
    [v20 visualSearchItemView:*(a1 + 48) didProcessResultsWithDuration:v4];
  }
}

- (void)showLookupUIPaneForResultItem
{
  _queryForProcessingResult = [(VKCVisualSearchResultItemView *)self _queryForProcessingResult];
  v4 = objc_alloc(MEMORY[0x1E69C7518]);
  _queryString = [(VKCVisualSearchResultItemView *)self _queryString];
  v6 = [v4 initWithSearchQuery:_queryForProcessingResult rangeInContext:{0x7FFFFFFFFFFFFFFFLL, objc_msgSend(_queryString, "length")}];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__VKCVisualSearchResultItemView_showLookupUIPaneForResultItem__block_invoke;
  v13[3] = &unk_1E7BE3EF8;
  v13[4] = self;
  [v6 setReportAnIssueExtendedBlock:v13];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  [(VKCVisualSearchResultItemView *)self setCurrentRVItemID:uUIDString];
  [v6 setClientHints:uUIDString];
  delegate = [(VKCVisualSearchResultItemView *)self delegate];
  [delegate addMetadataToVSFeedbackItem:v6];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = getkDDRVInteractionDidFinishNotification_0();
  [defaultCenter addObserver:self selector:sel__didDismissVisualResultsPane_ name:v11 object:0];

  [(VKCVisualSearchResultItemView *)self setObservingInteractionDidFinish:1];
  [getDDRevealBridgeClass() performDefaultActionForRVItem:v6 view:self->_lookupButton location:0 fallbackMenuInteraction:MEMORY[0x1E695E0F8] context:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  delegate2 = [(VKCVisualSearchResultItemView *)self delegate];
  [delegate2 visualSearchItemViewDidActivateVSItem:self];
}

void __62__VKCVisualSearchResultItemView_showLookupUIPaneForResultItem__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v9 = [v5 delegate];
  v8 = [*(a1 + 32) userReportPayload];
  [v9 submitVisualSearchUserFeedbackForReportIdentifier:v7 userFeedbackPayload:v8 sfReportData:v6];
}

- (VKCVisualSearchResultItemViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)cachedDotSize
{
  width = self->_cachedDotSize.width;
  height = self->_cachedDotSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)currentImageRectForLayerContents
{
  x = self->_currentImageRectForLayerContents.origin.x;
  y = self->_currentImageRectForLayerContents.origin.y;
  width = self->_currentImageRectForLayerContents.size.width;
  height = self->_currentImageRectForLayerContents.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)tintedImageForButton
{
  *buf = 138412290;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_1B4335000, log, OS_LOG_TYPE_ERROR, "imageForButton returned nil for Result item: %@", buf, 0xCu);
}

void __58__VKCVisualSearchResultItemView__queryForProcessingResult__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1B4335000, a2, OS_LOG_TYPE_ERROR, "Server access was not permitted: %@", &v3, 0xCu);
}

void __58__VKCVisualSearchResultItemView__queryForProcessingResult__block_invoke_3_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a2 + 48);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_1B4335000, log, OS_LOG_TYPE_ERROR, "Could not process analysis result with error: %@, %@", &v5, 0x16u);
}

@end
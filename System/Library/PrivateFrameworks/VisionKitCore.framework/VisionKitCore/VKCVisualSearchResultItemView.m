@interface VKCVisualSearchResultItemView
- (BOOL)containsVisualSearchItemAtPoint:(CGPoint)a3;
- (CATransform3D)_pinEndTransform;
- (CGPoint)_offsetForPinBubbleFrameWithDirection:(int64_t)a3 pinBubbleBounds:(CGRect)a4;
- (CGPoint)pointForVisualSearchIcon;
- (CGRect)_pinButtonRect;
- (CGRect)_rectForViewSpace:(CGRect)a3;
- (CGRect)boundsFromVisualSearchResult;
- (CGRect)currentImageRectForLayerContents;
- (CGRect)rectForIndicatorDot;
- (CGSize)_pinSizeForViewScale;
- (CGSize)cachedDotSize;
- (NSString)description;
- (UIImage)imageForButton;
- (UIImage)tintedImageForButton;
- (VKCVisualSearchResultItemView)initWithVisualSearchResultItem:(id)a3;
- (VKCVisualSearchResultItemViewDelegate)delegate;
- (double)_screenZoomScale;
- (double)contentSizeScaleFactor;
- (id)_queryForProcessingResult;
- (id)_queryString;
- (id)_symbolNameForItem;
- (id)circlePathForPinBubbleWithDirection:(int64_t)a3 withRadius:(double)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)trianglePathForPinBubbleWithDirection:(int64_t)a3 withRadius:(double)a4;
- (int64_t)_pinArrowDirection;
- (int64_t)interfaceOrientation;
- (void)_animatePin:(BOOL)a3;
- (void)_didDismissVisualResultsPane:(id)a3;
- (void)_updateLayout;
- (void)animateToVisualResultsPane:(BOOL)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)beginAnimatingDotAfterDelay:(double)a3;
- (void)dealloc;
- (void)deviceOrientationDidChange:(id)a3;
- (void)didDismissVisualResultsPane;
- (void)didFinishAnimatingDots;
- (void)didTap:(id)a3;
- (void)hideDots;
- (void)layoutSubviews;
- (void)removePulsing;
- (void)setImageContentsInLayer:(id)a3 withMaterialLayer:(id)a4 withRect:(CGRect)a5;
- (void)setImageContentsInLayer:(id)a3 withRect:(CGRect)a4;
- (void)setInterfaceOrientation:(int64_t)a3;
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
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = getkDDRVInteractionDidFinishNotification_0();
    [v3 removeObserver:self name:v4 object:0];
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x1E69DDCB8] object:0];

  v6.receiver = self;
  v6.super_class = VKCVisualSearchResultItemView;
  [(VKCVisualSearchResultItemView *)&v6 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(VKCVisualSearchResultItemView *)self visualSearchResultItem];
  v6 = [v5 queryID];
  v7 = [(VKCVisualSearchResultItemView *)self visualSearchResultItem];
  v8 = [v7 analysis];
  v9 = [v3 stringWithFormat:@"<%@: %p> queryID: %llu analysisID: %d", v4, self, v6, objc_msgSend(v8, "analysisRequestID")];

  return v9;
}

- (VKCVisualSearchResultItemView)initWithVisualSearchResultItem:(id)a3
{
  v32[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v31.receiver = self;
  v31.super_class = VKCVisualSearchResultItemView;
  v6 = [(VKCVisualSearchResultItemView *)&v31 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_visualSearchResultItem, a3);
    v8 = objc_alloc_init(VKCLookupButton);
    lookupButton = v7->_lookupButton;
    v7->_lookupButton = v8;

    [(VKCVisualSearchResultItemView *)v7 lookupButtonSize];
    [(VKCLookupButton *)v7->_lookupButton setFrame:0.0, 0.0, v10, v10];
    [(VKCVisualSearchResultItemView *)v7 addSubview:v7->_lookupButton];
    v11 = [MEMORY[0x1E6979398] layer];
    iconInLookupButtonLayer = v7->_iconInLookupButtonLayer;
    v7->_iconInLookupButtonLayer = v11;

    v13 = [MEMORY[0x1E6979398] layer];
    pulsingLayer = v7->_pulsingLayer;
    v7->_pulsingLayer = v13;

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
    v27 = v5;
    v21 = v7;
    v28 = v21;
    objc_copyWeak(&v29, &location);
    dispatch_async(v20, block);

    v21->_interfaceOrientation = 0;
    v22 = [MEMORY[0x1E69DC938] currentDevice];
    [v22 beginGeneratingDeviceOrientationNotifications];

    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    v24 = [MEMORY[0x1E69DC938] currentDevice];
    [v23 addObserver:v21 selector:sel_deviceOrientationDidChange_ name:*MEMORY[0x1E69DDCB8] object:v24];

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
  v2 = [(VKCVisualSearchResultItemView *)self traitCollection];
  [v2 vk_contentSizeScaleFactor];
  v4 = v3;

  return fmax(v4, 1.0);
}

- (CGRect)boundsFromVisualSearchResult
{
  v3 = [(VKCVisualSearchResultItemView *)self visualSearchResultItem];
  [v3 normalizedBoundingBox];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(VKCVisualSearchResultItemView *)self delegate];
  [v12 contentsRect];
  v14 = v13;
  v15 = [(VKCVisualSearchResultItemView *)self superview];
  [v15 bounds];
  v17 = v14 * v16;
  v18 = [(VKCVisualSearchResultItemView *)self delegate];
  [v18 contentsRect];
  v20 = v19;
  v21 = [(VKCVisualSearchResultItemView *)self superview];
  [v21 bounds];
  v23 = v20 * v22;
  v24 = [(VKCVisualSearchResultItemView *)self superview];
  [v24 bounds];
  v26 = v25;
  v27 = [(VKCVisualSearchResultItemView *)self delegate];
  [v27 contentsRect];
  v29 = v26 * v28;
  v30 = [(VKCVisualSearchResultItemView *)self superview];
  [v30 bounds];
  v32 = v31;
  v33 = [(VKCVisualSearchResultItemView *)self delegate];
  [v33 contentsRect];
  v35 = v32 * v34;

  v36 = [(VKCVisualSearchResultItemView *)self superview];
  [v36 bounds];
  v38 = v9 * v37;
  v39 = [(VKCVisualSearchResultItemView *)self delegate];
  [v39 contentsRect];
  v41 = v38 * v40;

  v42 = [(VKCVisualSearchResultItemView *)self superview];
  [v42 bounds];
  v44 = v11 * v43;
  v45 = [(VKCVisualSearchResultItemView *)self delegate];
  [v45 contentsRect];
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
  v3 = [(VKCVisualSearchResultItemView *)self visualSearchResultItem];
  [v3 normalizedIconLocation];
  v5 = v4;
  v7 = v6;

  v8 = [(VKCVisualSearchResultItemView *)self superview];
  [v8 bounds];
  v10 = v5 * v9;
  v11 = [(VKCVisualSearchResultItemView *)self delegate];
  [v11 contentsRect];
  v13 = v10 * v12;
  v14 = [(VKCVisualSearchResultItemView *)self superview];
  [v14 bounds];
  v16 = v7 * v15;
  v17 = [(VKCVisualSearchResultItemView *)self delegate];
  [v17 contentsRect];
  v19 = v16 * v18;

  v20 = v13;
  v21 = v19;
  result.y = v21;
  result.x = v20;
  return result;
}

- (void)setInterfaceOrientation:(int64_t)a3
{
  interfaceOrientation = self->_interfaceOrientation;
  if (interfaceOrientation != a3)
  {
    if (interfaceOrientation)
    {
      [getDDRevealBridgeClass() underlyingViewDisappeared:self->_lookupButton];
    }

    if (a3)
    {
      self->_interfaceOrientation = a3;
    }
  }
}

- (int64_t)interfaceOrientation
{
  v2 = [(VKCVisualSearchResultItemView *)self window];
  v3 = [v2 windowScene];
  v4 = [v3 interfaceOrientation];

  return v4;
}

- (void)deviceOrientationDidChange:(id)a3
{
  v5 = [(VKCVisualSearchResultItemView *)self window];
  v4 = [v5 windowScene];
  -[VKCVisualSearchResultItemView setInterfaceOrientation:](self, "setInterfaceOrientation:", [v4 interfaceOrientation]);
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
    v26 = [(VKCLookupButton *)self->_lookupButton layer];
    v32 = v31;
    [v26 setTransform:&v32];

    v27 = [(VKCLookupButton *)self->_lookupButton layer];
    [v27 setBorderWidth:v25 + v25];

    v28 = [MEMORY[0x1E69DC888] whiteColor];
    v29 = [v28 CGColor];
    v30 = [(VKCLookupButton *)self->_lookupButton layer];
    [v30 setBorderColor:v29];

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
    v4 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)self->_lookupButton setVk_backgroundColor:v4];

    [(VKCVisualSearchResultItemView *)self rectForIndicatorDot];
    v6 = v5 * 0.5;
    v7 = [(VKCLookupButton *)self->_lookupButton layer];
    [v7 setCornerRadius:v6];

    v8 = [MEMORY[0x1E69DC888] blackColor];
    v9 = [v8 CGColor];
    v10 = [(VKCLookupButton *)self->_lookupButton layer];
    [v10 setShadowColor:v9];

    v11 = [(VKCLookupButton *)self->_lookupButton layer];
    LODWORD(v12) = 1053609165;
    [v11 setShadowOpacity:v12];

    v13 = [(VKCLookupButton *)self->_lookupButton layer];
    [v13 setShadowRadius:4.0];

    v14 = [(VKCLookupButton *)self->_lookupButton layer];
    [v14 setShadowOffset:{0.0, 5.0}];

    v15 = [(VKCLookupButton *)self->_lookupButton layer];
    [v15 setMasksToBounds:0];

    v16 = [(VKCLookupButton *)self->_lookupButton layer];
    [v16 setBorderWidth:0.0];

    CATransform3DMakeScale(&v33, 1.0, 1.0, 1.0);
    v17 = [(VKCLookupButton *)self->_lookupButton layer];
    v32 = v33;
    [v17 setTransform:&v32];

    v18 = [(CALayer *)self->_iconInLookupButtonLayer superlayer];

    if (!v18)
    {
      v20 = [(VKCLookupButton *)self->_lookupButton layer];
      [v20 addSublayer:self->_iconInLookupButtonLayer];
    }

    LODWORD(v19) = 1.0;
    [(CALayer *)self->_iconInLookupButtonLayer setOpacity:v19];
    iconInLookupButtonLayer = self->_iconInLookupButtonLayer;
    [(VKCLookupButton *)self->_lookupButton bounds];
    [(VKCVisualSearchResultItemView *)self setImageContentsInLayer:iconInLookupButtonLayer withRect:?];
  }

  [(VKCVisualSearchResultItemView *)self updatePulsingLayer];
}

- (CGRect)_rectForViewSpace:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(VKCVisualSearchResultItemView *)self window];
  v9 = [v8 screen];
  v10 = [v9 fixedCoordinateSpace];
  v11 = [(VKCVisualSearchResultItemView *)self coordinateSpace];
  [v10 convertRect:v11 toCoordinateSpace:{x, y, width, height}];
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
  v4 = [(VKCVisualSearchResultItemView *)self _symbolNameForItem];
  v5 = [v3 vk_symbolImageWithName:v4];

  if (!v5)
  {
    v6 = MEMORY[0x1E69DCAB8];
    v7 = [(VKCVisualSearchResultItemView *)self _defaultSymbolName];
    v5 = [v6 vk_symbolImageWithName:v7];
  }

  return v5;
}

- (UIImage)tintedImageForButton
{
  v13 = *MEMORY[0x1E69E9840];
  tintedImageForButton = self->_tintedImageForButton;
  if (!tintedImageForButton)
  {
    v4 = self;
    objc_sync_enter(v4);
    if (!self->_tintedImageForButton)
    {
      v5 = [(VKCVisualSearchResultItemView *)v4 imageForButton];
      if (!v5)
      {
        v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = [(VKCVisualSearchResultItemView *)v4 visualSearchResultItem];
          [(VKCVisualSearchResultItemView *)v7 tintedImageForButton];
        }

        [VKAssert handleFailedAssertWithCondition:"((image) != nil)" functionName:"[VKCVisualSearchResultItemView tintedImageForButton]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "image"];
      }

      v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
      [v5 size];
      v9 = [v5 vk_imageWithTint:v8 size:?];
      v10 = self->_tintedImageForButton;
      self->_tintedImageForButton = v9;
    }

    objc_sync_exit(v4);

    tintedImageForButton = self->_tintedImageForButton;
  }

  return tintedImageForButton;
}

- (id)_symbolNameForItem
{
  v2 = [(VKCVisualSearchResultItemView *)self visualSearchResultItem];
  v3 = [v2 glyphName];

  return v3;
}

- (void)removePulsing
{
  [(CALayer *)self->_pulsingLayer setOpacity:0.0];
  pulsingLayer = self->_pulsingLayer;

  [(CALayer *)pulsingLayer removeAllAnimations];
}

- (void)animateToVisualResultsPane:(BOOL)a3
{
  v3 = a3;
  v5 = @"animateOut";
  if (a3)
  {
    v5 = @"animateIn";
  }

  v6 = v5;
  if (self->_pinLayer)
  {
    [(VKCVisualSearchResultItemView *)self _animatePin:v3];
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
  if (v3)
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

  v21 = [(VKCLookupButton *)self->_lookupButton layer];
  v25[4] = v33;
  v25[5] = v34;
  v25[6] = v35;
  v25[7] = v36;
  v25[0] = v29;
  v25[1] = v30;
  v25[2] = v31;
  v25[3] = v32;
  [v21 setTransform:v25];

  v22 = [(VKCLookupButton *)self->_lookupButton layer];
  [v22 addAnimation:v7 forKey:@"buttonScaleAnimation"];

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

- (void)_animatePin:(BOOL)a3
{
  v3 = a3;
  v45[2] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform"];
  [v5 setDamping:20.0];
  [v5 setStiffness:380.0];
  [v5 setDuration:0.4936];
  v6 = MEMORY[0x1E696B098];
  v7 = MEMORY[0x1E69792E8];
  if (v3)
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
  v23 = [MEMORY[0x1E6979308] animation];
  v45[0] = v5;
  v45[1] = v22;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  [v23 setAnimations:v24];

  [v23 setDuration:0.4936];
  if (v3)
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
  [(CALayer *)self->_pinLayer addAnimation:v23 forKey:@"pinAnimation"];
}

- (CATransform3D)_pinEndTransform
{
  [(VKCVisualSearchResultItemView *)self _pinSizeForViewScale];
  v6 = v5;
  v8 = v7;
  memset(&v18, 0, sizeof(v18));
  CATransform3DMakeScale(&v18, 0.01, 0.01, 0.01);
  memset(&v17, 0, sizeof(v17));
  v9 = [(VKCVisualSearchResultItemView *)self _pinArrowDirection];
  if (v9 == 3)
  {
    v13 = -0.5;
LABEL_9:
    v12 = v6 * v13;
    v11 = 0.0;
    goto LABEL_10;
  }

  if (v9 == 1)
  {
    v10 = 0.5;
    goto LABEL_6;
  }

  if (v9)
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

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = [a3 valueForKey:{@"animationName", a4}];
  if ([v5 isEqualToString:@"animateOut"])
  {
    [(CALayer *)self->_pinLayer removeFromSuperlayer];
    pinLayer = self->_pinLayer;
    self->_pinLayer = 0;
  }

  else if ([v5 isEqualToString:@"animateIn"])
  {
    v7 = [(VKCVisualSearchResultItemView *)self delegate];
    v8 = [(VKCVisualSearchResultItemView *)self visualSearchResultItem];
    [v8 normalizedBoundingBox];
    [v7 visualSearchItemView:self didTapVisualSearchIndicatorWithNormalizedBoundingBox:?];

    [(VKCVisualSearchResultItemView *)self showLookupUIPaneForResultItem];
  }

  else if ([v5 isEqualToString:@"dotAnimateIn"])
  {
    v9 = [(VKCVisualSearchResultItemView *)self layer];
    LODWORD(v10) = 1.0;
    [v9 setOpacity:v10];

    CATransform3DMakeScale(&v13, 1.0, 1.0, 1.0);
    v11 = [(VKCVisualSearchResultItemView *)self layer];
    v12 = v13;
    [v11 setTransform:&v12];
  }
}

- (void)setImageContentsInLayer:(id)a3 withRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v40 = a3;
  VKMScaledRect(x, y, width, height, 0.5);
  v9 = VKMRectWithSize();
  v13 = VKMCenterRectOverRect(v9, v10, v11, v12, x, y, width, height);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (self->_iconInLookupButtonLayer != v40 || ([(VKCVisualSearchResultItemView *)self currentImageRectForLayerContents], v43.origin.x = v13, v43.origin.y = v15, v43.size.width = v17, v43.size.height = v19, !CGRectEqualToRect(v42, v43)))
  {
    [(VKCVisualSearchResultItemView *)self setCurrentImageRectForLayerContents:v13, v15, v17, v19];
    v20 = [(VKCVisualSearchResultItemView *)self tintedImageForButton];
    -[CALayer setContents:](v40, "setContents:", [v20 vk_cgImage]);
    [v20 size];
    v23 = VKMFitOrFillSizeInRect(0, v21, v22, v13, v15, v17, v19);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = [(VKCVisualSearchResultItemView *)self window];
    v31 = [v30 screen];
    [v31 scale];
    v33 = VKMAliasRoundedRectForScale(v23, v25, v27, v29, v32);
    v35 = v34;
    v37 = v36;
    v39 = v38;

    [(CALayer *)v40 setFrame:v33, v35, v37, v39];
  }
}

- (void)setImageContentsInLayer:(id)a3 withMaterialLayer:(id)a4 withRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = a3;
  [(VKCVisualSearchResultItemView *)self setImageContentsInLayer:v12 withRect:x, y, width, height];
  v14 = [v11 visualStylingProviderForCategory:*MEMORY[0x1E6997F20]];

  v13 = [v14 visualStylingForStyle:*MEMORY[0x1E6997F40]];
  [v12 mt_replaceAllVisualStylingWithStyling:v13];
}

- (void)showPinForTappedDot
{
  [(CALayer *)self->_pinLayer removeFromSuperlayer];
  pinLayer = self->_pinLayer;
  self->_pinLayer = 0;

  v4 = [MEMORY[0x1E6979398] layer];
  v5 = self->_pinLayer;
  self->_pinLayer = v4;

  LODWORD(v6) = 1.0;
  [(CALayer *)self->_pinLayer setOpacity:v6];
  v7 = [(VKCVisualSearchResultItemView *)self layer];
  [v7 addSublayer:self->_pinLayer];

  [(VKCVisualSearchResultItemView *)self _pinSizeForViewScale];
  v9 = v8;
  [(VKCVisualSearchResultItemView *)self _screenZoomScale];
  v11 = v9 + v10 * -6.0;
  v12 = [(VKCVisualSearchResultItemView *)self _pinArrowDirection];
  [(VKCVisualSearchResultItemView *)self updatePinLayerFrame];
  v25 = [MEMORY[0x1E69794A0] layer];
  [(CALayer *)self->_pinLayer bounds];
  [v25 setFrame:?];
  v13 = [(VKCVisualSearchResultItemView *)self trianglePathForPinBubbleWithDirection:v12 withRadius:v11];
  v14 = [(VKCVisualSearchResultItemView *)self circlePathForPinBubbleWithDirection:v12 withRadius:v11];
  [v13 vk_appendBezierPath:v14];

  [v25 setPath:{objc_msgSend(v13, "vk_CGPath")}];
  v15 = objc_alloc_init(MEMORY[0x1E6997F68]);
  [v15 setRecipe:*MEMORY[0x1E6997EC0]];
  [v15 setWeighting:1.0];
  [(CALayer *)self->_pinLayer bounds];
  [v15 setFrame:?];
  [v15 setMask:v25];
  [(CALayer *)self->_pinLayer addSublayer:v15];
  [(UIView *)self vk_viewPointRatioFromWindow];
  v17 = v16;
  v18 = [MEMORY[0x1E69DC888] blackColor];
  -[CALayer setShadowColor:](self->_pinLayer, "setShadowColor:", [v18 CGColor]);

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
  v24 = [MEMORY[0x1E6979398] layer];
  [(VKCVisualSearchResultItemView *)self setImageContentsInLayer:v24 withMaterialLayer:v15 withRect:x, y, width, height];
  [(CALayer *)self->_pinLayer addSublayer:v24];
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
  v3 = [(VKCVisualSearchResultItemView *)self visualSearchResultItem];
  v4 = [v3 domainInfo];
  v5 = [v4 domain];
  v6 = [v5 isEqual:@"com.apple.argos.domain_key.dogs"];

  if (v6)
  {
    return 0;
  }

  v8 = [(VKCVisualSearchResultItemView *)self visualSearchResultItem];
  v9 = [v8 domainInfo];
  v10 = [v9 domain];
  v11 = [v10 isEqual:@"com.apple.argos.domain_key.cats"];

  return v11 ^ 1u;
}

- (void)updatePinLayerFrame
{
  v3 = [(VKCVisualSearchResultItemView *)self _pinArrowDirection];
  [(VKCVisualSearchResultItemView *)self _pinSizeForViewScale];
  v5 = v4;
  v7 = v6;
  [(VKCVisualSearchResultItemView *)self _offsetForPinBubbleFrameWithDirection:v3 pinBubbleBounds:VKMRectWithSize()];
  v9 = v8;
  v11 = v10;
  [(VKCLookupButton *)self->_lookupButton frame];
  v16 = VKMCenterOfRect(v12, v13, v14, v15);
  v17 = VKMAddPoints(v9, v11, v16);
  v20 = VKMRectWithOriginAndSize(v18, v17, v19, v5, v7);
  pinLayer = self->_pinLayer;

  [(CALayer *)pinLayer setFrame:v20];
}

- (CGPoint)_offsetForPinBubbleFrameWithDirection:(int64_t)a3 pinBubbleBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  [(VKCVisualSearchResultItemView *)self _screenZoomScale:a4.origin.x];
  v11 = v10 * 3.0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      [(VKCLookupButton *)self->_lookupButton frame];
      v14 = -0.5;
      v8 = v16 * -0.5 - width - v11;
    }

    else
    {
      if (a3 != 3)
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

  if (a3)
  {
    if (a3 == 1)
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

- (id)circlePathForPinBubbleWithDirection:(int64_t)a3 withRadius:(double)a4
{
  [(CALayer *)self->_pinLayer bounds];
  v9 = VKMCenterOfRect(v5, v6, v7, v8);
  v11 = VKMRectWithCenterAndSize(v9, v10, a4);
  v12 = MEMORY[0x1E69DC728];

  return [v12 bezierPathWithOvalInRect:v11];
}

- (id)trianglePathForPinBubbleWithDirection:(int64_t)a3 withRadius:(double)a4
{
  v7 = a4 / 6.0;
  [(CALayer *)self->_pinLayer bounds];
  v9 = (v8 - a4) * 0.5 + 1.0;
  v10 = objc_alloc_init(MEMORY[0x1E69DC728]);
  if (a3 > 1)
  {
    if (a3 == 2)
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
      if (a3 != 3)
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

  else if (a3)
  {
    if (a3 != 1)
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

- (BOOL)containsVisualSearchItemAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(VKCVisualSearchResultItemView *)self _rectForViewSpace:VKMRectWithSize()];
  v7 = v6;
  v8 = [(VKCVisualSearchResultItemView *)self lookupButton];
  [v8 frame];
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  if (([(VKCVisualSearchResultItemView *)self isHidden]& 1) != 0 || ![(VKCVisualSearchResultItemView *)self containsVisualSearchItemAtPoint:x, y])
  {
    v7 = 0;
  }

  else
  {
    v7 = [(VKCVisualSearchResultItemView *)self lookupButton];
  }

  return v7;
}

- (void)didTap:(id)a3
{
  [a3 locationInView:self];
  v5 = v4;
  v7 = v6;
  v8 = [(VKCVisualSearchResultItemView *)self delegate];
  v9 = [v8 visualSearchItemView:self shouldBeginAtPoint:{v5, v7}];

  if (v9)
  {
    v10 = [(VKCVisualSearchResultItemView *)self visualSearchResultItem];
    [v10 setCurrentInvocationType:1];

    [(VKCVisualSearchResultItemView *)self showVisualResultsPane];
  }
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v4 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self->_lookupButton];
  v5 = [MEMORY[0x1E69DCDB8] effectWithPreview:v4];
  v6 = [MEMORY[0x1E69DCDD0] styleWithEffect:v5 shape:0];

  return v6;
}

- (void)beginAnimatingDotAfterDelay:(double)a3
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

  v13 = [MEMORY[0x1E6979308] animation];
  [v13 setDuration:0.4];
  v32[0] = v5;
  v32[1] = v6;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  [v13 setAnimations:v14];

  [v13 setBeginTime:CACurrentMediaTime() + a3];
  [v13 setDelegate:self];
  [v13 setValue:@"dotAnimateIn" forKey:@"animationName"];
  [v13 setFillMode:*MEMORY[0x1E69797E8]];
  [v13 setRemovedOnCompletion:0];
  v15 = [(VKCVisualSearchResultItemView *)self layer];
  [v15 addAnimation:v13 forKey:@"animateIn"];
}

- (void)didFinishAnimatingDots
{
  if ([(VKCVisualSearchResultItemView *)self shouldShowDots])
  {
    if (self->_automaticallyShowVisualSearchResults)
    {
      v3 = [(VKCVisualSearchResultItemView *)self delegate];
      [(VKCVisualSearchResultItemView *)self bounds];
      v8 = [v3 visualSearchItemView:self shouldBeginAtPoint:{VKMCenterOfRect(v4, v5, v6, v7)}];

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
  v3 = [(VKCVisualSearchResultItemView *)self layer];
  [v3 setOpacity:0.0];
}

- (void)showVisualResultsPane
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "Visual search activated: %@", &v6, 0xCu);
  }

  if (!self->_isShowingVisualResultsPane)
  {
    self->_status = 1;
    self->_isShowingVisualResultsPane = 1;
    [(VKCVisualSearchResultItemView *)self updateIndicatorDotForState];
    v4 = [(VKCVisualSearchResultItemView *)self traitCollection];
    v5 = [v4 vk_hasCompactWidth];

    if (v5)
    {
      [(VKCVisualSearchResultItemView *)self showPinForTappedDot];
      [(CALayer *)self->_pinLayer setOpacity:0.0];
    }

    [(VKCVisualSearchResultItemView *)self animateToVisualResultsPane:1];
  }
}

- (void)_didDismissVisualResultsPane:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 object];

  v14 = VKDynamicCast(v5, v6);

  v7 = objc_opt_class();
  v8 = [v14 clientHints];
  v9 = VKDynamicCast(v7, v8);

  if (v9)
  {
    v10 = [(VKCVisualSearchResultItemView *)self currentRVItemID];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      v13 = getkDDRVInteractionDidFinishNotification_0();
      [v12 removeObserver:self name:v13 object:0];

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
    v6 = self;
    _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "Visual search pane was dismissed: %@", &v5, 0xCu);
  }

  self->_isShowingVisualResultsPane = 0;
  self->_status = 0;
  [(VKCVisualSearchResultItemView *)self animateToVisualResultsPane:0];
  [(VKCVisualSearchResultItemView *)self updateIndicatorDotForState];
  [(VKCVisualSearchResultItemView *)self setNeedsLayout];
  v4 = [(VKCVisualSearchResultItemView *)self delegate];
  [v4 visualSearchItemViewDidDismissController:self];
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
  v5 = [(VKCVisualSearchResultItemView *)self _queryString];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__VKCVisualSearchResultItemView__queryForProcessingResult__block_invoke;
  v8[3] = &unk_1E7BE3ED0;
  objc_copyWeak(v9, &location);
  v8[4] = self;
  v9[1] = v3;
  v6 = [v4 initWithTitle:v5 clientIdentifier:@"com.apple.mediaanalysisd" userAgent:@"VisualIntelligence/1" queryID:v3 queryProvider:v8];

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
  v3 = [(VKCVisualSearchResultItemView *)self _queryForProcessingResult];
  v4 = objc_alloc(MEMORY[0x1E69C7518]);
  v5 = [(VKCVisualSearchResultItemView *)self _queryString];
  v6 = [v4 initWithSearchQuery:v3 rangeInContext:{0x7FFFFFFFFFFFFFFFLL, objc_msgSend(v5, "length")}];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__VKCVisualSearchResultItemView_showLookupUIPaneForResultItem__block_invoke;
  v13[3] = &unk_1E7BE3EF8;
  v13[4] = self;
  [v6 setReportAnIssueExtendedBlock:v13];
  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];

  [(VKCVisualSearchResultItemView *)self setCurrentRVItemID:v8];
  [v6 setClientHints:v8];
  v9 = [(VKCVisualSearchResultItemView *)self delegate];
  [v9 addMetadataToVSFeedbackItem:v6];

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = getkDDRVInteractionDidFinishNotification_0();
  [v10 addObserver:self selector:sel__didDismissVisualResultsPane_ name:v11 object:0];

  [(VKCVisualSearchResultItemView *)self setObservingInteractionDidFinish:1];
  [getDDRevealBridgeClass() performDefaultActionForRVItem:v6 view:self->_lookupButton location:0 fallbackMenuInteraction:MEMORY[0x1E695E0F8] context:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  v12 = [(VKCVisualSearchResultItemView *)self delegate];
  [v12 visualSearchItemViewDidActivateVSItem:self];
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
  *(buf + 4) = a1;
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
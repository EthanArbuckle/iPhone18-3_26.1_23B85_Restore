@interface PUTileViewController
- (BOOL)isPresentationActive;
- (BOOL)wantsVisibleRectChanges;
- (CGRect)visibleRect;
- (NSArray)gestureRecognizers;
- (NSArray)viewsForApplyingBorder;
- (NSArray)viewsForApplyingCornerRadius;
- (PUTileViewController)initWithReuseIdentifier:(id)identifier;
- (UIView)originalView;
- (UIView)view;
- (id)loadView;
- (id)presentationLayoutInfo;
- (void)_handleReadinessForced:(BOOL)forced;
- (void)_invalidateTintView;
- (void)_setEdgeAntialiasingEnabled:(BOOL)enabled;
- (void)_setReadyForDisplay:(BOOL)display;
- (void)_updateDynamicStateDebugging;
- (void)_updateTintView;
- (void)_updateVisibleRectView;
- (void)addToTilingView:(id)view;
- (void)applyLayoutInfo:(id)info;
- (void)becomeReusable;
- (void)dealloc;
- (void)didChangeVisibleRect;
- (void)notifyWhenReadyForDisplayWithTimeOut:(double)out completionHandler:(id)handler;
- (void)prepareForReuse;
- (void)removeAllAnimations;
- (void)setContentViewEnabled:(BOOL)enabled;
- (void)setIsOnPrimaryDisplay:(BOOL)display;
@end

@implementation PUTileViewController

- (void)_setEdgeAntialiasingEnabled:(BOOL)enabled
{
  if (self->__edgeAntialiasingEnabled != enabled)
  {
    self->__edgeAntialiasingEnabled = enabled;
    [(PUTileViewController *)self setEdgeAntialiasingEnabled:?];
  }
}

- (void)_handleReadinessForced:(BOOL)forced
{
  forcedCopy = forced;
  _onReadyToDisplayBlock = [(PUTileViewController *)self _onReadyToDisplayBlock];
  if (_onReadyToDisplayBlock && ([(PUTileViewController *)self isReadyForDisplay]|| forcedCopy))
  {
    [(PUTileViewController *)self _setOnReadyToDisplayBlock:0];
    _readinessTimer = [(PUTileViewController *)self _readinessTimer];
    [_readinessTimer invalidate];

    [(PUTileViewController *)self _setReadinessTimer:0];
    v7 = _onReadyToDisplayBlock;
    px_dispatch_on_main_queue();
  }
}

- (void)notifyWhenReadyForDisplayWithTimeOut:(double)out completionHandler:(id)handler
{
  handlerCopy = handler;
  [(PUTileViewController *)self _setOnReadyToDisplayBlock:handlerCopy];
  [(PUTileViewController *)self _handleReadinessForced:0];
  _onReadyToDisplayBlock = [(PUTileViewController *)self _onReadyToDisplayBlock];

  if (_onReadyToDisplayBlock)
  {
    objc_initWeak(&location, self);
    v8 = MEMORY[0x1E695DFF0];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __79__PUTileViewController_notifyWhenReadyForDisplayWithTimeOut_completionHandler___block_invoke;
    v13 = &unk_1E7B80638;
    objc_copyWeak(&v14, &location);
    v9 = [v8 pu_scheduledTimerWithTimeInterval:0 repeats:&v10 block:out];
    [(PUTileViewController *)self _setReadinessTimer:v9, v10, v11, v12, v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __79__PUTileViewController_notifyWhenReadyForDisplayWithTimeOut_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleReadinessForced:1];
}

- (void)_setReadyForDisplay:(BOOL)display
{
  if (self->_isReadyForDisplay != display)
  {
    self->_isReadyForDisplay = display;
    [(PUTileViewController *)self _handleReadinessForced:0];
  }
}

- (void)_updateVisibleRectView
{
  v3 = +[PUTilingViewSettings sharedInstance];
  if ([v3 showVisibleRects])
  {
    isViewLoaded = [(PUTileViewController *)self isViewLoaded];
  }

  else
  {
    isViewLoaded = 0;
  }

  _visibleRectView = [(PUTileViewController *)self _visibleRectView];
  if (isViewLoaded)
  {
    v16 = _visibleRectView;
    view = [(PUTileViewController *)self view];
    if (!v16)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v8 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:1.0 blue:0.0 alpha:0.100000001];
      [v7 setBackgroundColor:v8];

      layer = [v7 layer];
      greenColor = [MEMORY[0x1E69DC888] greenColor];
      [layer setBorderColor:{objc_msgSend(greenColor, "CGColor")}];

      [layer setBorderWidth:2.0];
      [v7 setOpaque:0];
      [view addSubview:v7];
      [(PUTileViewController *)self _setVisibleRectView:v7];
    }

    [(PUTileViewController *)self visibleRect];
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    IsEmpty = CGRectIsEmpty(v18);
    if (!IsEmpty)
    {
      [v16 setFrame:{x, y, width, height}];
    }

    [v16 setHidden:IsEmpty];
  }

  else
  {
    if (!_visibleRectView)
    {
      goto LABEL_13;
    }

    v16 = _visibleRectView;
    [_visibleRectView removeFromSuperview];
    [(PUTileViewController *)self _setVisibleRectView:0];
  }

  _visibleRectView = v16;
LABEL_13:
}

- (void)_invalidateTintView
{
  _tintView = [(PUTileViewController *)self _tintView];
  [_tintView removeFromSuperview];

  [(PUTileViewController *)self _setTintView:0];
}

- (void)_updateTintView
{
  v3 = +[PUTilingViewSettings sharedInstance];
  tintTiles = [v3 tintTiles];

  _tintView = [(PUTileViewController *)self _tintView];
  v6 = _tintView;
  if (!tintTiles)
  {
    v17 = _tintView;
    _tintView = [(PUTileViewController *)self _invalidateTintView];
    goto LABEL_6;
  }

  if (!_tintView)
  {
    v17 = 0;
    _tintView = [(PUTileViewController *)self isViewLoaded];
    v6 = 0;
    if (_tintView)
    {
      view = [(PUTileViewController *)self view];
      v8 = objc_alloc(MEMORY[0x1E69DD250]);
      [view bounds];
      v9 = [v8 initWithFrame:?];
      [v9 setAutoresizingMask:18];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:1];
      [view addSubview:v9];
      [(PUTileViewController *)self _setTintView:v9];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      *v11.i64 = v10 / 10.0;
      *v12.i64 = *v11.i64 - trunc(*v11.i64);
      v13.f64[0] = NAN;
      v13.f64[1] = NAN;
      v14 = [MEMORY[0x1E69DC888] colorWithHue:*vbslq_s8(vnegq_f64(v13) saturation:v12 brightness:v11).i64 alpha:{1.0, 1.0, 1.0}];
      v15 = [v14 colorWithAlphaComponent:0.5];
      [v9 setBackgroundColor:v15];

      [v9 setOpaque:0];
      layer = [v9 layer];
      [layer setBorderColor:{objc_msgSend(v14, "CGColor")}];
      [layer setBorderWidth:2.0];

LABEL_6:
      v6 = v17;
    }
  }

  MEMORY[0x1EEE66BB8](_tintView, v6);
}

- (void)_updateDynamicStateDebugging
{
  v3 = +[PUTilingViewSettings sharedInstance];
  showSnapshottableTiles = [v3 showSnapshottableTiles];

  if (showSnapshottableTiles)
  {
    view = [(PUTileViewController *)self view];
    layer = [view layer];

    redColor = [MEMORY[0x1E69DC888] redColor];
    [layer setBorderColor:{objc_msgSend(redColor, "CGColor")}];

    shouldAvoidInPlaceSnapshottedFadeOut = [(PUTileController *)self shouldAvoidInPlaceSnapshottedFadeOut];
    v9 = 0.0;
    if (shouldAvoidInPlaceSnapshottedFadeOut)
    {
      v9 = 10.0;
    }

    [layer setBorderWidth:v9];
    objc_initWeak(&location, self);
    v10 = dispatch_time(0, 50000000);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__PUTileViewController__updateDynamicStateDebugging__block_invoke;
    v11[3] = &unk_1E7B80638;
    objc_copyWeak(&v12, &location);
    dispatch_after(v10, MEMORY[0x1E69E96A0], v11);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __52__PUTileViewController__updateDynamicStateDebugging__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDynamicStateDebugging];
}

- (void)didChangeVisibleRect
{
  v3.receiver = self;
  v3.super_class = PUTileViewController;
  [(PUTileController *)&v3 didChangeVisibleRect];
  [(PUTileViewController *)self _updateVisibleRectView];
}

- (BOOL)wantsVisibleRectChanges
{
  v9.receiver = self;
  v9.super_class = PUTileViewController;
  wantsVisibleRectChanges = [(PUTileController *)&v9 wantsVisibleRectChanges];
  v4 = +[PUTilingViewSettings sharedInstance];
  if ([v4 showVisibleRects])
  {
    layoutInfo = [(PUTileController *)self layoutInfo];
    tileKind = [layoutInfo tileKind];
    v7 = [tileKind isEqualToString:@"PUTileKindItemContent"];

    wantsVisibleRectChanges |= v7;
  }

  return wantsVisibleRectChanges & 1;
}

- (CGRect)visibleRect
{
  if ([(PUTileViewController *)self isViewLoaded])
  {
    tilingView = [(PUTileController *)self tilingView];
    [tilingView bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    view = [(PUTileViewController *)self view];
    [view convertRect:tilingView fromView:{v5, v7, v9, v11}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [view bounds];
    v36.origin.x = v21;
    v36.origin.y = v22;
    v36.size.width = v23;
    v36.size.height = v24;
    v33.origin.x = v14;
    v33.origin.y = v16;
    v33.size.width = v18;
    v33.size.height = v20;
    v34 = CGRectIntersection(v33, v36);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
  }

  else
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
  }

  v29 = x;
  v30 = y;
  v31 = width;
  v32 = height;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)removeAllAnimations
{
  view = [(PUTileViewController *)self view];
  [view pu_removeAllGeometryAnimationsRecursively:0];
  loadedView = [(PUTileViewController *)self loadedView];
  if (view != loadedView)
  {
    [loadedView pu_removeAllGeometryAnimationsRecursively:0];
  }
}

- (NSArray)viewsForApplyingCornerRadius
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([(PUTileViewController *)self isViewLoaded])
  {
    view = [(PUTileViewController *)self view];
    v6[0] = view;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)viewsForApplyingBorder
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([(PUTileViewController *)self isViewLoaded])
  {
    view = [(PUTileViewController *)self view];
    v6[0] = view;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)applyLayoutInfo:(id)info
{
  v151 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (!infoCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTileViewController.m" lineNumber:266 description:{@"Invalid parameter not satisfying: %@", @"layoutInfo != nil"}];
  }

  tilingView = [(PUTileController *)self tilingView];
  if (!tilingView)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUTileViewController.m" lineNumber:269 description:{@"Invalid parameter not satisfying: %@", @"tilingView != nil"}];
  }

  [infoCopy center];
  v8 = v7;
  v10 = v9;
  coordinateSystem = [infoCopy coordinateSystem];
  contentCoordinateSystem = [tilingView contentCoordinateSystem];
  v13 = PUConvertPointFromCoordinateSystemToCoordinateSystem(coordinateSystem, contentCoordinateSystem, v8, v10);
  v15 = v14;

  view = [(PUTileViewController *)self view];
  [view center];
  selfCopy = self;
  v117 = view;
  if (v18 != v13 || v17 != v15)
  {
    if (!CGFloatIsValid() || (CGFloatIsValid() & 1) == 0)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v152.x = v13;
      v152.y = v15;
      v102 = NSStringFromCGPoint(v152);
      [infoCopy center];
      v103 = NSStringFromCGPoint(v153);
      coordinateSystem2 = [infoCopy coordinateSystem];
      [coordinateSystem2 coordinateSystemOrigin];
      v105 = NSStringFromCGPoint(v154);
      contentCoordinateSystem2 = [tilingView contentCoordinateSystem];
      [contentCoordinateSystem2 coordinateSystemOrigin];
      v107 = NSStringFromCGPoint(v155);
      [currentHandler3 handleFailureInMethod:a2 object:selfCopy file:@"PUTileViewController.m" lineNumber:274 description:{@"invalid converted center: %@, from %@ + coordinate origins: %@ to %@", v102, v103, v105, v107}];

      self = selfCopy;
      view = v117;
    }

    [view setCenter:{v13, v15}];
  }

  v114 = tilingView;
  [infoCopy alpha];
  [view setAlpha:?];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__PUTileViewController_applyLayoutInfo___block_invoke;
  aBlock[3] = &unk_1E7B7E928;
  v19 = infoCopy;
  v146 = v19;
  v20 = _Block_copy(aBlock);
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  viewsForApplyingCornerRadius = [(PUTileViewController *)self viewsForApplyingCornerRadius];
  v22 = [viewsForApplyingCornerRadius countByEnumeratingWithState:&v141 objects:v150 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v142;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v142 != v24)
        {
          objc_enumerationMutation(viewsForApplyingCornerRadius);
        }

        v20[2](v20, *(*(&v141 + 1) + 8 * i));
      }

      v23 = [viewsForApplyingCornerRadius countByEnumeratingWithState:&v141 objects:v150 count:16];
    }

    while (v23);
  }

  if ([(PUTileViewController *)self isContentViewEnabled])
  {
    contentView = [(PUTileViewController *)self contentView];
    (v20)[2](v20, contentView);
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  viewsForApplyingBorder = [(PUTileViewController *)self viewsForApplyingBorder];
  v28 = [viewsForApplyingBorder countByEnumeratingWithState:&v137 objects:v149 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v138;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v138 != v30)
        {
          objc_enumerationMutation(viewsForApplyingBorder);
        }

        layer = [*(*(&v137 + 1) + 8 * j) layer];
        [v19 borderWidth];
        [layer setBorderWidth:?];
        borderColor = [v19 borderColor];
        [layer setBorderColor:{objc_msgSend(borderColor, "CGColor")}];
      }

      v29 = [viewsForApplyingBorder countByEnumeratingWithState:&v137 objects:v149 count:16];
    }

    while (v29);
  }

  v35 = *MEMORY[0x1E695EFF8];
  v34 = *(MEMORY[0x1E695EFF8] + 8);
  v36 = selfCopy;
  v108 = v34;
  v109 = *MEMORY[0x1E695EFF8];
  if ([(PUTileViewController *)selfCopy isContentViewEnabled])
  {
    [v19 parallaxOffset];
    v35 = -v37;
    v34 = -v38;
  }

  [v19 size];
  v39 = v117;
  [v117 setBounds:{v35, v34, v40, v41}];
  v42 = 0uLL;
  v135 = 0u;
  v136 = 0u;
  v134 = 0u;
  if (infoCopy)
  {
    [v19 transform];
    v42 = 0uLL;
  }

  *&v133.m41 = v42;
  *&v133.m43 = v42;
  *&v133.m31 = v42;
  *&v133.m33 = v42;
  *&v133.m21 = v42;
  *&v133.m23 = v42;
  *&v133.m11 = v42;
  *&v133.m13 = v42;
  *&m.m11 = v134;
  *&m.m13 = v135;
  *&m.m21 = v136;
  CATransform3DMakeAffineTransform(&v133, &m);
  [v19 zPosition];
  v131 = v133;
  v43 = 0.0;
  CATransform3DTranslate(&m, &v131, 0.0, 0.0, v44);
  v133 = m;
  layer2 = [v117 layer];
  m = v133;
  [layer2 setTransform:&m];

  v46 = *(&v134 + 1);
  if (*(&v134 + 1) != 0.0)
  {
    v47 = +[PUTilingViewSettings sharedInstance];
    allowsEdgeAntialiasing = [v47 allowsEdgeAntialiasing];

    if (allowsEdgeAntialiasing)
    {
      [(PUTileViewController *)selfCopy _setEdgeAntialiasingEnabled:1];
    }
  }

  [v19 cropInsets];
  v112 = v50;
  v113 = v49;
  v110 = v52;
  v111 = v51;
  [v19 size];
  if (v53 > 0.0)
  {
    [v114 bounds];
    v55 = v54;
    [v19 size];
    v43 = v55 / v56;
  }

  [v19 size];
  v58 = v57;
  [v19 normalizedLegibilityInsets];
  v60 = v58 * v59;
  [v19 size];
  v62 = v61;
  [v19 normalizedLegibilityInsets];
  v64 = v63;
  topLegibilityView = [(PUTileViewController *)selfCopy topLegibilityView];
  bottomLegibilityView = [(PUTileViewController *)selfCopy bottomLegibilityView];
  [(PUTileViewController *)selfCopy visibleRect];
  x = v156.origin.x;
  y = v156.origin.y;
  width = v156.size.width;
  height = v156.size.height;
  if (CGRectIsNull(v156))
  {
    [v19 size];
    width = v71;
    [v19 size];
    height = v72;
    y = 0.0;
    x = 0.0;
  }

  v73 = v43 * v60;
  v157.origin.x = x;
  v157.origin.y = y;
  v157.size.width = width;
  v157.size.height = height;
  MaxY = CGRectGetMaxY(v157);
  if (!topLegibilityView && v73 > 0.0)
  {
    topLegibilityView = [objc_alloc(MEMORY[0x1E69C35B8]) initWithFrame:{x, y, width, v73}];
    v75 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.4];
    v148[0] = v75;
    v76 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
    v148[1] = v76;
    v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:2];
    [topLegibilityView setColors:v77];

    v36 = selfCopy;
    v39 = v117;
    [topLegibilityView setLocations:&unk_1F2B7D820];
    [topLegibilityView setStartPoint:{v109, v108}];
    [topLegibilityView setEndPoint:{0.0, 1.0}];
    [topLegibilityView setUserInteractionEnabled:0];
    [v117 addSubview:topLegibilityView];
    [(PUTileViewController *)selfCopy setTopLegibilityView:topLegibilityView];
  }

  v78 = v62 * v64;
  if (topLegibilityView)
  {
    [v39 bringSubviewToFront:topLegibilityView];
    v79 = MEMORY[0x1E69DD250];
    v125[0] = MEMORY[0x1E69E9820];
    v125[1] = 3221225472;
    v125[2] = __40__PUTileViewController_applyLayoutInfo___block_invoke_52;
    v125[3] = &unk_1E7B7FF20;
    v80 = topLegibilityView;
    v126 = v80;
    v127 = x;
    v128 = y;
    v129 = width;
    v130 = v73;
    v81 = v79;
    v39 = v117;
    [v81 performWithoutAnimation:v125];
    v82 = 1.0;
    if (v73 == 0.0)
    {
      v82 = 0.0;
    }

    [v80 setAlpha:v82];
  }

  v83 = v43 * v78;
  if (!bottomLegibilityView && v83 > 0.0)
  {
    bottomLegibilityView = objc_alloc_init(MEMORY[0x1E69C35B8]);
    v84 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.4];
    v147[0] = v84;
    v85 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
    v147[1] = v85;
    v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:v147 count:2];
    [bottomLegibilityView setColors:v86];

    v36 = selfCopy;
    v39 = v117;
    [bottomLegibilityView setLocations:&unk_1F2B7D838];
    [bottomLegibilityView setStartPoint:{0.0, 1.0}];
    [bottomLegibilityView setEndPoint:{v109, v108}];
    [bottomLegibilityView setUserInteractionEnabled:0];
    [v117 addSubview:bottomLegibilityView];
    [(PUTileViewController *)selfCopy setBottomLegibilityView:bottomLegibilityView];
  }

  if (bottomLegibilityView)
  {
    [v39 bringSubviewToFront:topLegibilityView];
    v87 = MEMORY[0x1E69DD250];
    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = __40__PUTileViewController_applyLayoutInfo___block_invoke_2;
    v119[3] = &unk_1E7B7FF20;
    v88 = bottomLegibilityView;
    v120 = v88;
    v121 = x;
    v122 = MaxY - v83;
    v123 = width;
    v124 = v43 * v78;
    v89 = v87;
    v39 = v117;
    [v89 performWithoutAnimation:v119];
    v90 = 1.0;
    if (v83 == 0.0)
    {
      v90 = 0.0;
    }

    [v88 setAlpha:v90];
  }

  _maskView = [(PUTileViewController *)v36 _maskView];
  if (!_maskView)
  {
    v92.f64[0] = v113;
    v93.f64[0] = v112;
    v92.f64[1] = v111;
    v93.f64[1] = v110;
    if ((~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v92, *MEMORY[0x1E69DDCE0]), vceqq_f64(v93, *(MEMORY[0x1E69DDCE0] + 16))), xmmword_1B3D0D0C0)) & 0xF) != 0)
    {
      v94 = objc_alloc(MEMORY[0x1E69DD250]);
      [v39 bounds];
      _maskView = [v94 initWithFrame:?];
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [_maskView setBackgroundColor:whiteColor];

      [_maskView setOpaque:1];
      [v39 setMaskView:_maskView];
      [(PUTileViewController *)v36 _setMaskView:_maskView];
    }
  }

  if (_maskView)
  {
    [v39 bounds];
    [_maskView setFrame:{v111 + v96, v113 + v97, v98 - (v111 + v110), v99 - (v113 + v112)}];
  }

  v118.receiver = v36;
  v118.super_class = PUTileViewController;
  [(PUTileController *)&v118 applyLayoutInfo:v19];
}

void __40__PUTileViewController_applyLayoutInfo___block_invoke(uint64_t a1, void *a2)
{
  v8 = [a2 layer];
  [*(a1 + 32) cornerRadius];
  v4 = v3;
  v5 = [*(a1 + 32) cornerCurve];
  v6 = [*(a1 + 32) cornerMask];
  [v8 setCornerCurve:v5];
  if (v6 && [v8 maskedCorners] != v6)
  {
    [v8 setMaskedCorners:v6];
  }

  [v8 cornerRadius];
  if (v4 != v7)
  {
    [v8 setCornerRadius:v4];
  }
}

- (BOOL)isPresentationActive
{
  view = [(PUTileViewController *)self view];
  layer = [view layer];
  presentationLayer = [layer presentationLayer];

  return presentationLayer != 0;
}

- (id)presentationLayoutInfo
{
  v37.receiver = self;
  v37.super_class = PUTileViewController;
  presentationLayoutInfo = [(PUTileController *)&v37 presentationLayoutInfo];
  if (!presentationLayoutInfo)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTileViewController.m" lineNumber:233 description:@"missing layout info"];
  }

  view = [(PUTileViewController *)self view];
  if (!view)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUTileViewController.m" lineNumber:236 description:@"missing view"];
  }

  layer = [view layer];
  presentationLayer = [layer presentationLayer];
  v8 = presentationLayer;
  if (!presentationLayer || [presentationLayer isHidden])
  {
    v9 = layer;

    v8 = v9;
  }

  [v8 position];
  v11 = v10;
  v13 = v12;
  [v8 bounds];
  v15 = v14;
  v17 = v16;
  [v8 opacity];
  v19 = v18;
  v20 = 0uLL;
  memset(&v36, 0, sizeof(v36));
  if (v8)
  {
    [v8 transform];
    v20 = 0uLL;
  }

  *&v35.c = v20;
  *&v35.tx = v20;
  *&v35.a = v20;
  v34 = v36;
  CATransform3DGetAffineTransform(&v35, &v34);
  m43 = v36.m43;
  tilingView = [(PUTileController *)self tilingView];
  if (!tilingView)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUTileViewController.m" lineNumber:252 description:@"missing tiling view"];
  }

  fixedCoordinateSystem = [tilingView fixedCoordinateSystem];
  contentCoordinateSystem = [tilingView contentCoordinateSystem];
  v25 = PUConvertPointFromCoordinateSystemToCoordinateSystem(contentCoordinateSystem, fixedCoordinateSystem, v11, v13);
  v27 = v26;

  layoutInfo = [(PUTileController *)self layoutInfo];
  *&v34.m11 = *&v35.a;
  *&v34.m13 = *&v35.c;
  *&v34.m21 = *&v35.tx;
  v29 = [layoutInfo layoutInfoWithCenter:&v34 size:fixedCoordinateSystem alpha:v25 transform:v27 zPosition:v15 coordinateSystem:{v17, v19, m43}];

  return v29;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PUTileViewController;
  [(PUTileController *)&v4 prepareForReuse];
  view = [(PUTileViewController *)self view];
  [view setHidden:0];

  [(PUTileViewController *)self _updateTintView];
  [(PUTileViewController *)self _handleReadinessForced:1];
}

- (void)becomeReusable
{
  v4.receiver = self;
  v4.super_class = PUTileViewController;
  [(PUTileController *)&v4 becomeReusable];
  [(PUTileViewController *)self setIsOnPrimaryDisplay:1];
  view = [(PUTileViewController *)self view];
  [view setHidden:1];

  [(PUTileViewController *)self _invalidateTintView];
  [(PUTileViewController *)self _setEdgeAntialiasingEnabled:0];
  [(PUTileController *)self setShouldPreserveCurrentContent:0];
}

- (NSArray)gestureRecognizers
{
  if (![(PUTileViewController *)self isViewLoaded])
  {
    loadView = [(PUTileViewController *)self loadView];
  }

  gestureRecognizers = self->_gestureRecognizers;

  return gestureRecognizers;
}

- (void)setIsOnPrimaryDisplay:(BOOL)display
{
  if (self->_isOnPrimaryDisplay != display)
  {
    self->_isOnPrimaryDisplay = display;
    [(PUTileViewController *)self didChangeIsOnPrimaryDisplay];
  }
}

- (UIView)originalView
{
  v18 = *MEMORY[0x1E69E9840];
  view = [(PUTileViewController *)self view];
  if ([(PUTileViewController *)self isContentViewEnabled])
  {
    subviews = [view subviews];
    [subviews count];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = subviews;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v11 = v10;

            view = v11;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  return view;
}

- (void)setContentViewEnabled:(BOOL)enabled
{
  if (self->_contentViewEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_contentViewEnabled = enabled;
    if ([(PUTileViewController *)self isViewLoaded])
    {
      view = [(PUTileViewController *)self view];
      view2 = [(PUTileViewController *)self view];
      isHidden = [view2 isHidden];

      if (enabledCopy)
      {
        superview = [view superview];
        v9 = objc_alloc(MEMORY[0x1E69DD250]);
        [view frame];
        v10 = [v9 initWithFrame:?];
        [v10 setClipsToBounds:1];
        [view removeFromSuperview];
        [v10 bounds];
        [view setFrame:?];
        [view setAutoresizingMask:18];
        [view setHidden:0];
        [v10 addSubview:view];
        [superview addSubview:v10];
        [(PUTileViewController *)self _setView:v10];
        [(PUTileViewController *)self _setContentView:v10];
      }

      else
      {
        subviews = [view subviews];
        v12 = [subviews count];

        if (v12 != 1)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PUTileViewController.m" lineNumber:144 description:@"Only able to disable contentView if there is a single child view available to promote."];
        }

        contentView = [(PUTileViewController *)self contentView];

        v14 = view;
        if (view != contentView)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUTileViewController.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"view == [self contentView]"}];

          v14 = view;
        }

        subviews2 = [v14 subviews];
        superview = [subviews2 lastObject];

        [superview removeFromSuperview];
        [view frame];
        [superview setFrame:?];
        [view removeFromSuperview];
        tilingView = [(PUTileController *)self tilingView];
        [tilingView addSubview:superview];

        [(PUTileViewController *)self _setView:view];
        [(PUTileViewController *)self _setContentView:0];
      }

      view3 = [(PUTileViewController *)self view];
      [view3 setHidden:isHidden];
    }
  }
}

- (UIView)view
{
  view = self->_view;
  if (!view)
  {
    if ([(PUTileViewController *)self _isLoadingView])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUTileViewController.m" lineNumber:90 description:{@"Tried to access the view property while it is loading, which isn't supported."}];
    }

    [(PUTileViewController *)self _setLoadingView:1];
    loadView = [(PUTileViewController *)self loadView];
    [(PUTileViewController *)self _setLoadedView:loadView];
    if ([(PUTileViewController *)self isContentViewEnabled])
    {
      v6 = objc_alloc(MEMORY[0x1E69DD250]);
      [loadView frame];
      v7 = [v6 initWithFrame:?];
      [(UIView *)v7 setClipsToBounds:1];
      [(UIView *)v7 bounds];
      [loadView setFrame:?];
      [loadView setAutoresizingMask:18];
      [(UIView *)v7 addSubview:loadView];
    }

    else
    {
      v7 = loadView;
    }

    v8 = self->_view;
    self->_view = v7;

    [(PUTileViewController *)self _setLoadingView:0];
    [(PUTileViewController *)self _updateTintView];
    [(PUTileViewController *)self _updateVisibleRectView];
    [(PUTileViewController *)self viewDidLoad];

    view = self->_view;
  }

  return view;
}

- (id)loadView
{
  if (self->_view)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTileViewController.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"_view == nil"}];
  }

  v2 = objc_alloc(MEMORY[0x1E69DD250]);
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  return v3;
}

- (void)addToTilingView:(id)view
{
  v16 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  view = [(PUTileViewController *)self view];
  [viewCopy addSubview:view];
  gestureRecognizers = [(PUTileViewController *)self gestureRecognizers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [gestureRecognizers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(gestureRecognizers);
        }

        [viewCopy addGestureRecognizer:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [gestureRecognizers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)dealloc
{
  _onReadyToDisplayBlock = [(PUTileViewController *)self _onReadyToDisplayBlock];
  v4 = _onReadyToDisplayBlock;
  if (_onReadyToDisplayBlock)
  {
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __31__PUTileViewController_dealloc__block_invoke;
    v10 = &unk_1E7B80C88;
    v11 = _onReadyToDisplayBlock;
    px_dispatch_on_main_queue();
  }

  [(PUTileViewController *)self _setOnReadyToDisplayBlock:0];
  _readinessTimer = [(PUTileViewController *)self _readinessTimer];
  [_readinessTimer invalidate];

  [(PUTileViewController *)self _setReadinessTimer:0];
  v6.receiver = self;
  v6.super_class = PUTileViewController;
  [(PUTileViewController *)&v6 dealloc];
}

- (PUTileViewController)initWithReuseIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = PUTileViewController;
  result = [(PUTileController *)&v4 initWithReuseIdentifier:identifier];
  if (result)
  {
    result->_isOnPrimaryDisplay = 1;
  }

  return result;
}

@end
@interface TSDCanvasLayer
- (BOOL)centeredInScrollView;
- (CGPoint)contentOffsetForUnscaledContentCenter:(CGPoint)a3;
- (CGPoint)p_contentOffsetForUnscaledContentCenter:(CGPoint)a3 viewScale:(double)a4 contentInset:(UIEdgeInsets)a5;
- (CGPoint)unscaledContentCenter;
- (CGRect)p_boundsRect;
- (CGRect)p_fixedBoundsForScrollViewSize:(CGSize)a3 viewScale:(double)a4 contentInset:(UIEdgeInsets)a5;
- (CGSize)unscaledSize;
- (TSDCanvasLayer)init;
- (TSDCanvasLayer)initWithCoder:(id)a3;
- (TSDCanvasLayer)initWithLayer:(id)a3;
- (TSDCanvasView)canvasView;
- (UIEdgeInsets)contentInset;
- (void)_adjustContentInsetsForKeyboard;
- (void)adjustContentInsets;
- (void)animateToViewScale:(double)a3 contentCenter:(CGPoint)a4 contentInset:(UIEdgeInsets)a5 duration:(double)a6 animation:(id)a7 completionBlock:(id)a8;
- (void)dealloc;
- (void)fixFrameAndScrollView;
- (void)keyboardWillChangeFrame:(id)a3;
- (void)layoutIfNeededIgnoringDisabledLayout;
- (void)layoutSublayers;
- (void)p_commonInit;
- (void)p_fixFrameAndScrollView;
- (void)p_reenableDrawingAfterResumingFromBackground;
- (void)p_setEnclosingScrollViewZoomParameters;
- (void)p_setViewScale:(double)a3;
- (void)p_setViewScale:(double)a3 preservingScrollOffset:(BOOL)a4;
- (void)popLayoutDisabled;
- (void)setAllowsPinchZoom:(BOOL)a3;
- (void)setAvoidKeyboardWhenVerticallyCenteredInScrollView:(BOOL)a3;
- (void)setCenteredInScrollView:(BOOL)a3;
- (void)setController:(id)a3;
- (void)setHorizontallyCenteredInScrollView:(BOOL)a3;
- (void)setMaximumPinchViewScale:(double)a3;
- (void)setMinimumPinchViewScale:(double)a3;
- (void)setNeedsLayout;
- (void)setNeedsLayoutForTilingLayers;
- (void)setScrollViewFrameMaintainingApparentScrollPosition:(CGRect)a3 animated:(BOOL)a4;
- (void)setUnscaledSize:(CGSize)a3;
- (void)setUnscaledSizeOnLayer:(CGSize)a3;
- (void)setVerticallyCenteredInScrollView:(BOOL)a3;
- (void)setViewScale:(double)a3 andScrollViewFrame:(CGRect)a4 maintainPosition:(BOOL)a5 animated:(BOOL)a6;
- (void)teardown;
@end

@implementation TSDCanvasLayer

- (void)p_commonInit
{
  self->mViewScale = 1.0;
  self->mMaximumPinchViewScale = 4.0;
  self->mMinimumPinchViewScale = 0.25;
  self->mAllowsPinchZoom = 0;
  self->mHorizontallyCenteredInScrollView = 0;
  self->mVerticallyCenteredInScrollView = 0;
  self->mAvoidKeyboardWhenVerticallyCenteredInScrollView = 0;
  self->mContentInset = *TSDEdgeInsetsZero;
  p_mUnscaledSize = &self->mUnscaledSize;
  [(TSDCanvasLayer *)self bounds];
  p_mUnscaledSize->width = v4;
  p_mUnscaledSize->height = v5;
  self->mShowsScaleFeedback = 1;
  [(TSDCanvasLayer *)self setAllowsEdgeAntialiasing:1];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v6 = +[TSKKeyboardMonitor sharedKeyboardMonitor];

  [v6 addKeyboardObserver:self];
}

- (TSDCanvasLayer)init
{
  v5.receiver = self;
  v5.super_class = TSDCanvasLayer;
  v2 = [(TSDCanvasLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TSDCanvasLayer *)v2 p_commonInit];
  }

  return v3;
}

- (TSDCanvasLayer)initWithLayer:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSDCanvasLayer;
  v3 = [(TSDCanvasLayer *)&v6 initWithLayer:a3];
  v4 = v3;
  if (v3)
  {
    [(TSDCanvasLayer *)v3 p_commonInit];
    [(TSDCanvasLayer *)v4 setCreatedAsCopy:1];
  }

  return v4;
}

- (TSDCanvasLayer)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSDCanvasLayer;
  v3 = [(TSDCanvasLayer *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(TSDCanvasLayer *)v3 p_commonInit];
  }

  return v4;
}

- (void)dealloc
{
  [+[TSKKeyboardMonitor sharedKeyboardMonitor](TSKKeyboardMonitor "sharedKeyboardMonitor")];
  if (![(TSDCanvasLayer *)self torndown])
  {
    [(TSDCanvasLayer *)self teardown];
  }

  v3.receiver = self;
  v3.super_class = TSDCanvasLayer;
  [(TSDCanvasLayer *)&v3 dealloc];
}

- (void)setController:(id)a3
{
  mController = self->mController;
  if (a3 && mController)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasLayer setController:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasLayer.m"), 220, @"shouldn't try to set canvasLayer's controller more than once"}];
    mController = self->mController;
  }

  if (!a3 || !mController)
  {
    self->mController = a3;
    [objc_msgSend(a3 "canvas")];
    mViewScale = self->mViewScale;
    v9 = [(TSDInteractiveCanvasController *)self->mController canvas];

    [(TSDCanvas *)v9 setViewScale:mViewScale];
  }
}

- (void)teardown
{
  [(TSDCanvasLayer *)self setTorndown:1];
  self->mController = 0;
  [(CALayer *)self p_clearAllLayerDelegates];
  self->mViewScale = 1.0;
  v3 = [MEMORY[0x277CCAB98] defaultCenter];

  [v3 removeObserver:self];
}

- (void)setUnscaledSize:(CGSize)a3
{
  if (a3.width > 0.0 && a3.height > 0.0 && (a3.width != self->mUnscaledSize.width || a3.height != self->mUnscaledSize.height))
  {
    self->mUnscaledSize = a3;
    [(TSDCanvas *)[(TSDInteractiveCanvasController *)self->mController canvas] setUnscaledSize:a3.width, a3.height];
    [(TSDCanvasLayer *)self fixFrameAndScrollView];
    mController = self->mController;

    [(TSDInteractiveCanvasController *)mController layoutInvalidated];
  }
}

- (BOOL)centeredInScrollView
{
  v3 = [(TSDCanvasLayer *)self horizontallyCenteredInScrollView];
  if (v3)
  {

    LOBYTE(v3) = [(TSDCanvasLayer *)self verticallyCenteredInScrollView];
  }

  return v3;
}

- (void)setUnscaledSizeOnLayer:(CGSize)a3
{
  if (a3.width > 0.0 && a3.height > 0.0 && (a3.width != self->mUnscaledSize.width || a3.height != self->mUnscaledSize.height))
  {
    self->mUnscaledSize = a3;
    [(TSDCanvas *)[(TSDInteractiveCanvasController *)self->mController canvas] setUnscaledSize:a3.width, a3.height];
    [(TSDCanvasLayer *)self p_boundsRect];
    [(TSDCanvasLayer *)self setBounds:?];
    v5 = TSDRectWithSize();
    v9 = TSDCenterOfRect(v5, v6, v7, v8);

    [(TSDCanvasLayer *)self setPosition:v9];
  }
}

- (void)setCenteredInScrollView:(BOOL)a3
{
  if (self->mHorizontallyCenteredInScrollView != a3)
  {
    self->mHorizontallyCenteredInScrollView = a3;
    p_mVerticallyCenteredInScrollView = &self->mVerticallyCenteredInScrollView;
    if (self->mVerticallyCenteredInScrollView == a3)
    {
LABEL_6:
      [(TSDCanvasLayer *)self fixFrameAndScrollView];
      return;
    }

LABEL_5:
    *p_mVerticallyCenteredInScrollView = a3;
    goto LABEL_6;
  }

  p_mVerticallyCenteredInScrollView = &self->mVerticallyCenteredInScrollView;
  if (self->mVerticallyCenteredInScrollView != a3)
  {
    goto LABEL_5;
  }
}

- (void)setHorizontallyCenteredInScrollView:(BOOL)a3
{
  if (self->mHorizontallyCenteredInScrollView != a3)
  {
    self->mHorizontallyCenteredInScrollView = a3;
    [(TSDCanvasLayer *)self fixFrameAndScrollView];
  }
}

- (void)setVerticallyCenteredInScrollView:(BOOL)a3
{
  if (self->mVerticallyCenteredInScrollView != a3)
  {
    self->mVerticallyCenteredInScrollView = a3;
    [(TSDCanvasLayer *)self fixFrameAndScrollView];
  }
}

- (void)setAvoidKeyboardWhenVerticallyCenteredInScrollView:(BOOL)a3
{
  if (self->mAvoidKeyboardWhenVerticallyCenteredInScrollView != a3)
  {
    self->mAvoidKeyboardWhenVerticallyCenteredInScrollView = a3;
    [(TSDCanvasLayer *)self fixFrameAndScrollView];
  }
}

- (void)fixFrameAndScrollView
{
  v2 = self->mUnscaledSize.width == *MEMORY[0x277CBF3A8] && self->mUnscaledSize.height == *(MEMORY[0x277CBF3A8] + 8);
  if (!v2 && !self->mViewScaleAnimationCount)
  {
    if (self->mController)
    {
      [(TSDCanvasLayer *)self p_fixFrameAndScrollView];
    }
  }
}

- (void)setNeedsLayout
{
  if (!-[TSDInteractiveCanvasController currentlyWaitingOnThreadedLayoutAndRender](self->mController, "currentlyWaitingOnThreadedLayoutAndRender") || ([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v3 = [(TSDCanvasLayer *)self needsLayout];
    v4.receiver = self;
    v4.super_class = TSDCanvasLayer;
    [(TSDCanvasLayer *)&v4 setNeedsLayout];
    if ((v3 & 1) == 0)
    {
      [(TSDCanvasLayer *)self setNeedsLayoutForTilingLayers];
    }
  }
}

- (void)setNeedsLayoutForTilingLayers
{
  v3 = [(TSDInteractiveCanvasController *)self->mController i_topLevelLayersForTiling];

  [v3 makeObjectsPerformSelector:a2];
}

- (void)layoutIfNeededIgnoringDisabledLayout
{
  mLayoutDisabledDepth = self->mLayoutDisabledDepth;
  self->mLayoutDisabledDepth = 0;
  [(TSDCanvasLayer *)self layoutIfNeeded];
  self->mLayoutDisabledDepth = mLayoutDisabledDepth;
}

- (void)layoutSublayers
{
  if ([+[TSKApplicationDelegate sharedDelegate](TSKApplicationDelegate "sharedDelegate")])
  {
    [(TSDInteractiveCanvasController *)self->mController setShouldSuppressRendering:1];
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_p_reenableDrawingAfterResumingFromBackground object:0];

    [(TSDCanvasLayer *)self performSelector:sel_p_reenableDrawingAfterResumingFromBackground withObject:0 afterDelay:0.0];
  }

  else if (![(TSDCanvasLayer *)self isLayoutDisabled])
  {
    mController = self->mController;

    [(TSDInteractiveCanvasController *)mController i_layout];
  }
}

- (void)p_reenableDrawingAfterResumingFromBackground
{
  if ([+[TSKApplicationDelegate sharedDelegate](TSKApplicationDelegate "sharedDelegate")])
  {

    [(TSDCanvasLayer *)self performSelector:sel_p_reenableDrawingAfterResumingFromBackground withObject:0 afterDelay:0.0];
  }

  else
  {
    [(TSDInteractiveCanvasController *)self->mController setShouldSuppressRendering:0];

    [(TSDCanvasLayer *)self setNeedsLayout];
  }
}

- (CGRect)p_boundsRect
{
  TSDMultiplySizeScalar(self->mUnscaledSize.width, self->mUnscaledSize.height, self->mViewScale);
  v3 = TSDRectWithSize();
  top = self->mContentInset.top;
  left = self->mContentInset.left;
  v6 = v3 + left;
  v8 = v7 + top;
  v10 = v9 - (left + self->mContentInset.right);
  v12 = v11 - (top + self->mContentInset.bottom);

  v13 = TSDRoundedRectForMainScreen(v6, v8, v10, v12);
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (TSDCanvasView)canvasView
{
  v2 = [(TSDInteractiveCanvasController *)self->mController layerHost];

  return [(TSDCanvasLayerHosting *)v2 canvasView];
}

- (void)popLayoutDisabled
{
  mLayoutDisabledDepth = self->mLayoutDisabledDepth;
  if (mLayoutDisabledDepth || (v4 = [MEMORY[0x277D6C290] currentHandler], v5 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSDCanvasLayer popLayoutDisabled]"), objc_msgSend(v4, "handleFailureInFunction:file:lineNumber:description:", v5, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasLayer.m"), 441, @"layout is not disabled"), (mLayoutDisabledDepth = self->mLayoutDisabledDepth) != 0))
  {
    self->mLayoutDisabledDepth = mLayoutDisabledDepth - 1;
    if ([(TSDInteractiveCanvasController *)self->mController i_needsLayout])
    {

      [(TSDCanvasLayer *)self setNeedsLayout];
    }
  }
}

- (void)setAllowsPinchZoom:(BOOL)a3
{
  if (self->mAllowsPinchZoom != a3)
  {
    self->mAllowsPinchZoom = a3;
    [-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](self->mController "layerHost")];

    [(TSDCanvasLayer *)self p_setEnclosingScrollViewZoomParameters];
  }
}

- (void)setMinimumPinchViewScale:(double)a3
{
  if (self->mMinimumPinchViewScale != a3)
  {
    self->mMinimumPinchViewScale = a3;
    [(TSDCanvasLayer *)self p_setEnclosingScrollViewZoomParameters];
  }
}

- (void)setMaximumPinchViewScale:(double)a3
{
  if (self->mMaximumPinchViewScale != a3)
  {
    self->mMaximumPinchViewScale = a3;
    [(TSDCanvasLayer *)self p_setEnclosingScrollViewZoomParameters];
  }
}

- (CGPoint)unscaledContentCenter
{
  v3 = [(TSDCanvasView *)[(TSDCanvasLayer *)self canvasView] enclosingScrollView];
  if (v3)
  {
    v4 = v3;
    v5 = [(TSDCanvasLayer *)self canvasView];
    [(TSKScrollView *)v4 bounds];
    [(TSDCanvasView *)v5 convertPoint:v4 fromView:TSDCenterOfRect(v6, v7, v8, v9)];
    v12 = TSDMultiplyPointScalar(v10, v11, 1.0 / self->mViewScale);
  }

  else
  {
    v12 = *MEMORY[0x277CBF348];
    v13 = *(MEMORY[0x277CBF348] + 8);
  }

  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)contentOffsetForUnscaledContentCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  mViewScale = self->mViewScale;
  [(TSDCanvasLayer *)self contentInset];

  [(TSDCanvasLayer *)self p_contentOffsetForUnscaledContentCenter:x viewScale:y contentInset:mViewScale, v7, v8, v9, v10];
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)p_contentOffsetForUnscaledContentCenter:(CGPoint)a3 viewScale:(double)a4 contentInset:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  y = a3.y;
  x = a3.x;
  v13 = [(TSDCanvasView *)[(TSDCanvasLayer *)self canvasView] enclosingScrollView];
  if (v13)
  {
    [(TSKScrollView *)v13 bounds];
    v15 = v14;
    v29 = y;
    v17 = v16;
    v30 = TSDMultiplySizeScalar(self->mUnscaledSize.width, self->mUnscaledSize.height, a4);
    v31 = v18;
    [(TSDCanvasLayer *)self p_fixedBoundsForScrollViewSize:v15 viewScale:v17 contentInset:a4, top, left, bottom, right];
    v20 = v19;
    v21 = TSDMultiplyPointScalar(x, v29, a4);
    TSDAddPoints(v21, v22, v20);
    v23 = 0.0;
    v24 = 0.0;
    if (v30 > v15)
    {
      TSUClamp();
      v24 = v25;
    }

    if (v31 > v17)
    {
      TSUClamp();
      v23 = v26;
    }
  }

  else
  {
    v24 = *MEMORY[0x277CBF348];
    v23 = *(MEMORY[0x277CBF348] + 8);
  }

  v27 = v24;
  v28 = v23;
  result.y = v28;
  result.x = v27;
  return result;
}

- (void)setViewScale:(double)a3 andScrollViewFrame:(CGRect)a4 maintainPosition:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = [(TSDCanvasView *)[(TSDCanvasLayer *)self canvasView] enclosingScrollView];
  v15 = v14;
  if (v6)
  {
    if (v14)
    {
      [(TSKScrollView *)v14 frame];
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      if (!CGRectEqualToRect(v32, v34))
      {
        [(TSKScrollView *)v15 setFrame:x, y, width, height];
      }
    }

    if (v7)
    {
      [(TSDCanvasLayer *)self unscaledContentCenter];
      v17 = v16;
      v19 = v18;
    }

    else
    {
      v17 = *MEMORY[0x277CBF348];
      v19 = *(MEMORY[0x277CBF348] + 8);
    }

    [(TSDCanvasLayer *)self contentInset];

    [(TSDCanvasLayer *)self animateToViewScale:0 contentCenter:a3 contentInset:v17 duration:v19 completionBlock:v21, v22, v23, v24, 0.2];
  }

  else
  {
    if (v14 && ([(TSKScrollView *)v14 frame], v35.origin.x = x, v35.origin.y = y, v35.size.width = width, v35.size.height = height, !CGRectEqualToRect(v33, v35)))
    {
      [(TSKScrollView *)v15 setFrame:x, y, width, height];
      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    [(TSDCanvasLayer *)self unscaledContentCenter];
    v26 = v25;
    v28 = v27;
    mViewScale = self->mViewScale;
    if (mViewScale != a3)
    {
      [(TSDCanvasLayer *)self p_setViewScale:a3];
    }

    [(TSDCanvasLayer *)self fixFrameAndScrollView];
    if (v7)
    {
      [(TSDCanvasLayer *)self contentOffsetForUnscaledContentCenter:v26, v28];
      [(TSKScrollView *)v15 setContentOffset:0 animated:?];
    }

    if (mViewScale != a3)
    {
      [(TSDInteractiveCanvasController *)self->mController i_viewScaleDidChange];
    }

    if (v20)
    {
      mController = self->mController;

      [(TSDInteractiveCanvasController *)mController i_viewScrollDidChange];
    }
  }
}

- (void)animateToViewScale:(double)a3 contentCenter:(CGPoint)a4 contentInset:(UIEdgeInsets)a5 duration:(double)a6 animation:(id)a7 completionBlock:(id)a8
{
  bottom = a5.bottom;
  right = a5.right;
  left = a5.left;
  top = a5.top;
  y = a4.y;
  x = a4.x;
  v17 = [(TSDCanvasView *)[(TSDCanvasLayer *)self canvasView] enclosingScrollView];
  if (a3 <= 0.0 || (v19 = v17, self->mViewScale == a3) && ([(TSDCanvasLayer *)self contentInset], left == v47) && top == v18.n128_f64[0] && right == v46 && (v18.n128_f64[0] = bottom, bottom == v45) && !self->mViewScaleAnimationCount)
  {
    if (a8)
    {
      v48 = self->mViewScaleAnimationCount == 0;
      v49 = *(a8 + 2);

      v49(a8, v48, v18);
    }
  }

  else
  {
    if (v19)
    {
      [(TSKScrollView *)v19 contentOffset];
      [(TSKScrollView *)v19 setContentOffset:0 animated:?];
    }

    v70 = top;
    v71 = left;
    mViewScaleAnimationCount = self->mViewScaleAnimationCount;
    if (!mViewScaleAnimationCount)
    {
      [(TSDInteractiveCanvasController *)self->mController i_viewWillBeginZooming];
      mViewScaleAnimationCount = self->mViewScaleAnimationCount;
    }

    v72 = x;
    self->mViewScaleAnimationCount = mViewScaleAnimationCount + 1;
    [(TSDInteractiveCanvasController *)self->mController i_viewDidZoomToViewScale:a3];
    [(TSDCanvasLayer *)self pushLayoutDisabled];
    v63 = *(MEMORY[0x277CBF2C0] + 16);
    v64 = *MEMORY[0x277CBF2C0];
    *&v97.a = *MEMORY[0x277CBF2C0];
    *&v97.c = v63;
    v62 = *(MEMORY[0x277CBF2C0] + 32);
    *&v97.tx = v62;
    [(TSDCanvasLayer *)self bounds];
    v22 = v21;
    v69 = v23;
    v65 = v25;
    v66 = v24;
    v26 = a3;
    v28 = *MEMORY[0x277CBF348];
    v27 = *(MEMORY[0x277CBF348] + 8);
    v67 = right;
    v68 = y;
    if (v19)
    {
      [(TSKScrollView *)v19 contentOffset];
      v30 = v29;
      v31 = TSDSubtractPoints(v28, v27, v22);
      v33 = TSDSubtractPoints(v31, v32, v30);
      v60 = v34;
      v61 = v33;
      [(TSKScrollView *)v19 frame];
      [(TSDCanvasLayer *)self p_fixedBoundsForScrollViewSize:v35 viewScale:v36 contentInset:v26, v70, v71, bottom, right];
      v59 = v37;
      [(TSDCanvasLayer *)self p_contentOffsetForUnscaledContentCenter:v72 viewScale:y contentInset:v26, v70, v71, bottom, right];
      v39 = v38;
      v40 = TSDSubtractPoints(v28, v27, v59);
      v28 = TSDSubtractPoints(v40, v41, v39);
      v43 = v60;
      v42 = v61;
      v27 = v44;
    }

    else
    {
      v43 = *(MEMORY[0x277CBF348] + 8);
      v42 = *MEMORY[0x277CBF348];
    }

    *&v96.a = v64;
    *&v96.c = v63;
    *&v96.tx = v62;
    CGAffineTransformTranslate(&v97, &v96, v28 - v42, v27 - v43);
    mViewScale = self->mViewScale;
    memset(&v96, 0, sizeof(v96));
    CGAffineTransformMakeScale(&v96, v26 / mViewScale, v26 / mViewScale);
    [(TSDCanvasLayer *)self anchorPoint];
    v52 = v51;
    v54 = v53;
    v99.origin.x = v22;
    v99.origin.y = v69;
    v99.size.width = v66;
    v99.size.height = v65;
    MinX = CGRectGetMinX(v99);
    v100.origin.x = v22;
    v100.origin.y = v69;
    v100.size.width = v66;
    v100.size.height = v65;
    v56 = MinX + v52 * CGRectGetWidth(v100);
    v101.origin.x = v22;
    v101.origin.y = v69;
    v101.size.width = v66;
    v101.size.height = v65;
    MinY = CGRectGetMinY(v101);
    v102.origin.x = v22;
    v102.origin.y = v69;
    v102.size.width = v66;
    v102.size.height = v65;
    Height = CGRectGetHeight(v102);
    t1 = v96;
    TSDTransformConvertForNewOrigin(&t1, &v95, v56, MinY + v54 * Height);
    v96 = v95;
    t1 = v95;
    t2 = v97;
    CGAffineTransformConcat(&v95, &t1, &t2);
    v97 = v95;
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v89 = __99__TSDCanvasLayer_animateToViewScale_contentCenter_contentInset_duration_animation_completionBlock___block_invoke;
    v90 = &unk_279D48FC8;
    v91 = self;
    v92 = v95;
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v77 = __99__TSDCanvasLayer_animateToViewScale_contentCenter_contentInset_duration_animation_completionBlock___block_invoke_2;
    v78 = &unk_279D48FF0;
    v81 = v26;
    v82 = v70;
    v83 = v71;
    v84 = bottom;
    v85 = v67;
    v86 = v72;
    v87 = v68;
    v79 = self;
    v80 = a8;
    [(TSDCanvasLayer *)self affineTransform];
    t1 = v97;
    if (CGAffineTransformEqualToTransform(&v95, &t1))
    {
      v89(v88);
      v77(v76);
    }

    else if (a7)
    {
      [(TSDInteractiveCanvasController *)self->mController beginAnimations:&stru_287D36338 context:0];
      [(TSDInteractiveCanvasController *)self->mController setAnimationDuration:a6];
      [(TSDInteractiveCanvasController *)self->mController setAnimation:a7 forLayer:self forKey:@"transform"];
      [(TSDInteractiveCanvasController *)self->mController setAnimationCompletionBlock:v76];
      v89(v88);
      [(TSDInteractiveCanvasController *)self->mController commitAnimations];
    }

    else
    {
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __99__TSDCanvasLayer_animateToViewScale_contentCenter_contentInset_duration_animation_completionBlock___block_invoke_3;
      v75[3] = &unk_279D49018;
      v75[4] = v76;
      [MEMORY[0x277D75D18] animateWithDuration:4 delay:v88 options:v75 animations:a6 completion:0.0];
    }
  }
}

uint64_t __99__TSDCanvasLayer_animateToViewScale_contentCenter_contentInset_duration_animation_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v3;
  v5[2] = *(a1 + 72);
  [v2 setAffineTransform:v5];
  return [*(a1 + 32) popLayoutDisabled];
}

uint64_t __99__TSDCanvasLayer_animateToViewScale_contentCenter_contentInset_duration_animation_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112) - 1;
  *(v2 + 112) = v3;
  if (!v3)
  {
    v4 = *(a1 + 32);
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    v8[0] = *MEMORY[0x277CBF2C0];
    v8[1] = v5;
    v8[2] = *(MEMORY[0x277CBF2C0] + 32);
    [v4 setAffineTransform:v8];
    [*(a1 + 32) p_setViewScale:*(a1 + 48)];
    [*(a1 + 32) setContentInset:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
    [*(a1 + 32) fixFrameAndScrollView];
    v6 = [objc_msgSend(*(a1 + 32) "canvasView")];
    [*(a1 + 32) contentOffsetForUnscaledContentCenter:{*(a1 + 88), *(a1 + 96)}];
    [v6 setContentOffset:0 animated:?];
    [*(*(a1 + 32) + 48) i_viewScaleDidChange];
    [*(*(a1 + 32) + 48) i_viewScrollDidChange];
    [*(*(a1 + 32) + 48) viewDidEndZooming];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 112) == 0);
  }

  return result;
}

- (void)setScrollViewFrameMaintainingApparentScrollPosition:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(TSDCanvasView *)[(TSDCanvasLayer *)self canvasView] enclosingScrollView];
  if (v10)
  {
    v11 = v10;
    [(TSKScrollView *)v10 frame];
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    if (!CGRectEqualToRect(v23, v24))
    {
      v12 = [(TSDCanvasLayer *)self canvasView];
      [(TSKScrollView *)v11 bounds];
      [(TSDCanvasView *)v12 convertPoint:v11 fromView:TSDCenterOfRect(v13, v14, v15, v16)];
      v19 = TSDMultiplyPointScalar(v17, v18, 1.0 / self->mViewScale);
      v21 = v20;
      [(TSKScrollView *)v11 setFrame:x, y, width, height];
      [(TSDCanvasLayer *)self fixFrameAndScrollView];
      [(TSDCanvasLayer *)self contentOffsetForUnscaledContentCenter:v19, v21];

      [(TSKScrollView *)v11 setContentOffset:v4 animated:?];
    }
  }
}

- (void)p_setViewScale:(double)a3
{
  [(TSDCanvasLayer *)self willChangeValueForKey:@"viewScale"];
  self->mViewScale = a3;
  [(TSDCanvasLayer *)self didChangeValueForKey:@"viewScale"];
  mViewScale = self->mViewScale;
  v6 = [(TSDInteractiveCanvasController *)self->mController canvas];

  [(TSDCanvas *)v6 setViewScale:mViewScale];
}

- (void)p_setViewScale:(double)a3 preservingScrollOffset:(BOOL)a4
{
  mViewScale = self->mViewScale;
  if (a3 <= 0.0 || mViewScale == a3)
  {
    return;
  }

  if (!a4)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v8 = [(TSDCanvasView *)[(TSDCanvasLayer *)self canvasView] enclosingScrollView];
  v9 = v8;
  if (!v8)
  {
LABEL_11:
    v10 = 1;
    goto LABEL_12;
  }

  [(TSKScrollView *)v8 contentOffset];
  [(TSKScrollView *)v9 contentSize];
  v10 = 0;
LABEL_12:
  [(TSDCanvasLayer *)self p_setViewScale:a3];
  [(TSDCanvasLayer *)self p_setEnclosingScrollViewZoomParameters];
  [(TSDCanvasLayer *)self fixFrameAndScrollView];
  if ((v10 & 1) == 0)
  {
    [(TSKScrollView *)v9 contentSize];
    [(TSKScrollView *)v9 setContentOffset:0 animated:TSDRoundedPoint()];
  }

  mController = self->mController;

  [(TSDInteractiveCanvasController *)mController i_viewScaleDidChange];
}

- (void)p_setEnclosingScrollViewZoomParameters
{
  v2 = [(TSDCanvasView *)[(TSDCanvasLayer *)self canvasView] enclosingScrollView];
  if (v2)
  {
    v3 = v2;
    [(TSKScrollView *)v2 setMinimumZoomScale:1.0];
    [(TSKScrollView *)v3 setMaximumZoomScale:1.0];

    [(TSKScrollView *)v3 setZoomScale:1.0];
  }
}

- (CGRect)p_fixedBoundsForScrollViewSize:(CGSize)a3 viewScale:(double)a4 contentInset:(UIEdgeInsets)a5
{
  top = a5.top;
  height = a3.height;
  width = a3.width;
  p_mUnscaledSize = &self->mUnscaledSize;
  if (self->mUnscaledSize.width == *MEMORY[0x277CBF3A8] && self->mUnscaledSize.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    v35 = *(MEMORY[0x277CBF3A0] + 16);
    v36 = *(MEMORY[0x277CBF3A0] + 24);
    v37 = *MEMORY[0x277CBF3A0];
    v38 = *(MEMORY[0x277CBF3A0] + 8);
  }

  else
  {
    right = a5.right;
    bottom = a5.bottom;
    left = a5.left;
    [(TSDInteractiveCanvasController *)self->mController growUnscaledCanvasLayerSize:?];
    v15 = v14;
    v17 = v16;
    if (v14 < p_mUnscaledSize->width)
    {
      v18 = [MEMORY[0x277D6C290] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasLayer p_fixedBoundsForScrollViewSize:viewScale:contentInset:]"];
      [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasLayer.m"), 958, @"expected canvas layer not to shrink in -growUnscaledCanvasLayerSize:, ignoring width"}];
      v15 = p_mUnscaledSize->width;
    }

    if (v17 < p_mUnscaledSize->height)
    {
      v20 = [MEMORY[0x277D6C290] currentHandler];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasLayer p_fixedBoundsForScrollViewSize:viewScale:contentInset:]"];
      [v20 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasLayer.m"), 962, @"expected canvas layer not to shrink in -growUnscaledCanvasLayerSize:, ignoring height"}];
      v17 = p_mUnscaledSize->height;
    }

    TSDMultiplySizeScalar(v15, v17, a4);
    v22 = left + TSDRectWithSize();
    v24 = top + v23;
    v26 = v25 - (left + right);
    v28 = v27 - (top + bottom);
    if ([(TSDCanvasView *)[(TSDCanvasLayer *)self canvasView] enclosingScrollView]&& [(TSDInteractiveCanvasController *)self->mController shouldResizeCanvasToScrollView])
    {
      [(TSDCanvas *)[(TSDInteractiveCanvasController *)self->mController canvas] contentsScale];
      v30 = v29;
      v31 = TSDSubtractSizes(width, height, v26);
      v33 = v32;
      if (v31 <= 0.0)
      {
        width = v26;
      }

      else
      {
        v34 = v31;
        if ([(TSDCanvasLayer *)self horizontallyCenteredInScrollView])
        {
          v22 = TSDFloorForScale(v22 + v34 * -0.5, v30);
        }
      }

      if (v33 > 0.0)
      {
        if ([(TSDCanvasLayer *)self verticallyCenteredInScrollView])
        {
          v24 = TSDFloorForScale(v24 + v33 * -0.5, v30);
        }

        v28 = height;
      }
    }

    else
    {
      width = v26;
    }

    [(TSDCanvas *)[(TSDInteractiveCanvasController *)self->mController canvas] contentsScale];
    v37 = TSDRoundedRectForScale(v22, v24, width, v28, v39);
  }

  mController = self->mController;

  [(TSDInteractiveCanvasController *)mController canvasViewBoundsWithBounds:v37, v38, v35, v36, a5.left, a5.bottom, a5.right];
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

- (void)adjustContentInsets
{
  if ([(TSDCanvasLayer *)self verticallyCenteredInScrollView])
  {
    v3 = [(TSDCanvasView *)[(TSDCanvasLayer *)self canvasView] enclosingScrollView];
    if (v3)
    {
      v4 = v3;
      [(TSDInteractiveCanvasController *)self->mController sizeOfScrollViewEnclosingCanvas];
      v6 = v5;
      v8 = v7;
      mViewScale = self->mViewScale;
      [(TSDCanvasLayer *)self contentInset];
      [(TSDCanvasLayer *)self p_fixedBoundsForScrollViewSize:v6 viewScale:v8 contentInset:mViewScale, v10, v11, v12, v13];
      v15 = v14;
      if ([(TSKScrollView *)v4 superview])
      {
        [-[TSKScrollView superview](v4 "superview")];
        v17 = v16;
        [(TSKScrollView *)v4 frame];
        if (v15 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v15;
        }

        v20 = (v18 - v19) * 0.5;
        if ([(TSDCanvasLayer *)self avoidKeyboardWhenVerticallyCenteredInScrollView])
        {
          [+[TSKKeyboardMonitor sharedKeyboardMonitor](TSKKeyboardMonitor "sharedKeyboardMonitor")];
          v22 = v21;
          v26 = v20 < v21;
          v23 = v20;
          if (v26)
          {
            [(TSKScrollView *)v4 frame];
            v25 = v24 - (v15 + v22);
            v26 = v25 < 0.0;
            v23 = v25 * 0.5;
            v20 = v26 ? v22 : v22 + v23;
            if (v26)
            {
              v23 = 0.0;
            }
          }
        }

        else
        {
          v23 = v20;
        }

        [(TSKScrollView *)v4 setContentInset:v23, 0.0, v20, 0.0];
      }
    }
  }
}

- (void)p_fixFrameAndScrollView
{
  [(TSDInteractiveCanvasController *)self->mController sizeOfScrollViewEnclosingCanvas];
  v4 = v3;
  v6 = v5;
  mViewScale = self->mViewScale;
  [(TSDCanvasLayer *)self contentInset];
  [(TSDCanvasLayer *)self p_fixedBoundsForScrollViewSize:v4 viewScale:v6 contentInset:mViewScale, v8, v9, v10, v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(TSDCanvasView *)[(TSDCanvasLayer *)self canvasView] enclosingScrollView];
  if (v20)
  {
    v21 = v20;
    [(TSKScrollView *)v20 setZoomScale:1.0];
    [(TSKScrollView *)v21 setContentSize:v17, v19];
    [(TSDCanvasLayer *)self adjustContentInsets];
  }

  v22 = [(TSDCanvasLayer *)self canvasView];
  if (!v22)
  {
    v22 = self;
  }

  [(TSDCanvasView *)v22 setBounds:v13, v15, v17, v19];
  v23 = TSDRectWithSize();
  v27 = TSDCenterOfRect(v23, v24, v25, v26);

  [(TSDCanvasLayer *)self setPosition:v27];
}

- (void)_adjustContentInsetsForKeyboard
{
  if ([(TSDCanvasLayer *)self verticallyCenteredInScrollView]&& [(TSDCanvasLayer *)self avoidKeyboardWhenVerticallyCenteredInScrollView])
  {

    [(TSDCanvasLayer *)self adjustContentInsets];
  }
}

- (void)keyboardWillChangeFrame:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v6 = __42__TSDCanvasLayer_keyboardWillChangeFrame___block_invoke;
  v7 = &unk_279D46770;
  v8 = self;
  v3 = +[TSKKeyboardMonitor sharedKeyboardMonitor];
  if ([v3 keyboardIsAnimating])
  {
    v4 = MEMORY[0x277D75D18];
    [v3 keyboardAnimationDuration];
    [v4 animateWithDuration:v5 animations:?];
  }

  else
  {
    v6(v5);
  }
}

- (CGSize)unscaledSize
{
  width = self->mUnscaledSize.width;
  height = self->mUnscaledSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)contentInset
{
  top = self->mContentInset.top;
  left = self->mContentInset.left;
  bottom = self->mContentInset.bottom;
  right = self->mContentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
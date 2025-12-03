@interface SXParallaxFadeSceneAnimationHandler
- (double)factorForVisibileBounds:(CGRect)bounds andAbsoluteComponentRect:(CGRect)rect;
- (id)componentViewToAnimate;
- (void)finishAnimation;
- (void)prepareAnimation;
- (void)startAnimation;
- (void)updateAnimationWithFactor:(double)factor;
@end

@implementation SXParallaxFadeSceneAnimationHandler

- (void)prepareAnimation
{
  v30.receiver = self;
  v30.super_class = SXParallaxFadeSceneAnimationHandler;
  [(SXComponentAnimationHandler *)&v30 prepareAnimation];
  component = [(SXComponentAnimationHandler *)self component];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v29[0] = *MEMORY[0x1E695EFD0];
  v29[1] = v4;
  v29[2] = *(MEMORY[0x1E695EFD0] + 32);
  [component setTransform:v29];

  overlayView = [(SXParallaxFadeSceneAnimationHandler *)self overlayView];

  if (!overlayView)
  {
    animation = [(SXComponentAnimationHandler *)self animation];
    fadeColor = [animation fadeColor];
    if (fadeColor)
    {
      animation2 = [(SXComponentAnimationHandler *)self animation];
      fadeColor2 = [animation2 fadeColor];
    }

    else
    {
      fadeColor2 = [MEMORY[0x1E69DC888] blackColor];
    }

    component2 = [(SXComponentAnimationHandler *)self component];
    v11 = [component2 componentViewsForRole:12 recursive:1];

    firstObject = [v11 firstObject];
    [firstObject setAnimationsAndBehaviorsEnabled:0];
    [(SXParallaxFadeSceneAnimationHandler *)self setHeaderComponentView:firstObject];
    headerComponentView = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];
    fillView = [headerComponentView fillView];
    fill = [fillView fill];
    -[SXParallaxFadeSceneAnimationHandler setAttachmentType:](self, "setAttachmentType:", [fill attachment]);

    v16 = objc_alloc(MEMORY[0x1E69DD250]);
    [firstObject bounds];
    v17 = [v16 initWithFrame:?];
    [(SXParallaxFadeSceneAnimationHandler *)self setOverlayView:v17];

    overlayView2 = [(SXParallaxFadeSceneAnimationHandler *)self overlayView];
    [overlayView2 setAutoresizingMask:18];

    overlayView3 = [(SXParallaxFadeSceneAnimationHandler *)self overlayView];
    [overlayView3 setBackgroundColor:fadeColor2];

    overlayView4 = [(SXParallaxFadeSceneAnimationHandler *)self overlayView];
    [overlayView4 setAlpha:0.0];

    fillView2 = [firstObject fillView];

    if (fillView2)
    {
      overlayView5 = [(SXParallaxFadeSceneAnimationHandler *)self overlayView];
      fillView3 = [firstObject fillView];
      [firstObject insertSubview:overlayView5 aboveSubview:fillView3];
    }

    else
    {
      if (!firstObject)
      {
LABEL_10:

        goto LABEL_11;
      }

      overlayView5 = [(SXParallaxFadeSceneAnimationHandler *)self overlayView];
      [firstObject insertSubview:overlayView5 atIndex:0];
    }

    goto LABEL_10;
  }

LABEL_11:
  headerComponentView2 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];
  [headerComponentView2 bounds];
  Height = CGRectGetHeight(v31);

  headerComponentView3 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];
  viewport = [headerComponentView3 viewport];
  [viewport bounds];
  v28 = CGRectGetHeight(v32);

  if (Height >= v28)
  {
    Height = v28;
  }

  [(SXParallaxFadeSceneAnimationHandler *)self setScrollDistance:Height];
  [(SXParallaxFadeSceneAnimationHandler *)self setAlphaDistance:Height];
}

- (void)startAnimation
{
  v2.receiver = self;
  v2.super_class = SXParallaxFadeSceneAnimationHandler;
  [(SXComponentAnimationHandler *)&v2 startAnimation];
}

- (void)updateAnimationWithFactor:(double)factor
{
  v44.receiver = self;
  v44.super_class = SXParallaxFadeSceneAnimationHandler;
  [(SXComponentAnimationHandler *)&v44 updateAnimationWithFactor:?];
  headerComponentView = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];
  v40 = *(MEMORY[0x1E695EFD0] + 16);
  v41 = *MEMORY[0x1E695EFD0];
  *&v43.a = *MEMORY[0x1E695EFD0];
  *&v43.c = v40;
  v39 = *(MEMORY[0x1E695EFD0] + 32);
  *&v43.tx = v39;
  [headerComponentView setTransform:&v43];

  component = [(SXComponentAnimationHandler *)self component];
  viewport = [component viewport];
  headerComponentView2 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];
  [headerComponentView2 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  headerComponentView3 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];
  superview = [headerComponentView3 superview];
  [viewport convertRect:superview fromView:{v10, v12, v14, v16}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [(SXParallaxFadeSceneAnimationHandler *)self scrollDistance];
  *&v27 = v27 * factor;
  v28 = roundf(*&v27);
  [(SXParallaxFadeSceneAnimationHandler *)self alphaDistance];
  v30 = v29;
  headerComponentView4 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];
  viewport2 = [headerComponentView4 viewport];
  [viewport2 documentSize];
  v34 = v33;

  v45.origin.x = v20;
  v45.origin.y = v22;
  v45.size.width = v24;
  v45.size.height = v26;
  MaxY = CGRectGetMaxY(v45);
  if (![(SXParallaxFadeSceneAnimationHandler *)self attachmentType])
  {
    memset(&v43.c, 0, 32);
    if (v34 - MaxY <= v28)
    {
      v36 = v34 - MaxY;
    }

    else
    {
      v36 = v28;
    }

    *&v43.a = 0uLL;
    CGAffineTransformMakeTranslation(&v43, 0.0, v36);
    if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsReduceMotionEnabled())
    {
      *&v43.a = v41;
      *&v43.c = v40;
      *&v43.tx = v39;
    }

    headerComponentView5 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];
    v42 = v43;
    [headerComponentView5 setTransform:&v42];
  }

  overlayView = [(SXParallaxFadeSceneAnimationHandler *)self overlayView];
  [overlayView setAlpha:v28 / v30];
}

- (void)finishAnimation
{
  v2.receiver = self;
  v2.super_class = SXParallaxFadeSceneAnimationHandler;
  [(SXComponentAnimationHandler *)&v2 finishAnimation];
}

- (double)factorForVisibileBounds:(CGRect)bounds andAbsoluteComponentRect:(CGRect)rect
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v9 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView:bounds.origin.x];

  v10 = 0.0;
  if (v9)
  {
    v11 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView:0.0];
    [v11 bounds];
    v40 = CGRectGetHeight(v43);

    v44.origin.x = x;
    v44.origin.y = y;
    v41 = width;
    v42 = height;
    v44.size.width = width;
    v44.size.height = height;
    v39 = CGRectGetHeight(v44);
    component = [(SXComponentAnimationHandler *)self component];
    viewport = [component viewport];
    headerComponentView = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];
    [headerComponentView frameUsingCenterAndBounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    headerComponentView2 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];
    superview = [headerComponentView2 superview];
    [viewport convertRectToViewportCoordinateSpace:superview fromView:{v16, v18, v20, v22}];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v45.origin.x = v26;
    v45.origin.y = v28;
    v45.size.width = v30;
    v45.size.height = v32;
    MaxY = CGRectGetMaxY(v45);
    v46.origin.x = v26;
    v46.origin.y = v28;
    v46.size.width = v30;
    v46.size.height = v32;
    v34 = CGRectGetHeight(v46);
    if (MaxY < v34)
    {
      v34 = MaxY;
    }

    if (v34 >= 0.0)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0.0;
    }

    if (v40 >= v39)
    {
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = v41;
      v49.size.height = v42;
      v37 = CGRectGetHeight(v49);
    }

    else
    {
      v47.origin.x = v26;
      v47.origin.y = v28;
      v47.size.width = v30;
      v47.size.height = v32;
      v36 = CGRectGetHeight(v47);
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = v41;
      v48.size.height = v42;
      v37 = CGRectGetHeight(v48);
      if (v36 < v37)
      {
        v37 = v36;
      }
    }

    v10 = 1.0 - v35 / v37;
  }

  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  return fmin(v10, 1.0);
}

- (id)componentViewToAnimate
{
  v7.receiver = self;
  v7.super_class = SXParallaxFadeSceneAnimationHandler;
  componentViewToAnimate = [(SXComponentAnimationHandler *)&v7 componentViewToAnimate];
  headerComponentView = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];

  if (headerComponentView)
  {
    headerComponentView2 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];

    componentViewToAnimate = headerComponentView2;
  }

  return componentViewToAnimate;
}

@end
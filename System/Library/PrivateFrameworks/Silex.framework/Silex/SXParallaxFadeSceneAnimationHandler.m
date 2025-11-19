@interface SXParallaxFadeSceneAnimationHandler
- (double)factorForVisibileBounds:(CGRect)a3 andAbsoluteComponentRect:(CGRect)a4;
- (id)componentViewToAnimate;
- (void)finishAnimation;
- (void)prepareAnimation;
- (void)startAnimation;
- (void)updateAnimationWithFactor:(double)a3;
@end

@implementation SXParallaxFadeSceneAnimationHandler

- (void)prepareAnimation
{
  v30.receiver = self;
  v30.super_class = SXParallaxFadeSceneAnimationHandler;
  [(SXComponentAnimationHandler *)&v30 prepareAnimation];
  v3 = [(SXComponentAnimationHandler *)self component];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v29[0] = *MEMORY[0x1E695EFD0];
  v29[1] = v4;
  v29[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v3 setTransform:v29];

  v5 = [(SXParallaxFadeSceneAnimationHandler *)self overlayView];

  if (!v5)
  {
    v6 = [(SXComponentAnimationHandler *)self animation];
    v7 = [v6 fadeColor];
    if (v7)
    {
      v8 = [(SXComponentAnimationHandler *)self animation];
      v9 = [v8 fadeColor];
    }

    else
    {
      v9 = [MEMORY[0x1E69DC888] blackColor];
    }

    v10 = [(SXComponentAnimationHandler *)self component];
    v11 = [v10 componentViewsForRole:12 recursive:1];

    v12 = [v11 firstObject];
    [v12 setAnimationsAndBehaviorsEnabled:0];
    [(SXParallaxFadeSceneAnimationHandler *)self setHeaderComponentView:v12];
    v13 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];
    v14 = [v13 fillView];
    v15 = [v14 fill];
    -[SXParallaxFadeSceneAnimationHandler setAttachmentType:](self, "setAttachmentType:", [v15 attachment]);

    v16 = objc_alloc(MEMORY[0x1E69DD250]);
    [v12 bounds];
    v17 = [v16 initWithFrame:?];
    [(SXParallaxFadeSceneAnimationHandler *)self setOverlayView:v17];

    v18 = [(SXParallaxFadeSceneAnimationHandler *)self overlayView];
    [v18 setAutoresizingMask:18];

    v19 = [(SXParallaxFadeSceneAnimationHandler *)self overlayView];
    [v19 setBackgroundColor:v9];

    v20 = [(SXParallaxFadeSceneAnimationHandler *)self overlayView];
    [v20 setAlpha:0.0];

    v21 = [v12 fillView];

    if (v21)
    {
      v22 = [(SXParallaxFadeSceneAnimationHandler *)self overlayView];
      v23 = [v12 fillView];
      [v12 insertSubview:v22 aboveSubview:v23];
    }

    else
    {
      if (!v12)
      {
LABEL_10:

        goto LABEL_11;
      }

      v22 = [(SXParallaxFadeSceneAnimationHandler *)self overlayView];
      [v12 insertSubview:v22 atIndex:0];
    }

    goto LABEL_10;
  }

LABEL_11:
  v24 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];
  [v24 bounds];
  Height = CGRectGetHeight(v31);

  v26 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];
  v27 = [v26 viewport];
  [v27 bounds];
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

- (void)updateAnimationWithFactor:(double)a3
{
  v44.receiver = self;
  v44.super_class = SXParallaxFadeSceneAnimationHandler;
  [(SXComponentAnimationHandler *)&v44 updateAnimationWithFactor:?];
  v5 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];
  v40 = *(MEMORY[0x1E695EFD0] + 16);
  v41 = *MEMORY[0x1E695EFD0];
  *&v43.a = *MEMORY[0x1E695EFD0];
  *&v43.c = v40;
  v39 = *(MEMORY[0x1E695EFD0] + 32);
  *&v43.tx = v39;
  [v5 setTransform:&v43];

  v6 = [(SXComponentAnimationHandler *)self component];
  v7 = [v6 viewport];
  v8 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];
  v18 = [v17 superview];
  [v7 convertRect:v18 fromView:{v10, v12, v14, v16}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [(SXParallaxFadeSceneAnimationHandler *)self scrollDistance];
  *&v27 = v27 * a3;
  v28 = roundf(*&v27);
  [(SXParallaxFadeSceneAnimationHandler *)self alphaDistance];
  v30 = v29;
  v31 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];
  v32 = [v31 viewport];
  [v32 documentSize];
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

    v37 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];
    v42 = v43;
    [v37 setTransform:&v42];
  }

  v38 = [(SXParallaxFadeSceneAnimationHandler *)self overlayView];
  [v38 setAlpha:v28 / v30];
}

- (void)finishAnimation
{
  v2.receiver = self;
  v2.super_class = SXParallaxFadeSceneAnimationHandler;
  [(SXComponentAnimationHandler *)&v2 finishAnimation];
}

- (double)factorForVisibileBounds:(CGRect)a3 andAbsoluteComponentRect:(CGRect)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView:a3.origin.x];

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
    v12 = [(SXComponentAnimationHandler *)self component];
    v13 = [v12 viewport];
    v14 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];
    [v14 frameUsingCenterAndBounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];
    v24 = [v23 superview];
    [v13 convertRectToViewportCoordinateSpace:v24 fromView:{v16, v18, v20, v22}];
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
  v3 = [(SXComponentAnimationHandler *)&v7 componentViewToAnimate];
  v4 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];

  if (v4)
  {
    v5 = [(SXParallaxFadeSceneAnimationHandler *)self headerComponentView];

    v3 = v5;
  }

  return v3;
}

@end
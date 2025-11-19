@interface SXParallaxScaleSceneAnimationHandler
- (CGRect)fillContentFrameForScale:(double)a3 andTranslation:(double)a4;
- (SXContainerComponentView)headerComponent;
- (double)factorForVisibileBounds:(CGRect)a3 andAbsoluteComponentRect:(CGRect)a4;
- (void)ensureScalabilityOfHeaderComponentFill;
- (void)prepareAnimation;
- (void)updateAnimationWithFactor:(double)a3;
@end

@implementation SXParallaxScaleSceneAnimationHandler

- (void)prepareAnimation
{
  v8.receiver = self;
  v8.super_class = SXParallaxScaleSceneAnimationHandler;
  [(SXComponentAnimationHandler *)&v8 prepareAnimation];
  v3 = [(SXComponentAnimationHandler *)self component];
  v4 = [v3 componentViewsForRole:12 recursive:1];

  v5 = [v4 firstObject];
  [v5 setAnimationsAndBehaviorsEnabled:0];
  [(SXParallaxScaleSceneAnimationHandler *)self setHeaderComponent:v5];
  v6 = [v5 fillView];
  v7 = [v6 fill];
  -[SXParallaxScaleSceneAnimationHandler setAttachmentType:](self, "setAttachmentType:", [v7 attachment]);

  [(SXParallaxScaleSceneAnimationHandler *)self ensureScalabilityOfHeaderComponentFill];
}

- (void)ensureScalabilityOfHeaderComponentFill
{
  v3 = [(SXParallaxScaleSceneAnimationHandler *)self headerComponent];
  v4 = [v3 fillView];

  if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsReduceMotionEnabled())
  {
    [(SXParallaxScaleSceneAnimationHandler *)self fillContentFrameForScale:1.25 andTranslation:0.0];
    [v4 setContentFrame:?];
  }
}

- (void)updateAnimationWithFactor:(double)a3
{
  v9.receiver = self;
  v9.super_class = SXParallaxScaleSceneAnimationHandler;
  [(SXComponentAnimationHandler *)&v9 updateAnimationWithFactor:?];
  v5 = [(SXParallaxScaleSceneAnimationHandler *)self headerComponent];
  v6 = [v5 fillView];

  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsReduceMotionEnabled())
  {
    [v6 originalFrame];
  }

  else
  {
    v7 = 0.0;
    if (![(SXParallaxScaleSceneAnimationHandler *)self attachmentType])
    {
      v8 = [(SXParallaxScaleSceneAnimationHandler *)self headerComponent];
      [v8 bounds];
      v7 = CGRectGetHeight(v10) * 0.45 * a3;
    }

    [(SXParallaxScaleSceneAnimationHandler *)self fillContentFrameForScale:(1.0 - a3) * 0.25 + 1.0 andTranslation:v7];
  }

  [v6 setContentFrame:?];
}

- (CGRect)fillContentFrameForScale:(double)a3 andTranslation:(double)a4
{
  v6 = [(SXParallaxScaleSceneAnimationHandler *)self headerComponent];
  v7 = [v6 fillView];

  [v7 originalFrame];
  x = v22.origin.x;
  y = v22.origin.y;
  v22.size.width = v12 * a3;
  width = v22.size.width;
  v22.size.height = v13 * a3;
  height = v22.size.height;
  v14 = CGRectGetWidth(v22);
  [v7 originalFrame];
  v15 = x - (v14 - CGRectGetWidth(v23)) * 0.5;
  v24.origin.x = v15;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v16 = CGRectGetHeight(v24);
  [v7 originalFrame];
  v17 = y - (v16 - CGRectGetHeight(v25)) * 0.5 + a4 * a3;

  v18 = v15;
  v19 = v17;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (double)factorForVisibileBounds:(CGRect)a3 andAbsoluteComponentRect:(CGRect)a4
{
  v5 = [(SXComponentAnimationHandler *)self component:a3.origin.x];
  v6 = [(SXParallaxScaleSceneAnimationHandler *)self headerComponent];
  [v6 frame];
  [v5 convertRect:0 toView:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v20.origin.x = v8;
  v20.origin.y = v10;
  v20.size.width = v12;
  v20.size.height = v14;
  MaxY = CGRectGetMaxY(v20);
  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  Height = CGRectGetHeight(v21);
  if (MaxY < Height)
  {
    Height = MaxY;
  }

  if (Height >= 0.0)
  {
    v17 = Height;
  }

  else
  {
    v17 = 0.0;
  }

  v22.origin.x = v8;
  v22.origin.y = v10;
  v22.size.width = v12;
  v22.size.height = v14;
  v18 = 1.0 - v17 / CGRectGetHeight(v22);
  if (v18 < 0.0)
  {
    v18 = 0.0;
  }

  return fmin(v18, 1.0);
}

- (SXContainerComponentView)headerComponent
{
  WeakRetained = objc_loadWeakRetained(&self->_headerComponent);

  return WeakRetained;
}

@end
@interface SXParallaxScaleSceneAnimationHandler
- (CGRect)fillContentFrameForScale:(double)scale andTranslation:(double)translation;
- (SXContainerComponentView)headerComponent;
- (double)factorForVisibileBounds:(CGRect)bounds andAbsoluteComponentRect:(CGRect)rect;
- (void)ensureScalabilityOfHeaderComponentFill;
- (void)prepareAnimation;
- (void)updateAnimationWithFactor:(double)factor;
@end

@implementation SXParallaxScaleSceneAnimationHandler

- (void)prepareAnimation
{
  v8.receiver = self;
  v8.super_class = SXParallaxScaleSceneAnimationHandler;
  [(SXComponentAnimationHandler *)&v8 prepareAnimation];
  component = [(SXComponentAnimationHandler *)self component];
  v4 = [component componentViewsForRole:12 recursive:1];

  firstObject = [v4 firstObject];
  [firstObject setAnimationsAndBehaviorsEnabled:0];
  [(SXParallaxScaleSceneAnimationHandler *)self setHeaderComponent:firstObject];
  fillView = [firstObject fillView];
  fill = [fillView fill];
  -[SXParallaxScaleSceneAnimationHandler setAttachmentType:](self, "setAttachmentType:", [fill attachment]);

  [(SXParallaxScaleSceneAnimationHandler *)self ensureScalabilityOfHeaderComponentFill];
}

- (void)ensureScalabilityOfHeaderComponentFill
{
  headerComponent = [(SXParallaxScaleSceneAnimationHandler *)self headerComponent];
  fillView = [headerComponent fillView];

  if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsReduceMotionEnabled())
  {
    [(SXParallaxScaleSceneAnimationHandler *)self fillContentFrameForScale:1.25 andTranslation:0.0];
    [fillView setContentFrame:?];
  }
}

- (void)updateAnimationWithFactor:(double)factor
{
  v9.receiver = self;
  v9.super_class = SXParallaxScaleSceneAnimationHandler;
  [(SXComponentAnimationHandler *)&v9 updateAnimationWithFactor:?];
  headerComponent = [(SXParallaxScaleSceneAnimationHandler *)self headerComponent];
  fillView = [headerComponent fillView];

  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsReduceMotionEnabled())
  {
    [fillView originalFrame];
  }

  else
  {
    v7 = 0.0;
    if (![(SXParallaxScaleSceneAnimationHandler *)self attachmentType])
    {
      headerComponent2 = [(SXParallaxScaleSceneAnimationHandler *)self headerComponent];
      [headerComponent2 bounds];
      v7 = CGRectGetHeight(v10) * 0.45 * factor;
    }

    [(SXParallaxScaleSceneAnimationHandler *)self fillContentFrameForScale:(1.0 - factor) * 0.25 + 1.0 andTranslation:v7];
  }

  [fillView setContentFrame:?];
}

- (CGRect)fillContentFrameForScale:(double)scale andTranslation:(double)translation
{
  headerComponent = [(SXParallaxScaleSceneAnimationHandler *)self headerComponent];
  fillView = [headerComponent fillView];

  [fillView originalFrame];
  x = v22.origin.x;
  y = v22.origin.y;
  v22.size.width = v12 * scale;
  width = v22.size.width;
  v22.size.height = v13 * scale;
  height = v22.size.height;
  v14 = CGRectGetWidth(v22);
  [fillView originalFrame];
  v15 = x - (v14 - CGRectGetWidth(v23)) * 0.5;
  v24.origin.x = v15;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v16 = CGRectGetHeight(v24);
  [fillView originalFrame];
  v17 = y - (v16 - CGRectGetHeight(v25)) * 0.5 + translation * scale;

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

- (double)factorForVisibileBounds:(CGRect)bounds andAbsoluteComponentRect:(CGRect)rect
{
  v5 = [(SXComponentAnimationHandler *)self component:bounds.origin.x];
  headerComponent = [(SXParallaxScaleSceneAnimationHandler *)self headerComponent];
  [headerComponent frame];
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
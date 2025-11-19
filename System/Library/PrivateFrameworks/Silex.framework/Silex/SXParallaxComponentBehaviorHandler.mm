@interface SXParallaxComponentBehaviorHandler
- (CGRect)absoluteContentViewFrame;
- (SXParallaxComponentBehaviorHandler)initWithComponentView:(id)a3 withBehavior:(id)a4;
- (void)destroyWithBehaviorController:(id)a3;
- (void)setupWithBehaviorController:(id)a3;
- (void)updateWithBehaviorController:(id)a3;
@end

@implementation SXParallaxComponentBehaviorHandler

- (SXParallaxComponentBehaviorHandler)initWithComponentView:(id)a3 withBehavior:(id)a4
{
  v10.receiver = self;
  v10.super_class = SXParallaxComponentBehaviorHandler;
  v4 = [(SXComponentBehaviorHandler *)&v10 initWithComponentView:a3 withBehavior:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(SXComponentBehaviorHandler *)v4 behavior];
    [v6 factor];
    v5->_factor = v7;

    v8 = [(SXComponentBehaviorHandler *)v5 behavior];
    v5->_direction = [v8 direction];
  }

  return v5;
}

- (void)setupWithBehaviorController:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = SXParallaxComponentBehaviorHandler;
  [(SXComponentBehaviorHandler *)&v30 setupWithBehaviorController:v4];
  v5 = [(SXComponentBehaviorHandler *)self behaviorView];
  v6 = [v4 viewport];
  [v6 documentSize];
  v8 = v7;

  v9 = [v4 viewport];
  [v9 bounds];
  v11 = v10;
  v13 = v12;

  v14 = *MEMORY[0x1E695EFF8];
  v15 = *(MEMORY[0x1E695EFF8] + 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 absoluteFrame];
    [(SXParallaxComponentBehaviorHandler *)self setAbsoluteContentViewFrame:?];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v17 = [v4 viewport];
    if (isKindOfClass)
    {
      [v5 contentFrame];
      [v17 convertRect:v5 fromView:?];
      [(SXParallaxComponentBehaviorHandler *)self setAbsoluteContentViewFrame:?];
    }

    else
    {
      [v5 frameUsingCenterAndBounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v29 = v15;
      v24 = v8;
      v26 = v25;
      v27 = [v5 superview];
      v28 = v26;
      v8 = v24;
      v15 = v29;
      [v17 convertRect:v27 fromView:{v19, v21, v23, v28}];
      [(SXParallaxComponentBehaviorHandler *)self setAbsoluteContentViewFrame:?];
    }
  }

  [(SXParallaxComponentBehaviorHandler *)self absoluteContentViewFrame];
  v33.origin.x = v14;
  v33.origin.y = v15;
  v33.size.width = v11;
  v33.size.height = v13;
  [(SXParallaxComponentBehaviorHandler *)self setInFirstViewport:CGRectIntersectsRect(v31, v33)];
  [(SXParallaxComponentBehaviorHandler *)self absoluteContentViewFrame];
  v34.origin.x = v14;
  v34.origin.y = v8 - v13;
  v34.size.width = v11;
  v34.size.height = v13;
  [(SXParallaxComponentBehaviorHandler *)self setInLastViewport:CGRectIntersectsRect(v32, v34)];
}

- (void)updateWithBehaviorController:(id)a3
{
  v4 = a3;
  v44.receiver = self;
  v44.super_class = SXParallaxComponentBehaviorHandler;
  [(SXComponentBehaviorHandler *)&v44 updateWithBehaviorController:v4];
  v5 = [(SXComponentBehaviorHandler *)self behaviorView];
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsReduceMotionEnabled())
  {
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    *&v43.a = *MEMORY[0x1E695EFD0];
    *&v43.c = v6;
    *&v43.tx = *(MEMORY[0x1E695EFD0] + 32);
    [v5 setTransform:&v43];
  }

  else
  {
    v7 = [v4 viewport];
    [v7 dynamicBounds];
    v9 = v8;

    v10 = [v4 viewport];
    [v10 documentSize];
    v12 = v11;

    v13 = [v4 viewport];
    [v13 bounds];
    v15 = v14;
    if ([(SXParallaxComponentBehaviorHandler *)self inFirstViewport])
    {
      [v13 contentFrame];
      v16 = v9 - CGRectGetMinY(v45);
    }

    else if ([(SXParallaxComponentBehaviorHandler *)self inLastViewport])
    {
      v17 = 0.0;
      if (v9 >= 0.0)
      {
        v17 = v9;
      }

      v16 = -(v12 - v15 - v17);
    }

    else
    {
      [(SXParallaxComponentBehaviorHandler *)self absoluteContentViewFrame];
      MinY = CGRectGetMinY(v46);
      v19 = v9 + -44.0;
      if (v9 + -44.0 < 0.0)
      {
        v19 = 0.0;
      }

      v20 = MinY - v19;
      [(SXParallaxComponentBehaviorHandler *)self absoluteContentViewFrame];
      v16 = v20 + CGRectGetHeight(v47) * 0.5 - v15 * 0.5;
    }

    [(SXParallaxComponentBehaviorHandler *)self factor];
    v22 = v21;
    if ([(SXParallaxComponentBehaviorHandler *)self direction]!= 2 || (v23 = 0.0, v16 >= 0.0))
    {
      v24 = [(SXParallaxComponentBehaviorHandler *)self direction];
      v25 = v16 > 0.0 && v24 == 3;
      v23 = 0.0;
      if (!v25)
      {
        v23 = v16;
      }
    }

    v26 = 0.1;
    if (v22 != 1.79769313e308)
    {
      v26 = 1.0 - v22;
    }

    v27 = v26 * v23;
    v28 = [(SXComponentBehaviorHandler *)self componentView];
    v29 = [v28 presentationDelegate];
    v30 = [v29 componentController];
    v31 = [v30 presentedBlueprint];
    v32 = [v31 isComplete];

    [(SXParallaxComponentBehaviorHandler *)self absoluteContentViewFrame];
    v33 = v27 + CGRectGetMinY(v48);
    [(SXParallaxComponentBehaviorHandler *)self absoluteContentViewFrame];
    v34 = v33 + CGRectGetHeight(v49);
    [v13 documentSize];
    if (v34 > v35 && v32 != 0)
    {
      v37 = [(SXComponentBehaviorHandler *)self componentView];

      if (v5 == v37)
      {
        [v13 documentSize];
        v39 = v38;
        [(SXParallaxComponentBehaviorHandler *)self absoluteContentViewFrame];
        v40 = v39 - CGRectGetHeight(v50);
        [(SXParallaxComponentBehaviorHandler *)self absoluteContentViewFrame];
        v27 = v40 - CGRectGetMinY(v51);
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v5;
      [v41 originalFrame];
      v53 = CGRectOffset(v52, 0.0, v27);
      [v41 setContentFrame:{v53.origin.x, v53.origin.y, v53.size.width, v53.size.height}];
    }

    else
    {
      CGAffineTransformMakeTranslation(&v42, 0.0, v27);
      v43 = v42;
      [v5 setTransform:&v43];
    }
  }
}

- (void)destroyWithBehaviorController:(id)a3
{
  v10.receiver = self;
  v10.super_class = SXParallaxComponentBehaviorHandler;
  [(SXComponentBehaviorHandler *)&v10 destroyWithBehaviorController:a3];
  v4 = [(SXComponentBehaviorHandler *)self behaviorView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [(SXComponentBehaviorHandler *)self behaviorView];
  v7 = v6;
  if (isKindOfClass)
  {
    [v6 originalFrame];
    [v7 setContentFrame:?];
  }

  else
  {
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    v9[0] = *MEMORY[0x1E695EFD0];
    v9[1] = v8;
    v9[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v6 setTransform:v9];
  }
}

- (CGRect)absoluteContentViewFrame
{
  x = self->_absoluteContentViewFrame.origin.x;
  y = self->_absoluteContentViewFrame.origin.y;
  width = self->_absoluteContentViewFrame.size.width;
  height = self->_absoluteContentViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
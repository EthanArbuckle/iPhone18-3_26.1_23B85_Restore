@interface SXParallaxComponentBehaviorHandler
- (CGRect)absoluteContentViewFrame;
- (SXParallaxComponentBehaviorHandler)initWithComponentView:(id)view withBehavior:(id)behavior;
- (void)destroyWithBehaviorController:(id)controller;
- (void)setupWithBehaviorController:(id)controller;
- (void)updateWithBehaviorController:(id)controller;
@end

@implementation SXParallaxComponentBehaviorHandler

- (SXParallaxComponentBehaviorHandler)initWithComponentView:(id)view withBehavior:(id)behavior
{
  v10.receiver = self;
  v10.super_class = SXParallaxComponentBehaviorHandler;
  v4 = [(SXComponentBehaviorHandler *)&v10 initWithComponentView:view withBehavior:behavior];
  v5 = v4;
  if (v4)
  {
    behavior = [(SXComponentBehaviorHandler *)v4 behavior];
    [behavior factor];
    v5->_factor = v7;

    behavior2 = [(SXComponentBehaviorHandler *)v5 behavior];
    v5->_direction = [behavior2 direction];
  }

  return v5;
}

- (void)setupWithBehaviorController:(id)controller
{
  controllerCopy = controller;
  v30.receiver = self;
  v30.super_class = SXParallaxComponentBehaviorHandler;
  [(SXComponentBehaviorHandler *)&v30 setupWithBehaviorController:controllerCopy];
  behaviorView = [(SXComponentBehaviorHandler *)self behaviorView];
  viewport = [controllerCopy viewport];
  [viewport documentSize];
  v8 = v7;

  viewport2 = [controllerCopy viewport];
  [viewport2 bounds];
  v11 = v10;
  v13 = v12;

  v14 = *MEMORY[0x1E695EFF8];
  v15 = *(MEMORY[0x1E695EFF8] + 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [behaviorView absoluteFrame];
    [(SXParallaxComponentBehaviorHandler *)self setAbsoluteContentViewFrame:?];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    viewport3 = [controllerCopy viewport];
    if (isKindOfClass)
    {
      [behaviorView contentFrame];
      [viewport3 convertRect:behaviorView fromView:?];
      [(SXParallaxComponentBehaviorHandler *)self setAbsoluteContentViewFrame:?];
    }

    else
    {
      [behaviorView frameUsingCenterAndBounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v29 = v15;
      v24 = v8;
      v26 = v25;
      superview = [behaviorView superview];
      v28 = v26;
      v8 = v24;
      v15 = v29;
      [viewport3 convertRect:superview fromView:{v19, v21, v23, v28}];
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

- (void)updateWithBehaviorController:(id)controller
{
  controllerCopy = controller;
  v44.receiver = self;
  v44.super_class = SXParallaxComponentBehaviorHandler;
  [(SXComponentBehaviorHandler *)&v44 updateWithBehaviorController:controllerCopy];
  behaviorView = [(SXComponentBehaviorHandler *)self behaviorView];
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsReduceMotionEnabled())
  {
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    *&v43.a = *MEMORY[0x1E695EFD0];
    *&v43.c = v6;
    *&v43.tx = *(MEMORY[0x1E695EFD0] + 32);
    [behaviorView setTransform:&v43];
  }

  else
  {
    viewport = [controllerCopy viewport];
    [viewport dynamicBounds];
    v9 = v8;

    viewport2 = [controllerCopy viewport];
    [viewport2 documentSize];
    v12 = v11;

    viewport3 = [controllerCopy viewport];
    [viewport3 bounds];
    v15 = v14;
    if ([(SXParallaxComponentBehaviorHandler *)self inFirstViewport])
    {
      [viewport3 contentFrame];
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
      direction = [(SXParallaxComponentBehaviorHandler *)self direction];
      v25 = v16 > 0.0 && direction == 3;
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
    componentView = [(SXComponentBehaviorHandler *)self componentView];
    presentationDelegate = [componentView presentationDelegate];
    componentController = [presentationDelegate componentController];
    presentedBlueprint = [componentController presentedBlueprint];
    isComplete = [presentedBlueprint isComplete];

    [(SXParallaxComponentBehaviorHandler *)self absoluteContentViewFrame];
    v33 = v27 + CGRectGetMinY(v48);
    [(SXParallaxComponentBehaviorHandler *)self absoluteContentViewFrame];
    v34 = v33 + CGRectGetHeight(v49);
    [viewport3 documentSize];
    if (v34 > v35 && isComplete != 0)
    {
      componentView2 = [(SXComponentBehaviorHandler *)self componentView];

      if (behaviorView == componentView2)
      {
        [viewport3 documentSize];
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
      v41 = behaviorView;
      [v41 originalFrame];
      v53 = CGRectOffset(v52, 0.0, v27);
      [v41 setContentFrame:{v53.origin.x, v53.origin.y, v53.size.width, v53.size.height}];
    }

    else
    {
      CGAffineTransformMakeTranslation(&v42, 0.0, v27);
      v43 = v42;
      [behaviorView setTransform:&v43];
    }
  }
}

- (void)destroyWithBehaviorController:(id)controller
{
  v10.receiver = self;
  v10.super_class = SXParallaxComponentBehaviorHandler;
  [(SXComponentBehaviorHandler *)&v10 destroyWithBehaviorController:controller];
  behaviorView = [(SXComponentBehaviorHandler *)self behaviorView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  behaviorView2 = [(SXComponentBehaviorHandler *)self behaviorView];
  v7 = behaviorView2;
  if (isKindOfClass)
  {
    [behaviorView2 originalFrame];
    [v7 setContentFrame:?];
  }

  else
  {
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    v9[0] = *MEMORY[0x1E695EFD0];
    v9[1] = v8;
    v9[2] = *(MEMORY[0x1E695EFD0] + 32);
    [behaviorView2 setTransform:v9];
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
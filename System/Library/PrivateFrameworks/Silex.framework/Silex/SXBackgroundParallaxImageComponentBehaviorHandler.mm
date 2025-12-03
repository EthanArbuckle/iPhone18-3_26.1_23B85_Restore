@interface SXBackgroundParallaxImageComponentBehaviorHandler
- (SXBackgroundParallaxImageComponentBehaviorHandler)initWithComponentView:(id)view withBehavior:(id)behavior;
- (void)destroyWindowedScroll;
- (void)destroyWithBehaviorController:(id)controller;
- (void)setupWindowedScroll;
- (void)setupWithBehaviorController:(id)controller;
- (void)updateWithBehaviorController:(id)controller;
@end

@implementation SXBackgroundParallaxImageComponentBehaviorHandler

- (SXBackgroundParallaxImageComponentBehaviorHandler)initWithComponentView:(id)view withBehavior:(id)behavior
{
  v9.receiver = self;
  v9.super_class = SXBackgroundParallaxImageComponentBehaviorHandler;
  v4 = [(SXComponentBehaviorHandler *)&v9 initWithComponentView:view withBehavior:behavior];
  v5 = v4;
  if (v4)
  {
    behavior = [(SXComponentBehaviorHandler *)v4 behavior];
    [behavior amplitude];
    v5->_amplitude = v7;

    v5->_viewHierarchyIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (void)setupWithBehaviorController:(id)controller
{
  v4.receiver = self;
  v4.super_class = SXBackgroundParallaxImageComponentBehaviorHandler;
  [(SXComponentBehaviorHandler *)&v4 setupWithBehaviorController:controller];
  [(SXBackgroundParallaxImageComponentBehaviorHandler *)self setupWindowedScroll];
}

- (void)updateWithBehaviorController:(id)controller
{
  controllerCopy = controller;
  v33.receiver = self;
  v33.super_class = SXBackgroundParallaxImageComponentBehaviorHandler;
  [(SXComponentBehaviorHandler *)&v33 updateWithBehaviorController:controllerCopy];
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsReduceMotionEnabled())
  {
    windowedScrollContentView = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
    [windowedScrollContentView center];
    v7 = v6;
    [(SXBackgroundParallaxImageComponentBehaviorHandler *)self originalYCenter];
    v9 = v8;
  }

  else
  {
    [(SXBackgroundParallaxImageComponentBehaviorHandler *)self amplitude];
    v11 = v10;
    viewport = [controllerCopy viewport];
    [viewport dynamicBounds];

    viewport2 = [controllerCopy viewport];
    [viewport2 bounds];
    v15 = v14;

    viewport3 = [controllerCopy viewport];
    componentView = [(SXComponentBehaviorHandler *)self componentView];
    [componentView center];
    v19 = v18;
    v21 = v20;
    componentView2 = [(SXComponentBehaviorHandler *)self componentView];
    superview = [componentView2 superview];
    [viewport3 convertPoint:superview fromView:{v19, v21}];
    v25 = v24;

    viewport4 = [controllerCopy viewport];
    [viewport4 dynamicBounds];
    v28 = v25 - v27;

    v29 = v28 / v15 * 2.0 + -1.0;
    windowedScrollContentView = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
    [windowedScrollContentView center];
    v7 = v30;
    [(SXBackgroundParallaxImageComponentBehaviorHandler *)self originalYCenter];
    v9 = v31 - v29 * v11;
  }

  windowedScrollContentView2 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  [windowedScrollContentView2 setCenter:{v7, v9}];
}

- (void)setupWindowedScroll
{
  [(SXBackgroundParallaxImageComponentBehaviorHandler *)self amplitude];
  v4 = v3;
  behaviorView = [(SXComponentBehaviorHandler *)self behaviorView];
  [(SXBackgroundParallaxImageComponentBehaviorHandler *)self setWindowedScrollContentView:behaviorView];

  clippingView = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self clippingView];

  if (!clippingView)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(SXBackgroundParallaxImageComponentBehaviorHandler *)self setClippingView:v7];

    clippingView2 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self clippingView];
    [clippingView2 setClipsToBounds:1];
  }

  clippingView3 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self clippingView];
  windowedScrollContentView = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  [windowedScrollContentView frame];
  [clippingView3 setFrame:?];

  windowedScrollContentView2 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  [windowedScrollContentView2 bounds];
  v34 = CGRectInset(v33, -v4, -v4);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  windowedScrollContentView3 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  [windowedScrollContentView3 setFrame:{x, y, width, height}];

  windowedScrollContentView4 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  objc_opt_class();
  LOBYTE(windowedScrollContentView3) = objc_opt_isKindOfClass();

  if (windowedScrollContentView3)
  {
    windowedScrollContentView5 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
    windowedScrollContentView6 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
    [windowedScrollContentView6 frame];
    [windowedScrollContentView5 fillFrameWithBoundingSize:{v20, v21}];
    [windowedScrollContentView5 setContentFrame:?];
  }

  windowedScrollContentView7 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  [windowedScrollContentView7 frame];
  [(SXBackgroundParallaxImageComponentBehaviorHandler *)self setOriginalYCenter:CGRectGetMidY(v35)];

  windowedScrollContentView8 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  superview = [windowedScrollContentView8 superview];
  subviews = [superview subviews];
  windowedScrollContentView9 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  -[SXBackgroundParallaxImageComponentBehaviorHandler setViewHierarchyIndex:](self, "setViewHierarchyIndex:", [subviews indexOfObject:windowedScrollContentView9]);

  windowedScrollContentView10 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  superview2 = [windowedScrollContentView10 superview];
  clippingView4 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self clippingView];
  [superview2 insertSubview:clippingView4 atIndex:{-[SXBackgroundParallaxImageComponentBehaviorHandler viewHierarchyIndex](self, "viewHierarchyIndex")}];

  clippingView5 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self clippingView];
  windowedScrollContentView11 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  [clippingView5 addSubview:windowedScrollContentView11];
}

- (void)destroyWindowedScroll
{
  clippingView = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self clippingView];
  superview = [clippingView superview];
  windowedScrollContentView = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  [superview insertSubview:windowedScrollContentView atIndex:{-[SXBackgroundParallaxImageComponentBehaviorHandler viewHierarchyIndex](self, "viewHierarchyIndex")}];

  componentView = [(SXComponentBehaviorHandler *)self componentView];
  windowedScrollContentView2 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  behavior = [(SXComponentBehaviorHandler *)self behavior];
  [componentView originalFrameForContentView:windowedScrollContentView2 behavior:behavior];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  windowedScrollContentView3 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  [windowedScrollContentView3 setFrame:{v10, v12, v14, v16}];

  [(SXBackgroundParallaxImageComponentBehaviorHandler *)self setWindowedScrollContentView:0];
  clippingView2 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self clippingView];
  [clippingView2 removeFromSuperview];

  [(SXBackgroundParallaxImageComponentBehaviorHandler *)self setViewHierarchyIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (void)destroyWithBehaviorController:(id)controller
{
  v4.receiver = self;
  v4.super_class = SXBackgroundParallaxImageComponentBehaviorHandler;
  [(SXComponentBehaviorHandler *)&v4 destroyWithBehaviorController:controller];
  [(SXBackgroundParallaxImageComponentBehaviorHandler *)self destroyWindowedScroll];
}

@end
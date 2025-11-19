@interface SXBackgroundParallaxImageComponentBehaviorHandler
- (SXBackgroundParallaxImageComponentBehaviorHandler)initWithComponentView:(id)a3 withBehavior:(id)a4;
- (void)destroyWindowedScroll;
- (void)destroyWithBehaviorController:(id)a3;
- (void)setupWindowedScroll;
- (void)setupWithBehaviorController:(id)a3;
- (void)updateWithBehaviorController:(id)a3;
@end

@implementation SXBackgroundParallaxImageComponentBehaviorHandler

- (SXBackgroundParallaxImageComponentBehaviorHandler)initWithComponentView:(id)a3 withBehavior:(id)a4
{
  v9.receiver = self;
  v9.super_class = SXBackgroundParallaxImageComponentBehaviorHandler;
  v4 = [(SXComponentBehaviorHandler *)&v9 initWithComponentView:a3 withBehavior:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(SXComponentBehaviorHandler *)v4 behavior];
    [v6 amplitude];
    v5->_amplitude = v7;

    v5->_viewHierarchyIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (void)setupWithBehaviorController:(id)a3
{
  v4.receiver = self;
  v4.super_class = SXBackgroundParallaxImageComponentBehaviorHandler;
  [(SXComponentBehaviorHandler *)&v4 setupWithBehaviorController:a3];
  [(SXBackgroundParallaxImageComponentBehaviorHandler *)self setupWindowedScroll];
}

- (void)updateWithBehaviorController:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = SXBackgroundParallaxImageComponentBehaviorHandler;
  [(SXComponentBehaviorHandler *)&v33 updateWithBehaviorController:v4];
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsReduceMotionEnabled())
  {
    v5 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
    [v5 center];
    v7 = v6;
    [(SXBackgroundParallaxImageComponentBehaviorHandler *)self originalYCenter];
    v9 = v8;
  }

  else
  {
    [(SXBackgroundParallaxImageComponentBehaviorHandler *)self amplitude];
    v11 = v10;
    v12 = [v4 viewport];
    [v12 dynamicBounds];

    v13 = [v4 viewport];
    [v13 bounds];
    v15 = v14;

    v16 = [v4 viewport];
    v17 = [(SXComponentBehaviorHandler *)self componentView];
    [v17 center];
    v19 = v18;
    v21 = v20;
    v22 = [(SXComponentBehaviorHandler *)self componentView];
    v23 = [v22 superview];
    [v16 convertPoint:v23 fromView:{v19, v21}];
    v25 = v24;

    v26 = [v4 viewport];
    [v26 dynamicBounds];
    v28 = v25 - v27;

    v29 = v28 / v15 * 2.0 + -1.0;
    v5 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
    [v5 center];
    v7 = v30;
    [(SXBackgroundParallaxImageComponentBehaviorHandler *)self originalYCenter];
    v9 = v31 - v29 * v11;
  }

  v32 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  [v32 setCenter:{v7, v9}];
}

- (void)setupWindowedScroll
{
  [(SXBackgroundParallaxImageComponentBehaviorHandler *)self amplitude];
  v4 = v3;
  v5 = [(SXComponentBehaviorHandler *)self behaviorView];
  [(SXBackgroundParallaxImageComponentBehaviorHandler *)self setWindowedScrollContentView:v5];

  v6 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self clippingView];

  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(SXBackgroundParallaxImageComponentBehaviorHandler *)self setClippingView:v7];

    v8 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self clippingView];
    [v8 setClipsToBounds:1];
  }

  v9 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self clippingView];
  v10 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  [v10 frame];
  [v9 setFrame:?];

  v11 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  [v11 bounds];
  v34 = CGRectInset(v33, -v4, -v4);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v16 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  [v16 setFrame:{x, y, width, height}];

  v17 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  objc_opt_class();
  LOBYTE(v16) = objc_opt_isKindOfClass();

  if (v16)
  {
    v18 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
    v19 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
    [v19 frame];
    [v18 fillFrameWithBoundingSize:{v20, v21}];
    [v18 setContentFrame:?];
  }

  v22 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  [v22 frame];
  [(SXBackgroundParallaxImageComponentBehaviorHandler *)self setOriginalYCenter:CGRectGetMidY(v35)];

  v23 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  v24 = [v23 superview];
  v25 = [v24 subviews];
  v26 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  -[SXBackgroundParallaxImageComponentBehaviorHandler setViewHierarchyIndex:](self, "setViewHierarchyIndex:", [v25 indexOfObject:v26]);

  v27 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  v28 = [v27 superview];
  v29 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self clippingView];
  [v28 insertSubview:v29 atIndex:{-[SXBackgroundParallaxImageComponentBehaviorHandler viewHierarchyIndex](self, "viewHierarchyIndex")}];

  v31 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self clippingView];
  v30 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  [v31 addSubview:v30];
}

- (void)destroyWindowedScroll
{
  v3 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self clippingView];
  v4 = [v3 superview];
  v5 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  [v4 insertSubview:v5 atIndex:{-[SXBackgroundParallaxImageComponentBehaviorHandler viewHierarchyIndex](self, "viewHierarchyIndex")}];

  v6 = [(SXComponentBehaviorHandler *)self componentView];
  v7 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  v8 = [(SXComponentBehaviorHandler *)self behavior];
  [v6 originalFrameForContentView:v7 behavior:v8];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self windowedScrollContentView];
  [v17 setFrame:{v10, v12, v14, v16}];

  [(SXBackgroundParallaxImageComponentBehaviorHandler *)self setWindowedScrollContentView:0];
  v18 = [(SXBackgroundParallaxImageComponentBehaviorHandler *)self clippingView];
  [v18 removeFromSuperview];

  [(SXBackgroundParallaxImageComponentBehaviorHandler *)self setViewHierarchyIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (void)destroyWithBehaviorController:(id)a3
{
  v4.receiver = self;
  v4.super_class = SXBackgroundParallaxImageComponentBehaviorHandler;
  [(SXComponentBehaviorHandler *)&v4 destroyWithBehaviorController:a3];
  [(SXBackgroundParallaxImageComponentBehaviorHandler *)self destroyWindowedScroll];
}

@end
@interface SXMotionImageComponentBehaviorHandler
- (SXMotionImageComponentBehaviorHandler)initWithComponentView:(id)view withBehavior:(id)behavior;
- (void)destroyMotionDetection;
- (void)destroyWithBehaviorController:(id)controller;
- (void)setupMotionDetection;
- (void)setupWithBehaviorController:(id)controller;
- (void)updateEdgeAntialiasingForViewport:(id)viewport;
@end

@implementation SXMotionImageComponentBehaviorHandler

- (SXMotionImageComponentBehaviorHandler)initWithComponentView:(id)view withBehavior:(id)behavior
{
  v12.receiver = self;
  v12.super_class = SXMotionImageComponentBehaviorHandler;
  v4 = [(SXComponentBehaviorHandler *)&v12 initWithComponentView:view withBehavior:behavior];
  v5 = v4;
  if (v4)
  {
    v4->_viewHierarchyIndex = 0x7FFFFFFFFFFFFFFFLL;
    behavior = [(SXComponentBehaviorHandler *)v4 behavior];
    [behavior amplitude];
    v5->_amplitude = v7;

    behavior2 = [(SXComponentBehaviorHandler *)v5 behavior];
    v5->_windowed = [behavior2 windowed];

    behavior3 = [(SXComponentBehaviorHandler *)v5 behavior];
    v5->_horizontal = [behavior3 horizontal];

    behavior4 = [(SXComponentBehaviorHandler *)v5 behavior];
    v5->_vertical = [behavior4 vertical];
  }

  return v5;
}

- (void)setupWithBehaviorController:(id)controller
{
  v7.receiver = self;
  v7.super_class = SXMotionImageComponentBehaviorHandler;
  controllerCopy = controller;
  [(SXComponentBehaviorHandler *)&v7 setupWithBehaviorController:controllerCopy];
  [(SXMotionImageComponentBehaviorHandler *)self setupMotionDetection:v7.receiver];
  viewport = [controllerCopy viewport];
  [(SXMotionImageComponentBehaviorHandler *)self updateEdgeAntialiasingForViewport:viewport];

  viewport2 = [controllerCopy viewport];

  [viewport2 addViewportChangeListener:self forOptions:8];
}

- (void)destroyWithBehaviorController:(id)controller
{
  v6.receiver = self;
  v6.super_class = SXMotionImageComponentBehaviorHandler;
  controllerCopy = controller;
  [(SXComponentBehaviorHandler *)&v6 destroyWithBehaviorController:controllerCopy];
  [(SXMotionImageComponentBehaviorHandler *)self destroyMotionDetection:v6.receiver];
  viewport = [controllerCopy viewport];

  [viewport removeViewportChangeListener:self forOptions:8];
}

- (void)setupMotionDetection
{
  behaviorView = [(SXComponentBehaviorHandler *)self behaviorView];
  [(SXMotionImageComponentBehaviorHandler *)self setMotionContentView:behaviorView];

  [(SXMotionImageComponentBehaviorHandler *)self amplitude];
  v5 = v4;
  windowed = [(SXMotionImageComponentBehaviorHandler *)self windowed];
  if ([(SXMotionImageComponentBehaviorHandler *)self windowed])
  {
    motionContentView = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    superview = [motionContentView superview];
    subviews = [superview subviews];
    motionContentView2 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    -[SXMotionImageComponentBehaviorHandler setViewHierarchyIndex:](self, "setViewHierarchyIndex:", [subviews indexOfObject:motionContentView2]);

    clippingView = [(SXMotionImageComponentBehaviorHandler *)self clippingView];

    if (!clippingView)
    {
      v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
      [(SXMotionImageComponentBehaviorHandler *)self setClippingView:v12];

      clippingView2 = [(SXMotionImageComponentBehaviorHandler *)self clippingView];
      [clippingView2 setClipsToBounds:1];
    }

    clippingView3 = [(SXMotionImageComponentBehaviorHandler *)self clippingView];
    motionContentView3 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    [motionContentView3 frame];
    [clippingView3 setFrame:?];

    motionContentView4 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    [motionContentView4 bounds];
    v51 = CGRectInset(v50, -v5, -v5);
    x = v51.origin.x;
    y = v51.origin.y;
    width = v51.size.width;
    height = v51.size.height;
    motionContentView5 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    [motionContentView5 setFrame:{x, y, width, height}];

    motionContentView6 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    objc_opt_class();
    LOBYTE(motionContentView5) = objc_opt_isKindOfClass();

    if (motionContentView5)
    {
      motionContentView7 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
      motionContentView8 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
      [motionContentView8 frame];
      [motionContentView7 fillFrameWithBoundingSize:{v25, v26}];
      [motionContentView7 setContentFrame:?];
    }

    motionContentView9 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    superview2 = [motionContentView9 superview];
    clippingView4 = [(SXMotionImageComponentBehaviorHandler *)self clippingView];
    [superview2 insertSubview:clippingView4 atIndex:{-[SXMotionImageComponentBehaviorHandler viewHierarchyIndex](self, "viewHierarchyIndex")}];

    clippingView5 = [(SXMotionImageComponentBehaviorHandler *)self clippingView];
    motionContentView10 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    [clippingView5 addSubview:motionContentView10];
  }

  if ([(SXMotionImageComponentBehaviorHandler *)self horizontal])
  {
    v32 = [objc_alloc(MEMORY[0x1E69DCB10]) initWithKeyPath:@"center.x" type:0];
    [(SXMotionImageComponentBehaviorHandler *)self setXMotionEffect:v32];

    if (windowed)
    {
      v33 = v5;
    }

    else
    {
      v33 = -v5;
    }

    if (windowed)
    {
      v34 = -v5;
    }

    else
    {
      v34 = v5;
    }

    v35 = [MEMORY[0x1E696AD98] numberWithDouble:v33];
    xMotionEffect = [(SXMotionImageComponentBehaviorHandler *)self xMotionEffect];
    [xMotionEffect setMinimumRelativeValue:v35];

    v37 = [MEMORY[0x1E696AD98] numberWithDouble:v34];
    xMotionEffect2 = [(SXMotionImageComponentBehaviorHandler *)self xMotionEffect];
    [xMotionEffect2 setMaximumRelativeValue:v37];

    motionContentView11 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    xMotionEffect3 = [(SXMotionImageComponentBehaviorHandler *)self xMotionEffect];
    [motionContentView11 addMotionEffect:xMotionEffect3];
  }

  if ([(SXMotionImageComponentBehaviorHandler *)self vertical])
  {
    v41 = [objc_alloc(MEMORY[0x1E69DCB10]) initWithKeyPath:@"center.y" type:1];
    [(SXMotionImageComponentBehaviorHandler *)self setYMotionEffect:v41];

    if (windowed)
    {
      v42 = v5;
    }

    else
    {
      v42 = -v5;
    }

    if (windowed)
    {
      v5 = -v5;
    }

    v43 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
    yMotionEffect = [(SXMotionImageComponentBehaviorHandler *)self yMotionEffect];
    [yMotionEffect setMinimumRelativeValue:v43];

    v45 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
    yMotionEffect2 = [(SXMotionImageComponentBehaviorHandler *)self yMotionEffect];
    [yMotionEffect2 setMaximumRelativeValue:v45];

    motionContentView12 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    yMotionEffect3 = [(SXMotionImageComponentBehaviorHandler *)self yMotionEffect];
    [motionContentView12 addMotionEffect:yMotionEffect3];
  }
}

- (void)destroyMotionDetection
{
  xMotionEffect = [(SXMotionImageComponentBehaviorHandler *)self xMotionEffect];

  if (xMotionEffect)
  {
    motionContentView = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    xMotionEffect2 = [(SXMotionImageComponentBehaviorHandler *)self xMotionEffect];
    [motionContentView removeMotionEffect:xMotionEffect2];

    [(SXMotionImageComponentBehaviorHandler *)self setXMotionEffect:0];
  }

  yMotionEffect = [(SXMotionImageComponentBehaviorHandler *)self yMotionEffect];

  if (yMotionEffect)
  {
    motionContentView2 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    yMotionEffect2 = [(SXMotionImageComponentBehaviorHandler *)self yMotionEffect];
    [motionContentView2 removeMotionEffect:yMotionEffect2];

    [(SXMotionImageComponentBehaviorHandler *)self setYMotionEffect:0];
  }

  clippingView = [(SXMotionImageComponentBehaviorHandler *)self clippingView];

  if (clippingView)
  {
    clippingView2 = [(SXMotionImageComponentBehaviorHandler *)self clippingView];
    superview = [clippingView2 superview];
    motionContentView3 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    [superview insertSubview:motionContentView3 atIndex:{-[SXMotionImageComponentBehaviorHandler viewHierarchyIndex](self, "viewHierarchyIndex")}];

    clippingView3 = [(SXMotionImageComponentBehaviorHandler *)self clippingView];
    [clippingView3 removeFromSuperview];

    [(SXMotionImageComponentBehaviorHandler *)self setViewHierarchyIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  componentView = [(SXComponentBehaviorHandler *)self componentView];
  motionContentView4 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
  behavior = [(SXComponentBehaviorHandler *)self behavior];
  [componentView originalFrameForContentView:motionContentView4 behavior:behavior];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  motionContentView5 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
  [motionContentView5 setFrame:{v18, v20, v22, v24}];

  [(SXMotionImageComponentBehaviorHandler *)self setMotionContentView:0];
}

- (void)updateEdgeAntialiasingForViewport:(id)viewport
{
  v4 = [viewport appearState] == 2;
  clippingView = [(SXMotionImageComponentBehaviorHandler *)self clippingView];
  layer = [clippingView layer];
  [layer setAllowsEdgeAntialiasing:v4];

  motionContentView = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
  layer2 = [motionContentView layer];
  [layer2 setAllowsEdgeAntialiasing:v4];
}

@end
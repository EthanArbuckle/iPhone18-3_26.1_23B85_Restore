@interface SXMotionImageComponentBehaviorHandler
- (SXMotionImageComponentBehaviorHandler)initWithComponentView:(id)a3 withBehavior:(id)a4;
- (void)destroyMotionDetection;
- (void)destroyWithBehaviorController:(id)a3;
- (void)setupMotionDetection;
- (void)setupWithBehaviorController:(id)a3;
- (void)updateEdgeAntialiasingForViewport:(id)a3;
@end

@implementation SXMotionImageComponentBehaviorHandler

- (SXMotionImageComponentBehaviorHandler)initWithComponentView:(id)a3 withBehavior:(id)a4
{
  v12.receiver = self;
  v12.super_class = SXMotionImageComponentBehaviorHandler;
  v4 = [(SXComponentBehaviorHandler *)&v12 initWithComponentView:a3 withBehavior:a4];
  v5 = v4;
  if (v4)
  {
    v4->_viewHierarchyIndex = 0x7FFFFFFFFFFFFFFFLL;
    v6 = [(SXComponentBehaviorHandler *)v4 behavior];
    [v6 amplitude];
    v5->_amplitude = v7;

    v8 = [(SXComponentBehaviorHandler *)v5 behavior];
    v5->_windowed = [v8 windowed];

    v9 = [(SXComponentBehaviorHandler *)v5 behavior];
    v5->_horizontal = [v9 horizontal];

    v10 = [(SXComponentBehaviorHandler *)v5 behavior];
    v5->_vertical = [v10 vertical];
  }

  return v5;
}

- (void)setupWithBehaviorController:(id)a3
{
  v7.receiver = self;
  v7.super_class = SXMotionImageComponentBehaviorHandler;
  v4 = a3;
  [(SXComponentBehaviorHandler *)&v7 setupWithBehaviorController:v4];
  [(SXMotionImageComponentBehaviorHandler *)self setupMotionDetection:v7.receiver];
  v5 = [v4 viewport];
  [(SXMotionImageComponentBehaviorHandler *)self updateEdgeAntialiasingForViewport:v5];

  v6 = [v4 viewport];

  [v6 addViewportChangeListener:self forOptions:8];
}

- (void)destroyWithBehaviorController:(id)a3
{
  v6.receiver = self;
  v6.super_class = SXMotionImageComponentBehaviorHandler;
  v4 = a3;
  [(SXComponentBehaviorHandler *)&v6 destroyWithBehaviorController:v4];
  [(SXMotionImageComponentBehaviorHandler *)self destroyMotionDetection:v6.receiver];
  v5 = [v4 viewport];

  [v5 removeViewportChangeListener:self forOptions:8];
}

- (void)setupMotionDetection
{
  v3 = [(SXComponentBehaviorHandler *)self behaviorView];
  [(SXMotionImageComponentBehaviorHandler *)self setMotionContentView:v3];

  [(SXMotionImageComponentBehaviorHandler *)self amplitude];
  v5 = v4;
  v6 = [(SXMotionImageComponentBehaviorHandler *)self windowed];
  if ([(SXMotionImageComponentBehaviorHandler *)self windowed])
  {
    v7 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    v8 = [v7 superview];
    v9 = [v8 subviews];
    v10 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    -[SXMotionImageComponentBehaviorHandler setViewHierarchyIndex:](self, "setViewHierarchyIndex:", [v9 indexOfObject:v10]);

    v11 = [(SXMotionImageComponentBehaviorHandler *)self clippingView];

    if (!v11)
    {
      v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
      [(SXMotionImageComponentBehaviorHandler *)self setClippingView:v12];

      v13 = [(SXMotionImageComponentBehaviorHandler *)self clippingView];
      [v13 setClipsToBounds:1];
    }

    v14 = [(SXMotionImageComponentBehaviorHandler *)self clippingView];
    v15 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    [v15 frame];
    [v14 setFrame:?];

    v16 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    [v16 bounds];
    v51 = CGRectInset(v50, -v5, -v5);
    x = v51.origin.x;
    y = v51.origin.y;
    width = v51.size.width;
    height = v51.size.height;
    v21 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    [v21 setFrame:{x, y, width, height}];

    v22 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    objc_opt_class();
    LOBYTE(v21) = objc_opt_isKindOfClass();

    if (v21)
    {
      v23 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
      v24 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
      [v24 frame];
      [v23 fillFrameWithBoundingSize:{v25, v26}];
      [v23 setContentFrame:?];
    }

    v27 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    v28 = [v27 superview];
    v29 = [(SXMotionImageComponentBehaviorHandler *)self clippingView];
    [v28 insertSubview:v29 atIndex:{-[SXMotionImageComponentBehaviorHandler viewHierarchyIndex](self, "viewHierarchyIndex")}];

    v30 = [(SXMotionImageComponentBehaviorHandler *)self clippingView];
    v31 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    [v30 addSubview:v31];
  }

  if ([(SXMotionImageComponentBehaviorHandler *)self horizontal])
  {
    v32 = [objc_alloc(MEMORY[0x1E69DCB10]) initWithKeyPath:@"center.x" type:0];
    [(SXMotionImageComponentBehaviorHandler *)self setXMotionEffect:v32];

    if (v6)
    {
      v33 = v5;
    }

    else
    {
      v33 = -v5;
    }

    if (v6)
    {
      v34 = -v5;
    }

    else
    {
      v34 = v5;
    }

    v35 = [MEMORY[0x1E696AD98] numberWithDouble:v33];
    v36 = [(SXMotionImageComponentBehaviorHandler *)self xMotionEffect];
    [v36 setMinimumRelativeValue:v35];

    v37 = [MEMORY[0x1E696AD98] numberWithDouble:v34];
    v38 = [(SXMotionImageComponentBehaviorHandler *)self xMotionEffect];
    [v38 setMaximumRelativeValue:v37];

    v39 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    v40 = [(SXMotionImageComponentBehaviorHandler *)self xMotionEffect];
    [v39 addMotionEffect:v40];
  }

  if ([(SXMotionImageComponentBehaviorHandler *)self vertical])
  {
    v41 = [objc_alloc(MEMORY[0x1E69DCB10]) initWithKeyPath:@"center.y" type:1];
    [(SXMotionImageComponentBehaviorHandler *)self setYMotionEffect:v41];

    if (v6)
    {
      v42 = v5;
    }

    else
    {
      v42 = -v5;
    }

    if (v6)
    {
      v5 = -v5;
    }

    v43 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
    v44 = [(SXMotionImageComponentBehaviorHandler *)self yMotionEffect];
    [v44 setMinimumRelativeValue:v43];

    v45 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
    v46 = [(SXMotionImageComponentBehaviorHandler *)self yMotionEffect];
    [v46 setMaximumRelativeValue:v45];

    v48 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    v47 = [(SXMotionImageComponentBehaviorHandler *)self yMotionEffect];
    [v48 addMotionEffect:v47];
  }
}

- (void)destroyMotionDetection
{
  v3 = [(SXMotionImageComponentBehaviorHandler *)self xMotionEffect];

  if (v3)
  {
    v4 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    v5 = [(SXMotionImageComponentBehaviorHandler *)self xMotionEffect];
    [v4 removeMotionEffect:v5];

    [(SXMotionImageComponentBehaviorHandler *)self setXMotionEffect:0];
  }

  v6 = [(SXMotionImageComponentBehaviorHandler *)self yMotionEffect];

  if (v6)
  {
    v7 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    v8 = [(SXMotionImageComponentBehaviorHandler *)self yMotionEffect];
    [v7 removeMotionEffect:v8];

    [(SXMotionImageComponentBehaviorHandler *)self setYMotionEffect:0];
  }

  v9 = [(SXMotionImageComponentBehaviorHandler *)self clippingView];

  if (v9)
  {
    v10 = [(SXMotionImageComponentBehaviorHandler *)self clippingView];
    v11 = [v10 superview];
    v12 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
    [v11 insertSubview:v12 atIndex:{-[SXMotionImageComponentBehaviorHandler viewHierarchyIndex](self, "viewHierarchyIndex")}];

    v13 = [(SXMotionImageComponentBehaviorHandler *)self clippingView];
    [v13 removeFromSuperview];

    [(SXMotionImageComponentBehaviorHandler *)self setViewHierarchyIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  v14 = [(SXComponentBehaviorHandler *)self componentView];
  v15 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
  v16 = [(SXComponentBehaviorHandler *)self behavior];
  [v14 originalFrameForContentView:v15 behavior:v16];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
  [v25 setFrame:{v18, v20, v22, v24}];

  [(SXMotionImageComponentBehaviorHandler *)self setMotionContentView:0];
}

- (void)updateEdgeAntialiasingForViewport:(id)a3
{
  v4 = [a3 appearState] == 2;
  v5 = [(SXMotionImageComponentBehaviorHandler *)self clippingView];
  v6 = [v5 layer];
  [v6 setAllowsEdgeAntialiasing:v4];

  v8 = [(SXMotionImageComponentBehaviorHandler *)self motionContentView];
  v7 = [v8 layer];
  [v7 setAllowsEdgeAntialiasing:v4];
}

@end
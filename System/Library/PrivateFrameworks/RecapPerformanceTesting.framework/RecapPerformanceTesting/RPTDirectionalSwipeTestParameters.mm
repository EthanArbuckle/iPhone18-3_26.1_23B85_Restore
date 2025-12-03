@interface RPTDirectionalSwipeTestParameters
- (CGRect)scrollingBounds;
- (RPTDirectionalSwipeTestParameters)initWithTestName:(id)name scrollingBounds:(CGRect)bounds swipeCount:(int64_t)count direction:(int64_t)direction completionHandler:(id)handler;
- (RPTDirectionalSwipeTestParameters)initWithTestName:(id)name scrollingBounds:(CGRect)bounds swipeCount:(int64_t)count reverse:(BOOL)reverse direction:(int64_t)direction completionHandler:(id)handler;
- (RPTDirectionalSwipeTestParameters)initWithTestName:(id)name testType:(unint64_t)type scrollView:(id)view completionHandler:(id)handler;
- (id)composerBlock;
- (void)scrollWithComposer:(id)composer fromPoint:(CGPoint)point toPoint:(CGPoint)toPoint swipeDuration:(double)duration;
@end

@implementation RPTDirectionalSwipeTestParameters

- (RPTDirectionalSwipeTestParameters)initWithTestName:(id)name testType:(unint64_t)type scrollView:(id)view completionHandler:(id)handler
{
  nameCopy = name;
  viewCopy = view;
  handlerCopy = handler;
  v13 = RPTDefaultScrollDirection(viewCopy);
  v14 = RPTContentSizeInDirection(viewCopy, v13);
  x = RPTGetBoundsForView(viewCopy);
  y = v16;
  width = v18;
  height = v20;
  if (type == 2)
  {
    v22 = 1;
LABEL_8:
    v26 = _UIScrollDirectionFromRPTScrollDirection(v13);
    v27 = RPTAxisFromScrollDirection(v26);
    v28 = RPTSizeAlongAxis(v27, width, height);
    v25 = vcvtpd_s64_f64(v14 / v28);
    v29 = floor(v28 - v14 / ceil(v14 / v28));
    v30 = _UIScrollDirectionFromRPTScrollDirection(v13);
    v31 = RPTAxisFromScrollDirection(v30);
    if (v31)
    {
      if (!v31)
      {
        goto LABEL_14;
      }

      v32 = 0.0;
      v33 = x;
      v34 = y;
      v35 = width;
      v36 = height;
      v37 = v29;
    }

    else
    {
      v37 = 0.0;
      v33 = x;
      v34 = y;
      v35 = width;
      v36 = height;
      v32 = v29;
    }

    v44 = CGRectInset(*&v33, v37, v32);
    x = v44.origin.x;
    y = v44.origin.y;
    width = v44.size.width;
    height = v44.size.height;
    goto LABEL_14;
  }

  v22 = 0;
  if (type == 1)
  {
    goto LABEL_8;
  }

  if (type)
  {
    v25 = 1;
  }

  else
  {
    v23 = _RPTAxisFromScrollDirection(v13);
    v22 = 0;
    v24 = ceil(v14 / RPTSizeAlongAxis(v23, width, height));
    if (v24 < 1.0)
    {
      v24 = 1.0;
    }

    v25 = v24;
  }

LABEL_14:
  height = [(RPTDirectionalSwipeTestParameters *)self initWithTestName:nameCopy scrollingBounds:v25 swipeCount:v22 reverse:v13 direction:handlerCopy completionHandler:x, y, width, height];
  window = [viewCopy window];
  window2 = [viewCopy window];
  screen = [window2 screen];
  v42 = [RPTCoordinateSpaceConverter converterFromWindow:window toScreen:screen];
  [(RPTDirectionalSwipeTestParameters *)height setConversion:v42];

  return height;
}

- (RPTDirectionalSwipeTestParameters)initWithTestName:(id)name scrollingBounds:(CGRect)bounds swipeCount:(int64_t)count direction:(int64_t)direction completionHandler:(id)handler
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  handlerCopy = handler;
  nameCopy = name;
  height = [(RPTDirectionalSwipeTestParameters *)self initWithTestName:nameCopy scrollingBounds:count swipeCount:0 reverse:_RPTScrollDirectionFromUIScrollDirection(direction) direction:handlerCopy completionHandler:x, y, width, height];

  return height;
}

- (RPTDirectionalSwipeTestParameters)initWithTestName:(id)name scrollingBounds:(CGRect)bounds swipeCount:(int64_t)count reverse:(BOOL)reverse direction:(int64_t)direction completionHandler:(id)handler
{
  reverseCopy = reverse;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  nameCopy = name;
  handlerCopy = handler;
  v23.receiver = self;
  v23.super_class = RPTDirectionalSwipeTestParameters;
  v19 = [(RPTDirectionalSwipeTestParameters *)&v23 init];
  v20 = v19;
  if (v19)
  {
    [(RPTDirectionalSwipeTestParameters *)v19 setTestName:nameCopy];
    [(RPTDirectionalSwipeTestParameters *)v20 setScrollingBounds:x, y, width, height];
    [(RPTDirectionalSwipeTestParameters *)v20 setSwipeCount:count];
    [(RPTDirectionalSwipeTestParameters *)v20 setReverse:reverseCopy];
    [(RPTDirectionalSwipeTestParameters *)v20 setDirection:_UIScrollDirectionFromRPTScrollDirection(direction)];
    [(RPTDirectionalSwipeTestParameters *)v20 setCompletionHandler:handlerCopy];
    [(RPTDirectionalSwipeTestParameters *)v20 setSwipeSpeedFactor:&unk_28742EA48];
    v21 = +[RPTCoordinateSpaceConverter identityConverter];
    [(RPTDirectionalSwipeTestParameters *)v20 setConversion:v21];
  }

  return v20;
}

- (id)composerBlock
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__RPTDirectionalSwipeTestParameters_composerBlock__block_invoke;
  v4[3] = &unk_279AF38A8;
  v4[4] = self;
  v2 = MEMORY[0x2667162B0](v4, a2);

  return v2;
}

void __50__RPTDirectionalSwipeTestParameters_composerBlock__block_invoke(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v28 setTouchCurveFunction:v3];
  if (objc_opt_respondsToSelector())
  {
    [v28 setValue:v3 forKey:@"pointerCurveFunction"];
  }

  [*(a1 + 32) scrollingBounds];
  MidX = CGRectGetMidX(v30);
  [*(a1 + 32) scrollingBounds];
  MidY = CGRectGetMidY(v31);
  [*(a1 + 32) scrollingBounds];
  v7 = v6;
  v9 = v8;
  v10 = RPTAxisFromScrollDirection([*(a1 + 32) direction]);
  v11 = RPTSizeAlongAxis(v10, v7, v9);
  v12 = [*(a1 + 32) swipeSpeedFactor];
  [v12 doubleValue];
  v14 = v11 / 600.0 * v13;

  v15 = _RPTScrollDirectionFromUIScrollDirection([*(a1 + 32) direction]);
  v16 = v11 * 0.5 + 1.0;
  v17 = RPTCGPointAdvanceInDirectionByAmount(v15, MidX, MidY, v16);
  v19 = v18;
  v20 = RPTOppositeDirectionFrom(v15);
  v21 = RPTCGPointAdvanceInDirectionByAmount(v20, MidX, MidY, v16);
  v23 = v22;
  if ([*(a1 + 32) swipeCount] < 1)
  {
    LOBYTE(v24) = 0;
  }

  else
  {
    v24 = 0;
    do
    {
      if (v24)
      {
        v25 = 0.6666;
      }

      else
      {
        v25 = 1.25;
      }

      [*(a1 + 32) scrollWithComposer:v28 fromPoint:v17 toPoint:v19 swipeDuration:{v21, v23, v14 * v25}];
      ++v24;
    }

    while (v24 < [*(a1 + 32) swipeCount]);
  }

  if ([*(a1 + 32) reverse] && objc_msgSend(*(a1 + 32), "swipeCount") >= 1)
  {
    v26 = 0;
    do
    {
      if (v24)
      {
        v27 = 0.6666;
      }

      else
      {
        v27 = 1.5;
      }

      [*(a1 + 32) scrollWithComposer:v28 fromPoint:v21 toPoint:v23 swipeDuration:{v17, v19, v14 * v27}];
      LOBYTE(v24) = v24 ^ 1;
      ++v26;
    }

    while (v26 < [*(a1 + 32) swipeCount]);
  }
}

- (void)scrollWithComposer:(id)composer fromPoint:(CGPoint)point toPoint:(CGPoint)toPoint swipeDuration:(double)duration
{
  y = toPoint.y;
  x = toPoint.x;
  v9 = point.y;
  v10 = point.x;
  composerCopy = composer;
  if (self->_shouldFlick && ([composerCopy interactionOptions], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "prefersPointer"), v12, (v13 & 1) == 0))
  {
    conversion = [(RPTDirectionalSwipeTestParameters *)self conversion];
    [conversion convertPoint:{v10, v9}];
    v24 = v23;
    v26 = v25;
    conversion2 = [(RPTDirectionalSwipeTestParameters *)self conversion];
    [conversion2 convertPoint:{x, y}];
    [composerCopy sendFlickWithStartPoint:v24 endPoint:v26 duration:{v28, v29, duration * 0.7}];

    [composerCopy advanceTime:duration * 0.3];
  }

  else
  {
    conversion3 = [(RPTDirectionalSwipeTestParameters *)self conversion];
    [conversion3 convertPoint:{v10, v9}];
    v16 = v15;
    v18 = v17;
    conversion4 = [(RPTDirectionalSwipeTestParameters *)self conversion];
    [conversion4 convertVector:{x - v10, y - v9}];
    [composerCopy pointerOrFingerScrollAt:v16 byDelta:v18 duration:{v20, v21, duration}];
  }
}

- (CGRect)scrollingBounds
{
  x = self->_scrollingBounds.origin.x;
  y = self->_scrollingBounds.origin.y;
  width = self->_scrollingBounds.size.width;
  height = self->_scrollingBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
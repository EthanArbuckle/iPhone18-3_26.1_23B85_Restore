@interface RPTPagingScrollTestParameters
- (CGRect)scrollingBounds;
- (RPTPagingScrollTestParameters)initWithTestName:(id)name iterations:(unint64_t)iterations scrollingBounds:(CGRect)bounds amplitude:(double)amplitude direction:(int64_t)direction iterationDuration:(double)duration useFlicks:(BOOL)flicks completionHandler:(id)self0;
- (id)composerBlock;
- (pair<CGPoint,)initialAndFinalPositions;
- (void)scrollWithComposer:(id)composer fromPoint:(CGPoint)point toPoint:(CGPoint)toPoint duration:(double)duration;
@end

@implementation RPTPagingScrollTestParameters

- (RPTPagingScrollTestParameters)initWithTestName:(id)name iterations:(unint64_t)iterations scrollingBounds:(CGRect)bounds amplitude:(double)amplitude direction:(int64_t)direction iterationDuration:(double)duration useFlicks:(BOOL)flicks completionHandler:(id)self0
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  nameCopy = name;
  handlerCopy = handler;
  v39.receiver = self;
  v39.super_class = RPTPagingScrollTestParameters;
  v23 = [(RPTPagingScrollTestParameters *)&v39 init];
  if (v23)
  {
    v24 = [nameCopy copy];
    testName = v23->_testName;
    v23->_testName = v24;

    v23->_iterations = iterations;
    v23->_scrollingBounds.origin.x = x;
    v23->_scrollingBounds.origin.y = y;
    v23->_scrollingBounds.size.width = width;
    v23->_scrollingBounds.size.height = height;
    v23->_amplitude = amplitude;
    v23->_useFlicks = flicks;
    v23->_direction = direction;
    v23->_iterationDuration = duration;
    v26 = MEMORY[0x2667162B0](handlerCopy);
    completionHandler = v23->_completionHandler;
    v23->_completionHandler = v26;

    v28 = +[RPTCoordinateSpaceConverter identityConverter];
    conversion = v23->_conversion;
    v23->_conversion = v28;

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    windows = [mEMORY[0x277D75128] windows];
    firstObject = [windows firstObject];

    v33 = [RPTCoordinateSpaceConverter converterFromWindow:firstObject];
    v34 = v23->_conversion;
    v23->_conversion = v33;

    if (direction == 6 || direction == 5)
    {
      mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
      userInterfaceLayoutDirection = [mEMORY[0x277D75128]2 userInterfaceLayoutDirection];
      v37 = 1;
      if (userInterfaceLayoutDirection)
      {
        v37 = 2;
      }

      v23->_realDirection = v37;
    }

    else
    {
      v23->_realDirection = direction;
    }
  }

  return v23;
}

- (id)composerBlock
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__RPTPagingScrollTestParameters_composerBlock__block_invoke;
  v4[3] = &unk_279AF3858;
  v4[4] = self;
  v2 = MEMORY[0x2667162B0](v4, a2);

  return v2;
}

void __46__RPTPagingScrollTestParameters_composerBlock__block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  [*(a1 + 32) initialAndFinalPositions];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  for (i = 1; i <= [*(a1 + 32) iterations]; ++i)
  {
    v12 = *(a1 + 32);
    [v12 iterationDuration];
    [v12 scrollWithComposer:v14 fromPoint:v4 toPoint:v6 duration:{v8, v10, v13}];
  }
}

- (void)scrollWithComposer:(id)composer fromPoint:(CGPoint)point toPoint:(CGPoint)toPoint duration:(double)duration
{
  y = toPoint.y;
  x = toPoint.x;
  v9 = point.y;
  v10 = point.x;
  composerCopy = composer;
  if (-[RPTPagingScrollTestParameters useFlicks](self, "useFlicks") && ([composerCopy interactionOptions], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "prefersPointer"), v12, (v13 & 1) == 0))
  {
    conversion = [(RPTPagingScrollTestParameters *)self conversion];
    [conversion convertPoint:{v10, v9}];
    v24 = v23;
    v26 = v25;
    conversion2 = [(RPTPagingScrollTestParameters *)self conversion];
    [conversion2 convertPoint:{x, y}];
    [composerCopy sendFlickWithStartPoint:v24 endPoint:v26 duration:{v28, v29, 0.5}];

    [composerCopy advanceTime:duration + -0.5];
  }

  else
  {
    conversion3 = [(RPTPagingScrollTestParameters *)self conversion];
    [conversion3 convertPoint:{v10, v9}];
    v16 = v15;
    v18 = v17;
    conversion4 = [(RPTPagingScrollTestParameters *)self conversion];
    [conversion4 convertVector:{x - v10, y - v9}];
    [composerCopy pointerOrFingerScrollAt:v16 byDelta:v18 duration:{v20, v21, duration}];

    [composerCopy advanceTime:0.2];
  }
}

- (pair<CGPoint,)initialAndFinalPositions
{
  [(RPTPagingScrollTestParameters *)self scrollingBounds];
  Midpoint = RPTCGRectGetMidpoint(v3, v4, v5, v6);
  v9 = v8;
  realDirection = [(RPTPagingScrollTestParameters *)self realDirection];
  [(RPTPagingScrollTestParameters *)self scrollingBounds];
  if (realDirection > 2)
  {
    if (realDirection == 4)
    {
      v9 = CGRectGetMinY(*&v11) + 1.5;
      [(RPTPagingScrollTestParameters *)self amplitude];
      v18 = v9 + v20;
    }

    else
    {
      if (realDirection != 3)
      {
        goto LABEL_7;
      }

      v9 = CGRectGetMaxY(*&v11) + -1.5;
      [(RPTPagingScrollTestParameters *)self amplitude];
      v18 = v9 - v17;
    }

    v16 = Midpoint;
    goto LABEL_11;
  }

  if (realDirection != 2)
  {
LABEL_7:
    Midpoint = CGRectGetMaxX(*&v11) + -1.5;
    [(RPTPagingScrollTestParameters *)self amplitude];
    v16 = Midpoint - v19;
    goto LABEL_8;
  }

  Midpoint = CGRectGetMinX(*&v11) + 1.5;
  [(RPTPagingScrollTestParameters *)self amplitude];
  v16 = Midpoint + v15;
LABEL_8:
  v18 = v9;
LABEL_11:
  v21 = Midpoint;
  v22 = v9;
  result.var1.y = v18;
  result.var1.x = v16;
  result.var0.y = v22;
  result.var0.x = v21;
  return result;
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
@interface RPTPagingScrollTestParameters
- (CGRect)scrollingBounds;
- (RPTPagingScrollTestParameters)initWithTestName:(id)a3 iterations:(unint64_t)a4 scrollingBounds:(CGRect)a5 amplitude:(double)a6 direction:(int64_t)a7 iterationDuration:(double)a8 useFlicks:(BOOL)a9 completionHandler:(id)a10;
- (id)composerBlock;
- (pair<CGPoint,)initialAndFinalPositions;
- (void)scrollWithComposer:(id)a3 fromPoint:(CGPoint)a4 toPoint:(CGPoint)a5 duration:(double)a6;
@end

@implementation RPTPagingScrollTestParameters

- (RPTPagingScrollTestParameters)initWithTestName:(id)a3 iterations:(unint64_t)a4 scrollingBounds:(CGRect)a5 amplitude:(double)a6 direction:(int64_t)a7 iterationDuration:(double)a8 useFlicks:(BOOL)a9 completionHandler:(id)a10
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v21 = a3;
  v22 = a10;
  v39.receiver = self;
  v39.super_class = RPTPagingScrollTestParameters;
  v23 = [(RPTPagingScrollTestParameters *)&v39 init];
  if (v23)
  {
    v24 = [v21 copy];
    testName = v23->_testName;
    v23->_testName = v24;

    v23->_iterations = a4;
    v23->_scrollingBounds.origin.x = x;
    v23->_scrollingBounds.origin.y = y;
    v23->_scrollingBounds.size.width = width;
    v23->_scrollingBounds.size.height = height;
    v23->_amplitude = a6;
    v23->_useFlicks = a9;
    v23->_direction = a7;
    v23->_iterationDuration = a8;
    v26 = MEMORY[0x2667162B0](v22);
    completionHandler = v23->_completionHandler;
    v23->_completionHandler = v26;

    v28 = +[RPTCoordinateSpaceConverter identityConverter];
    conversion = v23->_conversion;
    v23->_conversion = v28;

    v30 = [MEMORY[0x277D75128] sharedApplication];
    v31 = [v30 windows];
    v32 = [v31 firstObject];

    v33 = [RPTCoordinateSpaceConverter converterFromWindow:v32];
    v34 = v23->_conversion;
    v23->_conversion = v33;

    if (a7 == 6 || a7 == 5)
    {
      v35 = [MEMORY[0x277D75128] sharedApplication];
      v36 = [v35 userInterfaceLayoutDirection];
      v37 = 1;
      if (v36)
      {
        v37 = 2;
      }

      v23->_realDirection = v37;
    }

    else
    {
      v23->_realDirection = a7;
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

- (void)scrollWithComposer:(id)a3 fromPoint:(CGPoint)a4 toPoint:(CGPoint)a5 duration:(double)a6
{
  y = a5.y;
  x = a5.x;
  v9 = a4.y;
  v10 = a4.x;
  v30 = a3;
  if (-[RPTPagingScrollTestParameters useFlicks](self, "useFlicks") && ([v30 interactionOptions], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "prefersPointer"), v12, (v13 & 1) == 0))
  {
    v22 = [(RPTPagingScrollTestParameters *)self conversion];
    [v22 convertPoint:{v10, v9}];
    v24 = v23;
    v26 = v25;
    v27 = [(RPTPagingScrollTestParameters *)self conversion];
    [v27 convertPoint:{x, y}];
    [v30 sendFlickWithStartPoint:v24 endPoint:v26 duration:{v28, v29, 0.5}];

    [v30 advanceTime:a6 + -0.5];
  }

  else
  {
    v14 = [(RPTPagingScrollTestParameters *)self conversion];
    [v14 convertPoint:{v10, v9}];
    v16 = v15;
    v18 = v17;
    v19 = [(RPTPagingScrollTestParameters *)self conversion];
    [v19 convertVector:{x - v10, y - v9}];
    [v30 pointerOrFingerScrollAt:v16 byDelta:v18 duration:{v20, v21, a6}];

    [v30 advanceTime:0.2];
  }
}

- (pair<CGPoint,)initialAndFinalPositions
{
  [(RPTPagingScrollTestParameters *)self scrollingBounds];
  Midpoint = RPTCGRectGetMidpoint(v3, v4, v5, v6);
  v9 = v8;
  v10 = [(RPTPagingScrollTestParameters *)self realDirection];
  [(RPTPagingScrollTestParameters *)self scrollingBounds];
  if (v10 > 2)
  {
    if (v10 == 4)
    {
      v9 = CGRectGetMinY(*&v11) + 1.5;
      [(RPTPagingScrollTestParameters *)self amplitude];
      v18 = v9 + v20;
    }

    else
    {
      if (v10 != 3)
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

  if (v10 != 2)
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
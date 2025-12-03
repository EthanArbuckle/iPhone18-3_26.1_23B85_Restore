@interface RPTPagingScrollViewTestParameters
- (CGRect)scrollingBounds;
- (RPTPagingScrollViewTestParameters)initWithTestName:(id)name scrollBounds:(CGRect)bounds scrollContentLength:(double)length direction:(int64_t)direction completionHandler:(id)handler;
- (RPTPagingScrollViewTestParameters)initWithTestName:(id)name scrollView:(id)view completionHandler:(id)handler;
- (id)composerBlock;
- (void)positionsForDirection:(int64_t)direction startOut:(CGPoint *)out endOut:(CGPoint *)endOut;
- (void)swipeWithComposer:(id)composer fromPoint:(CGPoint)point toPoint:(CGPoint)toPoint duration:(double)duration;
@end

@implementation RPTPagingScrollViewTestParameters

- (RPTPagingScrollViewTestParameters)initWithTestName:(id)name scrollBounds:(CGRect)bounds scrollContentLength:(double)length direction:(int64_t)direction completionHandler:(id)handler
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v44 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  v17 = RPTLogTestRunning();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    v18 = _RPTStringFromCGRect(v45);
    v19 = v18;
    *buf = 138544386;
    v20 = @"YES";
    v35 = nameCopy;
    v36 = 2114;
    if (!handlerCopy)
    {
      v20 = @"NULL";
    }

    v37 = v18;
    v38 = 2048;
    lengthCopy = length;
    v40 = 2050;
    directionCopy = direction;
    v42 = 2114;
    v43 = v20;
    _os_log_impl(&dword_261A17000, v17, OS_LOG_TYPE_DEFAULT, "RPT: [RPTPagingScrollViewTestParameters initWithTestName:]", buf, 0x34u);
  }

  v21 = _RPTAxisFromScrollDirection(direction);
  if (RPTSizeAlongAxis(v21, width, height) * 1.5 > length)
  {
    v22 = RPTLogTestRunning();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(RPTPagingScrollViewTestParameters *)v22 initWithTestName:y scrollBounds:width scrollContentLength:height direction:length completionHandler:?];
    }
  }

  v33.receiver = self;
  v33.super_class = RPTPagingScrollViewTestParameters;
  v23 = [(RPTPagingScrollViewTestParameters *)&v33 init];
  if (v23)
  {
    v24 = [nameCopy copy];
    testName = v23->_testName;
    v23->_testName = v24;

    v23->_scrollingBounds.origin.x = x;
    v23->_scrollingBounds.origin.y = y;
    v23->_scrollingBounds.size.width = width;
    v23->_scrollingBounds.size.height = height;
    v23->_scrollingContentLength = length;
    v23->_direction = _UIScrollDirectionFromRPTScrollDirection(direction);
    v26 = MEMORY[0x2667162B0](handlerCopy);
    completionHandler = v23->_completionHandler;
    v23->_completionHandler = v26;

    v28 = +[RPTCoordinateSpaceConverter identityConverter];
    conversion = v23->_conversion;
    v23->_conversion = v28;

    v30 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    curveFunction = v23->_curveFunction;
    v23->_curveFunction = v30;

    v23->_iterationDurationFactor = 1.0;
  }

  return v23;
}

- (RPTPagingScrollViewTestParameters)initWithTestName:(id)name scrollView:(id)view completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  viewCopy = view;
  handlerCopy = handler;
  v11 = RPTLogTestRunning();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"YES";
    v18 = 138543874;
    v19 = nameCopy;
    v20 = 2114;
    if (!handlerCopy)
    {
      v12 = @"NULL";
    }

    v21 = viewCopy;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&dword_261A17000, v11, OS_LOG_TYPE_DEFAULT, "RPT: [RPTPagingScrollViewTestParameters initWithTestName:]", &v18, 0x20u);
  }

  v13 = RPTDefaultScrollDirection(viewCopy);
  RPTContentSizeInDirection(viewCopy, v13);
  v14 = [(RPTPagingScrollViewTestParameters *)self initWithTestName:nameCopy scrollBounds:v13 scrollContentLength:handlerCopy direction:RPTGetBoundsForView(viewCopy) completionHandler:?];
  if (v14)
  {
    window = [viewCopy window];
    v16 = [RPTCoordinateSpaceConverter converterFromWindow:window];
    [(RPTPagingScrollViewTestParameters *)v14 setConversion:v16];
  }

  return v14;
}

- (id)composerBlock
{
  v3 = RPTLogTestRunning();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_261A17000, v3, OS_LOG_TYPE_DEFAULT, "RPT: RPTPagingScrollViewTestParameters composerBlock", buf, 2u);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__RPTPagingScrollViewTestParameters_composerBlock__block_invoke;
  v6[3] = &unk_279AF38A8;
  v6[4] = self;
  v4 = MEMORY[0x2667162B0](v6);

  return v4;
}

void __50__RPTPagingScrollViewTestParameters_composerBlock__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4[6])
  {
    [v3 setTouchCurveFunction:?];
    v5 = objc_opt_respondsToSelector();
    v4 = *(a1 + 32);
    if (v5)
    {
      [v3 setValue:v4[6] forKey:@"pointerCurveFunction"];
      v4 = *(a1 + 32);
    }
  }

  v6 = _RPTScrollDirectionFromUIScrollDirection([v4 direction]);
  [*(a1 + 32) scrollingBounds];
  v8 = v7;
  v10 = v9;
  v11 = _RPTAxisFromScrollDirection(v6);
  v12 = RPTSizeAlongAxis(v11, v8, v10);
  v13 = RPTLogTestRunning();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v12;
    _os_log_impl(&dword_261A17000, v13, OS_LOG_TYPE_DEFAULT, "RPT: RPTPagingScrollViewTestParameters pageLength %f", buf, 0xCu);
  }

  v14 = v12 * 10.0;
  [*(a1 + 32) scrollingContentLength];
  if (v15 >= v12 * 7.0)
  {
    v16 = v12 * 7.0;
  }

  else
  {
    v16 = v15;
  }

  v17 = RPTLogTestRunning();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v12;
    _os_log_impl(&dword_261A17000, v17, OS_LOG_TYPE_DEFAULT, "RPT: RPTPagingScrollViewTestParameters reversalOffset %f", buf, 0xCu);
  }

  if (v14 > 0.0)
  {
    v18 = fmax(v12 / 500.0, 1.5);
    if (v18 <= 0.5)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0.5;
    }

    v20 = 1;
    v21 = 0.0;
    do
    {
      v22 = v19;
      v23 = v6;
      if ((v21 / v16))
      {
        v23 = RPTOppositeDirectionFrom(v6);
        v22 = v19 * 0.5;
      }

      *buf = 0uLL;
      v26 = 0.0;
      v27 = 0.0;
      [*(a1 + 32) positionsForDirection:v23 startOut:buf endOut:&v26];
      if (v20)
      {
        v22 = v19 + v19;
      }

      v24 = *(a1 + 32);
      [v24 iterationDurationFactor];
      [v24 swipeWithComposer:v3 fromPoint:*buf toPoint:v26 duration:{v27, v22 * v25}];
      v20 = 0;
      v21 = (v12 + v21);
    }

    while (v14 > v21);
  }
}

- (void)positionsForDirection:(int64_t)direction startOut:(CGPoint *)out endOut:(CGPoint *)endOut
{
  [(RPTPagingScrollViewTestParameters *)self scrollingBounds];
  Midpoint = RPTCGRectGetMidpoint(v9, v10, v11, v12);
  v15 = v14;
  [(RPTPagingScrollViewTestParameters *)self scrollingBounds];
  v17 = v16;
  v19 = v18;
  v20 = _RPTAxisFromScrollDirection(direction);
  v21 = (RPTSizeAlongAxis(v20, v17, v19) + -20.0) * 0.5;
  v22 = 0.0;
  if (direction > 1)
  {
    if (direction == 2)
    {
      v25 = Midpoint + v21;
      v23 = Midpoint - v21;
    }

    else
    {
      v23 = 0.0;
      v24 = 0.0;
      v25 = 0.0;
      if (direction != 3)
      {
        goto LABEL_12;
      }

      v25 = Midpoint - v21;
      v23 = Midpoint + v21;
    }

    v22 = v15;
    v24 = v15;
    goto LABEL_12;
  }

  if (!direction)
  {
    v24 = v15 - v21;
    v22 = v15 + v21;
    goto LABEL_9;
  }

  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  if (direction == 1)
  {
    v24 = v15 + v21;
    v22 = v15 - v21;
LABEL_9:
    v23 = Midpoint;
    v25 = Midpoint;
  }

LABEL_12:
  out->x = v25;
  out->y = v24;
  endOut->x = v23;
  endOut->y = v22;
}

- (void)swipeWithComposer:(id)composer fromPoint:(CGPoint)point toPoint:(CGPoint)toPoint duration:(double)duration
{
  y = toPoint.y;
  x = toPoint.x;
  v9 = point.y;
  v10 = point.x;
  v30 = *MEMORY[0x277D85DE8];
  composerCopy = composer;
  v13 = RPTLogTestRunning();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v31.x = v10;
    v31.y = v9;
    v14 = _RPTStringFromCGPoint(v31);
    v32.x = x;
    v32.y = y;
    v15 = _RPTStringFromCGPoint(v32);
    v24 = 138543874;
    v25 = v14;
    v26 = 2114;
    v27 = v15;
    v28 = 2048;
    durationCopy = duration;
    _os_log_impl(&dword_261A17000, v13, OS_LOG_TYPE_DEFAULT, "RPT: RPTPagingScrollViewTestParameters swipeFromPoint: %{public}@ toPoint: %{public}@ duration:%f ", &v24, 0x20u);
  }

  conversion = [(RPTPagingScrollViewTestParameters *)self conversion];
  [conversion convertPoint:{v10, v9}];
  v18 = v17;
  v20 = v19;
  conversion2 = [(RPTPagingScrollViewTestParameters *)self conversion];
  [conversion2 convertVector:{x - v10, y - v9}];
  [composerCopy pointerOrFingerScrollAt:v18 byDelta:v20 duration:{v22, v23, duration}];

  [composerCopy advanceTime:0.4];
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

- (void)initWithTestName:(double)a3 scrollBounds:(double)a4 scrollContentLength:(double)a5 direction:(double)a6 completionHandler:.cold.1(NSObject *a1, double a2, double a3, double a4, double a5, double a6)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = _RPTStringFromCGRect(*&a2);
  v9 = 134218242;
  v10 = a6;
  v11 = 2114;
  v12 = v8;
  _os_log_error_impl(&dword_261A17000, a1, OS_LOG_TYPE_ERROR, "RPT: RPTPagingScrollViewTestParameters scrollContentLength: %f too short for scrollBounds %{public}@ for a meaningful test.", &v9, 0x16u);
}

@end
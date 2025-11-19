@interface RPTOscillationScrollTestParameters
- (CGPoint)_incrementPoint:(CGPoint)a3 final:(BOOL)a4;
- (CGPoint)finalFingerPosition;
- (CGPoint)initialFingerPosition;
- (CGRect)scrollingBounds;
- (RPTOscillationScrollTestParameters)initWithTestName:(id)a3 iterations:(unint64_t)a4 scrollingBounds:(CGRect)a5 useFlicks:(BOOL)a6 preventDismissalGestures:(BOOL)a7 initialAmplitude:(double)a8 amplitudeVariationPerIteration:(double)a9 initialDirection:(int64_t)a10 iterationDuration:(double)a11 finishWithHalfIteration:(BOOL)a12 completionHandler:(id)a13;
- (id)composerBlock;
- (void)scrollWithComposer:(id)a3 fromPoint:(CGPoint)a4 toPoint:(CGPoint)a5 duration:(double)a6;
@end

@implementation RPTOscillationScrollTestParameters

- (RPTOscillationScrollTestParameters)initWithTestName:(id)a3 iterations:(unint64_t)a4 scrollingBounds:(CGRect)a5 useFlicks:(BOOL)a6 preventDismissalGestures:(BOOL)a7 initialAmplitude:(double)a8 amplitudeVariationPerIteration:(double)a9 initialDirection:(int64_t)a10 iterationDuration:(double)a11 finishWithHalfIteration:(BOOL)a12 completionHandler:(id)a13
{
  v13 = a12;
  v15 = a7;
  v16 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v63 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v27 = a13;
  v28 = RPTLogTestRunning();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    v29 = _RPTStringFromCGRect(v64);
    v30 = v29;
    v31 = @"YES";
    *buf = 138545922;
    v42 = v26;
    v43 = 2050;
    if (!v27)
    {
      v31 = @"NULL";
    }

    v44 = a4;
    v45 = 2114;
    v46 = v29;
    v47 = 1024;
    v48 = v16;
    v49 = 1024;
    v50 = v15;
    v51 = 2048;
    v52 = a8;
    v53 = 2048;
    v54 = a9;
    v55 = 2050;
    v56 = a10;
    v57 = 2048;
    v58 = a11;
    v59 = 1024;
    v60 = v13;
    v61 = 2114;
    v62 = v31;
    _os_log_impl(&dword_261A17000, v28, OS_LOG_TYPE_DEFAULT, "RPT: [RPTOscillationScrollTestParameters initWithTestName:]", buf, 0x64u);
  }

  v40.receiver = self;
  v40.super_class = RPTOscillationScrollTestParameters;
  v32 = [(RPTOscillationScrollTestParameters *)&v40 init];
  if (v32)
  {
    v33 = [v26 copy];
    testName = v32->_testName;
    v32->_testName = v33;

    v32->_iterations = a4;
    v32->_scrollingBounds.origin.y = y;
    v32->_scrollingBounds.size.width = width;
    v32->_scrollingBounds.size.height = height;
    v32->_shouldFlick = v16;
    v32->_useDefaultDurationForFlick = 1.0;
    v32->_preventDismissalGestures = v15;
    v32->_amplitudeVariationPerIteration = a9;
    v32->_initialAmplitude = a8;
    v32->_initialDirection = a10;
    v32->_iterationDuration = a11;
    v32->_scrollingBounds.origin.x = x;
    v32->_finishWithHalfIteration = v13;
    v35 = MEMORY[0x2667162B0](v27);
    completionHandler = v32->_completionHandler;
    v32->_completionHandler = v35;

    v37 = +[RPTCoordinateSpaceConverter identityConverter];
    conversion = v32->_conversion;
    v32->_conversion = v37;
  }

  return v32;
}

- (CGPoint)_incrementPoint:(CGPoint)a3 final:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
  v6 = -(self->_amplitudeVariationPerIteration * 0.5);
  if (a4)
  {
    v6 = self->_amplitudeVariationPerIteration * 0.5;
  }

  initialDirection = self->_initialDirection;
  if (initialDirection == 3 || initialDirection == 0)
  {
    v9 = -v6;
  }

  else
  {
    v9 = v6;
  }

  v10 = _RPTAxisFromScrollDirection(initialDirection);
  v11 = y + v9;
  v12 = x + v9;
  if (v10)
  {
    v11 = y;
  }

  else
  {
    v12 = x;
  }

  result.y = v11;
  result.x = v12;
  return result;
}

- (id)composerBlock
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__RPTOscillationScrollTestParameters_composerBlock__block_invoke;
  v4[3] = &unk_279AF38A8;
  v4[4] = self;
  v2 = MEMORY[0x2667162B0](v4, a2);

  return v2;
}

uint64_t __51__RPTOscillationScrollTestParameters_composerBlock__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v28 = v3;
  if (v4[6])
  {
    [v3 setTouchCurveFunction:?];
    v5 = objc_opt_respondsToSelector();
    v4 = *(a1 + 32);
    if (v5)
    {
      [v28 setValue:v4[6] forKey:@"pointerCurveFunction"];
      v4 = *(a1 + 32);
    }
  }

  [v4 iterationDuration];
  v7 = v6;
  [*(a1 + 32) initialFingerPosition];
  v9 = v8;
  v11 = v10;
  [*(a1 + 32) finalFingerPosition];
  v13 = v12;
  v15 = v14;
  if ([*(a1 + 32) preventDismissalGestures])
  {
    v16 = RPTOppositeDirectionFrom([*(a1 + 32) initialDirection]);
    v17 = RPTCGPointAdvanceInDirectionByAmount(v16, v9, v11, 75.0);
    [v28 dragWithStartPoint:v9 endPoint:v11 duration:{v17, v18, 0.3}];
  }

  if (([*(a1 + 32) shouldFlick] & 1) == 0)
  {
    v19 = [*(a1 + 32) conversion];
    [v19 convertPoint:{v9, v11}];
    [v28 touchDown:?];
  }

  v20 = v7 * 0.5;
  if ([*(a1 + 32) iterations])
  {
    v21 = 1;
    do
    {
      [*(a1 + 32) scrollWithComposer:v28 fromPoint:v9 toPoint:v11 duration:{v13, v15, v20}];
      [*(a1 + 32) _incrementPoint:0 final:{v9, v11}];
      v9 = v22;
      v11 = v23;
      [*(a1 + 32) scrollWithComposer:v28 fromPoint:v13 toPoint:v15 duration:{v22, v23, v20}];
      [*(a1 + 32) _incrementPoint:1 final:{v13, v15}];
      v13 = v24;
      v15 = v25;
      ++v21;
    }

    while (v21 <= [*(a1 + 32) iterations]);
  }

  if ([*(a1 + 32) finishWithHalfIteration])
  {
    [*(a1 + 32) scrollWithComposer:v28 fromPoint:v9 toPoint:v11 duration:{v13, v15, v20}];
  }

  if (([*(a1 + 32) shouldFlick] & 1) == 0)
  {
    v26 = [*(a1 + 32) conversion];
    [v26 convertPoint:{v13, v15}];
    [v28 liftUp:?];
  }

  if (*(*(a1 + 32) + 48))
  {
    [v28 setTouchCurveFunction:0];
    if (objc_opt_respondsToSelector())
    {
      [v28 setValue:*(*(a1 + 32) + 48) forKey:@"pointerCurveFunction"];
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)scrollWithComposer:(id)a3 fromPoint:(CGPoint)a4 toPoint:(CGPoint)a5 duration:(double)a6
{
  y = a5.y;
  x = a5.x;
  v9 = a4.y;
  v10 = a4.x;
  v36 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = RPTLogTestRunning();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v37.x = v10;
    v37.y = v9;
    v14 = _RPTStringFromCGPoint(v37);
    v38.x = x;
    v38.y = y;
    v15 = _RPTStringFromCGPoint(v38);
    v28 = 138544130;
    v29 = v12;
    v30 = 2114;
    v31 = v14;
    v32 = 2114;
    v33 = v15;
    v34 = 2048;
    v35 = a6;
    _os_log_impl(&dword_261A17000, v13, OS_LOG_TYPE_DEFAULT, "RPT: [RPTOscillationScrollTestParameters scrollWithComposer:]", &v28, 0x2Au);
  }

  v16 = x - v10;
  v17 = y - v9;
  v18 = [(RPTOscillationScrollTestParameters *)self shouldFlick];
  v19 = [(RPTOscillationScrollTestParameters *)self conversion];
  [v19 convertPoint:{v10, v9}];
  v21 = v20;
  v23 = v22;
  v24 = [(RPTOscillationScrollTestParameters *)self conversion];
  [v24 convertVector:{v16, v17}];
  if (v18)
  {
    if (self->_useDefaultDurationForFlick == 0.0)
    {
      v27 = a6;
    }

    else
    {
      v27 = 0.5;
    }

    [v12 _pointerOrFingerFlickAt:v21 byDelta:v23 duration:{v25, v26, v27}];
  }

  else
  {
    [v12 _pointerOrFingerScrollAt:0 byDelta:v21 duration:v23 touchDownAndLift:{v25, v26, a6}];
  }
}

- (CGPoint)initialFingerPosition
{
  [(RPTOscillationScrollTestParameters *)self scrollingBounds];
  Midpoint = RPTCGRectGetMidpoint(v3, v4, v5, v6);
  v9 = v8;
  [(RPTOscillationScrollTestParameters *)self initialAmplitude];
  v11 = v10 * 0.5;
  v12 = [(RPTOscillationScrollTestParameters *)self initialDirection];

  v13 = RPTCGPointAdvanceInDirectionByAmount(v12, Midpoint, v9, v11);
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)finalFingerPosition
{
  [(RPTOscillationScrollTestParameters *)self scrollingBounds];
  Midpoint = RPTCGRectGetMidpoint(v3, v4, v5, v6);
  v9 = v8;
  [(RPTOscillationScrollTestParameters *)self initialAmplitude];
  v11 = v10 * 0.5;
  v12 = RPTOppositeDirectionFrom([(RPTOscillationScrollTestParameters *)self initialDirection]);

  v13 = RPTCGPointAdvanceInDirectionByAmount(v12, Midpoint, v9, v11);
  result.y = v14;
  result.x = v13;
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
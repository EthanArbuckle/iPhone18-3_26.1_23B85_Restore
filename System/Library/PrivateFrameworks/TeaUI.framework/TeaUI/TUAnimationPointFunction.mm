@interface TUAnimationPointFunction
- (CGPoint)endValue;
- (CGPoint)solveForTime:(double)a3;
- (CGPoint)startValue;
- (TUAnimationPointFunction)initWithTimingFunction:(id)a3 startRect:(CGPoint)a4 endRect:(CGPoint)a5 speed:(double)a6;
- (void)_reloadFunctions;
@end

@implementation TUAnimationPointFunction

- (TUAnimationPointFunction)initWithTimingFunction:(id)a3 startRect:(CGPoint)a4 endRect:(CGPoint)a5 speed:(double)a6
{
  y = a5.y;
  x = a5.x;
  v9 = a4.y;
  v10 = a4.x;
  v12 = a3;
  v17.receiver = self;
  v17.super_class = TUAnimationPointFunction;
  v13 = [(TUAnimationPointFunction *)&v17 init];
  if (v13)
  {
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    }

    timingFunction = v13->_timingFunction;
    v13->_timingFunction = v14;

    v13->_startValue.x = v10;
    v13->_startValue.y = v9;
    v13->_endValue.x = x;
    v13->_endValue.y = y;
    v13->_speed = a6;
    [(TUAnimationPointFunction *)v13 _reloadFunctions];
  }

  return v13;
}

- (CGPoint)solveForTime:(double)a3
{
  v5 = [(TUAnimationPointFunction *)self xFunction];
  [v5 solveForTime:a3];
  v7 = v6;
  v8 = [(TUAnimationPointFunction *)self yFunction];
  [v8 solveForTime:a3];
  v10 = v9;

  v11 = v7;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)_reloadFunctions
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__TUAnimationPointFunction__reloadFunctions__block_invoke;
  aBlock[3] = &unk_1E84F3E78;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  [(TUAnimationPointFunction *)self startValue];
  v5 = v4;
  [(TUAnimationPointFunction *)self endValue];
  v7 = v3[2](v3, v5, v6);
  [(TUAnimationPointFunction *)self setXFunction:v7];

  [(TUAnimationPointFunction *)self startValue];
  v9 = v8;
  [(TUAnimationPointFunction *)self endValue];
  v10 = (v3[2])(v3, v9);
  [(TUAnimationPointFunction *)self setYFunction:v10];
}

TUAnimationFloatFunction *__44__TUAnimationPointFunction__reloadFunctions__block_invoke(uint64_t a1, double a2, double a3)
{
  v6 = [TUAnimationFloatFunction alloc];
  v7 = [*(a1 + 32) timingFunction];
  [*(a1 + 32) speed];
  v9 = [(TUAnimationFloatFunction *)v6 initWithTimingFunction:v7 startValue:a2 endValue:a3 speed:v8];

  return v9;
}

- (CGPoint)startValue
{
  x = self->_startValue.x;
  y = self->_startValue.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endValue
{
  x = self->_endValue.x;
  y = self->_endValue.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
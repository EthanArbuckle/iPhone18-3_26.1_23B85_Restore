@interface TUAnimationPointFunction
- (CGPoint)endValue;
- (CGPoint)solveForTime:(double)time;
- (CGPoint)startValue;
- (TUAnimationPointFunction)initWithTimingFunction:(id)function startRect:(CGPoint)rect endRect:(CGPoint)endRect speed:(double)speed;
- (void)_reloadFunctions;
@end

@implementation TUAnimationPointFunction

- (TUAnimationPointFunction)initWithTimingFunction:(id)function startRect:(CGPoint)rect endRect:(CGPoint)endRect speed:(double)speed
{
  y = endRect.y;
  x = endRect.x;
  v9 = rect.y;
  v10 = rect.x;
  functionCopy = function;
  v17.receiver = self;
  v17.super_class = TUAnimationPointFunction;
  v13 = [(TUAnimationPointFunction *)&v17 init];
  if (v13)
  {
    if (functionCopy)
    {
      v14 = functionCopy;
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
    v13->_speed = speed;
    [(TUAnimationPointFunction *)v13 _reloadFunctions];
  }

  return v13;
}

- (CGPoint)solveForTime:(double)time
{
  xFunction = [(TUAnimationPointFunction *)self xFunction];
  [xFunction solveForTime:time];
  v7 = v6;
  yFunction = [(TUAnimationPointFunction *)self yFunction];
  [yFunction solveForTime:time];
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
@interface TUAnimationSizeFunction
- (CGSize)endValue;
- (CGSize)solveForTime:(double)time;
- (CGSize)startValue;
- (TUAnimationSizeFunction)initWithTimingFunction:(id)function startRect:(CGSize)rect endRect:(CGSize)endRect speed:(double)speed;
- (void)_reloadFunctions;
@end

@implementation TUAnimationSizeFunction

- (TUAnimationSizeFunction)initWithTimingFunction:(id)function startRect:(CGSize)rect endRect:(CGSize)endRect speed:(double)speed
{
  height = endRect.height;
  width = endRect.width;
  v9 = rect.height;
  v10 = rect.width;
  functionCopy = function;
  v17.receiver = self;
  v17.super_class = TUAnimationSizeFunction;
  v13 = [(TUAnimationSizeFunction *)&v17 init];
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

    v13->_startValue.width = v10;
    v13->_startValue.height = v9;
    v13->_endValue.width = width;
    v13->_endValue.height = height;
    v13->_speed = speed;
    [(TUAnimationSizeFunction *)v13 _reloadFunctions];
  }

  return v13;
}

- (CGSize)solveForTime:(double)time
{
  widthFunction = [(TUAnimationSizeFunction *)self widthFunction];
  [widthFunction solveForTime:time];
  v7 = v6;
  heightFunction = [(TUAnimationSizeFunction *)self heightFunction];
  [heightFunction solveForTime:time];
  v10 = v9;

  v11 = v7;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_reloadFunctions
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__TUAnimationSizeFunction__reloadFunctions__block_invoke;
  aBlock[3] = &unk_1E84F3E78;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  [(TUAnimationSizeFunction *)self startValue];
  v5 = v4;
  [(TUAnimationSizeFunction *)self endValue];
  v7 = v3[2](v3, v5, v6);
  [(TUAnimationSizeFunction *)self setWidthFunction:v7];

  [(TUAnimationSizeFunction *)self startValue];
  v9 = v8;
  [(TUAnimationSizeFunction *)self endValue];
  v10 = (v3[2])(v3, v9);
  [(TUAnimationSizeFunction *)self setHeightFunction:v10];
}

TUAnimationFloatFunction *__43__TUAnimationSizeFunction__reloadFunctions__block_invoke(uint64_t a1, double a2, double a3)
{
  v6 = [TUAnimationFloatFunction alloc];
  v7 = [*(a1 + 32) timingFunction];
  [*(a1 + 32) speed];
  v9 = [(TUAnimationFloatFunction *)v6 initWithTimingFunction:v7 startValue:a2 endValue:a3 speed:v8];

  return v9;
}

- (CGSize)startValue
{
  width = self->_startValue.width;
  height = self->_startValue.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)endValue
{
  width = self->_endValue.width;
  height = self->_endValue.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
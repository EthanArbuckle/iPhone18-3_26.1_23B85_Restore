@interface TUAnimationSizeFunction
- (CGSize)endValue;
- (CGSize)solveForTime:(double)a3;
- (CGSize)startValue;
- (TUAnimationSizeFunction)initWithTimingFunction:(id)a3 startRect:(CGSize)a4 endRect:(CGSize)a5 speed:(double)a6;
- (void)_reloadFunctions;
@end

@implementation TUAnimationSizeFunction

- (TUAnimationSizeFunction)initWithTimingFunction:(id)a3 startRect:(CGSize)a4 endRect:(CGSize)a5 speed:(double)a6
{
  height = a5.height;
  width = a5.width;
  v9 = a4.height;
  v10 = a4.width;
  v12 = a3;
  v17.receiver = self;
  v17.super_class = TUAnimationSizeFunction;
  v13 = [(TUAnimationSizeFunction *)&v17 init];
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

    v13->_startValue.width = v10;
    v13->_startValue.height = v9;
    v13->_endValue.width = width;
    v13->_endValue.height = height;
    v13->_speed = a6;
    [(TUAnimationSizeFunction *)v13 _reloadFunctions];
  }

  return v13;
}

- (CGSize)solveForTime:(double)a3
{
  v5 = [(TUAnimationSizeFunction *)self widthFunction];
  [v5 solveForTime:a3];
  v7 = v6;
  v8 = [(TUAnimationSizeFunction *)self heightFunction];
  [v8 solveForTime:a3];
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
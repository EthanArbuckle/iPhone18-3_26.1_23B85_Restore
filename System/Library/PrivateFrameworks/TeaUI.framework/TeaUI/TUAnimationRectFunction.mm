@interface TUAnimationRectFunction
- (CGRect)endValue;
- (CGRect)solveForTime:(double)time;
- (CGRect)startValue;
- (TUAnimationRectFunction)initWithTimingFunction:(id)function startRect:(CGRect)rect endRect:(CGRect)endRect speed:(double)speed;
- (void)_reloadFunctions;
@end

@implementation TUAnimationRectFunction

- (TUAnimationRectFunction)initWithTimingFunction:(id)function startRect:(CGRect)rect endRect:(CGRect)endRect speed:(double)speed
{
  height = endRect.size.height;
  width = endRect.size.width;
  y = endRect.origin.y;
  x = endRect.origin.x;
  v10 = rect.size.height;
  v11 = rect.size.width;
  v12 = rect.origin.y;
  v13 = rect.origin.x;
  functionCopy = function;
  v20.receiver = self;
  v20.super_class = TUAnimationRectFunction;
  v16 = [(TUAnimationRectFunction *)&v20 init];
  if (v16)
  {
    if (functionCopy)
    {
      v17 = functionCopy;
    }

    else
    {
      v17 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    }

    timingFunction = v16->_timingFunction;
    v16->_timingFunction = v17;

    v16->_startValue.origin.x = v13;
    v16->_startValue.origin.y = v12;
    v16->_startValue.size.width = v11;
    v16->_startValue.size.height = v10;
    v16->_endValue.origin.x = x;
    v16->_endValue.origin.y = y;
    v16->_endValue.size.width = width;
    v16->_endValue.size.height = height;
    v16->_speed = speed;
    [(TUAnimationRectFunction *)v16 _reloadFunctions];
  }

  return v16;
}

- (CGRect)solveForTime:(double)time
{
  originFunction = [(TUAnimationRectFunction *)self originFunction];
  [originFunction solveForTime:time];
  v7 = v6;
  v9 = v8;
  sizeFunction = [(TUAnimationRectFunction *)self sizeFunction];
  [sizeFunction solveForTime:time];
  v12 = v11;
  v14 = v13;

  v15 = v7;
  v16 = v9;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)_reloadFunctions
{
  v3 = [[TUAnimationPointFunction alloc] initWithTimingFunction:self->_timingFunction startRect:self->_startValue.origin.x endRect:self->_startValue.origin.y speed:self->_endValue.origin.x, self->_endValue.origin.y, self->_speed];
  [(TUAnimationRectFunction *)self setOriginFunction:v3];

  v4 = [[TUAnimationSizeFunction alloc] initWithTimingFunction:self->_timingFunction startRect:self->_startValue.size.width endRect:self->_startValue.size.height speed:self->_endValue.size.width, self->_endValue.size.height, self->_speed];
  [(TUAnimationRectFunction *)self setSizeFunction:v4];
}

- (CGRect)startValue
{
  x = self->_startValue.origin.x;
  y = self->_startValue.origin.y;
  width = self->_startValue.size.width;
  height = self->_startValue.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)endValue
{
  x = self->_endValue.origin.x;
  y = self->_endValue.origin.y;
  width = self->_endValue.size.width;
  height = self->_endValue.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
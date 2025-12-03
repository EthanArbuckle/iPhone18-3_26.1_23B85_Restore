@interface TUAnimationAffineTransformFunction
- (CGAffineTransform)endValue;
- (CGAffineTransform)solveForTime:(SEL)time;
- (CGAffineTransform)startValue;
- (TUAnimationAffineTransformFunction)initWithTimingFunction:(id)function startTransform:(CGAffineTransform *)transform endTransform:(CGAffineTransform *)endTransform speed:(double)speed;
- (void)_reloadFunctions;
- (void)setEndValue:(CGAffineTransform *)value;
- (void)setStartValue:(CGAffineTransform *)value;
@end

@implementation TUAnimationAffineTransformFunction

- (TUAnimationAffineTransformFunction)initWithTimingFunction:(id)function startTransform:(CGAffineTransform *)transform endTransform:(CGAffineTransform *)endTransform speed:(double)speed
{
  functionCopy = function;
  v19.receiver = self;
  v19.super_class = TUAnimationAffineTransformFunction;
  v11 = [(TUAnimationAffineTransformFunction *)&v19 init];
  if (v11)
  {
    if (functionCopy)
    {
      v12 = functionCopy;
    }

    else
    {
      v12 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    }

    v13 = *(v11 + 1);
    *(v11 + 1) = v12;

    v14 = *&transform->a;
    v15 = *&transform->c;
    *(v11 + 104) = *&transform->tx;
    *(v11 + 88) = v15;
    *(v11 + 72) = v14;
    v16 = *&endTransform->a;
    v17 = *&endTransform->c;
    *(v11 + 152) = *&endTransform->tx;
    *(v11 + 136) = v17;
    *(v11 + 120) = v16;
    *(v11 + 2) = speed;
    [v11 _reloadFunctions];
  }

  return v11;
}

- (CGAffineTransform)solveForTime:(SEL)time
{
  aFunction = [(TUAnimationAffineTransformFunction *)self aFunction];
  [aFunction solveForTime:a4];
  v8 = v7;
  bFunction = [(TUAnimationAffineTransformFunction *)self bFunction];
  [bFunction solveForTime:a4];
  v11 = v10;
  cFunction = [(TUAnimationAffineTransformFunction *)self cFunction];
  [cFunction solveForTime:a4];
  v14 = v13;
  dFunction = [(TUAnimationAffineTransformFunction *)self dFunction];
  [dFunction solveForTime:a4];
  v17 = v16;
  txFunction = [(TUAnimationAffineTransformFunction *)self txFunction];
  [txFunction solveForTime:a4];
  v20 = v19;
  tyFunction = [(TUAnimationAffineTransformFunction *)self tyFunction];
  [tyFunction solveForTime:a4];
  retstr->a = v8;
  retstr->b = v11;
  retstr->c = v14;
  retstr->d = v17;
  retstr->tx = v20;
  retstr->ty = v22;

  return result;
}

- (void)setStartValue:(CGAffineTransform *)value
{
  v3 = *&value->a;
  v4 = *&value->c;
  *&self->_startValue.tx = *&value->tx;
  *&self->_startValue.c = v4;
  *&self->_startValue.a = v3;
  [(TUAnimationAffineTransformFunction *)self _reloadFunctions];
}

- (void)setEndValue:(CGAffineTransform *)value
{
  v3 = *&value->a;
  v4 = *&value->c;
  *&self->_endValue.tx = *&value->tx;
  *&self->_endValue.c = v4;
  *&self->_endValue.a = v3;
  [(TUAnimationAffineTransformFunction *)self _reloadFunctions];
}

- (void)_reloadFunctions
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__TUAnimationAffineTransformFunction__reloadFunctions__block_invoke;
  aBlock[3] = &unk_1E84F3E78;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  [(TUAnimationAffineTransformFunction *)self startValue];
  [(TUAnimationAffineTransformFunction *)self endValue];
  v4 = v3[2](v3);
  [(TUAnimationAffineTransformFunction *)self setAFunction:v4];

  [(TUAnimationAffineTransformFunction *)self startValue];
  [(TUAnimationAffineTransformFunction *)self endValue];
  v5 = v3[2](v3);
  [(TUAnimationAffineTransformFunction *)self setBFunction:v5];

  [(TUAnimationAffineTransformFunction *)self startValue];
  [(TUAnimationAffineTransformFunction *)self endValue];
  v6 = v3[2](v3);
  [(TUAnimationAffineTransformFunction *)self setCFunction:v6];

  [(TUAnimationAffineTransformFunction *)self startValue];
  [(TUAnimationAffineTransformFunction *)self endValue];
  v7 = v3[2](v3);
  [(TUAnimationAffineTransformFunction *)self setDFunction:v7];

  [(TUAnimationAffineTransformFunction *)self startValue];
  [(TUAnimationAffineTransformFunction *)self endValue];
  v8 = v3[2](v3);
  [(TUAnimationAffineTransformFunction *)self setTxFunction:v8];

  [(TUAnimationAffineTransformFunction *)self startValue];
  [(TUAnimationAffineTransformFunction *)self endValue];
  v9 = v3[2](v3);
  [(TUAnimationAffineTransformFunction *)self setTyFunction:v9];
}

TUAnimationFloatFunction *__54__TUAnimationAffineTransformFunction__reloadFunctions__block_invoke(uint64_t a1, double a2, double a3)
{
  v6 = [TUAnimationFloatFunction alloc];
  v7 = [*(a1 + 32) timingFunction];
  [*(a1 + 32) speed];
  v9 = [(TUAnimationFloatFunction *)v6 initWithTimingFunction:v7 startValue:a2 endValue:a3 speed:v8];

  return v9;
}

- (CGAffineTransform)startValue
{
  v3 = *&self[1].ty;
  *&retstr->a = *&self[1].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].b;
  return self;
}

- (CGAffineTransform)endValue
{
  v3 = *&self[2].ty;
  *&retstr->a = *&self[2].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].b;
  return self;
}

@end
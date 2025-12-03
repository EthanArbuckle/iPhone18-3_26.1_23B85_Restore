@interface SFFloatSpringProperty
+ (void)_withoutAnimation:(id)animation;
- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)state toState:(int)toState;
- (SFFloatSpringProperty)init;
- (double)projectForDeceleration:(double)deceleration;
- (double)projectForTime:(double)time;
- (void)setInput:(double)input;
- (void)setOutput:(double)output;
@end

@implementation SFFloatSpringProperty

- (SFFloatSpringProperty)init
{
  v3.receiver = self;
  v3.super_class = SFFloatSpringProperty;
  result = [(UIViewFloatAnimatableProperty *)&v3 init];
  if (result)
  {
    result->_dampingRatio = 0.86;
    result->_response = 0.55;
    result->_trackingDampingRatio = 0.86;
    result->_trackingResponse = 0.15;
  }

  return result;
}

- (void)setInput:(double)input
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DD250];
  tracking = self->_tracking;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__SFFloatSpringProperty_setInput___block_invoke;
  v7[3] = &unk_1E7EE3D58;
  objc_copyWeak(v8, &location);
  v8[1] = *&input;
  [v5 _animateUsingSpringBehavior:self tracking:tracking animations:v7 completion:0];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __34__SFFloatSpringProperty_setInput___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained primed] & 1) == 0)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 presentationValue];
    v5 = v4;
    v6 = *(a1 + 40);
    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 presentationValue];
    if (v5 >= v6)
    {
      v9 = v8 - *(a1 + 40);
    }

    else
    {
      v9 = v6 - v8;
    }

    if (v9 >= 1.0)
    {
      goto LABEL_8;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setPrimed:1];
  }

LABEL_8:
  v10 = *(a1 + 40);
  v11 = objc_loadWeakRetained((a1 + 32));
  [v11 setValue:v10];
}

- (void)setOutput:(double)output
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__SFFloatSpringProperty_setOutput___block_invoke;
  v3[3] = &unk_1E7EE36B0;
  v3[4] = self;
  *&v3[5] = output;
  [SFFloatSpringProperty _withoutAnimation:v3];
}

- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)state toState:(int)toState
{
  *&retstr->var7 = 0u;
  *&retstr->var9 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var5 = 0u;
  *&retstr->var0 = 0u;
  if (a5 <= 2)
  {
    v5 = *(&self->var0 + *off_1E7EE3D90[a5]);
    retstr->var0 = *(&self->var0 + *off_1E7EE3D78[a5]);
    retstr->var1 = v5;
  }

  return self;
}

- (double)projectForDeceleration:(double)deceleration
{
  [(SFFloatSpringProperty *)self output];
  v6 = v5;
  [(UIViewFloatAnimatableProperty *)self velocity];
  return v6 + v7 / 1000.0 * deceleration / (1.0 - deceleration);
}

- (double)projectForTime:(double)time
{
  [(SFFloatSpringProperty *)self output];
  v6 = v5;
  [(UIViewFloatAnimatableProperty *)self velocity];
  return v6 + v7 * time;
}

+ (void)_withoutAnimation:(id)animation
{
  animationCopy = animation;
  v4 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__SFFloatSpringProperty__withoutAnimation___block_invoke;
  v6[3] = &unk_1E7EE3CE0;
  v7 = animationCopy;
  v5 = animationCopy;
  [v4 performWithoutAnimation:v6];
}

@end
@interface SBUIViewFloatSpringProperty
+ (void)_withoutAnimation:(id)a3;
- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)a3 toState:(int)a4;
- (SBUIViewFloatSpringProperty)init;
- (double)projectForDeceleration:(double)a3;
- (double)projectForTime:(double)a3;
- (void)setDampingRatio:(double)a3 response:(double)a4 impulse:(double)a5;
- (void)setInput:(double)a3;
- (void)setOutput:(double)a3;
- (void)setTrackingDampingRatio:(double)a3 response:(double)a4 impulse:(double)a5;
@end

@implementation SBUIViewFloatSpringProperty

- (SBUIViewFloatSpringProperty)init
{
  v6.receiver = self;
  v6.super_class = SBUIViewFloatSpringProperty;
  v2 = [(UIViewFloatAnimatableProperty *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_dampingRatio = 0.86;
    v2->_response = 0.55;
    v2->_impulse = 0.0;
    v2->_trackingDampingRatio = 0.86;
    v2->_trackingResponse = 0.15;
    v2->_trackingImpulse = 0.0;
    v4 = v2;
  }

  return v3;
}

- (void)setInput:(double)a3
{
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__SBUIViewFloatSpringProperty_setInput___block_invoke;
  v6[3] = &unk_27836B548;
  objc_copyWeak(v7, &location);
  v7[1] = *&a3;
  v5 = MEMORY[0x223D63700](v6);
  if ([MEMORY[0x277D75D18] areAnimationsEnabled])
  {
    [MEMORY[0x277D75D18] _animateUsingSpringBehavior:self tracking:self->_tracking animations:v5 completion:0];
  }

  else
  {
    v5[2](v5);
  }

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __40__SBUIViewFloatSpringProperty_setInput___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setValue:v1];
}

- (void)setOutput:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__SBUIViewFloatSpringProperty_setOutput___block_invoke;
  v3[3] = &unk_27836AF38;
  v3[4] = self;
  *&v3[5] = a3;
  [SBUIViewFloatSpringProperty _withoutAnimation:v3];
}

- (void)setDampingRatio:(double)a3 response:(double)a4 impulse:(double)a5
{
  self->_dampingRatio = a3;
  self->_impulse = a5;
  self->_response = a4;
}

- (void)setTrackingDampingRatio:(double)a3 response:(double)a4 impulse:(double)a5
{
  self->_trackingDampingRatio = a3;
  self->_trackingImpulse = a5;
  self->_trackingResponse = a4;
}

- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)a3 toState:(int)a4
{
  *&retstr->var7 = 0u;
  *&retstr->var9 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var5 = 0u;
  *&retstr->var0 = 0u;
  if (a5 <= 2)
  {
    v5 = off_27836B5C0[a5];
    v6 = *(&self->var0 + *off_27836B5A8[a5]);
    retstr->var0 = *(&self->var0 + *off_27836B590[a5]);
    retstr->var1 = v6;
    retstr->var10 = *(&self->var0 + *v5);
  }

  return self;
}

- (double)projectForDeceleration:(double)a3
{
  [(SBUIViewFloatSpringProperty *)self output];
  v6 = v5;
  [(UIViewFloatAnimatableProperty *)self velocity];
  return v6 + v7 / 1000.0 * a3 / (1.0 - a3);
}

- (double)projectForTime:(double)a3
{
  [(SBUIViewFloatSpringProperty *)self output];
  v6 = v5;
  [(UIViewFloatAnimatableProperty *)self velocity];
  return v6 + v7 * a3;
}

+ (void)_withoutAnimation:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__SBUIViewFloatSpringProperty__withoutAnimation___block_invoke;
  v6[3] = &unk_27836B570;
  v7 = v3;
  v5 = v3;
  [v4 performWithoutAnimation:v6];
}

@end
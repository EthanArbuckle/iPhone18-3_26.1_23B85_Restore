@interface SBHMinusPageStepper
- (SBHMinusPageStepper)init;
@end

@implementation SBHMinusPageStepper

- (SBHMinusPageStepper)init
{
  v11.receiver = self;
  v11.super_class = SBHMinusPageStepper;
  v2 = [(SBFSteppedAnimationTimingFunctionCalculator *)&v11 init];
  if (v2)
  {
    LODWORD(v4) = 1036831949;
    LODWORD(v3) = 0.25;
    LODWORD(v5) = 0.25;
    LODWORD(v6) = 1.0;
    v7 = [MEMORY[0x1E69793D0] functionWithControlPoints:v3 :v4 :v5 :v6];
    v8 = [MEMORY[0x1E698E608] settingsWithDuration:v7 delay:0.75 timingFunction:0.0];
    v9 = [MEMORY[0x1E698E608] settingsWithDuration:v7 delay:0.65 timingFunction:0.0];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v2 addTimingFunctionWithName:@"backgroundBlurAlpha" fromNormalizedAnimationSettings:v8];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v2 addTimingFunctionWithName:@"pageControlAlpha" fromNormalizedAnimationSettings:v9];
  }

  return v2;
}

@end
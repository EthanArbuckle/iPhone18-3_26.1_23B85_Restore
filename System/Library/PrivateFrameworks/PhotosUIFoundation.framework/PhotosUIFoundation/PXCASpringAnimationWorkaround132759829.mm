@interface PXCASpringAnimationWorkaround132759829
- (float)_solveForInput:(float)input;
@end

@implementation PXCASpringAnimationWorkaround132759829

- (float)_solveForInput:(float)input
{
  inputCopy = input;
  [(PXCASpringAnimationWorkaround132759829 *)self duration];
  v6 = inputCopy / v5;
  *&v6 = v6;
  v8.receiver = self;
  v8.super_class = PXCASpringAnimationWorkaround132759829;
  [(CASpringAnimation *)&v8 _solveForInput:v6];
  return result;
}

@end
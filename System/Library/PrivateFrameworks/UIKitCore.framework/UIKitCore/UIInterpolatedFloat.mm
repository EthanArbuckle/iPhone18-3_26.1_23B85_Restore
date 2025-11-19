@interface UIInterpolatedFloat
+ (id)epsilonCompatibleWithVector:(id)a3;
+ (id)valueWithFloat:(double)a3;
+ (id)zeroCompatibleWithVector:(id)a3;
- (NSString)debugDescription;
- (void)integrateWithVelocity:(id)a3 target:(id)a4 intermediateTarget:(id)a5 intermediateTargetVelocity:(id)a6 parameters:(id *)a7 state:(id *)a8 delta:(double)a9;
@end

@implementation UIInterpolatedFloat

+ (id)valueWithFloat:(double)a3
{
  v4 = objc_alloc_init(a1);
  v4[1] = a3;

  return v4;
}

+ (id)epsilonCompatibleWithVector:(id)a3
{
  if (qword_1ED4A2AD8 != -1)
  {
    dispatch_once(&qword_1ED4A2AD8, &__block_literal_global_688);
  }

  v4 = _MergedGlobals_1382;

  return v4;
}

void __51__UIInterpolatedFloat_epsilonCompatibleWithVector___block_invoke()
{
  v0 = [UIInterpolatedFloat valueWithFloat:0.001];
  v1 = _MergedGlobals_1382;
  _MergedGlobals_1382 = v0;
}

+ (id)zeroCompatibleWithVector:(id)a3
{
  if (qword_1ED4A2AE8 != -1)
  {
    dispatch_once(&qword_1ED4A2AE8, &__block_literal_global_3_16);
  }

  v4 = qword_1ED4A2AE0;

  return v4;
}

void __48__UIInterpolatedFloat_zeroCompatibleWithVector___block_invoke()
{
  v0 = [UIInterpolatedFloat valueWithFloat:0.0];
  v1 = qword_1ED4A2AE0;
  qword_1ED4A2AE0 = v0;
}

- (void)integrateWithVelocity:(id)a3 target:(id)a4 intermediateTarget:(id)a5 intermediateTargetVelocity:(id)a6 parameters:(id *)a7 state:(id *)a8 delta:(double)a9
{
  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"UIInterpolatedFloat.m" lineNumber:82 description:@"UIInterpolatedFloat is no longer supported."];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p val: %f>", v5, self, *&self->_number];

  return v6;
}

@end
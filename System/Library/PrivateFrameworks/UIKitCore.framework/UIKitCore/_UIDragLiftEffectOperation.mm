@interface _UIDragLiftEffectOperation
+ (id)defaultTimingParameters;
- (_UIDragLiftEffectOperation)initWithLiftAnimationDuration:(double)duration liftTimingParameters:(id)parameters;
@end

@implementation _UIDragLiftEffectOperation

+ (id)defaultTimingParameters
{
  if (_UIInternalPreferenceUsesDefault_1(&_MergedGlobals_931, @"DragLiftEffectSpringDamping"))
  {
    v2 = 19.75;
  }

  else
  {
    v2 = *&qword_1ED48AD50;
  }

  if (_UIInternalPreferenceUsesDefault_1(algn_1ED48AD58, @"DragLiftEffectSpringStiffness"))
  {
    v3 = 195.0;
  }

  else
  {
    v3 = *&qword_1ED48AD60;
  }

  if (_UIInternalPreferenceUsesDefault_1(algn_1ED48AD68, @"DragLiftEffectSpringMass"))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = *&qword_1ED48AD70;
  }

  v5 = [[UISpringTimingParameters alloc] initWithMass:v4 stiffness:v3 damping:v2 initialVelocity:0.0, 0.0];

  return v5;
}

- (_UIDragLiftEffectOperation)initWithLiftAnimationDuration:(double)duration liftTimingParameters:(id)parameters
{
  parametersCopy = parameters;
  v11.receiver = self;
  v11.super_class = _UIDragLiftEffectOperation;
  v7 = [(_UIDragLiftEffectOperation *)&v11 init];
  if (v7)
  {
    v8 = [[UIViewPropertyAnimator alloc] initWithDuration:parametersCopy timingParameters:duration];
    propertyAnimator = v7->_propertyAnimator;
    v7->_propertyAnimator = v8;
  }

  return v7;
}

@end
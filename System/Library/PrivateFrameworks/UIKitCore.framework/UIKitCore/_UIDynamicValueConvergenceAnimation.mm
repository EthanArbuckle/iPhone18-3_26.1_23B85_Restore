@interface _UIDynamicValueConvergenceAnimation
- (BOOL)_animateForInterval:(double)interval;
- (_UIDynamicValueConvergenceAnimation)initWithValue:(double)value targetValue:(double)targetValue convergenceRate:(double)rate minimumDifference:(double)difference;
- (void)runWithValueApplier:(id)applier completion:(id)completion;
@end

@implementation _UIDynamicValueConvergenceAnimation

- (_UIDynamicValueConvergenceAnimation)initWithValue:(double)value targetValue:(double)targetValue convergenceRate:(double)rate minimumDifference:(double)difference
{
  v11.receiver = self;
  v11.super_class = _UIDynamicValueConvergenceAnimation;
  result = [(_UIDynamicAnimation *)&v11 init];
  if (result)
  {
    result->_value = value;
    result->_targetValue = targetValue;
    result->_convergenceRate = rate;
    result->_minimumDifference = difference;
  }

  return result;
}

- (void)runWithValueApplier:(id)applier completion:(id)completion
{
  completionCopy = completion;
  v7 = _Block_copy(applier);
  applier = self->_applier;
  self->_applier = v7;

  v9.receiver = self;
  v9.super_class = _UIDynamicValueConvergenceAnimation;
  [(_UIDynamicAnimation *)&v9 runWithCompletion:completionCopy];
}

- (BOOL)_animateForInterval:(double)interval
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = (interval * 1000.0);
  if (v3 < 1)
  {
    return 0;
  }

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  convergenceRate = self->_convergenceRate;
  if (has_internal_diagnostics)
  {
    if (convergenceRate <= 0.0)
    {
      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v17 = self->_convergenceRate;
        value = self->_value;
        targetValue = self->_targetValue;
        v20 = 134218496;
        v21 = v17;
        v22 = 2048;
        v23 = value;
        v24 = 2048;
        v25 = targetValue;
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "convergenceRate %g should be positive; converging from %g to %g", &v20, 0x20u);
      }
    }
  }

  else if (convergenceRate <= 0.0)
  {
    v13 = *(__UILogGetCategoryCachedImpl("Assert", &_animateForInterval____s_category) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = self->_convergenceRate;
      v15 = self->_value;
      v16 = self->_targetValue;
      v20 = 134218496;
      v21 = v14;
      v22 = 2048;
      v23 = v15;
      v24 = 2048;
      v25 = v16;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "convergenceRate %g should be positive; converging from %g to %g", &v20, 0x20u);
    }
  }

  v7 = self->_value;
  v8 = pow(self->_convergenceRate, v3);
  v9 = v7 * v8 + (1.0 - v8) * self->_targetValue;
  self->_value = v9;
  applier = self->_applier;
  if (applier)
  {
    applier[2](applier, [(_UIDynamicAnimation *)self state], v7, self->_value);
    v9 = self->_value;
  }

  return vabdd_f64(v9, self->_targetValue) < self->_minimumDifference;
}

@end
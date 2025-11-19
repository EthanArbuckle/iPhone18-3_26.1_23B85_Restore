@interface _UISEGestureFeature
- (_UISEGestureFeatureDelegate)delegate;
- (id)debugDictionary;
- (void)_setState:(unint64_t)a3;
- (void)incorporateSample:(const _UISEGestureFeatureSample *)a3;
@end

@implementation _UISEGestureFeature

- (void)incorporateSample:(const _UISEGestureFeatureSample *)a3
{
  if (!self->_state)
  {
    [(_UISEGestureFeature *)self _incorporateSample:a3];
  }
}

- (id)debugDictionary
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(_UISEGestureFeature *)self state];
  if (v5 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E710AF08[v5];
  }

  v9[0] = @"class";
  v9[1] = @"state";
  v10[0] = v4;
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (void)_setState:(unint64_t)a3
{
  if (a3 && !self->_state)
  {
    self->_state = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained featureDidChangeState:self];
  }
}

- (_UISEGestureFeatureDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
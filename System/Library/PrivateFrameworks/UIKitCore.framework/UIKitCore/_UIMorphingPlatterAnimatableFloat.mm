@interface _UIMorphingPlatterAnimatableFloat
- (void)setValue:(double)value;
@end

@implementation _UIMorphingPlatterAnimatableFloat

- (void)setValue:(double)value
{
  [(UIViewFloatAnimatableProperty *)self value];
  if (vabdd_f64(value, v5) > 2.22044605e-16)
  {
    [(UIViewFloatAnimatableProperty *)self value];
    self->_lastModelValueChangeWasPositive = v6 < value;
    v7.receiver = self;
    v7.super_class = _UIMorphingPlatterAnimatableFloat;
    [(UIViewFloatAnimatableProperty *)&v7 setValue:value];
  }
}

@end
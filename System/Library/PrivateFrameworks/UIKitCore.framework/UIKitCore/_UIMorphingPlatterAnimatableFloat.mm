@interface _UIMorphingPlatterAnimatableFloat
- (void)setValue:(double)a3;
@end

@implementation _UIMorphingPlatterAnimatableFloat

- (void)setValue:(double)a3
{
  [(UIViewFloatAnimatableProperty *)self value];
  if (vabdd_f64(a3, v5) > 2.22044605e-16)
  {
    [(UIViewFloatAnimatableProperty *)self value];
    self->_lastModelValueChangeWasPositive = v6 < a3;
    v7.receiver = self;
    v7.super_class = _UIMorphingPlatterAnimatableFloat;
    [(UIViewFloatAnimatableProperty *)&v7 setValue:a3];
  }
}

@end
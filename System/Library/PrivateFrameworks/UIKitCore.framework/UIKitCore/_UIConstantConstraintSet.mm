@interface _UIConstantConstraintSet
- (_UIConstantConstraintSet)initWithConstraints:(id)constraints;
@end

@implementation _UIConstantConstraintSet

- (_UIConstantConstraintSet)initWithConstraints:(id)constraints
{
  constraintsCopy = constraints;
  v9.receiver = self;
  v9.super_class = _UIConstantConstraintSet;
  v6 = [(_UIConstantConstraintSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_constraints, constraints);
  }

  return v7;
}

@end
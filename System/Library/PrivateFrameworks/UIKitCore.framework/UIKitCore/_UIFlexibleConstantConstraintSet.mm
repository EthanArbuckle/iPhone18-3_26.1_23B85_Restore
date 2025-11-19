@interface _UIFlexibleConstantConstraintSet
+ (id)constraintSetWithCollapsableConstantPreferredEqualityConstraint:(id)a3 equalityPriority:(unint64_t)a4;
+ (id)constraintSetWithRequiredEqualityConstraint:(id)a3;
- (id)_initWithEqualityConstraint:(id)a3 equalityPriority:(unint64_t)a4 prefersMin:(BOOL)a5;
- (id)_otherInequalityConstraint;
- (id)_preferredInequalityConstraint;
- (void)_updateInequalityConstants;
- (void)setEqualityConstant:(double)a3;
- (void)setMaxConstant:(double)a3;
- (void)setMinConstant:(double)a3;
@end

@implementation _UIFlexibleConstantConstraintSet

+ (id)constraintSetWithRequiredEqualityConstraint:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithEqualityConstraint:v4 equalityPriority:1000 prefersMin:0];

  return v5;
}

+ (id)constraintSetWithCollapsableConstantPreferredEqualityConstraint:(id)a3 equalityPriority:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] _initWithEqualityConstraint:v6 equalityPriority:a4 prefersMin:0];

  return v7;
}

- (id)_initWithEqualityConstraint:(id)a3 equalityPriority:(unint64_t)a4 prefersMin:(BOOL)a5
{
  v31[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  if ([v10 relation])
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"_UIConstantConstraintSet.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"cn.relation == NSLayoutRelationEqual"}];
  }

  if ([v10 isActive])
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"_UIConstantConstraintSet.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"cn.active == NO"}];
  }

  v11 = [MEMORY[0x1E695DF70] arrayWithObject:v10];
  v12 = v10;
  *&v13 = a4;
  [v12 setPriority:v13];
  if (a4 == 1000)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v16 = MEMORY[0x1E69977A0];
    v17 = [v12 firstItem];
    v18 = [v12 firstAttribute];
    v19 = [v12 secondItem];
    v14 = [v16 constraintWithItem:v17 attribute:v18 relatedBy:1 toItem:v19 attribute:{objc_msgSend(v12, "secondAttribute")}];

    v20 = MEMORY[0x1E69977A0];
    v21 = [v12 firstItem];
    v22 = [v12 firstAttribute];
    v23 = [v12 secondItem];
    v15 = [v20 constraintWithItem:v21 attribute:v22 relatedBy:-1 toItem:v23 attribute:{objc_msgSend(v12, "secondAttribute")}];

    v31[0] = v14;
    v31[1] = v15;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    [v11 addObjectsFromArray:v24];
  }

  v30.receiver = self;
  v30.super_class = _UIFlexibleConstantConstraintSet;
  v25 = [(_UIConstantConstraintSet *)&v30 initWithConstraints:v11];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_minConstraint, v14);
    objc_storeStrong(&v26->_maxConstraint, v15);
    objc_storeStrong(&v26->_equalityConstraint, a3);
    v26->_equalityConstraintPrefersMin = a5;
    [(_UIFlexibleConstantConstraintSet *)v26 setMinConstant:0.0];
    [(_UIFlexibleConstantConstraintSet *)v26 setMaxConstant:10000.0];
    [(NSLayoutConstraint *)v26->_equalityConstraint constant];
    [(_UIFlexibleConstantConstraintSet *)v26 setEqualityConstant:?];
  }

  return v26;
}

- (void)setMinConstant:(double)a3
{
  if (![(_UIFlexibleConstantConstraintSet *)self _equalityConstraintIsRequired]&& self->_minConstant != a3)
  {
    self->_minConstant = a3;
    minConstraint = self->_minConstraint;

    [(NSLayoutConstraint *)minConstraint setConstant:a3];
  }
}

- (void)setMaxConstant:(double)a3
{
  if (![(_UIFlexibleConstantConstraintSet *)self _equalityConstraintIsRequired]&& self->_maxConstant != a3)
  {
    self->_maxConstant = a3;
    maxConstraint = self->_maxConstraint;

    [(NSLayoutConstraint *)maxConstraint setConstant:a3];
  }
}

- (void)setEqualityConstant:(double)a3
{
  if (self->_equalityConstant != a3)
  {
    self->_equalityConstant = a3;
    [(NSLayoutConstraint *)self->_equalityConstraint setConstant:?];

    [(_UIFlexibleConstantConstraintSet *)self _updateInequalityConstants];
  }
}

- (void)_updateInequalityConstants
{
  if (![(_UIFlexibleConstantConstraintSet *)self _equalityConstraintIsRequired])
  {
    equalityConstant = self->_equalityConstant;
    if (self->_equalityConstraintPrefersMin)
    {
      [(_UIFlexibleConstantConstraintSet *)self setMinConstant:equalityConstant];
      maxConstant = self->_maxConstant;
      if (maxConstant < self->_equalityConstant)
      {
        maxConstant = self->_equalityConstant;
      }

      [(_UIFlexibleConstantConstraintSet *)self setMaxConstant:maxConstant];
    }

    else
    {
      [(_UIFlexibleConstantConstraintSet *)self setMaxConstant:equalityConstant];
      minConstant = self->_minConstant;
      if (minConstant >= self->_equalityConstant)
      {
        minConstant = self->_equalityConstant;
      }

      [(_UIFlexibleConstantConstraintSet *)self setMinConstant:minConstant];
    }
  }
}

- (id)_preferredInequalityConstraint
{
  v2 = 1;
  if (self->_equalityConstraintPrefersMin)
  {
    v2 = 0;
  }

  return *(&self->super.super.isa + OBJC_IVAR____UIFlexibleConstantConstraintSet__minConstraint[v2]);
}

- (id)_otherInequalityConstraint
{
  v2 = 1;
  if (!self->_equalityConstraintPrefersMin)
  {
    v2 = 0;
  }

  return *(&self->super.super.isa + OBJC_IVAR____UIFlexibleConstantConstraintSet__minConstraint[v2]);
}

@end
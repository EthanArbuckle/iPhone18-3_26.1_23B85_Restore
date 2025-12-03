@interface _UIFlexibleConstantConstraintSet
+ (id)constraintSetWithCollapsableConstantPreferredEqualityConstraint:(id)constraint equalityPriority:(unint64_t)priority;
+ (id)constraintSetWithRequiredEqualityConstraint:(id)constraint;
- (id)_initWithEqualityConstraint:(id)constraint equalityPriority:(unint64_t)priority prefersMin:(BOOL)min;
- (id)_otherInequalityConstraint;
- (id)_preferredInequalityConstraint;
- (void)_updateInequalityConstants;
- (void)setEqualityConstant:(double)constant;
- (void)setMaxConstant:(double)constant;
- (void)setMinConstant:(double)constant;
@end

@implementation _UIFlexibleConstantConstraintSet

+ (id)constraintSetWithRequiredEqualityConstraint:(id)constraint
{
  constraintCopy = constraint;
  v5 = [[self alloc] _initWithEqualityConstraint:constraintCopy equalityPriority:1000 prefersMin:0];

  return v5;
}

+ (id)constraintSetWithCollapsableConstantPreferredEqualityConstraint:(id)constraint equalityPriority:(unint64_t)priority
{
  constraintCopy = constraint;
  v7 = [[self alloc] _initWithEqualityConstraint:constraintCopy equalityPriority:priority prefersMin:0];

  return v7;
}

- (id)_initWithEqualityConstraint:(id)constraint equalityPriority:(unint64_t)priority prefersMin:(BOOL)min
{
  v31[2] = *MEMORY[0x1E69E9840];
  constraintCopy = constraint;
  if ([constraintCopy relation])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIConstantConstraintSet.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"cn.relation == NSLayoutRelationEqual"}];
  }

  if ([constraintCopy isActive])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIConstantConstraintSet.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"cn.active == NO"}];
  }

  v11 = [MEMORY[0x1E695DF70] arrayWithObject:constraintCopy];
  v12 = constraintCopy;
  *&v13 = priority;
  [v12 setPriority:v13];
  if (priority == 1000)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v16 = MEMORY[0x1E69977A0];
    firstItem = [v12 firstItem];
    firstAttribute = [v12 firstAttribute];
    secondItem = [v12 secondItem];
    v14 = [v16 constraintWithItem:firstItem attribute:firstAttribute relatedBy:1 toItem:secondItem attribute:{objc_msgSend(v12, "secondAttribute")}];

    v20 = MEMORY[0x1E69977A0];
    firstItem2 = [v12 firstItem];
    firstAttribute2 = [v12 firstAttribute];
    secondItem2 = [v12 secondItem];
    v15 = [v20 constraintWithItem:firstItem2 attribute:firstAttribute2 relatedBy:-1 toItem:secondItem2 attribute:{objc_msgSend(v12, "secondAttribute")}];

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
    objc_storeStrong(&v26->_equalityConstraint, constraint);
    v26->_equalityConstraintPrefersMin = min;
    [(_UIFlexibleConstantConstraintSet *)v26 setMinConstant:0.0];
    [(_UIFlexibleConstantConstraintSet *)v26 setMaxConstant:10000.0];
    [(NSLayoutConstraint *)v26->_equalityConstraint constant];
    [(_UIFlexibleConstantConstraintSet *)v26 setEqualityConstant:?];
  }

  return v26;
}

- (void)setMinConstant:(double)constant
{
  if (![(_UIFlexibleConstantConstraintSet *)self _equalityConstraintIsRequired]&& self->_minConstant != constant)
  {
    self->_minConstant = constant;
    minConstraint = self->_minConstraint;

    [(NSLayoutConstraint *)minConstraint setConstant:constant];
  }
}

- (void)setMaxConstant:(double)constant
{
  if (![(_UIFlexibleConstantConstraintSet *)self _equalityConstraintIsRequired]&& self->_maxConstant != constant)
  {
    self->_maxConstant = constant;
    maxConstraint = self->_maxConstraint;

    [(NSLayoutConstraint *)maxConstraint setConstant:constant];
  }
}

- (void)setEqualityConstant:(double)constant
{
  if (self->_equalityConstant != constant)
  {
    self->_equalityConstant = constant;
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
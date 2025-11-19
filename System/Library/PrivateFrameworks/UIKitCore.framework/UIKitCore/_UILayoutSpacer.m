@interface _UILayoutSpacer
+ (id)_horizontalLayoutSpacer;
+ (id)_verticalLayoutSpacer;
- (_UILayoutSpacer)initWithCoder:(id)a3;
- (double)length;
- (id)_layoutVariablesWithAmbiguousValue;
- (void)_setUpCounterDimensionConstraint;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UILayoutSpacer

+ (id)_horizontalLayoutSpacer
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = v2;
  if (v2)
  {
    v2[225] = 1;
    [v2 _setUpCounterDimensionConstraint];
  }

  return v3;
}

+ (id)_verticalLayoutSpacer
{
  v2 = objc_alloc_init(objc_opt_class());
  [v2 _setUpCounterDimensionConstraint];

  return v2;
}

- (void)_setUpCounterDimensionConstraint
{
  if (self->_horizontal)
  {
    v2 = 8;
  }

  else
  {
    v2 = 7;
  }

  v3 = [_UILayoutSupportConstraint constraintWithItem:self attribute:v2 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
  LODWORD(v4) = 1148829696;
  [(_UILayoutSupportConstraint *)v3 setPriority:v4];
  [(_UILayoutSupportConstraint *)v3 setShouldBeArchived:1];

  [(_UILayoutSupportConstraint *)v3 setActive:1];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UILayoutSpacer;
  [(UILayoutGuide *)&v3 dealloc];
}

- (double)length
{
  [(UILayoutGuide *)self layoutFrame];
  if (self->_horizontal)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

- (_UILayoutSpacer)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UILayoutSpacer;
  v4 = [(UILayoutGuide *)&v6 initWithCoder:?];
  if (v4)
  {
    if ([a3 containsValueForKey:@"_UILayoutSpacerIsHorizontal"])
    {
      v4->_horizontal = 1;
    }

    v4->_constraintsToRemoveAtRuntime = [objc_msgSend(a3 decodeObjectForKey:{@"_UILayoutSpacerConstraintsToRemove", "copy"}];
    if ([a3 containsValueForKey:@"_UILayoutSpacerCompatibilityGuideAllowsArchivingAsSubview"])
    {
      v4->_compatibilityGuideAllowsArchivingAsSubview = 1;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UILayoutSpacer;
  [(UILayoutGuide *)&v5 encodeWithCoder:?];
  if (self->_horizontal)
  {
    [a3 encodeBool:1 forKey:@"_UILayoutSpacerIsHorizontal"];
  }

  [a3 encodeObject:-[_UILayoutSpacer _constraintsToRemoveAtRuntime](self forKey:{"_constraintsToRemoveAtRuntime"), @"_UILayoutSpacerConstraintsToRemove"}];
  if (self->_compatibilityGuideAllowsArchivingAsSubview)
  {
    [a3 encodeBool:1 forKey:@"_UILayoutSpacerCompatibilityGuideAllowsArchivingAsSubview"];
  }
}

- (id)_layoutVariablesWithAmbiguousValue
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = _layoutVariablesWithAmbiguousValueForLayoutItem(self);
  if (self->_horizontal)
  {
    v4 = [(UILayoutGuide *)self nsli_minYVariable];
  }

  else
  {
    v4 = [(UILayoutGuide *)self nsli_minXVariable];
  }

  v6[0] = v4;
  return [v3 arrayByExcludingObjectsInArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v6, 1)}];
}

@end
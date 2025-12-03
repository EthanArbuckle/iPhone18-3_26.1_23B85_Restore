@interface _UILayoutGuide
+ (id)_horizontalLayoutGuide;
+ (id)_verticalLayoutGuide;
+ (id)classFallbacksForKeyedArchiver;
- (_UILayoutGuide)initWithCoder:(id)coder;
- (_UILayoutGuide)initWithFrame:(CGRect)frame;
- (double)length;
- (id)_layoutVariablesWithAmbiguousValue;
- (void)_setUpCounterDimensionConstraint;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UILayoutGuide

- (_UILayoutGuide)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UILayoutGuide;
  v3 = [(UIView *)&v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = v3;
  if (v3)
  {
    *&v3->super._viewFlags |= 0x210000000000000uLL;
    [(CALayer *)[(UIView *)v3 layer] setHidden:1];
  }

  return v4;
}

+ (id)classFallbacksForKeyedArchiver
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v4[0] = NSStringFromClass(v2);
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
}

- (void)_setUpCounterDimensionConstraint
{
  if (self->_horizontal)
  {
    v3 = 8;
  }

  else
  {
    v3 = 7;
  }

  v4 = [_UILayoutSupportConstraint constraintWithItem:self attribute:v3 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
  LODWORD(v5) = 1148829696;
  [(_UILayoutSupportConstraint *)v4 setPriority:v5];
  [(_UILayoutSupportConstraint *)v4 setShouldBeArchived:1];

  [(UIView *)self addConstraint:v4];
}

+ (id)_verticalLayoutGuide
{
  v2 = objc_alloc_init(objc_opt_class());
  [v2 _setUpCounterDimensionConstraint];

  return v2;
}

+ (id)_horizontalLayoutGuide
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = v2;
  if (v2)
  {
    v2[409] = 1;
    [v2 _setUpCounterDimensionConstraint];
  }

  return v3;
}

- (double)length
{
  if ([(UIView *)self _layoutEngine])
  {
    [(UIView *)self _nsis_bounds];
  }

  else
  {
    [(UIView *)self bounds];
  }

  if (self->_horizontal)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

- (_UILayoutGuide)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _UILayoutGuide;
  v4 = [(UIView *)&v6 initWithCoder:?];
  if (v4)
  {
    if ([coder containsValueForKey:@"_UILayoutGuideIsHorizontal"])
    {
      v4->_horizontal = 1;
    }

    v4->_archivedIdentifier = [objc_msgSend(coder decodeObjectForKey:{@"_UILayoutGuideIdentifier", "copy"}];
    v4->_constraintsToRemoveAtRuntime = [objc_msgSend(coder decodeObjectForKey:{@"_UILayoutGuideConstraintsToRemove", "copy"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UILayoutGuide;
  [(UIView *)&v5 encodeWithCoder:?];
  if (self->_horizontal)
  {
    [coder encodeBool:1 forKey:@"_UILayoutGuideIsHorizontal"];
  }

  [coder encodeObject:-[_UILayoutGuide _archivedIdentifier](self forKey:{"_archivedIdentifier"), @"_UILayoutGuideIdentifier"}];
  [coder encodeObject:-[_UILayoutGuide _constraintsToRemoveAtRuntime](self forKey:{"_constraintsToRemoveAtRuntime"), @"_UILayoutGuideConstraintsToRemove"}];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UILayoutGuide;
  [(UIView *)&v3 dealloc];
}

- (id)_layoutVariablesWithAmbiguousValue
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = _UILayoutGuide;
  _layoutVariablesWithAmbiguousValue = [(UIView *)&v6 _layoutVariablesWithAmbiguousValue];
  if (self->_horizontal)
  {
    nsli_minYVariable = [(UIView *)self nsli_minYVariable];
  }

  else
  {
    nsli_minYVariable = [(UIView *)self nsli_minXVariable];
  }

  v7[0] = nsli_minYVariable;
  return [_layoutVariablesWithAmbiguousValue arrayByExcludingObjectsInArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v7, 1)}];
}

@end
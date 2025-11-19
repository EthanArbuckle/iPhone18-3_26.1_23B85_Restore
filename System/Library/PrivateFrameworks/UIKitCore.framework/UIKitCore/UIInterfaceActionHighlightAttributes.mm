@interface UIInterfaceActionHighlightAttributes
- (BOOL)_hasNonClearBackgroundColor;
- (BOOL)isEqual:(id)a3;
- (UIInterfaceActionHighlightAttributes)init;
- (double)opacity;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newBackgroundHighlightView;
@end

@implementation UIInterfaceActionHighlightAttributes

- (UIInterfaceActionHighlightAttributes)init
{
  v7.receiver = self;
  v7.super_class = UIInterfaceActionHighlightAttributes;
  v2 = [(UIInterfaceActionHighlightAttributes *)&v7 init];
  v3 = v2;
  if (v2)
  {
    filters = v2->_filters;
    v5 = MEMORY[0x1E695E0F0];
    v2->_opacity = -1.0;
    v2->_filters = v5;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [(UIInterfaceActionHighlightAttributes *)self opacity];
  [v4 setOpacity:?];
  v5 = [(UIInterfaceActionHighlightAttributes *)self filters];
  [v4 setFilters:v5];

  v6 = [(UIInterfaceActionHighlightAttributes *)self backgroundColor];
  [v4 setBackgroundColor:v6];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    [(UIInterfaceActionHighlightAttributes *)self opacity];
    v9 = v8;
    [v7 opacity];
    if (v9 != v10)
    {
      v13 = 0;
LABEL_11:

      goto LABEL_12;
    }

    v11 = [(UIInterfaceActionHighlightAttributes *)self backgroundColor];
    v12 = [v7 backgroundColor];
    if (v11 == v12 || (-[UIInterfaceActionHighlightAttributes backgroundColor](self, "backgroundColor"), v3 = objc_claimAutoreleasedReturnValue(), [v7 backgroundColor], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      v14 = [(UIInterfaceActionHighlightAttributes *)self filters];
      v15 = [v7 filters];
      v13 = [v14 isEqual:v15];

      if (v11 == v12)
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_10;
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (double)opacity
{
  result = self->_opacity;
  if (result == -1.0)
  {
    v5 = [(UIInterfaceActionHighlightAttributes *)self _hasNonClearBackgroundColor:v2];
    result = 0.0;
    if (v5)
    {
      return 1.0;
    }
  }

  return result;
}

- (id)newBackgroundHighlightView
{
  v3 = [_UIBlendingHighlightView alloc];
  v4 = [(UIInterfaceActionHighlightAttributes *)self filters];
  v5 = [(_UIBlendingHighlightView *)v3 initWithTopLevelFilters:v4 compositingColors:MEMORY[0x1E695E0F0] compositingFilterModes:MEMORY[0x1E695E0F0]];

  v6 = [(UIInterfaceActionHighlightAttributes *)self backgroundColor];

  if (v6)
  {
    v7 = [(UIInterfaceActionHighlightAttributes *)self backgroundColor];
    [(UIView *)v5 setBackgroundColor:v7];
  }

  [(UIInterfaceActionHighlightAttributes *)self opacity];
  [(UIView *)v5 setAlpha:?];
  return v5;
}

- (BOOL)_hasNonClearBackgroundColor
{
  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    v3 = +[UIColor clearColor];
    LODWORD(backgroundColor) = ![(UIColor *)backgroundColor isEqual:v3];
  }

  return backgroundColor;
}

@end
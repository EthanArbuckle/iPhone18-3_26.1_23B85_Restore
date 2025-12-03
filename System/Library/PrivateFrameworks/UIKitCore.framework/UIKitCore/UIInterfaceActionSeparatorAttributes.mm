@interface UIInterfaceActionSeparatorAttributes
- (BOOL)_hasNonClearBackgroundColor;
- (BOOL)isEqual:(id)equal;
- (UIInterfaceActionSeparatorAttributes)init;
- (double)opacity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newSeparatorView;
@end

@implementation UIInterfaceActionSeparatorAttributes

- (UIInterfaceActionSeparatorAttributes)init
{
  v6.receiver = self;
  v6.super_class = UIInterfaceActionSeparatorAttributes;
  v2 = [(UIInterfaceActionSeparatorAttributes *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_opacity = -1.0;
    filters = v2->_filters;
    v2->_filters = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [(UIInterfaceActionSeparatorAttributes *)self opacity];
  [v4 setOpacity:?];
  filters = [(UIInterfaceActionSeparatorAttributes *)self filters];
  [v4 setFilters:filters];

  backgroundColor = [(UIInterfaceActionSeparatorAttributes *)self backgroundColor];
  [v4 setBackgroundColor:backgroundColor];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
    [(UIInterfaceActionSeparatorAttributes *)self opacity];
    v9 = v8;
    [v7 opacity];
    if (v9 != v10)
    {
      v13 = 0;
LABEL_11:

      goto LABEL_12;
    }

    backgroundColor = [(UIInterfaceActionSeparatorAttributes *)self backgroundColor];
    backgroundColor2 = [v7 backgroundColor];
    if (backgroundColor == backgroundColor2 || (-[UIInterfaceActionSeparatorAttributes backgroundColor](self, "backgroundColor"), v3 = objc_claimAutoreleasedReturnValue(), [v7 backgroundColor], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      filters = [(UIInterfaceActionSeparatorAttributes *)self filters];
      filters2 = [v7 filters];
      v13 = [filters isEqual:filters2];

      if (backgroundColor == backgroundColor2)
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
  if (result < 0.0)
  {
    v5 = [(UIInterfaceActionSeparatorAttributes *)self _hasNonClearBackgroundColor:v2];
    result = 0.0;
    if (v5)
    {
      return 1.0;
    }
  }

  return result;
}

- (id)newSeparatorView
{
  v3 = [_UIInterfaceActionBlendingSeparatorView alloc];
  filters = [(UIInterfaceActionSeparatorAttributes *)self filters];
  v5 = [(_UIInterfaceActionBlendingSeparatorView *)v3 initWithTopLevelFilters:filters compositingColors:MEMORY[0x1E695E0F0] compositingFilterModes:MEMORY[0x1E695E0F0]];

  backgroundColor = [(UIInterfaceActionSeparatorAttributes *)self backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [(UIInterfaceActionSeparatorAttributes *)self backgroundColor];
    [(UIView *)v5 setBackgroundColor:backgroundColor2];
  }

  [(UIInterfaceActionSeparatorAttributes *)self opacity];
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
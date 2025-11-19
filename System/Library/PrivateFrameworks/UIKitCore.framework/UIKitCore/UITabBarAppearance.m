@interface UITabBarAppearance
- (BOOL)_checkEqualTo:(id)a3;
- (id)_carPlayTabButtonAppearanceData;
- (id)_dataForItemStyle:(int64_t)a3;
- (unint64_t)_hashInto:(unint64_t)a3;
- (void)_completeInit;
- (void)_copyFromAppearance:(id)a3;
- (void)_decodeFromCoder:(id)a3;
- (void)_describeInto:(id)a3;
- (void)_setupDefaults;
- (void)_tabBarItemDataChanged:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setCompactInlineLayoutAppearance:(UITabBarItemAppearance *)compactInlineLayoutAppearance;
- (void)setInlineLayoutAppearance:(UITabBarItemAppearance *)inlineLayoutAppearance;
- (void)setSelectionIndicatorImage:(UIImage *)selectionIndicatorImage;
- (void)setSelectionIndicatorTintColor:(UIColor *)selectionIndicatorTintColor;
- (void)setStackedItemPositioning:(UITabBarItemPositioning)stackedItemPositioning;
- (void)setStackedItemSpacing:(CGFloat)stackedItemSpacing;
- (void)setStackedItemWidth:(CGFloat)stackedItemWidth;
- (void)setStackedLayoutAppearance:(UITabBarItemAppearance *)stackedLayoutAppearance;
@end

@implementation UITabBarAppearance

- (void)_completeInit
{
  v3.receiver = self;
  v3.super_class = UITabBarAppearance;
  [(UIBarAppearance *)&v3 _completeInit];
  [(UITabBarItemAppearance *)self->_stackedLayoutAppearance _setOwningAppearance:self];
  [(UITabBarItemAppearance *)self->_inlineLayoutAppearance _setOwningAppearance:self];
  [(UITabBarItemAppearance *)self->_compactInlineLayoutAppearance _setOwningAppearance:self];
}

- (void)_setupDefaults
{
  v11.receiver = self;
  v11.super_class = UITabBarAppearance;
  [(UIBarAppearance *)&v11 _setupDefaults];
  if (!self->_stackedLayoutAppearance)
  {
    v3 = [[UITabBarItemAppearance alloc] initWithStyle:0];
    stackedLayoutAppearance = self->_stackedLayoutAppearance;
    self->_stackedLayoutAppearance = v3;
  }

  if (!self->_inlineLayoutAppearance)
  {
    v5 = [[UITabBarItemAppearance alloc] initWithStyle:1];
    inlineLayoutAppearance = self->_inlineLayoutAppearance;
    self->_inlineLayoutAppearance = v5;
  }

  if (!self->_compactInlineLayoutAppearance)
  {
    v7 = [[UITabBarItemAppearance alloc] initWithStyle:2];
    compactInlineLayoutAppearance = self->_compactInlineLayoutAppearance;
    self->_compactInlineLayoutAppearance = v7;
  }

  if (!self->_layoutData)
  {
    v9 = +[_UITabBarLayoutData standardLayoutData];
    layoutData = self->_layoutData;
    self->_layoutData = v9;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UITabBarAppearance;
  v4 = a3;
  [(UIBarAppearance *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_stackedLayoutAppearance forKey:{@"Stacked", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_inlineLayoutAppearance forKey:@"Inline"];
  [v4 encodeObject:self->_compactInlineLayoutAppearance forKey:@"CompactInline"];
  [(_UITabBarLayoutData *)self->_layoutData encodeToCoder:v4 prefix:@"Layout"];
}

- (void)_copyFromAppearance:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = UITabBarAppearance;
  [(UIBarAppearance *)&v17 _copyFromAppearance:v4];
  v5 = [v4 _stackedTabButtonAppearanceData];
  if (v5)
  {
    v6 = [[UITabBarItemAppearance alloc] _initWithTabBarItemData:v5];
    stackedLayoutAppearance = self->_stackedLayoutAppearance;
    self->_stackedLayoutAppearance = v6;
  }

  v8 = [v4 _inlineTabButtonAppearanceData];
  if (v8)
  {
    v9 = [[UITabBarItemAppearance alloc] _initWithTabBarItemData:v8];
    inlineLayoutAppearance = self->_inlineLayoutAppearance;
    self->_inlineLayoutAppearance = v9;
  }

  v11 = [v4 _compactInlineTabButtonAppearanceData];
  if (v11)
  {
    v12 = [[UITabBarItemAppearance alloc] _initWithTabBarItemData:v11];
    compactInlineLayoutAppearance = self->_compactInlineLayoutAppearance;
    self->_compactInlineLayoutAppearance = v12;
  }

  v14 = [v4 _tabLayoutAppearanceData];
  v15 = [v14 copy];
  layoutData = self->_layoutData;
  self->_layoutData = v15;
}

- (void)_decodeFromCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = UITabBarAppearance;
  v4 = a3;
  [(UIBarAppearance *)&v13 _decodeFromCoder:v4];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:{@"Stacked", v13.receiver, v13.super_class}];
  stackedLayoutAppearance = self->_stackedLayoutAppearance;
  self->_stackedLayoutAppearance = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Inline"];
  inlineLayoutAppearance = self->_inlineLayoutAppearance;
  self->_inlineLayoutAppearance = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CompactInline"];
  compactInlineLayoutAppearance = self->_compactInlineLayoutAppearance;
  self->_compactInlineLayoutAppearance = v9;

  v11 = [_UITabBarLayoutData decodeFromCoder:v4 prefix:@"Layout"];

  layoutData = self->_layoutData;
  self->_layoutData = v11;
}

- (void)_describeInto:(id)a3
{
  v5.receiver = self;
  v5.super_class = UITabBarAppearance;
  v4 = a3;
  [(UIBarAppearance *)&v5 _describeInto:v4];
  [v4 appendFormat:@"\n\tStackedItemAppearance(%p):", self->_stackedLayoutAppearance];
  [(UITabBarItemAppearance *)self->_stackedLayoutAppearance _describeInto:v4];
  [v4 appendFormat:@"\n\tInlineItemAppearance(%p):", self->_inlineLayoutAppearance];
  [(UITabBarItemAppearance *)self->_inlineLayoutAppearance _describeInto:v4];
  [v4 appendFormat:@"\n\tCompactInlineItemAppearance(%p):", self->_compactInlineLayoutAppearance];
  [(UITabBarItemAppearance *)self->_compactInlineLayoutAppearance _describeInto:v4];
  [v4 appendFormat:@"\n\tItemLayout(%p):", self->_layoutData];
  [(_UITabBarLayoutData *)self->_layoutData describeInto:v4];
}

- (unint64_t)_hashInto:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = UITabBarAppearance;
  v4 = 3 * [(UIBarAppearance *)&v9 _hashInto:a3];
  v5 = 3 * ([(UITabBarItemAppearance *)self->_stackedLayoutAppearance hash]+ v4);
  v6 = 3 * ([(UITabBarItemAppearance *)self->_inlineLayoutAppearance hash]+ v5);
  v7 = 3 * ([(UITabBarItemAppearance *)self->_compactInlineLayoutAppearance hash]+ v6);
  return [(_UIBarAppearanceData *)self->_layoutData hash]+ v7;
}

- (BOOL)_checkEqualTo:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = UITabBarAppearance;
  if (![(UIBarAppearance *)&v20 _checkEqualTo:v4])
  {
    LOBYTE(v10) = 0;
    goto LABEL_19;
  }

  v5 = v4[9];
  v6 = self->_stackedLayoutAppearance;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_17;
    }

    v10 = [(UITabBarItemAppearance *)v6 isEqual:v7];

    if (!v10)
    {
      goto LABEL_19;
    }
  }

  v11 = v4[10];
  v6 = self->_inlineLayoutAppearance;
  v12 = v11;
  v8 = v12;
  if (v6 == v12)
  {

LABEL_22:
    v15 = v4[11];
    v6 = self->_compactInlineLayoutAppearance;
    v16 = v15;
    v8 = v16;
    if (v6 == v16)
    {

LABEL_28:
      layoutData = self->_layoutData;
      v18 = v4[7];
      v6 = layoutData;
      v19 = v18;
      v8 = v19;
      if (v6 == v19)
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        LOBYTE(v10) = 0;
        if (v6 && v19)
        {
          LOBYTE(v10) = [(UITabBarItemAppearance *)v6 isEqual:v19];
        }
      }

      goto LABEL_18;
    }

    LOBYTE(v10) = 0;
    if (v6 && v16)
    {
      v10 = [(UITabBarItemAppearance *)v6 isEqual:v16];

      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (v6)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
LABEL_17:
    LOBYTE(v10) = 0;
    goto LABEL_18;
  }

  v10 = [(UITabBarItemAppearance *)v6 isEqual:v12];

  if (v10)
  {
    goto LABEL_22;
  }

LABEL_19:

  return v10;
}

- (id)_carPlayTabButtonAppearanceData
{
  if (_UISolariumEnabled() && !self->_carPlayAppearance)
  {
    v3 = [[UITabBarItemAppearance alloc] initWithStyle:3];
    carPlayAppearance = self->_carPlayAppearance;
    self->_carPlayAppearance = v3;
  }

  v5 = self->_carPlayAppearance;

  return [(UITabBarItemAppearance *)v5 _data];
}

- (id)_dataForItemStyle:(int64_t)a3
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      v6 = 72;
      goto LABEL_12;
    }

    if (a3 == 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UITabBarAppearance.m" lineNumber:520 description:{@"Invalid style (%li)", a3}];

    v8 = 0;
    goto LABEL_13;
  }

  if (a3 == 2)
  {
    v6 = 88;
    goto LABEL_12;
  }

  if (a3 == 3)
  {
    v8 = [(UITabBarAppearance *)self _carPlayTabButtonAppearanceData];
    goto LABEL_13;
  }

  if (a3 != 4)
  {
    goto LABEL_8;
  }

LABEL_5:
  v6 = 80;
LABEL_12:
  v8 = [*(&self->super.super.isa + v6) _data];
LABEL_13:

  return v8;
}

- (void)setStackedLayoutAppearance:(UITabBarItemAppearance *)stackedLayoutAppearance
{
  v5 = stackedLayoutAppearance;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UITabBarAppearance.m" lineNumber:539 description:@"Use -[UITabBarItemAppearance configureWithDefaultForStyle:] to reset"];
  }

  v6 = self->_stackedLayoutAppearance;
  v7 = v5;
  v12 = v7;
  if (v6 == v7)
  {

    goto LABEL_11;
  }

  if (!v7 || !v6)
  {

    goto LABEL_10;
  }

  v8 = [(UITabBarItemAppearance *)v6 isEqual:v7];

  if (!v8)
  {
LABEL_10:
    [(UITabBarItemAppearance *)self->_stackedLayoutAppearance _setOwningAppearance:0];
    v9 = [(UITabBarItemAppearance *)v12 copy];
    v10 = self->_stackedLayoutAppearance;
    self->_stackedLayoutAppearance = v9;

    [(UITabBarItemAppearance *)self->_stackedLayoutAppearance _setOwningAppearance:self];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_11:
}

- (void)setInlineLayoutAppearance:(UITabBarItemAppearance *)inlineLayoutAppearance
{
  v5 = inlineLayoutAppearance;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UITabBarAppearance.m" lineNumber:550 description:@"Use -[UITabBarItemAppearance configureWithDefaultForStyle:] to reset"];
  }

  v6 = self->_inlineLayoutAppearance;
  v7 = v5;
  v12 = v7;
  if (v6 == v7)
  {

    goto LABEL_11;
  }

  if (!v7 || !v6)
  {

    goto LABEL_10;
  }

  v8 = [(UITabBarItemAppearance *)v6 isEqual:v7];

  if (!v8)
  {
LABEL_10:
    [(UITabBarItemAppearance *)self->_inlineLayoutAppearance _setOwningAppearance:0];
    v9 = [(UITabBarItemAppearance *)v12 copy];
    v10 = self->_inlineLayoutAppearance;
    self->_inlineLayoutAppearance = v9;

    [(UITabBarItemAppearance *)self->_inlineLayoutAppearance _setOwningAppearance:self];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_11:
}

- (void)setCompactInlineLayoutAppearance:(UITabBarItemAppearance *)compactInlineLayoutAppearance
{
  v5 = compactInlineLayoutAppearance;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UITabBarAppearance.m" lineNumber:561 description:@"Use -[UITabBarItemAppearance configureWithDefaultForStyle:] to reset"];
  }

  v6 = self->_compactInlineLayoutAppearance;
  v7 = v5;
  v12 = v7;
  if (v6 == v7)
  {

    goto LABEL_11;
  }

  if (!v7 || !v6)
  {

    goto LABEL_10;
  }

  v8 = [(UITabBarItemAppearance *)v6 isEqual:v7];

  if (!v8)
  {
LABEL_10:
    [(UITabBarItemAppearance *)self->_compactInlineLayoutAppearance _setOwningAppearance:0];
    v9 = [(UITabBarItemAppearance *)v12 copy];
    v10 = self->_compactInlineLayoutAppearance;
    self->_compactInlineLayoutAppearance = v9;

    [(UITabBarItemAppearance *)self->_compactInlineLayoutAppearance _setOwningAppearance:self];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_11:
}

- (void)setSelectionIndicatorTintColor:(UIColor *)selectionIndicatorTintColor
{
  v4 = selectionIndicatorTintColor;
  if (v4 && (+[UIColor clearColor], v5 = objc_claimAutoreleasedReturnValue(), v6 = [(UIColor *)v4 isEqual:v5], v5, !v6))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(_UITabBarLayoutData *)self->_layoutData selectionIndicatorTintColor];
  v9 = v7;
  v13 = v9;
  if (v8 == v9)
  {

    goto LABEL_13;
  }

  if (!v9 || !v8)
  {

    goto LABEL_12;
  }

  v10 = [(UIColor *)v8 isEqual:v9];

  if (!v10)
  {
LABEL_12:
    v11 = [(_UIBarAppearanceData *)self->_layoutData writableInstance];
    layoutData = self->_layoutData;
    self->_layoutData = v11;

    [(_UITabBarLayoutData *)v11 setSelectionIndicatorTintColor:v13];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_13:
}

- (void)setSelectionIndicatorImage:(UIImage *)selectionIndicatorImage
{
  v4 = selectionIndicatorImage;
  v5 = v4;
  if (v4)
  {
    [(UIImage *)v4 size];
    v7 = 0;
    if (v8 != 0.0 && v6 != 0.0)
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = [(_UITabBarLayoutData *)self->_layoutData selectionIndicatorImage];
  v10 = v7;
  v14 = v10;
  if (v9 == v10)
  {

    goto LABEL_14;
  }

  if (!v10 || !v9)
  {

    goto LABEL_13;
  }

  v11 = [(UIImage *)v9 isEqual:v10];

  if (!v11)
  {
LABEL_13:
    v12 = [(_UIBarAppearanceData *)self->_layoutData writableInstance];
    layoutData = self->_layoutData;
    self->_layoutData = v12;

    [(_UITabBarLayoutData *)v12 setSelectionIndicatorImage:v14];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_14:
}

- (void)setStackedItemPositioning:(UITabBarItemPositioning)stackedItemPositioning
{
  if ([(_UITabBarLayoutData *)self->_layoutData itemPositioning]!= stackedItemPositioning)
  {
    v5 = [(_UIBarAppearanceData *)self->_layoutData writableInstance];
    layoutData = self->_layoutData;
    self->_layoutData = v5;

    [(_UITabBarLayoutData *)v5 setItemPositioning:stackedItemPositioning];

    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }
}

- (void)setStackedItemWidth:(CGFloat)stackedItemWidth
{
  [(_UITabBarLayoutData *)self->_layoutData itemWidth];
  if (v5 != stackedItemWidth)
  {
    v6 = [(_UIBarAppearanceData *)self->_layoutData writableInstance];
    layoutData = self->_layoutData;
    self->_layoutData = v6;

    [(_UITabBarLayoutData *)v6 setItemWidth:stackedItemWidth];

    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }
}

- (void)setStackedItemSpacing:(CGFloat)stackedItemSpacing
{
  [(_UITabBarLayoutData *)self->_layoutData itemSpacing];
  if (v5 != stackedItemSpacing)
  {
    v6 = [(_UIBarAppearanceData *)self->_layoutData writableInstance];
    layoutData = self->_layoutData;
    self->_layoutData = v6;

    [(_UITabBarLayoutData *)v6 setItemSpacing:stackedItemSpacing];

    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }
}

- (void)_tabBarItemDataChanged:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_stackedLayoutAppearance == v4)
  {
    v7 = self;
    v8 = 32;
LABEL_10:
    [(UIBarAppearance *)v7 _signalCategoryChanges:v8];
    goto LABEL_11;
  }

  if (self->_inlineLayoutAppearance == v4)
  {
    v7 = self;
    v8 = 64;
    goto LABEL_10;
  }

  if (self->_compactInlineLayoutAppearance == v4)
  {
    v7 = self;
    v8 = 128;
    goto LABEL_10;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v9 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Signal from unknown appearance object %@", &v10, 0xCu);
    }
  }

  else
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &_tabBarItemDataChanged____s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Signal from unknown appearance object %@", &v10, 0xCu);
    }
  }

LABEL_11:
}

@end
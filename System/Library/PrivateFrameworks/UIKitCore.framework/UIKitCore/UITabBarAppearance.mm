@interface UITabBarAppearance
- (BOOL)_checkEqualTo:(id)to;
- (id)_carPlayTabButtonAppearanceData;
- (id)_dataForItemStyle:(int64_t)style;
- (unint64_t)_hashInto:(unint64_t)into;
- (void)_completeInit;
- (void)_copyFromAppearance:(id)appearance;
- (void)_decodeFromCoder:(id)coder;
- (void)_describeInto:(id)into;
- (void)_setupDefaults;
- (void)_tabBarItemDataChanged:(id)changed;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UITabBarAppearance;
  coderCopy = coder;
  [(UIBarAppearance *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_stackedLayoutAppearance forKey:{@"Stacked", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_inlineLayoutAppearance forKey:@"Inline"];
  [coderCopy encodeObject:self->_compactInlineLayoutAppearance forKey:@"CompactInline"];
  [(_UITabBarLayoutData *)self->_layoutData encodeToCoder:coderCopy prefix:@"Layout"];
}

- (void)_copyFromAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v17.receiver = self;
  v17.super_class = UITabBarAppearance;
  [(UIBarAppearance *)&v17 _copyFromAppearance:appearanceCopy];
  _stackedTabButtonAppearanceData = [appearanceCopy _stackedTabButtonAppearanceData];
  if (_stackedTabButtonAppearanceData)
  {
    v6 = [[UITabBarItemAppearance alloc] _initWithTabBarItemData:_stackedTabButtonAppearanceData];
    stackedLayoutAppearance = self->_stackedLayoutAppearance;
    self->_stackedLayoutAppearance = v6;
  }

  _inlineTabButtonAppearanceData = [appearanceCopy _inlineTabButtonAppearanceData];
  if (_inlineTabButtonAppearanceData)
  {
    v9 = [[UITabBarItemAppearance alloc] _initWithTabBarItemData:_inlineTabButtonAppearanceData];
    inlineLayoutAppearance = self->_inlineLayoutAppearance;
    self->_inlineLayoutAppearance = v9;
  }

  _compactInlineTabButtonAppearanceData = [appearanceCopy _compactInlineTabButtonAppearanceData];
  if (_compactInlineTabButtonAppearanceData)
  {
    v12 = [[UITabBarItemAppearance alloc] _initWithTabBarItemData:_compactInlineTabButtonAppearanceData];
    compactInlineLayoutAppearance = self->_compactInlineLayoutAppearance;
    self->_compactInlineLayoutAppearance = v12;
  }

  _tabLayoutAppearanceData = [appearanceCopy _tabLayoutAppearanceData];
  v15 = [_tabLayoutAppearanceData copy];
  layoutData = self->_layoutData;
  self->_layoutData = v15;
}

- (void)_decodeFromCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = UITabBarAppearance;
  coderCopy = coder;
  [(UIBarAppearance *)&v13 _decodeFromCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"Stacked", v13.receiver, v13.super_class}];
  stackedLayoutAppearance = self->_stackedLayoutAppearance;
  self->_stackedLayoutAppearance = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Inline"];
  inlineLayoutAppearance = self->_inlineLayoutAppearance;
  self->_inlineLayoutAppearance = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CompactInline"];
  compactInlineLayoutAppearance = self->_compactInlineLayoutAppearance;
  self->_compactInlineLayoutAppearance = v9;

  v11 = [_UITabBarLayoutData decodeFromCoder:coderCopy prefix:@"Layout"];

  layoutData = self->_layoutData;
  self->_layoutData = v11;
}

- (void)_describeInto:(id)into
{
  v5.receiver = self;
  v5.super_class = UITabBarAppearance;
  intoCopy = into;
  [(UIBarAppearance *)&v5 _describeInto:intoCopy];
  [intoCopy appendFormat:@"\n\tStackedItemAppearance(%p):", self->_stackedLayoutAppearance];
  [(UITabBarItemAppearance *)self->_stackedLayoutAppearance _describeInto:intoCopy];
  [intoCopy appendFormat:@"\n\tInlineItemAppearance(%p):", self->_inlineLayoutAppearance];
  [(UITabBarItemAppearance *)self->_inlineLayoutAppearance _describeInto:intoCopy];
  [intoCopy appendFormat:@"\n\tCompactInlineItemAppearance(%p):", self->_compactInlineLayoutAppearance];
  [(UITabBarItemAppearance *)self->_compactInlineLayoutAppearance _describeInto:intoCopy];
  [intoCopy appendFormat:@"\n\tItemLayout(%p):", self->_layoutData];
  [(_UITabBarLayoutData *)self->_layoutData describeInto:intoCopy];
}

- (unint64_t)_hashInto:(unint64_t)into
{
  v9.receiver = self;
  v9.super_class = UITabBarAppearance;
  v4 = 3 * [(UIBarAppearance *)&v9 _hashInto:into];
  v5 = 3 * ([(UITabBarItemAppearance *)self->_stackedLayoutAppearance hash]+ v4);
  v6 = 3 * ([(UITabBarItemAppearance *)self->_inlineLayoutAppearance hash]+ v5);
  v7 = 3 * ([(UITabBarItemAppearance *)self->_compactInlineLayoutAppearance hash]+ v6);
  return [(_UIBarAppearanceData *)self->_layoutData hash]+ v7;
}

- (BOOL)_checkEqualTo:(id)to
{
  toCopy = to;
  v20.receiver = self;
  v20.super_class = UITabBarAppearance;
  if (![(UIBarAppearance *)&v20 _checkEqualTo:toCopy])
  {
    LOBYTE(v10) = 0;
    goto LABEL_19;
  }

  v5 = toCopy[9];
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

  v11 = toCopy[10];
  v6 = self->_inlineLayoutAppearance;
  v12 = v11;
  v8 = v12;
  if (v6 == v12)
  {

LABEL_22:
    v15 = toCopy[11];
    v6 = self->_compactInlineLayoutAppearance;
    v16 = v15;
    v8 = v16;
    if (v6 == v16)
    {

LABEL_28:
      layoutData = self->_layoutData;
      v18 = toCopy[7];
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

- (id)_dataForItemStyle:(int64_t)style
{
  if (style <= 1)
  {
    if (!style)
    {
      v6 = 72;
      goto LABEL_12;
    }

    if (style == 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITabBarAppearance.m" lineNumber:520 description:{@"Invalid style (%li)", style}];

    _carPlayTabButtonAppearanceData = 0;
    goto LABEL_13;
  }

  if (style == 2)
  {
    v6 = 88;
    goto LABEL_12;
  }

  if (style == 3)
  {
    _carPlayTabButtonAppearanceData = [(UITabBarAppearance *)self _carPlayTabButtonAppearanceData];
    goto LABEL_13;
  }

  if (style != 4)
  {
    goto LABEL_8;
  }

LABEL_5:
  v6 = 80;
LABEL_12:
  _carPlayTabButtonAppearanceData = [*(&self->super.super.isa + v6) _data];
LABEL_13:

  return _carPlayTabButtonAppearanceData;
}

- (void)setStackedLayoutAppearance:(UITabBarItemAppearance *)stackedLayoutAppearance
{
  v5 = stackedLayoutAppearance;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITabBarAppearance.m" lineNumber:539 description:@"Use -[UITabBarItemAppearance configureWithDefaultForStyle:] to reset"];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITabBarAppearance.m" lineNumber:550 description:@"Use -[UITabBarItemAppearance configureWithDefaultForStyle:] to reset"];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITabBarAppearance.m" lineNumber:561 description:@"Use -[UITabBarItemAppearance configureWithDefaultForStyle:] to reset"];
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

  selectionIndicatorTintColor = [(_UITabBarLayoutData *)self->_layoutData selectionIndicatorTintColor];
  v9 = v7;
  v13 = v9;
  if (selectionIndicatorTintColor == v9)
  {

    goto LABEL_13;
  }

  if (!v9 || !selectionIndicatorTintColor)
  {

    goto LABEL_12;
  }

  v10 = [(UIColor *)selectionIndicatorTintColor isEqual:v9];

  if (!v10)
  {
LABEL_12:
    writableInstance = [(_UIBarAppearanceData *)self->_layoutData writableInstance];
    layoutData = self->_layoutData;
    self->_layoutData = writableInstance;

    [(_UITabBarLayoutData *)writableInstance setSelectionIndicatorTintColor:v13];
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

  selectionIndicatorImage = [(_UITabBarLayoutData *)self->_layoutData selectionIndicatorImage];
  v10 = v7;
  v14 = v10;
  if (selectionIndicatorImage == v10)
  {

    goto LABEL_14;
  }

  if (!v10 || !selectionIndicatorImage)
  {

    goto LABEL_13;
  }

  v11 = [(UIImage *)selectionIndicatorImage isEqual:v10];

  if (!v11)
  {
LABEL_13:
    writableInstance = [(_UIBarAppearanceData *)self->_layoutData writableInstance];
    layoutData = self->_layoutData;
    self->_layoutData = writableInstance;

    [(_UITabBarLayoutData *)writableInstance setSelectionIndicatorImage:v14];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_14:
}

- (void)setStackedItemPositioning:(UITabBarItemPositioning)stackedItemPositioning
{
  if ([(_UITabBarLayoutData *)self->_layoutData itemPositioning]!= stackedItemPositioning)
  {
    writableInstance = [(_UIBarAppearanceData *)self->_layoutData writableInstance];
    layoutData = self->_layoutData;
    self->_layoutData = writableInstance;

    [(_UITabBarLayoutData *)writableInstance setItemPositioning:stackedItemPositioning];

    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }
}

- (void)setStackedItemWidth:(CGFloat)stackedItemWidth
{
  [(_UITabBarLayoutData *)self->_layoutData itemWidth];
  if (v5 != stackedItemWidth)
  {
    writableInstance = [(_UIBarAppearanceData *)self->_layoutData writableInstance];
    layoutData = self->_layoutData;
    self->_layoutData = writableInstance;

    [(_UITabBarLayoutData *)writableInstance setItemWidth:stackedItemWidth];

    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }
}

- (void)setStackedItemSpacing:(CGFloat)stackedItemSpacing
{
  [(_UITabBarLayoutData *)self->_layoutData itemSpacing];
  if (v5 != stackedItemSpacing)
  {
    writableInstance = [(_UIBarAppearanceData *)self->_layoutData writableInstance];
    layoutData = self->_layoutData;
    self->_layoutData = writableInstance;

    [(_UITabBarLayoutData *)writableInstance setItemSpacing:stackedItemSpacing];

    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }
}

- (void)_tabBarItemDataChanged:(id)changed
{
  v12 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = changedCopy;
  if (self->_stackedLayoutAppearance == changedCopy)
  {
    selfCopy3 = self;
    v8 = 32;
LABEL_10:
    [(UIBarAppearance *)selfCopy3 _signalCategoryChanges:v8];
    goto LABEL_11;
  }

  if (self->_inlineLayoutAppearance == changedCopy)
  {
    selfCopy3 = self;
    v8 = 64;
    goto LABEL_10;
  }

  if (self->_compactInlineLayoutAppearance == changedCopy)
  {
    selfCopy3 = self;
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
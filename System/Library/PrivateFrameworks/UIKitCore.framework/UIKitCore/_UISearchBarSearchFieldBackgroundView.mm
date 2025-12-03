@interface _UISearchBarSearchFieldBackgroundView
- (_UISearchBarSearchFieldBackgroundView)initWithFrame:(CGRect)frame active:(BOOL)active;
- (_UISearchBarSearchFieldBackgroundView)initWithFrame:(CGRect)frame active:(BOOL)active updateView:(BOOL)view;
- (id)_automaticFillColorForActive:(BOOL)active;
- (id)_fillColor:(BOOL)color;
- (id)_strokeColor:(BOOL)color;
- (id)_ultralightFillColorForOverlayFilter:(BOOL)filter active:(BOOL)active;
- (void)layoutSubviews;
- (void)setBackgroundContainer:(BOOL)container;
- (void)setBarStyle:(int64_t)style;
- (void)setCornerRadius:(double)radius;
- (void)setSearchBarStyle:(unint64_t)style;
- (void)setShowingCursor:(BOOL)cursor;
- (void)setShowingTouch:(BOOL)touch;
@end

@implementation _UISearchBarSearchFieldBackgroundView

- (_UISearchBarSearchFieldBackgroundView)initWithFrame:(CGRect)frame active:(BOOL)active
{
  v5.receiver = self;
  v5.super_class = _UISearchBarSearchFieldBackgroundView;
  return [(_UITextFieldRoundedRectBackgroundViewNeue *)&v5 _initWithFrame:active active:0 usesSinglePixelLineWidth:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (_UISearchBarSearchFieldBackgroundView)initWithFrame:(CGRect)frame active:(BOOL)active updateView:(BOOL)view
{
  v6.receiver = self;
  v6.super_class = _UISearchBarSearchFieldBackgroundView;
  return [(_UITextFieldRoundedRectBackgroundViewNeue *)&v6 _initWithFrame:active active:0 usesSinglePixelLineWidth:0 updateView:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (void)setCornerRadius:(double)radius
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = _UISearchBarSearchFieldBackgroundView;
  [(_UITextFieldRoundedRectBackgroundViewNeue *)&v15 setCornerRadius:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  subviews = [(UIView *)self subviews];
  v6 = [subviews countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(subviews);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setCornerRadius:radius];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [subviews countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)setBarStyle:(int64_t)style
{
  if (self->_barStyle != style)
  {
    self->_barStyle = style;
    [(_UITextFieldRoundedRectBackgroundViewNeue *)self updateView];
  }
}

- (void)setSearchBarStyle:(unint64_t)style
{
  if (self->_searchBarStyle != style)
  {
    self->_searchBarStyle = style;
    [(_UITextFieldRoundedRectBackgroundViewNeue *)self updateView];
  }
}

- (void)setShowingTouch:(BOOL)touch
{
  if (self->_showingTouch != touch)
  {
    self->_showingTouch = touch;
    [(_UITextFieldRoundedRectBackgroundViewNeue *)self updateView];
  }
}

- (void)setShowingCursor:(BOOL)cursor
{
  if (self->_showingCursor != cursor)
  {
    self->_showingCursor = cursor;
    [(_UITextFieldRoundedRectBackgroundViewNeue *)self updateView];
  }
}

- (id)_strokeColor:(BOOL)color
{
  colorCopy = color;
  if ([(_UISearchBarSearchFieldBackgroundView *)self barStyle])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UISearchBarSearchFieldBackgroundView;
    v5 = [(_UITextFieldRoundedRectBackgroundViewNeue *)&v7 _strokeColor:colorCopy];
  }

  return v5;
}

- (id)_fillColor:(BOOL)color
{
  if (self->_backgroundContainer)
  {
    goto LABEL_2;
  }

  colorCopy = color;
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    v8 = +[UIColor _carSystemQuaternaryColor];
LABEL_35:
    v3 = v8;
    goto LABEL_36;
  }

  searchBarStyle = [(_UISearchBarSearchFieldBackgroundView *)self searchBarStyle];
  if (searchBarStyle > 2009)
  {
    switch(searchBarStyle)
    {
      case 2010:
        layer = [(UIView *)self layer];
        compositingFilter = [layer compositingFilter];
        type = [compositingFilter type];
        v21 = type;
        v22 = *MEMORY[0x1E6979CD0];
        goto LABEL_17;
      case 2020:
        v10 = !colorCopy;
        v11 = 0.063;
        v12 = 0.18;
        goto LABEL_22;
      case 2030:
        layer2 = [(UIView *)self layer];
        compositingFilter2 = [layer2 compositingFilter];
        type2 = [compositingFilter2 type];
        v16 = [type2 isEqualToString:*MEMORY[0x1E6979CD0]];

        if (v16)
        {
          v17 = 0.182;
          v12 = 0.52;
        }

        else
        {
          v17 = 0.014;
          v12 = 0.04;
        }

        if (!colorCopy)
        {
          v12 = v17;
        }

        v27 = 1.0;
        goto LABEL_34;
    }

LABEL_18:
    if ([(_UISearchBarSearchFieldBackgroundView *)self barStyle])
    {
      if ([(_UISearchBarSearchFieldBackgroundView *)self barStyle]== 4)
      {
LABEL_2:
        v3 = 0;
        goto LABEL_36;
      }

      v24 = !colorCopy;
      v25 = 0.105;
      v26 = 0.3;
      goto LABEL_49;
    }

    v29 = UISearchBarUsesModernAppearance();
    layer = [(UIView *)self layer];
    compositingFilter = [layer compositingFilter];
    type = [compositingFilter type];
    v21 = type;
    if (!v29)
    {
      v32 = [type isEqualToString:*MEMORY[0x1E6979850]];

      v24 = !colorCopy;
      if (v32)
      {
        v12 = 1.0;
        if (!colorCopy)
        {
          v12 = 0.35;
        }

        v27 = 0.48;
        goto LABEL_34;
      }

      v25 = 0.035;
      v26 = 0.1;
LABEL_49:
      if (v24)
      {
        v33 = v25;
      }

      else
      {
        v33 = v26;
      }

      v8 = [UIColor colorWithRed:0.203921569 green:0.223529412 blue:0.31372549 alpha:v33];
      goto LABEL_35;
    }

    v22 = *MEMORY[0x1E6979CD0];
LABEL_17:
    v23 = [type isEqualToString:v22];

    v8 = [(_UISearchBarSearchFieldBackgroundView *)self _ultralightFillColorForOverlayFilter:v23 != 0 active:colorCopy];
    goto LABEL_35;
  }

  if (searchBarStyle >= 2)
  {
    if (searchBarStyle == 2005)
    {
      v8 = [(_UISearchBarSearchFieldBackgroundView *)self _automaticFillColorForActive:colorCopy];
      goto LABEL_35;
    }

    goto LABEL_18;
  }

  if ([(_UISearchBarSearchFieldBackgroundView *)self barStyle])
  {
    v10 = !colorCopy;
    v11 = 0.105;
    v12 = 0.3;
LABEL_22:
    if (v10)
    {
      v12 = v11;
    }

    v27 = 0.0;
LABEL_34:
    v8 = [UIColor colorWithWhite:v27 alpha:v12];
    goto LABEL_35;
  }

  if (dyld_program_sdk_at_least())
  {
    if (colorCopy)
    {
      +[UIColor tertiarySystemFillColor];
    }

    else
    {
      +[UIColor _searchFieldDisabledBackgroundColor];
    }
    v8 = ;
    goto LABEL_35;
  }

  v30 = +[UIColor _textFieldBackgroundColor];
  v3 = v30;
  if (!colorCopy)
  {
    v31 = [v30 colorWithAlphaComponent:0.35];

    v3 = v31;
  }

LABEL_36:

  return v3;
}

- (id)_automaticFillColorForActive:(BOOL)active
{
  if (active)
  {
    if ([(_UISearchBarSearchFieldBackgroundView *)self showingTouch])
    {
      v4 = +[UIColor systemFillColor];
    }

    else
    {
      if ([(_UISearchBarSearchFieldBackgroundView *)self showingCursor])
      {
        +[UIColor secondarySystemFillColor];
      }

      else
      {
        +[UIColor tertiarySystemFillColor];
      }
      v4 = ;
    }
  }

  else
  {
    v4 = +[UIColor _searchFieldDisabledBackgroundColor];
  }

  return v4;
}

- (id)_ultralightFillColorForOverlayFilter:(BOOL)filter active:(BOOL)active
{
  activeCopy = active;
  filterCopy = filter;
  showingTouch = [(_UISearchBarSearchFieldBackgroundView *)self showingTouch];
  v7 = 0.72;
  if (showingTouch)
  {
    v7 = 0.8;
  }

  v8 = 0.05;
  if (showingTouch)
  {
    v8 = 0.16;
  }

  if (!filterCopy)
  {
    v7 = v8;
  }

  v9 = 0.35;
  if (activeCopy)
  {
    v9 = 1.0;
  }

  return [UIColor colorWithRed:0.0 green:0.0274509804 blue:0.0980392157 alpha:v9 * v7];
}

- (void)setBackgroundContainer:(BOOL)container
{
  if (self->_backgroundContainer != container)
  {
    self->_backgroundContainer = container;
    [(_UITextFieldRoundedRectBackgroundViewNeue *)self updateView];
  }
}

- (void)layoutSubviews
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = _UISearchBarSearchFieldBackgroundView;
  [(_UITextFieldRoundedRectBackgroundViewNeue *)&v21 layoutSubviews];
  if (self->_backgroundContainer)
  {
    [(UIView *)self bounds];
    x = v24.origin.x;
    y = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
    MidX = CGRectGetMidX(v24);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    MidY = CGRectGetMidY(v25);
    subviews = [(UIView *)self subviews];
    v10 = [subviews copy];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v17 + 1) + 8 * i);
          [v16 setCenter:{MidX, MidY, v17}];
          [v16 setBounds:{x, y, width, height}];
        }

        v13 = [v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v13);
    }
  }
}

@end
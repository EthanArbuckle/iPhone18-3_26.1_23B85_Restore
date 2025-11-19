@interface _UIFloatingTabBarContentPalette
- (_UIFloatingTabBarContentPalette)init;
- (id)resolvedColorFromProvider:(id)a3;
@end

@implementation _UIFloatingTabBarContentPalette

- (_UIFloatingTabBarContentPalette)init
{
  v7.receiver = self;
  v7.super_class = _UIFloatingTabBarContentPalette;
  v2 = [(_UIFloatingTabBarContentPalette *)&v7 init];
  if (v2)
  {
    v3 = +[UIColor tintColor];
    [(_UIFloatingTabBarContentPalette *)v2 setSelectedColor:v3];

    v4 = +[UIColor labelColor];
    [(_UIFloatingTabBarContentPalette *)v2 setInactiveColor:v4];

    v5 = +[UIColor tertiaryLabelColor];
    [(_UIFloatingTabBarContentPalette *)v2 setHighlightedColor:v5];
  }

  return v2;
}

- (id)resolvedColorFromProvider:(id)a3
{
  v4 = a3;
  if ([v4 isEditing])
  {
    if ([v4 isCustomizableItem])
    {
      v5 = +[UIColor labelColor];
      goto LABEL_6;
    }
  }

  else if (![v4 isDisabled])
  {
    if ([v4 hasSelectionHighlight])
    {
      v5 = [(_UIFloatingTabBarContentPalette *)self selectedColor];
    }

    else
    {
      if ([v4 isHighlighted])
      {
        [(_UIFloatingTabBarContentPalette *)self highlightedColor];
      }

      else
      {
        [(_UIFloatingTabBarContentPalette *)self inactiveColor];
      }
      v5 = ;
    }

    goto LABEL_6;
  }

  v5 = +[UIColor tertiaryLabelColor];
LABEL_6:
  v6 = v5;

  return v6;
}

@end
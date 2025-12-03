@interface _UIFloatingTabBarContentPalette
- (_UIFloatingTabBarContentPalette)init;
- (id)resolvedColorFromProvider:(id)provider;
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

- (id)resolvedColorFromProvider:(id)provider
{
  providerCopy = provider;
  if ([providerCopy isEditing])
  {
    if ([providerCopy isCustomizableItem])
    {
      selectedColor = +[UIColor labelColor];
      goto LABEL_6;
    }
  }

  else if (![providerCopy isDisabled])
  {
    if ([providerCopy hasSelectionHighlight])
    {
      selectedColor = [(_UIFloatingTabBarContentPalette *)self selectedColor];
    }

    else
    {
      if ([providerCopy isHighlighted])
      {
        [(_UIFloatingTabBarContentPalette *)self highlightedColor];
      }

      else
      {
        [(_UIFloatingTabBarContentPalette *)self inactiveColor];
      }
      selectedColor = ;
    }

    goto LABEL_6;
  }

  selectedColor = +[UIColor tertiaryLabelColor];
LABEL_6:
  v6 = selectedColor;

  return v6;
}

@end
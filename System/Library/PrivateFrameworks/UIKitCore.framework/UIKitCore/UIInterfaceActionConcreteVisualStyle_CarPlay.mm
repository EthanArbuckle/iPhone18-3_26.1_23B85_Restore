@interface UIInterfaceActionConcreteVisualStyle_CarPlay
- (BOOL)_shouldHighlightAppearanceForViewState:(id)state;
- (CGSize)minimumActionContentSize;
- (UIEdgeInsets)actionSequenceEdgeInsets;
- (UIEdgeInsets)contentMargin;
- (double)actionSpacingForGroupViewState:(id)state;
- (double)contentCornerRadius;
- (id)_highlightedActionTitleLabelColorForViewState:(id)state;
- (id)_normalActionTitleLabelColorForViewState:(id)state;
- (id)_regularActionFont;
- (id)actionBackgroundColorForViewState:(id)state;
- (id)actionTitleLabelColorForViewState:(id)state;
- (id)actionTitleLabelFontForViewState:(id)state;
- (id)newActionBackgroundViewForViewState:(id)state;
- (id)newActionSeparatorViewForGroupViewState:(id)state;
- (id)newGroupBackgroundViewWithGroupViewState:(id)state;
- (void)configureAttributesForImageView:(id)view imageProperty:(id)property actionViewState:(id)state;
- (void)configureAttributesForTitleLabel:(id)label classificationLabel:(id)classificationLabel actionViewState:(id)state;
@end

@implementation UIInterfaceActionConcreteVisualStyle_CarPlay

- (double)contentCornerRadius
{
  v2 = _UISolariumEnabled();
  result = 40.0;
  if (!v2)
  {
    return 13.0;
  }

  return result;
}

- (UIEdgeInsets)contentMargin
{
  v2 = 12.0;
  v3 = 12.0;
  v4 = 12.0;
  v5 = 12.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)minimumActionContentSize
{
  v2 = 44.0;
  v3 = 0.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (id)actionTitleLabelFontForViewState:(id)state
{
  if ([state isPreferred])
  {
    [(UIInterfaceActionConcreteVisualStyle_CarPlay *)self _preferredActionFont];
  }

  else
  {
    [(UIInterfaceActionConcreteVisualStyle_CarPlay *)self _regularActionFont];
  }
  v4 = ;

  return v4;
}

- (id)actionTitleLabelColorForViewState:(id)state
{
  stateCopy = state;
  if ([(UIInterfaceActionConcreteVisualStyle_CarPlay *)self _shouldHighlightAppearanceForViewState:stateCopy])
  {
    [(UIInterfaceActionConcreteVisualStyle_CarPlay *)self _highlightedActionTitleLabelColorForViewState:stateCopy];
  }

  else
  {
    [(UIInterfaceActionConcreteVisualStyle_CarPlay *)self _normalActionTitleLabelColorForViewState:stateCopy];
  }
  v5 = ;

  return v5;
}

- (id)actionBackgroundColorForViewState:(id)state
{
  stateCopy = state;
  if (_UISolariumEnabled())
  {
    v5 = +[UIColor tertiarySystemFillColor];
    if ([(UIInterfaceActionConcreteVisualStyle_CarPlay *)self _shouldHighlightAppearanceForViewState:stateCopy])
    {
      v6 = +[UIColor _carSystemFocusColor];
LABEL_4:
      v7 = v6;

      v5 = v7;
      goto LABEL_15;
    }

    if ([stateCopy isPreferred])
    {
      action = [stateCopy action];
      type = [action type];

      if (type != 2)
      {
        v6 = +[UIColor systemBlueColor];
        goto LABEL_4;
      }
    }
  }

  else
  {
    if ([stateCopy isPreferred])
    {
      tintColor = [stateCopy tintColor];
    }

    else
    {
      action2 = [stateCopy action];
      type2 = [action2 type];

      if (type2 == 2)
      {
        +[UIColor _alertDestructiveActionBackgroundColor];
      }

      else
      {
        +[UIColor _alertDefaultActionBackgroundColor];
      }
      tintColor = ;
    }

    v5 = tintColor;
  }

LABEL_15:

  return v5;
}

- (id)newActionBackgroundViewForViewState:(id)state
{
  stateCopy = state;
  if (_UISolariumEnabled())
  {
    v5 = objc_alloc_init(_UIAlertControllerCarBackgroundView);
    v6 = [(UIInterfaceActionConcreteVisualStyle_CarPlay *)self actionBackgroundColorForViewState:stateCopy];

    [(_UIAlertControllerCarBackgroundView *)v5 setFillColor:v6];
    action = +[UIColor _carSystemFocusColor];
    [(_UIAlertControllerCarBackgroundView *)v5 setHighlightColor:action];
  }

  else
  {
    action = [stateCopy action];
    isHighlighted = [stateCopy isHighlighted];

    if (isHighlighted)
    {
      v9 = off_1E70EAFE0;
    }

    else
    {
      if ([action type] != 1)
      {
        v5 = 0;
        goto LABEL_9;
      }

      v9 = off_1E70EAFE8;
    }

    v5 = objc_alloc_init(*v9);
  }

LABEL_9:

  return v5;
}

- (id)newGroupBackgroundViewWithGroupViewState:(id)state
{
  v3 = _UISolariumEnabled();
  v4 = off_1E70EAD78;
  if (!v3)
  {
    v4 = off_1E70EAFE8;
  }

  v5 = *v4;

  return objc_alloc_init(v5);
}

- (id)newActionSeparatorViewForGroupViewState:(id)state
{
  if (_UISolariumEnabled())
  {
    return 0;
  }

  return objc_opt_new();
}

- (double)actionSpacingForGroupViewState:(id)state
{
  v3 = _UISolariumEnabled();
  result = 0.0;
  if (v3)
  {
    return 12.0;
  }

  return result;
}

- (UIEdgeInsets)actionSequenceEdgeInsets
{
  v2 = _UISolariumEnabled();
  v3 = 0.0;
  if (v2)
  {
    v3 = 20.0;
  }

  v4 = v3;
  v5 = v3;
  v6 = v3;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)configureAttributesForTitleLabel:(id)label classificationLabel:(id)classificationLabel actionViewState:(id)state
{
  labelCopy = label;
  stateCopy = state;
  if (_UISolariumEnabled())
  {
    if ([(UIInterfaceActionConcreteVisualStyle_CarPlay *)self _shouldHighlightAppearanceForViewState:stateCopy])
    {
      traitCollection = [labelCopy traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];
      v10 = 1;
      if (userInterfaceStyle != 2)
      {
        v10 = userInterfaceStyle;
      }

      if (userInterfaceStyle == 1)
      {
        v11 = 2;
      }

      else
      {
        v11 = v10;
      }

      [labelCopy setOverrideUserInterfaceStyle:v11];
    }

    else
    {
      [labelCopy setOverrideUserInterfaceStyle:0];
    }
  }
}

- (void)configureAttributesForImageView:(id)view imageProperty:(id)property actionViewState:(id)state
{
  viewCopy = view;
  stateCopy = state;
  if (_UISolariumEnabled())
  {
    if ([stateCopy isHighlighted] && (objc_msgSend(stateCopy, "isPreferred") & 1) == 0)
    {
      traitCollection = [viewCopy traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];
      v9 = 1;
      if (userInterfaceStyle != 2)
      {
        v9 = userInterfaceStyle;
      }

      if (userInterfaceStyle == 1)
      {
        v10 = 2;
      }

      else
      {
        v10 = v9;
      }

      [viewCopy setOverrideUserInterfaceStyle:v10];
    }

    else
    {
      [viewCopy setOverrideUserInterfaceStyle:0];
    }
  }
}

- (id)_regularActionFont
{
  if (_AXSCarPlayEnhanceTextLegibilityEnabled())
  {
    [off_1E70ECC18 boldSystemFontOfSize:16.0];
  }

  else
  {
    [off_1E70ECC18 systemFontOfSize:16.0];
  }
  v2 = ;

  return v2;
}

- (id)_highlightedActionTitleLabelColorForViewState:(id)state
{
  stateCopy = state;
  if (_UISolariumEnabled())
  {
    [(UIInterfaceActionConcreteVisualStyle_CarPlay *)self _normalActionTitleLabelColorForViewState:stateCopy];
  }

  else
  {
    +[UIColor _externalSystemDarkGrayColor];
  }
  v5 = ;

  return v5;
}

- (id)_normalActionTitleLabelColorForViewState:(id)state
{
  stateCopy = state;
  v5 = _UISolariumEnabled();
  action = [stateCopy action];
  v7 = action;
  if (!v5)
  {
    type = [action type];

    if (type >= 2)
    {
      if (type == 2)
      {
        tintColor = +[UIColor systemRedColor];
        goto LABEL_17;
      }

      if (type != 100)
      {
        goto LABEL_18;
      }
    }

    tintColor = [stateCopy tintColor];
LABEL_17:
    v7 = tintColor;
    goto LABEL_18;
  }

  isEnabled = [action isEnabled];

  if ((isEnabled & 1) == 0)
  {
    tintColor = +[UIColor _carSystemTertiaryColor];
    goto LABEL_17;
  }

  v7 = +[UIColor labelColor];
  action2 = [stateCopy action];
  type2 = [action2 type];

  if (type2 == 2)
  {
    v11 = +[UIColor systemRedColor];
    goto LABEL_23;
  }

  action3 = [stateCopy action];
  type3 = [action3 type];

  if (type3 == 100)
  {
    tintColor2 = [stateCopy tintColor];

    v17 = +[UIColor systemBlueColor];
    v18 = tintColor2;
    v19 = v17;
    v7 = v19;
    if (v18 == v19)
    {
    }

    else
    {
      if (!v18 || !v19)
      {

        goto LABEL_24;
      }

      v20 = [v18 isEqual:v19];

      if (!v20)
      {
        goto LABEL_25;
      }
    }

    v11 = +[UIColor _systemBlueColor2];
    v7 = v18;
LABEL_23:
    v18 = v11;
LABEL_24:

LABEL_25:
    v7 = v18;
  }

  if ([stateCopy isPreferred])
  {
    v22 = +[UIColor systemWhiteColor];

    v7 = v22;
  }

  if ([(UIInterfaceActionConcreteVisualStyle_CarPlay *)self _shouldHighlightAppearanceForViewState:stateCopy])
  {
    v23 = +[UIColor labelColor];

    v7 = v23;
  }

LABEL_18:

  return v7;
}

- (BOOL)_shouldHighlightAppearanceForViewState:(id)state
{
  stateCopy = state;
  if ([stateCopy isHighlighted])
  {
    isFocused = 1;
  }

  else
  {
    isFocused = [stateCopy isFocused];
  }

  return isFocused;
}

@end
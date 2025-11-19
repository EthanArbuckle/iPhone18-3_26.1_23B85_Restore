@interface UIInterfaceActionConcreteVisualStyle_CarPlay
- (BOOL)_shouldHighlightAppearanceForViewState:(id)a3;
- (CGSize)minimumActionContentSize;
- (UIEdgeInsets)actionSequenceEdgeInsets;
- (UIEdgeInsets)contentMargin;
- (double)actionSpacingForGroupViewState:(id)a3;
- (double)contentCornerRadius;
- (id)_highlightedActionTitleLabelColorForViewState:(id)a3;
- (id)_normalActionTitleLabelColorForViewState:(id)a3;
- (id)_regularActionFont;
- (id)actionBackgroundColorForViewState:(id)a3;
- (id)actionTitleLabelColorForViewState:(id)a3;
- (id)actionTitleLabelFontForViewState:(id)a3;
- (id)newActionBackgroundViewForViewState:(id)a3;
- (id)newActionSeparatorViewForGroupViewState:(id)a3;
- (id)newGroupBackgroundViewWithGroupViewState:(id)a3;
- (void)configureAttributesForImageView:(id)a3 imageProperty:(id)a4 actionViewState:(id)a5;
- (void)configureAttributesForTitleLabel:(id)a3 classificationLabel:(id)a4 actionViewState:(id)a5;
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

- (id)actionTitleLabelFontForViewState:(id)a3
{
  if ([a3 isPreferred])
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

- (id)actionTitleLabelColorForViewState:(id)a3
{
  v4 = a3;
  if ([(UIInterfaceActionConcreteVisualStyle_CarPlay *)self _shouldHighlightAppearanceForViewState:v4])
  {
    [(UIInterfaceActionConcreteVisualStyle_CarPlay *)self _highlightedActionTitleLabelColorForViewState:v4];
  }

  else
  {
    [(UIInterfaceActionConcreteVisualStyle_CarPlay *)self _normalActionTitleLabelColorForViewState:v4];
  }
  v5 = ;

  return v5;
}

- (id)actionBackgroundColorForViewState:(id)a3
{
  v4 = a3;
  if (_UISolariumEnabled())
  {
    v5 = +[UIColor tertiarySystemFillColor];
    if ([(UIInterfaceActionConcreteVisualStyle_CarPlay *)self _shouldHighlightAppearanceForViewState:v4])
    {
      v6 = +[UIColor _carSystemFocusColor];
LABEL_4:
      v7 = v6;

      v5 = v7;
      goto LABEL_15;
    }

    if ([v4 isPreferred])
    {
      v9 = [v4 action];
      v10 = [v9 type];

      if (v10 != 2)
      {
        v6 = +[UIColor systemBlueColor];
        goto LABEL_4;
      }
    }
  }

  else
  {
    if ([v4 isPreferred])
    {
      v8 = [v4 tintColor];
    }

    else
    {
      v11 = [v4 action];
      v12 = [v11 type];

      if (v12 == 2)
      {
        +[UIColor _alertDestructiveActionBackgroundColor];
      }

      else
      {
        +[UIColor _alertDefaultActionBackgroundColor];
      }
      v8 = ;
    }

    v5 = v8;
  }

LABEL_15:

  return v5;
}

- (id)newActionBackgroundViewForViewState:(id)a3
{
  v4 = a3;
  if (_UISolariumEnabled())
  {
    v5 = objc_alloc_init(_UIAlertControllerCarBackgroundView);
    v6 = [(UIInterfaceActionConcreteVisualStyle_CarPlay *)self actionBackgroundColorForViewState:v4];

    [(_UIAlertControllerCarBackgroundView *)v5 setFillColor:v6];
    v7 = +[UIColor _carSystemFocusColor];
    [(_UIAlertControllerCarBackgroundView *)v5 setHighlightColor:v7];
  }

  else
  {
    v7 = [v4 action];
    v8 = [v4 isHighlighted];

    if (v8)
    {
      v9 = off_1E70EAFE0;
    }

    else
    {
      if ([v7 type] != 1)
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

- (id)newGroupBackgroundViewWithGroupViewState:(id)a3
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

- (id)newActionSeparatorViewForGroupViewState:(id)a3
{
  if (_UISolariumEnabled())
  {
    return 0;
  }

  return objc_opt_new();
}

- (double)actionSpacingForGroupViewState:(id)a3
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

- (void)configureAttributesForTitleLabel:(id)a3 classificationLabel:(id)a4 actionViewState:(id)a5
{
  v12 = a3;
  v7 = a5;
  if (_UISolariumEnabled())
  {
    if ([(UIInterfaceActionConcreteVisualStyle_CarPlay *)self _shouldHighlightAppearanceForViewState:v7])
    {
      v8 = [v12 traitCollection];
      v9 = [v8 userInterfaceStyle];
      v10 = 1;
      if (v9 != 2)
      {
        v10 = v9;
      }

      if (v9 == 1)
      {
        v11 = 2;
      }

      else
      {
        v11 = v10;
      }

      [v12 setOverrideUserInterfaceStyle:v11];
    }

    else
    {
      [v12 setOverrideUserInterfaceStyle:0];
    }
  }
}

- (void)configureAttributesForImageView:(id)a3 imageProperty:(id)a4 actionViewState:(id)a5
{
  v11 = a3;
  v6 = a5;
  if (_UISolariumEnabled())
  {
    if ([v6 isHighlighted] && (objc_msgSend(v6, "isPreferred") & 1) == 0)
    {
      v7 = [v11 traitCollection];
      v8 = [v7 userInterfaceStyle];
      v9 = 1;
      if (v8 != 2)
      {
        v9 = v8;
      }

      if (v8 == 1)
      {
        v10 = 2;
      }

      else
      {
        v10 = v9;
      }

      [v11 setOverrideUserInterfaceStyle:v10];
    }

    else
    {
      [v11 setOverrideUserInterfaceStyle:0];
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

- (id)_highlightedActionTitleLabelColorForViewState:(id)a3
{
  v4 = a3;
  if (_UISolariumEnabled())
  {
    [(UIInterfaceActionConcreteVisualStyle_CarPlay *)self _normalActionTitleLabelColorForViewState:v4];
  }

  else
  {
    +[UIColor _externalSystemDarkGrayColor];
  }
  v5 = ;

  return v5;
}

- (id)_normalActionTitleLabelColorForViewState:(id)a3
{
  v4 = a3;
  v5 = _UISolariumEnabled();
  v6 = [v4 action];
  v7 = v6;
  if (!v5)
  {
    v12 = [v6 type];

    if (v12 >= 2)
    {
      if (v12 == 2)
      {
        v13 = +[UIColor systemRedColor];
        goto LABEL_17;
      }

      if (v12 != 100)
      {
        goto LABEL_18;
      }
    }

    v13 = [v4 tintColor];
LABEL_17:
    v7 = v13;
    goto LABEL_18;
  }

  v8 = [v6 isEnabled];

  if ((v8 & 1) == 0)
  {
    v13 = +[UIColor _carSystemTertiaryColor];
    goto LABEL_17;
  }

  v7 = +[UIColor labelColor];
  v9 = [v4 action];
  v10 = [v9 type];

  if (v10 == 2)
  {
    v11 = +[UIColor systemRedColor];
    goto LABEL_23;
  }

  v14 = [v4 action];
  v15 = [v14 type];

  if (v15 == 100)
  {
    v16 = [v4 tintColor];

    v17 = +[UIColor systemBlueColor];
    v18 = v16;
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

  if ([v4 isPreferred])
  {
    v22 = +[UIColor systemWhiteColor];

    v7 = v22;
  }

  if ([(UIInterfaceActionConcreteVisualStyle_CarPlay *)self _shouldHighlightAppearanceForViewState:v4])
  {
    v23 = +[UIColor labelColor];

    v7 = v23;
  }

LABEL_18:

  return v7;
}

- (BOOL)_shouldHighlightAppearanceForViewState:(id)a3
{
  v3 = a3;
  if ([v3 isHighlighted])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isFocused];
  }

  return v4;
}

@end
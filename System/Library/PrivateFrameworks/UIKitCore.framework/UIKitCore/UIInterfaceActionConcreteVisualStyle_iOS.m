@interface UIInterfaceActionConcreteVisualStyle_iOS
- (UIEdgeInsets)actionSequenceEdgeInsets;
- (UIEdgeInsets)contentMargin;
- (UIInterfaceActionConcreteVisualStyle_iOS)initWithTraitCollection:(id)a3;
- (double)actionSpacingForGroupViewState:(id)a3;
- (double)contentCornerRadius;
- (id)_highlightedView;
- (id)_preferredActionFont;
- (id)_regularActionFont;
- (id)actionBackgroundColorForViewState:(id)a3;
- (id)actionTitleLabelColorForViewState:(id)a3;
- (id)actionTitleLabelFontForViewState:(id)a3;
- (id)defaultScreen;
- (id)newActionBackgroundViewForViewState:(id)a3;
- (id)newActionSeparatorViewForGroupViewState:(id)a3;
- (id)newGroupBackgroundViewWithGroupViewState:(id)a3;
- (id)newSectionSeparatorViewForGroupViewState:(id)a3;
@end

@implementation UIInterfaceActionConcreteVisualStyle_iOS

- (UIInterfaceActionConcreteVisualStyle_iOS)initWithTraitCollection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UIInterfaceActionConcreteVisualStyle_iOS;
  v6 = [(UIInterfaceActionConcreteVisualStyle_iOS *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_traitCollection, a3);
  }

  return v7;
}

- (id)defaultScreen
{
  v2 = objc_opt_self();

  return [v2 mainScreen];
}

- (double)contentCornerRadius
{
  v2 = _UISolariumEnabled();
  result = 34.0;
  if (!v2)
  {
    return 13.0;
  }

  return result;
}

- (UIEdgeInsets)contentMargin
{
  v2 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v2);

  if (IsAccessibilityCategory)
  {
    v4 = [UIFontMetrics metricsForTextStyle:@"UICTFontTextStyleBody"];
    [v4 scaledValueForValue:11.0];
    v6 = v5;

    v7 = 16.0;
    v8 = 16.0;
  }

  else
  {
    v6 = 12.0;
    v7 = 12.0;
    v8 = 12.0;
  }

  v9 = v6;
  v10 = v6;
  result.right = v8;
  result.bottom = v10;
  result.left = v7;
  result.top = v9;
  return result;
}

- (double)actionSpacingForGroupViewState:(id)a3
{
  v3 = _UISolariumEnabled();
  result = 0.0;
  if (v3)
  {
    return 8.0;
  }

  return result;
}

- (UIEdgeInsets)actionSequenceEdgeInsets
{
  v2 = _UISolariumEnabled();
  v3 = 0.0;
  if (v2)
  {
    v3 = 16.0;
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

- (id)actionTitleLabelFontForViewState:(id)a3
{
  if ([a3 isPreferred])
  {
    [(UIInterfaceActionConcreteVisualStyle_iOS *)self _preferredActionFont];
  }

  else
  {
    [(UIInterfaceActionConcreteVisualStyle_iOS *)self _regularActionFont];
  }
  v4 = ;

  return v4;
}

- (id)actionTitleLabelColorForViewState:(id)a3
{
  v3 = a3;
  if (_shouldUseSolariumDesign(v3))
  {
    v4 = +[UIColor labelColor];
    v5 = [v3 action];
    if ([v5 isEnabled])
    {
      if ([v3 isPreferred])
      {
        v6 = +[UIColor systemWhiteColor];

        v4 = v6;
      }

      v7 = [v3 action];
      v8 = [v7 type];

      if (v8 == 2)
      {
        v9 = +[UIColor systemRedColor];
      }

      else
      {
        v16 = [v3 action];
        v17 = [v16 type];

        if (v17 != 100)
        {
          goto LABEL_29;
        }

        v18 = [v3 tintColor];

        v19 = +[UIColor systemBlueColor];
        v15 = v18;
        v20 = v19;
        v4 = v20;
        if (v15 == v20)
        {
        }

        else
        {
          if (!v15 || !v20)
          {

            goto LABEL_17;
          }

          v21 = [v15 isEqual:v20];

          if (!v21)
          {
            goto LABEL_18;
          }
        }

        v9 = +[UIColor _systemBlueColor2];
        v4 = v15;
      }
    }

    else
    {
      v9 = +[UIColor tertiaryLabelColor];
    }

    v15 = v9;
LABEL_17:

LABEL_18:
    v4 = v15;
LABEL_29:

    goto LABEL_30;
  }

  v4 = [v3 action];
  v10 = [v4 type];

  if (v10 >= 2)
  {
    if (v10 == 2)
    {
      v4 = +[UIColor systemRedColor];
      goto LABEL_30;
    }

    if (v10 != 100)
    {
      goto LABEL_30;
    }
  }

  v11 = [v3 tintColor];
  v12 = +[UIColor systemBlueColor];
  v4 = v11;
  v13 = v12;
  v5 = v13;
  if (v4 == v13)
  {

LABEL_26:
    +[UIColor _systemBlueColor2];
    v4 = v5 = v4;
    goto LABEL_29;
  }

  if (!v4 || !v13)
  {

    goto LABEL_29;
  }

  v14 = [v4 isEqual:v13];

  if (v14)
  {
    goto LABEL_26;
  }

LABEL_30:

  return v4;
}

- (id)actionBackgroundColorForViewState:(id)a3
{
  v3 = a3;
  v4 = +[UIColor tertiarySystemFillColor];
  v5 = [v3 action];
  if ([v5 isEnabled])
  {
    if ([v3 isPreferred])
    {
      v6 = [v3 action];
      v7 = [v6 type];

      if (v7 != 2)
      {
        v8 = [v3 tintColor];

        v4 = v8;
      }
    }
  }

  return v4;
}

- (id)_highlightedView
{
  v2 = [[_UIAlertControlleriOSHighlightedBackgroundView alloc] initWithStyle:0];

  return v2;
}

- (id)newActionBackgroundViewForViewState:(id)a3
{
  v4 = a3;
  if (_shouldUseSolariumDesign(v4))
  {
    v5 = objc_alloc_init(_UIAlertControllerFilledBackgroundView);
    v6 = [(UIInterfaceActionConcreteVisualStyle_iOS *)self actionBackgroundColorForViewState:v4];
    [(_UIAlertControllerFilledBackgroundView *)v5 setFillColor:v6];
  }

  else if ([v4 isHighlighted])
  {
    v5 = [(UIInterfaceActionConcreteVisualStyle_iOS *)self _highlightedView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)newGroupBackgroundViewWithGroupViewState:(id)a3
{
  if (_UISolariumEnabled())
  {

    return objc_alloc_init(_UIAlertBackground);
  }

  else
  {
    v4 = [_UIDimmingKnockoutBackdropView alloc];

    return [(_UIDimmingKnockoutBackdropView *)v4 initWithStyle:0];
  }
}

- (id)newActionSeparatorViewForGroupViewState:(id)a3
{
  if (_UISolariumEnabled())
  {
    return 0;
  }

  return objc_opt_new();
}

- (id)newSectionSeparatorViewForGroupViewState:(id)a3
{
  if (_UISolariumEnabled())
  {
    return 0;
  }

  return objc_opt_new();
}

- (id)_regularActionFont
{
  if (_UISolariumEnabled())
  {
    v3 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleBody" weight:*off_1E70ECD20];
  }

  else
  {
    v4 = [(UIInterfaceActionConcreteVisualStyle_iOS *)self traitCollection];
    v5 = _traitCollectionByFlooringContentSizeCategoryToLarge(v4);
    v3 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleHeadline" compatibleWithTraitCollection:v5];
  }

  return v3;
}

- (id)_preferredActionFont
{
  if (_UISolariumEnabled())
  {
    [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleBody" weight:*off_1E70ECD30];
  }

  else
  {
    [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleHeadline"];
  }
  v2 = ;

  return v2;
}

@end
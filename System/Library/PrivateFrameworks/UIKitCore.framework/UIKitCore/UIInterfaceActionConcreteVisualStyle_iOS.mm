@interface UIInterfaceActionConcreteVisualStyle_iOS
- (UIEdgeInsets)actionSequenceEdgeInsets;
- (UIEdgeInsets)contentMargin;
- (UIInterfaceActionConcreteVisualStyle_iOS)initWithTraitCollection:(id)collection;
- (double)actionSpacingForGroupViewState:(id)state;
- (double)contentCornerRadius;
- (id)_highlightedView;
- (id)_preferredActionFont;
- (id)_regularActionFont;
- (id)actionBackgroundColorForViewState:(id)state;
- (id)actionTitleLabelColorForViewState:(id)state;
- (id)actionTitleLabelFontForViewState:(id)state;
- (id)defaultScreen;
- (id)newActionBackgroundViewForViewState:(id)state;
- (id)newActionSeparatorViewForGroupViewState:(id)state;
- (id)newGroupBackgroundViewWithGroupViewState:(id)state;
- (id)newSectionSeparatorViewForGroupViewState:(id)state;
@end

@implementation UIInterfaceActionConcreteVisualStyle_iOS

- (UIInterfaceActionConcreteVisualStyle_iOS)initWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v9.receiver = self;
  v9.super_class = UIInterfaceActionConcreteVisualStyle_iOS;
  v6 = [(UIInterfaceActionConcreteVisualStyle_iOS *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_traitCollection, collection);
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
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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

- (double)actionSpacingForGroupViewState:(id)state
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

- (id)actionTitleLabelFontForViewState:(id)state
{
  if ([state isPreferred])
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

- (id)actionTitleLabelColorForViewState:(id)state
{
  stateCopy = state;
  if (_shouldUseSolariumDesign(stateCopy))
  {
    action4 = +[UIColor labelColor];
    action = [stateCopy action];
    if ([action isEnabled])
    {
      if ([stateCopy isPreferred])
      {
        v6 = +[UIColor systemWhiteColor];

        action4 = v6;
      }

      action2 = [stateCopy action];
      type = [action2 type];

      if (type == 2)
      {
        v9 = +[UIColor systemRedColor];
      }

      else
      {
        action3 = [stateCopy action];
        type2 = [action3 type];

        if (type2 != 100)
        {
          goto LABEL_29;
        }

        tintColor = [stateCopy tintColor];

        v19 = +[UIColor systemBlueColor];
        v15 = tintColor;
        v20 = v19;
        action4 = v20;
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
        action4 = v15;
      }
    }

    else
    {
      v9 = +[UIColor tertiaryLabelColor];
    }

    v15 = v9;
LABEL_17:

LABEL_18:
    action4 = v15;
LABEL_29:

    goto LABEL_30;
  }

  action4 = [stateCopy action];
  type3 = [action4 type];

  if (type3 >= 2)
  {
    if (type3 == 2)
    {
      action4 = +[UIColor systemRedColor];
      goto LABEL_30;
    }

    if (type3 != 100)
    {
      goto LABEL_30;
    }
  }

  tintColor2 = [stateCopy tintColor];
  v12 = +[UIColor systemBlueColor];
  action4 = tintColor2;
  v13 = v12;
  action = v13;
  if (action4 == v13)
  {

LABEL_26:
    +[UIColor _systemBlueColor2];
    action4 = action = action4;
    goto LABEL_29;
  }

  if (!action4 || !v13)
  {

    goto LABEL_29;
  }

  v14 = [action4 isEqual:v13];

  if (v14)
  {
    goto LABEL_26;
  }

LABEL_30:

  return action4;
}

- (id)actionBackgroundColorForViewState:(id)state
{
  stateCopy = state;
  v4 = +[UIColor tertiarySystemFillColor];
  action = [stateCopy action];
  if ([action isEnabled])
  {
    if ([stateCopy isPreferred])
    {
      action2 = [stateCopy action];
      type = [action2 type];

      if (type != 2)
      {
        tintColor = [stateCopy tintColor];

        v4 = tintColor;
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

- (id)newActionBackgroundViewForViewState:(id)state
{
  stateCopy = state;
  if (_shouldUseSolariumDesign(stateCopy))
  {
    _highlightedView = objc_alloc_init(_UIAlertControllerFilledBackgroundView);
    v6 = [(UIInterfaceActionConcreteVisualStyle_iOS *)self actionBackgroundColorForViewState:stateCopy];
    [(_UIAlertControllerFilledBackgroundView *)_highlightedView setFillColor:v6];
  }

  else if ([stateCopy isHighlighted])
  {
    _highlightedView = [(UIInterfaceActionConcreteVisualStyle_iOS *)self _highlightedView];
  }

  else
  {
    _highlightedView = 0;
  }

  return _highlightedView;
}

- (id)newGroupBackgroundViewWithGroupViewState:(id)state
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

- (id)newActionSeparatorViewForGroupViewState:(id)state
{
  if (_UISolariumEnabled())
  {
    return 0;
  }

  return objc_opt_new();
}

- (id)newSectionSeparatorViewForGroupViewState:(id)state
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
    traitCollection = [(UIInterfaceActionConcreteVisualStyle_iOS *)self traitCollection];
    v5 = _traitCollectionByFlooringContentSizeCategoryToLarge(traitCollection);
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
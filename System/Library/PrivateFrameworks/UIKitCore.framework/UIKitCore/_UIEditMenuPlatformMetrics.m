@interface _UIEditMenuPlatformMetrics
- (CGSize)arrowSize;
- (CGSize)shadowOffset;
- (NSDirectionalEdgeInsets)sectionInsets;
- (UIEdgeInsets)additionalSeparatorInsets;
- (_UIEditMenuPlatformMetrics)init;
@end

@implementation _UIEditMenuPlatformMetrics

- (_UIEditMenuPlatformMetrics)init
{
  v15.receiver = self;
  v15.super_class = _UIEditMenuPlatformMetrics;
  v2 = [(_UIEditMenuPlatformMetrics *)&v15 init];
  if (v2)
  {
    v3 = [UIBlurEffect effectWithStyle:9];
    [(_UIEditMenuPlatformMetrics *)v2 setMenuBackgroundEffect:v3];
    v4 = [UIVibrancyEffect effectForBlurEffect:v3 style:6];
    [(_UIEditMenuPlatformMetrics *)v2 setMenuHighlightBackgroundEffect:v4];

    v5 = +[UIColor whiteColor];
    [(_UIEditMenuPlatformMetrics *)v2 setMenuHighlightBackgroundColor:v5];

    v6 = [UIVibrancyEffect effectForBlurEffect:v3 style:7];
    [(_UIEditMenuPlatformMetrics *)v2 setSeparatorEffect:v6];

    v7 = +[UIColor whiteColor];
    [(_UIEditMenuPlatformMetrics *)v2 setSeparatorEffectColor:v7];

    [(_UIEditMenuPlatformMetrics *)v2 setShowsSeparatorBetweenItems:1];
    [(_UIEditMenuPlatformMetrics *)v2 setUseThinSeparators:1];
    [(_UIEditMenuPlatformMetrics *)v2 setOverrideUserInterfaceStyle:0];
    [(_UIEditMenuPlatformMetrics *)v2 setShadowRadius:12.0];
    [(_UIEditMenuPlatformMetrics *)v2 setShadowOpacity:0.25];
    [(_UIEditMenuPlatformMetrics *)v2 setShadowOffset:0.0, 3.0];
    [(_UIEditMenuPlatformMetrics *)v2 setHorizontalMenuMaximumWidth:768.0];
    [(_UIEditMenuPlatformMetrics *)v2 setHorizontalMenuCornerRadius:10.0];
    [(_UIEditMenuPlatformMetrics *)v2 setVerticalMenuMaximumHeight:1.79769313e308];
    [(_UIEditMenuPlatformMetrics *)v2 setVerticalMenuCornerRadius:13.0];
    [(_UIEditMenuPlatformMetrics *)v2 setArrowSize:16.0, 8.0];
    [(_UIEditMenuPlatformMetrics *)v2 setArrowSideRadius:3.0];
    [(_UIEditMenuPlatformMetrics *)v2 setArrowTipRadius:2.0];
    [(_UIEditMenuPlatformMetrics *)v2 setSourceRectMargins:6.0];
    [(_UIEditMenuPlatformMetrics *)v2 setMenuItemMarginsProvider:&__block_literal_global_117];
    v8 = +[UIColor systemRedColor];
    [(_UIEditMenuPlatformMetrics *)v2 setDestructiveColor:v8];

    v9 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleSubhead"];
    [(_UIEditMenuPlatformMetrics *)v2 setMenuItemTitleFont:v9];

    v10 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleSubhead" weight:*off_1E70ECD30];
    [(_UIEditMenuPlatformMetrics *)v2 setPageButtonFont:v10];

    v11 = +[UIBackgroundConfiguration clearConfiguration];
    v12 = +[UIButtonConfiguration plainButtonConfiguration];
    v13 = +[UIColor labelColor];
    [v12 setBaseForegroundColor:v13];

    [v12 setBackground:v11];
    [(_UIEditMenuPlatformMetrics *)v2 setPageButtonConfiguration:v12];
    [(_UIEditMenuPlatformMetrics *)v2 setPageButtonSymbolScale:1];
    [(_UIEditMenuPlatformMetrics *)v2 setPageButtonHasInlineAppearance:1];
    [(_UIEditMenuPlatformMetrics *)v2 setPageButtonVisibilityMultiplier:1.0];
    [(_UIEditMenuPlatformMetrics *)v2 setCellBackgroundShapeProvider:&__block_literal_global_8_3];
  }

  return v2;
}

- (NSDirectionalEdgeInsets)sectionInsets
{
  top = self->_sectionInsets.top;
  leading = self->_sectionInsets.leading;
  bottom = self->_sectionInsets.bottom;
  trailing = self->_sectionInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (UIEdgeInsets)additionalSeparatorInsets
{
  top = self->_additionalSeparatorInsets.top;
  left = self->_additionalSeparatorInsets.left;
  bottom = self->_additionalSeparatorInsets.bottom;
  right = self->_additionalSeparatorInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)shadowOffset
{
  width = self->_shadowOffset.width;
  height = self->_shadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)arrowSize
{
  width = self->_arrowSize.width;
  height = self->_arrowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
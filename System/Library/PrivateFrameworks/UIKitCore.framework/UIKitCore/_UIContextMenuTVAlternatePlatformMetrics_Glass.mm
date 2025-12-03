@interface _UIContextMenuTVAlternatePlatformMetrics_Glass
- (_UIContextMenuTVAlternatePlatformMetrics_Glass)init;
@end

@implementation _UIContextMenuTVAlternatePlatformMetrics_Glass

- (_UIContextMenuTVAlternatePlatformMetrics_Glass)init
{
  v15.receiver = self;
  v15.super_class = _UIContextMenuTVAlternatePlatformMetrics_Glass;
  v2 = [(_UIContextMenuTVAlternatePlatformMetrics *)&v15 init];
  v3 = v2;
  if (v2)
  {
    [(_UIContextMenuPlatformMetrics *)v2 setMenuHighlightBackgroundDescriptorProvider:&__block_literal_global_219];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuBackgroundColor:0];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuBackgroundEffect:0];
    [(_UIContextMenuPlatformMetrics *)v3 setSubmenuTitleBackgroundProvider:&__block_literal_global_6_5];
    [(_UIContextMenuPlatformMetrics *)v3 setPrefersGlassAppearance:1];
    [(_UIContextMenuPlatformMetrics *)v3 setWantsContinuousHighlight:1];
    [(_UIContextMenuPlatformMetrics *)v3 setPrefersLeadingImageCellLayout:1];
    [(_UIContextMenuPlatformMetrics *)v3 setCascadedLayoutShowsChevronOnTrailingEdge:1];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuCornerRadius:33.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuMinimumScale:1.0];
    [(_UIContextMenuPlatformMetrics *)v3 menuCornerRadius];
    [(_UIContextMenuPlatformMetrics *)v3 setPreviewPlatterCornerRadius:?];
    [(_UIContextMenuPlatformMetrics *)v3 setPreferredDefaultContentInsets:48.0, 48.0, 48.0, 48.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuItemInternalPadding:10.0, 14.0, 10.0, 14.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemTopToFirstBaseline:29.5];
    [(_UIContextMenuPlatformMetrics *)v3 setItemTopToFirstBaselineWithSubtitle:29.5];
    [(_UIContextMenuPlatformMetrics *)v3 setItemLastBaselineToBottom:16.5];
    [(_UIContextMenuPlatformMetrics *)v3 setItemLastBaselineToBottomWithSubtitle:16.5];
    [(_UIContextMenuPlatformMetrics *)v3 setDynamicImageBoxWidth:30.0];
    v4 = [UIColor colorWithDynamicProvider:&__block_literal_global_10_4];
    [(_UIContextMenuPlatformMetrics *)v3 setSectionSeparatorColor:v4];

    [(_UIContextMenuPlatformMetrics *)v3 setSectionSeparatorInsets:0.0, 14.0, 0.0, 14.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMinIntraItemSpacing:12.0];
    decorationViewSymbolConfiguration = [(_UIContextMenuPlatformMetrics *)v3 decorationViewSymbolConfiguration];
    [(_UIContextMenuPlatformMetrics *)v3 setChildIndicatorSymbolConfiguration:decorationViewSymbolConfiguration];

    [(_UIContextMenuPlatformMetrics *)v3 setHeaderPadding:16.0, 16.0, -2.0, 16.0];
    v6 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption1"];
    [(_UIContextMenuPlatformMetrics *)v3 setHeaderFont:v6];

    v7 = +[UIColor secondaryLabelColor];
    [(_UIContextMenuPlatformMetrics *)v3 setHeaderPrimaryColor:v7];

    v8 = +[UIColor secondaryLabelColor];
    [(_UIContextMenuPlatformMetrics *)v3 setTrailingAccessoryColor:v8];

    v9 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleCaption1" scale:1];
    [(_UIContextMenuPlatformMetrics *)v3 setDecorationViewSymbolConfiguration:v9];

    headerFont = [(_UIContextMenuPlatformMetrics *)v3 headerFont];
    [(_UIContextMenuPlatformMetrics *)v3 setTitleEmphasizedFont:headerFont];

    headerFont2 = [(_UIContextMenuPlatformMetrics *)v3 headerFont];
    [(_UIContextMenuPlatformMetrics *)v3 setIconEmphasizedSymbolFont:headerFont2];

    [(_UIContextMenuPlatformMetrics *)v3 setItemPrimaryCompositingFilterProvider:0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemPrimaryEmphasizedColorProvider:&__block_literal_global_15_2];
    [(_UIContextMenuPlatformMetrics *)v3 setItemPrimaryAlpha:1.0];
    [(_UIContextMenuPlatformMetrics *)v3 setSubmenuTitleSeparatorHeight:0.0];
    v12 = [UIShape rectShapeWithCornerRadius:23.0];
    [(_UIContextMenuPlatformMetrics *)v3 setLargeItemContentShape:v12];

    [(_UIContextMenuPlatformMetrics *)v3 setLargeItemUsesContentShapeForSelectionHighlight:0];
    v13 = +[UIColor clearColor];
    [(_UIContextMenuPlatformMetrics *)v3 setItemSeparatorColor:v13];

    [(_UIContextMenuPlatformMetrics *)v3 setItemSeparatorHeight:8.0];
  }

  return v3;
}

@end
@interface _UIContextMenuTVPlatformMetrics_Glass
- (_UIContextMenuTVPlatformMetrics_Glass)init;
@end

@implementation _UIContextMenuTVPlatformMetrics_Glass

- (_UIContextMenuTVPlatformMetrics_Glass)init
{
  v10.receiver = self;
  v10.super_class = _UIContextMenuTVPlatformMetrics_Glass;
  v2 = [(_UIContextMenuTVPlatformMetrics *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(_UIContextMenuPlatformMetrics *)v2 setMenuBackgroundColor:0];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuBackgroundEffect:0];
    [(_UIContextMenuPlatformMetrics *)v3 setPrefersGlassAppearance:1];
    [(_UIContextMenuPlatformMetrics *)v3 setPrefersLeadingImageCellLayout:1];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuCornerRadius:54.0];
    [(_UIContextMenuPlatformMetrics *)v3 setDefaultMenuWidth:450.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemTopToFirstBaseline:42.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemTopToFirstBaselineWithSubtitle:42.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemLastBaselineToBottom:24.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemLastBaselineToBottomWithSubtitle:24.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuGutterWidth:20.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMinIntraItemSpacing:15.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuItemInternalPadding:0.0, 15.0, 0.0, 15.0];
    v4 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
    [(_UIContextMenuPlatformMetrics *)v3 setIconSymbolFont:v4];

    v5 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleEmphasizedBody"];
    [(_UIContextMenuPlatformMetrics *)v3 setIconEmphasizedSymbolFont:v5];

    [(_UIContextMenuPlatformMetrics *)v3 setItemBackgroundColorProvider:&__block_literal_global_601];
    v6 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleCaption2" weight:*off_1E70ECD28];
    [(_UIContextMenuPlatformMetrics *)v3 setHeaderFont:v6];

    [(_UIContextMenuPlatformMetrics *)v3 setPreviewPlatterCornerRadius:54.0];
    [(_UIContextMenuPlatformMetrics *)v3 setSectionInsets:0.0, 21.0, 0.0, 21.0];
    [(_UIContextMenuPlatformMetrics *)v3 setSectionSeparatorHeight:1.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemPrimaryColorProvider:&__block_literal_global_7_3];
    v7 = [(_UIContextMenuPlatformMetrics *)v3 gradientMaskingConfiguration];
    [v7 setSpacerHeaderFooterHeight:21.0];
    [(_UIContextMenuPlatformMetrics *)v3 setGradientMaskingConfiguration:v7];
    v8 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody" scale:1];
    [(_UIContextMenuPlatformMetrics *)v3 setDecorationViewSymbolConfiguration:v8];

    [(_UIContextMenuPlatformMetrics *)v3 setPaletteMinimumItemSize:66.0, 66.0];
    [(_UIContextMenuPlatformMetrics *)v3 setWantsFloatingContentViewAsBackground:1];
    [(_UIContextMenuPlatformMetrics *)v3 setFloatingContentViewConfigurationProvider:&__block_literal_global_11_3];
  }

  return v3;
}

@end
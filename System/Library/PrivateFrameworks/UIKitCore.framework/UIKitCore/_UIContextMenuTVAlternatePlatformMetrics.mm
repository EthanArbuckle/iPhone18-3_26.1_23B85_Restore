@interface _UIContextMenuTVAlternatePlatformMetrics
- (_UIContextMenuTVAlternatePlatformMetrics)init;
@end

@implementation _UIContextMenuTVAlternatePlatformMetrics

- (_UIContextMenuTVAlternatePlatformMetrics)init
{
  v16.receiver = self;
  v16.super_class = _UIContextMenuTVAlternatePlatformMetrics;
  v2 = [(_UIContextMenuPlatformMetrics *)&v16 init];
  v3 = v2;
  if (v2)
  {
    [(_UIContextMenuPlatformMetrics *)v2 setItemBackgroundColorProvider:0];
    v4 = [UIBlurEffect effectWithStyle:6];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuBackgroundEffect:v4];

    [(_UIContextMenuPlatformMetrics *)v3 setMenuHighlightBackgroundDescriptorProvider:&__block_literal_global_405];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuCornerRadius:36.0];
    [(_UIContextMenuPlatformMetrics *)v3 setDefaultMenuWidth:302.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemSeparatorHeight:0.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemTopToFirstBaseline:40.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemTopToFirstBaselineWithSubtitle:40.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemLastBaselineToBottom:24.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemLastBaselineToBottomWithSubtitle:24.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemBaselineToBaseline:28.0];
    [(_UIContextMenuPlatformMetrics *)v3 setDynamicImageBoxWidth:35.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMinIntraItemSpacing:8.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuItemInternalPadding:10.0, 14.0, 10.0, 14.0];
    v5 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleSubhead"];
    [(_UIContextMenuPlatformMetrics *)v3 setTitleFont:v5];

    v6 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleEmphasizedSubhead"];
    [(_UIContextMenuPlatformMetrics *)v3 setTitleEmphasizedFont:v6];

    v7 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleFootnote"];
    [(_UIContextMenuPlatformMetrics *)v3 setSubtitleFont:v7];

    v8 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleSubhead"];
    [(_UIContextMenuPlatformMetrics *)v3 setIconSymbolFont:v8];

    v9 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleEmphasizedSubhead"];
    [(_UIContextMenuPlatformMetrics *)v3 setIconEmphasizedSymbolFont:v9];

    [(_UIContextMenuPlatformMetrics *)v3 setHeaderPadding:16.0, 24.0, 10.0, 24.0];
    [(_UIContextMenuPlatformMetrics *)v3 headerPadding];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuTitlePadding:?];
    v10 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption1"];
    [(_UIContextMenuPlatformMetrics *)v3 setHeaderFont:v10];

    [(_UIContextMenuPlatformMetrics *)v3 setMenuMaximumHeight:400.0];
    [(_UIContextMenuPlatformMetrics *)v3 setPreviewPlatterCornerRadius:24.0];
    [(_UIContextMenuPlatformMetrics *)v3 setSectionInsets:10.0, 10.0, 10.0, 10.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuItemInternalPadding:0.0, 16.0, 0.0, 16.0];
    [(_UIContextMenuPlatformMetrics *)v3 setSectionSeparatorHeight:1.0];
    v11 = [UIColor colorWithDynamicProvider:&__block_literal_global_8_12];
    [(_UIContextMenuPlatformMetrics *)v3 setSectionSeparatorColor:v11];

    v12 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleCaption3" scale:1];
    [(_UIContextMenuPlatformMetrics *)v3 setDecorationViewSymbolConfiguration:v12];

    [(_UIContextMenuPlatformMetrics *)v3 setLargeItemUsesContentShapeForSelectionHighlight:1];
    v13 = [UIShape rectShapeWithCornerRadius:26.0];
    v14 = [v13 shapeByApplyingInsets:{4.0, 0.0, 4.0, 0.0}];
    [(_UIContextMenuPlatformMetrics *)v3 setLargeItemContentShape:v14];
  }

  return v3;
}

@end
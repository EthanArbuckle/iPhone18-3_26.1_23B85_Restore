@interface _UIContextMenuPadPlatformMetrics_Glass
- (_UIContextMenuPadPlatformMetrics_Glass)init;
@end

@implementation _UIContextMenuPadPlatformMetrics_Glass

- (_UIContextMenuPadPlatformMetrics_Glass)init
{
  v26.receiver = self;
  v26.super_class = _UIContextMenuPadPlatformMetrics_Glass;
  v2 = [(_UIContextMenuPlatformMetrics_Glass *)&v26 init];
  v3 = v2;
  if (v2)
  {
    [(_UIContextMenuPlatformMetrics *)v2 setDefaultMenuWidth:224.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuCornerRadius:26.0];
    [(_UIContextMenuPlatformMetrics *)v3 menuCornerRadius];
    [(_UIContextMenuPlatformMetrics *)v3 setPreviewPlatterCornerRadius:?];
    [(_UIContextMenuPlatformMetrics *)v3 setSectionInsets:8.0, 0.0, 8.0, 0.0];
    [(_UIContextMenuPlatformMetrics *)v3 setSectionSeparatorInsets:0.0, 20.0, 0.0, 20.0];
    [(_UIContextMenuPlatformMetrics *)v3 setCompactGroupInsets:0.0, 5.0, 0.0, 5.0];
    [(_UIContextMenuPlatformMetrics *)v3 setHeaderPadding:14.0, 20.0, 9.0, 20.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuItemInternalPadding:0.0, 20.0, 0.0, 20.0];
    [(_UIContextMenuPlatformMetrics *)v3 setHeaderOffset:0.0, 8.0];
    [(_UIContextMenuPlatformMetrics *)v3 setLeadingImageOffset:-6.0];
    [(_UIContextMenuPlatformMetrics *)v3 setDynamicImageBoxWidth:34.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMinIntraItemSpacing:5.0];
    [(_UIContextMenuPlatformMetrics *)v3 setLeadingIndentationWidth:12.0];
    [(_UIContextMenuPlatformMetrics *)v3 setLeadingDecorationViewOffset:2.0];
    [(_UIContextMenuPlatformMetrics *)v3 setTrailingDecorationViewOffset:8.0];
    [(_UIContextMenuPlatformMetrics *)v3 setLeadingCascadedSubmenuOffset:-5.0, -8.0, 0.0];
    [(_UIContextMenuPlatformMetrics *)v3 setTrailingCascadedSubmenuOffset:-5.0, -8.0, 0.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemTopToFirstBaseline:24.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemBaselineToBaseline:19.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemLastBaselineToBottom:14.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemTopToFirstBaselineWithSubtitle:24.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemLastBaselineToBottomWithSubtitle:11.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemTopToFirstBaseline:25.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemBaselineToBaseline:24.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemLastBaselineToBottom:19.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemMinimumHorizontalMargin:3.0];
    v4 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleSubhead" scale:1];
    v5 = [UIImageSymbolConfiguration configurationWithWeight:6];
    v6 = [v4 configurationByApplyingConfiguration:v5];

    [(_UIContextMenuPlatformMetrics *)v3 setChildIndicatorSymbolConfiguration:v6];
    v7 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleFootnote" scale:1];

    v8 = [UIImageSymbolConfiguration configurationWithWeight:6];
    v9 = [v7 configurationByApplyingConfiguration:v8];

    [(_UIContextMenuPlatformMetrics *)v3 setDecorationViewSymbolConfiguration:v9];
    v10 = *off_1E70ECD20;
    v11 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleCaption1" weight:*off_1E70ECD20];
    [(_UIContextMenuPlatformMetrics *)v3 setHeaderFont:v11];

    v12 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleSubhead"];
    [(_UIContextMenuPlatformMetrics *)v3 setTitleFont:v12];

    v13 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleEmphasizedSubhead"];
    [(_UIContextMenuPlatformMetrics *)v3 setTitleEmphasizedFont:v13];

    v14 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleFootnote"];
    [(_UIContextMenuPlatformMetrics *)v3 setSubtitleFont:v14];

    v15 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleCaption2" weight:v10];
    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemTitleFont:v15];

    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemIconTextStyle:@"UICTFontTextStyleSubhead"];
    v16 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleSubhead"];
    [(_UIContextMenuPlatformMetrics *)v3 setIconSymbolFont:v16];

    v17 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleEmphasizedSubhead"];
    [(_UIContextMenuPlatformMetrics *)v3 setIconEmphasizedSymbolFont:v17];

    [(_UIContextMenuPlatformMetrics *)v3 menuCornerRadius];
    v19 = [UIShape rectShapeWithCornerRadius:v18 + -5.0];
    v20 = [v19 shapeByApplyingInsets:{8.0, 3.0, 8.0, 3.0}];
    [(_UIContextMenuPlatformMetrics *)v3 setSmallItemContentShape:v20];

    v21 = [v19 shapeByApplyingInsets:{8.0, 3.0, 8.0, 3.0}];
    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemContentShape:v21];

    [(_UIContextMenuPlatformMetrics *)v3 setLargeItemContentShapeInsets:0.0, 8.0, 0.0, 8.0];
    [(_UIContextMenuPlatformMetrics *)v3 menuCornerRadius];
    v23 = [UIShape rectShapeWithCornerRadius:v22 + -8.0];
    [(_UIContextMenuPlatformMetrics *)v3 largeItemContentShapeInsets];
    v24 = [v23 shapeByApplyingInsets:?];
    [(_UIContextMenuPlatformMetrics *)v3 setLargeItemContentShape:v24];
  }

  return v3;
}

@end
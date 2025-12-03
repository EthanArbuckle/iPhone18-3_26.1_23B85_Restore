@interface _UIContextMenuPlatformMetrics_Glass
- (_UIContextMenuPlatformMetrics_Glass)init;
@end

@implementation _UIContextMenuPlatformMetrics_Glass

- (_UIContextMenuPlatformMetrics_Glass)init
{
  v23.receiver = self;
  v23.super_class = _UIContextMenuPlatformMetrics_Glass;
  v2 = [(_UIContextMenuPlatformMetrics *)&v23 init];
  v3 = v2;
  if (v2)
  {
    [(_UIContextMenuPlatformMetrics *)v2 setMenuBackgroundColor:0];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuBackgroundEffect:0];
    [(_UIContextMenuPlatformMetrics *)v3 setPrefersGlassAppearance:1];
    [(_UIContextMenuPlatformMetrics *)v3 setCascadedLayoutShowsChevronOnTrailingEdge:1];
    [(_UIContextMenuPlatformMetrics *)v3 setPrefersLeadingImageCellLayout:1];
    [(_UIContextMenuPlatformMetrics *)v3 setCompactSectionIgnoresVerticalInsets:1];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuMaximumHeight:520.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuMaximumHeightLimitThreshold:24.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuCornerRadius:32.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuMinimumScale:1.0];
    [(_UIContextMenuPlatformMetrics *)v3 menuCornerRadius];
    [(_UIContextMenuPlatformMetrics *)v3 setPreviewPlatterCornerRadius:?];
    [(_UIContextMenuPlatformMetrics *)v3 setSubmenuTitleSeparatorHeight:1.0];
    [(_UIContextMenuPlatformMetrics *)v3 setKeyboardShortcutsWidthExtension:50.0];
    [(_UIContextMenuPlatformMetrics *)v3 setSectionInsets:10.0, 0.0, 10.0, 0.0];
    [(_UIContextMenuPlatformMetrics *)v3 setSectionSeparatorInsets:0.0, 24.0, 0.0, 24.0];
    [(_UIContextMenuPlatformMetrics *)v3 setCompactGroupInsets:0.0, 8.0, 0.0, 8.0];
    [(_UIContextMenuPlatformMetrics *)v3 setHeaderPadding:12.0, 24.0, 16.0, 24.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuItemInternalPadding:0.0, 28.0, 0.0, 28.0];
    [(_UIContextMenuPlatformMetrics *)v3 setHeaderOffset:0.0, 12.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuTitlePadding:20.0, 24.0, 8.0, 24.0];
    [(_UIContextMenuPlatformMetrics *)v3 setWantsSeparatorForCustomHeaderView:0];
    [(_UIContextMenuPlatformMetrics *)v3 setWantsContinuousHighlight:1];
    [(_UIContextMenuPlatformMetrics *)v3 setDynamicImageBoxWidth:40.0];
    [(_UIContextMenuPlatformMetrics *)v3 setLeadingImageOffset:-12.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMinIntraItemSpacing:4.0];
    [(_UIContextMenuPlatformMetrics *)v3 setLeadingIndentationWidth:12.0];
    [(_UIContextMenuPlatformMetrics *)v3 setLeadingDecorationViewOffset:0.0];
    [(_UIContextMenuPlatformMetrics *)v3 setTrailingDecorationViewOffset:11.0];
    v4 = +[UIColor labelColor];
    [(_UIContextMenuPlatformMetrics *)v3 setTrailingAccessoryColor:v4];

    [(_UIContextMenuPlatformMetrics *)v3 setSectionSeparatorHeight:1.0];
    v5 = [UIColor colorWithDynamicProvider:&__block_literal_global_357];
    [(_UIContextMenuPlatformMetrics *)v3 setSectionSeparatorColor:v5];

    [(_UIContextMenuPlatformMetrics *)v3 setItemSeparatorHeight:0.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemSeparatorBackgroundEffect:0];
    sectionSeparatorColor = [(_UIContextMenuPlatformMetrics *)v3 sectionSeparatorColor];
    [(_UIContextMenuPlatformMetrics *)v3 setItemSeparatorColor:sectionSeparatorColor];

    [(_UIContextMenuPlatformMetrics *)v3 setItemTopToFirstBaseline:27.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemBaselineToBaseline:17.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemLastBaselineToBottom:15.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemTopToFirstBaselineWithSubtitle:27.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemLastBaselineToBottomWithSubtitle:14.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemTopToFirstBaseline:41.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemBaselineToBaseline:15.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemLastBaselineToBottom:21.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemMinimumHorizontalMargin:2.0];
    v7 = *off_1E70ECD20;
    v8 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleFootnote" weight:*off_1E70ECD20];
    [(_UIContextMenuPlatformMetrics *)v3 setHeaderFont:v8];

    v9 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleFootnote" weight:v7];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuTitleFont:v9];

    v10 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleFootnote"];
    [(_UIContextMenuPlatformMetrics *)v3 setSubtitleFont:v10];

    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemIconTextStyle:@"UICTFontTextStyleBody"];
    v11 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleCaption1" weight:v7];
    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemTitleFont:v11];

    v12 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleSubhead" scale:1];
    v13 = [UIImageSymbolConfiguration configurationWithWeight:6];
    v14 = [v12 configurationByApplyingConfiguration:v13];

    [(_UIContextMenuPlatformMetrics *)v3 setDecorationViewSymbolConfiguration:v14];
    [(_UIContextMenuPlatformMetrics *)v3 setChildIndicatorSymbolConfiguration:v14];
    [(_UIContextMenuPlatformMetrics *)v3 menuCornerRadius];
    v16 = [UIShape rectShapeWithCornerRadius:v15 + -8.0];
    v17 = [v16 shapeByApplyingInsets:{10.0, 2.0, 10.0, 2.0}];
    [(_UIContextMenuPlatformMetrics *)v3 setSmallItemContentShape:v17];

    v18 = [v16 shapeByApplyingInsets:{10.0, 2.0, 10.0, 2.0}];
    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemContentShape:v18];

    [(_UIContextMenuPlatformMetrics *)v3 setLargeItemContentShapeInsets:0.0, 10.0, 0.0, 10.0];
    [(_UIContextMenuPlatformMetrics *)v3 menuCornerRadius];
    v20 = [UIShape rectShapeWithCornerRadius:v19 + -10.0];
    [(_UIContextMenuPlatformMetrics *)v3 largeItemContentShapeInsets];
    v21 = [v20 shapeByApplyingInsets:?];
    [(_UIContextMenuPlatformMetrics *)v3 setLargeItemContentShape:v21];
  }

  return v3;
}

@end
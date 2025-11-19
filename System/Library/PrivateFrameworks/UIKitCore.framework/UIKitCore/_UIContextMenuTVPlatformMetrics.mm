@interface _UIContextMenuTVPlatformMetrics
- (_UIContextMenuTVPlatformMetrics)init;
@end

@implementation _UIContextMenuTVPlatformMetrics

- (_UIContextMenuTVPlatformMetrics)init
{
  v21.receiver = self;
  v21.super_class = _UIContextMenuTVPlatformMetrics;
  v2 = [(_UIContextMenuPlatformMetrics *)&v21 init];
  if (v2)
  {
    v3 = [UIBlurEffect effectWithStyle:5002];
    [(_UIContextMenuPlatformMetrics *)v2 setMenuBackgroundEffect:v3];
    [(_UIContextMenuPlatformMetrics *)v2 setMenuCornerRadius:30.0];
    [(_UIContextMenuPlatformMetrics *)v2 setDefaultMenuWidth:440.0];
    [(_UIContextMenuPlatformMetrics *)v2 setLargePaletteWidthExtension:60.0];
    [(_UIContextMenuPlatformMetrics *)v2 setItemSeparatorHeight:0.0];
    [(_UIContextMenuPlatformMetrics *)v2 setSectionSeparatorHeight:10.0];
    v4 = [UIColor colorWithDynamicProvider:&__block_literal_global_266];
    [(_UIContextMenuPlatformMetrics *)v2 setSectionSeparatorColor:v4];

    [(_UIContextMenuPlatformMetrics *)v2 setItemPrimaryCompositingFilterProvider:&__block_literal_global_4_5];
    v5 = [(_UIContextMenuPlatformMetrics *)v2 itemPrimaryCompositingFilterProvider];
    [(_UIContextMenuPlatformMetrics *)v2 setItemSubtitleCompositingFilterProvider:v5];

    [(_UIContextMenuPlatformMetrics *)v2 setItemTopToFirstBaseline:44.0];
    [(_UIContextMenuPlatformMetrics *)v2 setItemTopToFirstBaselineWithSubtitle:44.0];
    [(_UIContextMenuPlatformMetrics *)v2 setItemLastBaselineToBottom:28.0];
    [(_UIContextMenuPlatformMetrics *)v2 setItemLastBaselineToBottomWithSubtitle:28.0];
    [(_UIContextMenuPlatformMetrics *)v2 setItemBaselineToBaseline:32.0];
    [(_UIContextMenuPlatformMetrics *)v2 setDynamicImageBoxWidth:35.0];
    [(_UIContextMenuPlatformMetrics *)v2 setMinIntraItemSpacing:20.0];
    [(_UIContextMenuPlatformMetrics *)v2 setMenuItemInternalPadding:0.0, 24.0, 0.0, 24.0];
    v6 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption1"];
    [(_UIContextMenuPlatformMetrics *)v2 setTitleFont:v6];

    v7 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleEmphasizedCaption2"];
    [(_UIContextMenuPlatformMetrics *)v2 setTitleEmphasizedFont:v7];

    v8 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption2"];
    [(_UIContextMenuPlatformMetrics *)v2 setSubtitleFont:v8];

    v9 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption1"];
    [(_UIContextMenuPlatformMetrics *)v2 setIconSymbolFont:v9];

    v10 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleEmphasizedCaption2"];
    [(_UIContextMenuPlatformMetrics *)v2 setIconEmphasizedSymbolFont:v10];

    [(_UIContextMenuPlatformMetrics *)v2 setItemBackgroundColorProvider:&__block_literal_global_8_7];
    [(_UIContextMenuPlatformMetrics *)v2 setItemPrimaryColorProvider:&__block_literal_global_13];
    [(_UIContextMenuPlatformMetrics *)v2 setItemPrimaryDestructiveColorProvider:&__block_literal_global_17_2];
    [(_UIContextMenuPlatformMetrics *)v2 setItemPrimaryAlpha:1.0];
    [(_UIContextMenuPlatformMetrics *)v2 setTrailingAccessoryColor:0];
    [(_UIContextMenuPlatformMetrics *)v2 setLeadingDecorationViewOffset:2.0];
    [(_UIContextMenuPlatformMetrics *)v2 menuItemInternalPadding];
    [(_UIContextMenuPlatformMetrics *)v2 setLeadingIndentationWidth:70.0 - v11];
    v12 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleCaption1" scale:2];
    [(_UIContextMenuPlatformMetrics *)v2 setDecorationViewSymbolConfiguration:v12];

    [(_UIContextMenuPlatformMetrics *)v2 menuItemInternalPadding];
    v14 = v13;
    [(_UIContextMenuPlatformMetrics *)v2 menuItemInternalPadding];
    [(_UIContextMenuPlatformMetrics *)v2 setHeaderPadding:20.0, v14, 25.0];
    [(_UIContextMenuPlatformMetrics *)v2 headerPadding];
    [(_UIContextMenuPlatformMetrics *)v2 setMenuTitlePadding:?];
    v15 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption2"];
    [(_UIContextMenuPlatformMetrics *)v2 setHeaderFont:v15];

    v16 = [UIColor colorWithDynamicProvider:&__block_literal_global_20_3];
    [(_UIContextMenuPlatformMetrics *)v2 setHeaderPrimaryColor:v16];

    [(_UIContextMenuPlatformMetrics *)v2 setHeaderPrimaryCompositingFilterProvider:&__block_literal_global_23_2];
    [(_UIContextMenuPlatformMetrics *)v2 setForceUnpinnedHeader:1];
    [(_UIContextMenuPlatformMetrics *)v2 setMenuMaximumHeight:600.0];
    v17 = objc_alloc_init(_UIContextMenuGradientMaskingConfiguration);
    [(_UIContextMenuGradientMaskingConfiguration *)v17 setGradientMaskEdgeInsets:15.0, 0.0, 60.0, 0.0];
    [(_UIContextMenuGradientMaskingConfiguration *)v17 setGradientMaskLengths:74.0, -60.0, 74.0, -60.0];
    [(_UIContextMenuGradientMaskingConfiguration *)v17 setEmbedBackgroundForCompositing:1];
    [(_UIContextMenuGradientMaskingConfiguration *)v17 setBackgroundMasksCorners:1];
    [(_UIContextMenuGradientMaskingConfiguration *)v17 setSpacerHeaderFooterHeight:14.0];
    [(_UIContextMenuGradientMaskingConfiguration *)v17 setPlatterHairlineColorProvider:&__block_literal_global_26_3];
    [(_UIContextMenuPlatformMetrics *)v2 setGradientMaskingConfiguration:v17];
    [(_UIContextMenuGradientMaskingConfiguration *)v17 spacerHeaderFooterHeight];
    [(_UIContextMenuPlatformMetrics *)v2 setTrailingCascadedSubmenuOffset:-13.0, -v18, 0.0];
    [(_UIContextMenuGradientMaskingConfiguration *)v17 spacerHeaderFooterHeight];
    [(_UIContextMenuPlatformMetrics *)v2 setLeadingCascadedSubmenuOffset:-5.0, -v19, 0.0];
    [(_UIContextMenuPlatformMetrics *)v2 setShouldApplyShadowHandler:&__block_literal_global_29_3];
    [(_UIContextMenuPlatformMetrics *)v2 setShouldApplyClippingHandler:&__block_literal_global_31_1];
    [(_UIContextMenuPlatformMetrics *)v2 setEnableFloatingFocusStyle:1];
    [(_UIContextMenuPlatformMetrics *)v2 setAllowsItemHighlighting:0];
    [(_UIContextMenuPlatformMetrics *)v2 setSupportsLargePaletteMenus:1];
    [(_UIContextMenuPlatformMetrics *)v2 setPaletteMinimumItemSize:72.0, 72.0];
    [(_UIContextMenuPlatformMetrics *)v2 setOverrideElementSize:&__block_literal_global_34_0];
    [(_UIContextMenuPlatformMetrics *)v2 setItemColoredSymbolImageUserInterfaceStyleOverrideProvider:&__block_literal_global_37_2];
    [(_UIContextMenuPlatformMetrics *)v2 setContentSpacingForContainer:&__block_literal_global_40_0];
    [(_UIContextMenuPlatformMetrics *)v2 setWantsControlAlignmentWithHorizontalEdgeAdjustment:0];
    [(_UIContextMenuPlatformMetrics *)v2 setControlAttachmentYOffsetProvider:&__block_literal_global_43_0];
    [(_UIContextMenuPlatformMetrics *)v2 setPrefersWrapToSidesHandler:&__block_literal_global_46];
    [(_UIContextMenuPlatformMetrics *)v2 setMaxLiftScale:1.2];
    [(_UIContextMenuPlatformMetrics *)v2 setMaxLiftScaleUpPoints:48.0];
    [(_UIContextMenuPlatformMetrics *)v2 setShouldDismissMenuOnSceneDeactivation:1];
    [(_UIContextMenuPlatformMetrics *)v2 setSupportsPassthroughInteraction:0];
    [(_UIContextMenuPlatformMetrics *)v2 setFloatingContentViewConfigurationProvider:&__block_literal_global_49_1];
  }

  return v2;
}

@end
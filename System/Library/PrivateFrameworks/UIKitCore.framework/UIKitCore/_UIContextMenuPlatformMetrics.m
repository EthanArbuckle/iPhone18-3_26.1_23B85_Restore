@interface _UIContextMenuPlatformMetrics
- (CAPoint3D)baseMenuOffset;
- (CAPoint3D)leadingCascadedSubmenuOffset;
- (CAPoint3D)stackedSubmenuOffset;
- (CAPoint3D)trailingCascadedSubmenuOffset;
- (CGPoint)headerOffset;
- (CGSize)paletteMinimumItemSize;
- (CGSize)previewPlatterMaximumSize;
- (NSDirectionalEdgeInsets)compactGroupInsets;
- (NSDirectionalEdgeInsets)headerPadding;
- (NSDirectionalEdgeInsets)menuItemInternalPadding;
- (NSDirectionalEdgeInsets)menuTitlePadding;
- (NSDirectionalEdgeInsets)sectionInsets;
- (NSDirectionalEdgeInsets)sectionSeparatorInsets;
- (UIEdgeInsets)largeItemContentShapeInsets;
- (UIEdgeInsets)minimumContainerInsets;
- (UIEdgeInsets)preferredDefaultContentInsets;
- (_UIContextMenuPlatformMetrics)init;
- (double)previewActionsStyleDragTearOffThreshold;
- (double)previewRubberbandingCoefficient;
- (id)menuHeaderBackgroundProvider;
- (void)setMenuHeaderBackgroundProvider:(id)a3;
- (void)setPreviewActionsStyleDragTearOffThreshold:(double)a3;
- (void)setPreviewRubberbandingCoefficient:(double)a3;
@end

@implementation _UIContextMenuPlatformMetrics

- (_UIContextMenuPlatformMetrics)init
{
  v34.receiver = self;
  v34.super_class = _UIContextMenuPlatformMetrics;
  v2 = [(_UIContextMenuPlatformMetrics *)&v34 init];
  v3 = v2;
  if (v2)
  {
    [(_UIContextMenuPlatformMetrics *)v2 setMenuHighlightBackgroundDescriptorProvider:&__block_literal_global_740];
    v4 = [UIBlurEffect effectWithStyle:8];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuBackgroundEffect:v4];

    [(_UIContextMenuPlatformMetrics *)v3 setMenuCornerRadius:13.0];
    [(_UIContextMenuPlatformMetrics *)v3 setApplySubmenuScaling:1];
    [(_UIContextMenuPlatformMetrics *)v3 setTrailingCascadedSubmenuOffset:-11.0, 1.0, 0.0];
    [(_UIContextMenuPlatformMetrics *)v3 setLeadingCascadedSubmenuOffset:-5.0, 1.0, 0.0];
    v5 = [objc_opt_self() mainScreen];
    [v5 scale];
    [(_UIContextMenuPlatformMetrics *)v3 setSubmenuTitleSeparatorHeight:1.0 / v6];

    [(_UIContextMenuPlatformMetrics *)v3 setDefaultMenuWidth:250.0];
    [(_UIContextMenuPlatformMetrics *)v3 setKeyboardShortcutsWidthExtension:54.0];
    [(_UIContextMenuPlatformMetrics *)v3 setLeadingIndentationWidth:16.0];
    v7 = [UIBlurEffect effectWithStyle:8];
    v8 = [UIVibrancyEffect effectForBlurEffect:v7 style:7];
    [(_UIContextMenuPlatformMetrics *)v3 setItemSeparatorBackgroundEffect:v8];

    v9 = +[UIColor whiteColor];
    [(_UIContextMenuPlatformMetrics *)v3 setItemSeparatorColor:v9];

    [(_UIContextMenuPlatformMetrics *)v3 setItemSubtitleRenderingMode:1];
    [(_UIContextMenuPlatformMetrics *)v3 setItemPrimaryCompositingFilterProvider:0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemSubtitleCompositingFilterProvider:&__block_literal_global_38_2];
    v10 = [UIColor colorWithDynamicProvider:&__block_literal_global_41_4];
    [(_UIContextMenuPlatformMetrics *)v3 setItemSubtitleColor:v10];

    v11 = +[UIColor tertiaryLabelColor];
    [(_UIContextMenuPlatformMetrics *)v3 setItemKeyboardShortcutColor:v11];

    v12 = [objc_opt_self() mainScreen];
    [v12 scale];
    [(_UIContextMenuPlatformMetrics *)v3 setItemSeparatorHeight:1.0 / v13];

    [(_UIContextMenuPlatformMetrics *)v3 setSectionSeparatorHeight:8.0];
    v14 = [UIColor colorWithDynamicProvider:&__block_literal_global_43_3];
    [(_UIContextMenuPlatformMetrics *)v3 setSectionSeparatorColor:v14];

    [(_UIContextMenuPlatformMetrics *)v3 setConvertPointBetweenViews:&__block_literal_global_46_5];
    [(_UIContextMenuPlatformMetrics *)v3 setItemTopToFirstBaseline:28.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemTopToFirstBaseline:26.0];
    [(_UIContextMenuPlatformMetrics *)v3 setSmallItemTopToFirstBaseline:32.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemLastBaselineToBottom:15.6666667];
    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemLastBaselineToBottom:16.0];
    [(_UIContextMenuPlatformMetrics *)v3 setSmallItemLastBaselineToBottom:19.6666667];
    [(_UIContextMenuPlatformMetrics *)v3 setItemBaselineToBaseline:20.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemBaselineToBaseline:22.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemTopToFirstBaselineWithSubtitle:28.0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemLastBaselineToBottomWithSubtitle:15.6666667];
    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemMinimumHorizontalMargin:10.0];
    [(_UIContextMenuPlatformMetrics *)v3 setSmallItemMinimumHorizontalMargin:10.0];
    [(_UIContextMenuPlatformMetrics *)v3 setPaletteItemMinimumHorizontalMargin:10.0];
    [(_UIContextMenuPlatformMetrics *)v3 setDynamicImageBoxWidth:24.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMinIntraItemSpacing:4.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuItemInternalPadding:0.0, 16.0, 0.0, 16.0];
    v15 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
    [(_UIContextMenuPlatformMetrics *)v3 setTitleFont:v15];

    v16 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleEmphasizedBody"];
    [(_UIContextMenuPlatformMetrics *)v3 setTitleEmphasizedFont:v16];

    v17 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleSubhead"];
    [(_UIContextMenuPlatformMetrics *)v3 setSubtitleFont:v17];

    v18 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
    [(_UIContextMenuPlatformMetrics *)v3 setIconSymbolFont:v18];

    v19 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleEmphasizedBody"];
    [(_UIContextMenuPlatformMetrics *)v3 setIconEmphasizedSymbolFont:v19];

    v20 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleFootnote"];
    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemTitleFont:v20];

    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemIconTextStyle:@"UICTFontTextStyleFootnote"];
    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemIconTextStyleWithoutTitle:@"UICTFontTextStyleBody"];
    [(_UIContextMenuPlatformMetrics *)v3 setItemBackgroundColorProvider:0];
    [(_UIContextMenuPlatformMetrics *)v3 setItemPrimaryColorProvider:&__block_literal_global_50_3];
    [(_UIContextMenuPlatformMetrics *)v3 setItemPrimaryDestructiveColorProvider:&__block_literal_global_52_3];
    [(_UIContextMenuPlatformMetrics *)v3 setItemPrimaryAlpha:0.96];
    v21 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleEmphasizedBody" scale:1];
    [(_UIContextMenuPlatformMetrics *)v3 setDecorationViewSymbolConfiguration:v21];

    v22 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleEmphasizedFootnote" scale:1];
    [(_UIContextMenuPlatformMetrics *)v3 setChildIndicatorSymbolConfiguration:v22];

    [(_UIContextMenuPlatformMetrics *)v3 setTrailingDecorationViewOffset:2.66666667];
    [(_UIContextMenuPlatformMetrics *)v3 setLeadingDecorationViewOffset:2.66666667];
    v23 = +[UIColor tertiaryLabelColor];
    [(_UIContextMenuPlatformMetrics *)v3 setTrailingAccessoryColor:v23];

    [(_UIContextMenuPlatformMetrics *)v3 setHeaderPadding:10.0, 16.0, 11.0, 16.0];
    v24 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption1"];
    [(_UIContextMenuPlatformMetrics *)v3 setHeaderFont:v24];

    [(_UIContextMenuPlatformMetrics *)v3 setHeaderTextAlignment:4];
    v25 = +[UIColor secondaryLabelColor];
    [(_UIContextMenuPlatformMetrics *)v3 setHeaderPrimaryColor:v25];

    [(_UIContextMenuPlatformMetrics *)v3 setHeaderRenderingMode:1];
    [(_UIContextMenuPlatformMetrics *)v3 setHeaderPrimaryCompositingFilterProvider:0];
    [(_UIContextMenuPlatformMetrics *)v3 setWantsSeparatorForCustomHeaderView:1];
    v26 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption1"];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuTitleFont:v26];

    [(_UIContextMenuPlatformMetrics *)v3 headerPadding];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuTitlePadding:?];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuTitleTextAlignment:4];
    [(_UIContextMenuPlatformMetrics *)v3 setHeaderRenderingMode:1];
    [(_UIContextMenuPlatformMetrics *)v3 setHeaderPrimaryCompositingFilterProvider:0];
    [(_UIContextMenuPlatformMetrics *)v3 setForceUnpinnedHeader:0];
    [(_UIContextMenuPlatformMetrics *)v3 setAlignMenuHeaderAndItemContents:1];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuGutterWidth:12.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMenuMaximumHeight:1.79769313e308];
    [(_UIContextMenuPlatformMetrics *)v3 setMinimumContainerInsets:8.0, 8.0, 8.0, 8.0];
    [(_UIContextMenuPlatformMetrics *)v3 setGradientMaskingConfiguration:0];
    [(_UIContextMenuPlatformMetrics *)v3 setShouldApplyClippingHandler:0];
    [(_UIContextMenuPlatformMetrics *)v3 setShouldApplyShadowHandler:0];
    [(_UIContextMenuPlatformMetrics *)v3 setEnableFloatingFocusStyle:0];
    [(_UIContextMenuPlatformMetrics *)v3 setPrefersLeadingImageCellLayout:0];
    [(_UIContextMenuPlatformMetrics *)v3 setAllowsItemHighlighting:1];
    [(_UIContextMenuPlatformMetrics *)v3 setPaletteMinimumItemSize:38.0, 54.0];
    [(_UIContextMenuPlatformMetrics *)v3 setLeadingIndentationContributesToWidth:0];
    [(_UIContextMenuPlatformMetrics *)v3 setContentInsetsApplyToHeaders:1];
    v27 = [UIShape rectShapeWithCornerRadius:16.0];
    v28 = [v27 shapeByApplyingInset:8.0];
    [(_UIContextMenuPlatformMetrics *)v3 setSmallItemContentShape:v28];

    v29 = [UIShape rectShapeWithCornerRadius:16.0];
    v30 = [v29 shapeByApplyingInset:8.0];
    [(_UIContextMenuPlatformMetrics *)v3 setMediumItemContentShape:v30];

    v31 = +[UIShape rectShape];
    [(_UIContextMenuPlatformMetrics *)v3 setLargeItemContentShape:v31];

    [(_UIContextMenuPlatformMetrics *)v3 setLargeItemUsesContentShapeForSelectionHighlight:0];
    v32 = +[_UIClickPresentationFeedbackGeneratorConfiguration defaultConfiguration];
    [(_UIContextMenuPlatformMetrics *)v3 setPresentationFeedbackConfiguration:v32];

    [(_UIContextMenuPlatformMetrics *)v3 setMenuMinimumScale:0.8];
    [(_UIContextMenuPlatformMetrics *)v3 setContentSpacingForContainer:0];
    [(_UIContextMenuPlatformMetrics *)v3 setWantsControlAlignmentWithHorizontalEdgeAdjustment:1];
    [(_UIContextMenuPlatformMetrics *)v3 setControlAttachmentYOffsetProvider:&__block_literal_global_58_2];
    [(_UIContextMenuPlatformMetrics *)v3 setPrefersWrapToSidesHandler:&__block_literal_global_61_5];
    [(_UIContextMenuPlatformMetrics *)v3 setMaxLiftScale:1.15];
    [(_UIContextMenuPlatformMetrics *)v3 setMaxLiftScaleUpPoints:26.0];
    [(_UIContextMenuPlatformMetrics *)v3 setContainerViewsHitTestAsOpaque:1];
    [(_UIContextMenuPlatformMetrics *)v3 setSupportsPassthroughInteraction:1];
    [(_UIContextMenuPlatformMetrics *)v3 setPreviewIsConstrainedToSourceWindowBounds:0];
    [(_UIContextMenuPlatformMetrics *)v3 setPreviewPlatterMaximumSize:343.0, 490.0];
    [(_UIContextMenuPlatformMetrics *)v3 menuCornerRadius];
    [(_UIContextMenuPlatformMetrics *)v3 setPreviewPlatterCornerRadius:?];
  }

  return v3;
}

- (NSDirectionalEdgeInsets)headerPadding
{
  top = self->_headerPadding.top;
  leading = self->_headerPadding.leading;
  bottom = self->_headerPadding.bottom;
  trailing = self->_headerPadding.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (UIEdgeInsets)largeItemContentShapeInsets
{
  top = self->_largeItemContentShapeInsets.top;
  left = self->_largeItemContentShapeInsets.left;
  bottom = self->_largeItemContentShapeInsets.bottom;
  right = self->_largeItemContentShapeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)previewPlatterMaximumSize
{
  width = self->_previewPlatterMaximumSize.width;
  height = self->_previewPlatterMaximumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CAPoint3D)baseMenuOffset
{
  x = self->_baseMenuOffset.x;
  y = self->_baseMenuOffset.y;
  z = self->_baseMenuOffset.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)minimumContainerInsets
{
  top = self->_minimumContainerInsets.top;
  left = self->_minimumContainerInsets.left;
  bottom = self->_minimumContainerInsets.bottom;
  right = self->_minimumContainerInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)menuItemInternalPadding
{
  top = self->_menuItemInternalPadding.top;
  leading = self->_menuItemInternalPadding.leading;
  bottom = self->_menuItemInternalPadding.bottom;
  trailing = self->_menuItemInternalPadding.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)menuTitlePadding
{
  top = self->_menuTitlePadding.top;
  leading = self->_menuTitlePadding.leading;
  bottom = self->_menuTitlePadding.bottom;
  trailing = self->_menuTitlePadding.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
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

- (CAPoint3D)stackedSubmenuOffset
{
  x = self->_stackedSubmenuOffset.x;
  y = self->_stackedSubmenuOffset.y;
  z = self->_stackedSubmenuOffset.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (double)previewRubberbandingCoefficient
{
  v2 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_PlatterRubberbandingCoefficient, @"PlatterRubberbandingCoefficient");
  result = *&qword_1EA95E940;
  if (v2)
  {
    return 0.2;
  }

  return result;
}

- (double)previewActionsStyleDragTearOffThreshold
{
  v2 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_PlatterActionsStyleDragTearOffThreshold, @"PlatterActionsStyleDragTearOffThreshold");
  result = *&qword_1EA95E950;
  if (v2)
  {
    return 15.0;
  }

  return result;
}

- (void)setPreviewRubberbandingCoefficient:(double)a3
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    qword_1EA95E940 = *&a3;
    _UIInternalPreference_PlatterRubberbandingCoefficient = 0x7FFFFFFF;
    if (&_UIInternalPreferencesListener___COUNTER__ != &webGeolocationCacheFileAccessQueue)
    {
      v4 = &_UIInternalPreferencesListener___COUNTER__;
      do
      {
        v5 = *v4++;
        (*(v5 + 16))();
      }

      while (v4 != &webGeolocationCacheFileAccessQueue);
    }
  }
}

- (void)setPreviewActionsStyleDragTearOffThreshold:(double)a3
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    qword_1EA95E950 = *&a3;
    _UIInternalPreference_PlatterActionsStyleDragTearOffThreshold = 0x7FFFFFFF;
    if (&_UIInternalPreferencesListener___COUNTER__ != &webGeolocationCacheFileAccessQueue)
    {
      v4 = &_UIInternalPreferencesListener___COUNTER__;
      do
      {
        v5 = *v4++;
        (*(v5 + 16))();
      }

      while (v4 != &webGeolocationCacheFileAccessQueue);
    }
  }
}

- (id)menuHeaderBackgroundProvider
{
  v2 = _Block_copy(self->_menuTitleBackgroundProvider);

  return v2;
}

- (void)setMenuHeaderBackgroundProvider:(id)a3
{
  v4 = _Block_copy(a3);
  menuTitleBackgroundProvider = self->_menuTitleBackgroundProvider;
  self->_menuTitleBackgroundProvider = v4;
}

- (CAPoint3D)leadingCascadedSubmenuOffset
{
  x = self->_leadingCascadedSubmenuOffset.x;
  y = self->_leadingCascadedSubmenuOffset.y;
  z = self->_leadingCascadedSubmenuOffset.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (CAPoint3D)trailingCascadedSubmenuOffset
{
  x = self->_trailingCascadedSubmenuOffset.x;
  y = self->_trailingCascadedSubmenuOffset.y;
  z = self->_trailingCascadedSubmenuOffset.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)preferredDefaultContentInsets
{
  top = self->_preferredDefaultContentInsets.top;
  left = self->_preferredDefaultContentInsets.left;
  bottom = self->_preferredDefaultContentInsets.bottom;
  right = self->_preferredDefaultContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGPoint)headerOffset
{
  x = self->_headerOffset.x;
  y = self->_headerOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (NSDirectionalEdgeInsets)compactGroupInsets
{
  top = self->_compactGroupInsets.top;
  leading = self->_compactGroupInsets.leading;
  bottom = self->_compactGroupInsets.bottom;
  trailing = self->_compactGroupInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)sectionSeparatorInsets
{
  top = self->_sectionSeparatorInsets.top;
  leading = self->_sectionSeparatorInsets.leading;
  bottom = self->_sectionSeparatorInsets.bottom;
  trailing = self->_sectionSeparatorInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (CGSize)paletteMinimumItemSize
{
  width = self->_paletteMinimumItemSize.width;
  height = self->_paletteMinimumItemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
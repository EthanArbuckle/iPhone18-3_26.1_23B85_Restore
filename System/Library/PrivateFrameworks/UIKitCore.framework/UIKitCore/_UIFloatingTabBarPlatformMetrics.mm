@interface _UIFloatingTabBarPlatformMetrics
- (CGAffineTransform)editModeTransform;
- (CGSize)defaultImageSize;
- (CGSize)scaledImageSizeForTraitCollection:(id)collection;
- (UIButtonConfiguration)sidebarButtonConfiguration;
- (UIEdgeInsets)backgroundInsets;
- (UIEdgeInsets)badgeInsets;
- (UIEdgeInsets)editModeItemMargins;
- (UIEdgeInsets)imageMargins;
- (UIEdgeInsets)titleMargins;
- (UIOffset)badgeOffset;
- (_UIFloatingTabBarPlatformMetrics)init;
- (void)setEditModeTransform:(CGAffineTransform *)transform;
@end

@implementation _UIFloatingTabBarPlatformMetrics

- (_UIFloatingTabBarPlatformMetrics)init
{
  v48[2] = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = _UIFloatingTabBarPlatformMetrics;
  v2 = [(_UIFloatingTabBarPlatformMetrics *)&v45 init];
  if (v2)
  {
    v3 = [UIColor colorWithRed:0.0 green:0.0 blue:0.25 alpha:0.06];
    v4 = [UIColor colorWithRed:0.75 green:0.75 blue:1.0 alpha:0.06];
    v5 = [UIBlurEffect effectWithStyle:8];
    v48[0] = v5;
    *&v46.a = MEMORY[0x1E69E9820];
    *&v46.b = 3221225472;
    *&v46.c = ___UIDynamicColor_block_invoke;
    *&v46.d = &unk_1E70F6F60;
    *&v46.tx = v4;
    *&v46.ty = v3;
    v37 = v4;
    v6 = v3;
    v7 = [UIColor colorWithDynamicProvider:&v46];

    v8 = [UIVisualEffect effectCompositingColor:v7];
    v48[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setBackgroundEffects:v9];

    [(_UIFloatingTabBarPlatformMetrics *)v2 setBackgroundInsets:4.0, 4.0, 4.0, 4.0];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setMaximumWidth:600.0];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setMaximumExpandedWidth:800.0];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setVerticalOffsetInSheetPresentationContext:10.0];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setVerticalPaddingToNavigationBar:14.0];
    v10 = +[UIColor systemBackgroundColor];
    v11 = +[UIColor systemFillColor];
    *&v46.a = MEMORY[0x1E69E9820];
    *&v46.b = 3221225472;
    *&v46.c = ___UIDynamicColor_block_invoke;
    *&v46.d = &unk_1E70F6F60;
    *&v46.tx = v11;
    *&v46.ty = v10;
    v12 = v11;
    v13 = v10;
    v14 = [UIColor colorWithDynamicProvider:&v46];

    [(_UIFloatingTabBarPlatformMetrics *)v2 setSelectionBackgroundColor:v14];
    v15 = objc_opt_new();
    [v15 setOpacity:0.08];
    [v15 setRadius:16.0];
    [v15 setOffset:{0.0, 2.0}];
    v16 = +[UIColor blackColor];
    [v15 setColor:v16];

    [(_UIFloatingTabBarPlatformMetrics *)v2 setSelectionShadow:v15];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setSelectionHighlightScale:0.95];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setSelectionDistanceThresholdForUnselectedItems:44.0];
    v17 = *off_1E70ECD20;
    v18 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleBody" weight:*off_1E70ECD20];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setContentFont:v18];

    v19 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleHeadline"];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setSelectedContentFont:v19];

    contentFont = [(_UIFloatingTabBarPlatformMetrics *)v2 contentFont];
    v21 = [UIImageSymbolConfiguration configurationWithFont:contentFont scale:2];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setSymbolConfiguration:v21];

    v22 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleHeadline" scale:2];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setSelectedSymbolConfiguration:v22];

    [(_UIFloatingTabBarPlatformMetrics *)v2 setTitleMargins:6.0, 16.0, 6.0, 16.0];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setImageMargins:6.0, 14.0, 6.0, 14.0];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setImageAndTitleSpacing:8.0];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setSafeAreaOffset:31.0];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setMinimumEdgeOffset:8.0];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setExpandedDropTargetInset:32.0];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setDefaultImageSize:20.0, 20.0];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setMaximumContentWidth:224.0];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setContentAlphaDistanceThreshold:64.0];
    v23 = objc_alloc_init(_UIFloatingTabBarContentPalette);
    v24 = objc_alloc_init(_UIFloatingTabBarContentPalette);
    v25 = +[UIColor whiteColor];
    [(_UIFloatingTabBarContentPalette *)v24 setSelectedColor:v25];

    v26 = +[UIColor secondaryLabelColor];
    [(_UIFloatingTabBarContentPalette *)v24 setInactiveColor:v26];

    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __40___UIFloatingTabBarPlatformMetrics_init__block_invoke;
    v42[3] = &unk_1E7119A20;
    v43 = v23;
    v44 = v24;
    v27 = v23;
    v28 = v24;
    [(_UIFloatingTabBarPlatformMetrics *)v2 setContentPaletteProvider:v42];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setBadgeInsets:2.0, 4.0, 2.0, 4.0];
    v29 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleCaption1" weight:v17];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setBadgeFont:v29];

    [(_UIFloatingTabBarPlatformMetrics *)v2 setMaximumBadgeWidth:64.0];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setBadgeOffset:3.0, -2.0];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setSupportsCustomizablePlacements:1];
    CGAffineTransformMakeScale(&v41, 1.05, 1.05);
    v46 = v41;
    [(_UIFloatingTabBarPlatformMetrics *)v2 setEditModeTransform:&v46];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setEditModeItemMargins:0.0, 3.0, 0.0, 3.0];
    v30 = objc_opt_new();
    [v30 setOpacity:0.4];
    [v30 setRadius:40.0];
    [v30 setOffset:{0.0, 8.0}];
    v31 = objc_opt_new();
    [v31 setOpacity:0.5];
    [v31 setRadius:40.0];
    [v31 setOffset:{0.0, 8.0}];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __40___UIFloatingTabBarPlatformMetrics_init__block_invoke_2;
    v38[3] = &unk_1E7119A48;
    v39 = v30;
    v40 = v31;
    v32 = v30;
    v33 = v31;
    [(_UIFloatingTabBarPlatformMetrics *)v2 setEditModeBackgroundShadowProvider:v38];
    v34 = [UIBlurEffect effectWithStyle:8];
    v47 = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setSidebarBackgroundEffects:v35];

    [(_UIFloatingTabBarPlatformMetrics *)v2 setSidebarBorderWidth:1.0];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setShowsSidebarTitle:1];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setSidebarBorderInsideBounds:1];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setSupportsFloatingSidebar:0];
    [(_UIFloatingTabBarPlatformMetrics *)v2 setOverflowButtonImageName:@"ellipsis.circle"];
  }

  return v2;
}

- (UIButtonConfiguration)sidebarButtonConfiguration
{
  v3 = +[UIButtonConfiguration plainButtonConfiguration];
  [v3 setContentInsets:{12.0, 16.0, 12.0, 16.0}];
  symbolConfiguration = [(_UIFloatingTabBarPlatformMetrics *)self symbolConfiguration];
  [v3 setPreferredSymbolConfigurationForImage:symbolConfiguration];

  v5 = [UIImage systemImageNamed:@"sidebar.leading"];
  [v3 setImage:v5];

  return v3;
}

- (CGSize)scaledImageSizeForTraitCollection:(id)collection
{
  collectionCopy = collection;
  contentFont = [(_UIFloatingTabBarPlatformMetrics *)self contentFont];
  v6 = [contentFont _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:collectionCopy];

  if (v6)
  {
    contentFont2 = v6;
  }

  else
  {
    contentFont2 = [(_UIFloatingTabBarPlatformMetrics *)self contentFont];
  }

  v8 = contentFont2;

  [(_UIFloatingTabBarPlatformMetrics *)self defaultImageSize];
  v10 = v9;
  [v8 _scaledValueForValue:0 useLanguageAwareScaling:?];
  v12 = v11;
  [v8 _scaledValueForValue:0 useLanguageAwareScaling:v10];
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (UIEdgeInsets)backgroundInsets
{
  top = self->_backgroundInsets.top;
  left = self->_backgroundInsets.left;
  bottom = self->_backgroundInsets.bottom;
  right = self->_backgroundInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)defaultImageSize
{
  width = self->_defaultImageSize.width;
  height = self->_defaultImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)titleMargins
{
  top = self->_titleMargins.top;
  left = self->_titleMargins.left;
  bottom = self->_titleMargins.bottom;
  right = self->_titleMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)imageMargins
{
  top = self->_imageMargins.top;
  left = self->_imageMargins.left;
  bottom = self->_imageMargins.bottom;
  right = self->_imageMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)badgeInsets
{
  top = self->_badgeInsets.top;
  left = self->_badgeInsets.left;
  bottom = self->_badgeInsets.bottom;
  right = self->_badgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIOffset)badgeOffset
{
  horizontal = self->_badgeOffset.horizontal;
  vertical = self->_badgeOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (UIEdgeInsets)editModeItemMargins
{
  top = self->_editModeItemMargins.top;
  left = self->_editModeItemMargins.left;
  bottom = self->_editModeItemMargins.bottom;
  right = self->_editModeItemMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGAffineTransform)editModeTransform
{
  v3 = *&self[10].a;
  *&retstr->a = *&self[9].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[10].c;
  return self;
}

- (void)setEditModeTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_editModeTransform.c = *&transform->c;
  *&self->_editModeTransform.tx = v4;
  *&self->_editModeTransform.a = v3;
}

@end
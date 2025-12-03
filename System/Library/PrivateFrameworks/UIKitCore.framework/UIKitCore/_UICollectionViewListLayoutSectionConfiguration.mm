@interface _UICollectionViewListLayoutSectionConfiguration
+ (id)new;
- (BOOL)_shouldSupplementariesFollowSectionInsets;
- (NSDirectionalEdgeInsets)separatorInset;
- (UICollectionView)_collectionView;
- (UITableConstants)_constants;
- (_UICollectionViewListLayoutSectionConfiguration)initWithAppearanceStyle:(int64_t)style layoutEnvironment:(id)environment;
- (_UICollectionViewListLayoutSectionConfiguration)initWithCollectionView:(id)view;
- (_UIListGeometry)_listGeometry;
- (_UIListSeparatorConfiguration)_separatorConfiguration;
- (double)_defaultRowHeight;
- (double)_defaultSectionFooterHeight;
- (double)_defaultSectionHeaderHeight;
- (double)_effectiveEstimatedRowHeight;
- (double)_effectiveEstimatedSectionFooterHeight;
- (double)_effectiveEstimatedSectionHeaderHeight;
- (double)_separatorHeight;
- (id)_createSeparatorForBottom:(BOOL)bottom;
- (id)_createSwipeActionsContainer;
- (id)_generateLayoutGroup:(id)group;
- (id)_traitCollection;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)_sectionPosition;
- (void)_addSupplementaryItemsToLayout:(id)layout headerFooterPinningBehavior:(int64_t)behavior;
- (void)_setDefaultBackgroundColor:(id)color;
- (void)_setSeparatorConfiguration:(id)configuration;
- (void)setCornerRadius:(double)radius;
- (void)setHeaderTopPadding:(double)padding;
@end

@implementation _UICollectionViewListLayoutSectionConfiguration

- (id)_traitCollection
{
  traitCollection = [(NSCollectionLayoutEnvironment_Private *)self->_layoutEnvironment traitCollection];
  v3 = traitCollection;
  if (traitCollection)
  {
    v4 = traitCollection;
  }

  else
  {
    v4 = +[UITraitCollection _fallbackTraitCollection];
  }

  v5 = v4;

  return v5;
}

- (double)_separatorHeight
{
  _traitCollection = [(_UICollectionViewListLayoutSectionConfiguration *)self _traitCollection];
  v3 = _UISeparatorThicknessForTraitCollection(_traitCollection);

  return v3;
}

- (double)_defaultRowHeight
{
  _constants = [(_UICollectionViewListLayoutSectionConfiguration *)self _constants];
  [_constants defaultRowHeightForTableView:0];
  v4 = v3;

  return v4;
}

- (unint64_t)_sectionPosition
{
  v2 = self->_layoutEnvironment;
  _sectionIndex = [(NSCollectionLayoutEnvironment_Private *)v2 _sectionIndex];
  _sectionIndex2 = [(NSCollectionLayoutEnvironment_Private *)v2 _sectionIndex];
  _dataSourceSnapshot = [(NSCollectionLayoutEnvironment_Private *)v2 _dataSourceSnapshot];

  numberOfSections = [_dataSourceSnapshot numberOfSections];
  if (_sectionIndex2 == numberOfSections - 1)
  {
    v7 = (2 * (_sectionIndex == 0)) | 8;
  }

  else
  {
    v7 = 2 * (_sectionIndex == 0);
  }

  v8 = (2 * (_sectionIndex == 0)) | 4;
  if (_sectionIndex2 == numberOfSections - 1)
  {
    v8 = (2 * (_sectionIndex == 0)) | 8;
  }

  if (_sectionIndex)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

- (double)_effectiveEstimatedSectionHeaderHeight
{
  result = self->_estimatedSectionHeaderHeight;
  v3 = fabs(result + -1.79769313e308);
  v4 = fabs(result + 1.0) > 2.22044605e-16 && v3 > 2.22044605e-16;
  if (!v4 || result == 0.0)
  {
    [(_UICollectionViewListLayoutSectionConfiguration *)self _defaultSectionHeaderHeight];
  }

  return result;
}

- (_UIListGeometry)_listGeometry
{
  v31 = self->_layoutEnvironment;
  container = [(NSCollectionLayoutEnvironment_Private *)v31 container];
  v7 = container;
  if (container)
  {
    v8 = *(container + 8);
    if (v8)
    {
      v29 = v8[4];
      v30 = v8[3];
    }

    else
    {
      v29 = 0u;
      v30 = 0u;
    }

    v9 = v7[1];
    if (v9)
    {
      v10 = v9[2];
      v11 = v9[3];
      v12 = v9[4];
      v13 = v9[5];
    }

    else
    {
      v11 = 0.0;
      v12 = 0.0;
      v13 = 0.0;
      v10 = 0.0;
    }

    v14 = v7[1];
    if (v14)
    {
      v27 = v14[8];
      v28 = v14[7];
      goto LABEL_8;
    }

    v26 = 0uLL;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a3 object:self file:@"_UICollectionViewListLayoutSection.m" lineNumber:599 description:{@"UICollectionView internal inconsistency: invalid environment layout container. Environment: %@", v31}];

    v14 = 0;
    v26 = 0uLL;
    v29 = 0u;
    v30 = 0u;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v10 = 0.0;
  }

  v27 = v26;
  v28 = v26;
LABEL_8:

  [v7 contentSize];
  v16 = v15;
  v18 = v17;
  _traitCollection = [(_UICollectionViewListLayoutSectionConfiguration *)self _traitCollection];
  layoutDirection = [_traitCollection layoutDirection];
  if (layoutDirection == 1)
  {
    v21 = v13;
  }

  else
  {
    v21 = v11;
  }

  if (layoutDirection == 1)
  {
    v22 = v11;
  }

  else
  {
    v22 = v13;
  }

  [UIViewController _horizontalContentMarginForViewWidth:_traitCollection safeAreaInsets:v16 traitCollection:v10, v21, v12, v22];
  retstr->contentMargins.top = 0.0;
  retstr->contentMargins.leading = v23;
  retstr->contentMargins.bottom = 0.0;
  retstr->contentMargins.trailing = v23;
  *&retstr->layoutMargins.top = v30;
  *&retstr->layoutMargins.bottom = v29;
  retstr->safeAreaInsets.top = v10;
  retstr->safeAreaInsets.leading = v11;
  retstr->safeAreaInsets.bottom = v12;
  retstr->safeAreaInsets.trailing = v13;
  *&retstr->scrollAccessoryInsets.top = v28;
  *&retstr->scrollAccessoryInsets.bottom = v27;
  retstr->size.width = v16;
  retstr->size.height = v18;

  return result;
}

+ (id)new
{
  v2 = [self alloc];

  return [v2 initWithAppearanceStyle:0 layoutEnvironment:0];
}

- (UICollectionView)_collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

- (double)_defaultSectionHeaderHeight
{
  v3 = [(_UICollectionViewListLayoutSectionConfiguration *)self appearanceStyle]- 1;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_18A683338[v3];
  }

  _constants = [(_UICollectionViewListLayoutSectionConfiguration *)self _constants];
  [_constants defaultSectionHeaderHeightForTableViewStyle:v4 screen:0];
  v7 = v6;
  _traitCollection = [(_UICollectionViewListLayoutSectionConfiguration *)self _traitCollection];
  [_traitCollection displayScale];
  v10 = UIPixelBoundaryOffset(1, v7, v9);

  return v10;
}

- (id)_createSwipeActionsContainer
{
  v2 = [off_1E70ECB18 fractionalWidthDimension:1.0];
  v3 = [off_1E70ECB18 fractionalHeightDimension:1.0];
  v4 = [off_1E70ECB40 sizeWithWidthDimension:v2 heightDimension:v3];

  v5 = [off_1E70ECB00 layoutAnchorWithAnchorPoint:{0.5, 0.5}];
  v6 = [off_1E70ECB10 decorationItemWithSize:v4 elementKind:0x1EFB7AFF0 containerAnchor:v5];
  [v6 _setRegistrationViewClass:objc_opt_class()];
  [v6 setZIndex:5];

  return v6;
}

- (UITableConstants)_constants
{
  _traitCollection = [(_UICollectionViewListLayoutSectionConfiguration *)self _traitCollection];
  v3 = _UITableConstantsForTraitCollection(_traitCollection);

  return v3;
}

- (double)_effectiveEstimatedRowHeight
{
  result = self->_estimatedRowHeight;
  v3 = fabs(result + -1.79769313e308);
  v4 = fabs(result + 1.0) > 2.22044605e-16 && v3 > 2.22044605e-16;
  if (!v4 || result == 0.0)
  {
    [(_UICollectionViewListLayoutSectionConfiguration *)self _defaultRowHeight];
  }

  return result;
}

- (BOOL)_shouldSupplementariesFollowSectionInsets
{
  _traitCollection = [(_UICollectionViewListLayoutSectionConfiguration *)self _traitCollection];
  userInterfaceIdiom = [_traitCollection userInterfaceIdiom];

  return userInterfaceIdiom <= 6 && ((1 << userInterfaceIdiom) & 0x4C) != 0 || (self->_appearanceStyle & 0xFFFFFFFFFFFFFFFBLL) != 0;
}

- (_UIListSeparatorConfiguration)_separatorConfiguration
{
  v2 = [(_UIListSeparatorConfiguration *)self->_separatorConfiguration copy];

  return v2;
}

- (_UICollectionViewListLayoutSectionConfiguration)initWithCollectionView:(id)view
{
  v4 = [(_UICollectionViewListLayoutSectionConfiguration *)self initWithAppearanceStyle:0 layoutEnvironment:0];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_collectionView, view);
  }

  return v5;
}

- (_UICollectionViewListLayoutSectionConfiguration)initWithAppearanceStyle:(int64_t)style layoutEnvironment:(id)environment
{
  v23.receiver = self;
  v23.super_class = _UICollectionViewListLayoutSectionConfiguration;
  v6 = [(_UICollectionViewListLayoutSectionConfiguration *)&v23 init];
  if (v6)
  {
    environmentCopy = environment;
    objc_storeStrong(v6 + 20, environment);
    _traitCollection = [v6 _traitCollection];
    if ((style - 1) >= 4)
    {
      styleCopy = 0;
    }

    else
    {
      styleCopy = style;
    }

    v10 = +[_UIListMetrics sharedMetrics];
    v11 = [v10 behaviorsForListWithStyle:styleCopy traitCollection:_traitCollection];

    v22 = 0u;
    v12 = +[_UIListMetrics sharedMetrics];
    v13 = v12;
    if (v12)
    {
      [v12 metricsForSeparatorWithListStyle:styleCopy traitCollection:_traitCollection];
    }

    else
    {
      v22 = 0u;
    }

    v14 = *(v6 + 21);
    *(v6 + 21) = @"UICollectionViewListLayoutElementKindSectionHeader";

    v15 = *(v6 + 22);
    *(v6 + 22) = @"UICollectionViewListLayoutElementKindSectionFooter";

    *(v6 + 4) = style;
    v6[8] = 0;
    *(v6 + 40) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    *(v6 + 56) = vdupq_n_s64(0xC08F400000000000);
    *(v6 + 12) = 0x7FEFFFFFFFFFFFFFLL;
    v16 = *(&v22 + 1);
    if (*(&v22 + 1) >= 2uLL)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UICollectionViewListLayoutSeparatorStyle _UICollectionViewListLayoutSeparatorStyleFromListSeparatorStyle(_UIListSeparatorStyle)"];
      [currentHandler handleFailureInFunction:v18 file:@"_UICollectionViewListLayoutSection_Internal.h" lineNumber:74 description:{@"UIKit internal inconsistency: unknown separator style (%ld)", *(&v22 + 1)}];

      v16 = 0;
    }

    *(v6 + 13) = v16;
    v19 = [_UIListSeparatorConfiguration _configurationForAppearanceStyle:style inLayoutEnvironment:environmentCopy];
    v20 = *(v6 + 2);
    *(v6 + 2) = v19;

    v6[9] = (v11 & 2) != 0;
  }

  return v6;
}

- (void)setHeaderTopPadding:(double)padding
{
  if (padding < 0.0)
  {
    padding = 1.79769313e308;
  }

  self->_headerTopPadding = padding;
}

- (void)setCornerRadius:(double)radius
{
  if (radius < 0.0)
  {
    radius = 1.79769313e308;
  }

  self->_cornerRadius = radius;
}

- (NSDirectionalEdgeInsets)separatorInset
{
  [(_UIListSeparatorConfiguration *)self->_separatorConfiguration _insets];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (void)_setSeparatorConfiguration:(id)configuration
{
  if (configuration)
  {
    v4 = [configuration copy];
  }

  else
  {
    v4 = [_UIListSeparatorConfiguration _configurationForAppearanceStyle:self->_appearanceStyle inLayoutEnvironment:self->_layoutEnvironment];
  }

  separatorConfiguration = self->_separatorConfiguration;
  self->_separatorConfiguration = v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    objc_storeWeak((v4 + 152), WeakRetained);

    objc_storeStrong((v4 + 160), self->_layoutEnvironment);
    *(v4 + 11) = self->__apiVersion;
    objc_storeStrong((v4 + 168), self->__headerElementKind);
    objc_storeStrong((v4 + 176), self->__footerElementKind);
    objc_storeStrong((v4 + 184), self->__backgroundColor);
    *(v4 + 32) = self->_appearanceStyle;
    *(v4 + 40) = self->_cornerRadius;
    *(v4 + 8) = self->_stylesFirstItemAsHeader;
    *(v4 + 48) = self->_rowHeight;
    *(v4 + 56) = self->_sectionHeaderHeight;
    *(v4 + 64) = self->_sectionFooterHeight;
    *(v4 + 72) = self->_estimatedRowHeight;
    *(v4 + 80) = self->_estimatedSectionHeaderHeight;
    *(v4 + 88) = self->_estimatedSectionFooterHeight;
    *(v4 + 96) = self->_headerTopPadding;
    *(v4 + 104) = self->_separatorStyle;
    v6 = [self->_separatorInsetProvider copy];
    v7 = *(v4 + 112);
    *(v4 + 112) = v6;

    v8 = [(_UIListSeparatorConfiguration *)self->_separatorConfiguration copy];
    v9 = *(v4 + 16);
    *(v4 + 16) = v8;

    v10 = [self->_itemSeparatorHandler copy];
    v11 = *(v4 + 24);
    *(v4 + 24) = v10;

    v12 = [self->_leadingSwipeActionsConfigurationProvider copy];
    v13 = *(v4 + 120);
    *(v4 + 120) = v12;

    v14 = [self->_trailingSwipeActionsConfigurationProvider copy];
    v15 = *(v4 + 128);
    *(v4 + 128) = v14;

    v16 = [self->_willBeginSwipingHandler copy];
    v17 = *(v4 + 136);
    *(v4 + 136) = v16;

    v18 = [self->_didEndSwipingHandler copy];
    v19 = *(v4 + 144);
    *(v4 + 144) = v18;

    *(v4 + 9) = self->_sectionHeaderHugsContent;
    *(v4 + 10) = self->_hasCompactSectionSpacing;
  }

  return v4;
}

- (id)_createSeparatorForBottom:(BOOL)bottom
{
  bottomCopy = bottom;
  v5 = [off_1E70ECB18 fractionalWidthDimension:1.0];
  [(_UICollectionViewListLayoutSectionConfiguration *)self _separatorHeight];
  v6 = [off_1E70ECB18 absoluteDimension:?];
  v7 = [off_1E70ECB40 sizeWithWidthDimension:v5 heightDimension:v6];

  if (bottomCopy)
  {
    v8 = 4;
  }

  else
  {
    v8 = 1;
  }

  if (bottomCopy)
  {
    v9 = _UICollectionViewListLayoutElementKindBottomSeparator;
  }

  else
  {
    v9 = &_UICollectionViewListLayoutElementKindTopSeparator;
  }

  v10 = [off_1E70ECB00 layoutAnchorWithEdges:v8 absoluteOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  v11 = [off_1E70ECB10 decorationItemWithSize:v7 elementKind:*v9 containerAnchor:v10];
  [v11 _setRegistrationViewClass:objc_opt_class()];
  [v11 setZIndex:100];

  return v11;
}

- (id)_generateLayoutGroup:(id)group
{
  v31[1] = *MEMORY[0x1E69E9840];
  if (!group)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewListLayoutSection.m" lineNumber:352 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  objc_storeStrong(&self->_layoutEnvironment, group);
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  if (self->_separatorStyle || self->_itemSeparatorHandler)
  {
    v6 = [(_UICollectionViewListLayoutSectionConfiguration *)self _createSeparatorForBottom:1];
    [v5 addObject:v6];

    v7 = [(_UICollectionViewListLayoutSectionConfiguration *)self _createSeparatorForBottom:0];
    [v5 addObject:v7];
  }

  if ([(_UICollectionViewListLayoutSectionConfiguration *)self _wantsSwipeActions])
  {
    _createSwipeActionsContainer = [(_UICollectionViewListLayoutSectionConfiguration *)self _createSwipeActionsContainer];
    [v5 addObject:_createSwipeActionsContainer];
  }

  rowHeight = self->_rowHeight;
  v10 = fabs(rowHeight + 1.0);
  v11 = fabs(rowHeight + -1.79769313e308);
  if (v10 > 2.22044605e-16 && v11 > 2.22044605e-16)
  {
    v20 = [off_1E70ECB18 fractionalWidthDimension:1.0];
    v21 = [off_1E70ECB18 absoluteDimension:self->_rowHeight];
    v17 = [off_1E70ECB40 sizeWithWidthDimension:v20 heightDimension:v21];

    v18 = [off_1E70ECB30 itemWithSize:v17 decorationItems:v5];
    v30 = v18;
    v19 = &v30;
  }

  else
  {
    [(_UICollectionViewListLayoutSectionConfiguration *)self _effectiveEstimatedRowHeight];
    v14 = v13;
    v15 = [off_1E70ECB18 fractionalWidthDimension:1.0];
    v16 = [off_1E70ECB18 estimatedDimension:v14];
    v17 = [off_1E70ECB40 sizeWithWidthDimension:v15 heightDimension:v16];

    v18 = [off_1E70ECB30 itemWithSize:v17 decorationItems:v5];
    v31[0] = v18;
    v19 = v31;
  }

  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

  v23 = [off_1E70ECB18 fractionalWidthDimension:1.0];
  v24 = [off_1E70ECB18 estimatedDimension:1000.0];
  v25 = [off_1E70ECB40 sizeWithWidthDimension:v23 heightDimension:v24];

  v26 = [off_1E70ECB28 verticalGroupWithLayoutSize:v25 subitems:v22];

  return v26;
}

- (void)_addSupplementaryItemsToLayout:(id)layout headerFooterPinningBehavior:(int64_t)behavior
{
  v34[1] = *MEMORY[0x1E69E9840];
  v7 = objc_opt_new();
  _extensionBehavior = [layout _extensionBehavior];
  if (self->_sectionHeaderHugsContent)
  {
    [off_1E70ECB18 estimatedDimension:100.0];
  }

  else
  {
    [off_1E70ECB18 fractionalWidthDimension:1.0];
  }
  v9 = ;
  sectionHeaderHeight = self->_sectionHeaderHeight;
  v11 = fabs(sectionHeaderHeight + -1.79769313e308);
  if (fabs(sectionHeaderHeight + 1.0) > 2.22044605e-16 && v11 > 2.22044605e-16)
  {
    if (sectionHeaderHeight <= 0.0)
    {
      goto LABEL_16;
    }

    v13 = off_1E70ECB40;
    v14 = [off_1E70ECB18 absoluteDimension:?];
  }

  else
  {
    [(_UICollectionViewListLayoutSectionConfiguration *)self _effectiveEstimatedSectionHeaderHeight];
    v13 = off_1E70ECB40;
    v14 = [off_1E70ECB18 estimatedDimension:?];
  }

  v15 = v14;
  v16 = [v13 sizeWithWidthDimension:v9 heightDimension:v14];

  if (v16)
  {
    if (self->_sectionHeaderHugsContent)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    v18 = [off_1E70ECB08 boundarySupplementaryItemWithLayoutSize:v16 elementKind:self->__headerElementKind alignment:v17];
    [v18 setPinToVisibleBounds:behavior != 0];
    [v18 setZIndex:200];
    if (_extensionBehavior == 2)
    {
      [v18 _setPinningZIndex:210];
    }

    [v7 addObject:v18];
  }

LABEL_16:
  sectionFooterHeight = self->_sectionFooterHeight;
  v20 = fabs(sectionFooterHeight + -1.79769313e308);
  if (fabs(sectionFooterHeight + 1.0) > 2.22044605e-16 && v20 > 2.22044605e-16)
  {
    if (sectionFooterHeight <= 0.0)
    {
      goto LABEL_28;
    }

    v24 = off_1E70ECB40;
    v25 = [off_1E70ECB18 fractionalWidthDimension:{1.0, v20}];
    v26 = [off_1E70ECB18 absoluteDimension:self->_sectionFooterHeight];
  }

  else
  {
    [(_UICollectionViewListLayoutSectionConfiguration *)self _effectiveEstimatedSectionFooterHeight];
    v23 = v22;
    v24 = off_1E70ECB40;
    v25 = [off_1E70ECB18 fractionalWidthDimension:1.0];
    v26 = [off_1E70ECB18 estimatedDimension:v23];
  }

  v27 = v26;
  v28 = [v24 sizeWithWidthDimension:v25 heightDimension:v26];

  if (v28)
  {
    v29 = behavior != 0;
    if (self->_sectionHeaderHugsContent)
    {
      v30 = 4;
    }

    else
    {
      v30 = 5;
    }

    v31 = [off_1E70ECB08 boundarySupplementaryItemWithLayoutSize:v28 elementKind:self->__footerElementKind alignment:v30];
    [v31 setPinToVisibleBounds:v29];
    [v31 setZIndex:200];
    if (_extensionBehavior == 2)
    {
      [v31 _setPinningZIndex:210];
    }

    [v7 addObject:v31];
  }

LABEL_28:
  [layout setSupplementariesFollowContentInsets:{-[_UICollectionViewListLayoutSectionConfiguration _shouldSupplementariesFollowSectionInsets](self, "_shouldSupplementariesFollowSectionInsets")}];
  [layout setBoundarySupplementaryItems:v7];
  if ([(_UICollectionViewListLayoutSectionConfiguration *)self _usesSectionBackgroundDecoration])
  {
    v32 = [off_1E70ECB10 backgroundDecorationItemWithElementKind:@"_UICollectionViewListLayoutSectionBackgroundColorDecorationElementKind"];
    [v32 _setRegistrationViewClass:objc_opt_class()];
    [v32 setZIndex:0];
    v34[0] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    [layout setDecorationItems:v33];
  }
}

- (void)_setDefaultBackgroundColor:(id)color
{
  if (!self->__backgroundColor)
  {
    v5 = [color copy];
    backgroundColor = self->__backgroundColor;
    self->__backgroundColor = v5;
  }
}

- (double)_effectiveEstimatedSectionFooterHeight
{
  result = self->_estimatedSectionFooterHeight;
  v3 = fabs(result + -1.79769313e308);
  v4 = fabs(result + 1.0) > 2.22044605e-16 && v3 > 2.22044605e-16;
  if (!v4 || result == 0.0)
  {
    [(_UICollectionViewListLayoutSectionConfiguration *)self _defaultSectionFooterHeight];
  }

  return result;
}

- (double)_defaultSectionFooterHeight
{
  v3 = [(_UICollectionViewListLayoutSectionConfiguration *)self appearanceStyle]- 1;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_18A683338[v3];
  }

  _constants = [(_UICollectionViewListLayoutSectionConfiguration *)self _constants];
  [_constants defaultSectionFooterHeightForTableViewStyle:v4 screen:0];
  v7 = v6;
  _traitCollection = [(_UICollectionViewListLayoutSectionConfiguration *)self _traitCollection];
  [_traitCollection displayScale];
  v10 = UIPixelBoundaryOffset(1, v7, v9);

  return v10;
}

@end
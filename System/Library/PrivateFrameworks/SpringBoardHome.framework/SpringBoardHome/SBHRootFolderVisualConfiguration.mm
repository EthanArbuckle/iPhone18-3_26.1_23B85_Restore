@interface SBHRootFolderVisualConfiguration
- (BOOL)isEqual:(id)equal;
- (CGSize)editModeButtonSize;
- (CGSize)pageControlCustomPadding;
- (CGSize)pageControlFrameInset;
- (CGSize)pageManagementFocusModeOptionsButtonSize;
- (NSDirectionalEdgeInsets)editModeButtonContentEdgeInsets;
- (SBHRootFolderVisualConfiguration)init;
- (UIEdgeInsets)dockBackgroundViewInsets;
- (UIEdgeInsets)dockListViewInsets;
- (UIOffset)editModeButtonLayoutOffset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)setPageManagementLayoutMetrics:(SBRootFolderViewPageManagementLayoutMetrics *)metrics forLayoutConfiguration:(int64_t)configuration;
@end

@implementation SBHRootFolderVisualConfiguration

- (UIEdgeInsets)dockListViewInsets
{
  top = self->_dockListViewInsets.top;
  left = self->_dockListViewInsets.left;
  bottom = self->_dockListViewInsets.bottom;
  right = self->_dockListViewInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)dockBackgroundViewInsets
{
  top = self->_dockBackgroundViewInsets.top;
  left = self->_dockBackgroundViewInsets.left;
  bottom = self->_dockBackgroundViewInsets.bottom;
  right = self->_dockBackgroundViewInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)editModeButtonSize
{
  width = self->_editModeButtonSize.width;
  height = self->_editModeButtonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIOffset)editModeButtonLayoutOffset
{
  horizontal = self->_editModeButtonLayoutOffset.horizontal;
  vertical = self->_editModeButtonLayoutOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (NSDirectionalEdgeInsets)editModeButtonContentEdgeInsets
{
  top = self->_editModeButtonContentEdgeInsets.top;
  leading = self->_editModeButtonContentEdgeInsets.leading;
  bottom = self->_editModeButtonContentEdgeInsets.bottom;
  trailing = self->_editModeButtonContentEdgeInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (CGSize)pageControlFrameInset
{
  width = self->_pageControlFrameInset.width;
  height = self->_pageControlFrameInset.height;
  result.height = height;
  result.width = width;
  return result;
}

- (SBHRootFolderVisualConfiguration)init
{
  v3.receiver = self;
  v3.super_class = SBHRootFolderVisualConfiguration;
  result = [(SBHRootFolderVisualConfiguration *)&v3 init];
  if (result)
  {
    result->_idleTextVerticalOffset = 23.0;
  }

  return result;
}

- (void)setPageManagementLayoutMetrics:(SBRootFolderViewPageManagementLayoutMetrics *)metrics forLayoutConfiguration:(int64_t)configuration
{
  if (metrics <= 5)
  {
    v8 = qword_1BEE89E10[metrics];
    v9 = qword_1BEE89E40[metrics];
    v10 = qword_1BEE89E70[metrics];
    *(&self->super.isa + qword_1BEE89DE0[metrics]) = v4;
    *(&self->super.isa + v8) = v5;
    *(&self->super.isa + v9) = v6;
    *(&self->super.isa + v10) = v7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    *(result + 21) = *&self->_idleTextVerticalOffset;
    *(result + 22) = *&self->_pageControlVerticalOffset;
    *(result + 15) = self->_pageControlFrameInset;
    *(result + 16) = self->_pageControlCustomPadding;
    *(result + 23) = *&self->_scrollAccessoryVerticalOffsetAdjustmentForAuxiliaryView;
    *(result + 24) = *&self->_pageManagementPageCheckboxVerticalMargin;
    *(result + 25) = *&self->_pageManagementPageCheckboxDiameter;
    *(result + 17) = self->_pageManagementFocusModeOptionsButtonSize;
    cellSpacing = self->_pageManagement1x1LayoutMetrics.cellSpacing;
    *(result + 24) = *&self->_pageManagement1x1LayoutMetrics.bottomMargin;
    *(result + 8) = cellSpacing;
    v6 = self->_pageManagement2x1LayoutMetrics.cellSpacing;
    *(result + 56) = *&self->_pageManagement2x1LayoutMetrics.bottomMargin;
    *(result + 40) = v6;
    v7 = self->_pageManagement2x2LayoutMetrics.cellSpacing;
    *(result + 88) = *&self->_pageManagement2x2LayoutMetrics.bottomMargin;
    *(result + 72) = v7;
    v8 = self->_pageManagement3x2LayoutMetrics.cellSpacing;
    *(result + 120) = *&self->_pageManagement3x2LayoutMetrics.bottomMargin;
    *(result + 104) = v8;
    v9 = self->_pageManagement3x3LayoutMetrics.cellSpacing;
    *(result + 152) = *&self->_pageManagement3x3LayoutMetrics.bottomMargin;
    *(result + 136) = v9;
    *(result + 26) = *&self->_dockViewHeight;
    *(result + 27) = *&self->_dockBackgroundViewCornerRadius;
    v10 = *&self->_dockBackgroundViewInsets.bottom;
    *(result + 20) = *&self->_dockBackgroundViewInsets.top;
    *(result + 21) = v10;
    v11 = *&self->_dockListViewInsets.bottom;
    *(result + 22) = *&self->_dockListViewInsets.top;
    *(result + 23) = v11;
    v12 = *&self->_editModeButtonContentEdgeInsets.bottom;
    *(result + 24) = *&self->_editModeButtonContentEdgeInsets.top;
    *(result + 25) = v12;
    *(result + 18) = self->_editModeButtonLayoutOffset;
    *(result + 19) = self->_editModeButtonSize;
    *(result + 28) = *&self->_editingEntryAreaHorizontalInset;
    *(result + 29) = self->_numberOfInitialPagesToPreferVisible;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
    goto LABEL_22;
  }

  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v10 = 0;
    goto LABEL_22;
  }

  v7 = equalCopy;
  if (self->_idleTextVerticalOffset != v7->_idleTextVerticalOffset || self->_pageControlVerticalOffset != v7->_pageControlVerticalOffset)
  {
    goto LABEL_18;
  }

  if (self->_pageControlFrameInset.width != v7->_pageControlFrameInset.width || self->_pageControlFrameInset.height != v7->_pageControlFrameInset.height)
  {
    goto LABEL_18;
  }

  v9 = self->_pageControlCustomPadding.width == v7->_pageControlCustomPadding.width && self->_pageControlCustomPadding.height == v7->_pageControlCustomPadding.height;
  if (!v9 || self->_scrollAccessoryVerticalOffsetAdjustmentForAuxiliaryView != v7->_scrollAccessoryVerticalOffsetAdjustmentForAuxiliaryView || self->_pageManagementPageCheckboxVerticalMargin != v7->_pageManagementPageCheckboxVerticalMargin || self->_pageManagementPageCheckboxDiameter != v7->_pageManagementPageCheckboxDiameter)
  {
    goto LABEL_18;
  }

  v10 = 0;
  if (self->_pageManagementFocusModeOptionsButtonSize.width != v7->_pageManagementFocusModeOptionsButtonSize.width)
  {
    goto LABEL_19;
  }

  if (self->_pageManagementFocusModeOptionsButtonSize.height != v7->_pageManagementFocusModeOptionsButtonSize.height)
  {
    goto LABEL_19;
  }

  v10 = 0;
  if (self->_pageManagement2x2LayoutMetrics.cellSpacing.width != v7->_pageManagement2x2LayoutMetrics.cellSpacing.width)
  {
    goto LABEL_19;
  }

  if (self->_pageManagement2x2LayoutMetrics.cellSpacing.height != v7->_pageManagement2x2LayoutMetrics.cellSpacing.height)
  {
    goto LABEL_19;
  }

  if (self->_pageManagement2x2LayoutMetrics.bottomMargin != v7->_pageManagement2x2LayoutMetrics.bottomMargin)
  {
    goto LABEL_19;
  }

  v10 = 0;
  if (self->_pageManagement3x2LayoutMetrics.cellSpacing.width != v7->_pageManagement3x2LayoutMetrics.cellSpacing.width)
  {
    goto LABEL_19;
  }

  if (self->_pageManagement3x2LayoutMetrics.cellSpacing.height != v7->_pageManagement3x2LayoutMetrics.cellSpacing.height)
  {
    goto LABEL_19;
  }

  if (self->_pageManagement3x2LayoutMetrics.bottomMargin != v7->_pageManagement3x2LayoutMetrics.bottomMargin)
  {
    goto LABEL_19;
  }

  v10 = 0;
  if (self->_pageManagement3x3LayoutMetrics.cellSpacing.width != v7->_pageManagement3x3LayoutMetrics.cellSpacing.width || self->_pageManagement3x3LayoutMetrics.cellSpacing.height != v7->_pageManagement3x3LayoutMetrics.cellSpacing.height || self->_pageManagement3x3LayoutMetrics.bottomMargin != v7->_pageManagement3x3LayoutMetrics.bottomMargin)
  {
    goto LABEL_19;
  }

  if (self->_dockViewHeight != v7->_dockViewHeight || self->_dockBackgroundViewCornerRadius != v7->_dockBackgroundViewCornerRadius || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_dockBackgroundViewInsets.top, *&v7->_dockBackgroundViewInsets.top), vceqq_f64(*&self->_dockBackgroundViewInsets.bottom, *&v7->_dockBackgroundViewInsets.bottom)))) & 1) == 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_dockListViewInsets.top, *&v7->_dockListViewInsets.top), vceqq_f64(*&self->_dockListViewInsets.bottom, *&v7->_dockListViewInsets.bottom)))) & 1) == 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_editModeButtonContentEdgeInsets.top, *&v7->_editModeButtonContentEdgeInsets.top), vceqq_f64(*&self->_editModeButtonContentEdgeInsets.bottom, *&v7->_editModeButtonContentEdgeInsets.bottom)))) & 1) == 0)
  {
    goto LABEL_18;
  }

  v10 = 0;
  if (self->_editModeButtonLayoutOffset.horizontal != v7->_editModeButtonLayoutOffset.horizontal)
  {
    goto LABEL_19;
  }

  if (self->_editModeButtonLayoutOffset.vertical != v7->_editModeButtonLayoutOffset.vertical)
  {
    goto LABEL_19;
  }

  v10 = 0;
  if (self->_editModeButtonSize.width != v7->_editModeButtonSize.width || self->_editModeButtonSize.height != v7->_editModeButtonSize.height)
  {
    goto LABEL_19;
  }

  if (self->_editingEntryAreaHorizontalInset == v7->_editingEntryAreaHorizontalInset)
  {
    v10 = self->_numberOfInitialPagesToPreferVisible == v7->_numberOfInitialPagesToPreferVisible;
  }

  else
  {
LABEL_18:
    v10 = 0;
  }

LABEL_19:

LABEL_22:
  return v10;
}

- (unint64_t)hash
{
  left = self->_dockListViewInsets.left;
  leading = self->_editModeButtonContentEdgeInsets.leading;
  v4 = self->_editModeButtonLayoutOffset.horizontal + leading + self->_editModeButtonContentEdgeInsets.bottom + self->_editModeButtonContentEdgeInsets.trailing + self->_editModeButtonContentEdgeInsets.top + left + self->_dockListViewInsets.bottom + self->_dockListViewInsets.right + self->_dockListViewInsets.top + self->_dockBackgroundViewInsets.left + self->_dockBackgroundViewInsets.bottom + self->_dockBackgroundViewInsets.right + self->_dockBackgroundViewInsets.top + self->_dockBackgroundViewCornerRadius + self->_dockViewHeight + self->_idleTextVerticalOffset + self->_pageControlVerticalOffset + self->_scrollAccessoryVerticalOffsetAdjustmentForAuxiliaryView + self->_pageControlFrameInset.width + self->_pageControlFrameInset.height + self->_pageControlCustomPadding.width + self->_pageControlCustomPadding.height + self->_pageManagementPageCheckboxVerticalMargin + self->_pageManagementPageCheckboxDiameter + self->_pageManagementFocusModeOptionsButtonSize.width + self->_pageManagementFocusModeOptionsButtonSize.height + (self->_pageManagement1x1LayoutMetrics.bottomMargin + self->_pageManagement1x1LayoutMetrics.cellSpacing.width + self->_pageManagement1x1LayoutMetrics.cellSpacing.height) + (self->_pageManagement2x1LayoutMetrics.bottomMargin + self->_pageManagement2x1LayoutMetrics.cellSpacing.width + self->_pageManagement2x1LayoutMetrics.cellSpacing.height) + (self->_pageManagement2x2LayoutMetrics.bottomMargin + self->_pageManagement2x2LayoutMetrics.cellSpacing.width + self->_pageManagement2x2LayoutMetrics.cellSpacing.height) + (self->_pageManagement3x2LayoutMetrics.bottomMargin + self->_pageManagement3x2LayoutMetrics.cellSpacing.width + self->_pageManagement3x2LayoutMetrics.cellSpacing.height) + (self->_pageManagement3x3LayoutMetrics.bottomMargin + self->_pageManagement3x3LayoutMetrics.cellSpacing.width + self->_pageManagement3x3LayoutMetrics.cellSpacing.height);
  return (self->_editingEntryAreaHorizontalInset + self->_editModeButtonSize.height + self->_editModeButtonSize.width + self->_editModeButtonLayoutOffset.vertical + v4 + self->_numberOfInitialPagesToPreferVisible);
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHRootFolderVisualConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHRootFolderVisualConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHRootFolderVisualConfiguration *)self succinctDescriptionBuilder];
  [(SBHRootFolderVisualConfiguration *)self idleTextVerticalOffset];
  v5 = [succinctDescriptionBuilder appendFloat:@"idleTextVerticalOffset" withName:?];
  [(SBHRootFolderVisualConfiguration *)self pageControlVerticalOffset];
  v6 = [succinctDescriptionBuilder appendFloat:@"pageControlVerticalOffset" withName:?];
  [(SBHRootFolderVisualConfiguration *)self pageControlFrameInset];
  v7 = [succinctDescriptionBuilder appendSize:@"pageControlFrameInset" withName:?];
  [(SBHRootFolderVisualConfiguration *)self pageControlCustomPadding];
  v8 = [succinctDescriptionBuilder appendSize:@"pageControlCustomPadding" withName:?];
  [(SBHRootFolderVisualConfiguration *)self scrollAccessoryVerticalOffsetAdjustmentForAuxiliaryView];
  v9 = [succinctDescriptionBuilder appendFloat:@"scrollAccessoryVerticalOffsetAdjustmentForAuxiliaryView" withName:?];
  [(SBHRootFolderVisualConfiguration *)self pageManagementPageCheckboxVerticalMargin];
  v10 = [succinctDescriptionBuilder appendFloat:@"pageManagementPageCheckboxVerticalMargin" withName:?];
  [(SBHRootFolderVisualConfiguration *)self pageManagementPageCheckboxDiameter];
  v11 = [succinctDescriptionBuilder appendFloat:@"pageManagementPageCheckboxDiameter" withName:?];
  [(SBHRootFolderVisualConfiguration *)self pageManagementFocusModeOptionsButtonSize];
  v12 = [succinctDescriptionBuilder appendSize:@"pageManagementFocusModeOptionsButtonSize" withName:?];
  [(SBHRootFolderVisualConfiguration *)self dockViewHeight];
  v13 = [succinctDescriptionBuilder appendFloat:@"dockViewHeight" withName:?];
  [(SBHRootFolderVisualConfiguration *)self dockBackgroundViewCornerRadius];
  v14 = [succinctDescriptionBuilder appendFloat:@"dockBackgroundViewCornerRadius" withName:?];
  [(SBHRootFolderVisualConfiguration *)self dockBackgroundViewInsets];
  v15 = NSStringFromUIEdgeInsets(v26);
  [succinctDescriptionBuilder appendString:v15 withName:@"dockBackgroundViewInsets"];

  [(SBHRootFolderVisualConfiguration *)self dockListViewInsets];
  v16 = NSStringFromUIEdgeInsets(v27);
  [succinctDescriptionBuilder appendString:v16 withName:@"dockListViewInsets"];

  [(SBHRootFolderVisualConfiguration *)self editModeButtonContentEdgeInsets];
  v17 = NSStringFromDirectionalEdgeInsets(v28);
  [succinctDescriptionBuilder appendString:v17 withName:@"editModeButtonContentEdgeInsets"];

  [(SBHRootFolderVisualConfiguration *)self editModeButtonLayoutOffset];
  v18 = NSStringFromUIOffset(v24);
  [succinctDescriptionBuilder appendString:v18 withName:@"editModeButtonLayoutOffset"];

  [(SBHRootFolderVisualConfiguration *)self editModeButtonSize];
  v19 = NSStringFromCGSize(v25);
  [succinctDescriptionBuilder appendString:v19 withName:@"editModeButtonSize"];

  [(SBHRootFolderVisualConfiguration *)self editingEntryAreaHorizontalInset];
  v20 = [succinctDescriptionBuilder appendFloat:@"editingEntryAreaHorizontalInset" withName:?];
  v21 = [succinctDescriptionBuilder appendInteger:-[SBHRootFolderVisualConfiguration numberOfInitialPagesToPreferVisible](self withName:{"numberOfInitialPagesToPreferVisible"), @"numberOfInitialPagesToPreferVisible"}];

  return succinctDescriptionBuilder;
}

- (CGSize)pageControlCustomPadding
{
  width = self->_pageControlCustomPadding.width;
  height = self->_pageControlCustomPadding.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)pageManagementFocusModeOptionsButtonSize
{
  width = self->_pageManagementFocusModeOptionsButtonSize.width;
  height = self->_pageManagementFocusModeOptionsButtonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
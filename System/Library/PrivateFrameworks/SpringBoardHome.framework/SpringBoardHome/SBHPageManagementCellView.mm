@interface SBHPageManagementCellView
- (SBHPageManagementCellView)initWithListView:(id)view folder:(id)folder metrics:(SBHPageManagementCellMetrics *)metrics toggleButtonAllowed:(BOOL)allowed;
- (void)_togglePageHidden:(id)hidden;
- (void)cleanUpListView;
- (void)folder:(id)folder listHiddenDidChange:(id)change;
- (void)iconListHiddenDidChange:(id)change;
- (void)layoutSubviews;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
- (void)setListHighlighted:(BOOL)highlighted;
- (void)setScalesListView:(BOOL)view;
- (void)setToggleButtonAlpha:(double)alpha;
@end

@implementation SBHPageManagementCellView

- (SBHPageManagementCellView)initWithListView:(id)view folder:(id)folder metrics:(SBHPageManagementCellMetrics *)metrics toggleButtonAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  viewCopy = view;
  folderCopy = folder;
  v42.receiver = self;
  v42.super_class = SBHPageManagementCellView;
  v13 = [(SBHPageManagementCellView *)&v42 init];
  v14 = v13;
  if (v13)
  {
    v41 = allowedCopy;
    objc_storeStrong(&v13->_listView, view);
    objc_storeStrong(&v14->_folder, folder);
    v14->_scalesListView = 1;
    v16 = *&metrics->backgroundInsets.bottom;
    v15 = *&metrics->listViewVerticalPositionAdjustment;
    v17 = *&metrics->backgroundInsets.top;
    v14->_metrics.toggleButtonVerticalMargin = metrics->toggleButtonVerticalMargin;
    *&v14->_metrics.backgroundInsets.bottom = v16;
    *&v14->_metrics.listViewVerticalPositionAdjustment = v15;
    *&v14->_metrics.backgroundInsets.top = v17;
    fullListViewSize = metrics->fullListViewSize;
    scaledListViewSize = metrics->scaledListViewSize;
    v20 = *&metrics->foregroundInsets.bottom;
    *&v14->_metrics.foregroundInsets.top = *&metrics->foregroundInsets.top;
    *&v14->_metrics.foregroundInsets.bottom = v20;
    v14->_metrics.fullListViewSize = fullListViewSize;
    v14->_metrics.scaledListViewSize = scaledListViewSize;
    model = [viewCopy model];
    isHidden = [model isHidden];
    v23 = objc_alloc_init(MEMORY[0x1E69DD250]);
    listHighlightView = v14->_listHighlightView;
    v14->_listHighlightView = v23;

    v25 = v14->_listHighlightView;
    v26 = [MEMORY[0x1E69DC888] colorWithWhite:0.274509804 alpha:1.0];
    [(UIView *)v25 setBackgroundColor:v26];

    layer = [(UIView *)v14->_listHighlightView layer];
    [layer setCompositingFilter:*MEMORY[0x1E6979860]];

    [(UIView *)v14->_listHighlightView setAlpha:0.0];
    [(SBHPageManagementCellView *)v14 addSubview:v14->_listHighlightView];
    if (viewCopy)
    {
      v28 = 0.5;
      if (!isHidden)
      {
        v28 = 1.0;
      }

      [viewCopy setAlpha:v28];
      v29 = objc_alloc(MEMORY[0x1E69DD250]);
      [viewCopy bounds];
      v30 = [v29 initWithFrame:{0.0, 0.0}];
      [(UIView *)v30 sbh_applyClearGlass];
      [(UIView *)v30 addSubview:viewCopy];
      [(UIView *)v30 bounds];
      UIRectGetCenter();
      [viewCopy setCenter:?];
      listContainerView = v14->_listContainerView;
      v14->_listContainerView = v30;
      v32 = v30;

      [(SBHPageManagementCellView *)v14 insertSubview:v32 atIndex:0];
    }

    if (v41)
    {
      v33 = [SBHPageManagementCheckbox alloc];
      v34 = [(SBHPageManagementCheckbox *)v33 initWithFrame:*MEMORY[0x1E695F058] checkboxDiameter:*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), metrics->toggleButtonDiameter];
      toggleButton = v14->_toggleButton;
      v14->_toggleButton = v34;

      [(SBHPageManagementCheckbox *)v14->_toggleButton setSelected:isHidden ^ 1u animated:0];
      v36 = v14->_toggleButton;
      if (isHidden)
      {
        hasMultipleVisibleListsExcludingTrailingEmptyLists = 1;
      }

      else
      {
        hasMultipleVisibleListsExcludingTrailingEmptyLists = [folderCopy hasMultipleVisibleListsExcludingTrailingEmptyLists];
      }

      [(SBHPageManagementCheckbox *)v36 setEnabled:hasMultipleVisibleListsExcludingTrailingEmptyLists];
      -[SBHPageManagementCheckbox setHidden:](v14->_toggleButton, "setHidden:", [folderCopy isTrailingEmptyList:model]);
      [(SBHPageManagementCheckbox *)v14->_toggleButton addTarget:v14 action:sel__togglePageHidden_ forControlEvents:0x2000];
      [(SBHPageManagementCellView *)v14 addSubview:v14->_toggleButton];
    }

    layer2 = [(SBHPageManagementCellView *)v14 layer];
    [layer2 setAllowsGroupBlending:0];

    [(SBHPageManagementCellView *)v14 setAutoresizesSubviews:0];
    [folderCopy addFolderObserver:v14];
    model2 = [viewCopy model];
    [model2 addListObserver:v14];

    [(SBHPageManagementCellView *)v14 setAccessibilityIdentifier:@"page container"];
  }

  return v14;
}

- (void)layoutSubviews
{
  v48.receiver = self;
  v48.super_class = SBHPageManagementCellView;
  [(SBHPageManagementCellView *)&v48 layoutSubviews];
  [(SBHPageManagementCellView *)self iconImageInfo];
  v4 = v3;
  v6 = v5;
  v34 = v8;
  v35 = v7;
  p_metrics = &self->_metrics;
  toggleButtonDiameter = self->_metrics.toggleButtonDiameter;
  toggleButtonVerticalMargin = self->_metrics.toggleButtonVerticalMargin;
  scalesListView = [(SBHPageManagementCellView *)self scalesListView];
  if (scalesListView)
  {
    listViewVerticalPositionAdjustment = self->_metrics.listViewVerticalPositionAdjustment;
    width = p_metrics->fullListViewSize.width;
    height = self->_metrics.fullListViewSize.height;
    v14 = self->_metrics.scaledListViewSize.width;
    v15 = self->_metrics.scaledListViewSize.height;
  }

  else
  {
    width = p_metrics->fullListViewSize.width;
    height = self->_metrics.fullListViewSize.height;
    listViewVerticalPositionAdjustment = 0.0;
    v15 = height;
    v14 = p_metrics->fullListViewSize.width;
  }

  memset(&remainder, 0, sizeof(remainder));
  memset(&slice, 0, sizeof(slice));
  v49.origin.x = 0.0;
  v49.origin.y = 0.0;
  v49.size.width = v4;
  v49.size.height = v6;
  CGRectDivide(v49, &slice, &remainder, toggleButtonDiameter + toggleButtonVerticalMargin, CGRectMaxYEdge);
  if ([(SBHPageManagementCellView *)self hasCleanedUpListView])
  {
    listView = 0;
  }

  else
  {
    listView = [(SBHPageManagementCellView *)self listView];
  }

  v33 = v4;
  memset(&v45, 0, sizeof(v45));
  CGAffineTransformMakeScale(&v45, v14 / width, v15 / height);
  v17 = CGRectGetWidth(remainder);
  listContainerView = [(SBHPageManagementCellView *)self listContainerView];
  listHighlightView = [(SBHPageManagementCellView *)self listHighlightView];
  if (scalesListView)
  {
    [listContainerView addSubview:listView];
    v20 = 1.0;
  }

  else
  {
    [(SBHPageManagementCellView *)self insertSubview:listView belowSubview:listHighlightView];
    v20 = 0.0;
  }

  v21 = listViewVerticalPositionAdjustment + v15 * 0.5;
  [listView setBounds:{0.0, 0.0, width, height, *&listViewVerticalPositionAdjustment}];
  [listView setCenter:{v14 * 0.5 + (v17 - v14) * 0.5, v21}];
  v44 = v45;
  [listView setTransform:&v44];
  v22 = remainder.size.width;
  v23 = remainder.size.height;
  UIRectGetCenter();
  v25 = v24;
  v27 = v26;
  [listContainerView setBounds:{0.0, 0.0, v22, v23}];
  [listContainerView setCenter:{v25, v27}];
  [listContainerView setAlpha:v20];
  [listHighlightView setBounds:{0.0, 0.0, v22, v23}];
  [listHighlightView setCenter:{v25, v27}];
  v28 = MEMORY[0x1E69DD250];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __43__SBHPageManagementCellView_layoutSubviews__block_invoke;
  v37[3] = &unk_1E808B778;
  v40 = v33;
  v41 = v6;
  v42 = v35;
  v43 = v34;
  v38 = listContainerView;
  v39 = listHighlightView;
  v29 = listHighlightView;
  v30 = listContainerView;
  [v28 performWithoutAnimation:v37];
  toggleButton = [(SBHPageManagementCellView *)self toggleButton];
  [toggleButton setBounds:{0.0, 0.0, toggleButtonDiameter, toggleButtonDiameter}];
  v50.origin.x = 0.0;
  v50.origin.y = 0.0;
  v50.size.width = v22;
  v50.size.height = v23;
  [toggleButton setCenter:{v25, toggleButtonDiameter * 0.5 + toggleButtonVerticalMargin + v27 + CGRectGetHeight(v50) * 0.5}];
}

uint64_t __43__SBHPageManagementCellView_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setContinuousCornerRadius:*(a1 + 72)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 72);

  return [v2 _setContinuousCornerRadius:v3];
}

- (void)setScalesListView:(BOOL)view
{
  if (self->_scalesListView != view)
  {
    self->_scalesListView = view;
    [(SBHPageManagementCellView *)self setNeedsLayout];
  }
}

- (void)setToggleButtonAlpha:(double)alpha
{
  toggleButton = [(SBHPageManagementCellView *)self toggleButton];
  [toggleButton setAlpha:alpha];
}

- (void)setIconImageInfo:(SBIconImageInfo *)info
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  p_iconImageInfo = &self->_iconImageInfo;
  if (!SBIconImageInfoEqualToIconImageInfo(v3, v4, v5, v6, self->_iconImageInfo.size.width, self->_iconImageInfo.size.height, self->_iconImageInfo.scale, self->_iconImageInfo.continuousCornerRadius))
  {
    p_iconImageInfo->size.width = v10;
    p_iconImageInfo->size.height = v9;
    p_iconImageInfo->scale = v8;
    p_iconImageInfo->continuousCornerRadius = v7;

    [(SBHPageManagementCellView *)self setNeedsLayout];
  }
}

- (void)setListHighlighted:(BOOL)highlighted
{
  if (self->_listHighlighted != highlighted)
  {
    v11 = v3;
    v12 = v4;
    highlightedCopy = highlighted;
    self->_listHighlighted = highlighted;
    listHighlightView = [(SBHPageManagementCellView *)self listHighlightView];
    v7 = listHighlightView;
    if (highlightedCopy)
    {
      [listHighlightView setAlpha:0.5];
    }

    else
    {
      v8 = MEMORY[0x1E69DD250];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __48__SBHPageManagementCellView_setListHighlighted___block_invoke;
      v9[3] = &unk_1E8088C90;
      v10 = listHighlightView;
      [v8 animateWithDuration:2 delay:v9 options:0 animations:0.2 completion:0.0];
    }
  }
}

- (void)cleanUpListView
{
  listView = [(SBHPageManagementCellView *)self listView];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v4;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [listView setTransform:v5];
  [(SBHPageManagementCellView *)self setHasCleanedUpListView:1];
}

- (void)_togglePageHidden:(id)hidden
{
  listView = [(SBHPageManagementCellView *)self listView];
  model = [listView model];
  folder = [(SBHPageManagementCellView *)self folder];
  hasMultipleVisibleListsExcludingTrailingEmptyLists = [folder hasMultipleVisibleListsExcludingTrailingEmptyLists];
  v7 = ([model isHidden] ^ 1) & hasMultipleVisibleListsExcludingTrailingEmptyLists;
  [model setHidden:v7];
  if (v7 == 1)
  {
    mEMORY[0x1E69D3F90] = [MEMORY[0x1E69D3F90] sharedInstance];
    [mEMORY[0x1E69D3F90] emitEvent:55];
  }
}

- (void)iconListHiddenDidChange:(id)change
{
  isHidden = [change isHidden];
  listView = [(SBHPageManagementCellView *)self listView];
  v6 = 1.0;
  v7 = MEMORY[0x1E69DD250];
  v11 = 3221225472;
  v10 = MEMORY[0x1E69E9820];
  v12 = __53__SBHPageManagementCellView_iconListHiddenDidChange___block_invoke;
  v13 = &unk_1E8088CB8;
  if (isHidden)
  {
    v6 = 0.5;
  }

  v14 = listView;
  v15 = v6;
  v8 = listView;
  [v7 animateWithDuration:2 delay:&v10 options:0 animations:0.3 completion:0.0];
  v9 = [(SBHPageManagementCellView *)self toggleButton:v10];
  [v9 setSelected:isHidden ^ 1u];
}

- (void)folder:(id)folder listHiddenDidChange:(id)change
{
  folderCopy = folder;
  toggleButton = [(SBHPageManagementCellView *)self toggleButton];
  listView = [(SBHPageManagementCellView *)self listView];
  model = [listView model];
  isHidden = [model isHidden];
  hasMultipleVisibleListsExcludingTrailingEmptyLists = [folderCopy hasMultipleVisibleListsExcludingTrailingEmptyLists];

  [toggleButton setEnabled:(isHidden | hasMultipleVisibleListsExcludingTrailingEmptyLists) & 1];
}

@end
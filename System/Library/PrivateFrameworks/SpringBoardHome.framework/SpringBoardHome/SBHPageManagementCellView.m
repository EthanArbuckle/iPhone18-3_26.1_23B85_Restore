@interface SBHPageManagementCellView
- (SBHPageManagementCellView)initWithListView:(id)a3 folder:(id)a4 metrics:(SBHPageManagementCellMetrics *)a5 toggleButtonAllowed:(BOOL)a6;
- (void)_togglePageHidden:(id)a3;
- (void)cleanUpListView;
- (void)folder:(id)a3 listHiddenDidChange:(id)a4;
- (void)iconListHiddenDidChange:(id)a3;
- (void)layoutSubviews;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
- (void)setListHighlighted:(BOOL)a3;
- (void)setScalesListView:(BOOL)a3;
- (void)setToggleButtonAlpha:(double)a3;
@end

@implementation SBHPageManagementCellView

- (SBHPageManagementCellView)initWithListView:(id)a3 folder:(id)a4 metrics:(SBHPageManagementCellMetrics *)a5 toggleButtonAllowed:(BOOL)a6
{
  v6 = a6;
  v11 = a3;
  v12 = a4;
  v42.receiver = self;
  v42.super_class = SBHPageManagementCellView;
  v13 = [(SBHPageManagementCellView *)&v42 init];
  v14 = v13;
  if (v13)
  {
    v41 = v6;
    objc_storeStrong(&v13->_listView, a3);
    objc_storeStrong(&v14->_folder, a4);
    v14->_scalesListView = 1;
    v16 = *&a5->backgroundInsets.bottom;
    v15 = *&a5->listViewVerticalPositionAdjustment;
    v17 = *&a5->backgroundInsets.top;
    v14->_metrics.toggleButtonVerticalMargin = a5->toggleButtonVerticalMargin;
    *&v14->_metrics.backgroundInsets.bottom = v16;
    *&v14->_metrics.listViewVerticalPositionAdjustment = v15;
    *&v14->_metrics.backgroundInsets.top = v17;
    fullListViewSize = a5->fullListViewSize;
    scaledListViewSize = a5->scaledListViewSize;
    v20 = *&a5->foregroundInsets.bottom;
    *&v14->_metrics.foregroundInsets.top = *&a5->foregroundInsets.top;
    *&v14->_metrics.foregroundInsets.bottom = v20;
    v14->_metrics.fullListViewSize = fullListViewSize;
    v14->_metrics.scaledListViewSize = scaledListViewSize;
    v21 = [v11 model];
    v22 = [v21 isHidden];
    v23 = objc_alloc_init(MEMORY[0x1E69DD250]);
    listHighlightView = v14->_listHighlightView;
    v14->_listHighlightView = v23;

    v25 = v14->_listHighlightView;
    v26 = [MEMORY[0x1E69DC888] colorWithWhite:0.274509804 alpha:1.0];
    [(UIView *)v25 setBackgroundColor:v26];

    v27 = [(UIView *)v14->_listHighlightView layer];
    [v27 setCompositingFilter:*MEMORY[0x1E6979860]];

    [(UIView *)v14->_listHighlightView setAlpha:0.0];
    [(SBHPageManagementCellView *)v14 addSubview:v14->_listHighlightView];
    if (v11)
    {
      v28 = 0.5;
      if (!v22)
      {
        v28 = 1.0;
      }

      [v11 setAlpha:v28];
      v29 = objc_alloc(MEMORY[0x1E69DD250]);
      [v11 bounds];
      v30 = [v29 initWithFrame:{0.0, 0.0}];
      [(UIView *)v30 sbh_applyClearGlass];
      [(UIView *)v30 addSubview:v11];
      [(UIView *)v30 bounds];
      UIRectGetCenter();
      [v11 setCenter:?];
      listContainerView = v14->_listContainerView;
      v14->_listContainerView = v30;
      v32 = v30;

      [(SBHPageManagementCellView *)v14 insertSubview:v32 atIndex:0];
    }

    if (v41)
    {
      v33 = [SBHPageManagementCheckbox alloc];
      v34 = [(SBHPageManagementCheckbox *)v33 initWithFrame:*MEMORY[0x1E695F058] checkboxDiameter:*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), a5->toggleButtonDiameter];
      toggleButton = v14->_toggleButton;
      v14->_toggleButton = v34;

      [(SBHPageManagementCheckbox *)v14->_toggleButton setSelected:v22 ^ 1u animated:0];
      v36 = v14->_toggleButton;
      if (v22)
      {
        v37 = 1;
      }

      else
      {
        v37 = [v12 hasMultipleVisibleListsExcludingTrailingEmptyLists];
      }

      [(SBHPageManagementCheckbox *)v36 setEnabled:v37];
      -[SBHPageManagementCheckbox setHidden:](v14->_toggleButton, "setHidden:", [v12 isTrailingEmptyList:v21]);
      [(SBHPageManagementCheckbox *)v14->_toggleButton addTarget:v14 action:sel__togglePageHidden_ forControlEvents:0x2000];
      [(SBHPageManagementCellView *)v14 addSubview:v14->_toggleButton];
    }

    v38 = [(SBHPageManagementCellView *)v14 layer];
    [v38 setAllowsGroupBlending:0];

    [(SBHPageManagementCellView *)v14 setAutoresizesSubviews:0];
    [v12 addFolderObserver:v14];
    v39 = [v11 model];
    [v39 addListObserver:v14];

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
  v11 = [(SBHPageManagementCellView *)self scalesListView];
  if (v11)
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
    v16 = 0;
  }

  else
  {
    v16 = [(SBHPageManagementCellView *)self listView];
  }

  v33 = v4;
  memset(&v45, 0, sizeof(v45));
  CGAffineTransformMakeScale(&v45, v14 / width, v15 / height);
  v17 = CGRectGetWidth(remainder);
  v18 = [(SBHPageManagementCellView *)self listContainerView];
  v19 = [(SBHPageManagementCellView *)self listHighlightView];
  if (v11)
  {
    [v18 addSubview:v16];
    v20 = 1.0;
  }

  else
  {
    [(SBHPageManagementCellView *)self insertSubview:v16 belowSubview:v19];
    v20 = 0.0;
  }

  v21 = listViewVerticalPositionAdjustment + v15 * 0.5;
  [v16 setBounds:{0.0, 0.0, width, height, *&listViewVerticalPositionAdjustment}];
  [v16 setCenter:{v14 * 0.5 + (v17 - v14) * 0.5, v21}];
  v44 = v45;
  [v16 setTransform:&v44];
  v22 = remainder.size.width;
  v23 = remainder.size.height;
  UIRectGetCenter();
  v25 = v24;
  v27 = v26;
  [v18 setBounds:{0.0, 0.0, v22, v23}];
  [v18 setCenter:{v25, v27}];
  [v18 setAlpha:v20];
  [v19 setBounds:{0.0, 0.0, v22, v23}];
  [v19 setCenter:{v25, v27}];
  v28 = MEMORY[0x1E69DD250];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __43__SBHPageManagementCellView_layoutSubviews__block_invoke;
  v37[3] = &unk_1E808B778;
  v40 = v33;
  v41 = v6;
  v42 = v35;
  v43 = v34;
  v38 = v18;
  v39 = v19;
  v29 = v19;
  v30 = v18;
  [v28 performWithoutAnimation:v37];
  v31 = [(SBHPageManagementCellView *)self toggleButton];
  [v31 setBounds:{0.0, 0.0, toggleButtonDiameter, toggleButtonDiameter}];
  v50.origin.x = 0.0;
  v50.origin.y = 0.0;
  v50.size.width = v22;
  v50.size.height = v23;
  [v31 setCenter:{v25, toggleButtonDiameter * 0.5 + toggleButtonVerticalMargin + v27 + CGRectGetHeight(v50) * 0.5}];
}

uint64_t __43__SBHPageManagementCellView_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setContinuousCornerRadius:*(a1 + 72)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 72);

  return [v2 _setContinuousCornerRadius:v3];
}

- (void)setScalesListView:(BOOL)a3
{
  if (self->_scalesListView != a3)
  {
    self->_scalesListView = a3;
    [(SBHPageManagementCellView *)self setNeedsLayout];
  }
}

- (void)setToggleButtonAlpha:(double)a3
{
  v4 = [(SBHPageManagementCellView *)self toggleButton];
  [v4 setAlpha:a3];
}

- (void)setIconImageInfo:(SBIconImageInfo *)a3
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

- (void)setListHighlighted:(BOOL)a3
{
  if (self->_listHighlighted != a3)
  {
    v11 = v3;
    v12 = v4;
    v5 = a3;
    self->_listHighlighted = a3;
    v6 = [(SBHPageManagementCellView *)self listHighlightView];
    v7 = v6;
    if (v5)
    {
      [v6 setAlpha:0.5];
    }

    else
    {
      v8 = MEMORY[0x1E69DD250];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __48__SBHPageManagementCellView_setListHighlighted___block_invoke;
      v9[3] = &unk_1E8088C90;
      v10 = v6;
      [v8 animateWithDuration:2 delay:v9 options:0 animations:0.2 completion:0.0];
    }
  }
}

- (void)cleanUpListView
{
  v3 = [(SBHPageManagementCellView *)self listView];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v4;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v3 setTransform:v5];
  [(SBHPageManagementCellView *)self setHasCleanedUpListView:1];
}

- (void)_togglePageHidden:(id)a3
{
  v9 = [(SBHPageManagementCellView *)self listView];
  v4 = [v9 model];
  v5 = [(SBHPageManagementCellView *)self folder];
  v6 = [v5 hasMultipleVisibleListsExcludingTrailingEmptyLists];
  v7 = ([v4 isHidden] ^ 1) & v6;
  [v4 setHidden:v7];
  if (v7 == 1)
  {
    v8 = [MEMORY[0x1E69D3F90] sharedInstance];
    [v8 emitEvent:55];
  }
}

- (void)iconListHiddenDidChange:(id)a3
{
  v4 = [a3 isHidden];
  v5 = [(SBHPageManagementCellView *)self listView];
  v6 = 1.0;
  v7 = MEMORY[0x1E69DD250];
  v11 = 3221225472;
  v10 = MEMORY[0x1E69E9820];
  v12 = __53__SBHPageManagementCellView_iconListHiddenDidChange___block_invoke;
  v13 = &unk_1E8088CB8;
  if (v4)
  {
    v6 = 0.5;
  }

  v14 = v5;
  v15 = v6;
  v8 = v5;
  [v7 animateWithDuration:2 delay:&v10 options:0 animations:0.3 completion:0.0];
  v9 = [(SBHPageManagementCellView *)self toggleButton:v10];
  [v9 setSelected:v4 ^ 1u];
}

- (void)folder:(id)a3 listHiddenDidChange:(id)a4
{
  v5 = a3;
  v10 = [(SBHPageManagementCellView *)self toggleButton];
  v6 = [(SBHPageManagementCellView *)self listView];
  v7 = [v6 model];
  v8 = [v7 isHidden];
  v9 = [v5 hasMultipleVisibleListsExcludingTrailingEmptyLists];

  [v10 setEnabled:(v8 | v9) & 1];
}

@end
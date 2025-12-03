@interface UICollectionViewTableCell
- (BOOL)_beginReorderingForCell:(id)cell touch:(id)touch;
- (BOOL)_effectiveDefaultAllowsFocus;
- (BOOL)_isInteractiveMoveShadowInstalled;
- (BOOL)_isShowingIndex;
- (BOOL)_sectionContentInsetFollowsLayoutMargins;
- (BOOL)_separatorInsetIsRelativeToCellEdges;
- (BOOL)_shouldHaveFooterViewForSection:(int64_t)section;
- (BOOL)_shouldHaveHeaderViewForSection:(int64_t)section;
- (BOOL)allowsMultipleSelection;
- (BOOL)allowsMultipleSelectionDuringEditing;
- (BOOL)cellLayoutMarginsFollowReadableWidth;
- (BOOL)insetsContentViewsToSafeArea;
- (BOOL)isHighlighted;
- (BOOL)isInTableLayout;
- (BOOL)isSelected;
- (BOOL)overlapsSectionHeaderViews;
- (BOOL)selectionFollowsFocus;
- (BOOL)shouldIndentWhileEditing;
- (BOOL)showingDeleteConfirmation;
- (BOOL)showsReorderControl;
- (BOOL)usesVariableMargins;
- (CGRect)_calloutTargetRectForCell:(id)cell;
- (CGRect)_indexFrame;
- (UICollectionViewLayout)currentLayout;
- (UICollectionViewTableCell)initWithFrame:(CGRect)frame;
- (UICollectionViewTableLayout)_tableLayout;
- (UICollectionViewTableLayoutAttributes)_tableAttributes;
- (UIColor)_accessoryBaseColor;
- (UIColor)_multiselectCheckmarkColor;
- (UIEdgeInsets)_cellSafeAreaInsets;
- (UIEdgeInsets)_contentViewInset;
- (UIEdgeInsets)_rawSectionContentInset;
- (UIEdgeInsets)_rawSeparatorInset;
- (UIEdgeInsets)_sectionContentInset;
- (UIEdgeInsets)separatorInset;
- (UIImageView)imageView;
- (UILabel)detailTextLabel;
- (UILabel)textLabel;
- (UIScrollView)_scrollView;
- (UIView)accessoryView;
- (UIView)editingAccessoryView;
- (UIView)multipleSelectionBackgroundView;
- (double)_backgroundInset;
- (double)_bottomPadding;
- (double)_indexBarExtentFromEdge;
- (double)_rowSpacing;
- (double)_sectionCornerRadius;
- (double)_topPadding;
- (double)estimatedRowHeight;
- (double)estimatedSectionFooterHeight;
- (double)estimatedSectionHeaderHeight;
- (double)indentationWidth;
- (double)rowHeight;
- (double)sectionFooterHeight;
- (double)sectionHeaderHeight;
- (id)backgroundColor;
- (id)backgroundView;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (id)selectedBackgroundView;
- (int64_t)_numberOfRowsInSection:(int64_t)section;
- (int64_t)_numberOfSections;
- (int64_t)accessoryType;
- (int64_t)editingAccessoryType;
- (int64_t)editingStyle;
- (int64_t)focusStyle;
- (int64_t)indentationLevel;
- (int64_t)selectionStyle;
- (void)_accessoryButtonAction:(id)action;
- (void)_animateDeletionOfRowAtIndexPath:(id)path;
- (void)_animateDeletionOfRowWithCell:(id)cell;
- (void)_commonSetupTableCell;
- (void)_didInsertRowForTableCell:(id)cell;
- (void)_endReorderingForCell:(id)cell wasCancelled:(BOOL)cancelled animated:(BOOL)animated;
- (void)_insertInteractiveMoveShadowViews;
- (void)_layoutInteractiveMoveShadow;
- (void)_layoutTableViewCell;
- (void)_removeInteractiveMoveShadowViews;
- (void)_setupForEditing:(BOOL)editing atIndexPath:(id)path multiselect:(BOOL)multiselect editingStyle:(int64_t)style shouldIndentWhileEditing:(BOOL)whileEditing showsReorderControl:(BOOL)control accessoryType:(int64_t)type updateSeparators:(BOOL)self0;
- (void)_swipeToDeleteCell:(id)cell;
- (void)_trackAnimator:(id)animator;
- (void)_updateCollectionViewInteractiveMovementTargetPositionForTouch:(id)touch;
- (void)_updateEditing;
- (void)_updateInternalCellForTableLayout:(BOOL)layout animated:(BOOL)animated;
- (void)applyLayoutAttributes:(id)attributes;
- (void)awakeFromNib;
- (void)didTransitionFromLayout:(id)layout toLayout:(id)toLayout;
- (void)didTransitionToState:(unint64_t)state;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessoryType:(int64_t)type;
- (void)setAccessoryView:(id)view;
- (void)setBackgroundColor:(id)color;
- (void)setBackgroundView:(id)view;
- (void)setBorderShadowVisible:(BOOL)visible;
- (void)setEditing:(BOOL)editing;
- (void)setEditingAccessoryType:(int64_t)type;
- (void)setEditingAccessoryView:(id)view;
- (void)setFocusStyle:(int64_t)style;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIndentationLevel:(int64_t)level;
- (void)setIndentationWidth:(double)width;
- (void)setInteractiveMoveEffectsVisible:(BOOL)visible;
- (void)setMultipleSelectionBackgroundView:(id)view;
- (void)setSelected:(BOOL)selected;
- (void)setSelectedBackgroundView:(id)view;
- (void)setSelectionStyle:(int64_t)style;
- (void)setSeparatorInset:(UIEdgeInsets)inset;
- (void)setShouldIndentWhileEditing:(BOOL)editing;
- (void)setShowsReorderControl:(BOOL)control;
- (void)willTransitionFromLayout:(id)layout toLayout:(id)toLayout;
- (void)willTransitionToState:(unint64_t)state;
@end

@implementation UICollectionViewTableCell

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  WeakRetained = objc_loadWeakRetained(&self->super.super._collectionView);
  collectionViewLayout = [WeakRetained collectionViewLayout];
  if (collectionViewLayout)
  {
    v7 = collectionViewLayout;
    v8 = objc_loadWeakRetained(&self->super.super._collectionView);
    collectionViewLayout2 = [v8 collectionViewLayout];
    _estimatesSizes = [collectionViewLayout2 _estimatesSizes];

    if (_estimatesSizes)
    {
      v11 = objc_loadWeakRetained(&self->super.super._collectionView);
      collectionViewLayout3 = [v11 collectionViewLayout];
      _cellsShouldConferWithAutolayoutEngineForSizingInfo = [collectionViewLayout3 _cellsShouldConferWithAutolayoutEngineForSizingInfo];

      if (_cellsShouldConferWithAutolayoutEngineForSizingInfo)
      {
        tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
        v15 = _preferredAttributesFittingAttributesWithInnerView(self, attributesCopy, tableViewCell);

        goto LABEL_7;
      }
    }
  }

  else
  {
  }

  v15 = attributesCopy;
LABEL_7:

  return v15;
}

- (void)_commonSetupTableCell
{
  v10 = [(UITableViewCell *)[UITableViewCollectionCell alloc] initWithStyle:0 reuseIdentifier:&stru_1EFB14550];
  [(UIView *)v10 setAutoresizingMask:18];
  [(UITableViewCell *)v10 _setTableView:self];
  [(UICollectionViewTableCell *)self setTableViewCell:v10];
  contentView = [(UICollectionViewCell *)self contentView];
  contentView2 = [(UITableViewCell *)v10 contentView];
  v5 = [UIView alloc];
  [(UIView *)v10 bounds];
  v6 = [(UIView *)v5 initWithFrame:?];
  swipeableView = self->_swipeableView;
  self->_swipeableView = v6;

  [(UIView *)self->_swipeableView setAutoresizingMask:18];
  [(UIView *)self->_swipeableView setEdgesPreservingSuperviewLayoutMargins:10];
  [(UIView *)self->_swipeableView setEdgesInsettingLayoutMarginsFromSafeArea:[(UIView *)self->_swipeableView edgesInsettingLayoutMarginsFromSafeArea]& 0xA];
  [(UIView *)v10 addSubview:self->_swipeableView];
  [contentView2 removeFromSuperview];
  [(UIView *)self->_swipeableView addSubview:contentView2];
  subviews = [contentView subviews];
  v9 = [subviews count];

  if (v9)
  {
    [contentView2 bounds];
    [contentView setFrame:?];
    [contentView setAutoresizingMask:18];
    [contentView2 addSubview:contentView];
  }

  else
  {
    [contentView removeFromSuperview];
  }

  [(UIView *)self setEdgesPreservingSuperviewLayoutMargins:10];
  [(UIView *)self setEdgesInsettingLayoutMarginsFromSafeArea:[(UIView *)self edgesInsettingLayoutMarginsFromSafeArea]& 0xA];
  [(UIView *)self addSubview:v10];
  [(UICollectionViewCell *)self _setContentView:contentView2 addToHierarchy:0];
}

- (UICollectionViewTableCell)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = UICollectionViewTableCell;
  v3 = [(UICollectionViewCell *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(UICollectionViewTableCell *)v3 _commonSetupTableCell];
  return v3;
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = UICollectionViewTableCell;
  [&v3 awakeFromNib];
  [(UICollectionViewTableCell *)self _commonSetupTableCell];
}

- (UIEdgeInsets)_contentViewInset
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  currentStateMask = [tableViewCell currentStateMask];
  layoutManager = [tableViewCell layoutManager];
  [layoutManager contentEndingRectForCell:tableViewCell forNewEditingState:currentStateMask & 1];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v24.origin.x = v7;
  v24.origin.y = v9;
  v24.size.width = v11;
  v24.size.height = v13;
  MinY = CGRectGetMinY(v24);
  v25.origin.x = v7;
  v25.origin.y = v9;
  v25.size.width = v11;
  v25.size.height = v13;
  MinX = CGRectGetMinX(v25);
  [(UIView *)self bounds];
  Height = CGRectGetHeight(v26);
  v27.origin.x = v7;
  v27.origin.y = v9;
  v27.size.width = v11;
  v27.size.height = v13;
  v17 = Height - CGRectGetMaxY(v27);
  [(UIView *)self bounds];
  Width = CGRectGetWidth(v28);
  v29.origin.x = v7;
  v29.origin.y = v9;
  v29.size.width = v11;
  v29.size.height = v13;
  v19 = Width - CGRectGetMaxX(v29);

  v20 = MinY;
  v21 = MinX;
  v22 = v17;
  v23 = v19;
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

- (void)_layoutTableViewCell
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell setFrame:{v4, v6, v8, v10}];
}

- (void)_layoutInteractiveMoveShadow
{
  borderShadowVisible = [(UICollectionViewTableCell *)self borderShadowVisible];
  if (borderShadowVisible != [(UICollectionViewTableCell *)self _isInteractiveMoveShadowInstalled])
  {
    if (borderShadowVisible)
    {

      [(UICollectionViewTableCell *)self _insertInteractiveMoveShadowViews];
    }

    else
    {

      [(UICollectionViewTableCell *)self _removeInteractiveMoveShadowViews];
    }
  }
}

- (BOOL)_isInteractiveMoveShadowInstalled
{
  superview = [(UIView *)self->_borderShadowTopView superview];
  v3 = superview != 0;

  return v3;
}

- (void)_insertInteractiveMoveShadowViews
{
  borderShadowTopView = self->_borderShadowTopView;
  if (!borderShadowTopView)
  {
    v4 = [UIShadowView alloc];
    [(UIView *)self bounds];
    v5 = [(UIShadowView *)v4 initWithFrame:?];
    v6 = self->_borderShadowTopView;
    self->_borderShadowTopView = v5;

    v7 = self->_borderShadowTopView;
    v8 = +[UIShadowView topShadowImage];
    [(UIShadowView *)v7 setShadowImage:v8 forEdge:1 inside:0];

    borderShadowTopView = self->_borderShadowTopView;
  }

  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [(UIView *)self insertSubview:borderShadowTopView belowSubview:tableViewCell];

  borderShadowBottomView = self->_borderShadowBottomView;
  if (!borderShadowBottomView)
  {
    v11 = [UIShadowView alloc];
    [(UIView *)self bounds];
    v12 = [(UIShadowView *)v11 initWithFrame:?];
    v13 = self->_borderShadowBottomView;
    self->_borderShadowBottomView = v12;

    v14 = self->_borderShadowBottomView;
    v15 = +[UIShadowView bottomShadowImage];
    [(UIShadowView *)v14 setShadowImage:v15 forEdge:4 inside:0];

    borderShadowBottomView = self->_borderShadowBottomView;
  }

  tableViewCell2 = [(UICollectionViewTableCell *)self tableViewCell];
  [(UIView *)self insertSubview:borderShadowBottomView belowSubview:tableViewCell2];
}

- (void)_removeInteractiveMoveShadowViews
{
  [(UIView *)self->_borderShadowTopView removeFromSuperview];
  borderShadowTopView = self->_borderShadowTopView;
  self->_borderShadowTopView = 0;

  [(UIView *)self->_borderShadowBottomView removeFromSuperview];
  borderShadowBottomView = self->_borderShadowBottomView;
  self->_borderShadowBottomView = 0;
}

- (void)layoutSubviews
{
  [(UICollectionViewTableCell *)self _layoutTableViewCell];
  [(UICollectionViewTableCell *)self _layoutInteractiveMoveShadow];
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell layoutIfNeeded];

  v4.receiver = self;
  v4.super_class = UICollectionViewTableCell;
  [(UICollectionViewCell *)&v4 layoutSubviews];
}

- (void)setInteractiveMoveEffectsVisible:(BOOL)visible
{
  if (self->_interactiveMoveEffectsVisible != visible)
  {
    self->_interactiveMoveEffectsVisible = visible;
    if (visible)
    {
      _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
      _constants = [_tableLayout _constants];
      reorderingCellWantsShadows = [_constants reorderingCellWantsShadows];
    }

    else
    {
      reorderingCellWantsShadows = 0;
    }

    [(UICollectionViewTableCell *)self setBorderShadowVisible:reorderingCellWantsShadows];
    if (self->_interactiveMoveEffectsVisible)
    {
      v7 = objc_opt_new();
    }

    else
    {
      v7 = self->_selectedBackgroundViewToRestoreWhenInteractiveMoveEnds;
    }

    v10 = v7;
    interactiveMoveEffectsVisible = self->_interactiveMoveEffectsVisible;
    if (interactiveMoveEffectsVisible)
    {
      selectedBackgroundView = [(UICollectionViewTableCell *)self selectedBackgroundView];
    }

    else
    {
      selectedBackgroundView = 0;
    }

    objc_storeStrong(&self->_selectedBackgroundViewToRestoreWhenInteractiveMoveEnds, selectedBackgroundView);
    if (interactiveMoveEffectsVisible)
    {
    }

    [(UICollectionViewTableCell *)self setSelectedBackgroundView:v10];
  }
}

- (void)setBorderShadowVisible:(BOOL)visible
{
  if (self->_borderShadowVisible != visible)
  {
    self->_borderShadowVisible = visible;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  v13.receiver = self;
  v13.super_class = UICollectionViewTableCell;
  [(UICollectionReusableView *)&v13 applyLayoutAttributes:attributes];
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  _tableAttributes = [(UICollectionViewTableCell *)self _tableAttributes];
  currentLayout = [(UICollectionViewTableCell *)self currentLayout];

  if (!currentLayout)
  {
    _collectionView = [(UICollectionReusableView *)self _collectionView];
    collectionViewLayout = [_collectionView collectionViewLayout];
    [(UICollectionViewTableCell *)self setCurrentLayout:collectionViewLayout];

    [(UICollectionViewTableCell *)self _updateInternalCellForTableLayout:[(UICollectionViewTableCell *)self isInTableLayout] animated:0];
    [(UICollectionViewTableCell *)self updateCellForTableLayout:[(UICollectionViewTableCell *)self isInTableLayout]];
  }

  if (_tableAttributes)
  {
    v9 = objc_opt_class();
    [v9 applyValuesFromAttributes:_tableAttributes toAttributes:tableViewCell valueOptions:{objc_msgSend(objc_opt_class(), "automaticValueOptionsForRepresentedElementCategory:", objc_msgSend(_tableAttributes, "representedElementCategory"))}];
    _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
    v11 = _tableLayout;
    if (_tableLayout)
    {
      _constants = [_tableLayout _constants];
      [_constants defaultLayoutMarginsForCell:tableViewCell inTableView:v11];
      [tableViewCell setLayoutMargins:?];
    }
  }

  if (qword_1ED499C48 != -1)
  {
    dispatch_once(&qword_1ED499C48, &__block_literal_global_113);
  }

  if ((_MergedGlobals_9_2 & 1) == 0)
  {
    [(UICollectionViewTableCell *)self _updateEditing];
  }

  if ([(UICollectionViewTableCell *)self transitioningLayouts])
  {
    [(UICollectionViewTableCell *)self updateCellForTableLayout:[(UICollectionViewTableCell *)self isInTableLayout]];
    [(UIView *)self layoutIfNeeded];
  }
}

void __51__UICollectionViewTableCell_applyLayoutAttributes___block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  _MergedGlobals_9_2 = [v0 isEqualToString:@"com.apple.Music"];
}

- (void)_updateEditing
{
  _tableAttributes = [(UICollectionViewTableCell *)self _tableAttributes];
  if (![(UICollectionViewTableCell *)self isInTableLayout])
  {
    goto LABEL_7;
  }

  if (![(UICollectionViewTableCell *)self isEditing]&& [(UICollectionViewTableCell *)self allowsMultipleSelection])
  {
    allowsMultipleSelectionDuringEditing = 1;
    goto LABEL_8;
  }

  if ([(UICollectionViewTableCell *)self isEditing])
  {
    allowsMultipleSelectionDuringEditing = [(UICollectionViewTableCell *)self allowsMultipleSelectionDuringEditing];
  }

  else
  {
LABEL_7:
    allowsMultipleSelectionDuringEditing = 0;
  }

LABEL_8:
  isEditing = [(UICollectionViewTableCell *)self isEditing];
  indexPath = [_tableAttributes indexPath];
  LOBYTE(v6) = 1;
  -[UICollectionViewTableCell _setupForEditing:atIndexPath:multiselect:editingStyle:shouldIndentWhileEditing:showsReorderControl:accessoryType:updateSeparators:](self, "_setupForEditing:atIndexPath:multiselect:editingStyle:shouldIndentWhileEditing:showsReorderControl:accessoryType:updateSeparators:", isEditing, indexPath, allowsMultipleSelectionDuringEditing, [_tableAttributes editingStyle], objc_msgSend(_tableAttributes, "shouldIndentWhileEditing"), objc_msgSend(_tableAttributes, "showsReorderControl"), objc_msgSend(_tableAttributes, "accessoryType"), v6);
}

- (void)_updateInternalCellForTableLayout:(BOOL)layout animated:(BOOL)animated
{
  animatedCopy = animated;
  layoutCopy = layout;
  v33[3] = *MEMORY[0x1E69E9840];
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (layoutCopy)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __72__UICollectionViewTableCell__updateInternalCellForTableLayout_animated___block_invoke;
      aBlock[3] = &unk_1E70FE928;
      v8 = tableViewCell;
      v32 = v8;
      v9 = _Block_copy(aBlock);
      v33[0] = v9;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __72__UICollectionViewTableCell__updateInternalCellForTableLayout_animated___block_invoke_2;
      v29[3] = &unk_1E70FE928;
      v10 = v8;
      v30 = v10;
      v11 = _Block_copy(v29);
      v33[1] = v11;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __72__UICollectionViewTableCell__updateInternalCellForTableLayout_animated___block_invoke_3;
      v27[3] = &unk_1E70FE950;
      v12 = v10;
      v28 = v12;
      v13 = _Block_copy(v27);
      v33[2] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];

      v15 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:5 valueOptions:0];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __72__UICollectionViewTableCell__updateInternalCellForTableLayout_animated___block_invoke_4;
      v22[3] = &unk_1E70F6B40;
      v23 = v12;
      selfCopy = self;
      v25 = v14;
      v16 = v15;
      v26 = v16;
      v17 = v14;
      [UIView performWithoutAnimation:v22];
      if (animatedCopy)
      {
        v18 = 0.25;
      }

      else
      {
        v18 = 0.0;
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __72__UICollectionViewTableCell__updateInternalCellForTableLayout_animated___block_invoke_5;
      v20[3] = &unk_1E70F3590;
      v21 = v16;
      v19 = v16;
      [UIView animateWithDuration:v20 animations:v18];
    }

    else
    {
      [tableViewCell setAccessoryType:0];
      [tableViewCell _setSeparatorHidden:1];
      [tableViewCell _setAccessoryViewsHidden:1];
    }
  }
}

id __72__UICollectionViewTableCell__updateInternalCellForTableLayout_animated___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) editingData:0];
  v2 = [v1 editControl:0];

  return v2;
}

void __72__UICollectionViewTableCell__updateInternalCellForTableLayout_animated___block_invoke_4(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setAccessoryType:*(*(a1 + 40) + 680)];
  [*(a1 + 32) _setSeparatorHidden:0];
  [*(a1 + 32) _setAccessoryViewsHidden:0];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 48);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = (*(*(*(&v12 + 1) + 8 * v6) + 16))(*(*(&v12 + 1) + 8 * v6));
        v8 = v7;
        if (v7)
        {
          v9 = *(a1 + 56);
          v10 = MEMORY[0x1E696AD98];
          [v7 alpha];
          v11 = [v10 numberWithDouble:?];
          [v9 setObject:v11 forKey:v8];
        }

        [v8 setAlpha:{0.0, v12}];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

void __72__UICollectionViewTableCell__updateInternalCellForTableLayout_animated___block_invoke_5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [*(a1 + 32) objectForKey:{v7, v11}];
        [v8 doubleValue];
        v10 = v9;

        [v7 setAlpha:v10];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)willTransitionFromLayout:(id)layout toLayout:(id)toLayout
{
  layoutCopy = layout;
  toLayoutCopy = toLayout;
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass() & 1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v9 != (isKindOfClass & 1))
  {
    v11 = isKindOfClass;
    [tableViewCell removeEditingData];
    [(UICollectionViewTableCell *)self setTransitioningLayouts:1];
    [(UICollectionViewTableCell *)self setCurrentLayout:toLayoutCopy];
    [(UICollectionViewTableCell *)self _updateEditing];
    if (v11)
    {
      [tableViewCell _setAccessoryViewsHidden:1];
    }

    else
    {
      [(UICollectionViewTableCell *)self _updateInternalCellForTableLayout:0 animated:0];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __63__UICollectionViewTableCell_willTransitionFromLayout_toLayout___block_invoke;
      v12[3] = &unk_1E70F3590;
      v13 = layoutCopy;
      [UIView performWithoutAnimation:v12];
    }
  }
}

- (void)didTransitionFromLayout:(id)layout toLayout:(id)toLayout
{
  if ([(UICollectionViewTableCell *)self transitioningLayouts:layout])
  {
    if ([(UICollectionViewTableCell *)self isInTableLayout])
    {
      [(UICollectionViewTableCell *)self _updateInternalCellForTableLayout:1 animated:1];
    }

    [(UICollectionViewTableCell *)self setTransitioningLayouts:0];
  }
}

- (void)_trackAnimator:(id)animator
{
  animatorCopy = animator;
  trackedAnimators = self->_trackedAnimators;
  if (trackedAnimators)
  {
    [(NSMutableSet *)trackedAnimators addObject:animatorCopy];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFA8] setWithObject:animatorCopy];
    v7 = self->_trackedAnimators;
    self->_trackedAnimators = v6;
  }

  objc_initWeak(&location, self);
  objc_initWeak(&from, animatorCopy);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__UICollectionViewTableCell__trackAnimator___block_invoke;
  v8[3] = &unk_1E70F5A00;
  objc_copyWeak(&v9, &location);
  objc_copyWeak(&v10, &from);
  [animatorCopy addCompletion:v8];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __44__UICollectionViewTableCell__trackAnimator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2)
  {
    [WeakRetained[86] removeObject:v2];
  }
}

- (void)prepareForReuse
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableSet *)self->_trackedAnimators copy];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        [v10 stopAnimation:0];
        if ([v10 state] == 5)
        {
          ++v7;
        }

        else
        {
          [v10 finishAnimationAtPosition:0];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v12 = [(NSMutableSet *)self->_trackedAnimators count];
  if (has_internal_diagnostics)
  {
    if (v12 != v7)
    {
      v24 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "Animations pending while being reused. This is a UIKit issue.", buf, 2u);
      }
    }
  }

  else if (v12 != v7)
  {
    v25 = *(__UILogGetCategoryCachedImpl("Assert", &prepareForReuse___s_category) + 8);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "Animations pending while being reused. This is a UIKit issue.", buf, 2u);
    }
  }

  swipeableView = [(UICollectionViewTableCell *)self swipeableView];
  superview = [swipeableView superview];
  [superview bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  swipeableView2 = [(UICollectionViewTableCell *)self swipeableView];
  [swipeableView2 setFrame:{v16, v18, v20, v22}];

  [(UICollectionViewTableCell *)self _setOffsetForRevealingDeleteConfirmationButton:0.0];
  [(UITableViewCell *)self->_tableViewCell prepareForReuse];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __44__UICollectionViewTableCell_prepareForReuse__block_invoke;
  v28[3] = &unk_1E70F3590;
  v28[4] = self;
  [UIView performWithoutAnimation:v28];
  [(UICollectionViewTableCell *)self setCurrentLayout:0];
  v27.receiver = self;
  v27.super_class = UICollectionViewTableCell;
  [(UICollectionViewCell *)&v27 prepareForReuse];
}

- (BOOL)isInTableLayout
{
  currentLayout = [(UICollectionViewTableCell *)self currentLayout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    [(UICollectionViewTableCell *)self _updateEditing];
  }
}

- (void)_setupForEditing:(BOOL)editing atIndexPath:(id)path multiselect:(BOOL)multiselect editingStyle:(int64_t)style shouldIndentWhileEditing:(BOOL)whileEditing showsReorderControl:(BOOL)control accessoryType:(int64_t)type updateSeparators:(BOOL)self0
{
  controlCopy = control;
  whileEditingCopy = whileEditing;
  multiselectCopy = multiselect;
  editingCopy = editing;
  v16 = [(UICollectionViewTableCell *)self tableViewCell:editing];
  if (editingCopy)
  {
    [v16 _setShowsReorderControl:controlCopy];
    [v16 _setEditingStyle:style];
    [v16 _setShouldIndentWhileEditing:whileEditingCopy];
    [v16 _setEditing:1 animated:1 cellOrAncestorViewForAnimatedLayout:self];
  }

  else
  {
    [v16 _setShowsReorderControl:0];
    [v16 _setEditing:0 animated:1 cellOrAncestorViewForAnimatedLayout:self];
    [v16 _setEditingStyle:0];
    [v16 _setShouldIndentWhileEditing:0];
    [v16 setWasSwiped:0];
    [v16 _setShowingDeleteConfirmation:0];
  }

  [v16 _setMultiselecting:multiselectCopy];
}

- (CGRect)_calloutTargetRectForCell:(id)cell
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_swipeToDeleteCell:(id)cell
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  [_tableLayout _swipeToDeleteCell:self];
}

- (BOOL)_beginReorderingForCell:(id)cell touch:(id)touch
{
  v28 = *MEMORY[0x1E69E9840];
  touchCopy = touch;
  _collectionView = [(UICollectionReusableView *)self _collectionView];
  _layoutAttributes = [(UICollectionReusableView *)self _layoutAttributes];
  indexPath = [_layoutAttributes indexPath];
  v9 = [_collectionView beginInteractiveMovementForItemAtIndexPath:indexPath];

  if (v9)
  {
    _layoutAttributes2 = [(UICollectionReusableView *)self _layoutAttributes];
    [_layoutAttributes2 center];
    self->_reorderingCenterX = v11;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = touchCopy;
    gestureRecognizers = [touchCopy gestureRecognizers];
    v13 = [gestureRecognizers countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(gestureRecognizers);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          if (_UISheetInteractionGestureIsForInteractiveDismiss(v17))
          {
            v18 = UIApp;
            v26 = v17;
            v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
            [v18 _cancelGestureRecognizers:v19];
          }
        }

        v14 = [gestureRecognizers countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v14);
    }

    [(UICollectionViewTableCell *)self setInteractiveMoveEffectsVisible:1];
    touchCopy = v21;
    [(UICollectionViewTableCell *)self _updateCollectionViewInteractiveMovementTargetPositionForTouch:v21];
  }

  return v9;
}

- (void)_updateCollectionViewInteractiveMovementTargetPositionForTouch:(id)touch
{
  touchCopy = touch;
  if (touchCopy)
  {
    _collectionView = [(UICollectionReusableView *)self _collectionView];
    [touchCopy locationInView:_collectionView];
  }

  else
  {
    _collectionView = [(UICollectionReusableView *)self _layoutAttributes];
    [_collectionView center];
  }

  v6 = v5;

  _collectionView2 = [(UICollectionReusableView *)self _collectionView];
  [_collectionView2 updateInteractiveMovementTargetPosition:{self->_reorderingCenterX, v6}];
}

- (void)_endReorderingForCell:(id)cell wasCancelled:(BOOL)cancelled animated:(BOOL)animated
{
  cancelledCopy = cancelled;
  [(UICollectionViewTableCell *)self setInteractiveMoveEffectsVisible:0, cancelled, animated];
  _collectionView = [(UICollectionReusableView *)self _collectionView];
  v8 = _collectionView;
  if (cancelledCopy)
  {
    [_collectionView cancelInteractiveMovement];
  }

  else
  {
    [_collectionView endInteractiveMovement];
  }

  self->_reorderingCenterX = 0.0;
}

- (void)_didInsertRowForTableCell:(id)cell
{
  _collectionView = [(UICollectionReusableView *)self _collectionView];
  delegate = [_collectionView delegate];
  if (objc_opt_respondsToSelector())
  {
    _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
    _layoutAttributes = [(UICollectionReusableView *)self _layoutAttributes];
    indexPath = [_layoutAttributes indexPath];
    [delegate collectionView:_collectionView tableLayout:_tableLayout commitEditingStyle:2 forRowAtIndexPath:indexPath];
  }
}

- (void)_animateDeletionOfRowAtIndexPath:(id)path
{
  pathCopy = path;
  _collectionView = [(UICollectionReusableView *)self _collectionView];
  delegate = [_collectionView delegate];
  if (objc_opt_respondsToSelector())
  {
    _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
    [delegate collectionView:_collectionView tableLayout:_tableLayout commitEditingStyle:1 forRowAtIndexPath:pathCopy];
  }
}

- (void)_animateDeletionOfRowWithCell:(id)cell
{
  _layoutAttributes = [(UICollectionReusableView *)self _layoutAttributes];
  indexPath = [_layoutAttributes indexPath];
  [(UICollectionViewTableCell *)self _animateDeletionOfRowAtIndexPath:indexPath];
}

- (void)_accessoryButtonAction:(id)action
{
  _layoutAttributes = [(UICollectionReusableView *)self _layoutAttributes];
  indexPath = [_layoutAttributes indexPath];

  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  [_tableLayout _cellAccessoryButtonTappedAtIndexPath:indexPath];
}

- (BOOL)selectionFollowsFocus
{
  _collectionView = [(UICollectionReusableView *)self _collectionView];
  selectionFollowsFocus = [_collectionView selectionFollowsFocus];

  return selectionFollowsFocus;
}

- (BOOL)_effectiveDefaultAllowsFocus
{
  _collectionView = [(UICollectionReusableView *)self _collectionView];
  _effectiveDefaultAllowsFocus = [_collectionView _effectiveDefaultAllowsFocus];

  return _effectiveDefaultAllowsFocus;
}

- (UICollectionViewTableLayout)_tableLayout
{
  currentLayout = [(UICollectionViewTableCell *)self currentLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = currentLayout;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UICollectionViewTableLayoutAttributes)_tableAttributes
{
  _layoutAttributes = [(UICollectionReusableView *)self _layoutAttributes];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = _layoutAttributes;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)_rowSpacing
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    [_tableLayout2 _rowSpacing];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (UIEdgeInsets)_rawSeparatorInset
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    [_tableLayout2 _rawSeparatorInset];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
    v10 = 0.0;
    v6 = 0.0;
    v8 = 0.0;
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (UIScrollView)_scrollView
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    _scrollView = [_tableLayout2 _scrollView];
  }

  else
  {
    _scrollView = 0;
  }

  return _scrollView;
}

- (int64_t)_numberOfSections
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    _numberOfSections = [_tableLayout2 _numberOfSections];
  }

  else
  {
    _numberOfSections = 0;
  }

  return _numberOfSections;
}

- (BOOL)allowsMultipleSelection
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    allowsMultipleSelection = [_tableLayout2 allowsMultipleSelection];
  }

  else
  {
    allowsMultipleSelection = 0;
  }

  return allowsMultipleSelection;
}

- (BOOL)allowsMultipleSelectionDuringEditing
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    allowsMultipleSelectionDuringEditing = [_tableLayout2 allowsMultipleSelectionDuringEditing];
  }

  else
  {
    allowsMultipleSelectionDuringEditing = 0;
  }

  return allowsMultipleSelectionDuringEditing;
}

- (double)rowHeight
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    [_tableLayout2 rowHeight];
    v6 = v5;
  }

  else
  {
    v6 = 44.0;
  }

  return v6;
}

- (double)sectionHeaderHeight
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    [_tableLayout2 sectionHeaderHeight];
    v6 = v5;
  }

  else
  {
    v6 = 44.0;
  }

  return v6;
}

- (double)sectionFooterHeight
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    [_tableLayout2 sectionFooterHeight];
    v6 = v5;
  }

  else
  {
    v6 = 44.0;
  }

  return v6;
}

- (double)estimatedRowHeight
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    [_tableLayout2 estimatedRowHeight];
    v6 = v5;
  }

  else
  {
    v6 = 44.0;
  }

  return v6;
}

- (double)estimatedSectionHeaderHeight
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    [_tableLayout2 estimatedSectionHeaderHeight];
    v6 = v5;
  }

  else
  {
    v6 = 44.0;
  }

  return v6;
}

- (double)estimatedSectionFooterHeight
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    [_tableLayout2 estimatedSectionFooterHeight];
    v6 = v5;
  }

  else
  {
    v6 = 44.0;
  }

  return v6;
}

- (BOOL)_separatorInsetIsRelativeToCellEdges
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    _separatorInsetIsRelativeToCellEdges = [_tableLayout2 _separatorInsetIsRelativeToCellEdges];
  }

  else
  {
    _separatorInsetIsRelativeToCellEdges = 0;
  }

  return _separatorInsetIsRelativeToCellEdges;
}

- (BOOL)usesVariableMargins
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    usesVariableMargins = [_tableLayout2 usesVariableMargins];
  }

  else
  {
    usesVariableMargins = 0;
  }

  return usesVariableMargins;
}

- (BOOL)overlapsSectionHeaderViews
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    overlapsSectionHeaderViews = [_tableLayout2 overlapsSectionHeaderViews];
  }

  else
  {
    overlapsSectionHeaderViews = 0;
  }

  return overlapsSectionHeaderViews;
}

- (double)_backgroundInset
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    [_tableLayout2 _backgroundInset];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (UIEdgeInsets)_cellSafeAreaInsets
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    [_tableLayout2 _cellSafeAreaInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
    v10 = 0.0;
    v6 = 0.0;
    v8 = 0.0;
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (BOOL)cellLayoutMarginsFollowReadableWidth
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    cellLayoutMarginsFollowReadableWidth = [_tableLayout2 cellLayoutMarginsFollowReadableWidth];
  }

  else
  {
    cellLayoutMarginsFollowReadableWidth = 0;
  }

  return cellLayoutMarginsFollowReadableWidth;
}

- (BOOL)insetsContentViewsToSafeArea
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    insetsContentViewsToSafeArea = [_tableLayout2 insetsContentViewsToSafeArea];
  }

  else
  {
    insetsContentViewsToSafeArea = 1;
  }

  return insetsContentViewsToSafeArea;
}

- (double)_topPadding
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    [_tableLayout2 _topPadding];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)_bottomPadding
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    [_tableLayout2 _bottomPadding];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (BOOL)_isShowingIndex
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    _isShowingIndex = [_tableLayout2 _isShowingIndex];
  }

  else
  {
    _isShowingIndex = 0;
  }

  return _isShowingIndex;
}

- (CGRect)_indexFrame
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    [_tableLayout2 _indexFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (double)_indexBarExtentFromEdge
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    [_tableLayout2 _indexBarExtentFromEdge];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (UIEdgeInsets)_sectionContentInset
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    [_tableLayout2 _sectionContentInset];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
    v10 = 0.0;
    v6 = 0.0;
    v8 = 0.0;
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (UIEdgeInsets)_rawSectionContentInset
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    [_tableLayout2 _rawSectionContentInset];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
    v10 = 0.0;
    v6 = 0.0;
    v8 = 0.0;
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (double)_sectionCornerRadius
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    [_tableLayout2 _sectionCornerRadius];
    v6 = v5;
  }

  else
  {
    v6 = -1.0;
  }

  return v6;
}

- (BOOL)_sectionContentInsetFollowsLayoutMargins
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    _sectionContentInsetFollowsLayoutMargins = [_tableLayout2 _sectionContentInsetFollowsLayoutMargins];
  }

  else
  {
    _sectionContentInsetFollowsLayoutMargins = 0;
  }

  return _sectionContentInsetFollowsLayoutMargins;
}

- (UIColor)_accessoryBaseColor
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    _accessoryBaseColor = [_tableLayout2 _accessoryBaseColor];
  }

  else
  {
    _accessoryBaseColor = 0;
  }

  return _accessoryBaseColor;
}

- (UIColor)_multiselectCheckmarkColor
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  if (_tableLayout)
  {
    _tableLayout2 = [(UICollectionViewTableCell *)self _tableLayout];
    _multiselectCheckmarkColor = [_tableLayout2 _multiselectCheckmarkColor];
  }

  else
  {
    _multiselectCheckmarkColor = 0;
  }

  return _multiselectCheckmarkColor;
}

- (int64_t)_numberOfRowsInSection:(int64_t)section
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  v5 = [_tableLayout _numberOfRowsInSection:section];

  return v5;
}

- (BOOL)_shouldHaveHeaderViewForSection:(int64_t)section
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  LOBYTE(section) = [_tableLayout _shouldHaveHeaderViewForSection:section];

  return section;
}

- (BOOL)_shouldHaveFooterViewForSection:(int64_t)section
{
  _tableLayout = [(UICollectionViewTableCell *)self _tableLayout];
  LOBYTE(section) = [_tableLayout _shouldHaveFooterViewForSection:section];

  return section;
}

- (UIImageView)imageView
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  imageView = [tableViewCell imageView];

  return imageView;
}

- (UILabel)textLabel
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  textLabel = [tableViewCell textLabel];

  return textLabel;
}

- (UILabel)detailTextLabel
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  detailTextLabel = [tableViewCell detailTextLabel];

  return detailTextLabel;
}

- (id)backgroundView
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  backgroundView = [tableViewCell backgroundView];

  return backgroundView;
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell setBackgroundView:viewCopy];
}

- (id)selectedBackgroundView
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  selectedBackgroundView = [tableViewCell selectedBackgroundView];

  return selectedBackgroundView;
}

- (void)setSelectedBackgroundView:(id)view
{
  viewCopy = view;
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell setSelectedBackgroundView:viewCopy];
}

- (UIView)multipleSelectionBackgroundView
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  multipleSelectionBackgroundView = [tableViewCell multipleSelectionBackgroundView];

  return multipleSelectionBackgroundView;
}

- (void)setMultipleSelectionBackgroundView:(id)view
{
  viewCopy = view;
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell setMultipleSelectionBackgroundView:viewCopy];
}

- (id)backgroundColor
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  backgroundColor = [tableViewCell backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell setBackgroundColor:colorCopy];
}

- (int64_t)selectionStyle
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  selectionStyle = [tableViewCell selectionStyle];

  return selectionStyle;
}

- (void)setSelectionStyle:(int64_t)style
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell setSelectionStyle:style];
}

- (BOOL)isSelected
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  isSelected = [tableViewCell isSelected];

  return isSelected;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell setSelected:selectedCopy animated:{+[UIView _isInAnimationBlockWithAnimationsEnabled](UIView, "_isInAnimationBlockWithAnimationsEnabled")}];
}

- (BOOL)isHighlighted
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  isHighlighted = [tableViewCell isHighlighted];

  return isHighlighted;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell setHighlighted:highlightedCopy animated:{+[UIView _isInAnimationBlockWithAnimationsEnabled](UIView, "_isInAnimationBlockWithAnimationsEnabled")}];
}

- (int64_t)editingStyle
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  editingStyle = [tableViewCell editingStyle];

  return editingStyle;
}

- (BOOL)showsReorderControl
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  showsReorderControl = [tableViewCell showsReorderControl];

  return showsReorderControl;
}

- (void)setShowsReorderControl:(BOOL)control
{
  controlCopy = control;
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell setShowsReorderControl:controlCopy];
}

- (BOOL)shouldIndentWhileEditing
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  shouldIndentWhileEditing = [tableViewCell shouldIndentWhileEditing];

  return shouldIndentWhileEditing;
}

- (void)setShouldIndentWhileEditing:(BOOL)editing
{
  editingCopy = editing;
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell setShouldIndentWhileEditing:editingCopy];
}

- (int64_t)accessoryType
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  accessoryType = [tableViewCell accessoryType];

  return accessoryType;
}

- (void)setAccessoryType:(int64_t)type
{
  self->_accessoryType = type;
  if ([(UICollectionViewTableCell *)self isInTableLayout])
  {
    tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
    [tableViewCell setAccessoryType:type];
  }
}

- (UIView)accessoryView
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  accessoryView = [tableViewCell accessoryView];

  return accessoryView;
}

- (void)setAccessoryView:(id)view
{
  viewCopy = view;
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell setAccessoryView:viewCopy];
}

- (int64_t)editingAccessoryType
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  editingAccessoryType = [tableViewCell editingAccessoryType];

  return editingAccessoryType;
}

- (void)setEditingAccessoryType:(int64_t)type
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell setEditingAccessoryType:type];
}

- (UIView)editingAccessoryView
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  editingAccessoryView = [tableViewCell editingAccessoryView];

  return editingAccessoryView;
}

- (void)setEditingAccessoryView:(id)view
{
  viewCopy = view;
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell setEditingAccessoryView:viewCopy];
}

- (int64_t)indentationLevel
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  indentationLevel = [tableViewCell indentationLevel];

  return indentationLevel;
}

- (void)setIndentationLevel:(int64_t)level
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell setIndentationLevel:level];
}

- (double)indentationWidth
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell indentationWidth];
  v4 = v3;

  return v4;
}

- (void)setIndentationWidth:(double)width
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell setIndentationWidth:width];
}

- (UIEdgeInsets)separatorInset
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell separatorInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)setSeparatorInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell setSeparatorInset:{top, left, bottom, right}];
}

- (BOOL)showingDeleteConfirmation
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  showingDeleteConfirmation = [tableViewCell showingDeleteConfirmation];

  return showingDeleteConfirmation;
}

- (int64_t)focusStyle
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  focusStyle = [tableViewCell focusStyle];

  return focusStyle;
}

- (void)setFocusStyle:(int64_t)style
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell setFocusStyle:style];
}

- (void)willTransitionToState:(unint64_t)state
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell willTransitionToState:state];
}

- (void)didTransitionToState:(unint64_t)state
{
  tableViewCell = [(UICollectionViewTableCell *)self tableViewCell];
  [tableViewCell didTransitionToState:state];
}

- (UICollectionViewLayout)currentLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_currentLayout);

  return WeakRetained;
}

@end
@interface UICollectionViewTableCell
- (BOOL)_beginReorderingForCell:(id)a3 touch:(id)a4;
- (BOOL)_effectiveDefaultAllowsFocus;
- (BOOL)_isInteractiveMoveShadowInstalled;
- (BOOL)_isShowingIndex;
- (BOOL)_sectionContentInsetFollowsLayoutMargins;
- (BOOL)_separatorInsetIsRelativeToCellEdges;
- (BOOL)_shouldHaveFooterViewForSection:(int64_t)a3;
- (BOOL)_shouldHaveHeaderViewForSection:(int64_t)a3;
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
- (CGRect)_calloutTargetRectForCell:(id)a3;
- (CGRect)_indexFrame;
- (UICollectionViewLayout)currentLayout;
- (UICollectionViewTableCell)initWithFrame:(CGRect)a3;
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
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (id)selectedBackgroundView;
- (int64_t)_numberOfRowsInSection:(int64_t)a3;
- (int64_t)_numberOfSections;
- (int64_t)accessoryType;
- (int64_t)editingAccessoryType;
- (int64_t)editingStyle;
- (int64_t)focusStyle;
- (int64_t)indentationLevel;
- (int64_t)selectionStyle;
- (void)_accessoryButtonAction:(id)a3;
- (void)_animateDeletionOfRowAtIndexPath:(id)a3;
- (void)_animateDeletionOfRowWithCell:(id)a3;
- (void)_commonSetupTableCell;
- (void)_didInsertRowForTableCell:(id)a3;
- (void)_endReorderingForCell:(id)a3 wasCancelled:(BOOL)a4 animated:(BOOL)a5;
- (void)_insertInteractiveMoveShadowViews;
- (void)_layoutInteractiveMoveShadow;
- (void)_layoutTableViewCell;
- (void)_removeInteractiveMoveShadowViews;
- (void)_setupForEditing:(BOOL)a3 atIndexPath:(id)a4 multiselect:(BOOL)a5 editingStyle:(int64_t)a6 shouldIndentWhileEditing:(BOOL)a7 showsReorderControl:(BOOL)a8 accessoryType:(int64_t)a9 updateSeparators:(BOOL)a10;
- (void)_swipeToDeleteCell:(id)a3;
- (void)_trackAnimator:(id)a3;
- (void)_updateCollectionViewInteractiveMovementTargetPositionForTouch:(id)a3;
- (void)_updateEditing;
- (void)_updateInternalCellForTableLayout:(BOOL)a3 animated:(BOOL)a4;
- (void)applyLayoutAttributes:(id)a3;
- (void)awakeFromNib;
- (void)didTransitionFromLayout:(id)a3 toLayout:(id)a4;
- (void)didTransitionToState:(unint64_t)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessoryType:(int64_t)a3;
- (void)setAccessoryView:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setBackgroundView:(id)a3;
- (void)setBorderShadowVisible:(BOOL)a3;
- (void)setEditing:(BOOL)a3;
- (void)setEditingAccessoryType:(int64_t)a3;
- (void)setEditingAccessoryView:(id)a3;
- (void)setFocusStyle:(int64_t)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setIndentationLevel:(int64_t)a3;
- (void)setIndentationWidth:(double)a3;
- (void)setInteractiveMoveEffectsVisible:(BOOL)a3;
- (void)setMultipleSelectionBackgroundView:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSelectedBackgroundView:(id)a3;
- (void)setSelectionStyle:(int64_t)a3;
- (void)setSeparatorInset:(UIEdgeInsets)a3;
- (void)setShouldIndentWhileEditing:(BOOL)a3;
- (void)setShowsReorderControl:(BOOL)a3;
- (void)willTransitionFromLayout:(id)a3 toLayout:(id)a4;
- (void)willTransitionToState:(unint64_t)a3;
@end

@implementation UICollectionViewTableCell

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->super.super._collectionView);
  v6 = [WeakRetained collectionViewLayout];
  if (v6)
  {
    v7 = v6;
    v8 = objc_loadWeakRetained(&self->super.super._collectionView);
    v9 = [v8 collectionViewLayout];
    v10 = [v9 _estimatesSizes];

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->super.super._collectionView);
      v12 = [v11 collectionViewLayout];
      v13 = [v12 _cellsShouldConferWithAutolayoutEngineForSizingInfo];

      if (v13)
      {
        v14 = [(UICollectionViewTableCell *)self tableViewCell];
        v15 = _preferredAttributesFittingAttributesWithInnerView(self, v4, v14);

        goto LABEL_7;
      }
    }
  }

  else
  {
  }

  v15 = v4;
LABEL_7:

  return v15;
}

- (void)_commonSetupTableCell
{
  v10 = [(UITableViewCell *)[UITableViewCollectionCell alloc] initWithStyle:0 reuseIdentifier:&stru_1EFB14550];
  [(UIView *)v10 setAutoresizingMask:18];
  [(UITableViewCell *)v10 _setTableView:self];
  [(UICollectionViewTableCell *)self setTableViewCell:v10];
  v3 = [(UICollectionViewCell *)self contentView];
  v4 = [(UITableViewCell *)v10 contentView];
  v5 = [UIView alloc];
  [(UIView *)v10 bounds];
  v6 = [(UIView *)v5 initWithFrame:?];
  swipeableView = self->_swipeableView;
  self->_swipeableView = v6;

  [(UIView *)self->_swipeableView setAutoresizingMask:18];
  [(UIView *)self->_swipeableView setEdgesPreservingSuperviewLayoutMargins:10];
  [(UIView *)self->_swipeableView setEdgesInsettingLayoutMarginsFromSafeArea:[(UIView *)self->_swipeableView edgesInsettingLayoutMarginsFromSafeArea]& 0xA];
  [(UIView *)v10 addSubview:self->_swipeableView];
  [v4 removeFromSuperview];
  [(UIView *)self->_swipeableView addSubview:v4];
  v8 = [v3 subviews];
  v9 = [v8 count];

  if (v9)
  {
    [v4 bounds];
    [v3 setFrame:?];
    [v3 setAutoresizingMask:18];
    [v4 addSubview:v3];
  }

  else
  {
    [v3 removeFromSuperview];
  }

  [(UIView *)self setEdgesPreservingSuperviewLayoutMargins:10];
  [(UIView *)self setEdgesInsettingLayoutMarginsFromSafeArea:[(UIView *)self edgesInsettingLayoutMarginsFromSafeArea]& 0xA];
  [(UIView *)self addSubview:v10];
  [(UICollectionViewCell *)self _setContentView:v4 addToHierarchy:0];
}

- (UICollectionViewTableCell)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = UICollectionViewTableCell;
  v3 = [(UICollectionViewCell *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(UICollectionViewTableCell *)self tableViewCell];
  v4 = [v3 currentStateMask];
  v5 = [v3 layoutManager];
  [v5 contentEndingRectForCell:v3 forNewEditingState:v4 & 1];
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
  v11 = [(UICollectionViewTableCell *)self tableViewCell];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)_layoutInteractiveMoveShadow
{
  v3 = [(UICollectionViewTableCell *)self borderShadowVisible];
  if (v3 != [(UICollectionViewTableCell *)self _isInteractiveMoveShadowInstalled])
  {
    if (v3)
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
  v2 = [(UIView *)self->_borderShadowTopView superview];
  v3 = v2 != 0;

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

  v9 = [(UICollectionViewTableCell *)self tableViewCell];
  [(UIView *)self insertSubview:borderShadowTopView belowSubview:v9];

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

  v16 = [(UICollectionViewTableCell *)self tableViewCell];
  [(UIView *)self insertSubview:borderShadowBottomView belowSubview:v16];
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
  v3 = [(UICollectionViewTableCell *)self tableViewCell];
  [v3 layoutIfNeeded];

  v4.receiver = self;
  v4.super_class = UICollectionViewTableCell;
  [(UICollectionViewCell *)&v4 layoutSubviews];
}

- (void)setInteractiveMoveEffectsVisible:(BOOL)a3
{
  if (self->_interactiveMoveEffectsVisible != a3)
  {
    self->_interactiveMoveEffectsVisible = a3;
    if (a3)
    {
      v4 = [(UICollectionViewTableCell *)self _tableLayout];
      v5 = [v4 _constants];
      v6 = [v5 reorderingCellWantsShadows];
    }

    else
    {
      v6 = 0;
    }

    [(UICollectionViewTableCell *)self setBorderShadowVisible:v6];
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
      v9 = [(UICollectionViewTableCell *)self selectedBackgroundView];
    }

    else
    {
      v9 = 0;
    }

    objc_storeStrong(&self->_selectedBackgroundViewToRestoreWhenInteractiveMoveEnds, v9);
    if (interactiveMoveEffectsVisible)
    {
    }

    [(UICollectionViewTableCell *)self setSelectedBackgroundView:v10];
  }
}

- (void)setBorderShadowVisible:(BOOL)a3
{
  if (self->_borderShadowVisible != a3)
  {
    self->_borderShadowVisible = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v13.receiver = self;
  v13.super_class = UICollectionViewTableCell;
  [(UICollectionReusableView *)&v13 applyLayoutAttributes:a3];
  v4 = [(UICollectionViewTableCell *)self tableViewCell];
  v5 = [(UICollectionViewTableCell *)self _tableAttributes];
  v6 = [(UICollectionViewTableCell *)self currentLayout];

  if (!v6)
  {
    v7 = [(UICollectionReusableView *)self _collectionView];
    v8 = [v7 collectionViewLayout];
    [(UICollectionViewTableCell *)self setCurrentLayout:v8];

    [(UICollectionViewTableCell *)self _updateInternalCellForTableLayout:[(UICollectionViewTableCell *)self isInTableLayout] animated:0];
    [(UICollectionViewTableCell *)self updateCellForTableLayout:[(UICollectionViewTableCell *)self isInTableLayout]];
  }

  if (v5)
  {
    v9 = objc_opt_class();
    [v9 applyValuesFromAttributes:v5 toAttributes:v4 valueOptions:{objc_msgSend(objc_opt_class(), "automaticValueOptionsForRepresentedElementCategory:", objc_msgSend(v5, "representedElementCategory"))}];
    v10 = [(UICollectionViewTableCell *)self _tableLayout];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 _constants];
      [v12 defaultLayoutMarginsForCell:v4 inTableView:v11];
      [v4 setLayoutMargins:?];
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
  v7 = [(UICollectionViewTableCell *)self _tableAttributes];
  if (![(UICollectionViewTableCell *)self isInTableLayout])
  {
    goto LABEL_7;
  }

  if (![(UICollectionViewTableCell *)self isEditing]&& [(UICollectionViewTableCell *)self allowsMultipleSelection])
  {
    v3 = 1;
    goto LABEL_8;
  }

  if ([(UICollectionViewTableCell *)self isEditing])
  {
    v3 = [(UICollectionViewTableCell *)self allowsMultipleSelectionDuringEditing];
  }

  else
  {
LABEL_7:
    v3 = 0;
  }

LABEL_8:
  v4 = [(UICollectionViewTableCell *)self isEditing];
  v5 = [v7 indexPath];
  LOBYTE(v6) = 1;
  -[UICollectionViewTableCell _setupForEditing:atIndexPath:multiselect:editingStyle:shouldIndentWhileEditing:showsReorderControl:accessoryType:updateSeparators:](self, "_setupForEditing:atIndexPath:multiselect:editingStyle:shouldIndentWhileEditing:showsReorderControl:accessoryType:updateSeparators:", v4, v5, v3, [v7 editingStyle], objc_msgSend(v7, "shouldIndentWhileEditing"), objc_msgSend(v7, "showsReorderControl"), objc_msgSend(v7, "accessoryType"), v6);
}

- (void)_updateInternalCellForTableLayout:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v33[3] = *MEMORY[0x1E69E9840];
  v7 = [(UICollectionViewTableCell *)self tableViewCell];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v5)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __72__UICollectionViewTableCell__updateInternalCellForTableLayout_animated___block_invoke;
      aBlock[3] = &unk_1E70FE928;
      v8 = v7;
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
      v24 = self;
      v25 = v14;
      v16 = v15;
      v26 = v16;
      v17 = v14;
      [UIView performWithoutAnimation:v22];
      if (v4)
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
      [v7 setAccessoryType:0];
      [v7 _setSeparatorHidden:1];
      [v7 _setAccessoryViewsHidden:1];
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

- (void)willTransitionFromLayout:(id)a3 toLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UICollectionViewTableCell *)self tableViewCell];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass() & 1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v9 != (isKindOfClass & 1))
  {
    v11 = isKindOfClass;
    [v8 removeEditingData];
    [(UICollectionViewTableCell *)self setTransitioningLayouts:1];
    [(UICollectionViewTableCell *)self setCurrentLayout:v7];
    [(UICollectionViewTableCell *)self _updateEditing];
    if (v11)
    {
      [v8 _setAccessoryViewsHidden:1];
    }

    else
    {
      [(UICollectionViewTableCell *)self _updateInternalCellForTableLayout:0 animated:0];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __63__UICollectionViewTableCell_willTransitionFromLayout_toLayout___block_invoke;
      v12[3] = &unk_1E70F3590;
      v13 = v6;
      [UIView performWithoutAnimation:v12];
    }
  }
}

- (void)didTransitionFromLayout:(id)a3 toLayout:(id)a4
{
  if ([(UICollectionViewTableCell *)self transitioningLayouts:a3])
  {
    if ([(UICollectionViewTableCell *)self isInTableLayout])
    {
      [(UICollectionViewTableCell *)self _updateInternalCellForTableLayout:1 animated:1];
    }

    [(UICollectionViewTableCell *)self setTransitioningLayouts:0];
  }
}

- (void)_trackAnimator:(id)a3
{
  v4 = a3;
  trackedAnimators = self->_trackedAnimators;
  if (trackedAnimators)
  {
    [(NSMutableSet *)trackedAnimators addObject:v4];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFA8] setWithObject:v4];
    v7 = self->_trackedAnimators;
    self->_trackedAnimators = v6;
  }

  objc_initWeak(&location, self);
  objc_initWeak(&from, v4);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__UICollectionViewTableCell__trackAnimator___block_invoke;
  v8[3] = &unk_1E70F5A00;
  objc_copyWeak(&v9, &location);
  objc_copyWeak(&v10, &from);
  [v4 addCompletion:v8];
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

  v13 = [(UICollectionViewTableCell *)self swipeableView];
  v14 = [v13 superview];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(UICollectionViewTableCell *)self swipeableView];
  [v23 setFrame:{v16, v18, v20, v22}];

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
  v2 = [(UICollectionViewTableCell *)self currentLayout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
    [(UICollectionViewTableCell *)self _updateEditing];
  }
}

- (void)_setupForEditing:(BOOL)a3 atIndexPath:(id)a4 multiselect:(BOOL)a5 editingStyle:(int64_t)a6 shouldIndentWhileEditing:(BOOL)a7 showsReorderControl:(BOOL)a8 accessoryType:(int64_t)a9 updateSeparators:(BOOL)a10
{
  v10 = a8;
  v11 = a7;
  v13 = a5;
  v14 = a3;
  v16 = [(UICollectionViewTableCell *)self tableViewCell:a3];
  if (v14)
  {
    [v16 _setShowsReorderControl:v10];
    [v16 _setEditingStyle:a6];
    [v16 _setShouldIndentWhileEditing:v11];
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

  [v16 _setMultiselecting:v13];
}

- (CGRect)_calloutTargetRectForCell:(id)a3
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

- (void)_swipeToDeleteCell:(id)a3
{
  v4 = [(UICollectionViewTableCell *)self _tableLayout];
  [v4 _swipeToDeleteCell:self];
}

- (BOOL)_beginReorderingForCell:(id)a3 touch:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(UICollectionReusableView *)self _collectionView];
  v7 = [(UICollectionReusableView *)self _layoutAttributes];
  v8 = [v7 indexPath];
  v9 = [v6 beginInteractiveMovementForItemAtIndexPath:v8];

  if (v9)
  {
    v10 = [(UICollectionReusableView *)self _layoutAttributes];
    [v10 center];
    self->_reorderingCenterX = v11;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = v5;
    v12 = [v5 gestureRecognizers];
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
            objc_enumerationMutation(v12);
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

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v14);
    }

    [(UICollectionViewTableCell *)self setInteractiveMoveEffectsVisible:1];
    v5 = v21;
    [(UICollectionViewTableCell *)self _updateCollectionViewInteractiveMovementTargetPositionForTouch:v21];
  }

  return v9;
}

- (void)_updateCollectionViewInteractiveMovementTargetPositionForTouch:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [(UICollectionReusableView *)self _collectionView];
    [v8 locationInView:v4];
  }

  else
  {
    v4 = [(UICollectionReusableView *)self _layoutAttributes];
    [v4 center];
  }

  v6 = v5;

  v7 = [(UICollectionReusableView *)self _collectionView];
  [v7 updateInteractiveMovementTargetPosition:{self->_reorderingCenterX, v6}];
}

- (void)_endReorderingForCell:(id)a3 wasCancelled:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a4;
  [(UICollectionViewTableCell *)self setInteractiveMoveEffectsVisible:0, a4, a5];
  v7 = [(UICollectionReusableView *)self _collectionView];
  v8 = v7;
  if (v5)
  {
    [v7 cancelInteractiveMovement];
  }

  else
  {
    [v7 endInteractiveMovement];
  }

  self->_reorderingCenterX = 0.0;
}

- (void)_didInsertRowForTableCell:(id)a3
{
  v8 = [(UICollectionReusableView *)self _collectionView];
  v4 = [v8 delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(UICollectionViewTableCell *)self _tableLayout];
    v6 = [(UICollectionReusableView *)self _layoutAttributes];
    v7 = [v6 indexPath];
    [v4 collectionView:v8 tableLayout:v5 commitEditingStyle:2 forRowAtIndexPath:v7];
  }
}

- (void)_animateDeletionOfRowAtIndexPath:(id)a3
{
  v7 = a3;
  v4 = [(UICollectionReusableView *)self _collectionView];
  v5 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(UICollectionViewTableCell *)self _tableLayout];
    [v5 collectionView:v4 tableLayout:v6 commitEditingStyle:1 forRowAtIndexPath:v7];
  }
}

- (void)_animateDeletionOfRowWithCell:(id)a3
{
  v5 = [(UICollectionReusableView *)self _layoutAttributes];
  v4 = [v5 indexPath];
  [(UICollectionViewTableCell *)self _animateDeletionOfRowAtIndexPath:v4];
}

- (void)_accessoryButtonAction:(id)a3
{
  v4 = [(UICollectionReusableView *)self _layoutAttributes];
  v6 = [v4 indexPath];

  v5 = [(UICollectionViewTableCell *)self _tableLayout];
  [v5 _cellAccessoryButtonTappedAtIndexPath:v6];
}

- (BOOL)selectionFollowsFocus
{
  v2 = [(UICollectionReusableView *)self _collectionView];
  v3 = [v2 selectionFollowsFocus];

  return v3;
}

- (BOOL)_effectiveDefaultAllowsFocus
{
  v2 = [(UICollectionReusableView *)self _collectionView];
  v3 = [v2 _effectiveDefaultAllowsFocus];

  return v3;
}

- (UICollectionViewTableLayout)_tableLayout
{
  v2 = [(UICollectionViewTableCell *)self currentLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UICollectionViewTableLayoutAttributes)_tableAttributes
{
  v2 = [(UICollectionReusableView *)self _layoutAttributes];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)_rowSpacing
{
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    [v4 _rowSpacing];
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
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    [v4 _rawSeparatorInset];
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
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    v5 = [v4 _scrollView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_numberOfSections
{
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    v5 = [v4 _numberOfSections];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)allowsMultipleSelection
{
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    v5 = [v4 allowsMultipleSelection];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)allowsMultipleSelectionDuringEditing
{
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    v5 = [v4 allowsMultipleSelectionDuringEditing];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)rowHeight
{
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    [v4 rowHeight];
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
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    [v4 sectionHeaderHeight];
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
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    [v4 sectionFooterHeight];
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
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    [v4 estimatedRowHeight];
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
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    [v4 estimatedSectionHeaderHeight];
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
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    [v4 estimatedSectionFooterHeight];
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
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    v5 = [v4 _separatorInsetIsRelativeToCellEdges];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)usesVariableMargins
{
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    v5 = [v4 usesVariableMargins];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)overlapsSectionHeaderViews
{
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    v5 = [v4 overlapsSectionHeaderViews];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)_backgroundInset
{
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    [v4 _backgroundInset];
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
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    [v4 _cellSafeAreaInsets];
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
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    v5 = [v4 cellLayoutMarginsFollowReadableWidth];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)insetsContentViewsToSafeArea
{
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    v5 = [v4 insetsContentViewsToSafeArea];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (double)_topPadding
{
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    [v4 _topPadding];
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
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    [v4 _bottomPadding];
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
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    v5 = [v4 _isShowingIndex];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGRect)_indexFrame
{
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    [v4 _indexFrame];
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
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    [v4 _indexBarExtentFromEdge];
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
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    [v4 _sectionContentInset];
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
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    [v4 _rawSectionContentInset];
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
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    [v4 _sectionCornerRadius];
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
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    v5 = [v4 _sectionContentInsetFollowsLayoutMargins];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIColor)_accessoryBaseColor
{
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    v5 = [v4 _accessoryBaseColor];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIColor)_multiselectCheckmarkColor
{
  v3 = [(UICollectionViewTableCell *)self _tableLayout];
  if (v3)
  {
    v4 = [(UICollectionViewTableCell *)self _tableLayout];
    v5 = [v4 _multiselectCheckmarkColor];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_numberOfRowsInSection:(int64_t)a3
{
  v4 = [(UICollectionViewTableCell *)self _tableLayout];
  v5 = [v4 _numberOfRowsInSection:a3];

  return v5;
}

- (BOOL)_shouldHaveHeaderViewForSection:(int64_t)a3
{
  v4 = [(UICollectionViewTableCell *)self _tableLayout];
  LOBYTE(a3) = [v4 _shouldHaveHeaderViewForSection:a3];

  return a3;
}

- (BOOL)_shouldHaveFooterViewForSection:(int64_t)a3
{
  v4 = [(UICollectionViewTableCell *)self _tableLayout];
  LOBYTE(a3) = [v4 _shouldHaveFooterViewForSection:a3];

  return a3;
}

- (UIImageView)imageView
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  v3 = [v2 imageView];

  return v3;
}

- (UILabel)textLabel
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  v3 = [v2 textLabel];

  return v3;
}

- (UILabel)detailTextLabel
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  v3 = [v2 detailTextLabel];

  return v3;
}

- (id)backgroundView
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  v3 = [v2 backgroundView];

  return v3;
}

- (void)setBackgroundView:(id)a3
{
  v4 = a3;
  v5 = [(UICollectionViewTableCell *)self tableViewCell];
  [v5 setBackgroundView:v4];
}

- (id)selectedBackgroundView
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  v3 = [v2 selectedBackgroundView];

  return v3;
}

- (void)setSelectedBackgroundView:(id)a3
{
  v4 = a3;
  v5 = [(UICollectionViewTableCell *)self tableViewCell];
  [v5 setSelectedBackgroundView:v4];
}

- (UIView)multipleSelectionBackgroundView
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  v3 = [v2 multipleSelectionBackgroundView];

  return v3;
}

- (void)setMultipleSelectionBackgroundView:(id)a3
{
  v4 = a3;
  v5 = [(UICollectionViewTableCell *)self tableViewCell];
  [v5 setMultipleSelectionBackgroundView:v4];
}

- (id)backgroundColor
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  v3 = [v2 backgroundColor];

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(UICollectionViewTableCell *)self tableViewCell];
  [v5 setBackgroundColor:v4];
}

- (int64_t)selectionStyle
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  v3 = [v2 selectionStyle];

  return v3;
}

- (void)setSelectionStyle:(int64_t)a3
{
  v4 = [(UICollectionViewTableCell *)self tableViewCell];
  [v4 setSelectionStyle:a3];
}

- (BOOL)isSelected
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  v3 = [v2 isSelected];

  return v3;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v4 = [(UICollectionViewTableCell *)self tableViewCell];
  [v4 setSelected:v3 animated:{+[UIView _isInAnimationBlockWithAnimationsEnabled](UIView, "_isInAnimationBlockWithAnimationsEnabled")}];
}

- (BOOL)isHighlighted
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  v3 = [v2 isHighlighted];

  return v3;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v4 = [(UICollectionViewTableCell *)self tableViewCell];
  [v4 setHighlighted:v3 animated:{+[UIView _isInAnimationBlockWithAnimationsEnabled](UIView, "_isInAnimationBlockWithAnimationsEnabled")}];
}

- (int64_t)editingStyle
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  v3 = [v2 editingStyle];

  return v3;
}

- (BOOL)showsReorderControl
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  v3 = [v2 showsReorderControl];

  return v3;
}

- (void)setShowsReorderControl:(BOOL)a3
{
  v3 = a3;
  v4 = [(UICollectionViewTableCell *)self tableViewCell];
  [v4 setShowsReorderControl:v3];
}

- (BOOL)shouldIndentWhileEditing
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  v3 = [v2 shouldIndentWhileEditing];

  return v3;
}

- (void)setShouldIndentWhileEditing:(BOOL)a3
{
  v3 = a3;
  v4 = [(UICollectionViewTableCell *)self tableViewCell];
  [v4 setShouldIndentWhileEditing:v3];
}

- (int64_t)accessoryType
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  v3 = [v2 accessoryType];

  return v3;
}

- (void)setAccessoryType:(int64_t)a3
{
  self->_accessoryType = a3;
  if ([(UICollectionViewTableCell *)self isInTableLayout])
  {
    v5 = [(UICollectionViewTableCell *)self tableViewCell];
    [v5 setAccessoryType:a3];
  }
}

- (UIView)accessoryView
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  v3 = [v2 accessoryView];

  return v3;
}

- (void)setAccessoryView:(id)a3
{
  v4 = a3;
  v5 = [(UICollectionViewTableCell *)self tableViewCell];
  [v5 setAccessoryView:v4];
}

- (int64_t)editingAccessoryType
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  v3 = [v2 editingAccessoryType];

  return v3;
}

- (void)setEditingAccessoryType:(int64_t)a3
{
  v4 = [(UICollectionViewTableCell *)self tableViewCell];
  [v4 setEditingAccessoryType:a3];
}

- (UIView)editingAccessoryView
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  v3 = [v2 editingAccessoryView];

  return v3;
}

- (void)setEditingAccessoryView:(id)a3
{
  v4 = a3;
  v5 = [(UICollectionViewTableCell *)self tableViewCell];
  [v5 setEditingAccessoryView:v4];
}

- (int64_t)indentationLevel
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  v3 = [v2 indentationLevel];

  return v3;
}

- (void)setIndentationLevel:(int64_t)a3
{
  v4 = [(UICollectionViewTableCell *)self tableViewCell];
  [v4 setIndentationLevel:a3];
}

- (double)indentationWidth
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  [v2 indentationWidth];
  v4 = v3;

  return v4;
}

- (void)setIndentationWidth:(double)a3
{
  v4 = [(UICollectionViewTableCell *)self tableViewCell];
  [v4 setIndentationWidth:a3];
}

- (UIEdgeInsets)separatorInset
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  [v2 separatorInset];
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

- (void)setSeparatorInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [(UICollectionViewTableCell *)self tableViewCell];
  [v7 setSeparatorInset:{top, left, bottom, right}];
}

- (BOOL)showingDeleteConfirmation
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  v3 = [v2 showingDeleteConfirmation];

  return v3;
}

- (int64_t)focusStyle
{
  v2 = [(UICollectionViewTableCell *)self tableViewCell];
  v3 = [v2 focusStyle];

  return v3;
}

- (void)setFocusStyle:(int64_t)a3
{
  v4 = [(UICollectionViewTableCell *)self tableViewCell];
  [v4 setFocusStyle:a3];
}

- (void)willTransitionToState:(unint64_t)a3
{
  v4 = [(UICollectionViewTableCell *)self tableViewCell];
  [v4 willTransitionToState:a3];
}

- (void)didTransitionToState:(unint64_t)a3
{
  v4 = [(UICollectionViewTableCell *)self tableViewCell];
  [v4 didTransitionToState:a3];
}

- (UICollectionViewLayout)currentLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_currentLayout);

  return WeakRetained;
}

@end
@interface SearchUITableViewCell
+ (double)distanceToTopOfAppIconsForMultiResultCell;
+ (id)cellViewForRowModel:(id)a3 feedbackDelegate:(id)a4;
+ (id)reuseIdentifierForResult:(id)a3;
- (CGSize)_customInsetSize;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (NSArray)visibleResults;
- (SearchUIFeedbackDelegateInternal)delegate;
- (SearchUITableViewCell)initWithRowModel:(id)a3 feedbackDelegate:(id)a4;
- (UIEdgeInsets)customEdgeInsets;
- (id)commandHandler;
- (id)contextMenuActionProvider;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)keyboardCardSectionForFocus;
- (id)keyboardResultForFocus;
- (void)_setAnimating:(BOOL)a3 clippingAdjacentCells:(BOOL)a4;
- (void)didMoveToWindow;
- (void)executeCommandWithTriggerEvent:(unint64_t)a3;
- (void)layoutSubviews;
- (void)setCustomEdgeInsets:(UIEdgeInsets)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateWithResult:(id)a3;
- (void)updateWithResults:(id)a3;
- (void)updateWithRowModel:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation SearchUITableViewCell

+ (double)distanceToTopOfAppIconsForMultiResultCell
{
  v2 = +[SearchUIUtilities isWideScreen];
  result = 8.0;
  if (v2)
  {
    return 16.0;
  }

  return result;
}

+ (id)cellViewForRowModel:(id)a3 feedbackDelegate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_msgSend(v6 "cellViewClass"))];

  return v7;
}

+ (id)reuseIdentifierForResult:(id)a3
{
  v3 = [SearchUITableModel tableModelWithResult:a3];
  v4 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v5 = [v3 rowModelForIndexPath:v4];

  v6 = 0;
  if ([v3 numberOfRowsForSection:0] == 1)
  {
    v6 = [v5 reuseIdentifier];
  }

  return v6;
}

- (SearchUITableViewCell)initWithRowModel:(id)a3 feedbackDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 reuseIdentifier];
  v13.receiver = self;
  v13.super_class = SearchUITableViewCell;
  v9 = [(SearchUITableViewCell *)&v13 initWithStyle:0 reuseIdentifier:v8];

  if (v9)
  {
    [(SearchUITableViewCell *)v9 setDelegate:v7];
    [(SearchUITableViewCell *)v9 setPreservesSuperviewLayoutMargins:0];
    [(SearchUITableViewCell *)v9 setLayoutMargins:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    v10 = [MEMORY[0x1E69D91C8] viewWithProminence:3];
    [(SearchUITableViewCell *)v9 setSelectedBackgroundView:v10];

    [(SearchUITableViewCell *)v9 setBackgroundColor:0];
    v11 = [(SearchUIDragSource *)SearchUITableViewCellDragSource dragSourceForView:v9 dragObject:v6 feedbackDelegate:v7];
    [(SearchUITableViewCell *)v9 setDragSource:v11];

    [(SearchUITableViewCell *)v9 updateWithRowModel:v6];
  }

  return v9;
}

- (id)contextMenuActionProvider
{
  v2 = [(SearchUITableViewCell *)self commandHandler];
  v3 = [v2 actionProvider];

  return v3;
}

- (void)executeCommandWithTriggerEvent:(unint64_t)a3
{
  v4 = [(SearchUITableViewCell *)self commandHandler];
  [v4 executeWithTriggerEvent:a3];
}

- (id)commandHandler
{
  v3 = objc_opt_new();
  v4 = [(SearchUITableViewCell *)self delegate];
  [v3 setFeedbackDelegate:v4];

  [v3 setSourceView:self];
  [v3 setThreeDTouchEnabled:1];
  v5 = [(SearchUITableViewCell *)self rowModel];
  v6 = [SearchUICommandHandler handlerForRowModel:v5 environment:v3];

  return v6;
}

- (void)updateWithResult:(id)a3
{
  v6 = [SearchUITableModel tableModelWithResult:a3];
  v4 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v5 = [v6 rowModelForIndexPath:v4];
  [(SearchUITableViewCell *)self updateWithRowModel:v5];
}

- (void)updateWithRowModel:(id)a3
{
  v4 = a3;
  [(SearchUITableViewCell *)self setRowModel:v4];
  v5 = [(SearchUITableViewCell *)self dragSource];
  [v5 setDragObject:v4];

  [(SearchUITableViewCell *)self tlk_updateWithCurrentAppearance];
}

- (NSArray)visibleResults
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(SearchUITableViewCell *)self rowModel];
  v4 = [v3 identifyingResult];
  if (v4)
  {
    v5 = [(SearchUITableViewCell *)self rowModel];
    v6 = [v5 identifyingResult];
    v9[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (void)willMoveToWindow:(id)a3
{
  v5.receiver = self;
  v5.super_class = SearchUITableViewCell;
  [(SearchUITableViewCell *)&v5 willMoveToWindow:?];
  if (!a3)
  {
    [(SearchUITableViewCell *)self removeKeyboardHandler];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SearchUITableViewCell;
  [(SearchUITableViewCell *)&v9 traitCollectionDidChange:v4];
  v5 = [(SearchUITableViewCell *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(SearchUITableViewCell *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(SearchUITableViewCell *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SearchUITableViewCell;
  [(SearchUITableViewCell *)&v3 didMoveToWindow];
  [(SearchUITableViewCell *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)a3
{
  v11.receiver = self;
  v11.super_class = SearchUITableViewCell;
  [(SearchUITableViewCell *)&v11 tlk_updateForAppearance:a3];
  v4 = [(SearchUITableViewCell *)self rowModel];
  v5 = [v4 backgroundColor];

  if (v5)
  {
    v6 = [(SearchUITableViewCell *)self backgroundView];

    if (!v6)
    {
      v7 = objc_opt_new();
      [v7 setDelegate:self];
      [(SearchUITableViewCell *)self setBackgroundView:v7];
    }
  }

  v8 = [(SearchUITableViewCell *)self backgroundView];
  [v8 setColor:v5];
  v9 = [(SearchUITableViewCell *)self rowModel];
  v10 = [v9 backgroundImage];
  [v8 setBackgroundImage:v10];

  [v8 setHidden:v5 == 0];
}

- (void)_setAnimating:(BOOL)a3 clippingAdjacentCells:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(SearchUITableViewCell *)self layer];
  v8 = [v7 allowsGroupBlending];

  if (_setAnimating_clippingAdjacentCells__onceToken != -1)
  {
    [SearchUITableViewCell _setAnimating:clippingAdjacentCells:];
  }

  if (_setAnimating_clippingAdjacentCells__respondsToSelector == 1)
  {
    v10.receiver = self;
    v10.super_class = SearchUITableViewCell;
    [(SearchUITableViewCell *)&v10 _setAnimating:v5 clippingAdjacentCells:v4];
  }

  v9 = [(SearchUITableViewCell *)self layer];
  [v9 setAllowsGroupBlending:v8];
}

uint64_t __61__SearchUITableViewCell__setAnimating_clippingAdjacentCells___block_invoke()
{
  result = [MEMORY[0x1E69DD028] instancesRespondToSelector:sel__setAnimating_clippingAdjacentCells_];
  _setAnimating_clippingAdjacentCells__respondsToSelector = result;
  return result;
}

- (void)updateWithResults:(id)a3
{
  v4 = [a3 firstObject];
  [(SearchUITableViewCell *)self updateWithResult:v4];
}

- (void)setCustomEdgeInsets:(UIEdgeInsets)a3
{
  p_customEdgeInsets = &self->_customEdgeInsets;
  v4.f64[0] = a3.top;
  v4.f64[1] = a3.left;
  v5.f64[0] = a3.bottom;
  v5.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, *&self->_customEdgeInsets.top), vceqq_f64(v5, *&self->_customEdgeInsets.bottom)))) & 1) == 0)
  {
    top = a3.top;
    left = a3.left;
    bottom = a3.bottom;
    right = a3.right;
    v7 = [(SearchUITableViewCell *)self dragSource];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [(SearchUITableViewCell *)self dragSource];
      [v9 setCustomEdgeInsets:{top, left, bottom, right}];
    }

    p_customEdgeInsets->top = top;
    p_customEdgeInsets->left = left;
    p_customEdgeInsets->bottom = bottom;
    p_customEdgeInsets->right = right;

    [(SearchUITableViewCell *)self invalidateIntrinsicContentSize];
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = [(SearchUITableViewCell *)self sizingContainer];
  if (v3)
  {
    [(SearchUITableViewCell *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SearchUITableViewCell;
    [(SearchUITableViewCell *)&v10 intrinsicContentSize];
  }

  v6 = v4;
  v7 = v5;

  v8 = v6;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)_customInsetSize
{
  v2 = vaddq_f64(*&self->_customEdgeInsets.top, *&self->_customEdgeInsets.bottom);
  v3 = v2.f64[1];
  result.height = v2.f64[0];
  result.width = v3;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  [(SearchUITableViewCell *)self _customInsetSize];
  v11 = width - v10;
  if (v11 >= 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = [(SearchUITableViewCell *)self sizingContainer];
  if (v13)
  {
    v16 = [(SearchUITableViewCell *)self sizingContainer];
    *&v17 = a4;
    *&v18 = a5;
    [v16 systemLayoutSizeFittingSize:v12 withHorizontalFittingPriority:height verticalFittingPriority:{v17, v18}];
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v30.receiver = self;
    v30.super_class = SearchUITableViewCell;
    *&v14 = a4;
    *&v15 = a5;
    [(SearchUITableViewCell *)&v30 systemLayoutSizeFittingSize:v12 withHorizontalFittingPriority:height verticalFittingPriority:v14, v15];
    v20 = v23;
    v22 = v24;
  }

  [(SearchUITableViewCell *)self _customInsetSize];
  v26 = v20 + v25;
  [(SearchUITableViewCell *)self _customInsetSize];
  v28 = v22 + v27;
  v29 = v26;
  result.height = v28;
  result.width = v29;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(SearchUITableViewCell *)self _customInsetSize];
  v7 = width - v6;
  v8 = [(SearchUITableViewCell *)self sizingContainer];
  if (v8)
  {
    v9 = [(SearchUITableViewCell *)self sizingContainer];
    [v9 sizeThatFits:{v7, height}];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = SearchUITableViewCell;
    [(SearchUITableViewCell *)&v21 sizeThatFits:v7, height];
    v11 = v14;
    v13 = v15;
  }

  [(SearchUITableViewCell *)self _customInsetSize];
  v17 = v11 + v16;
  [(SearchUITableViewCell *)self _customInsetSize];
  v19 = v13 + v18;
  v20 = v17;
  result.height = v19;
  result.width = v20;
  return result;
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = SearchUITableViewCell;
  [(SearchUITableViewCell *)&v36 layoutSubviews];
  v3 = [(SearchUITableViewCell *)self contentView];
  [v3 frame];
  top = self->_customEdgeInsets.top;
  left = self->_customEdgeInsets.left;
  v7 = v6 + left;
  v9 = v8 + top;
  v11 = v10 - (left + self->_customEdgeInsets.right);
  v13 = v12 - (top + self->_customEdgeInsets.bottom);
  v14 = [(SearchUITableViewCell *)self contentView];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [(SearchUITableViewCell *)self contentView];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [(SearchUITableViewCell *)self sizingContainer];
  [v24 setFrame:{v17, v19, v21, v23}];

  v25 = [(SearchUITableViewCell *)self sfSeparatorStyle];
  if (v25 != 1)
  {
    v26 = v25;
    v27 = [(SearchUITableViewCell *)self sizingContainer];
    [v27 layoutIfNeeded];

    v28 = [(SearchUITableViewCell *)self leadingView];
    v29 = [(SearchUITableViewCell *)self leadingTextView];
    [SearchUICardSectionView separatorInsetsForStyle:v26 cellView:self leadingView:v28 leadingTextView:v29];
    v31 = v30;
    v33 = v32;
    v35 = v34;

    [(SearchUITableViewCell *)self setSeparatorInset:v31, v33, v35, 16.0];
  }
}

- (id)keyboardResultForFocus
{
  v2 = [(SearchUITableViewCell *)self rowModel];
  v3 = [v2 identifyingResult];

  return v3;
}

- (id)keyboardCardSectionForFocus
{
  v2 = [(SearchUITableViewCell *)self rowModel];
  v3 = [v2 cardSection];

  return v3;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [MEMORY[0x1E69D91A8] tappableControlViewForPoint:self inView:v7 withEvent:{x, y}];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SearchUITableViewCell;
    v10 = [(SearchUITableViewCell *)&v13 hitTest:v7 withEvent:x, y];
  }

  v11 = v10;

  return v11;
}

- (UIEdgeInsets)customEdgeInsets
{
  top = self->_customEdgeInsets.top;
  left = self->_customEdgeInsets.left;
  bottom = self->_customEdgeInsets.bottom;
  right = self->_customEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (SearchUIFeedbackDelegateInternal)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface SearchUITableViewCell
+ (double)distanceToTopOfAppIconsForMultiResultCell;
+ (id)cellViewForRowModel:(id)model feedbackDelegate:(id)delegate;
+ (id)reuseIdentifierForResult:(id)result;
- (CGSize)_customInsetSize;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NSArray)visibleResults;
- (SearchUIFeedbackDelegateInternal)delegate;
- (SearchUITableViewCell)initWithRowModel:(id)model feedbackDelegate:(id)delegate;
- (UIEdgeInsets)customEdgeInsets;
- (id)commandHandler;
- (id)contextMenuActionProvider;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)keyboardCardSectionForFocus;
- (id)keyboardResultForFocus;
- (void)_setAnimating:(BOOL)animating clippingAdjacentCells:(BOOL)cells;
- (void)didMoveToWindow;
- (void)executeCommandWithTriggerEvent:(unint64_t)event;
- (void)layoutSubviews;
- (void)setCustomEdgeInsets:(UIEdgeInsets)insets;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
- (void)updateWithResult:(id)result;
- (void)updateWithResults:(id)results;
- (void)updateWithRowModel:(id)model;
- (void)willMoveToWindow:(id)window;
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

+ (id)cellViewForRowModel:(id)model feedbackDelegate:(id)delegate
{
  delegateCopy = delegate;
  modelCopy = model;
  v7 = [objc_alloc(objc_msgSend(modelCopy "cellViewClass"))];

  return v7;
}

+ (id)reuseIdentifierForResult:(id)result
{
  v3 = [SearchUITableModel tableModelWithResult:result];
  v4 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v5 = [v3 rowModelForIndexPath:v4];

  reuseIdentifier = 0;
  if ([v3 numberOfRowsForSection:0] == 1)
  {
    reuseIdentifier = [v5 reuseIdentifier];
  }

  return reuseIdentifier;
}

- (SearchUITableViewCell)initWithRowModel:(id)model feedbackDelegate:(id)delegate
{
  modelCopy = model;
  delegateCopy = delegate;
  reuseIdentifier = [modelCopy reuseIdentifier];
  v13.receiver = self;
  v13.super_class = SearchUITableViewCell;
  v9 = [(SearchUITableViewCell *)&v13 initWithStyle:0 reuseIdentifier:reuseIdentifier];

  if (v9)
  {
    [(SearchUITableViewCell *)v9 setDelegate:delegateCopy];
    [(SearchUITableViewCell *)v9 setPreservesSuperviewLayoutMargins:0];
    [(SearchUITableViewCell *)v9 setLayoutMargins:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    v10 = [MEMORY[0x1E69D91C8] viewWithProminence:3];
    [(SearchUITableViewCell *)v9 setSelectedBackgroundView:v10];

    [(SearchUITableViewCell *)v9 setBackgroundColor:0];
    v11 = [(SearchUIDragSource *)SearchUITableViewCellDragSource dragSourceForView:v9 dragObject:modelCopy feedbackDelegate:delegateCopy];
    [(SearchUITableViewCell *)v9 setDragSource:v11];

    [(SearchUITableViewCell *)v9 updateWithRowModel:modelCopy];
  }

  return v9;
}

- (id)contextMenuActionProvider
{
  commandHandler = [(SearchUITableViewCell *)self commandHandler];
  actionProvider = [commandHandler actionProvider];

  return actionProvider;
}

- (void)executeCommandWithTriggerEvent:(unint64_t)event
{
  commandHandler = [(SearchUITableViewCell *)self commandHandler];
  [commandHandler executeWithTriggerEvent:event];
}

- (id)commandHandler
{
  v3 = objc_opt_new();
  delegate = [(SearchUITableViewCell *)self delegate];
  [v3 setFeedbackDelegate:delegate];

  [v3 setSourceView:self];
  [v3 setThreeDTouchEnabled:1];
  rowModel = [(SearchUITableViewCell *)self rowModel];
  v6 = [SearchUICommandHandler handlerForRowModel:rowModel environment:v3];

  return v6;
}

- (void)updateWithResult:(id)result
{
  v6 = [SearchUITableModel tableModelWithResult:result];
  v4 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v5 = [v6 rowModelForIndexPath:v4];
  [(SearchUITableViewCell *)self updateWithRowModel:v5];
}

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  [(SearchUITableViewCell *)self setRowModel:modelCopy];
  dragSource = [(SearchUITableViewCell *)self dragSource];
  [dragSource setDragObject:modelCopy];

  [(SearchUITableViewCell *)self tlk_updateWithCurrentAppearance];
}

- (NSArray)visibleResults
{
  v9[1] = *MEMORY[0x1E69E9840];
  rowModel = [(SearchUITableViewCell *)self rowModel];
  identifyingResult = [rowModel identifyingResult];
  if (identifyingResult)
  {
    rowModel2 = [(SearchUITableViewCell *)self rowModel];
    identifyingResult2 = [rowModel2 identifyingResult];
    v9[0] = identifyingResult2;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = SearchUITableViewCell;
  [(SearchUITableViewCell *)&v5 willMoveToWindow:?];
  if (!window)
  {
    [(SearchUITableViewCell *)self removeKeyboardHandler];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SearchUITableViewCell;
  [(SearchUITableViewCell *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(SearchUITableViewCell *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(SearchUITableViewCell *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(SearchUITableViewCell *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
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

- (void)tlk_updateForAppearance:(id)appearance
{
  v11.receiver = self;
  v11.super_class = SearchUITableViewCell;
  [(SearchUITableViewCell *)&v11 tlk_updateForAppearance:appearance];
  rowModel = [(SearchUITableViewCell *)self rowModel];
  backgroundColor = [rowModel backgroundColor];

  if (backgroundColor)
  {
    backgroundView = [(SearchUITableViewCell *)self backgroundView];

    if (!backgroundView)
    {
      v7 = objc_opt_new();
      [v7 setDelegate:self];
      [(SearchUITableViewCell *)self setBackgroundView:v7];
    }
  }

  backgroundView2 = [(SearchUITableViewCell *)self backgroundView];
  [backgroundView2 setColor:backgroundColor];
  rowModel2 = [(SearchUITableViewCell *)self rowModel];
  backgroundImage = [rowModel2 backgroundImage];
  [backgroundView2 setBackgroundImage:backgroundImage];

  [backgroundView2 setHidden:backgroundColor == 0];
}

- (void)_setAnimating:(BOOL)animating clippingAdjacentCells:(BOOL)cells
{
  cellsCopy = cells;
  animatingCopy = animating;
  layer = [(SearchUITableViewCell *)self layer];
  allowsGroupBlending = [layer allowsGroupBlending];

  if (_setAnimating_clippingAdjacentCells__onceToken != -1)
  {
    [SearchUITableViewCell _setAnimating:clippingAdjacentCells:];
  }

  if (_setAnimating_clippingAdjacentCells__respondsToSelector == 1)
  {
    v10.receiver = self;
    v10.super_class = SearchUITableViewCell;
    [(SearchUITableViewCell *)&v10 _setAnimating:animatingCopy clippingAdjacentCells:cellsCopy];
  }

  layer2 = [(SearchUITableViewCell *)self layer];
  [layer2 setAllowsGroupBlending:allowsGroupBlending];
}

uint64_t __61__SearchUITableViewCell__setAnimating_clippingAdjacentCells___block_invoke()
{
  result = [MEMORY[0x1E69DD028] instancesRespondToSelector:sel__setAnimating_clippingAdjacentCells_];
  _setAnimating_clippingAdjacentCells__respondsToSelector = result;
  return result;
}

- (void)updateWithResults:(id)results
{
  firstObject = [results firstObject];
  [(SearchUITableViewCell *)self updateWithResult:firstObject];
}

- (void)setCustomEdgeInsets:(UIEdgeInsets)insets
{
  p_customEdgeInsets = &self->_customEdgeInsets;
  v4.f64[0] = insets.top;
  v4.f64[1] = insets.left;
  v5.f64[0] = insets.bottom;
  v5.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, *&self->_customEdgeInsets.top), vceqq_f64(v5, *&self->_customEdgeInsets.bottom)))) & 1) == 0)
  {
    top = insets.top;
    left = insets.left;
    bottom = insets.bottom;
    right = insets.right;
    dragSource = [(SearchUITableViewCell *)self dragSource];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      dragSource2 = [(SearchUITableViewCell *)self dragSource];
      [dragSource2 setCustomEdgeInsets:{top, left, bottom, right}];
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
  sizingContainer = [(SearchUITableViewCell *)self sizingContainer];
  if (sizingContainer)
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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
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

  sizingContainer = [(SearchUITableViewCell *)self sizingContainer];
  if (sizingContainer)
  {
    sizingContainer2 = [(SearchUITableViewCell *)self sizingContainer];
    *&v17 = priority;
    *&v18 = fittingPriority;
    [sizingContainer2 systemLayoutSizeFittingSize:v12 withHorizontalFittingPriority:height verticalFittingPriority:{v17, v18}];
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v30.receiver = self;
    v30.super_class = SearchUITableViewCell;
    *&v14 = priority;
    *&v15 = fittingPriority;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(SearchUITableViewCell *)self _customInsetSize];
  v7 = width - v6;
  sizingContainer = [(SearchUITableViewCell *)self sizingContainer];
  if (sizingContainer)
  {
    sizingContainer2 = [(SearchUITableViewCell *)self sizingContainer];
    [sizingContainer2 sizeThatFits:{v7, height}];
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
  contentView = [(SearchUITableViewCell *)self contentView];
  [contentView frame];
  top = self->_customEdgeInsets.top;
  left = self->_customEdgeInsets.left;
  v7 = v6 + left;
  v9 = v8 + top;
  v11 = v10 - (left + self->_customEdgeInsets.right);
  v13 = v12 - (top + self->_customEdgeInsets.bottom);
  contentView2 = [(SearchUITableViewCell *)self contentView];
  [contentView2 setFrame:{v7, v9, v11, v13}];

  contentView3 = [(SearchUITableViewCell *)self contentView];
  [contentView3 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sizingContainer = [(SearchUITableViewCell *)self sizingContainer];
  [sizingContainer setFrame:{v17, v19, v21, v23}];

  sfSeparatorStyle = [(SearchUITableViewCell *)self sfSeparatorStyle];
  if (sfSeparatorStyle != 1)
  {
    v26 = sfSeparatorStyle;
    sizingContainer2 = [(SearchUITableViewCell *)self sizingContainer];
    [sizingContainer2 layoutIfNeeded];

    leadingView = [(SearchUITableViewCell *)self leadingView];
    leadingTextView = [(SearchUITableViewCell *)self leadingTextView];
    [SearchUICardSectionView separatorInsetsForStyle:v26 cellView:self leadingView:leadingView leadingTextView:leadingTextView];
    v31 = v30;
    v33 = v32;
    v35 = v34;

    [(SearchUITableViewCell *)self setSeparatorInset:v31, v33, v35, 16.0];
  }
}

- (id)keyboardResultForFocus
{
  rowModel = [(SearchUITableViewCell *)self rowModel];
  identifyingResult = [rowModel identifyingResult];

  return identifyingResult;
}

- (id)keyboardCardSectionForFocus
{
  rowModel = [(SearchUITableViewCell *)self rowModel];
  cardSection = [rowModel cardSection];

  return cardSection;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v8 = [MEMORY[0x1E69D91A8] tappableControlViewForPoint:self inView:eventCopy withEvent:{x, y}];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SearchUITableViewCell;
    v10 = [(SearchUITableViewCell *)&v13 hitTest:eventCopy withEvent:x, y];
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
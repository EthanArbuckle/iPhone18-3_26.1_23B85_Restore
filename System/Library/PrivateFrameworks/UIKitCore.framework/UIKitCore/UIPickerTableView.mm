@interface UIPickerTableView
- (BOOL)_beginTrackingWithEvent:(id)event;
- (BOOL)_scrollRowAtIndexPathToSelectionBar:(id)bar animated:(BOOL)animated;
- (BOOL)didSelectDisabled:(BOOL)disabled;
- (BOOL)selectRow:(int64_t)row animated:(BOOL)animated notify:(BOOL)notify updateChecked:(BOOL)checked;
- (CATransform3D)_transformForCellAtY:(SEL)y;
- (CGPoint)contentOffsetForRowAtIndexPath:(id)path;
- (CGRect)_selectionBarRectForBounds:(CGRect)bounds;
- (CGRect)_visibleBounds;
- (CGRect)selectionBarRect;
- (UIPickerTableView)initWithFrame:(CGRect)frame style:(int64_t)style visibleRect:(CGRect)rect;
- (id)_anyDateLabel;
- (id)_checkedRows;
- (id)_containerView;
- (id)_pickerView;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)_deactivateFeedbackGeneratorIfNeeded;
- (void)_notifyContentOffsetChange;
- (void)_playClickIfNecessary;
- (void)_rectChangedWithNewSize:(CGSize)size oldSize:(CGSize)oldSize;
- (void)_scrollViewAnimationEnded:(id)ended finished:(BOOL)finished;
- (void)_scrollingFinished;
- (void)_setContentOffset:(CGPoint)offset notify:(BOOL)notify;
- (void)_setSelectionBarRow:(int64_t)row;
- (void)_setTextColor:(id)color;
- (void)_updateContentInsets;
- (void)dealloc;
- (void)layoutSubviews;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation UIPickerTableView

- (UIPickerTableView)initWithFrame:(CGRect)frame style:(int64_t)style visibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v20.receiver = self;
  v20.super_class = UIPickerTableView;
  v9 = [(UITableView *)&v20 initWithFrame:style style:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v10 = v9;
  if (v9)
  {
    v9->_selectionBarRow = -1;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __53__UIPickerTableView_initWithFrame_style_visibleRect___block_invoke;
    v18[3] = &unk_1E70F3590;
    v11 = v9;
    v19 = v11;
    [UIView _performForcedAppearanceModifications:v18];
    v11->_lastClickedOffset = 2.22507386e-308;
    v12 = +[UIColor labelColor];
    textColor = v11->_textColor;
    v11->_textColor = v12;

    v11->_lastSelectedRow = 0;
    v11->_visibleRect.origin.x = x;
    v11->_visibleRect.origin.y = y;
    v11->_visibleRect.size.width = width;
    v11->_visibleRect.size.height = height;
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    referencingCells = v11->_referencingCells;
    v11->_referencingCells = v14;

    [(UIScrollView *)v11 _setShouldScrollAncestors:0];
    [(UITableView *)v11 setEstimatedRowHeight:0.0];
    [(UITableView *)v11 setEstimatedSectionHeaderHeight:0.0];
    [(UITableView *)v11 setEstimatedSectionFooterHeight:0.0];
    [(UITableView *)v11 setPrefetchingEnabled:0];
    _scrollView = [(UITableView *)v11 _scrollView];
    [_scrollView _setSupportsPointerDragScrolling:1];
  }

  return v10;
}

uint64_t __53__UIPickerTableView_initWithFrame_style_visibleRect___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSeparatorStyle:0];
  [*(a1 + 32) setOpaque:0];
  [*(a1 + 32) setBackgroundColor:0];
  [*(a1 + 32) setDelegate:*(a1 + 32)];
  [*(a1 + 32) setScrollsToTop:0];
  v2 = *(a1 + 32);

  return [v2 setAllowsSelection:0];
}

- (CGRect)_visibleBounds
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  height = self->_visibleRect.size.height;
  [(UIScrollView *)self contentOffset];
  v7 = y + v6;
  v12.receiver = self;
  v12.super_class = UIPickerTableView;
  [(UITableView *)&v12 _visibleBounds];
  v9 = x;
  v10 = v7;
  v11 = height;
  result.size.height = v11;
  result.size.width = v8;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (id)_pickerView
{
  superview = [(UIView *)self superview];
  if (superview)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2Superview = [superview superview];

      superview = v2Superview;
    }

    while (v2Superview);
  }

  return superview;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_referencingCells;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) setPickerTable:0];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = UIPickerTableView;
  [(UITableView *)&v8 dealloc];
}

- (CGRect)_selectionBarRectForBounds:(CGRect)bounds
{
  p_selectionBarRect = &self->_selectionBarRect;
  MinY = CGRectGetMinY(bounds);
  x = p_selectionBarRect->origin.x;
  y = p_selectionBarRect->origin.y;
  width = p_selectionBarRect->size.width;
  height = p_selectionBarRect->size.height;

  return CGRectOffset(*&x, 0.0, MinY);
}

- (BOOL)_scrollRowAtIndexPathToSelectionBar:(id)bar animated:(BOOL)animated
{
  animatedCopy = animated;
  barCopy = bar;
  v7 = [barCopy row];
  if (v7 >= [(UITableView *)self numberOfRowsInSection:0])
  {
    v14 = 0;
  }

  else
  {
    -[UIPickerTableView _setSelectionBarRow:](self, "_setSelectionBarRow:", [barCopy row]);
    *&self->_pickerTableFlags |= 0x40u;
    [(UIScrollView *)self stopScrollingAndZooming];
    *&self->_pickerTableFlags &= ~0x40u;
    [(UIPickerTableView *)self contentOffsetForRowAtIndexPath:barCopy];
    v9 = v8;
    v11 = v10;
    [(UIScrollView *)self contentOffset];
    v14 = v11 != v13 || v9 != v12;
    [(UIScrollView *)self setContentOffset:animatedCopy animated:v9, v11];
    [(UIPickerTableView *)self _notifyContentOffsetChange];
  }

  return v14;
}

- (id)_checkedRows
{
  checkedRows = self->_checkedRows;
  if (!checkedRows)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v5 = self->_checkedRows;
    self->_checkedRows = v4;

    checkedRows = self->_checkedRows;
  }

  return checkedRows;
}

- (BOOL)selectRow:(int64_t)row animated:(BOOL)animated notify:(BOOL)notify updateChecked:(BOOL)checked
{
  checkedCopy = checked;
  notifyCopy = notify;
  animatedCopy = animated;
  _checkedRows = [(UIPickerTableView *)self _checkedRows];
  _pickerView = [(UIPickerTableView *)self _pickerView];
  allowsMultipleSelection = [(UITableView *)self allowsMultipleSelection];
  v14 = allowsMultipleSelection;
  if (checkedCopy)
  {
    if (!allowsMultipleSelection)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __61__UIPickerTableView_selectRow_animated_notify_updateChecked___block_invoke;
      v34[3] = &unk_1E70FD030;
      rowCopy = row;
      v34[4] = self;
      v35 = _pickerView;
      [_checkedRows enumerateIndexesUsingBlock:v34];
      [_checkedRows removeAllIndexes];
    }

    [_checkedRows addIndex:row];
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__164;
  v32 = __Block_byref_object_dispose__164;
  v33 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __61__UIPickerTableView_selectRow_animated_notify_updateChecked___block_invoke_99;
  v27[3] = &unk_1E711BF88;
  v27[4] = self;
  v27[5] = &v28;
  v27[6] = row;
  [UIView performWithoutAnimation:v27];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & checkedCopy) == 1)
  {
    wrappedView = [v29[5] wrappedView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v14 && ([wrappedView isChecked] & 1) != 0)
      {
        if ([wrappedView isChecked])
        {
          [_checkedRows removeIndex:row];
        }

        v16 = 0;
        v17 = 0;
      }

      else
      {
        v17 = [wrappedView isChecked] ^ 1;
        v16 = 1;
      }

      [wrappedView setChecked:v16];
      [_pickerView _sendCheckedRow:row inTableView:self checked:v16];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  if (notifyCopy)
  {
    v18 = 16;
  }

  else
  {
    v18 = 24;
  }

  *&self->_pickerTableFlags = *&self->_pickerTableFlags & 0xE7 | v18;
  v19 = [MEMORY[0x1E696AC88] indexPathForRow:row inSection:0];
  v20 = [(UIPickerTableView *)self _scrollRowAtIndexPathToSelectionBar:v19 animated:animatedCopy]&& animatedCopy;

  pickerTableFlags = self->_pickerTableFlags;
  if (!v20)
  {
    pickerTableFlags &= ~0x10u;
    *&self->_pickerTableFlags = pickerTableFlags;
  }

  v22 = pickerTableFlags & 8;
  if (!v20)
  {
    v22 = 0;
  }

  v23 = pickerTableFlags & 0xD7;
  if (v20)
  {
    v24 = 32;
  }

  else
  {
    v24 = 0;
  }

  *&self->_pickerTableFlags = v23 | v24 | v22;
  if (!v20 && (v17 & [_pickerView _usesCheckSelection]) == 1)
  {
    _pickerView2 = [(UIPickerTableView *)self _pickerView];
    [_pickerView2 _sendSelectionChangedFromTable:self notify:1];
  }

  _Block_object_dispose(&v28, 8);

  return v20;
}

void __61__UIPickerTableView_selectRow_animated_notify_updateChecked___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != a2)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696AC88] indexPathForRow:a2 inSection:0];
    v10 = [v5 cellForRowAtIndexPath:v6];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = v10;
    if (isKindOfClass)
    {
      v9 = [v10 wrappedView];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v9 setChecked:0];
        [*(a1 + 40) _sendCheckedRow:a2 inTableView:*(a1 + 32) checked:0];
      }

      v8 = v10;
    }
  }
}

void __61__UIPickerTableView_selectRow_animated_notify_updateChecked___block_invoke_99(void *a1)
{
  v2 = a1[4];
  v6 = [MEMORY[0x1E696AC88] indexPathForRow:a1[6] inSection:0];
  v3 = [v2 cellForRowAtIndexPath:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)didSelectDisabled:(BOOL)disabled
{
  pickerTableFlags = self->_pickerTableFlags;
  if (disabled)
  {
    *&self->_pickerTableFlags = *&pickerTableFlags & 0xF7;
  }

  return (*&pickerTableFlags >> 3) & 1;
}

- (void)_rectChangedWithNewSize:(CGSize)size oldSize:(CGSize)oldSize
{
  v5.receiver = self;
  v5.super_class = UIPickerTableView;
  [(UITableView *)&v5 _rectChangedWithNewSize:size.width oldSize:size.height, oldSize.width, oldSize.height];
  [(UIPickerTableView *)self _updateContentInsets];
}

- (void)_updateContentInsets
{
  p_selectionBarRect = &self->_selectionBarRect;
  MinY = CGRectGetMinY(self->_selectionBarRect);
  [(UIView *)self frame];
  Height = CGRectGetHeight(v15);
  v6 = Height - CGRectGetMaxY(*p_selectionBarRect);
  [(UIScrollView *)self contentInset];
  v11 = v10 == 0.0 && MinY == v7;
  if (!v11 || v9 != 0.0 || v6 != v8)
  {
    selectionBarRow = [(UIPickerTableView *)self selectionBarRow];
    *&self->_pickerTableFlags |= 0x80u;
    [(UITableView *)self setContentInset:MinY, 0.0, v6, 0.0];
    *&self->_pickerTableFlags &= ~0x80u;
    if (selectionBarRow != -1)
    {
      v13 = [MEMORY[0x1E696AC88] indexPathForRow:-[UIPickerTableView selectionBarRow](self inSection:{"selectionBarRow"), 0}];
      [(UIPickerTableView *)self _scrollRowAtIndexPathToSelectionBar:v13 animated:0];
    }
  }
}

- (CATransform3D)_transformForCellAtY:(SEL)y
{
  traitCollection = [(UIView *)self traitCollection];
  v19 = +[UIPickerView _styleForIdiom:](UIPickerView, "_styleForIdiom:", [traitCollection userInterfaceIdiom]);

  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(UITableView *)self rowHeight];
  v17 = v19;
  if (v19)
  {
    [v19 transformForCellAtY:a4 inBounds:v9 rowHeight:v11 selectionBarRect:{v13, v15, v16, *&self->_selectionBarRect.origin.x, *&self->_selectionBarRect.origin.y, *&self->_selectionBarRect.size.width, *&self->_selectionBarRect.size.height}];
    v17 = v19;
  }

  else
  {
    *&retstr->m41 = 0u;
    *&retstr->m43 = 0u;
    *&retstr->m31 = 0u;
    *&retstr->m33 = 0u;
    *&retstr->m21 = 0u;
    *&retstr->m23 = 0u;
    *&retstr->m11 = 0u;
    *&retstr->m13 = 0u;
  }

  return result;
}

- (void)_notifyContentOffsetChange
{
  _containerView = [(UIPickerTableView *)self _containerView];
  if (objc_opt_respondsToSelector())
  {
    [_containerView _pickerTableViewDidChangeContentOffset:self];
  }
}

- (void)_setContentOffset:(CGPoint)offset notify:(BOOL)notify
{
  notifyCopy = notify;
  y = offset.y;
  x = offset.x;
  [(UIScrollView *)self contentOffset];
  v9 = v8;
  v26.receiver = self;
  v26.super_class = UIPickerTableView;
  [(UITableView *)&v26 setContentOffset:x, y];
  if (![(UIScrollView *)self isScrollAnimating]&& *&self->_pickerTableFlags <= 0x3Fu)
  {
    if (v9 >= y)
    {
      if (v9 <= y)
      {
        goto LABEL_21;
      }

      v19 = *(&self->super.super.super._viewFlags + 2);
      [(UITableView *)self _sectionContentInset];
      if ((v19 & 0x400000) != 0)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
      }

      v23 = [(UITableView *)self indexPathForRowAtPoint:v22, y + CGRectGetMaxY(self->_selectionBarRect) + -1.0];
      v15 = v23;
      if (!v23)
      {
        goto LABEL_20;
      }

      v24 = [v23 row];
      v17 = v24;
      if ((*&self->_pickerTableFlags & 6) == 2 && v24 >= self->_selectionBarRow)
      {
        goto LABEL_20;
      }

      v18 = 4;
    }

    else
    {
      v10 = *(&self->super.super.super._viewFlags + 2);
      [(UITableView *)self _sectionContentInset];
      if ((v10 & 0x400000) != 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }

      v14 = [(UITableView *)self indexPathForRowAtPoint:v13, y + CGRectGetMinY(self->_selectionBarRect) + 1.0];
      v15 = v14;
      if (!v14)
      {
        goto LABEL_20;
      }

      v16 = [v14 row];
      v17 = v16;
      if ((*&self->_pickerTableFlags & 6) == 4 && v16 <= self->_selectionBarRow)
      {
        goto LABEL_20;
      }

      v18 = 2;
    }

    [(UIPickerTableView *)self _setSelectionBarRow:v17];
    *&self->_pickerTableFlags = *&self->_pickerTableFlags & 0xF9 | v18;
LABEL_20:
  }

LABEL_21:
  window = [(UIView *)self window];

  if (window)
  {
    if (notifyCopy)
    {
      [(UIPickerTableView *)self _notifyContentOffsetChange];
    }
  }
}

- (void)layoutSubviews
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __35__UIPickerTableView_layoutSubviews__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

void __35__UIPickerTableView_layoutSubviews__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v28.receiver = *(a1 + 32);
  v28.super_class = UIPickerTableView;
  objc_msgSendSuper2(&v28, sel_layoutSubviews);
  [*(a1 + 32) contentOffset];
  v3 = v2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [*(a1 + 32) visibleCells];
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        [v9 center];
        v11 = v10 - v3;
        if (v10 - v3 >= 0.0 && ([*(a1 + 32) bounds], v11 <= v12))
        {
          v14 = [v9 layer];
          v15 = *(a1 + 32);
          if (v15)
          {
            [v15 _transformForCellAtY:v11];
          }

          else
          {
            v22 = 0u;
            v23 = 0u;
            v20 = 0u;
            v21 = 0u;
            v18 = 0u;
            v19 = 0u;
            v16 = 0u;
            v17 = 0u;
          }

          [v14 setTransform:&v16];

          v13 = 0;
        }

        else
        {
          v13 = 1;
        }

        [v9 setHidden:{v13, v16, v17, v18, v19, v20, v21, v22, v23}];
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }
}

- (id)_anyDateLabel
{
  visibleCells = [(UITableView *)self visibleCells];
  if ([visibleCells count])
  {
    lastObject = [visibleCells lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _anyDateLabel = [lastObject _anyDateLabel];
    }

    else
    {
      _anyDateLabel = 0;
    }
  }

  else
  {
    _anyDateLabel = 0;
  }

  return _anyDateLabel;
}

- (void)_scrollViewAnimationEnded:(id)ended finished:(BOOL)finished
{
  v5.receiver = self;
  v5.super_class = UIPickerTableView;
  [(UITableView *)&v5 _scrollViewAnimationEnded:ended finished:finished];
  *&self->_pickerTableFlags &= 0xF9u;
}

- (id)_containerView
{
  superview = [(UIView *)self superview];
  if (superview)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2Superview = [superview superview];

      superview = v2Superview;
    }

    while (v2Superview);
  }

  return superview;
}

- (void)_playClickIfNecessary
{
  if (self->_playsFeedback && (*&self->_pickerTableFlags & 0x10) == 0)
  {
    window = [(UIView *)self window];
    if (window)
    {
      v4 = window;
      _pickerView = [(UIPickerTableView *)self _pickerView];
      _soundsEnabled = [_pickerView _soundsEnabled];

      if (_soundsEnabled)
      {
        [(UIScrollView *)self contentOffset];
        v8 = v7;
        v9 = self->_lastClickedOffset - v7;
        v10 = v9 >= 0.0 ? self->_lastClickedOffset - v7 : -v9;
        [(UITableView *)self rowHeight];
        if (v10 >= v11 * 0.5)
        {
          _pickerView2 = [(UIPickerTableView *)self _pickerView];
          [_pickerView2 _willPlayClickSound];

          _pickerView3 = [(UIPickerTableView *)self _pickerView];
          _selectionFeedbackGenerator = [_pickerView3 _selectionFeedbackGenerator];

          if (self->_generatorActivated)
          {
            _containerView = [(UIPickerTableView *)self _containerView];
            [_containerView center];
            v16 = v15;
            v18 = v17;

            [_selectionFeedbackGenerator selectionChangedAtLocation:{v16, v18}];
          }

          self->_lastClickedOffset = v8;
        }
      }
    }
  }
}

- (void)_setSelectionBarRow:(int64_t)row
{
  selectionBarRow = self->_selectionBarRow;
  if (selectionBarRow != row)
  {
    self->_selectionBarRow = row;
    _containerView = [(UIPickerTableView *)self _containerView];
    if (objc_opt_respondsToSelector())
    {
      [_containerView pickerTableView:self didChangeSelectionBarRowFrom:selectionBarRow to:self->_selectionBarRow];
    }

    [(UIPickerTableView *)self _playClickIfNecessary];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  selectionBarRow = [(UIPickerTableView *)self selectionBarRow];
  v15.receiver = self;
  v15.super_class = UIPickerTableView;
  [(UITableView *)&v15 setFrame:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    v14 = [MEMORY[0x1E696AC88] indexPathForRow:selectionBarRow inSection:0];
    [(UIPickerTableView *)self _scrollRowAtIndexPathToSelectionBar:v14 animated:0];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  selectionBarRow = [(UIPickerTableView *)self selectionBarRow];
  v15.receiver = self;
  v15.super_class = UIPickerTableView;
  [(UITableView *)&v15 setBounds:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    v14 = [MEMORY[0x1E696AC88] indexPathForRow:selectionBarRow inSection:0];
    [(UIPickerTableView *)self _scrollRowAtIndexPathToSelectionBar:v14 animated:0];
  }
}

- (BOOL)_beginTrackingWithEvent:(id)event
{
  *&self->_pickerTableFlags |= 0x40u;
  v5.receiver = self;
  v5.super_class = UIPickerTableView;
  result = [(UITableView *)&v5 _beginTrackingWithEvent:event];
  *&self->_pickerTableFlags &= ~0x40u;
  return result;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = offset->y;
  [(UIPickerTableView *)self selectionBarRect:dragging];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(UIPickerTableView *)self selectionBarRect];
  v15 = y + v14;
  v38 = [(UITableView *)self indexPathsForRowsInRect:v9, v15, v11, v13];
  [(UIPickerTableView *)self selectionBarRect];
  v17 = v16;
  v18 = [v38 count];
  if (v18 != 2)
  {
    if (v18)
    {
      v22 = [v38 objectAtIndex:0];
    }

    else
    {
      v19 = [(UITableView *)self numberOfRowsInSection:0];
      v20 = v19 - 1;
      if (v19 < 1)
      {
        v26 = *MEMORY[0x1E695EFF8];
        v28 = *(MEMORY[0x1E695EFF8] + 8);
        goto LABEL_12;
      }

      [(UIView *)self bounds];
      if (CGRectGetMinY(v40) >= 0.0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = [MEMORY[0x1E696AC88] indexPathForRow:v21 inSection:0];
    }

    v35 = v22;
    [(UIPickerTableView *)self contentOffsetForRowAtIndexPath:v22];
    v26 = v36;
    v28 = v37;

LABEL_12:
    v34 = v38;
    goto LABEL_13;
  }

  v23 = v15 - v17;
  v24 = [v38 objectAtIndex:0];
  [(UIPickerTableView *)self contentOffsetForRowAtIndexPath:v24];
  v26 = v25;
  v28 = v27;

  v29 = [v38 objectAtIndex:1];
  [(UIPickerTableView *)self contentOffsetForRowAtIndexPath:v29];
  v31 = v30;
  v33 = v32;

  v34 = v38;
  if (vabdd_f64(v23, v28) >= vabdd_f64(v23, v33))
  {
    v28 = v33;
    v26 = v31;
  }

LABEL_13:
  offset->x = v26;
  offset->y = v28;
}

- (CGPoint)contentOffsetForRowAtIndexPath:(id)path
{
  [(UITableView *)self rectForRowAtIndexPath:path];
  x = v9.origin.x;
  MinY = CGRectGetMinY(v9);
  [(UIPickerTableView *)self selectionBarRect];
  v6 = MinY - CGRectGetMinY(v10);
  v7 = x;
  result.y = v6;
  result.x = v7;
  return result;
}

- (void)_scrollingFinished
{
  if ((*&self->_pickerTableFlags & 0x40) == 0)
  {
    if ([(UIPickerTableView *)self didSelectDisabled:1])
    {
      v3 = 0;
    }

    else if ((*&self->_pickerTableFlags & 0x20) != 0)
    {
      v3 = 1;
    }

    else
    {
      _pickerView = [(UIPickerTableView *)self _pickerView];
      v3 = [_pickerView _usesCheckSelection] ^ 1;
    }

    _pickerView2 = [(UIPickerTableView *)self _pickerView];
    [_pickerView2 _sendSelectionChangedFromTable:self notify:v3];

    pickerTableFlags = self->_pickerTableFlags;
    *&self->_pickerTableFlags = pickerTableFlags & 0xDF;
    if ((pickerTableFlags & 0x10) != 0)
    {
      *&self->_pickerTableFlags = pickerTableFlags & 0xCF;

      [(UIPickerTableView *)self _playClickIfNecessary];
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  if ((*&self->_pickerTableFlags & 8) != 0)
  {
    *&self->_pickerTableFlags &= ~8u;
  }

  if (!self->_generatorActivated)
  {
    _pickerView = [(UIPickerTableView *)self _pickerView];
    _selectionFeedbackGenerator = [_pickerView _selectionFeedbackGenerator];
    [_selectionFeedbackGenerator activateWithCompletionBlock:0];

    self->_generatorActivated = 1;
  }

  window = [(UIView *)self window];
  windowScene = [window windowScene];
  [windowScene _setReachabilitySupported:0 forReason:@"UIPickerTableView scrollViewWillBeginDragging"];
}

- (void)_deactivateFeedbackGeneratorIfNeeded
{
  _pickerView = [(UIPickerTableView *)self _pickerView];
  _selectionFeedbackGenerator = [_pickerView _selectionFeedbackGenerator];

  if (self->_generatorActivated)
  {
    [_selectionFeedbackGenerator deactivate];
    self->_generatorActivated = 0;
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(UIPickerTableView *)self _scrollingFinished];
    [(UIPickerTableView *)self _deactivateFeedbackGeneratorIfNeeded];
  }

  window = [(UIView *)self window];
  windowScene = [window windowScene];
  [windowScene _setReachabilitySupported:1 forReason:@"UIPickerTableView scrollViewDidEndDragging"];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  [(UIPickerTableView *)self _scrollingFinished];

  [(UIPickerTableView *)self _deactivateFeedbackGeneratorIfNeeded];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [(UITableView *)self deselectRowAtIndexPath:pathCopy animated:1];
  v6 = [pathCopy row];

  [(UIPickerTableView *)self selectRow:v6 animated:1 notify:1];
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  _pickerView = [(UIPickerTableView *)self _pickerView];
  if ([_pickerView _usesCheckedSelection])
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(pathCopy inSection:{"row"), objc_msgSend(pathCopy, "section")}];
    v8 = [(UITableView *)self cellForRowAtIndexPath:v7];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      wrappedView = [v8 wrappedView];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([wrappedView _isSelectable])
        {
          v10 = pathCopy;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        goto LABEL_11;
      }
    }
  }

  v11 = pathCopy;
LABEL_11:

  return v11;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v6 = +[UIColor clearColor];
  [cellCopy setBackgroundColor:v6];

  [cellCopy setPickerTable:self];
  [(NSMutableArray *)self->_referencingCells addObject:cellCopy];
}

- (void)_setTextColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_textColor] & 1) == 0)
  {
    objc_storeStrong(&self->_textColor, color);
  }
}

- (CGRect)selectionBarRect
{
  x = self->_selectionBarRect.origin.x;
  y = self->_selectionBarRect.origin.y;
  width = self->_selectionBarRect.size.width;
  height = self->_selectionBarRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
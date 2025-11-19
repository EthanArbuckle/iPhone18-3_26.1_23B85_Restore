@interface UIPickerTableView
- (BOOL)_beginTrackingWithEvent:(id)a3;
- (BOOL)_scrollRowAtIndexPathToSelectionBar:(id)a3 animated:(BOOL)a4;
- (BOOL)didSelectDisabled:(BOOL)a3;
- (BOOL)selectRow:(int64_t)a3 animated:(BOOL)a4 notify:(BOOL)a5 updateChecked:(BOOL)a6;
- (CATransform3D)_transformForCellAtY:(SEL)a3;
- (CGPoint)contentOffsetForRowAtIndexPath:(id)a3;
- (CGRect)_selectionBarRectForBounds:(CGRect)a3;
- (CGRect)_visibleBounds;
- (CGRect)selectionBarRect;
- (UIPickerTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4 visibleRect:(CGRect)a5;
- (id)_anyDateLabel;
- (id)_checkedRows;
- (id)_containerView;
- (id)_pickerView;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)_deactivateFeedbackGeneratorIfNeeded;
- (void)_notifyContentOffsetChange;
- (void)_playClickIfNecessary;
- (void)_rectChangedWithNewSize:(CGSize)a3 oldSize:(CGSize)a4;
- (void)_scrollViewAnimationEnded:(id)a3 finished:(BOOL)a4;
- (void)_scrollingFinished;
- (void)_setContentOffset:(CGPoint)a3 notify:(BOOL)a4;
- (void)_setSelectionBarRow:(int64_t)a3;
- (void)_setTextColor:(id)a3;
- (void)_updateContentInsets;
- (void)dealloc;
- (void)layoutSubviews;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation UIPickerTableView

- (UIPickerTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4 visibleRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v20.receiver = self;
  v20.super_class = UIPickerTableView;
  v9 = [(UITableView *)&v20 initWithFrame:a4 style:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v16 = [(UITableView *)v11 _scrollView];
    [v16 _setSupportsPointerDragScrolling:1];
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
  v2 = [(UIView *)self superview];
  if (v2)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 superview];

      v2 = v3;
    }

    while (v3);
  }

  return v2;
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

- (CGRect)_selectionBarRectForBounds:(CGRect)a3
{
  p_selectionBarRect = &self->_selectionBarRect;
  MinY = CGRectGetMinY(a3);
  x = p_selectionBarRect->origin.x;
  y = p_selectionBarRect->origin.y;
  width = p_selectionBarRect->size.width;
  height = p_selectionBarRect->size.height;

  return CGRectOffset(*&x, 0.0, MinY);
}

- (BOOL)_scrollRowAtIndexPathToSelectionBar:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 row];
  if (v7 >= [(UITableView *)self numberOfRowsInSection:0])
  {
    v14 = 0;
  }

  else
  {
    -[UIPickerTableView _setSelectionBarRow:](self, "_setSelectionBarRow:", [v6 row]);
    *&self->_pickerTableFlags |= 0x40u;
    [(UIScrollView *)self stopScrollingAndZooming];
    *&self->_pickerTableFlags &= ~0x40u;
    [(UIPickerTableView *)self contentOffsetForRowAtIndexPath:v6];
    v9 = v8;
    v11 = v10;
    [(UIScrollView *)self contentOffset];
    v14 = v11 != v13 || v9 != v12;
    [(UIScrollView *)self setContentOffset:v4 animated:v9, v11];
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

- (BOOL)selectRow:(int64_t)a3 animated:(BOOL)a4 notify:(BOOL)a5 updateChecked:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v11 = [(UIPickerTableView *)self _checkedRows];
  v12 = [(UIPickerTableView *)self _pickerView];
  v13 = [(UITableView *)self allowsMultipleSelection];
  v14 = v13;
  if (v6)
  {
    if (!v13)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __61__UIPickerTableView_selectRow_animated_notify_updateChecked___block_invoke;
      v34[3] = &unk_1E70FD030;
      v36 = a3;
      v34[4] = self;
      v35 = v12;
      [v11 enumerateIndexesUsingBlock:v34];
      [v11 removeAllIndexes];
    }

    [v11 addIndex:a3];
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
  v27[6] = a3;
  [UIView performWithoutAnimation:v27];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & v6) == 1)
  {
    v15 = [v29[5] wrappedView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v14 && ([v15 isChecked] & 1) != 0)
      {
        if ([v15 isChecked])
        {
          [v11 removeIndex:a3];
        }

        v16 = 0;
        v17 = 0;
      }

      else
      {
        v17 = [v15 isChecked] ^ 1;
        v16 = 1;
      }

      [v15 setChecked:v16];
      [v12 _sendCheckedRow:a3 inTableView:self checked:v16];
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

  if (v7)
  {
    v18 = 16;
  }

  else
  {
    v18 = 24;
  }

  *&self->_pickerTableFlags = *&self->_pickerTableFlags & 0xE7 | v18;
  v19 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:0];
  v20 = [(UIPickerTableView *)self _scrollRowAtIndexPathToSelectionBar:v19 animated:v8]&& v8;

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
  if (!v20 && (v17 & [v12 _usesCheckSelection]) == 1)
  {
    v25 = [(UIPickerTableView *)self _pickerView];
    [v25 _sendSelectionChangedFromTable:self notify:1];
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

- (BOOL)didSelectDisabled:(BOOL)a3
{
  pickerTableFlags = self->_pickerTableFlags;
  if (a3)
  {
    *&self->_pickerTableFlags = *&pickerTableFlags & 0xF7;
  }

  return (*&pickerTableFlags >> 3) & 1;
}

- (void)_rectChangedWithNewSize:(CGSize)a3 oldSize:(CGSize)a4
{
  v5.receiver = self;
  v5.super_class = UIPickerTableView;
  [(UITableView *)&v5 _rectChangedWithNewSize:a3.width oldSize:a3.height, a4.width, a4.height];
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
    v12 = [(UIPickerTableView *)self selectionBarRow];
    *&self->_pickerTableFlags |= 0x80u;
    [(UITableView *)self setContentInset:MinY, 0.0, v6, 0.0];
    *&self->_pickerTableFlags &= ~0x80u;
    if (v12 != -1)
    {
      v13 = [MEMORY[0x1E696AC88] indexPathForRow:-[UIPickerTableView selectionBarRow](self inSection:{"selectionBarRow"), 0}];
      [(UIPickerTableView *)self _scrollRowAtIndexPathToSelectionBar:v13 animated:0];
    }
  }
}

- (CATransform3D)_transformForCellAtY:(SEL)a3
{
  v7 = [(UIView *)self traitCollection];
  v19 = +[UIPickerView _styleForIdiom:](UIPickerView, "_styleForIdiom:", [v7 userInterfaceIdiom]);

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
  v3 = [(UIPickerTableView *)self _containerView];
  if (objc_opt_respondsToSelector())
  {
    [v3 _pickerTableViewDidChangeContentOffset:self];
  }
}

- (void)_setContentOffset:(CGPoint)a3 notify:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
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
  v25 = [(UIView *)self window];

  if (v25)
  {
    if (v4)
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
  v2 = [(UITableView *)self visibleCells];
  if ([v2 count])
  {
    v3 = [v2 lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 _anyDateLabel];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_scrollViewAnimationEnded:(id)a3 finished:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = UIPickerTableView;
  [(UITableView *)&v5 _scrollViewAnimationEnded:a3 finished:a4];
  *&self->_pickerTableFlags &= 0xF9u;
}

- (id)_containerView
{
  v2 = [(UIView *)self superview];
  if (v2)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 superview];

      v2 = v3;
    }

    while (v3);
  }

  return v2;
}

- (void)_playClickIfNecessary
{
  if (self->_playsFeedback && (*&self->_pickerTableFlags & 0x10) == 0)
  {
    v3 = [(UIView *)self window];
    if (v3)
    {
      v4 = v3;
      v5 = [(UIPickerTableView *)self _pickerView];
      v6 = [v5 _soundsEnabled];

      if (v6)
      {
        [(UIScrollView *)self contentOffset];
        v8 = v7;
        v9 = self->_lastClickedOffset - v7;
        v10 = v9 >= 0.0 ? self->_lastClickedOffset - v7 : -v9;
        [(UITableView *)self rowHeight];
        if (v10 >= v11 * 0.5)
        {
          v12 = [(UIPickerTableView *)self _pickerView];
          [v12 _willPlayClickSound];

          v13 = [(UIPickerTableView *)self _pickerView];
          v19 = [v13 _selectionFeedbackGenerator];

          if (self->_generatorActivated)
          {
            v14 = [(UIPickerTableView *)self _containerView];
            [v14 center];
            v16 = v15;
            v18 = v17;

            [v19 selectionChangedAtLocation:{v16, v18}];
          }

          self->_lastClickedOffset = v8;
        }
      }
    }
  }
}

- (void)_setSelectionBarRow:(int64_t)a3
{
  selectionBarRow = self->_selectionBarRow;
  if (selectionBarRow != a3)
  {
    self->_selectionBarRow = a3;
    v5 = [(UIPickerTableView *)self _containerView];
    if (objc_opt_respondsToSelector())
    {
      [v5 pickerTableView:self didChangeSelectionBarRowFrom:selectionBarRow to:self->_selectionBarRow];
    }

    [(UIPickerTableView *)self _playClickIfNecessary];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v12 = [(UIPickerTableView *)self selectionBarRow];
  v15.receiver = self;
  v15.super_class = UIPickerTableView;
  [(UITableView *)&v15 setFrame:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    v14 = [MEMORY[0x1E696AC88] indexPathForRow:v12 inSection:0];
    [(UIPickerTableView *)self _scrollRowAtIndexPathToSelectionBar:v14 animated:0];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v12 = [(UIPickerTableView *)self selectionBarRow];
  v15.receiver = self;
  v15.super_class = UIPickerTableView;
  [(UITableView *)&v15 setBounds:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    v14 = [MEMORY[0x1E696AC88] indexPathForRow:v12 inSection:0];
    [(UIPickerTableView *)self _scrollRowAtIndexPathToSelectionBar:v14 animated:0];
  }
}

- (BOOL)_beginTrackingWithEvent:(id)a3
{
  *&self->_pickerTableFlags |= 0x40u;
  v5.receiver = self;
  v5.super_class = UIPickerTableView;
  result = [(UITableView *)&v5 _beginTrackingWithEvent:a3];
  *&self->_pickerTableFlags &= ~0x40u;
  return result;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a5->y;
  [(UIPickerTableView *)self selectionBarRect:a3];
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
  a5->x = v26;
  a5->y = v28;
}

- (CGPoint)contentOffsetForRowAtIndexPath:(id)a3
{
  [(UITableView *)self rectForRowAtIndexPath:a3];
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
      v4 = [(UIPickerTableView *)self _pickerView];
      v3 = [v4 _usesCheckSelection] ^ 1;
    }

    v5 = [(UIPickerTableView *)self _pickerView];
    [v5 _sendSelectionChangedFromTable:self notify:v3];

    pickerTableFlags = self->_pickerTableFlags;
    *&self->_pickerTableFlags = pickerTableFlags & 0xDF;
    if ((pickerTableFlags & 0x10) != 0)
    {
      *&self->_pickerTableFlags = pickerTableFlags & 0xCF;

      [(UIPickerTableView *)self _playClickIfNecessary];
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  if ((*&self->_pickerTableFlags & 8) != 0)
  {
    *&self->_pickerTableFlags &= ~8u;
  }

  if (!self->_generatorActivated)
  {
    v4 = [(UIPickerTableView *)self _pickerView];
    v5 = [v4 _selectionFeedbackGenerator];
    [v5 activateWithCompletionBlock:0];

    self->_generatorActivated = 1;
  }

  v7 = [(UIView *)self window];
  v6 = [v7 windowScene];
  [v6 _setReachabilitySupported:0 forReason:@"UIPickerTableView scrollViewWillBeginDragging"];
}

- (void)_deactivateFeedbackGeneratorIfNeeded
{
  v3 = [(UIPickerTableView *)self _pickerView];
  v4 = [v3 _selectionFeedbackGenerator];

  if (self->_generatorActivated)
  {
    [v4 deactivate];
    self->_generatorActivated = 0;
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(UIPickerTableView *)self _scrollingFinished];
    [(UIPickerTableView *)self _deactivateFeedbackGeneratorIfNeeded];
  }

  v6 = [(UIView *)self window];
  v5 = [v6 windowScene];
  [v5 _setReachabilitySupported:1 forReason:@"UIPickerTableView scrollViewDidEndDragging"];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  [(UIPickerTableView *)self _scrollingFinished];

  [(UIPickerTableView *)self _deactivateFeedbackGeneratorIfNeeded];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  [(UITableView *)self deselectRowAtIndexPath:v5 animated:1];
  v6 = [v5 row];

  [(UIPickerTableView *)self selectRow:v6 animated:1 notify:1];
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(UIPickerTableView *)self _pickerView];
  if ([v6 _usesCheckedSelection])
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(v5 inSection:{"row"), objc_msgSend(v5, "section")}];
    v8 = [(UITableView *)self cellForRowAtIndexPath:v7];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 wrappedView];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v9 _isSelectable])
        {
          v10 = v5;
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

  v11 = v5;
LABEL_11:

  return v11;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a4;
  v6 = +[UIColor clearColor];
  [v7 setBackgroundColor:v6];

  [v7 setPickerTable:self];
  [(NSMutableArray *)self->_referencingCells addObject:v7];
}

- (void)_setTextColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_textColor] & 1) == 0)
  {
    objc_storeStrong(&self->_textColor, a3);
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
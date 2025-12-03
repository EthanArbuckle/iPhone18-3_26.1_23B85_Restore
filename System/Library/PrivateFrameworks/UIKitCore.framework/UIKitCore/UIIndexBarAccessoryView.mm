@interface UIIndexBarAccessoryView
+ (void)makeIndexBarView:(id *)view scrollAccessoryContainerView:(id *)containerView forTraits:(id)traits;
- (BOOL)_selectEntry:(id)entry atIndex:(int64_t)index;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)overlay;
- (UIScrollView)scrollView;
- (id)displayEntryNearestToContentOffset:(CGPoint)offset;
- (void)_horizontalSizeClassDidChange;
- (void)setEntries:(id)entries;
- (void)update;
@end

@implementation UIIndexBarAccessoryView

- (void)update
{
  visualStyle = [(UIIndexBarView *)self visualStyle];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(UIIndexBarView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      entries = [(UIIndexBarView *)self entries];
      v5 = [entries count];

      if (v5)
      {
        edge = [(UIIndexBarAccessoryView *)self edge];
        v7 = edge != 2;
        v8 = edge != 4;
        WeakRetained = objc_loadWeakRetained(&self->_scrollView);
        [WeakRetained _minimumContentOffset];
        v11 = v10;
        v13 = v12;

        v14 = objc_loadWeakRetained(&self->_scrollView);
        [v14 _maximumContentOffset];
        v16 = v15;
        v18 = v17;

        v19 = v7 && v8;
        if (v7 && v8)
        {
          v20 = v18;
        }

        else
        {
          v20 = v16;
        }

        if (v7 && v8)
        {
          v21 = v13;
        }

        else
        {
          v21 = v11;
        }

        v22 = v20 - v21;
        v23 = -1.0;
        if (v20 - v21 > 0.0)
        {
          v24 = objc_loadWeakRetained(&self->_scrollView);
          [v24 contentOffset];
          v26 = v25;
          v28 = v27;

          v29 = v7 && v8 ? v28 : v26;
          v30 = (v29 - v21) / v22;
          v23 = -2.0;
          if (v30 >= 0.0)
          {
            if (v30 <= 1.0)
            {
              entries2 = [(UIIndexBarView *)self entries];
              v32 = [entries2 count] - 1;

              if (v32 < 2)
              {
                v33 = 0;
                v35 = 0.0;
                v36 = INFINITY;
              }

              else
              {
                v33 = 0;
                v34 = llround(v30 * v32);
                v35 = 0.0;
                v36 = INFINITY;
                do
                {
                  delegate2 = [(UIIndexBarView *)self delegate];
                  entries3 = [(UIIndexBarView *)self entries];
                  v39 = [entries3 objectAtIndexedSubscript:v34];
                  [delegate2 indexBarAccessoryView:self contentOffsetForEntry:v39 atIndex:v34];
                  v41 = v40;
                  v43 = v42;

                  if (v19)
                  {
                    v44 = v43;
                  }

                  else
                  {
                    v44 = v41;
                  }

                  if (v44 >= v29)
                  {
                    if (v44 <= v29)
                    {
                      v32 = v34;
                      v45 = v34;
                    }

                    else
                    {
                      v45 = v34 - 1;
                      v32 = v34;
                      v36 = v44;
                      v34 = v33;
                    }
                  }

                  else
                  {
                    v45 = v34 + 1;
                    v35 = v44;
                  }

                  v33 = v34;
                  v46 = v32 - v34;
                  v34 = v45;
                }

                while (v46 > 1);
              }

              if (v32 == v33)
              {
                v23 = v32;
              }

              else if (v32 >= v33)
              {
                if (v35 == 0.0)
                {
                  delegate3 = [(UIIndexBarView *)self delegate];
                  entries4 = [(UIIndexBarView *)self entries];
                  v49 = [entries4 objectAtIndexedSubscript:v33];
                  [delegate3 indexBarAccessoryView:self contentOffsetForEntry:v49 atIndex:v33];
                  v51 = v50;
                  v53 = v52;

                  if (v19)
                  {
                    v35 = v53;
                  }

                  else
                  {
                    v35 = v51;
                  }
                }

                if (v36 == INFINITY)
                {
                  delegate4 = [(UIIndexBarView *)self delegate];
                  entries5 = [(UIIndexBarView *)self entries];
                  v56 = [entries5 objectAtIndexedSubscript:v32];
                  [delegate4 indexBarAccessoryView:self contentOffsetForEntry:v56 atIndex:v32];
                  v58 = v57;
                  v60 = v59;

                  if (v19)
                  {
                    v36 = v60;
                  }

                  else
                  {
                    v36 = v58;
                  }
                }

                if (v29 >= v35)
                {
                  v23 = -3.0;
                  if (v29 <= v36)
                  {
                    v23 = (v29 - v35) / (v36 - v35) + v33;
                  }
                }
              }

              else
              {
                v23 = v33 + 0.5;
              }
            }

            else
            {
              v23 = -3.0;
            }
          }
        }

        [(UIIndexBarView *)self setHighlightedIndex:v23];
      }

      return;
    }
  }
}

- (BOOL)overlay
{
  visualStyle = [(UIIndexBarView *)self visualStyle];
  overlay = [visualStyle overlay];

  return overlay;
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

+ (void)makeIndexBarView:(id *)view scrollAccessoryContainerView:(id *)containerView forTraits:(id)traits
{
  traitsCopy = traits;
  if (!view)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIIndexBarAccessoryView.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"indexBarView != nil"}];

    if (containerView)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIIndexBarAccessoryView.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"containerView != nil"}];

    goto LABEL_3;
  }

  if (!containerView)
  {
    goto LABEL_8;
  }

LABEL_3:
  v17 = 0;
  v18 = 0;
  [self makeIndexBarView:&v18 containerView:&v17 forTraits:traitsCopy];
  v10 = v18;
  v11 = v17;
  if (v10 != v11 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v12 = [[_UIIndexBarScrollAccessoryContainerAdapterView alloc] initWithContents:v11 delegatingToView:v10];

    v11 = v12;
  }

  v13 = v10;
  *view = v10;
  v14 = v11;
  *containerView = v11;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"contents"])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIIndexBarAccessoryView;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (void)setEntries:(id)entries
{
  v5.receiver = self;
  v5.super_class = UIIndexBarAccessoryView;
  [(UIIndexBarView *)&v5 setEntries:entries];
  scrollView = [(UIIndexBarAccessoryView *)self scrollView];
  [scrollView _updateAccessories];
}

- (BOOL)_selectEntry:(id)entry atIndex:(int64_t)index
{
  entryCopy = entry;
  delegate = [(UIIndexBarView *)self delegate];
  if (!delegate)
  {
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [delegate indexBarView:self didSelectEntry:entryCopy atIndex:index];
    goto LABEL_10;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  scrollView = [(UIIndexBarAccessoryView *)self scrollView];
  delegate2 = [(UIIndexBarView *)self delegate];
  [delegate2 indexBarAccessoryView:self contentOffsetForEntry:entryCopy atIndex:index];
  v12 = v11;
  v14 = v13;

  [scrollView contentOffset];
  v16 = v15;
  v18 = v17;
  [scrollView setContentOffset:0 animated:{v12, v14}];
  [scrollView contentOffset];
  v21 = vabdd_f64(v19, v16) >= 0.00000011920929;
  v8 = vabdd_f64(v20, v18) >= 0.00000011920929 || v21;

LABEL_10:
  return v8;
}

- (id)displayEntryNearestToContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__242;
  v16 = __Block_byref_object_dispose__242;
  v17 = 0;
  delegate = [(UIIndexBarView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    displayEntries = [(UIIndexBarView *)self displayEntries];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__UIIndexBarAccessoryView_displayEntryNearestToContentOffset___block_invoke;
    v11[3] = &unk_1E712A500;
    *&v11[6] = x;
    *&v11[7] = y;
    v11[4] = self;
    v11[5] = &v12;
    [displayEntries enumerateObjectsUsingBlock:v11];
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __62__UIIndexBarAccessoryView_displayEntryNearestToContentOffset___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v7 = [v12 entry];
  v8 = v7;
  if (v7 && [v7 type] != 1)
  {
    v9 = [*(a1 + 32) delegate];
    [v9 indexBarAccessoryView:*(a1 + 32) contentOffsetForEntry:v8 atIndex:{objc_msgSend(v12, "entryIndex")}];
    v11 = v10;

    if (v11 <= *(a1 + 56))
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }

    else
    {
      *a4 = 1;
    }
  }
}

- (void)_horizontalSizeClassDidChange
{
  v4.receiver = self;
  v4.super_class = UIIndexBarAccessoryView;
  [(UIIndexBarView *)&v4 _horizontalSizeClassDidChange];
  scrollView = [(UIIndexBarAccessoryView *)self scrollView];
  [scrollView _updateAccessories];
}

@end
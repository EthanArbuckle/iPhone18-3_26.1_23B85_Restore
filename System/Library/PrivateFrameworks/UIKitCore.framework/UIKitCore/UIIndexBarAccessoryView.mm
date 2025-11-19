@interface UIIndexBarAccessoryView
+ (void)makeIndexBarView:(id *)a3 scrollAccessoryContainerView:(id *)a4 forTraits:(id)a5;
- (BOOL)_selectEntry:(id)a3 atIndex:(int64_t)a4;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)overlay;
- (UIScrollView)scrollView;
- (id)displayEntryNearestToContentOffset:(CGPoint)a3;
- (void)_horizontalSizeClassDidChange;
- (void)setEntries:(id)a3;
- (void)update;
@end

@implementation UIIndexBarAccessoryView

- (void)update
{
  v61 = [(UIIndexBarView *)self visualStyle];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(UIIndexBarView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = [(UIIndexBarView *)self entries];
      v5 = [v4 count];

      if (v5)
      {
        v6 = [(UIIndexBarAccessoryView *)self edge];
        v7 = v6 != 2;
        v8 = v6 != 4;
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
              v31 = [(UIIndexBarView *)self entries];
              v32 = [v31 count] - 1;

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
                  v37 = [(UIIndexBarView *)self delegate];
                  v38 = [(UIIndexBarView *)self entries];
                  v39 = [v38 objectAtIndexedSubscript:v34];
                  [v37 indexBarAccessoryView:self contentOffsetForEntry:v39 atIndex:v34];
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
                  v47 = [(UIIndexBarView *)self delegate];
                  v48 = [(UIIndexBarView *)self entries];
                  v49 = [v48 objectAtIndexedSubscript:v33];
                  [v47 indexBarAccessoryView:self contentOffsetForEntry:v49 atIndex:v33];
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
                  v54 = [(UIIndexBarView *)self delegate];
                  v55 = [(UIIndexBarView *)self entries];
                  v56 = [v55 objectAtIndexedSubscript:v32];
                  [v54 indexBarAccessoryView:self contentOffsetForEntry:v56 atIndex:v32];
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
  v2 = [(UIIndexBarView *)self visualStyle];
  v3 = [v2 overlay];

  return v3;
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

+ (void)makeIndexBarView:(id *)a3 scrollAccessoryContainerView:(id *)a4 forTraits:(id)a5
{
  v9 = a5;
  if (!a3)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"UIIndexBarAccessoryView.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"indexBarView != nil"}];

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_8:
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"UIIndexBarAccessoryView.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"containerView != nil"}];

    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_3:
  v17 = 0;
  v18 = 0;
  [a1 makeIndexBarView:&v18 containerView:&v17 forTraits:v9];
  v10 = v18;
  v11 = v17;
  if (v10 != v11 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v12 = [[_UIIndexBarScrollAccessoryContainerAdapterView alloc] initWithContents:v11 delegatingToView:v10];

    v11 = v12;
  }

  v13 = v10;
  *a3 = v10;
  v14 = v11;
  *a4 = v11;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"contents"])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIIndexBarAccessoryView;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (void)setEntries:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIIndexBarAccessoryView;
  [(UIIndexBarView *)&v5 setEntries:a3];
  v4 = [(UIIndexBarAccessoryView *)self scrollView];
  [v4 _updateAccessories];
}

- (BOOL)_selectEntry:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(UIIndexBarView *)self delegate];
  if (!v7)
  {
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 indexBarView:self didSelectEntry:v6 atIndex:a4];
    goto LABEL_10;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v9 = [(UIIndexBarAccessoryView *)self scrollView];
  v10 = [(UIIndexBarView *)self delegate];
  [v10 indexBarAccessoryView:self contentOffsetForEntry:v6 atIndex:a4];
  v12 = v11;
  v14 = v13;

  [v9 contentOffset];
  v16 = v15;
  v18 = v17;
  [v9 setContentOffset:0 animated:{v12, v14}];
  [v9 contentOffset];
  v21 = vabdd_f64(v19, v16) >= 0.00000011920929;
  v8 = vabdd_f64(v20, v18) >= 0.00000011920929 || v21;

LABEL_10:
  return v8;
}

- (id)displayEntryNearestToContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__242;
  v16 = __Block_byref_object_dispose__242;
  v17 = 0;
  v6 = [(UIIndexBarView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(UIIndexBarView *)self displayEntries];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__UIIndexBarAccessoryView_displayEntryNearestToContentOffset___block_invoke;
    v11[3] = &unk_1E712A500;
    *&v11[6] = x;
    *&v11[7] = y;
    v11[4] = self;
    v11[5] = &v12;
    [v8 enumerateObjectsUsingBlock:v11];
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
  v3 = [(UIIndexBarAccessoryView *)self scrollView];
  [v3 _updateAccessories];
}

@end
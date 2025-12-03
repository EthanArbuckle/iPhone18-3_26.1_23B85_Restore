@interface UISearchResultsTableView
- (UISearchDisplayController)controller;
- (UISearchResultsTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (double)_offsetForNoResultsMessage;
- (void)_numberOfRowsDidChange;
- (void)_setTopShadowView:(id)view;
- (void)setContentOffset:(CGPoint)offset;
@end

@implementation UISearchResultsTableView

- (UISearchResultsTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = UISearchResultsTableView;
  result = [(UITableView *)&v5 initWithFrame:style style:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_offsetForNoResultsMessage = -1.0;
  }

  return result;
}

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  [(UIView *)self bounds];
  if (v7 != x || v6 != y)
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    [WeakRetained _managedTableViewDidScroll];
  }

  v14.receiver = self;
  v14.super_class = UISearchResultsTableView;
  [(UITableView *)&v14 setContentOffset:x, y];
  if (self->_topShadowView)
  {
    [(UIScrollView *)self _effectiveContentInset];
    v11 = y + v10;
    [(UIView *)self frame];
    v13 = v12;
    [(UIView *)self->_topShadowView frame];
    [(UIView *)self->_topShadowView setFrame:0.0, v11, v13];
  }
}

- (void)_numberOfRowsDidChange
{
  v4.receiver = self;
  v4.super_class = UISearchResultsTableView;
  [(UITableView *)&v4 _numberOfRowsDidChange];
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained _updateNoSearchResultsMessageVisiblity];
}

- (double)_offsetForNoResultsMessage
{
  offsetForNoResultsMessage = self->_offsetForNoResultsMessage;
  if (offsetForNoResultsMessage < 0.0)
  {
    window = [(UIView *)self window];
    if (window)
    {
      +[UIKeyboard defaultFrameForInterfaceOrientation:](UIKeyboard, "defaultFrameForInterfaceOrientation:", [UIApp _sceneInterfaceOrientationFromWindow:window]);
      [window convertRect:0 fromWindow:?];
      [(UIView *)self convertRect:0 fromView:?];
      v6 = v5;
      v8 = v7;
      [(UIView *)self bounds:v10];
    }

    else
    {
      if (os_variant_has_internal_diagnostics())
      {
        v27 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          *v31 = 0;
          _os_log_fault_impl(&dword_188A29000, v27, OS_LOG_TYPE_FAULT, "keyboardFrame can't be calculated when window is nil", v31, 2u);
        }
      }

      else
      {
        v26 = *(__UILogGetCategoryCachedImpl("Assert", &_offsetForNoResultsMessage___s_category) + 8);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "keyboardFrame can't be calculated when window is nil", buf, 2u);
        }
      }

      v6 = *(MEMORY[0x1E695F058] + 16);
      v8 = *(MEMORY[0x1E695F058] + 24);
      [(UIView *)self bounds:*(MEMORY[0x1E695F058] + 8)];
    }

    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    MinY = CGRectGetMinY(*&v11);
    v32.origin.y = v28;
    v32.origin.x = v29;
    v32.size.width = v6;
    v32.size.height = v8;
    if (MinY < CGRectGetMinY(v32))
    {
      v33.origin.x = v15;
      v33.origin.y = v16;
      v33.size.width = v17;
      v33.size.height = v18;
      MaxY = CGRectGetMaxY(v33);
      v34.origin.y = v28;
      v34.origin.x = v29;
      v34.size.width = v6;
      v34.size.height = v8;
      if (MaxY > CGRectGetMinY(v34))
      {
        v35.origin.y = v28;
        v35.origin.x = v29;
        v35.size.width = v6;
        v35.size.height = v8;
        v21 = CGRectGetMinY(v35);
        v36.origin.x = v15;
        v36.origin.y = v16;
        v36.size.width = v17;
        v36.size.height = v18;
        v18 = v21 - CGRectGetMinY(v36);
      }
    }

    if ([(UITableView *)self numberOfSections]>= 1)
    {
      [(UITableView *)self rectForHeaderInSection:0];
      offsetForNoResultsMessage = CGRectGetMaxY(v37);
    }

    [(UITableView *)self _spacingForExtraSeparators];
    v23 = v22;
    v24 = offsetForNoResultsMessage;
    do
    {
      offsetForNoResultsMessage = v24;
      v24 = v23 + v24;
      v38.origin.x = v15;
      v38.origin.y = v16;
      v38.size.width = v17;
      v38.size.height = v18;
    }

    while (v24 < CGRectGetMidY(v38));
  }

  return offsetForNoResultsMessage;
}

- (void)_setTopShadowView:(id)view
{
  v22 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  topShadowView = self->_topShadowView;
  if (topShadowView != viewCopy)
  {
    [(UIView *)topShadowView removeFromSuperview];
    objc_storeStrong(&self->_topShadowView, view);
    [(UIView *)self->_topShadowView setAutoresizingMask:2];
    [(UIView *)self frame];
    v8 = v7;
    [(UIView *)self->_topShadowView frame];
    [(UIView *)self->_topShadowView setFrame:0.0, 0.0, v8];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    subviews = [(UIView *)self subviews];
    v10 = [subviews countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (!v10)
    {

      goto LABEL_17;
    }

    v11 = v10;
    v12 = 0;
    v13 = *v18;
LABEL_4:
    v14 = 0;
    while (1)
    {
      if (*v18 != v13)
      {
        objc_enumerationMutation(subviews);
      }

      v15 = *(*(&v17 + 1) + 8 * v14);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;

        v12 = v16;
      }

      else if (v12)
      {

        goto LABEL_15;
      }

      if (v11 == ++v14)
      {
        v11 = [subviews countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          goto LABEL_4;
        }

        if (!v12)
        {
LABEL_17:
          [(UIView *)self addSubview:self->_topShadowView];
          break;
        }

LABEL_15:
        [(UIView *)self insertSubview:self->_topShadowView aboveSubview:v12];

        break;
      }
    }
  }
}

- (UISearchDisplayController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end
@interface TKTonePickerTableView
- (TKTonePickerTableViewLayoutMarginsObserver)layoutMarginsObserver;
- (TKTonePickerTableViewSeparatorObserver)separatorObserver;
- (UIEdgeInsets)tk_rawSectionContentInset;
- (void)_handleSeparatorColorDidChange;
- (void)_setSectionContentInset:(UIEdgeInsets)a3;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)performBlockEnsuringContentOffsetRemainsUnchanged:(id)a3;
- (void)setSeparatorColor:(id)a3;
@end

@implementation TKTonePickerTableView

- (void)_setSectionContentInset:(UIEdgeInsets)a3
{
  self->_tk_rawSectionContentInset = a3;
  v3.receiver = self;
  v3.super_class = TKTonePickerTableView;
  [(TKTonePickerTableView *)&v3 _setSectionContentInset:?];
}

- (void)performBlockEnsuringContentOffsetRemainsUnchanged:(id)a3
{
  v4 = a3;
  [(TKTonePickerTableView *)self contentOffset];
  v6 = v5;
  v8 = v7;
  v4[2](v4);

  [(TKTonePickerTableView *)self contentOffset];
  if (!TKPointEqualToPoint(v6, v8, v9, v10))
  {

    [(TKTonePickerTableView *)self setContentOffset:v6, v8];
  }
}

- (void)layoutMarginsDidChange
{
  v4.receiver = self;
  v4.super_class = TKTonePickerTableView;
  [(TKTonePickerTableView *)&v4 layoutMarginsDidChange];
  v3 = [(TKTonePickerTableView *)self layoutMarginsObserver];
  if (objc_opt_respondsToSelector())
  {
    [v3 layoutMarginsDidChangeInTonePickerTableView:self];
  }
}

- (void)_handleSeparatorColorDidChange
{
  v3 = [(TKTonePickerTableView *)self separatorObserver];
  if (objc_opt_respondsToSelector())
  {
    [v3 separatorColorDidChangeInTonePickerTableView:self];
  }
}

- (void)setSeparatorColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = TKTonePickerTableView;
  [(TKTonePickerTableView *)&v4 setSeparatorColor:a3];
  [(TKTonePickerTableView *)self _handleSeparatorColorDidChange];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TKTonePickerTableView;
  [(TKTonePickerTableView *)&v3 layoutSubviews];
  [(TKTonePickerTableView *)self _handleSeparatorColorDidChange];
}

- (UIEdgeInsets)tk_rawSectionContentInset
{
  top = self->_tk_rawSectionContentInset.top;
  left = self->_tk_rawSectionContentInset.left;
  bottom = self->_tk_rawSectionContentInset.bottom;
  right = self->_tk_rawSectionContentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (TKTonePickerTableViewLayoutMarginsObserver)layoutMarginsObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutMarginsObserver);

  return WeakRetained;
}

- (TKTonePickerTableViewSeparatorObserver)separatorObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_separatorObserver);

  return WeakRetained;
}

@end
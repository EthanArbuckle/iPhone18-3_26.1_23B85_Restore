@interface TKTonePickerTableView
- (TKTonePickerTableViewLayoutMarginsObserver)layoutMarginsObserver;
- (TKTonePickerTableViewSeparatorObserver)separatorObserver;
- (UIEdgeInsets)tk_rawSectionContentInset;
- (void)_handleSeparatorColorDidChange;
- (void)_setSectionContentInset:(UIEdgeInsets)inset;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)performBlockEnsuringContentOffsetRemainsUnchanged:(id)unchanged;
- (void)setSeparatorColor:(id)color;
@end

@implementation TKTonePickerTableView

- (void)_setSectionContentInset:(UIEdgeInsets)inset
{
  self->_tk_rawSectionContentInset = inset;
  v3.receiver = self;
  v3.super_class = TKTonePickerTableView;
  [(TKTonePickerTableView *)&v3 _setSectionContentInset:?];
}

- (void)performBlockEnsuringContentOffsetRemainsUnchanged:(id)unchanged
{
  unchangedCopy = unchanged;
  [(TKTonePickerTableView *)self contentOffset];
  v6 = v5;
  v8 = v7;
  unchangedCopy[2](unchangedCopy);

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
  layoutMarginsObserver = [(TKTonePickerTableView *)self layoutMarginsObserver];
  if (objc_opt_respondsToSelector())
  {
    [layoutMarginsObserver layoutMarginsDidChangeInTonePickerTableView:self];
  }
}

- (void)_handleSeparatorColorDidChange
{
  separatorObserver = [(TKTonePickerTableView *)self separatorObserver];
  if (objc_opt_respondsToSelector())
  {
    [separatorObserver separatorColorDidChangeInTonePickerTableView:self];
  }
}

- (void)setSeparatorColor:(id)color
{
  v4.receiver = self;
  v4.super_class = TKTonePickerTableView;
  [(TKTonePickerTableView *)&v4 setSeparatorColor:color];
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
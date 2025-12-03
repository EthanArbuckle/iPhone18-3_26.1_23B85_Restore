@interface _UIMoreListTableView
- (UIMoreListController)_listController;
- (void)didMoveToWindow;
@end

@implementation _UIMoreListTableView

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = _UIMoreListTableView;
  [(UITableView *)&v5 didMoveToWindow];
  window = [(UIView *)self window];

  if (window)
  {
    _listController = [(_UIMoreListTableView *)self _listController];
    [_listController _layoutCells];
  }
}

- (UIMoreListController)_listController
{
  WeakRetained = objc_loadWeakRetained(&self->__listController);

  return WeakRetained;
}

@end
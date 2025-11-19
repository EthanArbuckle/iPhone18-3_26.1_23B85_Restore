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
  v3 = [(UIView *)self window];

  if (v3)
  {
    v4 = [(_UIMoreListTableView *)self _listController];
    [v4 _layoutCells];
  }
}

- (UIMoreListController)_listController
{
  WeakRetained = objc_loadWeakRetained(&self->__listController);

  return WeakRetained;
}

@end
@interface UITableViewFocusUpdateContext
+ (id)_contextWithContext:(id)a3 tableView:(id)a4;
- (NSIndexPath)nextFocusedIndexPath;
- (NSIndexPath)previouslyFocusedIndexPath;
- (UITableView)tableView;
- (id)_initWithContext:(id)a3 tableView:(id)a4;
@end

@implementation UITableViewFocusUpdateContext

- (NSIndexPath)nextFocusedIndexPath
{
  if (!self->_didSetNextFocusedIndexPath)
  {
    v3 = [(UIFocusUpdateContext *)self nextFocusedView];

    if (v3)
    {
      v12 = 0;
      v4 = [(UITableViewFocusUpdateContext *)self tableView];
      v5 = [(UIFocusUpdateContext *)self nextFocusedView];
      v11 = 0;
      v6 = [v4 _managedSubviewForView:v5 viewType:&v12 indexPath:&v11];
      v7 = v11;
      v8 = v11;

      if (v6 && v12 == 1)
      {
        objc_storeStrong(&self->_nextFocusedIndexPath, v7);
      }
    }

    self->_didSetNextFocusedIndexPath = 1;
  }

  nextFocusedIndexPath = self->_nextFocusedIndexPath;

  return nextFocusedIndexPath;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

+ (id)_contextWithContext:(id)a3 tableView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithContext:v7 tableView:v6];

  return v8;
}

- (id)_initWithContext:(id)a3 tableView:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = UITableViewFocusUpdateContext;
  v7 = [(UIFocusUpdateContext *)&v10 _initWithContext:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(v7 + 20, v6);
  }

  return v8;
}

- (NSIndexPath)previouslyFocusedIndexPath
{
  if (!self->_didSetPreviouslyFocusedIndexPath)
  {
    v3 = [(UIFocusUpdateContext *)self previouslyFocusedView];

    if (v3)
    {
      v12 = 0;
      v4 = [(UITableViewFocusUpdateContext *)self tableView];
      v5 = [(UIFocusUpdateContext *)self previouslyFocusedView];
      v11 = 0;
      v6 = [v4 _managedSubviewForView:v5 viewType:&v12 indexPath:&v11];
      v7 = v11;
      v8 = v11;

      if (v6 && v12 == 1)
      {
        objc_storeStrong(&self->_previouslyFocusedIndexPath, v7);
      }
    }

    self->_didSetPreviouslyFocusedIndexPath = 1;
  }

  previouslyFocusedIndexPath = self->_previouslyFocusedIndexPath;

  return previouslyFocusedIndexPath;
}

@end
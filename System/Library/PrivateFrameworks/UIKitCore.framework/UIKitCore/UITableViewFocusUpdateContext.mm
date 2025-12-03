@interface UITableViewFocusUpdateContext
+ (id)_contextWithContext:(id)context tableView:(id)view;
- (NSIndexPath)nextFocusedIndexPath;
- (NSIndexPath)previouslyFocusedIndexPath;
- (UITableView)tableView;
- (id)_initWithContext:(id)context tableView:(id)view;
@end

@implementation UITableViewFocusUpdateContext

- (NSIndexPath)nextFocusedIndexPath
{
  if (!self->_didSetNextFocusedIndexPath)
  {
    nextFocusedView = [(UIFocusUpdateContext *)self nextFocusedView];

    if (nextFocusedView)
    {
      v12 = 0;
      tableView = [(UITableViewFocusUpdateContext *)self tableView];
      nextFocusedView2 = [(UIFocusUpdateContext *)self nextFocusedView];
      v11 = 0;
      v6 = [tableView _managedSubviewForView:nextFocusedView2 viewType:&v12 indexPath:&v11];
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

+ (id)_contextWithContext:(id)context tableView:(id)view
{
  viewCopy = view;
  contextCopy = context;
  v8 = [[self alloc] _initWithContext:contextCopy tableView:viewCopy];

  return v8;
}

- (id)_initWithContext:(id)context tableView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = UITableViewFocusUpdateContext;
  v7 = [(UIFocusUpdateContext *)&v10 _initWithContext:context];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(v7 + 20, viewCopy);
  }

  return v8;
}

- (NSIndexPath)previouslyFocusedIndexPath
{
  if (!self->_didSetPreviouslyFocusedIndexPath)
  {
    previouslyFocusedView = [(UIFocusUpdateContext *)self previouslyFocusedView];

    if (previouslyFocusedView)
    {
      v12 = 0;
      tableView = [(UITableViewFocusUpdateContext *)self tableView];
      previouslyFocusedView2 = [(UIFocusUpdateContext *)self previouslyFocusedView];
      v11 = 0;
      v6 = [tableView _managedSubviewForView:previouslyFocusedView2 viewType:&v12 indexPath:&v11];
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
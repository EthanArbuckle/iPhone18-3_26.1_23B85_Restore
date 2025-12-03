@interface PUToolbarViewModel
- (PUToolbarViewModelChange)currentChange;
- (UIViewController)_viewController;
- (void)didPublishChanges;
- (void)setAccessoryView:(id)view;
- (void)setAccessoryViewMaximumHeight:(double)height;
- (void)setAccessoryViewTopOutset:(double)outset;
- (void)setMaximumHeight:(double)height;
- (void)setToolbarItems:(id)items;
@end

@implementation PUToolbarViewModel

- (UIViewController)_viewController
{
  WeakRetained = objc_loadWeakRetained(&self->__viewController);

  return WeakRetained;
}

- (void)didPublishChanges
{
  v5.receiver = self;
  v5.super_class = PUToolbarViewModel;
  [(PUViewModel *)&v5 didPublishChanges];
  if ([(PUToolbarViewModel *)self needsToUpdateToolbarSize])
  {
    [(PUToolbarViewModel *)self setNeedsToUpdateToolbarSize:0];
    _viewController = [(PUToolbarViewModel *)self _viewController];
    navigationController = [_viewController navigationController];

    if (([navigationController isToolbarHidden] & 1) == 0)
    {
      [navigationController _positionToolbarHidden:0];
    }
  }
}

- (PUToolbarViewModelChange)currentChange
{
  v4.receiver = self;
  v4.super_class = PUToolbarViewModel;
  currentChange = [(PUViewModel *)&v4 currentChange];

  return currentChange;
}

- (void)setMaximumHeight:(double)height
{
  if (self->_maximumHeight != height)
  {
    self->_maximumHeight = height;
    currentChange = [(PUToolbarViewModel *)self currentChange];
    [currentChange _setMaximumHeightChanged:1];
  }
}

- (void)setAccessoryViewMaximumHeight:(double)height
{
  if (self->_accessoryViewMaximumHeight != height)
  {
    self->_accessoryViewMaximumHeight = height;
    currentChange = [(PUToolbarViewModel *)self currentChange];
    [currentChange _setAccessoryViewMaximumHeightChanged:1];
  }
}

- (void)setAccessoryViewTopOutset:(double)outset
{
  if (self->_accessoryViewTopOutset != outset)
  {
    self->_accessoryViewTopOutset = outset;
    currentChange = [(PUToolbarViewModel *)self currentChange];
    [currentChange _setAccessoryViewTopOutsetChanged:1];
  }
}

- (void)setAccessoryView:(id)view
{
  viewCopy = view;
  if (self->_accessoryView != viewCopy)
  {
    v7 = viewCopy;
    objc_storeStrong(&self->_accessoryView, view);
    currentChange = [(PUToolbarViewModel *)self currentChange];
    [currentChange _setAccessoryViewChanged:1];

    viewCopy = v7;
  }
}

- (void)setToolbarItems:(id)items
{
  itemsCopy = items;
  v5 = itemsCopy;
  if (self->_toolbarItems != itemsCopy)
  {
    v9 = itemsCopy;
    itemsCopy = [(NSArray *)itemsCopy isEqual:?];
    v5 = v9;
    if ((itemsCopy & 1) == 0)
    {
      v6 = [(NSArray *)v9 copy];
      toolbarItems = self->_toolbarItems;
      self->_toolbarItems = v6;

      currentChange = [(PUToolbarViewModel *)self currentChange];
      [currentChange _setToolbarItemsChanged:1];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](itemsCopy, v5);
}

@end
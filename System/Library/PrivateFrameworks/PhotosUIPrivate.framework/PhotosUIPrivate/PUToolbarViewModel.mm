@interface PUToolbarViewModel
- (PUToolbarViewModelChange)currentChange;
- (UIViewController)_viewController;
- (void)didPublishChanges;
- (void)setAccessoryView:(id)a3;
- (void)setAccessoryViewMaximumHeight:(double)a3;
- (void)setAccessoryViewTopOutset:(double)a3;
- (void)setMaximumHeight:(double)a3;
- (void)setToolbarItems:(id)a3;
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
    v3 = [(PUToolbarViewModel *)self _viewController];
    v4 = [v3 navigationController];

    if (([v4 isToolbarHidden] & 1) == 0)
    {
      [v4 _positionToolbarHidden:0];
    }
  }
}

- (PUToolbarViewModelChange)currentChange
{
  v4.receiver = self;
  v4.super_class = PUToolbarViewModel;
  v2 = [(PUViewModel *)&v4 currentChange];

  return v2;
}

- (void)setMaximumHeight:(double)a3
{
  if (self->_maximumHeight != a3)
  {
    self->_maximumHeight = a3;
    v4 = [(PUToolbarViewModel *)self currentChange];
    [v4 _setMaximumHeightChanged:1];
  }
}

- (void)setAccessoryViewMaximumHeight:(double)a3
{
  if (self->_accessoryViewMaximumHeight != a3)
  {
    self->_accessoryViewMaximumHeight = a3;
    v4 = [(PUToolbarViewModel *)self currentChange];
    [v4 _setAccessoryViewMaximumHeightChanged:1];
  }
}

- (void)setAccessoryViewTopOutset:(double)a3
{
  if (self->_accessoryViewTopOutset != a3)
  {
    self->_accessoryViewTopOutset = a3;
    v4 = [(PUToolbarViewModel *)self currentChange];
    [v4 _setAccessoryViewTopOutsetChanged:1];
  }
}

- (void)setAccessoryView:(id)a3
{
  v5 = a3;
  if (self->_accessoryView != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_accessoryView, a3);
    v6 = [(PUToolbarViewModel *)self currentChange];
    [v6 _setAccessoryViewChanged:1];

    v5 = v7;
  }
}

- (void)setToolbarItems:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_toolbarItems != v4)
  {
    v9 = v4;
    v4 = [(NSArray *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(NSArray *)v9 copy];
      toolbarItems = self->_toolbarItems;
      self->_toolbarItems = v6;

      v8 = [(PUToolbarViewModel *)self currentChange];
      [v8 _setToolbarItemsChanged:1];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

@end
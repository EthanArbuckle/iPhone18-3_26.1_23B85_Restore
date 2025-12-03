@interface SBOldIconDragPlatterWindow
- (id)_iconDragPreviewContainerView;
- (void)beginTrackingPlatterView:(id)view;
- (void)stopTrackingPlatterView:(id)view;
@end

@implementation SBOldIconDragPlatterWindow

- (id)_iconDragPreviewContainerView
{
  contentViewController = [(SBMainScreenActiveInterfaceOrientationWindow *)self contentViewController];
  view = [contentViewController view];

  return view;
}

- (void)beginTrackingPlatterView:(id)view
{
  viewCopy = view;
  platterViews = self->_platterViews;
  v9 = viewCopy;
  if (!platterViews)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_platterViews;
    self->_platterViews = weakObjectsHashTable;

    viewCopy = v9;
    platterViews = self->_platterViews;
  }

  [(NSHashTable *)platterViews addObject:viewCopy];
  _iconDragPreviewContainerView = [(SBOldIconDragPlatterWindow *)self _iconDragPreviewContainerView];
  [_iconDragPreviewContainerView addSubview:v9];

  [(SBMainScreenActiveInterfaceOrientationWindow *)self setHidden:0];
}

- (void)stopTrackingPlatterView:(id)view
{
  viewCopy = view;
  [viewCopy removeFromSuperview];
  [(NSHashTable *)self->_platterViews removeObject:viewCopy];

  v5 = [(NSHashTable *)self->_platterViews count]== 0;

  [(SBMainScreenActiveInterfaceOrientationWindow *)self setHidden:v5];
}

@end
@interface SBOldIconDragPlatterWindow
- (id)_iconDragPreviewContainerView;
- (void)beginTrackingPlatterView:(id)a3;
- (void)stopTrackingPlatterView:(id)a3;
@end

@implementation SBOldIconDragPlatterWindow

- (id)_iconDragPreviewContainerView
{
  v2 = [(SBMainScreenActiveInterfaceOrientationWindow *)self contentViewController];
  v3 = [v2 view];

  return v3;
}

- (void)beginTrackingPlatterView:(id)a3
{
  v4 = a3;
  platterViews = self->_platterViews;
  v9 = v4;
  if (!platterViews)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_platterViews;
    self->_platterViews = v6;

    v4 = v9;
    platterViews = self->_platterViews;
  }

  [(NSHashTable *)platterViews addObject:v4];
  v8 = [(SBOldIconDragPlatterWindow *)self _iconDragPreviewContainerView];
  [v8 addSubview:v9];

  [(SBMainScreenActiveInterfaceOrientationWindow *)self setHidden:0];
}

- (void)stopTrackingPlatterView:(id)a3
{
  v4 = a3;
  [v4 removeFromSuperview];
  [(NSHashTable *)self->_platterViews removeObject:v4];

  v5 = [(NSHashTable *)self->_platterViews count]== 0;

  [(SBMainScreenActiveInterfaceOrientationWindow *)self setHidden:v5];
}

@end
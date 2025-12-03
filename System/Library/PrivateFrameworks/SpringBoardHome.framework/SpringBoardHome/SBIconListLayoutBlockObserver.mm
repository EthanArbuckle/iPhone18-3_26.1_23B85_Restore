@interface SBIconListLayoutBlockObserver
- (void)iconListView:(id)view didAddIconView:(id)iconView;
- (void)iconListView:(id)view didRemoveIconView:(id)iconView;
- (void)iconListViewDidChangeBoundsSize:(id)size;
- (void)invalidate;
@end

@implementation SBIconListLayoutBlockObserver

- (void)invalidate
{
  didAddIconViewBlock = self->_didAddIconViewBlock;
  self->_didAddIconViewBlock = 0;

  didRemoveIconViewBlock = self->_didRemoveIconViewBlock;
  self->_didRemoveIconViewBlock = 0;

  boundsSizeChangeBlock = self->_boundsSizeChangeBlock;
  self->_boundsSizeChangeBlock = 0;
}

- (void)iconListView:(id)view didAddIconView:(id)iconView
{
  viewCopy = view;
  iconViewCopy = iconView;
  v7 = _Block_copy(self->_didAddIconViewBlock);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, viewCopy, iconViewCopy);
  }
}

- (void)iconListView:(id)view didRemoveIconView:(id)iconView
{
  viewCopy = view;
  iconViewCopy = iconView;
  v7 = _Block_copy(self->_didRemoveIconViewBlock);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, viewCopy, iconViewCopy);
  }
}

- (void)iconListViewDidChangeBoundsSize:(id)size
{
  sizeCopy = size;
  v4 = _Block_copy(self->_boundsSizeChangeBlock);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, sizeCopy);
  }
}

@end
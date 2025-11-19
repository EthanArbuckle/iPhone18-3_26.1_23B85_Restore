@interface SBIconListLayoutBlockObserver
- (void)iconListView:(id)a3 didAddIconView:(id)a4;
- (void)iconListView:(id)a3 didRemoveIconView:(id)a4;
- (void)iconListViewDidChangeBoundsSize:(id)a3;
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

- (void)iconListView:(id)a3 didAddIconView:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = _Block_copy(self->_didAddIconViewBlock);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v9, v6);
  }
}

- (void)iconListView:(id)a3 didRemoveIconView:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = _Block_copy(self->_didRemoveIconViewBlock);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v9, v6);
  }
}

- (void)iconListViewDidChangeBoundsSize:(id)a3
{
  v6 = a3;
  v4 = _Block_copy(self->_boundsSizeChangeBlock);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

@end
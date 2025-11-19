@interface PXUIGenericViewTile
- (UIView)view;
- (void)_setSpec:(id)a3;
- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4;
@end

@implementation PXUIGenericViewTile

- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4
{
  v5 = [a4 viewSpec];
  [(PXUIGenericViewTile *)self _setSpec:v5];
}

- (UIView)view
{
  view = self->_view;
  if (!view)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v5 = self->_view;
    self->_view = v4;

    [(UIView *)self->_view setUserInteractionEnabled:0];
    [(UIView *)self->_view px_setSpec:self->__spec];
    view = self->_view;
  }

  return view;
}

- (void)_setSpec:(id)a3
{
  v5 = a3;
  if (self->__spec != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->__spec, a3);
    [(UIView *)self->_view px_setSpec:v6];
    v5 = v6;
  }
}

@end
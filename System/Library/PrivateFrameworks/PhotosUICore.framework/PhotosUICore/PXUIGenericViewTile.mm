@interface PXUIGenericViewTile
- (UIView)view;
- (void)_setSpec:(id)spec;
- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data;
@end

@implementation PXUIGenericViewTile

- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data
{
  viewSpec = [data viewSpec];
  [(PXUIGenericViewTile *)self _setSpec:viewSpec];
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

- (void)_setSpec:(id)spec
{
  specCopy = spec;
  if (self->__spec != specCopy)
  {
    v6 = specCopy;
    objc_storeStrong(&self->__spec, spec);
    [(UIView *)self->_view px_setSpec:v6];
    specCopy = v6;
  }
}

@end
@interface PXUILabelTile
- (UIView)view;
- (void)_setSpec:(id)spec;
- (void)becomeReusable;
- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data;
- (void)setText:(id)text;
@end

@implementation PXUILabelTile

- (void)_setSpec:(id)spec
{
  specCopy = spec;
  if (self->_spec != specCopy)
  {
    v6 = specCopy;
    objc_storeStrong(&self->_spec, spec);
    [(PXUILabel *)self->_label setSpec:self->_spec];
    specCopy = v6;
  }
}

- (void)setText:(id)text
{
  if (self->_text != text)
  {
    v5 = [text copy];
    text = self->_text;
    self->_text = v5;

    label = self->_label;
    v8 = self->_text;

    [(PXUILabel *)label setText:v8];
  }
}

- (void)becomeReusable
{
  [(PXUILabelTile *)self setText:0];
  label = self->_label;

  [(PXUILabel *)label setHidden:1];
}

- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data
{
  viewSpec = [data viewSpec];
  [(PXUILabelTile *)self _setSpec:viewSpec];
}

- (UIView)view
{
  label = self->_label;
  if (!label)
  {
    v4 = objc_alloc_init(PXUILabel);
    v5 = self->_label;
    self->_label = v4;

    [(PXUILabel *)self->_label setUserInteractionEnabled:0];
    [(PXUILabel *)self->_label setText:self->_text];
    [(PXUILabel *)self->_label setSpec:self->_spec];
    label = self->_label;
  }

  return label;
}

@end
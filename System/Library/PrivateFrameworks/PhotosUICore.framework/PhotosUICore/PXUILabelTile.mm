@interface PXUILabelTile
- (UIView)view;
- (void)_setSpec:(id)a3;
- (void)becomeReusable;
- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4;
- (void)setText:(id)a3;
@end

@implementation PXUILabelTile

- (void)_setSpec:(id)a3
{
  v5 = a3;
  if (self->_spec != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_spec, a3);
    [(PXUILabel *)self->_label setSpec:self->_spec];
    v5 = v6;
  }
}

- (void)setText:(id)a3
{
  if (self->_text != a3)
  {
    v5 = [a3 copy];
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

- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4
{
  v5 = [a4 viewSpec];
  [(PXUILabelTile *)self _setSpec:v5];
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
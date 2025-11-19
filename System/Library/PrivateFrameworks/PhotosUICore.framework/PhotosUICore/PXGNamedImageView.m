@interface PXGNamedImageView
- (CGRect)clippingRect;
- (void)setUserData:(id)a3;
@end

@implementation PXGNamedImageView

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setUserData:(id)a3
{
  v4 = [a3 copy];
  userData = self->_userData;
  self->_userData = v4;

  v6 = [(PXGNamedImageViewConfiguration *)self->_userData imageName];
  if (v6)
  {
    v7 = [(PXGNamedImageViewConfiguration *)self->_userData bundle];
    v8 = [MEMORY[0x1E69DCAB8] px_imageNamed:v6 bundle:v7];
  }

  else
  {
    v8 = 0;
  }

  [(PXGNamedImageView *)self setImage:v8];
  [(PXGNamedImageView *)self setContentMode:[(PXGNamedImageViewConfiguration *)self->_userData contentMode]];
  [(PXGNamedImageView *)self setUserInteractionEnabled:0];
}

@end
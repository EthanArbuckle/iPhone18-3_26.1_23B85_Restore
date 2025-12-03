@interface PXGNamedImageView
- (CGRect)clippingRect;
- (void)setUserData:(id)data;
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

- (void)setUserData:(id)data
{
  v4 = [data copy];
  userData = self->_userData;
  self->_userData = v4;

  imageName = [(PXGNamedImageViewConfiguration *)self->_userData imageName];
  if (imageName)
  {
    bundle = [(PXGNamedImageViewConfiguration *)self->_userData bundle];
    v8 = [MEMORY[0x1E69DCAB8] px_imageNamed:imageName bundle:bundle];
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
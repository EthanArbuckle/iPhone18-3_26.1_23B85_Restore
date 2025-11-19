@interface TLKImageAttachment
- (CGSize)size;
- (void)setSize:(CGSize)a3;
@end

@implementation TLKImageAttachment

- (void)setSize:(CGSize)a3
{
  if (a3.width != self->_size.width || a3.height != self->_size.height)
  {
    self->_size = a3;
    [(TLKImageAttachment *)self setBounds:0.0, 0.0];
  }
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
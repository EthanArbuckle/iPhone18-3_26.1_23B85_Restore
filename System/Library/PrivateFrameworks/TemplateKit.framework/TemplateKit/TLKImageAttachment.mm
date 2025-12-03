@interface TLKImageAttachment
- (CGSize)size;
- (void)setSize:(CGSize)size;
@end

@implementation TLKImageAttachment

- (void)setSize:(CGSize)size
{
  if (size.width != self->_size.width || size.height != self->_size.height)
  {
    self->_size = size;
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
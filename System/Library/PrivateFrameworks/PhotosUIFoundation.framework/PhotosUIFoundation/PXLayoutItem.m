@interface PXLayoutItem
- (CGAffineTransform)transform;
- (CGPoint)positionOffset;
- (CGRect)acceptableCropRect;
- (CGRect)preferredCropRect;
- (CGSize)size;
- (PXLayoutItem)initWithSize:(CGSize)a3 weight:(double)a4;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation PXLayoutItem

- (CGRect)acceptableCropRect
{
  x = self->_acceptableCropRect.origin.x;
  y = self->_acceptableCropRect.origin.y;
  width = self->_acceptableCropRect.size.width;
  height = self->_acceptableCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)preferredCropRect
{
  x = self->_preferredCropRect.origin.x;
  y = self->_preferredCropRect.origin.y;
  width = self->_preferredCropRect.size.width;
  height = self->_preferredCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)positionOffset
{
  x = self->_positionOffset.x;
  y = self->_positionOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_transform.c = *&a3->c;
  *&self->_transform.tx = v4;
  *&self->_transform.a = v3;
}

- (CGAffineTransform)transform
{
  v3 = *&self[2].tx;
  *&retstr->a = *&self[2].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].a;
  return self;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXLayoutItem)initWithSize:(CGSize)a3 weight:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = PXLayoutItem;
  result = [(PXLayoutItem *)&v8 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_weight = a4;
    result->_preferredCropRect.origin = *PXRectUnit;
    result->_preferredCropRect.size = *&PXRectUnit[16];
    result->_acceptableCropRect.origin = *PXRectUnit;
    result->_acceptableCropRect.size = *&PXRectUnit[16];
  }

  return result;
}

@end
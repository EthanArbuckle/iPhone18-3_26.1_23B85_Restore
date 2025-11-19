@interface PXTilingCoordinateSpace
- (CGAffineTransform)transform;
- (PXTilingCoordinateSpace)init;
- (PXTilingCoordinateSpace)parentSpace;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation PXTilingCoordinateSpace

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
  v3 = *&self->tx;
  *&retstr->a = *&self->c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].a;
  return self;
}

- (PXTilingCoordinateSpace)parentSpace
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSpace);

  return WeakRetained;
}

- (PXTilingCoordinateSpace)init
{
  v5.receiver = self;
  v5.super_class = PXTilingCoordinateSpace;
  result = [(PXTilingCoordinateSpace *)&v5 init];
  if (result)
  {
    v3 = MEMORY[0x1E695EFD0];
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    *&result->_transform.a = *MEMORY[0x1E695EFD0];
    *&result->_transform.c = v4;
    *&result->_transform.tx = *(v3 + 32);
  }

  return result;
}

@end
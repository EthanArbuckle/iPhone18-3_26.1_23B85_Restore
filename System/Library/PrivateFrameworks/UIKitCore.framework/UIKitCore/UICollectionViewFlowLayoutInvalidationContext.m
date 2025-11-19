@interface UICollectionViewFlowLayoutInvalidationContext
- (UICollectionViewFlowLayoutInvalidationContext)init;
- (void)setInvalidateFlowLayoutAttributes:(BOOL)invalidateFlowLayoutAttributes;
@end

@implementation UICollectionViewFlowLayoutInvalidationContext

- (UICollectionViewFlowLayoutInvalidationContext)init
{
  v3.receiver = self;
  v3.super_class = UICollectionViewFlowLayoutInvalidationContext;
  result = [(UICollectionViewFlowLayoutInvalidationContext *)&v3 init];
  if (result)
  {
    *&result->_flowLayoutInvalidationFlags |= 3u;
  }

  return result;
}

- (void)setInvalidateFlowLayoutAttributes:(BOOL)invalidateFlowLayoutAttributes
{
  if (invalidateFlowLayoutAttributes)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flowLayoutInvalidationFlags = *&self->_flowLayoutInvalidationFlags & 0xFD | v3;
}

@end
@interface _UICollectionViewCompositionLayoutInvalidationContext
- (void)_setInvalidationContextTable:(id)a3;
@end

@implementation _UICollectionViewCompositionLayoutInvalidationContext

- (void)_setInvalidationContextTable:(id)a3
{
  v5 = a3;
  if (self->_invalidationContextTable != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_invalidationContextTable, a3);
    v5 = v6;
  }
}

@end
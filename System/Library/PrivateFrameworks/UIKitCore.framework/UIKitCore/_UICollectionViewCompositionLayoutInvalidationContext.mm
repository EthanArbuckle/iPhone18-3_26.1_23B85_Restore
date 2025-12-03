@interface _UICollectionViewCompositionLayoutInvalidationContext
- (void)_setInvalidationContextTable:(id)table;
@end

@implementation _UICollectionViewCompositionLayoutInvalidationContext

- (void)_setInvalidationContextTable:(id)table
{
  tableCopy = table;
  if (self->_invalidationContextTable != tableCopy)
  {
    v6 = tableCopy;
    objc_storeStrong(&self->_invalidationContextTable, table);
    tableCopy = v6;
  }
}

@end
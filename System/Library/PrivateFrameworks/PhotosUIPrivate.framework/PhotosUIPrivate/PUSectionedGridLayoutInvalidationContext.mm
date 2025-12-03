@interface PUSectionedGridLayoutInvalidationContext
- (id)description;
@end

@implementation PUSectionedGridLayoutInvalidationContext

- (id)description
{
  v9.receiver = self;
  v9.super_class = PUSectionedGridLayoutInvalidationContext;
  v3 = [(PUSectionedGridLayoutInvalidationContext *)&v9 description];
  invalidateDataSourceCounts = [(UICollectionViewLayoutInvalidationContext *)self invalidateDataSourceCounts];
  v5 = @"N";
  if (invalidateDataSourceCounts)
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  if (self->_invalidateForVerticalScroll)
  {
    v5 = @"Y";
  }

  v7 = [v3 stringByAppendingFormat:@" invalidateDataSourceCounts: %@, invalidateForVerticalScroll: %@", v6, v5];

  return v7;
}

@end
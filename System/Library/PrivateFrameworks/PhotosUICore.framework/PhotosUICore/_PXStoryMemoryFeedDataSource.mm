@interface _PXStoryMemoryFeedDataSource
- (_PXStoryMemoryFeedDataSource)initWithDataSource:(id)source;
- (id)objectIDAtIndexPath:(PXSimpleIndexPath *)path;
- (id)objectReferenceNearestToObjectReference:(id)reference;
@end

@implementation _PXStoryMemoryFeedDataSource

- (id)objectReferenceNearestToObjectReference:(id)reference
{
  referenceCopy = reference;
  v5 = [(PXSectionedDataSource *)self->_dataSource objectReferenceNearestToObjectReference:referenceCopy];
  v6 = v5;
  if (referenceCopy && !v5)
  {
    leafObject = [referenceCopy leafObject];
    assetCollection = [leafObject assetCollection];
    creationDate = [assetCollection creationDate];

    v6 = 0;
    if ([(PXSectionedDataSource *)self->_dataSource numberOfSections]== 1 && creationDate)
    {
      v25 = referenceCopy;
      v10 = *off_1E7722228;
      v26 = *(off_1E7722228 + 2);
      v27 = *(off_1E7722228 + 3);
      v28 = *(off_1E7722228 + 1);
      v11 = [(PXSectionedDataSource *)self->_dataSource numberOfItemsInSection:0];
      identifier = [(PXSectionedDataSource *)self->_dataSource identifier];
      if (v11 >= 1)
      {
        v13 = identifier;
        v14 = 0;
        v15 = 1.79769313e308;
        do
        {
          dataSource = self->_dataSource;
          v29 = v13;
          v30 = 0;
          v31 = v14;
          v32 = 0x7FFFFFFFFFFFFFFFLL;
          v17 = [(PXSectionedDataSource *)dataSource objectAtIndexPath:&v29];
          assetCollection2 = [v17 assetCollection];
          creationDate2 = [assetCollection2 creationDate];
          [creationDate2 timeIntervalSinceDate:creationDate];
          v21 = v20;

          v22 = -v21;
          if (v21 >= 0.0)
          {
            v22 = v21;
          }

          if (v22 < v15)
          {
            v27 = 0x7FFFFFFFFFFFFFFFLL;
            v28 = 0;
            v26 = v14;
            v10 = v13;
            v15 = v22;
          }

          ++v14;
        }

        while (v11 != v14);
      }

      if (v10 == *off_1E7721F68)
      {
        v6 = 0;
      }

      else
      {
        v23 = self->_dataSource;
        v29 = v10;
        v30 = v28;
        v31 = v26;
        v32 = v27;
        v6 = [(PXSectionedDataSource *)v23 objectReferenceAtIndexPath:&v29];
      }

      referenceCopy = v25;
    }
  }

  return v6;
}

- (id)objectIDAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSource = self->_dataSource;
  v4 = *&path->item;
  v10[0] = *&path->dataSourceIdentifier;
  v10[1] = v4;
  v5 = [(PXSectionedDataSource *)dataSource objectReferenceAtIndexPath:v10];
  leafObject = [v5 leafObject];
  assetCollection = [leafObject assetCollection];
  localIdentifier = [assetCollection localIdentifier];

  return localIdentifier;
}

- (_PXStoryMemoryFeedDataSource)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = _PXStoryMemoryFeedDataSource;
  v6 = [(_PXStoryMemoryFeedDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v7;
}

@end
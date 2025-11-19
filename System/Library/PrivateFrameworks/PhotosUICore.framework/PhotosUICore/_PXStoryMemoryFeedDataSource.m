@interface _PXStoryMemoryFeedDataSource
- (_PXStoryMemoryFeedDataSource)initWithDataSource:(id)a3;
- (id)objectIDAtIndexPath:(PXSimpleIndexPath *)a3;
- (id)objectReferenceNearestToObjectReference:(id)a3;
@end

@implementation _PXStoryMemoryFeedDataSource

- (id)objectReferenceNearestToObjectReference:(id)a3
{
  v4 = a3;
  v5 = [(PXSectionedDataSource *)self->_dataSource objectReferenceNearestToObjectReference:v4];
  v6 = v5;
  if (v4 && !v5)
  {
    v7 = [v4 leafObject];
    v8 = [v7 assetCollection];
    v9 = [v8 creationDate];

    v6 = 0;
    if ([(PXSectionedDataSource *)self->_dataSource numberOfSections]== 1 && v9)
    {
      v25 = v4;
      v10 = *off_1E7722228;
      v26 = *(off_1E7722228 + 2);
      v27 = *(off_1E7722228 + 3);
      v28 = *(off_1E7722228 + 1);
      v11 = [(PXSectionedDataSource *)self->_dataSource numberOfItemsInSection:0];
      v12 = [(PXSectionedDataSource *)self->_dataSource identifier];
      if (v11 >= 1)
      {
        v13 = v12;
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
          v18 = [v17 assetCollection];
          v19 = [v18 creationDate];
          [v19 timeIntervalSinceDate:v9];
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

      v4 = v25;
    }
  }

  return v6;
}

- (id)objectIDAtIndexPath:(PXSimpleIndexPath *)a3
{
  dataSource = self->_dataSource;
  v4 = *&a3->item;
  v10[0] = *&a3->dataSourceIdentifier;
  v10[1] = v4;
  v5 = [(PXSectionedDataSource *)dataSource objectReferenceAtIndexPath:v10];
  v6 = [v5 leafObject];
  v7 = [v6 assetCollection];
  v8 = [v7 localIdentifier];

  return v8;
}

- (_PXStoryMemoryFeedDataSource)initWithDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _PXStoryMemoryFeedDataSource;
  v6 = [(_PXStoryMemoryFeedDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v7;
}

@end
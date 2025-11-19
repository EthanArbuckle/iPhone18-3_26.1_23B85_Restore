@interface _PXBrowserDataSourceVisibleContentSnapshot
- (_PXBrowserDataSourceVisibleContentSnapshot)initWithIndexPaths:(id)a3 dataSource:(id)a4 dateIntervalGranularity:(unint64_t)a5 dateType:(unint64_t)a6;
- (id)dateInterval;
@end

@implementation _PXBrowserDataSourceVisibleContentSnapshot

- (id)dateInterval
{
  v27 = *MEMORY[0x1E69E9840];
  v19 = [(_PXBrowserDataSourceVisibleContentSnapshot *)self dataSource];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [(_PXBrowserDataSourceVisibleContentSnapshot *)self indexPaths];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v4)
  {

    v16 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = *v23;
  obj = v3;
  do
  {
    v10 = 0;
    v11 = v6;
    v12 = v7;
    do
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v13 = [v19 displayAssetAtIndexPath:{*(*(&v22 + 1) + 8 * v10), obj}];
      if ([(_PXBrowserDataSourceVisibleContentSnapshot *)self dateType])
      {
        if ([(_PXBrowserDataSourceVisibleContentSnapshot *)self dateType]!= 1)
        {
          goto LABEL_11;
        }

        v14 = [v13 importDate];
      }

      else
      {
        v14 = [v13 creationDate];
      }

      v15 = v14;

      v8 = v15;
LABEL_11:
      v20 = v11;
      v21 = v12;
      [MEMORY[0x1E695DF00] px_unionStartDate:&v21 endDate:&v20 withDate:v8];
      v7 = v21;

      v6 = v20;
      ++v10;
      v11 = v6;
      v12 = v7;
    }

    while (v5 != v10);
    v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v5);

  v16 = 0;
  if (v7 && v6)
  {
    v16 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v7 endDate:v6];
  }

LABEL_17:

  return v16;
}

- (_PXBrowserDataSourceVisibleContentSnapshot)initWithIndexPaths:(id)a3 dataSource:(id)a4 dateIntervalGranularity:(unint64_t)a5 dateType:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v16.receiver = self;
  v16.super_class = _PXBrowserDataSourceVisibleContentSnapshot;
  v12 = [(PXBrowserVisibleContentSnapshot *)&v16 initWithDateIntervalGranularity:a5];
  if (v12)
  {
    v13 = [v10 copy];
    indexPaths = v12->_indexPaths;
    v12->_indexPaths = v13;

    objc_storeStrong(&v12->_dataSource, a4);
    v12->_dateType = a6;
  }

  return v12;
}

@end
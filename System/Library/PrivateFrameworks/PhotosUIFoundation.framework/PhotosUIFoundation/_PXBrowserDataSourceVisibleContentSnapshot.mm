@interface _PXBrowserDataSourceVisibleContentSnapshot
- (_PXBrowserDataSourceVisibleContentSnapshot)initWithIndexPaths:(id)paths dataSource:(id)source dateIntervalGranularity:(unint64_t)granularity dateType:(unint64_t)type;
- (id)dateInterval;
@end

@implementation _PXBrowserDataSourceVisibleContentSnapshot

- (id)dateInterval
{
  v27 = *MEMORY[0x1E69E9840];
  dataSource = [(_PXBrowserDataSourceVisibleContentSnapshot *)self dataSource];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  indexPaths = [(_PXBrowserDataSourceVisibleContentSnapshot *)self indexPaths];
  v4 = [indexPaths countByEnumeratingWithState:&v22 objects:v26 count:16];
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
  obj = indexPaths;
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

      v13 = [dataSource displayAssetAtIndexPath:{*(*(&v22 + 1) + 8 * v10), obj}];
      if ([(_PXBrowserDataSourceVisibleContentSnapshot *)self dateType])
      {
        if ([(_PXBrowserDataSourceVisibleContentSnapshot *)self dateType]!= 1)
        {
          goto LABEL_11;
        }

        importDate = [v13 importDate];
      }

      else
      {
        importDate = [v13 creationDate];
      }

      v15 = importDate;

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

- (_PXBrowserDataSourceVisibleContentSnapshot)initWithIndexPaths:(id)paths dataSource:(id)source dateIntervalGranularity:(unint64_t)granularity dateType:(unint64_t)type
{
  pathsCopy = paths;
  sourceCopy = source;
  v16.receiver = self;
  v16.super_class = _PXBrowserDataSourceVisibleContentSnapshot;
  v12 = [(PXBrowserVisibleContentSnapshot *)&v16 initWithDateIntervalGranularity:granularity];
  if (v12)
  {
    v13 = [pathsCopy copy];
    indexPaths = v12->_indexPaths;
    v12->_indexPaths = v13;

    objc_storeStrong(&v12->_dataSource, source);
    v12->_dateType = type;
  }

  return v12;
}

@end
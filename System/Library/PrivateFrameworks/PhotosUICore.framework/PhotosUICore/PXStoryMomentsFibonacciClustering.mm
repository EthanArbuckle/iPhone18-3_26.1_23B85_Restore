@interface PXStoryMomentsFibonacciClustering
- (id)performWithDataset:(id)dataset progressBlock:(id)block;
@end

@implementation PXStoryMomentsFibonacciClustering

- (id)performWithDataset:(id)dataset progressBlock:(id)block
{
  datasetCopy = dataset;
  if (![datasetCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryAutoEditMomentsProvider.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"dataset.count > 0"}];
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([datasetCopy count] >= 2)
  {
    v9 = 0;
    v10 = 1;
    v11 = 2;
    v12 = 2;
    do
    {
      v8 = v11;
      v13 = MEMORY[0x1E69BE3A8];
      v14 = [datasetCopy subarrayWithRange:{v9, v12}];
      v15 = [v13 clusterWithObjects:v14];
      [v7 addObject:v15];

      v16 = v10 + v12;
      v11 = v8 + v10 + v12;
      v17 = [datasetCopy count];
      v9 = v8;
      v10 = v12;
      v12 = v16;
    }

    while (v11 <= v17);
  }

  else
  {
    v8 = 0;
  }

  if (v8 < [datasetCopy count])
  {
    v18 = [datasetCopy count];
    v19 = MEMORY[0x1E69BE3A8];
    v20 = [datasetCopy subarrayWithRange:{v8, v18 - v8}];
    v21 = [v19 clusterWithObjects:v20];
    [v7 addObject:v21];
  }

  v22 = [v7 copy];

  return v22;
}

@end
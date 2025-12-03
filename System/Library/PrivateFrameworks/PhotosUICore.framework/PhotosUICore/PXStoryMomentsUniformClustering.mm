@interface PXStoryMomentsUniformClustering
- (id)performWithDataset:(id)dataset progressBlock:(id)block;
@end

@implementation PXStoryMomentsUniformClustering

- (id)performWithDataset:(id)dataset progressBlock:(id)block
{
  datasetCopy = dataset;
  if (![datasetCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryAutoEditMomentsProvider.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"dataset.count > 0"}];
  }

  minimumNumberOfObjects = [(PLDataDensityClustering *)self minimumNumberOfObjects];
  v8 = minimumNumberOfObjects + [datasetCopy count] - 1;
  v9 = v8 / minimumNumberOfObjects;
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8 / minimumNumberOfObjects];
  if (minimumNumberOfObjects <= v8)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = [datasetCopy count];
      v15 = minimumNumberOfObjects;
      if (minimumNumberOfObjects + v11 > v14)
      {
        v15 = [datasetCopy count] + v12;
      }

      v16 = MEMORY[0x1E69BE3A8];
      v17 = [datasetCopy subarrayWithRange:{v11, v15}];
      v18 = [v16 clusterWithObjects:v17];
      [v10 addObject:v18];

      ++v13;
      v12 -= minimumNumberOfObjects;
      v11 += minimumNumberOfObjects;
    }

    while (v13 < v9);
  }

  v19 = [v10 copy];

  return v19;
}

@end
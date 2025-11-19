@interface PXStoryMomentsUniformClustering
- (id)performWithDataset:(id)a3 progressBlock:(id)a4;
@end

@implementation PXStoryMomentsUniformClustering

- (id)performWithDataset:(id)a3 progressBlock:(id)a4
{
  v6 = a3;
  if (![v6 count])
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXStoryAutoEditMomentsProvider.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"dataset.count > 0"}];
  }

  v7 = [(PLDataDensityClustering *)self minimumNumberOfObjects];
  v8 = v7 + [v6 count] - 1;
  v9 = v8 / v7;
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8 / v7];
  if (v7 <= v8)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = [v6 count];
      v15 = v7;
      if (v7 + v11 > v14)
      {
        v15 = [v6 count] + v12;
      }

      v16 = MEMORY[0x1E69BE3A8];
      v17 = [v6 subarrayWithRange:{v11, v15}];
      v18 = [v16 clusterWithObjects:v17];
      [v10 addObject:v18];

      ++v13;
      v12 -= v7;
      v11 += v7;
    }

    while (v13 < v9);
  }

  v19 = [v10 copy];

  return v19;
}

@end
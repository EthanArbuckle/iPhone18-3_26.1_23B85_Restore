@interface PXStoryMomentsOneClustering
- (id)performWithDataset:(id)a3 progressBlock:(id)a4;
@end

@implementation PXStoryMomentsOneClustering

- (id)performWithDataset:(id)a3 progressBlock:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (![v6 count])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXStoryAutoEditMomentsProvider.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"dataset.count > 0"}];
  }

  v7 = [MEMORY[0x1E69BE3A8] clusterWithObjects:v6];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  return v8;
}

@end
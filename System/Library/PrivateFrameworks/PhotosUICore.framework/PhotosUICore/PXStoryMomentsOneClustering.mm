@interface PXStoryMomentsOneClustering
- (id)performWithDataset:(id)dataset progressBlock:(id)block;
@end

@implementation PXStoryMomentsOneClustering

- (id)performWithDataset:(id)dataset progressBlock:(id)block
{
  v11[1] = *MEMORY[0x1E69E9840];
  datasetCopy = dataset;
  if (![datasetCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryAutoEditMomentsProvider.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"dataset.count > 0"}];
  }

  v7 = [MEMORY[0x1E69BE3A8] clusterWithObjects:datasetCopy];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  return v8;
}

@end
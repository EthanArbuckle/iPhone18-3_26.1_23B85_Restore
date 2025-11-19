@interface PXStoryMomentsClusterThresholdClustering
- (id)performWithDataset:(id)a3 progressBlock:(id)a4;
@end

@implementation PXStoryMomentsClusterThresholdClustering

- (id)performWithDataset:(id)a3 progressBlock:(id)a4
{
  v22[2] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  if (![v8 count])
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PXStoryAutoEditMomentsProvider.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"dataset.count > 0"}];
  }

  v20 = 0;
  v9 = [v8 count];
  v10 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v9];
  progress = self->_progress;
  self->_progress = v10;

  v21[0] = @"minimumNumberOfObjects";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PLDataDensityClustering minimumNumberOfObjects](self, "minimumNumberOfObjects")}];
  v21[1] = @"maximumDistance";
  v22[0] = v12;
  v13 = MEMORY[0x1E696AD98];
  [(PLDataDensityClustering *)self maximumDistance];
  v14 = [v13 numberWithDouble:?];
  v22[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v16 = [(PLDataClustering *)self distanceBlock];
  v17 = PXStoryClusteringAlgorithmCutClusterWithAssetIndicesOptionsAndDistanceBlock(v8, v15, v16);

  [(NSProgress *)self->_progress setCompletedUnitCount:v9];
  if (v7)
  {
    [(NSProgress *)self->_progress fractionCompleted];
    v7[2](v7, &v20);
  }

  return v17;
}

@end
@interface PUReviewAdjustmentURLNode
- (PUReviewAdjustmentURLNode)initWithReviewAsset:(id)asset directory:(id)directory contentEditingOutput:(id)output;
- (void)run;
@end

@implementation PUReviewAdjustmentURLNode

- (void)run
{
  contentEditingOutput = [(PUReviewAdjustmentURLNode *)self contentEditingOutput];
  v9 = [contentEditingOutput assetAdjustmentsWithEditorBundleID:0];

  if (!v9)
  {
    if ([(PUReviewAsset *)self->_reviewAsset isHighFramerateVideo])
    {
      providedVideoURL = [(PUReviewAsset *)self->_reviewAsset providedVideoURL];
      v5 = [MEMORY[0x1E6988168] assetWithURL:providedVideoURL];
      v9 = [MEMORY[0x1E69C0910] defaultSlowMotionAdjustmentsForAsset:v5];
    }

    else
    {
      v9 = 0;
    }
  }

  directory = [(PUReviewAdjustmentURLNode *)self directory];
  v7 = [PUReviewAsset fileURLForAdjustmentsInDirectory:directory];

  [v9 writeToURL:v7 atomically:0];
  adjustmentURL = self->_adjustmentURL;
  self->_adjustmentURL = v7;

  [(PXRunNode *)self complete];
}

- (PUReviewAdjustmentURLNode)initWithReviewAsset:(id)asset directory:(id)directory contentEditingOutput:(id)output
{
  assetCopy = asset;
  directoryCopy = directory;
  outputCopy = output;
  if (!assetCopy || !directoryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUReviewAdjustmentURLNode.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"reviewAsset && directory"}];
  }

  v17.receiver = self;
  v17.super_class = PUReviewAdjustmentURLNode;
  v13 = [(PXRunNode *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_reviewAsset, asset);
    objc_storeStrong(&v14->_contentEditingOutput, output);
    objc_storeStrong(&v14->_directory, directory);
  }

  return v14;
}

@end
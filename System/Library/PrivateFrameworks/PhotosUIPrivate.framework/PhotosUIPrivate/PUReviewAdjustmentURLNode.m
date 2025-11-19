@interface PUReviewAdjustmentURLNode
- (PUReviewAdjustmentURLNode)initWithReviewAsset:(id)a3 directory:(id)a4 contentEditingOutput:(id)a5;
- (void)run;
@end

@implementation PUReviewAdjustmentURLNode

- (void)run
{
  v3 = [(PUReviewAdjustmentURLNode *)self contentEditingOutput];
  v9 = [v3 assetAdjustmentsWithEditorBundleID:0];

  if (!v9)
  {
    if ([(PUReviewAsset *)self->_reviewAsset isHighFramerateVideo])
    {
      v4 = [(PUReviewAsset *)self->_reviewAsset providedVideoURL];
      v5 = [MEMORY[0x1E6988168] assetWithURL:v4];
      v9 = [MEMORY[0x1E69C0910] defaultSlowMotionAdjustmentsForAsset:v5];
    }

    else
    {
      v9 = 0;
    }
  }

  v6 = [(PUReviewAdjustmentURLNode *)self directory];
  v7 = [PUReviewAsset fileURLForAdjustmentsInDirectory:v6];

  [v9 writeToURL:v7 atomically:0];
  adjustmentURL = self->_adjustmentURL;
  self->_adjustmentURL = v7;

  [(PXRunNode *)self complete];
}

- (PUReviewAdjustmentURLNode)initWithReviewAsset:(id)a3 directory:(id)a4 contentEditingOutput:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10 || !v11)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUReviewAdjustmentURLNode.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"reviewAsset && directory"}];
  }

  v17.receiver = self;
  v17.super_class = PUReviewAdjustmentURLNode;
  v13 = [(PXRunNode *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_reviewAsset, a3);
    objc_storeStrong(&v14->_contentEditingOutput, a5);
    objc_storeStrong(&v14->_directory, a4);
  }

  return v14;
}

@end
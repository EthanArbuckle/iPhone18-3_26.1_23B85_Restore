@interface PUPhotoEditSnapshotFinishingNode
- (PUPhotoEditSnapshotFinishingNode)initWithAdjustmentNode:(id)a3 baseMediaNode:(id)a4 currentImageNode:(id)a5 currentVideoNode:(id)a6 completionHandler:(id)a7;
- (void)run;
@end

@implementation PUPhotoEditSnapshotFinishingNode

- (void)run
{
  v4 = objc_alloc_init(PUPhotoEditSnapshot);
  v5 = [(PUPhotoEditSnapshotFinishingNode *)self baseMediaNode];
  v6 = [v5 imageData];

  v7 = [(PUPhotoEditSnapshotFinishingNode *)self currentImageNode];
  v8 = [v7 imageData];

  v9 = [(PUPhotoEditSnapshotFinishingNode *)self currentImageNode];
  v10 = [v9 imageDataUTI];

  v11 = [(PUPhotoEditSnapshotFinishingNode *)self adjustmentNode];
  v12 = [v11 adjustmentData];

  v13 = [v12 baseVersion];
  v14 = [(PUPhotoEditSnapshotFinishingNode *)self currentVideoNode];

  if (v14)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __39__PUPhotoEditSnapshotFinishingNode_run__block_invoke;
    aBlock[3] = &unk_1E7B7ADA0;
    aBlock[4] = self;
    aBlock[5] = a2;
    v15 = _Block_copy(aBlock);
    v16 = [(PUPhotoEditSnapshotFinishingNode *)self currentVideoNode];
    [v16 videoAsset];
    v17 = v10;
    v19 = v18 = v6;
    v27 = v8;
    v15[2](v15, v19);
    v20 = v26 = v13;

    v21 = [(PUPhotoEditSnapshotFinishingNode *)self baseMediaNode];
    v22 = [v21 videoAsset];
    v23 = v15[2](v15, v22);

    v6 = v18;
    v10 = v17;

    [(PUPhotoEditSnapshot *)v4 _setVideoComplement:v20];
    [(PUPhotoEditSnapshot *)v4 _setBaseVideoComplement:v23];

    v8 = v27;
    v13 = v26;
  }

  if (v13)
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  [(PUPhotoEditSnapshot *)v4 _setImageData:v8, v26];
  [(PUPhotoEditSnapshot *)v4 _setImageUTI:v10];
  [(PUPhotoEditSnapshot *)v4 _setBaseImageData:v6];
  [(PUPhotoEditSnapshot *)v4 _setAdjustmentData:v12];
  [(PUPhotoEditSnapshot *)v4 _setWorkImageVersion:v24];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PUPhotoEditSnapshotFinishingNode_run__block_invoke_2;
  block[3] = &unk_1E7B80C38;
  block[4] = self;
  v29 = v4;
  v25 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

id __39__PUPhotoEditSnapshotFinishingNode_run__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PUPhotoEditSnapshot.m" lineNumber:265 description:{@"No video URL for video asset: %@", v3}];
    }

    v4 = v3;
  }

  return v3;
}

uint64_t __39__PUPhotoEditSnapshotFinishingNode_run__block_invoke_2(uint64_t a1)
{
  (*(*(*(a1 + 32) + 80) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  v4 = *(a1 + 32);

  return [v4 complete];
}

- (PUPhotoEditSnapshotFinishingNode)initWithAdjustmentNode:(id)a3 baseMediaNode:(id)a4 currentImageNode:(id)a5 currentVideoNode:(id)a6 completionHandler:(id)a7
{
  v24[3] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v22 = a6;
  v16 = a7;
  v24[0] = v13;
  v24[1] = v14;
  v24[2] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  v23.receiver = self;
  v23.super_class = PUPhotoEditSnapshotFinishingNode;
  v18 = [(PXRunNode *)&v23 initWithDependencies:v17];

  if (v18)
  {
    objc_storeStrong(&v18->_adjustmentNode, a3);
    objc_storeStrong(&v18->_baseMediaNode, a4);
    objc_storeStrong(&v18->_currentImageNode, a5);
    objc_storeStrong(&v18->_currentVideoNode, a6);
    v19 = [v16 copy];
    completionHandler = v18->_completionHandler;
    v18->_completionHandler = v19;
  }

  return v18;
}

@end
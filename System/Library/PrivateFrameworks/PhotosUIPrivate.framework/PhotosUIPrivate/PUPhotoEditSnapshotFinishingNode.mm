@interface PUPhotoEditSnapshotFinishingNode
- (PUPhotoEditSnapshotFinishingNode)initWithAdjustmentNode:(id)node baseMediaNode:(id)mediaNode currentImageNode:(id)imageNode currentVideoNode:(id)videoNode completionHandler:(id)handler;
- (void)run;
@end

@implementation PUPhotoEditSnapshotFinishingNode

- (void)run
{
  v4 = objc_alloc_init(PUPhotoEditSnapshot);
  baseMediaNode = [(PUPhotoEditSnapshotFinishingNode *)self baseMediaNode];
  imageData = [baseMediaNode imageData];

  currentImageNode = [(PUPhotoEditSnapshotFinishingNode *)self currentImageNode];
  imageData2 = [currentImageNode imageData];

  currentImageNode2 = [(PUPhotoEditSnapshotFinishingNode *)self currentImageNode];
  imageDataUTI = [currentImageNode2 imageDataUTI];

  adjustmentNode = [(PUPhotoEditSnapshotFinishingNode *)self adjustmentNode];
  adjustmentData = [adjustmentNode adjustmentData];

  baseVersion = [adjustmentData baseVersion];
  currentVideoNode = [(PUPhotoEditSnapshotFinishingNode *)self currentVideoNode];

  if (currentVideoNode)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __39__PUPhotoEditSnapshotFinishingNode_run__block_invoke;
    aBlock[3] = &unk_1E7B7ADA0;
    aBlock[4] = self;
    aBlock[5] = a2;
    v15 = _Block_copy(aBlock);
    currentVideoNode2 = [(PUPhotoEditSnapshotFinishingNode *)self currentVideoNode];
    [currentVideoNode2 videoAsset];
    v17 = imageDataUTI;
    v19 = v18 = imageData;
    v27 = imageData2;
    v15[2](v15, v19);
    v20 = v26 = baseVersion;

    baseMediaNode2 = [(PUPhotoEditSnapshotFinishingNode *)self baseMediaNode];
    videoAsset = [baseMediaNode2 videoAsset];
    v23 = v15[2](v15, videoAsset);

    imageData = v18;
    imageDataUTI = v17;

    [(PUPhotoEditSnapshot *)v4 _setVideoComplement:v20];
    [(PUPhotoEditSnapshot *)v4 _setBaseVideoComplement:v23];

    imageData2 = v27;
    baseVersion = v26;
  }

  if (baseVersion)
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  [(PUPhotoEditSnapshot *)v4 _setImageData:imageData2, v26];
  [(PUPhotoEditSnapshot *)v4 _setImageUTI:imageDataUTI];
  [(PUPhotoEditSnapshot *)v4 _setBaseImageData:imageData];
  [(PUPhotoEditSnapshot *)v4 _setAdjustmentData:adjustmentData];
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

- (PUPhotoEditSnapshotFinishingNode)initWithAdjustmentNode:(id)node baseMediaNode:(id)mediaNode currentImageNode:(id)imageNode currentVideoNode:(id)videoNode completionHandler:(id)handler
{
  v24[3] = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  mediaNodeCopy = mediaNode;
  imageNodeCopy = imageNode;
  videoNodeCopy = videoNode;
  handlerCopy = handler;
  v24[0] = nodeCopy;
  v24[1] = mediaNodeCopy;
  v24[2] = imageNodeCopy;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  v23.receiver = self;
  v23.super_class = PUPhotoEditSnapshotFinishingNode;
  v18 = [(PXRunNode *)&v23 initWithDependencies:v17];

  if (v18)
  {
    objc_storeStrong(&v18->_adjustmentNode, node);
    objc_storeStrong(&v18->_baseMediaNode, mediaNode);
    objc_storeStrong(&v18->_currentImageNode, imageNode);
    objc_storeStrong(&v18->_currentVideoNode, videoNode);
    v19 = [handlerCopy copy];
    completionHandler = v18->_completionHandler;
    v18->_completionHandler = v19;
  }

  return v18;
}

@end
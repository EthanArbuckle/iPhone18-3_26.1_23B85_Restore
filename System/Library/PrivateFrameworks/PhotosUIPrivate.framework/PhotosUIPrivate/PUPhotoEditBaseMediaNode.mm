@interface PUPhotoEditBaseMediaNode
- (PUPhotoEditBaseMediaNode)initWithAdjustmentNode:(id)node;
- (void)run;
- (void)runNode:(id)node didCompleteWithError:(id)error;
@end

@implementation PUPhotoEditBaseMediaNode

- (void)runNode:(id)node didCompleteWithError:(id)error
{
  nodeCopy = node;
  errorCopy = error;
  v7 = nodeCopy;
  v8 = errorCopy;
  imageDataNode = self->_imageDataNode;
  if (imageDataNode == nodeCopy)
  {
    imageData = [(PUEditableMediaProviderImageDataNode *)imageDataNode imageData];
    v12 = &OBJC_IVAR___PUPhotoEditBaseMediaNode__imageData;
  }

  else
  {
    videoAssetNode = self->_videoAssetNode;
    if (videoAssetNode != nodeCopy)
    {
      goto LABEL_6;
    }

    imageData = [(PUEditableMediaProviderVideoAssetNode *)videoAssetNode videoAsset];
    v12 = &OBJC_IVAR___PUPhotoEditBaseMediaNode__videoAsset;
  }

  v13 = *v12;
  v14 = *(&self->super.super.isa + v13);
  *(&self->super.super.isa + v13) = imageData;

  v7 = nodeCopy;
LABEL_6:
  if (self->_gatheringNode == v7)
  {
    [(PXRunNode *)self completeWithError:v8];
  }
}

- (void)run
{
  v16[2] = *MEMORY[0x1E69E9840];
  adjustmentNode = [(PUPhotoEditBaseMediaNode *)self adjustmentNode];
  adjustmentData = [adjustmentNode adjustmentData];
  asset = [adjustmentNode asset];
  mediaProvider = [adjustmentNode mediaProvider];
  if ([adjustmentData baseVersion])
  {
    v7 = [[PUEditableMediaProviderImageDataNode alloc] initWithAsset:asset mediaProvider:mediaProvider version:8];
    imageDataNode = self->_imageDataNode;
    self->_imageDataNode = v7;

    if ([asset isLivePhoto])
    {
      v9 = [[PUEditableMediaProviderVideoAssetNode alloc] initWithAsset:asset mediaProvider:mediaProvider version:8];
      videoAssetNode = self->_videoAssetNode;
      self->_videoAssetNode = v9;

      v11 = objc_alloc(MEMORY[0x1E69C3980]);
      v12 = self->_videoAssetNode;
      v16[0] = self->_imageDataNode;
      v16[1] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
      v14 = [v11 initWithDependencies:v13];
      gatheringNode = self->_gatheringNode;
      self->_gatheringNode = v14;
    }

    else
    {
      objc_storeStrong(&self->_gatheringNode, self->_imageDataNode);
    }

    [(PXRunNode *)self->_imageDataNode setDelegate:self];
    [(PXRunNode *)self->_videoAssetNode setDelegate:self];
    [(PXRunNode *)self->_gatheringNode setDelegate:self];
    [MEMORY[0x1E69C3980] processGraphForRunNode:self->_gatheringNode];
  }

  else
  {
    [(PXRunNode *)self complete];
  }
}

- (PUPhotoEditBaseMediaNode)initWithAdjustmentNode:(id)node
{
  v10[1] = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  v10[0] = nodeCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v9.receiver = self;
  v9.super_class = PUPhotoEditBaseMediaNode;
  v7 = [(PXRunNode *)&v9 initWithDependencies:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_adjustmentNode, node);
  }

  return v7;
}

@end
@interface PUPhotoEditBaseMediaNode
- (PUPhotoEditBaseMediaNode)initWithAdjustmentNode:(id)a3;
- (void)run;
- (void)runNode:(id)a3 didCompleteWithError:(id)a4;
@end

@implementation PUPhotoEditBaseMediaNode

- (void)runNode:(id)a3 didCompleteWithError:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = v15;
  v8 = v6;
  imageDataNode = self->_imageDataNode;
  if (imageDataNode == v15)
  {
    v11 = [(PUEditableMediaProviderImageDataNode *)imageDataNode imageData];
    v12 = &OBJC_IVAR___PUPhotoEditBaseMediaNode__imageData;
  }

  else
  {
    videoAssetNode = self->_videoAssetNode;
    if (videoAssetNode != v15)
    {
      goto LABEL_6;
    }

    v11 = [(PUEditableMediaProviderVideoAssetNode *)videoAssetNode videoAsset];
    v12 = &OBJC_IVAR___PUPhotoEditBaseMediaNode__videoAsset;
  }

  v13 = *v12;
  v14 = *(&self->super.super.isa + v13);
  *(&self->super.super.isa + v13) = v11;

  v7 = v15;
LABEL_6:
  if (self->_gatheringNode == v7)
  {
    [(PXRunNode *)self completeWithError:v8];
  }
}

- (void)run
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotoEditBaseMediaNode *)self adjustmentNode];
  v4 = [v3 adjustmentData];
  v5 = [v3 asset];
  v6 = [v3 mediaProvider];
  if ([v4 baseVersion])
  {
    v7 = [[PUEditableMediaProviderImageDataNode alloc] initWithAsset:v5 mediaProvider:v6 version:8];
    imageDataNode = self->_imageDataNode;
    self->_imageDataNode = v7;

    if ([v5 isLivePhoto])
    {
      v9 = [[PUEditableMediaProviderVideoAssetNode alloc] initWithAsset:v5 mediaProvider:v6 version:8];
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

- (PUPhotoEditBaseMediaNode)initWithAdjustmentNode:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v9.receiver = self;
  v9.super_class = PUPhotoEditBaseMediaNode;
  v7 = [(PXRunNode *)&v9 initWithDependencies:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_adjustmentNode, a3);
  }

  return v7;
}

@end
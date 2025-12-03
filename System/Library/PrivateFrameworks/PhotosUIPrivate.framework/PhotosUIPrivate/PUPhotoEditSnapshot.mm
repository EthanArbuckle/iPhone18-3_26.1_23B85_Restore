@interface PUPhotoEditSnapshot
+ (void)captureSnapshotForAsset:(id)asset mediaProvider:(id)provider completion:(id)completion;
- (PUPhotoEditSnapshot)init;
- (id)_copyAsset:(id)asset;
- (id)_copyData:(id)data;
- (id)_copyDataAtURL:(id)l;
- (void)_copySourceData:(id)data destinationData:(id *)destinationData destinationURL:(id *)l;
- (void)_setBaseImageData:(id)data;
- (void)_setBaseVideoComplement:(id)complement;
- (void)_setImageData:(id)data;
- (void)_setVideoComplement:(id)complement;
@end

@implementation PUPhotoEditSnapshot

- (void)_copySourceData:(id)data destinationData:(id *)destinationData destinationURL:(id *)l
{
  dataCopy = data;
  v10 = NSTemporaryDirectory();
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v17 = [v10 stringByAppendingPathComponent:uUIDString];

  [dataCopy writeToFile:v17 options:1073741825 error:0];
  v13 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v17 options:8 error:0];
  v14 = v17;
  unlink([v17 fileSystemRepresentation]);
  if (v13)
  {
    if (!destinationData)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditSnapshot.m" lineNumber:134 description:@"couldn't copy snapshot data"];

  if (destinationData)
  {
LABEL_3:
    v15 = v13;
    *destinationData = v13;
  }

LABEL_4:
  if (l)
  {
    *l = [MEMORY[0x1E695DFF8] fileURLWithPath:v17];
  }
}

- (id)_copyDataAtURL:(id)l
{
  if (!l)
  {
    return 0;
  }

  v4 = MEMORY[0x1E695DEF0];
  path = [l path];
  v6 = [v4 dataWithContentsOfFile:path options:8 error:0];

  v9 = 0;
  [(PUPhotoEditSnapshot *)self _copySourceData:v6 destinationData:0 destinationURL:&v9];
  v7 = v9;

  return v7;
}

- (id)_copyData:(id)data
{
  if (!data)
  {
    return 0;
  }

  v5 = 0;
  [(PUPhotoEditSnapshot *)self _copySourceData:data destinationData:&v5 destinationURL:0];
  v3 = v5;

  return v3;
}

- (id)_copyAsset:(id)asset
{
  if (!asset)
  {
    return 0;
  }

  v4 = [asset URL];
  v5 = [(PUPhotoEditSnapshot *)self _copyDataAtURL:v4];
  v6 = [MEMORY[0x1E6988168] assetWithURL:v5];

  return v6;
}

- (void)_setBaseVideoComplement:(id)complement
{
  v4 = [(PUPhotoEditSnapshot *)self _copyAsset:complement];
  baseVideoComplement = self->_baseVideoComplement;
  self->_baseVideoComplement = v4;

  MEMORY[0x1EEE66BB8](v4, baseVideoComplement);
}

- (void)_setVideoComplement:(id)complement
{
  v4 = [(PUPhotoEditSnapshot *)self _copyAsset:complement];
  videoComplement = self->_videoComplement;
  self->_videoComplement = v4;

  MEMORY[0x1EEE66BB8](v4, videoComplement);
}

- (void)_setBaseImageData:(id)data
{
  v4 = [(PUPhotoEditSnapshot *)self _copyData:data];
  baseImageData = self->_baseImageData;
  self->_baseImageData = v4;

  MEMORY[0x1EEE66BB8](v4, baseImageData);
}

- (void)_setImageData:(id)data
{
  v4 = [(PUPhotoEditSnapshot *)self _copyData:data];
  imageData = self->_imageData;
  self->_imageData = v4;

  MEMORY[0x1EEE66BB8](v4, imageData);
}

- (PUPhotoEditSnapshot)init
{
  v3.receiver = self;
  v3.super_class = PUPhotoEditSnapshot;
  result = [(PUPhotoEditSnapshot *)&v3 init];
  if (result)
  {
    result->_workImageVersion = 1;
  }

  return result;
}

+ (void)captureSnapshotForAsset:(id)asset mediaProvider:(id)provider completion:(id)completion
{
  assetCopy = asset;
  providerCopy = provider;
  completionCopy = completion;
  v9 = [[PUEditableMediaProviderAdjustmentDataNode alloc] initWithAsset:assetCopy mediaProvider:providerCopy];
  v10 = [[PUPhotoEditBaseMediaNode alloc] initWithAdjustmentNode:v9];
  v11 = [[PUEditableMediaProviderImageDataNode alloc] initWithAsset:assetCopy mediaProvider:providerCopy version:0];
  v12 = 0;
  if ([assetCopy isLivePhoto])
  {
    v12 = [[PUEditableMediaProviderVideoAssetNode alloc] initWithAsset:assetCopy mediaProvider:providerCopy version:0];
  }

  v13 = [[PUPhotoEditSnapshotFinishingNode alloc] initWithAdjustmentNode:v9 baseMediaNode:v10 currentImageNode:v11 currentVideoNode:v12 completionHandler:completionCopy];

  [MEMORY[0x1E69C3980] processGraphForRunNode:v13];
}

@end
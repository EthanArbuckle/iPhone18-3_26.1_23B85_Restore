@interface PUPhotoEditSnapshot
+ (void)captureSnapshotForAsset:(id)a3 mediaProvider:(id)a4 completion:(id)a5;
- (PUPhotoEditSnapshot)init;
- (id)_copyAsset:(id)a3;
- (id)_copyData:(id)a3;
- (id)_copyDataAtURL:(id)a3;
- (void)_copySourceData:(id)a3 destinationData:(id *)a4 destinationURL:(id *)a5;
- (void)_setBaseImageData:(id)a3;
- (void)_setBaseVideoComplement:(id)a3;
- (void)_setImageData:(id)a3;
- (void)_setVideoComplement:(id)a3;
@end

@implementation PUPhotoEditSnapshot

- (void)_copySourceData:(id)a3 destinationData:(id *)a4 destinationURL:(id *)a5
{
  v9 = a3;
  v10 = NSTemporaryDirectory();
  v11 = [MEMORY[0x1E696AFB0] UUID];
  v12 = [v11 UUIDString];
  v17 = [v10 stringByAppendingPathComponent:v12];

  [v9 writeToFile:v17 options:1073741825 error:0];
  v13 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v17 options:8 error:0];
  v14 = v17;
  unlink([v17 fileSystemRepresentation]);
  if (v13)
  {
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"PUPhotoEditSnapshot.m" lineNumber:134 description:@"couldn't copy snapshot data"];

  if (a4)
  {
LABEL_3:
    v15 = v13;
    *a4 = v13;
  }

LABEL_4:
  if (a5)
  {
    *a5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v17];
  }
}

- (id)_copyDataAtURL:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = MEMORY[0x1E695DEF0];
  v5 = [a3 path];
  v6 = [v4 dataWithContentsOfFile:v5 options:8 error:0];

  v9 = 0;
  [(PUPhotoEditSnapshot *)self _copySourceData:v6 destinationData:0 destinationURL:&v9];
  v7 = v9;

  return v7;
}

- (id)_copyData:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = 0;
  [(PUPhotoEditSnapshot *)self _copySourceData:a3 destinationData:&v5 destinationURL:0];
  v3 = v5;

  return v3;
}

- (id)_copyAsset:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 URL];
  v5 = [(PUPhotoEditSnapshot *)self _copyDataAtURL:v4];
  v6 = [MEMORY[0x1E6988168] assetWithURL:v5];

  return v6;
}

- (void)_setBaseVideoComplement:(id)a3
{
  v4 = [(PUPhotoEditSnapshot *)self _copyAsset:a3];
  baseVideoComplement = self->_baseVideoComplement;
  self->_baseVideoComplement = v4;

  MEMORY[0x1EEE66BB8](v4, baseVideoComplement);
}

- (void)_setVideoComplement:(id)a3
{
  v4 = [(PUPhotoEditSnapshot *)self _copyAsset:a3];
  videoComplement = self->_videoComplement;
  self->_videoComplement = v4;

  MEMORY[0x1EEE66BB8](v4, videoComplement);
}

- (void)_setBaseImageData:(id)a3
{
  v4 = [(PUPhotoEditSnapshot *)self _copyData:a3];
  baseImageData = self->_baseImageData;
  self->_baseImageData = v4;

  MEMORY[0x1EEE66BB8](v4, baseImageData);
}

- (void)_setImageData:(id)a3
{
  v4 = [(PUPhotoEditSnapshot *)self _copyData:a3];
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

+ (void)captureSnapshotForAsset:(id)a3 mediaProvider:(id)a4 completion:(id)a5
{
  v14 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [[PUEditableMediaProviderAdjustmentDataNode alloc] initWithAsset:v14 mediaProvider:v7];
  v10 = [[PUPhotoEditBaseMediaNode alloc] initWithAdjustmentNode:v9];
  v11 = [[PUEditableMediaProviderImageDataNode alloc] initWithAsset:v14 mediaProvider:v7 version:0];
  v12 = 0;
  if ([v14 isLivePhoto])
  {
    v12 = [[PUEditableMediaProviderVideoAssetNode alloc] initWithAsset:v14 mediaProvider:v7 version:0];
  }

  v13 = [[PUPhotoEditSnapshotFinishingNode alloc] initWithAdjustmentNode:v9 baseMediaNode:v10 currentImageNode:v11 currentVideoNode:v12 completionHandler:v8];

  [MEMORY[0x1E69C3980] processGraphForRunNode:v13];
}

@end
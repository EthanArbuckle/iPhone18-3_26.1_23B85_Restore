@interface PUPhotoKitMediaProviderImageDataDownloadSimulation
- (PUPhotoKitMediaProviderImageDataDownloadSimulation)init;
- (void)_handleResultImageData:(id)a3 dataUTI:(id)a4 orientation:(int64_t)a5 info:(id)a6;
- (void)endSimulationWithError:(id)a3;
- (void)updateSimulationWithProgress:(double)a3;
@end

@implementation PUPhotoKitMediaProviderImageDataDownloadSimulation

- (void)endSimulationWithError:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PUPhotoKitMediaProviderImageDataDownloadSimulation;
  [(PUPhotoKitMediaProviderDownloadSimulation *)&v12 endSimulationWithError:v4];
  v5 = [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self _resultImageData];
  v6 = [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self _resultDataUTI];
  v7 = [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self _resultOrientaton];
  v8 = [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self _resultInfo];
  if (v4)
  {

    v13 = *MEMORY[0x1E6978DF0];
    v14[0] = v4;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

    v5 = 0;
    v8 = v9;
  }

  v10 = [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self externalResultHandler];
  (v10)[2](v10, v5, v6, v7, v8);

  internalResultHandler = self->_internalResultHandler;
  self->_internalResultHandler = 0;
}

- (void)updateSimulationWithProgress:(double)a3
{
  v8.receiver = self;
  v8.super_class = PUPhotoKitMediaProviderImageDataDownloadSimulation;
  [(PUPhotoKitMediaProviderDownloadSimulation *)&v8 updateSimulationWithProgress:?];
  v5 = [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self externalProgressHandler];

  if (v5)
  {
    v7 = 0;
    v6 = [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self externalProgressHandler];
    (v6)[2](v6, 0, &v7, 0, a3);
  }
}

- (void)_handleResultImageData:(id)a3 dataUTI:(id)a4 orientation:(int64_t)a5 info:(id)a6
{
  v10 = a6;
  v11 = a4;
  [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self _setResultImageData:a3];
  [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self _setResultDataUTI:v11];

  [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self _setResultOrientation:a5];
  [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self _setResultInfo:v10];

  [(PUPhotoKitMediaProviderDownloadSimulation *)self beginSimulation];
}

- (PUPhotoKitMediaProviderImageDataDownloadSimulation)init
{
  v10.receiver = self;
  v10.super_class = PUPhotoKitMediaProviderImageDataDownloadSimulation;
  v2 = [(PUPhotoKitMediaProviderDownloadSimulation *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__PUPhotoKitMediaProviderImageDataDownloadSimulation_init__block_invoke;
    v8[3] = &unk_1E7B7BFB0;
    v4 = v2;
    v9 = v4;
    v5 = [v8 copy];
    internalResultHandler = v4->_internalResultHandler;
    v4->_internalResultHandler = v5;
  }

  return v3;
}

@end
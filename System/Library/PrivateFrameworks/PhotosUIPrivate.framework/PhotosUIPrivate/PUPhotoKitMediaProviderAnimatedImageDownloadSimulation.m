@interface PUPhotoKitMediaProviderAnimatedImageDownloadSimulation
- (PUPhotoKitMediaProviderAnimatedImageDownloadSimulation)init;
- (void)_handleResultAnimatedImage:(id)a3 info:(id)a4;
- (void)endSimulationWithError:(id)a3;
- (void)updateSimulationWithProgress:(double)a3;
@end

@implementation PUPhotoKitMediaProviderAnimatedImageDownloadSimulation

- (void)endSimulationWithError:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PUPhotoKitMediaProviderAnimatedImageDownloadSimulation;
  [(PUPhotoKitMediaProviderDownloadSimulation *)&v10 endSimulationWithError:v4];
  v5 = [(PUPhotoKitMediaProviderAnimatedImageDownloadSimulation *)self _resultAnimatedImage];
  v6 = [(PUPhotoKitMediaProviderAnimatedImageDownloadSimulation *)self _resultInfo];
  if (v4)
  {

    v11 = *MEMORY[0x1E6978DF0];
    v12[0] = v4;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    v5 = 0;
    v6 = v7;
  }

  v8 = [(PUPhotoKitMediaProviderAnimatedImageDownloadSimulation *)self externalResultHandler];
  (v8)[2](v8, v5, v6);

  internalResultHandler = self->_internalResultHandler;
  self->_internalResultHandler = 0;
}

- (void)updateSimulationWithProgress:(double)a3
{
  v8.receiver = self;
  v8.super_class = PUPhotoKitMediaProviderAnimatedImageDownloadSimulation;
  [(PUPhotoKitMediaProviderDownloadSimulation *)&v8 updateSimulationWithProgress:?];
  v5 = [(PUPhotoKitMediaProviderAnimatedImageDownloadSimulation *)self externalProgressHandler];

  if (v5)
  {
    v7 = 0;
    v6 = [(PUPhotoKitMediaProviderAnimatedImageDownloadSimulation *)self externalProgressHandler];
    (v6)[2](v6, 0, &v7, 0, a3);
  }
}

- (void)_handleResultAnimatedImage:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PUPhotoKitMediaProviderAnimatedImageDownloadSimulation__handleResultAnimatedImage_info___block_invoke;
  block[3] = &unk_1E7B809F0;
  v11 = v7;
  v12 = self;
  v13 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __90__PUPhotoKitMediaProviderAnimatedImageDownloadSimulation__handleResultAnimatedImage_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
  v3 = [v2 BOOLValue];

  v4 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978E40]];
  v5 = [v4 integerValue];

  v7 = [MEMORY[0x1E69BF260] formatWithID:v5];
  if ((v3 & 1) != 0 || [v7 isThumbnail])
  {
    v6 = [*(a1 + 40) externalResultHandler];
    v6[2](v6, *(a1 + 48), *(a1 + 32));
  }

  else
  {
    [*(a1 + 40) _setResultAnimatedImage:*(a1 + 48)];
    [*(a1 + 40) _setResultInfo:*(a1 + 32)];
    [*(a1 + 40) beginSimulation];
  }
}

- (PUPhotoKitMediaProviderAnimatedImageDownloadSimulation)init
{
  v10.receiver = self;
  v10.super_class = PUPhotoKitMediaProviderAnimatedImageDownloadSimulation;
  v2 = [(PUPhotoKitMediaProviderDownloadSimulation *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__PUPhotoKitMediaProviderAnimatedImageDownloadSimulation_init__block_invoke;
    v8[3] = &unk_1E7B7C050;
    v4 = v2;
    v9 = v4;
    v5 = [v8 copy];
    internalResultHandler = v4->_internalResultHandler;
    v4->_internalResultHandler = v5;
  }

  return v3;
}

@end
@interface PUPhotoKitMediaProviderPlayerItemDownloadSimulation
- (PUPhotoKitMediaProviderPlayerItemDownloadSimulation)init;
- (void)_handleResultPlayerItem:(id)a3 info:(id)a4;
- (void)endSimulationWithError:(id)a3;
- (void)updateSimulationWithProgress:(double)a3;
@end

@implementation PUPhotoKitMediaProviderPlayerItemDownloadSimulation

- (void)endSimulationWithError:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PUPhotoKitMediaProviderPlayerItemDownloadSimulation;
  [(PUPhotoKitMediaProviderDownloadSimulation *)&v10 endSimulationWithError:v4];
  v5 = [(PUPhotoKitMediaProviderPlayerItemDownloadSimulation *)self _resultPlayerItem];
  v6 = [(PUPhotoKitMediaProviderPlayerItemDownloadSimulation *)self _resultInfo];
  if (v4)
  {

    v11 = *MEMORY[0x1E6978DF0];
    v12[0] = v4;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    v5 = 0;
    v6 = v7;
  }

  v8 = [(PUPhotoKitMediaProviderPlayerItemDownloadSimulation *)self externalResultHandler];
  (v8)[2](v8, v5, v6);

  internalResultHandler = self->_internalResultHandler;
  self->_internalResultHandler = 0;
}

- (void)updateSimulationWithProgress:(double)a3
{
  v8.receiver = self;
  v8.super_class = PUPhotoKitMediaProviderPlayerItemDownloadSimulation;
  [(PUPhotoKitMediaProviderDownloadSimulation *)&v8 updateSimulationWithProgress:?];
  v5 = [(PUPhotoKitMediaProviderPlayerItemDownloadSimulation *)self externalProgressHandler];

  if (v5)
  {
    v7 = 0;
    v6 = [(PUPhotoKitMediaProviderPlayerItemDownloadSimulation *)self externalProgressHandler];
    (v6)[2](v6, 0, &v7, 0, a3);
  }
}

- (void)_handleResultPlayerItem:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PUPhotoKitMediaProviderPlayerItemDownloadSimulation__handleResultPlayerItem_info___block_invoke;
  block[3] = &unk_1E7B809F0;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __84__PUPhotoKitMediaProviderPlayerItemDownloadSimulation__handleResultPlayerItem_info___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setResultPlayerItem:*(a1 + 40)];
  [*(a1 + 32) _setResultInfo:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 beginSimulation];
}

- (PUPhotoKitMediaProviderPlayerItemDownloadSimulation)init
{
  v11.receiver = self;
  v11.super_class = PUPhotoKitMediaProviderPlayerItemDownloadSimulation;
  v2 = [(PUPhotoKitMediaProviderDownloadSimulation *)&v11 init];
  v3 = v2;
  if (v2)
  {
    [(PUPhotoKitMediaProviderDownloadSimulation *)v2 downloadDuration];
    [(PUPhotoKitMediaProviderDownloadSimulation *)v3 setDownloadDuration:v4 * 2.5];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__PUPhotoKitMediaProviderPlayerItemDownloadSimulation_init__block_invoke;
    v9[3] = &unk_1E7B7BFD8;
    v5 = v3;
    v10 = v5;
    v6 = [v9 copy];
    internalResultHandler = v5->_internalResultHandler;
    v5->_internalResultHandler = v6;
  }

  return v3;
}

@end
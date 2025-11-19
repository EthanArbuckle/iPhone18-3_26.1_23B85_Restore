@interface PUPhotoKitMediaProviderAVAssetDownloadSimulation
- (PUPhotoKitMediaProviderAVAssetDownloadSimulation)init;
- (void)_handleResultAVAsset:(id)a3 audioMix:(id)a4 info:(id)a5;
- (void)endSimulationWithError:(id)a3;
- (void)updateSimulationWithProgress:(double)a3;
@end

@implementation PUPhotoKitMediaProviderAVAssetDownloadSimulation

- (void)endSimulationWithError:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PUPhotoKitMediaProviderAVAssetDownloadSimulation;
  [(PUPhotoKitMediaProviderDownloadSimulation *)&v11 endSimulationWithError:v4];
  v5 = [(PUPhotoKitMediaProviderAVAssetDownloadSimulation *)self _resultAVAsset];
  v6 = [(PUPhotoKitMediaProviderAVAssetDownloadSimulation *)self _resultAudioMix];
  v7 = [(PUPhotoKitMediaProviderAVAssetDownloadSimulation *)self _resultInfo];
  if (v4)
  {

    v12 = *MEMORY[0x1E6978DF0];
    v13[0] = v4;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    v5 = 0;
    v6 = 0;
    v7 = v8;
  }

  v9 = [(PUPhotoKitMediaProviderAVAssetDownloadSimulation *)self externalResultHandler];
  (v9)[2](v9, v5, v6, v7);

  internalResultHandler = self->_internalResultHandler;
  self->_internalResultHandler = 0;
}

- (void)updateSimulationWithProgress:(double)a3
{
  v8.receiver = self;
  v8.super_class = PUPhotoKitMediaProviderAVAssetDownloadSimulation;
  [(PUPhotoKitMediaProviderDownloadSimulation *)&v8 updateSimulationWithProgress:?];
  v5 = [(PUPhotoKitMediaProviderAVAssetDownloadSimulation *)self externalProgressHandler];

  if (v5)
  {
    v7 = 0;
    v6 = [(PUPhotoKitMediaProviderAVAssetDownloadSimulation *)self externalProgressHandler];
    (v6)[2](v6, 0, &v7, 0, a3);
  }
}

- (void)_handleResultAVAsset:(id)a3 audioMix:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__PUPhotoKitMediaProviderAVAssetDownloadSimulation__handleResultAVAsset_audioMix_info___block_invoke;
  v14[3] = &unk_1E7B7F1D0;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

uint64_t __87__PUPhotoKitMediaProviderAVAssetDownloadSimulation__handleResultAVAsset_audioMix_info___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setResultAVAsset:*(a1 + 40)];
  [*(a1 + 32) _setResultAudioMix:*(a1 + 48)];
  [*(a1 + 32) _setResultInfo:*(a1 + 56)];
  v2 = *(a1 + 32);

  return [v2 beginSimulation];
}

- (PUPhotoKitMediaProviderAVAssetDownloadSimulation)init
{
  v11.receiver = self;
  v11.super_class = PUPhotoKitMediaProviderAVAssetDownloadSimulation;
  v2 = [(PUPhotoKitMediaProviderDownloadSimulation *)&v11 init];
  v3 = v2;
  if (v2)
  {
    [(PUPhotoKitMediaProviderDownloadSimulation *)v2 downloadDuration];
    [(PUPhotoKitMediaProviderDownloadSimulation *)v3 setDownloadDuration:v4 * 2.5];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__PUPhotoKitMediaProviderAVAssetDownloadSimulation_init__block_invoke;
    v9[3] = &unk_1E7B7C000;
    v5 = v3;
    v10 = v5;
    v6 = [v9 copy];
    internalResultHandler = v5->_internalResultHandler;
    v5->_internalResultHandler = v6;
  }

  return v3;
}

@end
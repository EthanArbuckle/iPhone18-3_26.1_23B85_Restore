@interface PUPhotoKitMediaProviderAVAssetDownloadSimulation
- (PUPhotoKitMediaProviderAVAssetDownloadSimulation)init;
- (void)_handleResultAVAsset:(id)asset audioMix:(id)mix info:(id)info;
- (void)endSimulationWithError:(id)error;
- (void)updateSimulationWithProgress:(double)progress;
@end

@implementation PUPhotoKitMediaProviderAVAssetDownloadSimulation

- (void)endSimulationWithError:(id)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v11.receiver = self;
  v11.super_class = PUPhotoKitMediaProviderAVAssetDownloadSimulation;
  [(PUPhotoKitMediaProviderDownloadSimulation *)&v11 endSimulationWithError:errorCopy];
  _resultAVAsset = [(PUPhotoKitMediaProviderAVAssetDownloadSimulation *)self _resultAVAsset];
  _resultAudioMix = [(PUPhotoKitMediaProviderAVAssetDownloadSimulation *)self _resultAudioMix];
  _resultInfo = [(PUPhotoKitMediaProviderAVAssetDownloadSimulation *)self _resultInfo];
  if (errorCopy)
  {

    v12 = *MEMORY[0x1E6978DF0];
    v13[0] = errorCopy;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    _resultAVAsset = 0;
    _resultAudioMix = 0;
    _resultInfo = v8;
  }

  externalResultHandler = [(PUPhotoKitMediaProviderAVAssetDownloadSimulation *)self externalResultHandler];
  (externalResultHandler)[2](externalResultHandler, _resultAVAsset, _resultAudioMix, _resultInfo);

  internalResultHandler = self->_internalResultHandler;
  self->_internalResultHandler = 0;
}

- (void)updateSimulationWithProgress:(double)progress
{
  v8.receiver = self;
  v8.super_class = PUPhotoKitMediaProviderAVAssetDownloadSimulation;
  [(PUPhotoKitMediaProviderDownloadSimulation *)&v8 updateSimulationWithProgress:?];
  externalProgressHandler = [(PUPhotoKitMediaProviderAVAssetDownloadSimulation *)self externalProgressHandler];

  if (externalProgressHandler)
  {
    v7 = 0;
    externalProgressHandler2 = [(PUPhotoKitMediaProviderAVAssetDownloadSimulation *)self externalProgressHandler];
    (externalProgressHandler2)[2](externalProgressHandler2, 0, &v7, 0, progress);
  }
}

- (void)_handleResultAVAsset:(id)asset audioMix:(id)mix info:(id)info
{
  assetCopy = asset;
  mixCopy = mix;
  infoCopy = info;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__PUPhotoKitMediaProviderAVAssetDownloadSimulation__handleResultAVAsset_audioMix_info___block_invoke;
  v14[3] = &unk_1E7B7F1D0;
  v14[4] = self;
  v15 = assetCopy;
  v16 = mixCopy;
  v17 = infoCopy;
  v11 = infoCopy;
  v12 = mixCopy;
  v13 = assetCopy;
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
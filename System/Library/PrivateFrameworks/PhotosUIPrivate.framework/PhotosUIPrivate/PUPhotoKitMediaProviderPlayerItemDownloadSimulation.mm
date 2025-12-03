@interface PUPhotoKitMediaProviderPlayerItemDownloadSimulation
- (PUPhotoKitMediaProviderPlayerItemDownloadSimulation)init;
- (void)_handleResultPlayerItem:(id)item info:(id)info;
- (void)endSimulationWithError:(id)error;
- (void)updateSimulationWithProgress:(double)progress;
@end

@implementation PUPhotoKitMediaProviderPlayerItemDownloadSimulation

- (void)endSimulationWithError:(id)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v10.receiver = self;
  v10.super_class = PUPhotoKitMediaProviderPlayerItemDownloadSimulation;
  [(PUPhotoKitMediaProviderDownloadSimulation *)&v10 endSimulationWithError:errorCopy];
  _resultPlayerItem = [(PUPhotoKitMediaProviderPlayerItemDownloadSimulation *)self _resultPlayerItem];
  _resultInfo = [(PUPhotoKitMediaProviderPlayerItemDownloadSimulation *)self _resultInfo];
  if (errorCopy)
  {

    v11 = *MEMORY[0x1E6978DF0];
    v12[0] = errorCopy;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    _resultPlayerItem = 0;
    _resultInfo = v7;
  }

  externalResultHandler = [(PUPhotoKitMediaProviderPlayerItemDownloadSimulation *)self externalResultHandler];
  (externalResultHandler)[2](externalResultHandler, _resultPlayerItem, _resultInfo);

  internalResultHandler = self->_internalResultHandler;
  self->_internalResultHandler = 0;
}

- (void)updateSimulationWithProgress:(double)progress
{
  v8.receiver = self;
  v8.super_class = PUPhotoKitMediaProviderPlayerItemDownloadSimulation;
  [(PUPhotoKitMediaProviderDownloadSimulation *)&v8 updateSimulationWithProgress:?];
  externalProgressHandler = [(PUPhotoKitMediaProviderPlayerItemDownloadSimulation *)self externalProgressHandler];

  if (externalProgressHandler)
  {
    v7 = 0;
    externalProgressHandler2 = [(PUPhotoKitMediaProviderPlayerItemDownloadSimulation *)self externalProgressHandler];
    (externalProgressHandler2)[2](externalProgressHandler2, 0, &v7, 0, progress);
  }
}

- (void)_handleResultPlayerItem:(id)item info:(id)info
{
  itemCopy = item;
  infoCopy = info;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PUPhotoKitMediaProviderPlayerItemDownloadSimulation__handleResultPlayerItem_info___block_invoke;
  block[3] = &unk_1E7B809F0;
  block[4] = self;
  v11 = itemCopy;
  v12 = infoCopy;
  v8 = infoCopy;
  v9 = itemCopy;
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
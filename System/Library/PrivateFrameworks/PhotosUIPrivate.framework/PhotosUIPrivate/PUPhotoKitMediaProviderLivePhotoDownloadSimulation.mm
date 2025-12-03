@interface PUPhotoKitMediaProviderLivePhotoDownloadSimulation
- (PUPhotoKitMediaProviderLivePhotoDownloadSimulation)init;
- (void)_handleResultLivePhoto:(id)photo info:(id)info;
- (void)endSimulationWithError:(id)error;
- (void)updateSimulationWithProgress:(double)progress;
@end

@implementation PUPhotoKitMediaProviderLivePhotoDownloadSimulation

- (void)endSimulationWithError:(id)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v10.receiver = self;
  v10.super_class = PUPhotoKitMediaProviderLivePhotoDownloadSimulation;
  [(PUPhotoKitMediaProviderDownloadSimulation *)&v10 endSimulationWithError:errorCopy];
  _resultLivePhoto = [(PUPhotoKitMediaProviderLivePhotoDownloadSimulation *)self _resultLivePhoto];
  _resultInfo = [(PUPhotoKitMediaProviderLivePhotoDownloadSimulation *)self _resultInfo];
  if (errorCopy)
  {

    v11 = *MEMORY[0x1E6978DF0];
    v12[0] = errorCopy;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    _resultLivePhoto = 0;
    _resultInfo = v7;
  }

  externalResultHandler = [(PUPhotoKitMediaProviderLivePhotoDownloadSimulation *)self externalResultHandler];
  (externalResultHandler)[2](externalResultHandler, _resultLivePhoto, _resultInfo);

  internalResultHandler = self->_internalResultHandler;
  self->_internalResultHandler = 0;
}

- (void)updateSimulationWithProgress:(double)progress
{
  v8.receiver = self;
  v8.super_class = PUPhotoKitMediaProviderLivePhotoDownloadSimulation;
  [(PUPhotoKitMediaProviderDownloadSimulation *)&v8 updateSimulationWithProgress:?];
  externalProgressHandler = [(PUPhotoKitMediaProviderLivePhotoDownloadSimulation *)self externalProgressHandler];

  if (externalProgressHandler)
  {
    v7 = 0;
    externalProgressHandler2 = [(PUPhotoKitMediaProviderLivePhotoDownloadSimulation *)self externalProgressHandler];
    (externalProgressHandler2)[2](externalProgressHandler2, 0, &v7, 0, progress);
  }
}

- (void)_handleResultLivePhoto:(id)photo info:(id)info
{
  photoCopy = photo;
  infoCopy = info;
  v7 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
  bOOLValue = [v7 BOOLValue];

  v9 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6978E40]];
  integerValue = [v9 integerValue];

  v11 = [MEMORY[0x1E69BF260] formatWithID:integerValue];
  v12 = v11;
  if ((bOOLValue & 1) != 0 || [v11 isThumbnail])
  {
    externalResultHandler = [(PUPhotoKitMediaProviderLivePhotoDownloadSimulation *)self externalResultHandler];
    (externalResultHandler)[2](externalResultHandler, photoCopy, infoCopy);
  }

  else
  {
    [(PUPhotoKitMediaProviderLivePhotoDownloadSimulation *)self _setResultLivePhoto:photoCopy];
    [(PUPhotoKitMediaProviderLivePhotoDownloadSimulation *)self _setResultInfo:infoCopy];
    [(PUPhotoKitMediaProviderDownloadSimulation *)self beginSimulation];
  }
}

- (PUPhotoKitMediaProviderLivePhotoDownloadSimulation)init
{
  v10.receiver = self;
  v10.super_class = PUPhotoKitMediaProviderLivePhotoDownloadSimulation;
  v2 = [(PUPhotoKitMediaProviderDownloadSimulation *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__PUPhotoKitMediaProviderLivePhotoDownloadSimulation_init__block_invoke;
    v8[3] = &unk_1E7B7C028;
    v4 = v2;
    v9 = v4;
    v5 = [v8 copy];
    internalResultHandler = v4->_internalResultHandler;
    v4->_internalResultHandler = v5;
  }

  return v3;
}

@end
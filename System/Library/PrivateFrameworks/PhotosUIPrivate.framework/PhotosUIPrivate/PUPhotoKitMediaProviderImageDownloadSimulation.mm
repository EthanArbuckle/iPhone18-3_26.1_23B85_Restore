@interface PUPhotoKitMediaProviderImageDownloadSimulation
- (PUPhotoKitMediaProviderImageDownloadSimulation)init;
- (void)_handleResultImage:(id)image info:(id)info;
- (void)endSimulationWithError:(id)error;
- (void)updateSimulationWithProgress:(double)progress;
@end

@implementation PUPhotoKitMediaProviderImageDownloadSimulation

- (void)endSimulationWithError:(id)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v10.receiver = self;
  v10.super_class = PUPhotoKitMediaProviderImageDownloadSimulation;
  [(PUPhotoKitMediaProviderDownloadSimulation *)&v10 endSimulationWithError:errorCopy];
  _resultImage = [(PUPhotoKitMediaProviderImageDownloadSimulation *)self _resultImage];
  _resultInfo = [(PUPhotoKitMediaProviderImageDownloadSimulation *)self _resultInfo];
  if (errorCopy)
  {

    v11 = *MEMORY[0x1E6978DF0];
    v12[0] = errorCopy;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    _resultImage = 0;
    _resultInfo = v7;
  }

  externalResultHandler = [(PUPhotoKitMediaProviderImageDownloadSimulation *)self externalResultHandler];
  (externalResultHandler)[2](externalResultHandler, _resultImage, _resultInfo);

  internalResultHandler = self->_internalResultHandler;
  self->_internalResultHandler = 0;
}

- (void)updateSimulationWithProgress:(double)progress
{
  v8.receiver = self;
  v8.super_class = PUPhotoKitMediaProviderImageDownloadSimulation;
  [(PUPhotoKitMediaProviderDownloadSimulation *)&v8 updateSimulationWithProgress:?];
  externalProgressHandler = [(PUPhotoKitMediaProviderImageDownloadSimulation *)self externalProgressHandler];

  if (externalProgressHandler)
  {
    v7 = 0;
    externalProgressHandler2 = [(PUPhotoKitMediaProviderImageDownloadSimulation *)self externalProgressHandler];
    (externalProgressHandler2)[2](externalProgressHandler2, 0, &v7, 0, progress);
  }
}

- (void)_handleResultImage:(id)image info:(id)info
{
  imageCopy = image;
  infoCopy = info;
  v7 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
  bOOLValue = [v7 BOOLValue];

  v9 = MEMORY[0x1E69BF260];
  v10 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6978E40]];
  v11 = [v9 formatWithID:{objc_msgSend(v10, "integerValue")}];

  isThumbnail = [v11 isThumbnail];
  if ((bOOLValue & 1) != 0 || isThumbnail)
  {
    externalResultHandler = [(PUPhotoKitMediaProviderImageDownloadSimulation *)self externalResultHandler];
    (externalResultHandler)[2](externalResultHandler, imageCopy, infoCopy);
  }

  else
  {
    [(PUPhotoKitMediaProviderImageDownloadSimulation *)self _setResultImage:imageCopy];
    [(PUPhotoKitMediaProviderImageDownloadSimulation *)self _setResultInfo:infoCopy];
    [(PUPhotoKitMediaProviderDownloadSimulation *)self beginSimulation];
  }
}

- (PUPhotoKitMediaProviderImageDownloadSimulation)init
{
  v10.receiver = self;
  v10.super_class = PUPhotoKitMediaProviderImageDownloadSimulation;
  v2 = [(PUPhotoKitMediaProviderDownloadSimulation *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__PUPhotoKitMediaProviderImageDownloadSimulation_init__block_invoke;
    v8[3] = &unk_1E7B7BF88;
    v4 = v2;
    v9 = v4;
    v5 = [v8 copy];
    internalResultHandler = v4->_internalResultHandler;
    v4->_internalResultHandler = v5;
  }

  return v3;
}

@end
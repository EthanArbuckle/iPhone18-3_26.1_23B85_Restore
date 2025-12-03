@interface PUPhotoKitMediaProviderImageDataDownloadSimulation
- (PUPhotoKitMediaProviderImageDataDownloadSimulation)init;
- (void)_handleResultImageData:(id)data dataUTI:(id)i orientation:(int64_t)orientation info:(id)info;
- (void)endSimulationWithError:(id)error;
- (void)updateSimulationWithProgress:(double)progress;
@end

@implementation PUPhotoKitMediaProviderImageDataDownloadSimulation

- (void)endSimulationWithError:(id)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = PUPhotoKitMediaProviderImageDataDownloadSimulation;
  [(PUPhotoKitMediaProviderDownloadSimulation *)&v12 endSimulationWithError:errorCopy];
  _resultImageData = [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self _resultImageData];
  _resultDataUTI = [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self _resultDataUTI];
  _resultOrientaton = [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self _resultOrientaton];
  _resultInfo = [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self _resultInfo];
  if (errorCopy)
  {

    v13 = *MEMORY[0x1E6978DF0];
    v14[0] = errorCopy;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

    _resultImageData = 0;
    _resultInfo = v9;
  }

  externalResultHandler = [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self externalResultHandler];
  (externalResultHandler)[2](externalResultHandler, _resultImageData, _resultDataUTI, _resultOrientaton, _resultInfo);

  internalResultHandler = self->_internalResultHandler;
  self->_internalResultHandler = 0;
}

- (void)updateSimulationWithProgress:(double)progress
{
  v8.receiver = self;
  v8.super_class = PUPhotoKitMediaProviderImageDataDownloadSimulation;
  [(PUPhotoKitMediaProviderDownloadSimulation *)&v8 updateSimulationWithProgress:?];
  externalProgressHandler = [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self externalProgressHandler];

  if (externalProgressHandler)
  {
    v7 = 0;
    externalProgressHandler2 = [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self externalProgressHandler];
    (externalProgressHandler2)[2](externalProgressHandler2, 0, &v7, 0, progress);
  }
}

- (void)_handleResultImageData:(id)data dataUTI:(id)i orientation:(int64_t)orientation info:(id)info
{
  infoCopy = info;
  iCopy = i;
  [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self _setResultImageData:data];
  [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self _setResultDataUTI:iCopy];

  [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self _setResultOrientation:orientation];
  [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)self _setResultInfo:infoCopy];

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
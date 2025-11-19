@interface PUPhotoKitMediaProviderLivePhotoDownloadSimulation
- (PUPhotoKitMediaProviderLivePhotoDownloadSimulation)init;
- (void)_handleResultLivePhoto:(id)a3 info:(id)a4;
- (void)endSimulationWithError:(id)a3;
- (void)updateSimulationWithProgress:(double)a3;
@end

@implementation PUPhotoKitMediaProviderLivePhotoDownloadSimulation

- (void)endSimulationWithError:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PUPhotoKitMediaProviderLivePhotoDownloadSimulation;
  [(PUPhotoKitMediaProviderDownloadSimulation *)&v10 endSimulationWithError:v4];
  v5 = [(PUPhotoKitMediaProviderLivePhotoDownloadSimulation *)self _resultLivePhoto];
  v6 = [(PUPhotoKitMediaProviderLivePhotoDownloadSimulation *)self _resultInfo];
  if (v4)
  {

    v11 = *MEMORY[0x1E6978DF0];
    v12[0] = v4;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    v5 = 0;
    v6 = v7;
  }

  v8 = [(PUPhotoKitMediaProviderLivePhotoDownloadSimulation *)self externalResultHandler];
  (v8)[2](v8, v5, v6);

  internalResultHandler = self->_internalResultHandler;
  self->_internalResultHandler = 0;
}

- (void)updateSimulationWithProgress:(double)a3
{
  v8.receiver = self;
  v8.super_class = PUPhotoKitMediaProviderLivePhotoDownloadSimulation;
  [(PUPhotoKitMediaProviderDownloadSimulation *)&v8 updateSimulationWithProgress:?];
  v5 = [(PUPhotoKitMediaProviderLivePhotoDownloadSimulation *)self externalProgressHandler];

  if (v5)
  {
    v7 = 0;
    v6 = [(PUPhotoKitMediaProviderLivePhotoDownloadSimulation *)self externalProgressHandler];
    (v6)[2](v6, 0, &v7, 0, a3);
  }
}

- (void)_handleResultLivePhoto:(id)a3 info:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
  v8 = [v7 BOOLValue];

  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6978E40]];
  v10 = [v9 integerValue];

  v11 = [MEMORY[0x1E69BF260] formatWithID:v10];
  v12 = v11;
  if ((v8 & 1) != 0 || [v11 isThumbnail])
  {
    v13 = [(PUPhotoKitMediaProviderLivePhotoDownloadSimulation *)self externalResultHandler];
    (v13)[2](v13, v14, v6);
  }

  else
  {
    [(PUPhotoKitMediaProviderLivePhotoDownloadSimulation *)self _setResultLivePhoto:v14];
    [(PUPhotoKitMediaProviderLivePhotoDownloadSimulation *)self _setResultInfo:v6];
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
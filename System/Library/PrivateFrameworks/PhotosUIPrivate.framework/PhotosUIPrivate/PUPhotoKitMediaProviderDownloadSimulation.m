@interface PUPhotoKitMediaProviderDownloadSimulation
- (PUPhotoKitMediaProviderDownloadSimulation)init;
- (void)_updateSimulatedDownload;
- (void)beginSimulation;
@end

@implementation PUPhotoKitMediaProviderDownloadSimulation

- (void)_updateSimulatedDownload
{
  v18[1] = *MEMORY[0x1E69E9840];
  [(PUPhotoKitMediaProviderDownloadSimulation *)self _simulatedProgress];
  v5 = v4;
  [(PUPhotoKitMediaProviderDownloadSimulation *)self _updateInterval];
  v7 = v6;
  [(PUPhotoKitMediaProviderDownloadSimulation *)self downloadDuration];
  v9 = v5 + v7 / v8;
  if (v9 <= 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  [(PUPhotoKitMediaProviderDownloadSimulation *)self _setSimulatedProgress:v10];
  [(PUPhotoKitMediaProviderDownloadSimulation *)self updateSimulationWithProgress:v10];
  v11 = [(PUPhotoKitMediaProviderDownloadSimulation *)self shouldSimulateFailure];
  v12 = 0.75;
  if (!v11)
  {
    v12 = 1.0;
  }

  if (v10 >= v12)
  {
    if ([(PUPhotoKitMediaProviderDownloadSimulation *)self shouldSimulateFailure])
    {
      v16 = PLUIGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "One Up: Simulating failure because of debug 1-up settings", v17, 2u);
      }

      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PUPhotoKitMediaProviderImageDownloadSimulation" code:1 userInfo:0];
    }

    else
    {
      v15 = 0;
    }

    [(PUPhotoKitMediaProviderDownloadSimulation *)self endSimulationWithError:v15];
  }

  else
  {
    [(PUPhotoKitMediaProviderDownloadSimulation *)self _updateInterval];
    v14 = v13;
    v18[0] = *MEMORY[0x1E695DA28];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [(PUPhotoKitMediaProviderDownloadSimulation *)self performSelector:a2 withObject:self afterDelay:v15 inModes:v14];
  }
}

- (void)beginSimulation
{
  [(PUPhotoKitMediaProviderDownloadSimulation *)self _setSimulatedProgress:0.0];

  [(PUPhotoKitMediaProviderDownloadSimulation *)self _updateSimulatedDownload];
}

- (PUPhotoKitMediaProviderDownloadSimulation)init
{
  v6.receiver = self;
  v6.super_class = PUPhotoKitMediaProviderDownloadSimulation;
  v2 = [(PUPhotoKitMediaProviderDownloadSimulation *)&v6 init];
  if (v2)
  {
    v3 = +[PUOneUpSettings sharedInstance];
    v2->_shouldSimulateFailure = [v3 simulateLoadingError];
    [v3 simulatedAssetContentLoadingDuration];
    v2->_downloadDuration = v4;
    v2->__updateInterval = 0.25;
  }

  return v2;
}

@end
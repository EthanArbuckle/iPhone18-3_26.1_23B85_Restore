@interface PUPhotoKitAirPlayActionPerformer
- (void)_handleDismissedAirPlayPicker;
- (void)_showAirPlayPicker;
- (void)performUserInteractionTask;
@end

@implementation PUPhotoKitAirPlayActionPerformer

- (void)_handleDismissedAirPlayPicker
{
  [(PUAssetActionPerformer *)self dismissViewController:0 completionHandler:0];

  [(PUAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
}

- (void)_showAirPlayPicker
{
  objc_initWeak(&location, self);
  v3 = [PUScreenRoutePickerViewController alloc];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __54__PUPhotoKitAirPlayActionPerformer__showAirPlayPicker__block_invoke;
  v8 = &unk_1E7B80638;
  objc_copyWeak(&v9, &location);
  v4 = [(PUScreenRoutePickerViewController *)v3 initWithCompletionBlock:&v5];
  [(PUAssetActionPerformer *)self presentViewController:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __54__PUPhotoKitAirPlayActionPerformer__showAirPlayPicker__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDismissedAirPlayPicker];
}

- (void)performUserInteractionTask
{
  v4 = [(PUAssetActionPerformer *)self assets];
  v5 = [v4 count];

  if (v5 != 1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:1970 description:@"There can be only one asset when starting an AirPlay action"];
  }

  [(PUPhotoKitAirPlayActionPerformer *)self _showAirPlayPicker];
}

@end
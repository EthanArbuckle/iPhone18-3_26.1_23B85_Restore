@interface VUIMediaLibraryApplicationController
+ (id)defaultController;
- (BOOL)isCellularDataForPlaybackEnabled;
- (BOOL)shouldWarnAboutPlaybackQualityForRentalMediaItem:(id)a3;
- (id)settingsURL;
- (unint64_t)assetTypeForRentalMediaItem:(id)a3;
- (void)clearCellularPlaybackQualityOverrides;
- (void)overrideCellularPlaybackQuality:(unint64_t)a3 forMediaItem:(id)a4;
- (void)removeRentalMediaItem:(id)a3 withCompletion:(id)a4;
@end

@implementation VUIMediaLibraryApplicationController

+ (id)defaultController
{
  if (defaultController___once_0 != -1)
  {
    +[VUIMediaLibraryApplicationController defaultController];
  }

  v3 = defaultController___defaultController_0;

  return v3;
}

void __57__VUIMediaLibraryApplicationController_defaultController__block_invoke()
{
  v0 = objc_alloc_init(VUIMediaLibraryApplicationController);
  v1 = defaultController___defaultController_0;
  defaultController___defaultController_0 = v0;
}

- (id)settingsURL
{
  v3 = [(VUIMediaLibraryApplicationController *)self delegate];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 settingsURLForMediaLibraryApplicationController:self];
  }

  else
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [VUIMediaLibraryApplicationController settingsURL];
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)isCellularDataForPlaybackEnabled
{
  v3 = [(VUIMediaLibraryApplicationController *)self delegate];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isCellularDataPlaybackEnabledForMediaLibraryApplicationController:self];
  }

  else
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [VUIMediaLibraryApplicationController isCellularDataForPlaybackEnabled];
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldWarnAboutPlaybackQualityForRentalMediaItem:(id)a3
{
  v4 = a3;
  v5 = [(VUIMediaLibraryApplicationController *)self delegate];
  if (!v5)
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [VUIMediaLibraryApplicationController shouldWarnAboutPlaybackQualityForRentalMediaItem:];
    }

    goto LABEL_9;
  }

  v6 = [v4 mediaPlayerMediaItem];
  if (!v6)
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [VUIMediaLibraryApplicationController shouldWarnAboutPlaybackQualityForRentalMediaItem:];
    }

LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v7 = [v5 mediaLibraryApplicationController:self shouldWarnAboutPlaybackQualityForRentalMediaItem:v6];
LABEL_10:

  return v7;
}

- (void)clearCellularPlaybackQualityOverrides
{
  v3 = [(VUIMediaLibraryApplicationController *)self delegate];
  v4 = v3;
  if (v3)
  {
    [v3 clearCellularPlaybackQualityOverridesForMediaLibraryApplicationController:self];
  }

  else
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [VUIMediaLibraryApplicationController clearCellularPlaybackQualityOverrides];
    }
  }
}

- (void)overrideCellularPlaybackQuality:(unint64_t)a3 forMediaItem:(id)a4
{
  v6 = a4;
  v7 = [(VUIMediaLibraryApplicationController *)self delegate];
  if (v7)
  {
    v8 = [v6 mediaPlayerMediaItem];
    if (v8)
    {
      [v7 mediaLibraryApplicationController:self overrideCellularPlaybackQuality:a3 forMediaItem:v8];
    }

    else
    {
      v9 = VUIDefaultLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [VUIMediaLibraryApplicationController overrideCellularPlaybackQuality:forMediaItem:];
      }
    }
  }

  else
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [VUIMediaLibraryApplicationController shouldWarnAboutPlaybackQualityForRentalMediaItem:];
    }
  }
}

- (unint64_t)assetTypeForRentalMediaItem:(id)a3
{
  v4 = a3;
  v5 = [(VUIMediaLibraryApplicationController *)self delegate];
  v6 = v5;
  if (v5)
  {
    [v5 mediaLibraryApplicationController:self assetTypeForRentalMediaItem:v4];
  }

  else
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [VUIMediaLibraryApplicationController assetTypeForRentalMediaItem:];
    }
  }

  return 0;
}

- (void)removeRentalMediaItem:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__VUIMediaLibraryApplicationController_removeRentalMediaItem_withCompletion___block_invoke;
  aBlock[3] = &unk_1E872E470;
  v14 = v7;
  v8 = v7;
  v9 = _Block_copy(aBlock);
  v10 = [(VUIMediaLibraryApplicationController *)self delegate];
  v11 = v10;
  if (v10)
  {
    [v10 mediaLibraryApplicationController:self removeRentalMediaItem:v6 withCompletion:v9];
  }

  else
  {
    (*(v9 + 2))(v9, 0, 0);
    v12 = VUIDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [VUIMediaLibraryApplicationController removeRentalMediaItem:withCompletion:];
    }
  }
}

void __77__VUIMediaLibraryApplicationController_removeRentalMediaItem_withCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__VUIMediaLibraryApplicationController_removeRentalMediaItem_withCompletion___block_invoke_2;
    block[3] = &unk_1E87317D0;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

@end
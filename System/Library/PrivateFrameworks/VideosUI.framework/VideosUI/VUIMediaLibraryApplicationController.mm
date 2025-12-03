@interface VUIMediaLibraryApplicationController
+ (id)defaultController;
- (BOOL)isCellularDataForPlaybackEnabled;
- (BOOL)shouldWarnAboutPlaybackQualityForRentalMediaItem:(id)item;
- (id)settingsURL;
- (unint64_t)assetTypeForRentalMediaItem:(id)item;
- (void)clearCellularPlaybackQualityOverrides;
- (void)overrideCellularPlaybackQuality:(unint64_t)quality forMediaItem:(id)item;
- (void)removeRentalMediaItem:(id)item withCompletion:(id)completion;
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
  delegate = [(VUIMediaLibraryApplicationController *)self delegate];
  v4 = delegate;
  if (delegate)
  {
    v5 = [delegate settingsURLForMediaLibraryApplicationController:self];
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
  delegate = [(VUIMediaLibraryApplicationController *)self delegate];
  v4 = delegate;
  if (delegate)
  {
    v5 = [delegate isCellularDataPlaybackEnabledForMediaLibraryApplicationController:self];
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

- (BOOL)shouldWarnAboutPlaybackQualityForRentalMediaItem:(id)item
{
  itemCopy = item;
  delegate = [(VUIMediaLibraryApplicationController *)self delegate];
  if (!delegate)
  {
    mediaPlayerMediaItem = VUIDefaultLogObject();
    if (os_log_type_enabled(mediaPlayerMediaItem, OS_LOG_TYPE_ERROR))
    {
      [VUIMediaLibraryApplicationController shouldWarnAboutPlaybackQualityForRentalMediaItem:];
    }

    goto LABEL_9;
  }

  mediaPlayerMediaItem = [itemCopy mediaPlayerMediaItem];
  if (!mediaPlayerMediaItem)
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

  v7 = [delegate mediaLibraryApplicationController:self shouldWarnAboutPlaybackQualityForRentalMediaItem:mediaPlayerMediaItem];
LABEL_10:

  return v7;
}

- (void)clearCellularPlaybackQualityOverrides
{
  delegate = [(VUIMediaLibraryApplicationController *)self delegate];
  v4 = delegate;
  if (delegate)
  {
    [delegate clearCellularPlaybackQualityOverridesForMediaLibraryApplicationController:self];
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

- (void)overrideCellularPlaybackQuality:(unint64_t)quality forMediaItem:(id)item
{
  itemCopy = item;
  delegate = [(VUIMediaLibraryApplicationController *)self delegate];
  if (delegate)
  {
    mediaPlayerMediaItem = [itemCopy mediaPlayerMediaItem];
    if (mediaPlayerMediaItem)
    {
      [delegate mediaLibraryApplicationController:self overrideCellularPlaybackQuality:quality forMediaItem:mediaPlayerMediaItem];
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
    mediaPlayerMediaItem = VUIDefaultLogObject();
    if (os_log_type_enabled(mediaPlayerMediaItem, OS_LOG_TYPE_ERROR))
    {
      [VUIMediaLibraryApplicationController shouldWarnAboutPlaybackQualityForRentalMediaItem:];
    }
  }
}

- (unint64_t)assetTypeForRentalMediaItem:(id)item
{
  itemCopy = item;
  delegate = [(VUIMediaLibraryApplicationController *)self delegate];
  v6 = delegate;
  if (delegate)
  {
    [delegate mediaLibraryApplicationController:self assetTypeForRentalMediaItem:itemCopy];
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

- (void)removeRentalMediaItem:(id)item withCompletion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__VUIMediaLibraryApplicationController_removeRentalMediaItem_withCompletion___block_invoke;
  aBlock[3] = &unk_1E872E470;
  v14 = completionCopy;
  v8 = completionCopy;
  v9 = _Block_copy(aBlock);
  delegate = [(VUIMediaLibraryApplicationController *)self delegate];
  v11 = delegate;
  if (delegate)
  {
    [delegate mediaLibraryApplicationController:self removeRentalMediaItem:itemCopy withCompletion:v9];
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
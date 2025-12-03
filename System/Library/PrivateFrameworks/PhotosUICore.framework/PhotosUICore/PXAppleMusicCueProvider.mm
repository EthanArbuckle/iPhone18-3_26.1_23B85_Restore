@interface PXAppleMusicCueProvider
- (id)requestCuesForAudioAsset:(id)asset resultHandler:(id)handler;
@end

@implementation PXAppleMusicCueProvider

- (id)requestCuesForAudioAsset:(id)asset resultHandler:(id)handler
{
  v14 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  handlerCopy = handler;
  catalog = [assetCopy catalog];
  if (catalog == 3)
  {
    originalAsset = [assetCopy originalAsset];
    cueSource = [originalAsset cueSource];
  }

  else
  {
    if (catalog == 2)
    {
      cueSource = [assetCopy cueSource];
      goto LABEL_9;
    }

    cueSource = 0;
  }

  v10 = PLAudioPlaybackGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412290;
    v13 = assetCopy;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Unable to provide audio cues for asset %@ because it does not respond to -cueSource as expected.", &v12, 0xCu);
  }

LABEL_9:
  handlerCopy[2](handlerCopy, cueSource, 0);

  return 0;
}

@end
@interface PUAssetTransitionInfo
+ (PUAssetTransitionInfo)assetTransitionInfoWithConfigurationBlock:(id)block;
- (CGRect)frame;
- (PUAssetTransitionInfo)assetTransitionInfoWithModifications:(id)modifications;
- (PUAssetTransitionInfo)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_applyConfigurationBlock:(id)block;
- (void)setSeekTime:(id *)time;
@end

@implementation PUAssetTransitionInfo

- (void)setSeekTime:(id *)time
{
  v3 = *&time->var0;
  self->_seekTime.epoch = time->var3;
  *&self->_seekTime.value = v3;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PUAssetTransitionInfo);
  snapshotView = [(PUAssetTransitionInfo *)self snapshotView];
  [(PUAssetTransitionInfo *)v4 setSnapshotView:snapshotView];

  image = [(PUAssetTransitionInfo *)self image];
  [(PUAssetTransitionInfo *)v4 setImage:image];

  [(PUAssetTransitionInfo *)self seekTime];
  v12 = v14;
  v13 = v15;
  [(PUAssetTransitionInfo *)v4 setSeekTime:&v12];
  [(PUAssetTransitionInfo *)self frame];
  [(PUAssetTransitionInfo *)v4 setFrame:?];
  [(PUAssetTransitionInfo *)v4 setAllowAutoPlay:[(PUAssetTransitionInfo *)self allowAutoPlay]];
  [(PUAssetTransitionInfo *)self cornerRadius];
  [(PUAssetTransitionInfo *)v4 setCornerRadius:?];
  asset = [(PUAssetTransitionInfo *)self asset];
  [(PUAssetTransitionInfo *)v4 setAsset:asset];

  badgeTransitionInfos = [(PUAssetTransitionInfo *)self badgeTransitionInfos];
  [(PUAssetTransitionInfo *)v4 setBadgeTransitionInfos:badgeTransitionInfos];

  contentHelper = [(PUAssetTransitionInfo *)self contentHelper];
  [(PUAssetTransitionInfo *)v4 setContentHelper:contentHelper];

  imageLayerModulator = [(PUAssetTransitionInfo *)self imageLayerModulator];
  [(PUAssetTransitionInfo *)v4 setImageLayerModulator:imageLayerModulator];

  return v4;
}

- (void)_applyConfigurationBlock:(id)block
{
  (*(block + 2))(block, self);
  snapshotView = [(PUAssetTransitionInfo *)self snapshotView];
  if (snapshotView || ([(PUAssetTransitionInfo *)self image], (snapshotView = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    [(PUAssetTransitionInfo *)self frame];
    if (CGRectIsEmpty(v8) || ([(PUAssetTransitionInfo *)self frame], CGRectIsNull(v9)))
    {
      v5 = PXAssertGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_error_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, "Transition info is required to have either snapshot view, or image, or a valid, non-empty frame.", v6, 2u);
      }
    }
  }
}

- (PUAssetTransitionInfo)assetTransitionInfoWithModifications:(id)modifications
{
  modificationsCopy = modifications;
  v5 = [(PUAssetTransitionInfo *)self copy];
  [v5 _applyConfigurationBlock:modificationsCopy];

  return v5;
}

- (PUAssetTransitionInfo)init
{
  v4.receiver = self;
  v4.super_class = PUAssetTransitionInfo;
  result = [(PUAssetTransitionInfo *)&v4 init];
  if (result)
  {
    v3 = MEMORY[0x1E6960C70];
    *&result->_seekTime.value = *MEMORY[0x1E6960C70];
    result->_seekTime.epoch = *(v3 + 16);
  }

  return result;
}

+ (PUAssetTransitionInfo)assetTransitionInfoWithConfigurationBlock:(id)block
{
  blockCopy = block;
  v4 = objc_opt_new();
  [v4 _applyConfigurationBlock:blockCopy];

  return v4;
}

@end
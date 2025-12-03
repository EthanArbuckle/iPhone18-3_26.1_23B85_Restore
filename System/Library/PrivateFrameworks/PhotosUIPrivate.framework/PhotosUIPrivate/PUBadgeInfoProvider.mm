@interface PUBadgeInfoProvider
- (PUBadgeInfoProvider)init;
- (PXAssetBadgeInfo)_filteredBadgeInfoForTime:(SEL)time outShouldAnimate:(double)animate;
- (PXAssetBadgeInfo)badgeInfo;
- (PXAssetBadgeInfo)outputBadgeInfo;
- (void)_setOutputBadgeInfo:(PXAssetBadgeInfo *)info shouldAnimate:(BOOL)animate;
- (void)_updateIfNeeded;
- (void)_updateOutputIfNeeded;
- (void)_updatePlaying;
- (void)assetEditOperationManager:(id)manager didChangeEditOperationStatusForAsset:(id)asset context:(void *)context;
- (void)didPerformChanges;
- (void)invalidateOutput;
- (void)performChanges:(id)changes;
- (void)prepareForReuse;
- (void)setAssetViewModel:(id)model;
- (void)setBadgeInfo:(PXAssetBadgeInfo *)info;
- (void)setLastPlayingTime:(double)time;
- (void)setPlaying:(BOOL)playing;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUBadgeInfoProvider

- (PXAssetBadgeInfo)outputBadgeInfo
{
  v3 = *&self[5].duration;
  *&retstr->badges = *&self[4].fileSize;
  *&retstr->count = v3;
  return self;
}

- (PXAssetBadgeInfo)badgeInfo
{
  v3 = *&self[4].duration;
  *&retstr->badges = *&self[3].fileSize;
  *&retstr->count = v3;
  return self;
}

- (void)assetEditOperationManager:(id)manager didChangeEditOperationStatusForAsset:(id)asset context:(void *)context
{
  managerCopy = manager;
  assetCopy = asset;
  if (PUBadgeTileEditOperationManagerObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBadgeInfoProvider.m" lineNumber:244 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = assetCopy;
  [(PUBadgeInfoProvider *)self invalidateOutput];
}

- (void)viewModel:(id)model didChange:(id)change
{
  if ([change playStateDidChange])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__PUBadgeInfoProvider_viewModel_didChange___block_invoke;
    v5[3] = &unk_1E7B7D880;
    v5[4] = self;
    [(PUBadgeInfoProvider *)self performChanges:v5];
  }
}

- (void)_setOutputBadgeInfo:(PXAssetBadgeInfo *)info shouldAnimate:(BOOL)animate
{
  p_outputBadgeInfo = &self->_outputBadgeInfo;
  outputBadgeInfo = self->_outputBadgeInfo;
  v9 = *info;
  if ((PXAssetBadgeInfoEqualToBadgeInfo() & 1) == 0)
  {
    v8 = *&info->count;
    *&p_outputBadgeInfo->badges = *&info->badges;
    *&p_outputBadgeInfo->count = v8;
    self->_outputShouldAnimate = animate;
    [(PUBadgeInfoProvider *)self signalChange:1, *&v9.badges, *&v9.count, *&outputBadgeInfo.badges, *&outputBadgeInfo.count];
  }
}

- (PXAssetBadgeInfo)_filteredBadgeInfoForTime:(SEL)time outShouldAnimate:(double)animate
{
  *&retstr->badges = 0u;
  *&retstr->count = 0u;
  [(PUBadgeInfoProvider *)self badgeInfo];
  [(PUBadgeInfoProvider *)self lastPlayingTime];
  v10 = v9;
  if (v9 == -1.79769313e308)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    assetViewModel = [(PUBadgeInfoProvider *)self assetViewModel];
    asset = [assetViewModel asset];
    v14 = ([asset mediaSubtypes] >> 20) & 1;

    v15 = v10 + 2.5;
    if (v15 < animate)
    {
      v11 = v14;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      retstr->badges &= ~0x400uLL;
    }

    assetViewModel2 = [(PUBadgeInfoProvider *)self assetViewModel];
    asset2 = [assetViewModel2 asset];
    v18 = [asset2 mediaSubtypes] & 0x200000;

    if (v15 < animate && v18 != 0)
    {
      retstr->badges &= ~0x800000000uLL;
      LOBYTE(v11) = 1;
    }

    assetViewModel3 = [(PUBadgeInfoProvider *)self assetViewModel];
    asset3 = [assetViewModel3 asset];

    isProRes = [asset3 isProRes];
    if (v15 < animate && isProRes)
    {
      retstr->badges &= ~0x400000000uLL;
      LOBYTE(v11) = 1;
    }

    if ([asset3 isSpatialMedia])
    {
      isVideo = [asset3 isVideo];
      if (v15 < animate)
      {
        if (isVideo)
        {
          retstr->badges &= ~0x20000000000uLL;
          LOBYTE(v11) = 1;
        }
      }
    }
  }

  mEMORY[0x1E69C3360] = [MEMORY[0x1E69C3360] sharedManager];
  assetViewModel4 = [(PUBadgeInfoProvider *)self assetViewModel];
  asset4 = [assetViewModel4 asset];
  v27 = [mEMORY[0x1E69C3360] editOperationStatusForAsset:asset4];

  badges = retstr->badges;
  if ((retstr->badges & 0x2000) != 0 && v27 == 3)
  {
    badges |= 0x4000uLL;
    retstr->badges = badges;
  }

  else if ((badges & 0x4000) != 0 && v27 != 3)
  {
    badges &= ~0x4000uLL;
    retstr->badges = badges;
    goto LABEL_30;
  }

  if ((badges & 0x40000000000) != 0 && v27 == 3)
  {
    v30 = badges | 0x80000000000;
    goto LABEL_33;
  }

LABEL_30:
  if ((badges & 0x80000000000) == 0 || v27 == 3)
  {
    goto LABEL_34;
  }

  v30 = badges & 0xFFFFF7FFFFFFFFFFLL;
LABEL_33:
  retstr->badges = v30;
LABEL_34:
  if (a5)
  {
    *a5 = v11;
  }

  return result;
}

- (void)_updateOutputIfNeeded
{
  if (self->_needsUpdateFlags.output)
  {
    v9 = v2;
    v10 = v3;
    self->_needsUpdateFlags.output = 0;
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(PUBadgeInfoProvider *)self _filteredBadgeInfoForTime:&v8 outShouldAnimate:?];
    v5[0] = v6;
    v5[1] = v7;
    [(PUBadgeInfoProvider *)self _setOutputBadgeInfo:v5 shouldAnimate:v8];
  }
}

- (void)_updateIfNeeded
{
  if ([(PUBadgeInfoProvider *)self _needsUpdate])
  {
    [(PUBadgeInfoProvider *)self _updateOutputIfNeeded];
    if ([(PUBadgeInfoProvider *)self _needsUpdate])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUBadgeInfoProvider.m" lineNumber:134 description:@"update still needed after update pass"];
    }
  }
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PUBadgeInfoProvider;
  [(PUBadgeInfoProvider *)&v3 didPerformChanges];
  [(PUBadgeInfoProvider *)self _updateIfNeeded];
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PUBadgeInfoProvider;
  [(PUBadgeInfoProvider *)&v3 performChanges:changes];
}

- (void)invalidateOutput
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __39__PUBadgeInfoProvider_invalidateOutput__block_invoke;
  v2[3] = &unk_1E7B7D880;
  v2[4] = self;
  [(PUBadgeInfoProvider *)self performChanges:v2];
}

- (void)setLastPlayingTime:(double)time
{
  if (self->_lastPlayingTime != time)
  {
    self->_lastPlayingTime = time;
    [(PUBadgeInfoProvider *)self _invalidateOutput];
  }
}

- (void)setPlaying:(BOOL)playing
{
  if (self->_playing != playing)
  {
    self->_playing = playing;
    if (playing)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      [(PUBadgeInfoProvider *)self setLastPlayingTime:?];
      objc_initWeak(&location, self);
      v4 = dispatch_time(0, 2500000000);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __34__PUBadgeInfoProvider_setPlaying___block_invoke;
      v5[3] = &unk_1E7B80638;
      objc_copyWeak(&v6, &location);
      dispatch_after(v4, MEMORY[0x1E69E96A0], v5);
      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }

    else
    {

      [(PUBadgeInfoProvider *)self setLastPlayingTime:-1.79769313e308];
    }
  }
}

void __34__PUBadgeInfoProvider_setPlaying___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateOutput];
}

- (void)_updatePlaying
{
  videoPlayer = [(PUAssetViewModel *)self->_assetViewModel videoPlayer];
  -[PUBadgeInfoProvider setPlaying:](self, "setPlaying:", [videoPlayer playState] == 3);
}

- (void)setBadgeInfo:(PXAssetBadgeInfo *)info
{
  p_badgeInfo = &self->_badgeInfo;
  badgeInfo = self->_badgeInfo;
  v7 = *info;
  if ((PXAssetBadgeInfoEqualToBadgeInfo() & 1) == 0)
  {
    v6 = *&info->count;
    *&p_badgeInfo->badges = *&info->badges;
    *&p_badgeInfo->count = v6;
    [(PUBadgeInfoProvider *)self _invalidateOutput:*&v7.badges];
  }
}

- (void)setAssetViewModel:(id)model
{
  modelCopy = model;
  assetViewModel = self->_assetViewModel;
  if (assetViewModel != modelCopy)
  {
    v9 = modelCopy;
    videoPlayer = [(PUAssetViewModel *)assetViewModel videoPlayer];
    [videoPlayer unregisterChangeObserver:self];

    objc_storeStrong(&self->_assetViewModel, model);
    [(PUBadgeInfoProvider *)self _updatePlaying];
    videoPlayer2 = [(PUAssetViewModel *)self->_assetViewModel videoPlayer];
    [videoPlayer2 registerChangeObserver:self];

    modelCopy = v9;
  }

  MEMORY[0x1EEE66BB8](assetViewModel, modelCopy);
}

- (void)prepareForReuse
{
  [(PUBadgeInfoProvider *)self setAssetViewModel:0];
  v3 = *(MEMORY[0x1E69C4840] + 16);
  v4[0] = *MEMORY[0x1E69C4840];
  v4[1] = v3;
  [(PUBadgeInfoProvider *)self setBadgeInfo:v4];
  [(PUBadgeInfoProvider *)self setLastPlayingTime:-1.79769313e308];
}

- (PUBadgeInfoProvider)init
{
  v6.receiver = self;
  v6.super_class = PUBadgeInfoProvider;
  v2 = [(PUBadgeInfoProvider *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lastPlayingTime = -1.79769313e308;
    mEMORY[0x1E69C3360] = [MEMORY[0x1E69C3360] sharedManager];
    [mEMORY[0x1E69C3360] registerObserver:v3 context:PUBadgeTileEditOperationManagerObservationContext];
  }

  return v3;
}

@end
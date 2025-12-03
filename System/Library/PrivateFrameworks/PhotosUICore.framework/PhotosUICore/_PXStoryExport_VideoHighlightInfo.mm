@interface _PXStoryExport_VideoHighlightInfo
- ($654D12A5B96C89A393ABE69D6FE3CC0A)audioInfo;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)loadingVideoTimeRange;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)storyPlaybackRange;
- (_PXStoryExport_VideoHighlightInfo)initWithAsset:(id)asset loadingVideoTimeRange:(id *)range loadedVideoPlaybackStartTime:(id *)time storyPlaybackRange:(id *)playbackRange audioInfo:(id *)info;
- (id)description;
- (void)setAudioInfo:(id *)info;
- (void)setLoadedVideoPlaybackStartTime:(id *)time;
- (void)setLoadingVideoTimeRange:(id *)range;
- (void)setStoryPlaybackRange:(id *)range;
@end

@implementation _PXStoryExport_VideoHighlightInfo

- (void)setAudioInfo:(id *)info
{
  v3 = *&info->var0;
  v4 = *&info->var2;
  v5 = *&info->var4;
  self->_audioInfo.fadeOut = info->var6;
  *&self->_audioInfo.LCutLength = v5;
  *&self->_audioInfo.volume = v4;
  *&self->_audioInfo.mode = v3;
}

- ($654D12A5B96C89A393ABE69D6FE3CC0A)audioInfo
{
  v3 = *&self[2].var5;
  *&retstr->var0 = *&self[2].var3;
  *&retstr->var2 = v3;
  *&retstr->var4 = *&self[3].var0;
  retstr->var6 = *&self[3].var2;
  return self;
}

- (void)setStoryPlaybackRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var0.var3;
  *&self->_storyPlaybackRange.duration.timescale = *&range->var1.var1;
  *&self->_storyPlaybackRange.start.epoch = v4;
  *&self->_storyPlaybackRange.start.value = v3;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)storyPlaybackRange
{
  v3 = *&self[2].var0.var1;
  *&retstr->var0.var0 = *&self[1].var1.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[2].var1.var0;
  return self;
}

- (void)setLoadedVideoPlaybackStartTime:(id *)time
{
  v3 = *&time->var0;
  self->_loadedVideoPlaybackStartTime.epoch = time->var3;
  *&self->_loadedVideoPlaybackStartTime.value = v3;
}

- (void)setLoadingVideoTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var0.var3;
  *&self->_loadingVideoTimeRange.duration.timescale = *&range->var1.var1;
  *&self->_loadingVideoTimeRange.start.epoch = v4;
  *&self->_loadingVideoTimeRange.start.value = v3;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)loadingVideoTimeRange
{
  v3 = *&self[1].var0.var1;
  *&retstr->var0.var0 = *&self->var1.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var0;
  return self;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  asset = [(_PXStoryExport_VideoHighlightInfo *)self asset];
  [(_PXStoryExport_VideoHighlightInfo *)self loadingVideoTimeRange];
  v7 = PXStoryTimeRangeDescription(v13);
  [(_PXStoryExport_VideoHighlightInfo *)self loadedVideoPlaybackStartTime];
  v8 = PXStoryTimeDescription(v13);
  [(_PXStoryExport_VideoHighlightInfo *)self storyPlaybackRange];
  v9 = PXStoryTimeRangeDescription(v13);
  [(_PXStoryExport_VideoHighlightInfo *)self audioInfo];
  v10 = PXStoryClipAudioInfoDescription(v13);
  v11 = [v3 initWithFormat:@"<%@ %p; asset: %@; loadingVideoTimeRange: %@; loadedVideoPlaybackStartTime: %@; storyPlaybackRange: %@ audio:%@>", v5, self, asset, v7, v8, v9, v10];

  return v11;
}

- (_PXStoryExport_VideoHighlightInfo)initWithAsset:(id)asset loadingVideoTimeRange:(id *)range loadedVideoPlaybackStartTime:(id *)time storyPlaybackRange:(id *)playbackRange audioInfo:(id *)info
{
  assetCopy = asset;
  v25.receiver = self;
  v25.super_class = _PXStoryExport_VideoHighlightInfo;
  v14 = [(_PXStoryExport_VideoHighlightInfo *)&v25 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_asset, asset);
    v16 = *&time->var0;
    v15->_loadedVideoPlaybackStartTime.epoch = time->var3;
    *&v15->_loadedVideoPlaybackStartTime.value = v16;
    v17 = *&range->var0.var0;
    v18 = *&range->var0.var3;
    *&v15->_loadingVideoTimeRange.duration.timescale = *&range->var1.var1;
    *&v15->_loadingVideoTimeRange.start.epoch = v18;
    *&v15->_loadingVideoTimeRange.start.value = v17;
    v19 = *&playbackRange->var0.var0;
    v20 = *&playbackRange->var0.var3;
    *&v15->_storyPlaybackRange.duration.timescale = *&playbackRange->var1.var1;
    *&v15->_storyPlaybackRange.start.epoch = v20;
    *&v15->_storyPlaybackRange.start.value = v19;
    v21 = *&info->var0;
    v22 = *&info->var2;
    v23 = *&info->var4;
    v15->_audioInfo.fadeOut = info->var6;
    *&v15->_audioInfo.LCutLength = v23;
    *&v15->_audioInfo.volume = v22;
    *&v15->_audioInfo.mode = v21;
  }

  return v15;
}

@end
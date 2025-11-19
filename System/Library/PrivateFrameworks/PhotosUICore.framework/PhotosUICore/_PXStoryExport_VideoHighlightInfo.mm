@interface _PXStoryExport_VideoHighlightInfo
- ($654D12A5B96C89A393ABE69D6FE3CC0A)audioInfo;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)loadingVideoTimeRange;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)storyPlaybackRange;
- (_PXStoryExport_VideoHighlightInfo)initWithAsset:(id)a3 loadingVideoTimeRange:(id *)a4 loadedVideoPlaybackStartTime:(id *)a5 storyPlaybackRange:(id *)a6 audioInfo:(id *)a7;
- (id)description;
- (void)setAudioInfo:(id *)a3;
- (void)setLoadedVideoPlaybackStartTime:(id *)a3;
- (void)setLoadingVideoTimeRange:(id *)a3;
- (void)setStoryPlaybackRange:(id *)a3;
@end

@implementation _PXStoryExport_VideoHighlightInfo

- (void)setAudioInfo:(id *)a3
{
  v3 = *&a3->var0;
  v4 = *&a3->var2;
  v5 = *&a3->var4;
  self->_audioInfo.fadeOut = a3->var6;
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

- (void)setStoryPlaybackRange:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var0.var3;
  *&self->_storyPlaybackRange.duration.timescale = *&a3->var1.var1;
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

- (void)setLoadedVideoPlaybackStartTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_loadedVideoPlaybackStartTime.epoch = a3->var3;
  *&self->_loadedVideoPlaybackStartTime.value = v3;
}

- (void)setLoadingVideoTimeRange:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var0.var3;
  *&self->_loadingVideoTimeRange.duration.timescale = *&a3->var1.var1;
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
  v6 = [(_PXStoryExport_VideoHighlightInfo *)self asset];
  [(_PXStoryExport_VideoHighlightInfo *)self loadingVideoTimeRange];
  v7 = PXStoryTimeRangeDescription(v13);
  [(_PXStoryExport_VideoHighlightInfo *)self loadedVideoPlaybackStartTime];
  v8 = PXStoryTimeDescription(v13);
  [(_PXStoryExport_VideoHighlightInfo *)self storyPlaybackRange];
  v9 = PXStoryTimeRangeDescription(v13);
  [(_PXStoryExport_VideoHighlightInfo *)self audioInfo];
  v10 = PXStoryClipAudioInfoDescription(v13);
  v11 = [v3 initWithFormat:@"<%@ %p; asset: %@; loadingVideoTimeRange: %@; loadedVideoPlaybackStartTime: %@; storyPlaybackRange: %@ audio:%@>", v5, self, v6, v7, v8, v9, v10];

  return v11;
}

- (_PXStoryExport_VideoHighlightInfo)initWithAsset:(id)a3 loadingVideoTimeRange:(id *)a4 loadedVideoPlaybackStartTime:(id *)a5 storyPlaybackRange:(id *)a6 audioInfo:(id *)a7
{
  v13 = a3;
  v25.receiver = self;
  v25.super_class = _PXStoryExport_VideoHighlightInfo;
  v14 = [(_PXStoryExport_VideoHighlightInfo *)&v25 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_asset, a3);
    v16 = *&a5->var0;
    v15->_loadedVideoPlaybackStartTime.epoch = a5->var3;
    *&v15->_loadedVideoPlaybackStartTime.value = v16;
    v17 = *&a4->var0.var0;
    v18 = *&a4->var0.var3;
    *&v15->_loadingVideoTimeRange.duration.timescale = *&a4->var1.var1;
    *&v15->_loadingVideoTimeRange.start.epoch = v18;
    *&v15->_loadingVideoTimeRange.start.value = v17;
    v19 = *&a6->var0.var0;
    v20 = *&a6->var0.var3;
    *&v15->_storyPlaybackRange.duration.timescale = *&a6->var1.var1;
    *&v15->_storyPlaybackRange.start.epoch = v20;
    *&v15->_storyPlaybackRange.start.value = v19;
    v21 = *&a7->var0;
    v22 = *&a7->var2;
    v23 = *&a7->var4;
    v15->_audioInfo.fadeOut = a7->var6;
    *&v15->_audioInfo.LCutLength = v23;
    *&v15->_audioInfo.volume = v22;
    *&v15->_audioInfo.mode = v21;
  }

  return v15;
}

@end
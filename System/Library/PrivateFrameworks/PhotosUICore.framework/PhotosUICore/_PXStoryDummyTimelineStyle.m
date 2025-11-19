@interface _PXStoryDummyTimelineStyle
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)defaultDisplayAssetPresentationDuration;
- ($654D12A5B96C89A393ABE69D6FE3CC0A)audioInfoForDisplayAsset:(SEL)a3;
- ($7566BBA16C4E03ED15B4F2B623931C37)durationInfoForSegmentWithDisplayAssets:(SEL)a3 startTime:(id)a4;
- ($D23540E3B197441F7781E3353E3BC035)transitionInfoForSegmentWithClipComposition:(SEL)a3 displayAssets:(id)a4;
- (_PXStoryDummyTimelineStyle)initWithStyle:(id)a3 spec:(id)a4 allowedClipCompositions:(id)a5;
- (void)enumerateAllowedKenBurnsEffectParametersForSegmentWithClipComposition:(id)a3 displayAssets:(id)a4 assetContentInfos:(id *)a5 finalPlaybackStyles:(const int64_t *)a6 startTime:(id *)a7 durationInfo:(id *)a8 separatorEffectParameters:(id *)a9 separatorEffectContext:(int64_t)a10 buffer:(id *)a11 usingBlock:(id)a12;
- (void)enumerateAllowedSeparatorEffectParametersForSegmentWithClipComposition:(id)a3 displayAssets:(id)a4 finalPlaybackStyles:(const int64_t *)a5 startTime:(id *)a6 durationInfo:(id *)a7 buffer:(id *)a8 usingBlock:(id)a9;
@end

@implementation _PXStoryDummyTimelineStyle

- ($654D12A5B96C89A393ABE69D6FE3CC0A)audioInfoForDisplayAsset:(SEL)a3
{
  retstr->var6 = 0.0;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  return self;
}

- ($D23540E3B197441F7781E3353E3BC035)transitionInfoForSegmentWithClipComposition:(SEL)a3 displayAssets:(id)a4
{
  result = self->_style;
  if (result)
  {
    return [($D23540E3B197441F7781E3353E3BC035 *)result transitionInfo:a4];
  }

  *&retstr->var3 = 0;
  *&retstr->var0 = 0u;
  *&retstr->var2.var1 = 0u;
  return result;
}

- (void)enumerateAllowedKenBurnsEffectParametersForSegmentWithClipComposition:(id)a3 displayAssets:(id)a4 assetContentInfos:(id *)a5 finalPlaybackStyles:(const int64_t *)a6 startTime:(id *)a7 durationInfo:(id *)a8 separatorEffectParameters:(id *)a9 separatorEffectContext:(int64_t)a10 buffer:(id *)a11 usingBlock:(id)a12
{
  v14 = a3;
  v15 = a12;
  v16 = a4;
  v17 = [v16 resourcesDataSource];
  v18 = [v17 croppingContext];

  spec = self->_spec;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __242___PXStoryDummyTimelineStyle_enumerateAllowedKenBurnsEffectParametersForSegmentWithClipComposition_displayAssets_assetContentInfos_finalPlaybackStyles_startTime_durationInfo_separatorEffectParameters_separatorEffectContext_buffer_usingBlock___block_invoke;
  v24[3] = &unk_1E774BAE0;
  v25 = v14;
  v26 = self;
  v27 = v15;
  v28 = a11;
  v20 = v15;
  v21 = v14;
  [PXStoryClipKenBurnsEffectFactory factoryForSpec:spec clipComposition:v21 displayAssets:v16 croppingContext:v18 croppingOptions:0 assetContentInfos:a5 playbackStyles:a6 separatorEffectParameters:a9 handler:v24];
}

- (void)enumerateAllowedSeparatorEffectParametersForSegmentWithClipComposition:(id)a3 displayAssets:(id)a4 finalPlaybackStyles:(const int64_t *)a5 startTime:(id *)a6 durationInfo:(id *)a7 buffer:(id *)a8 usingBlock:(id)a9
{
  v9 = a3;
  v10 = a9;
  [v9 mainDividerAxis];
  PXAxisTransposed();
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)defaultDisplayAssetPresentationDuration
{
  [(PXStoryDummyStyle *)self->_style defaultSegmentDuration];

  return CMTimeMakeWithSeconds(retstr, v4, 600);
}

- ($7566BBA16C4E03ED15B4F2B623931C37)durationInfoForSegmentWithDisplayAssets:(SEL)a3 startTime:(id)a4
{
  result = [(_PXStoryDummyTimelineStyle *)self defaultDisplayAssetPresentationDuration:a4];
  retstr->var0.var3 = 0;
  *&retstr->var0.var0 = PXStoryTimeZero;
  retstr->var2.var3 = 0;
  *&retstr->var2.var0 = PXStoryTimeMaximum;
  *&retstr->var3.var0.var0 = 0u;
  *&retstr->var3.var0.var3 = 0u;
  retstr->var4 = 0;
  return result;
}

- (_PXStoryDummyTimelineStyle)initWithStyle:(id)a3 spec:(id)a4 allowedClipCompositions:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _PXStoryDummyTimelineStyle;
  v12 = [(_PXStoryDummyTimelineStyle *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_style, a3);
    objc_storeStrong(&v13->_spec, a4);
    objc_storeStrong(&v13->_allowedClipCompositions, a5);
  }

  return v13;
}

@end
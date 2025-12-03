@interface _PXStoryDummyTimelineStyle
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)defaultDisplayAssetPresentationDuration;
- ($654D12A5B96C89A393ABE69D6FE3CC0A)audioInfoForDisplayAsset:(SEL)asset;
- ($7566BBA16C4E03ED15B4F2B623931C37)durationInfoForSegmentWithDisplayAssets:(SEL)assets startTime:(id)time;
- ($D23540E3B197441F7781E3353E3BC035)transitionInfoForSegmentWithClipComposition:(SEL)composition displayAssets:(id)assets;
- (_PXStoryDummyTimelineStyle)initWithStyle:(id)style spec:(id)spec allowedClipCompositions:(id)compositions;
- (void)enumerateAllowedKenBurnsEffectParametersForSegmentWithClipComposition:(id)composition displayAssets:(id)assets assetContentInfos:(id *)infos finalPlaybackStyles:(const int64_t *)styles startTime:(id *)time durationInfo:(id *)info separatorEffectParameters:(id *)parameters separatorEffectContext:(int64_t)self0 buffer:(id *)self1 usingBlock:(id)self2;
- (void)enumerateAllowedSeparatorEffectParametersForSegmentWithClipComposition:(id)composition displayAssets:(id)assets finalPlaybackStyles:(const int64_t *)styles startTime:(id *)time durationInfo:(id *)info buffer:(id *)buffer usingBlock:(id)block;
@end

@implementation _PXStoryDummyTimelineStyle

- ($654D12A5B96C89A393ABE69D6FE3CC0A)audioInfoForDisplayAsset:(SEL)asset
{
  retstr->var6 = 0.0;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  return self;
}

- ($D23540E3B197441F7781E3353E3BC035)transitionInfoForSegmentWithClipComposition:(SEL)composition displayAssets:(id)assets
{
  result = self->_style;
  if (result)
  {
    return [($D23540E3B197441F7781E3353E3BC035 *)result transitionInfo:assets];
  }

  *&retstr->var3 = 0;
  *&retstr->var0 = 0u;
  *&retstr->var2.var1 = 0u;
  return result;
}

- (void)enumerateAllowedKenBurnsEffectParametersForSegmentWithClipComposition:(id)composition displayAssets:(id)assets assetContentInfos:(id *)infos finalPlaybackStyles:(const int64_t *)styles startTime:(id *)time durationInfo:(id *)info separatorEffectParameters:(id *)parameters separatorEffectContext:(int64_t)self0 buffer:(id *)self1 usingBlock:(id)self2
{
  compositionCopy = composition;
  blockCopy = block;
  assetsCopy = assets;
  resourcesDataSource = [assetsCopy resourcesDataSource];
  croppingContext = [resourcesDataSource croppingContext];

  spec = self->_spec;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __242___PXStoryDummyTimelineStyle_enumerateAllowedKenBurnsEffectParametersForSegmentWithClipComposition_displayAssets_assetContentInfos_finalPlaybackStyles_startTime_durationInfo_separatorEffectParameters_separatorEffectContext_buffer_usingBlock___block_invoke;
  v24[3] = &unk_1E774BAE0;
  v25 = compositionCopy;
  selfCopy = self;
  v27 = blockCopy;
  bufferCopy = buffer;
  v20 = blockCopy;
  v21 = compositionCopy;
  [PXStoryClipKenBurnsEffectFactory factoryForSpec:spec clipComposition:v21 displayAssets:assetsCopy croppingContext:croppingContext croppingOptions:0 assetContentInfos:infos playbackStyles:styles separatorEffectParameters:parameters handler:v24];
}

- (void)enumerateAllowedSeparatorEffectParametersForSegmentWithClipComposition:(id)composition displayAssets:(id)assets finalPlaybackStyles:(const int64_t *)styles startTime:(id *)time durationInfo:(id *)info buffer:(id *)buffer usingBlock:(id)block
{
  compositionCopy = composition;
  blockCopy = block;
  [compositionCopy mainDividerAxis];
  PXAxisTransposed();
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)defaultDisplayAssetPresentationDuration
{
  [(PXStoryDummyStyle *)self->_style defaultSegmentDuration];

  return CMTimeMakeWithSeconds(retstr, v4, 600);
}

- ($7566BBA16C4E03ED15B4F2B623931C37)durationInfoForSegmentWithDisplayAssets:(SEL)assets startTime:(id)time
{
  result = [(_PXStoryDummyTimelineStyle *)self defaultDisplayAssetPresentationDuration:time];
  retstr->var0.var3 = 0;
  *&retstr->var0.var0 = PXStoryTimeZero;
  retstr->var2.var3 = 0;
  *&retstr->var2.var0 = PXStoryTimeMaximum;
  *&retstr->var3.var0.var0 = 0u;
  *&retstr->var3.var0.var3 = 0u;
  retstr->var4 = 0;
  return result;
}

- (_PXStoryDummyTimelineStyle)initWithStyle:(id)style spec:(id)spec allowedClipCompositions:(id)compositions
{
  styleCopy = style;
  specCopy = spec;
  compositionsCopy = compositions;
  v15.receiver = self;
  v15.super_class = _PXStoryDummyTimelineStyle;
  v12 = [(_PXStoryDummyTimelineStyle *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_style, style);
    objc_storeStrong(&v13->_spec, spec);
    objc_storeStrong(&v13->_allowedClipCompositions, compositions);
  }

  return v13;
}

@end
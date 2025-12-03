@interface PXStoryConcreteThumbnailOnlyStyle
- ($654D12A5B96C89A393ABE69D6FE3CC0A)audioInfoForDisplayAsset:(SEL)asset;
- ($7566BBA16C4E03ED15B4F2B623931C37)durationInfoForSegmentWithDisplayAssets:(SEL)assets startTime:(id)time;
- ($D23540E3B197441F7781E3353E3BC035)transitionInfoForSegmentWithClipComposition:(SEL)composition displayAssets:(id)assets;
- (PXStoryConcreteThumbnailOnlyStyle)initWithCustomColorGradeKind:(int64_t)kind originalColorGradeCategory:(id)category;
- (int64_t)finalOneUpPlaybackStyleForDisplayAsset:(id)asset originalPlaybackStyle:(int64_t)style;
@end

@implementation PXStoryConcreteThumbnailOnlyStyle

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
  *&retstr->var3 = 0;
  *&retstr->var0 = PXStoryTransitionInfoNone;
  *&retstr->var2.var1 = unk_1A5383378;
  return self;
}

- (int64_t)finalOneUpPlaybackStyleForDisplayAsset:(id)asset originalPlaybackStyle:(int64_t)style
{
  if (style == 4)
  {
    return 1;
  }

  else
  {
    return style;
  }
}

- ($7566BBA16C4E03ED15B4F2B623931C37)durationInfoForSegmentWithDisplayAssets:(SEL)assets startTime:(id)time
{
  result = [(PXStoryConcreteThumbnailOnlyStyle *)self defaultDisplayAssetPresentationDuration:time];
  retstr->var0.var3 = 0;
  *&retstr->var0.var0 = PXStoryTimeZero;
  retstr->var2.var3 = 0;
  *&retstr->var2.var0 = PXStoryTimeMaximum;
  *&retstr->var3.var0.var0 = 0u;
  *&retstr->var3.var0.var3 = 0u;
  retstr->var4 = 0;
  return result;
}

- (PXStoryConcreteThumbnailOnlyStyle)initWithCustomColorGradeKind:(int64_t)kind originalColorGradeCategory:(id)category
{
  v16[1] = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  v15.receiver = self;
  v15.super_class = PXStoryConcreteThumbnailOnlyStyle;
  v8 = [(PXStoryConcreteThumbnailOnlyStyle *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_customColorGradeKind = kind;
    objc_storeStrong(&v8->_originalColorGradeCategory, category);
    CMTimeMakeWithSeconds(&v14, 42.0, 600);
    v9->_defaultDisplayAssetPresentationDuration = v14;
    v10 = +[PXStoryClipCompositionFactory oneUpComposition];
    v16[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    allowedClipCompositions = v9->_allowedClipCompositions;
    v9->_allowedClipCompositions = v11;

    CMTimeMakeWithSeconds(&v14, 42.0, 600);
    v9->_outroDuration = v14;
  }

  return v9;
}

@end
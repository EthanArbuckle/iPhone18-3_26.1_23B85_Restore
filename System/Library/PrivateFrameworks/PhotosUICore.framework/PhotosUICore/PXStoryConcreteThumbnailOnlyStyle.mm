@interface PXStoryConcreteThumbnailOnlyStyle
- ($654D12A5B96C89A393ABE69D6FE3CC0A)audioInfoForDisplayAsset:(SEL)a3;
- ($7566BBA16C4E03ED15B4F2B623931C37)durationInfoForSegmentWithDisplayAssets:(SEL)a3 startTime:(id)a4;
- ($D23540E3B197441F7781E3353E3BC035)transitionInfoForSegmentWithClipComposition:(SEL)a3 displayAssets:(id)a4;
- (PXStoryConcreteThumbnailOnlyStyle)initWithCustomColorGradeKind:(int64_t)a3 originalColorGradeCategory:(id)a4;
- (int64_t)finalOneUpPlaybackStyleForDisplayAsset:(id)a3 originalPlaybackStyle:(int64_t)a4;
@end

@implementation PXStoryConcreteThumbnailOnlyStyle

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
  *&retstr->var3 = 0;
  *&retstr->var0 = PXStoryTransitionInfoNone;
  *&retstr->var2.var1 = unk_1A5383378;
  return self;
}

- (int64_t)finalOneUpPlaybackStyleForDisplayAsset:(id)a3 originalPlaybackStyle:(int64_t)a4
{
  if (a4 == 4)
  {
    return 1;
  }

  else
  {
    return a4;
  }
}

- ($7566BBA16C4E03ED15B4F2B623931C37)durationInfoForSegmentWithDisplayAssets:(SEL)a3 startTime:(id)a4
{
  result = [(PXStoryConcreteThumbnailOnlyStyle *)self defaultDisplayAssetPresentationDuration:a4];
  retstr->var0.var3 = 0;
  *&retstr->var0.var0 = PXStoryTimeZero;
  retstr->var2.var3 = 0;
  *&retstr->var2.var0 = PXStoryTimeMaximum;
  *&retstr->var3.var0.var0 = 0u;
  *&retstr->var3.var0.var3 = 0u;
  retstr->var4 = 0;
  return result;
}

- (PXStoryConcreteThumbnailOnlyStyle)initWithCustomColorGradeKind:(int64_t)a3 originalColorGradeCategory:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v15.receiver = self;
  v15.super_class = PXStoryConcreteThumbnailOnlyStyle;
  v8 = [(PXStoryConcreteThumbnailOnlyStyle *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_customColorGradeKind = a3;
    objc_storeStrong(&v8->_originalColorGradeCategory, a4);
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
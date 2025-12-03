@interface PGSettlingEffectWallpaperSuggesterFilteringContext
+ (double)minimumSettlingEffectScoreForSuggestionSubtype:(unsigned __int16)subtype mediaAnalysisVersion:(unint64_t)version;
- (id)initInOrientation:(int64_t)orientation;
- (void)_commonInitInOrientation:(int64_t)orientation;
@end

@implementation PGSettlingEffectWallpaperSuggesterFilteringContext

- (void)_commonInitInOrientation:(int64_t)orientation
{
  self->_orientation = orientation;
  *&self->_minimumWallpaperScore = xmmword_22F78BFD0;
  self->_ignoreClockOverlap = 1;
  *&self->_timeIntervalForCandidateDeduping = xmmword_22F78BFE0;
  self->_maximumCropZoomRatio = 999.0;
}

- (id)initInOrientation:(int64_t)orientation
{
  v7.receiver = self;
  v7.super_class = PGSettlingEffectWallpaperSuggesterFilteringContext;
  v4 = [(PGSettlingEffectWallpaperSuggesterFilteringContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PGSettlingEffectWallpaperSuggesterFilteringContext *)v4 _commonInitInOrientation:orientation];
  }

  return v5;
}

+ (double)minimumSettlingEffectScoreForSuggestionSubtype:(unsigned __int16)subtype mediaAnalysisVersion:(unint64_t)version
{
  v4 = [objc_alloc(MEMORY[0x277D3CAC8]) initWithMediaAnalysisVersion:version];
  settlingEffectScoreNode = [v4 settlingEffectScoreNode];
  if (settlingEffectScoreNode)
  {
    settlingEffectScoreNode2 = settlingEffectScoreNode;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277D3CAC8]);
    v8 = [v7 initWithMediaAnalysisVersion:{objc_msgSend(MEMORY[0x277D3CAC8], "latestVersion")}];

    settlingEffectScoreNode2 = [v8 settlingEffectScoreNode];
    v4 = v8;
  }

  [settlingEffectScoreNode2 operatingPoint];
  v10 = v9;

  return v10;
}

@end
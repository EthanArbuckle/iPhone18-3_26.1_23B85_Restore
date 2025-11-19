@interface PGSettlingEffectWallpaperSuggesterFilteringContext
+ (double)minimumSettlingEffectScoreForSuggestionSubtype:(unsigned __int16)a3 mediaAnalysisVersion:(unint64_t)a4;
- (id)initInOrientation:(int64_t)a3;
- (void)_commonInitInOrientation:(int64_t)a3;
@end

@implementation PGSettlingEffectWallpaperSuggesterFilteringContext

- (void)_commonInitInOrientation:(int64_t)a3
{
  self->_orientation = a3;
  *&self->_minimumWallpaperScore = xmmword_22F78BFD0;
  self->_ignoreClockOverlap = 1;
  *&self->_timeIntervalForCandidateDeduping = xmmword_22F78BFE0;
  self->_maximumCropZoomRatio = 999.0;
}

- (id)initInOrientation:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PGSettlingEffectWallpaperSuggesterFilteringContext;
  v4 = [(PGSettlingEffectWallpaperSuggesterFilteringContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PGSettlingEffectWallpaperSuggesterFilteringContext *)v4 _commonInitInOrientation:a3];
  }

  return v5;
}

+ (double)minimumSettlingEffectScoreForSuggestionSubtype:(unsigned __int16)a3 mediaAnalysisVersion:(unint64_t)a4
{
  v4 = [objc_alloc(MEMORY[0x277D3CAC8]) initWithMediaAnalysisVersion:a4];
  v5 = [v4 settlingEffectScoreNode];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277D3CAC8]);
    v8 = [v7 initWithMediaAnalysisVersion:{objc_msgSend(MEMORY[0x277D3CAC8], "latestVersion")}];

    v6 = [v8 settlingEffectScoreNode];
    v4 = v8;
  }

  [v6 operatingPoint];
  v10 = v9;

  return v10;
}

@end
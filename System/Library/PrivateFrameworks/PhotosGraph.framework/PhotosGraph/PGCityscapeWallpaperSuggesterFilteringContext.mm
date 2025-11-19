@interface PGCityscapeWallpaperSuggesterFilteringContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initForAmbient;
- (id)initForCityscapesInOrientation:(int64_t)a3;
- (id)initForTopCityscapes:(BOOL)a3 withDictionary:(id)a4 orientation:(int64_t)a5;
- (id)initForTopCityscapesInOrientation:(int64_t)a3;
- (void)_commonInitInOrientation:(int64_t)a3;
- (void)updateFilteringContextWithDictionary:(id)a3;
@end

@implementation PGCityscapeWallpaperSuggesterFilteringContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      v6 = v7->_minimumWallpaperScore == self->_minimumWallpaperScore && v7->_absoluteMinimumWallpaperScore == self->_absoluteMinimumWallpaperScore && v7->_minimumCropScore == self->_minimumCropScore && v7->_ignoreClockOverlap == self->_ignoreClockOverlap && v7->_timeIntervalForCandidateDeduping == self->_timeIntervalForCandidateDeduping && v7->_maximumLowLightScore == self->_maximumLowLightScore && v7->_maximumCropZoomRatio == self->_maximumCropZoomRatio;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [PGCityscapeWallpaperSuggesterFilteringContext allocWithZone:a3];
  *(result + 3) = *&self->_minimumWallpaperScore;
  *(result + 4) = *&self->_absoluteMinimumWallpaperScore;
  *(result + 5) = *&self->_minimumCropScore;
  *(result + 6) = *&self->_cropScorePenaltyCutOff;
  *(result + 8) = self->_ignoreClockOverlap;
  *(result + 7) = *&self->_timeIntervalForCandidateDeduping;
  *(result + 8) = *&self->_maximumLowLightScore;
  *(result + 9) = *&self->_maximumCropZoomRatio;
  return result;
}

- (id)initForTopCityscapes:(BOOL)a3 withDictionary:(id)a4 orientation:(int64_t)a5
{
  v6 = a3;
  v8 = a4;
  if (v6)
  {
    v9 = [(PGCityscapeWallpaperSuggesterFilteringContext *)self initForTopCityscapesInOrientation:a5];
  }

  else
  {
    v9 = [(PGCityscapeWallpaperSuggesterFilteringContext *)self initForCityscapesInOrientation:a5];
  }

  v10 = v9;
  if (v9)
  {
    [v9 updateFilteringContextWithDictionary:v8];
  }

  return v10;
}

- (void)updateFilteringContextWithDictionary:(id)a3
{
  v27 = a3;
  v4 = [v27 objectForKeyedSubscript:@"minimumWallpaperScore"];
  if (v4)
  {
    v5 = [v27 objectForKeyedSubscript:@"minimumWallpaperScore"];
    [v5 doubleValue];
    self->_minimumWallpaperScore = v6;
  }

  v7 = [v27 objectForKeyedSubscript:@"absoluteMinimumWallpaperScore"];
  if (v7)
  {
    v8 = [v27 objectForKeyedSubscript:@"absoluteMinimumWallpaperScore"];
    [v8 doubleValue];
    self->_absoluteMinimumWallpaperScore = v9;
  }

  v10 = [v27 objectForKeyedSubscript:@"minimumCropScore"];
  if (v10)
  {
    v11 = [v27 objectForKeyedSubscript:@"minimumCropScore"];
    [v11 doubleValue];
    self->_minimumCropScore = v12;
  }

  v13 = [v27 objectForKeyedSubscript:@"cropScorePenaltyCutOff"];
  if (v13)
  {
    v14 = [v27 objectForKeyedSubscript:@"cropScorePenaltyCutOff"];
    [v14 doubleValue];
    self->_cropScorePenaltyCutOff = v15;
  }

  v16 = [v27 objectForKeyedSubscript:@"ignoreClockOverlap"];
  if (v16)
  {
    v17 = [v27 objectForKeyedSubscript:@"ignoreClockOverlap"];
    self->_ignoreClockOverlap = [v17 BOOLValue];
  }

  v18 = [v27 objectForKeyedSubscript:@"timeIntervalForCandidateDeduping"];
  if (v18)
  {
    v19 = [v27 objectForKeyedSubscript:@"timeIntervalForCandidateDeduping"];
    [v19 doubleValue];
    self->_timeIntervalForCandidateDeduping = v20;
  }

  v21 = [v27 objectForKeyedSubscript:@"maximumLowLightScore"];
  if (v21)
  {
    v22 = [v27 objectForKeyedSubscript:@"maximumLowLightScore"];
    [v22 doubleValue];
    self->_maximumLowLightScore = v23;
  }

  v24 = [v27 objectForKeyedSubscript:@"maximumCropZoomRatio"];
  if (v24)
  {
    v25 = [v27 objectForKeyedSubscript:@"maximumCropZoomRatio"];
    [v25 doubleValue];
    self->_maximumCropZoomRatio = v26;
  }
}

- (void)_commonInitInOrientation:(int64_t)a3
{
  self->_orientation = a3;
  __asm { FMOV            V0.2D, #-1.0 }

  *&self->_minimumWallpaperScore = _Q0;
  *&self->_minimumCropScore = xmmword_22F78C070;
  *&self->_ignoreClockOverlap = 0;
  *&self->_timeIntervalForCandidateDeduping = xmmword_22F78BF90;
  self->_maximumCropZoomRatio = 1.45;
}

- (id)initForAmbient
{
  v5.receiver = self;
  v5.super_class = PGCityscapeWallpaperSuggesterFilteringContext;
  v2 = [(PGCityscapeWallpaperSuggesterFilteringContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PGCityscapeWallpaperSuggesterFilteringContext *)v2 _commonInitInOrientation:2];
    v3->_bypassCropScoreCheck = 1;
  }

  return v3;
}

- (id)initForCityscapesInOrientation:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PGCityscapeWallpaperSuggesterFilteringContext;
  v4 = [(PGCityscapeWallpaperSuggesterFilteringContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PGCityscapeWallpaperSuggesterFilteringContext *)v4 _commonInitInOrientation:a3];
    v5->_ignoreClockOverlap = 1;
  }

  return v5;
}

- (id)initForTopCityscapesInOrientation:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PGCityscapeWallpaperSuggesterFilteringContext;
  v4 = [(PGCityscapeWallpaperSuggesterFilteringContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PGCityscapeWallpaperSuggesterFilteringContext *)v4 _commonInitInOrientation:a3];
    v5->_bypassCropScoreCheck = 1;
  }

  return v5;
}

@end
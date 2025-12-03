@interface PGCityscapeWallpaperSuggesterFilteringContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForAmbient;
- (id)initForCityscapesInOrientation:(int64_t)orientation;
- (id)initForTopCityscapes:(BOOL)cityscapes withDictionary:(id)dictionary orientation:(int64_t)orientation;
- (id)initForTopCityscapesInOrientation:(int64_t)orientation;
- (void)_commonInitInOrientation:(int64_t)orientation;
- (void)updateFilteringContextWithDictionary:(id)dictionary;
@end

@implementation PGCityscapeWallpaperSuggesterFilteringContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
      v6 = v7->_minimumWallpaperScore == self->_minimumWallpaperScore && v7->_absoluteMinimumWallpaperScore == self->_absoluteMinimumWallpaperScore && v7->_minimumCropScore == self->_minimumCropScore && v7->_ignoreClockOverlap == self->_ignoreClockOverlap && v7->_timeIntervalForCandidateDeduping == self->_timeIntervalForCandidateDeduping && v7->_maximumLowLightScore == self->_maximumLowLightScore && v7->_maximumCropZoomRatio == self->_maximumCropZoomRatio;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [PGCityscapeWallpaperSuggesterFilteringContext allocWithZone:zone];
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

- (id)initForTopCityscapes:(BOOL)cityscapes withDictionary:(id)dictionary orientation:(int64_t)orientation
{
  cityscapesCopy = cityscapes;
  dictionaryCopy = dictionary;
  if (cityscapesCopy)
  {
    v9 = [(PGCityscapeWallpaperSuggesterFilteringContext *)self initForTopCityscapesInOrientation:orientation];
  }

  else
  {
    v9 = [(PGCityscapeWallpaperSuggesterFilteringContext *)self initForCityscapesInOrientation:orientation];
  }

  v10 = v9;
  if (v9)
  {
    [v9 updateFilteringContextWithDictionary:dictionaryCopy];
  }

  return v10;
}

- (void)updateFilteringContextWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"minimumWallpaperScore"];
  if (v4)
  {
    v5 = [dictionaryCopy objectForKeyedSubscript:@"minimumWallpaperScore"];
    [v5 doubleValue];
    self->_minimumWallpaperScore = v6;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"absoluteMinimumWallpaperScore"];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"absoluteMinimumWallpaperScore"];
    [v8 doubleValue];
    self->_absoluteMinimumWallpaperScore = v9;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"minimumCropScore"];
  if (v10)
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"minimumCropScore"];
    [v11 doubleValue];
    self->_minimumCropScore = v12;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"cropScorePenaltyCutOff"];
  if (v13)
  {
    v14 = [dictionaryCopy objectForKeyedSubscript:@"cropScorePenaltyCutOff"];
    [v14 doubleValue];
    self->_cropScorePenaltyCutOff = v15;
  }

  v16 = [dictionaryCopy objectForKeyedSubscript:@"ignoreClockOverlap"];
  if (v16)
  {
    v17 = [dictionaryCopy objectForKeyedSubscript:@"ignoreClockOverlap"];
    self->_ignoreClockOverlap = [v17 BOOLValue];
  }

  v18 = [dictionaryCopy objectForKeyedSubscript:@"timeIntervalForCandidateDeduping"];
  if (v18)
  {
    v19 = [dictionaryCopy objectForKeyedSubscript:@"timeIntervalForCandidateDeduping"];
    [v19 doubleValue];
    self->_timeIntervalForCandidateDeduping = v20;
  }

  v21 = [dictionaryCopy objectForKeyedSubscript:@"maximumLowLightScore"];
  if (v21)
  {
    v22 = [dictionaryCopy objectForKeyedSubscript:@"maximumLowLightScore"];
    [v22 doubleValue];
    self->_maximumLowLightScore = v23;
  }

  v24 = [dictionaryCopy objectForKeyedSubscript:@"maximumCropZoomRatio"];
  if (v24)
  {
    v25 = [dictionaryCopy objectForKeyedSubscript:@"maximumCropZoomRatio"];
    [v25 doubleValue];
    self->_maximumCropZoomRatio = v26;
  }
}

- (void)_commonInitInOrientation:(int64_t)orientation
{
  self->_orientation = orientation;
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

- (id)initForCityscapesInOrientation:(int64_t)orientation
{
  v7.receiver = self;
  v7.super_class = PGCityscapeWallpaperSuggesterFilteringContext;
  v4 = [(PGCityscapeWallpaperSuggesterFilteringContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PGCityscapeWallpaperSuggesterFilteringContext *)v4 _commonInitInOrientation:orientation];
    v5->_ignoreClockOverlap = 1;
  }

  return v5;
}

- (id)initForTopCityscapesInOrientation:(int64_t)orientation
{
  v7.receiver = self;
  v7.super_class = PGCityscapeWallpaperSuggesterFilteringContext;
  v4 = [(PGCityscapeWallpaperSuggesterFilteringContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PGCityscapeWallpaperSuggesterFilteringContext *)v4 _commonInitInOrientation:orientation];
    v5->_bypassCropScoreCheck = 1;
  }

  return v5;
}

@end
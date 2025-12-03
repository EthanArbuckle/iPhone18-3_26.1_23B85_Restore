@interface PGLandscapeWallpaperSuggesterFilteringContext
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForAmbient;
- (id)initForLandscapesInOrientation:(int64_t)orientation;
- (id)initForTopLandscapes:(BOOL)landscapes withDictionary:(id)dictionary orientation:(int64_t)orientation;
- (id)initForTopLandscapesInOrientation:(int64_t)orientation;
- (void)_commonInitInOrientation:(int64_t)orientation;
- (void)updateFilteringContextWithDictionary:(id)dictionary;
@end

@implementation PGLandscapeWallpaperSuggesterFilteringContext

- (id)copyWithZone:(_NSZone *)zone
{
  result = [PGLandscapeWallpaperSuggesterFilteringContext allocWithZone:zone];
  *(result + 3) = *&self->_minimumWallpaperScore;
  *(result + 4) = *&self->_wallpaperScorePenaltyCutOff;
  *(result + 5) = *&self->_minimumAestheticsScore;
  *(result + 6) = *&self->_aestheticsScorePenaltyCutOff;
  *(result + 7) = *&self->_minimumCropScore;
  *(result + 8) = *&self->_cropScorePenaltyCutOff;
  *(result + 8) = self->_ignoreClockOverlap;
  *(result + 9) = *&self->_timeIntervalForCandidateDeduping;
  *(result + 10) = *&self->_maximumLowLightScore;
  *(result + 11) = *&self->_maximumCropZoomRatio;
  return result;
}

- (id)initForTopLandscapes:(BOOL)landscapes withDictionary:(id)dictionary orientation:(int64_t)orientation
{
  landscapesCopy = landscapes;
  dictionaryCopy = dictionary;
  if (landscapesCopy)
  {
    v9 = [(PGLandscapeWallpaperSuggesterFilteringContext *)self initForTopLandscapesInOrientation:orientation];
  }

  else
  {
    v9 = [(PGLandscapeWallpaperSuggesterFilteringContext *)self initForLandscapesInOrientation:orientation];
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

  v7 = [dictionaryCopy objectForKeyedSubscript:@"wallpaperScorePenaltyCutOff"];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"wallpaperScorePenaltyCutOff"];
    [v8 doubleValue];
    self->_wallpaperScorePenaltyCutOff = v9;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"minimumAestheticsScore"];
  if (v10)
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"minimumAestheticsScore"];
    [v11 doubleValue];
    self->_minimumAestheticsScore = v12;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"aestheticsScorePenaltyCutOff"];
  if (v13)
  {
    v14 = [dictionaryCopy objectForKeyedSubscript:@"aestheticsScorePenaltyCutOff"];
    [v14 doubleValue];
    self->_aestheticsScorePenaltyCutOff = v15;
  }

  v16 = [dictionaryCopy objectForKeyedSubscript:@"minimumCropScore"];
  if (v16)
  {
    v17 = [dictionaryCopy objectForKeyedSubscript:@"minimumCropScore"];
    [v17 doubleValue];
    self->_minimumCropScore = v18;
  }

  v19 = [dictionaryCopy objectForKeyedSubscript:@"cropScorePenaltyCutOff"];
  if (v19)
  {
    v20 = [dictionaryCopy objectForKeyedSubscript:@"cropScorePenaltyCutOff"];
    [v20 doubleValue];
    self->_cropScorePenaltyCutOff = v21;
  }

  v22 = [dictionaryCopy objectForKeyedSubscript:@"ignoreClockOverlap"];
  if (v22)
  {
    v23 = [dictionaryCopy objectForKeyedSubscript:@"ignoreClockOverlap"];
    self->_ignoreClockOverlap = [v23 BOOLValue];
  }

  v24 = [dictionaryCopy objectForKeyedSubscript:@"timeIntervalForCandidateDeduping"];
  if (v24)
  {
    v25 = [dictionaryCopy objectForKeyedSubscript:@"timeIntervalForCandidateDeduping"];
    [v25 doubleValue];
    self->_timeIntervalForCandidateDeduping = v26;
  }

  v27 = [dictionaryCopy objectForKeyedSubscript:@"maximumLowLightScore"];
  if (v27)
  {
    v28 = [dictionaryCopy objectForKeyedSubscript:@"maximumLowLightScore"];
    [v28 doubleValue];
    self->_maximumLowLightScore = v29;
  }

  v30 = [dictionaryCopy objectForKeyedSubscript:@"maximumCropZoomRatio"];
  if (v30)
  {
    v31 = [dictionaryCopy objectForKeyedSubscript:@"maximumCropZoomRatio"];
    [v31 doubleValue];
    self->_maximumCropZoomRatio = v32;
  }
}

- (void)_commonInitInOrientation:(int64_t)orientation
{
  self->_orientation = orientation;
  __asm { FMOV            V0.2D, #-1.0 }

  *&self->_minimumWallpaperScore = _Q0;
  *&self->_minimumCropScore = xmmword_22F78C040;
  *&self->_minimumAestheticsScore = _Q0;
  *&self->_ignoreClockOverlap = 0;
  *&self->_timeIntervalForCandidateDeduping = xmmword_22F78BF90;
  self->_maximumCropZoomRatio = 1.45;
}

- (id)initForAmbient
{
  v5.receiver = self;
  v5.super_class = PGLandscapeWallpaperSuggesterFilteringContext;
  v2 = [(PGLandscapeWallpaperSuggesterFilteringContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PGLandscapeWallpaperSuggesterFilteringContext *)v2 _commonInitInOrientation:2];
    v3->_bypassCropScoreCheck = 1;
  }

  return v3;
}

- (id)initForLandscapesInOrientation:(int64_t)orientation
{
  v7.receiver = self;
  v7.super_class = PGLandscapeWallpaperSuggesterFilteringContext;
  v4 = [(PGLandscapeWallpaperSuggesterFilteringContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PGLandscapeWallpaperSuggesterFilteringContext *)v4 _commonInitInOrientation:orientation];
    v5->_ignoreClockOverlap = 1;
  }

  return v5;
}

- (id)initForTopLandscapesInOrientation:(int64_t)orientation
{
  v7.receiver = self;
  v7.super_class = PGLandscapeWallpaperSuggesterFilteringContext;
  v4 = [(PGLandscapeWallpaperSuggesterFilteringContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PGLandscapeWallpaperSuggesterFilteringContext *)v4 _commonInitInOrientation:orientation];
    v5->_bypassCropScoreCheck = 1;
  }

  return v5;
}

@end
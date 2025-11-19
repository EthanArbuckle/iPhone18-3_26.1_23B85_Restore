@interface PGLandscapeWallpaperSuggesterFilteringContext
- (id)copyWithZone:(_NSZone *)a3;
- (id)initForAmbient;
- (id)initForLandscapesInOrientation:(int64_t)a3;
- (id)initForTopLandscapes:(BOOL)a3 withDictionary:(id)a4 orientation:(int64_t)a5;
- (id)initForTopLandscapesInOrientation:(int64_t)a3;
- (void)_commonInitInOrientation:(int64_t)a3;
- (void)updateFilteringContextWithDictionary:(id)a3;
@end

@implementation PGLandscapeWallpaperSuggesterFilteringContext

- (id)copyWithZone:(_NSZone *)a3
{
  result = [PGLandscapeWallpaperSuggesterFilteringContext allocWithZone:a3];
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

- (id)initForTopLandscapes:(BOOL)a3 withDictionary:(id)a4 orientation:(int64_t)a5
{
  v6 = a3;
  v8 = a4;
  if (v6)
  {
    v9 = [(PGLandscapeWallpaperSuggesterFilteringContext *)self initForTopLandscapesInOrientation:a5];
  }

  else
  {
    v9 = [(PGLandscapeWallpaperSuggesterFilteringContext *)self initForLandscapesInOrientation:a5];
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
  v33 = a3;
  v4 = [v33 objectForKeyedSubscript:@"minimumWallpaperScore"];
  if (v4)
  {
    v5 = [v33 objectForKeyedSubscript:@"minimumWallpaperScore"];
    [v5 doubleValue];
    self->_minimumWallpaperScore = v6;
  }

  v7 = [v33 objectForKeyedSubscript:@"wallpaperScorePenaltyCutOff"];
  if (v7)
  {
    v8 = [v33 objectForKeyedSubscript:@"wallpaperScorePenaltyCutOff"];
    [v8 doubleValue];
    self->_wallpaperScorePenaltyCutOff = v9;
  }

  v10 = [v33 objectForKeyedSubscript:@"minimumAestheticsScore"];
  if (v10)
  {
    v11 = [v33 objectForKeyedSubscript:@"minimumAestheticsScore"];
    [v11 doubleValue];
    self->_minimumAestheticsScore = v12;
  }

  v13 = [v33 objectForKeyedSubscript:@"aestheticsScorePenaltyCutOff"];
  if (v13)
  {
    v14 = [v33 objectForKeyedSubscript:@"aestheticsScorePenaltyCutOff"];
    [v14 doubleValue];
    self->_aestheticsScorePenaltyCutOff = v15;
  }

  v16 = [v33 objectForKeyedSubscript:@"minimumCropScore"];
  if (v16)
  {
    v17 = [v33 objectForKeyedSubscript:@"minimumCropScore"];
    [v17 doubleValue];
    self->_minimumCropScore = v18;
  }

  v19 = [v33 objectForKeyedSubscript:@"cropScorePenaltyCutOff"];
  if (v19)
  {
    v20 = [v33 objectForKeyedSubscript:@"cropScorePenaltyCutOff"];
    [v20 doubleValue];
    self->_cropScorePenaltyCutOff = v21;
  }

  v22 = [v33 objectForKeyedSubscript:@"ignoreClockOverlap"];
  if (v22)
  {
    v23 = [v33 objectForKeyedSubscript:@"ignoreClockOverlap"];
    self->_ignoreClockOverlap = [v23 BOOLValue];
  }

  v24 = [v33 objectForKeyedSubscript:@"timeIntervalForCandidateDeduping"];
  if (v24)
  {
    v25 = [v33 objectForKeyedSubscript:@"timeIntervalForCandidateDeduping"];
    [v25 doubleValue];
    self->_timeIntervalForCandidateDeduping = v26;
  }

  v27 = [v33 objectForKeyedSubscript:@"maximumLowLightScore"];
  if (v27)
  {
    v28 = [v33 objectForKeyedSubscript:@"maximumLowLightScore"];
    [v28 doubleValue];
    self->_maximumLowLightScore = v29;
  }

  v30 = [v33 objectForKeyedSubscript:@"maximumCropZoomRatio"];
  if (v30)
  {
    v31 = [v33 objectForKeyedSubscript:@"maximumCropZoomRatio"];
    [v31 doubleValue];
    self->_maximumCropZoomRatio = v32;
  }
}

- (void)_commonInitInOrientation:(int64_t)a3
{
  self->_orientation = a3;
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

- (id)initForLandscapesInOrientation:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PGLandscapeWallpaperSuggesterFilteringContext;
  v4 = [(PGLandscapeWallpaperSuggesterFilteringContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PGLandscapeWallpaperSuggesterFilteringContext *)v4 _commonInitInOrientation:a3];
    v5->_ignoreClockOverlap = 1;
  }

  return v5;
}

- (id)initForTopLandscapesInOrientation:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PGLandscapeWallpaperSuggesterFilteringContext;
  v4 = [(PGLandscapeWallpaperSuggesterFilteringContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PGLandscapeWallpaperSuggesterFilteringContext *)v4 _commonInitInOrientation:a3];
    v5->_bypassCropScoreCheck = 1;
  }

  return v5;
}

@end
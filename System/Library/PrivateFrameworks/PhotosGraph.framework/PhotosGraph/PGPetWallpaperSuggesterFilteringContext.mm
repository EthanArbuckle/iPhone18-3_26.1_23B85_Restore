@interface PGPetWallpaperSuggesterFilteringContext
- (id)copyWithZone:(_NSZone *)a3;
- (id)initForAmbient;
- (id)initForPetsInOrientation:(int64_t)a3;
- (id)initForTopPets:(BOOL)a3 withDictionary:(id)a4 orientation:(int64_t)a5;
- (id)initForTopPetsInOrientation:(int64_t)a3;
- (void)_commonInitWithOrientation:(int64_t)a3;
@end

@implementation PGPetWallpaperSuggesterFilteringContext

- (id)copyWithZone:(_NSZone *)a3
{
  result = [PGPetWallpaperSuggesterFilteringContext allocWithZone:a3];
  *(result + 3) = *&self->_minimumWallpaperScore;
  *(result + 4) = *&self->_minimumCropScore;
  *(result + 8) = self->_ignoreClockOverlap;
  *(result + 5) = *&self->_timeIntervalForCandidateDeduping;
  *(result + 6) = *&self->_minimumFaceSize;
  *(result + 7) = *&self->_maximumFaceSize;
  *(result + 8) = *&self->_maximumLowLightScore;
  *(result + 9) = *&self->_maximumCropZoomRatio;
  return result;
}

- (id)initForTopPets:(BOOL)a3 withDictionary:(id)a4 orientation:(int64_t)a5
{
  v6 = a3;
  v8 = a4;
  if (v6)
  {
    v9 = [(PGPetWallpaperSuggesterFilteringContext *)self initForTopPetsInOrientation:a5];
  }

  else
  {
    v9 = [(PGPetWallpaperSuggesterFilteringContext *)self initForPetsInOrientation:a5];
  }

  v10 = v9;
  if (v9)
  {
    v11 = [v8 objectForKeyedSubscript:@"minimumWallpaperScore"];
    if (v11)
    {
      v12 = [v8 objectForKeyedSubscript:@"minimumWallpaperScore"];
      [v12 doubleValue];
      v10[3] = v13;
    }

    v14 = [v8 objectForKeyedSubscript:@"minimumCropScore"];
    if (v14)
    {
      v15 = [v8 objectForKeyedSubscript:@"minimumCropScore"];
      [v15 doubleValue];
      v10[4] = v16;
    }

    v17 = [v8 objectForKeyedSubscript:@"ignoreClockOverlap"];
    if (v17)
    {
      v18 = [v8 objectForKeyedSubscript:@"ignoreClockOverlap"];
      *(v10 + 8) = [v18 BOOLValue];
    }

    v19 = [v8 objectForKeyedSubscript:@"timeIntervalForCandidateDeduping"];
    if (v19)
    {
      v20 = [v8 objectForKeyedSubscript:@"timeIntervalForCandidateDeduping"];
      [v20 doubleValue];
      v10[5] = v21;
    }

    v22 = [v8 objectForKeyedSubscript:@"minimumFaceSize"];
    if (v22)
    {
      v23 = [v8 objectForKeyedSubscript:@"minimumFaceSize"];
      [v23 doubleValue];
      v10[6] = v24;
    }

    v25 = [v8 objectForKeyedSubscript:@"maximumFaceSize"];
    if (v25)
    {
      v26 = [v8 objectForKeyedSubscript:@"maximumFaceSize"];
      [v26 doubleValue];
      v10[7] = v27;
    }

    v28 = [v8 objectForKeyedSubscript:@"maximumLowLightScore"];
    if (v28)
    {
      v29 = [v8 objectForKeyedSubscript:@"maximumLowLightScore"];
      [v29 doubleValue];
      v10[8] = v30;
    }

    v31 = [v8 objectForKeyedSubscript:@"maximumCropZoomRatio"];
    if (v31)
    {
      v32 = [v8 objectForKeyedSubscript:@"maximumCropZoomRatio"];
      [v32 doubleValue];
      v10[9] = v33;
    }
  }

  return v10;
}

- (void)_commonInitWithOrientation:(int64_t)a3
{
  self->_orientation = a3;
  *&self->_minimumWallpaperScore = xmmword_22F78C050;
  self->_ignoreClockOverlap = 0;
  *&self->_timeIntervalForCandidateDeduping = xmmword_22F78C060;
  *&self->_maximumFaceSize = xmmword_22F78BFE0;
  self->_maximumCropZoomRatio = 1.45;
}

- (id)initForAmbient
{
  v5.receiver = self;
  v5.super_class = PGPetWallpaperSuggesterFilteringContext;
  v2 = [(PGPetWallpaperSuggesterFilteringContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PGPetWallpaperSuggesterFilteringContext *)v2 _commonInitWithOrientation:2];
    v3->_bypassCropScoreCheck = 1;
  }

  return v3;
}

- (id)initForPetsInOrientation:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PGPetWallpaperSuggesterFilteringContext;
  v4 = [(PGPetWallpaperSuggesterFilteringContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PGPetWallpaperSuggesterFilteringContext *)v4 _commonInitWithOrientation:a3];
  }

  return v5;
}

- (id)initForTopPetsInOrientation:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PGPetWallpaperSuggesterFilteringContext;
  v4 = [(PGPetWallpaperSuggesterFilteringContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PGPetWallpaperSuggesterFilteringContext *)v4 _commonInitWithOrientation:a3];
    v5->_bypassCropScoreCheck = 1;
  }

  return v5;
}

@end
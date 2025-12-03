@interface PGPetWallpaperSuggesterFilteringContext
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForAmbient;
- (id)initForPetsInOrientation:(int64_t)orientation;
- (id)initForTopPets:(BOOL)pets withDictionary:(id)dictionary orientation:(int64_t)orientation;
- (id)initForTopPetsInOrientation:(int64_t)orientation;
- (void)_commonInitWithOrientation:(int64_t)orientation;
@end

@implementation PGPetWallpaperSuggesterFilteringContext

- (id)copyWithZone:(_NSZone *)zone
{
  result = [PGPetWallpaperSuggesterFilteringContext allocWithZone:zone];
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

- (id)initForTopPets:(BOOL)pets withDictionary:(id)dictionary orientation:(int64_t)orientation
{
  petsCopy = pets;
  dictionaryCopy = dictionary;
  if (petsCopy)
  {
    v9 = [(PGPetWallpaperSuggesterFilteringContext *)self initForTopPetsInOrientation:orientation];
  }

  else
  {
    v9 = [(PGPetWallpaperSuggesterFilteringContext *)self initForPetsInOrientation:orientation];
  }

  v10 = v9;
  if (v9)
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"minimumWallpaperScore"];
    if (v11)
    {
      v12 = [dictionaryCopy objectForKeyedSubscript:@"minimumWallpaperScore"];
      [v12 doubleValue];
      v10[3] = v13;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"minimumCropScore"];
    if (v14)
    {
      v15 = [dictionaryCopy objectForKeyedSubscript:@"minimumCropScore"];
      [v15 doubleValue];
      v10[4] = v16;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"ignoreClockOverlap"];
    if (v17)
    {
      v18 = [dictionaryCopy objectForKeyedSubscript:@"ignoreClockOverlap"];
      *(v10 + 8) = [v18 BOOLValue];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"timeIntervalForCandidateDeduping"];
    if (v19)
    {
      v20 = [dictionaryCopy objectForKeyedSubscript:@"timeIntervalForCandidateDeduping"];
      [v20 doubleValue];
      v10[5] = v21;
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"minimumFaceSize"];
    if (v22)
    {
      v23 = [dictionaryCopy objectForKeyedSubscript:@"minimumFaceSize"];
      [v23 doubleValue];
      v10[6] = v24;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"maximumFaceSize"];
    if (v25)
    {
      v26 = [dictionaryCopy objectForKeyedSubscript:@"maximumFaceSize"];
      [v26 doubleValue];
      v10[7] = v27;
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"maximumLowLightScore"];
    if (v28)
    {
      v29 = [dictionaryCopy objectForKeyedSubscript:@"maximumLowLightScore"];
      [v29 doubleValue];
      v10[8] = v30;
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"maximumCropZoomRatio"];
    if (v31)
    {
      v32 = [dictionaryCopy objectForKeyedSubscript:@"maximumCropZoomRatio"];
      [v32 doubleValue];
      v10[9] = v33;
    }
  }

  return v10;
}

- (void)_commonInitWithOrientation:(int64_t)orientation
{
  self->_orientation = orientation;
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

- (id)initForPetsInOrientation:(int64_t)orientation
{
  v7.receiver = self;
  v7.super_class = PGPetWallpaperSuggesterFilteringContext;
  v4 = [(PGPetWallpaperSuggesterFilteringContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PGPetWallpaperSuggesterFilteringContext *)v4 _commonInitWithOrientation:orientation];
  }

  return v5;
}

- (id)initForTopPetsInOrientation:(int64_t)orientation
{
  v7.receiver = self;
  v7.super_class = PGPetWallpaperSuggesterFilteringContext;
  v4 = [(PGPetWallpaperSuggesterFilteringContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PGPetWallpaperSuggesterFilteringContext *)v4 _commonInitWithOrientation:orientation];
    v5->_bypassCropScoreCheck = 1;
  }

  return v5;
}

@end
@interface PGPeopleWallpaperSuggesterFilteringContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)initForAmbient;
- (id)initForCameraStyleable;
- (id)initForPeopleInOrientation:(int64_t)orientation;
- (id)initForTopPeopleInOrientation:(int64_t)orientation;
- (void)_commonInitForPeople;
- (void)updateFilteringContextWithDictionary:(id)dictionary;
@end

@implementation PGPeopleWallpaperSuggesterFilteringContext

- (id)dictionaryRepresentation
{
  v15[5] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = PGPeopleWallpaperSuggesterFilteringContext;
  dictionaryRepresentation = [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)&v13 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  v14[0] = @"PGPeopleWallpaperSuggesterFilteringContextNormalizedDeviationForVeryImportantPersons";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_normalizedDeviationForVeryImportantPersons];
  v15[0] = v5;
  v14[1] = @"PGPeopleWallpaperSuggesterFilteringContextNormalizedDeviationForImportantPersons";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_normalizedDeviationForImportantPersons];
  v15[1] = v6;
  v14[2] = @"PGPeopleWallpaperSuggesterFilteringContextFavoritePersonsAreVIPs";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_favoritePersonsAreVIPs];
  v15[2] = v7;
  v14[3] = @"PGPeopleWallpaperSuggesterFilteringContextMinimumPersonImportance";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minimumPersonImportance];
  v15[3] = v8;
  v14[4] = @"PGPeopleWallpaperSuggesterFilteringContextMinimumNumberOfCandidatesForEligiblePerson";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_minimumNumberOfCandidatesForEligiblePerson];
  v15[4] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];
  [v4 addEntriesFromDictionary:v10];

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

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
      v9.receiver = self;
      v9.super_class = PGPeopleWallpaperSuggesterFilteringContext;
      v6 = [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)&v9 isEqual:v7]&& v7->_normalizedDeviationForVeryImportantPersons == self->_normalizedDeviationForVeryImportantPersons && v7->_normalizedDeviationForImportantPersons == self->_normalizedDeviationForImportantPersons && v7->_favoritePersonsAreVIPs == self->_favoritePersonsAreVIPs && v7->_minimumPersonImportance == self->_minimumPersonImportance && v7->_minimumNumberOfCandidatesForEligiblePerson == self->_minimumNumberOfCandidatesForEligiblePerson;
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
  v5.receiver = self;
  v5.super_class = PGPeopleWallpaperSuggesterFilteringContext;
  result = [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)&v5 copyWithZone:zone];
  *(result + 16) = *&self->_normalizedDeviationForVeryImportantPersons;
  *(result + 17) = *&self->_normalizedDeviationForImportantPersons;
  *(result + 120) = self->_favoritePersonsAreVIPs;
  *(result + 18) = self->_minimumPersonImportance;
  *(result + 19) = self->_minimumNumberOfCandidatesForEligiblePerson;
  return result;
}

- (void)updateFilteringContextWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = PGPeopleWallpaperSuggesterFilteringContext;
  [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)&v17 updateFilteringContextWithDictionary:dictionaryCopy];
  v5 = [dictionaryCopy objectForKeyedSubscript:@"PGPeopleWallpaperSuggesterFilteringContextNormalizedDeviationForVeryImportantPersons"];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"PGPeopleWallpaperSuggesterFilteringContextNormalizedDeviationForVeryImportantPersons"];
    [v6 doubleValue];
    self->_normalizedDeviationForVeryImportantPersons = v7;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"PGPeopleWallpaperSuggesterFilteringContextNormalizedDeviationForImportantPersons"];
  if (v8)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"PGPeopleWallpaperSuggesterFilteringContextNormalizedDeviationForImportantPersons"];
    [v9 doubleValue];
    self->_normalizedDeviationForImportantPersons = v10;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"PGPeopleWallpaperSuggesterFilteringContextFavoritePersonsAreVIPs"];
  if (v11)
  {
    v12 = [dictionaryCopy objectForKeyedSubscript:@"PGPeopleWallpaperSuggesterFilteringContextFavoritePersonsAreVIPs"];
    self->_favoritePersonsAreVIPs = [v12 BOOLValue];
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"PGPeopleWallpaperSuggesterFilteringContextMinimumPersonImportance"];
  if (v13)
  {
    v14 = [dictionaryCopy objectForKeyedSubscript:@"PGPeopleWallpaperSuggesterFilteringContextMinimumPersonImportance"];
    self->_minimumPersonImportance = [v14 unsignedIntegerValue];
  }

  v15 = [dictionaryCopy objectForKeyedSubscript:@"PGPeopleWallpaperSuggesterFilteringContextMinimumNumberOfCandidatesForEligiblePerson"];
  if (v15)
  {
    v16 = [dictionaryCopy objectForKeyedSubscript:@"PGPeopleWallpaperSuggesterFilteringContextMinimumNumberOfCandidatesForEligiblePerson"];
    self->_minimumNumberOfCandidatesForEligiblePerson = [v16 unsignedIntegerValue];
  }
}

- (void)_commonInitForPeople
{
  self->_normalizedDeviationForVeryImportantPersons = 1.0;
  self->_normalizedDeviationForImportantPersons = 0.5;
  self->_favoritePersonsAreVIPs = 1;
  self->_minimumPersonImportance = -1;
  self->_minimumNumberOfCandidatesForEligiblePerson = 1;
}

- (id)initForCameraStyleable
{
  v5.receiver = self;
  v5.super_class = PGPeopleWallpaperSuggesterFilteringContext;
  initForCameraStyleable = [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)&v5 initForCameraStyleable];
  v3 = initForCameraStyleable;
  if (initForCameraStyleable)
  {
    [initForCameraStyleable _commonInitForPeople];
  }

  return v3;
}

- (id)initForAmbient
{
  v5.receiver = self;
  v5.super_class = PGPeopleWallpaperSuggesterFilteringContext;
  initForAmbient = [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)&v5 initForAmbient];
  v3 = initForAmbient;
  if (initForAmbient)
  {
    [initForAmbient _commonInitForPeople];
  }

  return v3;
}

- (id)initForPeopleInOrientation:(int64_t)orientation
{
  v6.receiver = self;
  v6.super_class = PGPeopleWallpaperSuggesterFilteringContext;
  v3 = [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)&v6 initForPeopleInOrientation:orientation];
  v4 = v3;
  if (v3)
  {
    [v3 _commonInitForPeople];
  }

  return v4;
}

- (id)initForTopPeopleInOrientation:(int64_t)orientation
{
  v4.receiver = self;
  v4.super_class = PGPeopleWallpaperSuggesterFilteringContext;
  result = [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)&v4 initForTopPeopleInOrientation:orientation];
  if (result)
  {
    *(result + 16) = 0x3FF0000000000000;
    *(result + 17) = 0x3FE0000000000000;
    *(result + 120) = 1;
    *(result + 18) = 2;
    *(result + 19) = 1;
  }

  return result;
}

@end
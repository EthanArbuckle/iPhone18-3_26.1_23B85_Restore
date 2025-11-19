@interface PGPeopleWallpaperSuggesterPersonInformation
- (PGPeopleWallpaperSuggesterPersonInformation)initWithPersonLocalIdentifier:(id)a3 importance:(int64_t)a4 unverifiedMergeCandidateLocalIdentifiers:(id)a5;
- (void)mergeImportance:(int64_t)a3;
@end

@implementation PGPeopleWallpaperSuggesterPersonInformation

- (void)mergeImportance:(int64_t)a3
{
  importance = self->_importance;
  v4 = importance | a3;
  if (importance >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = self->_importance;
  }

  if (importance <= a3)
  {
    importance = a3;
  }

  if (v4 < 0)
  {
    importance = v5;
  }

  self->_importance = importance;
}

- (PGPeopleWallpaperSuggesterPersonInformation)initWithPersonLocalIdentifier:(id)a3 importance:(int64_t)a4 unverifiedMergeCandidateLocalIdentifiers:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = PGPeopleWallpaperSuggesterPersonInformation;
  v11 = [(PGPeopleWallpaperSuggesterPersonInformation *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_personLocalIdentifier, a3);
    v12->_importance = a4;
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    dupedPersonLocalIdentifiers = v12->_dupedPersonLocalIdentifiers;
    v12->_dupedPersonLocalIdentifiers = v13;
  }

  return v12;
}

@end
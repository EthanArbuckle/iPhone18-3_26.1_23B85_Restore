@interface PGPeopleWallpaperSuggesterPersonInformation
- (PGPeopleWallpaperSuggesterPersonInformation)initWithPersonLocalIdentifier:(id)identifier importance:(int64_t)importance unverifiedMergeCandidateLocalIdentifiers:(id)identifiers;
- (void)mergeImportance:(int64_t)importance;
@end

@implementation PGPeopleWallpaperSuggesterPersonInformation

- (void)mergeImportance:(int64_t)importance
{
  importance = self->_importance;
  v4 = importance | importance;
  if (importance >= importance)
  {
    importanceCopy = importance;
  }

  else
  {
    importanceCopy = self->_importance;
  }

  if (importance <= importance)
  {
    importance = importance;
  }

  if (v4 < 0)
  {
    importance = importanceCopy;
  }

  self->_importance = importance;
}

- (PGPeopleWallpaperSuggesterPersonInformation)initWithPersonLocalIdentifier:(id)identifier importance:(int64_t)importance unverifiedMergeCandidateLocalIdentifiers:(id)identifiers
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v16.receiver = self;
  v16.super_class = PGPeopleWallpaperSuggesterPersonInformation;
  v11 = [(PGPeopleWallpaperSuggesterPersonInformation *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_personLocalIdentifier, identifier);
    v12->_importance = importance;
    if (identifiersCopy)
    {
      v13 = identifiersCopy;
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
@interface PGPeopleAssetFilter
- (BOOL)asset:(id)asset passesForPersonOrPetLocalIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PGPeopleAssetFilter)initWithCoder:(id)coder;
- (PGPeopleAssetFilter)initWithMaximumNumberOfOtherFacesPresent:(unint64_t)present;
- (id)filteredAssetsFromAssets:(id)assets withPersonOrPetLocalIdentifier:(id)identifier;
- (id)initForPetWithMaximumNumberOfOtherFacesPresent:(unint64_t)present;
@end

@implementation PGPeopleAssetFilter

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      maximumNumberOfOtherFacesPresent = self->_maximumNumberOfOtherFacesPresent;
      v6 = maximumNumberOfOtherFacesPresent == [(PGPeopleAssetFilter *)equalCopy maximumNumberOfOtherFacesPresent];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGPeopleAssetFilter;
  v4 = [(PGPeopleAssetFilter *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ %@: %d", v4, @"maximumNumberOfOtherFacesPresent", self->_maximumNumberOfOtherFacesPresent];

  return v5;
}

- (PGPeopleAssetFilter)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"maximumNumberOfOtherFacesPresent"];

  return [(PGPeopleAssetFilter *)self initWithMaximumNumberOfOtherFacesPresent:v4];
}

- (BOOL)asset:(id)asset passesForPersonOrPetLocalIdentifier:(id)identifier
{
  assetCopy = asset;
  identifierCopy = identifier;
  if (self->_petFilter)
  {
    clsPetLocalIdentifiers = [assetCopy clsPetLocalIdentifiers];
    v9 = [clsPetLocalIdentifiers containsObject:identifierCopy];

    if (!v9)
    {
LABEL_3:
      v10 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    clsConsolidatedPersonLocalIdentifiers = [assetCopy clsConsolidatedPersonLocalIdentifiers];
    v12 = [clsConsolidatedPersonLocalIdentifiers containsObject:identifierCopy];

    if ((v12 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (self->_maximumNumberOfOtherFacesPresent == -1)
  {
    v10 = 1;
  }

  else
  {
    petFilter = self->_petFilter;
    clsFaceInformationSummary = [assetCopy clsFaceInformationSummary];
    v15 = clsFaceInformationSummary;
    if (petFilter)
    {
      numberOfFacesIncludingPets = [clsFaceInformationSummary numberOfFacesIncludingPets];
    }

    else
    {
      numberOfFacesIncludingPets = [clsFaceInformationSummary numberOfFaces];
    }

    v17 = numberOfFacesIncludingPets;

    v10 = self->_maximumNumberOfOtherFacesPresent + 1 >= v17;
  }

LABEL_11:

  return v10;
}

- (id)filteredAssetsFromAssets:(id)assets withPersonOrPetLocalIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  identifierCopy = identifier;
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = assetsCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([(PGPeopleAssetFilter *)self asset:v14 passesForPersonOrPetLocalIdentifier:identifierCopy, v17])
        {
          [array addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)initForPetWithMaximumNumberOfOtherFacesPresent:(unint64_t)present
{
  result = [(PGPeopleAssetFilter *)self initWithMaximumNumberOfOtherFacesPresent:present];
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

- (PGPeopleAssetFilter)initWithMaximumNumberOfOtherFacesPresent:(unint64_t)present
{
  v5.receiver = self;
  v5.super_class = PGPeopleAssetFilter;
  result = [(PGPeopleAssetFilter *)&v5 init];
  if (result)
  {
    result->_maximumNumberOfOtherFacesPresent = present;
  }

  return result;
}

@end
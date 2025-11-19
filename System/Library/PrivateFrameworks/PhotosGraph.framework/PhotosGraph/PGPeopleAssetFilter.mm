@interface PGPeopleAssetFilter
- (BOOL)asset:(id)a3 passesForPersonOrPetLocalIdentifier:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PGPeopleAssetFilter)initWithCoder:(id)a3;
- (PGPeopleAssetFilter)initWithMaximumNumberOfOtherFacesPresent:(unint64_t)a3;
- (id)filteredAssetsFromAssets:(id)a3 withPersonOrPetLocalIdentifier:(id)a4;
- (id)initForPetWithMaximumNumberOfOtherFacesPresent:(unint64_t)a3;
@end

@implementation PGPeopleAssetFilter

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      maximumNumberOfOtherFacesPresent = self->_maximumNumberOfOtherFacesPresent;
      v6 = maximumNumberOfOtherFacesPresent == [(PGPeopleAssetFilter *)v4 maximumNumberOfOtherFacesPresent];
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

- (PGPeopleAssetFilter)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"maximumNumberOfOtherFacesPresent"];

  return [(PGPeopleAssetFilter *)self initWithMaximumNumberOfOtherFacesPresent:v4];
}

- (BOOL)asset:(id)a3 passesForPersonOrPetLocalIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_petFilter)
  {
    v8 = [v6 clsPetLocalIdentifiers];
    v9 = [v8 containsObject:v7];

    if (!v9)
    {
LABEL_3:
      v10 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v11 = [v6 clsConsolidatedPersonLocalIdentifiers];
    v12 = [v11 containsObject:v7];

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
    v14 = [v6 clsFaceInformationSummary];
    v15 = v14;
    if (petFilter)
    {
      v16 = [v14 numberOfFacesIncludingPets];
    }

    else
    {
      v16 = [v14 numberOfFaces];
    }

    v17 = v16;

    v10 = self->_maximumNumberOfOtherFacesPresent + 1 >= v17;
  }

LABEL_11:

  return v10;
}

- (id)filteredAssetsFromAssets:(id)a3 withPersonOrPetLocalIdentifier:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
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
        if ([(PGPeopleAssetFilter *)self asset:v14 passesForPersonOrPetLocalIdentifier:v7, v17])
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)initForPetWithMaximumNumberOfOtherFacesPresent:(unint64_t)a3
{
  result = [(PGPeopleAssetFilter *)self initWithMaximumNumberOfOtherFacesPresent:a3];
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

- (PGPeopleAssetFilter)initWithMaximumNumberOfOtherFacesPresent:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PGPeopleAssetFilter;
  result = [(PGPeopleAssetFilter *)&v5 init];
  if (result)
  {
    result->_maximumNumberOfOtherFacesPresent = a3;
  }

  return result;
}

@end
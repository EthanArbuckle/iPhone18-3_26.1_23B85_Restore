@interface PGSocialGroupAssetFilter
- (BOOL)asset:(id)asset passesForPersonLocalIdentifiersInSocialGroup:(id)group;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PGSocialGroupAssetFilter)init;
- (id)filteredAssetsFromAssets:(id)assets withPersonLocalIdentifiersInSocialGroup:(id)group;
@end

@implementation PGSocialGroupAssetFilter

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    isKindOfClass = 1;
  }

  else
  {
    equalCopy = equal;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGSocialGroupAssetFilter;
  v4 = [(PGSocialGroupAssetFilter *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ minimumRatioOfFacesComingFromSocialGroup: %f minimumRatioOfPersonsInSocialGroupPresent: %f", v4, *&self->_minimumRatioOfFacesComingFromSocialGroup, *&self->_minimumRatioOfPersonsInSocialGroupPresent];

  return v5;
}

- (BOOL)asset:(id)asset passesForPersonLocalIdentifiersInSocialGroup:(id)group
{
  assetCopy = asset;
  v7 = MEMORY[0x277CBEB58];
  groupCopy = group;
  clsPersonLocalIdentifiers = [assetCopy clsPersonLocalIdentifiers];
  v10 = [v7 setWithArray:clsPersonLocalIdentifiers];

  [v10 intersectSet:groupCopy];
  v11 = [v10 count];
  v12 = [groupCopy count];

  if (v11 >= fmax(ceil(self->_minimumRatioOfPersonsInSocialGroupPresent * v12), 2.0))
  {
    clsFaceInformationSummary = [assetCopy clsFaceInformationSummary];
    numberOfFaces = [clsFaceInformationSummary numberOfFaces];

    v13 = v11 >= vcvtpd_u64_f64(self->_minimumRatioOfFacesComingFromSocialGroup * numberOfFaces);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)filteredAssetsFromAssets:(id)assets withPersonLocalIdentifiersInSocialGroup:(id)group
{
  v22 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  groupCopy = group;
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
        if ([(PGSocialGroupAssetFilter *)self asset:v14 passesForPersonLocalIdentifiersInSocialGroup:groupCopy, v17])
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

- (PGSocialGroupAssetFilter)init
{
  v3.receiver = self;
  v3.super_class = PGSocialGroupAssetFilter;
  result = [(PGSocialGroupAssetFilter *)&v3 init];
  if (result)
  {
    *&result->_minimumRatioOfFacesComingFromSocialGroup = xmmword_22F78BF60;
  }

  return result;
}

@end
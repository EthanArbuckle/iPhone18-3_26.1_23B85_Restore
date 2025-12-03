@interface PGAudioAssetFilter
- (BOOL)isEqual:(id)equal;
- (BOOL)passesWithAsset:(id)asset;
- (NSString)description;
- (PGAudioAssetFilter)initWithAudioClassifications:(id)classifications;
- (PGAudioAssetFilter)initWithCoder:(id)coder;
- (id)filteredAssetsFromAssets:(id)assets;
@end

@implementation PGAudioAssetFilter

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      audioClassifications = self->_audioClassifications;
      audioClassifications = [(PGAudioAssetFilter *)equalCopy audioClassifications];
      v7 = [(NSIndexSet *)audioClassifications isEqualToIndexSet:audioClassifications];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v7.receiver = self;
  v7.super_class = PGAudioAssetFilter;
  v4 = [(PGAudioAssetFilter *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@", v4];

  [v5 appendFormat:@" %@: %@", @"audioClassifications", self->_audioClassifications];

  return v5;
}

- (PGAudioAssetFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioClassifications"];

  v6 = [(PGAudioAssetFilter *)self initWithAudioClassifications:v5];
  return v6;
}

- (BOOL)passesWithAsset:(id)asset
{
  assetCopy = asset;
  if ([(NSIndexSet *)self->_audioClassifications count])
  {
    clsInterestingAudioClassifications = [assetCopy clsInterestingAudioClassifications];
    if (clsInterestingAudioClassifications)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v14 = 0;
      audioClassifications = self->_audioClassifications;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __38__PGAudioAssetFilter_passesWithAsset___block_invoke;
      v9[3] = &unk_2788824E0;
      v10 = clsInterestingAudioClassifications;
      v9[4] = &v11;
      [(NSIndexSet *)audioClassifications enumerateIndexesUsingBlock:v9];
      v7 = *(v12 + 24);
      _Block_object_dispose(&v11, 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t __38__PGAudioAssetFilter_passesWithAsset___block_invoke(uint64_t result, __int16 a2, _BYTE *a3)
{
  if ((a2 & *(result + 40)) != 0)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (id)filteredAssetsFromAssets:(id)assets
{
  v19 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = assetsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(PGAudioAssetFilter *)self passesWithAsset:v11, v14])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (PGAudioAssetFilter)initWithAudioClassifications:(id)classifications
{
  classificationsCopy = classifications;
  v9.receiver = self;
  v9.super_class = PGAudioAssetFilter;
  v6 = [(PGAudioAssetFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioClassifications, classifications);
  }

  return v7;
}

@end
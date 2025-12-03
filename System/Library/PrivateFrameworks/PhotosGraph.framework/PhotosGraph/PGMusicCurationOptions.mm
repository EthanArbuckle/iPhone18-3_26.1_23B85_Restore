@interface PGMusicCurationOptions
- (NSArray)recentlyUsedBundledSongIDs;
- (NSArray)recentlyUsedSongAdamIDs;
- (PGMusicCurationOptions)initWithOptionsDictionary:(id)dictionary;
- (id)_init;
- (id)copyWithAssetCollectionLocalIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForMemoryEnrichment;
- (id)initForUpNextMemoryRequestWithOptionsDictionary:(id)dictionary;
@end

@implementation PGMusicCurationOptions

- (id)copyWithZone:(_NSZone *)zone
{
  _init = [[PGMusicCurationOptions alloc] _init];
  _init[6] = self->_suggestedMood;
  v5 = [(NSDictionary *)self->_topicKeywordsAndWeights copy];
  v6 = _init[5];
  _init[5] = v5;

  v7 = [(NSString *)self->_rootMemoryLocalIdentifier copy];
  v8 = _init[4];
  _init[4] = v7;

  *(_init + 11) = self->_shouldRefreshSongMetadata;
  v9 = [(NSString *)self->_assetCollectionLocalIdentifier copy];
  v10 = _init[8];
  _init[8] = v9;

  v11 = [(NSString *)self->_backingCollectionLocalIdentifier copy];
  v12 = _init[9];
  _init[9] = v11;

  v13 = [(PGMusicCurationSpecificationOptions *)self->_musicCurationSpecificationOptions copy];
  v14 = _init[7];
  _init[7] = v13;

  *(_init + 13) = self->_shouldCurateUpNextMemories;
  v15 = [(NSArray *)self->_recentlyUsedSongAdamIDs copy];
  v16 = _init[2];
  _init[2] = v15;

  v17 = [(NSArray *)self->_recentlyUsedBundledSongIDs copy];
  v18 = _init[3];
  _init[3] = v17;

  *(_init + 12) = self->_shouldForceShareableInBestSuggestions;
  *(_init + 9) = self->_includeChillMixInMusicForYou;
  *(_init + 10) = self->_includeGetUpMixInMusicForYou;
  *(_init + 8) = self->_useOnlyMusicForTopicInTopPickSuggestions;
  return _init;
}

- (id)copyWithAssetCollectionLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(PGMusicCurationOptions *)self copy];
  v6 = [identifierCopy copy];

  v7 = v5[8];
  v5[8] = v6;

  return v5;
}

- (NSArray)recentlyUsedBundledSongIDs
{
  if (self->_recentlyUsedBundledSongIDs)
  {
    return self->_recentlyUsedBundledSongIDs;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (NSArray)recentlyUsedSongAdamIDs
{
  if (self->_recentlyUsedSongAdamIDs)
  {
    return self->_recentlyUsedSongAdamIDs;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (id)initForUpNextMemoryRequestWithOptionsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(PGMusicCurationOptions *)self initWithOptionsDictionary:dictionaryCopy];
  v6 = v5;
  if (v5)
  {
    *&v5->_shouldForceShareableInBestSuggestions = 257;
    v7 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B120]];
    rootMemoryLocalIdentifier = v6->_rootMemoryLocalIdentifier;
    v6->_rootMemoryLocalIdentifier = v7;
  }

  return v6;
}

- (id)initForMemoryEnrichment
{
  result = [(PGMusicCurationOptions *)self initWithOptionsDictionary:MEMORY[0x277CBEC10]];
  if (result)
  {
    *(result + 11) = 257;
  }

  return result;
}

- (PGMusicCurationOptions)initWithOptionsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v49.receiver = self;
  v49.super_class = PGMusicCurationOptions;
  v5 = [(PGMusicCurationOptions *)&v49 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3AFE8]];
    recentlyUsedSongAdamIDs = v5->_recentlyUsedSongAdamIDs;
    v5->_recentlyUsedSongAdamIDs = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3AFE0]];
    recentlyUsedBundledSongIDs = v5->_recentlyUsedBundledSongIDs;
    v5->_recentlyUsedBundledSongIDs = v8;

    v10 = *MEMORY[0x277D3B178];
    v11 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B178]];
    if (v11)
    {
      v12 = [dictionaryCopy objectForKeyedSubscript:v10];
      v5->_useOnlyMusicForTopicInTopPickSuggestions = [v12 BOOLValue];
    }

    else
    {
      v5->_useOnlyMusicForTopicInTopPickSuggestions = 0;
    }

    v13 = *MEMORY[0x277D3B168];
    v14 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B168]];
    if (v14)
    {
      v15 = [dictionaryCopy objectForKeyedSubscript:v13];
      v5->_includeChillMixInMusicForYou = [v15 BOOLValue];
    }

    else
    {
      v5->_includeChillMixInMusicForYou = 0;
    }

    v16 = *MEMORY[0x277D3B170];
    v17 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B170]];
    if (v17)
    {
      v18 = [dictionaryCopy objectForKeyedSubscript:v16];
      v5->_includeGetUpMixInMusicForYou = [v18 BOOLValue];
    }

    else
    {
      v5->_includeGetUpMixInMusicForYou = 0;
    }

    v19 = *MEMORY[0x277D3AEF0];
    v20 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3AEF0]];
    if (v20)
    {
      v21 = [dictionaryCopy objectForKeyedSubscript:v19];
      v22 = [v21 BOOLValue] ^ 1;
    }

    else
    {
      v22 = 1;
    }

    v5->_shouldForceShareableInBestSuggestions = v22;
    v23 = *MEMORY[0x277D3AF00];
    v24 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3AF00]];
    if (v24)
    {
      v25 = [dictionaryCopy objectForKeyedSubscript:v23];
      v5->_shouldUseSpecificationOptionsForCuration = [v25 BOOLValue];
    }

    else
    {
      v5->_shouldUseSpecificationOptionsForCuration = 0;
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B0F0]];
    v27 = v26;
    v28 = MEMORY[0x277CBEC10];
    if (v26)
    {
      v29 = v26;
    }

    else
    {
      v29 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v5->_topicKeywordsAndWeights, v29);

    v30 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3AEF8]];
    v5->_suggestedMood = _moodFromMoodAsNumber(v30);
    v31 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3AEC0]];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = v28;
    }

    v34 = v33;

    v35 = [[PGMusicCurationSpecificationOptions alloc] initWithOptionsDictionary:v34];
    musicCurationSpecificationOptions = v5->_musicCurationSpecificationOptions;
    v5->_musicCurationSpecificationOptions = v35;

    v37 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3AE08]];
    assetCollectionLocalIdentifier = v5->_assetCollectionLocalIdentifier;
    v5->_assetCollectionLocalIdentifier = v37;

    v39 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3AE10]];
    backingCollectionLocalIdentifier = v5->_backingCollectionLocalIdentifier;
    v5->_backingCollectionLocalIdentifier = v39;

    v41 = *MEMORY[0x277D3B148];
    v42 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B148]];
    if (v42)
    {
      v43 = [dictionaryCopy objectForKeyedSubscript:v41];
      v5->_useMemoryCreationMusicCuratorConfiguration = [v43 BOOLValue];
    }

    else
    {
      v5->_useMemoryCreationMusicCuratorConfiguration = 0;
    }

    v44 = *MEMORY[0x277D3AE78];
    v45 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3AE78]];
    if (v45)
    {
      v46 = [dictionaryCopy objectForKeyedSubscript:v44];
    }

    else
    {
      v46 = @"FlexMusicKitSongProvider";
    }

    flexSongProviderName = v5->_flexSongProviderName;
    v5->_flexSongProviderName = v46;
  }

  return v5;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PGMusicCurationOptions;
  return [(PGMusicCurationOptions *)&v3 init];
}

@end
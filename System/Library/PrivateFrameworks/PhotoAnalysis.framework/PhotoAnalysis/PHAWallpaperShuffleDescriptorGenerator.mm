@interface PHAWallpaperShuffleDescriptorGenerator
+ (id)displayNameLocalizationKeyForTopSubtype:(unsigned __int16)a3;
+ (unsigned)wallpaperTopSubtypeFromShuffleSubtype:(unsigned __int16)a3;
- (PHAWallpaperShuffleDescriptorGenerator)initWithPhotoLibrary:(id)a3 loggingConnection:(id)a4;
- (id)allVIPShufflePosterDescriptorFromEligiblePersonLocalIdentifiers:(id)a3;
- (id)baseSuggestionFetchOptionsWithSubtype:(unsigned __int16)a3 personLocalIdentifiers:(id)a4 suggestionUUIDsToAvoid:(id)a5;
- (id)descriptorForSuggestion:(id)a3;
- (id)fetchSuggestionWithSubtype:(unsigned __int16)a3 personLocalIdentifiers:(id)a4;
- (id)peopleShufflePosterDescriptors;
- (id)randomizeSuggestions:(id)a3;
- (id)shuffleDescriptorEligiblePersonLocalIdentifiers;
- (id)shuffleDescriptorsForDonation;
- (id)shufflePosterDescriptorForShuffleSubtype:(unsigned __int16)a3 personLocalIdentifiers:(id)a4 suggestionUUIDsToAvoid:(id)a5 requireMinimumShuffleCount:(BOOL)a6;
- (id)shuffleVIPPersonLocalIdentifiers;
- (id)suggestionPersonLocalIdentifiersFromSuggestions:(id)a3;
@end

@implementation PHAWallpaperShuffleDescriptorGenerator

- (id)fetchSuggestionWithSubtype:(unsigned __int16)a3 personLocalIdentifiers:(id)a4
{
  v4 = [(PHAWallpaperShuffleDescriptorGenerator *)self baseSuggestionFetchOptionsWithSubtype:a3 personLocalIdentifiers:a4 suggestionUUIDsToAvoid:0];
  v5 = [MEMORY[0x277CD99E0] fetchSuggestionsWithOptions:v4];

  return v5;
}

- (id)baseSuggestionFetchOptionsWithSubtype:(unsigned __int16)a3 personLocalIdentifiers:(id)a4 suggestionUUIDsToAvoid:(id)a5
{
  v6 = a3;
  v24[2] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v24[0] = v11;
  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [v10 setSortDescriptors:v13];

  v14 = objc_alloc(MEMORY[0x277CBEB18]);
  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"state", 4];
  v23[0] = v15;
  v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %d", @"subtype", v6];
  v23[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v18 = [v14 initWithArray:v17];

  if (v8)
  {
    v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"context", v8];
    [v18 addObject:v19];
  }

  if (v9)
  {
    v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"uuid", v9];
    [v18 addObject:v20];
  }

  v21 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v18];
  [v10 setPredicate:v21];

  return v10;
}

- (id)suggestionPersonLocalIdentifiersFromSuggestions:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCA940]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) context];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)descriptorForSuggestion:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v37 = [v3 firstObject];
  v36 = [v37 subtype];
  v40 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v42;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v41 + 1) + 8 * i);
        v9 = MEMORY[0x277CD97A8];
        v10 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
        v11 = [v9 fetchKeyAssetsInAssetCollection:v8 options:v10];
        v12 = [v11 firstObject];

        v13 = objc_alloc(MEMORY[0x277D3B4A8]);
        v14 = [v12 uuid];
        v15 = [v8 uuid];
        v16 = [v13 initWithAssetUUID:v14 suggestionUUID:v15 suggestionSubtype:{objc_msgSend(v8, "subtype")}];
        [v40 addObject:v16];
      }

      v5 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v5);
  }

  v17 = 2;
  v18 = [objc_alloc(MEMORY[0x277D3B498]) initWithDescriptorType:2 media:v40];
  v19 = MEMORY[0x277CCACA8];
  v20 = MEMORY[0x277D3B498];
  v21 = [v37 uuid];
  v47 = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
  v23 = [v20 descriptorIdentifierForDescriptorType:2 uuids:v22];
  v24 = PHSuggestionStringWithSubtype();
  v25 = [v19 stringWithFormat:@"%@|%@", v23, v24];
  [v18 setIdentifier:v25];

  v26 = [objc_alloc(MEMORY[0x277D3B4B8]) initWithShuffleType:0];
  [v18 setShuffleConfiguration:v26];
  switch(v36)
  {
    case 0x25Cu:
      v17 = 4;
      goto LABEL_13;
    case 0x25Bu:
LABEL_13:
      [v26 setShuffleSmartAlbums:v17];
      goto LABEL_22;
    case 0x25Au:
      [v26 setShuffleSmartAlbums:1];
      goto LABEL_17;
  }

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    v33 = loggingConnection;
    v34 = PHSuggestionStringWithSubtype();
    *buf = 138412290;
    v46 = v34;
    _os_log_error_impl(&dword_22FA28000, v33, OS_LOG_TYPE_ERROR, "[PHAWallpaperShuffleDescriptorGenerator] Unsupported shuffle descriptor type: %@", buf, 0xCu);
  }

  [v26 setShuffleSmartAlbums:0];
  if (v36 == 652)
  {
LABEL_17:
    v28 = [v37 context];
    if (v28)
    {
      v29 = [MEMORY[0x277CBEB98] setWithObject:v28];
      [v26 setPersonLocalIdentifiers:v29];
    }

    else
    {
      v30 = self->_loggingConnection;
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v29 = v30;
      v35 = [v37 uuid];
      *buf = 138412290;
      v46 = v35;
      _os_log_error_impl(&dword_22FA28000, v29, OS_LOG_TYPE_ERROR, "[PHAWallpaperShuffleDescriptorGenerator] Person Suggestion %@ has nil context.", buf, 0xCu);
    }

LABEL_21:
  }

LABEL_22:
  v31 = [objc_opt_class() displayNameLocalizationKeyForTopSubtype:v36];
  [v18 setDisplayNameLocalizationKey:v31];

  return v18;
}

- (id)shuffleDescriptorEligiblePersonLocalIdentifiers
{
  v39[1] = *MEMORY[0x277D85DE8];
  v28 = [MEMORY[0x277D3C810] fetchPersonLocalIdentifiersForSuggestionSubtype:602 photoLibrary:self->_photoLibrary];
  v27 = [PHAWallpaperShuffleDescriptorGenerator baseSuggestionFetchOptionsWithSubtype:"baseSuggestionFetchOptionsWithSubtype:personLocalIdentifiers:suggestionUUIDsToAvoid:" personLocalIdentifiers:652 suggestionUUIDsToAvoid:?];
  v26 = [MEMORY[0x277CD99E0] fetchSuggestionsWithOptions:?];
  v3 = [(PHAWallpaperShuffleDescriptorGenerator *)self suggestionPersonLocalIdentifiersFromSuggestions:?];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37[0] = v3;
    _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperShuffleDescriptorGenerator] Shuffle people local identifiers with count: %@", buf, 0xCu);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __89__PHAWallpaperShuffleDescriptorGenerator_shuffleDescriptorEligiblePersonLocalIdentifiers__block_invoke;
  v33[3] = &unk_2788B2C88;
  v34 = v3;
  v6 = v5;
  v35 = v6;
  v25 = v34;
  [v34 enumerateObjectsUsingBlock:v33];
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"count" ascending:0];
  v39[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  v9 = [v6 sortedArrayUsingDescriptors:v8];

  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
LABEL_5:
    v15 = 0;
    while (1)
    {
      if (*v30 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v29 + 1) + 8 * v15);
      v17 = [v16 count];
      v18 = [v17 integerValue];
      shuffleMinimumSuggestionRequired = self->_shuffleMinimumSuggestionRequired;

      if (v18 >= shuffleMinimumSuggestionRequired)
      {
        v20 = [v16 personLocalIdentifer];
        [v10 addObject:v20];
      }

      if ([v10 count] > 5)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v13)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v21 = self->_loggingConnection;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    v23 = [v10 count];
    *buf = 67109378;
    LODWORD(v37[0]) = v23;
    WORD2(v37[0]) = 2112;
    *(v37 + 6) = v10;
    _os_log_impl(&dword_22FA28000, v22, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperShuffleDescriptorGenerator] Found %d people eligible for shuffle descriptor. %@", buf, 0x12u);
  }

  return v10;
}

void __89__PHAWallpaperShuffleDescriptorGenerator_shuffleDescriptorEligiblePersonLocalIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [_PHAWallpaperSuggestionCount alloc];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "countForObject:", v3)}];
  v6 = [(_PHAWallpaperSuggestionCount *)v4 initWithPersonLocalIdentifier:v3 count:v5];

  [*(a1 + 40) addObject:v6];
}

- (id)shuffleVIPPersonLocalIdentifiers
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CD99F8]) initWithPhotoLibrary:self->_photoLibrary];
  v4 = [v3 personUUIDsWithNegativeFeedback];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x277CD9938] localIdentifierWithUUID:{*(*(&v19 + 1) + 8 * i), v19}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x277D3C810] fetchPersonLocalIdentifiersForSuggestionSubtype:602 photoLibrary:self->_photoLibrary];
  v13 = [MEMORY[0x277D3C810] fetchPersonLocalIdentifiersForSuggestionSubtype:652 photoLibrary:self->_photoLibrary];
  v14 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v12];
  [v14 intersectSet:v13];
  [v14 minusSet:v5];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v16 = loggingConnection;
    v17 = [v14 count];
    *buf = 134218242;
    v24 = v17;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&dword_22FA28000, v16, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperShuffleDescriptorGenerator] Found %td shuffle VIP. %@", buf, 0x16u);
  }

  return v14;
}

- (id)allVIPShufflePosterDescriptorFromEligiblePersonLocalIdentifiers:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count] > 1)
  {
    v7 = [v4 allObjects];
    v8 = [v7 objectAtIndex:{-[PFPseudoRandomNumberGenerator nextUnsignedIntegerLessThan:](self->_randomNumberGenerator, "nextUnsignedIntegerLessThan:", objc_msgSend(v7, "count"))}];
    v9 = [MEMORY[0x277CBEB98] setWithObject:v8];
    v6 = [(PHAWallpaperShuffleDescriptorGenerator *)self shufflePosterDescriptorForShuffleSubtype:652 personLocalIdentifiers:v9 suggestionUUIDsToAvoid:0 requireMinimumShuffleCount:0];

    if (v6)
    {
      v10 = [v6 shuffleConfiguration];
      [v10 setPersonLocalIdentifiers:v4];

      v11 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277D3B498] descriptorTypeStringWithType:2];
      v13 = [v11 stringWithFormat:@"%@|%@", v12, @"All-VIP"];
      [v6 setIdentifier:v13];

      v14 = [MEMORY[0x277D3BC60] peopleShuffleDescriptorTitleWithCount:{objc_msgSend(v7, "count")}];
      [v6 setDisplayNameLocalizationKey:v14];
    }

    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperShuffleDescriptorGenerator] Created all-vip shuffle poster descriptor %@", buf, 0xCu);
    }
  }

  else
  {
    v5 = self->_loggingConnection;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, v5, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperShuffleDescriptorGenerator] Less than 2 eligible VIPs. Skip 'All-VIP' shuffle poster descriptor", buf, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)peopleShufflePosterDescriptors
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = [(PHAWallpaperShuffleDescriptorGenerator *)self shuffleVIPPersonLocalIdentifiers];
  v4 = [(PHAWallpaperShuffleDescriptorGenerator *)self allVIPShufflePosterDescriptorFromEligiblePersonLocalIdentifiers:?];
  v26 = v4;
  if (v4)
  {
    v5 = v4;
    [v3 addObject:{v4, v4}];
    v6 = [v5 media];
    v7 = [v6 firstObject];

    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = MEMORY[0x277CBEB98];
      v9 = [v7 suggestionUUID];
      v10 = [v8 setWithObject:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  [(PHAWallpaperShuffleDescriptorGenerator *)self shuffleDescriptorEligiblePersonLocalIdentifiers];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v30 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v30)
  {
    v11 = *v32;
    v12 = 0x277CBE000uLL;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v16 = [*(v12 + 2968) setWithObject:v14];
        v17 = [(PHAWallpaperShuffleDescriptorGenerator *)self shufflePosterDescriptorForShuffleSubtype:652 personLocalIdentifiers:v16 suggestionUUIDsToAvoid:v10 requireMinimumShuffleCount:1];
        [v17 setDisplayNameLocalizationKey:@"PHOTOS_WALLPAPER_DESCRIPTOR_TITLE_SMART_ALBUM_ONE_PERSON"];
        if (v17)
        {
          loggingConnection = self->_loggingConnection;
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
          {
            v19 = loggingConnection;
            [v17 identifier];
            v20 = v11;
            v21 = self;
            v22 = v10;
            v24 = v23 = v3;
            *buf = 138412290;
            v36 = v24;
            _os_log_impl(&dword_22FA28000, v19, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperShuffleDescriptorGenerator] Created Shuffle Poster Descriptor: %@", buf, 0xCu);

            v3 = v23;
            v10 = v22;
            self = v21;
            v11 = v20;
            v12 = 0x277CBE000;
          }

          [v3 addObject:v17];
        }

        objc_autoreleasePoolPop(v15);
      }

      v30 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v30);
  }

  return v3;
}

- (id)randomizeSuggestions:(id)a3
{
  v3 = MEMORY[0x277D3C810];
  v4 = a3;
  v5 = [v3 randomNumberGeneratorForWallpaperDonation];
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v7 = [v4 fetchedObjects];

  v8 = [v6 initWithArray:v7];
  PFMutableArrayShuffleWithRandomNumberGenerator();
  v9 = [v8 copy];

  return v9;
}

- (id)shufflePosterDescriptorForShuffleSubtype:(unsigned __int16)a3 personLocalIdentifiers:(id)a4 suggestionUUIDsToAvoid:(id)a5 requireMinimumShuffleCount:(BOOL)a6
{
  v6 = a6;
  v8 = a3;
  v53 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = PHSuggestionStringWithSubtype();
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v46 = v12;
    v47 = 2112;
    v48 = v10;
    _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperShuffleDescriptorGenerator] Fetching suggestion with subtype (%@), personLocalIdentifiers %@", buf, 0x16u);
  }

  v14 = [(PHAWallpaperShuffleDescriptorGenerator *)self fetchSuggestionWithSubtype:v8 personLocalIdentifiers:v10];
  v15 = v14;
  if (v6 && [v14 count] < self->_shuffleMinimumSuggestionRequired)
  {
    v16 = self->_loggingConnection;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [v15 count];
      shuffleMinimumSuggestionRequired = self->_shuffleMinimumSuggestionRequired;
      *buf = 134218754;
      v46 = v18;
      v47 = 2112;
      v48 = v12;
      v49 = 2048;
      v50 = shuffleMinimumSuggestionRequired;
      v51 = 2112;
      v52 = v12;
      _os_log_impl(&dword_22FA28000, v17, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperShuffleDescriptorGenerator] Found %lu %@ suggestions, required %lu, skipping creating shuffle descriptor for %@", buf, 0x2Au);
    }

    v20 = 0;
  }

  else
  {
    v21 = MEMORY[0x277CD97A8];
    v22 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v23 = [v21 fetchKeyAssetBySuggestionUUIDForSuggestions:v15 options:v22];

    v24 = -[PHAWallpaperShuffleDescriptorGenerator baseSuggestionFetchOptionsWithSubtype:personLocalIdentifiers:suggestionUUIDsToAvoid:](self, "baseSuggestionFetchOptionsWithSubtype:personLocalIdentifiers:suggestionUUIDsToAvoid:", [objc_opt_class() wallpaperTopSubtypeFromShuffleSubtype:v8], 0, v11);
    v25 = MEMORY[0x277CD99E0];
    v26 = [v23 allValues];
    v27 = [v25 fetchAssetCollectionsContainingAssets:v26 withType:8 options:v24];

    if ([v27 count])
    {
      v28 = [(PHAWallpaperShuffleDescriptorGenerator *)self randomizeSuggestions:v27];
      if ([v28 count] >= 6)
      {
        v29 = [v28 subarrayWithRange:{0, 5}];
        v43 = v24;
        v30 = v15;
        v31 = v23;
        v32 = v10;
        v33 = v12;
        v34 = v11;
        v35 = [v29 mutableCopy];

        v28 = v35;
        v11 = v34;
        v12 = v33;
        v10 = v32;
        v23 = v31;
        v15 = v30;
        v24 = v43;
      }

      v36 = [MEMORY[0x277D3C808] orderSuggestionsBasedOnLayoutVariant:v28];

      v20 = [(PHAWallpaperShuffleDescriptorGenerator *)self descriptorForSuggestion:v36];
      v37 = self->_loggingConnection;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v12;
        v38 = v11;
        v39 = v37;
        v40 = [v20 identifier];
        *buf = 138412290;
        v46 = v40;
        _os_log_impl(&dword_22FA28000, v39, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperShuffleDescriptorGenerator] Created Shuffle Poster Descriptor: %@", buf, 0xCu);

        v11 = v38;
        v12 = v44;
      }
    }

    else
    {
      v41 = self->_loggingConnection;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, v41, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperShuffleDescriptorGenerator] No assets exist in both top & shuffle suggestions. Skipping creating shuffle descriptor", buf, 2u);
      }

      v20 = 0;
    }
  }

  return v20;
}

- (id)shuffleDescriptorsForDonation
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = self->_loggingConnection;
  v4 = os_signpost_id_generate(v3);
  info = 0;
  mach_timebase_info(&info);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "WallpaperShuffleDescriptorGeneration", "", buf, 2u);
  }

  v7 = mach_absolute_time();
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [(PHAWallpaperShuffleDescriptorGenerator *)self shufflePosterDescriptorForShuffleSubtype:653 personLocalIdentifiers:0 suggestionUUIDsToAvoid:0 requireMinimumShuffleCount:1];
  if (v9)
  {
    [v8 addObject:v9];
  }

  v10 = [(PHAWallpaperShuffleDescriptorGenerator *)self shufflePosterDescriptorForShuffleSubtype:654 personLocalIdentifiers:0 suggestionUUIDsToAvoid:0 requireMinimumShuffleCount:1];
  if (v10)
  {
    [v8 addObject:v10];
  }

  v25 = [(PHAWallpaperShuffleDescriptorGenerator *)self peopleShufflePosterDescriptors];
  [v8 addObjectsFromArray:?];
  v11 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v14 = v6;
  v15 = v14;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v15, OS_SIGNPOST_INTERVAL_END, v4, "WallpaperShuffleDescriptorGeneration", "", buf, 2u);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v33 = "WallpaperShuffleDescriptorGeneration";
    v34 = 2048;
    v35 = ((((v11 - v7) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22FA28000, v15, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = v8;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v26 + 1) + 8 * i) identifier];
        [v16 addObject:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v19);
  }

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v16;
    _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperShuffleDescriptorGenerator] Generated shuffle descriptors: %@", buf, 0xCu);
  }

  return v17;
}

- (PHAWallpaperShuffleDescriptorGenerator)initWithPhotoLibrary:(id)a3 loggingConnection:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = PHAWallpaperShuffleDescriptorGenerator;
  v9 = [(PHAWallpaperShuffleDescriptorGenerator *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, a3);
    objc_storeStrong(&v10->_loggingConnection, a4);
    v11 = [MEMORY[0x277D3C810] randomNumberGeneratorForWallpaperDonation];
    randomNumberGenerator = v10->_randomNumberGenerator;
    v10->_randomNumberGenerator = v11;

    v10->_shuffleMinimumSuggestionRequired = 25;
    v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v14 = [v13 integerForKey:@"PHAWallpaperSuggestionShuffleMinimumSuggestionRequired"];

    if (v14 >= 1)
    {
      loggingConnection = v10->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v19 = v14;
        _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperShuffleDescriptorGenerator] PHAWallpaperSuggestionShuffleMinimumSuggestionRequired overwrite to %d", buf, 8u);
      }

      v10->_shuffleMinimumSuggestionRequired = v14;
    }
  }

  return v10;
}

+ (id)displayNameLocalizationKeyForTopSubtype:(unsigned __int16)a3
{
  v7 = *MEMORY[0x277D85DE8];
  if ((a3 - 602) < 3)
  {
    return off_2788B2CA8[(a3 - 602)];
  }

  v4 = a3;
  v5 = PLWallpaperGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_error_impl(&dword_22FA28000, v5, OS_LOG_TYPE_ERROR, "[PHAWallpaperShuffleDescriptorGenerator] wallpaperTopSubtypeFromShuffleSubtype called with %d. This method should only take in non-top wallpaper subtypes.", v6, 8u);
  }

  return 0;
}

+ (unsigned)wallpaperTopSubtypeFromShuffleSubtype:(unsigned __int16)a3
{
  v3 = a3;
  v8 = *MEMORY[0x277D85DE8];
  if ((a3 & 0xFFFC) == 0x28C)
  {
    return a3 - 50;
  }

  v5 = PLWallpaperGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_error_impl(&dword_22FA28000, v5, OS_LOG_TYPE_ERROR, "[PHAWallpaperShuffleDescriptorGenerator] wallpaperTopSubtypeFromShuffleSubtype called with %d. This method should only take in non-top wallpaper subtypes.", v7, 8u);
  }

  return 0;
}

@end
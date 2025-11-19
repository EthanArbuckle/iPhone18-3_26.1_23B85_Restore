@interface PGEnrichableEventSuggestion
- (NSString)description;
- (PGEnrichableEventSuggestion)initWithType:(unsigned __int16)a3 subtype:(unsigned __int16)a4 enrichableEvent:(id)a5 sharingSuggestionResults:(id)a6 photoLibrary:(id)a7 curationManager:(id)a8 curationContext:(id)a9 loggingConnection:(id)a10 titleGenerationContext:(id)a11;
- (id)assetCollectionToShareForAssetCollection:(id)a3 loggingConnection:(id)a4;
@end

@implementation PGEnrichableEventSuggestion

- (NSString)description
{
  v12.receiver = self;
  v12.super_class = PGEnrichableEventSuggestion;
  v3 = [(PGEnrichableEventSuggestion *)&v12 description];
  type = self->_type;
  v5 = PHSuggestionStringWithType();
  subtype = self->_subtype;
  v7 = PHSuggestionStringWithSubtype();
  v8 = [(PGEnrichableEventSuggestion *)self keyAssets];
  v9 = [(PGEnrichableEventSuggestion *)self representativeAssets];
  v10 = [v3 stringByAppendingFormat:@": type=%@, subtype=%@, keyAssets=%@, representativeAssets=%lu, features=%@", v5, v7, v8, objc_msgSend(v9, "count"), self->_features];

  return v10;
}

- (id)assetCollectionToShareForAssetCollection:(id)a3 loggingConnection:(id)a4
{
  v37[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 photoLibrary];
  v8 = [v7 librarySpecificFetchOptions];

  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v37[0] = v9;
  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v37[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  [v8 setSortDescriptors:v11];

  v12 = [MEMORY[0x277D3B248] predicateForExcludeMask:objc_msgSend(MEMORY[0x277D3B248] useIndex:{"maskForGuestAsset"), 1}];
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(additionalAttributes.importedBy != %d) && kindSubtype != %d && kindSubtype != %d", 7, 10, 103];
  v14 = MEMORY[0x277CCA920];
  v36[0] = v13;
  v36[1] = v12;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v16 = [v14 andPredicateWithSubpredicates:v15];
  [v8 setInternalPredicate:v16];

  v17 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v5 options:v8];
  if ([v17 count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      v22 = *MEMORY[0x277D3C778];
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v29 + 1) + 8 * i) curationScore];
          if (v24 > v22)
          {

            v26 = [MEMORY[0x277CD97B8] transientAssetCollectionWithAssetFetchResult:v18 title:0];
            goto LABEL_17;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v5;
      v25 = "Asset collection %@ only contains junk assets.";
LABEL_15:
      _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v5;
    v25 = "Asset collection %@ only contains received assets from moment share(s).";
    goto LABEL_15;
  }

  v26 = 0;
LABEL_17:

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (PGEnrichableEventSuggestion)initWithType:(unsigned __int16)a3 subtype:(unsigned __int16)a4 enrichableEvent:(id)a5 sharingSuggestionResults:(id)a6 photoLibrary:(id)a7 curationManager:(id)a8 curationContext:(id)a9 loggingConnection:(id)a10 titleGenerationContext:(id)a11
{
  v75 = *MEMORY[0x277D85DE8];
  v17 = a5;
  v68 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v69.receiver = self;
  v69.super_class = PGEnrichableEventSuggestion;
  v23 = [(PGEnrichableEventSuggestion *)&v69 init];
  v24 = v23;
  if (!v23)
  {
LABEL_21:
    v36 = v24;
    goto LABEL_22;
  }

  v67 = v20;
  v23->_type = a3;
  v23->_subtype = a4;
  v25 = [v17 universalStartDate];
  universalStartDate = v24->_universalStartDate;
  v24->_universalStartDate = v25;

  v27 = [v17 universalEndDate];
  universalEndDate = v24->_universalEndDate;
  v24->_universalEndDate = v27;

  v29 = [v17 fetchAssetCollectionInPhotoLibrary:v18];
  v30 = [(PGEnrichableEventSuggestion *)v24 assetCollectionToShareForAssetCollection:v29 loggingConnection:v21];
  if (v30)
  {
    v31 = v30;
    v32 = [v18 librarySpecificFetchOptions];
    [v32 setIncludeGuestAssets:0];
    v33 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == nil", @"additionalAttributes.syndicationIdentifier"];
    [v32 setInternalPredicate:v33];

    v34 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v31 options:v32];
    if ([v34 count] <= 0x100)
    {
      [v34 fetchedObjects];
    }

    else
    {
      [PGCurationManager representativeAssetsForAssetCollection:v31 curationContext:v67 progressBlock:0];
    }
    v35 = ;
    representativeAssets = v24->_representativeAssets;
    v24->_representativeAssets = v35;

    v66 = [(NSArray *)v24->_representativeAssets count];
    if (v66)
    {
      v65 = v22;
      v38 = [v19 curatedKeyAssetForAssetCollection:v31 curatedAssetCollection:0 options:0 criteria:0 curationContext:v67];
      if (!v38)
      {
        v38 = [(NSArray *)v24->_representativeAssets firstObject];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v72 = v17;
          v73 = 2112;
          v74 = v38;
          _os_log_error_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_ERROR, "No key asset found for creating suggestions with enrichableEvent %@. Taking the first representative asset %@.", buf, 0x16u);
        }
      }

      v61 = v38;
      v62 = v34;
      v70 = v38;
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
      keyAssets = v24->_keyAssets;
      v24->_keyAssets = v39;

      v41 = [PGCollectionTitleGenerator alloc];
      v42 = [(PGEnrichableEventSuggestion *)v24 _whitelistedMeaningLabels];
      v43 = [(PGCollectionTitleGenerator *)v41 initWithCollection:v17 whitelistedMeaningLabels:v42 titleGenerationContext:v65];

      v60 = v43;
      v44 = [(PGCollectionTitleGenerator *)v43 titleTuple];
      v45 = v44;
      v63 = v29;
      v64 = v19;
      if (v44)
      {
        v46 = [v44 title];
        v47 = [v46 stringValue];
        title = v24->_title;
        v24->_title = v47;

        v49 = [v45 subtitle];
        v50 = [v49 stringValue];
        subtitle = v24->_subtitle;
        v24->_subtitle = v50;
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v72 = v17;
        _os_log_error_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_ERROR, "Failed to generate title/subtitle for %@.", buf, 0xCu);
      }

      v52 = [MEMORY[0x277CBEB98] set];
      features = v24->_features;
      v24->_features = v52;

      buf[0] = 0;
      v54 = [v17 eventEnrichmentMomentNodes];
      v55 = [v54 array];
      v56 = [PGAbstractSuggester suggestedPersonLocalIdentifiersFromSharingSuggestionResults:v68 forMomentNodes:v55 containsUnverifiedPersons:buf];

      suggestedPersonLocalIdentifiers = v24->_suggestedPersonLocalIdentifiers;
      v24->_suggestedPersonLocalIdentifiers = v56;

      v24->_containsUnverifiedPersons = buf[0];
      v19 = v64;
      v22 = v65;
      v34 = v62;
      v29 = v63;
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v72 = v17;
      _os_log_error_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_ERROR, "No representative assets for creating suggestions with enrichableEvent %@", buf, 0xCu);
    }

    v20 = v67;
    if (!v66)
    {
      v36 = 0;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v72 = v17;
    _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_DEFAULT, "No shareable assets found in %@", buf, 0xCu);
  }

  v36 = 0;
LABEL_22:

  v58 = *MEMORY[0x277D85DE8];
  return v36;
}

@end
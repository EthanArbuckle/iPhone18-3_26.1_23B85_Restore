@interface PGEnrichableEventSuggestion
- (NSString)description;
- (PGEnrichableEventSuggestion)initWithType:(unsigned __int16)type subtype:(unsigned __int16)subtype enrichableEvent:(id)event sharingSuggestionResults:(id)results photoLibrary:(id)library curationManager:(id)manager curationContext:(id)context loggingConnection:(id)self0 titleGenerationContext:(id)self1;
- (id)assetCollectionToShareForAssetCollection:(id)collection loggingConnection:(id)connection;
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
  keyAssets = [(PGEnrichableEventSuggestion *)self keyAssets];
  representativeAssets = [(PGEnrichableEventSuggestion *)self representativeAssets];
  v10 = [v3 stringByAppendingFormat:@": type=%@, subtype=%@, keyAssets=%@, representativeAssets=%lu, features=%@", v5, v7, keyAssets, objc_msgSend(representativeAssets, "count"), self->_features];

  return v10;
}

- (id)assetCollectionToShareForAssetCollection:(id)collection loggingConnection:(id)connection
{
  v37[2] = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  connectionCopy = connection;
  photoLibrary = [collectionCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v37[0] = v9;
  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v37[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v11];

  v12 = [MEMORY[0x277D3B248] predicateForExcludeMask:objc_msgSend(MEMORY[0x277D3B248] useIndex:{"maskForGuestAsset"), 1}];
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(additionalAttributes.importedBy != %d) && kindSubtype != %d && kindSubtype != %d", 7, 10, 103];
  v14 = MEMORY[0x277CCA920];
  v36[0] = v13;
  v36[1] = v12;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v16 = [v14 andPredicateWithSubpredicates:v15];
  [librarySpecificFetchOptions setInternalPredicate:v16];

  v17 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:collectionCopy options:librarySpecificFetchOptions];
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

    if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = collectionCopy;
      v25 = "Asset collection %@ only contains junk assets.";
LABEL_15:
      _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = collectionCopy;
    v25 = "Asset collection %@ only contains received assets from moment share(s).";
    goto LABEL_15;
  }

  v26 = 0;
LABEL_17:

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (PGEnrichableEventSuggestion)initWithType:(unsigned __int16)type subtype:(unsigned __int16)subtype enrichableEvent:(id)event sharingSuggestionResults:(id)results photoLibrary:(id)library curationManager:(id)manager curationContext:(id)context loggingConnection:(id)self0 titleGenerationContext:(id)self1
{
  v75 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  resultsCopy = results;
  libraryCopy = library;
  managerCopy = manager;
  contextCopy = context;
  connectionCopy = connection;
  generationContextCopy = generationContext;
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

  v67 = contextCopy;
  v23->_type = type;
  v23->_subtype = subtype;
  universalStartDate = [eventCopy universalStartDate];
  universalStartDate = v24->_universalStartDate;
  v24->_universalStartDate = universalStartDate;

  universalEndDate = [eventCopy universalEndDate];
  universalEndDate = v24->_universalEndDate;
  v24->_universalEndDate = universalEndDate;

  v29 = [eventCopy fetchAssetCollectionInPhotoLibrary:libraryCopy];
  v30 = [(PGEnrichableEventSuggestion *)v24 assetCollectionToShareForAssetCollection:v29 loggingConnection:connectionCopy];
  if (v30)
  {
    v31 = v30;
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    [librarySpecificFetchOptions setIncludeGuestAssets:0];
    v33 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == nil", @"additionalAttributes.syndicationIdentifier"];
    [librarySpecificFetchOptions setInternalPredicate:v33];

    v34 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v31 options:librarySpecificFetchOptions];
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
      v65 = generationContextCopy;
      firstObject = [managerCopy curatedKeyAssetForAssetCollection:v31 curatedAssetCollection:0 options:0 criteria:0 curationContext:v67];
      if (!firstObject)
      {
        firstObject = [(NSArray *)v24->_representativeAssets firstObject];
        if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v72 = eventCopy;
          v73 = 2112;
          v74 = firstObject;
          _os_log_error_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_ERROR, "No key asset found for creating suggestions with enrichableEvent %@. Taking the first representative asset %@.", buf, 0x16u);
        }
      }

      v61 = firstObject;
      v62 = v34;
      v70 = firstObject;
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
      keyAssets = v24->_keyAssets;
      v24->_keyAssets = v39;

      v41 = [PGCollectionTitleGenerator alloc];
      _whitelistedMeaningLabels = [(PGEnrichableEventSuggestion *)v24 _whitelistedMeaningLabels];
      v43 = [(PGCollectionTitleGenerator *)v41 initWithCollection:eventCopy whitelistedMeaningLabels:_whitelistedMeaningLabels titleGenerationContext:v65];

      v60 = v43;
      titleTuple = [(PGCollectionTitleGenerator *)v43 titleTuple];
      v45 = titleTuple;
      v63 = v29;
      v64 = managerCopy;
      if (titleTuple)
      {
        title = [titleTuple title];
        stringValue = [title stringValue];
        title = v24->_title;
        v24->_title = stringValue;

        subtitle = [v45 subtitle];
        stringValue2 = [subtitle stringValue];
        subtitle = v24->_subtitle;
        v24->_subtitle = stringValue2;
      }

      else if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v72 = eventCopy;
        _os_log_error_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_ERROR, "Failed to generate title/subtitle for %@.", buf, 0xCu);
      }

      v52 = [MEMORY[0x277CBEB98] set];
      features = v24->_features;
      v24->_features = v52;

      buf[0] = 0;
      eventEnrichmentMomentNodes = [eventCopy eventEnrichmentMomentNodes];
      array = [eventEnrichmentMomentNodes array];
      v56 = [PGAbstractSuggester suggestedPersonLocalIdentifiersFromSharingSuggestionResults:resultsCopy forMomentNodes:array containsUnverifiedPersons:buf];

      suggestedPersonLocalIdentifiers = v24->_suggestedPersonLocalIdentifiers;
      v24->_suggestedPersonLocalIdentifiers = v56;

      v24->_containsUnverifiedPersons = buf[0];
      managerCopy = v64;
      generationContextCopy = v65;
      v34 = v62;
      v29 = v63;
    }

    else if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v72 = eventCopy;
      _os_log_error_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_ERROR, "No representative assets for creating suggestions with enrichableEvent %@", buf, 0xCu);
    }

    contextCopy = v67;
    if (!v66)
    {
      v36 = 0;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v72 = eventCopy;
    _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_DEFAULT, "No shareable assets found in %@", buf, 0xCu);
  }

  v36 = 0;
LABEL_22:

  v58 = *MEMORY[0x277D85DE8];
  return v36;
}

@end
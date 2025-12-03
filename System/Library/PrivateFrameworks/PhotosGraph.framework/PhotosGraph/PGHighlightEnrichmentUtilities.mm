@interface PGHighlightEnrichmentUtilities
+ (BOOL)canUseLocationInformationWithHighlightInfo:(id)info graph:(id)graph;
+ (BOOL)canUseSharingComposition:(unsigned __int16)composition forSharingFilter:(unsigned __int16)filter;
+ (double)meaningScoreWithMeanings:(id)meanings forLongTrip:(BOOL)trip graph:(id)graph collection:(id)collection keyAsset:(id)asset keyAssetCriteriaScore:(double *)score curationManager:(id)manager;
+ (id)assetPropertySetsForEnrichment;
+ (id)childHighlightNodeOfGroupHighlightNode:(id)node withLocalIdentifier:(id)identifier;
+ (id)filteredHighlightNodesWithHighlightNodes:(id)nodes forSharingFilter:(unsigned __int16)filter;
+ (id)filteredSummarizedFeaturesForHighlightWithInfo:(id)info sharingFilter:(unsigned __int16)filter;
+ (id)headKeyAssetWithExtendedCuration:(id)curation;
+ (id)internalPredicateForFetchingAssetsForSharingFilter:(unsigned __int16)filter;
+ (id)keyAssetForMixedSharingCompositionKeyAssetRelationship:(unsigned __int16)relationship keyAssetPrivate:(id)private keyAssetShared:(id)shared;
+ (id)requiredAssetsInAssets:(id)assets withHighlightInfo:(id)info;
+ (id)selectKeyAssetForSharingComposition:(unsigned __int16)composition mixedSharingCompositionKeyAssetRelationship:(unsigned __int16)relationship givenHighlightFilter:(unsigned __int16)filter privateHandler:(id)handler sharedHandler:(id)sharedHandler;
+ (unsigned)mixedSharingCompositionKeyAssetRelationshipForKeyAssetPrivate:(id)private keyAssetShared:(id)shared shouldCompareHighlight:(BOOL)highlight;
@end

@implementation PGHighlightEnrichmentUtilities

+ (id)filteredSummarizedFeaturesForHighlightWithInfo:(id)info sharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  infoCopy = info;
  v7 = infoCopy;
  if (filterCopy == 2)
  {
    mixedSummarizedFeatures = [infoCopy mixedSummarizedFeatures];
  }

  else if (filterCopy == 1)
  {
    mixedSummarizedFeatures = [infoCopy sharedSummarizedFeatures];
  }

  else
  {
    if (filterCopy)
    {
      goto LABEL_8;
    }

    mixedSummarizedFeatures = [infoCopy privateSummarizedFeatures];
  }

  v4 = mixedSummarizedFeatures;
LABEL_8:

  return v4;
}

+ (id)selectKeyAssetForSharingComposition:(unsigned __int16)composition mixedSharingCompositionKeyAssetRelationship:(unsigned __int16)relationship givenHighlightFilter:(unsigned __int16)filter privateHandler:(id)handler sharedHandler:(id)sharedHandler
{
  filterCopy = filter;
  relationshipCopy = relationship;
  compositionCopy = composition;
  handlerCopy = handler;
  sharedHandlerCopy = sharedHandler;
  v13 = sharedHandlerCopy;
  if (compositionCopy == 2)
  {
    sharedHandlerCopy = handlerCopy;
    if (filterCopy)
    {
      if (filterCopy == 2)
      {
        sharedHandlerCopy = handlerCopy;
        if (relationshipCopy >= 2)
        {
          if (relationshipCopy != 2)
          {
            goto LABEL_11;
          }

          sharedHandlerCopy = v13;
        }
      }

      else
      {
        sharedHandlerCopy = v13;
        if (filterCopy != 1)
        {
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    if (compositionCopy != 1)
    {
      if (!compositionCopy)
      {
        sharedHandlerCopy = handlerCopy;
        if ((filterCopy & 0xFFFFFFFD) == 0)
        {
          goto LABEL_15;
        }
      }

LABEL_11:
      v14 = 0;
      goto LABEL_16;
    }

    if ((filterCopy - 1) >= 2)
    {
      goto LABEL_11;
    }
  }

LABEL_15:
  v14 = (*(sharedHandlerCopy + 2))();
LABEL_16:

  return v14;
}

+ (BOOL)canUseLocationInformationWithHighlightInfo:(id)info graph:(id)graph
{
  v19 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  infoNode = [graph infoNode];
  canUseLocationDomain = [infoNode canUseLocationDomain];

  if (canUseLocationDomain)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    momentNodes = [infoCopy momentNodes];
    v8 = [momentNodes countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(momentNodes);
          }

          if ([*(*(&v14 + 1) + 8 * i) hasLocation])
          {
            LOBYTE(v8) = 1;
            goto LABEL_13;
          }
        }

        v8 = [momentNodes countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (BOOL)canUseSharingComposition:(unsigned __int16)composition forSharingFilter:(unsigned __int16)filter
{
  v4 = (composition - 1) < 2;
  v5 = (composition & 0xFFFD) == 0;
  if (filter)
  {
    v5 = 0;
  }

  if (filter != 1)
  {
    v4 = v5;
  }

  return filter == 2 || v4;
}

+ (id)keyAssetForMixedSharingCompositionKeyAssetRelationship:(unsigned __int16)relationship keyAssetPrivate:(id)private keyAssetShared:(id)shared
{
  relationshipCopy = relationship;
  privateCopy = private;
  sharedCopy = shared;
  v9 = sharedCopy;
  if (relationshipCopy == 2)
  {
    v10 = sharedCopy;
    goto LABEL_7;
  }

  v10 = privateCopy;
  if (relationshipCopy == 1)
  {
LABEL_7:
    v12 = v10;
    goto LABEL_9;
  }

  if (!relationshipCopy)
  {
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v10 = privateCopy;
    if (v11)
    {
      *v14 = 0;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Mixed composition has unspecified key asset relationship: using private key asset.", v14, 2u);
      v10 = privateCopy;
    }

    goto LABEL_7;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

+ (unsigned)mixedSharingCompositionKeyAssetRelationshipForKeyAssetPrivate:(id)private keyAssetShared:(id)shared shouldCompareHighlight:(BOOL)highlight
{
  highlightCopy = highlight;
  v45 = *MEMORY[0x277D85DE8];
  privateCopy = private;
  sharedCopy = shared;
  [privateCopy curationScore];
  v10 = v9;
  [sharedCopy curationScore];
  v12 = v11;
  if (highlightCopy && v10 >= *MEMORY[0x277D3C768] && v11 >= *MEMORY[0x277D3C768])
  {
    photoLibrary = [privateCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setFetchLimit:1];
    v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"kind", 0];
    [librarySpecificFetchOptions setPredicate:v16];

    v17 = [MEMORY[0x277CD9958] fetchAssetCollectionsContainingAsset:privateCopy withType:6 options:librarySpecificFetchOptions];
    firstObject = [v17 firstObject];

    v19 = [MEMORY[0x277CD9958] fetchAssetCollectionsContainingAsset:sharedCopy withType:6 options:librarySpecificFetchOptions];
    firstObject2 = [v19 firstObject];

    if (firstObject && firstObject2)
    {
      [firstObject promotionScore];
      v22 = v21;
      [firstObject2 promotionScore];
      if (v22 > v23)
      {
        v24 = 1;
LABEL_24:

        goto LABEL_25;
      }

      if (v23 > v22)
      {
        v24 = 2;
        goto LABEL_24;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      uuid = [privateCopy uuid];
      uuid2 = [firstObject uuid];
      uuid3 = [sharedCopy uuid];
      uuid4 = [firstObject2 uuid];
      *buf = 138413058;
      v38 = uuid;
      v39 = 2112;
      v40 = uuid2;
      v41 = 2112;
      v42 = uuid3;
      v43 = 2112;
      v44 = uuid4;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot find corresponding highlight for key asset private %@: %@, key asset shared %@: %@", buf, 0x2Au);
    }
  }

  if (v10 > v12)
  {
    goto LABEL_15;
  }

  if (v12 > v10)
  {
    goto LABEL_17;
  }

  [privateCopy overallAestheticScore];
  v30 = v29;
  [sharedCopy overallAestheticScore];
  if (v30 > v31)
  {
LABEL_15:
    v24 = 1;
    goto LABEL_25;
  }

  if (v31 > v30)
  {
LABEL_17:
    v24 = 2;
    goto LABEL_25;
  }

  uuid5 = [privateCopy uuid];
  uuid6 = [sharedCopy uuid];
  v34 = [uuid5 compare:uuid6];

  if (v34 == -1)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

LABEL_25:

  v35 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (id)filteredHighlightNodesWithHighlightNodes:(id)nodes forSharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  nodesCopy = nodes;
  v6 = nodesCopy;
  if (filterCopy)
  {
    if (filterCopy == 1)
    {
      subsetWithSharedAssets = [nodesCopy subsetWithSharedAssets];
    }

    else
    {
      subsetWithSharedAssets = nodesCopy;
    }
  }

  else
  {
    subsetWithSharedAssets = [nodesCopy subsetWithPrivateAssets];
  }

  v8 = subsetWithSharedAssets;

  return v8;
}

+ (id)internalPredicateForFetchingAssetsForSharingFilter:(unsigned __int16)filter
{
  if (filter == 2)
  {
    v3 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  }

  else if (filter == 1)
  {
    v3 = [MEMORY[0x277D3ACE0] predicateToIncludeSharedLibraryAssetsAllowingIndexingOnParticipationState:?];
  }

  else if (filter)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277D3ACE0] predicateToIncludePrivateLibraryAssetsAllowingIndexingOnParticipationState:1];
  }

  return v3;
}

+ (id)requiredAssetsInAssets:(id)assets withHighlightInfo:(id)info
{
  v24 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  infoCopy = info;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  keyAssetPrivateUUID = [infoCopy keyAssetPrivateUUID];
  keyAssetSharedUUID = [infoCopy keyAssetSharedUUID];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = assetsCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        uuid = [v15 uuid];
        if (([v15 isFavorite] & 1) != 0 || (objc_msgSend(uuid, "isEqualToString:", keyAssetPrivateUUID) & 1) != 0 || objc_msgSend(uuid, "isEqualToString:", keyAssetSharedUUID))
        {
          [v7 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)headKeyAssetWithExtendedCuration:(id)curation
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  curationCopy = curation;
  v4 = [curationCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v22;
    *&v8 = -1.79769313e308;
    v9 = 4;
    v10 = -1.79769313e308;
LABEL_3:
    v11 = 0;
    v12 = *&v8;
    while (1)
    {
      if (*v22 != v7)
      {
        objc_enumerationMutation(curationCopy);
      }

      if ((v13 = *(*(&v21 + 1) + 8 * v11), [v13 clsContentScore], v15 = v14, objc_msgSend(v13, "clsAestheticScore"), *&v8 = v16, v6) && v15 <= v10 && (v15 == v10 ? (v17 = v16 <= v12) : (v17 = 1), v17))
      {
        *&v8 = v12;
      }

      else
      {
        v18 = v13;

        v10 = v15;
        v6 = v18;
      }

      if (!--v9)
      {
        break;
      }

      ++v11;
      v12 = *&v8;
      if (v5 == v11)
      {
        v5 = [curationCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (double)meaningScoreWithMeanings:(id)meanings forLongTrip:(BOOL)trip graph:(id)graph collection:(id)collection keyAsset:(id)asset keyAssetCriteriaScore:(double *)score curationManager:(id)manager
{
  scoreCopy = score;
  tripCopy = trip;
  v40 = *MEMORY[0x277D85DE8];
  meaningsCopy = meanings;
  graphCopy = graph;
  collectionCopy = collection;
  assetCopy = asset;
  managerCopy = manager;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = [meaningsCopy countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v16)
  {
    v20 = 0.0;
    v21 = 0.0;
    goto LABEL_33;
  }

  v17 = v16;
  v18 = *v36;
  if (tripCopy)
  {
    v19 = 0.2;
  }

  else
  {
    v19 = 0.4;
  }

  v20 = 0.0;
  v21 = 0.0;
  do
  {
    v22 = 0;
    do
    {
      if (*v36 != v18)
      {
        objc_enumerationMutation(meaningsCopy);
      }

      v23 = *(*(&v35 + 1) + 8 * v22);
      scoreCopy = [PGGraph meaningForMeaningLabel:v23, scoreCopy];
      v25 = 0.0;
      if (scoreCopy <= 4)
      {
        if ((scoreCopy - 2) < 2)
        {
          goto LABEL_19;
        }

        if (scoreCopy == 1)
        {
          v25 = 0.5;
        }

        else if (scoreCopy == 4)
        {
          v25 = 0.3;
        }
      }

      else if (scoreCopy <= 0x10)
      {
        v25 = v19;
        if (((1 << scoreCopy) & 0x7C00) == 0)
        {
          if (((1 << scoreCopy) & 0x2E0) != 0 || (v25 = 0.0, scoreCopy == 16))
          {
LABEL_19:
            v25 = 0.1;
          }
        }
      }

      if (v25 >= v21)
      {
        curationCriteriaFactory = [managerCopy curationCriteriaFactory];
        v27 = [curationCriteriaFactory curationCriteriaWithCollection:collectionCopy meaningLabel:v23 inGraph:graphCopy client:0];

        v34 = 0.0;
        if ([v27 passesForItem:assetCopy score:&v34] && (v25 > v21 || v25 == v21 && v34 >= v20))
        {
          v20 = v34;
          v21 = v25;
        }
      }

      ++v22;
    }

    while (v17 != v22);
    v28 = [meaningsCopy countByEnumeratingWithState:&v35 objects:v39 count:16];
    v17 = v28;
  }

  while (v28);
LABEL_33:
  if (scoreCopy)
  {
    *scoreCopy = v20;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (id)childHighlightNodeOfGroupHighlightNode:(id)node withLocalIdentifier:(id)identifier
{
  nodeCopy = node;
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__63046;
  v17 = __Block_byref_object_dispose__63047;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__PGHighlightEnrichmentUtilities_childHighlightNodeOfGroupHighlightNode_withLocalIdentifier___block_invoke;
  v10[3] = &unk_278888438;
  v7 = identifierCopy;
  v11 = v7;
  v12 = &v13;
  [nodeCopy enumerateHighlightNodesUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __93__PGHighlightEnrichmentUtilities_childHighlightNodeOfGroupHighlightNode_withLocalIdentifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 localIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

+ (id)assetPropertySetsForEnrichment
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CD9AB8];
  v6[0] = *MEMORY[0x277CD9A78];
  v6[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end
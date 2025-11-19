@interface PGHighlightEnrichmentUtilities
+ (BOOL)canUseLocationInformationWithHighlightInfo:(id)a3 graph:(id)a4;
+ (BOOL)canUseSharingComposition:(unsigned __int16)a3 forSharingFilter:(unsigned __int16)a4;
+ (double)meaningScoreWithMeanings:(id)a3 forLongTrip:(BOOL)a4 graph:(id)a5 collection:(id)a6 keyAsset:(id)a7 keyAssetCriteriaScore:(double *)a8 curationManager:(id)a9;
+ (id)assetPropertySetsForEnrichment;
+ (id)childHighlightNodeOfGroupHighlightNode:(id)a3 withLocalIdentifier:(id)a4;
+ (id)filteredHighlightNodesWithHighlightNodes:(id)a3 forSharingFilter:(unsigned __int16)a4;
+ (id)filteredSummarizedFeaturesForHighlightWithInfo:(id)a3 sharingFilter:(unsigned __int16)a4;
+ (id)headKeyAssetWithExtendedCuration:(id)a3;
+ (id)internalPredicateForFetchingAssetsForSharingFilter:(unsigned __int16)a3;
+ (id)keyAssetForMixedSharingCompositionKeyAssetRelationship:(unsigned __int16)a3 keyAssetPrivate:(id)a4 keyAssetShared:(id)a5;
+ (id)requiredAssetsInAssets:(id)a3 withHighlightInfo:(id)a4;
+ (id)selectKeyAssetForSharingComposition:(unsigned __int16)a3 mixedSharingCompositionKeyAssetRelationship:(unsigned __int16)a4 givenHighlightFilter:(unsigned __int16)a5 privateHandler:(id)a6 sharedHandler:(id)a7;
+ (unsigned)mixedSharingCompositionKeyAssetRelationshipForKeyAssetPrivate:(id)a3 keyAssetShared:(id)a4 shouldCompareHighlight:(BOOL)a5;
@end

@implementation PGHighlightEnrichmentUtilities

+ (id)filteredSummarizedFeaturesForHighlightWithInfo:(id)a3 sharingFilter:(unsigned __int16)a4
{
  v5 = a4;
  v6 = a3;
  v7 = v6;
  if (v5 == 2)
  {
    v8 = [v6 mixedSummarizedFeatures];
  }

  else if (v5 == 1)
  {
    v8 = [v6 sharedSummarizedFeatures];
  }

  else
  {
    if (v5)
    {
      goto LABEL_8;
    }

    v8 = [v6 privateSummarizedFeatures];
  }

  v4 = v8;
LABEL_8:

  return v4;
}

+ (id)selectKeyAssetForSharingComposition:(unsigned __int16)a3 mixedSharingCompositionKeyAssetRelationship:(unsigned __int16)a4 givenHighlightFilter:(unsigned __int16)a5 privateHandler:(id)a6 sharedHandler:(id)a7
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a6;
  v12 = a7;
  v13 = v12;
  if (v10 == 2)
  {
    v12 = v11;
    if (v8)
    {
      if (v8 == 2)
      {
        v12 = v11;
        if (v9 >= 2)
        {
          if (v9 != 2)
          {
            goto LABEL_11;
          }

          v12 = v13;
        }
      }

      else
      {
        v12 = v13;
        if (v8 != 1)
        {
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    if (v10 != 1)
    {
      if (!v10)
      {
        v12 = v11;
        if ((v8 & 0xFFFFFFFD) == 0)
        {
          goto LABEL_15;
        }
      }

LABEL_11:
      v14 = 0;
      goto LABEL_16;
    }

    if ((v8 - 1) >= 2)
    {
      goto LABEL_11;
    }
  }

LABEL_15:
  v14 = (*(v12 + 2))();
LABEL_16:

  return v14;
}

+ (BOOL)canUseLocationInformationWithHighlightInfo:(id)a3 graph:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 infoNode];
  v7 = [v6 canUseLocationDomain];

  if (v7)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [v5 momentNodes];
    v8 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v14 + 1) + 8 * i) hasLocation])
          {
            LOBYTE(v8) = 1;
            goto LABEL_13;
          }
        }

        v8 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

+ (BOOL)canUseSharingComposition:(unsigned __int16)a3 forSharingFilter:(unsigned __int16)a4
{
  v4 = (a3 - 1) < 2;
  v5 = (a3 & 0xFFFD) == 0;
  if (a4)
  {
    v5 = 0;
  }

  if (a4 != 1)
  {
    v4 = v5;
  }

  return a4 == 2 || v4;
}

+ (id)keyAssetForMixedSharingCompositionKeyAssetRelationship:(unsigned __int16)a3 keyAssetPrivate:(id)a4 keyAssetShared:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v6 == 2)
  {
    v10 = v8;
    goto LABEL_7;
  }

  v10 = v7;
  if (v6 == 1)
  {
LABEL_7:
    v12 = v10;
    goto LABEL_9;
  }

  if (!v6)
  {
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v10 = v7;
    if (v11)
    {
      *v14 = 0;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Mixed composition has unspecified key asset relationship: using private key asset.", v14, 2u);
      v10 = v7;
    }

    goto LABEL_7;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

+ (unsigned)mixedSharingCompositionKeyAssetRelationshipForKeyAssetPrivate:(id)a3 keyAssetShared:(id)a4 shouldCompareHighlight:(BOOL)a5
{
  v5 = a5;
  v45 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  [v7 curationScore];
  v10 = v9;
  [v8 curationScore];
  v12 = v11;
  if (v5 && v10 >= *MEMORY[0x277D3C768] && v11 >= *MEMORY[0x277D3C768])
  {
    v14 = [v7 photoLibrary];
    v15 = [v14 librarySpecificFetchOptions];

    [v15 setFetchLimit:1];
    v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"kind", 0];
    [v15 setPredicate:v16];

    v17 = [MEMORY[0x277CD9958] fetchAssetCollectionsContainingAsset:v7 withType:6 options:v15];
    v18 = [v17 firstObject];

    v19 = [MEMORY[0x277CD9958] fetchAssetCollectionsContainingAsset:v8 withType:6 options:v15];
    v20 = [v19 firstObject];

    if (v18 && v20)
    {
      [v18 promotionScore];
      v22 = v21;
      [v20 promotionScore];
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
      v25 = [v7 uuid];
      v26 = [v18 uuid];
      v27 = [v8 uuid];
      v28 = [v20 uuid];
      *buf = 138413058;
      v38 = v25;
      v39 = 2112;
      v40 = v26;
      v41 = 2112;
      v42 = v27;
      v43 = 2112;
      v44 = v28;
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

  [v7 overallAestheticScore];
  v30 = v29;
  [v8 overallAestheticScore];
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

  v32 = [v7 uuid];
  v33 = [v8 uuid];
  v34 = [v32 compare:v33];

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

+ (id)filteredHighlightNodesWithHighlightNodes:(id)a3 forSharingFilter:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    if (v4 == 1)
    {
      v7 = [v5 subsetWithSharedAssets];
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = [v5 subsetWithPrivateAssets];
  }

  v8 = v7;

  return v8;
}

+ (id)internalPredicateForFetchingAssetsForSharingFilter:(unsigned __int16)a3
{
  if (a3 == 2)
  {
    v3 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  }

  else if (a3 == 1)
  {
    v3 = [MEMORY[0x277D3ACE0] predicateToIncludeSharedLibraryAssetsAllowingIndexingOnParticipationState:?];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277D3ACE0] predicateToIncludePrivateLibraryAssetsAllowingIndexingOnParticipationState:1];
  }

  return v3;
}

+ (id)requiredAssetsInAssets:(id)a3 withHighlightInfo:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [v6 keyAssetPrivateUUID];
  v9 = [v6 keyAssetSharedUUID];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v5;
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
        v16 = [v15 uuid];
        if (([v15 isFavorite] & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", v8) & 1) != 0 || objc_msgSend(v16, "isEqualToString:", v9))
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

+ (id)headKeyAssetWithExtendedCuration:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        objc_enumerationMutation(v3);
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
        v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

+ (double)meaningScoreWithMeanings:(id)a3 forLongTrip:(BOOL)a4 graph:(id)a5 collection:(id)a6 keyAsset:(id)a7 keyAssetCriteriaScore:(double *)a8 curationManager:(id)a9
{
  v31 = a8;
  v12 = a4;
  v40 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v33 = a5;
  v32 = a6;
  v14 = a7;
  v15 = a9;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v16)
  {
    v20 = 0.0;
    v21 = 0.0;
    goto LABEL_33;
  }

  v17 = v16;
  v18 = *v36;
  if (v12)
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
        objc_enumerationMutation(v13);
      }

      v23 = *(*(&v35 + 1) + 8 * v22);
      v24 = [PGGraph meaningForMeaningLabel:v23, v31];
      v25 = 0.0;
      if (v24 <= 4)
      {
        if ((v24 - 2) < 2)
        {
          goto LABEL_19;
        }

        if (v24 == 1)
        {
          v25 = 0.5;
        }

        else if (v24 == 4)
        {
          v25 = 0.3;
        }
      }

      else if (v24 <= 0x10)
      {
        v25 = v19;
        if (((1 << v24) & 0x7C00) == 0)
        {
          if (((1 << v24) & 0x2E0) != 0 || (v25 = 0.0, v24 == 16))
          {
LABEL_19:
            v25 = 0.1;
          }
        }
      }

      if (v25 >= v21)
      {
        v26 = [v15 curationCriteriaFactory];
        v27 = [v26 curationCriteriaWithCollection:v32 meaningLabel:v23 inGraph:v33 client:0];

        v34 = 0.0;
        if ([v27 passesForItem:v14 score:&v34] && (v25 > v21 || v25 == v21 && v34 >= v20))
        {
          v20 = v34;
          v21 = v25;
        }
      }

      ++v22;
    }

    while (v17 != v22);
    v28 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
    v17 = v28;
  }

  while (v28);
LABEL_33:
  if (v31)
  {
    *v31 = v20;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (id)childHighlightNodeOfGroupHighlightNode:(id)a3 withLocalIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
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
  v7 = v6;
  v11 = v7;
  v12 = &v13;
  [v5 enumerateHighlightNodesUsingBlock:v10];
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
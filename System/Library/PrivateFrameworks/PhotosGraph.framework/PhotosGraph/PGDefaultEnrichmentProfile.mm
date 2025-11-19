@interface PGDefaultEnrichmentProfile
+ (double)evaluatedDurationsWithAssets:(id)a3 options:(id)a4;
+ (double)targetCurationDurationWithPrivateAssets:(id)a3 sharedAssets:(id)a4 sharingFilter:(unsigned __int16)a5 options:(id)a6;
- (BOOL)canEnrichHighlight:(id)a3 withOptions:(unint64_t)a4;
- (PGCurationOptions)curationOptions;
- (PGDefaultEnrichmentProfile)initWithCurationManager:(id)a3 loggingConnection:(id)a4;
- (PGKeyAssetCurationOptions)keyAssetCurationOptions;
- (double)promotionScoreWithHighlightInfo:(id)a3;
- (id)debugInfoDictionaryByAddingItemInfosToDebugInfo:(id)a3;
- (id)faceInfosWithAsset:(id)a3;
- (id)highlightInfoWithHighlight:(id)a3 graph:(id)a4 highlightTailorContext:(id)a5;
- (id)keyAssetCurationCriteriaWithHighlightInfo:(id)a3 graph:(id)a4;
- (id)momentProcessedLocationByMomentUUIDWithHighlightInfo:(id)a3 graph:(id)a4;
- (id)momentTitleByMomentUUIDWithHighlightInfo:(id)a3;
@end

@implementation PGDefaultEnrichmentProfile

- (id)faceInfosWithAsset:(id)a3
{
  v39[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(PGCurationManager *)self->_curationManager photoLibrary];
  v7 = [v6 librarySpecificFetchOptions];

  v39[0] = *MEMORY[0x277CD9BC0];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  [v7 setFetchPropertySets:v8];

  v27 = v5;
  v9 = [MEMORY[0x277CD9868] fetchFacesInAsset:v5 options:v7];
  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v9;
  v31 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v31)
  {
    v29 = *v33;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v11 faceClusteringProperties];
        v13 = [v12 faceprint];

        v36[0] = @"personLocalIdentifier";
        v14 = [v11 personLocalIdentifier];
        v15 = v14;
        v16 = @"unknown";
        if (v14)
        {
          v16 = v14;
        }

        v37[0] = v16;
        v36[1] = @"size";
        v17 = MEMORY[0x277CCABB0];
        [v11 size];
        v18 = [v17 numberWithDouble:?];
        v37[1] = v18;
        v36[2] = @"quality";
        v19 = MEMORY[0x277CCABB0];
        [v11 quality];
        v20 = [v19 numberWithDouble:?];
        v37[2] = v20;
        v36[3] = @"faceprint";
        v21 = [v13 faceprintData];
        v22 = v21;
        if (!v21)
        {
          v3 = [MEMORY[0x277CBEA90] data];
          v22 = v3;
        }

        v37[3] = v22;
        v36[4] = @"faceprintVersion";
        v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "faceprintVersion")}];
        v37[4] = v23;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:5];

        if (!v21)
        {
        }

        [v30 addObject:v24];
      }

      v31 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v31);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)debugInfoDictionaryByAddingItemInfosToDebugInfo:(id)a3
{
  v4 = MEMORY[0x277D3C7A0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__PGDefaultEnrichmentProfile_debugInfoDictionaryByAddingItemInfosToDebugInfo___block_invoke;
  v10[3] = &unk_278883A40;
  v11 = v6;
  v12 = self;
  v7 = v6;
  v8 = [v5 dictionaryRepresentationWithAppendExtraItemInfoBlock:v10];

  return v8;
}

void __78__PGDefaultEnrichmentProfile_debugInfoDictionaryByAddingItemInfosToDebugInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v61[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CCABB0];
  [v5 curationScore];
  v8 = [v7 numberWithDouble:?];
  [v6 setObject:v8 forKeyedSubscript:@"persistedCurationScore"];

  v9 = [v5 creationDate];
  [v6 setObject:v9 forKeyedSubscript:@"creationDate"];

  v10 = [v5 localCreationDate];
  [v6 setObject:v10 forKeyedSubscript:@"localCreationDate"];

  v11 = [v5 location];
  v12 = v11;
  if (v11)
  {
    [v11 coordinate];
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v14 = *MEMORY[0x277CE4278];
    v16 = *(MEMORY[0x277CE4278] + 8);
  }

  v62.latitude = v14;
  v62.longitude = v16;
  if (CLLocationCoordinate2DIsValid(v62))
  {
    v60[0] = @"latitude";
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
    v60[1] = @"longitude";
    v61[0] = v17;
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    v61[1] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
    [v6 setObject:v19 forKeyedSubscript:@"location"];
  }

  else
  {
    [v6 setObject:&unk_284487348 forKeyedSubscript:@"location"];
  }

  v20 = [v5 clsSceneprint];
  if (v20)
  {
    v59 = 0;
    v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v59];
    [v6 setObject:v21 forKeyedSubscript:@"sceneprint"];
  }

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInterestingVideo")}];
  [v6 setObject:v22 forKeyedSubscript:@"isInterestingVideo"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInterestingLivePhoto")}];
  [v6 setObject:v23 forKeyedSubscript:@"isInterestingLivePhoto"];

  v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInterestingPanorama")}];
  [v6 setObject:v24 forKeyedSubscript:@"isInterestingPanorama"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInterestingSDOF")}];
  [v6 setObject:v25 forKeyedSubscript:@"isInterestingSDOF"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInterestingHDR")}];
  [v6 setObject:v26 forKeyedSubscript:@"isInterestingHDR"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsHasInterestingAudioClassification")}];
  [v6 setObject:v27 forKeyedSubscript:@"hasInterestingAudioClassification"];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsHasCustomPlaybackVariation")}];
  [v6 setObject:v28 forKeyedSubscript:@"hasCustomPlaybackVariation"];

  v29 = MEMORY[0x277CCABB0];
  [v5 clsSharpnessScore];
  v30 = [v29 numberWithDouble:?];
  [v6 setObject:v30 forKeyedSubscript:@"sharpnessScore"];

  v31 = MEMORY[0x277CCABB0];
  [v5 clsExposureScore];
  v32 = [v31 numberWithDouble:?];
  [v6 setObject:v32 forKeyedSubscript:@"exposureScore"];

  v33 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsBlurry")}];
  [v6 setObject:v33 forKeyedSubscript:@"isBlurry"];

  v34 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInhabited")}];
  [v6 setObject:v34 forKeyedSubscript:@"isInhabited"];

  v35 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsHasInterestingScenes")}];
  [v6 setObject:v35 forKeyedSubscript:@"hasInterestingScenes"];

  v36 = [v5 clsPersonLocalIdentifiers];
  [v6 setObject:v36 forKeyedSubscript:@"peopleNames"];

  v37 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "isVideo")}];
  [v6 setObject:v37 forKeyedSubscript:@"isVideo"];

  v38 = [PGCurationManager sceneInfoWithAsset:v5 curationSession:*(a1 + 32)];
  [v6 setObject:v38 forKeyedSubscript:@"scenes"];

  v39 = MEMORY[0x277CCABB0];
  [v5 clsHighlightVisibilityScore];
  v40 = [v39 numberWithDouble:?];
  [v6 setObject:v40 forKeyedSubscript:@"highlightVisibilityScore"];

  v41 = MEMORY[0x277CCABB0];
  [v5 clsAutoplaySuggestionScore];
  v42 = [v41 numberWithDouble:?];
  [v6 setObject:v42 forKeyedSubscript:@"autoplaySuggestionScore"];

  v43 = MEMORY[0x277CCABB0];
  [v5 clsFaceScore];
  v44 = [v43 numberWithDouble:?];
  [v6 setObject:v44 forKeyedSubscript:@"faceScore"];

  v45 = [*(a1 + 40) faceInfosWithAsset:v5];
  [v6 setObject:v45 forKeyedSubscript:@"faceInfos"];

  v46 = MEMORY[0x277CCABB0];
  [v5 clsDuration];
  v47 = [v46 numberWithDouble:?];
  [v6 setObject:v47 forKeyedSubscript:@"duration"];

  v48 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsNonMemorable")}];
  [v6 setObject:v48 forKeyedSubscript:@"isNonMemorable"];

  v49 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsLoopOrBounce")}];
  [v6 setObject:v49 forKeyedSubscript:@"isLoopOrBounce"];

  v50 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsLongExposure")}];
  [v6 setObject:v50 forKeyedSubscript:@"isLongExposure"];

  v51 = MEMORY[0x277CCABB0];
  [v5 pl_gpsHorizontalAccuracy];
  v52 = [v51 numberWithDouble:?];
  [v6 setObject:v52 forKeyedSubscript:@"gpsHorizontalAccuracy"];

  v53 = MEMORY[0x277CCABB0];
  [v5 clsSquareCropScore];
  v54 = [v53 numberWithDouble:?];
  [v6 setObject:v54 forKeyedSubscript:@"squareCropScore"];

  v55 = [v5 clsFaceInformationSummary];
  v56 = [v55 dictionaryRepresentation];
  [v6 setObject:v56 forKeyedSubscript:@"faceInformationSummary"];

  v57 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInSharedLibrary")}];
  [v6 setObject:v57 forKeyedSubscript:@"isInSharedLibrary"];

  v58 = *MEMORY[0x277D85DE8];
}

void __91__PGDefaultEnrichmentProfile_summaryCurationWithHighlightInfo_sharingFilter_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __91__PGDefaultEnrichmentProfile_summaryCurationWithHighlightInfo_sharingFilter_progressBlock___block_invoke_335(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __92__PGDefaultEnrichmentProfile_extendedCurationWithHighlightInfo_sharingFilter_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __90__PGDefaultEnrichmentProfile_keyAssetWithHighlightInfo_sharingFilter_graph_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __90__PGDefaultEnrichmentProfile_keyAssetWithHighlightInfo_sharingFilter_graph_progressBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v12 = 0;
    v13 = 0.0;
    v8 = [v7 passesForItem:v5 score:&v13 graph:*(a1 + 40) reasonString:&v12];
    v9 = v12;
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    [v6 setObject:v10 forKeyedSubscript:@"passesCriteria"];

    if (v8)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
      [v6 setObject:v11 forKeyedSubscript:@"criteriaScore"];
    }

    [v6 setObject:v9 forKeyedSubscript:@"criteriaReason"];
  }
}

- (double)promotionScoreWithHighlightInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 highlightNode];
  v6 = [(PGDefaultEnrichmentProfile *)self targetEnrichmentState];
  v7 = [v4 numberOfExtendedAssets];
  v8 = [v4 highlightTailorContext];

  v9 = [v8 neighborScoreComputer];
  [PGGraphHighlightNode promotionScoreWithHighlightNode:v5 enrichmentState:v6 numberOfExtendedAssets:v7 neighborScoreComputer:v9];
  v11 = v10;

  return v11;
}

- (id)momentProcessedLocationByMomentUUIDWithHighlightInfo:(id)a3 graph:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [PGGraphMomentNodeCollection alloc];
  v8 = [v5 momentNodes];
  v9 = [(MAElementCollection *)v7 initWithSet:v8 graph:v6];

  v10 = MEMORY[0x277D22BF8];
  v11 = +[PGGraphMomentNode poiOfMoment];
  v12 = [v10 adjacencyWithSources:v9 relation:v11 targetsClass:objc_opt_class()];

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __89__PGDefaultEnrichmentProfile_momentProcessedLocationByMomentUUIDWithHighlightInfo_graph___block_invoke;
  v32[3] = &unk_27887F230;
  v14 = v13;
  v33 = v14;
  [v12 enumerateTargetsBySourceWithBlock:v32];
  if ([v14 count])
  {
    v26 = v9;
    v27 = v6;
    v15 = [v5 momentFetchResult];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v28 + 1) + 8 * i);
          v21 = [v20 uuid];
          v22 = [v14 objectForKeyedSubscript:v21];

          if (v22 && [v20 processedLocation] != 6)
          {
            [v14 removeObjectForKey:v21];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v17);
    }

    if ([v14 count])
    {
      v23 = v14;
    }

    else
    {
      v23 = 0;
    }

    v9 = v26;
    v6 = v27;
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

void __89__PGDefaultEnrichmentProfile_momentProcessedLocationByMomentUUIDWithHighlightInfo_graph___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = [a3 labels];
  v6 = [v5 containsObject:@"Travel"];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v10 uuids];
    v9 = [v8 anyObject];
    [v7 setObject:&unk_284482160 forKeyedSubscript:v9];
  }
}

- (id)momentTitleByMomentUUIDWithHighlightInfo:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 momentNodes];
  v25 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v21 = v3;
  v5 = [v3 highlightTailorContext];
  v6 = [v5 titleGenerationContext];

  v24 = v6;
  v7 = [v6 locationHelper];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v4;
  v26 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v26)
  {
    v23 = *v35;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v34 + 1) + 8 * i);
        v9 = [[PGTitleGenerator alloc] initWithMomentNode:v29 type:0 titleGenerationContext:v24];
        [(PGTitleGenerator *)v9 setPreferredTitleType:2];
        [(PGTitleGenerator *)v9 setLineBreakBehavior:2];
        v28 = [(PGTitleGenerator *)v9 title];
        v27 = [(PGTitleGenerator *)v9 subtitle];
        v10 = [MEMORY[0x277CBEB18] array];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v11 = [(PGTitleGenerator *)v9 usedLocationNodes];
        v12 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v31;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v31 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:*(*(&v30 + 1) + 8 * j) locationHelper:v7];
              if (v16)
              {
                [v10 addObject:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v13);
        }

        v17 = [[PGTitleTuple alloc] initWithWithTitle:v28 subtitle:v27 locationNames:v10];
        v18 = [v29 uuid];
        [v25 setObject:v17 forKeyedSubscript:v18];
      }

      v26 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v26);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)highlightInfoWithHighlight:(id)a3 graph:(id)a4 highlightTailorContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[PGHighlightTailorHighlightInfo alloc] initWithHighlight:v9 graph:v8 highlightTailorContext:v7];

  return v10;
}

- (BOOL)canEnrichHighlight:(id)a3 withOptions:(unint64_t)a4
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [v4 isRecent] ^ 1;
  }

  return v5;
}

- (id)keyAssetCurationCriteriaWithHighlightInfo:(id)a3 graph:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 highlightNode];
  v9 = [v6 meaningLabels];
  if ([v9 count])
  {
    v50 = self;
    +[PGMeaningfulEventRequiredCriteriaFactory availableMeaningLabels];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v10 = v58 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v11)
    {
      v12 = v11;
      v48 = v8;
      v49 = v7;
      v13 = 0;
      v14 = *v56;
LABEL_4:
      v15 = 0;
      v16 = v13;
      while (1)
      {
        if (*v56 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v13 = *(*(&v55 + 1) + 8 * v15);

        if ([v9 containsObject:v13])
        {
          break;
        }

        ++v15;
        v16 = v13;
        if (v12 == v15)
        {
          v12 = [v10 countByEnumeratingWithState:&v55 objects:v60 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          v13 = 0;
          v17 = 0;
          v18 = 0;
          v19 = v10;
          v8 = v48;
          v7 = v49;
          goto LABEL_33;
        }
      }

      if (!v13)
      {
        v17 = 0;
        v18 = 0;
        v8 = v48;
        v7 = v49;
        goto LABEL_39;
      }

      v20 = [(PGCurationManager *)v50->_curationManager curationCriteriaFactory];
      v8 = v48;
      v7 = v49;
      v18 = [v20 curationCriteriaWithCollection:v48 meaningLabel:v13 inGraph:v49 client:0];

      v21 = [v18 scenesTrait];
      [v21 setTargetNumberOfMatches:3];

      if (!v50->_collectsDebugInfo)
      {
        v17 = 0;
        goto LABEL_39;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]", v13];
      if ([v9 count] >= 2)
      {
        v46 = v19;
        v47 = v6;
        v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v23 = v10;
        v24 = [v23 countByEnumeratingWithState:&v51 objects:v59 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v52;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v52 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v51 + 1) + 8 * i);
              if (v28 != v13 && [v9 containsObject:*(*(&v51 + 1) + 8 * i)])
              {
                [v22 addObject:v28];
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v51 objects:v59 count:16];
          }

          while (v25);
        }

        v29 = [v22 componentsJoinedByString:@") - ("];
        v19 = [v46 stringByAppendingFormat:@" - (%@)", v29];

        v6 = v47;
        v8 = v48;
        v7 = v49;
      }

      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Meanings: %@", v19];
    }

    else
    {
      v13 = 0;
      v17 = 0;
      v18 = 0;
      v19 = v10;
    }

LABEL_33:

LABEL_39:
    self = v50;
    if (v18)
    {
      goto LABEL_40;
    }

    goto LABEL_42;
  }

  v30 = [v8 isPartOfTrip];
  v31 = [(PGCurationManager *)self->_curationManager curationCriteriaFactory];
  v32 = v31;
  if (!v30)
  {
    v40 = [v6 highlightTailorContext];
    v41 = [v40 curationContext];
    v18 = [v32 petCurationCriteriaWithCollection:v8 client:0 curationContext:v41];

LABEL_35:
    v17 = 0;
    if (!v18)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  v18 = [v31 tripCurationCriteriaWithCollection:v8 client:0];

  v33 = [v7 infoNode];
  [v33 topTierAestheticScoreForTripKeyAsset];
  v35 = v34;

  v36 = [PGCurationContentOrAestheticScoreTrait alloc];
  v37 = [(PGCurationContentOrAestheticScoreTrait *)v36 initWithMinimumContentScore:*MEMORY[0x277D3C760] minimumAestheticScore:v35];
  [v18 setContentOrAestheticScoreTrait:v37];

  if (!self->_collectsDebugInfo)
  {
    goto LABEL_35;
  }

  v38 = [v8 isPartOfShortTrip];
  v39 = @"Part of Long Trip";
  if (v38)
  {
    v39 = @"Part of Short Trip";
  }

  v17 = v39;
  if (v18)
  {
LABEL_40:
    if (self->_collectsDebugInfo)
    {
      [(NSMutableDictionary *)self->_debugInfos setObject:v17 forKeyedSubscript:@"keyAssetReason"];
      v42 = [v18 niceDescriptionWithGraph:v7];
      [(NSMutableDictionary *)self->_debugInfos setObject:v42 forKeyedSubscript:@"keyAssetCurationCriteria"];
    }
  }

LABEL_42:
  v43 = v18;

  v44 = *MEMORY[0x277D85DE8];
  return v18;
}

- (PGKeyAssetCurationOptions)keyAssetCurationOptions
{
  v2 = objc_alloc_init(PGKeyAssetCurationOptions);
  [(PGKeyAssetCurationOptions *)v2 setPromoteAutoplayableItems:1];

  return v2;
}

- (PGCurationOptions)curationOptions
{
  v2 = [[PGCurationOptions alloc] initWithDuration:0];
  [(PGCurationOptions *)v2 setLastPassMovieAdditionEnabled:0];

  return v2;
}

- (PGDefaultEnrichmentProfile)initWithCurationManager:(id)a3 loggingConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PGDefaultEnrichmentProfile;
  v9 = [(PGDefaultEnrichmentProfile *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_curationManager, a3);
    objc_storeStrong(&v10->_loggingConnection, a4);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    debugInfos = v10->_debugInfos;
    v10->_debugInfos = v11;
  }

  return v10;
}

+ (double)evaluatedDurationsWithAssets:(id)a3 options:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 uuidsOfEligibleAssets];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v29 = v6;
    v30 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        if (v7)
        {
          v16 = [*(*(&v31 + 1) + 8 * i) uuid];
          v17 = [v7 containsObject:v16];

          if (!v17)
          {
            continue;
          }
        }

        if ([v15 isVideo])
        {
          ++v11;
        }

        else if ([v15 clsIsInterestingLivePhoto])
        {
          ++v30;
        }

        else
        {
          ++v12;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
    v18 = v12;
    v6 = v29;
    v19 = v30;
    v20 = v11;
  }

  else
  {
    v20 = 0.0;
    v19 = 0.0;
    v18 = 0.0;
  }

  [v6 defaultDurationOfStillPhoto];
  v22 = v21;
  [v6 defaultDurationOfLivePhoto];
  v24 = v23;
  [v6 defaultDurationOfVideo];
  v26 = v25;

  v27 = *MEMORY[0x277D85DE8];
  return v24 * v19 + v22 * v18 + v26 * v20;
}

+ (double)targetCurationDurationWithPrivateAssets:(id)a3 sharedAssets:(id)a4 sharingFilter:(unsigned __int16)a5 options:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  [a1 evaluatedDurationsWithAssets:a3 options:v10];
  v13 = v12;
  [a1 evaluatedDurationsWithAssets:v11 options:v10];
  v15 = v14;

  if (v6)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  return v16 * 90.0 / (v13 + v15);
}

@end
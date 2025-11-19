@interface PGAssetDebugInformation
+ (id)_personDescriptionStringsInAsset:(id)a3;
+ (id)_sceneprintDistanceStringFromAsset:(id)a3 toAsset:(id)a4;
+ (id)debugInformationForAsset:(id)a3 curationContext:(id)a4;
@end

@implementation PGAssetDebugInformation

+ (id)_personDescriptionStringsInAsset:(id)a3
{
  v77[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 photoLibrary];
  v5 = [v4 librarySpecificFetchOptions];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"verifiedType" ascending:0];
  v77[0] = v6;
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v77[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:2];
  [v5 setSortDescriptors:v8];

  [v5 setIncludedDetectionTypes:&unk_284486108];
  [v5 setPersonContext:5];
  v62 = v5;
  v9 = [MEMORY[0x277CD9938] fetchPersonsInAsset:v3 options:v5];
  if ([v9 count])
  {
    v60 = v4;
    v10 = [v4 librarySpecificFetchOptions];
    [v10 setIncludedDetectionTypes:&unk_284486120];
    [v10 setIncludeTorsoAndFaceDetectionData:1];
    v61 = v3;
    v58 = v10;
    v11 = [MEMORY[0x277CD9868] fetchFacesInAsset:v3 options:v10];
    v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v11, "count")}];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v71 objects:v76 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v72;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v72 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v71 + 1) + 8 * i);
          v19 = [v18 personLocalIdentifier];
          if (v19)
          {
            [v12 setObject:v18 forKeyedSubscript:v19];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v71 objects:v76 count:16];
      }

      while (v15);
    }

    v57 = v13;

    v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v59 = v9;
    obj = v9;
    v66 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
    if (v66)
    {
      v64 = *v68;
      v20 = 0x277CCA000uLL;
      do
      {
        for (j = 0; j != v66; ++j)
        {
          if (*v68 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v67 + 1) + 8 * j);
          v23 = [v22 name];
          if (![v23 length])
          {
            v24 = [v22 uuid];
            v25 = *(v20 + 3240);
            v26 = [v24 substringToIndex:19];
            v27 = [v24 substringFromIndex:19];
            v28 = [v25 stringWithFormat:@"%@\n%@", v26, v27];

            v20 = 0x277CCA000;
            v23 = v28;
          }

          v29 = [v22 verifiedType];
          v30 = @"Unvrfd";
          if (v29 == 2)
          {
            v30 = @"Graph";
          }

          if (v29 == 1)
          {
            v30 = @"User";
          }

          v31 = v30;
          v32 = objc_alloc_init(MEMORY[0x277CCAB68]);
          v33 = [v22 detectionType];
          v34 = @"🐶 ";
          if (v33 == 3 || (v35 = [v22 detectionType], v34 = @"🐱 ", v35 == 4))
          {
            [v32 appendString:v34];
          }

          [v32 appendFormat:@"%@ (%@):\n", v23, v31];
          [v22 mergeCandidateConfidence];
          if (v36 > 0.0)
          {
            v37 = v36;
            v38 = [MEMORY[0x277CD9938] fetchMergeCandidateWithConfidencePersonsForPerson:v22 options:v62];
            v39 = [v38 firstObject];

            v40 = [v39 name];
            if (![v40 length])
            {
              v41 = [v39 uuid];
              v42 = [v41 substringToIndex:8];

              v40 = v42;
            }

            [v32 appendFormat:@"\t-> %@ (%.2f)\n", v40, *&v37];

            v20 = 0x277CCA000uLL;
          }

          v43 = [v22 localIdentifier];
          v44 = [v12 objectForKeyedSubscript:v43];

          if (v44)
          {
            v45 = @"🙈";
            if ([v44 eyesState] == 2)
            {
              v46 = [v44 faceExpressionType];
              v45 = @"⁉️";
              if (v46 <= 6)
              {
                v45 = off_278884FA0[v46];
              }
            }

            v47 = *(v20 + 3240);
            [v44 size];
            v49 = v48;
            [v44 quality];
            if (v50 >= 0.0)
            {
              v52 = *(v20 + 3240);
              [v44 quality];
              v54 = [v52 stringWithFormat:@"%.3f", v53];
              v51 = [v47 stringWithFormat:@"s=%.2f, e=%@, q=%@", v49, v45, v54];
            }

            else
            {
              v51 = [v47 stringWithFormat:@"s=%.2f, e=%@, q=%@", v49, v45, @"-"];
            }

            [v32 appendFormat:@"\t%@", v51];
          }

          else
          {
            [v32 appendFormat:@"\tno face"];
          }

          [v65 addObject:v32];
        }

        v66 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
      }

      while (v66);
    }

    v4 = v60;
    v3 = v61;
    v9 = v59;
  }

  else
  {
    v65 = MEMORY[0x277CBEBF8];
  }

  v55 = *MEMORY[0x277D85DE8];

  return v65;
}

+ (id)_sceneprintDistanceStringFromAsset:(id)a3 toAsset:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277D277B8]) initWithSimilarityModelClass:objc_opt_class()];
  [v7 distanceBetweenItem:v5 andItem:v6];
  v9 = v8;
  if (v8 >= 1.79769313e308)
  {
    v16 = [v6 clsSceneprint];
    if (v16)
    {
      v17 = [v5 sceneAnalysisProperties];
      v18 = [v17 sceneAnalysisVersion];

      v19 = [v6 sceneAnalysisProperties];
      v20 = [v19 sceneAnalysisVersion];

      if (v18 == v20)
      {
        v21 = @"Error in computation";
      }

      else
      {
        v23 = v18;
        v24 = v20;
        v21 = @"%hd != %hd";
      }

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:v21, v23, v24];
    }

    else
    {
      v15 = @"No sceneprint";
    }
  }

  else
  {
    v10 = [v5 clsSimilarityModelVersion];
    [v7 distanceThresholdForSimilarity:0 withSimilarityModelVersion:v10];
    v12 = v11;
    [v7 distanceThresholdForSimilarity:2 withSimilarityModelVersion:v10];
    v13 = @"-";
    if (v9 <= v14)
    {
      v13 = @"Sem.";
    }

    if (v9 <= v12)
    {
      v13 = @"Id.";
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0.5f (%@)", *&v9, v13];
  }

  return v15;
}

+ (id)debugInformationForAsset:(id)a3 curationContext:(id)a4
{
  v222[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v182 = [v6 photoLibrary];
  v7 = [v182 librarySpecificFetchOptions];
  v8 = [PGWallpaperSuggestionUtilities assetFetchPropertySetsIncludingGating:1];
  [v7 setFetchPropertySets:v8];

  [v7 setIncludeGuestAssets:1];
  v9 = MEMORY[0x277CD97A8];
  v10 = [v6 localIdentifier];

  v222[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v222 count:1];
  v12 = [v9 fetchAssetsWithLocalIdentifiers:v11 options:v7];

  v13 = [MEMORY[0x277CD97A8] clsAllAssetsFromFetchResult:v12 prefetchOptions:31 curationContext:v5];
  v14 = [v13 firstObject];

  v15 = objc_opt_new();
  v16 = MEMORY[0x277D3C7A0];
  v213[0] = MEMORY[0x277D85DD0];
  v213[1] = 3221225472;
  v213[2] = __68__PGAssetDebugInformation_debugInformationForAsset_curationContext___block_invoke;
  v213[3] = &unk_278884F80;
  v189 = v15;
  v214 = v189;
  [v16 enumerateSignalsFromAsset:v14 fullHierarchyName:1 usingBlock:v213];
  v220[0] = @"latest";
  v17 = [MEMORY[0x277CCABB0] numberWithInt:*MEMORY[0x277D26840]];
  v220[1] = @"current";
  v221[0] = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithShort:{objc_msgSend(v14, "faceAnalysisVersion")}];
  v221[1] = v18;
  v188 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v221 forKeys:v220 count:2];

  v218[0] = @"latest";
  v19 = [MEMORY[0x277CCABB0] numberWithInt:*MEMORY[0x277D26848]];
  v218[1] = @"current";
  v219[0] = v19;
  v20 = MEMORY[0x277CCABB0];
  v21 = [v14 sceneAnalysisProperties];
  v22 = [v20 numberWithShort:{objc_msgSend(v21, "sceneAnalysisVersion")}];
  v219[1] = v22;
  v187 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v219 forKeys:v218 count:2];

  v23 = [v14 curationModel];
  [v23 scoreWithAsset:v14 inContext:0];
  v25 = v24;

  v26 = [v14 photoLibrary];
  [PGGraphBuilder topTierAestheticScoreForRatio:v26 inPhotoLibrary:0.01];
  v28 = v27;

  v29 = objc_autoreleasePoolPush();
  v30 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:v14 withType:3 options:0];
  v31 = [v30 firstObject];

  v32 = +[PGCurationManager assetPropertySetsForCuration];
  [v7 setFetchPropertySets:v32];

  v33 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v217[0] = v33;
  v34 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v217[1] = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v217 count:2];
  [v7 setSortDescriptors:v35];

  v181 = v7;
  v36 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v31 options:v7];
  v37 = [v36 fetchedObjects];

  v183 = v5;
  v38 = [v5 curationSession];
  [v38 prepareAssets:v37];

  v39 = [MEMORY[0x277D3C7A0] scoringContextWithAssets:v37 aestheticScoreThresholdToBeAwesome:v28];
  v40 = [v14 curationModel];
  [v40 scoreWithAsset:v14 inContext:v39];
  v42 = v41;

  v43 = [PGMemoryGenerationHelper scoringContextForMemoriesWithAssets:v37 withTopTierAestheticScore:v28];
  v44 = [v14 curationModel];
  [v44 scoreWithAsset:v14 inContext:v43];
  v46 = v45;

  v47 = [v14 clsSceneprint];
  if (v47)
  {
    v48 = [v37 indexOfObject:v14];
    v49 = v48;
    if (v48)
    {
      v50 = [v37 objectAtIndexedSubscript:v48 - 1];
      v186 = [a1 _sceneprintDistanceStringFromAsset:v14 toAsset:v50];
    }

    else
    {
      v186 = @"No asset";
    }

    if (v49 >= [v37 count] - 1)
    {
      v185 = @"No asset";
    }

    else
    {
      v51 = [v37 objectAtIndexedSubscript:v49 + 1];
      v185 = [a1 _sceneprintDistanceStringFromAsset:v14 toAsset:v51];
    }
  }

  else
  {
    v185 = @"-";
    v186 = @"-";
  }

  objc_autoreleasePoolPop(v29);
  v52 = [MEMORY[0x277CBEB38] dictionary];
  v53 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "clsIsBlurry")}];
  [v52 setObject:v53 forKeyedSubscript:@"isBlurryMedia"];

  v54 = MEMORY[0x277CCABB0];
  v55 = [v14 curationModel];
  v56 = [v55 mediaPreAnalysisModel];
  v57 = [v56 sharpnessNode];
  [v57 highRecallOperatingPoint];
  v58 = [v54 numberWithDouble:?];
  [v52 setObject:v58 forKeyedSubscript:@"sharpnessThreshold"];

  [v52 setObject:v188 forKeyedSubscript:@"faceAnalysisVersions"];
  [v52 setObject:v187 forKeyedSubscript:@"sceneAnalysisVersions"];
  v59 = [v14 curationModel];
  v60 = [v59 sceneModel];
  v61 = [v60 identifier];
  [v52 setObject:v61 forKeyedSubscript:@"sceneTaxonomyDigest"];

  [v52 setObject:v189 forKeyedSubscript:@"classification"];
  v62 = [MEMORY[0x277CCABB0] numberWithDouble:v42];
  [v52 setObject:v62 forKeyedSubscript:@"curationScoreWithContext"];

  v63 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
  [v52 setObject:v63 forKeyedSubscript:@"curationScoreWithoutContext"];

  v64 = [MEMORY[0x277CCABB0] numberWithDouble:v46];
  [v52 setObject:v64 forKeyedSubscript:@"curationScoreForMemories"];

  v65 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
  [v52 setObject:v65 forKeyedSubscript:@"libraryTopTierAestheticScore"];

  v66 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "clsIsUtility")}];
  [v52 setObject:v66 forKeyedSubscript:@"isUtility"];

  v67 = MEMORY[0x277CCABB0];
  v68 = [v14 curationModel];
  v69 = [v183 userFeedbackCalculator];
  v70 = [v67 numberWithBool:{objc_msgSend(v68, "isUtilityForMemoriesWithAsset:userFeedbackCalculator:blockSocialMediaImportedAssets:", v14, v69, 0)}];
  [v52 setObject:v70 forKeyedSubscript:@"isUtilityForMemories"];

  v71 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "clsIsTragicFailure")}];
  [v52 setObject:v71 forKeyedSubscript:@"isTragicFailure"];

  v212 = 0;
  v72 = [v14 clsAvoidIfPossibleAsKeyItemForMemories:0 allowGuestAsset:0 reason:&v212];
  v73 = v212;
  v74 = [MEMORY[0x277CCABB0] numberWithBool:v72];
  [v52 setObject:v74 forKeyedSubscript:@"avoidForKeyAsset"];

  if (v72)
  {
    if (v73)
    {
      v75 = v73;
    }

    else
    {
      v75 = @"Unknown";
    }

    [v52 setObject:v75 forKeyedSubscript:@"avoidForKeyAssetReason"];
  }

  v76 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "clsAvoidIfPossibleAsKeyItemForMemories:allowGuestAsset:", 1, 0)}];
  [v52 setObject:v76 forKeyedSubscript:@"avoidForMemoryKeyAsset"];

  v77 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D3C7C0], "assetIsSafeForWidgetDisplay:", v14)}];
  [v52 setObject:v77 forKeyedSubscript:@"isSafeForWidgetDisplay"];

  v78 = [a1 _personDescriptionStringsInAsset:v14];
  [v52 setObject:v78 forKeyedSubscript:@"peopleNames"];

  [v52 setObject:v186 forKeyedSubscript:@"sceneprintDistanceToPreviousAsset"];
  [v52 setObject:v185 forKeyedSubscript:@"sceneprintDistanceToNextAsset"];
  v79 = MEMORY[0x277CCABB0];
  [v14 clsSquareCropScore];
  v80 = [v79 numberWithDouble:?];
  [v52 setObject:v80 forKeyedSubscript:@"squareCropScore"];

  [v14 cropScoreForTargetAspectRatio:1 forFaces:0.75];
  v81 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v52 setObject:v81 forKeyedSubscript:@"3x4CropScore"];

  [v14 cropScoreForTargetAspectRatio:1 forFaces:1.5];
  v82 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v52 setObject:v82 forKeyedSubscript:@"3x2CropScore"];

  v83 = MEMORY[0x277CCABB0];
  v211 = v73;
  v84 = [(PGPeopleWallpaperSuggester *)PGTopPeopleWallpaperSuggester passesFilteringWithAsset:v14 curationContext:v183 orientation:1 reason:&v211];
  v85 = v211;

  v86 = [v83 numberWithBool:v84];
  [v52 setObject:v86 forKeyedSubscript:@"WSTopPeoplePortraitPass"];

  [v52 setObject:v85 forKeyedSubscript:@"WSTopPeoplePortraitReason"];
  v87 = MEMORY[0x277CCABB0];
  v210 = v85;
  v88 = [(PGPeopleWallpaperSuggester *)PGTopPeopleWallpaperSuggester passesFilteringWithAsset:v14 curationContext:v183 orientation:2 reason:&v210];
  v89 = v210;

  v90 = [v87 numberWithBool:v88];
  [v52 setObject:v90 forKeyedSubscript:@"WSTopPeopleLandscapePass"];

  [v52 setObject:v89 forKeyedSubscript:@"WSTopPeopleLandscapeReason"];
  v91 = MEMORY[0x277CCABB0];
  v209 = v89;
  v92 = [(PGPetWallpaperSuggester *)PGTopPetWallpaperSuggester passesFilteringWithAsset:v14 curationContext:v183 orientation:1 reason:&v209];
  v93 = v209;

  v94 = [v91 numberWithBool:v92];
  [v52 setObject:v94 forKeyedSubscript:@"WSTopPetPortraitPass"];

  [v52 setObject:v93 forKeyedSubscript:@"WSTopPetPortraitReason"];
  v95 = MEMORY[0x277CCABB0];
  v208 = v93;
  v96 = [(PGPetWallpaperSuggester *)PGTopPetWallpaperSuggester passesFilteringWithAsset:v14 curationContext:v183 orientation:2 reason:&v208];
  v97 = v208;

  v98 = [v95 numberWithBool:v96];
  [v52 setObject:v98 forKeyedSubscript:@"WSTopPetLandscapePass"];

  [v52 setObject:v97 forKeyedSubscript:@"WSTopPetLandscapeReason"];
  v99 = MEMORY[0x277CCABB0];
  v207 = v97;
  v100 = [(PGLandscapeWallpaperSuggester *)PGTopLandscapeWallpaperSuggester passesFilteringWithAsset:v14 curationContext:v183 orientation:1 reason:&v207];
  v101 = v207;

  v102 = [v99 numberWithBool:v100];
  [v52 setObject:v102 forKeyedSubscript:@"WSTopNaturePortraitPass"];

  [v52 setObject:v101 forKeyedSubscript:@"WSTopNaturePortraitReason"];
  v103 = MEMORY[0x277CCABB0];
  v206 = v101;
  v104 = [(PGLandscapeWallpaperSuggester *)PGTopLandscapeWallpaperSuggester passesFilteringWithAsset:v14 curationContext:v183 orientation:2 reason:&v206];
  v105 = v206;

  v106 = [v103 numberWithBool:v104];
  [v52 setObject:v106 forKeyedSubscript:@"WSTopNatureLandscapePass"];

  [v52 setObject:v105 forKeyedSubscript:@"WSTopNatureLandscapeReason"];
  v107 = MEMORY[0x277CCABB0];
  v205 = v105;
  v108 = [(PGCityscapeWallpaperSuggester *)PGTopCityscapeWallpaperSuggester passesFilteringWithAsset:v14 curationContext:v183 orientation:1 reason:&v205];
  v109 = v205;

  v110 = [v107 numberWithBool:v108];
  [v52 setObject:v110 forKeyedSubscript:@"WSTopCityscapePortraitPass"];

  [v52 setObject:v109 forKeyedSubscript:@"WSTopCityscapePortraitReason"];
  v111 = MEMORY[0x277CCABB0];
  v204 = v109;
  v112 = [(PGCityscapeWallpaperSuggester *)PGTopCityscapeWallpaperSuggester passesFilteringWithAsset:v14 curationContext:v183 orientation:2 reason:&v204];
  v113 = v204;

  v114 = [v111 numberWithBool:v112];
  [v52 setObject:v114 forKeyedSubscript:@"WSTopCityscapeLandscapePass"];

  [v52 setObject:v113 forKeyedSubscript:@"WSTopCityscapeLandscapeReason"];
  v115 = MEMORY[0x277CCABB0];
  v203 = v113;
  v116 = [PGPeopleWallpaperSuggester passesFilteringWithAsset:v14 curationContext:v183 orientation:1 reason:&v203];
  v117 = v203;

  v118 = [v115 numberWithBool:v116];
  [v52 setObject:v118 forKeyedSubscript:@"WSPeoplePortraitPass"];

  [v52 setObject:v117 forKeyedSubscript:@"WSPeoplePortraitReason"];
  v119 = MEMORY[0x277CCABB0];
  v202 = v117;
  v120 = [PGPeopleWallpaperSuggester passesFilteringWithAsset:v14 curationContext:v183 orientation:2 reason:&v202];
  v121 = v202;

  v122 = [v119 numberWithBool:v120];
  [v52 setObject:v122 forKeyedSubscript:@"WSPeopleLandscapePass"];

  [v52 setObject:v121 forKeyedSubscript:@"WSPeopleLandscapeReason"];
  v123 = MEMORY[0x277CCABB0];
  v201 = v121;
  v124 = [PGPetWallpaperSuggester passesFilteringWithAsset:v14 curationContext:v183 orientation:1 reason:&v201];
  v125 = v201;

  v126 = [v123 numberWithBool:v124];
  [v52 setObject:v126 forKeyedSubscript:@"WSPetPortraitPass"];

  [v52 setObject:v125 forKeyedSubscript:@"WSPetPortraitReason"];
  v127 = MEMORY[0x277CCABB0];
  v200 = v125;
  v128 = [PGPetWallpaperSuggester passesFilteringWithAsset:v14 curationContext:v183 orientation:2 reason:&v200];
  v129 = v200;

  v130 = [v127 numberWithBool:v128];
  [v52 setObject:v130 forKeyedSubscript:@"WSPetLandscapePass"];

  [v52 setObject:v129 forKeyedSubscript:@"WSPetLandscapeReason"];
  v131 = MEMORY[0x277CCABB0];
  v199 = v129;
  v132 = [PGLandscapeWallpaperSuggester passesFilteringWithAsset:v14 curationContext:v183 orientation:1 reason:&v199];
  v133 = v199;

  v134 = [v131 numberWithBool:v132];
  [v52 setObject:v134 forKeyedSubscript:@"WSNaturePortraitPass"];

  [v52 setObject:v133 forKeyedSubscript:@"WSNaturePortraitReason"];
  v135 = MEMORY[0x277CCABB0];
  v198 = v133;
  v136 = [PGLandscapeWallpaperSuggester passesFilteringWithAsset:v14 curationContext:v183 orientation:2 reason:&v198];
  v137 = v198;

  v138 = [v135 numberWithBool:v136];
  [v52 setObject:v138 forKeyedSubscript:@"WSNatureLandscapePass"];

  [v52 setObject:v137 forKeyedSubscript:@"WSNatureLandscapeReason"];
  v139 = MEMORY[0x277CCABB0];
  v197 = v137;
  v140 = [PGCityscapeWallpaperSuggester passesFilteringWithAsset:v14 curationContext:v183 orientation:1 reason:&v197];
  v141 = v197;

  v142 = [v139 numberWithBool:v140];
  [v52 setObject:v142 forKeyedSubscript:@"WSCityscapePortraitPass"];

  [v52 setObject:v141 forKeyedSubscript:@"WSCityscapePortraitReason"];
  v143 = MEMORY[0x277CCABB0];
  v196 = v141;
  v144 = [PGCityscapeWallpaperSuggester passesFilteringWithAsset:v14 curationContext:v183 orientation:2 reason:&v196];
  v145 = v196;

  v146 = [v143 numberWithBool:v144];
  [v52 setObject:v146 forKeyedSubscript:@"WSCityscapeLandscapePass"];

  [v52 setObject:v145 forKeyedSubscript:@"WSCityscapeLandscapeReason"];
  v147 = MEMORY[0x277CCABB0];
  v195 = v145;
  v148 = [PGSettlingEffectWallpaperSuggester passesFilteringWithAsset:v14 curationContext:v183 orientation:1 reason:&v195];
  v149 = v195;

  v150 = [v147 numberWithBool:v148];
  [v52 setObject:v150 forKeyedSubscript:@"WSSettlingEffectPortraitPass"];

  [v52 setObject:v149 forKeyedSubscript:@"WSSettlingEffectPortraitReason"];
  v151 = MEMORY[0x277CCABB0];
  v194 = v149;
  v152 = [PGSettlingEffectWallpaperSuggester passesFilteringWithAsset:v14 curationContext:v183 orientation:2 reason:&v194];
  v153 = v194;

  v154 = [v151 numberWithBool:v152];
  [v52 setObject:v154 forKeyedSubscript:@"WSSettlingEffectLandscapePass"];

  [v52 setObject:v153 forKeyedSubscript:@"WSSettlingEffectLandscapeReason"];
  v155 = MEMORY[0x277CCABB0];
  v193 = v153;
  v156 = [(PGPeopleWallpaperSuggester *)PGMeWallpaperSuggester passesFilteringWithAsset:v14 curationContext:v183 orientation:1 reason:&v193];
  v157 = v193;

  v158 = [v155 numberWithBool:v156];
  [v52 setObject:v158 forKeyedSubscript:@"WSMePortraitPass"];

  [v52 setObject:v157 forKeyedSubscript:@"WSMePortraitReason"];
  v159 = MEMORY[0x277CCABB0];
  v192 = v157;
  v160 = [(PGPeopleWallpaperSuggester *)PGMeWallpaperSuggester passesFilteringWithAsset:v14 curationContext:v183 orientation:2 reason:&v192];
  v161 = v192;

  v162 = [v159 numberWithBool:v160];
  [v52 setObject:v162 forKeyedSubscript:@"WSMeLandscapePass"];

  [v52 setObject:v161 forKeyedSubscript:@"WSMeLandscapeReason"];
  v163 = [v14 photoAnalysisWallpaperProperties];
  v215[0] = @"current";
  v164 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{+[PGWallpaperSuggestionAssetGater currentWallpaperPropertiesVersion](PGWallpaperSuggestionAssetGater, "currentWallpaperPropertiesVersion")}];
  v215[1] = @"persisted";
  v216[0] = v164;
  v165 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v163, "wallpaperPropertiesVersion")}];
  v216[1] = v165;
  v166 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v216 forKeys:v215 count:2];
  [v52 setObject:v166 forKeyedSubscript:@"NSWallpaperPropertiesVersions"];

  v167 = [v163 wallpaperPropertiesTimestamp];
  if (v167)
  {
    v168 = MEMORY[0x277CCA968];
    v169 = [v163 wallpaperPropertiesTimestamp];
    v170 = [v168 localizedStringFromDate:v169 dateStyle:1 timeStyle:1];
    [v52 setObject:v170 forKeyedSubscript:@"NSWallpaperPropertiesTimestamp"];
  }

  else
  {
    [v52 setObject:@"Never computed" forKeyedSubscript:@"NSWallpaperPropertiesTimestamp"];
  }

  v171 = [v163 wallpaperPropertiesData];

  if (v171)
  {
    v172 = MEMORY[0x277CCAC58];
    v173 = [v163 wallpaperPropertiesData];
    v191 = 0;
    v174 = [v172 propertyListWithData:v173 options:0 format:0 error:&v191];
    v175 = v191;
  }

  else
  {
    v176 = [PGWallpaperSuggestionAssetGater alloc];
    v173 = [(PGWallpaperSuggestionAssetGater *)v176 initWithType:1 loggingConnection:MEMORY[0x277D86220]];
    [(PGWallpaperSuggestionAssetGater *)v173 setIsUserInitiated:1];
    v190 = 0;
    v174 = [(PGWallpaperSuggestionAssetGater *)v173 requestWallpaperPropertiesForAsset:v14 progressBlock:&__block_literal_global_47611 error:&v190];
    v175 = v190;
  }

  v177 = v175;

  if (v174)
  {
    [v52 setObject:v174 forKeyedSubscript:@"NSWallpaperProperties"];
  }

  else
  {
    v178 = [v177 description];
    [v52 setObject:v178 forKeyedSubscript:@"NSWallpaperProperties"];
  }

  v179 = *MEMORY[0x277D85DE8];

  return v52;
}

void __68__PGAssetDebugInformation_debugInformationForAsset_curationContext___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, void *a9)
{
  v16 = a9;
  v26 = v16;
  if (a6 * a7 <= 0.0)
  {
    v22 = v16;
    if (a3 > 0.0)
    {
      v23 = @"<";
      if (a2 >= a3)
      {
        v23 = @"≥";
      }

      v24 = v23;
      v25 = v26;
      v20 = v24;
      goto LABEL_15;
    }

LABEL_13:
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:\r\t\t confidence: (%.2f)", v22, *&a2];
    goto LABEL_17;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%.2f, %.2f  %.2f x %.2f]", a6 * a7, *&a4, *&a5, *&a6, *&a7];
  v18 = v17;
  if (a3 <= 0.0)
  {
    v22 = v26;
    if (v17)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:\r\t\t confidence: (%.2f), \r\t\t boundingBox: %@", v26, *&a2, v17];

      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v19 = @"<";
  if (a2 >= a3)
  {
    v19 = @"≥";
  }

  v20 = v19;
  if (!v18)
  {
    v25 = v26;
LABEL_15:
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:\r\t\t confidence: (%.2f%@%.2f)", v25, *&a2, v20, *&a3];
    goto LABEL_16;
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:\r\t\t confidence: (%.2f%@%.2f), \r\t\t boundingBox: %@", v26, *&a2, v20, *&a3, v18];

LABEL_16:
LABEL_17:
  [*(a1 + 32) addObject:v21];
}

@end
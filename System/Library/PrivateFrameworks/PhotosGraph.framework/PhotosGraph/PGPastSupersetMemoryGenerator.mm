@interface PGPastSupersetMemoryGenerator
- (id)chapterTitleGeneratorForTriggeredMemory:(id)a3 curatedAssets:(id)a4 extendedCuratedAssets:(id)a5 titleGenerationContext:(id)a6 inGraph:(id)a7;
- (id)curationOptionsWithRequiredAssetUUIDs:(id)a3 eligibleAssetUUIDs:(id)a4 triggeredMemory:(id)a5;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4;
- (id)relevantCurationFeederForTriggeredMemory:(id)a3 relevantFeeder:(id)a4 inGraph:(id)a5 allowGuestAsset:(BOOL)a6 progressReporter:(id)a7;
- (id)relevantFeederForTriggeredMemory:(id)a3 inGraph:(id)a4 allowGuestAsset:(BOOL)a5 progressReporter:(id)a6;
- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8;
- (void)_enumeratePotentialMemoriesForProcessingWindow:(id)a3 graph:(id)a4 progressBlock:(id)a5 usingBlock:(id)a6;
- (void)generateMoodForEnrichedMemory:(id)a3 extendedCuratedAssets:(id)a4 configuration:(id)a5 inGraph:(id)a6;
@end

@implementation PGPastSupersetMemoryGenerator

- (void)generateMoodForEnrichedMemory:(id)a3 extendedCuratedAssets:(id)a4 configuration:(id)a5 inGraph:(id)a6
{
  v6 = a3;
  [v6 setSuggestedMood:16];
  [v6 setForbiddenMoods:896];
  [v6 setRecommendedMoods:0];
}

- (id)chapterTitleGeneratorForTriggeredMemory:(id)a3 curatedAssets:(id)a4 extendedCuratedAssets:(id)a5 titleGenerationContext:(id)a6 inGraph:(id)a7
{
  v7 = a3;
  v8 = [v7 memoryMomentNodes];
  v9 = [v8 dateNodes];
  v10 = [v9 yearNodes];
  v11 = [v10 count];

  if (v11 < 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = [[PGYearChapterTitleGenerator alloc] initWithTriggeredMemory:v7];
  }

  return v12;
}

- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8
{
  v9 = a7;
  v10 = a3;
  v11 = [v10 memoryMomentNodes];
  v12 = [v11 universalDateInterval];

  v13 = [v10 memoryFeatureNodes];
  v14 = [(PGGraphNodeCollection *)PGGraphNamedLocationNodeCollection subsetInCollection:v13];
  v15 = [v14 anyNode];

  v16 = [PGPastSupersetMemoryTitleGenerator alloc];
  v17 = [v10 memoryMomentNodes];

  v18 = [v17 set];
  v19 = [(PGPastSupersetMemoryTitleGenerator *)v16 initWithMomentNodes:v18 supersetLocationNode:v15 supersetDateInterval:v12 titleGenerationContext:v9];

  return v19;
}

- (id)curationOptionsWithRequiredAssetUUIDs:(id)a3 eligibleAssetUUIDs:(id)a4 triggeredMemory:(id)a5
{
  v14.receiver = self;
  v14.super_class = PGPastSupersetMemoryGenerator;
  v7 = a5;
  v8 = [(PGMemoryGenerator *)&v14 curationOptionsWithRequiredAssetUUIDs:a3 eligibleAssetUUIDs:a4 triggeredMemory:v7];
  v9 = [v7 memoryMomentNodes];

  v10 = [v9 universalDateInterval];
  [v10 duration];
  v12 = v11;

  if (v12 > 31557600.0)
  {
    [v8 setDuration:21];
  }

  return v8;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4
{
  v10.receiver = self;
  v10.super_class = PGPastSupersetMemoryGenerator;
  v5 = a4;
  v6 = [(PGMemoryGenerator *)&v10 keyAssetCurationOptionsWithTriggeredMemory:a3 inGraph:v5];
  [v6 setComplete:{1, v10.receiver, v10.super_class}];
  v7 = [v5 meNodeCollection];

  v8 = [v7 localIdentifiers];
  [v6 setReferencePersonLocalIdentifiers:v8];

  [v6 setFocusOnPeople:1];

  return v6;
}

- (id)relevantCurationFeederForTriggeredMemory:(id)a3 relevantFeeder:(id)a4 inGraph:(id)a5 allowGuestAsset:(BOOL)a6 progressReporter:(id)a7
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a7;
  v13 = [v10 memoryFeatureNodes];
  v14 = [(PGGraphNodeCollection *)PGGraphNamedLocationNodeCollection subsetInCollection:v13];

  if ([v14 count] == 1)
  {
    v15 = [v10 memoryMomentNodes];
    v16 = [v14 anyNode];
    v17 = [(PGMemoryGenerator *)self memoryCurationSession];
    v18 = [v17 curationManager];
    v19 = [PGMemoryGenerationHelper assetFetchResultForMomentNodes:v15 inLocationOrAreaNode:v16 requireInteresting:1 curationManager:v18 progressReporter:v12];

    v20 = [(PGMemoryGenerator *)self memoryCurationSession];
    v21 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:v19 memoryCurationSession:v20 graph:v11];
  }

  else
  {
    v22 = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v25[0] = 67109120;
      v25[1] = [v14 count];
      _os_log_error_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_ERROR, "[PGPastSupersetMemoryGenerator] One frequent location node expected, found %d", v25, 8u);
    }

    v21 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)relevantFeederForTriggeredMemory:(id)a3 inGraph:(id)a4 allowGuestAsset:(BOOL)a5 progressReporter:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v9 memoryFeatureNodes];
  v13 = [(PGGraphNodeCollection *)PGGraphNamedLocationNodeCollection subsetInCollection:v12];

  if ([v13 count] == 1)
  {
    v14 = [v9 memoryMomentNodes];
    v15 = [v13 anyNode];
    v16 = [(PGMemoryGenerator *)self memoryCurationSession];
    v17 = [v16 curationManager];
    v18 = [PGMemoryGenerationHelper assetFetchResultForMomentNodes:v14 inLocationOrAreaNode:v15 requireInteresting:0 curationManager:v17 progressReporter:v11];

    v19 = [(PGMemoryGenerator *)self memoryCurationSession];
    v20 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:v18 memoryCurationSession:v19 graph:v10];
  }

  else
  {
    v21 = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24[0] = 67109120;
      v24[1] = [v13 count];
      _os_log_error_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_ERROR, "[PGPastSupersetMemoryGenerator] One frequent location node expected, found %d", v24, 8u);
    }

    v20 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)_enumeratePotentialMemoriesForProcessingWindow:(id)a3 graph:(id)a4 progressBlock:(id)a5 usingBlock:(id)a6
{
  v273[1] = *MEMORY[0x277D85DE8];
  v158 = a3;
  v162 = a4;
  v155 = a5;
  v166 = a6;
  v161 = objc_opt_new();
  v164 = [MEMORY[0x277D27690] yearFromDate:self->_localDate];
  v10 = MEMORY[0x277D27690];
  v172 = self;
  v11 = [(PGPastSupersetMemoryGenerator *)self localDate];
  v12 = [v10 dateByAddingMonths:-6 toDate:v11];

  v160 = v12;
  v13 = [(PGFeaturedMemoryGenerator *)self upperBoundLocalDate];

  v174 = v160;
  if (v13)
  {
    v14 = [(PGFeaturedMemoryGenerator *)self upperBoundLocalDate];
    v174 = [v160 earlierDate:v14];
  }

  v15 = objc_alloc(MEMORY[0x277CCA970]);
  v16 = [(PGPastSupersetMemoryGenerator *)self localDate];
  v188 = [v15 initWithStartDate:v160 endDate:v16];

  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [(PGMemoryGenerator *)self locationHelper];
  v19 = [(PGMemoryGenerator *)self memoryGenerationContext];
  v157 = [v19 momentNodesForProcessingWindow:v158 inGraph:v162];

  v159 = [v157 frequentLocationNodes];
  v20 = MEMORY[0x277D22BF8];
  v21 = +[PGGraphFrequentLocationNode momentOfFrequentLocation];
  v22 = [v20 adjacencyWithSources:v159 relation:v21 targetsClass:objc_opt_class()];

  v23 = MEMORY[0x277D22BF8];
  v24 = +[PGGraphFrequentLocationNode addressOfFrequentLocation];
  v25 = [v23 adjacencyWithSources:v159 relation:v24 targetsClass:objc_opt_class()];

  v26 = MEMORY[0x277D22BF8];
  v27 = [v25 targets];
  v28 = +[PGGraphAddressNode cityOfAddress];
  v29 = [v26 adjacencyWithSources:v27 relation:v28 targetsClass:objc_opt_class()];

  v245[0] = MEMORY[0x277D85DD0];
  v245[1] = 3221225472;
  v245[2] = __111__PGPastSupersetMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke;
  v245[3] = &unk_27887F0E8;
  v153 = v25;
  v246 = v153;
  v154 = v29;
  v247 = v154;
  v200 = v18;
  v248 = v200;
  v251 = 208;
  v152 = v22;
  v249 = v152;
  v156 = v17;
  v250 = v156;
  [v159 enumerateNodesUsingBlock:v245];
  v184 = [MEMORY[0x277CBEB18] array];
  v30 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"dateInterval" ascending:1];
  v263 = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v263 count:1];
  v32 = [v156 sortedArrayUsingDescriptors:v31];

  v243 = 0u;
  v244 = 0u;
  v241 = 0u;
  v242 = 0u;
  obj = v32;
  v186 = [obj countByEnumeratingWithState:&v241 objects:v262 count:16];
  if (v186)
  {
    v182 = *v242;
    do
    {
      v33 = 0;
      do
      {
        if (*v242 != v182)
        {
          v34 = v33;
          objc_enumerationMutation(obj);
          v33 = v34;
        }

        v189 = v33;
        v35 = *(*(&v241 + 1) + 8 * v33);
        context = objc_autoreleasePoolPush();
        v201 = [v35 dateInterval];
        v193 = [v35 momentNodes];
        v197 = [v35 supersetCityNodes];
        v195 = [v35 densestCloseLocationNodes];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v265 = __Block_byref_object_copy__1215;
        *v266 = __Block_byref_object_dispose__1216;
        *&v266[8] = 0;
        v237 = 0u;
        v238 = 0u;
        v239 = 0u;
        v240 = 0u;
        v36 = v184;
        v37 = [v36 countByEnumeratingWithState:&v237 objects:v261 count:16];
        if (v37)
        {
          v38 = *v238;
          while (2)
          {
            for (i = 0; i != v37; ++i)
            {
              if (*v238 != v38)
              {
                objc_enumerationMutation(v36);
              }

              v40 = *(*(&v237 + 1) + 8 * i);
              v41 = [v40 dateInterval];
              v42 = [v201 intersectionWithDateInterval:v41];
              [v42 duration];
              v44 = v43 > 7889400.0;

              if (v44)
              {
                v45 = [v40 densestCloseLocationNodes];
                v46 = [v45 containsCollection:v195];

                if (v46)
                {
                  v58 = *&buf[8];
                  v59 = v40;
                  v57 = *(v58 + 40);
                  *(v58 + 40) = v59;
LABEL_24:

                  goto LABEL_25;
                }

                v47 = [v40 supersetCityNodes];
                v48 = [v200 stateNodeFromCityNodeAsCollection:v197];
                v49 = [v40 stateNodeAsCollection];
                if (v49)
                {
                  if ([v48 intersectsCollection:v49])
                  {
                    v50 = [v200 addressNodesFromLocationNodes:v197];
                    v51 = [v50 anyNode];
                    [v51 coordinate];
                    v53 = v52;
                    v55 = v54;

                    v230[0] = MEMORY[0x277D85DD0];
                    v230[1] = 3221225472;
                    v230[2] = __111__PGPastSupersetMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke_239;
                    v230[3] = &unk_27887F110;
                    v56 = v200;
                    v235 = v53;
                    v236 = v55;
                    v234 = buf;
                    v231 = v56;
                    v232 = v40;
                    v57 = v47;
                    v233 = v57;
                    [v57 enumerateIdentifiersAsCollectionsWithBlock:v230];
                    LOBYTE(v50) = *(*&buf[8] + 40) == 0;

                    if ((v50 & 1) == 0)
                    {

                      goto LABEL_24;
                    }
                  }
                }
              }
            }

            v37 = [v36 countByEnumeratingWithState:&v237 objects:v261 count:16];
            if (v37)
            {
              continue;
            }

            break;
          }
        }

LABEL_25:

        v60 = *(*&buf[8] + 40);
        if (v60)
        {
          v61 = [v60 dateInterval];
          v62 = [v61 startDate];
          v63 = [v201 startDate];
          v64 = [v62 earlierDate:v63];

          v65 = [v61 endDate];
          v66 = [v201 endDate];
          v67 = [v65 laterDate:v66];

          v68 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v64 endDate:v67];
          [*(*&buf[8] + 40) setDateInterval:v68];
          v69 = [*(*&buf[8] + 40) momentNodes];
          v70 = [v69 collectionByFormingUnionWith:v193];
          [*(*&buf[8] + 40) setMomentNodes:v70];

          v71 = [*(*&buf[8] + 40) supersetCityNodes];
          v72 = [v71 collectionByFormingUnionWith:v197];
          [*(*&buf[8] + 40) setSupersetCityNodes:v72];

          v73 = [*(*&buf[8] + 40) densestCloseLocationNodes];
          v74 = [v73 collectionByFormingUnionWith:v195];
          [*(*&buf[8] + 40) setDensestCloseLocationNodes:v74];
        }

        else
        {
          v61 = [PGPastSupersetGroup pastSupersetGroupWithMomentNodes:v193 dateInterval:v201 supersetCityNodeAsCollection:v197 densestCloseLocationNodeAsCollection:v195 locationHelper:v200];
          [v36 addObject:v61];
        }

        _Block_object_dispose(buf, 8);
        objc_autoreleasePoolPop(context);
        v33 = v189 + 1;
      }

      while (v189 + 1 != v186);
      v186 = [obj countByEnumeratingWithState:&v241 objects:v262 count:16];
    }

    while (v186);
  }

  v224 = 0;
  v225 = &v224;
  v226 = 0x3032000000;
  v227 = __Block_byref_object_copy__1215;
  v228 = __Block_byref_object_dispose__1216;
  v229 = [(MAElementCollection *)[PGGraphLocationNodeCollection alloc] initWithGraph:v162];
  v202 = [MEMORY[0x277CBEB38] dictionary];
  v222 = 0u;
  v223 = 0u;
  v220 = 0u;
  v221 = 0u;
  v198 = v184;
  v75 = [v198 countByEnumeratingWithState:&v220 objects:v260 count:16];
  if (v75)
  {
    v76 = *v221;
    do
    {
      for (j = 0; j != v75; ++j)
      {
        if (*v221 != v76)
        {
          objc_enumerationMutation(v198);
        }

        v78 = *(*(&v220 + 1) + 8 * j);
        v79 = [v78 dateInterval];
        v80 = [v79 intersectsDateInterval:v188];

        v81 = [v78 densestCloseLocationNodes];
        v215[0] = MEMORY[0x277D85DD0];
        v215[1] = 3221225472;
        v215[2] = __111__PGPastSupersetMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke_2;
        v215[3] = &unk_27887F138;
        v216 = v202;
        v217 = v78;
        v219 = v80;
        v218 = &v224;
        [v81 enumerateNodesUsingBlock:v215];
      }

      v75 = [v198 countByEnumeratingWithState:&v220 objects:v260 count:16];
    }

    while (v75);
  }

  v82 = [v162 meNode];
  v163 = [v82 localIdentifier];

  v83 = [(PGMemoryGenerator *)v172 momentNodesWithBlockedFeatureCache];
  v170 = [v83 momentNodesWithBlockedFeature];

  v179 = [(PGMemoryGenerator *)v172 processedScenesAndFacesCache];
  v169 = [v179 momentNodesWithEnoughScenesProcessedInGraph:v162];
  v213 = 0u;
  v214 = 0u;
  v211 = 0u;
  v212 = 0u;
  v176 = v198;
  v180 = [v176 countByEnumeratingWithState:&v211 objects:v259 count:16];
  if (v180)
  {
    v167 = 0;
    v168 = 0;
    v165 = 0;
    v173 = 0;
    v177 = *v212;
    v178 = 0;
    do
    {
      for (k = 0; k != v180; ++k)
      {
        if (*v212 != v177)
        {
          objc_enumerationMutation(v176);
        }

        v84 = *(*(&v211 + 1) + 8 * k);
        v190 = [v84 momentNodes];
        if ([v179 allMomentNodesInCollectionHaveScenesProcessed:?])
        {
          v185 = [v84 densestCloseLocationNodes];
          v175 = v84;
          v85 = [v84 dateInterval];
          v196 = [v85 endDate];

          if ([v196 compare:v174] == 1)
          {
            ++v173;
          }

          else
          {
            if ([v225[5] intersectsCollection:v185])
            {
              v86 = [v185 collectionByIntersecting:v225[5]];
              v209 = 0u;
              v210 = 0u;
              v207 = 0u;
              v208 = 0u;
              v171 = v86;
              v87 = [v86 temporarySet];
              v88 = [v87 countByEnumeratingWithState:&v207 objects:v258 count:16];
              if (v88)
              {
                contexta = *v208;
                v183 = v87;
                while (2)
                {
                  v187 = v88;
                  for (m = 0; m != v187; ++m)
                  {
                    if (*v208 != contexta)
                    {
                      objc_enumerationMutation(v183);
                    }

                    v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v207 + 1) + 8 * m), "identifier")}];
                    v91 = [v202 objectForKeyedSubscript:v90];

                    v199 = v91;
                    v92 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
                    v273[0] = v92;
                    v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v273 count:1];
                    v94 = [v199 sortedArrayUsingDescriptors:v93];

                    v95 = [v94 firstObject];
                    v255 = 0u;
                    v253 = 0u;
                    v254 = 0u;
                    v252 = 0u;
                    v96 = v94;
                    v97 = [v96 countByEnumeratingWithState:&v252 objects:buf count:16];
                    if (v97)
                    {
                      v98 = *v253;
                      do
                      {
                        for (n = 0; n != v97; ++n)
                        {
                          if (*v253 != v98)
                          {
                            objc_enumerationMutation(v96);
                          }

                          v100 = *(*(&v252 + 1) + 8 * n);
                          if ([v100 intersectsDateInterval:v95])
                          {
                            goto LABEL_59;
                          }

                          v101 = [v95 startDate];
                          v102 = [v100 endDate];
                          [v101 timeIntervalSinceDate:v102];
                          v104 = v103 > 15778800.0;

                          if (!v104)
                          {
LABEL_59:
                            v105 = v100;

                            v95 = v105;
                          }
                        }

                        v97 = [v96 countByEnumeratingWithState:&v252 objects:buf count:16];
                      }

                      while (v97);
                    }

                    v106 = [v95 startDate];

                    [v106 timeIntervalSinceDate:v196];
                    v108 = v107 < 31557600.0;

                    if (v108)
                    {

                      ++v167;
                      goto LABEL_92;
                    }
                  }

                  v87 = v183;
                  v88 = [v183 countByEnumeratingWithState:&v207 objects:v258 count:16];
                  if (v88)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            v109 = [v190 collectionBySubtracting:v170];
            v110 = [v109 collectionByIntersecting:v169];

            v111 = [(PGMemoryGenerator *)v172 memoryGenerationContext];
            v112 = [v111 interestingWithAlternateJunkingSubsetFromMomentNodes:v110];

            if ([v112 count] > 4)
            {
              v113 = [v112 universalDateInterval];
              [v113 duration];
              v115 = v114;

              v116 = [v190 universalDateInterval];
              [v116 duration];
              v118 = v117;
              v119 = MEMORY[0x277D27690];
              v120 = [v116 startDate];
              v121 = [v119 yearFromDate:v120];

              v122 = MEMORY[0x277D27690];
              v123 = [v116 endDate];
              v124 = [v122 yearFromDate:v123];

              if (((v164 - v124) & ~((v164 - v124) >> 63)) >= 10)
              {
                v125 = 10;
              }

              else
              {
                v125 = (v164 - v124) & ~((v164 - v124) >> 63);
              }

              if (v124 < v121)
              {
                v126 = -1;
              }

              else
              {
                v126 = v124 - v121;
              }

              v127 = v126 + 1;
              if (v124 - v121 <= 9)
              {
                v128 = v127 / 10.0 * 0.4;
              }

              else
              {
                v128 = 0.4;
              }

              if (v115 < 7889400.0 || v115 < v118 / 3.0)
              {
                v165 = (v165 + 1);
              }

              else
              {
                v129 = [v175 supersetCityNodes];
                v130 = [v129 count];
                v131 = v129;
                if (v130 == 1 || (v132 = [v185 count], v131 = v185, v132 == 1))
                {
                  v133 = [v131 anyNode];
                }

                else
                {
                  v134 = [v175 stateNodeAsCollection];
                  v133 = [v134 anyNode];
                }

                v135 = [v185 collectionByFormingUnionWith:v129];
                v136 = [[PGPotentialPastSupersetMemory alloc] initWithSupersetLocationNode:v133 supersetDateInterval:v116 interestingMomentNodes:v112 momentNodes:v190];
                [(PGPotentialMemory *)v136 setScore:v128 + v125 / 10.0 * 0.6];
                v137 = [PGFeature featureWithNode:v133];
                if (v137)
                {
                  v138 = [MEMORY[0x277CBEB98] setWithObject:v137];
                  [(PGPotentialMemory *)v136 setFeatures:v138];
                }

                [(PGPotentialPastSupersetMemory *)v136 setSupersetLocationNodes:v135];
                if ([v163 length])
                {
                  v139 = [MEMORY[0x277CBEB98] setWithObject:v163];
                  [(PGPotentialMemory *)v136 setPeopleUUIDs:v139];
                }

                [v161 addObject:v136];
              }
            }

            else
            {
              ++v168;
            }
          }

LABEL_92:
        }

        else
        {
          ++v178;
        }
      }

      v180 = [v176 countByEnumeratingWithState:&v211 objects:v259 count:16];
    }

    while (v180);
  }

  else
  {
    v178 = 0;
    v167 = 0;
    v168 = 0;
    v165 = 0;
    v173 = 0;
  }

  v140 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
  v257[0] = v140;
  v141 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v257[1] = v141;
  v142 = [MEMORY[0x277CBEA60] arrayWithObjects:v257 count:2];

  [v161 sortUsingDescriptors:v142];
  v205 = 0u;
  v206 = 0u;
  v203 = 0u;
  v204 = 0u;
  v143 = v161;
  v144 = 0;
  v145 = [v143 countByEnumeratingWithState:&v203 objects:v256 count:16];
  if (v145)
  {
    v146 = *v204;
    do
    {
      for (ii = 0; ii != v145; ++ii)
      {
        if (*v204 != v146)
        {
          objc_enumerationMutation(v143);
        }

        v148 = *(*(&v203 + 1) + 8 * ii);
        [v148 computeContentScore];
        if (v149 > 0.5 || [(PGFeaturedMemoryGenerator *)v172 usesLowRequirements])
        {
          buf[0] = 0;
          v166[2](v166, v148, buf);
          if (buf[0])
          {
            goto LABEL_109;
          }
        }

        else
        {
          ++v144;
        }
      }

      v145 = [v143 countByEnumeratingWithState:&v203 objects:v256 count:16];
    }

    while (v145);
  }

LABEL_109:

  v150 = [(PGMemoryGenerator *)v172 loggingConnection];
  if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219776;
    *&buf[4] = 0;
    *&buf[12] = 2048;
    *&buf[14] = v168;
    *&buf[22] = 2048;
    v265 = v165;
    *v266 = 2048;
    *&v266[2] = v167;
    *&v266[10] = 2048;
    *&v266[12] = v173;
    v267 = 2048;
    v268 = v144;
    v269 = 2048;
    v270 = 0;
    v271 = 2048;
    v272 = v178;
    _os_log_impl(&dword_22F0FC000, v150, OS_LOG_TYPE_DEFAULT, "Memory Creation Request: Found %lu, rejected %lu not interseting enough, %lu small superset duration overlap, %lu not disjoint from recent close supersets, %lu untimely, %lu low scoring, %lu insufficiently Superseted, %lu not enough scenes processed", buf, 0x52u);
  }

  _Block_object_dispose(&v224, 8);
  v151 = *MEMORY[0x277D85DE8];
}

void __111__PGPastSupersetMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) targetsForSourceIdentifier:{objc_msgSend(v3, "identifier")}];
  v5 = [*(a1 + 40) targetsForSources:v4];
  if ([v5 count])
  {
    v18 = v4;
    v6 = [v5 anyNode];
    v7 = [*(a1 + 48) densestCloseLocationNodeFromLocationNode:v6 withDateInterval:0 locationMask:*(a1 + 72)];
    if (!v7)
    {
      v8 = +[PGLogging sharedLogging];
      v9 = [v8 loggingConnection];

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v6;
        _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "No densestLocationNode for supersetCityNode %@", buf, 0xCu);
      }

      v7 = v6;
    }

    v10 = [*(a1 + 56) targetsForSourceIdentifier:{objc_msgSend(v3, "identifier")}];
    v11 = [v3 universalDateInterval];
    v12 = [v6 collection];
    v13 = [v7 locationNodeCollection];
    v14 = [PGPastSupersetGroup pastSupersetGroupWithMomentNodes:v10 dateInterval:v11 supersetCityNodeAsCollection:v12 densestCloseLocationNodeAsCollection:v13 locationHelper:*(a1 + 48)];

    [*(a1 + 64) addObject:v14];
    v4 = v18;
  }

  else
  {
    v15 = +[PGLogging sharedLogging];
    v6 = [v15 loggingConnection];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = [v4 anyNode];
      *buf = 138477827;
      v20 = v17;
      _os_log_error_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_ERROR, "No supersetCityNode for home superset best address node %{private}@", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __111__PGPastSupersetMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke_239(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) addressNodesFromLocationNodes:?];
  v7 = [v6 anyNode];
  [v7 coordinate];
  v11 = v8;
  v12 = v9;

  CLLocationCoordinate2DGetDistanceFrom();
  if (v10 <= 160000.0)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 40));
    goto LABEL_5;
  }

  if (v10 > [*(a1 + 48) count] * 160000.0)
  {
LABEL_5:
    *a4 = 1;
  }
}

void __111__PGPastSupersetMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a2, "identifier")}];
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v12];
  }

  v5 = [*(a1 + 32) objectForKeyedSubscript:v12];
  v6 = [*(a1 + 40) dateInterval];
  [v5 addObject:v6];

  if (*(a1 + 56) == 1)
  {
    v7 = *(*(*(a1 + 48) + 8) + 40);
    v8 = [*(a1 + 40) densestCloseLocationNodes];
    v9 = [v7 collectionByFormingUnionWith:v8];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

@end
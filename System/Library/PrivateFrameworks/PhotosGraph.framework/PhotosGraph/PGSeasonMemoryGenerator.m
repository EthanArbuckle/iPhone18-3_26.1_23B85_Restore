@interface PGSeasonMemoryGenerator
+ (void)enumerateMomentNodesBySeasonInYearFromMomentNodes:(id)a3 loggingConnection:(id)a4 usingBlock:(id)a5;
- (PGSeasonMemoryGenerator)initWithMemoryGenerationContext:(id)a3;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4;
- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4;
@end

@implementation PGSeasonMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a7;
  v12 = [v10 memoryFeatureNodes];
  v13 = [(PGGraphNodeCollection *)PGGraphSeasonNodeCollection subsetInCollection:v12];

  if ([v13 count] == 1)
  {
    v14 = [v13 anyNode];
    v15 = [v14 name];

    v16 = [PGSeasonMemoryTitleGenerator alloc];
    v17 = [v10 memoryMomentNodes];
    v18 = [v17 set];
    v19 = [(PGSeasonMemoryTitleGenerator *)v16 initWithMomentNodes:v18 seasonName:v15 titleGenerationContext:v11];
  }

  else
  {
    v20 = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23[0] = 67109120;
      v23[1] = [v13 count];
      _os_log_error_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_ERROR, "[PGSeasonMemoryGenerator] One season node expected, found %d", v23, 8u);
    }

    v19 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4
{
  v6.receiver = self;
  v6.super_class = PGSeasonMemoryGenerator;
  v4 = [(PGMemoryGenerator *)&v6 keyAssetCurationOptionsWithTriggeredMemory:a3 inGraph:a4];
  [v4 setPrefilterAssetsWithFacesThreshold:2.22507386e-308];

  return v4;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(PGGraphNodeCollection *)PGGraphMomentNodeCollection nodesInGraph:v6];
  v8 = [v6 meNodeCollection];
  v9 = [v8 homeOrWorkNodes];
  v10 = [v9 addressNodes];
  v11 = [v10 momentNodes];
  v12 = [v7 collectionBySubtracting:v11];

  v13 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection nodesInGraph:v6];
  v14 = [v13 momentNodes];
  v15 = [v12 collectionByFormingUnionWith:v14];

  v17 = 0;
  v16 = [(MAElementCollection *)[PGGraphFeatureNodeCollection alloc] initWithGraph:v6];

  v5[2](v5, v15, v16, &v17);
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    result = 14001;
  }

  else
  {
    v4 = a3;
    v5 = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = 138412546;
      v10 = v8;
      v11 = 1024;
      v12 = v4;
      _os_log_error_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_ERROR, "[%@] Returning PHMemoryCategorySubcategoryNone for PGOverTimeMemoryType %d, this should never happen", &v9, 0x12u);
    }

    result = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (PGSeasonMemoryGenerator)initWithMemoryGenerationContext:(id)a3
{
  v10.receiver = self;
  v10.super_class = PGSeasonMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v10 initWithMemoryGenerationContext:a3];
  v4 = v3;
  if (v3)
  {
    v3->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v3->_requireFaceProcessingMeetsThresholdOverTime = 0;
    v5 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v4->_momentRequirements;
    v4->_momentRequirements = v5;

    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterUninterestingForMemories:1];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setMinimumNumberOfPersons:1];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setAboveContentScoreThreshold:0.5];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
    v7 = objc_alloc_init(PGFeaturedTimePeriodMemoryConfiguration);
    featuredSeasonConfiguration = v4->_featuredSeasonConfiguration;
    v4->_featuredSeasonConfiguration = v7;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredSeasonConfiguration setMinimumNumberOfMoments:6];
    [(PGOverTimeMemoryConfiguration *)v4->_featuredSeasonConfiguration setMinimumNumberOfAssetsInExtendedCuration:13];
    [(PGOverTimeMemoryConfiguration *)v4->_featuredSeasonConfiguration setAboveMomentAverageContentScoreThreshold:0.5];
  }

  return v4;
}

+ (void)enumerateMomentNodesBySeasonInYearFromMomentNodes:(id)a3 loggingConnection:(id)a4 usingBlock:(id)a5
{
  v30[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([MEMORY[0x277D27690] currentLocaleSupportsSeasons])
  {
    v10 = [v7 graph];
    v11 = MEMORY[0x277D22C90];
    v12 = +[PGGraphMomentNode dateOfMoment];
    v30[0] = v12;
    v13 = +[PGGraphDateNode seasonOfDate];
    v30[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v15 = [v11 chain:v14];

    v16 = [MEMORY[0x277D22BF8] adjacencyWithSources:v7 relation:v15 targetsClass:objc_opt_class()];
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __106__PGSeasonMemoryGenerator_enumerateMomentNodesBySeasonInYearFromMomentNodes_loggingConnection_usingBlock___block_invoke;
    v27[3] = &unk_2788898A0;
    v18 = v17;
    v28 = v18;
    [v7 enumerateUniversalStartDatesUsingBlock:v27];
    v19 = [v16 transposed];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __106__PGSeasonMemoryGenerator_enumerateMomentNodesBySeasonInYearFromMomentNodes_loggingConnection_usingBlock___block_invoke_2;
    v23[3] = &unk_278887228;
    v24 = v18;
    v25 = v10;
    v26 = v9;
    v20 = v10;
    v21 = v18;
    [v19 enumerateTargetsBySourceWithBlock:v23];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "[PGSeasonMemoryGenerator] Current locale does not support seasons, not generating season based memories.", buf, 2u);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __106__PGSeasonMemoryGenerator_enumerateMomentNodesBySeasonInYearFromMomentNodes_loggingConnection_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithUnsignedInteger:a2];
  [v4 setObject:v6 forKeyedSubscript:v7];
}

void __106__PGSeasonMemoryGenerator_enumerateMomentNodesBySeasonInYearFromMomentNodes_loggingConnection_usingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v65 = *MEMORY[0x277D85DE8];
  v47 = a2;
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v42 = v7;
  v9 = [v7 elementIdentifiers];
  v10 = [v9 indexArray];

  v11 = [v10 countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v59;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v59 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v58 + 1) + 8 * i);
        v16 = [*(a1 + 32) objectForKeyedSubscript:v15];
        [v8 setObject:v16 forKeyedSubscript:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v12);
  }

  v17 = [v8 keysSortedByValueUsingSelector:sel_compare_];
  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = objc_alloc_init(MEMORY[0x277D22BD0]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v17;
  v19 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
  v49 = a4;
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v55;
LABEL_10:
    v23 = 0;
    while (1)
    {
      v24 = v21;
      if (*v55 != v22)
      {
        objc_enumerationMutation(obj);
      }

      if (*a4)
      {
        break;
      }

      v25 = *(*(&v54 + 1) + 8 * v23);
      v26 = [v25 unsignedIntegerValue];
      v27 = [*(a1 + 32) objectForKeyedSubscript:v25];
      v21 = v27;
      if (v24)
      {
        [v27 timeIntervalSinceDate:v24];
        if (v28 > 10368000.0)
        {
          [v44 addObject:v18];
          v29 = objc_alloc_init(MEMORY[0x277D22BD0]);

          v18 = v29;
          a4 = v49;
        }
      }

      [v18 addIdentifier:v26];

      if (v20 == ++v23)
      {
        v20 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
        if (v20)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  if ((*a4 & 1) == 0)
  {
    if ([v18 count])
    {
      [v44 addObject:v18];
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v43 = v44;
    v46 = [v43 countByEnumeratingWithState:&v50 objects:v62 count:16];
    if (v46)
    {
      v45 = *v51;
LABEL_27:
      v30 = 0;
      while (1)
      {
        if (*v51 != v45)
        {
          objc_enumerationMutation(v43);
        }

        if (*a4)
        {
          break;
        }

        v31 = *(*(&v50 + 1) + 8 * v30);
        v32 = [PGGraphMomentNodeCollection alloc];
        v33 = *(a1 + 40);
        v34 = [objc_alloc(MEMORY[0x277D22BB0]) initWithElementIdentifier:{objc_msgSend(v31, "firstElement")}];
        v35 = [(MAElementCollection *)v32 initWithGraph:v33 elementIdentifiers:v34];

        v36 = [(PGGraphMomentNodeCollection *)v35 localStartDates];
        v37 = [v36 anyObject];

        v38 = [MEMORY[0x277D27690] yearFromDate:v37];
        if ([MEMORY[0x277D27690] monthFromDate:v37] == 12)
        {
          ++v38;
        }

        v39 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithGraph:*(a1 + 40) elementIdentifiers:v31];
        v40 = [PGGraphYearNodeCollection yearNodesForYear:v38 inGraph:*(a1 + 40)];
        (*(*(a1 + 48) + 16))();

        a4 = v49;
        if (v46 == ++v30)
        {
          v46 = [v43 countByEnumeratingWithState:&v50 objects:v62 count:16];
          if (v46)
          {
            goto LABEL_27;
          }

          break;
        }
      }
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

@end
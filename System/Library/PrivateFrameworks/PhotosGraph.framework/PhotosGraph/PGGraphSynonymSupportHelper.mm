@interface PGGraphSynonymSupportHelper
+ (id)localizedSynonymsForLocalizationKey:(id)key;
+ (id)synonymsByIndexCategoryMaskForGraph:(id)graph;
@end

@implementation PGGraphSynonymSupportHelper

+ (id)synonymsByIndexCategoryMaskForGraph:(id)graph
{
  v64 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v4 = objc_opt_new();
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [PGGraphSynonymSupportHelper localizedSynonymsForLocalizationKey:@"PGHighlightTripSearchableText"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"PGHighlightTripSearchableText" value:@"PGHighlightTripSearchableText" table:@"Localizable"];
  [v5 setObject:v6 forKeyedSubscript:v8];

  v43 = v5;
  [v4 setObject:v5 forKeyedSubscript:&unk_284484380];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke;
  v60[3] = &unk_2788877E0;
  v10 = v9;
  v61 = v10;
  [graphCopy enumerateNodesWithLabel:0 domain:700 usingBlock:v60];
  v42 = v10;
  [v4 setObject:v10 forKeyedSubscript:&unk_284484398];
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_245;
  v58[3] = &unk_278888D30;
  v12 = v11;
  v59 = v12;
  [graphCopy enumerateNodesWithLabel:@"Season" domain:400 usingBlock:v58];
  v41 = v12;
  [v4 setObject:v12 forKeyedSubscript:&unk_2844843B0];
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_249;
  v56[3] = &unk_278888D00;
  v14 = v13;
  v57 = v14;
  [graphCopy enumerateNodesWithLabel:@"Holiday" domain:401 usingBlock:v56];
  v40 = v14;
  [v4 setObject:v14 forKeyedSubscript:&unk_2844843C8];
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_253;
  v54[3] = &unk_2788875F8;
  v16 = v15;
  v55 = v16;
  [graphCopy enumerateNodesWithLabel:0 domain:502 usingBlock:v54];
  v39 = v16;
  [v4 setObject:v16 forKeyedSubscript:&unk_2844843E0];
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_257;
  v52[3] = &unk_2788875D0;
  v18 = v17;
  v53 = v18;
  [graphCopy enumerateNodesWithLabel:0 domain:501 usingBlock:v52];
  [v4 setObject:v18 forKeyedSubscript:&unk_2844843F8];
  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_261;
  v50[3] = &unk_278887118;
  v20 = v19;
  v51 = v20;
  [graphCopy enumerateNodesWithLabel:0 domain:901 usingBlock:v50];
  [v4 setObject:v20 forKeyedSubscript:&unk_284484410];
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  +[PGUserDefaults relationshipTagMinConfidenceThreshold];
  v23 = v22;
  v24 = +[PGLogging sharedLogging];
  loggingConnection = [v24 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v63 = v23;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Using PGUserDefaults.relationshipTagMinConfidenceThreshold value %f", buf, 0xCu);
  }

  v26 = [PGGraphPersonRelationshipTagNode personWithTagWithConfidence:v23];
  v27 = [(PGGraphNodeCollection *)PGGraphPersonRelationshipTagNodeCollection nodesInGraph:graphCopy];
  v28 = [MEMORY[0x277D22BF8] adjacencyWithSources:v27 relation:v26 targetsClass:objc_opt_class()];
  transposed = [v28 transposed];

  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
  targets = [transposed targets];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_270;
  v48[3] = &unk_278887140;
  v32 = v30;
  v49 = v32;
  [targets enumerateNodesUsingBlock:v48];

  sources = [transposed sources];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_2;
  v44[3] = &unk_278887190;
  v45 = transposed;
  v46 = v32;
  v47 = v21;
  v34 = v21;
  v35 = v32;
  v36 = transposed;
  [sources enumerateUUIDsUsingBlock:v44];

  [v4 setObject:v34 forKeyedSubscript:&unk_284484428];
  v37 = *MEMORY[0x277D85DE8];

  return v4;
}

void __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 localizedName];
  v4 = [v3 localizedSynonyms];

  [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
}

void __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_245(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 localizedName];
  v4 = [v3 localizedSynonyms];

  [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
}

void __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_249(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 localizedName];
  v4 = [v3 localizedSynonyms];

  if ([v4 count])
  {
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
  }
}

void __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_253(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 localizedName];
  v4 = [v3 localizedSynonyms];

  [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
}

void __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_257(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 localizedName];
  v4 = [v3 localizedSynonyms];

  [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
}

void __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_261(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 localizedName];
  v4 = [v3 localizedSynonyms];

  if (v5 && v4)
  {
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
  }
}

void __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_270(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = [v3 localizedSynonyms];
  v4 = [v3 localizedName];
  v5 = [v10 arrayByAddingObject:v4];
  v6 = *(a1 + 32);
  v7 = MEMORY[0x277CCABB0];
  v8 = [v3 identifier];

  v9 = [v7 numberWithUnsignedInteger:v8];
  [v6 setObject:v5 forKeyedSubscript:v9];
}

void __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_2(id *a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = [a1[4] targetsForSourceIdentifier:a2];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_3;
  v13 = &unk_278887168;
  v14 = a1[5];
  v15 = v7;
  v9 = v7;
  [v8 enumerateIdentifiersAsCollectionsWithBlock:&v10];
  [a1[6] setObject:v9 forKeyedSubscript:{v6, v10, v11, v12, v13}];
}

void __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v5 = [v3 objectForKeyedSubscript:v4];

  [*(a1 + 40) addObjectsFromArray:v5];
}

+ (id)localizedSynonymsForLocalizationKey:(id)key
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [key stringByAppendingString:@"Synonyms"];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:v3 table:@"Localizable"];

  if ([v5 isEqualToString:v3])
  {
    v6 = +[PGLogging sharedLogging];
    loggingConnection = [v6 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Missing localization for synonyms key %@", &v11, 0xCu);
    }

    goto LABEL_7;
  }

  if (![v5 length] || (objc_msgSend(v5, "isEqualToString:", @"NULL") & 1) != 0)
  {
LABEL_7:
    v8 = MEMORY[0x277CBEBF8];
    goto LABEL_8;
  }

  v8 = [v5 componentsSeparatedByString:@"|"];
LABEL_8:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end
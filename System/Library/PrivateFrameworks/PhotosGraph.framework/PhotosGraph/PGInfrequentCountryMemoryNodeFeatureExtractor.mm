@interface PGInfrequentCountryMemoryNodeFeatureExtractor
+ (id)_labelsForVersion:(int64_t)a3;
+ (id)inferredUserLanguageCodesFromGraph:(id)a3;
- (PGInfrequentCountryMemoryNodeFeatureExtractor)initWithFrequentCountryLabels:(id)a3 version:(int64_t)a4 graph:(id)a5 error:(id *)a6;
- (PGInfrequentCountryMemoryNodeFeatureExtractor)initWithVersion:(int64_t)a3 graph:(id)a4 error:(id *)a5;
@end

@implementation PGInfrequentCountryMemoryNodeFeatureExtractor

- (PGInfrequentCountryMemoryNodeFeatureExtractor)initWithVersion:(int64_t)a3 graph:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (v8)
  {
    v9 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:v8];
    v10 = [v9 addressNodes];
    v11 = [v10 countryNodes];
    v12 = [v11 names];

    if ([v12 count])
    {
      v13 = v12;
    }

    else
    {
      v13 = MEMORY[0x277CBEBF8];
    }

    v14 = [PGInfrequentCountryFeatureExtractor inferredUserLanguageCodesFromGraph:v8];
    if ([v14 count])
    {
      v15 = [v13 arrayByAddingObjectsFromArray:v14];

      v13 = v15;
    }
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  v16 = [MEMORY[0x277CBEB98] setWithArray:v13];
  v17 = [(PGInfrequentCountryMemoryNodeFeatureExtractor *)self initWithFrequentCountryLabels:v16 version:a3 graph:v8 error:a5];

  return v17;
}

- (PGInfrequentCountryMemoryNodeFeatureExtractor)initWithFrequentCountryLabels:(id)a3 version:(int64_t)a4 graph:(id)a5 error:(id *)a6
{
  v22[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [objc_opt_class() _labelsForVersion:a4];
  v10 = MEMORY[0x277D22C90];
  v11 = +[PGGraphLocationCountryNode filter];
  v12 = [v11 relation];
  v22[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v14 = [v10 chain:v13];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __99__PGInfrequentCountryMemoryNodeFeatureExtractor_initWithFrequentCountryLabels_version_graph_error___block_invoke;
  v20[3] = &unk_27887FF60;
  v21 = v8;
  v19.receiver = self;
  v19.super_class = PGInfrequentCountryMemoryNodeFeatureExtractor;
  v15 = v8;
  v16 = [(PGGraphMemoryNodeFeatureExtractor *)&v19 initWithName:@"Country" featureNames:v9 relation:v14 labelForTargetBlock:v20];

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

id __99__PGInfrequentCountryMemoryNodeFeatureExtractor_initWithFrequentCountryLabels_version_graph_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 name];
  if ([v4 containsObject:v5])
  {
    v6 = [v3 name];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_labelsForVersion:(int64_t)a3
{
  if (a3 == 1)
  {
    return &unk_284485640;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

+ (id)inferredUserLanguageCodesFromGraph:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [v3 inferredUserLocales];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) languageCode];
        v11 = [v10 uppercaseString];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

@end
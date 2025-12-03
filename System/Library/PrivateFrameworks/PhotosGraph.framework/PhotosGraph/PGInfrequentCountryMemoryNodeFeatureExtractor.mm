@interface PGInfrequentCountryMemoryNodeFeatureExtractor
+ (id)_labelsForVersion:(int64_t)version;
+ (id)inferredUserLanguageCodesFromGraph:(id)graph;
- (PGInfrequentCountryMemoryNodeFeatureExtractor)initWithFrequentCountryLabels:(id)labels version:(int64_t)version graph:(id)graph error:(id *)error;
- (PGInfrequentCountryMemoryNodeFeatureExtractor)initWithVersion:(int64_t)version graph:(id)graph error:(id *)error;
@end

@implementation PGInfrequentCountryMemoryNodeFeatureExtractor

- (PGInfrequentCountryMemoryNodeFeatureExtractor)initWithVersion:(int64_t)version graph:(id)graph error:(id *)error
{
  graphCopy = graph;
  if (graphCopy)
  {
    v9 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:graphCopy];
    addressNodes = [v9 addressNodes];
    countryNodes = [addressNodes countryNodes];
    names = [countryNodes names];

    if ([names count])
    {
      v13 = names;
    }

    else
    {
      v13 = MEMORY[0x277CBEBF8];
    }

    v14 = [PGInfrequentCountryFeatureExtractor inferredUserLanguageCodesFromGraph:graphCopy];
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
  v17 = [(PGInfrequentCountryMemoryNodeFeatureExtractor *)self initWithFrequentCountryLabels:v16 version:version graph:graphCopy error:error];

  return v17;
}

- (PGInfrequentCountryMemoryNodeFeatureExtractor)initWithFrequentCountryLabels:(id)labels version:(int64_t)version graph:(id)graph error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  v9 = [objc_opt_class() _labelsForVersion:version];
  v10 = MEMORY[0x277D22C90];
  v11 = +[PGGraphLocationCountryNode filter];
  relation = [v11 relation];
  v22[0] = relation;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v14 = [v10 chain:v13];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __99__PGInfrequentCountryMemoryNodeFeatureExtractor_initWithFrequentCountryLabels_version_graph_error___block_invoke;
  v20[3] = &unk_27887FF60;
  v21 = labelsCopy;
  v19.receiver = self;
  v19.super_class = PGInfrequentCountryMemoryNodeFeatureExtractor;
  v15 = labelsCopy;
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

+ (id)_labelsForVersion:(int64_t)version
{
  if (version == 1)
  {
    return &unk_284485640;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

+ (id)inferredUserLanguageCodesFromGraph:(id)graph
{
  v19 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  inferredUserLocales = [graphCopy inferredUserLocales];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [inferredUserLocales countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(inferredUserLocales);
        }

        languageCode = [*(*(&v14 + 1) + 8 * i) languageCode];
        uppercaseString = [languageCode uppercaseString];
        [v4 addObject:uppercaseString];
      }

      v7 = [inferredUserLocales countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

@end
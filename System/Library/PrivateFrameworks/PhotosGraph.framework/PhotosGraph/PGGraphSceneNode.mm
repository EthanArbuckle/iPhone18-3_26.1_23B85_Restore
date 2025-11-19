@interface PGGraphSceneNode
+ (MARelation)momentOfReliableScene;
+ (MARelation)momentOfScene;
+ (MARelation)momentOfSceneWithHighConfidenceAssets;
+ (id)filter;
+ (id)filterForSceneName:(id)a3;
+ (id)filterForSceneNames:(id)a3;
+ (id)filterWithSceneIdentifiers:(id)a3;
+ (id)momentOfSceneWithDominantSceneAssets;
+ (id)momentOfSceneWithSearchConfidenceAssets;
+ (id)suggestableSceneNames;
- (BOOL)hasProperties:(id)a3;
- (BOOL)isSuitableForSuggestions;
- (NSString)featureIdentifier;
- (PGGraphSceneNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5;
- (PGGraphSceneNode)initWithSceneName:(id)a3 sceneIdentifier:(unint64_t)a4 level:(unint64_t)a5 isIndexed:(BOOL)a6 localizedName:(id)a7 localizedSynonyms:(id)a8;
- (PGGraphSceneNode)initWithSceneTaxonomyNode:(id)a3 level:(unint64_t)a4;
- (PGGraphSceneNodeCollection)collection;
- (id)initForTestingWithSceneName:(id)a3;
- (id)momentNodes;
- (id)propertyDictionary;
- (unint64_t)numberOfAssets;
- (unint64_t)numberOfDominantSceneAssets;
- (unint64_t)numberOfHighConfidenceAssets;
- (unint64_t)numberOfSearchConfidenceAssets;
- (unsigned)domain;
@end

@implementation PGGraphSceneNode

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PGGraphSceneNode *)self label];
  v7 = [v3 stringWithFormat:@"%@|%@", v5, v6];

  return v7;
}

- (id)momentNodes
{
  v2 = [(PGGraphSceneNode *)self collection];
  v3 = [v2 momentNodes];
  v4 = [v3 temporarySet];

  return v4;
}

- (unint64_t)numberOfDominantSceneAssets
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [(PGGraphSceneNode *)self collection];
  v3 = [(PGGraphEdgeCollection *)PGGraphSceneEdgeCollection edgesToNodes:v2];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__PGGraphSceneNode_numberOfDominantSceneAssets__block_invoke;
  v6[3] = &unk_278881BA0;
  v6[4] = &v7;
  [v3 enumerateEdgesUsingBlock:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __47__PGGraphSceneNode_numberOfDominantSceneAssets__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 numberOfDominantSceneAssets];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (unint64_t)numberOfSearchConfidenceAssets
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [(PGGraphSceneNode *)self collection];
  v3 = [(PGGraphEdgeCollection *)PGGraphSceneEdgeCollection edgesToNodes:v2];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__PGGraphSceneNode_numberOfSearchConfidenceAssets__block_invoke;
  v6[3] = &unk_278881BA0;
  v6[4] = &v7;
  [v3 enumerateEdgesUsingBlock:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __50__PGGraphSceneNode_numberOfSearchConfidenceAssets__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 numberOfSearchConfidenceAssets];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (unint64_t)numberOfHighConfidenceAssets
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [(PGGraphSceneNode *)self collection];
  v3 = [(PGGraphEdgeCollection *)PGGraphSceneEdgeCollection edgesToNodes:v2];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__PGGraphSceneNode_numberOfHighConfidenceAssets__block_invoke;
  v6[3] = &unk_278881BA0;
  v6[4] = &v7;
  [v3 enumerateEdgesUsingBlock:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __48__PGGraphSceneNode_numberOfHighConfidenceAssets__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 numberOfHighConfidenceAssets];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (unint64_t)numberOfAssets
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [(PGGraphSceneNode *)self collection];
  v3 = [(PGGraphEdgeCollection *)PGGraphSceneEdgeCollection edgesToNodes:v2];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__PGGraphSceneNode_numberOfAssets__block_invoke;
  v6[3] = &unk_278881BA0;
  v6[4] = &v7;
  [v3 enumerateEdgesUsingBlock:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __34__PGGraphSceneNode_numberOfAssets__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 numberOfAssets];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (BOOL)isSuitableForSuggestions
{
  v3 = [objc_opt_class() suggestableSceneNames];
  v4 = [(PGGraphSceneNode *)self label];
  v5 = [v3 containsObject:v4];

  if (v5)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v9[3] = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__PGGraphSceneNode_isSuitableForSuggestions__block_invoke;
    v8[3] = &unk_278881B78;
    v8[4] = v9;
    v8[5] = &v10;
    [(PGGraphSceneNode *)self enumerateMomentEdgesAndNodesUsingBlock:v8];
    v6 = *(v11 + 24);
    _Block_object_dispose(v9, 8);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t __44__PGGraphSceneNode_isSuitableForSuggestions__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isSearchableForEvent];
  if (result)
  {
    if (++*(*(*(a1 + 32) + 8) + 24))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  return result;
}

- (PGGraphSceneNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphSceneNodeCollection alloc] initWithNode:self];

  return v2;
}

- (unsigned)domain
{
  v2 = objc_opt_class();

  return [v2 domain];
}

- (id)propertyDictionary
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"sceneIdentifier";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_sceneIdentifier];
  v11[0] = v3;
  v10[1] = @"level";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 32)];
  v11[1] = v4;
  v10[2] = @"isIndexed";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isIndexed];
  localizedName = self->_localizedName;
  v11[2] = v5;
  v11[3] = localizedName;
  v10[3] = @"localizedName";
  v10[4] = @"localizedSynonyms";
  v11[4] = self->_localizedSynonyms;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 objectForKeyedSubscript:@"sceneIdentifier"];
    v7 = v6;
    if (v6 && [v6 unsignedLongLongValue] != self->_sceneIdentifier)
    {
      goto LABEL_15;
    }

    v8 = [v5 objectForKeyedSubscript:@"level"];
    v7 = v8;
    if (v8)
    {
      if ([v8 unsignedIntegerValue] != *(self + 32))
      {
        goto LABEL_15;
      }
    }

    v9 = [v5 objectForKeyedSubscript:@"isIndexed"];
    v7 = v9;
    if (v9)
    {
      if (self->_isIndexed != [v9 BOOLValue])
      {
        goto LABEL_15;
      }
    }

    v10 = [v5 objectForKeyedSubscript:@"localizedName"];
    v7 = v10;
    if (v10)
    {
      if (![v10 isEqual:self->_localizedName])
      {
        goto LABEL_15;
      }
    }

    v11 = [v5 objectForKeyedSubscript:@"localizedSynonyms"];
    v7 = v11;
    if (v11 && ![v11 isEqual:self->_localizedSynonyms])
    {
LABEL_15:
      v12 = 0;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (id)initForTestingWithSceneName:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [v4 set];
  v7 = [(PGGraphSceneNode *)self initWithSceneName:v5 sceneIdentifier:1 level:1 isIndexed:1 localizedName:v5 localizedSynonyms:v6];

  return v7;
}

- (PGGraphSceneNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [v7 objectForKeyedSubscript:@"sceneIdentifier"];
  v10 = [v9 unsignedLongLongValue];

  v11 = [v7 objectForKeyedSubscript:@"level"];
  v12 = [v11 unsignedIntegerValue];

  v13 = [v7 objectForKeyedSubscript:@"isIndexed"];
  v14 = [v13 BOOLValue];

  v15 = [v7 objectForKeyedSubscript:@"localizedName"];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v8;
  }

  v18 = v17;

  v19 = objc_alloc(MEMORY[0x277CBEB98]);
  v20 = [v7 objectForKeyedSubscript:@"localizedSynonyms"];

  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = &stru_2843F5C58;
  }

  v22 = [(__CFString *)v21 componentsSeparatedByString:@", "];
  v23 = [v19 initWithArray:v22];

  v24 = [(PGGraphSceneNode *)self initWithSceneName:v8 sceneIdentifier:v10 level:v12 isIndexed:v14 localizedName:v18 localizedSynonyms:v23];
  return v24;
}

- (PGGraphSceneNode)initWithSceneName:(id)a3 sceneIdentifier:(unint64_t)a4 level:(unint64_t)a5 isIndexed:(BOOL)a6 localizedName:(id)a7 localizedSynonyms:(id)a8
{
  v11 = a5;
  v28[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a7;
  v16 = a8;
  v27.receiver = self;
  v27.super_class = PGGraphSceneNode;
  v17 = [(PGGraphNode *)&v27 init];
  if (v17)
  {
    v18 = [v14 capitalizedString];
    label = v17->_label;
    v17->_label = v18;

    v17->_sceneIdentifier = a4;
    *(v17 + 32) = v11;
    v17->_isIndexed = a6;
    objc_storeStrong(&v17->_localizedName, a7);
    v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
    v28[0] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v22 = [v16 sortedArrayUsingDescriptors:v21];
    v23 = [v22 componentsJoinedByString:{@", "}];
    localizedSynonyms = v17->_localizedSynonyms;
    v17->_localizedSynonyms = v23;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v17;
}

- (PGGraphSceneNode)initWithSceneTaxonomyNode:(id)a3 level:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 name];
  v8 = [v6 localizedName];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v7 capitalizedString];
  }

  v11 = v10;

  v12 = [v6 localizedSynonyms];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x277CBEB98] set];
  }

  v15 = v14;

  v16 = -[PGGraphSceneNode initWithSceneName:sceneIdentifier:level:isIndexed:localizedName:localizedSynonyms:](self, "initWithSceneName:sceneIdentifier:level:isIndexed:localizedName:localizedSynonyms:", v7, [v6 identifier], a4, objc_msgSend(v6, "isIndexed"), v11, v15);
  return v16;
}

+ (id)momentOfSceneWithDominantSceneAssets
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphSceneEdge dominantSceneAssetsFilter];
  v4 = [v3 inRelation];
  v11[0] = v4;
  v5 = +[PGGraphMomentNode filter];
  v6 = [v5 relation];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v2 chain:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)momentOfSceneWithSearchConfidenceAssets
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphSceneEdge searchConfidenceAssetsFilter];
  v4 = [v3 inRelation];
  v11[0] = v4;
  v5 = +[PGGraphMomentNode filter];
  v6 = [v5 relation];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v2 chain:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (MARelation)momentOfSceneWithHighConfidenceAssets
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphSceneEdge highConfidenceAssetsFilter];
  v4 = [v3 inRelation];
  v11[0] = v4;
  v5 = +[PGGraphMomentNode filter];
  v6 = [v5 relation];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v2 chain:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (MARelation)momentOfReliableScene
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphSceneEdge isReliableFilter];
  v4 = [v3 inRelation];
  v11[0] = v4;
  v5 = +[PGGraphMomentNode filter];
  v6 = [v5 relation];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v2 chain:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (MARelation)momentOfScene
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphSceneEdge filter];
  v4 = [v3 inRelation];
  v11[0] = v4;
  v5 = +[PGGraphMomentNode filter];
  v6 = [v5 relation];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v2 chain:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)suggestableSceneNames
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PGGraphSceneNode_suggestableSceneNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (suggestableSceneNames_onceToken != -1)
  {
    dispatch_once(&suggestableSceneNames_onceToken, block);
  }

  v2 = suggestableSceneNames_suggestableSceneNames;

  return v2;
}

void __41__PGGraphSceneNode_suggestableSceneNames__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"SuggestableSceneNames" withExtension:@"plist"];

  v4 = MEMORY[0x277CBEB98];
  v12 = 0;
  v5 = [MEMORY[0x277CBEA60] arrayWithContentsOfURL:v3 error:&v12];
  v6 = v12;
  v7 = [v4 setWithArray:v5];
  v8 = suggestableSceneNames_suggestableSceneNames;
  suggestableSceneNames_suggestableSceneNames = v7;

  if (v6)
  {
    v9 = +[PGLogging sharedLogging];
    v10 = [v9 loggingConnection];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = @"SuggestableSceneNames";
      _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "Couldn't load %@.plist", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)filterWithSceneIdentifiers:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 filter];
  v10 = @"sceneIdentifier";
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [v5 filterBySettingProperties:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)filterForSceneNames:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * i) capitalizedString];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v12 = objc_alloc(MEMORY[0x277D22C78]);
  v13 = [a1 domain];
  v14 = [v12 initWithLabels:v5 domain:v13 properties:MEMORY[0x277CBEC10]];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)filterForSceneName:(id)a3
{
  v4 = [a3 capitalizedString];
  v5 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:v4 domain:{objc_msgSend(a1, "domain")}];

  return v5;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:{objc_msgSend(a1, "domain")}];

  return v2;
}

@end
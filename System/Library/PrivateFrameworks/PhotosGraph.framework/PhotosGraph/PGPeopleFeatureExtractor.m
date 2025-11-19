@interface PGPeopleFeatureExtractor
+ (id)_fixLabels:(id)a3 toLength:(unint64_t)a4;
+ (id)_labelFromPersonNode:(id)a3;
- (PGPeopleFeatureExtractor)initWithGraph:(id)a3 error:(id *)a4;
- (PGPeopleFeatureExtractor)initWithTopNumberOfPeople:(unint64_t)a3 graph:(id)a4 error:(id *)a5;
@end

@implementation PGPeopleFeatureExtractor

- (PGPeopleFeatureExtractor)initWithTopNumberOfPeople:(unint64_t)a3 graph:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = +[PGGraphMomentNode consolidatedPersonInMoment];
  v9 = [PGGraphPersonNodeCollection personNodesExcludingMeInGraph:v7];

  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
  v11 = [v8 inverse];
  v12 = [MEMORY[0x277D22BF8] adjacencyWithSources:v9 relation:v11 targetsClass:objc_opt_class()];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__PGPeopleFeatureExtractor_initWithTopNumberOfPeople_graph_error___block_invoke;
  v21[3] = &unk_278888960;
  v22 = v12;
  v13 = self;
  v23 = v13;
  v24 = v10;
  v14 = v10;
  v15 = v12;
  [v9 enumerateNodesUsingBlock:v21];
  v16 = [v14 keysSortedByValueUsingComparator:&__block_literal_global_12];
  v17 = [objc_opt_class() _fixLabels:v16 toLength:a3];
  v20.receiver = v13;
  v20.super_class = PGPeopleFeatureExtractor;
  v18 = [(PGGraphFeatureExtractor *)&v20 initWithName:@"People" featureNames:v17 relation:v8 labelForTargetBlock:&__block_literal_global_14];

  return v18;
}

void __66__PGPeopleFeatureExtractor_initWithTopNumberOfPeople_graph_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 targetsForSourceIdentifier:{objc_msgSend(v4, "identifier")}];
  v5 = *(a1 + 40);
  v6 = [objc_opt_class() _labelFromPersonNode:v4];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
  [*(a1 + 48) setObject:v7 forKeyedSubscript:v6];
}

- (PGPeopleFeatureExtractor)initWithGraph:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = [PGGraphPersonNodeCollection personNodesExcludingMeInGraph:v6];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__PGPeopleFeatureExtractor_initWithGraph_error___block_invoke;
  v15[3] = &unk_278889EA0;
  v9 = self;
  v16 = v9;
  v17 = v7;
  v10 = v7;
  [v8 enumerateNodesUsingBlock:v15];
  v11 = +[PGGraphMomentNode personInMoment];
  v14.receiver = v9;
  v14.super_class = PGPeopleFeatureExtractor;
  v12 = [(PGGraphFeatureExtractor *)&v14 initWithName:@"People" featureNames:v10 relation:v11 labelForTargetBlock:&__block_literal_global_57068];

  return v12;
}

void __48__PGPeopleFeatureExtractor_initWithGraph_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() _labelFromPersonNode:v4];

  [*(a1 + 40) addObject:v5];
}

+ (id)_fixLabels:(id)a3 toLength:(unint64_t)a4
{
  v5 = [MEMORY[0x277CBEB18] arrayWithArray:a3];
  v6 = [v5 count];
  v7 = [v5 count];
  v8 = v7;
  if (v6 <= a4)
  {
    if (v7 < a4)
    {
      do
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%lu", @"Padding", v8];
        [v5 addObject:v9];

        ++v8;
      }

      while (a4 != v8);
    }
  }

  else
  {
    [v5 removeObjectsInRange:{a4, v7 - a4}];
  }

  return v5;
}

+ (id)_labelFromPersonNode:(id)a3
{
  v3 = a3;
  v4 = [v3 localIdentifier];
  v5 = [v3 name];

  if (v5)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v5, v4];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Person-%@", v4, v8];
  }
  v6 = ;

  return v6;
}

@end
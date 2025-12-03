@interface PGPeopleFeatureExtractor
+ (id)_fixLabels:(id)labels toLength:(unint64_t)length;
+ (id)_labelFromPersonNode:(id)node;
- (PGPeopleFeatureExtractor)initWithGraph:(id)graph error:(id *)error;
- (PGPeopleFeatureExtractor)initWithTopNumberOfPeople:(unint64_t)people graph:(id)graph error:(id *)error;
@end

@implementation PGPeopleFeatureExtractor

- (PGPeopleFeatureExtractor)initWithTopNumberOfPeople:(unint64_t)people graph:(id)graph error:(id *)error
{
  graphCopy = graph;
  v8 = +[PGGraphMomentNode consolidatedPersonInMoment];
  v9 = [PGGraphPersonNodeCollection personNodesExcludingMeInGraph:graphCopy];

  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
  inverse = [v8 inverse];
  v12 = [MEMORY[0x277D22BF8] adjacencyWithSources:v9 relation:inverse targetsClass:objc_opt_class()];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__PGPeopleFeatureExtractor_initWithTopNumberOfPeople_graph_error___block_invoke;
  v21[3] = &unk_278888960;
  v22 = v12;
  selfCopy = self;
  v23 = selfCopy;
  v24 = v10;
  v14 = v10;
  v15 = v12;
  [v9 enumerateNodesUsingBlock:v21];
  v16 = [v14 keysSortedByValueUsingComparator:&__block_literal_global_12];
  v17 = [objc_opt_class() _fixLabels:v16 toLength:people];
  v20.receiver = selfCopy;
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

- (PGPeopleFeatureExtractor)initWithGraph:(id)graph error:(id *)error
{
  v5 = MEMORY[0x277CBEB18];
  graphCopy = graph;
  v7 = objc_alloc_init(v5);
  v8 = [PGGraphPersonNodeCollection personNodesExcludingMeInGraph:graphCopy];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__PGPeopleFeatureExtractor_initWithGraph_error___block_invoke;
  v15[3] = &unk_278889EA0;
  selfCopy = self;
  v16 = selfCopy;
  v17 = v7;
  v10 = v7;
  [v8 enumerateNodesUsingBlock:v15];
  v11 = +[PGGraphMomentNode personInMoment];
  v14.receiver = selfCopy;
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

+ (id)_fixLabels:(id)labels toLength:(unint64_t)length
{
  v5 = [MEMORY[0x277CBEB18] arrayWithArray:labels];
  v6 = [v5 count];
  v7 = [v5 count];
  v8 = v7;
  if (v6 <= length)
  {
    if (v7 < length)
    {
      do
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%lu", @"Padding", v8];
        [v5 addObject:v9];

        ++v8;
      }

      while (length != v8);
    }
  }

  else
  {
    [v5 removeObjectsInRange:{length, v7 - length}];
  }

  return v5;
}

+ (id)_labelFromPersonNode:(id)node
{
  nodeCopy = node;
  localIdentifier = [nodeCopy localIdentifier];
  name = [nodeCopy name];

  if (name)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", name, localIdentifier];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Person-%@", localIdentifier, v8];
  }
  v6 = ;

  return v6;
}

@end
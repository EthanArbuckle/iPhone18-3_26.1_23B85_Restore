@interface PGMeaningfulEventCollectionTrait
- (PGMeaningfulEventCollectionTrait)initWithNodes:(id)nodes negativeNodes:(id)negativeNodes;
- (id)debugDescriptionWithMomentNode:(id)node;
@end

@implementation PGMeaningfulEventCollectionTrait

- (id)debugDescriptionWithMomentNode:(id)node
{
  nodeCopy = node;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PGMeaningfulEventCollectionTrait_debugDescriptionWithMomentNode___block_invoke;
  aBlock[3] = &unk_278887D20;
  v17 = nodeCopy;
  v5 = nodeCopy;
  v6 = _Block_copy(aBlock);
  v7 = v6[2](v6, self->_nodes);
  v8 = v6[2](v6, self->_negativeNodes);
  v9 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = PGMeaningfulEventCollectionTrait;
  v10 = [(PGMeaningfulEventTrait *)&v15 debugDescriptionWithMomentNode:v5];
  v11 = [v8 count];
  v12 = @" ";
  if (!v11)
  {
    v12 = &stru_2843F5C58;
  }

  v13 = [v9 stringWithFormat:@"%@ %@%@%@", v10, v7, v12, v8];

  return v13;
}

id __67__PGMeaningfulEventCollectionTrait_debugDescriptionWithMomentNode___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB58];
  v4 = a2;
  v5 = [v3 setWithCapacity:{objc_msgSend(v4, "count")}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__PGMeaningfulEventCollectionTrait_debugDescriptionWithMomentNode___block_invoke_2;
  v10[3] = &unk_278887CF8;
  v11 = *(a1 + 32);
  v6 = v5;
  v12 = v6;
  [v4 enumerateNodesUsingBlock:v10];

  v7 = v12;
  v8 = v6;

  return v6;
}

void __67__PGMeaningfulEventCollectionTrait_debugDescriptionWithMomentNode___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = a2;
  v3 = [*(a1 + 32) anyEdgeTowardNode:v23];
  if ([v23 domain] == 501 || objc_msgSend(v23, "domain") == 502)
  {
    v4 = *(a1 + 40);
    v5 = MEMORY[0x277CCACA8];
    v6 = [v23 label];
    [v3 confidence];
    v8 = [v5 stringWithFormat:@"%@ (%.2f)", v6, v7];
    [v4 addObject:v8];
  }

  else
  {
    v9 = [v23 label];
    v10 = [v9 isEqualToString:@"Address"];

    if (v10)
    {
      [v23 coordinate];
      v12 = v11;
      v14 = v13;
      v15 = *(a1 + 40);
      v16 = MEMORY[0x277CCACA8];
      [v3 relevance];
      v6 = [v16 stringWithFormat:@"{%.8f, %.8f} (%.2f)", v12, v14, v17];
      [v15 addObject:v6];
    }

    else
    {
      v6 = [v23 name];
      v18 = *(a1 + 40);
      v19 = MEMORY[0x277CCACA8];
      v20 = [v6 length];
      v21 = v6;
      if (!v20)
      {
        v21 = [v23 label];
      }

      v22 = [v19 stringWithFormat:@"%@", v21];
      [v18 addObject:v22];

      if (!v20)
      {
      }
    }
  }
}

- (PGMeaningfulEventCollectionTrait)initWithNodes:(id)nodes negativeNodes:(id)negativeNodes
{
  nodesCopy = nodes;
  negativeNodesCopy = negativeNodes;
  v12.receiver = self;
  v12.super_class = PGMeaningfulEventCollectionTrait;
  v9 = [(PGMeaningfulEventTrait *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_nodes, nodes);
    objc_storeStrong(&v10->_negativeNodes, negativeNodes);
  }

  return v10;
}

@end
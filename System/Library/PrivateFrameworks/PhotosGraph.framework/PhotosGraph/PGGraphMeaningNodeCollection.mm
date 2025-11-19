@interface PGGraphMeaningNodeCollection
+ (id)meaningNodesWithMeaning:(unint64_t)a3 inGraph:(id)a4;
+ (id)meaningNodesWithMeaningLabels:(id)a3 inGraph:(id)a4;
- (PGGraphMeaningEdgeCollection)reliableMeaningEdges;
- (PGGraphMeaningNodeCollection)childMeaningNodes;
- (PGGraphMeaningNodeCollection)parentMeaningNodes;
- (PGGraphMomentNodeCollection)momentNodes;
- (id)distinctMeaningNodesSubset;
- (id)localizedNames;
@end

@implementation PGGraphMeaningNodeCollection

- (id)distinctMeaningNodesSubset
{
  v20[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D22BD0]);
  v19[0] = @"Performance";
  v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"Concert", 0}];
  v20[0] = v4;
  v19[1] = @"SportEvent";
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"Concert", 0}];
  v20[1] = v5;
  v19[2] = @"Festival";
  v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"Concert", 0}];
  v20[2] = v6;
  v19[3] = @"NightOut";
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"Concert", @"Festival", @"Theater", @"Dance", 0}];
  v20[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__PGGraphMeaningNodeCollection_distinctMeaningNodesSubset__block_invoke;
  v16[3] = &unk_278882C48;
  v16[4] = self;
  v17 = v8;
  v18 = v3;
  v9 = v3;
  v10 = v8;
  [(MAElementCollection *)self enumerateIdentifiersAsCollectionsWithBlock:v16];
  v11 = [PGGraphMeaningNodeCollection alloc];
  v12 = [(MAElementCollection *)self graph];
  v13 = [(MAElementCollection *)v11 initWithGraph:v12 elementIdentifiers:v9];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __58__PGGraphMeaningNodeCollection_distinctMeaningNodesSubset__block_invoke(id *a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 childMeaningNodes];
  v7 = [v6 intersectsCollection:a1[4]];

  if ((v7 & 1) == 0)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [a1[5] allKeys];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * v12);
          v14 = [v5 meaningLabels];
          v15 = [v14 containsObject:v13];

          if (v15)
          {
            v16 = [a1[5] objectForKeyedSubscript:v13];
            v17 = [a1[4] meaningLabels];
            v18 = [v17 intersectsSet:v16];

            if (v18)
            {

              goto LABEL_13;
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    [a1[6] addIdentifier:a2];
  }

LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
}

- (id)localizedNames
{
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{-[MAElementCollection count](self, "count")}];
  v4 = [(MANodeCollection *)self labels];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__PGGraphMeaningNodeCollection_localizedNames__block_invoke;
  v7[3] = &unk_278887698;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

  return v5;
}

void __46__PGGraphMeaningNodeCollection_localizedNames__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [PGGraphMeaningNode _localizedNameForLabel:a2];
  [v2 addObject:v3];
}

- (PGGraphMeaningEdgeCollection)reliableMeaningEdges
{
  v3 = +[PGGraphMeaningEdge reliableFilter];
  v4 = [(MAEdgeCollection *)PGGraphMeaningEdgeCollection edgesToNodes:self matchingFilter:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphMeaningNode momentOfMeaning];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMeaningNodeCollection)parentMeaningNodes
{
  v3 = +[PGGraphMeaningNode parentMeaningOfMeaning];
  v4 = [(MANodeCollection *)PGGraphMeaningNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMeaningNodeCollection)childMeaningNodes
{
  v3 = +[PGGraphMeaningNode childMeaningOfMeaning];
  v4 = [(MANodeCollection *)PGGraphMeaningNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)meaningNodesWithMeaningLabels:(id)a3 inGraph:(id)a4
{
  v5 = MEMORY[0x277D22C78];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = [MEMORY[0x277CBEB98] setWithArray:v7];

  v10 = [v8 initWithLabels:v9 domain:700 properties:MEMORY[0x277CBEC10]];
  v11 = [(MANodeCollection *)PGGraphMeaningNodeCollection nodesMatchingFilter:v10 inGraph:v6];

  return v11;
}

+ (id)meaningNodesWithMeaning:(unint64_t)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphMeaningNode filterWithMeaning:a3];
  if (v7)
  {
    v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];
  }

  else
  {
    v8 = [(MAElementCollection *)[PGGraphMeaningNodeCollection alloc] initWithGraph:v6];
  }

  v9 = v8;

  return v9;
}

@end
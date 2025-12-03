@interface PGGraphPersonActivityMeaningNodeCollection
+ (id)personActivityMeaningNodesForActivityLabel:(id)label inGraph:(id)graph;
+ (id)personActivityMeaningNodesForActivityLabel:(id)label personLocalIdentifiers:(id)identifiers inGraph:(id)graph;
+ (id)personActivityMeaningNodesForActivityLabels:(id)labels inGraph:(id)graph;
- (PGGraphMomentNodeCollection)momentNodes;
- (PGGraphPersonNodeCollection)personNodes;
- (id)personLocalIdentifiers;
- (id)subsetWithActivityLabels:(id)labels;
@end

@implementation PGGraphPersonActivityMeaningNodeCollection

- (PGGraphPersonNodeCollection)personNodes
{
  v3 = +[PGGraphPersonActivityMeaningNode personOfPersonActivity];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphPersonActivityMeaningNode momentOfPersonActivity];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (id)personLocalIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__12732;
  v10 = __Block_byref_object_dispose__12733;
  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__PGGraphPersonActivityMeaningNodeCollection_personLocalIdentifiers__block_invoke;
  v5[3] = &unk_278880278;
  v5[4] = &v6;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"identifier" withBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)subsetWithActivityLabels:(id)labels
{
  v4 = [PGGraphPersonActivityMeaningNode filterWithActivityLabels:labels];
  relation = [v4 relation];
  v6 = [(MANodeCollection *)PGGraphPersonActivityMeaningNodeCollection nodesRelatedToNodes:self withRelation:relation];

  return v6;
}

+ (id)personActivityMeaningNodesForActivityLabels:(id)labels inGraph:(id)graph
{
  v5 = MEMORY[0x277D22C78];
  graphCopy = graph;
  labelsCopy = labels;
  v8 = [v5 alloc];
  v9 = [v8 initWithLabels:labelsCopy domain:701 properties:MEMORY[0x277CBEC10]];

  v10 = [(MANodeCollection *)PGGraphPersonActivityMeaningNodeCollection nodesMatchingFilter:v9 inGraph:graphCopy];

  return v10;
}

+ (id)personActivityMeaningNodesForActivityLabel:(id)label inGraph:(id)graph
{
  v5 = MEMORY[0x277D22C78];
  graphCopy = graph;
  labelCopy = label;
  v8 = [v5 alloc];
  v9 = [v8 initWithLabel:labelCopy domain:701 properties:MEMORY[0x277CBEC10]];

  v10 = [(MANodeCollection *)PGGraphPersonActivityMeaningNodeCollection nodesMatchingFilter:v9 inGraph:graphCopy];

  return v10;
}

+ (id)personActivityMeaningNodesForActivityLabel:(id)label personLocalIdentifiers:(id)identifiers inGraph:(id)graph
{
  graphCopy = graph;
  v8 = [PGGraphPersonActivityMeaningNode filterWithPersonLocalIdentifiers:identifiers label:label];
  v9 = [(MANodeCollection *)PGGraphPersonActivityMeaningNodeCollection nodesMatchingFilter:v8 inGraph:graphCopy];

  return v9;
}

@end
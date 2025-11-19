@interface PGGraphPersonActivityMeaningNodeCollection
+ (id)personActivityMeaningNodesForActivityLabel:(id)a3 inGraph:(id)a4;
+ (id)personActivityMeaningNodesForActivityLabel:(id)a3 personLocalIdentifiers:(id)a4 inGraph:(id)a5;
+ (id)personActivityMeaningNodesForActivityLabels:(id)a3 inGraph:(id)a4;
- (PGGraphMomentNodeCollection)momentNodes;
- (PGGraphPersonNodeCollection)personNodes;
- (id)personLocalIdentifiers;
- (id)subsetWithActivityLabels:(id)a3;
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

- (id)subsetWithActivityLabels:(id)a3
{
  v4 = [PGGraphPersonActivityMeaningNode filterWithActivityLabels:a3];
  v5 = [v4 relation];
  v6 = [(MANodeCollection *)PGGraphPersonActivityMeaningNodeCollection nodesRelatedToNodes:self withRelation:v5];

  return v6;
}

+ (id)personActivityMeaningNodesForActivityLabels:(id)a3 inGraph:(id)a4
{
  v5 = MEMORY[0x277D22C78];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = [v8 initWithLabels:v7 domain:701 properties:MEMORY[0x277CBEC10]];

  v10 = [(MANodeCollection *)PGGraphPersonActivityMeaningNodeCollection nodesMatchingFilter:v9 inGraph:v6];

  return v10;
}

+ (id)personActivityMeaningNodesForActivityLabel:(id)a3 inGraph:(id)a4
{
  v5 = MEMORY[0x277D22C78];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = [v8 initWithLabel:v7 domain:701 properties:MEMORY[0x277CBEC10]];

  v10 = [(MANodeCollection *)PGGraphPersonActivityMeaningNodeCollection nodesMatchingFilter:v9 inGraph:v6];

  return v10;
}

+ (id)personActivityMeaningNodesForActivityLabel:(id)a3 personLocalIdentifiers:(id)a4 inGraph:(id)a5
{
  v7 = a5;
  v8 = [PGGraphPersonActivityMeaningNode filterWithPersonLocalIdentifiers:a4 label:a3];
  v9 = [(MANodeCollection *)PGGraphPersonActivityMeaningNodeCollection nodesMatchingFilter:v8 inGraph:v7];

  return v9;
}

@end
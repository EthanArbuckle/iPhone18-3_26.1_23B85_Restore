@interface PGGraphHomeWorkNodeCollection
+ (id)homeNodesInGraph:(id)graph;
+ (id)workNodesInGraph:(id)graph;
- (PGGraphAddressNodeCollection)addressNodes;
- (PGGraphAddressNodeCollection)preciseAddressNodes;
- (PGGraphPersonNodeCollection)ownerNodes;
@end

@implementation PGGraphHomeWorkNodeCollection

- (PGGraphPersonNodeCollection)ownerNodes
{
  v3 = +[PGGraphHomeWorkNode ownerOfHomeWork];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphAddressNodeCollection)preciseAddressNodes
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D22C90];
  v4 = +[PGGraphHomeWorkNode addressOfHomeWork];
  v12[0] = v4;
  v5 = +[PGGraphAddressNode preciseFilter];
  relation = [v5 relation];
  v12[1] = relation;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v8 = [v3 chain:v7];

  v9 = [(MANodeCollection *)PGGraphAddressNodeCollection nodesRelatedToNodes:self withRelation:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (PGGraphAddressNodeCollection)addressNodes
{
  v3 = +[PGGraphHomeWorkNode addressOfHomeWork];
  v4 = [(MANodeCollection *)PGGraphAddressNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)workNodesInGraph:(id)graph
{
  graphCopy = graph;
  v5 = +[PGGraphHomeWorkNode workFilter];
  v6 = [self nodesMatchingFilter:v5 inGraph:graphCopy];

  return v6;
}

+ (id)homeNodesInGraph:(id)graph
{
  graphCopy = graph;
  v5 = +[PGGraphHomeWorkNode homeFilter];
  v6 = [self nodesMatchingFilter:v5 inGraph:graphCopy];

  return v6;
}

@end
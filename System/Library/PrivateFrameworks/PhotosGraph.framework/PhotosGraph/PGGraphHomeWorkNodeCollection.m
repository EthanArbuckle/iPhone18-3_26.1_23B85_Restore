@interface PGGraphHomeWorkNodeCollection
+ (id)homeNodesInGraph:(id)a3;
+ (id)workNodesInGraph:(id)a3;
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
  v6 = [v5 relation];
  v12[1] = v6;
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

+ (id)workNodesInGraph:(id)a3
{
  v4 = a3;
  v5 = +[PGGraphHomeWorkNode workFilter];
  v6 = [a1 nodesMatchingFilter:v5 inGraph:v4];

  return v6;
}

+ (id)homeNodesInGraph:(id)a3
{
  v4 = a3;
  v5 = +[PGGraphHomeWorkNode homeFilter];
  v6 = [a1 nodesMatchingFilter:v5 inGraph:v4];

  return v6;
}

@end
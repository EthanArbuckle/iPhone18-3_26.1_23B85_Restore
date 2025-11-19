@interface PGGraphLocationNodeCollection
- (PGGraphAddressNodeCollection)addressNodes;
- (id)childLocationNodes;
- (id)deepChildLocationNodes;
- (id)deepChildLocationNodesWithLabel:(id)a3;
- (id)deepParentLocationNodes;
- (id)deepParentLocationNodesWithLabel:(id)a3;
- (id)nearestDeepNeighborWithLabel:(id)a3 usingOutEdges:(BOOL)a4;
- (id)parentLocationNodes;
@end

@implementation PGGraphLocationNodeCollection

- (id)deepParentLocationNodesWithLabel:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[PGGraphLocationNode parentLocationOfLocation];
  v6 = [v5 transitiveClosure];

  if (v4)
  {
    v7 = MEMORY[0x277D22C90];
    v16[0] = v6;
    v8 = objc_alloc(MEMORY[0x277D22C78]);
    v9 = [v8 initWithLabel:v4 domain:*MEMORY[0x277D22CB0]];
    v10 = [v9 relation];
    v16[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v12 = [v7 chain:v11];

    v6 = v12;
  }

  v13 = [(MANodeCollection *)PGGraphLocationNodeCollection nodesRelatedToNodes:self withRelation:v6];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)deepParentLocationNodes
{
  v3 = +[PGGraphLocationNode parentLocationOfLocation];
  v4 = [v3 transitiveClosure];
  v5 = [(MANodeCollection *)PGGraphLocationNodeCollection nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (id)parentLocationNodes
{
  v3 = +[PGGraphLocationNode parentLocationOfLocation];
  v4 = [(MANodeCollection *)PGGraphLocationNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (id)deepChildLocationNodesWithLabel:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[PGGraphLocationNode childLocationOfLocation];
  v6 = [v5 transitiveClosure];

  if (v4)
  {
    v7 = MEMORY[0x277D22C90];
    v16[0] = v6;
    v8 = objc_alloc(MEMORY[0x277D22C78]);
    v9 = [v8 initWithLabel:v4 domain:*MEMORY[0x277D22CB0]];
    v10 = [v9 relation];
    v16[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v12 = [v7 chain:v11];

    v6 = v12;
  }

  v13 = [(MANodeCollection *)PGGraphLocationNodeCollection nodesRelatedToNodes:self withRelation:v6];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)deepChildLocationNodes
{
  v3 = +[PGGraphLocationNode childLocationOfLocation];
  v4 = [v3 transitiveClosure];
  v5 = [(MANodeCollection *)PGGraphLocationNodeCollection nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (id)childLocationNodes
{
  v3 = +[PGGraphLocationNode childLocationOfLocation];
  v4 = [(MANodeCollection *)PGGraphLocationNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (id)nearestDeepNeighborWithLabel:(id)a3 usingOutEdges:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = +[PGGraphLocationEdge filter];
  v9 = [v8 relationWithType:v7];

  v10 = objc_alloc(MEMORY[0x277D22C78]);
  v11 = [v10 initWithLabel:v6 domain:*MEMORY[0x277D22CB0]];
  v12 = [v11 relation];

  v13 = self;
  v14 = 0;
  do
  {
    v15 = v14;
    v16 = v13;
    v13 = [(MANodeCollection *)PGGraphLocationNodeCollection nodesRelatedToNodes:v13 withRelation:v9];

    v14 = [(MANodeCollection *)PGGraphLocationNodeCollection nodesRelatedToNodes:v13 withRelation:v12];
  }

  while (![v14 count] && -[MAElementCollection count](v13, "count"));

  return v14;
}

- (PGGraphAddressNodeCollection)addressNodes
{
  v3 = +[PGGraphLocationNode addressOfLocation];
  v4 = [(MANodeCollection *)PGGraphAddressNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

@end
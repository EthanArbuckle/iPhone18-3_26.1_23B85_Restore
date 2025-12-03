@interface PGGraphLocationNodeCollection
- (PGGraphAddressNodeCollection)addressNodes;
- (id)childLocationNodes;
- (id)deepChildLocationNodes;
- (id)deepChildLocationNodesWithLabel:(id)label;
- (id)deepParentLocationNodes;
- (id)deepParentLocationNodesWithLabel:(id)label;
- (id)nearestDeepNeighborWithLabel:(id)label usingOutEdges:(BOOL)edges;
- (id)parentLocationNodes;
@end

@implementation PGGraphLocationNodeCollection

- (id)deepParentLocationNodesWithLabel:(id)label
{
  v16[2] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  v5 = +[PGGraphLocationNode parentLocationOfLocation];
  transitiveClosure = [v5 transitiveClosure];

  if (labelCopy)
  {
    v7 = MEMORY[0x277D22C90];
    v16[0] = transitiveClosure;
    v8 = objc_alloc(MEMORY[0x277D22C78]);
    v9 = [v8 initWithLabel:labelCopy domain:*MEMORY[0x277D22CB0]];
    relation = [v9 relation];
    v16[1] = relation;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v12 = [v7 chain:v11];

    transitiveClosure = v12;
  }

  v13 = [(MANodeCollection *)PGGraphLocationNodeCollection nodesRelatedToNodes:self withRelation:transitiveClosure];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)deepParentLocationNodes
{
  v3 = +[PGGraphLocationNode parentLocationOfLocation];
  transitiveClosure = [v3 transitiveClosure];
  v5 = [(MANodeCollection *)PGGraphLocationNodeCollection nodesRelatedToNodes:self withRelation:transitiveClosure];

  return v5;
}

- (id)parentLocationNodes
{
  v3 = +[PGGraphLocationNode parentLocationOfLocation];
  v4 = [(MANodeCollection *)PGGraphLocationNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (id)deepChildLocationNodesWithLabel:(id)label
{
  v16[2] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  v5 = +[PGGraphLocationNode childLocationOfLocation];
  transitiveClosure = [v5 transitiveClosure];

  if (labelCopy)
  {
    v7 = MEMORY[0x277D22C90];
    v16[0] = transitiveClosure;
    v8 = objc_alloc(MEMORY[0x277D22C78]);
    v9 = [v8 initWithLabel:labelCopy domain:*MEMORY[0x277D22CB0]];
    relation = [v9 relation];
    v16[1] = relation;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v12 = [v7 chain:v11];

    transitiveClosure = v12;
  }

  v13 = [(MANodeCollection *)PGGraphLocationNodeCollection nodesRelatedToNodes:self withRelation:transitiveClosure];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)deepChildLocationNodes
{
  v3 = +[PGGraphLocationNode childLocationOfLocation];
  transitiveClosure = [v3 transitiveClosure];
  v5 = [(MANodeCollection *)PGGraphLocationNodeCollection nodesRelatedToNodes:self withRelation:transitiveClosure];

  return v5;
}

- (id)childLocationNodes
{
  v3 = +[PGGraphLocationNode childLocationOfLocation];
  v4 = [(MANodeCollection *)PGGraphLocationNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (id)nearestDeepNeighborWithLabel:(id)label usingOutEdges:(BOOL)edges
{
  edgesCopy = edges;
  labelCopy = label;
  if (edgesCopy)
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
  v11 = [v10 initWithLabel:labelCopy domain:*MEMORY[0x277D22CB0]];
  relation = [v11 relation];

  selfCopy = self;
  v14 = 0;
  do
  {
    v15 = v14;
    v16 = selfCopy;
    selfCopy = [(MANodeCollection *)PGGraphLocationNodeCollection nodesRelatedToNodes:selfCopy withRelation:v9];

    v14 = [(MANodeCollection *)PGGraphLocationNodeCollection nodesRelatedToNodes:selfCopy withRelation:relation];
  }

  while (![v14 count] && -[MAElementCollection count](selfCopy, "count"));

  return v14;
}

- (PGGraphAddressNodeCollection)addressNodes
{
  v3 = +[PGGraphLocationNode addressOfLocation];
  v4 = [(MANodeCollection *)PGGraphAddressNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

@end
@interface PGLocationTitleComponent
- (BOOL)canMergeWithTitleComponent:(id)component;
- (BOOL)isEqual:(id)equal;
- (PGLocationTitleComponent)init;
- (unint64_t)hash;
- (void)updateWithMomentNodes:(id)nodes;
@end

@implementation PGLocationTitleComponent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = PGLocationTitleComponent;
  if ([(PGLocationTitleComponent *)&v10 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    node = self->_node;
    if ((node == v5[2] || [(MANode *)node isSameNodeAsNode:?]) && ((edge = self->_edge, edge == v5[3]) || [(MAEdge *)edge isSameEdgeAsEdge:?]))
    {
      v8 = [(NSMutableSet *)self->_addressNodes isEqual:v5[1]];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(MANode *)self->_node hash];
  v4 = [(MAEdge *)self->_edge hash]^ v3;
  return v4 ^ [(NSMutableSet *)self->_addressNodes hash];
}

- (void)updateWithMomentNodes:(id)nodes
{
  nodesCopy = nodes;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0x7FEFFFFFFFFFFFFFLL;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  anyObject = [nodesCopy anyObject];
  graph = [anyObject graph];

  if (graph)
  {
    v7 = [PGGraphAddressNodeCollection alloc];
    addressNodes = [(PGLocationTitleComponent *)self addressNodes];
    v9 = [(MAElementCollection *)v7 initWithSet:addressNodes graph:graph];

    v10 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:nodesCopy graph:graph];
    v11 = [(PGGraphEdgeCollection *)PGGraphAddressEdgeCollection edgesFromNodes:v10 toNodes:v9];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__PGLocationTitleComponent_updateWithMomentNodes___block_invoke;
    v12[3] = &unk_27887EF38;
    v12[4] = &v13;
    v12[5] = &v17;
    [v11 enumerateEdgesUsingBlock:v12];
  }

  *&self->_timestampStart = v18[3];
  *&self->_weight = v14[3];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void __50__PGLocationTitleComponent_updateWithMomentNodes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 timestampUTCStart];
  v5 = v4;
  [v3 relevance];
  v7 = v6;

  *(*(*(a1 + 32) + 8) + 24) = v7 + *(*(*(a1 + 32) + 8) + 24);
  v8 = *(*(a1 + 40) + 8);
  if (*(v8 + 24) > v5)
  {
    *(v8 + 24) = v5;
  }
}

- (BOOL)canMergeWithTitleComponent:(id)component
{
  componentCopy = component;
  node = self->_node;
  if ((node == componentCopy[2] || [(MANode *)node isSameNodeAsNode:?]) && ((edge = self->_edge, edge == componentCopy[3]) || [(MAEdge *)edge isSameEdgeAsEdge:?]))
  {
    v7 = [(NSMutableSet *)self->_addressNodes isEqual:componentCopy[1]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PGLocationTitleComponent)init
{
  v6.receiver = self;
  v6.super_class = PGLocationTitleComponent;
  v2 = [(PGLocationTitleComponent *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    addressNodes = v2->_addressNodes;
    v2->_addressNodes = v3;

    v2->_type = 0;
  }

  return v2;
}

@end
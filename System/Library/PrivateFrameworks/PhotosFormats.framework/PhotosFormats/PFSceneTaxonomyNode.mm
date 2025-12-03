@interface PFSceneTaxonomyNode
- (BOOL)isEqual:(id)equal;
- (NSSet)children;
- (NSSet)detectors;
- (NSSet)parents;
- (PFSceneTaxonomyNode)initWithNodeRef:(void *)ref taxonomy:(id)taxonomy;
- (id)localizedSynonyms;
- (unsigned)sceneClassId;
- (void)traverse:(int64_t)traverse visitor:(id)visitor;
@end

@implementation PFSceneTaxonomyNode

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PFSceneTaxonomyNode *)self isEqualToNode:equalCopy];
  }

  return v5;
}

- (id)localizedSynonyms
{
  v2 = PFSceneTaxonomyNodeLocalizedSynonyms(self->_nodeRef, self->_taxonomy);
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)traverse:(int64_t)traverse visitor:(id)visitor
{
  visitorCopy = visitor;
  v7 = visitorCopy;
  if (traverse == 1)
  {
    nodeRef = self->_nodeRef;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__PFSceneTaxonomyNode_traverse_visitor___block_invoke_2;
    v11[3] = &unk_1E7B65960;
    v11[4] = self;
    v12 = visitorCopy;
    PFSceneTaxonomyNodeTraverseChildren(nodeRef, v11);
    v9 = v12;
  }

  else
  {
    if (traverse)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid PFSceneTaxonomyNodeTraversal passed: %lu", traverse}];
      goto LABEL_7;
    }

    v8 = self->_nodeRef;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __40__PFSceneTaxonomyNode_traverse_visitor___block_invoke;
    v13[3] = &unk_1E7B65960;
    v13[4] = self;
    v14 = visitorCopy;
    PFSceneTaxonomyNodeTraverseParents(v8, v13);
    v9 = v14;
  }

LABEL_7:
}

uint64_t __40__PFSceneTaxonomyNode_traverse_visitor___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [[PFSceneTaxonomyNode alloc] initWithNodeRef:a2 taxonomy:*(*(a1 + 32) + 16)];
  v4 = (*(*(a1 + 40) + 16))();

  return v4;
}

uint64_t __40__PFSceneTaxonomyNode_traverse_visitor___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [[PFSceneTaxonomyNode alloc] initWithNodeRef:a2 taxonomy:*(*(a1 + 32) + 16)];
  v4 = (*(*(a1 + 40) + 16))();

  return v4;
}

- (NSSet)detectors
{
  v3 = PFSceneTaxonomyNodeDetectorsCount(self->_nodeRef);
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v3];
    nodeRef = self->_nodeRef;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __32__PFSceneTaxonomyNode_detectors__block_invoke;
    v10[3] = &unk_1E7B65938;
    v10[4] = self;
    v6 = v4;
    v11 = v6;
    PFSceneTaxonomyNodeVisitDetectors(nodeRef, v10);
    v7 = v11;
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v8;
}

uint64_t __32__PFSceneTaxonomyNode_detectors__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [[PFSceneTaxonomyNode alloc] initWithNodeRef:a2 taxonomy:*(*(a1 + 32) + 16)];
  [*(a1 + 40) addObject:v3];

  return 0;
}

- (NSSet)children
{
  v3 = PFSceneTaxonomyNodeChildrenCount(self->_nodeRef);
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v3];
    nodeRef = self->_nodeRef;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __31__PFSceneTaxonomyNode_children__block_invoke;
    v10[3] = &unk_1E7B65938;
    v10[4] = self;
    v6 = v4;
    v11 = v6;
    PFSceneTaxonomyNodeVisitChildren(nodeRef, v10);
    v7 = v11;
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v8;
}

uint64_t __31__PFSceneTaxonomyNode_children__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [[PFSceneTaxonomyNode alloc] initWithNodeRef:a2 taxonomy:*(*(a1 + 32) + 16)];
  [*(a1 + 40) addObject:v3];

  return 0;
}

- (NSSet)parents
{
  v3 = PFSceneTaxonomyNodeParentsCount(self->_nodeRef);
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v3];
    nodeRef = self->_nodeRef;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __30__PFSceneTaxonomyNode_parents__block_invoke;
    v10[3] = &unk_1E7B65938;
    v10[4] = self;
    v6 = v4;
    v11 = v6;
    PFSceneTaxonomyNodeVisitParents(nodeRef, v10);
    v7 = v11;
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v8;
}

uint64_t __30__PFSceneTaxonomyNode_parents__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [[PFSceneTaxonomyNode alloc] initWithNodeRef:a2 taxonomy:*(*(a1 + 32) + 16)];
  [*(a1 + 40) addObject:v3];

  return 0;
}

- (unsigned)sceneClassId
{
  if ([(PFSceneTaxonomyNode *)self extendedSceneClassId]>> 32)
  {
    return 0;
  }

  else
  {
    return [(PFSceneTaxonomyNode *)self extendedSceneClassId];
  }
}

- (PFSceneTaxonomyNode)initWithNodeRef:(void *)ref taxonomy:(id)taxonomy
{
  taxonomyCopy = taxonomy;
  if (ref)
  {
    v11.receiver = self;
    v11.super_class = PFSceneTaxonomyNode;
    v8 = [(PFSceneTaxonomyNode *)&v11 init];
    v9 = v8;
    if (v8)
    {
      v8->_nodeRef = ref;
      objc_storeStrong(&v8->_taxonomy, taxonomy);
    }
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

@end
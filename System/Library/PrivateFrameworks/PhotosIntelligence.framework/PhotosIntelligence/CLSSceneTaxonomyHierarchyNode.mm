@interface CLSSceneTaxonomyHierarchyNode
- (CLSSceneTaxonomyHierarchyNode)initWithSceneTaxonomyNodeRef:(void *)ref inSceneTaxonomy:(id)taxonomy forSceneNetOnly:(BOOL)only;
- (NSSet)localizedSynonyms;
- (void)traverseChildrenUsingNameBlock:(id)block;
- (void)visitChildrenUsingNameBlock:(id)block;
- (void)visitParentsUsingNameBlock:(id)block;
@end

@implementation CLSSceneTaxonomyHierarchyNode

- (void)visitParentsUsingNameBlock:(id)block
{
  blockCopy = block;
  v3 = blockCopy;
  PFSceneTaxonomyNodeVisitParents();
}

uint64_t __60__CLSSceneTaxonomyHierarchyNode_visitParentsUsingNameBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 40) == 1 && PFSceneTaxonomyNodeNetworkId() != 1)
  {
    return 0;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*a3];
  v6 = (*(*(a1 + 32) + 16))();

  return v6;
}

- (void)visitChildrenUsingNameBlock:(id)block
{
  blockCopy = block;
  v3 = blockCopy;
  PFSceneTaxonomyNodeVisitChildren();
}

uint64_t __61__CLSSceneTaxonomyHierarchyNode_visitChildrenUsingNameBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 40) == 1 && PFSceneTaxonomyNodeNetworkId() != 1)
  {
    return 0;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*a3];
  v6 = (*(*(a1 + 32) + 16))();

  return v6;
}

- (void)traverseChildrenUsingNameBlock:(id)block
{
  blockCopy = block;
  v3 = blockCopy;
  PFSceneTaxonomyNodeTraverseChildren();
}

uint64_t __64__CLSSceneTaxonomyHierarchyNode_traverseChildrenUsingNameBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 40) == 1 && PFSceneTaxonomyNodeNetworkId() != 1)
  {
    return 0;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*a3];
  v6 = (*(*(a1 + 32) + 16))();

  return v6;
}

- (NSSet)localizedSynonyms
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = PFSceneTaxonomyNodeLocalizedSynonyms();
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (CLSSceneTaxonomyHierarchyNode)initWithSceneTaxonomyNodeRef:(void *)ref inSceneTaxonomy:(id)taxonomy forSceneNetOnly:(BOOL)only
{
  taxonomyCopy = taxonomy;
  v13.receiver = self;
  v13.super_class = CLSSceneTaxonomyHierarchyNode;
  v10 = [(CLSSceneTaxonomyHierarchyNode *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_taxonomyNodeRef = ref;
    objc_storeStrong(&v10->_sceneTaxonomy, taxonomy);
    v11->_forSceneNetOnly = only;
  }

  return v11;
}

@end
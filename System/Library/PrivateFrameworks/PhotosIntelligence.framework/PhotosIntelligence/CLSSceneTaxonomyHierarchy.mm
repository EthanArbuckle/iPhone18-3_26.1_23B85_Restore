@interface CLSSceneTaxonomyHierarchy
- (BOOL)nodeExistsForName:(id)name;
- (id)initForSceneNetOnly:(BOOL)only;
- (id)nodeForIdentifier:(unint64_t)identifier;
- (id)nodeForName:(id)name;
- (id)rootNode;
@end

@implementation CLSSceneTaxonomyHierarchy

- (id)nodeForIdentifier:(unint64_t)identifier
{
  v4 = [(PFSceneTaxonomy *)self->_sceneTaxonomy nodeRefForExtendedSceneClassId:identifier];
  if (self->_forSceneNetOnly && PFSceneTaxonomyNodeNetworkId() != 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[CLSSceneTaxonomyHierarchyNode alloc] initWithSceneTaxonomyNodeRef:v4 inSceneTaxonomy:self->_sceneTaxonomy forSceneNetOnly:self->_forSceneNetOnly];
  }

  return v5;
}

- (BOOL)nodeExistsForName:(id)name
{
  v4 = [(PFSceneTaxonomy *)self->_sceneTaxonomy nodeRefForName:name];
  if (self->_forSceneNetOnly && PFSceneTaxonomyNodeNetworkId() != 1)
  {
    v4 = 0;
  }

  return v4 != 0;
}

- (id)nodeForName:(id)name
{
  v4 = [(PFSceneTaxonomy *)self->_sceneTaxonomy nodeRefForName:name];
  if (self->_forSceneNetOnly && PFSceneTaxonomyNodeNetworkId() != 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[CLSSceneTaxonomyHierarchyNode alloc] initWithSceneTaxonomyNodeRef:v4 inSceneTaxonomy:self->_sceneTaxonomy forSceneNetOnly:self->_forSceneNetOnly];
  }

  return v5;
}

- (id)rootNode
{
  v2 = [[CLSSceneTaxonomyHierarchyNode alloc] initWithSceneTaxonomyNodeRef:[(PFSceneTaxonomy *)self->_sceneTaxonomy rootNodeRef] inSceneTaxonomy:self->_sceneTaxonomy forSceneNetOnly:self->_forSceneNetOnly];

  return v2;
}

- (id)initForSceneNetOnly:(BOOL)only
{
  v8.receiver = self;
  v8.super_class = CLSSceneTaxonomyHierarchy;
  v4 = [(CLSSceneTaxonomyHierarchy *)&v8 init];
  if (v4)
  {
    initWithLatestTaxonomy = [objc_alloc(MEMORY[0x1E69C0850]) initWithLatestTaxonomy];
    sceneTaxonomy = v4->_sceneTaxonomy;
    v4->_sceneTaxonomy = initWithLatestTaxonomy;

    v4->_forSceneNetOnly = only;
  }

  return v4;
}

@end
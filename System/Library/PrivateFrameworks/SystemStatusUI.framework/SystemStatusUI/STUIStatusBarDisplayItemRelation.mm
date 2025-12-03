@interface STUIStatusBarDisplayItemRelation
+ (id)allRelationWithRelations:(id)relations;
+ (id)anyRelationWithRelations:(id)relations;
+ (id)exclusionWithDisplayItemState:(id)state placement:(id)placement;
+ (id)requirementWithDisplayItemState:(id)state placement:(id)placement;
- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation STUIStatusBarDisplayItemRelation

+ (id)exclusionWithDisplayItemState:(id)state placement:(id)placement
{
  placementCopy = placement;
  stateCopy = state;
  v7 = objc_alloc_init(STUIStatusBarDisplayItemDependencyRelation);
  [(STUIStatusBarDisplayItemDependencyRelation *)v7 setItemState:stateCopy];

  [(STUIStatusBarDisplayItemDependencyRelation *)v7 setPlacement:placementCopy];

  return v7;
}

+ (id)requirementWithDisplayItemState:(id)state placement:(id)placement
{
  v4 = [self exclusionWithDisplayItemState:state placement:placement];
  [v4 setRequirement:1];

  return v4;
}

+ (id)anyRelationWithRelations:(id)relations
{
  relationsCopy = relations;
  v4 = objc_alloc_init(STUIStatusBarDisplayItemGroupRelation);
  [(STUIStatusBarDisplayItemGroupRelation *)v4 setRelations:relationsCopy];

  return v4;
}

+ (id)allRelationWithRelations:(id)relations
{
  relationsCopy = relations;
  v4 = objc_alloc_init(STUIStatusBarDisplayItemGroupRelation);
  [(STUIStatusBarDisplayItemGroupRelation *)v4 setRelations:relationsCopy];

  [(STUIStatusBarDisplayItemGroupRelation *)v4 setRequiresAll:1];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STUIStatusBarDisplayItemRelation *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  type = [(STUIStatusBarDisplayItemRelation *)self type];
  [v3 appendString:type withName:@"type" skipIfEmpty:1];

  v5 = [v3 appendBool:-[STUIStatusBarDisplayItemRelation isFulfilled](self withName:{"isFulfilled"), @"fulfilled"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarDisplayItemRelation *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarDisplayItemRelation *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug
{
  debugCopy = debug;
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STUIStatusBarDisplayItemRelation *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setUseDebugDescription:debugCopy];
  [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];

  return succinctDescriptionBuilder;
}

@end
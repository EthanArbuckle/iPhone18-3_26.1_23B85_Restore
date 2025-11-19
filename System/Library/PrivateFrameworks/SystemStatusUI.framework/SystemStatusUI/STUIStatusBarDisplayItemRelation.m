@interface STUIStatusBarDisplayItemRelation
+ (id)allRelationWithRelations:(id)a3;
+ (id)anyRelationWithRelations:(id)a3;
+ (id)exclusionWithDisplayItemState:(id)a3 placement:(id)a4;
+ (id)requirementWithDisplayItemState:(id)a3 placement:(id)a4;
- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation STUIStatusBarDisplayItemRelation

+ (id)exclusionWithDisplayItemState:(id)a3 placement:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(STUIStatusBarDisplayItemDependencyRelation);
  [(STUIStatusBarDisplayItemDependencyRelation *)v7 setItemState:v6];

  [(STUIStatusBarDisplayItemDependencyRelation *)v7 setPlacement:v5];

  return v7;
}

+ (id)requirementWithDisplayItemState:(id)a3 placement:(id)a4
{
  v4 = [a1 exclusionWithDisplayItemState:a3 placement:a4];
  [v4 setRequirement:1];

  return v4;
}

+ (id)anyRelationWithRelations:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(STUIStatusBarDisplayItemGroupRelation);
  [(STUIStatusBarDisplayItemGroupRelation *)v4 setRelations:v3];

  return v4;
}

+ (id)allRelationWithRelations:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(STUIStatusBarDisplayItemGroupRelation);
  [(STUIStatusBarDisplayItemGroupRelation *)v4 setRelations:v3];

  [(STUIStatusBarDisplayItemGroupRelation *)v4 setRequiresAll:1];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(STUIStatusBarDisplayItemRelation *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(STUIStatusBarDisplayItemRelation *)self type];
  [v3 appendString:v4 withName:@"type" skipIfEmpty:1];

  v5 = [v3 appendBool:-[STUIStatusBarDisplayItemRelation isFulfilled](self withName:{"isFulfilled"), @"fulfilled"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarDisplayItemRelation *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarDisplayItemRelation *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(STUIStatusBarDisplayItemRelation *)self succinctDescriptionBuilder];
  [v7 setUseDebugDescription:v4];
  [v7 setActiveMultilinePrefix:v6];

  return v7;
}

@end
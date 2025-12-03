@interface _UIStatusBarDisplayItemRelation
+ (id)allRelationWithRelations:(id)relations;
+ (id)anyRelationWithRelations:(id)relations;
+ (id)exclusionWithDisplayItemState:(id)state placement:(id)placement;
+ (id)requirementWithDisplayItemState:(id)state placement:(id)placement;
- (id)_ui_descriptionBuilder;
- (id)description;
@end

@implementation _UIStatusBarDisplayItemRelation

+ (id)exclusionWithDisplayItemState:(id)state placement:(id)placement
{
  placementCopy = placement;
  stateCopy = state;
  v7 = objc_alloc_init(_UIStatusBarDisplayItemDependencyRelation);
  [(_UIStatusBarDisplayItemDependencyRelation *)v7 setItemState:stateCopy];

  [(_UIStatusBarDisplayItemDependencyRelation *)v7 setPlacement:placementCopy];

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
  v4 = objc_alloc_init(_UIStatusBarDisplayItemGroupRelation);
  [(_UIStatusBarDisplayItemGroupRelation *)v4 setRelations:relationsCopy];

  return v4;
}

+ (id)allRelationWithRelations:(id)relations
{
  relationsCopy = relations;
  v4 = objc_alloc_init(_UIStatusBarDisplayItemGroupRelation);
  [(_UIStatusBarDisplayItemGroupRelation *)v4 setRelations:relationsCopy];

  [(_UIStatusBarDisplayItemGroupRelation *)v4 setRequiresAll:1];

  return v4;
}

- (id)_ui_descriptionBuilder
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _UIStatusBarDisplayItemRelation;
  _ui_descriptionBuilder = [&v8 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_type);
  v9[0] = v3;
  v4 = NSStringFromSelector(sel_isFulfilled);
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [_ui_descriptionBuilder appendKeys:v5];

  return v6;
}

- (id)description
{
  _ui_descriptionBuilder = [(_UIStatusBarDisplayItemRelation *)self _ui_descriptionBuilder];
  string = [_ui_descriptionBuilder string];

  return string;
}

@end
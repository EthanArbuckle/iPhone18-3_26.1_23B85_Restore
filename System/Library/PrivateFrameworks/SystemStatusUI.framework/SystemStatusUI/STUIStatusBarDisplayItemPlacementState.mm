@interface STUIStatusBarDisplayItemPlacementState
+ (id)stateForDisplayItemPlacement:(id)placement region:(id)region;
- (BOOL)areRelationsFulfilled;
- (BOOL)canBeEnabled;
- (BOOL)isEnabled;
- (STUIStatusBarRegion)region;
- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation STUIStatusBarDisplayItemPlacementState

- (BOOL)canBeEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_region);
  isEnabled = [WeakRetained isEnabled];

  if (!isEnabled)
  {
    return 0;
  }

  placement = self->_placement;

  return [(STUIStatusBarDisplayItemPlacement *)placement isEnabled];
}

- (BOOL)isEnabled
{
  canBeEnabled = [(STUIStatusBarDisplayItemPlacementState *)self canBeEnabled];
  if (canBeEnabled)
  {

    LOBYTE(canBeEnabled) = [(STUIStatusBarDisplayItemPlacementState *)self areRelationsFulfilled];
  }

  return canBeEnabled;
}

- (BOOL)areRelationsFulfilled
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_relations;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v9 + 1) + 8 * i) isFulfilled])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (STUIStatusBarRegion)region
{
  WeakRetained = objc_loadWeakRetained(&self->_region);

  return WeakRetained;
}

+ (id)stateForDisplayItemPlacement:(id)placement region:(id)region
{
  placementCopy = placement;
  regionCopy = region;
  v8 = objc_alloc_init(self);
  array = [MEMORY[0x277CBEB18] array];
  v10 = *(v8 + 3);
  *(v8 + 3) = array;

  v11 = *(v8 + 1);
  *(v8 + 1) = placementCopy;

  objc_storeWeak(v8 + 2, regionCopy);

  return v8;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STUIStatusBarDisplayItemPlacementState *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_region);
  identifier = [WeakRetained identifier];
  [v3 appendString:identifier withName:@"region"];

  v6 = [v3 appendBool:-[STUIStatusBarDisplayItemPlacementState isEnabled](self withName:{"isEnabled"), @"enabled"}];
  v7 = [v3 appendBool:-[STUIStatusBarDisplayItemPlacementState areRelationsFulfilled](self withName:{"areRelationsFulfilled"), @"relationsFulfilled"}];
  relations = [(STUIStatusBarDisplayItemPlacementState *)self relations];
  v9 = [v3 appendUnsignedInteger:objc_msgSend(relations withName:{"count"), @"relations.count"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarDisplayItemPlacementState *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarDisplayItemPlacementState *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug
{
  debugCopy = debug;
  succinctDescriptionBuilder = [(STUIStatusBarDisplayItemPlacementState *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setUseDebugDescription:debugCopy];

  return succinctDescriptionBuilder;
}

@end
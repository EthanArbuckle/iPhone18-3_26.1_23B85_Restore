@interface STUIStatusBarDisplayItemPlacementState
+ (id)stateForDisplayItemPlacement:(id)a3 region:(id)a4;
- (BOOL)areRelationsFulfilled;
- (BOOL)canBeEnabled;
- (BOOL)isEnabled;
- (STUIStatusBarRegion)region;
- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation STUIStatusBarDisplayItemPlacementState

- (BOOL)canBeEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_region);
  v4 = [WeakRetained isEnabled];

  if (!v4)
  {
    return 0;
  }

  placement = self->_placement;

  return [(STUIStatusBarDisplayItemPlacement *)placement isEnabled];
}

- (BOOL)isEnabled
{
  v3 = [(STUIStatusBarDisplayItemPlacementState *)self canBeEnabled];
  if (v3)
  {

    LOBYTE(v3) = [(STUIStatusBarDisplayItemPlacementState *)self areRelationsFulfilled];
  }

  return v3;
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

+ (id)stateForDisplayItemPlacement:(id)a3 region:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(a1);
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = *(v8 + 3);
  *(v8 + 3) = v9;

  v11 = *(v8 + 1);
  *(v8 + 1) = v6;

  objc_storeWeak(v8 + 2, v7);

  return v8;
}

- (id)succinctDescription
{
  v2 = [(STUIStatusBarDisplayItemPlacementState *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_region);
  v5 = [WeakRetained identifier];
  [v3 appendString:v5 withName:@"region"];

  v6 = [v3 appendBool:-[STUIStatusBarDisplayItemPlacementState isEnabled](self withName:{"isEnabled"), @"enabled"}];
  v7 = [v3 appendBool:-[STUIStatusBarDisplayItemPlacementState areRelationsFulfilled](self withName:{"areRelationsFulfilled"), @"relationsFulfilled"}];
  v8 = [(STUIStatusBarDisplayItemPlacementState *)self relations];
  v9 = [v3 appendUnsignedInteger:objc_msgSend(v8 withName:{"count"), @"relations.count"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarDisplayItemPlacementState *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarDisplayItemPlacementState *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4
{
  v4 = a4;
  v5 = [(STUIStatusBarDisplayItemPlacementState *)self succinctDescriptionBuilder];
  [v5 setUseDebugDescription:v4];

  return v5;
}

@end
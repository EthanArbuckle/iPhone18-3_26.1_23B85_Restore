@interface _UIStatusBarDisplayItemPlacementState
+ (id)stateForDisplayItemPlacement:(id)placement region:(id)region;
- (BOOL)areRelationsFulfilled;
- (BOOL)canBeEnabled;
- (BOOL)isEnabled;
- (_UIStatusBarRegion)region;
- (id)description;
@end

@implementation _UIStatusBarDisplayItemPlacementState

+ (id)stateForDisplayItemPlacement:(id)placement region:(id)region
{
  placementCopy = placement;
  regionCopy = region;
  v8 = objc_alloc_init(self);
  array = [MEMORY[0x1E695DF70] array];
  v10 = *(v8 + 3);
  *(v8 + 3) = array;

  v11 = *(v8 + 1);
  *(v8 + 1) = placementCopy;

  objc_storeWeak(v8 + 2, regionCopy);

  return v8;
}

- (BOOL)areRelationsFulfilled
{
  v14 = *MEMORY[0x1E69E9840];
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

- (BOOL)canBeEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_region);
  isEnabled = [WeakRetained isEnabled];

  if (!isEnabled)
  {
    return 0;
  }

  placement = self->_placement;

  return [(_UIStatusBarDisplayItemPlacement *)placement isEnabled];
}

- (BOOL)isEnabled
{
  canBeEnabled = [(_UIStatusBarDisplayItemPlacementState *)self canBeEnabled];
  if (canBeEnabled)
  {

    LOBYTE(canBeEnabled) = [(_UIStatusBarDisplayItemPlacementState *)self areRelationsFulfilled];
  }

  return canBeEnabled;
}

- (id)description
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"region";
  WeakRetained = objc_loadWeakRetained(&self->_region);
  identifier = [WeakRetained identifier];
  v14[0] = identifier;
  v13[1] = @"enabled";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_UIStatusBarDisplayItemPlacementState isEnabled](self, "isEnabled")}];
  v14[1] = v5;
  v13[2] = @"relationsFulfilled";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_UIStatusBarDisplayItemPlacementState areRelationsFulfilled](self, "areRelationsFulfilled")}];
  v14[2] = v6;
  v13[3] = @"relations";
  v7 = MEMORY[0x1E696AD98];
  relations = [(_UIStatusBarDisplayItemPlacementState *)self relations];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(relations, "count")}];
  v14[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  v11 = [UIDescriptionBuilder descriptionForObject:self namesAndObjects:v10];

  return v11;
}

- (_UIStatusBarRegion)region
{
  WeakRetained = objc_loadWeakRetained(&self->_region);

  return WeakRetained;
}

@end
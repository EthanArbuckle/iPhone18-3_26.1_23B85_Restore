@interface _UIStatusBarDisplayItemPlacement
+ (_UIStatusBarDisplayItemPlacement)placementWithIdentifier:(id)a3 priority:(int64_t)a4;
+ (id)spacerPlacementWithSize:(CGSize)a3 priority:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)excludingAllPlacementsInRegions:(id)a3 exceptPlacements:(id)a4;
- (id)excludingPlacements:(id)a3;
- (id)requiringAllPlacements:(id)a3;
- (id)requiringAnyPlacements:(id)a3;
- (unint64_t)hash;
@end

@implementation _UIStatusBarDisplayItemPlacement

+ (_UIStatusBarDisplayItemPlacement)placementWithIdentifier:(id)a3 priority:(int64_t)a4
{
  v7 = a3;
  v8 = objc_alloc_init(a1);
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"_UIStatusBarDisplayItemPlacement.m" lineNumber:21 description:@"identifier must not be nil"];
  }

  v9 = v8[3];
  v8[3] = v7;

  v8[2] = a4;
  *(v8 + 8) = 1;

  return v8;
}

- (id)excludingPlacements:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [v10 priority];
        if (v11 >= [(_UIStatusBarDisplayItemPlacement *)self priority])
        {
          v14 = [MEMORY[0x1E696AAA8] currentHandler];
          [v14 handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItemPlacement.m" lineNumber:39 description:{@"Item placement %@ can't exclude item placement with higher priority %@", self, v10}];
        }

        v12 = [v10 identifier];
        v13 = [(_UIStatusBarDisplayItemPlacement *)self identifier];

        if (v12 == v13)
        {
          v15 = [MEMORY[0x1E696AAA8] currentHandler];
          [v15 handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItemPlacement.m" lineNumber:40 description:{@"Item placement %@ can't exclude item placement with same identifier %@", self, v10}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  if (!self->_excludedPlacements)
  {
    v16 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    excludedPlacements = self->_excludedPlacements;
    self->_excludedPlacements = v16;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = v5;
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(NSHashTable *)self->_excludedPlacements addObject:*(*(&v24 + 1) + 8 * j)];
      }

      v20 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v20);
  }

  return self;
}

- (id)excludingAllPlacementsInRegions:(id)a3 exceptPlacements:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  excludedRegionIdentifiers = self->_excludedRegionIdentifiers;
  if (excludedRegionIdentifiers)
  {
    v9 = [(NSSet *)excludedRegionIdentifiers setByAddingObjectsFromArray:v6];
    v10 = self->_excludedRegionIdentifiers;
    self->_excludedRegionIdentifiers = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E695DFD8] setWithArray:v6];
    v12 = self->_excludedRegionIdentifiers;
    self->_excludedRegionIdentifiers = v11;

    v13 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    includedPlacements = self->_includedPlacements;
    self->_includedPlacements = v13;

    [(NSHashTable *)self->_includedPlacements addObject:self];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(NSHashTable *)self->_includedPlacements addObject:*(*(&v21 + 1) + 8 * v19++), v21];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }

  return self;
}

- (id)requiringAllPlacements:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [v10 priority];
        if (v11 <= [(_UIStatusBarDisplayItemPlacement *)self priority])
        {
          v14 = [MEMORY[0x1E696AAA8] currentHandler];
          [v14 handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItemPlacement.m" lineNumber:80 description:{@"Item placement %@ can't require item placement with lower priority %@", self, v10}];
        }

        v12 = [v10 identifier];
        v13 = [(_UIStatusBarDisplayItemPlacement *)self identifier];

        if (v12 == v13)
        {
          v15 = [MEMORY[0x1E696AAA8] currentHandler];
          [v15 handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItemPlacement.m" lineNumber:81 description:{@"Item placement %@ can't require item placement with same identifier %@", self, v10}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  if (!self->_allRequiredPlacements)
  {
    v16 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    allRequiredPlacements = self->_allRequiredPlacements;
    self->_allRequiredPlacements = v16;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = v5;
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(NSHashTable *)self->_allRequiredPlacements addObject:*(*(&v24 + 1) + 8 * j)];
      }

      v20 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v20);
  }

  return self;
}

- (id)requiringAnyPlacements:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [v10 priority];
        if (v11 <= [(_UIStatusBarDisplayItemPlacement *)self priority])
        {
          v14 = [MEMORY[0x1E696AAA8] currentHandler];
          [v14 handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItemPlacement.m" lineNumber:98 description:{@"Item placement %@ can't require item placement with lower priority %@", self, v10}];
        }

        v12 = [v10 identifier];
        v13 = [(_UIStatusBarDisplayItemPlacement *)self identifier];

        if (v12 == v13)
        {
          v15 = [MEMORY[0x1E696AAA8] currentHandler];
          [v15 handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItemPlacement.m" lineNumber:99 description:{@"Item placement %@ can't require item placement with same identifier %@", self, v10}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  if (!self->_anyRequiredPlacements)
  {
    v16 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    anyRequiredPlacements = self->_anyRequiredPlacements;
    self->_anyRequiredPlacements = v16;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = v5;
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(NSHashTable *)self->_anyRequiredPlacements addObject:*(*(&v24 + 1) + 8 * j)];
      }

      v20 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v20);
  }

  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_identifier == v4[3] && self->_priority == v4[2];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(_UIStatusBarDisplayItemPlacement *)self identifier];
  v4 = [v3 hash];
  priority = self->_priority;

  return priority ^ v4;
}

- (id)description
{
  v19[6] = *MEMORY[0x1E69E9840];
  v18[0] = @"identifier";
  v17 = [(_UIStatusBarDisplayItemPlacement *)self identifier];
  v19[0] = v17;
  v18[1] = @"enabled";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[_UIStatusBarDisplayItemPlacement isEnabled](self, "isEnabled")}];
  v19[1] = v3;
  v18[2] = @"priority";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_UIStatusBarDisplayItemPlacement priority](self, "priority")}];
  v19[2] = v4;
  v18[3] = @"excludedPlacements";
  v5 = MEMORY[0x1E696AD98];
  v6 = [(_UIStatusBarDisplayItemPlacement *)self excludedPlacements];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
  v19[3] = v7;
  v18[4] = @"allRequiredPlacements";
  v8 = MEMORY[0x1E696AD98];
  v9 = [(_UIStatusBarDisplayItemPlacement *)self allRequiredPlacements];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
  v19[4] = v10;
  v18[5] = @"anyRequiredPlacements";
  v11 = MEMORY[0x1E696AD98];
  v12 = [(_UIStatusBarDisplayItemPlacement *)self anyRequiredPlacements];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
  v19[5] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:6];
  v15 = [UIDescriptionBuilder descriptionForObject:self namesAndObjects:v14];

  return v15;
}

+ (id)spacerPlacementWithSize:(CGSize)a3 priority:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = +[_UIStatusBarSpacerItem randomDisplayIdentifier];
  v8 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v7 priority:a4];
  v13 = @"size";
  v9 = [MEMORY[0x1E696B098] valueWithCGSize:{width, height}];
  v14[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = [v8 withItemInfo:v10];

  return v11;
}

@end
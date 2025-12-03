@interface _UIStatusBarDisplayItemPlacement
+ (_UIStatusBarDisplayItemPlacement)placementWithIdentifier:(id)identifier priority:(int64_t)priority;
+ (id)spacerPlacementWithSize:(CGSize)size priority:(int64_t)priority;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)excludingAllPlacementsInRegions:(id)regions exceptPlacements:(id)placements;
- (id)excludingPlacements:(id)placements;
- (id)requiringAllPlacements:(id)placements;
- (id)requiringAnyPlacements:(id)placements;
- (unint64_t)hash;
@end

@implementation _UIStatusBarDisplayItemPlacement

+ (_UIStatusBarDisplayItemPlacement)placementWithIdentifier:(id)identifier priority:(int64_t)priority
{
  identifierCopy = identifier;
  v8 = objc_alloc_init(self);
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItemPlacement.m" lineNumber:21 description:@"identifier must not be nil"];
  }

  v9 = v8[3];
  v8[3] = identifierCopy;

  v8[2] = priority;
  *(v8 + 8) = 1;

  return v8;
}

- (id)excludingPlacements:(id)placements
{
  v34 = *MEMORY[0x1E69E9840];
  placementsCopy = placements;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [placementsCopy countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(placementsCopy);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        priority = [v10 priority];
        if (priority >= [(_UIStatusBarDisplayItemPlacement *)self priority])
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItemPlacement.m" lineNumber:39 description:{@"Item placement %@ can't exclude item placement with higher priority %@", self, v10}];
        }

        identifier = [v10 identifier];
        identifier2 = [(_UIStatusBarDisplayItemPlacement *)self identifier];

        if (identifier == identifier2)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItemPlacement.m" lineNumber:40 description:{@"Item placement %@ can't exclude item placement with same identifier %@", self, v10}];
        }
      }

      v7 = [placementsCopy countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  if (!self->_excludedPlacements)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    excludedPlacements = self->_excludedPlacements;
    self->_excludedPlacements = weakObjectsHashTable;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = placementsCopy;
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

- (id)excludingAllPlacementsInRegions:(id)regions exceptPlacements:(id)placements
{
  v26 = *MEMORY[0x1E69E9840];
  regionsCopy = regions;
  placementsCopy = placements;
  excludedRegionIdentifiers = self->_excludedRegionIdentifiers;
  if (excludedRegionIdentifiers)
  {
    v9 = [(NSSet *)excludedRegionIdentifiers setByAddingObjectsFromArray:regionsCopy];
    v10 = self->_excludedRegionIdentifiers;
    self->_excludedRegionIdentifiers = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E695DFD8] setWithArray:regionsCopy];
    v12 = self->_excludedRegionIdentifiers;
    self->_excludedRegionIdentifiers = v11;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    includedPlacements = self->_includedPlacements;
    self->_includedPlacements = weakObjectsHashTable;

    [(NSHashTable *)self->_includedPlacements addObject:self];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = placementsCopy;
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

- (id)requiringAllPlacements:(id)placements
{
  v34 = *MEMORY[0x1E69E9840];
  placementsCopy = placements;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [placementsCopy countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(placementsCopy);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        priority = [v10 priority];
        if (priority <= [(_UIStatusBarDisplayItemPlacement *)self priority])
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItemPlacement.m" lineNumber:80 description:{@"Item placement %@ can't require item placement with lower priority %@", self, v10}];
        }

        identifier = [v10 identifier];
        identifier2 = [(_UIStatusBarDisplayItemPlacement *)self identifier];

        if (identifier == identifier2)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItemPlacement.m" lineNumber:81 description:{@"Item placement %@ can't require item placement with same identifier %@", self, v10}];
        }
      }

      v7 = [placementsCopy countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  if (!self->_allRequiredPlacements)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    allRequiredPlacements = self->_allRequiredPlacements;
    self->_allRequiredPlacements = weakObjectsHashTable;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = placementsCopy;
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

- (id)requiringAnyPlacements:(id)placements
{
  v34 = *MEMORY[0x1E69E9840];
  placementsCopy = placements;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [placementsCopy countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(placementsCopy);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        priority = [v10 priority];
        if (priority <= [(_UIStatusBarDisplayItemPlacement *)self priority])
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItemPlacement.m" lineNumber:98 description:{@"Item placement %@ can't require item placement with lower priority %@", self, v10}];
        }

        identifier = [v10 identifier];
        identifier2 = [(_UIStatusBarDisplayItemPlacement *)self identifier];

        if (identifier == identifier2)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItemPlacement.m" lineNumber:99 description:{@"Item placement %@ can't require item placement with same identifier %@", self, v10}];
        }
      }

      v7 = [placementsCopy countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  if (!self->_anyRequiredPlacements)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    anyRequiredPlacements = self->_anyRequiredPlacements;
    self->_anyRequiredPlacements = weakObjectsHashTable;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = placementsCopy;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_identifier == equalCopy[3] && self->_priority == equalCopy[2];

  return v5;
}

- (unint64_t)hash
{
  identifier = [(_UIStatusBarDisplayItemPlacement *)self identifier];
  v4 = [identifier hash];
  priority = self->_priority;

  return priority ^ v4;
}

- (id)description
{
  v19[6] = *MEMORY[0x1E69E9840];
  v18[0] = @"identifier";
  identifier = [(_UIStatusBarDisplayItemPlacement *)self identifier];
  v19[0] = identifier;
  v18[1] = @"enabled";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[_UIStatusBarDisplayItemPlacement isEnabled](self, "isEnabled")}];
  v19[1] = v3;
  v18[2] = @"priority";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_UIStatusBarDisplayItemPlacement priority](self, "priority")}];
  v19[2] = v4;
  v18[3] = @"excludedPlacements";
  v5 = MEMORY[0x1E696AD98];
  excludedPlacements = [(_UIStatusBarDisplayItemPlacement *)self excludedPlacements];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(excludedPlacements, "count")}];
  v19[3] = v7;
  v18[4] = @"allRequiredPlacements";
  v8 = MEMORY[0x1E696AD98];
  allRequiredPlacements = [(_UIStatusBarDisplayItemPlacement *)self allRequiredPlacements];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(allRequiredPlacements, "count")}];
  v19[4] = v10;
  v18[5] = @"anyRequiredPlacements";
  v11 = MEMORY[0x1E696AD98];
  anyRequiredPlacements = [(_UIStatusBarDisplayItemPlacement *)self anyRequiredPlacements];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(anyRequiredPlacements, "count")}];
  v19[5] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:6];
  v15 = [UIDescriptionBuilder descriptionForObject:self namesAndObjects:v14];

  return v15;
}

+ (id)spacerPlacementWithSize:(CGSize)size priority:(int64_t)priority
{
  height = size.height;
  width = size.width;
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = +[_UIStatusBarSpacerItem randomDisplayIdentifier];
  v8 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v7 priority:priority];
  v13 = @"size";
  v9 = [MEMORY[0x1E696B098] valueWithCGSize:{width, height}];
  v14[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = [v8 withItemInfo:v10];

  return v11;
}

@end
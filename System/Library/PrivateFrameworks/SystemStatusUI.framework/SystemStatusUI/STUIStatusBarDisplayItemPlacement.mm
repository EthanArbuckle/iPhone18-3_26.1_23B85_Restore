@interface STUIStatusBarDisplayItemPlacement
+ (STUIStatusBarDisplayItemPlacement)placementWithIdentifier:(id)identifier priority:(int64_t)priority;
+ (id)additionalEntryPlacementWithIdentifier:(id)identifier priority:(int64_t)priority;
+ (id)separatorPlacementWithLineHeight:(double)height lineWidth:(double)width priority:(int64_t)priority;
+ (id)spacerPlacementWithSize:(CGSize)size priority:(int64_t)priority;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)excludingAllPlacementsInRegions:(id)regions exceptPlacements:(id)placements;
- (id)excludingPlacements:(id)placements;
- (id)requiringAllPlacements:(id)placements;
- (id)requiringAnyPlacements:(id)placements;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation STUIStatusBarDisplayItemPlacement

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendPointer:self->_identifier];
  v5 = [builder appendInteger:{-[STUIStatusBarDisplayItemPlacement priority](self, "priority")}];
  v6 = [builder hash];

  return v6;
}

+ (id)spacerPlacementWithSize:(CGSize)size priority:(int64_t)priority
{
  height = size.height;
  width = size.width;
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = +[STUIStatusBarSpacerItem randomDisplayIdentifier];
  v8 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v7 priority:priority];
  v13 = @"size";
  v9 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
  v14[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = [v8 withItemInfo:v10];

  return v11;
}

+ (STUIStatusBarDisplayItemPlacement)placementWithIdentifier:(id)identifier priority:(int64_t)priority
{
  identifierCopy = identifier;
  v7 = objc_alloc_init(self);
  v8 = v7[3];
  v7[3] = identifierCopy;

  v7[2] = priority;
  *(v7 + 8) = 1;

  return v7;
}

- (id)excludingPlacements:(id)placements
{
  v26 = *MEMORY[0x277D85DE8];
  placementsCopy = placements;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [placementsCopy countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    while (1)
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(placementsCopy);
      }

      if (!--v6)
      {
        v6 = [placementsCopy countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  if (!self->_excludedPlacements)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    excludedPlacements = self->_excludedPlacements;
    self->_excludedPlacements = weakObjectsHashTable;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = placementsCopy;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NSHashTable *)self->_excludedPlacements addObject:*(*(&v16 + 1) + 8 * v14++), v16];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  return self;
}

- (id)excludingAllPlacementsInRegions:(id)regions exceptPlacements:(id)placements
{
  v26 = *MEMORY[0x277D85DE8];
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
    v11 = [MEMORY[0x277CBEB98] setWithArray:regionsCopy];
    v12 = self->_excludedRegionIdentifiers;
    self->_excludedRegionIdentifiers = v11;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
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
  v26 = *MEMORY[0x277D85DE8];
  placementsCopy = placements;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [placementsCopy countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    while (1)
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(placementsCopy);
      }

      if (!--v6)
      {
        v6 = [placementsCopy countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  if (!self->_allRequiredPlacements)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    allRequiredPlacements = self->_allRequiredPlacements;
    self->_allRequiredPlacements = weakObjectsHashTable;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = placementsCopy;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NSHashTable *)self->_allRequiredPlacements addObject:*(*(&v16 + 1) + 8 * v14++), v16];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  return self;
}

- (id)requiringAnyPlacements:(id)placements
{
  v26 = *MEMORY[0x277D85DE8];
  placementsCopy = placements;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [placementsCopy countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    while (1)
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(placementsCopy);
      }

      if (!--v6)
      {
        v6 = [placementsCopy countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  if (!self->_anyRequiredPlacements)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    anyRequiredPlacements = self->_anyRequiredPlacements;
    self->_anyRequiredPlacements = weakObjectsHashTable;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = placementsCopy;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NSHashTable *)self->_anyRequiredPlacements addObject:*(*(&v16 + 1) + 8 * v14++), v16];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = equalCopy;
  identifier = self->_identifier;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __45__STUIStatusBarDisplayItemPlacement_isEqual___block_invoke;
  v19[3] = &unk_279D38A70;
  v8 = v6;
  v20 = v8;
  v9 = [v5 appendPointer:identifier counterpart:v19];
  priority = [(STUIStatusBarDisplayItemPlacement *)self priority];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __45__STUIStatusBarDisplayItemPlacement_isEqual___block_invoke_2;
  v17 = &unk_279D38A98;
  v18 = v8;
  v11 = v8;
  v12 = [v5 appendInteger:priority counterpart:&v14];
  LOBYTE(priority) = [v5 isEqual];

  return priority;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STUIStatusBarDisplayItemPlacement *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarDisplayItemPlacement *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarDisplayItemPlacement *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug
{
  debugCopy = debug;
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STUIStatusBarDisplayItemPlacement *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setUseDebugDescription:debugCopy];
  [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];

  activeMultilinePrefix = [succinctDescriptionBuilder activeMultilinePrefix];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__STUIStatusBarDisplayItemPlacement__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
  v12[3] = &unk_279D38150;
  v9 = succinctDescriptionBuilder;
  v13 = v9;
  selfCopy = self;
  [v9 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v12];

  v10 = v9;
  return v9;
}

void __85__STUIStatusBarDisplayItemPlacement__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 appendObject:v3 withName:@"identifier"];

  v5 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isEnabled"), @"enabled"}];
  v6 = [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"priority"), @"priority"}];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) excludedPlacements];
  v9 = [v7 appendInteger:objc_msgSend(v8 withName:{"count"), @"excludedPlacements"}];

  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) allRequiredPlacements];
  v12 = [v10 appendInteger:objc_msgSend(v11 withName:{"count"), @"allRequiredPlacements"}];

  v13 = *(a1 + 32);
  v15 = [*(a1 + 40) anyRequiredPlacements];
  v14 = [v13 appendInteger:objc_msgSend(v15 withName:{"count"), @"anyRequiredPlacements"}];
}

+ (id)additionalEntryPlacementWithIdentifier:(id)identifier priority:(int64_t)priority
{
  v5 = [(STUIStatusBarItem *)STUIStatusBarAdditionalEntryItem displayItemIdentifierFromString:identifier];
  v6 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v5 priority:priority];

  return v6;
}

+ (id)separatorPlacementWithLineHeight:(double)height lineWidth:(double)width priority:(int64_t)priority
{
  v16[2] = *MEMORY[0x277D85DE8];
  v8 = +[STUIStatusBarSeparatorItem randomDisplayIdentifier];
  v9 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v8 priority:priority];
  v15[0] = @"lineHeight";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:height];
  v15[1] = @"lineWidth";
  v16[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:width];
  v16[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v13 = [v9 withItemInfo:v12];

  return v13;
}

@end
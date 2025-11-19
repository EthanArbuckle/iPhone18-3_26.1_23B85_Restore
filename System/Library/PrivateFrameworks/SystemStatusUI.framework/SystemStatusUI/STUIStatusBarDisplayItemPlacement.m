@interface STUIStatusBarDisplayItemPlacement
+ (STUIStatusBarDisplayItemPlacement)placementWithIdentifier:(id)a3 priority:(int64_t)a4;
+ (id)additionalEntryPlacementWithIdentifier:(id)a3 priority:(int64_t)a4;
+ (id)separatorPlacementWithLineHeight:(double)a3 lineWidth:(double)a4 priority:(int64_t)a5;
+ (id)spacerPlacementWithSize:(CGSize)a3 priority:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)excludingAllPlacementsInRegions:(id)a3 exceptPlacements:(id)a4;
- (id)excludingPlacements:(id)a3;
- (id)requiringAllPlacements:(id)a3;
- (id)requiringAnyPlacements:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation STUIStatusBarDisplayItemPlacement

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendPointer:self->_identifier];
  v5 = [v3 appendInteger:{-[STUIStatusBarDisplayItemPlacement priority](self, "priority")}];
  v6 = [v3 hash];

  return v6;
}

+ (id)spacerPlacementWithSize:(CGSize)a3 priority:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = +[STUIStatusBarSpacerItem randomDisplayIdentifier];
  v8 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v7 priority:a4];
  v13 = @"size";
  v9 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
  v14[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = [v8 withItemInfo:v10];

  return v11;
}

+ (STUIStatusBarDisplayItemPlacement)placementWithIdentifier:(id)a3 priority:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(a1);
  v8 = v7[3];
  v7[3] = v6;

  v7[2] = a4;
  *(v7 + 8) = 1;

  return v7;
}

- (id)excludingPlacements:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    while (1)
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(v4);
      }

      if (!--v6)
      {
        v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  if (!self->_excludedPlacements)
  {
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    excludedPlacements = self->_excludedPlacements;
    self->_excludedPlacements = v8;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v4;
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

- (id)excludingAllPlacementsInRegions:(id)a3 exceptPlacements:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
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
    v11 = [MEMORY[0x277CBEB98] setWithArray:v6];
    v12 = self->_excludedRegionIdentifiers;
    self->_excludedRegionIdentifiers = v11;

    v13 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
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
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    while (1)
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(v4);
      }

      if (!--v6)
      {
        v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  if (!self->_allRequiredPlacements)
  {
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    allRequiredPlacements = self->_allRequiredPlacements;
    self->_allRequiredPlacements = v8;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v4;
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

- (id)requiringAnyPlacements:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    while (1)
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(v4);
      }

      if (!--v6)
      {
        v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  if (!self->_anyRequiredPlacements)
  {
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    anyRequiredPlacements = self->_anyRequiredPlacements;
    self->_anyRequiredPlacements = v8;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v4;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = v4;
  identifier = self->_identifier;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __45__STUIStatusBarDisplayItemPlacement_isEqual___block_invoke;
  v19[3] = &unk_279D38A70;
  v8 = v6;
  v20 = v8;
  v9 = [v5 appendPointer:identifier counterpart:v19];
  v10 = [(STUIStatusBarDisplayItemPlacement *)self priority];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __45__STUIStatusBarDisplayItemPlacement_isEqual___block_invoke_2;
  v17 = &unk_279D38A98;
  v18 = v8;
  v11 = v8;
  v12 = [v5 appendInteger:v10 counterpart:&v14];
  LOBYTE(v10) = [v5 isEqual];

  return v10;
}

- (id)succinctDescription
{
  v2 = [(STUIStatusBarDisplayItemPlacement *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarDisplayItemPlacement *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarDisplayItemPlacement *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(STUIStatusBarDisplayItemPlacement *)self succinctDescriptionBuilder];
  [v7 setUseDebugDescription:v4];
  [v7 setActiveMultilinePrefix:v6];

  v8 = [v7 activeMultilinePrefix];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__STUIStatusBarDisplayItemPlacement__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
  v12[3] = &unk_279D38150;
  v9 = v7;
  v13 = v9;
  v14 = self;
  [v9 appendBodySectionWithName:0 multilinePrefix:v8 block:v12];

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

+ (id)additionalEntryPlacementWithIdentifier:(id)a3 priority:(int64_t)a4
{
  v5 = [(STUIStatusBarItem *)STUIStatusBarAdditionalEntryItem displayItemIdentifierFromString:a3];
  v6 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v5 priority:a4];

  return v6;
}

+ (id)separatorPlacementWithLineHeight:(double)a3 lineWidth:(double)a4 priority:(int64_t)a5
{
  v16[2] = *MEMORY[0x277D85DE8];
  v8 = +[STUIStatusBarSeparatorItem randomDisplayIdentifier];
  v9 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v8 priority:a5];
  v15[0] = @"lineHeight";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v15[1] = @"lineWidth";
  v16[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v16[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v13 = [v9 withItemInfo:v12];

  return v13;
}

@end
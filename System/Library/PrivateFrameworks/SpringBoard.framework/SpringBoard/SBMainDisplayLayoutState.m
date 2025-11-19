@interface SBMainDisplayLayoutState
+ (id)_elementIdentifiersToLayoutAttributesForElements:(id)a3 spaceConfiguration:(int64_t)a4;
- (BOOL)effectivelyRepresentsHomeScreen;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFullScreen;
- (BOOL)isSplitView;
- (NSDictionary)displayItemLayoutAttributesMap;
- (id)_initWithLayoutElements:(id)a3 interfaceOrientation:(int64_t)a4 interfaceOrientationByLayoutElement:(id)a5;
- (id)_initWithLayoutElements:(id)a3 interfaceOrientation:(int64_t)a4 interfaceOrientationByLayoutElement:(id)a5 spaceConfiguration:(int64_t)a6 elementIdentifiersToLayoutAttributes:(id)a7 floatingConfiguration:(int64_t)a8 unlockedEnvironmentMode:(int64_t)a9 floatingSwitcherVisible:(BOOL)a10 centerConfiguration:(int64_t)a11 centerEntityModal:(BOOL)a12 peekConfiguration:(int64_t)a13 bundleIDShowingAppExpose:(id)a14 windowPickerRole:(int64_t)a15 displayOrdinal:(int64_t)a16 isDisplayExternal:(BOOL)a17;
- (id)_initWithLayoutElements:(id)a3 interfaceOrientation:(int64_t)a4 interfaceOrientationByLayoutElement:(id)a5 spaceConfiguration:(int64_t)a6 floatingConfiguration:(int64_t)a7 unlockedEnvironmentMode:(int64_t)a8 floatingSwitcherVisible:(BOOL)a9 centerConfiguration:(int64_t)a10 centerEntityModal:(BOOL)a11 peekConfiguration:(int64_t)a12 bundleIDShowingAppExpose:(id)a13 windowPickerRole:(int64_t)a14 displayOrdinal:(int64_t)a15 isDisplayExternal:(BOOL)a16;
- (id)_initWithLayoutElements:(id)a3 spaceConfiguration:(int64_t)a4 elementIdentifiersToLayoutAttributes:(id)a5 floatingConfiguration:(int64_t)a6 unlockedEnvironmentMode:(int64_t)a7 floatingSwitcherVisible:(BOOL)a8 centerConfiguration:(int64_t)a9 centerEntityModal:(BOOL)a10 peekConfiguration:(int64_t)a11 bundleIDShowingAppExpose:(id)a12 windowPickerRole:(int64_t)a13 displayOrdinal:(int64_t)a14 isDisplayExternal:(BOOL)a15;
- (id)_initWithLayoutElements:(id)a3 spaceConfiguration:(int64_t)a4 floatingConfiguration:(int64_t)a5 unlockedEnvironmentMode:(int64_t)a6 floatingSwitcherVisible:(BOOL)a7 centerConfiguration:(int64_t)a8 centerEntityModal:(BOOL)a9 peekConfiguration:(int64_t)a10 bundleIDShowingAppExpose:(id)a11 windowPickerRole:(int64_t)a12 displayOrdinal:(int64_t)a13 isDisplayExternal:(BOOL)a14;
- (id)_initWithLayoutState:(id)a3;
- (id)_layoutAttributesForElementWithIdentifier:(id)a3;
- (id)appLayout;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)floatingAppLayout;
- (id)layoutAttributesForElement:(id)a3;
- (int64_t)_defaultInterfaceOrientation;
- (unint64_t)hash;
- (void)_applyElementInterfaceOrientationsToLayoutAttributes;
- (void)_setLayoutAttributes:(id)a3 forLayoutElement:(id)a4;
- (void)_updateSizingPoliciesForLayoutElements:(id)a3;
- (void)invalidateAppLayout;
- (void)invalidateFloatingAppLayout;
- (void)setInterfaceOrientationByLayoutElementIdentifier:(id)a3;
@end

@implementation SBMainDisplayLayoutState

- (id)appLayout
{
  v51 = *MEMORY[0x277D85DE8];
  cachedAppLayoutIfAny = self->_cachedAppLayoutIfAny;
  if (!cachedAppLayoutIfAny)
  {
    v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v40 = self;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v4 = [(SBLayoutState *)self elements];
    v5 = [v4 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v5)
    {
      v6 = v5;
      v38 = 0;
      v7 = *v46;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v46 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v45 + 1) + 8 * i);
          v10 = [v9 layoutRole];
          if (SBLayoutRoleIsValid(v10) && v10 != 3)
          {
            v12 = [SBDisplayItem displayItemForLayoutElement:v9];
            v13 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
            [v39 setObject:v12 forKeyedSubscript:v13];

            if (v10 == 4)
            {
              v14 = v9;

              v38 = v14;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v6);
    }

    else
    {
      v38 = 0;
    }

    if (![v39 count])
    {
      v19 = v40;
LABEL_37:

      cachedAppLayoutIfAny = v19->_cachedAppLayoutIfAny;
      goto LABEL_38;
    }

    if (v38)
    {
      v15 = SBAppLayoutCenterConfigurationFromMainDisplayLayoutStateCenterConfiguration([(SBMainDisplayLayoutState *)v40 centerConfiguration]);
      if (v15)
      {
        v16 = v15;
        v17 = [(SBMainDisplayLayoutState *)v40 isCenterEntityModal];
        v18 = 3;
        if (!v17)
        {
          v18 = 1;
        }

        goto LABEL_26;
      }

      v20 = [MEMORY[0x277CCABB0] numberWithInteger:4];
      [v39 removeObjectForKey:v20];
    }

    v16 = 0;
    v38 = 0;
    v18 = 1;
LABEL_26:
    v37 = v18;
    v21 = SBAppLayoutConfigurationFromMainDisplayLayoutStateSpaceConfiguration([(SBMainDisplayLayoutState *)v40 spaceConfiguration]);
    if (v21 >= 2 && [v39 count] == 1)
    {
      v21 = 1;
    }

    v22 = objc_opt_new();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v23 = v39;
    v24 = [v23 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v42;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v42 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v41 + 1) + 8 * j);
          v29 = -[SBLayoutState elementWithRole:](v40, "elementWithRole:", [v28 integerValue]);
          v30 = [v23 objectForKey:v28];
          v31 = [(SBMainDisplayLayoutState *)v40 layoutAttributesForElement:v29];
          [v22 setObject:v31 forKey:v30];
        }

        v25 = [v23 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v25);
    }

    v32 = [v22 copy];
    v19 = v40;
    cachedLayoutAttributesIfAny = v40->_cachedLayoutAttributesIfAny;
    v40->_cachedLayoutAttributesIfAny = v32;

    v34 = [[SBAppLayout alloc] initWithItemsForLayoutRoles:v23 configuration:v21 centerConfiguration:v16 environment:v37 hidden:0 preferredDisplayOrdinal:v40->_displayOrdinal];
    v35 = v40->_cachedAppLayoutIfAny;
    v40->_cachedAppLayoutIfAny = v34;

    goto LABEL_37;
  }

LABEL_38:

  return cachedAppLayoutIfAny;
}

- (int64_t)_defaultInterfaceOrientation
{
  if ([(SBMainDisplayLayoutState *)self isDisplayExternal])
  {
    return 1;
  }

  v3 = SBApp;

  return [v3 activeInterfaceOrientation];
}

- (void)invalidateAppLayout
{
  v4.receiver = self;
  v4.super_class = SBMainDisplayLayoutState;
  [(SBLayoutState *)&v4 invalidateAppLayout];
  cachedAppLayoutIfAny = self->_cachedAppLayoutIfAny;
  self->_cachedAppLayoutIfAny = 0;
}

- (BOOL)isFullScreen
{
  v3 = [(SBLayoutState *)self elementWithRole:1];
  if (v3)
  {
    v4 = [(SBLayoutState *)self elementWithRole:2];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_applyElementInterfaceOrientationsToLayoutAttributes
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_elementIdentifiersToLayoutAttributes)
  {
    v3 = MEMORY[0x277CBEB38];
    v4 = [(SBLayoutState *)self elements];
    v5 = [v3 dictionaryWithCapacity:{objc_msgSend(v4, "count")}];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(SBLayoutState *)self elements];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v16 + 1) + 8 * v10) uniqueIdentifier];
          v12 = [(SBMainDisplayLayoutState *)self _layoutAttributesForElementWithIdentifier:v11];
          [(SBLayoutState *)self interfaceOrientationForElementIdentifier:v11];
          v13 = [SBDisplayItemLayoutAttributes attributesByModifyingContentOrientation:v12];

          [v5 setValue:v13 forKey:v11];
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v14 = [v5 copy];
    elementIdentifiersToLayoutAttributes = self->_elementIdentifiersToLayoutAttributes;
    self->_elementIdentifiersToLayoutAttributes = v14;
  }
}

- (id)floatingAppLayout
{
  v12[1] = *MEMORY[0x277D85DE8];
  cachedFloatingAppLayoutIfAny = self->_cachedFloatingAppLayoutIfAny;
  if (!cachedFloatingAppLayoutIfAny)
  {
    v4 = [(SBLayoutState *)self elementWithRole:3];
    if (v4)
    {
      v5 = [SBDisplayItem displayItemForLayoutElement:v4];
      v6 = [SBAppLayout alloc];
      v12[0] = v5;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      LOBYTE(v11) = 0;
      v8 = [(SBAppLayout *)v6 initWithItems:v7 centerItem:0 floatingItem:0 configuration:1 centerConfiguration:0 environment:2 hidden:v11 preferredDisplayOrdinal:self->_displayOrdinal];
      v9 = self->_cachedFloatingAppLayoutIfAny;
      self->_cachedFloatingAppLayoutIfAny = v8;
    }

    cachedFloatingAppLayoutIfAny = self->_cachedFloatingAppLayoutIfAny;
  }

  return cachedFloatingAppLayoutIfAny;
}

- (void)invalidateFloatingAppLayout
{
  v4.receiver = self;
  v4.super_class = SBMainDisplayLayoutState;
  [(SBLayoutState *)&v4 invalidateFloatingAppLayout];
  cachedFloatingAppLayoutIfAny = self->_cachedFloatingAppLayoutIfAny;
  self->_cachedFloatingAppLayoutIfAny = 0;
}

- (BOOL)effectivelyRepresentsHomeScreen
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(SBLayoutState *)self elements];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 layoutRole];
        if ([v8 layoutRole] != 4 && SBLayoutRoleIsValid(v9))
        {

          return 0;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return [(SBMainDisplayLayoutState *)self unlockedEnvironmentMode]!= 2;
}

- (id)_initWithLayoutElements:(id)a3 interfaceOrientation:(int64_t)a4 interfaceOrientationByLayoutElement:(id)a5 spaceConfiguration:(int64_t)a6 elementIdentifiersToLayoutAttributes:(id)a7 floatingConfiguration:(int64_t)a8 unlockedEnvironmentMode:(int64_t)a9 floatingSwitcherVisible:(BOOL)a10 centerConfiguration:(int64_t)a11 centerEntityModal:(BOOL)a12 peekConfiguration:(int64_t)a13 bundleIDShowingAppExpose:(id)a14 windowPickerRole:(int64_t)a15 displayOrdinal:(int64_t)a16 isDisplayExternal:(BOOL)a17
{
  v23 = a7;
  v24 = a14;
  v32.receiver = self;
  v32.super_class = SBMainDisplayLayoutState;
  v25 = [(SBLayoutState *)&v32 _initWithLayoutElements:a3 interfaceOrientation:a4 interfaceOrientationByLayoutElement:a5];
  v26 = v25;
  if (v25)
  {
    v25[10] = a6;
    v27 = [v23 copy];
    v28 = v26[8];
    v26[8] = v27;

    v26[11] = a8;
    v26[14] = a9;
    *(v26 + 72) = a10;
    v26[12] = a11;
    *(v26 + 73) = a12;
    v26[13] = a13;
    v29 = [v24 copy];
    v30 = v26[15];
    v26[15] = v29;

    v26[16] = a15;
    v26[17] = a16;
    *(v26 + 74) = a17;
  }

  return v26;
}

- (id)_initWithLayoutElements:(id)a3 spaceConfiguration:(int64_t)a4 elementIdentifiersToLayoutAttributes:(id)a5 floatingConfiguration:(int64_t)a6 unlockedEnvironmentMode:(int64_t)a7 floatingSwitcherVisible:(BOOL)a8 centerConfiguration:(int64_t)a9 centerEntityModal:(BOOL)a10 peekConfiguration:(int64_t)a11 bundleIDShowingAppExpose:(id)a12 windowPickerRole:(int64_t)a13 displayOrdinal:(int64_t)a14 isDisplayExternal:(BOOL)a15
{
  LOBYTE(v18) = a15;
  LOBYTE(v17) = a10;
  LOBYTE(v16) = a8;
  return [(SBMainDisplayLayoutState *)self _initWithLayoutElements:a3 interfaceOrientation:0 interfaceOrientationByLayoutElement:0 spaceConfiguration:a4 elementIdentifiersToLayoutAttributes:a5 floatingConfiguration:a6 unlockedEnvironmentMode:a7 floatingSwitcherVisible:v16 centerConfiguration:a9 centerEntityModal:v17 peekConfiguration:a11 bundleIDShowingAppExpose:a12 windowPickerRole:a13 displayOrdinal:a14 isDisplayExternal:v18];
}

- (id)_initWithLayoutElements:(id)a3 spaceConfiguration:(int64_t)a4 floatingConfiguration:(int64_t)a5 unlockedEnvironmentMode:(int64_t)a6 floatingSwitcherVisible:(BOOL)a7 centerConfiguration:(int64_t)a8 centerEntityModal:(BOOL)a9 peekConfiguration:(int64_t)a10 bundleIDShowingAppExpose:(id)a11 windowPickerRole:(int64_t)a12 displayOrdinal:(int64_t)a13 isDisplayExternal:(BOOL)a14
{
  v17 = a11;
  v18 = a3;
  v19 = [objc_opt_class() _elementIdentifiersToLayoutAttributesForElements:v18 spaceConfiguration:a4];
  LOBYTE(v24) = a14;
  LOBYTE(v23) = a9;
  LOBYTE(v22) = a7;
  v20 = [(SBMainDisplayLayoutState *)self _initWithLayoutElements:v18 interfaceOrientation:0 interfaceOrientationByLayoutElement:0 spaceConfiguration:a4 elementIdentifiersToLayoutAttributes:v19 floatingConfiguration:a5 unlockedEnvironmentMode:a6 floatingSwitcherVisible:v22 centerConfiguration:a8 centerEntityModal:v23 peekConfiguration:a10 bundleIDShowingAppExpose:v17 windowPickerRole:a12 displayOrdinal:a13 isDisplayExternal:v24];

  return v20;
}

- (id)_initWithLayoutElements:(id)a3 interfaceOrientation:(int64_t)a4 interfaceOrientationByLayoutElement:(id)a5 spaceConfiguration:(int64_t)a6 floatingConfiguration:(int64_t)a7 unlockedEnvironmentMode:(int64_t)a8 floatingSwitcherVisible:(BOOL)a9 centerConfiguration:(int64_t)a10 centerEntityModal:(BOOL)a11 peekConfiguration:(int64_t)a12 bundleIDShowingAppExpose:(id)a13 windowPickerRole:(int64_t)a14 displayOrdinal:(int64_t)a15 isDisplayExternal:(BOOL)a16
{
  v20 = a13;
  v21 = a5;
  v22 = a3;
  v23 = [objc_opt_class() _elementIdentifiersToLayoutAttributesForElements:v22 spaceConfiguration:a6];
  LOBYTE(v28) = a16;
  LOBYTE(v27) = a11;
  LOBYTE(v26) = a9;
  v24 = [(SBMainDisplayLayoutState *)self _initWithLayoutElements:v22 interfaceOrientation:a4 interfaceOrientationByLayoutElement:v21 spaceConfiguration:a6 elementIdentifiersToLayoutAttributes:v23 floatingConfiguration:a7 unlockedEnvironmentMode:a8 floatingSwitcherVisible:v26 centerConfiguration:a10 centerEntityModal:v27 peekConfiguration:a12 bundleIDShowingAppExpose:v20 windowPickerRole:a14 displayOrdinal:a15 isDisplayExternal:v28];

  return v24;
}

- (id)_initWithLayoutElements:(id)a3 interfaceOrientation:(int64_t)a4 interfaceOrientationByLayoutElement:(id)a5
{
  LOBYTE(v10) = 0;
  LOBYTE(v9) = 0;
  LOBYTE(v8) = 0;
  v5 = [(SBMainDisplayLayoutState *)self _initWithLayoutElements:a3 interfaceOrientation:a4 interfaceOrientationByLayoutElement:a5 spaceConfiguration:0 elementIdentifiersToLayoutAttributes:MEMORY[0x277CBEC10] floatingConfiguration:0 unlockedEnvironmentMode:1 floatingSwitcherVisible:v8 centerConfiguration:0 centerEntityModal:v9 peekConfiguration:0 bundleIDShowingAppExpose:0 windowPickerRole:0 displayOrdinal:0 isDisplayExternal:v10];
  v6 = v5;
  if (v5)
  {
    [v5 _applyElementInterfaceOrientationsToLayoutAttributes];
  }

  return v6;
}

- (id)_initWithLayoutState:(id)a3
{
  v3 = a3;
  v23 = [v3 elements];
  v22 = [v3 interfaceOrientation];
  v25 = [v3 interfaceOrientationByLayoutElementIdentifier];
  v21 = [v25 copy];
  v20 = [v3 spaceConfiguration];
  v4 = [v3 elementIdentifiersToLayoutAttributes];
  v19 = [v3 floatingConfiguration];
  v18 = [v3 unlockedEnvironmentMode];
  v5 = [v3 isFloatingSwitcherVisible];
  v6 = [v3 centerConfiguration];
  v7 = [v3 isCenterEntityModal];
  v8 = [v3 peekConfiguration];
  v9 = [v3 bundleIDShowingAppExpose];
  v10 = [v3 windowPickerRole];
  v11 = [v3 displayOrdinal];
  v12 = [v3 isDisplayExternal];

  LOBYTE(v17) = v12;
  LOBYTE(v16) = v7;
  LOBYTE(v15) = v5;
  v13 = [(SBMainDisplayLayoutState *)self _initWithLayoutElements:v23 interfaceOrientation:v22 interfaceOrientationByLayoutElement:v21 spaceConfiguration:v20 elementIdentifiersToLayoutAttributes:v4 floatingConfiguration:v19 unlockedEnvironmentMode:v18 floatingSwitcherVisible:v15 centerConfiguration:v6 centerEntityModal:v16 peekConfiguration:v8 bundleIDShowingAppExpose:v9 windowPickerRole:v10 displayOrdinal:v11 isDisplayExternal:v17];

  if (v13)
  {
    [v13 _applyElementInterfaceOrientationsToLayoutAttributes];
  }

  return v13;
}

+ (id)_elementIdentifiersToLayoutAttributesForElements:(id)a3 spaceConfiguration:(int64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = objc_alloc_init(SBDisplayItemLayoutAttributes);
        v13 = [v11 uniqueIdentifier];
        [v5 setObject:v12 forKey:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBLayoutState *)self succinctDescriptionBuilder];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [(SBLayoutState *)self interfaceOrientationByLayoutElementIdentifier];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__SBMainDisplayLayoutState_descriptionBuilderWithMultilinePrefix___block_invoke;
  v18[3] = &unk_2783B7F10;
  v8 = v6;
  v19 = v8;
  [v7 bs_each:v18];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__SBMainDisplayLayoutState_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v14[3] = &unk_2783A8ED8;
  v9 = v5;
  v15 = v9;
  v16 = self;
  v17 = v8;
  v10 = v8;
  [v9 appendBodySectionWithName:0 multilinePrefix:v4 block:v14];

  v11 = v17;
  v12 = v9;

  return v9;
}

void __66__SBMainDisplayLayoutState_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [a3 integerValue];
  v6 = SBFStringForBSInterfaceOrientation();
  [v4 setObject:v6 forKey:v5];
}

void __66__SBMainDisplayLayoutState_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) elements];
  v4 = [v3 allObjects];
  v5 = [v4 bs_map:&__block_literal_global_234];
  [v2 appendArraySection:v5 withName:@"elements" skipIfEmpty:1];

  v6 = *(a1 + 32);
  if ([*(a1 + 40) interfaceOrientation] == 1)
  {
    v7 = @"UIInterfaceOrientationPortrait";
  }

  else if ([*(a1 + 40) interfaceOrientation] == 4)
  {
    v7 = @"UIInterfaceOrientationLandscapeLeft";
  }

  else if ([*(a1 + 40) interfaceOrientation] == 3)
  {
    v7 = @"UIInterfaceOrientationLandscapeRight";
  }

  else if ([*(a1 + 40) interfaceOrientation] == 2)
  {
    v7 = @"UIInterfaceOrientationPortraitUpsideDown";
  }

  else
  {
    v7 = 0;
  }

  v8 = [v6 appendObject:v7 withName:@"interfaceOrientation"];
  v9 = *(a1 + 32);
  if ([*(a1 + 40) interfaceOrientationForLayoutRole:1] == 1)
  {
    v10 = @"UIInterfaceOrientationPortrait";
  }

  else if ([*(a1 + 40) interfaceOrientationForLayoutRole:1] == 4)
  {
    v10 = @"UIInterfaceOrientationLandscapeLeft";
  }

  else if ([*(a1 + 40) interfaceOrientationForLayoutRole:1] == 3)
  {
    v10 = @"UIInterfaceOrientationLandscapeRight";
  }

  else if ([*(a1 + 40) interfaceOrientationForLayoutRole:1] == 2)
  {
    v10 = @"UIInterfaceOrientationPortraitUpsideDown";
  }

  else
  {
    v10 = 0;
  }

  v11 = [v9 appendObject:v10 withName:@"primaryElementInterfaceOrientation"];
  [*(a1 + 32) appendDictionarySection:*(a1 + 48) withName:@"interfaceOrientationByLayoutElement" skipIfEmpty:0];
  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) spaceConfiguration];
  if (v13 > 4)
  {
    v14 = 0;
  }

  else
  {
    v14 = off_2783BA7B0[v13];
  }

  v15 = [v12 appendObject:v14 withName:@"spaceConfiguration"];
  [*(a1 + 32) appendDictionarySection:*(*(a1 + 40) + 64) withName:@"layoutAttributes" skipIfEmpty:1];
  v16 = *(a1 + 32);
  v17 = [*(a1 + 40) floatingConfiguration];
  if (v17 > 4)
  {
    v18 = 0;
  }

  else
  {
    v18 = off_2783BA7D8[v17];
  }

  v19 = [v16 appendObject:v18 withName:@"floatingConfiguration"];
  v20 = *(a1 + 32);
  v21 = [*(a1 + 40) centerConfiguration];
  if (v21 > 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = off_2783BA800[v21];
  }

  v23 = [v20 appendObject:v22 withName:@"centerConfiguration"];
  v24 = *(a1 + 32);
  v25 = [*(a1 + 40) peekConfiguration];
  if (v25 > 3)
  {
    v26 = 0;
  }

  else
  {
    v26 = off_2783BA818[v25];
  }

  v27 = [v24 appendObject:v26 withName:@"peekConfiguration"];
  v28 = *(a1 + 32);
  v29 = [*(a1 + 40) unlockedEnvironmentMode];
  if (v29 > 3)
  {
    v30 = 0;
  }

  else
  {
    v30 = off_2783BA838[v29];
  }

  v31 = [v28 appendObject:v30 withName:@"unlockedEnvironmentMode"];
  v32 = *(a1 + 32);
  v33 = [*(a1 + 40) bundleIDShowingAppExpose];
  [v32 appendString:v33 withName:@"bundleIDShowingAppExpose"];

  v34 = *(a1 + 32);
  [*(a1 + 40) isFloatingSwitcherVisible];
  v35 = BSSettingFlagDescription();
  v36 = [v34 appendObject:v35 withName:@"floatingSwitcherVisible"];

  v37 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"isCenterEntityModal") ifEqualTo:{@"centerEntityModal", 1}];
  v38 = *(a1 + 32);
  v39 = SBLayoutRoleDescription(*(*(a1 + 40) + 128));
  v40 = [v38 appendObject:v39 withName:@"windowPickerRole"];

  v41 = [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"displayOrdinal"), @"displayOrdinal"}];
  v42 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isDisplayExternal"), @"isDisplayExternal"}];
  v43 = *(a1 + 32);
  v45 = [*(a1 + 40) appLayout];
  v44 = [v45 continuousExposeIdentifier];
  [v43 appendString:v44 withName:@"continuousExposeIdentifier" skipIfEmpty:1];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v20.receiver = self;
    v20.super_class = SBMainDisplayLayoutState;
    if (-[SBLayoutState isEqual:](&v20, sel_isEqual_, v5) && (v6 = -[SBMainDisplayLayoutState spaceConfiguration](self, "spaceConfiguration"), v6 == [v5 spaceConfiguration]) && (v7 = -[SBMainDisplayLayoutState floatingConfiguration](self, "floatingConfiguration"), v7 == objc_msgSend(v5, "floatingConfiguration")) && (v8 = -[SBMainDisplayLayoutState unlockedEnvironmentMode](self, "unlockedEnvironmentMode"), v8 == objc_msgSend(v5, "unlockedEnvironmentMode")) && (v9 = -[SBMainDisplayLayoutState centerConfiguration](self, "centerConfiguration"), v9 == objc_msgSend(v5, "centerConfiguration")) && (v10 = -[SBMainDisplayLayoutState isCenterEntityModal](self, "isCenterEntityModal"), v10 == objc_msgSend(v5, "isCenterEntityModal")) && (v11 = -[SBMainDisplayLayoutState peekConfiguration](self, "peekConfiguration"), v11 == objc_msgSend(v5, "peekConfiguration")))
    {
      v12 = [(SBMainDisplayLayoutState *)self bundleIDShowingAppExpose];
      v13 = [v5 bundleIDShowingAppExpose];
      if (BSEqualObjects() && (v14 = -[SBMainDisplayLayoutState windowPickerRole](self, "windowPickerRole"), v14 == [v5 windowPickerRole]) && (v15 = -[SBMainDisplayLayoutState displayOrdinal](self, "displayOrdinal"), v15 == objc_msgSend(v5, "displayOrdinal")) && self->_isDisplayExternal == v5[74])
      {
        v16 = [(SBLayoutState *)self interfaceOrientationByLayoutElementIdentifier];
        v17 = [v5 interfaceOrientationByLayoutElementIdentifier];
        v18 = BSEqualObjects();
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (unint64_t)hash
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CF0C40]);
  v30.receiver = self;
  v30.super_class = SBMainDisplayLayoutState;
  v4 = [v3 appendUnsignedInteger:{-[SBLayoutState hash](&v30, sel_hash)}];
  v5 = [v3 appendInteger:{-[SBMainDisplayLayoutState spaceConfiguration](self, "spaceConfiguration")}];
  v6 = [v3 appendInteger:{-[SBMainDisplayLayoutState floatingConfiguration](self, "floatingConfiguration")}];
  v7 = [v3 appendInteger:{-[SBMainDisplayLayoutState centerConfiguration](self, "centerConfiguration")}];
  v8 = [v3 appendInteger:{-[SBMainDisplayLayoutState peekConfiguration](self, "peekConfiguration")}];
  v9 = [v3 appendInteger:{-[SBMainDisplayLayoutState unlockedEnvironmentMode](self, "unlockedEnvironmentMode")}];
  v10 = [(SBMainDisplayLayoutState *)self bundleIDShowingAppExpose];
  v11 = [v3 appendString:v10];

  v12 = [v3 appendInteger:{-[SBMainDisplayLayoutState windowPickerRole](self, "windowPickerRole")}];
  v13 = [v3 appendInteger:{-[SBMainDisplayLayoutState displayOrdinal](self, "displayOrdinal")}];
  v14 = [v3 appendBool:{-[SBMainDisplayLayoutState isDisplayExternal](self, "isDisplayExternal")}];
  v15 = [(SBLayoutState *)self interfaceOrientationByLayoutElementIdentifier];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        v21 = [v3 appendString:v20];
        v22 = [v15 objectForKey:v20];
        v23 = [v3 appendUnsignedInteger:{objc_msgSend(v22, "unsignedIntegerValue")}];
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v17);
  }

  v24 = [v3 hash];

  return v24;
}

- (id)layoutAttributesForElement:(id)a3
{
  v4 = [a3 uniqueIdentifier];
  v5 = [(SBMainDisplayLayoutState *)self _layoutAttributesForElementWithIdentifier:v4];

  return v5;
}

- (BOOL)isSplitView
{
  v3 = [(SBLayoutState *)self elementWithRole:1];
  if (v3)
  {
    v4 = [(SBLayoutState *)self elementWithRole:2];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setInterfaceOrientationByLayoutElementIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBMainDisplayLayoutState;
  [(SBLayoutState *)&v4 setInterfaceOrientationByLayoutElementIdentifier:a3];
  [(SBMainDisplayLayoutState *)self _applyElementInterfaceOrientationsToLayoutAttributes];
  [(SBMainDisplayLayoutState *)self invalidateAppLayout];
  [(SBMainDisplayLayoutState *)self invalidateFloatingAppLayout];
}

- (id)_layoutAttributesForElementWithIdentifier:(id)a3
{
  v3 = [(NSDictionary *)self->_elementIdentifiersToLayoutAttributes objectForKey:a3];
  if (!v3)
  {
    v3 = objc_alloc_init(SBDisplayItemLayoutAttributes);
  }

  return v3;
}

- (void)_updateSizingPoliciesForLayoutElements:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CBEB38];
    v5 = a3;
    v6 = [(SBLayoutState *)self elements];
    v7 = [v4 dictionaryWithCapacity:{objc_msgSend(v6, "count")}];

    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __67__SBMainDisplayLayoutState__updateSizingPoliciesForLayoutElements___block_invoke;
    v14 = &unk_2783BA790;
    v15 = self;
    v16 = v7;
    v8 = v7;
    [v5 enumerateKeysAndObjectsUsingBlock:&v11];

    v9 = [v8 copy];
    elementIdentifiersToLayoutAttributes = self->_elementIdentifiersToLayoutAttributes;
    self->_elementIdentifiersToLayoutAttributes = v9;

    [(SBMainDisplayLayoutState *)self invalidateAppLayout];
    [(SBMainDisplayLayoutState *)self invalidateFloatingAppLayout];
  }
}

void __67__SBMainDisplayLayoutState__updateSizingPoliciesForLayoutElements___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 integerValue];
  v6 = [*(a1 + 32) _layoutAttributesForElementWithIdentifier:v5];
  v7 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v6];

  [*(a1 + 40) setValue:v7 forKey:v5];
}

- (void)_setLayoutAttributes:(id)a3 forLayoutElement:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self->_elementIdentifiersToLayoutAttributes)
  {
    v7 = [a4 uniqueIdentifier];
    if (v7)
    {
      v8 = [(NSDictionary *)self->_elementIdentifiersToLayoutAttributes mutableCopy];
      v9 = v8;
      if (v6)
      {
        v12 = v7;
        v13[0] = v6;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
        [(NSDictionary *)v9 addEntriesFromDictionary:v10];
      }

      else
      {
        [(NSDictionary *)v8 removeObjectForKey:v7];
      }

      elementIdentifiersToLayoutAttributes = self->_elementIdentifiersToLayoutAttributes;
      self->_elementIdentifiersToLayoutAttributes = v9;

      [(SBMainDisplayLayoutState *)self invalidateAppLayout];
      [(SBMainDisplayLayoutState *)self invalidateFloatingAppLayout];
    }
  }
}

- (NSDictionary)displayItemLayoutAttributesMap
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(SBLayoutState *)self elements];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 layoutRole];
        if (SBLayoutRoleIsValid(v10) && v10 != 3)
        {
          v12 = [SBDisplayItem displayItemForLayoutElement:v9];
          v13 = [(SBMainDisplayLayoutState *)self layoutAttributesForElement:v9];
          [v3 setObject:v13 forKey:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

@end
@interface SBMainDisplayLayoutState
+ (id)_elementIdentifiersToLayoutAttributesForElements:(id)elements spaceConfiguration:(int64_t)configuration;
- (BOOL)effectivelyRepresentsHomeScreen;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFullScreen;
- (BOOL)isSplitView;
- (NSDictionary)displayItemLayoutAttributesMap;
- (id)_initWithLayoutElements:(id)elements interfaceOrientation:(int64_t)orientation interfaceOrientationByLayoutElement:(id)element;
- (id)_initWithLayoutElements:(id)elements interfaceOrientation:(int64_t)orientation interfaceOrientationByLayoutElement:(id)element spaceConfiguration:(int64_t)configuration elementIdentifiersToLayoutAttributes:(id)attributes floatingConfiguration:(int64_t)floatingConfiguration unlockedEnvironmentMode:(int64_t)mode floatingSwitcherVisible:(BOOL)self0 centerConfiguration:(int64_t)self1 centerEntityModal:(BOOL)self2 peekConfiguration:(int64_t)self3 bundleIDShowingAppExpose:(id)self4 windowPickerRole:(int64_t)self5 displayOrdinal:(int64_t)self6 isDisplayExternal:(BOOL)self7;
- (id)_initWithLayoutElements:(id)elements interfaceOrientation:(int64_t)orientation interfaceOrientationByLayoutElement:(id)element spaceConfiguration:(int64_t)configuration floatingConfiguration:(int64_t)floatingConfiguration unlockedEnvironmentMode:(int64_t)mode floatingSwitcherVisible:(BOOL)visible centerConfiguration:(int64_t)self0 centerEntityModal:(BOOL)self1 peekConfiguration:(int64_t)self2 bundleIDShowingAppExpose:(id)self3 windowPickerRole:(int64_t)self4 displayOrdinal:(int64_t)self5 isDisplayExternal:(BOOL)self6;
- (id)_initWithLayoutElements:(id)elements spaceConfiguration:(int64_t)configuration elementIdentifiersToLayoutAttributes:(id)attributes floatingConfiguration:(int64_t)floatingConfiguration unlockedEnvironmentMode:(int64_t)mode floatingSwitcherVisible:(BOOL)visible centerConfiguration:(int64_t)centerConfiguration centerEntityModal:(BOOL)self0 peekConfiguration:(int64_t)self1 bundleIDShowingAppExpose:(id)self2 windowPickerRole:(int64_t)self3 displayOrdinal:(int64_t)self4 isDisplayExternal:(BOOL)self5;
- (id)_initWithLayoutElements:(id)elements spaceConfiguration:(int64_t)configuration floatingConfiguration:(int64_t)floatingConfiguration unlockedEnvironmentMode:(int64_t)mode floatingSwitcherVisible:(BOOL)visible centerConfiguration:(int64_t)centerConfiguration centerEntityModal:(BOOL)modal peekConfiguration:(int64_t)self0 bundleIDShowingAppExpose:(id)self1 windowPickerRole:(int64_t)self2 displayOrdinal:(int64_t)self3 isDisplayExternal:(BOOL)self4;
- (id)_initWithLayoutState:(id)state;
- (id)_layoutAttributesForElementWithIdentifier:(id)identifier;
- (id)appLayout;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)floatingAppLayout;
- (id)layoutAttributesForElement:(id)element;
- (int64_t)_defaultInterfaceOrientation;
- (unint64_t)hash;
- (void)_applyElementInterfaceOrientationsToLayoutAttributes;
- (void)_setLayoutAttributes:(id)attributes forLayoutElement:(id)element;
- (void)_updateSizingPoliciesForLayoutElements:(id)elements;
- (void)invalidateAppLayout;
- (void)invalidateFloatingAppLayout;
- (void)setInterfaceOrientationByLayoutElementIdentifier:(id)identifier;
@end

@implementation SBMainDisplayLayoutState

- (id)appLayout
{
  v51 = *MEMORY[0x277D85DE8];
  cachedAppLayoutIfAny = self->_cachedAppLayoutIfAny;
  if (!cachedAppLayoutIfAny)
  {
    v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
    selfCopy = self;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    elements = [(SBLayoutState *)self elements];
    v5 = [elements countByEnumeratingWithState:&v45 objects:v50 count:16];
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
            objc_enumerationMutation(elements);
          }

          v9 = *(*(&v45 + 1) + 8 * i);
          layoutRole = [v9 layoutRole];
          if (SBLayoutRoleIsValid(layoutRole) && layoutRole != 3)
          {
            v12 = [SBDisplayItem displayItemForLayoutElement:v9];
            v13 = [MEMORY[0x277CCABB0] numberWithInteger:layoutRole];
            [v39 setObject:v12 forKeyedSubscript:v13];

            if (layoutRole == 4)
            {
              v14 = v9;

              v38 = v14;
            }
          }
        }

        v6 = [elements countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v6);
    }

    else
    {
      v38 = 0;
    }

    if (![v39 count])
    {
      v19 = selfCopy;
LABEL_37:

      cachedAppLayoutIfAny = v19->_cachedAppLayoutIfAny;
      goto LABEL_38;
    }

    if (v38)
    {
      v15 = SBAppLayoutCenterConfigurationFromMainDisplayLayoutStateCenterConfiguration([(SBMainDisplayLayoutState *)selfCopy centerConfiguration]);
      if (v15)
      {
        v16 = v15;
        isCenterEntityModal = [(SBMainDisplayLayoutState *)selfCopy isCenterEntityModal];
        v18 = 3;
        if (!isCenterEntityModal)
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
    v21 = SBAppLayoutConfigurationFromMainDisplayLayoutStateSpaceConfiguration([(SBMainDisplayLayoutState *)selfCopy spaceConfiguration]);
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
          v29 = -[SBLayoutState elementWithRole:](selfCopy, "elementWithRole:", [v28 integerValue]);
          v30 = [v23 objectForKey:v28];
          v31 = [(SBMainDisplayLayoutState *)selfCopy layoutAttributesForElement:v29];
          [v22 setObject:v31 forKey:v30];
        }

        v25 = [v23 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v25);
    }

    v32 = [v22 copy];
    v19 = selfCopy;
    cachedLayoutAttributesIfAny = selfCopy->_cachedLayoutAttributesIfAny;
    selfCopy->_cachedLayoutAttributesIfAny = v32;

    v34 = [[SBAppLayout alloc] initWithItemsForLayoutRoles:v23 configuration:v21 centerConfiguration:v16 environment:v37 hidden:0 preferredDisplayOrdinal:selfCopy->_displayOrdinal];
    v35 = selfCopy->_cachedAppLayoutIfAny;
    selfCopy->_cachedAppLayoutIfAny = v34;

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
    elements = [(SBLayoutState *)self elements];
    v5 = [v3 dictionaryWithCapacity:{objc_msgSend(elements, "count")}];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    elements2 = [(SBLayoutState *)self elements];
    v7 = [elements2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(elements2);
          }

          uniqueIdentifier = [*(*(&v16 + 1) + 8 * v10) uniqueIdentifier];
          v12 = [(SBMainDisplayLayoutState *)self _layoutAttributesForElementWithIdentifier:uniqueIdentifier];
          [(SBLayoutState *)self interfaceOrientationForElementIdentifier:uniqueIdentifier];
          v13 = [SBDisplayItemLayoutAttributes attributesByModifyingContentOrientation:v12];

          [v5 setValue:v13 forKey:uniqueIdentifier];
          ++v10;
        }

        while (v8 != v10);
        v8 = [elements2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  elements = [(SBLayoutState *)self elements];
  v4 = [elements countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(elements);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        layoutRole = [v8 layoutRole];
        if ([v8 layoutRole] != 4 && SBLayoutRoleIsValid(layoutRole))
        {

          return 0;
        }
      }

      v5 = [elements countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return [(SBMainDisplayLayoutState *)self unlockedEnvironmentMode]!= 2;
}

- (id)_initWithLayoutElements:(id)elements interfaceOrientation:(int64_t)orientation interfaceOrientationByLayoutElement:(id)element spaceConfiguration:(int64_t)configuration elementIdentifiersToLayoutAttributes:(id)attributes floatingConfiguration:(int64_t)floatingConfiguration unlockedEnvironmentMode:(int64_t)mode floatingSwitcherVisible:(BOOL)self0 centerConfiguration:(int64_t)self1 centerEntityModal:(BOOL)self2 peekConfiguration:(int64_t)self3 bundleIDShowingAppExpose:(id)self4 windowPickerRole:(int64_t)self5 displayOrdinal:(int64_t)self6 isDisplayExternal:(BOOL)self7
{
  attributesCopy = attributes;
  exposeCopy = expose;
  v32.receiver = self;
  v32.super_class = SBMainDisplayLayoutState;
  v25 = [(SBLayoutState *)&v32 _initWithLayoutElements:elements interfaceOrientation:orientation interfaceOrientationByLayoutElement:element];
  v26 = v25;
  if (v25)
  {
    v25[10] = configuration;
    v27 = [attributesCopy copy];
    v28 = v26[8];
    v26[8] = v27;

    v26[11] = floatingConfiguration;
    v26[14] = mode;
    *(v26 + 72) = visible;
    v26[12] = centerConfiguration;
    *(v26 + 73) = modal;
    v26[13] = peekConfiguration;
    v29 = [exposeCopy copy];
    v30 = v26[15];
    v26[15] = v29;

    v26[16] = role;
    v26[17] = ordinal;
    *(v26 + 74) = external;
  }

  return v26;
}

- (id)_initWithLayoutElements:(id)elements spaceConfiguration:(int64_t)configuration elementIdentifiersToLayoutAttributes:(id)attributes floatingConfiguration:(int64_t)floatingConfiguration unlockedEnvironmentMode:(int64_t)mode floatingSwitcherVisible:(BOOL)visible centerConfiguration:(int64_t)centerConfiguration centerEntityModal:(BOOL)self0 peekConfiguration:(int64_t)self1 bundleIDShowingAppExpose:(id)self2 windowPickerRole:(int64_t)self3 displayOrdinal:(int64_t)self4 isDisplayExternal:(BOOL)self5
{
  LOBYTE(v18) = external;
  LOBYTE(v17) = modal;
  LOBYTE(v16) = visible;
  return [(SBMainDisplayLayoutState *)self _initWithLayoutElements:elements interfaceOrientation:0 interfaceOrientationByLayoutElement:0 spaceConfiguration:configuration elementIdentifiersToLayoutAttributes:attributes floatingConfiguration:floatingConfiguration unlockedEnvironmentMode:mode floatingSwitcherVisible:v16 centerConfiguration:centerConfiguration centerEntityModal:v17 peekConfiguration:peekConfiguration bundleIDShowingAppExpose:expose windowPickerRole:role displayOrdinal:ordinal isDisplayExternal:v18];
}

- (id)_initWithLayoutElements:(id)elements spaceConfiguration:(int64_t)configuration floatingConfiguration:(int64_t)floatingConfiguration unlockedEnvironmentMode:(int64_t)mode floatingSwitcherVisible:(BOOL)visible centerConfiguration:(int64_t)centerConfiguration centerEntityModal:(BOOL)modal peekConfiguration:(int64_t)self0 bundleIDShowingAppExpose:(id)self1 windowPickerRole:(int64_t)self2 displayOrdinal:(int64_t)self3 isDisplayExternal:(BOOL)self4
{
  exposeCopy = expose;
  elementsCopy = elements;
  v19 = [objc_opt_class() _elementIdentifiersToLayoutAttributesForElements:elementsCopy spaceConfiguration:configuration];
  LOBYTE(v24) = external;
  LOBYTE(v23) = modal;
  LOBYTE(v22) = visible;
  v20 = [(SBMainDisplayLayoutState *)self _initWithLayoutElements:elementsCopy interfaceOrientation:0 interfaceOrientationByLayoutElement:0 spaceConfiguration:configuration elementIdentifiersToLayoutAttributes:v19 floatingConfiguration:floatingConfiguration unlockedEnvironmentMode:mode floatingSwitcherVisible:v22 centerConfiguration:centerConfiguration centerEntityModal:v23 peekConfiguration:peekConfiguration bundleIDShowingAppExpose:exposeCopy windowPickerRole:role displayOrdinal:ordinal isDisplayExternal:v24];

  return v20;
}

- (id)_initWithLayoutElements:(id)elements interfaceOrientation:(int64_t)orientation interfaceOrientationByLayoutElement:(id)element spaceConfiguration:(int64_t)configuration floatingConfiguration:(int64_t)floatingConfiguration unlockedEnvironmentMode:(int64_t)mode floatingSwitcherVisible:(BOOL)visible centerConfiguration:(int64_t)self0 centerEntityModal:(BOOL)self1 peekConfiguration:(int64_t)self2 bundleIDShowingAppExpose:(id)self3 windowPickerRole:(int64_t)self4 displayOrdinal:(int64_t)self5 isDisplayExternal:(BOOL)self6
{
  exposeCopy = expose;
  elementCopy = element;
  elementsCopy = elements;
  v23 = [objc_opt_class() _elementIdentifiersToLayoutAttributesForElements:elementsCopy spaceConfiguration:configuration];
  LOBYTE(v28) = external;
  LOBYTE(v27) = modal;
  LOBYTE(v26) = visible;
  v24 = [(SBMainDisplayLayoutState *)self _initWithLayoutElements:elementsCopy interfaceOrientation:orientation interfaceOrientationByLayoutElement:elementCopy spaceConfiguration:configuration elementIdentifiersToLayoutAttributes:v23 floatingConfiguration:floatingConfiguration unlockedEnvironmentMode:mode floatingSwitcherVisible:v26 centerConfiguration:centerConfiguration centerEntityModal:v27 peekConfiguration:peekConfiguration bundleIDShowingAppExpose:exposeCopy windowPickerRole:role displayOrdinal:ordinal isDisplayExternal:v28];

  return v24;
}

- (id)_initWithLayoutElements:(id)elements interfaceOrientation:(int64_t)orientation interfaceOrientationByLayoutElement:(id)element
{
  LOBYTE(v10) = 0;
  LOBYTE(v9) = 0;
  LOBYTE(v8) = 0;
  v5 = [(SBMainDisplayLayoutState *)self _initWithLayoutElements:elements interfaceOrientation:orientation interfaceOrientationByLayoutElement:element spaceConfiguration:0 elementIdentifiersToLayoutAttributes:MEMORY[0x277CBEC10] floatingConfiguration:0 unlockedEnvironmentMode:1 floatingSwitcherVisible:v8 centerConfiguration:0 centerEntityModal:v9 peekConfiguration:0 bundleIDShowingAppExpose:0 windowPickerRole:0 displayOrdinal:0 isDisplayExternal:v10];
  v6 = v5;
  if (v5)
  {
    [v5 _applyElementInterfaceOrientationsToLayoutAttributes];
  }

  return v6;
}

- (id)_initWithLayoutState:(id)state
{
  stateCopy = state;
  elements = [stateCopy elements];
  interfaceOrientation = [stateCopy interfaceOrientation];
  interfaceOrientationByLayoutElementIdentifier = [stateCopy interfaceOrientationByLayoutElementIdentifier];
  v21 = [interfaceOrientationByLayoutElementIdentifier copy];
  spaceConfiguration = [stateCopy spaceConfiguration];
  elementIdentifiersToLayoutAttributes = [stateCopy elementIdentifiersToLayoutAttributes];
  floatingConfiguration = [stateCopy floatingConfiguration];
  unlockedEnvironmentMode = [stateCopy unlockedEnvironmentMode];
  isFloatingSwitcherVisible = [stateCopy isFloatingSwitcherVisible];
  centerConfiguration = [stateCopy centerConfiguration];
  isCenterEntityModal = [stateCopy isCenterEntityModal];
  peekConfiguration = [stateCopy peekConfiguration];
  bundleIDShowingAppExpose = [stateCopy bundleIDShowingAppExpose];
  windowPickerRole = [stateCopy windowPickerRole];
  displayOrdinal = [stateCopy displayOrdinal];
  isDisplayExternal = [stateCopy isDisplayExternal];

  LOBYTE(v17) = isDisplayExternal;
  LOBYTE(v16) = isCenterEntityModal;
  LOBYTE(v15) = isFloatingSwitcherVisible;
  v13 = [(SBMainDisplayLayoutState *)self _initWithLayoutElements:elements interfaceOrientation:interfaceOrientation interfaceOrientationByLayoutElement:v21 spaceConfiguration:spaceConfiguration elementIdentifiersToLayoutAttributes:elementIdentifiersToLayoutAttributes floatingConfiguration:floatingConfiguration unlockedEnvironmentMode:unlockedEnvironmentMode floatingSwitcherVisible:v15 centerConfiguration:centerConfiguration centerEntityModal:v16 peekConfiguration:peekConfiguration bundleIDShowingAppExpose:bundleIDShowingAppExpose windowPickerRole:windowPickerRole displayOrdinal:displayOrdinal isDisplayExternal:v17];

  if (v13)
  {
    [v13 _applyElementInterfaceOrientationsToLayoutAttributes];
  }

  return v13;
}

+ (id)_elementIdentifiersToLayoutAttributesForElements:(id)elements spaceConfiguration:(int64_t)configuration
{
  v20 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = elementsCopy;
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
        uniqueIdentifier = [v11 uniqueIdentifier];
        [v5 setObject:v12 forKey:uniqueIdentifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBLayoutState *)self succinctDescriptionBuilder];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  interfaceOrientationByLayoutElementIdentifier = [(SBLayoutState *)self interfaceOrientationByLayoutElementIdentifier];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__SBMainDisplayLayoutState_descriptionBuilderWithMultilinePrefix___block_invoke;
  v18[3] = &unk_2783B7F10;
  v8 = v6;
  v19 = v8;
  [interfaceOrientationByLayoutElementIdentifier bs_each:v18];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__SBMainDisplayLayoutState_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v14[3] = &unk_2783A8ED8;
  v9 = succinctDescriptionBuilder;
  v15 = v9;
  selfCopy = self;
  v17 = v8;
  v10 = v8;
  [v9 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v14];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v20.receiver = self;
    v20.super_class = SBMainDisplayLayoutState;
    if (-[SBLayoutState isEqual:](&v20, sel_isEqual_, v5) && (v6 = -[SBMainDisplayLayoutState spaceConfiguration](self, "spaceConfiguration"), v6 == [v5 spaceConfiguration]) && (v7 = -[SBMainDisplayLayoutState floatingConfiguration](self, "floatingConfiguration"), v7 == objc_msgSend(v5, "floatingConfiguration")) && (v8 = -[SBMainDisplayLayoutState unlockedEnvironmentMode](self, "unlockedEnvironmentMode"), v8 == objc_msgSend(v5, "unlockedEnvironmentMode")) && (v9 = -[SBMainDisplayLayoutState centerConfiguration](self, "centerConfiguration"), v9 == objc_msgSend(v5, "centerConfiguration")) && (v10 = -[SBMainDisplayLayoutState isCenterEntityModal](self, "isCenterEntityModal"), v10 == objc_msgSend(v5, "isCenterEntityModal")) && (v11 = -[SBMainDisplayLayoutState peekConfiguration](self, "peekConfiguration"), v11 == objc_msgSend(v5, "peekConfiguration")))
    {
      bundleIDShowingAppExpose = [(SBMainDisplayLayoutState *)self bundleIDShowingAppExpose];
      bundleIDShowingAppExpose2 = [v5 bundleIDShowingAppExpose];
      if (BSEqualObjects() && (v14 = -[SBMainDisplayLayoutState windowPickerRole](self, "windowPickerRole"), v14 == [v5 windowPickerRole]) && (v15 = -[SBMainDisplayLayoutState displayOrdinal](self, "displayOrdinal"), v15 == objc_msgSend(v5, "displayOrdinal")) && self->_isDisplayExternal == v5[74])
      {
        interfaceOrientationByLayoutElementIdentifier = [(SBLayoutState *)self interfaceOrientationByLayoutElementIdentifier];
        interfaceOrientationByLayoutElementIdentifier2 = [v5 interfaceOrientationByLayoutElementIdentifier];
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
  bundleIDShowingAppExpose = [(SBMainDisplayLayoutState *)self bundleIDShowingAppExpose];
  v11 = [v3 appendString:bundleIDShowingAppExpose];

  v12 = [v3 appendInteger:{-[SBMainDisplayLayoutState windowPickerRole](self, "windowPickerRole")}];
  v13 = [v3 appendInteger:{-[SBMainDisplayLayoutState displayOrdinal](self, "displayOrdinal")}];
  v14 = [v3 appendBool:{-[SBMainDisplayLayoutState isDisplayExternal](self, "isDisplayExternal")}];
  interfaceOrientationByLayoutElementIdentifier = [(SBLayoutState *)self interfaceOrientationByLayoutElementIdentifier];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = [interfaceOrientationByLayoutElementIdentifier countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(interfaceOrientationByLayoutElementIdentifier);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        v21 = [v3 appendString:v20];
        v22 = [interfaceOrientationByLayoutElementIdentifier objectForKey:v20];
        v23 = [v3 appendUnsignedInteger:{objc_msgSend(v22, "unsignedIntegerValue")}];
      }

      v17 = [interfaceOrientationByLayoutElementIdentifier countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v17);
  }

  v24 = [v3 hash];

  return v24;
}

- (id)layoutAttributesForElement:(id)element
{
  uniqueIdentifier = [element uniqueIdentifier];
  v5 = [(SBMainDisplayLayoutState *)self _layoutAttributesForElementWithIdentifier:uniqueIdentifier];

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

- (void)setInterfaceOrientationByLayoutElementIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = SBMainDisplayLayoutState;
  [(SBLayoutState *)&v4 setInterfaceOrientationByLayoutElementIdentifier:identifier];
  [(SBMainDisplayLayoutState *)self _applyElementInterfaceOrientationsToLayoutAttributes];
  [(SBMainDisplayLayoutState *)self invalidateAppLayout];
  [(SBMainDisplayLayoutState *)self invalidateFloatingAppLayout];
}

- (id)_layoutAttributesForElementWithIdentifier:(id)identifier
{
  v3 = [(NSDictionary *)self->_elementIdentifiersToLayoutAttributes objectForKey:identifier];
  if (!v3)
  {
    v3 = objc_alloc_init(SBDisplayItemLayoutAttributes);
  }

  return v3;
}

- (void)_updateSizingPoliciesForLayoutElements:(id)elements
{
  if (elements)
  {
    v4 = MEMORY[0x277CBEB38];
    elementsCopy = elements;
    elements = [(SBLayoutState *)self elements];
    v7 = [v4 dictionaryWithCapacity:{objc_msgSend(elements, "count")}];

    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __67__SBMainDisplayLayoutState__updateSizingPoliciesForLayoutElements___block_invoke;
    v14 = &unk_2783BA790;
    selfCopy = self;
    v16 = v7;
    v8 = v7;
    [elementsCopy enumerateKeysAndObjectsUsingBlock:&v11];

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

- (void)_setLayoutAttributes:(id)attributes forLayoutElement:(id)element
{
  v13[1] = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  if (self->_elementIdentifiersToLayoutAttributes)
  {
    uniqueIdentifier = [element uniqueIdentifier];
    if (uniqueIdentifier)
    {
      v8 = [(NSDictionary *)self->_elementIdentifiersToLayoutAttributes mutableCopy];
      v9 = v8;
      if (attributesCopy)
      {
        v12 = uniqueIdentifier;
        v13[0] = attributesCopy;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
        [(NSDictionary *)v9 addEntriesFromDictionary:v10];
      }

      else
      {
        [(NSDictionary *)v8 removeObjectForKey:uniqueIdentifier];
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
  elements = [(SBLayoutState *)self elements];
  v5 = [elements countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(elements);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        layoutRole = [v9 layoutRole];
        if (SBLayoutRoleIsValid(layoutRole) && layoutRole != 3)
        {
          v12 = [SBDisplayItem displayItemForLayoutElement:v9];
          v13 = [(SBMainDisplayLayoutState *)self layoutAttributesForElement:v9];
          [v3 setObject:v13 forKey:v12];
        }
      }

      v6 = [elements countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

@end
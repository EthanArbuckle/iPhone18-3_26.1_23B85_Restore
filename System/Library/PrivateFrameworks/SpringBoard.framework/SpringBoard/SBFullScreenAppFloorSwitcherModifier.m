@interface SBFullScreenAppFloorSwitcherModifier
@end

@implementation SBFullScreenAppFloorSwitcherModifier

BOOL __59___SBFullScreenAppFloorSwitcherModifier_frameForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 itemForLayoutRole:4];

  return v4 != v3;
}

uint64_t __65___SBFullScreenAppFloorSwitcherModifier_handleTapAppLayoutEvent___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 itemForLayoutRole:1];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1u;
}

void __75___SBFullScreenAppFloorSwitcherModifier_handleSwitcherShortcutActionEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) layoutAttributesForDisplayItem:*(a1 + 40) inAppLayout:*(*(a1 + 32) + 128)];
  [(SBDisplayItemLayoutAttributes *)v4 tileConfiguration];
  if (v24[0] == a2 && (([(SBDisplayItemLayoutAttributes *)v4 tileConfiguration], v22 == 1.79769313e308) ? (v5 = v23 == 1.79769313e308) : (v5 = 0), v5 && [(SBHomeScreenConfigurationServer *)v4 connections]!= 2))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v6 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    SBDisplayItemTileConfigurationMake(a2, v20, 1.79769313e308, 1.79769313e308);
    v9 = [SBDisplayItemLayoutAttributes attributesByModifyingTileConfiguration:v4];

    v10 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v9];

    v11 = [(SBDisplayItemLayoutAttributes *)v10 attributesByModifyingPositionIsSystemManaged:?];

    v12 = [(SBDisplayItemLayoutAttributes *)v11 attributesByModifyingCascaded:?];

    [(SBDisplayItemLayoutAttributes *)v12 slideOverConfiguration];
    SBInactiveDisplayItemSlideOverConfigurationFromSlideOverConfiguration(v19, v20);
    v4 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v12];

    v13 = objc_alloc(MEMORY[0x277CBEB38]);
    v26[0] = v4;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v25 = *(a1 + 40);
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v16 = [v13 initWithObjects:v14 forKeys:v15];
    v17 = *(*(a1 + 64) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    [*(*(*(a1 + 56) + 8) + 40) setDisplayItemLayoutAttributesMap:*(*(*(a1 + 64) + 8) + 40)];
    [*(*(*(a1 + 72) + 8) + 40) addObject:*(a1 + 40)];
  }
}

void __75___SBFullScreenAppFloorSwitcherModifier_handleSwitcherShortcutActionEvent___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) layoutAttributesForDisplayItem:*(a1 + 40) inAppLayout:*(*(a1 + 32) + 128)];
  v5 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v8 = [(SBDisplayItemLayoutAttributes *)v4 slideOverConfiguration];
  LOBYTE(v35) = 1;
  if (*(a1 + 72) == 1)
  {
    BYTE2(v35) = 1;
  }

  else
  {
    v9 = [*(*(a1 + 32) + 128) allItems];
    if ([v9 count] == 1)
    {
      v10 = [*(a1 + 32) maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:*(*(a1 + 32) + 128) ignoreOcclusion:1 ignoreCentering:1];
      BYTE2(v35) = [v10 containsObject:*(a1 + 40)];
    }

    else
    {
      BYTE2(v35) = 0;
    }
  }

  BYTE1(v35) = 0;
  *&v33 = a2;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = [*(*(a1 + 32) + 128) allItems];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        [v11 addObject:v18];
        if (BSEqualObjects())
        {
          v19 = [(SBDisplayItemLayoutAttributes *)v4 attributesByModifyingPositionIsSystemManaged:?];

          v27[0] = v33;
          v27[1] = v34;
          v28 = v35;
          v20 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v19];
          [v12 addObject:v20];

          [*(*(*(a1 + 56) + 8) + 40) addObject:v18];
          v4 = v19;
        }

        else
        {
          v21 = [*(a1 + 32) layoutAttributesForDisplayItem:v18 inAppLayout:*(*(a1 + 32) + 128)];
          [(SBDisplayItemLayoutAttributes *)v21 slideOverConfiguration];
          SBInactiveDisplayItemSlideOverConfigurationFromSlideOverConfiguration(v26, v27);
          v22 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v21];

          [v12 addObject:v22];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v15);
  }

  v23 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjects:v12 forKeys:v11];
  v24 = *(*(a1 + 64) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  [*(*(*(a1 + 48) + 8) + 40) setDisplayItemLayoutAttributesMap:*(*(*(a1 + 64) + 8) + 40)];
  [*(*(*(a1 + 48) + 8) + 40) setAppLayout:*(*(a1 + 32) + 128)];
}

void __75___SBFullScreenAppFloorSwitcherModifier_handleSwitcherShortcutActionEvent___block_invoke_3(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) layoutAttributesForDisplayItem:*(a1 + 40) inAppLayout:*(*(a1 + 32) + 128)];
  v3 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [(SBDisplayItemLayoutAttributes *)v2 slideOverConfiguration];
  SBInactiveDisplayItemSlideOverConfigurationFromSlideOverConfiguration(v10, v11);
  v6 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v2];

  v12 = *(a1 + 40);
  v13[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  [*(*(*(a1 + 48) + 8) + 40) setDisplayItemLayoutAttributesMap:*(*(*(a1 + 56) + 8) + 40)];
}

void __75___SBFullScreenAppFloorSwitcherModifier_handleSwitcherShortcutActionEvent___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) lastInteractedItemsInAppLayout:*(*(a1 + 32) + 128)];
  v8 = [*(a1 + 32) displayItemInSlideOver];
  v32 = v8;
  if (v8)
  {
    v9 = v8;
    if (([(SBDisplayItem *)*(a1 + 40) isEqualToItem:v8]& 1) == 0)
    {
      v10 = [v7 sb_arrayByRemovingObject:v9];

      v7 = v10;
    }
  }

  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v13 = [v3 count];
  v14 = [v7 count];
  if (v13 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    v16 = 0;
    do
    {
      v17 = [v3 objectAtIndex:v16];
      v18 = [v17 integerValue];

      v19 = [v7 objectAtIndex:v16];
      v20 = [*(a1 + 32) layoutAttributesForDisplayItem:v19 inAppLayout:*(*(a1 + 32) + 128)];
      SBDisplayItemTileConfigurationMake(v18, v34, 1.79769313e308, 1.79769313e308);
      v21 = [SBDisplayItemLayoutAttributes attributesByModifyingTileConfiguration:v20];

      v22 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v21];

      v23 = [(SBDisplayItemLayoutAttributes *)v22 attributesByModifyingPositionIsSystemManaged:?];

      v24 = [(SBDisplayItemLayoutAttributes *)v23 attributesByModifyingCascaded:?];

      [(SBDisplayItemLayoutAttributes *)v24 slideOverConfiguration];
      SBInactiveDisplayItemSlideOverConfigurationFromSlideOverConfiguration(v33, v34);
      v25 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v24];

      [v11 addObject:v25];
      [v12 addObject:v19];
      [*(*(*(a1 + 56) + 8) + 40) addObject:v19];

      ++v16;
      v26 = [v3 count];
      v27 = [v7 count];
      if (v26 >= v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = v26;
      }
    }

    while (v16 < v28);
  }

  v29 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjects:v11 forKeys:v12];
  v30 = *(*(a1 + 64) + 8);
  v31 = *(v30 + 40);
  *(v30 + 40) = v29;

  [*(*(*(a1 + 48) + 8) + 40) setDisplayItemLayoutAttributesMap:*(*(*(a1 + 64) + 8) + 40)];
}

void __75___SBFullScreenAppFloorSwitcherModifier_handleSwitcherShortcutActionEvent___block_invoke_5(uint64_t a1)
{
  v2 = SBDisplayItemSizingPolicyAllowingLargestSize([*(a1 + 32) supportedSizingPoliciesForItem:*(a1 + 40) inAppLayout:*(*(a1 + 32) + 128)]);
  v3 = [*(a1 + 32) layoutAttributesForDisplayItem:*(a1 + 40) inAppLayout:*(*(a1 + 32) + 128)];
  v4 = [(SBHomeScreenConfigurationServer *)v3 connections];
  v5 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v3];

  v6 = [(SBDisplayItemLayoutAttributes *)v5 attributesByModifyingCascaded:?];

  if (v2 == v4 && ([*(a1 + 32) displayItemInSlideOver], v7 = objc_claimAutoreleasedReturnValue(), v8 = BSEqualObjects(), v7, (v8 & 1) == 0))
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    v9 = v6;
  }

  else
  {
    [(SBDisplayItemLayoutAttributes *)v6 slideOverConfiguration];
    SBInactiveDisplayItemSlideOverConfigurationFromSlideOverConfiguration(v15, v16);
    v9 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v6];

    if ([*(a1 + 48) isAutomaticStageCreationEnabled] && objc_msgSend(*(a1 + 56), "shortcutActionType") != 16)
    {
      v10 = [*(*(a1 + 32) + 128) leafAppLayoutForItem:*(a1 + 40)];
    }

    else
    {
      v10 = *(*(a1 + 32) + 128);
    }

    v11 = v10;
    v12 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
    v13 = *(*(a1 + 72) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    [*(a1 + 32) updateLayoutAttributes:v9 ofDisplayItem:*(a1 + 40)];
    [*(*(*(a1 + 72) + 8) + 40) setAppLayout:v11];
  }
}

void __75___SBFullScreenAppFloorSwitcherModifier_handleSwitcherShortcutActionEvent___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) layoutAttributesForDisplayItem:*(a1 + 40) inAppLayout:*(*(a1 + 32) + 128)];
  v3 = [(SBHomeScreenConfigurationServer *)v2 connections];
  v4 = [*(a1 + 32) layoutRestrictionInfoForItem:*(a1 + 40)];
  v5 = [v4 layoutRestrictions];
  if (SBFIsFullScreenLetterboxingAvailable() && (v5 & 0x10) != 0 && (v6 = [(SBDisplayItemLayoutAttributes *)v2 attributedSize], v53 == 3))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v7 containerViewBounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = *(a1 + 32);
    v18 = v17[18];
    v19 = [v17 layoutRestrictionInfoForItem:*(a1 + 40)];
    v20 = [(SBHomeScreenConfigurationServer *)v2 authenticator];
    [*(a1 + 32) screenScale];
    [v7 minSizeForDisplayItem:v8 inContainerBounds:v18 layoutGrid:v19 layoutRestrictionInfo:v20 contentOrientation:*(a1 + 48) screenScale:v10 windowingConfiguration:{v12, v14, v16, v21}];
    v23 = v22;
    v25 = v24;

    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    [*(a1 + 48) containerBounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    [*(a1 + 48) defaultWindowSize];
    [*(a1 + 48) screenEdgePadding];
    SBDisplayItemAttributedSizeInfer(&v48, v23, v25, v27, v29, v31, v33);
    v44 = v48;
    v45 = v49;
    v46 = v50;
    v47 = v51;
    v34 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedSize:v2];

    v2 = [(SBDisplayItemLayoutAttributes *)v34 attributesByModifyingNormalizedCenter:0.5];
  }

  else
  {
    if ((v3 - 1) <= 1)
    {
      v35 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v2];

      v2 = v35;
    }

    [(SBDisplayItemLayoutAttributes *)v2 attributedSize];
    if (v43 == 3 && [(SBDisplayItemLayoutAttributes *)v2 normalizedCenter]== 0.5 && v36 == 0.5)
    {
      v38 = [*(a1 + 32) defaultMultitaskingLayoutAttributesForDisplayItem:*(a1 + 40) layoutAttributes:v2 layoutGrid:*(*(a1 + 32) + 144)];

      v2 = v38;
    }
  }

  v39 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
  v40 = *(*(a1 + 56) + 8);
  v41 = *(v40 + 40);
  *(v40 + 40) = v39;

  [*(a1 + 32) updateLayoutAttributes:v2 ofDisplayItem:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setAppLayout:*(*(a1 + 32) + 128)];
}

uint64_t __75___SBFullScreenAppFloorSwitcherModifier_handleSwitcherShortcutActionEvent___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  LODWORD(a1) = [v3 isEqualToString:*(a1 + 32)];

  return a1 ^ 1;
}

uint64_t __75___SBFullScreenAppFloorSwitcherModifier_handleSwitcherShortcutActionEvent___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

@end
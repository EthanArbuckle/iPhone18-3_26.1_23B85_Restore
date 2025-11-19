@interface SBAppLayout
+ (SBAppLayout)appLayoutWithProtobufRepresentation:(id)a3 layoutAttributesProvider:(id)a4;
+ (id)appLibraryAppLayout;
+ (id)homeScreenAppLayout;
- (BOOL)containsAllItemsFromAppLayout:(id)a3;
- (BOOL)containsAllItemsFromSet:(id)a3;
- (BOOL)containsAnyItemFromAppLayout:(id)a3;
- (BOOL)containsAnyItemFromSet:(id)a3;
- (BOOL)containsItem:(id)a3;
- (BOOL)containsItemWithBundleIdentifier:(id)a3;
- (BOOL)containsItemWithUniqueIdentifier:(id)a3;
- (BOOL)hasSameItemsInLayoutRoles:(id)a3 asAppLayout:(id)a4;
- (BOOL)isCenterOverFull;
- (BOOL)isCenterOverSplit;
- (BOOL)isFullScreen;
- (BOOL)isOrContainsAppLayout:(id)a3;
- (BOOL)isSplitConfiguration;
- (NSString)uniqueIdentifier;
- (SBAppLayout)appLayoutWithItemsPassingTest:(id)a3;
- (SBAppLayout)init;
- (SBAppLayout)initWithItems:(id)a3 centerItem:(id)a4 floatingItem:(id)a5 configuration:(int64_t)a6 centerConfiguration:(int64_t)a7 environment:(int64_t)a8 hidden:(BOOL)a9 preferredDisplayOrdinal:(int64_t)a10;
- (SBAppLayout)initWithItemsForLayoutRoles:(id)a3 configuration:(int64_t)a4 centerConfiguration:(int64_t)a5 environment:(int64_t)a6 hidden:(BOOL)a7 preferredDisplayOrdinal:(int64_t)a8;
- (SBAppLayout)initWithPlistRepresentation:(id)a3 layoutAttributesProvider:(id)a4;
- (id)_leafAppLayoutForItem:(id)a3 role:(int64_t)a4;
- (id)_preferredWindowScene;
- (id)appLayoutByAdjustingCenterWindowItemsForFlexibleWindowing;
- (id)appLayoutByAdjustingFloatingItemsForFlexibleWindowing;
- (id)appLayoutByInsertingItem:(id)a3;
- (id)appLayoutByInsertingItem:(id)a3 inLayoutRole:(int64_t)a4;
- (id)appLayoutByInsertingLeafAppLayout:(id)a3 inRole:(int64_t)a4;
- (id)appLayoutByModifyingConfiguration:(int64_t)a3;
- (id)appLayoutByModifyingEnvironment:(int64_t)a3;
- (id)appLayoutByModifyingHiddenState:(BOOL)a3;
- (id)appLayoutByModifyingPreferredDisplayOrdinal:(int64_t)a3;
- (id)appLayoutByRemovingItemInLayoutRole:(int64_t)a3;
- (id)appLayoutsBySplittingMedusaIncompatibleItemsWithApplicationController:(id)a3 multitaskingSupported:(BOOL)a4;
- (id)appLibraryDisplayItem;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)flippedAppLayout;
- (id)itemForLayoutRole:(int64_t)a3;
- (id)leafAppLayoutForItem:(id)a3;
- (id)leafAppLayoutForRole:(int64_t)a3;
- (id)leafAppLayouts;
- (id)leafAppLayoutsFromDisplayItems:(id)a3;
- (id)plistRepresentationWithLayoutAttributesMap:(id)a3;
- (id)preferredDisplayIdentity;
- (id)protobufRepresentationWithLayoutAttributesMap:(id)a3 layoutAttributesEntries:(id)a4;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)compare:(id)a3;
- (int64_t)layoutRoleForItem:(id)a3;
- (int64_t)type;
- (uint64_t)isFlexibleWindowingEnabled;
- (uint64_t)setConfiguration:(uint64_t)result;
- (void)enumerate:(id)a3;
- (void)setItems:(void *)a1;
- (void)setItemsWithoutCenterOrFloatingItems:(void *)a1;
@end

@implementation SBAppLayout

- (int64_t)type
{
  result = self->_cachedAppLayoutType;
  if (result == -1)
  {
    v4 = [(SBAppLayout *)self itemForLayoutRole:1];
    v5 = [v4 type];

    v6 = +[SBAppLayout homeScreenAppLayout];
    v7 = [(SBAppLayout *)self isEqual:v6];

    result = 1;
    if (!v7 && v5 != 1)
    {
      v8 = +[SBAppLayout appLibraryAppLayout];
      v9 = [(SBAppLayout *)self isEqual:v8];

      result = 6;
      if (!v9 && v5 != 8)
      {
        if (v5 > 6)
        {
          result = -1;
        }

        else
        {
          result = qword_21F8A73C8[v5];
        }
      }
    }

    self->_cachedAppLayoutType = result;
  }

  return result;
}

- (id)leafAppLayouts
{
  v10[1] = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_items count]== 1)
  {
    v10[0] = self;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    v4 = objc_opt_new();
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __29__SBAppLayout_leafAppLayouts__block_invoke;
    v8[3] = &unk_2783A8FF8;
    v8[4] = self;
    v5 = v4;
    v9 = v5;
    [(SBAppLayout *)self enumerate:v8];
    v6 = v9;
    v3 = v5;
  }

  return v3;
}

- (id)succinctDescription
{
  v2 = [(SBAppLayout *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [objc_opt_class() homeScreenAppLayout];

  if (v4 == self)
  {
    [v3 appendString:@"HomeScreenAppLayout" withName:0];
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__SBAppLayout_succinctDescriptionBuilder__block_invoke;
    v12[3] = &unk_2783AE1C8;
    v13 = v3;
    [(SBAppLayout *)self enumerate:v12];
  }

  centerConfiguration = self->_centerConfiguration;
  if (centerConfiguration)
  {
    v6 = @"page";
    if (centerConfiguration != 1)
    {
      v6 = 0;
    }

    if (centerConfiguration == 2)
    {
      v7 = @"fullScreen";
    }

    else
    {
      v7 = v6;
    }

    [v3 appendString:v7 withName:@"centerConfig"];
  }

  v8 = [v3 appendBool:self->_hidden withName:@"hidden" ifEqualTo:1];
  environment = self->_environment;
  if (environment > 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = off_2783BA9B0[environment];
  }

  [v3 appendString:v10 withName:@"environment"];

  return v3;
}

+ (id)homeScreenAppLayout
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SBAppLayout_homeScreenAppLayout__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (homeScreenAppLayout_onceToken != -1)
  {
    dispatch_once(&homeScreenAppLayout_onceToken, block);
  }

  v2 = homeScreenAppLayout___homeScreenAppLayout;

  return v2;
}

void __41__SBAppLayout_succinctDescriptionBuilder__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v16 = [v5 uniqueIdentifier];
  v6 = [v16 componentsSeparatedByString:@"-"];
  v7 = [v6 lastObject];
  v8 = v7;
  v9 = &stru_283094718;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = MEMORY[0x277CCACA8];
  v12 = [v5 bundleIdentifier];

  v13 = [v11 stringWithFormat:@"%@:%@", v12, v10];

  v14 = *(a1 + 32);
  v15 = SBLayoutRoleDescription(a2);
  [v14 appendString:v13 withName:v15];
}

- (id)appLibraryDisplayItem
{
  v2 = [(NSArray *)self->_items firstObject];
  if ([v2 isAppLibraryDisplayItem])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (BOOL)isSplitConfiguration
{
  v3 = [(SBAppLayout *)self itemForLayoutRole:1];
  if (v3)
  {
    v4 = [(SBAppLayout *)self itemForLayoutRole:2];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)preferredDisplayIdentity
{
  v2 = [(SBAppLayout *)self _preferredWindowScene];
  v3 = [v2 _sbDisplayConfiguration];
  v4 = [v3 identity];

  return v4;
}

- (id)_preferredWindowScene
{
  v2 = [(SBAppLayout *)self preferredDisplayOrdinal];
  v3 = [SBApp windowSceneManager];
  v4 = [v3 connectedWindowScenes];
  v5 = [v4 bs_firstObjectPassingTest:&__block_literal_global_92_1];

  v6 = [SBApp windowSceneManager];
  v7 = [v6 connectedWindowScenes];
  v8 = [v7 bs_firstObjectPassingTest:&__block_literal_global_94_1];

  if (v8)
  {
    v9 = v2 == 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;

  return v11;
}

- (SBAppLayout)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBAppLayout.m" lineNumber:267 description:@"use -initWithItemsForLayoutRoles:configuration:environment:"];

  return 0;
}

- (SBAppLayout)initWithItemsForLayoutRoles:(id)a3 configuration:(int64_t)a4 centerConfiguration:(int64_t)a5 environment:(int64_t)a6 hidden:(BOOL)a7 preferredDisplayOrdinal:(int64_t)a8
{
  v37 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = [v11 allKeys];
  v13 = [v12 sortedArrayUsingSelector:sel_compare_];

  v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v32 + 1) + 8 * i);
        if (SBLayoutRoleIsValid([v20 integerValue]))
        {
          v21 = [v11 objectForKey:v20];
          [v14 addObject:v21];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v17);
  }

  v22 = [MEMORY[0x277CCABB0] numberWithInteger:4];
  v23 = [v11 objectForKey:v22];

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v25 = [v11 objectForKey:v24];

  LOBYTE(v28) = a7;
  v26 = [(SBAppLayout *)self initWithItems:v14 centerItem:v23 floatingItem:v25 configuration:a4 centerConfiguration:a5 environment:a6 hidden:v28 preferredDisplayOrdinal:a8];

  return v26;
}

- (SBAppLayout)initWithItems:(id)a3 centerItem:(id)a4 floatingItem:(id)a5 configuration:(int64_t)a6 centerConfiguration:(int64_t)a7 environment:(int64_t)a8 hidden:(BOOL)a9 preferredDisplayOrdinal:(int64_t)a10
{
  v66 = *MEMORY[0x277D85DE8];
  v50 = a3;
  v16 = a4;
  v17 = a5;
  v18 = objc_opt_class();
  v48 = v16;
  if (v18 == objc_opt_class())
  {
    if (!v16)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [SBAppLayout initWithItems:centerItem:floatingItem:configuration:centerConfiguration:environment:hidden:preferredDisplayOrdinal:];
    if (!v16)
    {
      goto LABEL_5;
    }
  }

  if (([v50 containsObject:{v16, v16}] & 1) == 0)
  {
    [SBAppLayout initWithItems:centerItem:floatingItem:configuration:centerConfiguration:environment:hidden:preferredDisplayOrdinal:];
  }

LABEL_5:
  if (v17 && ([v50 containsObject:v17] & 1) == 0)
  {
    [SBAppLayout initWithItems:centerItem:floatingItem:configuration:centerConfiguration:environment:hidden:preferredDisplayOrdinal:];
  }

  if (__allAppLayoutsOnceToken != -1)
  {
    [SBAppLayout initWithItems:centerItem:floatingItem:configuration:centerConfiguration:environment:hidden:preferredDisplayOrdinal:];
  }

  v64.receiver = self;
  v64.super_class = SBAppLayout;
  v19 = [(SBAppLayout *)&v64 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_centerItem, a4);
    objc_storeStrong(&v20->_floatingItem, a5);
    v20->_configuration = a6;
    v20->_environment = a8;
    v20->_centerConfiguration = a7;
    v20->_cachedAppLayoutType = -1;
    v20->_hidden = a9;
    v20->_preferredDisplayOrdinal = a10;
    v21 = [v50 copy];
    items = v20->_items;
    v20->_items = v21;

    v23 = v20->_items;
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __130__SBAppLayout_initWithItems_centerItem_floatingItem_configuration_centerConfiguration_environment_hidden_preferredDisplayOrdinal___block_invoke_2;
    v62[3] = &unk_2783A8C90;
    v24 = v20;
    v63 = v24;
    v25 = [(NSArray *)v23 bs_filter:v62];
    itemsWithoutCenterOrFloatingItems = v24->_itemsWithoutCenterOrFloatingItems;
    v24->_itemsWithoutCenterOrFloatingItems = v25;

    if ([v50 count] == 1)
    {
      v27 = [v50 firstObject];
      v28 = [v27 bundleIdentifier];
      continuousExposeIdentifier = v24->_continuousExposeIdentifier;
      v24->_continuousExposeIdentifier = v28;
    }

    else
    {
      v56 = 0;
      v57 = &v56;
      v58 = 0x3032000000;
      v59 = __Block_byref_object_copy__84;
      v60 = __Block_byref_object_dispose__84;
      v61 = [MEMORY[0x277CBEB58] set];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __130__SBAppLayout_initWithItems_centerItem_floatingItem_configuration_centerConfiguration_environment_hidden_preferredDisplayOrdinal___block_invoke_71;
      v55[3] = &unk_2783AFC58;
      v55[4] = &v56;
      [(SBAppLayout *)v24 enumerate:v55];
      v30 = [v57[5] allObjects];
      v31 = [v30 componentsJoinedByString:@"&"];
      v32 = v24->_continuousExposeIdentifier;
      v24->_continuousExposeIdentifier = v31;

      _Block_object_dispose(&v56, 8);
    }

    v33 = [MEMORY[0x277CF0C40] builder];
    v34 = [v33 appendInteger:v20->_environment];
    v35 = [v33 appendInteger:v20->_configuration];
    v36 = [v33 appendInteger:v20->_centerConfiguration];
    v37 = [v33 appendBool:v20->_hidden];
    if ([(NSArray *)v20->_items count])
    {
      v38 = [v33 appendInteger:v20->_preferredDisplayOrdinal];
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v39 = v20->_items;
    v40 = [(NSArray *)v39 countByEnumeratingWithState:&v51 objects:v65 count:16];
    if (v40)
    {
      v41 = *v52;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v52 != v41)
          {
            objc_enumerationMutation(v39);
          }

          v43 = [v33 appendObject:*(*(&v51 + 1) + 8 * i)];
        }

        v40 = [(NSArray *)v39 countByEnumeratingWithState:&v51 objects:v65 count:16];
      }

      while (v40);
    }

    v24->_cachedHash = [v33 hash];
  }

  v44 = v20;
  v45 = __allAppLayouts;
  objc_sync_enter(v45);
  v46 = [__allAppLayouts member:v44];

  if (!v46)
  {
    [__allAppLayouts addObject:v44];
    v46 = v44;
  }

  objc_sync_exit(v45);

  return v46;
}

void __130__SBAppLayout_initWithItems_centerItem_floatingItem_configuration_centerConfiguration_environment_hidden_preferredDisplayOrdinal___block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCAC20]) initWithOptions:5];
  [v2 setIsEqualFunction:_SBAppLayoutContentInspectingPointerFunctionIsEqual];
  v0 = [objc_alloc(MEMORY[0x277CCAA50]) initWithPointerFunctions:v2 capacity:100];
  v1 = __allAppLayouts;
  __allAppLayouts = v0;
}

uint64_t __130__SBAppLayout_initWithItems_centerItem_floatingItem_configuration_centerConfiguration_environment_hidden_preferredDisplayOrdinal___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (BSEqualObjects())
  {
    v3 = 0;
  }

  else
  {
    v3 = BSEqualObjects() ^ 1;
  }

  return v3;
}

void __130__SBAppLayout_initWithItems_centerItem_floatingItem_configuration_centerConfiguration_environment_hidden_preferredDisplayOrdinal___block_invoke_71(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 uniqueIdentifier];
  if (v4)
  {
    v6 = v4;
    v5 = [*(*(*(a1 + 32) + 8) + 40) containsObject:v4];
    v4 = v6;
    if ((v5 & 1) == 0)
    {
      [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
      v4 = v6;
    }
  }
}

void __34__SBAppLayout_homeScreenAppLayout__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v2 = [v1 initWithItemsForLayoutRoles:MEMORY[0x277CBEC10] configuration:0 environment:1 preferredDisplayOrdinal:0];
  v3 = homeScreenAppLayout___homeScreenAppLayout;
  homeScreenAppLayout___homeScreenAppLayout = v2;
}

+ (id)appLibraryAppLayout
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SBAppLayout_appLibraryAppLayout__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (appLibraryAppLayout_onceToken != -1)
  {
    dispatch_once(&appLibraryAppLayout_onceToken, block);
  }

  v2 = appLibraryAppLayout___appLibraryAppLayout;

  return v2;
}

void __34__SBAppLayout_appLibraryAppLayout__block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = objc_alloc(*(a1 + 32));
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  v7 = v2;
  v3 = +[SBDisplayItem appLibraryDisplayItem];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v1 initWithItemsForLayoutRoles:v4 configuration:0 environment:1 preferredDisplayOrdinal:0];
  v6 = appLibraryAppLayout___appLibraryAppLayout;
  appLibraryAppLayout___appLibraryAppLayout = v5;
}

- (id)itemForLayoutRole:(int64_t)a3
{
  v5 = [(NSArray *)self->_itemsWithoutCenterOrFloatingItems count];
  v6 = SBLayoutRoleMax();
  if (a3 < 1 || v6 < a3)
  {
    goto LABEL_6;
  }

  switch(a3)
  {
    case 1:
      if (v5)
      {
        itemsWithoutCenterOrFloatingItems = self->_itemsWithoutCenterOrFloatingItems;
        v10 = 0;
LABEL_13:
        v8 = [(NSArray *)itemsWithoutCenterOrFloatingItems objectAtIndex:v10];
        goto LABEL_19;
      }

      goto LABEL_6;
    case 2:
      if (v5 >= 2)
      {
        itemsWithoutCenterOrFloatingItems = self->_itemsWithoutCenterOrFloatingItems;
        v10 = 1;
        goto LABEL_13;
      }

LABEL_6:
      v8 = 0;
      goto LABEL_19;
    case 3:
      floatingItem = self->_floatingItem;
      break;
    case 4:
      floatingItem = self->_centerItem;
      break;
    default:
      v10 = a3 - 3;
      if (v5 >= a3 - 2)
      {
        itemsWithoutCenterOrFloatingItems = self->_itemsWithoutCenterOrFloatingItems;
        goto LABEL_13;
      }

      goto LABEL_6;
  }

  v8 = floatingItem;
LABEL_19:

  return v8;
}

- (void)enumerate:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_items;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v4[2](v4, [(SBAppLayout *)self layoutRoleForItem:*(*(&v10 + 1) + 8 * v9), v10], *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (BOOL)containsAnyItemFromSet:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SBAppLayout *)self allItems];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([v4 containsObject:{*(*(&v10 + 1) + 8 * i), v10}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)containsAnyItemFromAppLayout:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBAppLayout *)self allItems];
  [v4 allItems];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([v5 containsObject:{*(*(&v11 + 1) + 8 * i), v11}])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)containsAllItemsFromSet:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [(SBAppLayout *)self allItems];
  v7 = [v4 setWithArray:v6];

  LOBYTE(v6) = [v5 isSubsetOfSet:v7];
  return v6;
}

- (BOOL)containsAllItemsFromAppLayout:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBAppLayout *)self allItems];
  v6 = [v4 allItems];
  v7 = [v6 count];
  if (v7 <= [v5 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (![v5 containsObject:{*(*(&v15 + 1) + 8 * i), v15}])
          {
            v8 = 0;
            goto LABEL_13;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v8 = 1;
LABEL_13:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)containsItem:(id)a3
{
  v4 = a3;
  v5 = [(SBAppLayout *)self allItems];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)containsItemWithBundleIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(SBAppLayout *)self allItems];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) bundleIdentifier];
        v10 = [v9 isEqualToString:v4];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)containsItemWithUniqueIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(SBAppLayout *)self allItems];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) uniqueIdentifier];
        v10 = [v9 isEqualToString:v4];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (int64_t)layoutRoleForItem:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_itemsWithoutCenterOrFloatingItems indexOfObject:v4];
  switch(v5)
  {
    case 0uLL:
      v6 = &SBLayoutRolePrimary;
      goto LABEL_13;
    case 1uLL:
      v6 = &SBLayoutRoleSide;
      goto LABEL_13;
    case 0x7FFFFFFFFFFFFFFFuLL:
      if (v4)
      {
        if (BSEqualObjects())
        {
          v6 = &SBLayoutRoleCenter;
LABEL_13:
          v7 = *v6;
          goto LABEL_14;
        }

        if (BSEqualObjects())
        {
          v6 = &SBLayoutRoleFloating;
          goto LABEL_13;
        }
      }

      v6 = &SBLayoutRoleUndefined;
      goto LABEL_13;
  }

  v7 = v5 + 3;
LABEL_14:

  return v7;
}

- (BOOL)isOrContainsAppLayout:(id)a3
{
  v4 = a3;
  p_isa = &v4->super.isa;
  if (v4 == self)
  {
    v7 = 1;
  }

  else if (v4 && (v6 = -[NSArray count](self->_items, "count"), v6 >= [p_isa[14] count]))
  {
    v8 = [p_isa environment];
    environment = self->_environment;
    if (environment == v8 || (v7 = 0, v8 == 3) && environment == 1)
    {
      v7 = [(SBAppLayout *)self containsAllItemsFromAppLayout:p_isa];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isFullScreen
{
  v3 = [(SBAppLayout *)self itemForLayoutRole:1];
  if (v3)
  {
    v4 = [(SBAppLayout *)self itemForLayoutRole:2];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isCenterOverFull
{
  if ([(SBAppLayout *)self isSplitConfiguration])
  {
    return 0;
  }

  v4 = [(SBAppLayout *)self itemForLayoutRole:4];
  v3 = v4 != 0;

  return v3;
}

- (BOOL)isCenterOverSplit
{
  if (![(SBAppLayout *)self isSplitConfiguration])
  {
    return 0;
  }

  v3 = [(SBAppLayout *)self itemForLayoutRole:4];
  v4 = v3 != 0;

  return v4;
}

- (id)leafAppLayoutForItem:(id)a3
{
  v4 = a3;
  v5 = [(SBAppLayout *)self layoutRoleForItem:v4];
  if (v5 == 1)
  {
    v6 = [(NSArray *)self->_items count];
    if (v4)
    {
      if (v6 == 1)
      {
        v7 = self;
LABEL_7:
        v8 = v7;
        goto LABEL_9;
      }
    }
  }

  if (v4)
  {
    v7 = [(SBAppLayout *)self _leafAppLayoutForItem:v4 role:v5];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)_leafAppLayoutForItem:(id)a3 role:(int64_t)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a4 == 3)
    {
      centerConfiguration = 0;
      environment = 2;
    }

    else if (a4 == 4 || (environment = self->_environment, environment == 3))
    {
      centerConfiguration = self->_centerConfiguration;
      environment = 3;
    }

    else
    {
      centerConfiguration = 0;
    }

    v8 = a3;
    v9 = [SBAppLayout alloc];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v13 = v10;
    v14[0] = v8;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

    v7 = [(SBAppLayout *)v9 initWithItemsForLayoutRoles:v11 configuration:1 centerConfiguration:centerConfiguration environment:environment hidden:self->_hidden preferredDisplayOrdinal:self->_preferredDisplayOrdinal];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)appLayoutByInsertingLeafAppLayout:(id)a3 inRole:(int64_t)a4
{
  v6 = [a3 itemForLayoutRole:1];
  v7 = [(SBAppLayout *)self appLayoutByInsertingItem:v6 inLayoutRole:a4];

  return v7;
}

void __29__SBAppLayout_leafAppLayouts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) leafAppLayoutForItem:?];
  [*(a1 + 40) addObject:v2];
}

- (id)leafAppLayoutForRole:(int64_t)a3
{
  v4 = [(SBAppLayout *)self itemForLayoutRole:a3];
  v5 = [(SBAppLayout *)self leafAppLayoutForItem:v4];

  return v5;
}

- (id)leafAppLayoutsFromDisplayItems:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__SBAppLayout_leafAppLayoutsFromDisplayItems___block_invoke;
  v5[3] = &unk_2783BA888;
  v5[4] = self;
  v3 = [a3 bs_compactMap:v5];

  return v3;
}

- (id)appLayoutByModifyingHiddenState:(BOOL)a3
{
  hidden = self->_hidden;
  if (hidden == a3)
  {
    v4 = self;
  }

  else
  {
    LOBYTE(v6) = a3 & ~hidden;
    v4 = [[SBAppLayout alloc] initWithItems:self->_items centerItem:self->_centerItem floatingItem:self->_floatingItem configuration:self->_configuration centerConfiguration:self->_centerConfiguration environment:self->_environment hidden:v6 preferredDisplayOrdinal:self->_preferredDisplayOrdinal];
    [(SBAppLayout *)v4 setCachedLastFlexibleWindowingAutoLayoutSpace:0];
    [(SBAppLayout *)v4 setCachedLastOverlappingModelKey:0];
  }

  return v4;
}

- (id)appLayoutByModifyingEnvironment:(int64_t)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (self->_environment == a3)
  {
    v4 = self;
  }

  else
  {
    v6 = [(SBAppLayout *)self itemForLayoutRole:1];
    v7 = [SBAppLayout alloc];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v11 = v8;
    v12[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v4 = [(SBAppLayout *)v7 initWithItemsForLayoutRoles:v9 configuration:1 centerConfiguration:0 environment:a3 hidden:0 preferredDisplayOrdinal:self->_preferredDisplayOrdinal];
  }

  return v4;
}

- (id)appLayoutByModifyingConfiguration:(int64_t)a3
{
  if (self->_configuration == a3)
  {
    v4 = self;
  }

  else
  {
    v6 = [SBAppLayout alloc];
    LOBYTE(v8) = self->_hidden;
    v4 = [(SBAppLayout *)v6 initWithItems:self->_items centerItem:self->_centerItem floatingItem:self->_floatingItem configuration:a3 centerConfiguration:self->_centerConfiguration environment:self->_environment hidden:v8 preferredDisplayOrdinal:self->_preferredDisplayOrdinal];
  }

  return v4;
}

- (id)appLayoutByModifyingPreferredDisplayOrdinal:(int64_t)a3
{
  if (self->_preferredDisplayOrdinal == a3)
  {
    v4 = self;
  }

  else
  {
    v6 = [SBAppLayout alloc];
    LOBYTE(v8) = self->_hidden;
    v4 = [(SBAppLayout *)v6 initWithItems:self->_items centerItem:self->_centerItem floatingItem:self->_floatingItem configuration:self->_configuration centerConfiguration:self->_centerConfiguration environment:self->_environment hidden:v8 preferredDisplayOrdinal:a3];
  }

  return v4;
}

- (id)appLayoutByInsertingItem:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SBAppLayout appLayoutByInsertingItem:];
  }

  if ([(NSArray *)self->_items containsObject:v4])
  {
    v5 = self;
  }

  else
  {
    v6 = [(NSArray *)self->_items arrayByAddingObject:v4];
    configuration = self->_configuration;
    if ([v6 count] >= 2 && configuration == 1)
    {
      configuration = 3;
    }

    else if ([v6 count] == 1)
    {
      configuration = 1;
    }

    v9 = [SBAppLayout alloc];
    LOBYTE(v11) = self->_hidden;
    v5 = [(SBAppLayout *)v9 initWithItems:v6 centerItem:self->_centerItem floatingItem:self->_floatingItem configuration:configuration centerConfiguration:self->_centerConfiguration environment:self->_environment hidden:v11 preferredDisplayOrdinal:self->_preferredDisplayOrdinal];
  }

  return v5;
}

- (id)appLayoutByInsertingItem:(id)a3 inLayoutRole:(int64_t)a4
{
  v7 = a3;
  v8 = [(SBAppLayout *)self itemForLayoutRole:a4];
  v9 = [(SBDisplayItem *)v7 isEqualToItem:v8];

  if (v9)
  {
    v10 = self;
    goto LABEL_45;
  }

  v11 = [(NSArray *)self->_itemsWithoutCenterOrFloatingItems mutableCopy];
  v12 = self->_centerItem;
  v13 = self->_floatingItem;
  if ([v11 containsObject:v7])
  {
    [v11 removeObject:v7];
    if ([v11 count])
    {
      goto LABEL_11;
    }

    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = SBLayoutRoleDescription(a4);
    [v14 handleFailureInMethod:a2 object:self file:@"SBAppLayout.m" lineNumber:806 description:{@"Moving %@ to %@ would result in an app layout without a primary item", v7, v15}];
  }

  else if (([(SBDisplayItem *)v7 isEqualToItem:v12]& 1) != 0)
  {
    v14 = v12;
    v12 = 0;
  }

  else
  {
    if (![(SBDisplayItem *)v7 isEqualToItem:v13])
    {
      goto LABEL_11;
    }

    v14 = v13;
    v13 = 0;
  }

LABEL_11:
  if (!SBLayoutRoleIsValidForSplitView(a4))
  {
    if (a4 == 4)
    {
      v17 = v7;

      v12 = v17;
    }

    else if (a4 == 3)
    {
      v18 = v7;

      v13 = v18;
    }

    goto LABEL_30;
  }

  if (a4 == 1)
  {
    v16 = 0;
  }

  else if (a4 == 2)
  {
    v16 = 1;
  }

  else
  {
    v19 = [v11 count];
    if (v19 >= a4 - 3)
    {
      v16 = a4 - 3;
    }

    else
    {
      v16 = v19;
    }
  }

  if ([v11 count] != 1 || v16)
  {
    if ([v11 count] > v16)
    {
      [v11 replaceObjectAtIndex:v16 withObject:v7];
      goto LABEL_30;
    }

    v20 = v11;
    v21 = v7;
    v22 = v16;
  }

  else
  {
    v20 = v11;
    v21 = v7;
    v22 = 0;
  }

  [v20 insertObject:v21 atIndex:v22];
LABEL_30:
  v23 = [v11 mutableCopy];
  [v23 bs_safeAddObject:v12];
  [v23 bs_safeAddObject:v13];
  configuration = self->_configuration;
  if ([v11 count] < 2 || configuration >= 2)
  {
    v25 = [v11 count];
    if (configuration >= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = configuration;
    }

    if (v25 == 1)
    {
      configuration = v26;
    }
  }

  else
  {
    configuration = 3;
  }

  if (self->_centerConfiguration)
  {
    v27 = 1;
  }

  else
  {
    v27 = v12 == 0;
  }

  if (v27)
  {
    centerConfiguration = self->_centerConfiguration;
  }

  else
  {
    centerConfiguration = 1;
  }

  v29 = [SBAppLayout alloc];
  LOBYTE(v31) = self->_hidden;
  v10 = [(SBAppLayout *)v29 initWithItems:v23 centerItem:v12 floatingItem:v13 configuration:configuration centerConfiguration:centerConfiguration environment:self->_environment hidden:v31 preferredDisplayOrdinal:self->_preferredDisplayOrdinal];

LABEL_45:

  return v10;
}

- (id)appLayoutByRemovingItemInLayoutRole:(int64_t)a3
{
  v5 = [(SBAppLayout *)self itemForLayoutRole:?];
  if (v5)
  {
    v6 = [(NSArray *)self->_itemsWithoutCenterOrFloatingItems mutableCopy];
    v7 = self->_centerItem;
    v8 = self->_floatingItem;
    if (SBLayoutRoleIsValidForSplitView(a3))
    {
      if (a3 == 1)
      {
        v9 = 0;
      }

      else if (a3 == 2)
      {
        v9 = 1;
      }

      else
      {
        v11 = [v6 count];
        if (v11 >= a3 - 3)
        {
          v9 = a3 - 3;
        }

        else
        {
          v9 = v11;
        }
      }

      if ([v6 count] > v9)
      {
        [v6 removeObjectAtIndex:v9];
      }
    }

    else if (a3 == 4)
    {

      v7 = 0;
    }

    else if (a3 == 3)
    {

      v8 = 0;
    }

    v12 = [v6 mutableCopy];
    [v12 bs_safeAddObject:v7];
    [v12 bs_safeAddObject:v8];
    configuration = self->_configuration;
    if ([v6 count] == 1 && configuration > 1)
    {
      configuration = 1;
    }

    else if (![v6 count])
    {
      configuration &= configuration >> 63;
    }

    if (self->_centerConfiguration == 1 && v7 == 0)
    {
      centerConfiguration = 0;
    }

    else
    {
      centerConfiguration = self->_centerConfiguration;
    }

    v16 = [SBAppLayout alloc];
    LOBYTE(v18) = self->_hidden;
    v10 = [(SBAppLayout *)v16 initWithItems:v12 centerItem:v7 floatingItem:v8 configuration:configuration centerConfiguration:centerConfiguration environment:self->_environment hidden:v18 preferredDisplayOrdinal:self->_preferredDisplayOrdinal];
  }

  else
  {
    v10 = self;
  }

  return v10;
}

- (id)appLayoutsBySplittingMedusaIncompatibleItemsWithApplicationController:(id)a3 multitaskingSupported:(BOOL)a4
{
  v4 = a4;
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(SBAppLayout *)self environment]== 2 && !v4)
  {
    v7 = [(SBAppLayout *)self appLayoutByModifyingEnvironment:1];
    v26[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];

    goto LABEL_13;
  }

  if ([(SBAppLayout *)self isFullScreen])
  {
    v8 = 0;
    goto LABEL_13;
  }

  v9 = [(SBAppLayout *)self itemForLayoutRole:1];
  v10 = [v9 bundleIdentifier];
  v11 = [v6 applicationWithBundleIdentifier:v10];
  v12 = [v11 isMedusaCapable];

  v13 = [(SBAppLayout *)self itemForLayoutRole:2];
  v14 = [v13 bundleIdentifier];
  v15 = [v6 applicationWithBundleIdentifier:v14];
  v16 = [v15 isMedusaCapable];

  v17 = v12 & v16 & v4;
  if (v17 == 1)
  {
    v8 = [(SBAppLayout *)self itemForLayoutRole:5];

    if (!v8)
    {
      goto LABEL_13;
    }

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v17)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __107__SBAppLayout_appLayoutsBySplittingMedusaIncompatibleItemsWithApplicationController_multitaskingSupported___block_invoke;
    v25[3] = &unk_2783A8C90;
    v25[4] = self;
    v20 = [(SBAppLayout *)self appLayoutWithItemsPassingTest:v25];
    [v19 addObject:v20];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __107__SBAppLayout_appLayoutsBySplittingMedusaIncompatibleItemsWithApplicationController_multitaskingSupported___block_invoke_2;
  v22[3] = &unk_2783BA8B0;
  v24 = v18;
  v22[4] = self;
  v8 = v19;
  v23 = v8;
  [(SBAppLayout *)self enumerate:v22];

LABEL_13:

  return v8;
}

void __107__SBAppLayout_appLayoutsBySplittingMedusaIncompatibleItemsWithApplicationController_multitaskingSupported___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) & 1) != 0 || a2 >= 5)
  {
    v3 = [*(a1 + 32) leafAppLayoutForItem:?];
    [*(a1 + 40) addObject:v3];
  }
}

- (id)appLayoutByAdjustingFloatingItemsForFlexibleWindowing
{
  v3 = [(SBAppLayout *)self itemForLayoutRole:3];

  if (v3)
  {
    v4 = [SBAppLayout alloc];
    v5 = [(SBAppLayout *)self allItems];
    v6 = [(SBAppLayout *)self itemForLayoutRole:4];
    v7 = [(SBAppLayout *)self configuration];
    v8 = [(SBAppLayout *)self environment];
    LOBYTE(v14) = [(SBAppLayout *)self isHidden];
    v9 = [(SBAppLayout *)v4 initWithItems:v5 centerItem:v6 floatingItem:0 configuration:v7 centerConfiguration:0 environment:v8 hidden:v14 preferredDisplayOrdinal:[(SBAppLayout *)self preferredDisplayOrdinal]];
LABEL_5:
    v12 = v9;

    goto LABEL_6;
  }

  if ([(SBAppLayout *)self environment]== 2)
  {
    v10 = [SBAppLayout alloc];
    v5 = [(SBAppLayout *)self allItems];
    v6 = [(SBAppLayout *)self itemForLayoutRole:4];
    v11 = [(SBAppLayout *)self configuration];
    LOBYTE(v14) = [(SBAppLayout *)self isHidden];
    v9 = [(SBAppLayout *)v10 initWithItems:v5 centerItem:v6 floatingItem:0 configuration:v11 centerConfiguration:0 environment:1 hidden:v14 preferredDisplayOrdinal:[(SBAppLayout *)self preferredDisplayOrdinal]];
    goto LABEL_5;
  }

  v12 = self;
LABEL_6:

  return v12;
}

- (id)appLayoutByAdjustingCenterWindowItemsForFlexibleWindowing
{
  v3 = [(SBAppLayout *)self itemForLayoutRole:4];

  if (v3)
  {
    v4 = [(SBAppLayout *)self configuration];
    if (v4 == 1)
    {
      v5 = 3;
    }

    else
    {
      v5 = v4;
    }

    v6 = [SBAppLayout alloc];
    v7 = [(SBAppLayout *)self allItems];
    v8 = [(SBAppLayout *)self itemForLayoutRole:3];
    v9 = [(SBAppLayout *)self environment];
    LOBYTE(v16) = [(SBAppLayout *)self isHidden];
    v10 = [(SBAppLayout *)v6 initWithItems:v7 centerItem:0 floatingItem:v8 configuration:v5 centerConfiguration:0 environment:v9 hidden:v16 preferredDisplayOrdinal:[(SBAppLayout *)self preferredDisplayOrdinal]];
  }

  else if ([(SBAppLayout *)self environment]== 3)
  {
    v11 = [SBAppLayout alloc];
    v12 = [(SBAppLayout *)self allItems];
    v13 = [(SBAppLayout *)self itemForLayoutRole:3];
    v14 = [(SBAppLayout *)self configuration];
    LOBYTE(v16) = [(SBAppLayout *)self isHidden];
    v10 = [(SBAppLayout *)v11 initWithItems:v12 centerItem:0 floatingItem:v13 configuration:v14 centerConfiguration:0 environment:1 hidden:v16 preferredDisplayOrdinal:[(SBAppLayout *)self preferredDisplayOrdinal]];
  }

  else
  {
    v10 = self;
  }

  return v10;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = objc_opt_self();
  v6 = SBSafeCast(v5, v4);

  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SBAppLayout configuration](self, "configuration")}];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "configuration")}];
    v9 = [v7 compare:v8];
    v16[3] = v9;

    if (!v16[3])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __23__SBAppLayout_compare___block_invoke;
      v12[3] = &unk_2783BA8D8;
      v14 = &v15;
      v13 = v6;
      [(SBAppLayout *)self enumerate:v12];
    }
  }

  v10 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v10;
}

void __23__SBAppLayout_compare___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = [v7 itemForLayoutRole:a2];
  v10 = [v8 compare:v9];

  *(*(*(a1 + 40) + 8) + 24) = v10;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    *a4 = 1;
  }
}

- (BOOL)hasSameItemsInLayoutRoles:(id)a3 asAppLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__SBAppLayout_hasSameItemsInLayoutRoles_asAppLayout___block_invoke;
  v10[3] = &unk_2783BA900;
  v10[4] = self;
  v8 = v7;
  v11 = v8;
  v12 = &v13;
  [v6 enumerateRolesUsingBlock:v10];
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self;
}

void __53__SBAppLayout_hasSameItemsInLayoutRoles_asAppLayout___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = [*(a1 + 32) itemForLayoutRole:a2];
  v6 = [*(a1 + 40) itemForLayoutRole:a2];
  if ((BSEqualObjects() & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a3 = 1;
  }
}

- (SBAppLayout)appLayoutWithItemsPassingTest:(id)a3
{
  v4 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__84;
  v30 = __Block_byref_object_dispose__84;
  v31 = 0;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __45__SBAppLayout_appLayoutWithItemsPassingTest___block_invoke;
  v23 = &unk_2783BA928;
  v5 = v4;
  v24 = v5;
  v25 = &v26;
  [(SBAppLayout *)self enumerate:&v20];
  if (!BSEqualArrays())
  {
    if (![v27[5] count])
    {
      v8 = 0;
      goto LABEL_33;
    }

    if (self->_centerItem)
    {
      v7 = [v27[5] containsObject:?];
    }

    else
    {
      v7 = 0;
    }

    if (self->_floatingItem)
    {
      v9 = [v27[5] containsObject:?];
    }

    else
    {
      v9 = 0;
    }

    v10 = [v27[5] count];
    configuration = self->_configuration;
    if ((configuration - 2) < 3 && (v7 << 63 >> 63) - v9 + v10 <= 1)
    {
      configuration = 1;
    }

    environment = self->_environment;
    if (v7)
    {
      centerConfiguration = self->_centerConfiguration;
    }

    else
    {
      centerConfiguration = 0;
    }

    if (self->_centerConfiguration)
    {
      v14 = centerConfiguration;
    }

    else
    {
      v14 = 0;
    }

    if (((environment != 3) & v7) == 1)
    {
      if ([v27[5] count] == 1)
      {
        LODWORD(v7) = 0;
        environment = 3;
        configuration = 1;
      }

      else
      {
        LODWORD(v7) = 1;
      }
    }

    if ((([v27[5] count] == 1) & v9) == 1)
    {
      v9 = 0;
      environment = 2;
      configuration = 1;
    }

    v15 = objc_alloc(objc_opt_class());
    if (v7)
    {
      centerItem = self->_centerItem;
      if (!v9)
      {
LABEL_28:
        floatingItem = 0;
LABEL_31:
        LOBYTE(v19) = self->_hidden;
        v6 = [v15 initWithItems:v27[5] centerItem:centerItem floatingItem:floatingItem configuration:configuration centerConfiguration:v14 environment:environment hidden:v19 preferredDisplayOrdinal:{self->_preferredDisplayOrdinal, v20, v21, v22, v23}];
        goto LABEL_32;
      }
    }

    else
    {
      centerItem = 0;
      if (!v9)
      {
        goto LABEL_28;
      }
    }

    floatingItem = self->_floatingItem;
    goto LABEL_31;
  }

  v6 = self;
LABEL_32:
  v8 = v6;
LABEL_33:

  _Block_object_dispose(&v26, 8);

  return v8;
}

void __45__SBAppLayout_appLayoutWithItemsPassingTest___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);
    if (!v4)
    {
      v5 = objc_opt_new();
      v6 = *(*(a1 + 40) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v4 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v4 addObject:v8];
  }
}

- (NSString)uniqueIdentifier
{
  cached_uniqueIdentifier = self->_cached_uniqueIdentifier;
  if (!cached_uniqueIdentifier)
  {
    v4 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v4 UUIDString];
    v6 = self->_cached_uniqueIdentifier;
    self->_cached_uniqueIdentifier = v5;

    cached_uniqueIdentifier = self->_cached_uniqueIdentifier;
  }

  return cached_uniqueIdentifier;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBAppLayout *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBAppLayout *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__SBAppLayout_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2783A92D8;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

void __53__SBAppLayout_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) configuration];
  if (v2 - 1 >= 4)
  {
    v2 = 0;
  }

  v3 = *(a1 + 40);
  v4 = SBStringForSpaceConfiguration(v2);
  [v3 appendString:v4 withName:@"configuration"];

  v5 = 0;
  v6 = *(*(a1 + 32) + 56);
  if (v6 <= 3)
  {
    v5 = off_2783BA9B0[v6];
  }

  [*(a1 + 40) appendString:v5 withName:@"environment"];
  v7 = [*(a1 + 40) appendBool:*(*(a1 + 32) + 32) withName:@"hidden" ifEqualTo:1];
  v8 = *(*(a1 + 32) + 64);
  if (v8 > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_2783BA998[v8];
  }

  [*(a1 + 40) appendString:v9 withName:@"centerConfiguration"];
  v10 = [*(a1 + 40) appendInteger:*(*(a1 + 32) + 88) withName:@"preferredDisplayOrdinal"];
  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) continuousExposeIdentifier];
  [v11 appendString:v12 withName:@"continuousExposeIdentifier"];

  v13 = [MEMORY[0x277CBEB38] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = *(*(a1 + 32) + 112);
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        v20 = SBLayoutRoleDescription([*(a1 + 32) layoutRoleForItem:{v19, v23}]);
        [v13 setObject:v19 forKey:v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v21 = *(a1 + 40);
  v22 = [v21 activeMultilinePrefix];
  [v21 appendDictionarySection:v13 withName:@"layoutItems" multilinePrefix:v22 skipIfEmpty:0];
}

- (SBAppLayout)initWithPlistRepresentation:(id)a3 layoutAttributesProvider:(id)a4
{
  v91 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = objc_opt_class();
  v10 = v5;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v82 = v12;
  if (v12)
  {
    v13 = [v12 objectForKey:@"RolesAndItems"];
    v14 = objc_opt_class();
    v15 = v13;
    if (v14)
    {
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v20 = v16;

    v21 = [v82 objectForKey:@"Config"];
    v22 = objc_opt_class();
    v23 = v21;
    if (v22)
    {
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    v78 = [v25 integerValue];
    v26 = [v82 objectForKey:@"CenterConfig"];
    v27 = objc_opt_class();
    v28 = v26;
    if (v27)
    {
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
    }

    v18 = v29;

    if (v18)
    {
      v77 = [v18 integerValue];
    }

    else
    {
      v77 = 0;
    }

    v30 = [v82 objectForKey:@"Environment"];
    v31 = objc_opt_class();
    v32 = v30;
    if (v31)
    {
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;

    if (v34)
    {
      v76 = [v34 integerValue];
    }

    else
    {
      v76 = 1;
    }

    v35 = [v82 objectForKey:@"Hidden"];
    v36 = objc_opt_class();
    v37 = v35;
    if (v36)
    {
      if (objc_opt_isKindOfClass())
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;

    v75 = [v39 BOOLValue];
    v40 = [v82 objectForKey:@"PreferredDisplayOrdinal"];
    v41 = objc_opt_class();
    v42 = v40;
    if (v41)
    {
      if (objc_opt_isKindOfClass())
      {
        v43 = v42;
      }

      else
      {
        v43 = 0;
      }
    }

    else
    {
      v43 = 0;
    }

    v44 = v43;

    v74 = [v44 integerValue];
  }

  else
  {
    v17 = objc_opt_class();
    v18 = v10;
    if (v17)
    {
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    v74 = 0;
    v75 = 0;
    v77 = 0;
    v78 = 0;
    v76 = 1;
  }

  v83 = v8;
  v80 = v10;
  v81 = v6;

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v20;
  v45 = [obj countByEnumeratingWithState:&v86 objects:v90 count:16];
  if (v45)
  {
    v46 = v45;
    v84 = 0;
    v47 = *v87;
LABEL_52:
    v48 = 0;
    while (1)
    {
      if (*v87 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v49 = *(*(&v86 + 1) + 8 * v48);
      v50 = objc_opt_class();
      v51 = v49;
      if (v50)
      {
        v52 = (objc_opt_isKindOfClass() & 1) != 0 ? v51 : 0;
      }

      else
      {
        v52 = 0;
      }

      v53 = v52;

      if (v53 && [v53 count] >= 2)
      {
        v54 = [v53 objectAtIndexedSubscript:0];
        v55 = objc_opt_class();
        v56 = v54;
        if (v55)
        {
          v57 = (objc_opt_isKindOfClass() & 1) != 0 ? v56 : 0;
        }

        else
        {
          v57 = 0;
        }

        v58 = v57;

        v60 = [SBDisplayItem alloc];
        v61 = [v53 objectAtIndexedSubscript:1];
        v59 = [(SBDisplayItem *)v60 initWithPlistRepresentation:v61];
      }

      else
      {
        v58 = 0;
        v59 = 0;
      }

      if ([v53 count] < 3)
      {
        v65 = 0;
      }

      else
      {
        v62 = [SBDisplayItemLayoutAttributes alloc];
        [v53 objectAtIndex:2];
        v64 = v63 = v7;
        v65 = [(SBDisplayItemLayoutAttributes *)v62 initWithPlistRepresentation:v64];

        v7 = v63;
      }

      v66 = !v58 || v59 == 0;
      v67 = !v66;
      if (v66)
      {
        v84 = 1;
      }

      else
      {
        [v7 setObject:v59 forKeyedSubscript:v58];
        if (v65)
        {
          [v83 setObject:v65 forKey:v59];
        }
      }

      if (!v67)
      {
        break;
      }

      if (v46 == ++v48)
      {
        v46 = [obj countByEnumeratingWithState:&v86 objects:v90 count:16];
        if (v46)
        {
          goto LABEL_52;
        }

        break;
      }
    }
  }

  else
  {
    v84 = 0;
  }

  v68 = 0;
  if (obj)
  {
    v70 = v80;
    v69 = v81;
    v71 = v83;
    v72 = self;
    if ((v84 & 1) == 0)
    {
      v68 = [(SBAppLayout *)self initWithItemsForLayoutRoles:v7 configuration:v78 centerConfiguration:v77 environment:v76 hidden:v75 preferredDisplayOrdinal:v74];
      [v81 updateLayoutAttributesMap:v83 forAppLayout:v68 displayOrdinal:-[SBAppLayout preferredDisplayOrdinal](v68 orientation:{"preferredDisplayOrdinal"), 0}];
      v72 = v68;
    }
  }

  else
  {
    v70 = v80;
    v69 = v81;
    v71 = v83;
    v72 = self;
  }

  return v68;
}

- (id)plistRepresentationWithLayoutAttributesMap:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __65__SBAppLayout_Plist__plistRepresentationWithLayoutAttributesMap___block_invoke;
  v18 = &unk_2783A8FF8;
  v19 = v4;
  v20 = v5;
  v6 = v5;
  v7 = v4;
  [(SBAppLayout *)self enumerate:&v15];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{self->_configuration, v15, v16, v17, v18}];
  [v8 setObject:v9 forKey:@"Config"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_centerConfiguration];
  [v8 setObject:v10 forKey:@"CenterConfig"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_environment];
  [v8 setObject:v11 forKey:@"Environment"];

  [v8 setObject:v6 forKey:@"RolesAndItems"];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_hidden];
  [v8 setObject:v12 forKey:@"Hidden"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->_preferredDisplayOrdinal];
  [v8 setObject:v13 forKey:@"PreferredDisplayOrdinal"];

  return v8;
}

void __65__SBAppLayout_Plist__plistRepresentationWithLayoutAttributesMap___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = objc_opt_new();
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v10 addObject:v6];

  v7 = [v5 plistRepresentation];
  [v10 addObject:v7];

  v8 = [*(a1 + 32) objectForKey:v5];

  v9 = [(SBDisplayItemLayoutAttributes *)v8 plistRepresentation];
  [v10 addObject:v9];

  [*(a1 + 40) addObject:v10];
}

+ (SBAppLayout)appLayoutWithProtobufRepresentation:(id)a3 layoutAttributesProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = objc_opt_new();
  v59 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [(SBPBAppLayout *)v5 layoutConfiguration]- 1;
  if (v9 < 4)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(SBPBAppLayout *)v5 displayItems];
  v60 = v11;
  if (![v11 count])
  {
    v14 = [(SBPBAppLayout *)v5 primaryDisplayItem];
    v15 = [SBDisplayItem displayItemWithProtobufRepresentation:v14];

    if (!v15)
    {
      v13 = 0;
      goto LABEL_69;
    }

    v58 = v8;
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    [v7 setObject:v15 forKey:v16];

    v57 = v15;
    if ([(SBPBAppLayout *)v5 hasPrimaryLayoutAttributes])
    {
      v17 = [(SBPBAppLayout *)v5 primaryLayoutAttributes];
      v18 = [SBDisplayItemLayoutAttributes layoutAttributesWithProtobufRepresentation:v17];
      [v8 setObject:v18 forKey:v15];
    }

    else
    {
      v17 = objc_alloc_init(SBDisplayItemLayoutAttributes);
      [v8 setObject:v17 forKey:v15];
    }

    if ([(SBPBAppLayout *)v5 hasSecondaryDisplayItem])
    {
      v34 = [(SBPBAppLayout *)v5 secondaryDisplayItem];
      v35 = [SBDisplayItem displayItemWithProtobufRepresentation:v34];

      if (v35)
      {
        v36 = [(SBPBAppLayout *)v5 secondaryDisplayItemRole]- 1;
        if (v36 > 3)
        {
          v37 = &SBLayoutRoleUndefined;
        }

        else
        {
          v37 = off_2783BA9D0[v36];
        }

        v38 = [MEMORY[0x277CCABB0] numberWithInteger:*v37];
        [v7 setObject:v35 forKey:v38];
      }

      if ([(SBPBAppLayout *)v5 hasSecondaryLayoutAttributes])
      {
        v39 = [(SBPBAppLayout *)v5 secondaryLayoutAttributes];
        v40 = [SBDisplayItemLayoutAttributes layoutAttributesWithProtobufRepresentation:v39];
        [v8 setObject:v40 forKey:v35];
      }

      else
      {
        v39 = objc_alloc_init(SBDisplayItemLayoutAttributes);
        [v8 setObject:v39 forKey:v35];
      }
    }

    if (![(SBPBAppLayout *)v5 hasCenterDisplayItem])
    {
      goto LABEL_62;
    }

    v56 = v7;
    v41 = [(SBPBAppLayout *)v5 centerDisplayItem];
    v19 = [SBDisplayItem displayItemWithProtobufRepresentation:v41];

    if (v19)
    {
      v42 = [(SBPBAppLayout *)v5 centerDisplayItemRole]- 1;
      if (v42 > 3)
      {
        v43 = &SBLayoutRoleUndefined;
      }

      else
      {
        v43 = off_2783BA9D0[v42];
      }

      v44 = [MEMORY[0x277CCABB0] numberWithInteger:*v43];
      [v56 setObject:v19 forKey:v44];
    }

    v55 = v5;
    if ([(SBPBAppLayout *)v5 hasCenterLayoutAttributes])
    {
      v20 = [(SBPBAppLayout *)v5 centerLayoutAttributes];
      v45 = [SBDisplayItemLayoutAttributes layoutAttributesWithProtobufRepresentation:v20];
      [v58 setObject:v45 forKey:v19];
    }

    else
    {
      v20 = objc_alloc_init(SBDisplayItemLayoutAttributes);
      [v58 setObject:v20 forKey:v19];
    }

LABEL_61:

    v5 = v55;
    v7 = v56;
LABEL_62:

    v46 = [(SBPBAppLayout *)v5 environment]- 1;
    v8 = v58;
    if (v46 > 2)
    {
      v47 = 1;
    }

    else
    {
      v47 = qword_21F8A7400[v46];
    }

    v48 = [(SBPBAppLayout *)v5 centerConfiguration];
    if (v48 == 2)
    {
      v49 = 2;
    }

    else
    {
      v49 = v48 == 1;
    }

    v50 = [(SBPBAppLayout *)v5 hidden];
    v13 = [[SBAppLayout alloc] initWithItemsForLayoutRoles:v7 configuration:v10 centerConfiguration:v49 environment:v47 hidden:v50 preferredDisplayOrdinal:[(SBPBAppLayout *)v5 preferredDisplayOrdinal]];
    [v6 updateLayoutAttributesMap:v58 forAppLayout:v13 displayOrdinal:-[SBAppLayout preferredDisplayOrdinal](v13 orientation:{"preferredDisplayOrdinal"), 0}];
    v51 = [(SBPBAppLayout *)v5 layoutAttributesEntries];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __86__SBAppLayout_Protobuf__appLayoutWithProtobufRepresentation_layoutAttributesProvider___block_invoke;
    v61[3] = &unk_2783BA950;
    v62 = v6;
    [v51 bs_each:v61];

    goto LABEL_69;
  }

  v12 = [(SBPBAppLayout *)v5 centerDisplayItem];
  if (v12)
  {
    v57 = [SBDisplayItem displayItemWithProtobufRepresentation:v12];
    if (!v57)
    {

      v13 = 0;
      goto LABEL_70;
    }
  }

  else
  {
    v57 = 0;
  }

  v58 = v8;
  v56 = v7;

  v19 = [(SBPBAppLayout *)v5 displayItemLayoutAttributes];
  v55 = v5;
  v20 = [(SBPBAppLayout *)v5 displayItemLayoutAttributesForNonPreferredDisplays];
  if (![v11 count])
  {
    goto LABEL_61;
  }

  v53 = v10;
  v54 = v6;
  v21 = 0;
  v22 = 0;
  v23 = v57;
  while (1)
  {
    v24 = [v11 objectAtIndex:{v22, v53}];
    v25 = [SBDisplayItem displayItemWithProtobufRepresentation:v24];
    if (!v25)
    {
      break;
    }

    v26 = v25;
    if (v22 >= [v19 count] || (objc_msgSend(v19, "objectAtIndex:", v22), (v27 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v29 = objc_alloc_init(SBDisplayItemLayoutAttributes);
      if (!v29)
      {
        goto LABEL_34;
      }

LABEL_20:
      if (v23 && ([(SBDisplayItem *)v23 isEqualToItem:v26]& 1) != 0)
      {
        v30 = 4;
      }

      else
      {
        if (v21 <= 1)
        {
          v30 = v21 + 1;
        }

        else
        {
          v30 = v21 + 3;
        }

        ++v21;
      }

      v31 = [MEMORY[0x277CCABB0] numberWithInteger:v30];
      [v56 setObject:v26 forKey:v31];

      [v58 setObject:v29 forKey:v26];
      if (v22 < [(SBDisplayItemLayoutAttributes *)v20 count])
      {
        v32 = [(SBDisplayItemLayoutAttributes *)v20 objectAtIndex:v22];
        if (!v32 || ([SBDisplayItemLayoutAttributes layoutAttributesWithProtobufRepresentation:v32], (v33 = objc_claimAutoreleasedReturnValue()) == 0))
        {
LABEL_32:
          v33 = v29;
        }

        [v59 setObject:v33 forKey:v26];

        v23 = v57;
        goto LABEL_34;
      }

      v32 = 0;
      goto LABEL_32;
    }

    v28 = v27;
    v29 = [SBDisplayItemLayoutAttributes layoutAttributesWithProtobufRepresentation:v27];

    if (v29)
    {
      goto LABEL_20;
    }

LABEL_34:

    if (!v29)
    {
      goto LABEL_44;
    }

    ++v22;
    v11 = v60;
    if (v22 >= [v60 count])
    {
      v10 = v53;
      v6 = v54;
      goto LABEL_61;
    }
  }

LABEL_44:
  v13 = 0;
  v5 = v55;
  v6 = v54;
  v7 = v56;
  v8 = v58;
LABEL_69:
  v11 = v60;
LABEL_70:

  return v13;
}

void __86__SBAppLayout_Protobuf__appLayoutWithProtobufRepresentation_layoutAttributesProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(SBPBDisplayItemLayoutAttributesEntry *)v3 key];
  v7 = [SBDisplayItemLayoutAttributesKey keyFromProtobufRepresentation:v4];

  v5 = [(SBPBDisplayItemLayoutAttributesEntry *)v3 layoutAttributes];

  v6 = [SBDisplayItemLayoutAttributes layoutAttributesWithProtobufRepresentation:v5];

  [*(a1 + 32) updateLayoutAttributes:v6 forKey:v7];
}

- (id)protobufRepresentationWithLayoutAttributesMap:(id)a3 layoutAttributesEntries:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(SBPBAppLayout);
  v9 = [(SBAppLayout *)self configuration];
  if ((v9 - 1) < 4)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  [(SBPBAppLayout *)v8 setLayoutConfiguration:v10];
  v11 = [(SBAppLayout *)self environment];
  if (v11 == 3)
  {
    v12 = 3;
  }

  else
  {
    v12 = v11 == 2;
  }

  [(SBPBAppLayout *)v8 setEnvironment:v12];
  v13 = [(SBAppLayout *)self centerConfiguration];
  if (v13 == 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = v13 == 1;
  }

  [(SBPBAppLayout *)v8 setCenterConfiguration:v14];
  v15 = [(SBAppLayout *)self itemForLayoutRole:1];
  v16 = [v15 protobufRepresentation];
  [(SBPBAppLayout *)v8 setPrimaryDisplayItem:v16];

  [(SBPBAppLayout *)v8 setHidden:?];
  [(SBPBAppLayout *)v8 setPreferredDisplayOrdinal:?];
  v17 = [(SBAppLayout *)self itemForLayoutRole:2];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 protobufRepresentation];
    [(SBPBAppLayout *)v8 setSecondaryDisplayItem:v19];

    [(SBPBAppLayout *)v8 setSecondaryDisplayItemRole:?];
  }

  v20 = [(SBAppLayout *)self itemForLayoutRole:4];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 protobufRepresentation];
    [(SBPBAppLayout *)v8 setCenterDisplayItem:v22];

    [(SBPBAppLayout *)v8 setCenterDisplayItemRole:?];
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __95__SBAppLayout_Protobuf__protobufRepresentationWithLayoutAttributesMap_layoutAttributesEntries___block_invoke;
  v33[3] = &unk_2783A8FF8;
  v23 = v8;
  v34 = v23;
  v35 = v6;
  v24 = v6;
  [(SBAppLayout *)self enumerate:v33];
  v25 = [MEMORY[0x277CBEB18] array];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __95__SBAppLayout_Protobuf__protobufRepresentationWithLayoutAttributesMap_layoutAttributesEntries___block_invoke_2;
  v31[3] = &unk_2783BA978;
  v32 = v25;
  v26 = v25;
  [v7 bs_each:v31];

  v27 = [v26 copy];
  [(SBPBAppLayout *)v23 setLayoutAttributesEntries:v27];

  v28 = v32;
  v29 = v23;

  return v23;
}

void __95__SBAppLayout_Protobuf__protobufRepresentationWithLayoutAttributesMap_layoutAttributesEntries___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = [v5 protobufRepresentation];
  [(SBPBAppLayout *)*(a1 + 32) addDisplayItems:v8];
  v6 = [*(a1 + 40) objectForKey:v5];

  if (v6)
  {
    v7 = [(SBDisplayItemLayoutAttributes *)v6 protobufRepresentation];
    [(SBPBAppLayout *)*(a1 + 32) addDisplayItemLayoutAttributes:v7];
    switch(a2)
    {
      case 1:
        [(SBPBAppLayout *)*(a1 + 32) setPrimaryLayoutAttributes:v7];
        break;
      case 2:
        [(SBPBAppLayout *)*(a1 + 32) setSecondaryLayoutAttributes:v7];
        break;
      case 4:
        [(SBPBAppLayout *)*(a1 + 32) setCenterLayoutAttributes:v7];
        break;
    }
  }
}

void __95__SBAppLayout_Protobuf__protobufRepresentationWithLayoutAttributesMap_layoutAttributesEntries___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v9 = objc_alloc_init(SBPBDisplayItemLayoutAttributesEntry);
  v7 = [v6 protobufRepresentation];

  [(SBPBDisplayItemLayoutAttributesEntry *)v9 setKey:v7];
  v8 = [(SBDisplayItemLayoutAttributes *)v5 protobufRepresentation];

  [(SBPBDisplayItemLayoutAttributesEntry *)v9 setLayoutAttributes:v8];
  [*(a1 + 32) addObject:v9];
}

- (id)flippedAppLayout
{
  if (self)
  {
    items = self->_items;
  }

  else
  {
    items = 0;
  }

  v4 = items;
  v5 = [(NSArray *)v4 mutableCopy];
  if ([v5 count] >= 2)
  {
    v6 = [v5 objectAtIndex:0];
    v7 = [v5 objectAtIndex:1];
    [v5 replaceObjectAtIndex:0 withObject:v7];

    [v5 replaceObjectAtIndex:1 withObject:v6];
  }

  v8 = [(SBAppLayout *)self configuration];
  v9 = 4;
  if (v8 != 2)
  {
    v9 = v8;
  }

  if (v8 == 4)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [SBAppLayout alloc];
  LOBYTE(v14) = self->_hidden;
  v12 = [(SBAppLayout *)v11 initWithItems:v5 centerItem:self->_centerItem floatingItem:self->_floatingItem configuration:v10 centerConfiguration:self->_centerConfiguration environment:1 hidden:v14 preferredDisplayOrdinal:self->_preferredDisplayOrdinal];

  return v12;
}

- (uint64_t)setConfiguration:(uint64_t)result
{
  if (result)
  {
    *(result + 48) = a2;
  }

  return result;
}

- (void)setItems:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 112);
  }
}

- (void)setItemsWithoutCenterOrFloatingItems:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 120);
  }
}

- (uint64_t)isFlexibleWindowingEnabled
{
  if (a1)
  {
    v1 = *(a1 + 33);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (void)initWithItems:centerItem:floatingItem:configuration:centerConfiguration:environment:hidden:preferredDisplayOrdinal:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithItems:centerItem:floatingItem:configuration:centerConfiguration:environment:hidden:preferredDisplayOrdinal:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithItems:centerItem:floatingItem:configuration:centerConfiguration:environment:hidden:preferredDisplayOrdinal:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)appLayoutByInsertingItem:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"displayItem" object:? file:? lineNumber:? description:?];
}

@end
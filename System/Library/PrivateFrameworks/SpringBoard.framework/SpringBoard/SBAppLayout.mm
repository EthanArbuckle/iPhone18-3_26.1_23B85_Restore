@interface SBAppLayout
+ (SBAppLayout)appLayoutWithProtobufRepresentation:(id)representation layoutAttributesProvider:(id)provider;
+ (id)appLibraryAppLayout;
+ (id)homeScreenAppLayout;
- (BOOL)containsAllItemsFromAppLayout:(id)layout;
- (BOOL)containsAllItemsFromSet:(id)set;
- (BOOL)containsAnyItemFromAppLayout:(id)layout;
- (BOOL)containsAnyItemFromSet:(id)set;
- (BOOL)containsItem:(id)item;
- (BOOL)containsItemWithBundleIdentifier:(id)identifier;
- (BOOL)containsItemWithUniqueIdentifier:(id)identifier;
- (BOOL)hasSameItemsInLayoutRoles:(id)roles asAppLayout:(id)layout;
- (BOOL)isCenterOverFull;
- (BOOL)isCenterOverSplit;
- (BOOL)isFullScreen;
- (BOOL)isOrContainsAppLayout:(id)layout;
- (BOOL)isSplitConfiguration;
- (NSString)uniqueIdentifier;
- (SBAppLayout)appLayoutWithItemsPassingTest:(id)test;
- (SBAppLayout)init;
- (SBAppLayout)initWithItems:(id)items centerItem:(id)item floatingItem:(id)floatingItem configuration:(int64_t)configuration centerConfiguration:(int64_t)centerConfiguration environment:(int64_t)environment hidden:(BOOL)hidden preferredDisplayOrdinal:(int64_t)self0;
- (SBAppLayout)initWithItemsForLayoutRoles:(id)roles configuration:(int64_t)configuration centerConfiguration:(int64_t)centerConfiguration environment:(int64_t)environment hidden:(BOOL)hidden preferredDisplayOrdinal:(int64_t)ordinal;
- (SBAppLayout)initWithPlistRepresentation:(id)representation layoutAttributesProvider:(id)provider;
- (id)_leafAppLayoutForItem:(id)item role:(int64_t)role;
- (id)_preferredWindowScene;
- (id)appLayoutByAdjustingCenterWindowItemsForFlexibleWindowing;
- (id)appLayoutByAdjustingFloatingItemsForFlexibleWindowing;
- (id)appLayoutByInsertingItem:(id)item;
- (id)appLayoutByInsertingItem:(id)item inLayoutRole:(int64_t)role;
- (id)appLayoutByInsertingLeafAppLayout:(id)layout inRole:(int64_t)role;
- (id)appLayoutByModifyingConfiguration:(int64_t)configuration;
- (id)appLayoutByModifyingEnvironment:(int64_t)environment;
- (id)appLayoutByModifyingHiddenState:(BOOL)state;
- (id)appLayoutByModifyingPreferredDisplayOrdinal:(int64_t)ordinal;
- (id)appLayoutByRemovingItemInLayoutRole:(int64_t)role;
- (id)appLayoutsBySplittingMedusaIncompatibleItemsWithApplicationController:(id)controller multitaskingSupported:(BOOL)supported;
- (id)appLibraryDisplayItem;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)flippedAppLayout;
- (id)itemForLayoutRole:(int64_t)role;
- (id)leafAppLayoutForItem:(id)item;
- (id)leafAppLayoutForRole:(int64_t)role;
- (id)leafAppLayouts;
- (id)leafAppLayoutsFromDisplayItems:(id)items;
- (id)plistRepresentationWithLayoutAttributesMap:(id)map;
- (id)preferredDisplayIdentity;
- (id)protobufRepresentationWithLayoutAttributesMap:(id)map layoutAttributesEntries:(id)entries;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)compare:(id)compare;
- (int64_t)layoutRoleForItem:(id)item;
- (int64_t)type;
- (uint64_t)isFlexibleWindowingEnabled;
- (uint64_t)setConfiguration:(uint64_t)result;
- (void)enumerate:(id)enumerate;
- (void)setItems:(void *)items;
- (void)setItemsWithoutCenterOrFloatingItems:(void *)items;
@end

@implementation SBAppLayout

- (int64_t)type
{
  result = self->_cachedAppLayoutType;
  if (result == -1)
  {
    v4 = [(SBAppLayout *)self itemForLayoutRole:1];
    type = [v4 type];

    v6 = +[SBAppLayout homeScreenAppLayout];
    v7 = [(SBAppLayout *)self isEqual:v6];

    result = 1;
    if (!v7 && type != 1)
    {
      v8 = +[SBAppLayout appLibraryAppLayout];
      v9 = [(SBAppLayout *)self isEqual:v8];

      result = 6;
      if (!v9 && type != 8)
      {
        if (type > 6)
        {
          result = -1;
        }

        else
        {
          result = qword_21F8A73C8[type];
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
  succinctDescriptionBuilder = [(SBAppLayout *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  homeScreenAppLayout = [objc_opt_class() homeScreenAppLayout];

  if (homeScreenAppLayout == self)
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
  block[4] = self;
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
  firstObject = [(NSArray *)self->_items firstObject];
  if ([firstObject isAppLibraryDisplayItem])
  {
    v3 = firstObject;
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
  _preferredWindowScene = [(SBAppLayout *)self _preferredWindowScene];
  _sbDisplayConfiguration = [_preferredWindowScene _sbDisplayConfiguration];
  identity = [_sbDisplayConfiguration identity];

  return identity;
}

- (id)_preferredWindowScene
{
  preferredDisplayOrdinal = [(SBAppLayout *)self preferredDisplayOrdinal];
  windowSceneManager = [SBApp windowSceneManager];
  connectedWindowScenes = [windowSceneManager connectedWindowScenes];
  v5 = [connectedWindowScenes bs_firstObjectPassingTest:&__block_literal_global_92_1];

  windowSceneManager2 = [SBApp windowSceneManager];
  connectedWindowScenes2 = [windowSceneManager2 connectedWindowScenes];
  v8 = [connectedWindowScenes2 bs_firstObjectPassingTest:&__block_literal_global_94_1];

  if (v8)
  {
    v9 = preferredDisplayOrdinal == 1;
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBAppLayout.m" lineNumber:267 description:@"use -initWithItemsForLayoutRoles:configuration:environment:"];

  return 0;
}

- (SBAppLayout)initWithItemsForLayoutRoles:(id)roles configuration:(int64_t)configuration centerConfiguration:(int64_t)centerConfiguration environment:(int64_t)environment hidden:(BOOL)hidden preferredDisplayOrdinal:(int64_t)ordinal
{
  v37 = *MEMORY[0x277D85DE8];
  rolesCopy = roles;
  allKeys = [rolesCopy allKeys];
  v13 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(rolesCopy, "count")}];
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
          v21 = [rolesCopy objectForKey:v20];
          [v14 addObject:v21];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v17);
  }

  v22 = [MEMORY[0x277CCABB0] numberWithInteger:4];
  v23 = [rolesCopy objectForKey:v22];

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v25 = [rolesCopy objectForKey:v24];

  LOBYTE(v28) = hidden;
  v26 = [(SBAppLayout *)self initWithItems:v14 centerItem:v23 floatingItem:v25 configuration:configuration centerConfiguration:centerConfiguration environment:environment hidden:v28 preferredDisplayOrdinal:ordinal];

  return v26;
}

- (SBAppLayout)initWithItems:(id)items centerItem:(id)item floatingItem:(id)floatingItem configuration:(int64_t)configuration centerConfiguration:(int64_t)centerConfiguration environment:(int64_t)environment hidden:(BOOL)hidden preferredDisplayOrdinal:(int64_t)self0
{
  v66 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  itemCopy = item;
  floatingItemCopy = floatingItem;
  v18 = objc_opt_class();
  v48 = itemCopy;
  if (v18 == objc_opt_class())
  {
    if (!itemCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [SBAppLayout initWithItems:centerItem:floatingItem:configuration:centerConfiguration:environment:hidden:preferredDisplayOrdinal:];
    if (!itemCopy)
    {
      goto LABEL_5;
    }
  }

  if (([itemsCopy containsObject:{itemCopy, itemCopy}] & 1) == 0)
  {
    [SBAppLayout initWithItems:centerItem:floatingItem:configuration:centerConfiguration:environment:hidden:preferredDisplayOrdinal:];
  }

LABEL_5:
  if (floatingItemCopy && ([itemsCopy containsObject:floatingItemCopy] & 1) == 0)
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
    objc_storeStrong(&v19->_centerItem, item);
    objc_storeStrong(&v20->_floatingItem, floatingItem);
    v20->_configuration = configuration;
    v20->_environment = environment;
    v20->_centerConfiguration = centerConfiguration;
    v20->_cachedAppLayoutType = -1;
    v20->_hidden = hidden;
    v20->_preferredDisplayOrdinal = ordinal;
    v21 = [itemsCopy copy];
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

    if ([itemsCopy count] == 1)
    {
      firstObject = [itemsCopy firstObject];
      bundleIdentifier = [firstObject bundleIdentifier];
      continuousExposeIdentifier = v24->_continuousExposeIdentifier;
      v24->_continuousExposeIdentifier = bundleIdentifier;
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
      allObjects = [v57[5] allObjects];
      v31 = [allObjects componentsJoinedByString:@"&"];
      v32 = v24->_continuousExposeIdentifier;
      v24->_continuousExposeIdentifier = v31;

      _Block_object_dispose(&v56, 8);
    }

    builder = [MEMORY[0x277CF0C40] builder];
    v34 = [builder appendInteger:v20->_environment];
    v35 = [builder appendInteger:v20->_configuration];
    v36 = [builder appendInteger:v20->_centerConfiguration];
    v37 = [builder appendBool:v20->_hidden];
    if ([(NSArray *)v20->_items count])
    {
      v38 = [builder appendInteger:v20->_preferredDisplayOrdinal];
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

          v43 = [builder appendObject:*(*(&v51 + 1) + 8 * i)];
        }

        v40 = [(NSArray *)v39 countByEnumeratingWithState:&v51 objects:v65 count:16];
      }

      while (v40);
    }

    v24->_cachedHash = [builder hash];
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
  block[4] = self;
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

- (id)itemForLayoutRole:(int64_t)role
{
  v5 = [(NSArray *)self->_itemsWithoutCenterOrFloatingItems count];
  v6 = SBLayoutRoleMax();
  if (role < 1 || v6 < role)
  {
    goto LABEL_6;
  }

  switch(role)
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
      v10 = role - 3;
      if (v5 >= role - 2)
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

- (void)enumerate:(id)enumerate
{
  v16 = *MEMORY[0x277D85DE8];
  enumerateCopy = enumerate;
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

      enumerateCopy[2](enumerateCopy, [(SBAppLayout *)self layoutRoleForItem:*(*(&v10 + 1) + 8 * v9), v10], *(*(&v10 + 1) + 8 * v9), &v14);
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

- (BOOL)containsAnyItemFromSet:(id)set
{
  v15 = *MEMORY[0x277D85DE8];
  setCopy = set;
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

        if ([setCopy containsObject:{*(*(&v10 + 1) + 8 * i), v10}])
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

- (BOOL)containsAnyItemFromAppLayout:(id)layout
{
  v16 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  allItems = [(SBAppLayout *)self allItems];
  [layoutCopy allItems];
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

        if ([allItems containsObject:{*(*(&v11 + 1) + 8 * i), v11}])
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

- (BOOL)containsAllItemsFromSet:(id)set
{
  v4 = MEMORY[0x277CBEB98];
  setCopy = set;
  allItems = [(SBAppLayout *)self allItems];
  v7 = [v4 setWithArray:allItems];

  LOBYTE(allItems) = [setCopy isSubsetOfSet:v7];
  return allItems;
}

- (BOOL)containsAllItemsFromAppLayout:(id)layout
{
  v20 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  allItems = [(SBAppLayout *)self allItems];
  allItems2 = [layoutCopy allItems];
  v7 = [allItems2 count];
  if (v7 <= [allItems count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = allItems2;
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

          if (![allItems containsObject:{*(*(&v15 + 1) + 8 * i), v15}])
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

- (BOOL)containsItem:(id)item
{
  itemCopy = item;
  allItems = [(SBAppLayout *)self allItems];
  v6 = [allItems containsObject:itemCopy];

  return v6;
}

- (BOOL)containsItemWithBundleIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allItems = [(SBAppLayout *)self allItems];
  v6 = [allItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allItems);
        }

        bundleIdentifier = [*(*(&v12 + 1) + 8 * i) bundleIdentifier];
        v10 = [bundleIdentifier isEqualToString:identifierCopy];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [allItems countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)containsItemWithUniqueIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allItems = [(SBAppLayout *)self allItems];
  v6 = [allItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allItems);
        }

        uniqueIdentifier = [*(*(&v12 + 1) + 8 * i) uniqueIdentifier];
        v10 = [uniqueIdentifier isEqualToString:identifierCopy];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [allItems countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (int64_t)layoutRoleForItem:(id)item
{
  itemCopy = item;
  v5 = [(NSArray *)self->_itemsWithoutCenterOrFloatingItems indexOfObject:itemCopy];
  switch(v5)
  {
    case 0uLL:
      v6 = &SBLayoutRolePrimary;
      goto LABEL_13;
    case 1uLL:
      v6 = &SBLayoutRoleSide;
      goto LABEL_13;
    case 0x7FFFFFFFFFFFFFFFuLL:
      if (itemCopy)
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

- (BOOL)isOrContainsAppLayout:(id)layout
{
  layoutCopy = layout;
  p_isa = &layoutCopy->super.isa;
  if (layoutCopy == self)
  {
    v7 = 1;
  }

  else if (layoutCopy && (v6 = -[NSArray count](self->_items, "count"), v6 >= [p_isa[14] count]))
  {
    environment = [p_isa environment];
    environment = self->_environment;
    if (environment == environment || (v7 = 0, environment == 3) && environment == 1)
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

- (id)leafAppLayoutForItem:(id)item
{
  itemCopy = item;
  v5 = [(SBAppLayout *)self layoutRoleForItem:itemCopy];
  if (v5 == 1)
  {
    v6 = [(NSArray *)self->_items count];
    if (itemCopy)
    {
      if (v6 == 1)
      {
        selfCopy = self;
LABEL_7:
        v8 = selfCopy;
        goto LABEL_9;
      }
    }
  }

  if (itemCopy)
  {
    selfCopy = [(SBAppLayout *)self _leafAppLayoutForItem:itemCopy role:v5];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)_leafAppLayoutForItem:(id)item role:(int64_t)role
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (item)
  {
    if (role == 3)
    {
      centerConfiguration = 0;
      environment = 2;
    }

    else if (role == 4 || (environment = self->_environment, environment == 3))
    {
      centerConfiguration = self->_centerConfiguration;
      environment = 3;
    }

    else
    {
      centerConfiguration = 0;
    }

    itemCopy = item;
    v9 = [SBAppLayout alloc];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v13 = v10;
    v14[0] = itemCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

    v7 = [(SBAppLayout *)v9 initWithItemsForLayoutRoles:v11 configuration:1 centerConfiguration:centerConfiguration environment:environment hidden:self->_hidden preferredDisplayOrdinal:self->_preferredDisplayOrdinal];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)appLayoutByInsertingLeafAppLayout:(id)layout inRole:(int64_t)role
{
  v6 = [layout itemForLayoutRole:1];
  v7 = [(SBAppLayout *)self appLayoutByInsertingItem:v6 inLayoutRole:role];

  return v7;
}

void __29__SBAppLayout_leafAppLayouts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) leafAppLayoutForItem:?];
  [*(a1 + 40) addObject:v2];
}

- (id)leafAppLayoutForRole:(int64_t)role
{
  v4 = [(SBAppLayout *)self itemForLayoutRole:role];
  v5 = [(SBAppLayout *)self leafAppLayoutForItem:v4];

  return v5;
}

- (id)leafAppLayoutsFromDisplayItems:(id)items
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__SBAppLayout_leafAppLayoutsFromDisplayItems___block_invoke;
  v5[3] = &unk_2783BA888;
  v5[4] = self;
  v3 = [items bs_compactMap:v5];

  return v3;
}

- (id)appLayoutByModifyingHiddenState:(BOOL)state
{
  hidden = self->_hidden;
  if (hidden == state)
  {
    selfCopy = self;
  }

  else
  {
    LOBYTE(v6) = state & ~hidden;
    selfCopy = [[SBAppLayout alloc] initWithItems:self->_items centerItem:self->_centerItem floatingItem:self->_floatingItem configuration:self->_configuration centerConfiguration:self->_centerConfiguration environment:self->_environment hidden:v6 preferredDisplayOrdinal:self->_preferredDisplayOrdinal];
    [(SBAppLayout *)selfCopy setCachedLastFlexibleWindowingAutoLayoutSpace:0];
    [(SBAppLayout *)selfCopy setCachedLastOverlappingModelKey:0];
  }

  return selfCopy;
}

- (id)appLayoutByModifyingEnvironment:(int64_t)environment
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (self->_environment == environment)
  {
    selfCopy = self;
  }

  else
  {
    v6 = [(SBAppLayout *)self itemForLayoutRole:1];
    v7 = [SBAppLayout alloc];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v11 = v8;
    v12[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    selfCopy = [(SBAppLayout *)v7 initWithItemsForLayoutRoles:v9 configuration:1 centerConfiguration:0 environment:environment hidden:0 preferredDisplayOrdinal:self->_preferredDisplayOrdinal];
  }

  return selfCopy;
}

- (id)appLayoutByModifyingConfiguration:(int64_t)configuration
{
  if (self->_configuration == configuration)
  {
    selfCopy = self;
  }

  else
  {
    v6 = [SBAppLayout alloc];
    LOBYTE(v8) = self->_hidden;
    selfCopy = [(SBAppLayout *)v6 initWithItems:self->_items centerItem:self->_centerItem floatingItem:self->_floatingItem configuration:configuration centerConfiguration:self->_centerConfiguration environment:self->_environment hidden:v8 preferredDisplayOrdinal:self->_preferredDisplayOrdinal];
  }

  return selfCopy;
}

- (id)appLayoutByModifyingPreferredDisplayOrdinal:(int64_t)ordinal
{
  if (self->_preferredDisplayOrdinal == ordinal)
  {
    selfCopy = self;
  }

  else
  {
    v6 = [SBAppLayout alloc];
    LOBYTE(v8) = self->_hidden;
    selfCopy = [(SBAppLayout *)v6 initWithItems:self->_items centerItem:self->_centerItem floatingItem:self->_floatingItem configuration:self->_configuration centerConfiguration:self->_centerConfiguration environment:self->_environment hidden:v8 preferredDisplayOrdinal:ordinal];
  }

  return selfCopy;
}

- (id)appLayoutByInsertingItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    [SBAppLayout appLayoutByInsertingItem:];
  }

  if ([(NSArray *)self->_items containsObject:itemCopy])
  {
    selfCopy = self;
  }

  else
  {
    v6 = [(NSArray *)self->_items arrayByAddingObject:itemCopy];
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
    selfCopy = [(SBAppLayout *)v9 initWithItems:v6 centerItem:self->_centerItem floatingItem:self->_floatingItem configuration:configuration centerConfiguration:self->_centerConfiguration environment:self->_environment hidden:v11 preferredDisplayOrdinal:self->_preferredDisplayOrdinal];
  }

  return selfCopy;
}

- (id)appLayoutByInsertingItem:(id)item inLayoutRole:(int64_t)role
{
  itemCopy = item;
  v8 = [(SBAppLayout *)self itemForLayoutRole:role];
  v9 = [(SBDisplayItem *)itemCopy isEqualToItem:v8];

  if (v9)
  {
    selfCopy = self;
    goto LABEL_45;
  }

  v11 = [(NSArray *)self->_itemsWithoutCenterOrFloatingItems mutableCopy];
  v12 = self->_centerItem;
  v13 = self->_floatingItem;
  if ([v11 containsObject:itemCopy])
  {
    [v11 removeObject:itemCopy];
    if ([v11 count])
    {
      goto LABEL_11;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v15 = SBLayoutRoleDescription(role);
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBAppLayout.m" lineNumber:806 description:{@"Moving %@ to %@ would result in an app layout without a primary item", itemCopy, v15}];
  }

  else if (([(SBDisplayItem *)itemCopy isEqualToItem:v12]& 1) != 0)
  {
    currentHandler = v12;
    v12 = 0;
  }

  else
  {
    if (![(SBDisplayItem *)itemCopy isEqualToItem:v13])
    {
      goto LABEL_11;
    }

    currentHandler = v13;
    v13 = 0;
  }

LABEL_11:
  if (!SBLayoutRoleIsValidForSplitView(role))
  {
    if (role == 4)
    {
      v17 = itemCopy;

      v12 = v17;
    }

    else if (role == 3)
    {
      v18 = itemCopy;

      v13 = v18;
    }

    goto LABEL_30;
  }

  if (role == 1)
  {
    v16 = 0;
  }

  else if (role == 2)
  {
    v16 = 1;
  }

  else
  {
    v19 = [v11 count];
    if (v19 >= role - 3)
    {
      v16 = role - 3;
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
      [v11 replaceObjectAtIndex:v16 withObject:itemCopy];
      goto LABEL_30;
    }

    v20 = v11;
    v21 = itemCopy;
    v22 = v16;
  }

  else
  {
    v20 = v11;
    v21 = itemCopy;
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
  selfCopy = [(SBAppLayout *)v29 initWithItems:v23 centerItem:v12 floatingItem:v13 configuration:configuration centerConfiguration:centerConfiguration environment:self->_environment hidden:v31 preferredDisplayOrdinal:self->_preferredDisplayOrdinal];

LABEL_45:

  return selfCopy;
}

- (id)appLayoutByRemovingItemInLayoutRole:(int64_t)role
{
  v5 = [(SBAppLayout *)self itemForLayoutRole:?];
  if (v5)
  {
    v6 = [(NSArray *)self->_itemsWithoutCenterOrFloatingItems mutableCopy];
    v7 = self->_centerItem;
    v8 = self->_floatingItem;
    if (SBLayoutRoleIsValidForSplitView(role))
    {
      if (role == 1)
      {
        v9 = 0;
      }

      else if (role == 2)
      {
        v9 = 1;
      }

      else
      {
        v11 = [v6 count];
        if (v11 >= role - 3)
        {
          v9 = role - 3;
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

    else if (role == 4)
    {

      v7 = 0;
    }

    else if (role == 3)
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
    selfCopy = [(SBAppLayout *)v16 initWithItems:v12 centerItem:v7 floatingItem:v8 configuration:configuration centerConfiguration:centerConfiguration environment:self->_environment hidden:v18 preferredDisplayOrdinal:self->_preferredDisplayOrdinal];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)appLayoutsBySplittingMedusaIncompatibleItemsWithApplicationController:(id)controller multitaskingSupported:(BOOL)supported
{
  supportedCopy = supported;
  v26[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if ([(SBAppLayout *)self environment]== 2 && !supportedCopy)
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
  bundleIdentifier = [v9 bundleIdentifier];
  v11 = [controllerCopy applicationWithBundleIdentifier:bundleIdentifier];
  isMedusaCapable = [v11 isMedusaCapable];

  v13 = [(SBAppLayout *)self itemForLayoutRole:2];
  bundleIdentifier2 = [v13 bundleIdentifier];
  v15 = [controllerCopy applicationWithBundleIdentifier:bundleIdentifier2];
  isMedusaCapable2 = [v15 isMedusaCapable];

  v17 = isMedusaCapable & isMedusaCapable2 & supportedCopy;
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
    allItems = [(SBAppLayout *)self allItems];
    v6 = [(SBAppLayout *)self itemForLayoutRole:4];
    configuration = [(SBAppLayout *)self configuration];
    environment = [(SBAppLayout *)self environment];
    LOBYTE(v14) = [(SBAppLayout *)self isHidden];
    v9 = [(SBAppLayout *)v4 initWithItems:allItems centerItem:v6 floatingItem:0 configuration:configuration centerConfiguration:0 environment:environment hidden:v14 preferredDisplayOrdinal:[(SBAppLayout *)self preferredDisplayOrdinal]];
LABEL_5:
    selfCopy = v9;

    goto LABEL_6;
  }

  if ([(SBAppLayout *)self environment]== 2)
  {
    v10 = [SBAppLayout alloc];
    allItems = [(SBAppLayout *)self allItems];
    v6 = [(SBAppLayout *)self itemForLayoutRole:4];
    configuration2 = [(SBAppLayout *)self configuration];
    LOBYTE(v14) = [(SBAppLayout *)self isHidden];
    v9 = [(SBAppLayout *)v10 initWithItems:allItems centerItem:v6 floatingItem:0 configuration:configuration2 centerConfiguration:0 environment:1 hidden:v14 preferredDisplayOrdinal:[(SBAppLayout *)self preferredDisplayOrdinal]];
    goto LABEL_5;
  }

  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (id)appLayoutByAdjustingCenterWindowItemsForFlexibleWindowing
{
  v3 = [(SBAppLayout *)self itemForLayoutRole:4];

  if (v3)
  {
    configuration = [(SBAppLayout *)self configuration];
    if (configuration == 1)
    {
      v5 = 3;
    }

    else
    {
      v5 = configuration;
    }

    v6 = [SBAppLayout alloc];
    allItems = [(SBAppLayout *)self allItems];
    v8 = [(SBAppLayout *)self itemForLayoutRole:3];
    environment = [(SBAppLayout *)self environment];
    LOBYTE(v16) = [(SBAppLayout *)self isHidden];
    selfCopy = [(SBAppLayout *)v6 initWithItems:allItems centerItem:0 floatingItem:v8 configuration:v5 centerConfiguration:0 environment:environment hidden:v16 preferredDisplayOrdinal:[(SBAppLayout *)self preferredDisplayOrdinal]];
  }

  else if ([(SBAppLayout *)self environment]== 3)
  {
    v11 = [SBAppLayout alloc];
    allItems2 = [(SBAppLayout *)self allItems];
    v13 = [(SBAppLayout *)self itemForLayoutRole:3];
    configuration2 = [(SBAppLayout *)self configuration];
    LOBYTE(v16) = [(SBAppLayout *)self isHidden];
    selfCopy = [(SBAppLayout *)v11 initWithItems:allItems2 centerItem:0 floatingItem:v13 configuration:configuration2 centerConfiguration:0 environment:1 hidden:v16 preferredDisplayOrdinal:[(SBAppLayout *)self preferredDisplayOrdinal]];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = objc_opt_self();
  v6 = SBSafeCast(v5, compareCopy);

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

- (BOOL)hasSameItemsInLayoutRoles:(id)roles asAppLayout:(id)layout
{
  rolesCopy = roles;
  layoutCopy = layout;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__SBAppLayout_hasSameItemsInLayoutRoles_asAppLayout___block_invoke;
  v10[3] = &unk_2783BA900;
  v10[4] = self;
  v8 = layoutCopy;
  v11 = v8;
  v12 = &v13;
  [rolesCopy enumerateRolesUsingBlock:v10];
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

- (SBAppLayout)appLayoutWithItemsPassingTest:(id)test
{
  testCopy = test;
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
  v5 = testCopy;
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
        selfCopy = [v15 initWithItems:v27[5] centerItem:centerItem floatingItem:floatingItem configuration:configuration centerConfiguration:v14 environment:environment hidden:v19 preferredDisplayOrdinal:{self->_preferredDisplayOrdinal, v20, v21, v22, v23}];
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

  selfCopy = self;
LABEL_32:
  v8 = selfCopy;
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
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v6 = self->_cached_uniqueIdentifier;
    self->_cached_uniqueIdentifier = uUIDString;

    cached_uniqueIdentifier = self->_cached_uniqueIdentifier;
  }

  return cached_uniqueIdentifier;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBAppLayout *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBAppLayout *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__SBAppLayout_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2783A92D8;
  v10[4] = self;
  v6 = succinctDescriptionBuilder;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

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

- (SBAppLayout)initWithPlistRepresentation:(id)representation layoutAttributesProvider:(id)provider
{
  v91 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  providerCopy = provider;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = objc_opt_class();
  v10 = representationCopy;
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

    integerValue = [v25 integerValue];
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
      integerValue2 = [v18 integerValue];
    }

    else
    {
      integerValue2 = 0;
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
      integerValue3 = [v34 integerValue];
    }

    else
    {
      integerValue3 = 1;
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

    bOOLValue = [v39 BOOLValue];
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

    integerValue4 = [v44 integerValue];
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
    integerValue4 = 0;
    bOOLValue = 0;
    integerValue2 = 0;
    integerValue = 0;
    integerValue3 = 1;
  }

  v83 = v8;
  v80 = v10;
  v81 = providerCopy;

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
    selfCopy2 = self;
    if ((v84 & 1) == 0)
    {
      v68 = [(SBAppLayout *)self initWithItemsForLayoutRoles:v7 configuration:integerValue centerConfiguration:integerValue2 environment:integerValue3 hidden:bOOLValue preferredDisplayOrdinal:integerValue4];
      [v81 updateLayoutAttributesMap:v83 forAppLayout:v68 displayOrdinal:-[SBAppLayout preferredDisplayOrdinal](v68 orientation:{"preferredDisplayOrdinal"), 0}];
      selfCopy2 = v68;
    }
  }

  else
  {
    v70 = v80;
    v69 = v81;
    v71 = v83;
    selfCopy2 = self;
  }

  return v68;
}

- (id)plistRepresentationWithLayoutAttributesMap:(id)map
{
  mapCopy = map;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __65__SBAppLayout_Plist__plistRepresentationWithLayoutAttributesMap___block_invoke;
  v18 = &unk_2783A8FF8;
  v19 = mapCopy;
  v20 = v5;
  v6 = v5;
  v7 = mapCopy;
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

+ (SBAppLayout)appLayoutWithProtobufRepresentation:(id)representation layoutAttributesProvider:(id)provider
{
  representationCopy = representation;
  providerCopy = provider;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8 = objc_opt_new();
  v59 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [(SBPBAppLayout *)representationCopy layoutConfiguration]- 1;
  if (v9 < 4)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  displayItems = [(SBPBAppLayout *)representationCopy displayItems];
  v60 = displayItems;
  if (![displayItems count])
  {
    primaryDisplayItem = [(SBPBAppLayout *)representationCopy primaryDisplayItem];
    v15 = [SBDisplayItem displayItemWithProtobufRepresentation:primaryDisplayItem];

    if (!v15)
    {
      v13 = 0;
      goto LABEL_69;
    }

    v58 = v8;
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    [dictionary setObject:v15 forKey:v16];

    v57 = v15;
    if ([(SBPBAppLayout *)representationCopy hasPrimaryLayoutAttributes])
    {
      primaryLayoutAttributes = [(SBPBAppLayout *)representationCopy primaryLayoutAttributes];
      v18 = [SBDisplayItemLayoutAttributes layoutAttributesWithProtobufRepresentation:primaryLayoutAttributes];
      [v8 setObject:v18 forKey:v15];
    }

    else
    {
      primaryLayoutAttributes = objc_alloc_init(SBDisplayItemLayoutAttributes);
      [v8 setObject:primaryLayoutAttributes forKey:v15];
    }

    if ([(SBPBAppLayout *)representationCopy hasSecondaryDisplayItem])
    {
      secondaryDisplayItem = [(SBPBAppLayout *)representationCopy secondaryDisplayItem];
      v35 = [SBDisplayItem displayItemWithProtobufRepresentation:secondaryDisplayItem];

      if (v35)
      {
        v36 = [(SBPBAppLayout *)representationCopy secondaryDisplayItemRole]- 1;
        if (v36 > 3)
        {
          v37 = &SBLayoutRoleUndefined;
        }

        else
        {
          v37 = off_2783BA9D0[v36];
        }

        v38 = [MEMORY[0x277CCABB0] numberWithInteger:*v37];
        [dictionary setObject:v35 forKey:v38];
      }

      if ([(SBPBAppLayout *)representationCopy hasSecondaryLayoutAttributes])
      {
        secondaryLayoutAttributes = [(SBPBAppLayout *)representationCopy secondaryLayoutAttributes];
        v40 = [SBDisplayItemLayoutAttributes layoutAttributesWithProtobufRepresentation:secondaryLayoutAttributes];
        [v8 setObject:v40 forKey:v35];
      }

      else
      {
        secondaryLayoutAttributes = objc_alloc_init(SBDisplayItemLayoutAttributes);
        [v8 setObject:secondaryLayoutAttributes forKey:v35];
      }
    }

    if (![(SBPBAppLayout *)representationCopy hasCenterDisplayItem])
    {
      goto LABEL_62;
    }

    v56 = dictionary;
    centerDisplayItem = [(SBPBAppLayout *)representationCopy centerDisplayItem];
    displayItemLayoutAttributes = [SBDisplayItem displayItemWithProtobufRepresentation:centerDisplayItem];

    if (displayItemLayoutAttributes)
    {
      v42 = [(SBPBAppLayout *)representationCopy centerDisplayItemRole]- 1;
      if (v42 > 3)
      {
        v43 = &SBLayoutRoleUndefined;
      }

      else
      {
        v43 = off_2783BA9D0[v42];
      }

      v44 = [MEMORY[0x277CCABB0] numberWithInteger:*v43];
      [v56 setObject:displayItemLayoutAttributes forKey:v44];
    }

    v55 = representationCopy;
    if ([(SBPBAppLayout *)representationCopy hasCenterLayoutAttributes])
    {
      centerLayoutAttributes = [(SBPBAppLayout *)representationCopy centerLayoutAttributes];
      v45 = [SBDisplayItemLayoutAttributes layoutAttributesWithProtobufRepresentation:centerLayoutAttributes];
      [v58 setObject:v45 forKey:displayItemLayoutAttributes];
    }

    else
    {
      centerLayoutAttributes = objc_alloc_init(SBDisplayItemLayoutAttributes);
      [v58 setObject:centerLayoutAttributes forKey:displayItemLayoutAttributes];
    }

LABEL_61:

    representationCopy = v55;
    dictionary = v56;
LABEL_62:

    v46 = [(SBPBAppLayout *)representationCopy environment]- 1;
    v8 = v58;
    if (v46 > 2)
    {
      v47 = 1;
    }

    else
    {
      v47 = qword_21F8A7400[v46];
    }

    centerConfiguration = [(SBPBAppLayout *)representationCopy centerConfiguration];
    if (centerConfiguration == 2)
    {
      v49 = 2;
    }

    else
    {
      v49 = centerConfiguration == 1;
    }

    hidden = [(SBPBAppLayout *)representationCopy hidden];
    v13 = [[SBAppLayout alloc] initWithItemsForLayoutRoles:dictionary configuration:v10 centerConfiguration:v49 environment:v47 hidden:hidden preferredDisplayOrdinal:[(SBPBAppLayout *)representationCopy preferredDisplayOrdinal]];
    [providerCopy updateLayoutAttributesMap:v58 forAppLayout:v13 displayOrdinal:-[SBAppLayout preferredDisplayOrdinal](v13 orientation:{"preferredDisplayOrdinal"), 0}];
    layoutAttributesEntries = [(SBPBAppLayout *)representationCopy layoutAttributesEntries];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __86__SBAppLayout_Protobuf__appLayoutWithProtobufRepresentation_layoutAttributesProvider___block_invoke;
    v61[3] = &unk_2783BA950;
    v62 = providerCopy;
    [layoutAttributesEntries bs_each:v61];

    goto LABEL_69;
  }

  centerDisplayItem2 = [(SBPBAppLayout *)representationCopy centerDisplayItem];
  if (centerDisplayItem2)
  {
    v57 = [SBDisplayItem displayItemWithProtobufRepresentation:centerDisplayItem2];
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
  v56 = dictionary;

  displayItemLayoutAttributes = [(SBPBAppLayout *)representationCopy displayItemLayoutAttributes];
  v55 = representationCopy;
  centerLayoutAttributes = [(SBPBAppLayout *)representationCopy displayItemLayoutAttributesForNonPreferredDisplays];
  if (![displayItems count])
  {
    goto LABEL_61;
  }

  v53 = v10;
  v54 = providerCopy;
  v21 = 0;
  v22 = 0;
  v23 = v57;
  while (1)
  {
    v24 = [displayItems objectAtIndex:{v22, v53}];
    v25 = [SBDisplayItem displayItemWithProtobufRepresentation:v24];
    if (!v25)
    {
      break;
    }

    v26 = v25;
    if (v22 >= [displayItemLayoutAttributes count] || (objc_msgSend(displayItemLayoutAttributes, "objectAtIndex:", v22), (v27 = objc_claimAutoreleasedReturnValue()) == 0))
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
      if (v22 < [(SBDisplayItemLayoutAttributes *)centerLayoutAttributes count])
      {
        v32 = [(SBDisplayItemLayoutAttributes *)centerLayoutAttributes objectAtIndex:v22];
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
    displayItems = v60;
    if (v22 >= [v60 count])
    {
      v10 = v53;
      providerCopy = v54;
      goto LABEL_61;
    }
  }

LABEL_44:
  v13 = 0;
  representationCopy = v55;
  providerCopy = v54;
  dictionary = v56;
  v8 = v58;
LABEL_69:
  displayItems = v60;
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

- (id)protobufRepresentationWithLayoutAttributesMap:(id)map layoutAttributesEntries:(id)entries
{
  mapCopy = map;
  entriesCopy = entries;
  v8 = objc_alloc_init(SBPBAppLayout);
  configuration = [(SBAppLayout *)self configuration];
  if ((configuration - 1) < 4)
  {
    v10 = configuration;
  }

  else
  {
    v10 = 0;
  }

  [(SBPBAppLayout *)v8 setLayoutConfiguration:v10];
  environment = [(SBAppLayout *)self environment];
  if (environment == 3)
  {
    v12 = 3;
  }

  else
  {
    v12 = environment == 2;
  }

  [(SBPBAppLayout *)v8 setEnvironment:v12];
  centerConfiguration = [(SBAppLayout *)self centerConfiguration];
  if (centerConfiguration == 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = centerConfiguration == 1;
  }

  [(SBPBAppLayout *)v8 setCenterConfiguration:v14];
  v15 = [(SBAppLayout *)self itemForLayoutRole:1];
  protobufRepresentation = [v15 protobufRepresentation];
  [(SBPBAppLayout *)v8 setPrimaryDisplayItem:protobufRepresentation];

  [(SBPBAppLayout *)v8 setHidden:?];
  [(SBPBAppLayout *)v8 setPreferredDisplayOrdinal:?];
  v17 = [(SBAppLayout *)self itemForLayoutRole:2];
  v18 = v17;
  if (v17)
  {
    protobufRepresentation2 = [v17 protobufRepresentation];
    [(SBPBAppLayout *)v8 setSecondaryDisplayItem:protobufRepresentation2];

    [(SBPBAppLayout *)v8 setSecondaryDisplayItemRole:?];
  }

  v20 = [(SBAppLayout *)self itemForLayoutRole:4];
  v21 = v20;
  if (v20)
  {
    protobufRepresentation3 = [v20 protobufRepresentation];
    [(SBPBAppLayout *)v8 setCenterDisplayItem:protobufRepresentation3];

    [(SBPBAppLayout *)v8 setCenterDisplayItemRole:?];
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __95__SBAppLayout_Protobuf__protobufRepresentationWithLayoutAttributesMap_layoutAttributesEntries___block_invoke;
  v33[3] = &unk_2783A8FF8;
  v23 = v8;
  v34 = v23;
  v35 = mapCopy;
  v24 = mapCopy;
  [(SBAppLayout *)self enumerate:v33];
  array = [MEMORY[0x277CBEB18] array];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __95__SBAppLayout_Protobuf__protobufRepresentationWithLayoutAttributesMap_layoutAttributesEntries___block_invoke_2;
  v31[3] = &unk_2783BA978;
  v32 = array;
  v26 = array;
  [entriesCopy bs_each:v31];

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

  configuration = [(SBAppLayout *)self configuration];
  v9 = 4;
  if (configuration != 2)
  {
    v9 = configuration;
  }

  if (configuration == 4)
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

- (void)setItems:(void *)items
{
  if (items)
  {
    objc_setProperty_nonatomic_copy(items, newValue, newValue, 112);
  }
}

- (void)setItemsWithoutCenterOrFloatingItems:(void *)items
{
  if (items)
  {
    objc_setProperty_nonatomic_copy(items, newValue, newValue, 120);
  }
}

- (uint64_t)isFlexibleWindowingEnabled
{
  if (self)
  {
    v1 = *(self + 33);
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
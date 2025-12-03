@interface SBSwitcherDropRegionContext
- (BOOL)isSwap;
- (CGRect)originRect;
- (CGRect)targetRect;
- (CGSize)scaledIntersectingAppLayoutSize;
- (CGSize)unscaledIntersectingAppLayoutSize;
- (SBSwitcherDropRegionContext)initWithDraggingLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)displayItemsToReloadSnapshots;
- (id)droppedLeafAppLayout;
- (id)finalTargetAppLayout;
- (id)succinctDescription;
- (int64_t)effectiveDroppingAppLayoutConfiguration;
- (unint64_t)currentDropAction;
- (void)finalTargetAppLayout;
@end

@implementation SBSwitcherDropRegionContext

- (SBSwitcherDropRegionContext)initWithDraggingLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v11.receiver = self;
  v11.super_class = SBSwitcherDropRegionContext;
  v8 = [(SBSwitcherDropRegionContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_draggingLayoutRole = role;
    objc_storeStrong(&v8->_draggingAppLayout, layout);
    v9->_currentDropRegion = 0;
    v9->_scaledIntersectingAppLayoutSize = SBInvalidSize;
    v9->_unscaledIntersectingAppLayoutSize = SBInvalidSize;
    v9->_intersectingLayoutRole = 0;
    v9->_intersectingAppLayoutConfiguration = 0;
  }

  return v9;
}

- (unint64_t)currentDropAction
{
  environment = [(SBAppLayout *)self->_draggingAppLayout environment];
  currentDropRegion = self->_currentDropRegion;
  if (environment != 2)
  {
    if (currentDropRegion == 6)
    {
      return 1;
    }

    if ([(SBSwitcherDropRegionContext *)self isSwap])
    {
      return 4;
    }

    v6 = self->_currentDropRegion;
    if (v6 == 3)
    {
      return 5;
    }

    if (v6 != 1)
    {
      if ([(SBAppLayout *)self->_draggingAppLayout isSplitConfiguration]&& ![(SBAppLayout *)self->_intersectingAppLayout isSplitConfiguration])
      {
        return 8;
      }

      if ([(SBAppLayout *)self->_draggingAppLayout isSplitConfiguration]&& [(SBAppLayout *)self->_intersectingAppLayout isSplitConfiguration])
      {
        return 9;
      }

      if (![(SBAppLayout *)self->_draggingAppLayout isSplitConfiguration]&& [(SBAppLayout *)self->_intersectingAppLayout isSplitConfiguration])
      {
        return 7;
      }

      if (![(SBAppLayout *)self->_draggingAppLayout isSplitConfiguration]&& ![(SBAppLayout *)self->_intersectingAppLayout isSplitConfiguration])
      {
        return 6;
      }
    }

    return 0;
  }

  if (currentDropRegion == 3)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)finalTargetAppLayout
{
  v47[1] = *MEMORY[0x277D85DE8];
  v4 = [(SBAppLayout *)self->_draggingAppLayout itemForLayoutRole:self->_draggingLayoutRole];
  v5 = [(SBAppLayout *)self->_intersectingAppLayout itemForLayoutRole:1];
  v6 = [(SBAppLayout *)self->_intersectingAppLayout itemForLayoutRole:2];
  currentDropRegion = self->_currentDropRegion;
  currentDropAction = [(SBSwitcherDropRegionContext *)self currentDropAction];
  v9 = self->_currentDropRegion;
  switch(v9)
  {
    case 6uLL:
      v12 = [SBAppLayout alloc];
      flippedAppLayout = [MEMORY[0x277CCABB0] numberWithInteger:1];
      v46 = flippedAppLayout;
      v47[0] = v4;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
      v11 = [(SBAppLayout *)v12 initWithItemsForLayoutRoles:v14 configuration:1 environment:2 preferredDisplayOrdinal:[(SBAppLayout *)self->_intersectingAppLayout preferredDisplayOrdinal]];

LABEL_16:
      goto LABEL_34;
    case 3uLL:
      if (currentDropAction == 3)
      {
        v30 = [MEMORY[0x277CCABB0] numberWithInteger:1];
        v44 = v30;
        v45 = v4;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];

        v11 = [[SBAppLayout alloc] initWithItemsForLayoutRoles:v31 configuration:1 environment:1 preferredDisplayOrdinal:[(SBAppLayout *)self->_draggingAppLayout preferredDisplayOrdinal]];
        goto LABEL_34;
      }

      if (currentDropAction == 5)
      {
        if (![(SBAppLayout *)self->_draggingAppLayout isSplitConfiguration])
        {
          [(SBSwitcherDropRegionContext *)a2 finalTargetAppLayout];
        }

        if ([(SBAppLayout *)self->_evictedAppLayout isSplitConfiguration])
        {
          [(SBSwitcherDropRegionContext *)a2 finalTargetAppLayout];
        }

        evictedAppLayout = self->_evictedAppLayout;
        goto LABEL_12;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBSwitcherDropRegionContext.m" lineNumber:104 description:@"Invalid drop region"];

      break;
    case 1uLL:
      evictedAppLayout = self->_draggingAppLayout;
LABEL_12:
      v11 = evictedAppLayout;
      goto LABEL_34;
    default:
      if ([(SBSwitcherDropRegionContext *)self isSwap])
      {
        flippedAppLayout = [(SBAppLayout *)self->_draggingAppLayout flippedAppLayout];
        v11 = [flippedAppLayout appLayoutByModifyingConfiguration:{-[SBSwitcherDropRegionContext effectiveDroppingAppLayoutConfiguration](self, "effectiveDroppingAppLayoutConfiguration")}];
        goto LABEL_16;
      }

      if ((currentDropRegion & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        isSplitConfiguration = [(SBAppLayout *)self->_intersectingAppLayout isSplitConfiguration];
        if (currentDropRegion == 4)
        {
          v16 = v4;
        }

        else
        {
          v16 = v5;
        }

        v17 = MEMORY[0x277CCABB0];
        if (isSplitConfiguration)
        {
          if (currentDropRegion == 4)
          {
            v18 = v6;
          }

          else
          {
            v18 = v4;
          }

          v19 = v18;
          v20 = v16;
          v21 = [v17 numberWithInteger:1];
          v42[0] = v21;
          v43[0] = v20;
          v22 = [MEMORY[0x277CCABB0] numberWithInteger:2];
          v42[1] = v22;
          v43[1] = v19;
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];

          v24 = [SBAppLayout alloc];
          intersectingAppLayoutConfiguration = self->_intersectingAppLayoutConfiguration;
          preferredDisplayOrdinal = [(SBAppLayout *)self->_intersectingAppLayout preferredDisplayOrdinal];

          v27 = v24;
          v28 = v23;
          v29 = intersectingAppLayoutConfiguration;
        }

        else
        {
          if (currentDropRegion == 4)
          {
            v33 = v5;
          }

          else
          {
            v33 = v4;
          }

          v34 = v33;
          v35 = v16;
          v36 = [v17 numberWithInteger:1];
          v40[0] = v36;
          v41[0] = v35;
          v37 = [MEMORY[0x277CCABB0] numberWithInteger:2];
          v40[1] = v37;
          v41[1] = v34;
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];

          v38 = [SBAppLayout alloc];
          preferredDisplayOrdinal = [(SBAppLayout *)self->_intersectingAppLayout preferredDisplayOrdinal];

          v27 = v38;
          v28 = v23;
          v29 = 3;
        }

        v11 = [(SBAppLayout *)v27 initWithItemsForLayoutRoles:v28 configuration:v29 environment:1 preferredDisplayOrdinal:preferredDisplayOrdinal];

        goto LABEL_34;
      }

      break;
  }

  v11 = 0;
LABEL_34:

  return v11;
}

- (BOOL)isSwap
{
  if (![(SBAppLayout *)self->_draggingAppLayout isSplitConfiguration])
  {
    return 0;
  }

  if (self->_draggingLayoutRole == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [(SBAppLayout *)self->_draggingAppLayout leafAppLayoutForRole:v3];
  v5 = [(SBAppLayout *)self->_intersectingAppLayout leafAppLayoutForRole:self->_intersectingLayoutRole];
  v6 = v4 == v5;

  return v6;
}

- (id)droppedLeafAppLayout
{
  draggingLeafAppLayout = [(SBSwitcherDropRegionContext *)self draggingLeafAppLayout];
  v4 = [draggingLeafAppLayout itemForLayoutRole:1];

  finalTargetAppLayout = [(SBSwitcherDropRegionContext *)self finalTargetAppLayout];
  v6 = [finalTargetAppLayout leafAppLayoutForItem:v4];

  return v6;
}

- (id)displayItemsToReloadSnapshots
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  finalTargetAppLayout = [(SBSwitcherDropRegionContext *)self finalTargetAppLayout];
  allItems = [finalTargetAppLayout allItems];
  [v3 addObjectsFromArray:allItems];

  remainingAppLayout = self->_remainingAppLayout;
  if (remainingAppLayout)
  {
    allItems2 = [(SBAppLayout *)remainingAppLayout allItems];
    [v3 addObjectsFromArray:allItems2];
  }

  evictedAppLayout = self->_evictedAppLayout;
  if (evictedAppLayout)
  {
    allItems3 = [(SBAppLayout *)evictedAppLayout allItems];
    [v3 addObjectsFromArray:allItems3];
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

- (int64_t)effectiveDroppingAppLayoutConfiguration
{
  intersectingAppLayoutConfiguration = self->_intersectingAppLayoutConfiguration;
  isSwap = [(SBSwitcherDropRegionContext *)self isSwap];
  v4 = 2;
  v5 = 4;
  if (intersectingAppLayoutConfiguration != 2)
  {
    v5 = intersectingAppLayoutConfiguration;
  }

  if (intersectingAppLayoutConfiguration != 4)
  {
    v4 = v5;
  }

  if (isSwap)
  {
    return v4;
  }

  else
  {
    return intersectingAppLayoutConfiguration;
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSwitcherDropRegionContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSwitcherDropRegionContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBSwitcherDropRegionContext *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__SBSwitcherDropRegionContext_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __69__SBSwitcherDropRegionContext_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = SBSwitcherDropRegionDescription(*(*(a1 + 40) + 16));
  [v2 appendString:v3 withName:@"currentDropRegion"];

  v4 = *(a1 + 32);
  v5 = SBSwitcherDropActionDescription([*(a1 + 40) currentDropAction]);
  [v4 appendString:v5 withName:@"currentDropAction"];

  v6 = *(a1 + 32);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __69__SBSwitcherDropRegionContext_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v21[3] = &unk_2783A92D8;
  v7 = v6;
  v8 = *(a1 + 40);
  v22 = v7;
  v23 = v8;
  [v7 appendBodySectionWithName:0 multilinePrefix:0 block:v21];
  v9 = *(a1 + 32);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__SBSwitcherDropRegionContext_descriptionBuilderWithMultilinePrefix___block_invoke_3;
  v18[3] = &unk_2783A92D8;
  v10 = v9;
  v11 = *(a1 + 40);
  v19 = v10;
  v20 = v11;
  [v10 appendBodySectionWithName:0 multilinePrefix:0 block:v18];
  v12 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__SBSwitcherDropRegionContext_descriptionBuilderWithMultilinePrefix___block_invoke_4;
  v15[3] = &unk_2783A92D8;
  v13 = v12;
  v14 = *(a1 + 40);
  v16 = v13;
  v17 = v14;
  [v13 appendBodySectionWithName:0 multilinePrefix:0 block:v15];
}

id __69__SBSwitcherDropRegionContext_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = SBLayoutRoleDescription(*(*(a1 + 40) + 32));
  [v2 appendString:v3 withName:@"draggingLayoutRole"];

  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"draggingAppLayout"];
}

id __69__SBSwitcherDropRegionContext_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = SBLayoutRoleDescription(*(*(a1 + 40) + 48));
  [v2 appendString:v3 withName:@"intersectingLayoutRole"];

  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"intersectingAppLayout"];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"intersectingAppLayoutIsOnFirstRow"];
}

- (CGSize)scaledIntersectingAppLayoutSize
{
  width = self->_scaledIntersectingAppLayoutSize.width;
  height = self->_scaledIntersectingAppLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)unscaledIntersectingAppLayoutSize
{
  width = self->_unscaledIntersectingAppLayoutSize.width;
  height = self->_unscaledIntersectingAppLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)originRect
{
  x = self->_originRect.origin.x;
  y = self->_originRect.origin.y;
  width = self->_originRect.size.width;
  height = self->_originRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)targetRect
{
  x = self->_targetRect.origin.x;
  y = self->_targetRect.origin.y;
  width = self->_targetRect.size.width;
  height = self->_targetRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)finalTargetAppLayout
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBSwitcherDropRegionContext.m" lineNumber:92 description:{@"Unsplit should result in a new full app layout, not a split one"}];
}

@end
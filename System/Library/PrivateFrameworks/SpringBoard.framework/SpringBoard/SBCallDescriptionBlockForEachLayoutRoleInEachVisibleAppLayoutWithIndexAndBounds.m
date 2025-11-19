@interface SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayoutWithIndexAndBounds
@end

@implementation SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayoutWithIndexAndBounds

void ___SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayoutWithIndexAndBounds_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) containsObject:v5])
  {
    [*(a1 + 40) frameForIndex:a3];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayoutWithIndexAndBounds_block_invoke_2;
    v16[3] = &unk_2783C2D68;
    v17 = v5;
    v18 = *(a1 + 48);
    v19 = *(a1 + 40);
    v22 = a3;
    v23 = v7;
    v24 = v9;
    v25 = v11;
    v26 = v13;
    v15 = *(a1 + 64);
    v14 = v15;
    v21 = v15;
    v20 = *(a1 + 56);
    SBLayoutRoleEnumerateValidRoles(v16);
  }
}

void ___SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayoutWithIndexAndBounds_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v3 = a1 + 32;
  v4 = [*(a1 + 32) itemForLayoutRole:a2];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:*(a1 + 40)];
    [v5 setTarget:*(a1 + 48)];
    [v5 setSelector:*(a1 + 72)];
    [v5 setArgument:&v15 atIndex:2];
    [v5 setArgument:v3 atIndex:3];
    [v5 setArgument:a1 + 80 atIndex:4];
    [v5 setArgument:a1 + 88 atIndex:5];
    [v5 invoke];
    v6 = (*(*(a1 + 64) + 16))();
    v7 = [v6 sb_switcherModifierDebugTimelineDescription];

    v8 = *(a1 + 56);
    v9 = MEMORY[0x277CCACA8];
    v10 = *(a1 + 80);
    v11 = [*(a1 + 32) succinctDescription];
    v12 = SBLayoutRoleDescription(v15);
    v13 = NSStringFromCGRect(*(a1 + 88));
    v14 = [v9 stringWithFormat:@"%lu %@, role: %@, bounds: %@ --> %@", v10, v11, v12, v13, v7];
    [v8 addObject:v14];
  }
}

@end
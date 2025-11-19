@interface SBCallDescriptionBlockForEachVisibleAppLayoutByIndexWithBounds
@end

@implementation SBCallDescriptionBlockForEachVisibleAppLayoutByIndexWithBounds

void ___SBCallDescriptionBlockForEachVisibleAppLayoutByIndexWithBounds_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v20 = a3;
  if ([*(a1 + 32) containsObject:v5])
  {
    [*(a1 + 40) frameForIndex:a3];
    v19.origin.x = v6;
    v19.origin.y = v7;
    v19.size.width = v8;
    v19.size.height = v9;
    v10 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:*(a1 + 48)];
    [v10 setTarget:*(a1 + 40)];
    [v10 setSelector:*(a1 + 72)];
    [v10 setArgument:&v20 atIndex:2];
    [v10 setArgument:&v19 atIndex:3];
    [v10 invoke];
    v11 = (*(*(a1 + 64) + 16))();
    v12 = [v11 sb_switcherModifierDebugTimelineDescription];

    v13 = *(a1 + 56);
    v14 = MEMORY[0x277CCACA8];
    v15 = v20;
    v16 = [v5 succinctDescription];
    v17 = NSStringFromCGRect(v19);
    v18 = [v14 stringWithFormat:@"%lu %@, bounds: %@ --> %@", v15, v16, v17, v12];
    [v13 addObject:v18];
  }
}

@end
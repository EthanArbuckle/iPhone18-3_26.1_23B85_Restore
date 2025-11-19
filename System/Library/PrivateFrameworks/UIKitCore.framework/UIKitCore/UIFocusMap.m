@interface UIFocusMap
@end

@implementation UIFocusMap

void __54___UIFocusMap__inferredDefaultFocusItemInEnvironment___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a1[4];
  v6 = a2;
  [v5 addObject:v6];
  v7 = a1[5];

  if (v7 == v6)
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a3 = 1;
  }
}

uint64_t __103___UIFocusMap__nextFocusedItemForLinearFocusMovementRequest_startingFromRegion_inRegions_withSnapshot___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 searchInfo];
  IsFocusableInFocusSystemWithSearchInfo = _UIFocusItemIsFocusableInFocusSystemWithSearchInfo(v4, v2, v5);

  return IsFocusableInFocusSystemWithSearchInfo;
}

id __103___UIFocusMap__nextFocusedItemForLinearFocusMovementRequest_startingFromRegion_inRegions_withSnapshot___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696B098];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 coordinateSpace];
  [v4 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v4 parentFocusEnvironment];

  v15 = [v14 focusItemContainer];
  v16 = [v15 coordinateSpace];
  [v5 convertRect:v16 fromCoordinateSpace:{v7, v9, v11, v13}];
  v17 = [v2 valueWithCGRect:?];

  return v17;
}

void __103___UIFocusMap__nextFocusedItemForLinearFocusMovementRequest_startingFromRegion_inRegions_withSnapshot___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  [v7 CGRectValue];
  v8 = NSStringFromCGRect(v15);
  v13 = v5;
  if (v13)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"<%@: %p>", v11, v13];
  }

  else
  {
    v12 = @"(nil)";
  }

  [v6 appendFormat:@"\n%@: %@", v8, v12];
}

uint64_t __76___UIFocusMap__linearlySortedFocusItemsForItems_groupFilter_itemStandInMap___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 48) focusGroupForItem:a2];
  v4 = [v3 isEqualToFocusGroup:*(a1 + 40)];

  return v4;
}

@end
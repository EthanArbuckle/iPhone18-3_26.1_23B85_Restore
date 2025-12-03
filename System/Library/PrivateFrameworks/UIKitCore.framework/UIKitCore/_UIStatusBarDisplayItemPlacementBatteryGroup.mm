@interface _UIStatusBarDisplayItemPlacementBatteryGroup
+ (id)groupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority;
@end

@implementation _UIStatusBarDisplayItemPlacementBatteryGroup

+ (id)groupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority
{
  v18[3] = *MEMORY[0x1E69E9840];
  v6 = priority - lowPriority;
  if (priority <= lowPriority)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItemPlacementBatteryGroup.m" lineNumber:16 description:@"The lowPriority should be smaller than the highPriority"];
  }

  v7 = +[_UIStatusBarBatteryItem staticIconDisplayIdentifier];
  v8 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v7 priority:v6 + 2];

  v9 = +[_UIStatusBarBatteryItem percentDisplayIdentifier];
  v10 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v9 priority:1];

  v11 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorLiquidDetectionItem];
  v12 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v11 priority:v6 + 1];

  v18[0] = v12;
  v18[1] = v10;
  v18[2] = v8;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v14 = [self groupWithPriority:lowPriority placements:v13];

  return v14;
}

@end
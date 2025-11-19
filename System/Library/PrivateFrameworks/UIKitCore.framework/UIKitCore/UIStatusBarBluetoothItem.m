@interface UIStatusBarBluetoothItem
@end

@implementation UIStatusBarBluetoothItem

uint64_t __67___UIStatusBarBluetoothItem_alwaysShowRegulatoryBluetoothIndicator__block_invoke()
{
  result = MGGetBoolAnswer();
  _MergedGlobals_1276 = result;
  return result;
}

void __55___UIStatusBarBluetoothItem_applyUpdate_toDisplayItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  v6 = a2;
  [v3 drawAtPoint:{v4, v5}];
  v7 = [v6 format];

  [v7 bounds];
  v9 = v8 + 1.0;
  v11 = v10 + -2.0;
  v13 = v12 + 2.0;
  v15 = v14 + -3.0;

  v35.origin.x = v9;
  v35.origin.y = v13;
  v35.size.width = v11;
  v35.size.height = v15;
  Height = CGRectGetHeight(v35);
  v17 = Height * [*(a1 + 40) capacity] / 100.0;
  v36.origin.x = v9;
  v36.origin.y = v13;
  v36.size.width = v11;
  v36.size.height = v15;
  v18 = v13 + CGRectGetHeight(v36) - v17;
  v19 = [*(a1 + 48) styleAttributes];
  v20 = [v19 traitCollection];
  [v20 displayScale];
  v22 = UIRectIntegralWithScale(v9, v18, v11, v17, v21);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = *(a1 + 56);
  v30 = *(a1 + 40);
  v31 = [*(a1 + 48) styleAttributes];
  v32 = [v31 imageTintColor];
  v33 = [v29 _batteryFillColorForEntry:v30 usingTintColor:v32];

  [v33 setFill];
  UIRectFillUsingOperation(1, v22, v24, v26, v28);
}

@end
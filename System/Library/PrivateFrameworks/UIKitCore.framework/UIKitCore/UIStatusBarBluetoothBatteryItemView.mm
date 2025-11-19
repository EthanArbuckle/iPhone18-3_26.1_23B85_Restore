@interface UIStatusBarBluetoothBatteryItemView
- (BOOL)updateForNewData:(id)a3 actions:(int)a4;
- (UIEdgeInsets)_accessibilityHUDBatteryInsidesInsets;
- (double)extraLeftPadding;
- (id)accessibilityHUDRepresentation;
- (id)contentsImage;
@end

@implementation UIStatusBarBluetoothBatteryItemView

- (BOOL)updateForNewData:(id)a3 actions:(int)a4
{
  v5 = *([a3 rawData] + 2264);
  if (v5 > 100.0)
  {
    v5 = 100.0;
  }

  v6 = fmax(v5, 0.0);
  capacity = self->_capacity;
  if (capacity != v6)
  {
    self->_capacity = v6;
  }

  return capacity != v6;
}

- (id)contentsImage
{
  v3 = [(UIStatusBarItemView *)self imageWithShadowNamed:@"HeadsetBatteryBG"];
  [(UIStatusBarBluetoothBatteryItemView *)self _normalizedCapacity];
  v5 = v4;
  v6 = [(UIStatusBarItemView *)self foregroundStyle];
  v7 = [v6 bluetoothBatteryImageNameWithCapacity:v5];

  v8 = [(UIStatusBarItemView *)self foregroundStyle];
  v9 = [v8 cachedImageNamed:v7 inTempGroup:@"TempGroupBTBattery"];

  if (!v9)
  {
    v10 = [v3 image];
    [v10 size];
    v12 = v11;
    v14 = v13;
    v15 = [(UIStatusBarItemView *)self foregroundStyle];
    if ([v15 usesVerticalLayout])
    {
      v16 = v14;
    }

    else
    {
      v16 = v12;
    }

    [(UIStatusBarItemView *)self beginImageContextWithMinimumWidth:v16];
    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    CGContextSaveGState(v18);
    v19 = [(UIStatusBarItemView *)self foregroundStyle];
    [v19 scale];
    v21 = v20;

    v22 = [(UIStatusBarItemView *)self foregroundStyle];
    [v22 height];
    v24 = (v23 - v14) * 0.5;

    CGContextTranslateCTM(v18, 0.0, round(v21 * v24) / v21);
    [v10 drawAtPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    v25 = [(UIStatusBarItemView *)self foregroundStyle];
    [v25 drawBluetoothBatteryInsidesWithSize:v12 capacity:{v14, v5}];

    v9 = [(UIStatusBarItemView *)self imageFromImageContextClippedToWidth:v12];
    CGContextRestoreGState(v18);
    [(UIStatusBarItemView *)self endImageContext];
    v26 = [(UIStatusBarItemView *)self foregroundStyle];
    [v26 cacheImage:v9 named:v7 inTempGroup:@"TempGroupBTBattery"];
  }

  v27 = [v3 shadowImage];
  v28 = [_UILegibilityImageSet imageFromImage:v9 withShadowImage:v27];

  return v28;
}

- (double)extraLeftPadding
{
  v2 = [(UIStatusBarItemView *)self foregroundStyle];
  [v2 bluetoothBatteryExtraPadding];
  v4 = v3;

  return v4;
}

- (UIEdgeInsets)_accessibilityHUDBatteryInsidesInsets
{
  v2 = 2.0;
  v3 = 1.0;
  v4 = 1.0;
  v5 = 1.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)accessibilityHUDRepresentation
{
  if (self->_capacity != self->_accessibilityCachedHUDCapacity || !self->_accessibilityCachedHUDImage)
  {
    [(UIStatusBarBluetoothBatteryItemView *)self _normalizedCapacity];
    v4 = v3;
    v5 = [UIImage kitImageNamed:@"AXHUD_HeadsetBatteryBG.png"];
    v6 = [UIImage kitImageNamed:@"AXHUD_HeadsetBatteryInsides.png"];
    v7 = [(UIStatusBarItemView *)self foregroundStyle];
    v8 = [v7 bluetoothBatteryColorForCapacity:0 usingTintColor:v4];

    v9 = [v6 _flatImageWithColor:v8];

    [v5 size];
    v11 = v10;
    [v5 size];
    v13 = 75.0 / v12;
    v14 = v11 * (75.0 / v12);
    v15 = v12 * (75.0 / v12);
    v16 = [objc_opt_self() mainScreen];
    [v16 scale];
    _UIGraphicsBeginImageContextWithOptions(0, 0, v14, v15, v17);

    v18 = *MEMORY[0x1E695EFF8];
    v19 = *(MEMORY[0x1E695EFF8] + 8);
    [v5 size];
    v21 = v20;
    v23 = v22;
    [v5 drawInRect:{v18, v19, v13 * v20, v13 * v22}];
    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    [(UIStatusBarBluetoothBatteryItemView *)self _accessibilityHUDBatteryInsidesInsets];
    v27 = v18 + v26;
    v29 = v19 + v28;
    v31 = v21 - (v26 + v30);
    v33 = v23 - (v28 + v32);
    v34 = v4 * v33;
    v35 = v29 + v33 - v34;
    v36 = *(MEMORY[0x1E695EFD0] + 16);
    *&v44.a = *MEMORY[0x1E695EFD0];
    *&v44.c = v36;
    *&v44.tx = *(MEMORY[0x1E695EFD0] + 32);
    CGAffineTransformScale(&v45, &v44, v13, v13);
    v47.origin.x = v27;
    v47.origin.y = v35;
    v47.size.width = v31;
    v47.size.height = v34;
    v48 = CGRectApplyAffineTransform(v47, &v45);
    CGContextClipToRect(v25, v48);
    [v9 size];
    v38 = v13 * v37;
    [v9 size];
    [v9 drawInRect:{0.0, 0.0, v38, v13 * v39}];
    v40 = _UIGraphicsGetImageFromCurrentImageContext(0);
    UIGraphicsEndImageContext();
    self->_accessibilityCachedHUDCapacity = self->_capacity;
    accessibilityCachedHUDImage = self->_accessibilityCachedHUDImage;
    self->_accessibilityCachedHUDImage = v40;
  }

  v42 = [[UIAccessibilityHUDItem alloc] initWithTitle:0 image:self->_accessibilityCachedHUDImage imageInsets:0.0, 0.0, 0.0, 0.0];
  [(UIAccessibilityHUDItem *)v42 setFlattenImage:0];

  return v42;
}

@end
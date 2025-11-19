@interface UIStatusBarBatteryItemView
- (BOOL)updateForNewData:(id)a3 actions:(int)a4;
- (CGSize)_batteryOffsetWithBackground:(id)a3;
- (double)extraRightPadding;
- (id)_accessoryImage;
- (id)_contentsImage;
- (id)accessibilityHUDRepresentation;
- (id)contentsImage;
- (void)_updateAccessoryImage;
@end

@implementation UIStatusBarBatteryItemView

- (BOOL)updateForNewData:(id)a3 actions:(int)a4
{
  v5 = [a3 rawData];
  v6 = (ceilf(*(v5 + 2104) / 5.0) * 5.0);
  v7 = *(v5 + 2108);
  v8 = *(v5 + 2536);
  capacity = self->_capacity;
  v10 = capacity != v6;
  if (capacity != v6)
  {
    self->_capacity = v6;
  }

  v11 = v8 & 1;
  if (v7 != self->_state)
  {
    self->_state = v7;
    v10 = 1;
  }

  if (v11 != self->_batterySaverModeActive)
  {
    self->_batterySaverModeActive = v11;
    v10 = 1;
  }

  [(UIStatusBarBatteryItemView *)self _updateAccessoryImage];
  return v10;
}

- (CGSize)_batteryOffsetWithBackground:(id)a3
{
  [a3 size];
  v5 = v4;
  v7 = v6;
  v8 = [(UIStatusBarItemView *)self foregroundStyle];
  v9 = [v8 usesVerticalLayout];

  v10 = [(UIStatusBarItemView *)self foregroundStyle];
  [v10 height];
  v12 = v11;

  if (v9)
  {
    v13 = v12;
  }

  else
  {
    v13 = v5;
  }

  if (v9)
  {
    v14 = v7;
  }

  else
  {
    v14 = v12;
  }

  v15 = (v13 - v5) * 0.5;
  v16 = (v14 - v7) * 0.5;
  result.height = v16;
  result.width = v15;
  return result;
}

- (id)_accessoryImage
{
  v2 = [(UIStatusBarItemView *)self foregroundStyle];
  v3 = [v2 imageNamed:@"BatteryChargingAccessory"];

  return v3;
}

- (id)_contentsImage
{
  v3 = [(UIStatusBarBatteryItemView *)self _needsAccessoryImage];
  v4 = v3;
  if (self->_batterySaverModeActive)
  {
    v5 = v3 | 2;
  }

  else
  {
    v5 = v3;
  }

  v6 = [(UIStatusBarBatteryItemView *)self cachedImageSet];

  if (v6 && (capacity = self->_capacity, capacity == [(UIStatusBarBatteryItemView *)self cachedCapacity]) && v4 == [(UIStatusBarBatteryItemView *)self cachedImageHasAccessoryImage]&& v5 == [(UIStatusBarBatteryItemView *)self cachedBatteryStyle])
  {
    v8 = [(UIStatusBarBatteryItemView *)self cachedImageSet];
  }

  else
  {
    v9 = [(UIStatusBarItemView *)self imageWithShadowNamed:@"BatteryDrainingBG"];
    v10 = [v9 image];
    [v10 size];
    v12 = v11;
    v14 = v13;
    v15 = [(UIStatusBarItemView *)self foregroundStyle];
    v16 = [v15 usesVerticalLayout];

    if (v16)
    {
      v17 = v14;
    }

    else
    {
      v17 = v12;
    }

    if ((v16 & 1) == 0 && v4)
    {
      v18 = [(UIStatusBarBatteryItemView *)self _accessoryImage];
      [v18 size];
      v20 = v19;
      v21 = [(UIStatusBarItemView *)self foregroundStyle];
      [v21 batteryAccessoryMargin];
      v17 = v12 + v20 + v22;
    }

    v23 = ceil(v17);
    [(UIStatusBarItemView *)self beginImageContextWithMinimumWidth:v23];
    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    CGContextSaveGState(v25);
    [(UIStatusBarBatteryItemView *)self _batteryOffsetWithBackground:v10];
    v27 = v26;
    v29 = v28;
    if (v4)
    {
      v30 = [(UIStatusBarItemView *)self foregroundStyle];
      v31 = [v30 usesVerticalLayout];

      if (v31)
      {
        v32 = [(UIStatusBarBatteryItemView *)self _accessoryImage];
        [v32 size];
        v34 = v33;
        v35 = [(UIStatusBarItemView *)self foregroundStyle];
        [v35 batteryAccessoryMargin];
        v27 = v27 + (v34 + v36) * -0.5;
      }
    }

    v37 = [(UIStatusBarItemView *)self foregroundStyle];
    [v37 scale];
    v39 = v38;

    CGContextTranslateCTM(v25, round(v27 * v39) / v39, round(v29 * v39) / v39);
    [v10 drawAtPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    v40 = [(UIStatusBarItemView *)self foregroundStyle];
    [v40 drawBatteryInsidesWithSize:self->_capacity capacity:v5 style:{v12, v14}];

    v41 = [(UIStatusBarItemView *)self imageFromImageContextClippedToWidth:v23];
    CGContextRestoreGState(v25);
    [(UIStatusBarItemView *)self endImageContext];
    v42 = [v9 shadowImage];
    v8 = [_UILegibilityImageSet imageFromImage:v41 withShadowImage:v42];

    [(UIStatusBarBatteryItemView *)self setCachedImageSet:v8];
    [(UIStatusBarBatteryItemView *)self setCachedCapacity:self->_capacity];
    [(UIStatusBarBatteryItemView *)self setCachedImageHasAccessoryImage:v4];
    [(UIStatusBarBatteryItemView *)self setCachedBatteryStyle:v5];
  }

  return v8;
}

- (id)contentsImage
{
  v3 = [(UIStatusBarBatteryItemView *)self _contentsImage];
  if ([(UIStatusBarItemView *)self _shouldReverseLayoutDirection])
  {
    v4 = [v3 imageSetWithOrientation:4];

    v3 = v4;
  }

  return v3;
}

- (double)extraRightPadding
{
  v3 = [(UIStatusBarItemView *)self foregroundStyle];
  v4 = [v3 usesVerticalLayout];

  result = -1.0;
  if (v4)
  {
    v6.receiver = self;
    v6.super_class = UIStatusBarBatteryItemView;
    [(UIStatusBarItemView *)&v6 extraRightPadding];
  }

  return result;
}

- (void)_updateAccessoryImage
{
  v3 = [(UIStatusBarBatteryItemView *)self _needsAccessoryImage];
  accessoryView = self->_accessoryView;
  if (!v3)
  {
    v22 = 1;
    goto LABEL_15;
  }

  if (!accessoryView)
  {
    v5 = [(UIStatusBarBatteryItemView *)self _accessoryImage];
    [(UIView *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(UIStatusBarItemView *)self foregroundStyle];
    v15 = [v14 legibilityStyle];

    if (v15)
    {
      v16 = [[_UILegibilityView alloc] initWithStyle:v15 image:v5];
      v17 = self->_accessoryView;
      self->_accessoryView = &v16->super;

      if ([(UIStatusBarItemView *)self _shouldReverseLayoutDirection])
      {
        v41.origin.x = v7;
        v41.origin.y = v9;
        v41.size.width = v11;
        v41.size.height = v13;
        MinX = CGRectGetMinX(v41);
        [v5 size];
        v20 = MinX + v19 * 0.5;
        v21 = 44;
LABEL_11:
        v43.origin.x = v7;
        v43.origin.y = v9;
        v43.size.width = v11;
        v43.size.height = v13;
        MidY = CGRectGetMidY(v43);
        v31 = [(UIStatusBarItemView *)self foregroundStyle];
        v32 = [v31 usesVerticalLayout];

        if (v32)
        {
          v44.origin.x = v7;
          v44.origin.y = v9;
          v44.size.width = v11;
          v44.size.height = v13;
          MidX = CGRectGetMidX(v44);
          v34 = [(UIStatusBarItemView *)self imageWithShadowNamed:@"BatteryDrainingBG"];
          v35 = [v34 image];
          [v35 size];
          v37 = MidX + v36 * 0.5;
          v38 = [(UIStatusBarItemView *)self foregroundStyle];
          [v38 batteryAccessoryMargin];
          v20 = v37 + v39 * 0.5;
        }

        [(UIView *)self->_accessoryView setCenter:v20, MidY];
        [(UIView *)self->_accessoryView setAutoresizingMask:v21];
        [(UIView *)self addSubview:self->_accessoryView];

        accessoryView = self->_accessoryView;
        goto LABEL_14;
      }
    }

    else
    {
      v23 = v5;
      if ([(UIStatusBarItemView *)self _shouldReverseLayoutDirection])
      {
        v24 = [v23 CGImage];
        [v23 scale];
        v25 = [UIImage imageWithCGImage:v24 scale:4 orientation:?];

        v23 = v25;
      }

      v26 = [[UIImageView alloc] initWithImage:v23];
      v27 = self->_accessoryView;
      self->_accessoryView = &v26->super;

      [(UIStatusBarItemView *)self _shouldReverseLayoutDirection];
    }

    v42.origin.x = v7;
    v42.origin.y = v9;
    v42.size.width = v11;
    v42.size.height = v13;
    MaxX = CGRectGetMaxX(v42);
    [v5 size];
    v20 = MaxX + v29 * -0.5;
    v21 = 41;
    goto LABEL_11;
  }

LABEL_14:
  v22 = 0;
LABEL_15:

  [(UIView *)accessoryView setHidden:v22];
}

- (id)accessibilityHUDRepresentation
{
  v3 = [(UIStatusBarBatteryItemView *)self _needsAccessoryImage];
  v4 = v3;
  if (self->_batterySaverModeActive)
  {
    v5 = v3 | 2;
  }

  else
  {
    v5 = v3;
  }

  if ([(UIStatusBarBatteryItemView *)self cachedAXHUDCapacity]!= self->_capacity || [(UIStatusBarBatteryItemView *)self cachedAXHUDStyle]!= v5 || ([(UIStatusBarBatteryItemView *)self cachedAXHUDImage], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v7 = [(UIStatusBarItemView *)self foregroundStyle];
    v8 = [v7 batteryColorForCapacity:self->_capacity style:v5 usingTintColor:0];

    v9 = [(UIView *)self traitCollection];
    if ([v9 userInterfaceStyle] == 2)
    {
      +[UIColor whiteColor];
    }

    else
    {
      +[UIColor blackColor];
    }
    v10 = ;

    v11 = (self->_capacity / 100.0);
    v12 = [(UIStatusBarItemView *)self _shouldReverseLayoutDirection];
    v13 = [(UIView *)self _screen];
    [v13 scale];
    v15 = UIStatusBarCreateHUDBatteryImage(v8, v10, v4, 0, v12, 0, v11, v14);
    [(UIStatusBarBatteryItemView *)self setCachedAXHUDImage:v15];

    [(UIStatusBarBatteryItemView *)self setCachedAXHUDCapacity:self->_capacity];
    [(UIStatusBarBatteryItemView *)self setCachedAXHUDStyle:v5];
  }

  v16 = [UIAccessibilityHUDItem alloc];
  v17 = [(UIStatusBarBatteryItemView *)self cachedAXHUDImage];
  v18 = [(UIAccessibilityHUDItem *)v16 initWithTitle:0 image:v17 imageInsets:0 scaleImage:0.0, 0.0, 0.0, 0.0];

  [(UIAccessibilityHUDItem *)v18 setFlattenImage:0];

  return v18;
}

@end
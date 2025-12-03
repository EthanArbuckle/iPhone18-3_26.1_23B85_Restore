@interface UIStatusBarBatteryItemView
- (BOOL)updateForNewData:(id)data actions:(int)actions;
- (CGSize)_batteryOffsetWithBackground:(id)background;
- (double)extraRightPadding;
- (id)_accessoryImage;
- (id)_contentsImage;
- (id)accessibilityHUDRepresentation;
- (id)contentsImage;
- (void)_updateAccessoryImage;
@end

@implementation UIStatusBarBatteryItemView

- (BOOL)updateForNewData:(id)data actions:(int)actions
{
  rawData = [data rawData];
  v6 = (ceilf(*(rawData + 2104) / 5.0) * 5.0);
  v7 = *(rawData + 2108);
  v8 = *(rawData + 2536);
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

- (CGSize)_batteryOffsetWithBackground:(id)background
{
  [background size];
  v5 = v4;
  v7 = v6;
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  usesVerticalLayout = [foregroundStyle usesVerticalLayout];

  foregroundStyle2 = [(UIStatusBarItemView *)self foregroundStyle];
  [foregroundStyle2 height];
  v12 = v11;

  if (usesVerticalLayout)
  {
    v13 = v12;
  }

  else
  {
    v13 = v5;
  }

  if (usesVerticalLayout)
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
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  v3 = [foregroundStyle imageNamed:@"BatteryChargingAccessory"];

  return v3;
}

- (id)_contentsImage
{
  _needsAccessoryImage = [(UIStatusBarBatteryItemView *)self _needsAccessoryImage];
  v4 = _needsAccessoryImage;
  if (self->_batterySaverModeActive)
  {
    v5 = _needsAccessoryImage | 2;
  }

  else
  {
    v5 = _needsAccessoryImage;
  }

  cachedImageSet = [(UIStatusBarBatteryItemView *)self cachedImageSet];

  if (cachedImageSet && (capacity = self->_capacity, capacity == [(UIStatusBarBatteryItemView *)self cachedCapacity]) && v4 == [(UIStatusBarBatteryItemView *)self cachedImageHasAccessoryImage]&& v5 == [(UIStatusBarBatteryItemView *)self cachedBatteryStyle])
  {
    cachedImageSet2 = [(UIStatusBarBatteryItemView *)self cachedImageSet];
  }

  else
  {
    v9 = [(UIStatusBarItemView *)self imageWithShadowNamed:@"BatteryDrainingBG"];
    image = [v9 image];
    [image size];
    v12 = v11;
    v14 = v13;
    foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
    usesVerticalLayout = [foregroundStyle usesVerticalLayout];

    if (usesVerticalLayout)
    {
      v17 = v14;
    }

    else
    {
      v17 = v12;
    }

    if ((usesVerticalLayout & 1) == 0 && v4)
    {
      _accessoryImage = [(UIStatusBarBatteryItemView *)self _accessoryImage];
      [_accessoryImage size];
      v20 = v19;
      foregroundStyle2 = [(UIStatusBarItemView *)self foregroundStyle];
      [foregroundStyle2 batteryAccessoryMargin];
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
    [(UIStatusBarBatteryItemView *)self _batteryOffsetWithBackground:image];
    v27 = v26;
    v29 = v28;
    if (v4)
    {
      foregroundStyle3 = [(UIStatusBarItemView *)self foregroundStyle];
      usesVerticalLayout2 = [foregroundStyle3 usesVerticalLayout];

      if (usesVerticalLayout2)
      {
        _accessoryImage2 = [(UIStatusBarBatteryItemView *)self _accessoryImage];
        [_accessoryImage2 size];
        v34 = v33;
        foregroundStyle4 = [(UIStatusBarItemView *)self foregroundStyle];
        [foregroundStyle4 batteryAccessoryMargin];
        v27 = v27 + (v34 + v36) * -0.5;
      }
    }

    foregroundStyle5 = [(UIStatusBarItemView *)self foregroundStyle];
    [foregroundStyle5 scale];
    v39 = v38;

    CGContextTranslateCTM(v25, round(v27 * v39) / v39, round(v29 * v39) / v39);
    [image drawAtPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    foregroundStyle6 = [(UIStatusBarItemView *)self foregroundStyle];
    [foregroundStyle6 drawBatteryInsidesWithSize:self->_capacity capacity:v5 style:{v12, v14}];

    v41 = [(UIStatusBarItemView *)self imageFromImageContextClippedToWidth:v23];
    CGContextRestoreGState(v25);
    [(UIStatusBarItemView *)self endImageContext];
    shadowImage = [v9 shadowImage];
    cachedImageSet2 = [_UILegibilityImageSet imageFromImage:v41 withShadowImage:shadowImage];

    [(UIStatusBarBatteryItemView *)self setCachedImageSet:cachedImageSet2];
    [(UIStatusBarBatteryItemView *)self setCachedCapacity:self->_capacity];
    [(UIStatusBarBatteryItemView *)self setCachedImageHasAccessoryImage:v4];
    [(UIStatusBarBatteryItemView *)self setCachedBatteryStyle:v5];
  }

  return cachedImageSet2;
}

- (id)contentsImage
{
  _contentsImage = [(UIStatusBarBatteryItemView *)self _contentsImage];
  if ([(UIStatusBarItemView *)self _shouldReverseLayoutDirection])
  {
    v4 = [_contentsImage imageSetWithOrientation:4];

    _contentsImage = v4;
  }

  return _contentsImage;
}

- (double)extraRightPadding
{
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  usesVerticalLayout = [foregroundStyle usesVerticalLayout];

  result = -1.0;
  if (usesVerticalLayout)
  {
    v6.receiver = self;
    v6.super_class = UIStatusBarBatteryItemView;
    [(UIStatusBarItemView *)&v6 extraRightPadding];
  }

  return result;
}

- (void)_updateAccessoryImage
{
  _needsAccessoryImage = [(UIStatusBarBatteryItemView *)self _needsAccessoryImage];
  accessoryView = self->_accessoryView;
  if (!_needsAccessoryImage)
  {
    v22 = 1;
    goto LABEL_15;
  }

  if (!accessoryView)
  {
    _accessoryImage = [(UIStatusBarBatteryItemView *)self _accessoryImage];
    [(UIView *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
    legibilityStyle = [foregroundStyle legibilityStyle];

    if (legibilityStyle)
    {
      v16 = [[_UILegibilityView alloc] initWithStyle:legibilityStyle image:_accessoryImage];
      v17 = self->_accessoryView;
      self->_accessoryView = &v16->super;

      if ([(UIStatusBarItemView *)self _shouldReverseLayoutDirection])
      {
        v41.origin.x = v7;
        v41.origin.y = v9;
        v41.size.width = v11;
        v41.size.height = v13;
        MinX = CGRectGetMinX(v41);
        [_accessoryImage size];
        v20 = MinX + v19 * 0.5;
        v21 = 44;
LABEL_11:
        v43.origin.x = v7;
        v43.origin.y = v9;
        v43.size.width = v11;
        v43.size.height = v13;
        MidY = CGRectGetMidY(v43);
        foregroundStyle2 = [(UIStatusBarItemView *)self foregroundStyle];
        usesVerticalLayout = [foregroundStyle2 usesVerticalLayout];

        if (usesVerticalLayout)
        {
          v44.origin.x = v7;
          v44.origin.y = v9;
          v44.size.width = v11;
          v44.size.height = v13;
          MidX = CGRectGetMidX(v44);
          v34 = [(UIStatusBarItemView *)self imageWithShadowNamed:@"BatteryDrainingBG"];
          image = [v34 image];
          [image size];
          v37 = MidX + v36 * 0.5;
          foregroundStyle3 = [(UIStatusBarItemView *)self foregroundStyle];
          [foregroundStyle3 batteryAccessoryMargin];
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
      v23 = _accessoryImage;
      if ([(UIStatusBarItemView *)self _shouldReverseLayoutDirection])
      {
        cGImage = [v23 CGImage];
        [v23 scale];
        v25 = [UIImage imageWithCGImage:cGImage scale:4 orientation:?];

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
    [_accessoryImage size];
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
  _needsAccessoryImage = [(UIStatusBarBatteryItemView *)self _needsAccessoryImage];
  v4 = _needsAccessoryImage;
  if (self->_batterySaverModeActive)
  {
    v5 = _needsAccessoryImage | 2;
  }

  else
  {
    v5 = _needsAccessoryImage;
  }

  if ([(UIStatusBarBatteryItemView *)self cachedAXHUDCapacity]!= self->_capacity || [(UIStatusBarBatteryItemView *)self cachedAXHUDStyle]!= v5 || ([(UIStatusBarBatteryItemView *)self cachedAXHUDImage], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
    v8 = [foregroundStyle batteryColorForCapacity:self->_capacity style:v5 usingTintColor:0];

    traitCollection = [(UIView *)self traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      +[UIColor whiteColor];
    }

    else
    {
      +[UIColor blackColor];
    }
    v10 = ;

    v11 = (self->_capacity / 100.0);
    _shouldReverseLayoutDirection = [(UIStatusBarItemView *)self _shouldReverseLayoutDirection];
    _screen = [(UIView *)self _screen];
    [_screen scale];
    v15 = UIStatusBarCreateHUDBatteryImage(v8, v10, v4, 0, _shouldReverseLayoutDirection, 0, v11, v14);
    [(UIStatusBarBatteryItemView *)self setCachedAXHUDImage:v15];

    [(UIStatusBarBatteryItemView *)self setCachedAXHUDCapacity:self->_capacity];
    [(UIStatusBarBatteryItemView *)self setCachedAXHUDStyle:v5];
  }

  v16 = [UIAccessibilityHUDItem alloc];
  cachedAXHUDImage = [(UIStatusBarBatteryItemView *)self cachedAXHUDImage];
  v18 = [(UIAccessibilityHUDItem *)v16 initWithTitle:0 image:cachedAXHUDImage imageInsets:0 scaleImage:0.0, 0.0, 0.0, 0.0];

  [(UIAccessibilityHUDItem *)v18 setFlattenImage:0];

  return v18;
}

@end
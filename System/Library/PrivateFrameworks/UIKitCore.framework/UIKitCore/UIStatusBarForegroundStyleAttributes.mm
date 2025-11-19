@interface UIStatusBarForegroundStyleAttributes
- (BOOL)_shouldUseBoldFontForStyle:(int64_t)a3;
- (CGPoint)positionForMoonMaskInBounds:(CGRect)a3;
- (UIEdgeInsets)edgeInsetsForBatteryInsides;
- (UIEdgeInsets)edgeInsetsForBluetoothBatteryInsides;
- (UIStatusBarForegroundStyleAttributes)initWithHeight:(double)a3 legibilityStyle:(int64_t)a4 tintColor:(id)a5 hasBusyBackground:(BOOL)a6;
- (UIStatusBarForegroundStyleAttributes)initWithHeight:(double)a3 legibilityStyle:(int64_t)a4 tintColor:(id)a5 hasBusyBackground:(BOOL)a6 idiom:(int64_t)a7;
- (double)_roundDimension:(double)a3;
- (double)baselineOffsetForStyle:(int64_t)a3;
- (double)rightEdgePadding;
- (double)scale;
- (double)sizeForMoonMaskVisible:(BOOL)a3;
- (id)_batteryColorForCapacity:(int)a3 lowCapacity:(int)a4 style:(unint64_t)a5 usingTintColor:(BOOL)a6;
- (id)_cacheQueue_cachedImageNamed:(id)a3 inTempGroup:(id)a4 groupFullName:(id)a5;
- (id)_cachedImageNamed:(id)a3;
- (id)accessibilityHUDImageNamed:(id)a3;
- (id)batteryColorForCapacity:(int)a3 style:(unint64_t)a4 usingTintColor:(BOOL)a5;
- (id)bluetoothBatteryColorForCapacity:(double)a3 usingTintColor:(BOOL)a4;
- (id)bluetoothBatteryImageNameWithCapacity:(double)a3;
- (id)cachedImageNamed:(id)a3 inTempGroup:(id)a4;
- (id)cachedImageWithText:(id)a3 forWidth:(double)a4 lineBreakMode:(int64_t)a5 letterSpacing:(double)a6 textAlignment:(int64_t)a7 style:(int64_t)a8 itemType:(int)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)generateUniqueIdentifier;
- (id)imageIdWithText:(id)a3 forWidth:(double)a4 lineBreakMode:(int64_t)a5 letterSpacing:(double)a6 style:(int64_t)a7;
- (id)imageNamed:(id)a3;
- (id)imageNamed:(id)a3 withLegibilityStyle:(int64_t)a4 legibilityStrength:(double)a5;
- (id)imageWithText:(id)a3 ofItemType:(int)a4 forWidth:(double)a5 lineBreakMode:(int64_t)a6 letterSpacing:(double)a7 textAlignment:(int64_t)a8 style:(int64_t)a9 withLegibilityStyle:(int64_t)a10 legibilityStrength:(double)a11 shouldCache:(BOOL)a12;
- (id)makeTextFontForStyle:(int64_t)a3;
- (id)shadowImageForImage:(id)a3 withIdentifier:(id)a4 forStyle:(int64_t)a5 withStrength:(double)a6 inTempGroup:(id)a7 shouldCache:(BOOL)a8;
- (id)textFontForStyle:(int64_t)a3;
- (id)textForNetworkType:(int)a3;
- (id)uncachedImageNamed:(id)a3;
- (id)uniqueIdentifier;
- (id)untintedImageNamed:(id)a3;
- (int64_t)activityIndicatorStyleWithSyncActivity:(BOOL)a3;
- (void)_cacheQueue_cacheImage:(id)a3 named:(id)a4 inTempGroup:(id)a5 groupFullName:(id)a6 tintColor:(id)a7;
- (void)_drawText:(id)a3 inRect:(CGRect)a4 withFont:(id)a5 lineBreakMode:(int64_t)a6 letterSpacing:(double)a7 textAlignment:(int64_t)a8;
- (void)cacheImage:(id)a3 named:(id)a4 inTempGroup:(id)a5;
- (void)drawBatteryInsidesWithSize:(CGSize)a3 capacity:(int)a4 style:(unint64_t)a5 usingTintColor:(BOOL)a6;
- (void)drawBluetoothBatteryInsidesWithSize:(CGSize)a3 capacity:(double)a4;
- (void)drawText:(id)a3 forWidth:(double)a4 lineBreakMode:(int64_t)a5 letterSpacing:(double)a6 textAlignment:(int64_t)a7 style:(int64_t)a8 textSize:(CGSize)a9 textHeight:(double)a10;
@end

@implementation UIStatusBarForegroundStyleAttributes

- (UIStatusBarForegroundStyleAttributes)initWithHeight:(double)a3 legibilityStyle:(int64_t)a4 tintColor:(id)a5 hasBusyBackground:(BOOL)a6 idiom:(int64_t)a7
{
  v13 = a5;
  v18.receiver = self;
  v18.super_class = UIStatusBarForegroundStyleAttributes;
  v14 = [(UIStatusBarForegroundStyleAttributes *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_height = a3;
    v14->_legibilityStyle = a4;
    v14->_idiom = a7;
    objc_storeStrong(&v14->_tintColor, a5);
    if (v13)
    {
      v16 = +[UIColor blackColor];
      v15->_isTintColorBlack = [v13 isEqual:v16];
    }

    else
    {
      v15->_isTintColorBlack = 1;
    }

    v15->_hasBusyBackground = a6;
  }

  return v15;
}

- (UIStatusBarForegroundStyleAttributes)initWithHeight:(double)a3 legibilityStyle:(int64_t)a4 tintColor:(id)a5 hasBusyBackground:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = [(UIStatusBarForegroundStyleAttributes *)self initWithHeight:a4 legibilityStyle:v10 tintColor:v6 hasBusyBackground:_UIDeviceNativeUserInterfaceIdiom() idiom:a3];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  *(v4 + 56) = self->_canShowBreadcrumbs;
  objc_storeStrong(v4 + 8, self->_tintColor);
  *(v4 + 1) = *&self->_height;
  *(v4 + 2) = self->_legibilityStyle;
  *(v4 + 3) = self->_idiom;
  v5 = [(NSMutableDictionary *)self->_cachedFonts mutableCopy];
  v6 = *(v4 + 4);
  *(v4 + 4) = v5;

  *(v4 + 40) = self->_isTintColorBlack;
  *(v4 + 41) = self->_hasBusyBackground;
  v7 = [(NSString *)self->_cachedUniqueIdentifier copy];
  v8 = *(v4 + 6);
  *(v4 + 6) = v7;

  return v4;
}

- (id)generateUniqueIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  height = self->_height;
  [(UIStatusBarForegroundStyleAttributes *)self scale];
  v8 = v7;
  v9 = [(UIColor *)self->_tintColor styleString];
  v10 = [v3 stringWithFormat:@"%@_%.2f%.2f_%@", v5, *&height, v8, v9];

  return v10;
}

- (id)uniqueIdentifier
{
  cachedUniqueIdentifier = self->_cachedUniqueIdentifier;
  if (!cachedUniqueIdentifier)
  {
    v4 = [(UIStatusBarForegroundStyleAttributes *)self generateUniqueIdentifier];
    v5 = self->_cachedUniqueIdentifier;
    self->_cachedUniqueIdentifier = v4;

    cachedUniqueIdentifier = self->_cachedUniqueIdentifier;
  }

  return cachedUniqueIdentifier;
}

- (int64_t)activityIndicatorStyleWithSyncActivity:(BOOL)a3
{
  if (a3)
  {
    return 7;
  }

  else
  {
    return 6;
  }
}

- (double)_roundDimension:(double)a3
{
  [(UIStatusBarForegroundStyleAttributes *)self scale];
  v5 = round(v4 * a3) / v4;
  result = 1.0 / v4;
  if (result < v5)
  {
    return v5;
  }

  return result;
}

- (UIEdgeInsets)edgeInsetsForBatteryInsides
{
  [(UIStatusBarForegroundStyleAttributes *)self scale];
  if (v2 <= 2.5)
  {
    v3 = 4.5;
  }

  else
  {
    v3 = 4.33333333;
  }

  v4 = 2.0;
  v5 = 2.0;
  v6 = 2.0;
  result.right = v3;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (id)_batteryColorForCapacity:(int)a3 lowCapacity:(int)a4 style:(unint64_t)a5 usingTintColor:(BOOL)a6
{
  v6 = a6;
  if ((a5 & 2) != 0)
  {
    v9 = [UIColor systemYellowColor:*&a3];
  }

  else if (a3 <= a4)
  {
    v9 = +[UIColor systemRedColor];
  }

  else
  {
    if ((a5 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_10;
    }

    v9 = +[UIColor systemGreenColor];
  }

  v8 = v9;
  if (!v9 || self->_hasBusyBackground)
  {
LABEL_10:
    if (v6)
    {
      v10 = [(UIStatusBarForegroundStyleAttributes *)self tintColor];
      v11 = [v10 colorWithAlphaComponent:1.0];

      v8 = v10;
    }

    else
    {
      v11 = +[UIColor blackColor];
    }

    v8 = v11;
  }

  return v8;
}

- (id)batteryColorForCapacity:(int)a3 style:(unint64_t)a4 usingTintColor:(BOOL)a5
{
  v5 = a5;
  v7 = *&a3;
  v9 = +[UIStatusBar lowBatteryLevel];

  return [(UIStatusBarForegroundStyleAttributes *)self _batteryColorForCapacity:v7 lowCapacity:v9 style:a4 usingTintColor:v5];
}

- (void)drawBatteryInsidesWithSize:(CGSize)a3 capacity:(int)a4 style:(unint64_t)a5 usingTintColor:(BOOL)a6
{
  v6 = a6;
  v8 = *&a4;
  height = a3.height;
  width = a3.width;
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSaveGState(v13);
  v14 = [(UIStatusBarForegroundStyleAttributes *)self batteryColorForCapacity:v8 style:a5 usingTintColor:v6];
  if (v6)
  {
    v31 = v14;
    v15 = [(UIStatusBarForegroundStyleAttributes *)self tintColor];
    [v15 alphaComponent];
    v16 = [v31 colorWithAlphaComponent:?];

    v14 = v16;
  }

  v32 = v14;
  [v14 setFill];
  [(UIStatusBarForegroundStyleAttributes *)self edgeInsetsForBatteryInsides];
  v18 = v17 + 0.0;
  v20 = v19 + 0.0;
  v22 = width - (v17 + v21);
  v24 = height - (v19 + v23);
  [(UIStatusBarForegroundStyleAttributes *)self scale];
  if (v25 <= 2.5)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = 1.33333333;
  }

  v34.origin.x = v18;
  v34.origin.y = v20;
  v34.size.width = v22;
  v34.size.height = v24;
  v27 = CGPathCreateWithRoundedRect(v34, v26, v26, 0);
  if (v27)
  {
    v28 = v27;
    CGContextAddPath(v13, v27);
    CGContextClip(v13);
    CGPathRelease(v28);
  }

  v29 = v8 / 100.0 * v22;
  if (v29 < 1.0)
  {
    v29 = 1.0;
  }

  [(UIStatusBarForegroundStyleAttributes *)self _roundDimension:v29];
  v35.size.width = v30;
  v35.origin.x = v18;
  v35.origin.y = v20;
  v35.size.height = v24;
  UIRectFillUsingBlendMode(v35, kCGBlendModeNormal);
  CGContextRestoreGState(v13);
}

- (UIEdgeInsets)edgeInsetsForBluetoothBatteryInsides
{
  [(UIStatusBarForegroundStyleAttributes *)self scale];
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

- (id)bluetoothBatteryImageNameWithCapacity:(double)a3
{
  v5 = [(UIStatusBarForegroundStyleAttributes *)self imageNamed:@"HeadsetBatteryBG"];
  [v5 size];
  v7 = v6;
  [(UIStatusBarForegroundStyleAttributes *)self edgeInsetsForBluetoothBatteryInsides];
  [(UIStatusBarForegroundStyleAttributes *)self _roundDimension:(v7 - (v8 + v9)) * a3];
  v11 = v10;
  [(UIStatusBarForegroundStyleAttributes *)self scale];
  LODWORD(v13) = vcvtpd_s64_f64(v11 * v12);
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Battery_%u_%u", v13, self->_hasBusyBackground];

  return v14;
}

- (id)bluetoothBatteryColorForCapacity:(double)a3 usingTintColor:(BOOL)a4
{
  if (a3 <= 0.266666667)
  {
    v6 = +[UIColor systemRedColor];
  }

  else
  {
    if (a4)
    {
      v5 = 0;
LABEL_8:
      v7 = [(UIStatusBarForegroundStyleAttributes *)self tintColor];
      v8 = [v7 colorWithAlphaComponent:1.0];

      v5 = v8;
      goto LABEL_9;
    }

    v6 = +[UIColor blackColor];
  }

  v5 = v6;
  if (!v6 || self->_hasBusyBackground)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (void)drawBluetoothBatteryInsidesWithSize:(CGSize)a3 capacity:(double)a4
{
  height = a3.height;
  width = a3.width;
  v19 = [(UIStatusBarForegroundStyleAttributes *)self bluetoothBatteryColorForCapacity:1 usingTintColor:a4];
  [v19 set];
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  [(UIStatusBarForegroundStyleAttributes *)self edgeInsetsForBluetoothBatteryInsides];
  v11 = v8 + v10;
  v13 = v9 + v12;
  v15 = width - (v10 + v14);
  v17 = height - (v12 + v16);
  [(UIStatusBarForegroundStyleAttributes *)self _roundDimension:v17 * a4];
  UIRectFillUsingOperation(1, v11, v13 + v17 - v18, v15, v18);
}

- (void)_drawText:(id)a3 inRect:(CGRect)a4 withFont:(id)a5 lineBreakMode:(int64_t)a6 letterSpacing:(double)a7 textAlignment:(int64_t)a8
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (a7 != 0.0 || a8 == 0)
  {
    v16 = a5;
    v17 = a3;
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    [v17 drawAtPoint:v16 forWidth:a6 withFont:x lineBreakMode:y letterSpacing:{CGRectGetWidth(v20), a7}];
  }

  else
  {
    [a3 drawInRect:a5 withFont:a6 lineBreakMode:a8 alignment:0 lineSpacing:{a4.origin.x, a4.origin.y, a4.size.width, a4.size.height}];
  }
}

- (void)drawText:(id)a3 forWidth:(double)a4 lineBreakMode:(int64_t)a5 letterSpacing:(double)a6 textAlignment:(int64_t)a7 style:(int64_t)a8 textSize:(CGSize)a9 textHeight:(double)a10
{
  height = a9.height;
  width = a9.width;
  v19 = a3;
  v20 = [(UIStatusBarForegroundStyleAttributes *)self textFontForStyle:a8];
  [(UIStatusBarForegroundStyleAttributes *)self textOffsetForStyle:a8];
  v22 = floor((height - a10) * 0.5) + v21 + -1.0;
  if (!a7)
  {
    width = a4;
  }

  v23 = [(UIStatusBarForegroundStyleAttributes *)self textColorForStyle:a8];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __126__UIStatusBarForegroundStyleAttributes_drawText_forWidth_lineBreakMode_letterSpacing_textAlignment_style_textSize_textHeight___block_invoke;
  v26[3] = &unk_1E711F468;
  v26[4] = self;
  v27 = v19;
  v28 = v20;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v24 = v20;
  v25 = v19;
  [(UIStatusBarForegroundStyleAttributes *)self drawTextInRect:v23 withColor:v26 withBlock:0.0, v22, width, height];
}

uint64_t __126__UIStatusBarForegroundStyleAttributes_drawText_forWidth_lineBreakMode_letterSpacing_textAlignment_style_textSize_textHeight___block_invoke(double *a1, void *a2, double a3, double a4, double a5, double a6)
{
  [a2 set];
  v11 = *(a1 + 4);
  v12 = *(a1 + 5);
  v13 = *(a1 + 6);
  v14 = *(a1 + 7);
  v15 = a1[8];
  v16 = *(a1 + 9);

  return [v11 _drawText:v12 inRect:v13 withFont:v14 lineBreakMode:v16 letterSpacing:a3 textAlignment:{a4, a5, a6, v15}];
}

- (double)scale
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  return v4;
}

- (double)rightEdgePadding
{
  v2 = _UIDeviceNativeUserInterfaceIdiom();
  result = 6.0;
  if (v2 == 1)
  {
    return 5.0;
  }

  return result;
}

- (id)_cachedImageNamed:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__173;
  v16 = __Block_byref_object_dispose__173;
  v17 = 0;
  v5 = _cacheAccessQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__UIStatusBarForegroundStyleAttributes__cachedImageNamed___block_invoke;
  block[3] = &unk_1E70FB728;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __58__UIStatusBarForegroundStyleAttributes__cachedImageNamed___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = [v2 uniqueIdentifier];
  v4 = [v2 _cacheQueue_cachedImageNamed:v3 inTempGroup:0 groupFullName:v7];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_cacheQueue_cachedImageNamed:(id)a3 inTempGroup:(id)a4 groupFullName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 stringByAppendingString:v10];
  if (v9)
  {
    v12 = [(UIStatusBarForegroundStyleAttributes *)self expandedNameForImageName:v8];

    v13 = [(UIStatusBarForegroundStyleAttributes *)self tintColor];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 styleString];
      v16 = [v12 stringByAppendingString:v15];

      v12 = v16;
    }

    v17 = [v10 stringByAppendingString:v9];

    v11 = v12;
    v10 = v17;
  }

  v18 = +[UIStatusBarCache sharedInstance];
  [(UIStatusBarForegroundStyleAttributes *)self scale];
  v19 = [v18 imageNamed:v11 forGroup:v10 withScale:?];

  return v19;
}

- (id)cachedImageNamed:(id)a3 inTempGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__173;
  v21 = __Block_byref_object_dispose__173;
  v22 = 0;
  v8 = _cacheAccessQueue();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__UIStatusBarForegroundStyleAttributes_cachedImageNamed_inTempGroup___block_invoke;
  v13[3] = &unk_1E7103C20;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __69__UIStatusBarForegroundStyleAttributes_cachedImageNamed_inTempGroup___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v8 = [v2 uniqueIdentifier];
  v5 = [v2 _cacheQueue_cachedImageNamed:v3 inTempGroup:v4 groupFullName:v8];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)_cacheQueue_cacheImage:(id)a3 named:(id)a4 inTempGroup:(id)a5 groupFullName:(id)a6 tintColor:(id)a7
{
  v23 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a3;
  v16 = [v23 stringByAppendingString:v13];
  if (v12)
  {
    v17 = [(UIStatusBarForegroundStyleAttributes *)self expandedNameForImageName:v23];

    if (v14)
    {
      v18 = [v14 styleString];
      v19 = [v17 stringByAppendingString:v18];

      v17 = v19;
    }

    v20 = [v13 stringByAppendingString:v12];

    v21 = +[UIStatusBarCache sharedInstance];
    [v21 removeImagesInGroup:v20];

    v13 = v20;
    v16 = v17;
  }

  v22 = +[UIStatusBarCache sharedInstance];
  [v22 cacheImage:v15 named:v16 forGroup:v13];
}

- (void)cacheImage:(id)a3 named:(id)a4 inTempGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _cacheAccessQueue();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__UIStatusBarForegroundStyleAttributes_cacheImage_named_inTempGroup___block_invoke;
  v15[3] = &unk_1E70F6B40;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __69__UIStatusBarForegroundStyleAttributes_cacheImage_named_inTempGroup___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = [v2 uniqueIdentifier];
  v6 = [*(a1 + 32) tintColor];
  [v2 _cacheQueue_cacheImage:v3 named:v4 inTempGroup:v5 groupFullName:v7 tintColor:v6];
}

- (id)uncachedImageNamed:(id)a3
{
  v4 = [(UIStatusBarForegroundStyleAttributes *)self expandedNameForImageName:a3];
  v5 = [v4 stringByAppendingString:@".png"];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__UIStatusBarForegroundStyleAttributes_uncachedImageNamed___block_invoke;
  v9[3] = &unk_1E710C0C8;
  v9[4] = self;
  v6 = [UITraitCollection traitCollectionWithTraits:v9];
  v7 = [UIImage _kitImageNamed:v5 withTrait:v6];

  return v7;
}

void __59__UIStatusBarForegroundStyleAttributes_uncachedImageNamed___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 scale];
  [v4 setDisplayScale:?];
  [v4 setUserInterfaceIdiom:{objc_msgSend(*(a1 + 32), "idiom")}];
}

- (id)untintedImageNamed:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UIStatusBarForegroundStyleAttributes *)self expandedNameForImageName:v4];
    v6 = [(UIStatusBarForegroundStyleAttributes *)self _cachedImageNamed:v5];
    if (!v6)
    {
      v7 = [(UIStatusBarForegroundStyleAttributes *)self uncachedImageNamed:v4];
      [v7 size];
      v9 = v8;
      v11 = v10;
      [(UIStatusBarForegroundStyleAttributes *)self scale];
      _UIGraphicsBeginImageContextWithOptions(0, 0, v9, v11, v12);
      [v7 drawAtPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      v6 = _UIGraphicsGetImageFromCurrentImageContext(0);
      UIGraphicsEndImageContext();
      [(UIStatusBarForegroundStyleAttributes *)self _cacheImage:v6 named:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)imageNamed:(id)a3
{
  v4 = a3;
  v5 = [(UIStatusBarForegroundStyleAttributes *)self tintColor];
  if (v5)
  {
    v6 = [(UIStatusBarForegroundStyleAttributes *)self expandedNameForImageName:v4];
    v7 = [v5 styleString];
    v8 = [v6 stringByAppendingString:v7];

    v9 = [(UIStatusBarForegroundStyleAttributes *)self _cachedImageNamed:v8];
    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = [(UIStatusBarForegroundStyleAttributes *)self untintedImageNamed:v4];
  v9 = v10;
  if (v5 && v10)
  {
    v11 = [v10 _flatImageWithColor:v5];

    [(UIStatusBarForegroundStyleAttributes *)self _cacheImage:v11 named:v8];
    v9 = v11;
  }

LABEL_8:

  return v9;
}

- (id)accessibilityHUDImageNamed:(id)a3
{
  v3 = [@"Black_" stringByAppendingString:a3];
  v4 = [v3 stringByAppendingString:@".png"];

  v5 = [UIImage kitImageNamed:v4];

  return v5;
}

- (id)imageNamed:(id)a3 withLegibilityStyle:(int64_t)a4 legibilityStrength:(double)a5
{
  isTintColorBlack = self->_isTintColorBlack;
  v9 = a3;
  if (isTintColorBlack)
  {
    [(UIStatusBarForegroundStyleAttributes *)self untintedImageNamed:v9];
  }

  else
  {
    [(UIStatusBarForegroundStyleAttributes *)self imageNamed:v9];
  }
  v10 = ;
  v11 = [(UIStatusBarForegroundStyleAttributes *)self expandedNameForImageName:v9];

  v12 = [(UIStatusBarForegroundStyleAttributes *)self shadowImageForImage:v10 withIdentifier:v11 forStyle:a4 withStrength:a5];

  v13 = [_UILegibilityImageSet imageFromImage:v10 withShadowImage:v12];

  return v13;
}

- (id)shadowImageForImage:(id)a3 withIdentifier:(id)a4 forStyle:(int64_t)a5 withStrength:(double)a6 inTempGroup:(id)a7 shouldCache:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a7;
  v16 = 0;
  if (v14 && a5)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"shadow_%@_%d_%.2f", a4, a5, *&a6];
    if (!v8 || ([(UIStatusBarForegroundStyleAttributes *)self cachedImageNamed:v17 inTempGroup:v15], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v18 = [[_UILegibilitySettings alloc] initWithStyle:a5];
      v16 = [v14 _imageForLegibilitySettings:v18 strength:a6];
      if (v16)
      {
        v19 = !v8;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        [(UIStatusBarForegroundStyleAttributes *)self cacheImage:v16 named:v17 inTempGroup:v15];
      }
    }
  }

  return v16;
}

- (id)imageIdWithText:(id)a3 forWidth:(double)a4 lineBreakMode:(int64_t)a5 letterSpacing:(double)a6 style:(int64_t)a7
{
  v12 = MEMORY[0x1E696AEC0];
  v13 = [(UIStatusBarForegroundStyleAttributes *)self expandedNameForImageName:a3];
  v14 = [(UIStatusBarForegroundStyleAttributes *)self textColorForStyle:a7];
  v15 = [v14 styleString];
  v16 = [(UIStatusBarForegroundStyleAttributes *)self idiom];
  [(UIStatusBarForegroundStyleAttributes *)self scale];
  v18 = [v12 stringWithFormat:@"%@_%d_%.2f_%d_%@_%ld-%.2f", v13, a5, *&a6, a7, v15, v16, v17];

  if (a4 != 1.79769313e308)
  {
    v19 = [v18 stringByAppendingFormat:@"_%.2f", *&a4];

    v18 = v19;
  }

  return v18;
}

- (id)imageWithText:(id)a3 ofItemType:(int)a4 forWidth:(double)a5 lineBreakMode:(int64_t)a6 letterSpacing:(double)a7 textAlignment:(int64_t)a8 style:(int64_t)a9 withLegibilityStyle:(int64_t)a10 legibilityStrength:(double)a11 shouldCache:(BOOL)a12
{
  v19 = *&a4;
  v21 = a3;
  if ([v21 length])
  {
    v50 = a10;
    v22 = [(UIStatusBarForegroundStyleAttributes *)self imageIdWithText:v21 forWidth:a6 lineBreakMode:a9 letterSpacing:a5 style:a7];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TempText%d", v19];
    v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TempTextShadow%d", v19];
    if (!a12 || ([(UIStatusBarForegroundStyleAttributes *)self cachedImageNamed:v22 inTempGroup:v23], (v24 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v25 = [(UIStatusBarForegroundStyleAttributes *)self textFontForStyle:a9];
      [v21 sizeWithFont:v25 forWidth:a6 lineBreakMode:a5 letterSpacing:a7];
      v27 = v26;
      v29 = v28;
      if ([(UIStatusBarForegroundStyleAttributes *)self usesVerticalLayout])
      {
        [(UIStatusBarForegroundStyleAttributes *)self height];
        v27 = v30;
        v31 = v29;
      }

      else
      {
        [(UIStatusBarForegroundStyleAttributes *)self height];
        v31 = v33;
      }

      [(UIStatusBarForegroundStyleAttributes *)self scale];
      _UIGraphicsBeginImageContextWithOptions(0, 0, v27, v31, v34);
      ContextStack = GetContextStack(0);
      if (*ContextStack < 1)
      {
        v36 = 0;
      }

      else
      {
        v36 = ContextStack[3 * (*ContextStack - 1) + 1];
      }

      [(UIStatusBarForegroundStyleAttributes *)self drawText:v21 forWidth:a6 lineBreakMode:a8 letterSpacing:a9 textAlignment:a5 style:a7 textSize:v27 textHeight:v31, v29];
      Image = CGBitmapContextCreateImage(v36);
      if (Image)
      {
        v38 = Image;
        [(UIStatusBarForegroundStyleAttributes *)self scale];
        v40 = v27 * v39;
        v53.size.height = CGImageGetHeight(v38);
        v53.origin.x = 0.0;
        v53.origin.y = 0.0;
        v53.size.width = v40;
        v41 = CGImageCreateWithImageInRect(v38, v53);
        if (v41)
        {
          v42 = v41;
          [(UIStatusBarForegroundStyleAttributes *)self scale];
          v24 = [UIImage imageWithCGImage:v42 scale:0 orientation:?];
          CFRelease(v42);
        }

        else
        {
          v24 = 0;
        }

        CFRelease(v38);
      }

      else
      {
        v24 = 0;
      }

      UIGraphicsEndImageContext();
      if (a12)
      {
        [(UIStatusBarForegroundStyleAttributes *)self cacheImage:v24 named:v22 inTempGroup:v23];
      }
    }

    v43 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v44 = [v21 stringByTrimmingCharactersInSet:v43];
    v45 = [v44 length];

    if (v45)
    {
      v46 = self;
      v47 = v51;
      v32 = [(UIStatusBarForegroundStyleAttributes *)v46 shadowImageForImage:v24 withIdentifier:v22 forStyle:v50 withStrength:v51 inTempGroup:a12 shouldCache:a11];
    }

    else
    {
      v32 = 0;
      v47 = v51;
    }
  }

  else
  {
    v32 = 0;
    v24 = 0;
  }

  v48 = [_UILegibilityImageSet imageFromImage:v24 withShadowImage:v32];

  return v48;
}

- (id)cachedImageWithText:(id)a3 forWidth:(double)a4 lineBreakMode:(int64_t)a5 letterSpacing:(double)a6 textAlignment:(int64_t)a7 style:(int64_t)a8 itemType:(int)a9
{
  v9 = *&a9;
  v15 = a3;
  if ([v15 length])
  {
    v16 = [(UIStatusBarForegroundStyleAttributes *)self imageIdWithText:v15 forWidth:a5 lineBreakMode:a8 letterSpacing:a4 style:a6];
    v17 = [(UIStatusBarForegroundStyleAttributes *)self _cachedImageNamed:v16];
    if (!v17)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TempText%d", v9];
      v17 = [(UIStatusBarForegroundStyleAttributes *)self cachedImageNamed:v16 inTempGroup:v18];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)textFontForStyle:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v6 = [(NSMutableDictionary *)self->_cachedFonts objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = [(UIStatusBarForegroundStyleAttributes *)self makeTextFontForStyle:a3];
    if (v6)
    {
      cachedFonts = self->_cachedFonts;
      if (!cachedFonts)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v9 = self->_cachedFonts;
        self->_cachedFonts = v8;

        cachedFonts = self->_cachedFonts;
      }

      [(NSMutableDictionary *)cachedFonts setObject:v6 forKeyedSubscript:v5];
    }
  }

  return v6;
}

- (BOOL)_shouldUseBoldFontForStyle:(int64_t)a3
{
  if (a3 > 2)
  {
    return 1;
  }

  [(UIStatusBarForegroundStyleAttributes *)self scale:v3];
  return v6 < 1.5;
}

- (id)makeTextFontForStyle:(int64_t)a3
{
  if ([(UIStatusBarForegroundStyleAttributes *)self idiom]== 1)
  {
    v5 = [off_1E70ECC18 systemFontOfSize:12.0 weight:*off_1E70ECD20];
  }

  else
  {
    v6 = 12.0;
    if (a3 == 2)
    {
      [(UIStatusBarForegroundStyleAttributes *)self scale];
      if (v7 >= 1.5)
      {
        v6 = 12.0;
      }

      else
      {
        v6 = 13.0;
      }
    }

    if ([(UIStatusBarForegroundStyleAttributes *)self _shouldUseBoldFontForStyle:a3])
    {
      [off_1E70ECC18 _opticalBoldSystemFontOfSize:v6];
    }

    else
    {
      [off_1E70ECC18 _opticalSystemFontOfSize:v6];
    }
    v5 = ;
  }

  return v5;
}

- (double)baselineOffsetForStyle:(int64_t)a3
{
  v5 = [(UIStatusBarForegroundStyleAttributes *)self textFontForStyle:?];
  [@"A" sizeWithFont:v5 forWidth:2 lineBreakMode:1.79769313e308 letterSpacing:0.0];
  v7 = v6;
  [(UIStatusBarForegroundStyleAttributes *)self height];
  v9 = v8;
  [(UIStatusBarForegroundStyleAttributes *)self textOffsetForStyle:a3];
  v11 = v7 + v10 + -1.0 + floor((v9 - v7) * 0.5);
  [v5 descender];
  v13 = v12 + v11;

  return v13;
}

- (id)textForNetworkType:(int)a3
{
  v3 = 0;
  if (a3 <= 6)
  {
    switch(a3)
    {
      case 1:
        v4 = @"E";
        break;
      case 2:
        v4 = @"3G";
        break;
      case 3:
        v4 = @"4G";
        break;
      default:
        goto LABEL_18;
    }

LABEL_16:
    v5 = v4;
    goto LABEL_17;
  }

  if (a3 > 8)
  {
    if (a3 == 9)
    {
      v4 = @"LTE-A";
    }

    else
    {
      if (a3 != 10)
      {
        goto LABEL_18;
      }

      v4 = @"LTE+";
    }

    goto LABEL_16;
  }

  if (a3 == 7)
  {
    v6 = _UIKitBundle();
    v3 = [v6 localizedStringForKey:@"1x[statusBarDataNetwork]" value:@"1x" table:@"Localizable"];

    goto LABEL_18;
  }

  v4 = @"5GE";
  v5 = @"5G   ";
LABEL_17:
  v3 = _UINSLocalizedStringWithDefaultValue(v4, v5);
LABEL_18:

  return v3;
}

- (double)sizeForMoonMaskVisible:(BOOL)a3
{
  v3 = a3;
  [(UIStatusBarForegroundStyleAttributes *)self scale];
  if (v5 <= 2.5)
  {
    [(UIStatusBarForegroundStyleAttributes *)self scale];
    v8 = v7 <= 1.5;
    result = 8.0;
    if (!v8)
    {
      result = 7.5;
    }
  }

  else
  {
    result = 7.66666667;
  }

  if (!v3)
  {
    return 11.0;
  }

  return result;
}

- (CGPoint)positionForMoonMaskInBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIStatusBarForegroundStyleAttributes *)self scale];
  if (v8 <= 2.5)
  {
    [(UIStatusBarForegroundStyleAttributes *)self scale];
    if (v10 <= 1.5)
    {
      v9 = 2.0;
    }

    else
    {
      v9 = 1.5;
    }
  }

  else
  {
    v9 = 1.66666667;
  }

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v11 = v9 + CGRectGetMaxX(v14);
  v12 = 4.0;
  result.y = v12;
  result.x = v11;
  return result;
}

@end
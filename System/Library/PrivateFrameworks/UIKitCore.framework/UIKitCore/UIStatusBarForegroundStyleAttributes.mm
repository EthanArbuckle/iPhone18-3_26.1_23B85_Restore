@interface UIStatusBarForegroundStyleAttributes
- (BOOL)_shouldUseBoldFontForStyle:(int64_t)style;
- (CGPoint)positionForMoonMaskInBounds:(CGRect)bounds;
- (UIEdgeInsets)edgeInsetsForBatteryInsides;
- (UIEdgeInsets)edgeInsetsForBluetoothBatteryInsides;
- (UIStatusBarForegroundStyleAttributes)initWithHeight:(double)height legibilityStyle:(int64_t)style tintColor:(id)color hasBusyBackground:(BOOL)background;
- (UIStatusBarForegroundStyleAttributes)initWithHeight:(double)height legibilityStyle:(int64_t)style tintColor:(id)color hasBusyBackground:(BOOL)background idiom:(int64_t)idiom;
- (double)_roundDimension:(double)dimension;
- (double)baselineOffsetForStyle:(int64_t)style;
- (double)rightEdgePadding;
- (double)scale;
- (double)sizeForMoonMaskVisible:(BOOL)visible;
- (id)_batteryColorForCapacity:(int)capacity lowCapacity:(int)lowCapacity style:(unint64_t)style usingTintColor:(BOOL)color;
- (id)_cacheQueue_cachedImageNamed:(id)named inTempGroup:(id)group groupFullName:(id)name;
- (id)_cachedImageNamed:(id)named;
- (id)accessibilityHUDImageNamed:(id)named;
- (id)batteryColorForCapacity:(int)capacity style:(unint64_t)style usingTintColor:(BOOL)color;
- (id)bluetoothBatteryColorForCapacity:(double)capacity usingTintColor:(BOOL)color;
- (id)bluetoothBatteryImageNameWithCapacity:(double)capacity;
- (id)cachedImageNamed:(id)named inTempGroup:(id)group;
- (id)cachedImageWithText:(id)text forWidth:(double)width lineBreakMode:(int64_t)mode letterSpacing:(double)spacing textAlignment:(int64_t)alignment style:(int64_t)style itemType:(int)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)generateUniqueIdentifier;
- (id)imageIdWithText:(id)text forWidth:(double)width lineBreakMode:(int64_t)mode letterSpacing:(double)spacing style:(int64_t)style;
- (id)imageNamed:(id)named;
- (id)imageNamed:(id)named withLegibilityStyle:(int64_t)style legibilityStrength:(double)strength;
- (id)imageWithText:(id)text ofItemType:(int)type forWidth:(double)width lineBreakMode:(int64_t)mode letterSpacing:(double)spacing textAlignment:(int64_t)alignment style:(int64_t)style withLegibilityStyle:(int64_t)self0 legibilityStrength:(double)self1 shouldCache:(BOOL)self2;
- (id)makeTextFontForStyle:(int64_t)style;
- (id)shadowImageForImage:(id)image withIdentifier:(id)identifier forStyle:(int64_t)style withStrength:(double)strength inTempGroup:(id)group shouldCache:(BOOL)cache;
- (id)textFontForStyle:(int64_t)style;
- (id)textForNetworkType:(int)type;
- (id)uncachedImageNamed:(id)named;
- (id)uniqueIdentifier;
- (id)untintedImageNamed:(id)named;
- (int64_t)activityIndicatorStyleWithSyncActivity:(BOOL)activity;
- (void)_cacheQueue_cacheImage:(id)image named:(id)named inTempGroup:(id)group groupFullName:(id)name tintColor:(id)color;
- (void)_drawText:(id)text inRect:(CGRect)rect withFont:(id)font lineBreakMode:(int64_t)mode letterSpacing:(double)spacing textAlignment:(int64_t)alignment;
- (void)cacheImage:(id)image named:(id)named inTempGroup:(id)group;
- (void)drawBatteryInsidesWithSize:(CGSize)size capacity:(int)capacity style:(unint64_t)style usingTintColor:(BOOL)color;
- (void)drawBluetoothBatteryInsidesWithSize:(CGSize)size capacity:(double)capacity;
- (void)drawText:(id)text forWidth:(double)width lineBreakMode:(int64_t)mode letterSpacing:(double)spacing textAlignment:(int64_t)alignment style:(int64_t)style textSize:(CGSize)size textHeight:(double)self0;
@end

@implementation UIStatusBarForegroundStyleAttributes

- (UIStatusBarForegroundStyleAttributes)initWithHeight:(double)height legibilityStyle:(int64_t)style tintColor:(id)color hasBusyBackground:(BOOL)background idiom:(int64_t)idiom
{
  colorCopy = color;
  v18.receiver = self;
  v18.super_class = UIStatusBarForegroundStyleAttributes;
  v14 = [(UIStatusBarForegroundStyleAttributes *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_height = height;
    v14->_legibilityStyle = style;
    v14->_idiom = idiom;
    objc_storeStrong(&v14->_tintColor, color);
    if (colorCopy)
    {
      v16 = +[UIColor blackColor];
      v15->_isTintColorBlack = [colorCopy isEqual:v16];
    }

    else
    {
      v15->_isTintColorBlack = 1;
    }

    v15->_hasBusyBackground = background;
  }

  return v15;
}

- (UIStatusBarForegroundStyleAttributes)initWithHeight:(double)height legibilityStyle:(int64_t)style tintColor:(id)color hasBusyBackground:(BOOL)background
{
  backgroundCopy = background;
  colorCopy = color;
  v11 = [(UIStatusBarForegroundStyleAttributes *)self initWithHeight:style legibilityStyle:colorCopy tintColor:backgroundCopy hasBusyBackground:_UIDeviceNativeUserInterfaceIdiom() idiom:height];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
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
  styleString = [(UIColor *)self->_tintColor styleString];
  v10 = [v3 stringWithFormat:@"%@_%.2f%.2f_%@", v5, *&height, v8, styleString];

  return v10;
}

- (id)uniqueIdentifier
{
  cachedUniqueIdentifier = self->_cachedUniqueIdentifier;
  if (!cachedUniqueIdentifier)
  {
    generateUniqueIdentifier = [(UIStatusBarForegroundStyleAttributes *)self generateUniqueIdentifier];
    v5 = self->_cachedUniqueIdentifier;
    self->_cachedUniqueIdentifier = generateUniqueIdentifier;

    cachedUniqueIdentifier = self->_cachedUniqueIdentifier;
  }

  return cachedUniqueIdentifier;
}

- (int64_t)activityIndicatorStyleWithSyncActivity:(BOOL)activity
{
  if (activity)
  {
    return 7;
  }

  else
  {
    return 6;
  }
}

- (double)_roundDimension:(double)dimension
{
  [(UIStatusBarForegroundStyleAttributes *)self scale];
  v5 = round(v4 * dimension) / v4;
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

- (id)_batteryColorForCapacity:(int)capacity lowCapacity:(int)lowCapacity style:(unint64_t)style usingTintColor:(BOOL)color
{
  colorCopy = color;
  if ((style & 2) != 0)
  {
    v9 = [UIColor systemYellowColor:*&capacity];
  }

  else if (capacity <= lowCapacity)
  {
    v9 = +[UIColor systemRedColor];
  }

  else
  {
    if ((style & 1) == 0)
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
    if (colorCopy)
    {
      tintColor = [(UIStatusBarForegroundStyleAttributes *)self tintColor];
      v11 = [tintColor colorWithAlphaComponent:1.0];

      v8 = tintColor;
    }

    else
    {
      v11 = +[UIColor blackColor];
    }

    v8 = v11;
  }

  return v8;
}

- (id)batteryColorForCapacity:(int)capacity style:(unint64_t)style usingTintColor:(BOOL)color
{
  colorCopy = color;
  v7 = *&capacity;
  v9 = +[UIStatusBar lowBatteryLevel];

  return [(UIStatusBarForegroundStyleAttributes *)self _batteryColorForCapacity:v7 lowCapacity:v9 style:style usingTintColor:colorCopy];
}

- (void)drawBatteryInsidesWithSize:(CGSize)size capacity:(int)capacity style:(unint64_t)style usingTintColor:(BOOL)color
{
  colorCopy = color;
  v8 = *&capacity;
  height = size.height;
  width = size.width;
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
  v14 = [(UIStatusBarForegroundStyleAttributes *)self batteryColorForCapacity:v8 style:style usingTintColor:colorCopy];
  if (colorCopy)
  {
    v31 = v14;
    tintColor = [(UIStatusBarForegroundStyleAttributes *)self tintColor];
    [tintColor alphaComponent];
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

- (id)bluetoothBatteryImageNameWithCapacity:(double)capacity
{
  v5 = [(UIStatusBarForegroundStyleAttributes *)self imageNamed:@"HeadsetBatteryBG"];
  [v5 size];
  v7 = v6;
  [(UIStatusBarForegroundStyleAttributes *)self edgeInsetsForBluetoothBatteryInsides];
  [(UIStatusBarForegroundStyleAttributes *)self _roundDimension:(v7 - (v8 + v9)) * capacity];
  v11 = v10;
  [(UIStatusBarForegroundStyleAttributes *)self scale];
  LODWORD(v13) = vcvtpd_s64_f64(v11 * v12);
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Battery_%u_%u", v13, self->_hasBusyBackground];

  return v14;
}

- (id)bluetoothBatteryColorForCapacity:(double)capacity usingTintColor:(BOOL)color
{
  if (capacity <= 0.266666667)
  {
    v6 = +[UIColor systemRedColor];
  }

  else
  {
    if (color)
    {
      v5 = 0;
LABEL_8:
      tintColor = [(UIStatusBarForegroundStyleAttributes *)self tintColor];
      v8 = [tintColor colorWithAlphaComponent:1.0];

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

- (void)drawBluetoothBatteryInsidesWithSize:(CGSize)size capacity:(double)capacity
{
  height = size.height;
  width = size.width;
  v19 = [(UIStatusBarForegroundStyleAttributes *)self bluetoothBatteryColorForCapacity:1 usingTintColor:capacity];
  [v19 set];
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  [(UIStatusBarForegroundStyleAttributes *)self edgeInsetsForBluetoothBatteryInsides];
  v11 = v8 + v10;
  v13 = v9 + v12;
  v15 = width - (v10 + v14);
  v17 = height - (v12 + v16);
  [(UIStatusBarForegroundStyleAttributes *)self _roundDimension:v17 * capacity];
  UIRectFillUsingOperation(1, v11, v13 + v17 - v18, v15, v18);
}

- (void)_drawText:(id)text inRect:(CGRect)rect withFont:(id)font lineBreakMode:(int64_t)mode letterSpacing:(double)spacing textAlignment:(int64_t)alignment
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (spacing != 0.0 || alignment == 0)
  {
    fontCopy = font;
    textCopy = text;
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    [textCopy drawAtPoint:fontCopy forWidth:mode withFont:x lineBreakMode:y letterSpacing:{CGRectGetWidth(v20), spacing}];
  }

  else
  {
    [text drawInRect:font withFont:mode lineBreakMode:alignment alignment:0 lineSpacing:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  }
}

- (void)drawText:(id)text forWidth:(double)width lineBreakMode:(int64_t)mode letterSpacing:(double)spacing textAlignment:(int64_t)alignment style:(int64_t)style textSize:(CGSize)size textHeight:(double)self0
{
  height = size.height;
  width = size.width;
  textCopy = text;
  v20 = [(UIStatusBarForegroundStyleAttributes *)self textFontForStyle:style];
  [(UIStatusBarForegroundStyleAttributes *)self textOffsetForStyle:style];
  v22 = floor((height - height) * 0.5) + v21 + -1.0;
  if (!alignment)
  {
    width = width;
  }

  v23 = [(UIStatusBarForegroundStyleAttributes *)self textColorForStyle:style];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __126__UIStatusBarForegroundStyleAttributes_drawText_forWidth_lineBreakMode_letterSpacing_textAlignment_style_textSize_textHeight___block_invoke;
  v26[3] = &unk_1E711F468;
  v26[4] = self;
  v27 = textCopy;
  v28 = v20;
  modeCopy = mode;
  spacingCopy = spacing;
  alignmentCopy = alignment;
  v24 = v20;
  v25 = textCopy;
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
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];
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

- (id)_cachedImageNamed:(id)named
{
  namedCopy = named;
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
  v10 = namedCopy;
  v11 = &v12;
  block[4] = self;
  v6 = namedCopy;
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

- (id)_cacheQueue_cachedImageNamed:(id)named inTempGroup:(id)group groupFullName:(id)name
{
  namedCopy = named;
  groupCopy = group;
  nameCopy = name;
  v11 = [namedCopy stringByAppendingString:nameCopy];
  if (groupCopy)
  {
    v12 = [(UIStatusBarForegroundStyleAttributes *)self expandedNameForImageName:namedCopy];

    tintColor = [(UIStatusBarForegroundStyleAttributes *)self tintColor];
    v14 = tintColor;
    if (tintColor)
    {
      styleString = [tintColor styleString];
      v16 = [v12 stringByAppendingString:styleString];

      v12 = v16;
    }

    v17 = [nameCopy stringByAppendingString:groupCopy];

    v11 = v12;
    nameCopy = v17;
  }

  v18 = +[UIStatusBarCache sharedInstance];
  [(UIStatusBarForegroundStyleAttributes *)self scale];
  v19 = [v18 imageNamed:v11 forGroup:nameCopy withScale:?];

  return v19;
}

- (id)cachedImageNamed:(id)named inTempGroup:(id)group
{
  namedCopy = named;
  groupCopy = group;
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
  v14 = namedCopy;
  v15 = groupCopy;
  v16 = &v17;
  v9 = groupCopy;
  v10 = namedCopy;
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

- (void)_cacheQueue_cacheImage:(id)image named:(id)named inTempGroup:(id)group groupFullName:(id)name tintColor:(id)color
{
  namedCopy = named;
  groupCopy = group;
  nameCopy = name;
  colorCopy = color;
  imageCopy = image;
  v16 = [namedCopy stringByAppendingString:nameCopy];
  if (groupCopy)
  {
    v17 = [(UIStatusBarForegroundStyleAttributes *)self expandedNameForImageName:namedCopy];

    if (colorCopy)
    {
      styleString = [colorCopy styleString];
      v19 = [v17 stringByAppendingString:styleString];

      v17 = v19;
    }

    v20 = [nameCopy stringByAppendingString:groupCopy];

    v21 = +[UIStatusBarCache sharedInstance];
    [v21 removeImagesInGroup:v20];

    nameCopy = v20;
    v16 = v17;
  }

  v22 = +[UIStatusBarCache sharedInstance];
  [v22 cacheImage:imageCopy named:v16 forGroup:nameCopy];
}

- (void)cacheImage:(id)image named:(id)named inTempGroup:(id)group
{
  imageCopy = image;
  namedCopy = named;
  groupCopy = group;
  v11 = _cacheAccessQueue();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__UIStatusBarForegroundStyleAttributes_cacheImage_named_inTempGroup___block_invoke;
  v15[3] = &unk_1E70F6B40;
  v15[4] = self;
  v16 = imageCopy;
  v17 = namedCopy;
  v18 = groupCopy;
  v12 = groupCopy;
  v13 = namedCopy;
  v14 = imageCopy;
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

- (id)uncachedImageNamed:(id)named
{
  v4 = [(UIStatusBarForegroundStyleAttributes *)self expandedNameForImageName:named];
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

- (id)untintedImageNamed:(id)named
{
  namedCopy = named;
  if (namedCopy)
  {
    v5 = [(UIStatusBarForegroundStyleAttributes *)self expandedNameForImageName:namedCopy];
    v6 = [(UIStatusBarForegroundStyleAttributes *)self _cachedImageNamed:v5];
    if (!v6)
    {
      v7 = [(UIStatusBarForegroundStyleAttributes *)self uncachedImageNamed:namedCopy];
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

- (id)imageNamed:(id)named
{
  namedCopy = named;
  tintColor = [(UIStatusBarForegroundStyleAttributes *)self tintColor];
  if (tintColor)
  {
    v6 = [(UIStatusBarForegroundStyleAttributes *)self expandedNameForImageName:namedCopy];
    styleString = [tintColor styleString];
    v8 = [v6 stringByAppendingString:styleString];

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

  v10 = [(UIStatusBarForegroundStyleAttributes *)self untintedImageNamed:namedCopy];
  v9 = v10;
  if (tintColor && v10)
  {
    v11 = [v10 _flatImageWithColor:tintColor];

    [(UIStatusBarForegroundStyleAttributes *)self _cacheImage:v11 named:v8];
    v9 = v11;
  }

LABEL_8:

  return v9;
}

- (id)accessibilityHUDImageNamed:(id)named
{
  v3 = [@"Black_" stringByAppendingString:named];
  v4 = [v3 stringByAppendingString:@".png"];

  v5 = [UIImage kitImageNamed:v4];

  return v5;
}

- (id)imageNamed:(id)named withLegibilityStyle:(int64_t)style legibilityStrength:(double)strength
{
  isTintColorBlack = self->_isTintColorBlack;
  namedCopy = named;
  if (isTintColorBlack)
  {
    [(UIStatusBarForegroundStyleAttributes *)self untintedImageNamed:namedCopy];
  }

  else
  {
    [(UIStatusBarForegroundStyleAttributes *)self imageNamed:namedCopy];
  }
  v10 = ;
  v11 = [(UIStatusBarForegroundStyleAttributes *)self expandedNameForImageName:namedCopy];

  v12 = [(UIStatusBarForegroundStyleAttributes *)self shadowImageForImage:v10 withIdentifier:v11 forStyle:style withStrength:strength];

  v13 = [_UILegibilityImageSet imageFromImage:v10 withShadowImage:v12];

  return v13;
}

- (id)shadowImageForImage:(id)image withIdentifier:(id)identifier forStyle:(int64_t)style withStrength:(double)strength inTempGroup:(id)group shouldCache:(BOOL)cache
{
  cacheCopy = cache;
  imageCopy = image;
  groupCopy = group;
  v16 = 0;
  if (imageCopy && style)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"shadow_%@_%d_%.2f", identifier, style, *&strength];
    if (!cacheCopy || ([(UIStatusBarForegroundStyleAttributes *)self cachedImageNamed:v17 inTempGroup:groupCopy], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v18 = [[_UILegibilitySettings alloc] initWithStyle:style];
      v16 = [imageCopy _imageForLegibilitySettings:v18 strength:strength];
      if (v16)
      {
        v19 = !cacheCopy;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        [(UIStatusBarForegroundStyleAttributes *)self cacheImage:v16 named:v17 inTempGroup:groupCopy];
      }
    }
  }

  return v16;
}

- (id)imageIdWithText:(id)text forWidth:(double)width lineBreakMode:(int64_t)mode letterSpacing:(double)spacing style:(int64_t)style
{
  v12 = MEMORY[0x1E696AEC0];
  v13 = [(UIStatusBarForegroundStyleAttributes *)self expandedNameForImageName:text];
  v14 = [(UIStatusBarForegroundStyleAttributes *)self textColorForStyle:style];
  styleString = [v14 styleString];
  idiom = [(UIStatusBarForegroundStyleAttributes *)self idiom];
  [(UIStatusBarForegroundStyleAttributes *)self scale];
  v18 = [v12 stringWithFormat:@"%@_%d_%.2f_%d_%@_%ld-%.2f", v13, mode, *&spacing, style, styleString, idiom, v17];

  if (width != 1.79769313e308)
  {
    v19 = [v18 stringByAppendingFormat:@"_%.2f", *&width];

    v18 = v19;
  }

  return v18;
}

- (id)imageWithText:(id)text ofItemType:(int)type forWidth:(double)width lineBreakMode:(int64_t)mode letterSpacing:(double)spacing textAlignment:(int64_t)alignment style:(int64_t)style withLegibilityStyle:(int64_t)self0 legibilityStrength:(double)self1 shouldCache:(BOOL)self2
{
  v19 = *&type;
  textCopy = text;
  if ([textCopy length])
  {
    legibilityStyleCopy = legibilityStyle;
    v22 = [(UIStatusBarForegroundStyleAttributes *)self imageIdWithText:textCopy forWidth:mode lineBreakMode:style letterSpacing:width style:spacing];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TempText%d", v19];
    v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TempTextShadow%d", v19];
    if (!cache || ([(UIStatusBarForegroundStyleAttributes *)self cachedImageNamed:v22 inTempGroup:v23], (v24 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v25 = [(UIStatusBarForegroundStyleAttributes *)self textFontForStyle:style];
      [textCopy sizeWithFont:v25 forWidth:mode lineBreakMode:width letterSpacing:spacing];
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

      [(UIStatusBarForegroundStyleAttributes *)self drawText:textCopy forWidth:mode lineBreakMode:alignment letterSpacing:style textAlignment:width style:spacing textSize:v27 textHeight:v31, v29];
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
      if (cache)
      {
        [(UIStatusBarForegroundStyleAttributes *)self cacheImage:v24 named:v22 inTempGroup:v23];
      }
    }

    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v44 = [textCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];
    v45 = [v44 length];

    if (v45)
    {
      selfCopy = self;
      v47 = v51;
      v32 = [(UIStatusBarForegroundStyleAttributes *)selfCopy shadowImageForImage:v24 withIdentifier:v22 forStyle:legibilityStyleCopy withStrength:v51 inTempGroup:cache shouldCache:strength];
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

- (id)cachedImageWithText:(id)text forWidth:(double)width lineBreakMode:(int64_t)mode letterSpacing:(double)spacing textAlignment:(int64_t)alignment style:(int64_t)style itemType:(int)type
{
  v9 = *&type;
  textCopy = text;
  if ([textCopy length])
  {
    v16 = [(UIStatusBarForegroundStyleAttributes *)self imageIdWithText:textCopy forWidth:mode lineBreakMode:style letterSpacing:width style:spacing];
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

- (id)textFontForStyle:(int64_t)style
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v6 = [(NSMutableDictionary *)self->_cachedFonts objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = [(UIStatusBarForegroundStyleAttributes *)self makeTextFontForStyle:style];
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

- (BOOL)_shouldUseBoldFontForStyle:(int64_t)style
{
  if (style > 2)
  {
    return 1;
  }

  [(UIStatusBarForegroundStyleAttributes *)self scale:v3];
  return v6 < 1.5;
}

- (id)makeTextFontForStyle:(int64_t)style
{
  if ([(UIStatusBarForegroundStyleAttributes *)self idiom]== 1)
  {
    v5 = [off_1E70ECC18 systemFontOfSize:12.0 weight:*off_1E70ECD20];
  }

  else
  {
    v6 = 12.0;
    if (style == 2)
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

    if ([(UIStatusBarForegroundStyleAttributes *)self _shouldUseBoldFontForStyle:style])
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

- (double)baselineOffsetForStyle:(int64_t)style
{
  v5 = [(UIStatusBarForegroundStyleAttributes *)self textFontForStyle:?];
  [@"A" sizeWithFont:v5 forWidth:2 lineBreakMode:1.79769313e308 letterSpacing:0.0];
  v7 = v6;
  [(UIStatusBarForegroundStyleAttributes *)self height];
  v9 = v8;
  [(UIStatusBarForegroundStyleAttributes *)self textOffsetForStyle:style];
  v11 = v7 + v10 + -1.0 + floor((v9 - v7) * 0.5);
  [v5 descender];
  v13 = v12 + v11;

  return v13;
}

- (id)textForNetworkType:(int)type
{
  v3 = 0;
  if (type <= 6)
  {
    switch(type)
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

  if (type > 8)
  {
    if (type == 9)
    {
      v4 = @"LTE-A";
    }

    else
    {
      if (type != 10)
      {
        goto LABEL_18;
      }

      v4 = @"LTE+";
    }

    goto LABEL_16;
  }

  if (type == 7)
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

- (double)sizeForMoonMaskVisible:(BOOL)visible
{
  visibleCopy = visible;
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

  if (!visibleCopy)
  {
    return 11.0;
  }

  return result;
}

- (CGPoint)positionForMoonMaskInBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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
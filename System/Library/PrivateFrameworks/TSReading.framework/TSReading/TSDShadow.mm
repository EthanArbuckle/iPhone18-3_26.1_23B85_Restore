@interface TSDShadow
+ (TSDShadow)shadowWithAngle:(double)angle offset:(double)offset radius:(double)radius opacity:(double)opacity color:(CGColor *)color enabled:(BOOL)enabled;
+ (TSDShadow)shadowWithNSShadow:(id)shadow;
+ (id)contactShadowWithAngle:(double)angle offset:(double)offset radius:(double)radius height:(double)height opacity:(double)opacity color:(CGColor *)color enabled:(BOOL)enabled;
+ (id)curvedShadowWithOffset:(double)offset angle:(double)angle radius:(double)radius curve:(double)curve opacity:(double)opacity color:(CGColor *)color enabled:(BOOL)enabled;
+ (id)mixableObjectClasses;
+ (id)p_defaultShadowEnabled:(BOOL)enabled;
+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(int)alternate;
- (BOOL)differenceRequiresRebuilding:(id)rebuilding;
- (BOOL)isEqual:(id)equal;
- (CGImage)i_newEmptyImageWithSize:(CGSize)size;
- (CGPoint)offsetDelta;
- (CGRect)boundsForRep:(id)rep;
- (CGRect)boundsInNaturalSpaceForRep:(id)rep;
- (CGRect)shadowBoundsForRect:(CGRect)rect;
- (CGRect)shadowBoundsForRect:(CGRect)rect additionalAngle:(double)angle;
- (CGRect)shadowBoundsForRect:(CGRect)rect additionalTransform:(CGAffineTransform *)transform;
- (TSUColor)TSUColor;
- (id)NSShadow;
- (id)description;
- (id)i_initWithOpacity:(double)opacity color:(CGColor *)color enabled:(BOOL)enabled;
- (id)mixedBaseObjectWithObject:(id)object;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)mutableCopy;
- (id)shadowByTransformingByTransform:(CGAffineTransform *)transform;
- (id)typeDescription;
- (int64_t)mixingTypeWithObject:(id)object;
- (void)applyToContext:(CGContext *)context viewScale:(double)scale flipped:(BOOL)flipped extraOffset:(CGSize)offset;
- (void)dealloc;
@end

@implementation TSDShadow

+ (id)p_defaultShadowEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  DeviceRGB = TSUCGColorCreateDeviceRGB();
  if (DeviceRGB)
  {
    v5 = DeviceRGB;
    v6 = [[TSDDropShadow alloc] initWithAngle:DeviceRGB offset:enabledCopy radius:315.0 opacity:5.0 color:1.0 enabled:1.0];
    CGColorRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (TSDShadow)shadowWithAngle:(double)angle offset:(double)offset radius:(double)radius opacity:(double)opacity color:(CGColor *)color enabled:(BOOL)enabled
{
  v8 = [[TSDDropShadow alloc] initWithAngle:color offset:enabled radius:angle opacity:offset color:radius enabled:opacity];

  return v8;
}

+ (id)contactShadowWithAngle:(double)angle offset:(double)offset radius:(double)radius height:(double)height opacity:(double)opacity color:(CGColor *)color enabled:(BOOL)enabled
{
  v9 = [[TSDContactShadow alloc] initWithOffset:color height:enabled radius:offset opacity:height color:radius enabled:opacity];

  return v9;
}

+ (TSDShadow)shadowWithNSShadow:(id)shadow
{
  [shadow shadowOffset];
  v5 = v4;
  v7 = v6;
  shadowColor = [shadow shadowColor];
  v9 = -v7;
  v10 = TSDAngleFromDelta(v5, v9) * 57.2957795;
  v11 = TSDDistance(*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v5, v9);
  [shadow shadowBlurRadius];
  v13 = v12;
  [objc_msgSend(MEMORY[0x277D6C2A8] colorWithCGColor:{shadowColor), "alphaComponent"}];
  v15 = v14;
  CopyWithAlpha = CGColorCreateCopyWithAlpha(shadowColor, 1.0);
  v17 = [TSDShadow shadowWithAngle:CopyWithAlpha offset:1 radius:v10 opacity:v11 color:v13 enabled:v15];
  CGColorRelease(CopyWithAlpha);
  return v17;
}

+ (id)curvedShadowWithOffset:(double)offset angle:(double)angle radius:(double)radius curve:(double)curve opacity:(double)opacity color:(CGColor *)color enabled:(BOOL)enabled
{
  v9 = [[TSDCurvedShadow alloc] initWithOffset:color angle:enabled radius:offset curve:angle opacity:radius color:curve enabled:opacity];

  return v9;
}

- (id)mutableCopy
{
  v3 = [(TSDShadow *)self zone];

  return [(TSDShadow *)self mutableCopyWithZone:v3];
}

- (void)dealloc
{
  CGColorRelease(self->mColor);
  v3.receiver = self;
  v3.super_class = TSDShadow;
  [(TSDShadow *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v18) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (-[TSDShadow angle](self, "angle"), v6 = v5, [equal angle], v6 == v7) && (-[TSDShadow offset](self, "offset"), v9 = v8, objc_msgSend(equal, "offset"), v9 == v10) && (-[TSDShadow radius](self, "radius"), v12 = v11, objc_msgSend(equal, "radius"), v12 == v13) && (-[TSDShadow opacity](self, "opacity"), v15 = v14, objc_msgSend(equal, "opacity"), v15 == v16) && (v17 = -[TSDShadow isEnabled](self, "isEnabled"), v17 == objc_msgSend(equal, "isEnabled")))
    {
      v18 = CGColorEqualToColor(-[TSDShadow color](self, "color"), [equal color]);
      if (v18)
      {
        shadowType = [(TSDShadow *)self shadowType];
        LOBYTE(v18) = shadowType == [equal shadowType];
      }
    }

    else
    {
      LOBYTE(v18) = 0;
    }
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self->mEnabled)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@ %p: angle=%g offset=%g radius=%g opacity=%g color=%p enabled=%@ type=%@>", v5, self, *&self->mAngle, *&self->mRadius, *&self->mOpacity, self->mColor, v6, -[TSDShadow typeDescription](self, "typeDescription")];
}

- (id)typeDescription
{
  shadowType = [(TSDShadow *)self shadowType];
  if (shadowType > 3)
  {
    return 0;
  }

  else
  {
    return off_279D48AD8[shadowType];
  }
}

- (CGPoint)offsetDelta
{
  v8 = 0.0;
  v9 = 0.0;
  [(TSDShadow *)self offset];
  v4 = v3;
  [(TSDShadow *)self angle];
  TSDOriginRotate(&v8, v4, v5 * 0.0174532925);
  v6 = v8;
  v7 = v9;
  result.y = v7;
  result.x = v6;
  return result;
}

- (TSUColor)TSUColor
{
  v2 = MEMORY[0x277D6C2A8];
  color = [(TSDShadow *)self color];

  return [v2 colorWithCGColor:color];
}

- (void)applyToContext:(CGContext *)context viewScale:(double)scale flipped:(BOOL)flipped extraOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
  flippedCopy = flipped;
  if ([(TSDShadow *)self isEnabled])
  {
    v29 = 0.0;
    v30 = 0.0;
    [(TSDShadow *)self angle];
    if (flippedCopy)
    {
      v13 = v12;
    }

    else
    {
      v13 = -v12;
    }

    IsCALayerContext = TSDCGContextIsCALayerContext(context);
    v15 = TSDCGContextAssociatedScreenScale(context);
    v16 = v15;
    if (IsCALayerContext)
    {
      width = TSDMultiplySizeScalar(width, height, 1.0 / v15);
      height = v17;
      v16 = 1.0;
    }

    [(TSDShadow *)self radius];
    v19 = v16 * (v18 * scale);
    [(TSDShadow *)self offset];
    TSDOriginRotate(&v29, v16 * (v20 * scale), v13 * 0.0174532925);
    v31.width = width;
    v31.height = height;
    v21 = CGContextConvertSizeToDeviceSpace(context, v31);
    v22 = v29 + v21.width;
    v23 = v21.height + v30;
    color = [(TSDShadow *)self color];
    [(TSDShadow *)self opacity];
    v26 = v25;
    Alpha = CGColorGetAlpha([(TSDShadow *)self color]);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(color, v26 * Alpha);
    v32.width = v22;
    v32.height = v23;
    CGContextSetShadowWithColor(context, v32, v19, CopyWithAlpha);
    CGColorRelease(CopyWithAlpha);
  }
}

- (CGRect)boundsInNaturalSpaceForRep:(id)rep
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)boundsForRep:(id)rep
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)shadowBoundsForRect:(CGRect)rect additionalTransform:(CGAffineTransform *)transform
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(TSDShadow *)self isEnabled])
  {
    [(TSDShadow *)self radius];
    v11 = -v10;
    [(TSDShadow *)self radius];
    v13 = -v12;
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v30 = CGRectInset(v29, v11, v13);
    v14 = v30.origin.x;
    v15 = v30.origin.y;
    v16 = v30.size.width;
    v17 = v30.size.height;
    [(TSDShadow *)self offsetDelta];
    v18 = *&transform->c;
    v28[0] = *&transform->a;
    v28[1] = v18;
    v28[2] = *&transform->tx;
    v21 = TSDDeltaApplyAffineTransform(v28, v19, v20);
    v23 = v22;
    v31.origin.x = v14;
    v31.origin.y = v15;
    v31.size.width = v16;
    v31.size.height = v17;
    v35 = CGRectOffset(v31, v21, v23);
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v33 = CGRectUnion(v32, v35);
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;
  }

  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)shadowBoundsForRect:(CGRect)rect
{
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v8[0] = *MEMORY[0x277CBF2C0];
  v8[1] = v3;
  v8[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(TSDShadow *)self shadowBoundsForRect:v8 additionalTransform:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)shadowBoundsForRect:(CGRect)rect additionalAngle:(double)angle
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGAffineTransformMakeRotation(&v13, angle * 0.0174532925);
  [(TSDShadow *)self shadowBoundsForRect:&v13 additionalTransform:x, y, width, height];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (BOOL)differenceRequiresRebuilding:(id)rebuilding
{
  result = 1;
  if (rebuilding)
  {
    [(TSDShadow *)self radius];
    v6 = v5;
    [rebuilding radius];
    if (v6 == v7)
    {
      [(TSDShadow *)self opacity];
      v9 = v8;
      [rebuilding opacity];
      if (v9 == v10 && CGColorEqualToColor(-[TSDShadow color](self, "color"), [rebuilding color]))
      {
        isEnabled = [(TSDShadow *)self isEnabled];
        if (isEnabled == [rebuilding isEnabled])
        {
          return 0;
        }
      }
    }
  }

  return result;
}

+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(int)alternate
{
  if (([kind isEqual:String] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDShadow bootstrapPresetsOfKind:inTheme:alternate:]"];
    [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShadow.m"), 487, @"Attempt to bootstrap shadow presets for kind %@ in theme <%p>.", kind, theme}];
  }

  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:8];
  kindCopy = kind;
  if (alternate >= 7)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDShadow bootstrapPresetsOfKind:inTheme:alternate:]"];
    [currentHandler2 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShadow.m"), 507, @"invalid theme alternate value"}];
    v11 = 0;
  }

  else
  {
    v11 = *(&off_279D48AF8 + alternate);
  }

  v14 = 0;
  v15 = v11 + 32;
  do
  {
    v17 = *(v15 - 32);
    v16 = *(v15 - 24);
    v18 = *(v15 - 16);
    v19 = *(v15 - 8);
    v20 = *(v15 + 16);
    v21 = *(v15 + 24);
    v22 = [objc_msgSend(MEMORY[0x277D6C2A8] colorWithRed:*v15 green:*(v15 + 4) blue:*(v15 + 8) alpha:{*(v15 + 12)), "CGColor"}];
    if (v14 > 3)
    {
      if (v14 > 5)
      {
        v23 = [[TSDContactShadow alloc] initWithOffset:v22 height:v20 & 1 radius:v16 opacity:v21 color:v18 enabled:v19];
      }

      else
      {
        v23 = [[TSDCurvedShadow alloc] initWithOffset:v22 angle:v20 & 1 radius:v16 curve:v17 opacity:v18 color:v21 enabled:v19];
      }
    }

    else
    {
      v23 = [[TSDDropShadow alloc] initWithAngle:v22 offset:v20 & 1 radius:v17 opacity:v16 color:v18 enabled:v19];
    }

    v24 = v23;
    [v10 addObject:v23];

    ++v14;
    v15 += 64;
  }

  while (v14 != 8);
  v25 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v10];
  [theme setPresets:v25 ofKind:kindCopy];
}

+ (id)mixableObjectClasses
{
  v3[3] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:3];
}

- (int64_t)mixingTypeWithObject:(id)object
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShadow mixingTypeWithObject:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShadow.m"), 591, @"Implement me in subclass!"}];
  return 1;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShadow mixedObjectWithFraction:ofObject:]"];
  [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShadow.m"), 597, @"Implement me in subclass!"}];
  return 0;
}

- (id)mixedBaseObjectWithObject:(id)object
{
  if ([(TSDShadow *)self isEnabled])
  {
    return self;
  }

  else
  {
    return object;
  }
}

- (id)shadowByTransformingByTransform:(CGAffineTransform *)transform
{
  v4 = fmin(transform->a, transform->d);
  v5 = [(TSDShadow *)self mutableCopy];
  [(TSDShadow *)self radius];
  [v5 setRadius:floor(v4 * v6)];
  [(TSDShadow *)self offset];
  [v5 setOffset:floor(v4 * v7)];
  return v5;
}

- (id)NSShadow
{
  if ([(TSDShadow *)self isEnabled])
  {
    v3 = objc_alloc_init(MEMORY[0x277D74258]);
    [(TSDShadow *)self angle];
    v5 = v4 * 0.0174532925;
    [(TSDShadow *)self offset];
    v7 = v6;
    v8 = TSDDeltaFromAngle(v5);
    [v3 setShadowOffset:{TSDMultiplyPointScalar(v8, -v9, v7)}];
    [(TSDShadow *)self radius];
    [v3 setShadowBlurRadius:?];
    color = [(TSDShadow *)self color];
    [(TSDShadow *)self opacity];
    v12 = v11;
    Alpha = CGColorGetAlpha(color);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(color, v12 * Alpha);
    if (!CopyWithAlpha)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShadow NSShadow]"];
      [currentHandler handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShadow.m"), 640, @"invalid nil value for '%s'", "color"}];
    }

    [v3 setShadowColor:CopyWithAlpha];
    CGColorRelease(CopyWithAlpha);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)i_initWithOpacity:(double)opacity color:(CGColor *)color enabled:(BOOL)enabled
{
  if (!color)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShadow(Internal) i_initWithOpacity:color:enabled:]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShadow-Internal.m"), 21, @"invalid nil value for '%s'", "color"}];
  }

  v16.receiver = self;
  v16.super_class = TSDShadow;
  v11 = [(TSDShadow *)&v16 init];
  v12 = v11;
  if (v11)
  {
    [(TSDShadow *)v11 clampOpacity:opacity];
    v12->mOpacity = v13;
    if (color)
    {
      v14 = CGColorRetain(color);
    }

    else
    {
      v14 = 0;
    }

    v12->mColor = v14;
    v12->mEnabled = enabled;
  }

  return v12;
}

- (CGImage)i_newEmptyImageWithSize:(CGSize)size
{
  v3 = TSDBitmapContextCreate(3, size.width);
  Image = CGBitmapContextCreateImage(v3);
  CGContextRelease(v3);
  return Image;
}

@end
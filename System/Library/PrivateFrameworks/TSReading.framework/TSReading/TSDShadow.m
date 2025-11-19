@interface TSDShadow
+ (TSDShadow)shadowWithAngle:(double)a3 offset:(double)a4 radius:(double)a5 opacity:(double)a6 color:(CGColor *)a7 enabled:(BOOL)a8;
+ (TSDShadow)shadowWithNSShadow:(id)a3;
+ (id)contactShadowWithAngle:(double)a3 offset:(double)a4 radius:(double)a5 height:(double)a6 opacity:(double)a7 color:(CGColor *)a8 enabled:(BOOL)a9;
+ (id)curvedShadowWithOffset:(double)a3 angle:(double)a4 radius:(double)a5 curve:(double)a6 opacity:(double)a7 color:(CGColor *)a8 enabled:(BOOL)a9;
+ (id)mixableObjectClasses;
+ (id)p_defaultShadowEnabled:(BOOL)a3;
+ (void)bootstrapPresetsOfKind:(id)a3 inTheme:(id)a4 alternate:(int)a5;
- (BOOL)differenceRequiresRebuilding:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGImage)i_newEmptyImageWithSize:(CGSize)a3;
- (CGPoint)offsetDelta;
- (CGRect)boundsForRep:(id)a3;
- (CGRect)boundsInNaturalSpaceForRep:(id)a3;
- (CGRect)shadowBoundsForRect:(CGRect)a3;
- (CGRect)shadowBoundsForRect:(CGRect)a3 additionalAngle:(double)a4;
- (CGRect)shadowBoundsForRect:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4;
- (TSUColor)TSUColor;
- (id)NSShadow;
- (id)description;
- (id)i_initWithOpacity:(double)a3 color:(CGColor *)a4 enabled:(BOOL)a5;
- (id)mixedBaseObjectWithObject:(id)a3;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopy;
- (id)shadowByTransformingByTransform:(CGAffineTransform *)a3;
- (id)typeDescription;
- (int64_t)mixingTypeWithObject:(id)a3;
- (void)applyToContext:(CGContext *)a3 viewScale:(double)a4 flipped:(BOOL)a5 extraOffset:(CGSize)a6;
- (void)dealloc;
@end

@implementation TSDShadow

+ (id)p_defaultShadowEnabled:(BOOL)a3
{
  v3 = a3;
  DeviceRGB = TSUCGColorCreateDeviceRGB();
  if (DeviceRGB)
  {
    v5 = DeviceRGB;
    v6 = [[TSDDropShadow alloc] initWithAngle:DeviceRGB offset:v3 radius:315.0 opacity:5.0 color:1.0 enabled:1.0];
    CGColorRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (TSDShadow)shadowWithAngle:(double)a3 offset:(double)a4 radius:(double)a5 opacity:(double)a6 color:(CGColor *)a7 enabled:(BOOL)a8
{
  v8 = [[TSDDropShadow alloc] initWithAngle:a7 offset:a8 radius:a3 opacity:a4 color:a5 enabled:a6];

  return v8;
}

+ (id)contactShadowWithAngle:(double)a3 offset:(double)a4 radius:(double)a5 height:(double)a6 opacity:(double)a7 color:(CGColor *)a8 enabled:(BOOL)a9
{
  v9 = [[TSDContactShadow alloc] initWithOffset:a8 height:a9 radius:a4 opacity:a6 color:a5 enabled:a7];

  return v9;
}

+ (TSDShadow)shadowWithNSShadow:(id)a3
{
  [a3 shadowOffset];
  v5 = v4;
  v7 = v6;
  v8 = [a3 shadowColor];
  v9 = -v7;
  v10 = TSDAngleFromDelta(v5, v9) * 57.2957795;
  v11 = TSDDistance(*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v5, v9);
  [a3 shadowBlurRadius];
  v13 = v12;
  [objc_msgSend(MEMORY[0x277D6C2A8] colorWithCGColor:{v8), "alphaComponent"}];
  v15 = v14;
  CopyWithAlpha = CGColorCreateCopyWithAlpha(v8, 1.0);
  v17 = [TSDShadow shadowWithAngle:CopyWithAlpha offset:1 radius:v10 opacity:v11 color:v13 enabled:v15];
  CGColorRelease(CopyWithAlpha);
  return v17;
}

+ (id)curvedShadowWithOffset:(double)a3 angle:(double)a4 radius:(double)a5 curve:(double)a6 opacity:(double)a7 color:(CGColor *)a8 enabled:(BOOL)a9
{
  v9 = [[TSDCurvedShadow alloc] initWithOffset:a8 angle:a9 radius:a3 curve:a4 opacity:a5 color:a6 enabled:a7];

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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v18) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (-[TSDShadow angle](self, "angle"), v6 = v5, [a3 angle], v6 == v7) && (-[TSDShadow offset](self, "offset"), v9 = v8, objc_msgSend(a3, "offset"), v9 == v10) && (-[TSDShadow radius](self, "radius"), v12 = v11, objc_msgSend(a3, "radius"), v12 == v13) && (-[TSDShadow opacity](self, "opacity"), v15 = v14, objc_msgSend(a3, "opacity"), v15 == v16) && (v17 = -[TSDShadow isEnabled](self, "isEnabled"), v17 == objc_msgSend(a3, "isEnabled")))
    {
      v18 = CGColorEqualToColor(-[TSDShadow color](self, "color"), [a3 color]);
      if (v18)
      {
        v19 = [(TSDShadow *)self shadowType];
        LOBYTE(v18) = v19 == [a3 shadowType];
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
  v2 = [(TSDShadow *)self shadowType];
  if (v2 > 3)
  {
    return 0;
  }

  else
  {
    return off_279D48AD8[v2];
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
  v3 = [(TSDShadow *)self color];

  return [v2 colorWithCGColor:v3];
}

- (void)applyToContext:(CGContext *)a3 viewScale:(double)a4 flipped:(BOOL)a5 extraOffset:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v8 = a5;
  if ([(TSDShadow *)self isEnabled])
  {
    v29 = 0.0;
    v30 = 0.0;
    [(TSDShadow *)self angle];
    if (v8)
    {
      v13 = v12;
    }

    else
    {
      v13 = -v12;
    }

    IsCALayerContext = TSDCGContextIsCALayerContext(a3);
    v15 = TSDCGContextAssociatedScreenScale(a3);
    v16 = v15;
    if (IsCALayerContext)
    {
      width = TSDMultiplySizeScalar(width, height, 1.0 / v15);
      height = v17;
      v16 = 1.0;
    }

    [(TSDShadow *)self radius];
    v19 = v16 * (v18 * a4);
    [(TSDShadow *)self offset];
    TSDOriginRotate(&v29, v16 * (v20 * a4), v13 * 0.0174532925);
    v31.width = width;
    v31.height = height;
    v21 = CGContextConvertSizeToDeviceSpace(a3, v31);
    v22 = v29 + v21.width;
    v23 = v21.height + v30;
    v24 = [(TSDShadow *)self color];
    [(TSDShadow *)self opacity];
    v26 = v25;
    Alpha = CGColorGetAlpha([(TSDShadow *)self color]);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(v24, v26 * Alpha);
    v32.width = v22;
    v32.height = v23;
    CGContextSetShadowWithColor(a3, v32, v19, CopyWithAlpha);
    CGColorRelease(CopyWithAlpha);
  }
}

- (CGRect)boundsInNaturalSpaceForRep:(id)a3
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

- (CGRect)boundsForRep:(id)a3
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

- (CGRect)shadowBoundsForRect:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v18 = *&a4->c;
    v28[0] = *&a4->a;
    v28[1] = v18;
    v28[2] = *&a4->tx;
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

- (CGRect)shadowBoundsForRect:(CGRect)a3
{
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v8[0] = *MEMORY[0x277CBF2C0];
  v8[1] = v3;
  v8[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(TSDShadow *)self shadowBoundsForRect:v8 additionalTransform:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)shadowBoundsForRect:(CGRect)a3 additionalAngle:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CGAffineTransformMakeRotation(&v13, a4 * 0.0174532925);
  [(TSDShadow *)self shadowBoundsForRect:&v13 additionalTransform:x, y, width, height];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (BOOL)differenceRequiresRebuilding:(id)a3
{
  result = 1;
  if (a3)
  {
    [(TSDShadow *)self radius];
    v6 = v5;
    [a3 radius];
    if (v6 == v7)
    {
      [(TSDShadow *)self opacity];
      v9 = v8;
      [a3 opacity];
      if (v9 == v10 && CGColorEqualToColor(-[TSDShadow color](self, "color"), [a3 color]))
      {
        v11 = [(TSDShadow *)self isEnabled];
        if (v11 == [a3 isEnabled])
        {
          return 0;
        }
      }
    }
  }

  return result;
}

+ (void)bootstrapPresetsOfKind:(id)a3 inTheme:(id)a4 alternate:(int)a5
{
  if (([a3 isEqual:String] & 1) == 0)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDShadow bootstrapPresetsOfKind:inTheme:alternate:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShadow.m"), 487, @"Attempt to bootstrap shadow presets for kind %@ in theme <%p>.", a3, a4}];
  }

  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:8];
  v26 = a3;
  if (a5 >= 7)
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDShadow bootstrapPresetsOfKind:inTheme:alternate:]"];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShadow.m"), 507, @"invalid theme alternate value"}];
    v11 = 0;
  }

  else
  {
    v11 = *(&off_279D48AF8 + a5);
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
  [a4 setPresets:v25 ofKind:v26];
}

+ (id)mixableObjectClasses
{
  v3[3] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:3];
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShadow mixingTypeWithObject:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShadow.m"), 591, @"Implement me in subclass!"}];
  return 1;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShadow mixedObjectWithFraction:ofObject:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShadow.m"), 597, @"Implement me in subclass!"}];
  return 0;
}

- (id)mixedBaseObjectWithObject:(id)a3
{
  if ([(TSDShadow *)self isEnabled])
  {
    return self;
  }

  else
  {
    return a3;
  }
}

- (id)shadowByTransformingByTransform:(CGAffineTransform *)a3
{
  v4 = fmin(a3->a, a3->d);
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
    v10 = [(TSDShadow *)self color];
    [(TSDShadow *)self opacity];
    v12 = v11;
    Alpha = CGColorGetAlpha(v10);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(v10, v12 * Alpha);
    if (!CopyWithAlpha)
    {
      v15 = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShadow NSShadow]"];
      [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShadow.m"), 640, @"invalid nil value for '%s'", "color"}];
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

- (id)i_initWithOpacity:(double)a3 color:(CGColor *)a4 enabled:(BOOL)a5
{
  if (!a4)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShadow(Internal) i_initWithOpacity:color:enabled:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShadow-Internal.m"), 21, @"invalid nil value for '%s'", "color"}];
  }

  v16.receiver = self;
  v16.super_class = TSDShadow;
  v11 = [(TSDShadow *)&v16 init];
  v12 = v11;
  if (v11)
  {
    [(TSDShadow *)v11 clampOpacity:a3];
    v12->mOpacity = v13;
    if (a4)
    {
      v14 = CGColorRetain(a4);
    }

    else
    {
      v14 = 0;
    }

    v12->mColor = v14;
    v12->mEnabled = a5;
  }

  return v12;
}

- (CGImage)i_newEmptyImageWithSize:(CGSize)a3
{
  v3 = TSDBitmapContextCreate(3, a3.width);
  Image = CGBitmapContextCreateImage(v3);
  CGContextRelease(v3);
  return Image;
}

@end
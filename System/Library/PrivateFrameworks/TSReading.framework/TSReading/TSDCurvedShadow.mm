@interface TSDCurvedShadow
+ (id)curvedShadowWithOffset:(double)offset angle:(double)angle radius:(double)radius curve:(double)curve opacity:(double)opacity color:(CGColor *)color enabled:(BOOL)enabled;
- (BOOL)isEqual:(id)equal;
- (CGImage)newShadowImageForRep:(id)rep withSize:(CGSize)size drawSelector:(SEL)selector unflipped:(BOOL)unflipped;
- (CGPoint)boundsShiftForSize:(CGSize)size;
- (CGRect)boundsForRep:(id)rep;
- (CGRect)boundsInNaturalSpaceForRep:(id)rep;
- (CGRect)expandedBoundsForRect:(CGRect)rect;
- (CGRect)shadowBoundsForRect:(CGRect)rect additionalTransform:(CGAffineTransform *)transform;
- (TSDCurvedShadow)initWithOffset:(double)offset angle:(double)angle radius:(double)radius curve:(double)curve opacity:(double)opacity color:(CGColor *)color enabled:(BOOL)enabled;
- (double)getVerticalOffset:(CGSize)offset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)newShadowClampedForSwatches;
- (int64_t)mixingTypeWithObject:(id)object;
@end

@implementation TSDCurvedShadow

+ (id)curvedShadowWithOffset:(double)offset angle:(double)angle radius:(double)radius curve:(double)curve opacity:(double)opacity color:(CGColor *)color enabled:(BOOL)enabled
{
  v9 = [[self alloc] initWithOffset:color angle:enabled radius:offset curve:angle opacity:radius color:curve enabled:opacity];

  return v9;
}

- (TSDCurvedShadow)initWithOffset:(double)offset angle:(double)angle radius:(double)radius curve:(double)curve opacity:(double)opacity color:(CGColor *)color enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (!color)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCurvedShadow initWithOffset:angle:radius:curve:opacity:color:enabled:]"];
    [currentHandler handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCurvedShadow.m"), 50, @"invalid nil value for '%s'", "color"}];
  }

  v20.receiver = self;
  v20.super_class = TSDCurvedShadow;
  result = [(TSDShadow *)&v20 i_initWithOpacity:color color:enabledCopy enabled:opacity];
  if (result)
  {
    result->super.mOffset = offset;
    result->super.mRadius = radius;
    result->mCurve = curve;
    result->super.mAngle = angle;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self->super.mEnabled)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@ %p: angle=%g offset=%g radius=%g opacity=%g color=%p enabled=%@  curve=%f type=%@>", v5, self, *&self->super.mAngle, *&self->super.mOffset, *&self->super.mRadius, *&self->super.mOpacity, self->super.mColor, v6, *&self->mCurve, -[TSDShadow typeDescription](self, "typeDescription")];
}

- (CGRect)expandedBoundsForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(TSDCurvedShadow *)self getVerticalOffset:rect.size.width, rect.size.height];
  v9 = v8;
  [(TSDCurvedShadow *)self paddingForBlur];
  v11 = -v10;
  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;

  return CGRectInset(*&v12, v11, -v9);
}

- (CGPoint)boundsShiftForSize:(CGSize)size
{
  [(TSDCurvedShadow *)self getVerticalOffset:size.width, size.height];
  v5 = v4;
  [(TSDCurvedShadow *)self paddingForBlur];
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (double)getVerticalOffset:(CGSize)offset
{
  v3 = offset.height * 0.3;
  [(TSDCurvedShadow *)self paddingForBlur];
  return v3 + v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSDCurvedShadow allocWithZone:zone];
  [(TSDShadow *)self offset];
  v6 = v5;
  [(TSDShadow *)self angle];
  v8 = v7;
  [(TSDShadow *)self radius];
  v10 = v9;
  [(TSDCurvedShadow *)self curve];
  v12 = v11;
  [(TSDShadow *)self opacity];
  v14 = v13;
  color = [(TSDShadow *)self color];
  isEnabled = [(TSDShadow *)self isEnabled];

  return [(TSDCurvedShadow *)v4 initWithOffset:color angle:isEnabled radius:v6 curve:v8 opacity:v10 color:v12 enabled:v14];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSDMutableCurvedShadow allocWithZone:zone];
  [(TSDShadow *)self offset];
  v6 = v5;
  [(TSDShadow *)self angle];
  v8 = v7;
  [(TSDShadow *)self radius];
  v10 = v9;
  [(TSDCurvedShadow *)self curve];
  v12 = v11;
  [(TSDShadow *)self opacity];
  v14 = v13;
  color = [(TSDShadow *)self color];
  isEnabled = [(TSDShadow *)self isEnabled];

  return [(TSDCurvedShadow *)v4 initWithOffset:color angle:isEnabled radius:v6 curve:v8 opacity:v10 color:v12 enabled:v14];
}

- (id)newShadowClampedForSwatches
{
  [(TSDCurvedShadow *)self curve];
  TSUClamp();
  v4 = v3;
  [(TSDShadow *)self offset];
  TSUClamp();
  v6 = v5;
  v7 = [TSDCurvedShadow alloc];
  [(TSDShadow *)self angle];
  v9 = v8;
  [(TSDShadow *)self radius];
  v11 = v10;
  [(TSDShadow *)self opacity];
  v13 = v12;
  color = [(TSDShadow *)self color];
  isEnabled = [(TSDShadow *)self isEnabled];

  return [(TSDCurvedShadow *)v7 initWithOffset:color angle:isEnabled radius:v6 curve:v9 opacity:v11 color:v4 enabled:v13];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v15 = v6;
    v16 = v5;
    v17 = v3;
    v18 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14.receiver = self;
      v14.super_class = TSDCurvedShadow;
      v9 = [(TSDShadow *)&v14 isEqual:equal];
      if (v9)
      {
        [(TSDCurvedShadow *)self curve];
        v11 = v10;
        [equal curve];
        LOBYTE(v9) = v11 == v12;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (CGRect)shadowBoundsForRect:(CGRect)rect additionalTransform:(CGAffineTransform *)transform
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(TSDShadow *)self isEnabled])
  {
    [(TSDCurvedShadow *)self expandedBoundsForRect:x, y, width, height];
    rect = v9;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(TSDShadow *)self offsetDelta];
    v17 = v16;
    [(TSDShadow *)self offsetDelta];
    v19 = v18;
    v25.origin.x = rect;
    v25.origin.y = v11;
    v25.size.width = v13;
    v25.size.height = v15;
    v29 = CGRectOffset(v25, v17, v19);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v27 = CGRectUnion(v26, v29);
    x = v27.origin.x;
    y = v27.origin.y;
    width = v27.size.width;
    height = v27.size.height;
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)boundsInNaturalSpaceForRep:(id)rep
{
  [objc_msgSend(objc_msgSend(rep "styledLayout")];

  [(TSDCurvedShadow *)self expandedBoundsForRect:0.0, 0.0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)boundsForRep:(id)rep
{
  [objc_msgSend(objc_msgSend(rep "styledLayout")];

  [(TSDCurvedShadow *)self expandedBoundsForRect:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGImage)newShadowImageForRep:(id)rep withSize:(CGSize)size drawSelector:(SEL)selector unflipped:(BOOL)unflipped
{
  unflippedCopy = unflipped;
  height = size.height;
  width = size.width;
  v12 = [MEMORY[0x277D6C2A8] colorWithCGColor:{-[TSDShadow color](self, "color")}];
  if (![+[TSKApplicationDelegate sharedDelegate](TSKApplicationDelegate "sharedDelegate")] || (-[TSDShadow opacity](self, "opacity"), v13 == 0.0) || (objc_msgSend(v12, "alphaComponent"), v14 == 0.0))
  {
LABEL_4:

    return [(TSDShadow *)self i_newEmptyImageWithSize:width, height];
  }

  [(TSDCurvedShadow *)self boundsForRep:rep];
  v17 = v16;
  v19 = v18;
  v21 = TSDBitmapContextCreate(3, v20);
  if (!v21)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCurvedShadow newShadowImageForRep:withSize:drawSelector:unflipped:]"];
    [currentHandler handleFailureInFunction:v26 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCurvedShadow.m"), 235, @"Cannot render curved shadow, the size is too large for the CGContext to render. Returning empty image instead"}];
    goto LABEL_4;
  }

  v22 = v21;
  v23 = TSDBitmapContextCreate(11, width);
  CGContextTranslateCTM(v23, -v17, -v19);
  memset(&v38, 0, sizeof(v38));
  styledLayout = [rep styledLayout];
  if (styledLayout)
  {
    [styledLayout transformInRoot];
  }

  else
  {
    memset(&v38, 0, sizeof(v38));
  }

  transform = v38;
  CGContextConcatCTM(v23, &transform);
  [rep performSelector:selector withObject:v23];
  Image = CGBitmapContextCreateImage(v23);
  if (unflippedCopy)
  {
    memset(&transform, 0, sizeof(transform));
    v28 = [objc_msgSend(rep "layout")];
    if (v28)
    {
      [v28 transform];
      a = transform.a;
      b = transform.b;
      c = transform.c;
      d = transform.d;
    }

    else
    {
      d = 0.0;
      b = 0.0;
      c = 0.0;
      a = 0.0;
      memset(&transform, 0, sizeof(transform));
    }

    if (TSDCrossPoints(a, c, b, d) > 0.0)
    {
      v36.a = -1.0;
      v36.b = 0.0;
      v36.c = 0.0;
      v36.d = 1.0;
      v36.tx = width;
      v36.ty = 0.0;
      CGContextConcatCTM(v22, &v36);
    }

    v36.b = 0.0;
    v36.c = 0.0;
    v36.a = 1.0;
    *&v36.d = xmmword_26CA65110;
    v36.ty = height;
    CGContextConcatCTM(v22, &v36);
  }

  if (!Image)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCurvedShadow newShadowImageForRep:withSize:drawSelector:unflipped:]"];
    [currentHandler2 handleFailureInFunction:v34 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCurvedShadow.m"), 265, @"invalid nil value for '%s'", "imageWithoutShadow"}];
  }

  v35 = CGBitmapContextCreateImage(v22);
  CGContextRelease(v22);
  CGContextRelease(v23);
  CGImageRelease(Image);
  return v35;
}

- (int64_t)mixingTypeWithObject:(id)object
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__TSDCurvedShadow_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = object;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, object, v4);
}

uint64_t __40__TSDCurvedShadow_mixingTypeWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (v2 && ((v3 = v2, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    [*(a1 + 40) curve];
    v5 = v4;
    [v3 curve];
    if (vabdd_f64(v5, v6) >= 0.00999999978)
    {
      return 3;
    }

    [*(a1 + 40) angle];
    v8 = v7;
    [v3 angle];
    if (vabdd_f64(v8, v9) >= 0.00999999978)
    {
      return 3;
    }

    [*(a1 + 40) offset];
    v11 = v10;
    [v3 offset];
    if (vabdd_f64(v11, v12) >= 0.00999999978)
    {
      return 3;
    }

    else
    {
      [*(a1 + 40) radius];
      v14 = v13;
      [v3 radius];
      if (vabdd_f64(v14, v15) >= 0.00999999978)
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }
  }

  else
  {
    objc_opt_class();
    v17 = TSUDynamicCast();
    if (!v17)
    {
      return 1;
    }

    v18 = v17;
    if ([*(a1 + 40) isEnabled] && (objc_msgSend(v18, "isEnabled") & 1) != 0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__TSDCurvedShadow_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = object;
  v5[5] = self;
  *&v5[6] = fraction;
  return TSDMixingMixedObjectWithFraction(self, object, v5);
}

TSDCurvedShadow *__52__TSDCurvedShadow_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  [*(a1 + 40) offset];
  v4 = v3;
  if (v2)
  {
    [v2 offset];
    TSUMix();
    v4 = v5;
    [*(a1 + 40) angle];
    [v2 angle];
    TSUMix();
    v7 = v6;
    [*(a1 + 40) radius];
    [v2 radius];
    TSUMix();
    v9 = v8;
    [*(a1 + 40) curve];
    [v2 curve];
    TSUMix();
    v11 = v10;
    [*(a1 + 40) opacity];
    [v2 opacity];
  }

  else
  {
    [*(a1 + 40) angle];
    v7 = v12;
    [*(a1 + 40) radius];
    v9 = v13;
    [*(a1 + 40) curve];
    v11 = v14;
    [*(a1 + 40) opacity];
  }

  TSUMix();
  v16 = v15;
  v17 = [MEMORY[0x277D6C2A8] colorWithCGColor:{objc_msgSend(*(a1 + 40), "color")}];
  if (v2)
  {
    v18 = v2;
  }

  else
  {
    v18 = *(a1 + 40);
  }

  v19 = [v17 blendedColorWithFraction:objc_msgSend(MEMORY[0x277D6C2A8] ofColor:{"colorWithCGColor:", objc_msgSend(v18, "color")), *(a1 + 48)}];
  if ([*(a1 + 40) isEnabled])
  {
    v20 = 1;
  }

  else
  {
    v20 = [v2 isEnabled];
  }

  v21 = -[TSDCurvedShadow initWithOffset:angle:radius:curve:opacity:color:enabled:]([TSDCurvedShadow alloc], "initWithOffset:angle:radius:curve:opacity:color:enabled:", [v19 CGColor], v20, v4, v7, v9, v11, v16);

  return v21;
}

@end
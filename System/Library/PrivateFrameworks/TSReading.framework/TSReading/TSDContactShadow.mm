@interface TSDContactShadow
+ (id)contactShadowWithOffset:(double)offset height:(double)height radius:(double)radius opacity:(double)opacity color:(CGColor *)color enabled:(BOOL)enabled;
- (BOOL)isEqual:(id)equal;
- (CGImage)newShadowImageForRep:(id)rep withSize:(CGSize)size drawSelector:(SEL)selector unflipped:(BOOL)unflipped;
- (CGImage)newShadowImageFromContext:(CGContext *)context withSize:(CGSize)size bounds:(CGRect)bounds unflipped:(BOOL)unflipped;
- (CGRect)boundsForRep:(id)rep;
- (CGRect)boundsInNaturalSpaceForRep:(id)rep;
- (CGRect)shadowBoundsForRect:(CGRect)rect additionalTransform:(CGAffineTransform *)transform;
- (TSDContactShadow)initWithOffset:(double)offset height:(double)height radius:(double)radius opacity:(double)opacity color:(CGColor *)color enabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)newShadowClampedForSwatches;
- (int64_t)mixingTypeWithObject:(id)object;
@end

@implementation TSDContactShadow

+ (id)contactShadowWithOffset:(double)offset height:(double)height radius:(double)radius opacity:(double)opacity color:(CGColor *)color enabled:(BOOL)enabled
{
  v8 = [[self alloc] initWithOffset:color height:enabled radius:offset opacity:height color:radius enabled:opacity];

  return v8;
}

- (TSDContactShadow)initWithOffset:(double)offset height:(double)height radius:(double)radius opacity:(double)opacity color:(CGColor *)color enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (!color)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDContactShadow initWithOffset:height:radius:opacity:color:enabled:]"];
    [currentHandler handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDContactShadow.m"), 47, @"invalid nil value for '%s'", "color"}];
  }

  v18.receiver = self;
  v18.super_class = TSDContactShadow;
  result = [(TSDShadow *)&v18 i_initWithOpacity:color color:enabledCopy enabled:opacity];
  if (result)
  {
    result->super.mAngle = 0.0;
    result->mHeight = height;
    result->super.mRadius = radius;
    result->super.mOffset = offset;
  }

  return result;
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
      v14.super_class = TSDContactShadow;
      v9 = [(TSDShadow *)&v14 isEqual:equal];
      if (v9)
      {
        [(TSDContactShadow *)self height];
        v11 = v10;
        [equal height];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSDContactShadow allocWithZone:zone];
  [(TSDShadow *)self offset];
  v6 = v5;
  [(TSDContactShadow *)self height];
  v8 = v7;
  [(TSDShadow *)self radius];
  v10 = v9;
  [(TSDShadow *)self opacity];
  v12 = v11;
  color = [(TSDShadow *)self color];
  isEnabled = [(TSDShadow *)self isEnabled];

  return [(TSDContactShadow *)v4 initWithOffset:color height:isEnabled radius:v6 opacity:v8 color:v10 enabled:v12];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSDMutableContactShadow allocWithZone:zone];
  [(TSDShadow *)self offset];
  v6 = v5;
  [(TSDContactShadow *)self height];
  v8 = v7;
  [(TSDShadow *)self radius];
  v10 = v9;
  [(TSDShadow *)self opacity];
  v12 = v11;
  color = [(TSDShadow *)self color];
  isEnabled = [(TSDShadow *)self isEnabled];

  return [(TSDContactShadow *)v4 initWithOffset:color height:isEnabled radius:v6 opacity:v8 color:v10 enabled:v12];
}

- (id)newShadowClampedForSwatches
{
  [(TSDShadow *)self offset];
  TSUClamp();
  v4 = v3;
  [(TSDShadow *)self radius];
  TSUClamp();
  v6 = v5;
  [(TSDContactShadow *)self height];
  TSUClamp();
  v8 = v7;
  v9 = [TSDContactShadow alloc];
  [(TSDShadow *)self opacity];
  v11 = v10;
  color = [(TSDShadow *)self color];
  isEnabled = [(TSDShadow *)self isEnabled];

  return [(TSDContactShadow *)v9 initWithOffset:color height:isEnabled radius:v4 opacity:v8 color:v6 enabled:v11];
}

- (CGRect)shadowBoundsForRect:(CGRect)rect additionalTransform:(CGAffineTransform *)transform
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(TSDShadow *)self isEnabled])
  {
    v10 = *&transform->c;
    *&v34.a = *&transform->a;
    *&v34.c = v10;
    *&v34.tx = *&transform->tx;
    CGAffineTransformInvert(&v35, &v34);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v37 = CGRectApplyAffineTransform(v36, &v35);
    v11 = v37.origin.x;
    v12 = v37.origin.y;
    v13 = v37.size.width;
    v14 = v37.size.height;
    v33 = height;
    MidX = CGRectGetMidX(v37);
    v38.origin.x = v11;
    v38.origin.y = v12;
    v38.size.width = v13;
    v38.size.height = v14;
    v32 = width;
    MaxY = CGRectGetMaxY(v38);
    v39.origin.x = v11;
    v39.origin.y = v12;
    v39.size.width = v13;
    v39.size.height = v14;
    v17 = CGRectGetWidth(v39);
    v18 = TSDRectWithCenterAndSize(MidX, MaxY, v17);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [(TSDShadow *)self offset];
    v26 = v25;
    v40.origin.x = v18;
    v40.origin.y = v20;
    v40.size.width = v22;
    v40.size.height = v24;
    v41 = CGRectOffset(v40, 0.0, v26);
    v42 = CGRectInset(v41, -120.0, 0.0);
    v27 = *&transform->c;
    *&v35.a = *&transform->a;
    *&v35.c = v27;
    *&v35.tx = *&transform->tx;
    v46 = CGRectApplyAffineTransform(v42, &v35);
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = v32;
    v43.size.height = v33;
    v44 = CGRectUnion(v43, v46);
    x = v44.origin.x;
    y = v44.origin.y;
    width = v44.size.width;
    height = v44.size.height;
  }

  v28 = x;
  v29 = y;
  v30 = width;
  v31 = height;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGRect)boundsInNaturalSpaceForRep:(id)rep
{
  [objc_msgSend(rep "styledLayout")];
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  result = CGRectInset(v5, -120.0, 0.0);
  v3 = result.size.height + -75.0;
  v4 = 150.0;
  result.size.height = v4;
  result.origin.y = v3;
  return result;
}

- (CGRect)boundsForRep:(id)rep
{
  [objc_msgSend(rep "styledLayout")];
  result = CGRectInset(v5, -120.0, 0.0);
  v3 = result.origin.y + result.size.height + -75.0;
  v4 = 150.0;
  result.size.height = v4;
  result.origin.y = v3;
  return result;
}

- (CGImage)newShadowImageForRep:(id)rep withSize:(CGSize)size drawSelector:(SEL)selector unflipped:(BOOL)unflipped
{
  unflippedCopy = unflipped;
  height = size.height;
  width = size.width;
  [(TSDContactShadow *)self boundsForRep:?];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if ([+[TSKApplicationDelegate sharedDelegate](TSKApplicationDelegate "sharedDelegate")])
  {
    v20 = TSDBitmapContextCreate(3, v17);
    CGContextTranslateCTM(v20, -v13, -v15);
    CGContextTranslateCTM(v20, 0.0, v19 * 0.5);
    memset(&v25, 0, sizeof(v25));
    styledLayout = [rep styledLayout];
    if (styledLayout)
    {
      [styledLayout transformInRoot];
    }

    else
    {
      memset(&v25, 0, sizeof(v25));
    }

    v24 = v25;
    CGContextConcatCTM(v20, &v24);
    [rep performSelector:selector withObject:v20];
    v23 = [(TSDContactShadow *)self newShadowImageFromContext:v20 withSize:unflippedCopy bounds:width unflipped:height, v13, v15, v17, v19];
    CGContextRelease(v20);
    return v23;
  }

  else
  {

    return [(TSDShadow *)self i_newEmptyImageWithSize:v17, 150.0];
  }
}

- (CGImage)newShadowImageFromContext:(CGContext *)context withSize:(CGSize)size bounds:(CGRect)bounds unflipped:(BOOL)unflipped
{
  width = bounds.size.width;
  height = size.height;
  v7 = size.width;
  v66[4] = *MEMORY[0x277D85DE8];
  v10 = bounds.size.height * 0.5;
  [(TSDShadow *)self radius:context];
  v12 = v11;
  [(TSDShadow *)self radius];
  v14 = v13;
  [(TSDContactShadow *)self height];
  v16 = v15;
  image = CGBitmapContextCreateImage(context);
  v17 = [MEMORY[0x277CBF758] imageWithCGImage:?];
  [objc_msgSend(MEMORY[0x277D6C2A8] colorWithCGColor:{-[TSDShadow color](self, "color")), "getRGBAComponents:", v66}];
  v18 = [MEMORY[0x277CBF750] filterWithName:@"CIAffineTransform"];
  v19 = *MEMORY[0x277CBFAF0];
  [v18 setValue:v17 forKey:*MEMORY[0x277CBFAF0]];
  [(TSDShadow *)self offset];
  TSUClamp();
  memset(&v65, 0, sizeof(v65));
  CGAffineTransformMakeTranslation(&v65, 0.0, -v20 - height * 0.5);
  v64 = v65;
  [v18 setValue:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithCGAffineTransform:", &v64), @"inputTransform"}];
  v21 = [MEMORY[0x277CBF750] filterWithName:@"CIColorMatrix"];
  v22 = *MEMORY[0x277CBFB50];
  [v21 setValue:objc_msgSend(v18 forKey:{"valueForKey:", *MEMORY[0x277CBFB50]), v19}];
  [v21 setValue:objc_msgSend(MEMORY[0x277CBF788] forKey:{"vectorWithX:Y:Z:W:", 0.0, 0.0, 0.0, 0.0), @"inputRVector"}];
  [v21 setValue:objc_msgSend(MEMORY[0x277CBF788] forKey:{"vectorWithX:Y:Z:W:", 0.0, 0.0, 0.0, 0.0), @"inputGVector"}];
  [v21 setValue:objc_msgSend(MEMORY[0x277CBF788] forKey:{"vectorWithX:Y:Z:W:", 0.0, 0.0, 0.0, 0.0), @"inputBVector"}];
  v23 = MEMORY[0x277CBF788];
  v24 = v66[3];
  [(TSDShadow *)self opacity];
  [v21 setValue:objc_msgSend(v23 forKey:{"vectorWithX:Y:Z:W:", 0.0, 0.0, 0.0, v24 * v25), @"inputAVector"}];
  [v21 setValue:objc_msgSend(MEMORY[0x277CBF788] forKey:{"vectorWithX:Y:Z:W:", v66[0], v66[1], v66[2], 0.0), @"inputBiasVector"}];
  v26 = [MEMORY[0x277CBF750] filterWithName:@"CICrop"];
  [v26 setValue:objc_msgSend(v21 forKey:{"valueForKey:", v22), v19}];
  [v26 setValue:objc_msgSend(MEMORY[0x277CBF788] forKey:{"vectorWithX:Y:Z:W:", 0.0, v10 + -20.0, v7, 20.0), @"inputRectangle"}];
  v27 = [MEMORY[0x277CBF750] filterWithName:@"CICrop"];
  [v27 setValue:objc_msgSend(v21 forKey:{"valueForKey:", v22), v19}];
  [v27 setValue:objc_msgSend(MEMORY[0x277CBF788] forKey:{"vectorWithX:Y:Z:W:", 0.0, v10 + -70.0, v7, 70.0), @"inputRectangle"}];
  v28 = [v26 valueForKey:v22];
  [v28 extent];
  if (v29 <= 1.0)
  {
    v32 = [MEMORY[0x277CBF758] imageWithColor:{objc_msgSend(MEMORY[0x277CBF730], "colorWithRed:green:blue:alpha:", 0.0, 0.0, 0.0, 0.0)}];
  }

  else
  {
    v30 = [MEMORY[0x277CBF750] filterWithName:@"CIGaussianBlur"];
    [v30 setValue:v28 forKey:v19];
    *&v31 = fmin(v12 / 3.0, 55.0);
    [v30 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithFloat:", v31), @"inputRadius"}];
    v32 = [v30 valueForKey:v22];
  }

  v33 = v32;
  v34 = [v27 valueForKey:v22];
  [v34 extent];
  if (v35 <= 1.0)
  {
    v38 = [MEMORY[0x277CBF758] imageWithColor:{objc_msgSend(MEMORY[0x277CBF730], "colorWithRed:green:blue:alpha:", 0.0, 0.0, 0.0, 0.0)}];
  }

  else
  {
    v36 = [MEMORY[0x277CBF750] filterWithName:@"CIGaussianBlur"];
    [v36 setValue:v34 forKey:v19];
    *&v37 = fmin(v14, 55.0);
    [v36 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithFloat:", v37), @"inputRadius"}];
    v38 = [v36 valueForKey:v22];
  }

  v39 = v38;
  memset(&v64, 0, sizeof(v64));
  CGAffineTransformMakeTranslation(&v64, 0.0, v10);
  v62 = v64;
  CGAffineTransformScale(&v63, &v62, 1.0, v16);
  v64 = v63;
  v62 = v63;
  CGAffineTransformTranslate(&v63, &v62, 0.0, 10.0 - v10);
  v64 = v63;
  v40 = [MEMORY[0x277CBF750] filterWithName:@"CIAffineTransform"];
  [v40 setValue:v33 forKey:v19];
  v63 = v64;
  [v40 setValue:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithCGAffineTransform:", &v63), @"inputTransform"}];
  memset(&v63, 0, sizeof(v63));
  CGAffineTransformMakeTranslation(&v63, 0.0, v10);
  v61 = v63;
  CGAffineTransformScale(&v62, &v61, 1.0, v16);
  v63 = v62;
  v61 = v62;
  CGAffineTransformTranslate(&v62, &v61, 0.0, 35.0 - v10);
  v63 = v62;
  v41 = [MEMORY[0x277CBF750] filterWithName:@"CIAffineTransform"];
  [v41 setValue:v39 forKey:v19];
  v62 = v63;
  [v41 setValue:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithCGAffineTransform:", &v62), @"inputTransform"}];
  v42 = [MEMORY[0x277CBF750] filterWithName:@"CIColorMatrix"];
  [v42 setDefaults];
  [v42 setValue:objc_msgSend(v41 forKey:{"valueForKey:", v22), v19}];
  [v42 setValue:objc_msgSend(MEMORY[0x277CBF788] forKey:{"vectorWithX:Y:Z:W:", 0.0, 0.0, 0.0, 0.5), @"inputAVector"}];
  v43 = [MEMORY[0x277CBF750] filterWithName:@"CISourceOverCompositing"];
  [v43 setValue:objc_msgSend(v40 forKey:{"valueForKey:", v22), v19}];
  [v43 setValue:objc_msgSend(v42 forKey:{"valueForKey:", v22), @"inputBackgroundImage"}];
  v44 = [v43 valueForKey:v22];
  v45 = [MEMORY[0x277CBF750] filterWithName:@"CIAffineClamp"];
  v46 = *(MEMORY[0x277CBF2C0] + 16);
  *&v62.a = *MEMORY[0x277CBF2C0];
  *&v62.c = v46;
  *&v62.tx = *(MEMORY[0x277CBF2C0] + 32);
  [v45 setValue:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithCGAffineTransform:", &v62), @"inputTransform"}];
  [v45 setValue:v44 forKey:v19];
  v47 = [objc_msgSend(v45 valueForKey:{v22), "imageByCroppingToRect:", 0.0, 0.0, v7, height}];
  memset(&v62, 0, sizeof(v62));
  CGAffineTransformMakeScale(&v62, 1.0, -1.0);
  v60 = v62;
  CGAffineTransformTranslate(&v61, &v60, 0.0, height);
  v62 = v61;
  v48 = [MEMORY[0x277CBF750] filterWithName:@"CIAffineTransform"];
  [v48 setValue:v47 forKey:v19];
  v61 = v62;
  [v48 setValue:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithCGAffineTransform:", &v61), @"inputTransform"}];
  v49 = [MEMORY[0x277CBF740] contextWithOptions:0];
  [v49 outputImageMaximumSize];
  if (v7 >= v51 || height >= v50)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDContactShadow newShadowImageFromContext:withSize:bounds:unflipped:]"];
    [currentHandler handleFailureInFunction:v55 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDContactShadow.m"), 383, @"Cannot render contact shadow, the size is too large for the CIContext to render. Returning empty image instead"}];
    v53 = [(TSDShadow *)self i_newEmptyImageWithSize:width, 150.0];
  }

  else
  {
    v52 = [v48 valueForKey:v22];
    [v52 extent];
    v53 = [v49 createCGImage:v52 fromRect:?];
  }

  v56 = v53;
  CGImageRelease(image);
  return v56;
}

- (int64_t)mixingTypeWithObject:(id)object
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__TSDContactShadow_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = object;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, object, v4);
}

uint64_t __41__TSDContactShadow_mixingTypeWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (v2 && ((v3 = v2, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    [*(a1 + 40) height];
    v5 = v4;
    [v3 height];
    if (vabdd_f64(v5, v6) >= 0.00999999978)
    {
      return 3;
    }

    [*(a1 + 40) perspective];
    v8 = v7;
    [v3 perspective];
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
  v5[2] = __53__TSDContactShadow_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = object;
  v5[5] = self;
  *&v5[6] = fraction;
  return TSDMixingMixedObjectWithFraction(self, object, v5);
}

TSDContactShadow *__53__TSDContactShadow_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
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
    [*(a1 + 40) height];
    [v2 height];
    TSUMix();
    v7 = v6;
    [*(a1 + 40) radius];
    [v2 radius];
    TSUMix();
    v9 = v8;
    [*(a1 + 40) opacity];
    [v2 opacity];
  }

  else
  {
    [*(a1 + 40) height];
    v7 = v10;
    [*(a1 + 40) radius];
    v9 = v11;
    [*(a1 + 40) opacity];
  }

  TSUMix();
  v13 = v12;
  v14 = [MEMORY[0x277D6C2A8] colorWithCGColor:{objc_msgSend(*(a1 + 40), "color")}];
  if (v2)
  {
    v15 = v2;
  }

  else
  {
    v15 = *(a1 + 40);
  }

  v16 = [v14 blendedColorWithFraction:objc_msgSend(MEMORY[0x277D6C2A8] ofColor:{"colorWithCGColor:", objc_msgSend(v15, "color")), *(a1 + 48)}];
  if ([*(a1 + 40) isEnabled])
  {
    v17 = 1;
  }

  else
  {
    v17 = [v2 isEnabled];
  }

  v18 = -[TSDContactShadow initWithOffset:height:radius:opacity:color:enabled:]([TSDContactShadow alloc], "initWithOffset:height:radius:opacity:color:enabled:", [v16 CGColor], v17, v4, v7, v9, v13);

  return v18;
}

@end
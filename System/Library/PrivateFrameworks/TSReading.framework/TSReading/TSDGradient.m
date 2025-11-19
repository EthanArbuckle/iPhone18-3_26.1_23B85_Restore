@interface TSDGradient
+ (id)linearGradientWithGradientStops:(id)a3;
+ (id)linearGradientWithStartColor:(id)a3 endColor:(id)a4;
+ (id)radialGradientWithGradientStops:(id)a3;
+ (id)radialGradientWithStartColor:(id)a3 endColor:(id)a4;
+ (void)bootstrapPresetsOfKind:(id)a3 inTheme:(id)a4 alternate:(int)a5;
- (BOOL)hasAlpha;
- (BOOL)isAdvancedGradientIgnoringFlag;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOpaque;
- (CGAffineTransform)centeredRadialTransformInRect:(SEL)a3;
- (CGContext)p_beginBitmapWrapperContextInContext:(CGContext *)a3 returningIntegralBounds:(CGRect *)a4;
- (CGPoint)endPointForPath:(id)a3 andBounds:(CGRect)a4;
- (CGPoint)startPointForPath:(id)a3 andBounds:(CGRect)a4;
- (CGShading)shadingRef;
- (TSDGradient)init;
- (TSDGradient)initWithGradientStops:(id)a3 type:(unint64_t)a4 opacity:(double)a5;
- (TSDGradient)initWithStartColor:(id)a3 endColor:(id)a4 type:(unint64_t)a5;
- (TSUColor)firstColor;
- (TSUColor)lastColor;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)newColorAtFraction:(double)a3;
- (id)p_insertStopAtFraction:(double)a3;
- (id)p_insertStopAtFraction:(double)a3 withColor:(id)a4;
- (id)p_removeStopAtIndex:(unint64_t)a3;
- (id)stopAfterFraction:(double)a3;
- (id)stopBeforeFraction:(double)a3;
- (int64_t)mixingTypeWithObject:(id)a3;
- (unint64_t)hash;
- (void)colorComponents:(double *)a3 atFraction:(double)a4;
- (void)dealloc;
- (void)p_endBitmapWrapperContext:(CGContext *)a3 inContext:(CGContext *)a4 withIntegralBounds:(CGRect)a5;
- (void)p_evenlyDistributeStops;
- (void)p_insertGradientStop:(id)a3;
- (void)p_moveStopAtIndex:(unint64_t)a3 toFraction:(double)a4;
- (void)p_removeStop:(id)a3;
- (void)p_reverseStopOrder;
- (void)p_setAlpha:(CGContext *)a3;
- (void)p_setColorOfStopAtIndex:(unint64_t)a3 toColor:(id)a4;
- (void)p_setGradientStops:(id)a3;
- (void)p_setInflectionOfStopAtIndex:(unint64_t)a3 toInflection:(double)a4;
- (void)p_swapStopAtIndex:(unint64_t)a3 withStopAtIndex:(unint64_t)a4;
@end

@implementation TSDGradient

- (TSDGradient)init
{
  v4.receiver = self;
  v4.super_class = TSDGradient;
  v2 = [(TSDGradient *)&v4 init];
  if (v2)
  {
    v2->mStops = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v2;
}

- (TSDGradient)initWithGradientStops:(id)a3 type:(unint64_t)a4 opacity:(double)a5
{
  v8 = [(TSDGradient *)self init];
  v9 = v8;
  if (v8)
  {
    mStops = v8->mStops;
    if (mStops)
    {
      [(NSMutableArray *)mStops setArray:a3];
    }

    else
    {
      v9->mStops = [a3 mutableCopy];
    }

    v9->mType = a4;
    v9->mOpacity = a5;
  }

  return v9;
}

- (TSDGradient)initWithStartColor:(id)a3 endColor:(id)a4 type:(unint64_t)a5
{
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:{+[TSDGradientStop gradientStopWithColor:fraction:](TSDGradientStop, "gradientStopWithColor:fraction:", a3, 0.0), +[TSDGradientStop gradientStopWithColor:fraction:](TSDGradientStop, "gradientStopWithColor:fraction:", a4, 1.0), 0}];

  return [(TSDGradient *)self initWithGradientStops:v7 type:a5];
}

- (void)dealloc
{
  [(TSDGradient *)self releaseShadingRef];
  v3.receiver = self;
  v3.super_class = TSDGradient;
  [(TSDGradient *)&v3 dealloc];
}

- (unint64_t)hash
{
  [(NSMutableArray *)self->mStops hash];
  TSUHashWithSeed();
  TSUHashWithSeed();

  return TSUHashWithSeed();
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    objc_opt_class();
    v4 = TSUDynamicCast();
    if (v4)
    {
      v5 = v4;
      if ([v4 gradientType] == self->mType && (objc_msgSend(v5, "opacity"), v6 == self->mOpacity))
      {
        LODWORD(v4) = -[NSMutableArray isEqualToArray:](self->mStops, "isEqualToArray:", [v5 gradientStops]);
        if (v4)
        {
          v7 = [v5 isAdvancedGradient];
          LOBYTE(v4) = v7 ^ [(TSDGradient *)self isAdvancedGradient]^ 1;
        }
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }
  }

  return v4;
}

+ (id)linearGradientWithStartColor:(id)a3 endColor:(id)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithStartColor:a3 endColor:a4 type:0];

  return v4;
}

+ (id)linearGradientWithGradientStops:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithGradientStops:a3 type:0];

  return v3;
}

+ (id)radialGradientWithStartColor:(id)a3 endColor:(id)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithStartColor:a3 endColor:a4 type:1];

  return v4;
}

+ (id)radialGradientWithGradientStops:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithGradientStops:a3 type:1];

  return v3;
}

- (TSUColor)firstColor
{
  v2 = [(NSMutableArray *)self->mStops objectAtIndex:0];

  return [v2 color];
}

- (TSUColor)lastColor
{
  v2 = [(NSMutableArray *)self->mStops lastObject];

  return [v2 color];
}

- (CGShading)shadingRef
{
  v16 = *MEMORY[0x277D85DE8];
  result = self->mShadingRef;
  if (!result)
  {
    v4 = TSUDeviceRGBColorSpace();
    *domain = xmmword_26CA65130;
    range[0] = 0.0;
    v9 = 0;
    v11 = 0;
    range[1] = 1.0;
    v10 = 0x3FF0000000000000;
    v12 = 0x3FF0000000000000;
    v13 = 0;
    v14 = 0x3FF0000000000000;
    *&callbacks.version = 0;
    callbacks.evaluate = p_evaluateGradient;
    callbacks.releaseInfo = _release;
    v5 = CGFunctionCreate([(TSDGradient *)self copy], 1uLL, domain, 4uLL, range, &callbacks);
    if ([(TSDGradient *)self gradientType])
    {
      v17.x = 0.0;
      v17.y = 0.0;
      v20.x = 0.0;
      v20.y = 0.0;
      Radial = CGShadingCreateRadial(v4, v17, 0.0, v20, 100.0, v5, 1, 1);
    }

    else
    {
      v19.x = 100.0;
      v18.x = 0.0;
      v18.y = 0.0;
      v19.y = 0.0;
      Radial = CGShadingCreateAxial(v4, v18, v19, v5, 1, 1);
    }

    self->mShadingRef = Radial;
    CGFunctionRelease(v5);
    return self->mShadingRef;
  }

  return result;
}

- (BOOL)isAdvancedGradientIgnoringFlag
{
  if (self->mType)
  {
    return 1;
  }

  if ([(NSMutableArray *)self->mStops count]!= 2)
  {
    return 1;
  }

  [-[NSMutableArray objectAtIndex:](self->mStops objectAtIndex:{0), "fraction"}];
  if (v4 != 0.0)
  {
    return 1;
  }

  [-[NSMutableArray objectAtIndex:](self->mStops objectAtIndex:{0), "inflection"}];
  if (v5 != 0.5 && fabs(v5 + -0.5) >= 5.0e-11)
  {
    return 1;
  }

  [-[NSMutableArray lastObject](self->mStops "lastObject")];
  return v6 != 1.0;
}

- (id)stopBeforeFraction:(double)a3
{
  v19 = *MEMORY[0x277D85DE8];
  TSUClamp();
  v5 = v4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(NSMutableArray *)self->mStops reverseObjectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v7)
  {
    return [(NSMutableArray *)self->mStops objectAtIndex:0];
  }

  v8 = v7;
  v9 = *v15;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v15 != v9)
    {
      objc_enumerationMutation(v6);
    }

    v11 = *(*(&v14 + 1) + 8 * v10);
    [v11 fraction];
    if (v12 <= v5)
    {
      return v11;
    }

    if (v8 == ++v10)
    {
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        goto LABEL_3;
      }

      return [(NSMutableArray *)self->mStops objectAtIndex:0];
    }
  }
}

- (id)stopAfterFraction:(double)a3
{
  v20 = *MEMORY[0x277D85DE8];
  TSUClamp();
  if (v4 == 1.0)
  {
    mStops = self->mStops;

    return [(NSMutableArray *)mStops lastObject];
  }

  else
  {
    v7 = v4;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = self->mStops;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (!v9)
    {
      return [(NSMutableArray *)self->mStops lastObject];
    }

    v10 = v9;
    v11 = *v16;
LABEL_7:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v15 + 1) + 8 * v12);
      [v13 fraction];
      if (v14 > v7)
      {
        return v13;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          goto LABEL_7;
        }

        return [(NSMutableArray *)self->mStops lastObject];
      }
    }
  }
}

- (id)newColorAtFraction:(double)a3
{
  if (a3 == 0.0)
  {
    v4 = [(TSDGradient *)self firstColor];
LABEL_5:

    return v4;
  }

  if (a3 == 1.0)
  {
    v4 = [(TSDGradient *)self lastColor];
    goto LABEL_5;
  }

  v7 = [(TSDGradient *)self stopBeforeFraction:a3];
  v8 = [(TSDGradient *)self stopAfterFraction:a3];
  if (v7 == v8)
  {
    v4 = [v7 color];
    goto LABEL_5;
  }

  v9 = v8;
  [v7 fraction];
  v11 = v10;
  [v9 fraction];
  v13 = 0.0;
  if (v12 - v11 > 0.001)
  {
    TSUClamp();
    v15 = v14;
    v13 = v14;
    if (+[TSDGradient useInflections])
    {
      [v7 inflection];
      TSUClamp();
      if (v15 >= v16)
      {
        v13 = 0.5;
        if (v16 != 1.0)
        {
          v13 = (v15 - v16) / (1.0 - v16) * 0.5 + 0.5;
        }
      }

      else
      {
        v13 = v15 / v16 * 0.5;
      }
    }
  }

  v17 = [v7 color];
  v18 = [v9 color];

  return [v17 newBlendedColorWithFraction:v18 ofColor:v13];
}

- (void)colorComponents:(double *)a3 atFraction:(double)a4
{
  v6 = [(TSDGradient *)self newColorAtFraction:a4];
  Components = CGColorGetComponents([v6 CGColor]);
  *a3 = *Components;
  a3[1] = Components[1];
  a3[2] = Components[2];
  a3[3] = Components[3];
}

- (CGAffineTransform)centeredRadialTransformInRect:(SEL)a3
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = CGRectGetWidth(a4);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v10 = CGRectGetHeight(v19);
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MidY = CGRectGetMidY(v21);
  CGAffineTransformMakeTranslation(retstr, MidX, MidY);
  CGAffineTransformMakeScale(&t1, v9 * 0.00707106781, v10 * 0.00707106781);
  v13 = *&retstr->c;
  *&v16.a = *&retstr->a;
  *&v16.c = v13;
  *&v16.tx = *&retstr->tx;
  result = CGAffineTransformConcat(&v18, &t1, &v16);
  v15 = *&v18.c;
  *&retstr->a = *&v18.a;
  *&retstr->c = v15;
  *&retstr->tx = *&v18.tx;
  return result;
}

- (BOOL)isOpaque
{
  [(TSDGradient *)self opacity];
  if (v3 == 1.0)
  {
    v4 = [(NSMutableArray *)self->mStops count];
    if (v4)
    {
      v5 = v4;
      v6 = 1;
      do
      {
        v7 = [objc_msgSend(-[NSMutableArray objectAtIndex:](self->mStops objectAtIndex:{v6 - 1), "color"), "isOpaque"}];
        if (v7)
        {
          v8 = v6 >= v5;
        }

        else
        {
          v8 = 1;
        }

        ++v6;
      }

      while (!v8);
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(TSDGradient *)[TSDMutableGradient allocWithZone:?]type:"initWithGradientStops:type:opacity:" opacity:self->mStops, self->mType, self->mOpacity];
  [(TSDGradient *)v4 setIsAdvancedGradient:self->mIsAdvancedGradient];
  return v4;
}

- (BOOL)hasAlpha
{
  v2 = [(NSMutableArray *)self->mStops objectEnumerator];
  do
  {
    v3 = [v2 nextObject];
    v4 = v3;
  }

  while (v3 && CGColorGetAlpha([objc_msgSend(v3 "color")]) == 1.0);
  return v4 != 0;
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__TSDGradient_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = a3;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, a3, v4);
}

uint64_t __36__TSDGradient_mixingTypeWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (!v2)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGradient mixingTypeWithObject:]_block_invoke"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGradient.m"), 538, @"nil object after cast"}];
  }

  v5 = [*(a1 + 40) gradientType];
  if (v5 != [v2 gradientType])
  {
    return 1;
  }

  v6 = [objc_msgSend(*(a1 + 40) "gradientStops")];
  if (v6 != [objc_msgSend(v2 "gradientStops")])
  {
    return 2;
  }

  if (![objc_msgSend(*(a1 + 40) "gradientStops")])
  {
    return 4;
  }

  v7 = 0;
  v8 = 4;
  do
  {
    v8 = TSDMixingTypeBestFromMixingTypes(v8, [objc_msgSend(objc_msgSend(*(a1 + 40) "gradientStops")]);
    ++v7;
  }

  while (v7 < [objc_msgSend(*(a1 + 40) "gradientStops")]);
  return v8;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__TSDGradient_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = a4;
  v5[5] = self;
  *&v5[6] = a3;
  return TSDMixingMixedObjectWithFraction(self, a4, v5);
}

TSDGradient *__48__TSDGradient_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(*(a1 + 40), "gradientStops"), "count")}];
  if ([objc_msgSend(*(a1 + 40) "gradientStops")])
  {
    v4 = 0;
    do
    {
      [v3 addObject:{objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 40), "gradientStops"), "objectAtIndex:", v4), "mixedObjectWithFraction:ofObject:", objc_msgSend(objc_msgSend(v2, "gradientStops"), "objectAtIndex:", v4), *(a1 + 48))}];
      ++v4;
    }

    while (v4 < [objc_msgSend(*(a1 + 40) "gradientStops")]);
  }

  [*(a1 + 40) opacity];
  v6 = v5;
  [v2 opacity];
  v8 = -[TSDGradient initWithGradientStops:type:opacity:]([TSDGradient alloc], "initWithGradientStops:type:opacity:", v3, [*(a1 + 40) gradientType], TSDMixFloats(v6, v7, *(a1 + 48)));

  return v8;
}

- (CGPoint)startPointForPath:(id)a3 andBounds:(CGRect)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGradient startPointForPath:andBounds:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGradient.m"), 581, @"Subclasses should override."}];
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)endPointForPath:(id)a3 andBounds:(CGRect)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGradient endPointForPath:andBounds:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGradient.m"), 587, @"Subclasses should override."}];
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)p_setAlpha:(CGContext *)a3
{
  [(TSDGradient *)self opacity];

  CGContextSetAlpha(a3, v4);
}

- (CGContext)p_beginBitmapWrapperContextInContext:(CGContext *)a3 returningIntegralBounds:(CGRect *)a4
{
  if (!a3)
  {
    return 0;
  }

  ClipBoundingBox = CGContextGetClipBoundingBox(a3);
  v13 = CGRectIntegral(ClipBoundingBox);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v9 = TSDBitmapContextCreate(3, v13.size.width);
  v10 = v9;
  if (v9)
  {
    CGContextTranslateCTM(v9, -x, -y);
  }

  if (a4)
  {
    a4->origin.x = x;
    a4->origin.y = y;
    a4->size.width = width;
    a4->size.height = height;
  }

  return v10;
}

- (void)p_endBitmapWrapperContext:(CGContext *)a3 inContext:(CGContext *)a4 withIntegralBounds:(CGRect)a5
{
  if (a3)
  {
    if (a4)
    {
      height = a5.size.height;
      width = a5.size.width;
      y = a5.origin.y;
      x = a5.origin.x;
      Image = CGBitmapContextCreateImage(a3);
      if (Image)
      {
        v12 = Image;
        CGContextSaveGState(a4);
        v14.origin.x = x;
        v14.origin.y = y;
        v14.size.width = width;
        v14.size.height = height;
        CGContextDrawImage(a4, v14, v12);
        CGContextRestoreGState(a4);
        CGImageRelease(v12);
      }
    }

    CGContextRelease(a3);
  }
}

+ (void)bootstrapPresetsOfKind:(id)a3 inTheme:(id)a4 alternate:(int)a5
{
  if (([a3 isEqual:String] & 1) == 0)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDGradient bootstrapPresetsOfKind:inTheme:alternate:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGradient.m"), 677, @"Attempt to bootstrap gradient presets for kind %@ in theme <%p>.", a3, a4}];
  }

  v10 = [a4 colors];
  if (!v10)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDGradient bootstrapPresetsOfKind:inTheme:alternate:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGradient.m"), 679, @"invalid nil value for '%s'", "colors"}];
  }

  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:6];
  v21 = a3;
  if (a5 >= 7)
  {
    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDGradient bootstrapPresetsOfKind:inTheme:alternate:]"];
    [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGradient.m"), 697, @"invalid theme alternate value"}];
    v14 = 0;
  }

  else
  {
    v14 = *(&off_279D487A8 + a5);
  }

  v17 = v14 + 16;
  v18 = 6;
  do
  {
    v19 = -[TSDAngleGradient initWithGradientStops:type:opacity:angle:]([TSDAngleGradient alloc], "initWithGradientStops:type:opacity:angle:", [MEMORY[0x277CBEA60] arrayWithObjects:{+[TSDGradientStop gradientStopWithColor:fraction:](TSDGradientStop, "gradientStopWithColor:fraction:", objc_msgSend(v10, "objectAtIndex:", *(v17 - 16)), 0.0), +[TSDGradientStop gradientStopWithColor:fraction:](TSDGradientStop, "gradientStopWithColor:fraction:", objc_msgSend(v10, "objectAtIndex:", *(v17 - 8)), 1.0), 0}], *(v17 + 8), 1.0, *v17);
    [v13 addObject:v19];

    v17 += 32;
    --v18;
  }

  while (v18);
  v20 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v13];
  [a4 setPresets:v20 ofKind:v21];
}

- (void)p_setGradientStops:(id)a3
{
  if (self->mStops != a3)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithArray:?];
    if ([a3 count])
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = [a3 objectAtIndex:v6];
        v9 = [v8 color];
        ColorSpace = CGColorGetColorSpace([v9 CGColor]);
        if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
        {
          v11 = MEMORY[0x277D6C2A8];
          [v9 redComponent];
          v13 = v12;
          [v9 greenComponent];
          v15 = v14;
          [v9 blueComponent];
          v17 = v16;
          [v9 alphaComponent];
          [v5 replaceObjectAtIndex:v6 withObject:{objc_msgSend(v8, "gradientStopWithColor:", objc_msgSend(v11, "colorWithRed:green:blue:alpha:", v13, v15, v17, v18))}];
        }

        v6 = v7;
      }

      while ([a3 count] > v7++);
    }

    [(NSMutableArray *)self->mStops removeAllObjects];
    [(NSMutableArray *)self->mStops addObjectsFromArray:v5];

    [(TSDGradient *)self releaseShadingRef];
  }
}

- (void)p_insertGradientStop:(id)a3
{
  if ([(NSMutableArray *)self->mStops count])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = [(NSMutableArray *)self->mStops count];
    mStops = self->mStops;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__TSDGradient_p_insertGradientStop___block_invoke;
    v7[3] = &unk_279D48788;
    v7[4] = a3;
    v7[5] = &v8;
    [(NSMutableArray *)mStops enumerateObjectsUsingBlock:v7];
    [(NSMutableArray *)self->mStops insertObject:a3 atIndex:v9[3]];
    [(TSDGradient *)self releaseShadingRef];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v6 = self->mStops;

    [(NSMutableArray *)v6 addObject:a3];
  }
}

uint64_t __36__TSDGradient_p_insertGradientStop___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 fraction];
  v8 = v7;
  result = [*(a1 + 32) fraction];
  if (v8 > v10)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (void)p_removeStop:(id)a3
{
  if ([(NSMutableArray *)self->mStops count]< 3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"Attempted to remove too many gradient stops. Must have at least 2."];
  }

  else
  {
    [(NSMutableArray *)self->mStops removeObject:a3];
  }

  [(TSDGradient *)self releaseShadingRef];
}

- (id)p_removeStopAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->mStops count]< 3)
  {
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Attempted to remove too many gradient stops. Must have at least 2." userInfo:0]);
  }

  v5 = [(NSMutableArray *)self->mStops objectAtIndex:a3];
  [(NSMutableArray *)self->mStops removeObjectAtIndex:a3];

  return v5;
}

- (id)p_insertStopAtFraction:(double)a3
{
  v5 = [(TSDGradient *)self newColorAtFraction:?];

  return [(TSDGradient *)self p_insertStopAtFraction:v5 withColor:a3];
}

- (id)p_insertStopAtFraction:(double)a3 withColor:(id)a4
{
  v5 = [TSDGradientStop gradientStopWithColor:a4 fraction:a3];
  [(TSDGradient *)self p_insertGradientStop:v5];
  [(TSDGradient *)self releaseShadingRef];
  return v5;
}

- (void)p_reverseStopOrder
{
  v3 = [(NSMutableArray *)self->mStops count];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:v3];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      [v4 addObject:{objc_msgSend(-[NSMutableArray objectAtIndexedSubscript:](self->mStops, "objectAtIndexedSubscript:", i), "mutableCopy")}];
    }
  }

  v6 = 1;
  v7 = v3 - 1;
  do
  {
    v8 = [v4 objectAtIndexedSubscript:v6 - 1];
    [v8 fraction];
    [v8 setFraction:1.0 - v9];
    if (v6 - 1 != v7)
    {
      v10 = [v4 objectAtIndexedSubscript:v7];
      [v10 fraction];
      [v10 setFraction:1.0 - v11];
      [v4 exchangeObjectAtIndex:v6 - 1 withObjectAtIndex:v7];
    }
  }

  while (v6++ <= --v7);
  if (v3 != 1)
  {
    v13 = 0;
    v14 = v3 - 2;
    do
    {
      v15 = [v4 objectAtIndex:v13];
      [-[NSMutableArray objectAtIndex:](self->mStops objectAtIndex:{v14), "inflection"}];
      [v15 setInflection:1.0 - v16];
      ++v13;
      --v14;
    }

    while (v14 != -1);
  }

  [objc_msgSend(v4 objectAtIndex:{v3 - 1), "setInflection:", 0.5}];
  if (v3)
  {
    for (j = 0; j != v3; ++j)
    {
      v18 = -[TSDGradientStop initWithGradientStop:]([TSDGradientStop alloc], "initWithGradientStop:", [v4 objectAtIndexedSubscript:j]);
      [(NSMutableArray *)self->mStops setObject:v18 atIndexedSubscript:j];
    }
  }

  [(TSDGradient *)self releaseShadingRef];
}

- (void)p_evenlyDistributeStops
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->mStops count];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  mStops = self->mStops;
  v5 = [(NSMutableArray *)mStops countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 1.0 / (v3 - 1);
    v8 = *v12;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(mStops);
        }

        [*(*(&v11 + 1) + 8 * i) setFraction:v9];
        v9 = v7 + v9;
      }

      v6 = [(NSMutableArray *)mStops countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(TSDGradient *)self releaseShadingRef];
}

- (void)p_moveStopAtIndex:(unint64_t)a3 toFraction:(double)a4
{
  v7 = [-[NSMutableArray objectAtIndexedSubscript:](self->mStops "objectAtIndexedSubscript:"mutableCopy"")];
  [v7 setFraction:a4];
  v8 = [[TSDGradientStop alloc] initWithGradientStop:v7];
  [(NSMutableArray *)self->mStops setObject:v8 atIndexedSubscript:a3];

  [(TSDGradient *)self releaseShadingRef];
}

- (void)p_swapStopAtIndex:(unint64_t)a3 withStopAtIndex:(unint64_t)a4
{
  v7 = [-[NSMutableArray objectAtIndexedSubscript:](self->mStops "objectAtIndexedSubscript:"mutableCopy"")];
  v8 = -[TSDGradientStop initWithGradientStop:]([TSDGradientStop alloc], "initWithGradientStop:", [-[NSMutableArray objectAtIndexedSubscript:](self->mStops objectAtIndexedSubscript:{a4), "mutableCopy"}]);
  v9 = [[TSDGradientStop alloc] initWithGradientStop:v7];
  [(NSMutableArray *)self->mStops setObject:v8 atIndexedSubscript:a3];
  [(NSMutableArray *)self->mStops setObject:v9 atIndexedSubscript:a4];

  [(TSDGradient *)self releaseShadingRef];
}

- (void)p_setColorOfStopAtIndex:(unint64_t)a3 toColor:(id)a4
{
  v7 = [-[NSMutableArray objectAtIndexedSubscript:](self->mStops "objectAtIndexedSubscript:"mutableCopy"")];
  [v7 setColor:a4];
  v8 = [[TSDGradientStop alloc] initWithGradientStop:v7];
  [(NSMutableArray *)self->mStops setObject:v8 atIndexedSubscript:a3];

  [(TSDGradient *)self releaseShadingRef];
}

- (void)p_setInflectionOfStopAtIndex:(unint64_t)a3 toInflection:(double)a4
{
  v7 = [-[NSMutableArray objectAtIndexedSubscript:](self->mStops "objectAtIndexedSubscript:"mutableCopy"")];
  [v7 setInflection:a4];
  v8 = [[TSDGradientStop alloc] initWithGradientStop:v7];
  [(NSMutableArray *)self->mStops setObject:v8 atIndexedSubscript:a3];

  [(TSDGradient *)self releaseShadingRef];
}

@end
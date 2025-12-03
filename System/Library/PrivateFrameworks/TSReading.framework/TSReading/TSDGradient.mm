@interface TSDGradient
+ (id)linearGradientWithGradientStops:(id)stops;
+ (id)linearGradientWithStartColor:(id)color endColor:(id)endColor;
+ (id)radialGradientWithGradientStops:(id)stops;
+ (id)radialGradientWithStartColor:(id)color endColor:(id)endColor;
+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(int)alternate;
- (BOOL)hasAlpha;
- (BOOL)isAdvancedGradientIgnoringFlag;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOpaque;
- (CGAffineTransform)centeredRadialTransformInRect:(SEL)rect;
- (CGContext)p_beginBitmapWrapperContextInContext:(CGContext *)context returningIntegralBounds:(CGRect *)bounds;
- (CGPoint)endPointForPath:(id)path andBounds:(CGRect)bounds;
- (CGPoint)startPointForPath:(id)path andBounds:(CGRect)bounds;
- (CGShading)shadingRef;
- (TSDGradient)init;
- (TSDGradient)initWithGradientStops:(id)stops type:(unint64_t)type opacity:(double)opacity;
- (TSDGradient)initWithStartColor:(id)color endColor:(id)endColor type:(unint64_t)type;
- (TSUColor)firstColor;
- (TSUColor)lastColor;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)newColorAtFraction:(double)fraction;
- (id)p_insertStopAtFraction:(double)fraction;
- (id)p_insertStopAtFraction:(double)fraction withColor:(id)color;
- (id)p_removeStopAtIndex:(unint64_t)index;
- (id)stopAfterFraction:(double)fraction;
- (id)stopBeforeFraction:(double)fraction;
- (int64_t)mixingTypeWithObject:(id)object;
- (unint64_t)hash;
- (void)colorComponents:(double *)components atFraction:(double)fraction;
- (void)dealloc;
- (void)p_endBitmapWrapperContext:(CGContext *)context inContext:(CGContext *)inContext withIntegralBounds:(CGRect)bounds;
- (void)p_evenlyDistributeStops;
- (void)p_insertGradientStop:(id)stop;
- (void)p_moveStopAtIndex:(unint64_t)index toFraction:(double)fraction;
- (void)p_removeStop:(id)stop;
- (void)p_reverseStopOrder;
- (void)p_setAlpha:(CGContext *)alpha;
- (void)p_setColorOfStopAtIndex:(unint64_t)index toColor:(id)color;
- (void)p_setGradientStops:(id)stops;
- (void)p_setInflectionOfStopAtIndex:(unint64_t)index toInflection:(double)inflection;
- (void)p_swapStopAtIndex:(unint64_t)index withStopAtIndex:(unint64_t)atIndex;
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

- (TSDGradient)initWithGradientStops:(id)stops type:(unint64_t)type opacity:(double)opacity
{
  v8 = [(TSDGradient *)self init];
  v9 = v8;
  if (v8)
  {
    mStops = v8->mStops;
    if (mStops)
    {
      [(NSMutableArray *)mStops setArray:stops];
    }

    else
    {
      v9->mStops = [stops mutableCopy];
    }

    v9->mType = type;
    v9->mOpacity = opacity;
  }

  return v9;
}

- (TSDGradient)initWithStartColor:(id)color endColor:(id)endColor type:(unint64_t)type
{
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:{+[TSDGradientStop gradientStopWithColor:fraction:](TSDGradientStop, "gradientStopWithColor:fraction:", color, 0.0), +[TSDGradientStop gradientStopWithColor:fraction:](TSDGradientStop, "gradientStopWithColor:fraction:", endColor, 1.0), 0}];

  return [(TSDGradient *)self initWithGradientStops:v7 type:type];
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

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
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
          isAdvancedGradient = [v5 isAdvancedGradient];
          LOBYTE(v4) = isAdvancedGradient ^ [(TSDGradient *)self isAdvancedGradient]^ 1;
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

+ (id)linearGradientWithStartColor:(id)color endColor:(id)endColor
{
  v4 = [objc_alloc(objc_opt_class()) initWithStartColor:color endColor:endColor type:0];

  return v4;
}

+ (id)linearGradientWithGradientStops:(id)stops
{
  v3 = [objc_alloc(objc_opt_class()) initWithGradientStops:stops type:0];

  return v3;
}

+ (id)radialGradientWithStartColor:(id)color endColor:(id)endColor
{
  v4 = [objc_alloc(objc_opt_class()) initWithStartColor:color endColor:endColor type:1];

  return v4;
}

+ (id)radialGradientWithGradientStops:(id)stops
{
  v3 = [objc_alloc(objc_opt_class()) initWithGradientStops:stops type:1];

  return v3;
}

- (TSUColor)firstColor
{
  v2 = [(NSMutableArray *)self->mStops objectAtIndex:0];

  return [v2 color];
}

- (TSUColor)lastColor
{
  lastObject = [(NSMutableArray *)self->mStops lastObject];

  return [lastObject color];
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

- (id)stopBeforeFraction:(double)fraction
{
  v19 = *MEMORY[0x277D85DE8];
  TSUClamp();
  v5 = v4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->mStops reverseObjectEnumerator];
  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
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
      objc_enumerationMutation(reverseObjectEnumerator);
    }

    v11 = *(*(&v14 + 1) + 8 * v10);
    [v11 fraction];
    if (v12 <= v5)
    {
      return v11;
    }

    if (v8 == ++v10)
    {
      v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        goto LABEL_3;
      }

      return [(NSMutableArray *)self->mStops objectAtIndex:0];
    }
  }
}

- (id)stopAfterFraction:(double)fraction
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

- (id)newColorAtFraction:(double)fraction
{
  if (fraction == 0.0)
  {
    firstColor = [(TSDGradient *)self firstColor];
LABEL_5:

    return firstColor;
  }

  if (fraction == 1.0)
  {
    firstColor = [(TSDGradient *)self lastColor];
    goto LABEL_5;
  }

  v7 = [(TSDGradient *)self stopBeforeFraction:fraction];
  v8 = [(TSDGradient *)self stopAfterFraction:fraction];
  if (v7 == v8)
  {
    firstColor = [v7 color];
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

  color = [v7 color];
  color2 = [v9 color];

  return [color newBlendedColorWithFraction:color2 ofColor:v13];
}

- (void)colorComponents:(double *)components atFraction:(double)fraction
{
  v6 = [(TSDGradient *)self newColorAtFraction:fraction];
  Components = CGColorGetComponents([v6 CGColor]);
  *components = *Components;
  components[1] = Components[1];
  components[2] = Components[2];
  components[3] = Components[3];
}

- (CGAffineTransform)centeredRadialTransformInRect:(SEL)rect
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(TSDGradient *)[TSDMutableGradient allocWithZone:?]type:"initWithGradientStops:type:opacity:" opacity:self->mStops, self->mType, self->mOpacity];
  [(TSDGradient *)v4 setIsAdvancedGradient:self->mIsAdvancedGradient];
  return v4;
}

- (BOOL)hasAlpha
{
  objectEnumerator = [(NSMutableArray *)self->mStops objectEnumerator];
  do
  {
    nextObject = [objectEnumerator nextObject];
    v4 = nextObject;
  }

  while (nextObject && CGColorGetAlpha([objc_msgSend(nextObject "color")]) == 1.0);
  return v4 != 0;
}

- (int64_t)mixingTypeWithObject:(id)object
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__TSDGradient_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = object;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, object, v4);
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

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__TSDGradient_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = object;
  v5[5] = self;
  *&v5[6] = fraction;
  return TSDMixingMixedObjectWithFraction(self, object, v5);
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

- (CGPoint)startPointForPath:(id)path andBounds:(CGRect)bounds
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGradient startPointForPath:andBounds:]"];
  [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGradient.m"), 581, @"Subclasses should override."}];
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)endPointForPath:(id)path andBounds:(CGRect)bounds
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGradient endPointForPath:andBounds:]"];
  [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGradient.m"), 587, @"Subclasses should override."}];
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)p_setAlpha:(CGContext *)alpha
{
  [(TSDGradient *)self opacity];

  CGContextSetAlpha(alpha, v4);
}

- (CGContext)p_beginBitmapWrapperContextInContext:(CGContext *)context returningIntegralBounds:(CGRect *)bounds
{
  if (!context)
  {
    return 0;
  }

  ClipBoundingBox = CGContextGetClipBoundingBox(context);
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

  if (bounds)
  {
    bounds->origin.x = x;
    bounds->origin.y = y;
    bounds->size.width = width;
    bounds->size.height = height;
  }

  return v10;
}

- (void)p_endBitmapWrapperContext:(CGContext *)context inContext:(CGContext *)inContext withIntegralBounds:(CGRect)bounds
{
  if (context)
  {
    if (inContext)
    {
      height = bounds.size.height;
      width = bounds.size.width;
      y = bounds.origin.y;
      x = bounds.origin.x;
      Image = CGBitmapContextCreateImage(context);
      if (Image)
      {
        v12 = Image;
        CGContextSaveGState(inContext);
        v14.origin.x = x;
        v14.origin.y = y;
        v14.size.width = width;
        v14.size.height = height;
        CGContextDrawImage(inContext, v14, v12);
        CGContextRestoreGState(inContext);
        CGImageRelease(v12);
      }
    }

    CGContextRelease(context);
  }
}

+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(int)alternate
{
  if (([kind isEqual:String] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDGradient bootstrapPresetsOfKind:inTheme:alternate:]"];
    [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGradient.m"), 677, @"Attempt to bootstrap gradient presets for kind %@ in theme <%p>.", kind, theme}];
  }

  colors = [theme colors];
  if (!colors)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDGradient bootstrapPresetsOfKind:inTheme:alternate:]"];
    [currentHandler2 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGradient.m"), 679, @"invalid nil value for '%s'", "colors"}];
  }

  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:6];
  kindCopy = kind;
  if (alternate >= 7)
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDGradient bootstrapPresetsOfKind:inTheme:alternate:]"];
    [currentHandler3 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGradient.m"), 697, @"invalid theme alternate value"}];
    v14 = 0;
  }

  else
  {
    v14 = *(&off_279D487A8 + alternate);
  }

  v17 = v14 + 16;
  v18 = 6;
  do
  {
    v19 = -[TSDAngleGradient initWithGradientStops:type:opacity:angle:]([TSDAngleGradient alloc], "initWithGradientStops:type:opacity:angle:", [MEMORY[0x277CBEA60] arrayWithObjects:{+[TSDGradientStop gradientStopWithColor:fraction:](TSDGradientStop, "gradientStopWithColor:fraction:", objc_msgSend(colors, "objectAtIndex:", *(v17 - 16)), 0.0), +[TSDGradientStop gradientStopWithColor:fraction:](TSDGradientStop, "gradientStopWithColor:fraction:", objc_msgSend(colors, "objectAtIndex:", *(v17 - 8)), 1.0), 0}], *(v17 + 8), 1.0, *v17);
    [v13 addObject:v19];

    v17 += 32;
    --v18;
  }

  while (v18);
  v20 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v13];
  [theme setPresets:v20 ofKind:kindCopy];
}

- (void)p_setGradientStops:(id)stops
{
  if (self->mStops != stops)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithArray:?];
    if ([stops count])
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = [stops objectAtIndex:v6];
        color = [v8 color];
        ColorSpace = CGColorGetColorSpace([color CGColor]);
        if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
        {
          v11 = MEMORY[0x277D6C2A8];
          [color redComponent];
          v13 = v12;
          [color greenComponent];
          v15 = v14;
          [color blueComponent];
          v17 = v16;
          [color alphaComponent];
          [v5 replaceObjectAtIndex:v6 withObject:{objc_msgSend(v8, "gradientStopWithColor:", objc_msgSend(v11, "colorWithRed:green:blue:alpha:", v13, v15, v17, v18))}];
        }

        v6 = v7;
      }

      while ([stops count] > v7++);
    }

    [(NSMutableArray *)self->mStops removeAllObjects];
    [(NSMutableArray *)self->mStops addObjectsFromArray:v5];

    [(TSDGradient *)self releaseShadingRef];
  }
}

- (void)p_insertGradientStop:(id)stop
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
    v7[4] = stop;
    v7[5] = &v8;
    [(NSMutableArray *)mStops enumerateObjectsUsingBlock:v7];
    [(NSMutableArray *)self->mStops insertObject:stop atIndex:v9[3]];
    [(TSDGradient *)self releaseShadingRef];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v6 = self->mStops;

    [(NSMutableArray *)v6 addObject:stop];
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

- (void)p_removeStop:(id)stop
{
  if ([(NSMutableArray *)self->mStops count]< 3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"Attempted to remove too many gradient stops. Must have at least 2."];
  }

  else
  {
    [(NSMutableArray *)self->mStops removeObject:stop];
  }

  [(TSDGradient *)self releaseShadingRef];
}

- (id)p_removeStopAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->mStops count]< 3)
  {
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Attempted to remove too many gradient stops. Must have at least 2." userInfo:0]);
  }

  v5 = [(NSMutableArray *)self->mStops objectAtIndex:index];
  [(NSMutableArray *)self->mStops removeObjectAtIndex:index];

  return v5;
}

- (id)p_insertStopAtFraction:(double)fraction
{
  v5 = [(TSDGradient *)self newColorAtFraction:?];

  return [(TSDGradient *)self p_insertStopAtFraction:v5 withColor:fraction];
}

- (id)p_insertStopAtFraction:(double)fraction withColor:(id)color
{
  v5 = [TSDGradientStop gradientStopWithColor:color fraction:fraction];
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

- (void)p_moveStopAtIndex:(unint64_t)index toFraction:(double)fraction
{
  v7 = [-[NSMutableArray objectAtIndexedSubscript:](self->mStops "objectAtIndexedSubscript:"mutableCopy"")];
  [v7 setFraction:fraction];
  v8 = [[TSDGradientStop alloc] initWithGradientStop:v7];
  [(NSMutableArray *)self->mStops setObject:v8 atIndexedSubscript:index];

  [(TSDGradient *)self releaseShadingRef];
}

- (void)p_swapStopAtIndex:(unint64_t)index withStopAtIndex:(unint64_t)atIndex
{
  v7 = [-[NSMutableArray objectAtIndexedSubscript:](self->mStops "objectAtIndexedSubscript:"mutableCopy"")];
  v8 = -[TSDGradientStop initWithGradientStop:]([TSDGradientStop alloc], "initWithGradientStop:", [-[NSMutableArray objectAtIndexedSubscript:](self->mStops objectAtIndexedSubscript:{atIndex), "mutableCopy"}]);
  v9 = [[TSDGradientStop alloc] initWithGradientStop:v7];
  [(NSMutableArray *)self->mStops setObject:v8 atIndexedSubscript:index];
  [(NSMutableArray *)self->mStops setObject:v9 atIndexedSubscript:atIndex];

  [(TSDGradient *)self releaseShadingRef];
}

- (void)p_setColorOfStopAtIndex:(unint64_t)index toColor:(id)color
{
  v7 = [-[NSMutableArray objectAtIndexedSubscript:](self->mStops "objectAtIndexedSubscript:"mutableCopy"")];
  [v7 setColor:color];
  v8 = [[TSDGradientStop alloc] initWithGradientStop:v7];
  [(NSMutableArray *)self->mStops setObject:v8 atIndexedSubscript:index];

  [(TSDGradient *)self releaseShadingRef];
}

- (void)p_setInflectionOfStopAtIndex:(unint64_t)index toInflection:(double)inflection
{
  v7 = [-[NSMutableArray objectAtIndexedSubscript:](self->mStops "objectAtIndexedSubscript:"mutableCopy"")];
  [v7 setInflection:inflection];
  v8 = [[TSDGradientStop alloc] initWithGradientStop:v7];
  [(NSMutableArray *)self->mStops setObject:v8 atIndexedSubscript:index];

  [(TSDGradient *)self releaseShadingRef];
}

@end
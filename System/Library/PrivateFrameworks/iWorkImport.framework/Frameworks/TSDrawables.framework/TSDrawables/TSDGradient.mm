@interface TSDGradient
+ (id)evenlyDistributedLinearGradientWithColors:(id)colors;
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
+ (id)linearGradientWithGradientStops:(id)stops;
+ (id)linearGradientWithStartColor:(id)color endColor:(id)endColor;
+ (id)radialGradientWithGradientStops:(id)stops;
+ (id)radialGradientWithStartColor:(id)color endColor:(id)endColor;
+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(unint64_t)alternate;
- (BOOL)isAdvancedGradient;
- (BOOL)isAdvancedGradientIgnoringFlag;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOpaque;
- (BOOL)p_isAnyStopP3;
- (BOOL)p_stopsHaveAlpha;
- (CGAffineTransform)centeredRadialTransformInRect:(SEL)rect;
- (CGContext)p_beginBitmapWrapperContextInContext:(CGContext *)context returningIntegralBounds:(CGRect *)bounds;
- (CGGradient)p_CGGradient;
- (CGPoint)endPointForPath:(id)path andBounds:(CGRect)bounds;
- (CGPoint)startPointForPath:(id)path andBounds:(CGRect)bounds;
- (TSDGradient)init;
- (TSDGradient)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSDGradient)initWithGradientStops:(id)stops type:(unint64_t)type opacity:(double)opacity;
- (TSDGradient)initWithStartColor:(id)color endColor:(id)endColor type:(unint64_t)type;
- (TSUColor)firstColor;
- (TSUColor)lastColor;
- (id)description;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)p_insertStopAtFraction:(double)fraction;
- (id)p_insertStopAtFraction:(double)fraction withColor:(id)color;
- (id)p_newColorAtFraction:(double)fraction;
- (id)p_removeStopAtIndex:(unint64_t)index;
- (id)stopAfterFraction:(double)fraction;
- (id)stopBeforeFraction:(double)fraction;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (unint64_t)hash;
- (unint64_t)p_blendingColorSpace;
- (void)dealloc;
- (void)p_endBitmapWrapperContext:(CGContext *)context inContext:(CGContext *)inContext withIntegralBounds:(CGRect)bounds;
- (void)p_evenlyDistributeStops;
- (void)p_insertGradientStop:(id)stop;
- (void)p_invalidateCGGradient;
- (void)p_moveStopAtIndex:(unint64_t)index toFraction:(double)fraction;
- (void)p_prepareForDrawingInContext:(CGContext *)context;
- (void)p_removeStop:(id)stop;
- (void)p_reverseStopOrder;
- (void)p_setColorOfStopAtIndex:(unint64_t)index toColor:(id)color;
- (void)p_setGradientStops:(id)stops;
- (void)p_setInflectionOfStopAtIndex:(unint64_t)index toInflection:(double)inflection;
- (void)p_swapStopAtIndex:(unint64_t)index withStopAtIndex:(unint64_t)atIndex;
- (void)paintPath:(CGPath *)path inContext:(CGContext *)context;
- (void)paintRect:(CGRect)rect inContext:(CGContext *)context;
- (void)paintRect:(CGRect)rect inContext:(CGContext *)context atAngle:(double)angle;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSDGradient

- (TSDGradient)init
{
  v6.receiver = self;
  v6.super_class = TSDGradient;
  v2 = [(TSDGradient *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stops = v2->_stops;
    v2->_stops = v3;

    v2->_blendingColorSpace = 2;
  }

  return v2;
}

- (TSDGradient)initWithGradientStops:(id)stops type:(unint64_t)type opacity:(double)opacity
{
  stopsCopy = stops;
  v11 = objc_msgSend_init(self, v9, v10);
  v14 = v11;
  if (v11)
  {
    v15 = *(v11 + 8);
    if (v15)
    {
      objc_msgSend_setArray_(v15, v12, stopsCopy);
    }

    else
    {
      v16 = objc_msgSend_mutableCopy(stopsCopy, v12, v13);
      stops = v14->_stops;
      v14->_stops = v16;
    }

    v14->_gradientType = type;
    v14->_opacity = opacity;
    v14->_blendingColorSpace = 2;
  }

  return v14;
}

- (TSDGradient)initWithStartColor:(id)color endColor:(id)endColor type:(unint64_t)type
{
  v18[2] = *MEMORY[0x277D85DE8];
  endColorCopy = endColor;
  v10 = objc_msgSend_gradientStopWithColor_fraction_(TSDGradientStop, v9, color, 0.0);
  v18[0] = v10;
  v12 = objc_msgSend_gradientStopWithColor_fraction_(TSDGradientStop, v11, endColorCopy, 1.0);

  v18[1] = v12;
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v18, 2);

  v16 = objc_msgSend_initWithGradientStops_type_(self, v15, v14, type);
  return v16;
}

- (void)dealloc
{
  objc_msgSend_p_invalidateCGGradient(self, a2, v2);
  v4.receiver = self;
  v4.super_class = TSDGradient;
  [(TSDGradient *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"%@<%p>: type=%tu opacity=%f \n\tstops<%p>=%@", v5, self, self->_gradientType, *&self->_opacity, self->_stops, self->_stops);

  return v7;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_gradientStops(self, a2, v2);
  objc_msgSend_hash(v3, v4, v5);

  TSUHashWithSeed();
  TSUHashWithSeed();

  return TSUHashWithSeed();
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v22) = 1;
  }

  else
  {
    equalCopy = equal;
    objc_opt_class();
    v5 = TSUDynamicCast();

    if (v5 && objc_msgSend_gradientType(v5, v6, v7) == self->_gradientType && ((objc_msgSend_opacity(v5, v8, v9), opacity = self->_opacity, v12 == opacity) || vabdd_f64(v12, opacity) < fabs(opacity * 0.000000999999997)) && (stops = self->_stops, objc_msgSend_gradientStops(v5, v10, v11), v15 = objc_claimAutoreleasedReturnValue(), LODWORD(stops) = objc_msgSend_isEqualToArray_(stops, v16, v15), v15, stops))
    {
      isAdvancedGradient = objc_msgSend_isAdvancedGradient(v5, v17, v18);
      v22 = isAdvancedGradient ^ objc_msgSend_isAdvancedGradient(self, v20, v21) ^ 1;
    }

    else
    {
      LOBYTE(v22) = 0;
    }
  }

  return v22;
}

+ (id)linearGradientWithStartColor:(id)color endColor:(id)endColor
{
  endColorCopy = endColor;
  colorCopy = color;
  v7 = objc_alloc(objc_opt_class());
  started = objc_msgSend_initWithStartColor_endColor_type_(v7, v8, colorCopy, endColorCopy, 0);

  return started;
}

+ (id)linearGradientWithGradientStops:(id)stops
{
  stopsCopy = stops;
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithGradientStops_type_(v4, v5, stopsCopy, 0);

  return v6;
}

+ (id)evenlyDistributedLinearGradientWithColors:(id)colors
{
  colorsCopy = colors;
  if (objc_msgSend_count(colorsCopy, v5, v6) > 1)
  {
    v17 = objc_msgSend_count(colorsCopy, v7, v8);
    v18 = MEMORY[0x277CBEB18];
    v21 = objc_msgSend_count(colorsCopy, v19, v20);
    v23 = objc_msgSend_arrayWithCapacity_(v18, v22, v21);
    if (objc_msgSend_count(colorsCopy, v24, v25))
    {
      v27 = 0;
      v28 = (v17 - 1);
      do
      {
        v29 = objc_msgSend_objectAtIndexedSubscript_(colorsCopy, v26, v27);
        v31 = objc_msgSend_gradientStopWithColor_fraction_(TSDGradientStop, v30, v29, v27 / v28);
        objc_msgSend_addObject_(v23, v32, v31);

        ++v27;
      }

      while (v27 < objc_msgSend_count(colorsCopy, v33, v34));
    }

    v35 = [self alloc];
    v16 = objc_msgSend_initWithGradientStops_type_(v35, v36, v23, 0);
  }

  else
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "+[TSDGradient evenlyDistributedLinearGradientWithColors:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGradient.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 198, 0, "Attempted to create gradient with less than two colors.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    v16 = 0;
  }

  return v16;
}

+ (id)radialGradientWithStartColor:(id)color endColor:(id)endColor
{
  endColorCopy = endColor;
  colorCopy = color;
  v7 = objc_alloc(objc_opt_class());
  started = objc_msgSend_initWithStartColor_endColor_type_(v7, v8, colorCopy, endColorCopy, 1);

  return started;
}

+ (id)radialGradientWithGradientStops:(id)stops
{
  stopsCopy = stops;
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithGradientStops_type_(v4, v5, stopsCopy, 1);

  return v6;
}

- (TSUColor)firstColor
{
  v3 = objc_msgSend_firstObject(self->_stops, a2, v2);
  v6 = objc_msgSend_color(v3, v4, v5);

  return v6;
}

- (TSUColor)lastColor
{
  v3 = objc_msgSend_lastObject(self->_stops, a2, v2);
  v6 = objc_msgSend_color(v3, v4, v5);

  return v6;
}

- (CGGradient)p_CGGradient
{
  v87 = *MEMORY[0x277D85DE8];
  p_gradient = &self->_gradient;
  if (atomic_load(&self->_gradient))
  {
    goto LABEL_42;
  }

  v77 = &self->_gradient;
  if (objc_msgSend_p_blendingColorSpace(self, a2, v2) == 1)
  {
    v6 = TSUP3ColorSpace();
  }

  else
  {
    v6 = TSUSRGBColorSpace();
  }

  space = v6;
  v9 = 2 * objc_msgSend_count(self->_stops, v7, v8) - 1;
  Mutable = CFArrayCreateMutable(0, v9, MEMORY[0x277CBF128]);
  selfCopy = self;
  locations = malloc_type_calloc(v9, 8uLL, 0x100004000313F17uLL);
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = objc_msgSend_gradientStops(self, v11, v12);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v82, v86, 16);
  if (!v14)
  {
    v18 = 0;
    goto LABEL_37;
  }

  v17 = v14;
  v18 = 0;
  v19 = 0;
  v81 = *v83;
  v20 = 0.0;
  v21 = Mutable;
  do
  {
    v22 = 0;
    v23 = v18;
    do
    {
      if (*v83 != v81)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v82 + 1) + 8 * v22);
      objc_msgSend_fraction(v24, v15, v16);
      if (v19)
      {
        v28 = v27 > v20;
      }

      else
      {
        v28 = 1;
      }

      v29 = v20 + 0.00000001;
      v30 = fminf(v29, 1.0);
      if (v28)
      {
        v31 = v27;
      }

      else
      {
        v31 = v30;
      }

      if (v31 != 1.0 || (objc_msgSend_gradientStops(selfCopy, v25, v26), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend_lastObject(v32, v33, v34), v35 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v24, v36, v35), v35, Mutable = v21, v32, v31 = 1.0, (isEqual & 1) != 0) || (v31 = 0.99999999, v20 < 0.999999989))
      {
        if (v23)
        {
          objc_msgSend_inflection(v23, v25, v26);
          TSUMixFloats();
          v39 = v38;
          if (v38 == 0.0)
          {
            if (v19 != 1)
            {
              v40 = MEMORY[0x277D81150];
              v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSDGradient p_CGGradient]");
              v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGradient.m");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v44, v41, v43, 298, 0, "This should only be possible with the first inflection point");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46);
            }

            v39 = v39 + 0.00000001;
            if (v31 < v39 + 0.00000001)
            {
              v31 = v39 + 0.00000001;
            }

LABEL_25:
            v47 = objc_msgSend_color(v23, v25, v26);
            v50 = objc_msgSend_color(v24, v48, v49);
            v52 = objc_msgSend_blendedColorWithFraction_ofColor_(v47, v51, v50, 0.5);

            v55 = objc_msgSend_CGColor(v52, v53, v54);
            Mutable = v21;
            CFArrayAppendValue(v21, v55);
            v56 = locations;
            locations[v19] = v39;

            ++v19;
LABEL_28:
            v57 = objc_msgSend_color(v24, v25, v26);
            v60 = objc_msgSend_CGColor(v57, v58, v59);
            CFArrayAppendValue(Mutable, v60);

            v56[v19++] = v31;
            v20 = v31;
            goto LABEL_29;
          }

          if (v38 >= v20)
          {
            if (v38 < 0.99999999)
            {
              goto LABEL_25;
            }

            v39 = 0.99999999;
            if (v20 < 0.99999998)
            {
              goto LABEL_25;
            }

            Mutable = v21;
          }
        }

        v56 = locations;
        goto LABEL_28;
      }

LABEL_29:
      v18 = v24;

      ++v22;
      v23 = v18;
    }

    while (v17 != v22);
    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v82, v86, 16);
    v17 = v61;
  }

  while (v61);
LABEL_37:

  v62 = CGGradientCreateWithColors(space, Mutable, locations);
  v64 = 0;
  atomic_compare_exchange_strong(selfCopy + 2, &v64, v62);
  if (v64)
  {
    CFRelease(v62);
  }

  if (!atomic_load(selfCopy + 2))
  {
    v66 = MEMORY[0x277D81150];
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "[TSDGradient p_CGGradient]");
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGradient.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v70, v67, v69, 352, 0, "invalid nil value for '%{public}s'", "_gradient");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72);
  }

  CFRelease(Mutable);
  free(locations);

  p_gradient = v77;
LABEL_42:
  v73 = atomic_load(p_gradient);
  v74 = CFRetain(v73);
  return CFAutorelease(v74);
}

- (unint64_t)p_blendingColorSpace
{
  result = self->_blendingColorSpace;
  if (result == 2)
  {
    result = objc_msgSend_p_isAnyStopP3(self, a2, v2);
    self->_blendingColorSpace = result;
  }

  return result;
}

- (void)p_invalidateCGGradient
{
  p_gradient = &self->_gradient;
  v4 = atomic_load(&self->_gradient);
  CGGradientRelease(v4);
  atomic_store(0, p_gradient);
  self->_blendingColorSpace = 2;
}

- (BOOL)isAdvancedGradient
{
  if (self->_isAdvancedGradient)
  {
    return 1;
  }

  else
  {
    return MEMORY[0x2821F9670]();
  }
}

- (BOOL)isAdvancedGradientIgnoringFlag
{
  if (self->_gradientType || objc_msgSend_count(self->_stops, a2, v2) != 2)
  {
    return 1;
  }

  v5 = objc_msgSend_objectAtIndexedSubscript_(self->_stops, v4, 0);
  objc_msgSend_fraction(v5, v6, v7);
  if (v9 == 0.0)
  {
    v10 = objc_msgSend_objectAtIndexedSubscript_(self->_stops, v8, 0);
    objc_msgSend_inflection(v10, v11, v12);
    if (v15 == 0.5 || fabs(v15 + -0.5) < 5.0e-11)
    {
      v18 = objc_msgSend_lastObject(self->_stops, v13, v14);
      objc_msgSend_fraction(v18, v19, v20);
      v16 = v21 != 1.0;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (id)stopBeforeFraction:(double)fraction
{
  v27 = *MEMORY[0x277D85DE8];
  TSUClamp();
  v5 = v4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = objc_msgSend_reverseObjectEnumerator(self->_stops, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v22, v26, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v23;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        objc_msgSend_fraction(v16, v11, v12);
        if (v17 <= v5)
        {
          v20 = v16;

          goto LABEL_11;
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v22, v26, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v20 = objc_msgSend_firstObject(self->_stops, v18, v19);
LABEL_11:

  return v20;
}

- (id)stopAfterFraction:(double)fraction
{
  v27 = *MEMORY[0x277D85DE8];
  TSUClamp();
  if (v6 == 1.0)
  {
    objc_msgSend_lastObject(self->_stops, v4, v5, v22);
  }

  else
  {
    v8 = v6;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = self->_stops;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v22, v26, 16);
    if (v11)
    {
      v14 = v11;
      v15 = *v23;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v9);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          objc_msgSend_fraction(v17, v12, v13, v22);
          if (v18 > v8)
          {
            v7 = v17;

            goto LABEL_14;
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v22, v26, 16);
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    objc_msgSend_lastObject(self->_stops, v19, v20, v22);
  }
  v7 = ;
LABEL_14:

  return v7;
}

- (id)p_newColorAtFraction:(double)fraction
{
  if (fraction == 0.0)
  {
    v5 = objc_msgSend_firstColor(self, a2, v3);
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  if (fraction == 1.0)
  {
    v5 = objc_msgSend_lastColor(self, a2, v3);
    goto LABEL_5;
  }

  v9 = objc_msgSend_stopBeforeFraction_(self, a2, v3, fraction);
  v14 = objc_msgSend_stopAfterFraction_(self, v10, v11, fraction);
  if (v9 == v14)
  {
    v7 = objc_msgSend_color(v9, v12, v13);
  }

  else
  {
    objc_msgSend_fraction(v9, v12, v13);
    v16 = v15;
    objc_msgSend_fraction(v14, v17, v18);
    v22 = 0.0;
    if (v21 - v16 > 0.001)
    {
      TSUClamp();
      v24 = v23;
      objc_msgSend_inflection(v9, v25, v26);
      TSUClamp();
      if (v24 >= v27)
      {
        v22 = 0.5;
        if (v27 != 1.0)
        {
          v22 = (v24 - v27) / (1.0 - v27) * 0.5 + 0.5;
        }
      }

      else
      {
        v22 = v24 / v27 * 0.5;
      }
    }

    v28 = objc_msgSend_color(v9, v19, v20);
    v31 = objc_msgSend_color(v14, v29, v30);
    v7 = objc_msgSend_newBlendedColorWithFraction_ofColor_(v28, v32, v31, v22);
  }

LABEL_6:

  return v7;
}

- (void)paintRect:(CGRect)rect inContext:(CGContext *)context
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDGradient paintRect:inContext:]", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGradient.m");
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v7, 486, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  v13 = MEMORY[0x277CBEAD8];
  v14 = *MEMORY[0x277CBE658];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v19 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v17, "[TSDGradient paintRect:inContext:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v13, v20, v14, v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (void)paintRect:(CGRect)rect inContext:(CGContext *)context atAngle:(double)angle
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDGradient paintRect:inContext:atAngle:]", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, angle);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGradient.m");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v8, 490, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v20 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v18, "[TSDGradient paintRect:inContext:atAngle:]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, v15, v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (void)paintPath:(CGPath *)path inContext:(CGContext *)context
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDGradient paintPath:inContext:]", context);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGradient.m");
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v7, 494, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  v13 = MEMORY[0x277CBEAD8];
  v14 = *MEMORY[0x277CBE658];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v19 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v17, "[TSDGradient paintPath:inContext:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v13, v20, v14, v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
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
  v26 = *MEMORY[0x277D85DE8];
  objc_msgSend_opacity(self, a2, v2);
  if (v6 != 1.0)
  {
    return 0;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = objc_msgSend_gradientStops(self, v4, v5, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v21, v25, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v22;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = objc_msgSend_color(*(*(&v21 + 1) + 8 * i), v10, v11);
        isOpaque = objc_msgSend_isOpaque(v15, v16, v17);

        if (!isOpaque)
        {
          v19 = 0;
          goto LABEL_12;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v21, v25, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_12:

  return v19;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(TSDMutableGradient, a2, zone);
  v6 = objc_msgSend_initWithGradientStops_type_opacity_(v4, v5, self->_stops, self->_gradientType, self->_opacity);
  v9 = objc_msgSend_i_advancedGradientFlag(self, v7, v8);
  objc_msgSend_i_setAdvancedGradientFlag_(v6, v10, v9);
  return v6;
}

- (BOOL)p_stopsHaveAlpha
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_stops;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v14, v18, 16);
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = objc_msgSend_color(*(*(&v14 + 1) + 8 * i), v4, v5, v14);
        isOpaque = objc_msgSend_isOpaque(v9, v10, v11);

        if (!isOpaque)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v14, v18, 16);
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)p_isAnyStopP3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_stops;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v14, v18, 16);
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = objc_msgSend_color(*(*(&v14 + 1) + 8 * i), v4, v5, v14);
        v12 = objc_msgSend_colorRGBSpace(v9, v10, v11);

        if (v12 == 1)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v14, v18, 16);
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  objc_opt_class();
  v10 = TSUDynamicCast();
  if (!v10)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDGradient mixingTypeWithObject:context:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGradient.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 590, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v18 = objc_msgSend_gradientType(self, v8, v9);
  if (v18 == objc_msgSend_gradientType(v10, v19, v20))
  {
    v23 = objc_msgSend_gradientStops(self, v21, v22);
    v26 = objc_msgSend_count(v23, v24, v25);
    v29 = objc_msgSend_gradientStops(v10, v27, v28);
    v32 = objc_msgSend_count(v29, v30, v31);

    if (v26 == v32)
    {
      v35 = objc_msgSend_gradientStops(self, v33, v34);
      v38 = objc_msgSend_count(v35, v36, v37);

      if (v38)
      {
        v41 = 0;
        v42 = 4;
        do
        {
          v43 = objc_msgSend_gradientStops(self, v39, v40);
          v45 = objc_msgSend_objectAtIndexedSubscript_(v43, v44, v41);

          v48 = objc_msgSend_gradientStops(v10, v46, v47);
          v50 = objc_msgSend_objectAtIndexedSubscript_(v48, v49, v41);

          v52 = objc_msgSend_mixingTypeWithObject_context_(v45, v51, v50, contextCopy);
          v42 = TSDMixingTypeBestFromMixingTypes(v42, v52);

          ++v41;
          v55 = objc_msgSend_gradientStops(self, v53, v54);
          v58 = objc_msgSend_count(v55, v56, v57);
        }

        while (v41 < v58);
      }

      else
      {
        v42 = 4;
      }
    }

    else
    {
      v42 = 2;
    }
  }

  else
  {
    v42 = 1;
  }

  return v42;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v7 = TSUDynamicCast();
  v8 = MEMORY[0x277CBEB18];
  v11 = objc_msgSend_gradientStops(self, v9, v10);
  v14 = objc_msgSend_count(v11, v12, v13);
  v16 = objc_msgSend_arrayWithCapacity_(v8, v15, v14);

  v19 = objc_msgSend_gradientStops(self, v17, v18);
  v22 = objc_msgSend_count(v19, v20, v21);

  if (v22)
  {
    v25 = 0;
    do
    {
      v26 = objc_msgSend_gradientStops(self, v23, v24);
      v28 = objc_msgSend_objectAtIndexedSubscript_(v26, v27, v25);

      v31 = objc_msgSend_gradientStops(v7, v29, v30);
      v33 = objc_msgSend_objectAtIndexedSubscript_(v31, v32, v25);

      v35 = objc_msgSend_mixedObjectWithFraction_ofObject_(v28, v34, v33, fraction);
      objc_msgSend_addObject_(v16, v36, v35);

      ++v25;
      v39 = objc_msgSend_gradientStops(self, v37, v38);
      v42 = objc_msgSend_count(v39, v40, v41);
    }

    while (v25 < v42);
  }

  objc_msgSend_opacity(self, v23, v24);
  objc_msgSend_opacity(v7, v43, v44);
  TSUMixFloats();
  v46 = v45;
  v47 = [TSDGradient alloc];
  v50 = objc_msgSend_gradientType(self, v48, v49);
  v52 = objc_msgSend_initWithGradientStops_type_opacity_(v47, v51, v16, v50, v46);

  return v52;
}

- (CGPoint)startPointForPath:(id)path andBounds:(CGRect)bounds
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDGradient startPointForPath:andBounds:]", bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGradient.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 628, 0, "Subclasses should override.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = *MEMORY[0x277CBF348];
  v12 = *(MEMORY[0x277CBF348] + 8);
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)endPointForPath:(id)path andBounds:(CGRect)bounds
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDGradient endPointForPath:andBounds:]", bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGradient.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 633, 0, "Subclasses should override.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = *MEMORY[0x277CBF348];
  v12 = *(MEMORY[0x277CBF348] + 8);
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)p_prepareForDrawingInContext:(CGContext *)context
{
  objc_msgSend_opacity(self, a2, context);
  CGContextSetAlpha(context, v4);

  CGContextSetInterpolationQuality(context, kCGInterpolationHigh);
}

- (CGContext)p_beginBitmapWrapperContextInContext:(CGContext *)context returningIntegralBounds:(CGRect *)bounds
{
  if (!context)
  {
    return 0;
  }

  ClipBoundingBox = CGContextGetClipBoundingBox(context);
  width = ClipBoundingBox.size.width;
  height = ClipBoundingBox.size.height;
  v20 = CGRectIntegral(ClipBoundingBox);
  if (bounds)
  {
    *bounds = v20;
  }

  v8 = TSDCGContextGetBitmapQualityInfo(context);
  v11 = v8;
  if (v8)
  {
    objc_msgSend_qualityScaleForSize_(v8, v9, v10, width, height);
    v13 = v12;
  }

  else
  {
    v13 = 1.0;
  }

  TSUMultiplyRectScalar();
  v22 = CGRectIntegral(v21);
  v14 = 0;
  if (v22.size.width > 0.0 && v22.size.height > 0.0)
  {
    x = v22.origin.x;
    y = v22.origin.y;
    v17 = TSDBitmapContextCreate(3, v22.size.width, v22.size.height);
    v14 = v17;
    if (v17)
    {
      CGContextTranslateCTM(v17, -x, -y);
      CGContextScaleCTM(v14, v13, v13);
    }
  }

  return v14;
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

+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(unint64_t)alternate
{
  v62[2] = *MEMORY[0x277D85DE8];
  kindCopy = kind;
  themeCopy = theme;
  if ((objc_msgSend_isEqual_(kindCopy, v9, *MEMORY[0x277D80B28]) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "+[TSDGradient bootstrapPresetsOfKind:inTheme:alternate:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGradient.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 726, 0, "Attempt to bootstrap gradient presets for kind %@ in theme <%p>.", kindCopy, themeCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v20 = objc_msgSend_colors(themeCopy, v10, v11);
  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x277CBEB18]);
    v24 = objc_msgSend_initWithCapacity_(v21, v22, 6);
    if (alternate >= 7)
    {
      v53 = MEMORY[0x277D81150];
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "+[TSDGradient bootstrapPresetsOfKind:inTheme:alternate:]");
      v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGradient.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v57, v54, v56, 749, 0, "invalid theme alternate value");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59);
    }

    else
    {
      v60 = themeCopy;
      v61 = kindCopy;
      v25 = (*(&off_27A6CC480 + alternate) + 16);
      v26 = 6;
      do
      {
        v27 = *(v25 - 1);
        v28 = *v25;
        v29 = *(v25 + 1);
        v30 = objc_msgSend_objectAtIndexedSubscript_(v20, v23, *(v25 - 2));
        v32 = objc_msgSend_gradientStopWithColor_fraction_(TSDGradientStop, v31, v30, 0.0);
        v62[0] = v32;
        v34 = objc_msgSend_objectAtIndexedSubscript_(v20, v33, v27);
        v36 = objc_msgSend_gradientStopWithColor_fraction_(TSDGradientStop, v35, v34, 1.0);
        v62[1] = v36;
        v38 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v37, v62, 2);

        v39 = [TSDAngleGradient alloc];
        v41 = objc_msgSend_initWithGradientStops_type_opacity_angle_(v39, v40, v38, v29, 1.0, v28);
        objc_msgSend_addObject_(v24, v42, v41);

        v25 += 4;
        --v26;
      }

      while (v26);
      v44 = objc_msgSend_copy(v24, v23, v43);
      themeCopy = v60;
      kindCopy = v61;
      objc_msgSend_setPresets_ofKind_(v60, v45, v44, v61);
    }
  }

  else
  {
    v46 = MEMORY[0x277D81150];
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "+[TSDGradient bootstrapPresetsOfKind:inTheme:alternate:]");
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGradient.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v50, v47, v49, 728, 0, "invalid nil value for '%{public}s'", "colors");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52);
  }
}

- (void)p_setGradientStops:(id)stops
{
  stopsCopy = stops;
  if (self->_stops != stopsCopy)
  {
    v48 = stopsCopy;
    v5 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], stopsCopy, stopsCopy);
    if (objc_msgSend_count(v48, v6, v7))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = objc_msgSend_objectAtIndexedSubscript_(v48, v8, v10);
        v15 = objc_msgSend_color(v12, v13, v14);
        v18 = objc_msgSend_CGColor(v15, v16, v17);
        ColorSpace = CGColorGetColorSpace(v18);
        if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
        {
          v22 = MEMORY[0x277D81180];
          objc_msgSend_redComponent(v15, v20, v21);
          v24 = v23;
          objc_msgSend_greenComponent(v15, v25, v26);
          v28 = v27;
          objc_msgSend_blueComponent(v15, v29, v30);
          v32 = v31;
          objc_msgSend_alphaComponent(v15, v33, v34);
          v38 = objc_msgSend_colorWithRed_green_blue_alpha_(v22, v35, v36, v24, v28, v32, v37);
          v40 = objc_msgSend_gradientStopWithColor_(v12, v39, v38);
          objc_msgSend_replaceObjectAtIndex_withObject_(v5, v41, v10, v40);
        }

        v10 = v11;
      }

      while (objc_msgSend_count(v48, v42, v43) > v11++);
    }

    objc_msgSend_removeAllObjects(self->_stops, v8, v9);
    objc_msgSend_addObjectsFromArray_(self->_stops, v45, v5);
    objc_msgSend_p_invalidateCGGradient(self, v46, v47);

    stopsCopy = v48;
  }
}

- (void)p_insertGradientStop:(id)stop
{
  stopCopy = stop;
  if (objc_msgSend_count(self->_stops, v5, v6))
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = objc_msgSend_count(self->_stops, v7, v8);
    stops = self->_stops;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = sub_27664D1FC;
    v18 = &unk_27A6CC460;
    v10 = stopCopy;
    v19 = v10;
    v20 = &v21;
    objc_msgSend_enumerateObjectsUsingBlock_(stops, v11, &v15);
    objc_msgSend_insertObject_atIndex_(self->_stops, v12, v10, v22[3], v15, v16, v17, v18);
    objc_msgSend_p_invalidateCGGradient(self, v13, v14);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    objc_msgSend_addObject_(self->_stops, v7, stopCopy);
  }
}

- (void)p_removeStop:(id)stop
{
  stopCopy = stop;
  if (objc_msgSend_count(self->_stops, v4, v5) < 3)
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v6, *MEMORY[0x277CBE648], @"Attempted to remove too many gradient stops. Must have at least 2.");
  }

  else
  {
    objc_msgSend_removeObject_(self->_stops, v6, stopCopy);
  }

  objc_msgSend_p_invalidateCGGradient(self, v7, v8);
}

- (id)p_removeStopAtIndex:(unint64_t)index
{
  if (objc_msgSend_count(self->_stops, a2, index) < 3)
  {
    v11 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v5, *MEMORY[0x277CBE660], @"Attempted to remove too many gradient stops. Must have at least 2.", 0);
    objc_exception_throw(v11);
  }

  v6 = objc_msgSend_objectAtIndexedSubscript_(self->_stops, v5, index);
  objc_msgSend_removeObjectAtIndex_(self->_stops, v7, index);
  objc_msgSend_p_invalidateCGGradient(self, v8, v9);

  return v6;
}

- (id)p_insertStopAtFraction:(double)fraction
{
  v6 = objc_msgSend_p_newColorAtFraction_(self, a2, v3);
  v8 = objc_msgSend_p_insertStopAtFraction_withColor_(self, v7, v6, fraction);

  return v8;
}

- (id)p_insertStopAtFraction:(double)fraction withColor:(id)color
{
  v5 = objc_msgSend_gradientStopWithColor_fraction_(TSDGradientStop, a2, color, fraction);
  objc_msgSend_p_insertGradientStop_(self, v6, v5);
  objc_msgSend_p_invalidateCGGradient(self, v7, v8);

  return v5;
}

- (void)p_reverseStopOrder
{
  v4 = objc_msgSend_count(self->_stops, a2, v2);
  v7 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v5, v4);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v9 = objc_msgSend_objectAtIndexedSubscript_(self->_stops, v6, i);
      v12 = objc_msgSend_mutableCopy(v9, v10, v11);
      objc_msgSend_addObject_(v7, v13, v12);
    }
  }

  v14 = 0;
  v15 = 1;
  v16 = v4 - 1;
  do
  {
    v17 = v14;
    v53 = objc_msgSend_objectAtIndexedSubscript_(v7, v6, v15 - 1);

    objc_msgSend_fraction(v53, v18, v19);
    objc_msgSend_setFraction_(v53, v21, v22, 1.0 - v20);
    if (v15 - 1 == v16)
    {
      v14 = v53;
    }

    else
    {
      v23 = objc_msgSend_objectAtIndexedSubscript_(v7, v6, v16);

      objc_msgSend_fraction(v23, v24, v25);
      objc_msgSend_setFraction_(v23, v27, v28, 1.0 - v26);
      objc_msgSend_exchangeObjectAtIndex_withObjectAtIndex_(v7, v29, v15 - 1, v16);
      v14 = v23;
    }
  }

  while (v15++ <= --v16);
  v54 = v14;
  if (v4 != 1)
  {
    v31 = 0;
    v32 = v4 - 2;
    do
    {
      v33 = objc_msgSend_objectAtIndexedSubscript_(v7, v6, v31);
      v35 = objc_msgSend_objectAtIndexedSubscript_(self->_stops, v34, v32);
      objc_msgSend_inflection(v35, v36, v37);
      objc_msgSend_setInflection_(v33, v39, v40, 1.0 - v38);

      ++v31;
      --v32;
    }

    while (v32 != -1);
  }

  v41 = objc_msgSend_objectAtIndexedSubscript_(v7, v6, v4 - 1);
  objc_msgSend_setInflection_(v41, v42, v43, 0.5);

  if (v4)
  {
    for (j = 0; j != v4; ++j)
    {
      v47 = [TSDGradientStop alloc];
      v49 = objc_msgSend_objectAtIndexedSubscript_(v7, v48, j);
      v51 = objc_msgSend_initWithGradientStop_(v47, v50, v49);

      objc_msgSend_setObject_atIndexedSubscript_(self->_stops, v52, v51, j);
    }
  }

  objc_msgSend_p_invalidateCGGradient(self, v44, v45);
}

- (void)p_evenlyDistributeStops
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_count(self->_stops, a2, v2);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_stops;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v17, v21, 16);
  if (v7)
  {
    v10 = v7;
    v11 = 1.0 / (v4 - 1);
    v12 = *v18;
    v13 = 0.0;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_setFraction_(*(*(&v17 + 1) + 8 * v14), v8, v9, v13, v17);
        v13 = v11 + v13;
        ++v14;
      }

      while (v10 != v14);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v17, v21, 16);
    }

    while (v10);
  }

  objc_msgSend_p_invalidateCGGradient(self, v15, v16);
}

- (void)p_moveStopAtIndex:(unint64_t)index toFraction:(double)fraction
{
  v7 = objc_msgSend_objectAtIndexedSubscript_(self->_stops, a2, index);
  v18 = objc_msgSend_mutableCopy(v7, v8, v9);

  objc_msgSend_setFraction_(v18, v10, v11, fraction);
  v12 = [TSDGradientStop alloc];
  v14 = objc_msgSend_initWithGradientStop_(v12, v13, v18);
  objc_msgSend_setObject_atIndexedSubscript_(self->_stops, v15, v14, index);
  objc_msgSend_p_invalidateCGGradient(self, v16, v17);
}

- (void)p_swapStopAtIndex:(unint64_t)index withStopAtIndex:(unint64_t)atIndex
{
  v7 = objc_msgSend_objectAtIndexedSubscript_(self->_stops, a2, index);
  v25 = objc_msgSend_mutableCopy(v7, v8, v9);

  v11 = objc_msgSend_objectAtIndexedSubscript_(self->_stops, v10, atIndex);
  v14 = objc_msgSend_mutableCopy(v11, v12, v13);

  v15 = [TSDGradientStop alloc];
  v17 = objc_msgSend_initWithGradientStop_(v15, v16, v14);
  v18 = [TSDGradientStop alloc];
  v20 = objc_msgSend_initWithGradientStop_(v18, v19, v25);
  objc_msgSend_setObject_atIndexedSubscript_(self->_stops, v21, v17, index);
  objc_msgSend_setObject_atIndexedSubscript_(self->_stops, v22, v20, atIndex);
  objc_msgSend_p_invalidateCGGradient(self, v23, v24);
}

- (void)p_setColorOfStopAtIndex:(unint64_t)index toColor:(id)color
{
  stops = self->_stops;
  colorCopy = color;
  v9 = objc_msgSend_objectAtIndexedSubscript_(stops, v8, index);
  v19 = objc_msgSend_mutableCopy(v9, v10, v11);

  objc_msgSend_setColor_(v19, v12, colorCopy);
  v13 = [TSDGradientStop alloc];
  v15 = objc_msgSend_initWithGradientStop_(v13, v14, v19);
  objc_msgSend_setObject_atIndexedSubscript_(self->_stops, v16, v15, index);
  objc_msgSend_p_invalidateCGGradient(self, v17, v18);
}

- (void)p_setInflectionOfStopAtIndex:(unint64_t)index toInflection:(double)inflection
{
  v7 = objc_msgSend_objectAtIndexedSubscript_(self->_stops, a2, index);
  v18 = objc_msgSend_mutableCopy(v7, v8, v9);

  objc_msgSend_setInflection_(v18, v10, v11, inflection);
  v12 = [TSDGradientStop alloc];
  v14 = objc_msgSend_initWithGradientStop_(v12, v13, v18);
  objc_msgSend_setObject_atIndexedSubscript_(self->_stops, v15, v14, index);
  objc_msgSend_p_invalidateCGGradient(self, v16, v17);
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = *(archive + 7);
  if (!v6)
  {
    v6 = &TSD::_GradientArchive_default_instance_;
  }

  v7 = v6[4];
  if (v7)
  {
    v8 = off_27A6CB7E0;
  }

  else if ((v7 & 2) != 0)
  {
    v8 = off_27A6CBAB0;
  }

  else
  {
    v8 = off_27A6CB900;
  }

  v9 = objc_alloc(*v8);
  v11 = objc_msgSend_initWithArchive_unarchiver_(v9, v10, archive, unarchiverCopy);

  return v11;
}

- (TSDGradient)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 7))
  {
    v7 = *(archive + 7);
  }

  else
  {
    v7 = &TSD::_GradientArchive_default_instance_;
  }

  v8 = v7[16] == 1;
  v9 = v7[8];
  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  v13 = objc_msgSend_initWithCapacity_(v10, v11, v9);
  if (v9 >= 1)
  {
    v14 = 8;
    do
    {
      v15 = [TSDGradientStop alloc];
      v17 = objc_msgSend_initWithArchive_unarchiver_(v15, v16, *(*(v7 + 5) + v14), unarchiverCopy);
      objc_msgSend_addObject_(v13, v18, v17);

      v14 += 8;
      --v9;
    }

    while (v9);
  }

  v19 = objc_msgSend_initWithGradientStops_type_opacity_(self, v12, v13, v8, *(v7 + 17));
  v21 = v19;
  if (v19)
  {
    objc_msgSend_i_setAdvancedGradientFlag_(v19, v20, *(v7 + 72));
  }

  return v21;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v40 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  *(archive + 10) |= 2u;
  v9 = *(archive + 7);
  if (!v9)
  {
    v10 = *(archive + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::GradientArchive>(v10);
    *(archive + 7) = v9;
  }

  v11 = objc_msgSend_gradientType(self, v6, v7);
  if (v11)
  {
    if (v11 != 1)
    {
      goto LABEL_10;
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  *(v9 + 16) |= 4u;
  *(v9 + 64) = v14;
LABEL_10:
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = objc_msgSend_gradientStops(self, v12, v13, 0);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v35, v39, 16);
  if (v18)
  {
    v19 = *v36;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v35 + 1) + 8 * i);
        v22 = *(v9 + 40);
        if (!v22)
        {
          goto LABEL_20;
        }

        v23 = *(v9 + 32);
        v24 = *v22;
        if (v23 < *v22)
        {
          *(v9 + 32) = v23 + 1;
          objc_msgSend_saveToArchive_archiver_(v21, v17, *&v22[2 * v23 + 2], archiverCopy);
          continue;
        }

        if (v24 == *(v9 + 36))
        {
LABEL_20:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v9 + 24));
          v22 = *(v9 + 40);
          v24 = *v22;
        }

        *v22 = v24 + 1;
        v25 = google::protobuf::Arena::CreateMaybeMessage<TSD::GradientArchive_GradientStop>(*(v9 + 24));
        v26 = *(v9 + 32);
        v27 = *(v9 + 40) + 8 * v26;
        *(v9 + 32) = v26 + 1;
        *(v27 + 8) = v25;
        objc_msgSend_saveToArchive_archiver_(v21, v28, v25, archiverCopy);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v35, v39, 16);
    }

    while (v18);
  }

  objc_msgSend_opacity(self, v29, v30);
  *&v31 = v31;
  *(v9 + 16) |= 8u;
  *(v9 + 68) = LODWORD(v31);
  v34 = objc_msgSend_i_advancedGradientFlag(self, v32, v33);
  *(v9 + 16) |= 0x10u;
  *(v9 + 72) = v34;
}

@end
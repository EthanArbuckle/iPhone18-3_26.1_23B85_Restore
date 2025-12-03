@interface TSDCalloutPathSource
+ (id)calloutWithCornerRadius:(double)radius tailPosition:(CGPoint)position tailSize:(double)size naturalSize:(CGSize)naturalSize;
+ (id)quoteBubbleWithTailPosition:(CGPoint)position tailSize:(double)size naturalSize:(CGSize)naturalSize;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOval;
- (CGPoint)getControlKnobPosition:(unint64_t)position;
- (CGPoint)p_adjustedCenterForPath:(id)path;
- (CGPoint)p_getControlKnobPointForRoundedRect;
- (CGPoint)p_tailCenter;
- (CGPoint)p_tailPosition;
- (CGPoint)rawTailPosition;
- (CGPoint)tailKnobPosition;
- (CGPoint)tailSizeKnobPosition;
- (CGSize)naturalSize;
- (TSDCalloutPathSource)initWithArchive:(const void *)archive;
- (TSDCalloutPathSource)initWithCornerRadius:(double)radius tailPosition:(CGPoint)position tailSize:(double)size naturalSize:(CGSize)naturalSize tailAtCenter:(BOOL)center;
- (double)clampedCalloutTailSize;
- (double)clampedCornerRadius;
- (double)maxTailSize;
- (id)copy;
- (id)description;
- (id)inferredAccessibilityDescription;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)name;
- (id)p_basePath;
- (id)p_buildPath;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (unint64_t)hash;
- (void)p_getTailPath:(id)path center:(CGPoint *)center tailSize:(double *)size intersections:(CGPoint)intersections[2];
- (void)p_setControlKnobPointForRoundedRect:(CGPoint)rect;
- (void)saveToArchive:(void *)archive;
- (void)scaleToNaturalSize:(CGSize)size;
- (void)setCornerRadius:(double)radius;
- (void)setTailKnobPosition:(CGPoint)position;
- (void)setTailSize:(double)size;
- (void)setTailSizeKnobPosition:(CGPoint)position;
@end

@implementation TSDCalloutPathSource

- (TSDCalloutPathSource)initWithCornerRadius:(double)radius tailPosition:(CGPoint)position tailSize:(double)size naturalSize:(CGSize)naturalSize tailAtCenter:(BOOL)center
{
  centerCopy = center;
  height = naturalSize.height;
  width = naturalSize.width;
  y = position.y;
  x = position.x;
  v26.receiver = self;
  v26.super_class = TSDCalloutPathSource;
  v14 = [(TSDCalloutPathSource *)&v26 init];
  v17 = v14;
  if (v14)
  {
    objc_msgSend_p_setNaturalSize_(v14, v15, v16, width, height);
    objc_msgSend_p_setCornerRadius_(v17, v18, v19, radius);
    objc_msgSend_p_setTailPosition_(v17, v20, v21, x, y);
    objc_msgSend_p_setTailSize_(v17, v22, v23, size);
    objc_msgSend_p_setTailAtCenter_(v17, v24, centerCopy);
  }

  return v17;
}

+ (id)calloutWithCornerRadius:(double)radius tailPosition:(CGPoint)position tailSize:(double)size naturalSize:(CGSize)naturalSize
{
  height = naturalSize.height;
  width = naturalSize.width;
  y = position.y;
  x = position.x;
  v12 = [self alloc];
  v14 = objc_msgSend_initWithCornerRadius_tailPosition_tailSize_naturalSize_tailAtCenter_(v12, v13, 0, radius, x, y, size, width, height);

  return v14;
}

+ (id)quoteBubbleWithTailPosition:(CGPoint)position tailSize:(double)size naturalSize:(CGSize)naturalSize
{
  height = naturalSize.height;
  width = naturalSize.width;
  y = position.y;
  x = position.x;
  v10 = [self alloc];
  v12 = objc_msgSend_initWithCornerRadius_tailPosition_tailSize_naturalSize_tailAtCenter_(v10, v11, 1, width + 10.0, x, y, size, width, height);

  return v12;
}

- (id)copy
{
  v14.receiver = self;
  v14.super_class = TSDCalloutPathSource;
  v3 = [(TSDCalloutPathSource *)&v14 copy];
  objc_msgSend_p_setNaturalSize_(v3, v4, v5, self->_naturalSize.width, self->_naturalSize.height);
  objc_msgSend_p_setCornerRadius_(v3, v6, v7, self->_cornerRadius);
  objc_msgSend_p_setTailPosition_(v3, v8, v9, self->_tailPosition.x, self->_tailPosition.y);
  objc_msgSend_p_setTailSize_(v3, v10, v11, self->_tailSize);
  objc_msgSend_p_setTailAtCenter_(v3, v12, self->_isTailAtCenter);
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v19 = 1;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = TSDCalloutPathSource;
    if ([(TSDPathSource *)&v21 isEqual:equalCopy])
    {
      objc_opt_class();
      v5 = TSUDynamicCast();
      v8 = v5;
      if (v5 && (objc_msgSend_naturalSize(v5, v6, v7), TSUNearlyEqualSizes()) && ((cornerRadius = self->_cornerRadius, objc_msgSend_cornerRadius(v8, v9, v10), cornerRadius == v14) || vabdd_f64(cornerRadius, v14) < 0.00999999978) && (objc_msgSend_p_tailPosition(v8, v12, v13), TSUNearlyEqualPoints()))
      {
        tailSize = self->_tailSize;
        objc_msgSend_tailSize(v8, v15, v16);
        v19 = vabdd_f64(tailSize, v18) < 0.00999999978 || tailSize == v18;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (id)description
{
  v16.receiver = self;
  v16.super_class = TSDCalloutPathSource;
  v3 = [(TSDCalloutPathSource *)&v16 description];
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  cornerRadius = self->_cornerRadius;
  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromCGPoint(self->_tailPosition);
  tailSize = self->_tailSize;
  v11 = NSStringFromCGSize(self->_naturalSize);
  v13 = objc_msgSend_stringWithFormat_(v8, v12, @" corner radius=%f; tail position=%@, tail size=%f natural size=%@", *&cornerRadius, v9, *&tailSize, v11);;
  objc_msgSend_appendString_(v6, v14, v13);

  return v6;
}

- (CGPoint)getControlKnobPosition:(unint64_t)position
{
  switch(position)
  {
    case 0xEuLL:
      objc_msgSend_tailSizeKnobPosition(self, a2, 14);
      break;
    case 0xDuLL:
      objc_msgSend_p_getControlKnobPointForRoundedRect(self, a2, 13);
      break;
    case 0xCuLL:
      objc_msgSend_tailKnobPosition(self, a2, 12);
      break;
    default:
      v3 = *MEMORY[0x277CBF348];
      v4 = *(MEMORY[0x277CBF348] + 8);
      break;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setCornerRadius:(double)radius
{
  objc_msgSend_p_setCornerRadius_(self, a2, v3, radius);
  cornerRadius = self->_cornerRadius;
  v8 = 0.0;
  if (cornerRadius >= 0.0)
  {
    objc_msgSend_maxCornerRadius(self, v5, v6, 0.0);
    if (cornerRadius < v11)
    {
      return;
    }

    objc_msgSend_maxCornerRadius(self, v9, v10);
    v8 = v12 + 1.0;
  }

  self->_cornerRadius = v8;
}

- (BOOL)isOval
{
  cornerRadius = self->_cornerRadius;
  objc_msgSend_maxCornerRadius(self, a2, v2);
  return cornerRadius >= v4;
}

- (double)clampedCornerRadius
{
  objc_msgSend_cornerRadius(self, a2, v2);
  v5 = v4;
  objc_msgSend_maxCornerRadius(self, v6, v7);
  return fmin(v5, v8);
}

- (void)setTailSize:(double)size
{
  objc_msgSend_p_setTailSize_(self, a2, v3, size);
  height = self->_naturalSize.height;
  if (height < self->_naturalSize.width)
  {
    height = self->_naturalSize.width;
  }

  tailSize = self->_tailSize;
  if (tailSize > height || (height = -height, tailSize < height))
  {
    self->_tailSize = height;
  }
}

- (CGPoint)tailSizeKnobPosition
{
  v26 = *MEMORY[0x277D85DE8];
  objc_msgSend_naturalSize(self, a2, v2);
  v5 = v4;
  v7 = v6;
  v10 = objc_msgSend_p_basePath(self, v8, v9);
  objc_msgSend_p_getTailPath_center_tailSize_intersections_(self, v11, v10, 0, 0, &v22);
  if (v22 + v23 >= v24 + v25)
  {
    v14 = v25;
  }

  else
  {
    v14 = v23;
  }

  if (v22 + v23 >= v24 + v25)
  {
    v15 = v24;
  }

  else
  {
    v15 = v22;
  }

  if (objc_msgSend_hasHorizontalFlip(self, v12, v13))
  {
    v18 = v5 - v15;
  }

  else
  {
    v18 = v15;
  }

  if (objc_msgSend_hasVerticalFlip(self, v16, v17))
  {
    v19 = v7 - v14;
  }

  else
  {
    v19 = v14;
  }

  v20 = v18;
  v21 = v19;
  result.y = v21;
  result.x = v20;
  return result;
}

- (double)maxTailSize
{
  v47[4] = *MEMORY[0x277D85DE8];
  objc_msgSend_p_tailPosition(self, a2, v2);
  v5 = v4;
  v7 = v6;
  v10 = objc_msgSend_p_basePath(self, v8, v9);
  objc_msgSend_p_adjustedCenterForPath_(self, v11, v10);
  v13 = v12;
  v15 = v14;
  TSUDistance();
  v17 = v16;
  v47[0] = v5;
  v47[1] = v7;
  v47[2] = v13;
  v47[3] = v15;
  v40 = 0.0;
  v41 = 0.0;
  v20 = objc_msgSend_elementCount(v10, v18, v19);
  if (v20 < 1)
  {
    v33 = 0.0;
    v34 = 0.0;
    goto LABEL_11;
  }

  v24 = v20;
  TSUSubtractPoints();
  TSUNormalizePoint();
  v26 = v25;
  v28 = v27;
  for (i = 0; i != v24; ++i)
  {
    v30 = objc_msgSend_elementAtIndex_allPoints_(v10, v21, i, &v42);
    if (v30 == 2)
    {
      sub_27668D444(v47, &v41, &v40, v42.f64[0], v42.f64[1], v26, v28, v5, v7, v17);
      sub_27668D444(v47, &v41, &v40, v45, v46, v26, v28, v5, v7, v17);
      v31 = TSDPointOnCurve(&v42, 0.5);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      sub_27668D444(v47, &v41, &v40, v42.f64[0], v42.f64[1], v26, v28, v5, v7, v17);
      v31 = v43;
      v32 = v44;
    }

    v23 = sub_27668D444(v47, &v41, &v40, v31, v32, v26, v28, v5, v7, v17);
  }

  v33 = v40;
  v34 = v41;
LABEL_11:
  objc_msgSend_minTailSize(self, v21, v22, v23);
  v36 = v35;

  v37 = fmin(v34, -v33) * 0.899999976;
  v38 = v36;
  return fmaxf(v37, v38);
}

- (double)clampedCalloutTailSize
{
  objc_msgSend_tailSize(self, a2, v2);
  v5 = v4;
  objc_msgSend_maxTailSize(self, v6, v7);
  return fmin(v5, v8);
}

- (void)setTailSizeKnobPosition:(CGPoint)position
{
  v23 = *MEMORY[0x277D85DE8];
  objc_msgSend_naturalSize(self, a2, v3);
  objc_msgSend_hasHorizontalFlip(self, v5, v6);
  objc_msgSend_hasVerticalFlip(self, v7, v8);
  v21[0] = 0;
  v21[1] = 0;
  v11 = objc_msgSend_p_basePath(self, v9, v10);
  objc_msgSend_p_getTailPath_center_tailSize_intersections_(self, v12, v11, v21, 0, v22);
  objc_msgSend_p_tailPosition(self, v13, v14);
  TSUSubtractPoints();
  TSUNormalizePoint();
  TSUSubtractPoints();
  TSUNormalizePoint();
  TSUDotPoints();
  v20 = v15;
  TSURotatePoint90Degrees();
  TSUDotPoints();
  v17 = fabs(v16);
  TSUDistance();
  v19 = v17 * (v18 / v20);
  if (fabs(v19) < 1.0)
  {
    v19 = 1.0;
  }

  self->_tailSize = v19;
}

- (void)setTailKnobPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  objc_msgSend_naturalSize(self, a2, v3);
  v8 = v7;
  v10 = v9;
  if (objc_msgSend_hasHorizontalFlip(self, v11, v12))
  {
    x = v8 - x;
  }

  if (objc_msgSend_hasVerticalFlip(self, v13, v14))
  {
    v17 = v10 - y;
  }

  else
  {
    v17 = y;
  }

  objc_msgSend_p_setTailPosition_(self, v15, v16, x, v17);
}

- (CGPoint)tailKnobPosition
{
  x = self->_tailPosition.x;
  y = self->_tailPosition.y;
  objc_msgSend_naturalSize(self, a2, v2);
  v7 = v6;
  v9 = v8;
  if (objc_msgSend_hasHorizontalFlip(self, v10, v11))
  {
    v14 = v7 - x;
  }

  else
  {
    v14 = x;
  }

  if (objc_msgSend_hasVerticalFlip(self, v12, v13))
  {
    v15 = v9 - y;
  }

  else
  {
    v15 = y;
  }

  v16 = v14;
  result.y = v15;
  result.x = v16;
  return result;
}

- (void)scaleToNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  objc_msgSend_uniformScaleForScalingToNaturalSize_(self, a2, v3);
  v8 = v7;
  objc_msgSend_naturalSize(self, v9, v10);
  isOval = objc_msgSend_isOval(self, v11, v12);
  self->_tailSize = v8 * self->_tailSize;
  TSUMultiplyPointScalar();
  TSUAddPoints();
  self->_tailPosition.x = v14;
  self->_tailPosition.y = v15;
  objc_msgSend_p_setNaturalSize_(self, v16, v17, width, height);
  objc_msgSend_maxCornerRadius(self, v18, v19);
  if (isOval)
  {
    v21 = v20 + 1.0;
  }

  else
  {
    v21 = fmin(v20 + -0.001, v8 * self->_cornerRadius);
  }

  self->_cornerRadius = v21;
}

- (CGPoint)p_tailCenter
{
  if (self->_isTailAtCenter)
  {
    v4 = self->_naturalSize.width * 0.5;
    v5 = self->_naturalSize.height * 0.5;
  }

  else
  {
    objc_msgSend_p_tailPosition(self, a2, v2);
    v4 = v6;
    v8 = v7;
    objc_msgSend_cornerRadius(self, v9, v10);
    v5 = v11;
    if (v4 <= v11 || v4 >= self->_naturalSize.width - v11)
    {
      if (v8 <= v11 || v8 >= self->_naturalSize.height - v11)
      {
        v12 = v4 > v11;
        v4 = v11;
        if (v12)
        {
          v4 = self->_naturalSize.width - v11;
        }

        if (v8 > v11)
        {
          v5 = self->_naturalSize.height - v11;
        }
      }

      else
      {
        v4 = self->_naturalSize.width * 0.5;
        v5 = v8;
      }
    }

    else
    {
      v5 = self->_naturalSize.height * 0.5;
    }
  }

  v13 = v4;
  result.y = v5;
  result.x = v13;
  return result;
}

- (id)name
{
  isTailAtCenter = objc_msgSend_isTailAtCenter(self, a2, v2);
  v4 = isTailAtCenter;
  v7 = sub_2767B590C(isTailAtCenter, v5, v6);
  v9 = v7;
  if (v4)
  {
    objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"Quote Bubble", &stru_28857D120, @"TSDrawables");
  }

  else
  {
    objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"Callout", &stru_28857D120, @"TSDrawables");
  }
  v10 = ;

  return v10;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  objc_opt_class();
  v6 = TSUDynamicCast();

  if (!v6)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDCalloutPathSource mixingTypeWithObject:context:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCalloutPathSource.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 445, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
    goto LABEL_11;
  }

  if (self->_isTailAtCenter != v6[40])
  {
LABEL_11:
    v29 = 1;
    goto LABEL_12;
  }

  objc_msgSend_naturalSize(self, v7, v8);
  objc_msgSend_naturalSize(v6, v9, v10);
  if (!TSUNearlyEqualSizes() || (objc_msgSend_p_tailPosition(self, v11, v12), objc_msgSend_p_tailPosition(v6, v13, v14), !TSUNearlyEqualPoints()) || (objc_msgSend_cornerRadius(self, v15, v16), v18 = v17, objc_msgSend_cornerRadius(v6, v19, v20), v18 != v23) && vabdd_f64(v18, v23) >= 0.00999999978 || (objc_msgSend_tailSize(self, v21, v22), v25 = v24, objc_msgSend_tailSize(v6, v26, v27), v29 = 4, v25 != v28) && vabdd_f64(v25, v28) >= 0.00999999978)
  {
    v29 = 3;
  }

LABEL_12:

  return v29;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v6 = TSUDynamicCast();

  v7 = [TSDCalloutPathSource alloc];
  objc_msgSend_cornerRadius(self, v8, v9);
  objc_msgSend_cornerRadius(v6, v10, v11);
  TSUMix();
  v13 = v12;
  objc_msgSend_p_tailPosition(self, v14, v15);
  objc_msgSend_p_tailPosition(v6, v16, v17);
  TSUMixPoints();
  v19 = v18;
  v21 = v20;
  objc_msgSend_tailSize(self, v22, v23);
  objc_msgSend_tailSize(v6, v24, v25);
  TSUMix();
  v27 = v26;
  objc_msgSend_naturalSize(self, v28, v29);
  objc_msgSend_naturalSize(v6, v30, v31);
  TSUMixSizes();
  v35 = objc_msgSend_initWithCornerRadius_tailPosition_tailSize_naturalSize_tailAtCenter_(v7, v32, self->_isTailAtCenter, v13, v19, v21, v27, v33, v34);

  return v35;
}

- (CGPoint)p_tailPosition
{
  x = self->_tailPosition.x;
  y = self->_tailPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)p_adjustedCenterForPath:(id)path
{
  v28[4] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objc_msgSend_p_tailCenter(self, v5, v6);
  v8 = v7;
  v10 = v9;
  objc_msgSend_p_tailPosition(self, v11, v12);
  v28[0] = v13;
  v28[1] = v14;
  *&v28[2] = v8;
  *&v28[3] = v10;
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_addIntersectionsWithLine_to_(pathCopy, v16, v28, v15);

  if (objc_msgSend_count(v15, v17, v18))
  {
    v21 = objc_msgSend_lastObject(v15, v19, v20);
    objc_msgSend_point(v21, v22, v23);
    v8 = v24;
    v10 = v25;
  }

  v26 = v8;
  v27 = v10;
  result.y = v27;
  result.x = v26;
  return result;
}

- (void)p_getTailPath:(id)path center:(CGPoint *)center tailSize:(double *)size intersections:(CGPoint)intersections[2]
{
  v76[4] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objc_msgSend_tailSize(self, v11, v12);
  v14 = v13;
  objc_msgSend_p_tailPosition(self, v15, v16);
  v18 = v17;
  v20 = v19;
  objc_msgSend_p_adjustedCenterForPath_(self, v21, pathCopy);
  v23 = v22;
  v25 = v24;
  objc_msgSend_maxTailSize(self, v26, v27);
  v29 = fmin(fabs(v14), v28);
  TSUSubtractPoints();
  TSUNormalizePoint();
  v74 = v29;
  TSUMultiplyPointScalar();
  TSURotatePoint90Degrees();
  v76[0] = v18;
  v76[1] = v20;
  TSUAddPoints();
  TSUSubtractPoints();
  TSUMultiplyPointScalar();
  TSUAddPoints();
  v76[2] = v30;
  v76[3] = v31;
  v75[0] = v18;
  v75[1] = v20;
  TSUSubtractPoints();
  TSUSubtractPoints();
  TSUMultiplyPointScalar();
  TSUAddPoints();
  v75[2] = v32;
  v75[3] = v33;
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_addIntersectionsWithLine_to_(pathCopy, v36, v76, v34);
  objc_msgSend_addIntersectionsWithLine_to_(pathCopy, v37, v75, v35);
  if (objc_msgSend_count(v34, v38, v39))
  {
    v41 = objc_msgSend_objectAtIndexedSubscript_(v34, v40, 0);
    objc_msgSend_point(v41, v42, v43);

    v46 = objc_msgSend_lastObject(v34, v44, v45);
    objc_msgSend_point(v46, v47, v48);

    TSUDistance();
    TSUDistance();
    TSUSubtractPoints();
    TSUNormalizePoint();
    TSUAddPoints();
  }

  else
  {
    v53 = pathCopy;
    v56 = objc_msgSend_CGPath(v53, v54, v55);
    v51 = sub_27666B350(v56, v76);
  }

  v57 = v51;
  v58 = v52;
  if (objc_msgSend_count(v35, v49, v50))
  {
    v60 = objc_msgSend_objectAtIndexedSubscript_(v35, v59, 0);
    objc_msgSend_point(v60, v61, v62);

    v65 = objc_msgSend_lastObject(v35, v63, v64);
    objc_msgSend_point(v65, v66, v67);

    TSUDistance();
    TSUDistance();
    TSUSubtractPoints();
    TSUNormalizePoint();
    TSUAddPoints();
  }

  else
  {
    v70 = pathCopy;
    v73 = objc_msgSend_CGPath(v70, v71, v72);
    v68 = sub_27666B350(v73, v75);
  }

  intersections->x = v57;
  intersections->y = v58;
  intersections[1].x = v68;
  intersections[1].y = v69;
  if (center)
  {
    center->x = v23;
    center->y = v25;
  }

  if (size)
  {
    *size = v74;
  }
}

- (id)p_basePath
{
  objc_msgSend_naturalSize(self, a2, v2);
  v5 = v4;
  v7 = v6;
  objc_msgSend_cornerRadius(self, v8, v9);
  v11 = v10;
  objc_msgSend_maxCornerRadius(self, v12, v13);
  v15 = v14;
  v18 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v16, v17);
  objc_msgSend_cornerRadius(self, v19, v20);
  v22 = v21;
  objc_msgSend_maxCornerRadius(self, v23, v24);
  if (v22 >= v27)
  {
    objc_msgSend_appendBezierPathWithOvalInRect_(v18, v25, v26, -0.5, -0.5, 1.0, 1.0);
    objc_msgSend_closePath(v18, v53, v54);
    memset(&v59, 0, sizeof(v59));
    CGAffineTransformMakeScale(&v59, self->_naturalSize.width, self->_naturalSize.height);
    v57 = v59;
    CGAffineTransformTranslate(&v58, &v57, 0.5, 0.5);
    v59 = v58;
    v57 = v58;
    CGAffineTransformRotate(&v58, &v57, 0.785398163);
    v59 = v58;
    objc_msgSend_transformUsingAffineTransform_(v18, v55, &v58);
  }

  else
  {
    v28 = *MEMORY[0x277CBF348];
    v29 = *(MEMORY[0x277CBF348] + 8);
    v30 = fmin(v11, v15);
    TSUAddPoints();
    v32 = v31;
    v34 = v33;
    objc_msgSend_moveToPoint_(v18, v35, v36);
    TSUAddPoints();
    objc_msgSend_appendBezierPathWithArcFromPoint_toPoint_radius_(v18, v37, v38, v28, v29, v39, v40, v30);
    TSUSubtractPoints();
    objc_msgSend_appendBezierPathWithArcFromPoint_toPoint_radius_(v18, v41, v42, v5, 0.0, v43, v44, v30);
    TSUSubtractPoints();
    objc_msgSend_appendBezierPathWithArcFromPoint_toPoint_radius_(v18, v45, v46, v5, v7, v47, v48, v30);
    objc_msgSend_appendBezierPathWithArcFromPoint_toPoint_radius_(v18, v49, v50, 0.0, v7, v32, v34, v30);
    objc_msgSend_closePath(v18, v51, v52);
  }

  return v18;
}

- (id)p_buildPath
{
  v33[4] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_p_basePath(self, a2, v2);
  objc_msgSend_p_tailPosition(self, v5, v6);
  v8 = v7;
  v10 = v9;
  if (objc_msgSend_containsPoint_(v4, v11, v12))
  {
    v14 = v4;
  }

  else
  {
    objc_msgSend_p_getTailPath_center_tailSize_intersections_(self, v13, v4, 0, 0, v33);
    v17 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v15, v16);
    objc_msgSend_moveToPoint_(v17, v18, v19, v33[0], v33[1]);
    objc_msgSend_lineToPoint_(v17, v20, v21, v8, v10);
    objc_msgSend_lineToPoint_(v17, v22, v23, v33[2], v33[3]);
    v24 = MEMORY[0x277D81160];
    v26 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v25, v4, v17, 0);
    v28 = objc_msgSend_uniteBezierPaths_(v24, v27, v26);

    if (objc_msgSend_elementCount(v28, v29, v30))
    {
      v31 = v28;
    }

    else
    {
      v31 = v4;
    }

    v14 = v31;
  }

  return v14;
}

- (void)p_setControlKnobPointForRoundedRect:(CGPoint)rect
{
  objc_msgSend_maxCornerRadius(self, a2, v3);
  TSUClamp();

  MEMORY[0x2821F9670](self, sel_setCornerRadius_, v5);
}

- (CGPoint)p_getControlKnobPointForRoundedRect
{
  objc_msgSend_maxCornerRadius(self, a2, v2);
  TSUClamp();
  *&v3 = v3;
  v4 = *&v3;
  v5 = 0.0;
  result.y = v5;
  result.x = v4;
  return result;
}

- (id)inferredAccessibilityDescription
{
  isTailAtCenter = objc_msgSend_isTailAtCenter(self, a2, v2);
  v4 = isTailAtCenter;
  v7 = sub_2767B590C(isTailAtCenter, v5, v6);
  v9 = v7;
  if (v4)
  {
    objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"Quote bubble", &stru_28857D120, @"TSDrawables");
  }

  else
  {
    objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"Callout", &stru_28857D120, @"TSDrawables");
  }
  v10 = ;

  return v10;
}

- (CGPoint)rawTailPosition
{
  x = self->_tailPosition.x;
  y = self->_tailPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)naturalSize
{
  width = self->_naturalSize.width;
  height = self->_naturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (TSDCalloutPathSource)initWithArchive:(const void *)archive
{
  if (*(archive + 8))
  {
    v5 = *(archive + 8);
  }

  else
  {
    v5 = &TSD::_CalloutPathSourceArchive_default_instance_;
  }

  if (v5[3])
  {
    v6 = v5[3];
  }

  else
  {
    v6 = MEMORY[0x277D809D8];
  }

  TSPCGSizeCreateFromMessage(v6);
  v8 = v7;
  v10 = v9;
  if (v5[4])
  {
    v11 = v5[4];
  }

  else
  {
    v11 = MEMORY[0x277D809F0];
  }

  TSPCGPointFromMessage(v11);
  v15 = v14;
  v16 = *(v5 + 4);
  if ((v16 & 8) != 0)
  {
    v17 = *(v5 + 11);
  }

  else
  {
    v17 = v8 + 10.0;
  }

  if ((v16 & 0x10) != 0)
  {
    v18 = objc_msgSend_initWithCornerRadius_tailPosition_tailSize_naturalSize_tailAtCenter_(self, v12, v5[6] & 1, v17, v15, v13, *(v5 + 10), v8, v10);
  }

  else
  {
    v18 = objc_msgSend_initWithCornerRadius_tailPosition_tailSize_naturalSize_tailAtCenter_(self, v12, 1, v17, v15, v13, *(v5 + 10), v8, v10);
  }

  v20 = v18;
  if (v18)
  {
    objc_msgSend_loadSharedFromArchive_(v18, v19, archive);
  }

  return v20;
}

- (void)saveToArchive:(void *)archive
{
  objc_msgSend_saveSharedToArchive_(self, a2, archive);
  *(archive + 4) |= 0x20u;
  v7 = *(archive + 8);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSD::CalloutPathSourceArchive>(v8);
    *(archive + 8) = v7;
  }

  objc_msgSend_naturalSize(self, v5, v6);
  v10 = v9;
  v12 = v11;
  *(v7 + 16) |= 1u;
  v13 = *(v7 + 24);
  if (!v13)
  {
    v14 = *(v7 + 8);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x277C9BAD0](v14);
    *(v7 + 24) = v13;
  }

  v32.width = v10;
  v32.height = v12;
  TSPCGSizeCopyToMessage(v32, v13);
  objc_msgSend_rawTailPosition(self, v15, v16);
  v18 = v17;
  v20 = v19;
  *(v7 + 16) |= 2u;
  v21 = *(v7 + 32);
  if (!v21)
  {
    v22 = *(v7 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = MEMORY[0x277C9BB00](v22);
    *(v7 + 32) = v21;
  }

  v33.x = v18;
  v33.y = v20;
  TSPCGPointCopyToMessage(v33, v21);
  objc_msgSend_tailSize(self, v23, v24);
  *&v25 = v25;
  *(v7 + 16) |= 4u;
  *(v7 + 40) = LODWORD(v25);
  objc_msgSend_cornerRadius(self, v26, v27);
  *&v28 = v28;
  *(v7 + 16) |= 8u;
  *(v7 + 44) = LODWORD(v28);
  isTailAtCenter = objc_msgSend_isTailAtCenter(self, v29, v30);
  *(v7 + 16) |= 0x10u;
  *(v7 + 48) = isTailAtCenter;
}

@end
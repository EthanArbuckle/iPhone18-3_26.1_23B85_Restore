@interface TSCHLineAreaScatterElementBuilder
- ($5C4A7F080D05DAA414778C98C68F800C)p_createPointArrayForSeries:(id)series inAreaFrame:(CGRect)frame groupIndexSet:(id)set cullBadPoints:(BOOL)points outCount:(unint64_t *)count;
- ($9E5495ABC9D17321C375100FE022AE0A)p_centerPointsForSeries:(id)series groupIndexSet:(id)set nullsUseIntercept:(BOOL)intercept plotAreaFrame:(CGRect)frame;
- (BOOL)p_hitCheckPoint:(CGPoint)point inSymbolsOfSeries:(id)series withBodyLayout:(id)layout;
- (BOOL)p_shouldAddSelectionKnobWithPoint:(CGPoint)point previousPoint:(CGPoint)previousPoint minimumDistanceSquared:(double)squared selectionKnobRadius:(double)radius;
- (CGAffineTransform)transformForRenderingSeriesElementForSeries:(SEL)series forGroups:(id)groups forBodyLayout:(id)layout outElementSize:(id)size outClipRect:(CGSize *)rect outNewElementPath:(CGRect *)path;
- (CGAffineTransform)transformForRenderingSeriesElementSymbolsForSeries:(SEL)series forGroups:(id)groups forBodyLayout:(id)layout outElementSize:(id)size outClipRect:(CGSize *)rect outNewElementPath:(CGRect *)path;
- (CGAffineTransform)transformForRenderingSeriesElementTopStrokeForSeries:(SEL)series forGroups:(id)groups forBodyLayout:(id)layout outElementSize:(id)size outClipRect:(CGSize *)rect outNewElementPath:(CGRect *)path;
- (CGPath)p_newCirclePath:(CGPoint)path width:(double)height pathLocation:(int64_t)location stroke:(id)stroke;
- (CGPath)p_newCrossPath:(CGPoint)path width:(double)width pathLocation:(int64_t)location stroke:(id)stroke;
- (CGPath)p_newDiamondPath:(CGPoint)path width:(double)width pathLocation:(int64_t)location stroke:(id)stroke;
- (CGPath)p_newPathForSymbol:(int)symbol context:(CGContext *)context at:(CGPoint)at width:(double)width pathLocation:(int64_t)location stroke:(id)stroke;
- (CGPath)p_newPlusPath:(CGPoint)path width:(double)width pathLocation:(int64_t)location stroke:(id)stroke context:(CGContext *)context;
- (CGPath)p_newSquarePath:(CGPoint)path width:(double)height pathLocation:(int64_t)location stroke:(id)stroke context:(CGContext *)context;
- (CGPath)p_newTrianglePath:(CGPoint)path width:(double)width pathLocation:(int64_t)location stroke:(id)stroke;
- (CGPath)p_newUnitPathForSymbol:(int)symbol symbolSize:(double)size stroke:(id)stroke forHitCheck:(BOOL)check;
- (CGPath)p_newYieldPath:(CGPoint)path width:(double)width pathLocation:(int64_t)location stroke:(id)stroke;
- (CGPoint)labelPointForPosition:(unsigned int)position rect:(CGRect)rect stringSize:(CGSize)size symbolType:(int)type;
- (CGRect)p_symbolRectWithSymbolPoint:(CGPoint)point symbolType:(int)type symbolSize:(double)size stroke:(id)stroke;
- (TSCHElementBuilderCoordinateAdapter)coordinateAdapter;
- (TSCHLineAreaScatterElementBuilder)init;
- (double)p_bubbleMaxForSeries:(id)series inChartBodyLayoutSize:(CGSize)size;
- (float)dataPointDimension:(id)dimension symbolType:(int)type stroke:(id)stroke;
- (id)p_calculateSelectionKnobSet:(id)set bodyLayoutItem:(id)item series:(id)series pointsArray:(id *)array withCount:(unint64_t)count;
- (id)p_symbolKnobLocationsForSeries:(id)series forGroups:(id)groups inBodyLayout:(id)layout;
- (id)p_uncachedUnitPathForSymbol:(int)symbol symbolSize:(double)size stroke:(id)stroke forHitCheck:(BOOL)check;
- (int64_t)hitCheckPoint:(CGPoint)point inSeries:(id)series withBodyLayout:(id)layout;
- (int64_t)p_hitCheckPointByDistance:(CGPoint)distance inSeries:(id)series withSeriesElementPath:(CGPath *)path;
- (unint64_t)countOfElementsInSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewElementBounds:(CGRect *)bounds outNewClipRects:(CGRect *)rects outNewElementPaths:(const CGPath *)paths outSelectionKnobLocations:(id *)locations forHighlightPath:(BOOL)self0;
- (unint64_t)countOfErrorBarsInSeries:(id)series forGroups:(id)groups forAxisID:(id)d forBodyLayout:(id)layout outClipRect:(CGRect *)rect outNewErrorBarDescriptors:(id *)descriptors;
- (unint64_t)countOfHitCheckRegionsInSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewElementPaths:(const CGPath *)paths outSelectionKnobLocations:(id *)locations;
- (unint64_t)countOfLabelsForSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewTransforms:(CGAffineTransform *)transforms outNewElementSizes:(CGSize *)sizes outNewClipRects:(CGRect *)rects outNewStrings:(id *)strings;
- (unint64_t)countOfPointsForSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outElementSize:(CGSize *)size outClipRect:(CGRect *)rect outUnitSymbolPath:(const CGPath *)path outNewTransformArray:(CGAffineTransform *)array outNewGroupIndexArray:(unint64_t *)self0;
- (void)p_addCurvedTopStroke:(id *)stroke toPath:(CGPath *)path withPointsArray:(id *)array withCount:(unint64_t)count;
- (void)p_addStraightTopStroke:(id *)stroke toPath:(CGPath *)path withPointsArray:(id *)array withCount:(unint64_t)count;
- (void)p_addTopStroke:(id *)stroke toPath:(CGPath *)path withPointsArray:(id *)array withCount:(unint64_t)count lineType:(int)type;
- (void)p_createElementsForSeries:(id)series forGroups:(id)groups inBodyLayout:(id)layout outTopStrokePath:(const CGPath *)path outTopStrokeClipRect:(CGRect *)rect outSeriesElementPath:(const CGPath *)elementPath outSeriesElementClipRect:(CGRect *)clipRect outSymbolElementPath:(const CGPath *)self0 outSymbolElementClipRect:(CGRect *)self1 outSymbolElementHitCheckPath:(const CGPath *)self2 outSelectionKnobLocations:(id *)self3;
- (void)p_cullLastValidPointIfEqualToFirstValidPointInArray:(id *)array pointsArrayCount:(unint64_t *)count;
- (void)p_trendlineInfoForSeries:(id)series forBodyLayout:(id)layout outVertical:(BOOL *)vertical outOffsetInBody:(double *)body;
@end

@implementation TSCHLineAreaScatterElementBuilder

- (TSCHLineAreaScatterElementBuilder)init
{
  v6.receiver = self;
  v6.super_class = TSCHLineAreaScatterElementBuilder;
  v2 = [(TSCHLineAreaScatterElementBuilder *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create(0, MEMORY[0x277D85CD8]);
    pathCacheQueue = v2->_pathCacheQueue;
    v2->_pathCacheQueue = v3;
  }

  return v2;
}

- (TSCHElementBuilderCoordinateAdapter)coordinateAdapter
{
  if (qword_280A47AE8 != -1)
  {
    sub_2764A87AC();
  }

  v3 = qword_280A47AF0;

  return v3;
}

- (CGPath)p_newUnitPathForSymbol:(int)symbol symbolSize:(double)size stroke:(id)stroke forHitCheck:(BOOL)check
{
  checkCopy = check;
  v8 = *&symbol;
  strokeCopy = stroke;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v11 = [TSCHSymbolPathCacheKey alloc];
  v15 = objc_msgSend_initWithSymbolType_symbolSize_stroke_forHitCheck_(v11, v12, size, v13, v14, v8, strokeCopy, checkCopy);
  pathCacheQueue = self->_pathCacheQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27633925C;
  block[3] = &unk_27A6B9B78;
  v42 = &v43;
  block[4] = self;
  v17 = v15;
  v41 = v17;
  dispatch_sync(pathCacheQueue, block);
  v21 = v44[3];
  if (!v21)
  {
    v22 = objc_msgSend_p_uncachedUnitPathForSymbol_symbolSize_stroke_forHitCheck_(self, v18, size, v19, v20, v8, strokeCopy, checkCopy);
    v23 = self->_pathCacheQueue;
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = sub_2763392E0;
    v36 = &unk_27A6B9BA0;
    selfCopy = self;
    v38 = v17;
    v24 = v22;
    v39 = v24;
    dispatch_barrier_async(v23, &v33);
    v25 = v24;
    v30 = objc_msgSend_CGPath(v25, v26, v27, v28, v29, v33, v34, v35, v36, selfCopy);
    v31 = CGPathRetain(v30);
    v44[3] = v31;

    v21 = v44[3];
  }

  _Block_object_dispose(&v43, 8);
  return v21;
}

- (id)p_uncachedUnitPathForSymbol:(int)symbol symbolSize:(double)size stroke:(id)stroke forHitCheck:(BOOL)check
{
  checkCopy = check;
  v8 = *&symbol;
  strokeCopy = stroke;
  v12 = objc_msgSend_p_newPathForSymbol_context_at_width_pathLocation_stroke_(self, v11, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), size, v8, 0, 2, strokeCopy);
  if (objc_msgSend_shouldRender(strokeCopy, v13, v14, v15, v16) && (objc_msgSend_width(strokeCopy, v17, v18, v19, v20), checkCopy) && (v21 = v18, v18 > 0.0))
  {
    v22 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v17, v18, v19, v20, v12);
    CGPathRelease(v12);
    objc_msgSend_setLineWidth_(v22, v23, v21, v24, v25);
    v30 = objc_msgSend_strokedCopyAttemptingUsingLivarotFirst(v22, v26, v27, v28, v29);
    if (objc_msgSend_symbolTypeIsClosed_(self, v31, v32, v33, v34, v8))
    {
      v39 = objc_msgSend_uniteWithBezierPath_(v22, v35, v36, v37, v38, v30);
    }

    else
    {
      v39 = v30;
    }

    v40 = v39;
  }

  else
  {
    v40 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v17, v18, v19, v20, v12);
    CGPathRelease(v12);
  }

  return v40;
}

- (float)dataPointDimension:(id)dimension symbolType:(int)type stroke:(id)stroke
{
  v6 = *&type;
  dimensionCopy = dimension;
  strokeCopy = stroke;
  v14 = strokeCopy;
  if (strokeCopy)
  {
    objc_msgSend_width(strokeCopy, v10, v11, v12, v13);
    v15 = v11;
    if (dimensionCopy)
    {
LABEL_3:
      objc_msgSend_floatValue(dimensionCopy, v10, v11, v12, v13);
      v17 = *&v16;
      IsClosed = objc_msgSend_symbolTypeIsClosed_(self, v18, v16, v19, v20, v6);
      v22 = v17;
      if (v17 > 72.0)
      {
        v22 = 72.0;
      }

      if (IsClosed)
      {
        v22 = v22 - v15;
      }

      if (v22 < 2.0)
      {
        v22 = 2.0;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v15 = 0.0;
    if (dimensionCopy)
    {
      goto LABEL_3;
    }
  }

  v23 = 0.0;
  if (v6 > 4)
  {
    if (v6 == 5)
    {
      v23 = v15 * 2.5;
      if (v15 < 4.0)
      {
        v23 = 12.0;
      }
    }

    else
    {
      v23 = v15;
      if (v6 != 6)
      {
        v23 = 0.0;
        if (v6 == 7)
        {
          v23 = v15 * 1.8;
        }
      }
    }
  }

  else
  {
    v24 = v15 + v15;
    if (v15 < 4.0)
    {
      v24 = 10.0;
    }

    v25 = v15 + 2.0;
    if (v15 >= 4.0)
    {
      v26 = v15 * 1.5;
    }

    else
    {
      v25 = 8.0;
      v26 = 8.0;
    }

    if (v6 == 4)
    {
      v23 = v26;
    }

    if (v6 == 1)
    {
      v23 = v25;
    }

    if ((v6 - 2) < 2)
    {
      v23 = v24;
    }
  }

  v22 = v15 + v23;
LABEL_24:
  v27 = v22;

  return v27;
}

- (CGPath)p_newPathForSymbol:(int)symbol context:(CGContext *)context at:(CGPoint)at width:(double)width pathLocation:(int64_t)location stroke:(id)stroke
{
  y = at.y;
  x = at.x;
  strokeCopy = stroke;
  v17 = 0;
  if (symbol <= 3)
  {
    switch(symbol)
    {
      case 1:
        v18 = objc_msgSend_p_newCirclePath_width_pathLocation_stroke_(self, v15, x, y, width, location, strokeCopy);
        goto LABEL_16;
      case 2:
        v18 = objc_msgSend_p_newTrianglePath_width_pathLocation_stroke_(self, v15, x, y, width, location, strokeCopy);
        goto LABEL_16;
      case 3:
        v18 = objc_msgSend_p_newYieldPath_width_pathLocation_stroke_(self, v15, x, y, width, location, strokeCopy);
LABEL_16:
        v17 = v18;
        break;
    }
  }

  else
  {
    if (symbol <= 5)
    {
      if (symbol == 4)
      {
        v18 = objc_msgSend_p_newSquarePath_width_pathLocation_stroke_context_(self, v15, x, y, width, location, strokeCopy, context);
      }

      else
      {
        v18 = objc_msgSend_p_newDiamondPath_width_pathLocation_stroke_(self, v15, x, y, width, location, strokeCopy);
      }

      goto LABEL_16;
    }

    if (symbol == 6)
    {
      v18 = objc_msgSend_p_newCrossPath_width_pathLocation_stroke_(self, v15, x, y, width, location, strokeCopy);
      goto LABEL_16;
    }

    if (symbol == 7)
    {
      v18 = objc_msgSend_p_newPlusPath_width_pathLocation_stroke_context_(self, v15, x, y, width, location, strokeCopy, context);
      goto LABEL_16;
    }
  }

  return v17;
}

- (CGPath)p_newCirclePath:(CGPoint)path width:(double)height pathLocation:(int64_t)location stroke:(id)stroke
{
  y = path.y;
  x = path.x;
  strokeCopy = stroke;
  v15 = strokeCopy;
  if (strokeCopy)
  {
    objc_msgSend_width(strokeCopy, v11, v12, v13, v14);
  }

  else
  {
    v16 = 0.0;
  }

  v17 = x - height * 0.5;
  v18 = y - height * 0.5;
  if (location == 3)
  {
    v20 = v16 * -0.47;
    v26.origin.x = v17;
    v26.origin.y = v18;
    v26.size.width = height;
    v26.size.height = height;
    v25 = CGRectInset(v26, v20, v20);
  }

  else
  {
    if (location != 1)
    {
      width = height;
      goto LABEL_10;
    }

    v19 = v16 * 0.5;
    v24.origin.x = v17;
    v24.origin.y = v18;
    v24.size.width = height;
    v24.size.height = height;
    v25 = CGRectInset(v24, v19, v19);
  }

  width = v25.size.width;
  height = v25.size.height;
LABEL_10:
  Mutable = 0;
  if (width >= 0.0 && height >= 0.0)
  {
    Mutable = CGPathCreateMutable();
    CGPathAddEllipseInRectSafe();
  }

  return Mutable;
}

- (CGPath)p_newTrianglePath:(CGPoint)path width:(double)width pathLocation:(int64_t)location stroke:(id)stroke
{
  y = path.y;
  x = path.x;
  strokeCopy = stroke;
  v15 = strokeCopy;
  if (strokeCopy)
  {
    objc_msgSend_width(strokeCopy, v11, v12, v13, v14);
  }

  else
  {
    v16 = 0.0;
  }

  v17 = 0.5;
  v18 = y - width * 0.5 + width * 0.866025403 * 0.5 - width * 0.5;
  v19 = width * 0.866025403 + v18;
  v20 = x - width * 0.5;
  v21 = x + width * 0.5;
  if (location != 1)
  {
    if (location != 3)
    {
      goto LABEL_8;
    }

    v17 = -0.47;
  }

  v22 = v16 * v17;
  v18 = v18 + v22 + v22;
  v19 = v19 - v22;
  v23 = v22 / 0.577350269;
  v20 = v20 + v23;
  v21 = v21 - v23;
LABEL_8:
  if (v19 < v18 || v21 < v20)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CGPathCreateMutable();
    CGPathMoveToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathCloseSubpath(Mutable);
  }

  return Mutable;
}

- (CGPath)p_newYieldPath:(CGPoint)path width:(double)width pathLocation:(int64_t)location stroke:(id)stroke
{
  y = path.y;
  x = path.x;
  strokeCopy = stroke;
  v15 = strokeCopy;
  if (strokeCopy)
  {
    objc_msgSend_width(strokeCopy, v11, v12, v13, v14);
  }

  else
  {
    v16 = 0.0;
  }

  v17 = width * 0.5 + y - width * 0.5 + width * 0.866025403 * 0.5;
  v18 = v17 - width * 0.866025403;
  v19 = x - width * 0.5;
  v20 = x + width * 0.5;
  if (location == 3)
  {
    v23 = v16 * 0.47;
    v18 = v18 - v23;
    v17 = v17 + v23 + v23;
    v24 = v23 / 0.577350269;
    v19 = v19 - v24;
    v20 = v20 + v24;
  }

  else if (location == 1)
  {
    v21 = v16 * 0.5;
    v18 = v18 + v21;
    v17 = v17 - (v21 + v21);
    v22 = v21 / 0.577350269;
    v19 = v19 + v22;
    v20 = v20 - v22;
  }

  if (v17 < v18 || v20 < v19)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CGPathCreateMutable();
    CGPathMoveToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathCloseSubpath(Mutable);
  }

  return Mutable;
}

- (CGPath)p_newSquarePath:(CGPoint)path width:(double)height pathLocation:(int64_t)location stroke:(id)stroke context:(CGContext *)context
{
  y = path.y;
  x = path.x;
  strokeCopy = stroke;
  v16 = strokeCopy;
  if (strokeCopy)
  {
    objc_msgSend_width(strokeCopy, v12, v13, v14, v15);
  }

  else
  {
    v17 = 0.0;
  }

  v18 = x - height * 0.5;
  v19 = y - height * 0.5;
  if (location == 3)
  {
    v21 = v17 * -0.47;
    v27.origin.x = v18;
    v27.origin.y = v19;
    v27.size.width = height;
    v27.size.height = height;
    v26 = CGRectInset(v27, v21, v21);
  }

  else
  {
    if (location != 1)
    {
      width = height;
      goto LABEL_10;
    }

    v20 = v17 * 0.5;
    v25.origin.x = v18;
    v25.origin.y = v19;
    v25.size.width = height;
    v25.size.height = height;
    v26 = CGRectInset(v25, v20, v20);
  }

  width = v26.size.width;
  height = v26.size.height;
LABEL_10:
  Mutable = 0;
  if (width >= 0.0 && height >= 0.0)
  {
    Mutable = CGPathCreateMutable();
    CGPathAddRectSafe();
  }

  return Mutable;
}

- (CGPath)p_newDiamondPath:(CGPoint)path width:(double)width pathLocation:(int64_t)location stroke:(id)stroke
{
  y = path.y;
  x = path.x;
  strokeCopy = stroke;
  v15 = strokeCopy;
  if (strokeCopy)
  {
    objc_msgSend_width(strokeCopy, v11, v12, v13, v14);
  }

  else
  {
    v16 = 0.0;
  }

  v17 = width * 0.707106781;
  v18 = y + width * 0.707106781;
  v19 = y - width * 0.707106781;
  v20 = x - width * 0.707106781;
  v21 = x + v17;
  if (location == 3)
  {
    v23 = v16 * 0.47 / 0.707106781;
    v19 = v19 - v23;
    v18 = v18 + v23;
    v20 = v20 - v23;
    v21 = v21 + v23;
  }

  else if (location == 1)
  {
    v22 = v16 * 0.5 / 0.707106781;
    v19 = v19 + v22;
    v18 = v18 - v22;
    v20 = v20 + v22;
    v21 = v21 - v22;
  }

  if (v18 < v19 || v21 < v20)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CGPathCreateMutable();
    CGPathMoveToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathCloseSubpath(Mutable);
  }

  return Mutable;
}

- (CGPath)p_newCrossPath:(CGPoint)path width:(double)width pathLocation:(int64_t)location stroke:(id)stroke
{
  y = path.y;
  x = path.x;
  strokeCopy = stroke;
  v15 = strokeCopy;
  if (strokeCopy)
  {
    objc_msgSend_width(strokeCopy, v11, v12, v13, v14);
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = y + width * 0.5;
  if (location == 1)
  {
    v19 = x;
  }

  else
  {
    v19 = x + width * 0.5;
  }

  if (location == 1)
  {
    v20 = x;
  }

  else
  {
    v20 = x - width * 0.5;
  }

  if (location == 1)
  {
    v21 = y;
  }

  else
  {
    v21 = y - width * 0.5;
  }

  if (location == 1)
  {
    v22 = y;
  }

  else
  {
    v22 = v18;
  }

  if (v22 > v21 && v19 > v20)
  {
    if (location == 3 && v17 > 0.0)
    {
      Mutable = CGPathCreateMutable();
      CGPathMoveToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathCloseSubpath(Mutable);
    }

    else
    {
      Mutable = CGPathCreateMutable();
      CGPathMoveToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathMoveToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathCloseSubpath(Mutable);
    }
  }

  else
  {
    Mutable = 0;
  }

  return Mutable;
}

- (CGPath)p_newPlusPath:(CGPoint)path width:(double)width pathLocation:(int64_t)location stroke:(id)stroke context:(CGContext *)context
{
  y = path.y;
  x = path.x;
  strokeCopy = stroke;
  v16 = strokeCopy;
  if (strokeCopy)
  {
    objc_msgSend_width(strokeCopy, v12, v13, v14, v15);
    v18 = v17;
  }

  else
  {
    v18 = 0.0;
  }

  if (location == 1)
  {
    v19 = x;
  }

  else
  {
    v19 = x + width * 0.5;
  }

  if (location == 1)
  {
    v20 = x;
  }

  else
  {
    v20 = x - width * 0.5;
  }

  if (location == 1)
  {
    v21 = y;
  }

  else
  {
    v21 = y - width * 0.5;
  }

  if (location == 1)
  {
    v22 = y;
  }

  else
  {
    v22 = y + width * 0.5;
  }

  if (v22 > v21 && v19 > v20)
  {
    if (location == 3 && v18 > 0.0)
    {
      Mutable = CGPathCreateMutable();
      CGPathMoveToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathCloseSubpath(Mutable);
    }

    else
    {
      Mutable = CGPathCreateMutable();
      CGPathMoveToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathMoveToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathCloseSubpath(Mutable);
    }
  }

  else
  {
    Mutable = 0;
  }

  return Mutable;
}

- (CGPoint)labelPointForPosition:(unsigned int)position rect:(CGRect)rect stringSize:(CGSize)size symbolType:(int)type
{
  height = rect.size.height;
  v7 = vmul_f32(vcvt_f32_f64(rect.size), 0x3F0000003F000000);
  v8 = size.height;
  v9 = vmul_f32(vcvt_f32_f64(size), 0x3F0000003F000000);
  y = rect.origin.y;
  v11 = vsub_f32(vadd_f32(v7, vcvt_f32_f64(rect.origin)), v9);
  if (position)
  {
    v12 = -1.0;
    if ((position & 0x10) == 0)
    {
      v12 = 0.0;
    }

    v13 = 1.0;
    if ((position & 0x20) != 0)
    {
      v12 = 1.0;
    }

    if ((position & 8) != 0 || (v13 = -1.0, (position & 4) != 0) || (v13 = 0.0, v12 != 0.0))
    {
      v14 = __PAIR64__(LODWORD(v13), LODWORD(v12));
      if (type <= 7)
      {
        v14 = __PAIR64__(LODWORD(v13), LODWORD(v12));
        if (((1 << type) & 0xA2) != 0)
        {
          v14 = vmul_n_f32(__PAIR64__(LODWORD(v13), LODWORD(v12)), 1.0 / sqrtf((v13 * v13) + (v12 * v12)));
        }
      }

      v11 = vadd_f32(v11, vadd_f32(vmul_f32(__PAIR64__(LODWORD(v13), LODWORD(v12)), vadd_f32(v9, 0x4000000040000000)), vmul_f32(v7, v14)));
    }
  }

  v15 = vcvtq_f64_f32(v11);
  v16 = v15.f64[1];
  result.x = v15.f64[0];
  result.y = v16;
  return result;
}

- ($9E5495ABC9D17321C375100FE022AE0A)p_centerPointsForSeries:(id)series groupIndexSet:(id)set nullsUseIntercept:(BOOL)intercept plotAreaFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  interceptCopy = intercept;
  seriesCopy = series;
  setCopy = set;
  v19 = objc_msgSend_coordinateAdapter(self, v15, v16, v17, v18);
  v21 = objc_msgSend_cartesianPointsWithSeries_groupIndexSet_nullsUseIntercept_plotAreaFrame_(v19, v20, x, y, width, seriesCopy, setCopy, interceptCopy, height);

  return v21;
}

- (void)p_addStraightTopStroke:(id *)stroke toPath:(CGPath *)path withPointsArray:(id *)array withCount:(unint64_t)count
{
  ShouldBeClosed = objc_msgSend_p_topStrokeShouldBeClosed(self, a2, v6, v7, v8, stroke);
  if (count)
  {
    v13 = 0;
    do
    {
      if (array->var2)
      {
        if (v13)
        {
          CGPathAddLineToPointSafe();
        }

        else
        {
          CGPathMoveToPointSafe();
        }

        v13 = 1;
      }

      else
      {
        v13 &= ShouldBeClosed;
      }

      ++array;
      --count;
    }

    while (count);
  }

  if (ShouldBeClosed)
  {

    CGPathCloseSubpath(path);
  }
}

- (void)p_addCurvedTopStroke:(id *)stroke toPath:(CGPath *)path withPointsArray:(id *)array withCount:(unint64_t)count
{
  v139 = *MEMORY[0x277D85DE8];
  if (count < 2)
  {
    return;
  }

  countCopy = count;
  ShouldBeClosed = objc_msgSend_p_topStrokeShouldBeClosed(self, a2, v6, v7, v8, stroke);
  v129 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v12, v13, v14, v15);
  v18 = 0;
  v19 = 0;
  v126 = countCopy - 1;
  __asm
  {
    FMOV            V1.2D, #0.75
    FMOV            V0.2D, #3.0
  }

  v122 = _Q0;
  v123 = _Q1;
  arrayCopy = array;
  v132 = countCopy;
  do
  {
    v26 = v19 + 1;
    if (!((v19 + 1 != countCopy) | ShouldBeClosed & 1))
    {
      goto LABEL_39;
    }

    v27 = ShouldBeClosed;
    if (v19 + 1 == countCopy)
    {
      v28 = 0;
    }

    else
    {
      v28 = v19 + 1;
    }

    if (v28 == v19)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, _Q0.f64[0], _Q1.f64[0], v17, "[TSCHLineAreaScatterElementBuilder p_addCurvedTopStroke:toPath:withPointsArray:withCount:]");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaScatterElementBuilder.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 752, 0, "Point indices should differ if arrayCount > 1");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
    }

    v44 = &arrayCopy[v19];
    if (!v44->var2)
    {
      v18 = 0;
      ShouldBeClosed = v27;
LABEL_17:
      countCopy = v132;
      goto LABEL_39;
    }

    v45 = &arrayCopy[v28];
    countCopy = v132;
    if (!v45->var2)
    {
      v18 = 0;
      ShouldBeClosed = v27;
      goto LABEL_39;
    }

    var0 = v44->var0;
    v47 = v45->var0;
    ShouldBeClosed = v27;
    v130 = v45->var0;
    v127 = v44->var0;
    if ((v18 & 1) == 0)
    {
      objc_msgSend_moveToPoint_(v129, v16, var0.f64[0], var0.f64[1], var0.f64[0]);
      var0 = v127;
      v47 = v130;
    }

    v48 = vsubq_f64(vaddq_f64(var0, var0), v47);
    v49 = (v126 + v19) % v132;
    if (((v49 == v126) & ~v27) != 0)
    {
      v52 = 0;
      v51 = 0x277D81000;
    }

    else
    {
      v50 = &arrayCopy[v49];
      v51 = 0x277D81000uLL;
      if (v50->var2)
      {
        v48 = v50->var0;
        v52 = 1;
      }

      else
      {
        v52 = 0;
      }
    }

    v53 = (v19 + 2) % v132;
    if (((v53 == 0) & ~ShouldBeClosed) == 0)
    {
      v54 = &arrayCopy[v53];
      if (v54->var2)
      {
        v55 = v54->var0;
LABEL_26:
        v136 = var0;
        v137 = v47;
        v124 = v55;
        v125 = v48;
        v138 = v55;
        v56 = 0.0;
        v57 = 1;
        v134 = 0u;
        v135 = 0u;
        do
        {
          v58 = v56;
          TSUPointLength();
          v61 = fabs(sqrt(v60));
          _ZF = v60 == -INFINITY;
          v62 = INFINITY;
          if (!_ZF)
          {
            v62 = v61;
          }

          v56 = v56 + v62;
          *(&v134 + v57) = v56;
          if (v56 <= v58)
          {
            v63 = *(v51 + 336);
            v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v62, v61, -INFINITY, "[TSCHLineAreaScatterElementBuilder p_addCurvedTopStroke:toPath:withPointsArray:withCount:]");
            v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaScatterElementBuilder.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v70, v71, v72, v73, v64, v69, 794, 0, "t_j should strictly increase");

            objc_msgSend_logBacktraceThrottled(*(v51 + 336), v74, v75, v76, v77);
          }

          ++v57;
        }

        while (v57 != 4);
        v78 = vdivq_f64(vsubq_f64(v130, v127), vdupq_lane_s64(COERCE__INT64(*&v135 - *(&v134 + 1)), 0));
        v79 = vaddq_f64(v127, vdivq_f64(vmulq_f64(vmulq_n_f64(vaddq_f64(v78, vsubq_f64(vdivq_f64(vsubq_f64(v127, v125), vdupq_lane_s64(*(&v134 + 1), 0)), vdivq_f64(vsubq_f64(v130, v125), vdupq_lane_s64(v135, 0)))), *&v135 - *(&v134 + 1)), v123), v122));
        v133 = vsubq_f64(v130, vdivq_f64(vmulq_f64(vmulq_n_f64(vaddq_f64(vdivq_f64(vsubq_f64(v124, v130), vdupq_lane_s64(COERCE__INT64(*(&v135 + 1) - *&v135), 0)), vsubq_f64(v78, vdivq_f64(vsubq_f64(v124, v127), vdupq_lane_s64(COERCE__INT64(*(&v135 + 1) - *(&v134 + 1)), 0)))), *&v135 - *(&v134 + 1)), v123), v122));
        v80 = v79.f64[1];
        v128 = v79.f64[0];
        if (TSUPointIsFinite())
        {
          if (TSUPointIsFinite())
          {
            objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v129, v16, v130.f64[0], v130.f64[1], v128, v80, *&v133);
            v18 = 1;
            goto LABEL_17;
          }
        }

        else
        {
          v87 = *(v51 + 336);
          v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, v82, v83, v84, "[TSCHLineAreaScatterElementBuilder p_addCurvedTopStroke:toPath:withPointsArray:withCount:]");
          v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, v90, v91, v92, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaScatterElementBuilder.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v87, v94, v95, v96, v97, v88, v93, 804, 0, "Invalid point");

          objc_msgSend_logBacktraceThrottled(*(v51 + 336), v98, v99, v100, v101);
          if (TSUPointIsFinite())
          {
LABEL_37:
            v47 = v130;
            countCopy = v132;
            goto LABEL_38;
          }
        }

        v102 = *(v51 + 336);
        v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v85, v86, var0.f64[0], "[TSCHLineAreaScatterElementBuilder p_addCurvedTopStroke:toPath:withPointsArray:withCount:]");
        v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v104, v105, v106, v107, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaScatterElementBuilder.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v102, v109, v110, v111, v112, v103, v108, 808, 0, "Invalid point");

        objc_msgSend_logBacktraceThrottled(*(v51 + 336), v113, v114, v115, v116);
        goto LABEL_37;
      }
    }

    if (v52)
    {
      v55 = vsubq_f64(vaddq_f64(v47, v47), var0);
      goto LABEL_26;
    }

LABEL_38:
    objc_msgSend_lineToPoint_(v129, v16, v47.f64[0], v47.f64[1], var0.f64[0], v48.f64[0]);
    v18 = 1;
LABEL_39:
    v19 = v26;
  }

  while (v26 != countCopy);
  if (ShouldBeClosed)
  {
    objc_msgSend_closePath(v129, v16, _Q0.f64[0], _Q1.f64[0], v17);
  }

  v117 = v129;
  objc_msgSend_CGPath(v117, v118, v119, v120, v121);
  CGPathAddPathSafe();
}

- (void)p_addTopStroke:(id *)stroke toPath:(CGPath *)path withPointsArray:(id *)array withCount:(unint64_t)count lineType:(int)type
{
  if (type == 2)
  {
    (MEMORY[0x2821F9670])(self, sel_p_addCurvedTopStroke_toPath_withPointsArray_withCount_);
  }

  else
  {
    (MEMORY[0x2821F9670])(self, sel_p_addStraightTopStroke_toPath_withPointsArray_withCount_);
  }
}

- (void)p_cullLastValidPointIfEqualToFirstValidPointInArray:(id *)array pointsArrayCount:(unint64_t *)count
{
  v7 = *count;
  if (*count)
  {
    v9 = 0;
    for (i = array; !i->var2; ++i)
    {
      if (v7 == ++v9)
      {
        return;
      }
    }

    v11 = &array[v7];
    v12 = v7 - 1;
    do
    {
      v13 = v11;
      v14 = v12;
      if (!v12)
      {
        break;
      }

      var2 = v11[-1].var2;
      --v11;
      --v12;
    }

    while (!var2);
    if (v14 < v9)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "[TSCHLineAreaScatterElementBuilder p_cullLastValidPointIfEqualToFirstValidPointInArray:pointsArrayCount:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaScatterElementBuilder.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 867, 0, "Valid point indices in wrong order");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    }

    if (v14 > v9 && TSUEqualPointsWithThreshold())
    {
      v31 = v14 + 1;
      v32 = *count;
      while (v31 < v32)
      {
        v33 = *&v13->var1;
        v13[-1].var0 = v13->var0;
        *&v13[-1].var1 = v33;
        v13[-1].var3 = v13->var3;
        ++v31;
        v32 = *count;
        ++v13;
      }

      *count = v32 - 1;
    }
  }
}

- ($5C4A7F080D05DAA414778C98C68F800C)p_createPointArrayForSeries:(id)series inAreaFrame:(CGRect)frame groupIndexSet:(id)set cullBadPoints:(BOOL)points outCount:(unint64_t *)count
{
  pointsCopy = points;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  seriesCopy = series;
  setCopy = set;
  if (!seriesCopy)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v17, v18, v19, "[TSCHLineAreaScatterElementBuilder p_createPointArrayForSeries:inAreaFrame:groupIndexSet:cullBadPoints:outCount:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaScatterElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 889, 0, "invalid nil value for '%{public}s'", "series");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  if (!count)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v17, v18, v19, "[TSCHLineAreaScatterElementBuilder p_createPointArrayForSeries:inAreaFrame:groupIndexSet:cullBadPoints:outCount:]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaScatterElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v42, v43, v44, v45, v36, v41, 890, 0, "invalid nil value for '%{public}s'", "outCount");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
  }

  v51 = objc_msgSend_cachedPointsForSeries_inAreaFrame_groupIndexSet_cullBadPoints_outCount_(TSCHPointArrayCache, v15, x, y, width, seriesCopy, setCopy, pointsCopy, count, height);
  if (!v51)
  {
    v148 = setCopy;
    v146 = objc_msgSend_axisForAxisType_(seriesCopy, v50, v52, v53, v54, 4);
    objc_msgSend_p_bubbleMaxForSeries_inChartBodyLayoutSize_(self, v55, width, height, v56, seriesCopy);
    v58 = v57;
    v62 = objc_msgSend_count(setCopy, v59, v57, v60, v61);
    if (v62 <= 2)
    {
      v62 = 2;
    }

    v51 = malloc_type_calloc(v62, 0x28uLL, 0x100004020A5FE2DuLL);
    v167 = 0;
    v168 = &v167;
    v169 = 0x2020000000;
    v170 = 0;
    v63 = seriesCopy;
    if (objc_msgSend_intValueForProperty_defaultValue_(v63, v64, v65, v66, v67, 1179, 0))
    {
      v72 = objc_msgSend_seriesType(v63, v68, v69, v70, v71);
      v77 = objc_msgSend_defaultSymbolType(v72, v73, v74, v75, v76);
      v82 = objc_msgSend_intValueForProperty_defaultValue_(v63, v78, v79, v80, v81, 1190, v77);
    }

    else
    {
      v72 = objc_msgSend_seriesType(v63, v68, v69, v70, v71);
      v82 = objc_msgSend_defaultSymbolType(v72, v83, v84, v85, v86);
    }

    v87 = v82;

    if (v87)
    {
      LODWORD(v89) = 2139095039;
      objc_msgSend_floatValueForProperty_defaultValue_(v63, v88, v89, v90, v91, 1188);
      v94 = *&v93 != 3.4028e38 && v87 == 6;
      v95 = *&v93 * 0.707106781;
      *&v95 = v95;
      if (v94)
      {
        v96 = *&v95;
      }

      else
      {
        v96 = *&v93;
      }

      v98 = objc_msgSend_objectValueForProperty_(v63, v92, v93, v95, 0.707106781, 1189);
      LODWORD(v101) = 2139095039;
      if (v96 == 3.4028e38)
      {
        v102 = 0;
        objc_msgSend_dataPointDimension_symbolType_stroke_(self, v97, v101, v99, v100, 0, v87, v98);
      }

      else
      {
        *&v101 = v96;
        v102 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v97, v101, v99, v100);
        objc_msgSend_dataPointDimension_symbolType_stroke_(self, v103, v104, v105, v106, v102, v87, v98);
      }

      v113 = *&v108;
      v112 = 0;
      if (v98 && objc_msgSend_shouldRender(v98, v107, v108, v109, v110))
      {
        objc_msgSend_width(v98, v114, v115, v116, v117);
        v112 = v118;
      }

      v111 = v113;
    }

    else
    {
      v98 = 0;
      v111 = -1.0;
      v112 = 0;
    }

    v119 = objc_autoreleasePoolPush();
    v121 = objc_msgSend_p_centerPointsForSeries_groupIndexSet_nullsUseIntercept_plotAreaFrame_(self, v120, x, y, width, v63, v148, 0, height);
    context = v119;
    v145 = v98;
    v122 = pointsCopy;
    ShouldBeClosed = objc_msgSend_p_topStrokeShouldBeClosed(self, v123, v124, v125, v126);
    v165[0] = 0;
    v165[1] = v165;
    v165[2] = 0x4012000000;
    v165[3] = sub_27633B450;
    v165[4] = nullsub_8;
    v165[5] = &unk_27657B92B;
    v166 = vdupq_n_s64(0x7FF8000000000000uLL);
    v163[0] = 0;
    v163[1] = v163;
    v163[2] = 0x2020000000;
    v164 = 1;
    v149[0] = MEMORY[0x277D85DD0];
    v149[1] = 3221225472;
    v149[2] = sub_27633B460;
    v149[3] = &unk_27A6B9BC8;
    v128 = v148;
    v150 = v128;
    v153 = v163;
    v154 = v165;
    v161 = ShouldBeClosed;
    v162 = v122;
    v156 = v121;
    v129 = v146;
    v151 = v129;
    v130 = v63;
    v157 = v58;
    v158 = v112;
    v159 = v111;
    v160 = v51;
    v152 = v130;
    v155 = &v167;
    objc_msgSend_tsu_enumerateIndexesAndPositionsUsingBlock_(v128, v131, v132, v133, v134, v149);
    v139 = v168 + 3;
    v140 = v168[3];
    if (v140 >= 2)
    {
      if (ShouldBeClosed)
      {
        objc_msgSend_p_cullLastValidPointIfEqualToFirstValidPointInArray_pointsArrayCount_(self, v135, v136, v137, v138, v51, v139);
      }

      else
      {
        v141 = &v51[v140];
        if (v141[-2].var2 && v141[-1].var2 && TSUEqualPointsWithThreshold())
        {
          *v139 = v140 - 1;
        }
      }
    }

    _Block_object_dispose(v163, 8);
    _Block_object_dispose(v165, 8);
    objc_autoreleasePoolPop(context);
    objc_msgSend_setCachedPointsForSeries_inAreaFrame_groupIndexSet_cullBadPoints_points_count_(TSCHPointArrayCache, v142, x, y, width, v130, v128, v122, v51, v168[3], height);
    *count = v168[3];

    _Block_object_dispose(&v167, 8);
    setCopy = v148;
  }

  return v51;
}

- (id)p_symbolKnobLocationsForSeries:(id)series forGroups:(id)groups inBodyLayout:(id)layout
{
  v8 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v5, v6, v7, series, groups, layout);

  return v8;
}

- (BOOL)p_shouldAddSelectionKnobWithPoint:(CGPoint)point previousPoint:(CGPoint)previousPoint minimumDistanceSquared:(double)squared selectionKnobRadius:(double)radius
{
  TSUDistanceSquared();
  if (v8 <= squared)
  {
    return 0;
  }

  TSUSubtractPoints();
  if (v9 < 0.0)
  {
    v9 = -v9;
  }

  return v9 > radius;
}

- (id)p_calculateSelectionKnobSet:(id)set bodyLayoutItem:(id)item series:(id)series pointsArray:(id *)array withCount:(unint64_t)count
{
  setCopy = set;
  itemCopy = item;
  seriesCopy = series;
  if (count)
  {
    v100 = setCopy;
    v19 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v14, v16, v17, v18);
    v24 = objc_msgSend_seriesType(seriesCopy, v20, v21, v22, v23);
    v29 = objc_msgSend_supportsGridPartitioning(v24, v25, v26, v27, v28);

    if (v29)
    {
      if (count <= 0x3E8)
      {
        p_var3 = &array->var3;
        do
        {
          v98 = *p_var3;
          p_var3 += 5;
          objc_msgSend_addIndex_(v19, v30, v31, v32, v33, v98);
          --count;
        }

        while (count);
      }

      else
      {
        v34 = [TSCHGridPartitioner alloc];
        objc_msgSend_rootedLayoutRect(itemCopy, v35, v36, v37, v38);
        v43 = objc_msgSend_initWithSourceRect_gridWidth_gridHeight_(v34, v39, v40, v41, v42, 50, 50);
        v49 = objc_msgSend_set(MEMORY[0x277CBEB58], v44, v45, v46, v47);
        do
        {
          v51 = objc_msgSend_gridKeyForSourcePoint_(v43, v48, array->var0.x, array->var0.y, v50);
          if (v51 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v54 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v48, v52, v53, v50, v51);
            if ((objc_msgSend_containsObject_(v49, v55, v56, v57, v58, v54) & 1) == 0)
            {
              objc_msgSend_addIndex_(v19, v59, v60, v61, v62, array->var3);
              objc_msgSend_addObject_(v49, v63, v64, v65, v66, v54);
            }
          }

          ++array;
          --count;
        }

        while (count);
      }
    }

    else
    {
      v68 = objc_msgSend_model(seriesCopy, v30, v31, v32, v33);
      v73 = objc_msgSend_seriesIndex(seriesCopy, v69, v70, v71, v72);
      v78 = objc_msgSend_lineAreaModelCacheForSeries_(v68, v74, v75, v76, v77, v73);
      v83 = objc_msgSend_symbolType(v78, v79, v80, v81, v82);

      objc_msgSend_subSelectionKnobRadius(TSCHRenderUtilities, v84, v85, v86, v87);
      v89 = var1;
      if (v83)
      {
        var1 = array->var1;
        v32 = -1.0;
        if (var1 == -1.0)
        {
          var1 = v89;
        }
      }

      v90 = 0;
      v31 = var1 + var1;
      v91 = v31 * v31;
      v92 = *MEMORY[0x277CBF348];
      v93 = *(MEMORY[0x277CBF348] + 8);
      do
      {
        x = array->var0.x;
        y = array->var0.y;
        var3 = array->var3;
        if (!v90 || count == 1 || (objc_msgSend_p_shouldAddSelectionKnobWithPoint_previousPoint_minimumDistanceSquared_selectionKnobRadius_(self, v30, array->var0.x, array->var0.y, v92, v93, v91, v89) & 1) != 0)
        {
          objc_msgSend_addIndex_(v19, v30, v31, v32, v33, var3);
          v92 = x;
          v93 = y;
        }

        ++array;
        --v90;
        --count;
      }

      while (count);
    }

    v67 = objc_msgSend_copy(v19, v30, v31, v32, v33);

    setCopy = v100;
  }

  else
  {
    v67 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v14, v16, v17, v18);
  }

  return v67;
}

- (void)p_createElementsForSeries:(id)series forGroups:(id)groups inBodyLayout:(id)layout outTopStrokePath:(const CGPath *)path outTopStrokeClipRect:(CGRect *)rect outSeriesElementPath:(const CGPath *)elementPath outSeriesElementClipRect:(CGRect *)clipRect outSymbolElementPath:(const CGPath *)self0 outSymbolElementClipRect:(CGRect *)self1 outSymbolElementHitCheckPath:(const CGPath *)self2 outSelectionKnobLocations:(id *)self3
{
  seriesCopy = series;
  groupsCopy = groups;
  layoutCopy = layout;
  if (path)
  {
    *path = 0;
  }

  if (elementPath)
  {
    *elementPath = 0;
  }

  if (symbolElementPath)
  {
    *symbolElementPath = 0;
  }

  v24 = MEMORY[0x277CBF398];
  if (rect)
  {
    v21 = *MEMORY[0x277CBF398];
    v22 = *(MEMORY[0x277CBF398] + 16);
    rect->origin = *MEMORY[0x277CBF398];
    rect->size = v22;
  }

  if (clipRect)
  {
    v21 = *v24;
    v22 = *(v24 + 16);
    clipRect->origin = *v24;
    clipRect->size = v22;
  }

  if (elementClipRect)
  {
    v21 = *v24;
    v22 = *(v24 + 16);
    elementClipRect->origin = *v24;
    elementClipRect->size = v22;
  }

  if (checkPath)
  {
    *checkPath = 0;
  }

  if (locations)
  {
    *locations = 0;
    v270 = objc_msgSend_set(MEMORY[0x277CBEB58], v19, v21.x, v22.width, v23);
  }

  else
  {
    v270 = 0;
  }

  v262 = objc_msgSend_model(seriesCopy, v19, v21.x, v22.width, v23);
  objc_msgSend_rootedLayoutRect(layoutCopy, v25, v26, v27, v28);
  v33 = v30;
  v34 = v31;
  v35 = v32;
  v37 = v36;
  v38 = groupsCopy;
  if (!groupsCopy)
  {
    v38 = objc_msgSend_allGroupsIndexSetForSeries_(v262, v29, v30, v31, v32, seriesCopy);
  }

  v39 = v38;

  v279 = v39;
  if (objc_msgSend_count(v39, v40, v41, v42, v43))
  {
    if (objc_msgSend_count(v39, v44, v45, v46, v47) == 1 && objc_msgSend_firstIndex(v39, v48, v49, v50, v51))
    {
      v52 = MEMORY[0x277CCAA78];
      Index = objc_msgSend_firstIndex(v279, v48, v49, v50, v51);
      v39 = objc_msgSend_indexSetWithIndexesInRange_(v52, v54, v55, v56, v57, Index - 1, 2);
    }

    v255 = seriesCopy;
    v257 = layoutCopy;
    v279 = v39;
    v256 = objc_msgSend_objectValueForProperty_(seriesCopy, v48, v49, v50, v51, 1184);
    shouldRender = objc_msgSend_shouldRender(v256, v58, v59, v60, v61);
    v66 = 0.0;
    v275 = 0.0;
    if (shouldRender)
    {
      objc_msgSend_width(v256, v63, 0.0, v64, v65);
      v275 = v66;
    }

    if (objc_msgSend_intValueForProperty_defaultValue_(seriesCopy, v63, v66, v64, v65, 1176, 1))
    {
      v71 = objc_msgSend_intValueForProperty_defaultValue_(seriesCopy, v67, v68, v69, v70, 1165, 1);
    }

    else
    {
      v71 = 0;
    }

    v283 = v262;
    v72 = seriesCopy;
    v284 = v72;
    v285 = v33;
    v286 = v34;
    v287 = v35;
    v288 = v37;
    v282 = 0;
    v260 = objc_msgSend_p_createPointArrayForSeries_inAreaFrame_groupIndexSet_outCount_(self, v73, v33, v34, v35, v72, v279, &v282, v37);
    v74 = v282;
    v79 = objc_msgSend_model(v72, v75, v76, v77, v78);
    v84 = objc_msgSend_seriesIndex(v72, v80, v81, v82, v83);
    v89 = objc_msgSend_lineAreaModelCacheForSeries_(v79, v85, v86, v87, v88, v84);

    v271 = objc_msgSend_seriesShadow(v89, v90, v91, v92, v93);
    Mutable = CGPathCreateMutable();
    objc_msgSend_p_addTopStroke_toPath_withPointsArray_withCount_lineType_(self, v95, v96, v97, v98, &v283, Mutable, v260, v74, v71);
    if (path && !CGPathIsEmpty(Mutable))
    {
      *path = CGPathCreateMutableCopy(Mutable);
    }

    BoundingBox = CGPathGetBoundingBox(Mutable);
    if (rect)
    {
      x = BoundingBox.origin.x;
      y = BoundingBox.origin.y;
      width = BoundingBox.size.width;
      height = BoundingBox.size.height;
      if (!CGRectIsNull(BoundingBox))
      {
        v104 = objc_msgSend_coordinateAdapter(self, v99, BoundingBox.origin.x, BoundingBox.origin.y, BoundingBox.size.width);
        objc_msgSend_constrainedRectWithSeries_elementBoundingBox_seriesAreaFrame_(v104, v105, x, y, width, v72, height, v33, v34, v35, v37);
        v107 = v106;
        v109 = v108;
        v111 = v110;
        v113 = v112;

        v291.origin.x = v107;
        v291.origin.y = v109;
        v291.size.width = v111;
        v291.size.height = v113;
        v292 = CGRectInset(v291, v275 * -0.600000024, v275 * -0.600000024);
        v114 = v292.origin.x;
        v115 = v292.origin.y;
        v116 = v292.size.width;
        v117 = v292.size.height;
        hasShadow = objc_msgSend_hasShadow_(TSCHStyleUtilities, v118, v292.origin.x, v292.origin.y, v292.size.width, v271);
        v121 = v114;
        v122 = v115;
        v123 = v116;
        v124 = v117;
        if (hasShadow)
        {
          objc_msgSend_shadowBoundsForRect_(v271, v120, v114, v115, v116, v117, v114, v115, v116, v117);
          v121 = v125;
          v122 = v126;
          v123 = v127;
          v124 = v128;
        }

        v293.origin.x = v114;
        v293.origin.y = v115;
        v293.size.width = v116;
        v293.size.height = v117;
        BoundingBox = CGRectUnion(v293, *&v121);
        *rect = BoundingBox;
      }
    }

    if (elementPath | clipRect)
    {
      v129 = objc_msgSend_seriesIndex(v72, v99, BoundingBox.origin.x, BoundingBox.origin.y, BoundingBox.size.width, BoundingBox.size.height);
      v134 = objc_msgSend_p_addBottomStroke_toPath_seriesIndex_withPointsArray_withCount_(self, v130, v131, v132, v133, &v283, Mutable, v129, v260, v74);
      if (((elementPath != 0) & v134) == 1)
      {
        *elementPath = CFRetain(Mutable);
      }

      if (((clipRect != 0) & v134) == 1)
      {
        v294 = CGPathGetBoundingBox(Mutable);
        v305.origin.x = v33;
        v305.origin.y = v34;
        v305.size.width = v35;
        v305.size.height = v37;
        v295 = CGRectIntersection(v294, v305);
        v296 = CGRectInset(v295, v275 * -0.600000024, v275 * -0.600000024);
        v135 = v296.origin.x;
        v136 = v296.origin.y;
        v137 = v296.size.width;
        v138 = v296.size.height;
        v140 = objc_msgSend_hasShadow_(TSCHStyleUtilities, v139, v296.origin.x, v296.origin.y, v296.size.width, v271);
        v142 = v135;
        v143 = v136;
        v144 = v137;
        v145 = v138;
        if (v140)
        {
          objc_msgSend_shadowBoundsForRect_(v271, v141, v135, v136, v137, v138, v135, v136, v137, v138);
          v142 = v146;
          v143 = v147;
          v144 = v148;
          v145 = v149;
        }

        v297.origin.x = v135;
        v297.origin.y = v136;
        v297.size.width = v137;
        v297.size.height = v138;
        BoundingBox = CGRectUnion(v297, *&v142);
        *clipRect = BoundingBox;
      }
    }

    if (locations)
    {
      v261 = objc_msgSend_p_calculateSelectionKnobSet_bodyLayoutItem_series_pointsArray_withCount_(self, v99, BoundingBox.origin.x, BoundingBox.origin.y, BoundingBox.size.width, v279, v257, v72, v260, v282, BoundingBox.size.height);

      if (Mutable && !CGPathIsEmpty(Mutable))
      {
        *&info.a = objc_msgSend_array(MEMORY[0x277CBEB18], v150, v151, v152, v153);

        *&info.d = *MEMORY[0x277CBF348];
        *&info.b = *&info.d;
        v157 = objc_msgSend_count(v279, v154, info.d, v155, v156);
        LOBYTE(info.ty) = v157 == objc_msgSend_count(v261, v158, v159, v160, v161);
        CGPathApply(Mutable, &info, sub_27633C75C);
        objc_msgSend_addObjectsFromArray_(v270, v162, v163, v164, v165, *&info.a);
      }
    }

    else
    {
      v261 = 0;
    }

    CGPathRelease(Mutable);
    v170 = objc_msgSend_seriesType(v72, v166, v167, v168, v169);
    v171 = v72;
    v254 = v170;
    if (objc_msgSend_intValueForProperty_defaultValue_(v171, v172, v173, v174, v175, 1179, 0))
    {
      v180 = objc_msgSend_defaultSymbolType(v170, v176, v177, v178, v179);
      v185 = objc_msgSend_intValueForProperty_defaultValue_(v171, v181, v182, v183, v184, 1190, v180);
    }

    else
    {
      v185 = objc_msgSend_defaultSymbolType(v170, v176, v177, v178, v179);
    }

    v186 = v185;

    v191 = objc_msgSend_objectValueForProperty_(v171, v187, v188, v189, v190, 1189);
    v196 = v191;
    v197 = 0;
    v198 = 0.0;
    v199 = 0;
    if (symbolElementPath | elementClipRect | checkPath && v186)
    {
      if (objc_msgSend_shouldRender(v191, v192, v193, v194, v195))
      {
        objc_msgSend_width(v196, v200, v201, v202, v203);
        v198 = v201;
      }

      LODWORD(v201) = 2139095039;
      objc_msgSend_floatValueForProperty_defaultValue_(v171, v200, v201, v202, v203, 1188);
      LODWORD(v207) = 2139095039;
      if (*&v205 == 3.4028e38)
      {
        v208 = 0;
      }

      else
      {
        v208 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v204, v205, v207, v206);
      }

      objc_msgSend_dataPointDimension_symbolType_stroke_(self, v204, v205, v207, v206, v208, v186, v196);
      v210 = v209;
      v199 = objc_msgSend_p_newUnitPathForSymbol_symbolSize_stroke_forHitCheck_(self, v211, v209, v212, v213, v186, v196, 0);
      if (checkPath)
      {
        v197 = objc_msgSend_p_newUnitPathForSymbol_symbolSize_stroke_forHitCheck_(self, v214, v210, v215, v216, v186, v196, 1);
      }

      else
      {
        v197 = 0;
      }
    }

    if (symbolElementPath)
    {
      v217 = CGPathCreateMutable();
    }

    else
    {
      v217 = 0;
    }

    if (checkPath)
    {
      path = CGPathCreateMutable();
    }

    else
    {
      if (locations)
      {
        v218 = 1;
      }

      else
      {
        v218 = __PAIR128__(elementClipRect, symbolElementPath) != 0;
      }

      if (!v218)
      {
        seriesCopy = v255;
        v252 = v256;
        layoutCopy = v257;
        v253 = v89;
        if (!v217)
        {
          goto LABEL_116;
        }

        goto LABEL_115;
      }

      path = 0;
    }

    v265 = *(MEMORY[0x277CBF398] + 8);
    v266 = *MEMORY[0x277CBF398];
    v263 = *(MEMORY[0x277CBF398] + 24);
    v264 = *(MEMORY[0x277CBF398] + 16);
    v298.origin.x = v33;
    v298.origin.y = v34;
    v298.size.width = v35;
    v298.size.height = v37;
    v299 = CGRectInset(v298, -0.01, -0.01);
    v274 = v299.origin.y;
    v276 = v299.origin.x;
    v272 = v299.size.height;
    v273 = v299.size.width;
    v220 = -v198;
    dx = -v198;
    if (v199)
    {
      v300 = CGPathGetBoundingBox(v199);
      *&v220 = CGRectInset(v300, dx, dx);
      v221 = v220;
      v222 = v299.origin.y;
      v223 = v299.size.width;
      v225 = v224;
    }

    else
    {
      v221 = *MEMORY[0x277CBF398];
      v222 = *(MEMORY[0x277CBF398] + 8);
      v223 = *(MEMORY[0x277CBF398] + 16);
      v225 = *(MEMORY[0x277CBF398] + 24);
    }

    v268 = v222;
    v269 = v221;
    rect = v223;
    v230 = v225;
    if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v219, v220, v299.origin.y, v299.size.width, v271))
    {
      objc_msgSend_shadowBoundsForRect_(v271, v226, v221, v222, v223, v225);
      v268 = v228;
      v269 = v227;
      rect = v229;
      v230 = v231;
    }

    if (v74)
    {
      v232 = 0;
      v233 = (v260 + 16);
      while (1)
      {
        if (v233[1])
        {
          v234 = *(v233 - 2);
          v235 = *(v233 - 1);
          v236 = *v233;
          v301.origin.y = v274;
          v301.origin.x = v276;
          v301.size.height = v272;
          v301.size.width = v273;
          v289.x = v234;
          v289.y = v235;
          if (CGRectContainsPoint(v301, v289))
          {
            break;
          }
        }

LABEL_103:
        v233 += 5;
        if (v74 == ++v232)
        {
          goto LABEL_104;
        }
      }

      memset(&info, 0, sizeof(info));
      CGAffineTransformMakeTranslation(&info, v234, v235);
      v227 = -1.0;
      if (v236 != -1.0)
      {
        CGPathRelease(v199);
        v199 = objc_msgSend_p_newUnitPathForSymbol_symbolSize_stroke_forHitCheck_(self, v237, v236, v238, v239, v186, v196, 0);
        if (checkPath)
        {
          CGPathRelease(v197);
          v197 = objc_msgSend_p_newUnitPathForSymbol_symbolSize_stroke_forHitCheck_(self, v244, v236, v245, v246, v186, v196, 1);
        }

        if (v199)
        {
          v302 = CGPathGetBoundingBox(v199);
          *&v241 = CGRectInset(v302, dx, dx);
          v221 = v241;
          v222 = v242;
          v223 = v243;
          v225 = v247;
        }

        else
        {
          v221 = *MEMORY[0x277CBF398];
          v222 = *(MEMORY[0x277CBF398] + 8);
          v223 = *(MEMORY[0x277CBF398] + 16);
          v225 = *(MEMORY[0x277CBF398] + 24);
        }

        if (!objc_msgSend_hasShadow_(TSCHStyleUtilities, v240, v241, v242, v243, v271))
        {
          v268 = v222;
          v269 = v221;
          rect = v223;
          v230 = v225;
          if (!symbolElementPath)
          {
            goto LABEL_95;
          }

          goto LABEL_93;
        }

        objc_msgSend_shadowBoundsForRect_(v271, v226, v221, v222, v223, v225);
        v268 = v228;
        v269 = v227;
        rect = v229;
        v230 = v248;
      }

      if (!symbolElementPath)
      {
LABEL_95:
        if (checkPath && v197)
        {
          CGPathAddPathSafe();
        }

        if (elementClipRect && v199)
        {
          v280 = info;
          v303.origin.y = v268;
          v303.origin.x = v269;
          v303.size.width = rect;
          v303.size.height = v230;
          v306 = CGRectApplyAffineTransform(v303, &v280);
          v304.origin.y = v265;
          v304.origin.x = v266;
          v304.size.height = v263;
          v304.size.width = v264;
          *&v227 = CGRectUnion(v304, v306);
          v265 = v228;
          v266 = v227;
          v263 = v249;
          v264 = v229;
        }

        if (locations)
        {
          v250 = objc_msgSend_containsIndex_(v261, v226, v227, v228, v229, v232);
          objc_msgSend_p_addKnobsForPoint_strokedUnitSymbolRect_toKnobSet_symbolsShowing_includePoint_(self, v251, v234, v235, v221, v270, 0, v250, v222, v223, v225);
        }

        goto LABEL_103;
      }

LABEL_93:
      if (v199)
      {
        CGPathAddPathSafe();
      }

      goto LABEL_95;
    }

LABEL_104:
    seriesCopy = v255;
    v252 = v256;
    layoutCopy = v257;
    v253 = v89;
    if (symbolElementPath && v217)
    {
      *symbolElementPath = CGPathRetain(v217);
    }

    if (elementClipRect)
    {
      elementClipRect->origin.x = v266;
      elementClipRect->origin.y = v265;
      v227 = v263;
      v228 = v264;
      elementClipRect->size.width = v264;
      elementClipRect->size.height = v263;
    }

    if (checkPath && path)
    {
      *checkPath = CGPathRetain(path);
    }

    if (locations)
    {
      *locations = objc_msgSend_allObjects(v270, v226, v227, v228, v229);
    }

    if (!v217)
    {
      goto LABEL_116;
    }

LABEL_115:
    CGPathRelease(v217);
LABEL_116:
    if (v199)
    {
      CGPathRelease(v199);
    }

    if (v197)
    {
      CGPathRelease(v197);
    }

    if (v260)
    {
      free(v260);
    }
  }
}

- (double)p_bubbleMaxForSeries:(id)series inChartBodyLayoutSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  seriesCopy = series;
  v12 = objc_msgSend_axisForAxisType_(seriesCopy, v7, v8, v9, v10, 4);
  v15 = 0.0;
  if (v12)
  {
    v16 = fabs(width);
    if (v16 != INFINITY)
    {
      v17 = fabs(height);
      HIDWORD(v18) = 2146435072;
      if (v17 != INFINITY)
      {
        LODWORD(v18) = 1.0;
        objc_msgSend_floatValueForProperty_defaultValue_(seriesCopy, v11, v18, v13, v14, 1130);
        v20 = v19;
        if (v16 >= v17)
        {
          v21 = v17;
        }

        else
        {
          v21 = v16;
        }

        v15 = v21 * 0.27 * v20;
      }
    }
  }

  return v15;
}

- (unint64_t)countOfElementsInSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewElementBounds:(CGRect *)bounds outNewClipRects:(CGRect *)rects outNewElementPaths:(const CGPath *)paths outSelectionKnobLocations:(id *)locations forHighlightPath:(BOOL)self0
{
  v39[1] = *MEMORY[0x277D85DE8];
  v37 = 0;
  v38 = 0;
  v39[0] = 0;
  objc_msgSend_p_createElementsForSeries_forGroups_inBodyLayout_outTopStrokePath_outTopStrokeClipRect_outSeriesElementPath_outSeriesElementClipRect_outSymbolElementPath_outSymbolElementClipRect_outSymbolElementHitCheckPath_outSelectionKnobLocations_(self, a2, v10, v11, v12, series, groups, layout, &v37, v34, &v38, &v35, v39, &v36, 0, locations);
  v16 = 0;
  v17 = 0;
  do
  {
    if (*(&v37 + v16))
    {
      ++v17;
    }

    v16 += 8;
  }

  while (v16 != 24);
  if (paths && v17)
  {
    v18 = 0;
    v19 = 0;
    *paths = malloc_type_calloc(8uLL, v17, 0x6004044C4A2DFuLL);
    do
    {
      v20 = *(&v37 + v18);
      if (v20)
      {
        (*paths)[v19++] = CGPathRetain(v20);
      }

      v18 += 8;
    }

    while (v18 != 24);
  }

  if (rects && v17)
  {
    v21 = malloc_type_calloc(0x20uLL, v17, 0x1000040E0EAB150uLL);
    v22 = 0;
    v23 = 0;
    *rects = v21;
    v24 = v34;
    do
    {
      if (*(&v37 + v22))
      {
        v25 = &(*rects)[v23++];
        v26 = v24[1];
        v25->origin = *v24;
        v25->size = v26;
      }

      v22 += 8;
      v24 += 2;
    }

    while (v22 != 24);
  }

  if (bounds && v17)
  {
    v27 = 0;
    v28 = 0;
    *bounds = malloc_type_calloc(0x20uLL, v17, 0x1000040E0EAB150uLL);
    do
    {
      v29 = *(&v37 + v27);
      if (v29)
      {
        BoundingBox = CGPathGetBoundingBox(v29);
        v30 = &(*bounds)[v28++];
        *v30 = BoundingBox;
      }

      v27 += 8;
    }

    while (v27 != 24);
  }

  for (i = 0; i != 24; i += 8)
  {
    v32 = *(&v37 + i);
    if (v32)
    {
      CGPathRelease(v32);
    }
  }

  return v17;
}

- (unint64_t)countOfErrorBarsInSeries:(id)series forGroups:(id)groups forAxisID:(id)d forBodyLayout:(id)layout outClipRect:(CGRect *)rect outNewErrorBarDescriptors:(id *)descriptors
{
  v314[1] = *MEMORY[0x277D85DE8];
  seriesCopy = series;
  groupsCopy = groups;
  dCopy = d;
  layoutCopy = layout;
  if (rect)
  {
    v16 = *MEMORY[0x277CBF398];
    v17 = *(MEMORY[0x277CBF398] + 16);
    rect->origin = *MEMORY[0x277CBF398];
    rect->size = v17;
  }

  rectCopy = rect;
  if (descriptors)
  {
    *descriptors = 0;
  }

  v220 = seriesCopy;
  v209 = dCopy;
  v243 = objc_msgSend_errorBarData(seriesCopy, v15, *&v16, v17.width, v18);
  v23 = 0;
  if (seriesCopy && v243)
  {
    v210 = objc_msgSend_model(seriesCopy, v19, v20, v21, v22);
    v204 = objc_msgSend_chartInfo(v210, v24, v25, v26, v27);
    v208 = objc_msgSend_chartType(v204, v28, v29, v30, v31);
    v205 = objc_msgSend_seriesType(seriesCopy, v32, v33, v34, v35);
    isVertical = objc_msgSend_isVertical(v205, v36, v37, v38, v39);
    if ((isVertical & 1) == 0)
    {
      v44 = MEMORY[0x277D81150];
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "[TSCHLineAreaScatterElementBuilder countOfErrorBarsInSeries:forGroups:forAxisID:forBodyLayout:outClipRect:outNewErrorBarDescriptors:]");
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaScatterElementBuilder.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v51, v52, v53, v54, v45, v50, 1563, 0, "Error Bar element builder for line/area/scatter/etc, but the series is not vertical.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
    }

    v59 = objc_msgSend_supportsErrorBarsScatterX(v208, v40, v41, v42, v43);
    objc_msgSend_rootedLayoutRect(layoutCopy, v60, v61, v62, v63);
    v240 = v66;
    v241 = v65;
    v238 = v68;
    v239 = v67;
    v69 = *MEMORY[0x277CBF390];
    v70 = *(MEMORY[0x277CBF390] + 8);
    v71 = *(MEMORY[0x277CBF390] + 16);
    v72 = *(MEMORY[0x277CBF390] + 24);
    if (dCopy)
    {
      v314[0] = dCopy;
      v206 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v64, v65, v66, v67, v314, 1);
    }

    else
    {
      v206 = objc_msgSend_valueAxisIDs(v208, v64, v65, v66, v67);
    }

    v228 = *MEMORY[0x277CBF398];
    v229 = *(MEMORY[0x277CBF398] + 8);
    v76 = *(MEMORY[0x277CBF398] + 16);
    v75 = *(MEMORY[0x277CBF398] + 24);
    v77 = objc_msgSend_intValueForProperty_defaultValue_(seriesCopy, v73, v229, *MEMORY[0x277CBF398], v74, 1152, 0) != 0;
    v82 = objc_msgSend_allGroupsIndexSetForSeries_(v210, v78, v79, v80, v81, seriesCopy);
    v219 = v82;
    if (groupsCopy)
    {
      v83 = groupsCopy;
    }

    else
    {
      v83 = v82;
    }

    v223 = v83;

    v218 = objc_msgSend_numberOfGroupsInSeries_(v210, v84, v85, v86, v87, seriesCopy);
    v309 = 0;
    v310 = &v309;
    v311 = 0x2020000000;
    v312 = 0;
    v300 = 0;
    v301 = &v300;
    v302 = 0x4812000000;
    v303 = sub_27633D9AC;
    v304 = sub_27633D9D0;
    v305 = &unk_27657B92B;
    v308 = 0;
    __p = 0;
    v307 = 0;
    v296 = 0u;
    v297 = 0u;
    v298 = 0u;
    v299 = 0u;
    obj = v206;
    v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v88, v89, v90, v91, &v296, v313, 16);
    if (v92)
    {
      v217 = (v77 | v59) & 1;
      v237 = *v297;
      v96 = v228;
      v95 = v229;
      y = v229;
      x = v228;
      height = v75;
      width = v76;
      v225 = 1;
      do
      {
        v242 = v92;
        for (i = 0; i != v242; ++i)
        {
          if (*v297 != v237)
          {
            objc_enumerationMutation(obj);
          }

          v98 = *(*(&v296 + 1) + 8 * i);
          if (objc_msgSend_showErrorBarsForAxisID_(v243, v93, v95, v96, v94, v98))
          {
            v99 = objc_msgSend_type(v98, v93, v95, v96, v94);
            v102 = v99;
            if (v99 == 2)
            {
              v70 = v240;
            }

            else
            {
              v69 = v241;
            }

            if (v99 == 2)
            {
              v72 = v238;
            }

            else
            {
              v71 = v239;
            }

            if (v99 == 1)
            {
              objc_msgSend_axisIDForAxisType_(seriesCopy, v100, v238, v239, v101, 2);
            }

            else
            {
              objc_msgSend_axisIDForAxisType_(seriesCopy, v100, v238, v239, v101, 1);
            }
            v103 = ;
            v108 = objc_msgSend_type(v103, v104, v105, v106, v107);
            v113 = objc_msgSend_axisForAxisType_(seriesCopy, v109, v110, v111, v112, v108);
            v231 = v103;
            v118 = objc_msgSend_axisForAxisType_(seriesCopy, v114, v115, v116, v117, v102);
            IsVerticalForAxisID_series = objc_msgSend_errorBarIsVerticalForAxisID_series_(TSCHErrorBarData, v119, v120, v121, v122, v98, seriesCopy);
            v235 = objc_msgSend_errorBarTypeForAxisID_series_(TSCHErrorBarData, v123, v124, v125, v126, v98, seriesCopy);
            isRangeContinuous = objc_msgSend_isRangeContinuous(v113, v127, v128, v129, v130);
            v136 = objc_msgSend_isRangeContinuous(v118, v132, v133, v134, v135);
            objc_msgSend_unitSpaceCenterValueHalfOffsetWithCount_(v113, v137, v218, v138, v139);
            v141 = v140;
            v145 = objc_msgSend_strokeForAxisID_(v243, v142, v140, v143, v144, v98);
            v234 = v145;
            objc_msgSend_width(v145, v146, v147, v148, v149);
            if (v145)
            {
              v154 = v151;
              if (!objc_msgSend_shouldRender(v145, v150, v151, v152, v153))
              {
                v154 = 0.0;
              }
            }

            else
            {
              v154 = 0.0;
            }

            v155 = (v154 + -1.0) * 0.6 + 1.0;
            if (v154 <= 1.0)
            {
              v155 = v154;
            }

            v232 = v155;
            v233 = objc_msgSend_lineEndForAxisID_(v243, v150, v155, 0.6, 1.0, v98);
            v160 = sub_276348464(v233, v156, v157, v158, v159);
            v165 = objc_msgSend_shadowForAxisID_(v243, v161, v162, v163, v164, v98);
            hasShadow = objc_msgSend_hasShadow_(TSCHStyleUtilities, v166, v167, v168, v169, v165);
            v293[0] = 0;
            v293[1] = v293;
            v293[2] = 0x5812000000;
            v293[3] = sub_27633D9E8;
            v293[4] = sub_27633D9F4;
            v293[5] = &unk_27657B92B;
            memset(v294, 0, sizeof(v294));
            v295 = 1065353216;
            v290[0] = 0;
            v290[1] = v290;
            v290[2] = 0x5812000000;
            v290[3] = sub_27633D9FC;
            v290[4] = sub_27633DA08;
            v290[5] = &unk_27657B92B;
            memset(v291, 0, sizeof(v291));
            v292 = 1065353216;
            v288[0] = 0;
            v288[1] = v288;
            v288[2] = 0x3032000000;
            v288[3] = sub_27633DA10;
            v288[4] = sub_27633DA20;
            objc_msgSend_array(MEMORY[0x277CBEB18], v171, COERCE_DOUBLE(0x3032000000), 0.0, v172);
            v226 = v76;
            v289 = v227 = v75;
            v280 = 0;
            v281 = &v280;
            v282 = 0x5012000000;
            v283 = sub_27633DA28;
            v284 = nullsub_9;
            v285 = &unk_27657B92B;
            v173 = *(MEMORY[0x277CBF398] + 16);
            v286 = *MEMORY[0x277CBF398];
            v287 = v173;
            v278[0] = 0;
            v278[1] = v278;
            v278[2] = 0x2020000000;
            v279 = 1;
            v246[0] = MEMORY[0x277D85DD0];
            v246[1] = 3221225472;
            v246[2] = sub_27633DA38;
            v246[3] = &unk_27A6B9BF0;
            v247 = v243;
            v230 = v113;
            v248 = v230;
            v174 = v118;
            v272 = isRangeContinuous;
            v273 = v136;
            v274 = IsVerticalForAxisID_series;
            v259 = v235;
            v260 = v241;
            v261 = v240;
            v262 = v239;
            v263 = v238;
            v275 = isVertical;
            v271 = v160;
            v264 = v239 * v141;
            v265 = v69;
            v266 = v70;
            v267 = v71;
            v268 = v72;
            v269 = v154;
            v175 = v174;
            v249 = v174;
            v253 = &v280;
            v258 = v218;
            v254 = v278;
            v270 = v232;
            v176 = v234;
            v250 = v176;
            v177 = v233;
            v276 = v217;
            v251 = v177;
            selfCopy = self;
            v277 = descriptors != 0;
            v255 = v288;
            v256 = v293;
            v257 = v290;
            objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v219, v178, v179, v180, v181, 2, v246);
            v244[0] = MEMORY[0x277D85DD0];
            v244[1] = 3221225472;
            v244[2] = sub_27633E124;
            v244[3] = &unk_27A6B9C18;
            v245 = descriptors != 0;
            v244[4] = v290;
            v244[5] = &v300;
            v244[6] = v293;
            v244[7] = &v309;
            objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v223, v182, v183, v184, v185, 2, v244);
            if (CGRectIsNull(*(v281 + 6)))
            {
              v187 = v228;
              v188 = v229;
              v189 = v226;
              seriesCopy = v220;
            }

            else
            {
              if (v225)
              {
                y = *(v281 + 7);
                x = *(v281 + 6);
                height = *(v281 + 9);
                width = *(v281 + 8);
              }

              else
              {
                v323.origin.y = y;
                v323.origin.x = x;
                v323.size.height = height;
                v323.size.width = width;
                v315 = CGRectUnion(*(v281 + 6), v323);
                height = v315.size.height;
                width = v315.size.width;
                y = v315.origin.y;
                x = v315.origin.x;
              }

              v187 = *(v281 + 6);
              v188 = *(v281 + 7);
              v189 = *(v281 + 8);
              v75 = *(v281 + 9);
              if (hasShadow)
              {
                objc_msgSend_shadowBoundsForRect_(v165, v186, *(v281 + 6), *(v281 + 7), *(v281 + 8), *(v281 + 9));
                v324.origin.x = v190;
                v324.origin.y = v191;
                v324.size.width = v192;
                v324.size.height = v193;
                v316.origin.x = v187;
                v316.origin.y = v188;
                v316.size.width = v189;
                v316.size.height = v75;
                v317 = CGRectUnion(v316, v324);
                v187 = v317.origin.x;
                v188 = v317.origin.y;
                v189 = v317.size.width;
                v75 = v317.size.height;
              }

              seriesCopy = v220;
              if ((v225 & 1) == 0)
              {
                v318.origin.x = v187;
                v318.origin.y = v188;
                v318.size.width = v189;
                v318.size.height = v75;
                v325.origin.x = v228;
                v325.origin.y = v229;
                v325.size.width = v226;
                v325.size.height = v227;
                v319 = CGRectUnion(v318, v325);
                v187 = v319.origin.x;
                v188 = v319.origin.y;
                v189 = v319.size.width;
                v75 = v319.size.height;
              }

              v225 = 0;
            }

            _Block_object_dispose(v278, 8);
            _Block_object_dispose(&v280, 8);
            _Block_object_dispose(v288, 8);

            _Block_object_dispose(v290, 8);
            sub_276343E2C(v291);
            _Block_object_dispose(v293, 8);
            sub_276343E2C(v294);

            v228 = v187;
            v229 = v188;
            v76 = v189;
          }
        }

        v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v93, v95, v96, v94, &v296, v313, 16);
      }

      while (v92);
    }

    else
    {
      y = v229;
      x = v228;
      height = v75;
      width = v76;
    }

    v320.origin.x = v228;
    v320.origin.y = v229;
    v320.size.width = v76;
    v320.size.height = v75;
    v326.origin.y = y;
    v326.origin.x = x;
    v326.size.height = height;
    v326.size.width = width;
    v321 = CGRectUnion(v320, v326);
    v327.origin.x = v69;
    v327.origin.y = v70;
    v327.size.width = v71;
    v327.size.height = v72;
    v322 = CGRectIntersection(v321, v327);
    v194 = v322.origin.x;
    v195 = v322.origin.y;
    v196 = v322.size.width;
    v197 = v322.size.height;
    if (descriptors && (v198 = v301[7] - v301[6]) != 0)
    {
      v199 = malloc_type_calloc(0x30uLL, 0xAAAAAAAAAAAAAAABLL * (v198 >> 4), 0x1000040C179455EuLL);
      v200 = v199;
      v201 = v301[6];
      v202 = v301[7];
      if (v202 != v201)
      {
        memmove(v199, v201, v202 - v201);
      }
    }

    else
    {
      v200 = 0;
    }

    if (rectCopy)
    {
      rectCopy->origin.x = v194;
      rectCopy->origin.y = v195;
      rectCopy->size.width = v196;
      rectCopy->size.height = v197;
    }

    if (descriptors)
    {
      *descriptors = v200;
    }

    v23 = v310[3];
    _Block_object_dispose(&v300, 8);
    if (__p)
    {
      v307 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v309, 8);
  }

  else
  {
    v223 = groupsCopy;
  }

  return v23;
}

- (void)p_trendlineInfoForSeries:(id)series forBodyLayout:(id)layout outVertical:(BOOL *)vertical outOffsetInBody:(double *)body
{
  seriesCopy = series;
  layoutCopy = layout;
  v14 = layoutCopy;
  if (vertical)
  {
    *vertical = 1;
  }

  if (body)
  {
    *body = 0.0;
    if (!layoutCopy)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHLineAreaScatterElementBuilder p_trendlineInfoForSeries:forBodyLayout:outVertical:outOffsetInBody:]");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaScatterElementBuilder.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 1787, 0, "invalid nil value for '%{public}s'", "bodyLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    }

    v30 = objc_msgSend_axisForAxisType_(seriesCopy, v10, v11, v12, v13, 1);
    objc_msgSend_rootedLayoutRect(v14, v31, v32, v33, v34);
    v36 = v35;
    v40 = objc_msgSend_model(seriesCopy, v37, v38, v39, v35);
    v45 = objc_msgSend_numberOfValues(v40, v41, v42, v43, v44);
    objc_msgSend_unitSpaceCenterValueHalfOffsetWithCount_(v30, v46, v45, v47, v48);
    v50 = v36 * v49;

    *body = v50;
  }
}

- (unint64_t)countOfHitCheckRegionsInSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewElementPaths:(const CGPath *)paths outSelectionKnobLocations:(id *)locations
{
  v40 = *MEMORY[0x277D85DE8];
  seriesCopy = series;
  groupsCopy = groups;
  layoutCopy = layout;
  if (paths)
  {
    *paths = 0;
  }

  if (locations)
  {
    *locations = 0;
  }

  v38 = 0u;
  v39 = 0u;
  objc_msgSend_p_createElementsForSeries_forGroups_inBodyLayout_outTopStrokePath_outTopStrokeClipRect_outSeriesElementPath_outSeriesElementClipRect_outSymbolElementPath_outSymbolElementClipRect_outSymbolElementHitCheckPath_outSelectionKnobLocations_(self, v14, 0.0, v16, v17, seriesCopy, groupsCopy, layoutCopy, &v38, v35, &v38 + 8, &v36, &v39, &v37, &v39 + 8, locations);
  v22 = v38;
  if (*(&v38 + 1) && v38)
  {
    CGPathRelease(v38);
    *&v38 = 0;
  }

  else if (v38)
  {
    v23 = objc_msgSend_valueForProperty_(seriesCopy, v18, v19, v20, v21, 1184);
    v28 = objc_msgSend_newStrokedPathFromPath_stroke_cap_(TSCHRenderUtilities, v24, v25, v26, v27, v22, v23, 2);

    CGPathRelease(v38);
    *&v38 = v28;
  }

  if (paths)
  {
    v29 = 0;
    *paths = malloc_type_calloc(8uLL, 4uLL, 0x6004044C4A2DFuLL);
    do
    {
      v30 = *(&v38 + v29 * 8);
      if (v30)
      {
        Mutable = CGPathRetain(v30);
      }

      else
      {
        Mutable = CGPathCreateMutable();
      }

      (*paths)[v29++] = Mutable;
    }

    while (v29 != 4);
  }

  for (i = 0; i != 32; i += 8)
  {
    v33 = *(&v38 + i);
    if (v33)
    {
      CGPathRelease(v33);
    }
  }

  return 4;
}

- (int64_t)hitCheckPoint:(CGPoint)point inSeries:(id)series withBodyLayout:(id)layout
{
  y = point.y;
  x = point.x;
  seriesCopy = series;
  layoutCopy = layout;
  path = 0;
  v36 = 0;
  objc_msgSend_p_createElementsForSeries_forGroups_inBodyLayout_outTopStrokePath_outTopStrokeClipRect_outSeriesElementPath_outSeriesElementClipRect_outSymbolElementPath_outSymbolElementClipRect_outSymbolElementHitCheckPath_outSelectionKnobLocations_(self, v11, 0.0, v12, v13, seriesCopy, 0, layoutCopy, &v36, 0, &path, 0, 0, 0, 0, 0);
  if (path)
  {
    if (CGPathContainsPointSafe())
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }
  }

  else
  {
    v18 = -1;
  }

  if (v18 != 1)
  {
    v19 = v36;
    if (v36)
    {
      v20 = objc_msgSend_valueForProperty_(seriesCopy, v14, v15, v16, v17, 1184);
      v25 = objc_msgSend_newStrokedPathFromPath_stroke_cap_(TSCHRenderUtilities, v21, v22, v23, v24, v19, v20, 2);

      if (CGPathContainsPointSafe())
      {
        v18 = 1;
      }

      CGPathRelease(v25);
    }
  }

  v26 = objc_msgSend_seriesType(seriesCopy, v14, v15, v16, v17);
  v31 = objc_msgSend_supportsSymbolDrawing(v26, v27, v28, v29, v30);

  if (v31 && objc_msgSend_p_hitCheckPoint_inSymbolsOfSeries_withBodyLayout_(self, v32, x, y, v33, seriesCopy, layoutCopy))
  {
    v18 = 2;
  }

  if (v18 == -1 && path)
  {
    v18 = objc_msgSend_p_hitCheckPoint_inSeries_withSeriesElementPath_(self, v32, x, y, v33, seriesCopy);
  }

  if (v18 == -1 && v36)
  {
    v18 = objc_msgSend_p_hitCheckPoint_inSeries_withSeriesElementPath_(self, v32, x, y, v33, seriesCopy);
  }

  if (path)
  {
    CGPathRelease(path);
    path = 0;
  }

  if (v36)
  {
    CGPathRelease(v36);
  }

  return v18;
}

- (BOOL)p_hitCheckPoint:(CGPoint)point inSymbolsOfSeries:(id)series withBodyLayout:(id)layout
{
  y = point.y;
  x = point.x;
  seriesCopy = series;
  layoutCopy = layout;
  objc_msgSend_rootedLayoutRect(layoutCopy, v11, v12, v13, v14);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = objc_msgSend_model(seriesCopy, v23, v15, v17, v19);
  v29 = objc_msgSend_allGroupsIndexSetForSeries_(v24, v25, v26, v27, v28, seriesCopy);

  if (objc_msgSend_count(v29, v30, v31, v32, v33))
  {
    v38 = objc_msgSend_seriesType(seriesCopy, v34, v35, v36, v37);
    v39 = seriesCopy;
    if (objc_msgSend_intValueForProperty_defaultValue_(v39, v40, v41, v42, v43, 1179, 0))
    {
      v48 = objc_msgSend_defaultSymbolType(v38, v44, v45, v46, v47);
      v53 = objc_msgSend_intValueForProperty_defaultValue_(v39, v49, v50, v51, v52, 1190, v48);
    }

    else
    {
      v53 = objc_msgSend_defaultSymbolType(v38, v44, v45, v46, v47);
    }

    v55 = v53;

    if (v55)
    {
      v108 = 0;
      v57 = objc_msgSend_p_createPointArrayForSeries_inAreaFrame_groupIndexSet_outCount_(self, v56, v16, v18, v20, v39, v29, &v108, v22);
      v62 = v57;
      if (v108)
      {
        v63 = objc_msgSend_objectValueForProperty_(v39, v58, v59, v60, v61, 1189);
        LODWORD(v64) = 2139095039;
        objc_msgSend_floatValueForProperty_defaultValue_(v39, v65, v64, v66, v67, 1188);
        LODWORD(v71) = 2139095039;
        if (*&v69 == 3.4028e38)
        {
          v72 = 0;
          objc_msgSend_dataPointDimension_symbolType_stroke_(self, v68, v69, v71, v70, 0, v55, v63);
        }

        else
        {
          v72 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v68, v69, v71, v70);
          objc_msgSend_dataPointDimension_symbolType_stroke_(self, v73, v74, v75, v76, v72, v55, v63);
        }

        v81 = v78;
        v82 = objc_msgSend_p_newUnitPathForSymbol_symbolSize_stroke_forHitCheck_(self, v77, v78, v79, v80, v55, v63, 1);
        if (CGPathIsEmpty(v82))
        {
          CGPathRelease(v82);
          free(v62);
          v54 = 0;
        }

        else
        {
          v93 = v72;
          BoundingBox = CGPathGetBoundingBox(v82);
          width = BoundingBox.size.width;
          v92 = BoundingBox.origin.y;
          height = BoundingBox.size.height;
          v83 = BoundingBox.origin.x;
          BoundingBox.origin.x = v16;
          BoundingBox.origin.y = v18;
          BoundingBox.size.width = v20;
          BoundingBox.size.height = v22;
          v110 = CGRectInset(BoundingBox, -0.01, -0.01);
          v96[0] = MEMORY[0x277D85DD0];
          v96[1] = 3221225472;
          v96[2] = sub_27633EC80;
          v96[3] = &unk_27A6B9C40;
          v98 = v110;
          v106 = v81;
          v99 = v82;
          v96[4] = self;
          v107 = v55;
          v97 = v63;
          v100 = v83;
          v101 = v92;
          v102 = width;
          v103 = height;
          v104 = x;
          v105 = y;
          v84 = MEMORY[0x277C98B30](v96);
          v89 = v62;
          if (v108)
          {
            for (i = 0; i < v108; ++i)
            {
              v86 = *v62;
              v87 = v62[1];
              v95 = *(v62 + 4);
              v94[0] = v86;
              v94[1] = v87;
              v54 = (v84)[2](v84, v94);
              if (v54)
              {
                break;
              }

              v62 = (v62 + 40);
            }
          }

          else
          {
            v54 = 0;
          }

          CGPathRelease(v82);
          free(v89);

          v72 = v93;
        }

        goto LABEL_23;
      }

      free(v57);
    }

    v54 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v54 = 0;
LABEL_24:

  return v54;
}

- (int64_t)p_hitCheckPointByDistance:(CGPoint)distance inSeries:(id)series withSeriesElementPath:(CGPath *)path
{
  y = distance.y;
  x = distance.x;
  v9 = objc_msgSend_valueForProperty_(series, a2, distance.x, distance.y, v5, 1184);
  v18 = 2.0;
  if (objc_msgSend_shouldRender(v9, v10, v11, v12, v13))
  {
    objc_msgSend_width(v9, v14, v15, v16, v17);
    v15 = fmax(v19, 4.0);
    v16 = 0.5;
    v18 = v15 * 0.5;
  }

  v20 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v14, v15, v16, v17, path);
  objc_msgSend_distanceToPoint_elementIndex_tValue_threshold_findClosestMatch_(v20, v21, x, y, v18, 0, 0, 0);
  if (v22 <= v18)
  {
    v23 = 1;
  }

  else
  {
    v23 = -1;
  }

  return v23;
}

- (CGAffineTransform)transformForRenderingSeriesElementTopStrokeForSeries:(SEL)series forGroups:(id)groups forBodyLayout:(id)layout outElementSize:(id)size outClipRect:(CGSize *)rect outNewElementPath:(CGRect *)path
{
  groupsCopy = groups;
  layoutCopy = layout;
  sizeCopy = size;
  v27 = 0;
  v19 = *(MEMORY[0x277CBF398] + 16);
  v25 = *MEMORY[0x277CBF398];
  *v26 = v19;
  objc_msgSend_p_createElementsForSeries_forGroups_inBodyLayout_outTopStrokePath_outTopStrokeClipRect_outSeriesElementPath_outSeriesElementClipRect_outSymbolElementPath_outSymbolElementClipRect_outSymbolElementHitCheckPath_outSelectionKnobLocations_(self, v20, 0.0, *&v19, v21, groupsCopy, layoutCopy, sizeCopy, &v27, &v25, 0, 0, 0, 0, 0, 0);
  v22 = MEMORY[0x277CBF2C0];
  v23 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v23;
  *&retstr->tx = *(v22 + 32);
  sub_276348294(v27, retstr, rect, path, a9, *&v25, *(&v25 + 1), v26[0], v26[1]);
  CGPathRelease(v27);

  return result;
}

- (CGAffineTransform)transformForRenderingSeriesElementForSeries:(SEL)series forGroups:(id)groups forBodyLayout:(id)layout outElementSize:(id)size outClipRect:(CGSize *)rect outNewElementPath:(CGRect *)path
{
  groupsCopy = groups;
  layoutCopy = layout;
  sizeCopy = size;
  v27 = 0;
  v19 = *(MEMORY[0x277CBF398] + 16);
  v25 = *MEMORY[0x277CBF398];
  *v26 = v19;
  objc_msgSend_p_createElementsForSeries_forGroups_inBodyLayout_outTopStrokePath_outTopStrokeClipRect_outSeriesElementPath_outSeriesElementClipRect_outSymbolElementPath_outSymbolElementClipRect_outSymbolElementHitCheckPath_outSelectionKnobLocations_(self, v20, 0.0, *&v19, v21, groupsCopy, layoutCopy, sizeCopy, 0, 0, &v27, &v25, 0, 0, 0, 0);
  v22 = MEMORY[0x277CBF2C0];
  v23 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v23;
  *&retstr->tx = *(v22 + 32);
  sub_276348294(v27, retstr, rect, path, a9, *&v25, *(&v25 + 1), v26[0], v26[1]);
  CGPathRelease(v27);

  return result;
}

- (CGAffineTransform)transformForRenderingSeriesElementSymbolsForSeries:(SEL)series forGroups:(id)groups forBodyLayout:(id)layout outElementSize:(id)size outClipRect:(CGSize *)rect outNewElementPath:(CGRect *)path
{
  groupsCopy = groups;
  layoutCopy = layout;
  sizeCopy = size;
  v27 = 0;
  v19 = *(MEMORY[0x277CBF398] + 16);
  v25 = *MEMORY[0x277CBF398];
  *v26 = v19;
  objc_msgSend_p_createElementsForSeries_forGroups_inBodyLayout_outTopStrokePath_outTopStrokeClipRect_outSeriesElementPath_outSeriesElementClipRect_outSymbolElementPath_outSymbolElementClipRect_outSymbolElementHitCheckPath_outSelectionKnobLocations_(self, v20, *&v25, *&v19, v21, groupsCopy, layoutCopy, sizeCopy, 0, 0, 0, 0, &v27, &v25, 0, 0);
  v22 = MEMORY[0x277CBF2C0];
  v23 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v23;
  *&retstr->tx = *(v22 + 32);
  sub_276348294(v27, retstr, rect, path, a9, *&v25, *(&v25 + 1), v26[0], v26[1]);
  CGPathRelease(v27);

  return result;
}

- (CGRect)p_symbolRectWithSymbolPoint:(CGPoint)point symbolType:(int)type symbolSize:(double)size stroke:(id)stroke
{
  strokeCopy = stroke;
  v12 = strokeCopy;
  if (strokeCopy)
  {
    v14 = objc_msgSend_shouldRender(strokeCopy, v8, v9, v10, v11) ^ 1;
    if (!type)
    {
      LOBYTE(v14) = 1;
    }

    if ((v14 & 1) == 0)
    {
      objc_msgSend_width(v12, v13, v15, v16, v17);
    }
  }

  TSURectWithCenterAndSize();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (unint64_t)countOfPointsForSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outElementSize:(CGSize *)size outClipRect:(CGRect *)rect outUnitSymbolPath:(const CGPath *)path outNewTransformArray:(CGAffineTransform *)array outNewGroupIndexArray:(unint64_t *)self0
{
  seriesCopy = series;
  groupsCopy = groups;
  layoutCopy = layout;
  if (size)
  {
    v19 = *MEMORY[0x277CBF3A8];
    *size = *MEMORY[0x277CBF3A8];
  }

  if (rect)
  {
    v19 = *MEMORY[0x277CBF398];
    v20 = *(MEMORY[0x277CBF398] + 16);
    rect->origin = *MEMORY[0x277CBF398];
    rect->size = v20;
  }

  if (path)
  {
    *path = 0;
  }

  if (array)
  {
    *array = 0;
  }

  if (indexArray)
  {
    *indexArray = 0;
    if (!seriesCopy)
    {
      v22 = 0;
      goto LABEL_87;
    }

LABEL_15:
    v143 = layoutCopy;
    v23 = objc_msgSend_model(seriesCopy, v17, *&v19, v20.width, v21);
    v28 = objc_msgSend_seriesIndex(seriesCopy, v24, v25, v26, v27);
    v33 = objc_msgSend_lineAreaModelCacheForSeries_(v23, v29, v30, v31, v32, v28);

    if (v33)
    {
      if (objc_msgSend_symbolType(v33, v34, v35, v36, v37))
      {
        v142 = objc_msgSend_seriesShadow(v33, v38, v39, v40, v41);
        v46 = objc_msgSend_symbolStroke(v33, v42, v43, v44, v45);
        v141 = v46;
        if (v46)
        {
          objc_msgSend_width(v46, v47, v48, v49, v50);
          v51 = v48;
        }

        else
        {
          v51 = 0.0;
        }

        v67 = objc_msgSend_unitSymbolPath(v33, v47, v48, v49, v50);
        v68 = v67;
        if (path && v67)
        {
          v69 = CGPathRetain(v67);
          *path = CFAutorelease(v69);
        }

        else if (!v67)
        {
          v70 = *MEMORY[0x277CBF398];
          v71 = *(MEMORY[0x277CBF398] + 8);
          v72 = *(MEMORY[0x277CBF398] + 16);
          v73 = *(MEMORY[0x277CBF398] + 24);
LABEL_27:
          v163.origin.x = v70;
          v163.origin.y = v71;
          v163.size.width = v72;
          v163.size.height = v73;
          if (!CGRectIsNull(v163))
          {
            if (size)
            {
              size->width = v72;
              size->height = v73;
            }

            v164.origin.x = v70;
            v164.origin.y = v71;
            v164.size.width = v72;
            v164.size.height = v73;
            v165 = CGRectInset(v164, v51 * -0.600000024, v51 * -0.600000024);
            x = v165.origin.x;
            y = v165.origin.y;
            width = v165.size.width;
            height = v165.size.height;
            hasShadow = objc_msgSend_hasShadow_(TSCHStyleUtilities, v82, v165.origin.x, v165.origin.y, v165.size.width, v142);
            v85 = x;
            v86 = y;
            v87 = width;
            v88 = height;
            if (hasShadow)
            {
              objc_msgSend_shadowBoundsForRect_(v142, v84, x, y, width, height, x, y, width, height);
              v85 = v89;
              v86 = v90;
              v87 = v91;
              v88 = v92;
            }

            v166.origin.x = x;
            v166.origin.y = y;
            v166.size.width = width;
            v166.size.height = height;
            *&v75 = CGRectUnion(v166, *&v85);
            if (rect)
            {
              rect->origin.x = v75;
              rect->origin.y = v76;
              rect->size.width = v77;
              rect->size.height = v167.size.height;
            }
          }

          v161 = 0;
          objc_msgSend_rootedLayoutRect(layoutCopy, v74, v75, v76, v77);
          v97 = objc_msgSend_p_createPointArrayForSeries_inAreaFrame_groupIndexSet_outCount_(self, v93, v94, v95, v96, seriesCopy, groupsCopy, &v161);
          v98 = v161;
          v158 = 0;
          v159 = 0;
          v160 = 0;
          v155 = 0;
          v156 = 0;
          v157 = 0;
          v152 = 0;
          v153 = 0;
          v154 = 0;
          objc_msgSend_rootedLayoutRect(layoutCopy, v99, v100, v101, v102);
          v169 = CGRectInset(v168, -0.01, -0.01);
          recta = v169.origin.x;
          v103 = v169.origin.y;
          v104 = v169.size.width;
          v105 = v169.size.height;
          v169.origin.x = v70;
          v169.origin.y = v71;
          v169.size.width = v72;
          v169.size.height = v73;
          if (CGRectIsNull(v169))
          {
            v106 = 1.0;
          }

          else
          {
            v106 = v72;
          }

          v140 = v97;
          if (v98)
          {
            v107 = (v97 + 32);
            do
            {
              v108 = *(v107 - 2);
              if (v108 == -1.0)
              {
                v109 = 1.0;
              }

              else
              {
                v109 = v108 / v106;
              }

              if (*(v107 - 1))
              {
                v110 = *(v107 - 2);
                v111 = *v107;
                v170.origin.x = recta;
                v170.origin.y = v103;
                v170.size.width = v104;
                v170.size.height = v105;
                rect_8 = v110;
                v112 = *(v107 - 3);
                v113 = v112;
                if (CGRectContainsPoint(v170, v110))
                {
                  memset(&v151, 0, sizeof(v151));
                  CGAffineTransformMakeTranslation(&v151, rect_8.x, v112);
                  memset(&v150, 0, sizeof(v150));
                  CGAffineTransformMakeScale(&v150, v109, v109);
                  t1 = v150;
                  memset(&v149, 0, sizeof(v149));
                  rect_24 = v151;
                  CGAffineTransformConcat(&v149, &t1, &rect_24);
                  v114 = v159;
                  if (v159 >= v160)
                  {
                    v116 = v158;
                    v117 = v159 - v158;
                    v118 = (v159 - v158) >> 4;
                    v119 = v118 + 1;
                    if ((v118 + 1) >> 60)
                    {
                      sub_276161760();
                    }

                    v120 = v160 - v158;
                    if ((v160 - v158) >> 3 > v119)
                    {
                      v119 = v120 >> 3;
                    }

                    v121 = v120 >= 0x7FFFFFFFFFFFFFF0;
                    v122 = 0xFFFFFFFFFFFFFFFLL;
                    if (!v121)
                    {
                      v122 = v119;
                    }

                    if (v122)
                    {
                      sub_27616222C(&v158, v122);
                    }

                    *(16 * v118) = rect_8;
                    v115 = 16 * v118 + 16;
                    memcpy(0, v116, v117);
                    v123 = v158;
                    v158 = 0;
                    v159 = v115;
                    v160 = 0;
                    if (v123)
                    {
                      operator delete(v123);
                    }

                    layoutCopy = v143;
                  }

                  else
                  {
                    *v159 = rect_8.x;
                    *(v114 + 1) = v112;
                    v115 = (v114 + 16);
                  }

                  v159 = v115;
                  v124 = v156;
                  if (v156 >= v157)
                  {
                    v126 = v155;
                    v127 = v156 - v155;
                    v128 = (v156 - v155) >> 3;
                    v129 = v128 + 1;
                    if ((v128 + 1) >> 61)
                    {
                      sub_276161760();
                    }

                    v130 = v157 - v155;
                    if ((v157 - v155) >> 2 > v129)
                    {
                      v129 = v130 >> 2;
                    }

                    v121 = v130 >= 0x7FFFFFFFFFFFFFF8;
                    v131 = 0x1FFFFFFFFFFFFFFFLL;
                    if (!v121)
                    {
                      v131 = v129;
                    }

                    if (v131)
                    {
                      sub_2761AAC20(&v155, v131);
                    }

                    *(8 * v128) = v111;
                    v125 = 8 * v128 + 8;
                    memcpy(0, v126, v127);
                    v132 = v155;
                    v155 = 0;
                    v156 = v125;
                    v157 = 0;
                    if (v132)
                    {
                      operator delete(v132);
                    }

                    layoutCopy = v143;
                  }

                  else
                  {
                    *v156 = v111;
                    v125 = (v124 + 8);
                  }

                  v156 = v125;
                  sub_276298934(&v152, &v149);
                }
              }

              v107 += 5;
              --v98;
            }

            while (v98);
          }

          else if (!v97)
          {
            goto LABEL_73;
          }

          free(v140);
LABEL_73:
          v134 = v158;
          v133 = v159;
          if (array)
          {
            v135 = v153 - v152;
            if (v153 != v152)
            {
              v136 = malloc_type_malloc(v153 - v152, 0xA8A6601CuLL);
              memcpy(v136, v152, v135);
              *array = v136;
            }
          }

          if (indexArray)
          {
            v137 = v156 - v155;
            if (v156 != v155)
            {
              v138 = malloc_type_malloc(v156 - v155, 0xB097A91AuLL);
              memcpy(v138, v155, v137);
              *indexArray = v138;
            }
          }

          if (v152)
          {
            v153 = v152;
            operator delete(v152);
          }

          if (v155)
          {
            v156 = v155;
            operator delete(v155);
          }

          v22 = (v133 - v134) >> 4;
          if (v158)
          {
            v159 = v158;
            operator delete(v158);
          }

          goto LABEL_86;
        }

        BoundingBox = CGPathGetBoundingBox(v68);
        v70 = BoundingBox.origin.x;
        v71 = BoundingBox.origin.y;
        v72 = BoundingBox.size.width;
        v73 = BoundingBox.size.height;
        goto LABEL_27;
      }
    }

    else
    {
      v52 = MEMORY[0x277D81150];
      v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "[TSCHLineAreaScatterElementBuilder countOfPointsForSeries:forGroups:forBodyLayout:outElementSize:outClipRect:outUnitSymbolPath:outNewTransformArray:outNewGroupIndexArray:]");
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaScatterElementBuilder.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v59, v60, v61, v62, v53, v58, 2195, 0, "invalid nil value for '%{public}s'", "modelCache");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65, v66);
    }

    v22 = 0;
LABEL_86:

    goto LABEL_87;
  }

  v22 = 0;
  if (seriesCopy && path && array)
  {
    goto LABEL_15;
  }

LABEL_87:

  return v22;
}

- (unint64_t)countOfLabelsForSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewTransforms:(CGAffineTransform *)transforms outNewElementSizes:(CGSize *)sizes outNewClipRects:(CGRect *)rects outNewStrings:(id *)strings
{
  seriesCopy = series;
  groupsCopy = groups;
  layoutCopy = layout;
  if (transforms)
  {
    *transforms = 0;
  }

  if (sizes)
  {
    *sizes = 0;
  }

  if (rects)
  {
    *rects = 0;
  }

  if (strings)
  {
    *strings = 0;
  }

  v266 = seriesCopy;
  if (!seriesCopy)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCHLineAreaScatterElementBuilder countOfLabelsForSeries:forGroups:forBodyLayout:outNewTransforms:outNewElementSizes:outNewClipRects:outNewStrings:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaScatterElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 2309, 0, "invalid nil value for '%{public}s'", "series");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  if (layoutCopy)
  {
    v36 = 0;
    if (seriesCopy && transforms | strings)
    {
      v37 = objc_msgSend_model(seriesCopy, v17, v18, v19, v20);
      v42 = objc_msgSend_seriesIndex(seriesCopy, v38, v39, v40, v41);
      v47 = objc_msgSend_lineAreaModelCacheForSeries_(v37, v43, v44, v45, v46, v42);

      v265 = v47;
      if (v47)
      {
        v52 = objc_msgSend_intValueForProperty_defaultValue_(seriesCopy, v48, v49, v50, v51, 1209, 0);
        v57 = objc_msgSend_model(seriesCopy, v53, v54, v55, v56);
        v62 = objc_msgSend_chartInfo(v57, v58, v59, v60, v61);
        v67 = objc_msgSend_chartType(v62, v63, v64, v65, v66);
        v263 = objc_msgSend_supportsErrorBarsScatterX(v67, v68, v69, v70, v71);
        v72 = v52 != 0;

        v328 = 0;
        v329 = &v328;
        v330 = 0x5812000000;
        v331 = sub_276340A04;
        v332 = sub_276340A10;
        v333 = &unk_27657B92B;
        memset(v334, 0, sizeof(v334));
        v335 = 1065353216;
        v320 = 0;
        v321 = &v320;
        v322 = 0x5812000000;
        v323 = sub_276340A18;
        v324 = sub_276340A24;
        v325 = &unk_27657B92B;
        memset(v326, 0, sizeof(v326));
        v327 = 1065353216;
        v312 = 0;
        v313 = &v312;
        v314 = 0x5812000000;
        v315 = sub_276340A2C;
        v316 = sub_276340A38;
        v317 = &unk_27657B92B;
        memset(v318, 0, sizeof(v318));
        v319 = 1065353216;
        v304 = 0;
        v305 = &v304;
        v306 = 0x5812000000;
        v307 = sub_27633D9FC;
        v308 = sub_27633DA08;
        v309 = &unk_27657B92B;
        memset(v310, 0, sizeof(v310));
        v311 = 1065353216;
        v261 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v73, COERCE_DOUBLE(0x5812000000), 0.0, v74);
        if (objc_msgSend_showValueLabels(v265, v75, v76, v77, v78))
        {
          v83 = objc_msgSend_model(seriesCopy, v79, v80, v81, v82);
          v88 = objc_msgSend_allGroupsIndexSetForSeries_(v83, v84, v85, v86, v87, seriesCopy);

          v260 = v88;
          if (groupsCopy)
          {
            v89 = groupsCopy;
          }

          else
          {
            v89 = v88;
          }

          v255 = v89;

          v258 = objc_msgSend_labelPosition(v265, v90, v91, v92, v93);
          v259 = objc_msgSend_objectValueForProperty_(seriesCopy, v94, v95, v96, v97, 1189);
          v98 = v88;
          objc_msgSend_rootedLayoutRect(layoutCopy, v99, v100, v101, v102);
          v279 = 0;
          v256 = objc_msgSend_p_createPointArrayForSeries_inAreaFrame_groupIndexSet_cullBadPoints_outCount_(self, v103, v104, v105, v106, seriesCopy, v88, 1, &v279);
          v262 = objc_msgSend_array(MEMORY[0x277CBEB18], v107, v108, v109, v110);
          if (v279 >= 1)
          {
            v264 = v72 | v263;
            v115 = v279 + 1;
            v116 = &v256[40 * v279 - 8];
            do
            {
              v300 = *v116;
              v117 = *(v116 - 4);
              v118 = *(v116 - 3);
              if (objc_msgSend_containsIndex_(v98, v111, v112, v113, v114))
              {
                TSURectWithPoints();
                if (TSUNearlyContainsRect())
                {
                  v119 = v266;
                  if (objc_msgSend_intValueForProperty_defaultValue_(v119, v120, v121, v122, v123, 1179, 0))
                  {
                    v128 = objc_msgSend_seriesType(v119, v124, v125, v126, v127);
                    v133 = objc_msgSend_defaultSymbolType(v128, v129, v130, v131, v132);
                    v138 = objc_msgSend_intValueForProperty_defaultValue_(v119, v134, v135, v136, v137, 1190, v133);
                  }

                  else
                  {
                    v128 = objc_msgSend_seriesType(v119, v124, v125, v126, v127);
                    v138 = objc_msgSend_defaultSymbolType(v128, v139, v140, v141, v142);
                  }

                  v143 = v138;

                  objc_msgSend_p_symbolRectWithSymbolPoint_symbolType_symbolSize_stroke_(self, v144, v117, v118, *(v116 - 2), v143, v259);
                  v146 = v145;
                  v148 = v147;
                  v150 = v149;
                  v152 = v151;
                  v154 = objc_msgSend_formattedValueLabelStringForGroupIndex_(v119, v153, v145, v147, v149, v300);
                  v155 = *(MEMORY[0x277CBF398] + 16);
                  v285 = *MEMORY[0x277CBF398];
                  v286 = v155;
                  v158 = objc_msgSend_sharedText(TSCHText, v156, *&v285, *&v155, v157);
                  v163 = objc_msgSend_paragraphStyle(v265, v159, v160, v161, v162);
                  objc_msgSend_measureText_paragraphStyle_outErasableFrame_(v158, v164, v165, v166, v167, v154, v163, &v285);
                  v169 = v168;
                  v171 = v170;

                  objc_msgSend_labelPointForPosition_rect_stringSize_symbolType_(self, v172, v146, v148, v150, v258, v143, v152, v169, v171);
                  v174 = v173;
                  v176 = v175;
                  TSURectWithOriginAndSize();
                  v182 = v178;
                  v183 = v179;
                  v184 = v180;
                  v185 = v181;
                  if ((v264 & 1) != 0 || objc_msgSend_p_testIntersectionOfRect_againstSortedRects_withInset_isVertical_(self, v177, v178, v179, v180, v262, 1, v181, 1.0))
                  {
                    v186 = v329;
                    CGAffineTransformMakeTranslation(&v292, v174, v176);
                    v296 = v300;
                    v297 = v292;
                    sub_2763448F0(v186 + 6, &v296);
                    v296 = v300;
                    v297.a = v169;
                    v297.b = v171;
                    sub_276344B2C(v321 + 6, &v296);
                    v296 = v300;
                    *&v297.a = v285;
                    *&v297.c = v286;
                    sub_276344D60(v313 + 6, &v296);
                    v191 = v154;
                    if (!v154)
                    {
                      v257 = objc_msgSend_null(MEMORY[0x277CBEB68], v187, v188, v189, v190);
                      v191 = v257;
                    }

                    v192 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v187, v188, v189, v190, v300);
                    objc_msgSend_setObject_forKeyedSubscript_(v261, v193, v194, v195, v196, v191, v192);

                    if (!v154)
                    {
                    }

                    sub_276344308(v305 + 6, &v300);
                    v198 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v197, v182, v183, v184, v185);
                    objc_msgSend_p_insertRectValue_intoArray_isVertical_showAll_(self, v199, v200, v201, v202, v198, v262, 1, v264 & 1);
                  }

                  v98 = v260;
                }
              }

              --v115;
              v116 -= 5;
            }

            while (v115 > 1);
          }

          free(v256);

          v203 = v255;
        }

        else
        {
          v203 = groupsCopy;
        }

        v300 = 0;
        v301 = &v300;
        v302 = 0x2020000000;
        v303 = 0;
        v296 = 0;
        *&v297.a = &v296;
        *&v297.b = 0x4812000000;
        *&v297.c = sub_276340A40;
        *&v297.d = sub_276340A64;
        *&v297.tx = &unk_27657B92B;
        v299 = 0;
        v297.ty = 0.0;
        ty = 0.0;
        v292.a = 0.0;
        *&v292.b = &v292;
        *&v292.c = 0x4812000000;
        *&v292.d = sub_276340A7C;
        *&v292.tx = sub_276340AA0;
        *&v292.ty = &unk_27657B92B;
        v294 = 0;
        v295 = 0;
        v293 = 0;
        *&v285 = 0;
        *(&v285 + 1) = &v285;
        *&v286 = 0x4812000000;
        *(&v286 + 1) = sub_276340AB8;
        v287 = sub_276340ADC;
        v288 = &unk_27657B92B;
        v290 = 0;
        v291 = 0;
        __p = 0;
        v279 = 0;
        v280 = &v279;
        v281 = 0x3032000000;
        v282 = sub_27633DA10;
        v283 = sub_27633DA20;
        v284 = objc_msgSend_array(MEMORY[0x277CBEB18], v79, COERCE_DOUBLE(0x3032000000), v81, v82);
        v268[0] = MEMORY[0x277D85DD0];
        v268[1] = 3221225472;
        v268[2] = sub_276340AF4;
        v268[3] = &unk_27A6B9C68;
        v270 = &v304;
        v271 = &v296;
        v272 = &v328;
        v273 = &v292;
        v274 = &v320;
        v275 = &v285;
        v276 = &v312;
        v277 = &v279;
        v234 = v261;
        v269 = v234;
        v278 = &v300;
        objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v203, v235, v236, v237, v238, 2, v268);
        v243 = v301;
        seriesCopy = v266;
        if (transforms)
        {
          v239 = v301[3];
          if (v239)
          {
            *transforms = malloc_type_calloc(0x30uLL, v239, 0x1000040EED21634uLL);
            v243 = v301;
            if (v301[3])
            {
              v244 = 0;
              v245 = 0;
              do
              {
                v246 = (*(*&v297.a + 48) + v244 * 48);
                v247 = &(*transforms)[v244];
                v240 = *v246;
                v241 = v246[1];
                v242 = v246[2];
                *&v247->c = v241;
                *&v247->tx = v242;
                *&v247->a = v240;
                ++v245;
                ++v244;
              }

              while (v245 < v243[3]);
            }
          }
        }

        if (sizes)
        {
          v239 = v243[3];
          if (v239)
          {
            *sizes = malloc_type_calloc(0x10uLL, v239, 0x1000040451B5BE8uLL);
            v243 = v301;
            if (v301[3])
            {
              v248 = 0;
              v249 = 0;
              do
              {
                v240 = *(*(*&v292.b + 48) + v248 * 16);
                (*sizes)[v248] = v240;
                ++v249;
                v243 = v301;
                ++v248;
              }

              while (v249 < v301[3]);
            }
          }
        }

        if (rects)
        {
          v239 = v243[3];
          if (v239)
          {
            *rects = malloc_type_calloc(0x20uLL, v239, 0x1000040E0EAB150uLL);
            v243 = v301;
            if (v301[3])
            {
              v250 = 0;
              v251 = 0;
              do
              {
                v252 = (*(*(&v285 + 1) + 48) + v250 * 32);
                v253 = &(*rects)[v250];
                v240 = *v252;
                v241 = v252[1];
                v253->origin = *v252;
                v253->size = v241;
                ++v251;
                v243 = v301;
                ++v250;
              }

              while (v251 < v301[3]);
            }
          }
        }

        if (strings && v243[3])
        {
          *strings = objc_msgSend_subarrayWithRange_(v280[5], v239, v240.width, v241.width, v242.width, 0);
          v243 = v301;
        }

        v36 = v243[3];

        _Block_object_dispose(&v279, 8);
        _Block_object_dispose(&v285, 8);
        if (__p)
        {
          v290 = __p;
          operator delete(__p);
        }

        _Block_object_dispose(&v292, 8);
        if (v293)
        {
          v294 = v293;
          operator delete(v293);
        }

        _Block_object_dispose(&v296, 8);
        if (*&v297.ty)
        {
          ty = v297.ty;
          operator delete(*&v297.ty);
        }

        _Block_object_dispose(&v300, 8);

        _Block_object_dispose(&v304, 8);
        sub_276343E2C(v310);
        _Block_object_dispose(&v312, 8);
        sub_276343E2C(v318);
        _Block_object_dispose(&v320, 8);
        sub_276343E2C(v326);
        _Block_object_dispose(&v328, 8);
        sub_276343E2C(v334);
        groupsCopy = v203;
      }

      else
      {
        v219 = MEMORY[0x277D81150];
        v220 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v49, v50, v51, "[TSCHLineAreaScatterElementBuilder countOfLabelsForSeries:forGroups:forBodyLayout:outNewTransforms:outNewElementSizes:outNewClipRects:outNewStrings:]");
        v225 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v221, v222, v223, v224, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaScatterElementBuilder.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v219, v226, v227, v228, v229, v220, v225, 2317, 0, "invalid nil value for '%{public}s'", "modelCache");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v230, v231, v232, v233);
        v36 = 0;
      }
    }
  }

  else
  {
    v204 = MEMORY[0x277D81150];
    v205 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCHLineAreaScatterElementBuilder countOfLabelsForSeries:forGroups:forBodyLayout:outNewTransforms:outNewElementSizes:outNewClipRects:outNewStrings:]");
    v210 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v206, v207, v208, v209, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaScatterElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v204, v211, v212, v213, v214, v205, v210, 2310, 0, "invalid nil value for '%{public}s'", "bodyLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v215, v216, v217, v218);
    v36 = 0;
  }

  return v36;
}

@end
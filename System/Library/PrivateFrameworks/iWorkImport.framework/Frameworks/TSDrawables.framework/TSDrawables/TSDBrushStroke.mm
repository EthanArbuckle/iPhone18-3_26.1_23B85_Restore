@interface TSDBrushStroke
+ (id)p_glContextArray;
+ (id)p_glContextQueue;
+ (id)p_glContextSemaphore;
+ (unint64_t)p_glContextCount;
+ (void)p_clearFrameBuffers:(id)a3;
+ (void)p_drawColor:(id)a3 intoContext:(CGContext *)a4 usingImageAsMask:(CGImage *)a5 withRect:(CGRect)a6;
+ (void)p_drawFrameBuffers:(id)a3 intoFrameBuffer:(id)a4 withAlpha:(double)a5 usingDataBuffer:(id)a6;
- (BOOL)p_isDrawingRasterizedIntoPDFWithContext:(CGContext *)a3;
- (BOOL)p_isFreehandDrawingStrokeWithFixedTileWidth;
- (BOOL)p_prefersRasterRenderingInContext:(CGContext *)a3;
- (BOOL)p_shouldSplitAtSharpAngles;
- (BOOL)usesOpenGL;
- (CGImage)p_newCGImageFromGLWithWidth:(int)a3 height:(int)a4;
- (TSDBrushStroke)initWithArchive:(const StrokeArchive *)a3 unarchiver:(id)a4;
- (TSDBrushStroke)initWithName:(id)a3 color:(id)a4 width:(double)a5 cap:(int)a6 join:(int)a7 pattern:(id)a8 miterLimit:(double)a9;
- (double)horizontalMarginForSwatch;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)p_glTextureForCurrentStrokeAndContext;
- (id)strokeLineEnd:(id)a3;
- (int)cap;
- (int64_t)p_fastElementPercentage:(double *)a3 forOverallPercentage:(double)a4 onPath:(id)a5 withCachedCurrentElementPercentage:(id *)a6;
- (void)i_setCap:(int)a3;
- (void)p_brushPath:(CGPath *)a3 inContext:(CGContext *)a4 orDirectly:(id)a5 parameterized:(BOOL)a6 drawRasterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8 withLayoutOptions:(id)a9;
- (void)p_brushPath:(id)a3 withScaling:(id)a4 inElementRange:(_NSRange)a5 intoPath:(id)a6 orIntoVector:(void *)a7 sectionIndex:(unint64_t *)a8 viewScale:(double)a9 withLayoutOptions:(id)a10 currentSubpathIndex:(unint64_t)a11 cachedCurrentElementPercentage:(id *)a12;
- (void)p_brushSection:(id)a3 sectionIndex:(unint64_t)a4 ontoPath:(id)a5 inElementRange:(_NSRange)a6 intoPath:(id)a7 orIntoVector:(void *)a8 viewScale:(double)a9 strokeTileLayout:(id)a10 cachedCurrentElementPercentage:(id *)a11;
- (void)p_finishOpenGLRenderInContext:(CGContext *)a3 orDirectly:(id)a4 pathVertexData:(void *)a5 parameterized:(BOOL)a6 shouldReverseDrawOrder:(BOOL)a7 withLayoutOptions:(id)a8;
- (void)p_rasterBrushPath:(CGPath *)a3 inContext:(CGContext *)a4 orDirectly:(id)a5 parameterized:(BOOL)a6 shouldReverseDrawOrder:(BOOL)a7 withLayoutOptions:(id)a8;
- (void)p_rasterRenderSection:(id)a3 sectionIndex:(unint64_t)a4 ontoPath:(id)a5 inElementRange:(_NSRange)a6 into:(void *)a7 viewScale:(double)a8 strokeTileLayout:(id)a9 cachedCurrentElementPercentage:(id *)a10;
- (void)paintLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 inContext:(CGContext *)a7 useFastDrawing:(BOOL)a8;
- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8;
- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8 withLayoutOptions:(id)a9;
@end

@implementation TSDBrushStroke

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSDMutableBrushStroke alloc];
  v7 = objc_msgSend_strokeName(self, v5, v6);
  v10 = objc_msgSend_color(self, v8, v9);
  objc_msgSend_width(self, v11, v12);
  v14 = v13;
  v17 = objc_msgSend_cap(self, v15, v16);
  v20 = objc_msgSend_join(self, v18, v19);
  v23 = objc_msgSend_pattern(self, v21, v22);
  objc_msgSend_miterLimit(self, v24, v25);
  v28 = objc_msgSend_initWithName_color_width_cap_join_pattern_miterLimit_(v4, v26, v7, v10, v17, v20, v23, v14, v27);

  return v28;
}

- (TSDBrushStroke)initWithName:(id)a3 color:(id)a4 width:(double)a5 cap:(int)a6 join:(int)a7 pattern:(id)a8 miterLimit:(double)a9
{
  v11 = *&a7;
  v12 = *&a6;
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v23.receiver = self;
  v23.super_class = TSDBrushStroke;
  v19 = [(TSDSmartStroke *)&v23 initWithName:v16 color:v17 width:v12 cap:v11 join:v18 pattern:a5 miterLimit:a9];
  v21 = v19;
  if (v19)
  {
    objc_msgSend_i_setCap_(v19, v20, 1);
  }

  return v21;
}

- (TSDBrushStroke)initWithArchive:(const StrokeArchive *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = TSDBrushStroke;
  v7 = [(TSDSmartStroke *)&v11 initWithArchive:a3 unarchiver:v6];
  v9 = v7;
  if (v7)
  {
    objc_msgSend_i_setCap_(v7, v8, 1);
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_strokeName(self, v6, v7);
  objc_msgSend_width(self, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v3, v11, @"<%@ %p strokeName='%@' width=%f>", v5, self, v8, v12);

  return v13;
}

- (BOOL)usesOpenGL
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_brushStrokeUsesOpenGL, v3);
}

- (int)cap
{
  v4 = objc_msgSend_i_cap(self, a2, v2);
  if (v4 != 1)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSDBrushStroke cap]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 403, 0, "TSDBrushStroke should only ever have a round cap.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  return v4;
}

- (void)i_setCap:(int)a3
{
  v3.receiver = self;
  v3.super_class = TSDBrushStroke;
  [(TSDStroke *)&v3 i_setCap:1];
}

- (double)horizontalMarginForSwatch
{
  v11.receiver = self;
  v11.super_class = TSDBrushStroke;
  [(TSDStroke *)&v11 horizontalMarginForSwatch];
  v4 = v3;
  v7 = objc_msgSend_strokeName(self, v5, v6);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, @"Pen");

  result = 7.0;
  if (!isEqualToString)
  {
    return v4;
  }

  return result;
}

- (BOOL)p_shouldSplitAtSharpAngles
{
  v3 = objc_msgSend_strokeName(self, a2, v2);
  v5 = objc_msgSend_storageForBrushStrokeNamed_(TSDBrushStrokeLoader, v4, v3);

  if (!v5)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDBrushStroke p_shouldSplitAtSharpAngles]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 426, 0, "invalid nil value for '%{public}s'", "storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = objc_msgSend_options(v5, v6, v7);
  v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, @"split-at-sharp-angles");

  if (!v17)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSDBrushStroke p_shouldSplitAtSharpAngles]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 428, 0, "invalid nil value for '%{public}s'", "splitAtSharpAnglesOption");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
  }

  v27 = objc_msgSend_BOOLValue(v17, v18, v19);

  return v27;
}

- (id)strokeLineEnd:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isNone(v4, v5, v6))
  {
    v9 = v4;
  }

  else
  {
    v10 = objc_msgSend_identifier(v4, v7, v8);
    v12 = objc_msgSend_rangeOfString_(v10, v11, @":");
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = objc_msgSend_substringFromIndex_(v10, v13, &v13[v12]);

      v10 = v15;
    }

    v16 = objc_msgSend_strokeName(self, v13, v14);
    v18 = objc_msgSend_storageForBrushStrokeNamed_(TSDBrushStrokeLoader, v17, v16);

    if (!v18)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSDBrushStroke strokeLineEnd:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 448, 0, "invalid nil value for '%{public}s'", "storage");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
    }

    v28 = objc_msgSend_lineEnds(v18, v19, v20);
    v30 = objc_msgSend_objectForKeyedSubscript_(v28, v29, v10);

    v32 = v30;
    if (!v30)
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSDBrushStroke strokeLineEnd:]");
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 450, 0, "invalid nil value for '%{public}s'", "strokedLineEnd");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
      v32 = v4;
    }

    v9 = v32;
  }

  return v9;
}

- (void)paintLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 inContext:(CGContext *)a7 useFastDrawing:(BOOL)a8
{
  v8 = a8;
  y = a4.y;
  x = a4.x;
  v15 = a3;
  v18 = v15;
  if (v8)
  {
    v19 = objc_msgSend_identifier(v15, v16, v17);
    v21 = objc_msgSend_rangeOfString_(v19, v20, @":");
    if (v21 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = objc_msgSend_substringFromIndex_(v19, v22, &v22[v21]);

      v25 = objc_msgSend_lineEndWithIdentifier_(TSDLineEnd, v24, v23);

      v19 = v23;
      v18 = v25;
    }

    v28.receiver = self;
    v28.super_class = TSDBrushStroke;
    [(TSDStroke *)&v28 paintLineEnd:v18 atPoint:a7 atAngle:1 withScale:x inContext:y useFastDrawing:a5, a6];
  }

  else
  {
    v26 = objc_msgSend_strokeLineEnd_(self, v16, v15);

    v27.receiver = self;
    v27.super_class = TSDBrushStroke;
    v18 = v26;
    [(TSDStroke *)&v27 paintLineEnd:v26 atPoint:a7 atAngle:0 withScale:x inContext:y useFastDrawing:a5, a6];
  }
}

- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v12 = a4;
  v16 = objc_alloc_init(TSDBrushStrokeLayoutOptions);
  objc_msgSend_paintPath_wantsInteriorStroke_inContext_useFastDrawing_parameterized_shouldReverseDrawOrder_withLayoutOptions_(self, v15, a3, v12, a5, v10, v9, v8, v16);
}

- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8 withLayoutOptions:(id)a9
{
  v9 = a8;
  v10 = a7;
  v11 = a6;
  v13 = a4;
  v16 = a9;
  if ((objc_msgSend_p_prefersRasterRenderingInContext_(self, v17, a5) | v11))
  {
    v22.receiver = self;
    v22.super_class = TSDBrushStroke;
    [(TSDStroke *)&v22 paintPath:a3 wantsInteriorStroke:v13 inContext:a5 useFastDrawing:1 parameterized:v10 shouldReverseDrawOrder:v9];
  }

  else if (objc_msgSend_shouldRender(self, v18, v19))
  {
    if (objc_msgSend_p_shouldDrawAsVectorInContext_(self, v20, a5))
    {
      objc_msgSend_p_brushPath_inContext_orDirectly_parameterized_drawRasterized_shouldReverseDrawOrder_withLayoutOptions_(self, v21, a3, a5, 0, v10, 0, 0, v16);
    }

    else
    {
      objc_msgSend_p_rasterBrushPath_inContext_orDirectly_parameterized_shouldReverseDrawOrder_withLayoutOptions_(self, v21, a3, a5, 0, v10, v9, v16);
    }
  }
}

- (void)p_brushPath:(CGPath *)a3 inContext:(CGContext *)a4 orDirectly:(id)a5 parameterized:(BOOL)a6 drawRasterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8 withLayoutOptions:(id)a9
{
  v129 = a7;
  v9 = a6;
  v138 = *MEMORY[0x277D85DE8];
  v128 = a5;
  v132 = a9;
  v124 = v9;
  if (v9 && !v129)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSDBrushStroke p_brushPath:inContext:orDirectly:parameterized:drawRasterized:shouldReverseDrawOrder:withLayoutOptions:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 519, 0, "Parameterized strokes must draw rasterized.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  if (v132)
  {
    v20 = !v129;
  }

  else
  {
    v20 = 1;
  }

  if (v20 || (objc_msgSend_strokeEnd(v132, v11, v12), v21 > 0.0))
  {
    v22 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v11, a3);
    objc_msgSend_length(v22, v23, v24);
    if (v27 == 0.0)
    {
LABEL_75:

      goto LABEL_76;
    }

    if (v124)
    {
      v28 = objc_msgSend_bezierPathByFlatteningPathWithFlatness_(v22, v25, v26, 0.1);

      if (objc_msgSend_isEffectivelyClosed(v28, v29, v30) && (objc_msgSend_isClockwise(v28, v25, v26) & 1) == 0)
      {
        v31 = objc_msgSend_bezierPathByReversingPath(v28, v25, v26);

        v22 = v31;
      }

      else
      {
        v22 = v28;
      }
    }

    objc_msgSend_width(self, v25, v26);
    objc_msgSend_setLineWidth_(v22, v32, v33);
    objc_msgSend_miterLimit(self, v34, v35);
    objc_msgSend_setMiterLimit_(v22, v36, v37);
    if (v128)
    {
      objc_msgSend_transform(v128, v38, v39);
      TSUTransformScale();
      v41 = v40;
      objc_msgSend_contentsScale(v128, v42, v43);
    }

    else
    {
      v44 = a4;
      if (!a4)
      {
        v46 = 0.0;
        goto LABEL_18;
      }

      if (objc_msgSend_p_isDrawingRasterizedIntoPDFWithContext_(self, v38, a4))
      {
        v46 = 1.0;
        goto LABEL_18;
      }

      CGContextGetCTM(&v136, a4);
      TSUTransformScale();
      v41 = v122;
      v45 = TSDCGContextAssociatedScreenScale(a4);
    }

    v46 = v41 / v45;
LABEL_18:
    v125 = v46;
    if (v129)
    {
      operator new();
    }

    v47 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v38, v44);
    objc_msgSend_lineWidth(v22, v48, v49);
    objc_msgSend_setLineWidth_(v47, v50, v51);
    objc_msgSend_setWindingRule_(v47, v52, 0);
    v127 = v47;
    v135 = 0;
    objc_msgSend_length(v22, v53, v54);
    v56 = v55;
    shouldSplitAtSharpAngles = objc_msgSend_p_shouldSplitAtSharpAngles(self, v57, v58);
    v60 = *(MEMORY[0x277CBF348] + 8);
    v134 = *MEMORY[0x277CBF348];
    v65 = objc_msgSend_elementCount(v22, v61, v62);
    v133[0] = 0;
    v133[1] = 1;
    v133[2] = 0;
    if (v65 >= 1)
    {
      v130 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0.0;
      v69 = 0.0;
      v123 = v56;
      while (1)
      {
        v70 = v69;
        v71 = objc_msgSend_elementAtIndex_associatedPoints_(v22, v63, v67, &v136.c);
        objc_msgSend_lengthOfElement_(v22, v72, v67);
        v69 = v69 + v73 / v56;
        switch(v71)
        {
          case 3:
            *&v136.c = v134;
            break;
          case 2:
            if (shouldSplitAtSharpAngles)
            {
              TSUSubtractPoints();
              TSUPointLength();
              if (v76 >= 1.0)
              {
                TSUMultiplyPointScalar();
              }

              else
              {
                TSUSubtractPoints();
                TSUNormalizePoint();
              }

              v56 = v123;
              if (v67 < 2)
              {
                v70 = v68;
              }

              else
              {
                TSUDotPoints();
                v92 = v91 >= 0.99 || (~v66 + v67) < 1;
                if (v92 || v70 - v68 <= 0.0)
                {
                  v70 = v68;
                }

                else
                {
                  objc_msgSend_p_brushPath_withScaling_inElementRange_intoPath_orIntoVector_sectionIndex_viewScale_withLayoutOptions_currentSubpathIndex_cachedCurrentElementPercentage_(self, v90, v22, v66, v67 - v66, v127, 0, &v135, v68, v70 - v68, v125, v132, v130, v133);
                  v66 = v67 - 1;
                }
              }

              TSUSubtractPoints();
              TSUNormalizePoint();
              v60 = v93;
              v68 = v70;
            }

            *&v136.a = v137;
            goto LABEL_58;
          case 0:
            if ((v67 - v66) >= 1)
            {
              if (objc_msgSend_p_isFreehandDrawingStrokeWithFixedTileWidth(self, v63, v64))
              {
                v135 = 0;
              }

              else
              {
                v81 = objc_msgSend_patternOffsetsBySubpath(v132, v74, v75);
                v82 = v81 == 0;

                if (!v82)
                {
                  v83 = MEMORY[0x277D81150];
                  v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "[TSDBrushStroke p_brushPath:inContext:orDirectly:parameterized:drawRasterized:shouldReverseDrawOrder:withLayoutOptions:]");
                  v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v87, v84, v86, 600, 0, "If there is a patternOffsetsBySubpath array, this should be a freehand drawing stroke.");

                  objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v88, v89);
                }
              }

              objc_msgSend_p_brushPath_withScaling_inElementRange_intoPath_orIntoVector_sectionIndex_viewScale_withLayoutOptions_currentSubpathIndex_cachedCurrentElementPercentage_(self, v74, v22, v66, v67 - v66, v127, 0, &v135, v68, v69 - v68, v125, v132, v130++, v133);
              v68 = v69;
              v66 = v67;
            }

            *&v136.a = *&v136.c;
            v134 = *&v136.c;
            goto LABEL_58;
        }

        if (!shouldSplitAtSharpAngles)
        {
          break;
        }

        TSUSubtractPoints();
        TSUNormalizePoint();
        v78 = v77;
        if (v67 < 2)
        {
          goto LABEL_41;
        }

        TSUDotPoints();
        v80 = v79 >= 0.99 || (~v66 + v67) < 1;
        if (v80 || v70 - v68 <= 0.0)
        {
          goto LABEL_41;
        }

        objc_msgSend_p_brushPath_withScaling_inElementRange_intoPath_orIntoVector_sectionIndex_viewScale_withLayoutOptions_currentSubpathIndex_cachedCurrentElementPercentage_(self, v63, v22, v66, v67 - v66, v127, 0, &v135, v68, v70 - v68, v125, v132, v130, v133);
        v66 = v67 - 1;
LABEL_42:
        *&v136.a = *&v136.c;
        v60 = v78;
        v68 = v70;
LABEL_58:
        if (v65 == ++v67)
        {
          goto LABEL_66;
        }
      }

      v78 = v60;
LABEL_41:
      v70 = v68;
      goto LABEL_42;
    }

    v65 = 0;
    v66 = 0;
    v130 = 0;
    v69 = 0.0;
    v68 = 0.0;
LABEL_66:
    v94 = v65 + ~v66;
    if (v94 >= 1)
    {
      if (objc_msgSend_p_isFreehandDrawingStrokeWithFixedTileWidth(self, v63, v64))
      {
        v135 = 0;
      }

      else
      {
        v97 = objc_msgSend_patternOffsetsBySubpath(v132, v95, v96);
        v98 = v97 == 0;

        if (!v98)
        {
          v99 = MEMORY[0x277D81150];
          v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, "[TSDBrushStroke p_brushPath:inContext:orDirectly:parameterized:drawRasterized:shouldReverseDrawOrder:withLayoutOptions:]");
          v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v99, v103, v100, v102, 674, 0, "If there is a patternOffsetsBySubpath array, this should be a freehand drawing stroke.");

          objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v104, v105);
        }
      }

      objc_msgSend_p_brushPath_withScaling_inElementRange_intoPath_orIntoVector_sectionIndex_viewScale_withLayoutOptions_currentSubpathIndex_cachedCurrentElementPercentage_(self, v95, v22, v66, v94, v127, 0, &v135, v68, v69 - v68, v125, v132, v130, v133);
    }

    if (!v127)
    {
      v106 = MEMORY[0x277D81150];
      v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "[TSDBrushStroke p_brushPath:inContext:orDirectly:parameterized:drawRasterized:shouldReverseDrawOrder:withLayoutOptions:]");
      v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v106, v110, v107, v109, 745, 0, "invalid nil value for '%{public}s'", "resultPath");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v111, v112);
    }

    v113 = v127;
    objc_msgSend_CGPath(v127, v114, v115);
    CGContextAddPathSafe();
    v118 = objc_msgSend_color(self, v116, v117);
    v121 = objc_msgSend_CGColor(v118, v119, v120);
    CGContextSetFillColorWithColor(a4, v121);

    CGContextFillPath(a4);
    goto LABEL_75;
  }

LABEL_76:
}

- (void)p_brushPath:(id)a3 withScaling:(id)a4 inElementRange:(_NSRange)a5 intoPath:(id)a6 orIntoVector:(void *)a7 sectionIndex:(unint64_t *)a8 viewScale:(double)a9 withLayoutOptions:(id)a10 currentSubpathIndex:(unint64_t)a11 cachedCurrentElementPercentage:(id *)a12
{
  length = a5.length;
  location = a5.location;
  var1 = a4.var1;
  var0 = a4.var0;
  v178 = a3;
  v20 = a6;
  v176 = a10;
  if (objc_msgSend_elementCount(v178, v21, v22) >= 2)
  {
    v27 = objc_msgSend_patternOffsetsBySubpath(v176, v23, v24);
    if (v27)
    {
      isFreehandDrawingStrokeWithFixedTileWidth = objc_msgSend_p_isFreehandDrawingStrokeWithFixedTileWidth(self, v25, v26);

      if ((isFreehandDrawingStrokeWithFixedTileWidth & 1) == 0)
      {
        v29 = MEMORY[0x277D81150];
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSDBrushStroke p_brushPath:withScaling:inElementRange:intoPath:orIntoVector:sectionIndex:viewScale:withLayoutOptions:currentSubpathIndex:cachedCurrentElementPercentage:]");
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 757, 0, "We only know how to adjust the pattern of constant width layout brush strokes.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
      }
    }

    objc_msgSend_lineWidth(v178, v25, v26);
    v37 = v36;
    v40 = objc_msgSend_strokeName(self, v38, v39);
    v42 = objc_msgSend_storageForBrushStrokeNamed_(TSDBrushStrokeLoader, v41, v40);

    v172 = v42;
    if (!v42)
    {
      v45 = MEMORY[0x277D81150];
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSDBrushStroke p_brushPath:withScaling:inElementRange:intoPath:orIntoVector:sectionIndex:viewScale:withLayoutOptions:currentSubpathIndex:cachedCurrentElementPercentage:]");
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v49, v46, v48, 762, 0, "invalid nil value for '%{public}s'", "storage");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
    }

    v175 = objc_msgSend_paths(v172, v43, v44);
    v173 = objc_msgSend_bounds(v172, v52, v53);
    v174 = objc_msgSend_objectForKey_(v175, v54, @"middle");
    v57 = objc_msgSend_objectForKey_(v175, v55, @"start");
    if (v57)
    {
      v58 = objc_msgSend_objectForKey_(v175, v56, @"end");
      v59 = v58 != 0;
    }

    else
    {
      v59 = 0;
    }

    if (v37 >= 5.0)
    {
      v65 = @"middle";
    }

    else
    {
      v62 = objc_msgSend_objectForKey_(v175, v60, @"small");
      v63 = v62;
      if (v62)
      {
        v64 = v62;

        v59 = 0;
        v65 = @"small";
        v174 = v64;
      }

      else
      {
        v65 = @"middle";
      }
    }

    v168 = v37;
    objc_msgSend_length(v178, v60, v61);
    v170 = v68;
    v69 = var0 + var1;
    if (v59)
    {
      v70 = objc_msgSend_objectForKeyedSubscript_(v173, v66, @"start");
      v73 = objc_msgSend_lastObject(v70, v71, v72);
      objc_msgSend_CGRectValue(v73, v74, v75);
      v77 = v76;
      v79 = v78;

      v81 = objc_msgSend_objectForKeyedSubscript_(v173, v80, @"end");
      v84 = objc_msgSend_lastObject(v81, v82, v83);
      objc_msgSend_CGRectValue(v84, v85, v86);
      v88 = v87;
      v90 = v89;
      v91 = v168 * (v77 / v79);
      v92 = var1 * v170 * 0.5;
      v93 = fmin(v91, v92);

      v94 = var0 + v93 / v170;
      objc_msgSend_p_brushSection_sectionIndex_ontoPath_inElementRange_intoPath_orIntoVector_viewScale_strokeTileLayout_cachedCurrentElementPercentage_(self, v95, @"start", 0, v178, location, length, v20, a9, var0, v94, 0.0, 1.0, a7, a12);
      v96 = v69 - fmin(v168 * (v88 / v90), v92) / v170;
      objc_msgSend_p_brushSection_sectionIndex_ontoPath_inElementRange_intoPath_orIntoVector_viewScale_strokeTileLayout_cachedCurrentElementPercentage_(self, v97, @"end", 0, v178, location, length, v20, a9, v96, v69, 0.0, 1.0, a7, a12);
      v69 = v96;
    }

    else
    {
      v94 = var0;
    }

    v99 = objc_msgSend_count(v174, v66, v67);
    if (!v99 || v69 <= v94)
    {
LABEL_55:

      goto LABEL_56;
    }

    v100 = objc_msgSend_objectForKeyedSubscript_(v173, v98, v65);
    v103 = objc_msgSend_lastObject(v100, v101, v102);
    objc_msgSend_CGRectValue(v103, v104, v105);
    v107 = v106;
    v109 = v108;

    v112 = v107 / v109;
    v113 = v69 - v94;
    v114 = v170 * (v69 - v94);
    v115 = v168 * v112;
    v116 = (v114 / (v168 * v112) + 1.0);
    if (v99 == 1)
    {
      v116 = 1;
    }

    v169 = v116;
    v117 = objc_msgSend_patternOffsetsBySubpath(v176, v110, v111);

    v120 = 0.0;
    if (v117)
    {
      v121 = objc_msgSend_patternOffsetsBySubpath(v176, v118, v119);
      v124 = objc_msgSend_count(v121, v122, v123);

      if (v124 > a11)
      {
        v127 = objc_msgSend_patternOffsetsBySubpath(v176, v125, v126);
        v129 = objc_msgSend_objectAtIndexedSubscript_(v127, v128, a11);
        objc_msgSend_tsu_CGFloatValue(v129, v130, v131);
LABEL_28:
        v120 = v132 / v170;

        goto LABEL_30;
      }

      v133 = objc_msgSend_patternOffsetsBySubpath(v176, v125, v126);
      v136 = objc_msgSend_count(v133, v134, v135);

      if (v136 == 1)
      {
        v127 = objc_msgSend_patternOffsetsBySubpath(v176, v137, v138);
        v129 = objc_msgSend_objectAtIndexedSubscript_(v127, v139, 0);
        objc_msgSend_tsu_CGFloatValue(v129, v140, v141);
        goto LABEL_28;
      }

      v166 = MEMORY[0x277D81150];
      v171 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v137, "[TSDBrushStroke p_brushPath:withScaling:inElementRange:intoPath:orIntoVector:sectionIndex:viewScale:withLayoutOptions:currentSubpathIndex:cachedCurrentElementPercentage:]");
      v167 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v142, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
      v165 = objc_msgSend_patternOffsetsBySubpath(v176, v143, v144);
      v147 = objc_msgSend_count(v165, v145, v146);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v166, v148, v171, v167, 867, 0, "Not enough pattern offsets for each subpath. Got %zi for index %zi", v147, a11);

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v149, v150);
    }

LABEL_30:
    if (objc_msgSend_p_isFreehandDrawingStrokeWithFixedTileWidth(self, v118, v119))
    {
      v153 = v113 * (v115 / v114);
      if (v120 > 0.0 && v120 > v153)
      {
        v154 = *a8;
        do
        {
          v120 = v120 - v153;
          v155 = (1664525 * v154 + 1013904223);
          if (v155 % v99 == v154 % v99)
          {
            v154 = v155 + 1;
          }

          else
          {
            v154 = (1664525 * v154 + 1013904223);
          }
        }

        while (v120 > 0.0 && v120 > v153);
        *a8 = v154;
      }
    }

    else
    {
      v153 = v113 / v169;
    }

    if (vabdd_f64(v94, v69) > 0.00000999999975)
    {
      while (1)
      {
        v156 = objc_msgSend_p_isFreehandDrawingStrokeWithFixedTileWidth(self, v151, v152);
        v158 = fmin(v69, v153 + v94);
        v159 = 0.0;
        if (!v156)
        {
          break;
        }

        if (v120 > 0.0)
        {
          v160 = v120 / v153;
          v120 = 0.0;
          v159 = v160 + 0.0;
        }

        v161 = v153 * (1.0 - v159);
        v162 = a12;
        if (v158 - v94 <= v161)
        {
          goto LABEL_48;
        }

        v158 = v158 - (v158 - v94 - v161);
        objc_msgSend_p_brushSection_sectionIndex_ontoPath_inElementRange_intoPath_orIntoVector_viewScale_strokeTileLayout_cachedCurrentElementPercentage_(self, v157, v65, *a8 % v99, v178, location, length, v20, a9, v94, v158, a7, a12);
LABEL_49:
        v163 = 1664525 * *a8 + 1013904223;
        if (v163 % v99 == *a8 % v99)
        {
          v164 = v163 + 1;
        }

        else
        {
          v164 = 1664525 * *a8 + 1013904223;
        }

        *a8 = v164;
        v94 = v158;
        if (vabdd_f64(v158, v69) <= 0.00000999999975)
        {
          goto LABEL_55;
        }
      }

      v162 = a12;
LABEL_48:
      objc_msgSend_p_brushSection_sectionIndex_ontoPath_inElementRange_intoPath_orIntoVector_viewScale_strokeTileLayout_cachedCurrentElementPercentage_(self, v157, v65, *a8 % v99, v178, location, length, v20, a9, v94, v158, a7, v162);
      goto LABEL_49;
    }

    goto LABEL_55;
  }

LABEL_56:
}

- (void)p_brushSection:(id)a3 sectionIndex:(unint64_t)a4 ontoPath:(id)a5 inElementRange:(_NSRange)a6 intoPath:(id)a7 orIntoVector:(void *)a8 viewScale:(double)a9 strokeTileLayout:(id)a10 cachedCurrentElementPercentage:(id *)a11
{
  var3 = a10.var3;
  var2 = a10.var2;
  var1 = a10.var1;
  var0 = a10.var0;
  length = a6.length;
  location = a6.location;
  v65 = a3;
  v66 = a5;
  v22 = a7;
  v64 = v22;
  if (a8)
  {
    v25 = length;
    if (v22)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSDBrushStroke p_brushSection:sectionIndex:ontoPath:inElementRange:intoPath:orIntoVector:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 924, 0, "expected nil value for '%{public}s'", "resultPath");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
    }

    objc_msgSend_p_rasterRenderSection_sectionIndex_ontoPath_inElementRange_into_viewScale_strokeTileLayout_cachedCurrentElementPercentage_(self, v23, v65, a4, v66, location, v25, a8, a9, var0, var1, var2, var3, a11);
  }

  else if (v22)
  {
    v33 = objc_msgSend_strokeName(self, v23, v24);
    v35 = objc_msgSend_storageForBrushStrokeNamed_(TSDBrushStrokeLoader, v34, v33);

    if (!v35)
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSDBrushStroke p_brushSection:sectionIndex:ontoPath:inElementRange:intoPath:orIntoVector:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]");
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v42, v39, v41, 928, 0, "invalid nil value for '%{public}s'", "storage");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44);
    }

    v45 = objc_msgSend_paths(v35, v36, v37);
    v47 = objc_msgSend_objectForKeyedSubscript_(v45, v46, v65);
    v49 = objc_msgSend_objectAtIndexedSubscript_(v47, v48, a4);

    objc_msgSend_lineWidth(v66, v50, v51);
    if (v54 >= 15.0)
    {
      objc_msgSend_originalPath(v49, v52, v53);
    }

    else
    {
      objc_msgSend_pathWithPossibleSmoothing(v49, v52, v53);
    }
    v62 = ;
    objc_msgSend_recursiveSubdivideOntoPath_withScaling_inElementRange_into_(v62, v63, v66, location, length, v64, var0, var1 - var0);
  }

  else
  {
    v55 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSDBrushStroke p_brushSection:sectionIndex:ontoPath:inElementRange:intoPath:orIntoVector:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]");
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v59, v56, v58, 934, 0, "resultPath and resultVector are both nil!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61);
  }
}

- (void)p_rasterBrushPath:(CGPath *)a3 inContext:(CGContext *)a4 orDirectly:(id)a5 parameterized:(BOOL)a6 shouldReverseDrawOrder:(BOOL)a7 withLayoutOptions:(id)a8
{
  v9 = a7;
  v10 = a6;
  v14 = a5;
  v17 = a8;
  if (v14)
  {
    objc_msgSend_transform(v14, v15, v16);
  }

  else
  {
    CGContextGetCTM(&v29, a4);
  }

  v19 = sqrt(v29.b * v29.b + v29.a * v29.a);
  if (a4 && objc_msgSend_p_isDrawingRasterizedIntoPDFWithContext_(self, v18, a4))
  {
    v19 = 1.0;
  }

  v29.a = 0.0;
  *&v29.b = &v29;
  *&v29.c = 0x2020000000;
  LOBYTE(v29.d) = 0;
  v20 = sub_2766BFD14();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27678E05C;
  block[3] = &unk_27A6CDCC0;
  block[4] = &v29;
  dispatch_sync(v20, block);

  if (*(*&v29.b + 24) == 1)
  {
    objc_msgSend_p_glContextArray(TSDBrushStroke, v21, v22);

    v23 = atomic_load(byte_280A4CA00);
    *(*&v29.b + 24) = (v23 & 1) == 0;
  }

  if ((!objc_msgSend_usesOpenGL(self, v21, v22) || *(*&v29.b + 24)) && (v14 || v10 || (objc_msgSend_width(self, v24, v25), v26 > 0.5 / v19)))
  {
    objc_msgSend_p_brushPath_inContext_orDirectly_parameterized_drawRasterized_shouldReverseDrawOrder_withLayoutOptions_(self, v24, a3, a4, v14, v10, 1, v9, v17);
  }

  else if (a4)
  {
    v27.receiver = self;
    v27.super_class = TSDBrushStroke;
    [(TSDStroke *)&v27 paintPath:a3 wantsInteriorStroke:0 inContext:a4 useFastDrawing:0 parameterized:v10 shouldReverseDrawOrder:0];
  }

  _Block_object_dispose(&v29, 8);
}

- (void)p_rasterRenderSection:(id)a3 sectionIndex:(unint64_t)a4 ontoPath:(id)a5 inElementRange:(_NSRange)a6 into:(void *)a7 viewScale:(double)a8 strokeTileLayout:(id)a9 cachedCurrentElementPercentage:(id *)a10
{
  length = a6.length;
  location = a6.location;
  var3 = a9.var3;
  var2 = a9.var2;
  var1 = a9.var1;
  var0 = a9.var0;
  v247 = *MEMORY[0x277D85DE8];
  v215 = a3;
  v18 = a5;
  v19 = location + length;
  while (location < objc_msgSend_elementCount(v18, v16, v17))
  {
    objc_msgSend_lengthOfElement_(v18, v16, location);
    if (v20 != 0.0)
    {
      break;
    }

    ++location;
  }

  while (v19 > location)
  {
    objc_msgSend_lengthOfElement_(v18, v16, v19);
    if (v21 != 0.0)
    {
      break;
    }

    --v19;
  }

  if (v19 < location)
  {
    goto LABEL_119;
  }

  v243 = 0.0;
  v244 = 0.0;
  v230 = objc_msgSend_p_fastElementPercentage_forOverallPercentage_onPath_withCachedCurrentElementPercentage_(self, v16, &v244, v18, a10, var0);
  v23 = objc_msgSend_p_fastElementPercentage_forOverallPercentage_onPath_withCachedCurrentElementPercentage_(self, v22, &v243, v18, a10, var1);
  if (v230 < location)
  {
    v244 = 0.0;
    v230 = location;
  }

  if (v23 > v19)
  {
    v243 = 1.0;
    v23 = v19;
  }

  if (v23 > v230)
  {
    if (v244 == 1.0 || fabs(v244 + -1.0) < 0.000000999999997)
    {
      v244 = 0.0;
      ++v230;
    }

    v26 = v243;
    if (v243 == 0.0)
    {
      v243 = 1.0;
      --v23;
    }
  }

  v224 = v23;
  v27 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v24, v25, v26);
  objc_msgSend_appendBezierPath_fromSegment_t_toSegment_t_withoutMove_(v27, v28, v18, v230, v224, 0, v244, v243);
  CGAffineTransformMakeScale(&v246, a8, a8);
  objc_msgSend_transformUsingAffineTransform_(v27, v29, &v246);
  v226 = objc_msgSend_bezierPathByFlatteningPathWithFlatness_(v27, v30, v31, 0.1);

  CGAffineTransformMakeScale(&v246, 1.0 / a8, 1.0 / a8);
  objc_msgSend_transformUsingAffineTransform_(v226, v32, &v246);
  objc_msgSend_width(self, v33, v34);
  if (v37 < 0.5 / a8)
  {
    v37 = 0.5 / a8;
  }

  v216 = v37;
  __p = 0;
  v241 = 0;
  v242 = 0;
  v239 = *MEMORY[0x277CBF348];
  v38 = objc_msgSend_elementCount(v226, v35, v36);
  v41 = v38;
  if (v38)
  {
    v42 = 0;
    v233 = v38 - 1;
    while (1)
    {
      *&v246.a = *MEMORY[0x277D814D0];
      *&v246.c = *&v246.a;
      *&v246.tx = *&v246.a;
      v43 = objc_msgSend_elementAtIndex_associatedPoints_(v226, v39, v42, &v246);
      v45 = v43;
      v238 = *&v246.a;
      if (!v43)
      {
        break;
      }

      if (v43 != 1)
      {
        if (v43 == 3)
        {
          v238 = v239;
        }

        else
        {
          v46 = MEMORY[0x277D81150];
          v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "[TSDBrushStroke p_rasterRenderSection:sectionIndex:ontoPath:inElementRange:into:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]");
          v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v50, v47, v49, 1051, 0, "Path should be flat by now.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52);
          if (!v45)
          {
            break;
          }
        }
      }

      TSUDistanceSquared();
      v54 = v53 * a8 * a8;
      if (v54 > 0.000000999999997 && v54 <= 1.0)
      {
        v56 = 1.0;
        if (v42 == v233 || (v245[0] = *MEMORY[0x277D814D0], v245[1] = v245[0], v245[2] = v245[0], objc_msgSend_elementAtIndex_associatedPoints_(v226, v39, v42 + 1, v245)) && (TSUSubtractPoints(), TSUNormalizePoint(), TSUSubtractPoints(), TSUNormalizePoint(), TSUDotPoints(), v57 < 0.99))
        {
LABEL_38:
          if ((v45 | 2) != 3)
          {
            v58 = MEMORY[0x277D81150];
            v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSDBrushStroke p_rasterRenderSection:sectionIndex:ontoPath:inElementRange:into:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]");
            v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v62, v59, v61, 1094, 0, "Should only have line and close elements by now.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64);
          }

          v65 = fmax(sqrt(v54) / 50.0, v56);
          if (v65 >= 1)
          {
            TSUSubtractPoints();
            v66 = 1;
            do
            {
              TSUMultiplyPointScalar();
              TSUAddPoints();
              *&v245[0] = v67;
              *(&v245[0] + 1) = v68;
              sub_27678F410(&__p, v245);
              ++v66;
              --v65;
            }

            while (v65);
          }
        }
      }

      else
      {
        v56 = 1.0;
        if (v54 > 1.0)
        {
          goto LABEL_38;
        }
      }

LABEL_43:
      if (++v42 == v41)
      {
        goto LABEL_44;
      }
    }

    sub_27678F410(&__p, &v238);
    v239 = v238;
    goto LABEL_43;
  }

LABEL_44:
  v69 = __p;
  v70 = (v241 - __p) >> 4;
  if (v70 >= 2)
  {
    v71 = objc_msgSend_strokeName(self, v39, v40);
    v214 = objc_msgSend_storageForBrushStrokeNamed_(TSDBrushStrokeLoader, v72, v71);

    if (!v214)
    {
      v75 = MEMORY[0x277D81150];
      v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "[TSDBrushStroke p_rasterRenderSection:sectionIndex:ontoPath:inElementRange:into:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]");
      v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v75, v79, v76, v78, 1112, 0, "invalid nil value for '%{public}s'", "storage");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v81);
    }

    v82 = objc_msgSend_textureIndices(v214, v73, v74);
    v84 = objc_msgSend_objectForKeyedSubscript_(v82, v83, v215);
    v86 = objc_msgSend_objectAtIndexedSubscript_(v84, v85, a4);
    v234 = objc_msgSend_unsignedIntegerValue(v86, v87, v88);

    v228 = objc_msgSend_totalSectionCount(v214, v89, v90);
    LODWORD(v86) = log2(64.0) - 1;
    log2((v216 + v216) * a8);
    v91 = 1.0;
    TSUClamp();
    v93 = (v86 - v92);
    v222 = exp2f(-v93);
    v213 = exp2f(-(v93 + 1.0));
    v94 = v70 - 1;
    v95 = __p + 24;
    v96 = 0.0;
    v97 = v70 - 1;
    do
    {
      TSUDistance();
      v96 = v100 + v96;
      v95 += 16;
      --v97;
    }

    while (v97);
    v101 = objc_msgSend_paths(v214, v98, v99);
    v103 = objc_msgSend_objectForKeyedSubscript_(v101, v102, v215);
    v105 = objc_msgSend_objectAtIndexedSubscript_(v103, v104, a4);
    v108 = objc_msgSend_originalPath(v105, v106, v107);

    v236 = v108;
    if (!v108)
    {
      v111 = MEMORY[0x277D81150];
      v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v109, "[TSDBrushStroke p_rasterRenderSection:sectionIndex:ontoPath:inElementRange:into:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]");
      v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v111, v115, v112, v114, 1169, 0, "invalid nil value for '%{public}s'", "originalPathForSection");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v116, v117);
    }

    objc_msgSend_bounds(v236, v109, v110);
    v118 = a8;
    CGRectGetMaxX(v248);
    if (var2 < 0.001)
    {
      v119 = __p;
      TSUSubtractPoints();
      TSUNormalizePoint();
      v91 = 1.0;
      TSUMultiplyPointScalar();
      TSUAddPoints();
      *v119 = v120;
      v119[1] = v121;
    }

    if (var3 > 0.999)
    {
      v122 = __p + 16 * v94;
      TSUSubtractPoints();
      TSUNormalizePoint();
      TSUMultiplyPointScalar();
      TSUAddPoints();
      *v122 = v123;
      v122[1] = v124;
    }

    sub_276791470(v245, v70);
    v125 = *&v245[0];
    **&v245[0] = 0;
    v126 = (v125 + 4);
    v127 = __p + 24;
    v128 = 0.0;
    do
    {
      TSUDistance();
      v128 = v131 + v128;
      *v126++ = v128;
      v127 += 16;
      --v94;
    }

    while (v94);
    v132 = *(a7 + 1);
    v133 = v132 - *a7;
    v134 = v132 != *a7;
    if (v132 == *a7)
    {
LABEL_72:
      shouldSplitAtSharpAngles = objc_msgSend_p_shouldSplitAtSharpAngles(self, v129, v130);
      v151 = v244;
      if (shouldSplitAtSharpAngles)
      {
        if (v244 > 0.99 && v230 < v19)
        {
          ++v230;
          v244 = 0.0;
          v151 = 0.0;
        }

        v153 = v243;
        if (v243 < 0.01 && v224 > location)
        {
          --v224;
          v243 = 1.0;
        }
      }

      else
      {
        if (v244 < 0.01 && v230 > location)
        {
          --v230;
          v244 = 1.0;
          v151 = 1.0;
        }

        v153 = v243;
        if (v243 > 0.99 && v224 < v19)
        {
          ++v224;
          v243 = 0.0;
        }
      }

      objc_msgSend_gradientAt_fromElement_(v18, v150, v230, v151, v153);
      TSUSubtractPoints();
      objc_msgSend_gradientAt_fromElement_(v18, v157, v224, v243);
      TSUAddPoints();
      v160 = objc_msgSend_strokeName(self, v158, v159);
      isEqualToString = objc_msgSend_isEqualToString_(v160, v161, @"Basic");
      if (isEqualToString & 1) != 0 || (objc_msgSend_strokeName(self, v162, v163), v94 = objc_claimAutoreleasedReturnValue(), (objc_msgSend_isEqualToString_(v94, v165, @"Basic Rounded")))
      {
        isEffectivelyClosed = objc_msgSend_isEffectivelyClosed(v18, v162, v163);
        if (isEqualToString)
        {

          if (!isEffectivelyClosed)
          {
LABEL_103:
            v170 = 0;
            v171 = 0;
            v172 = 4.0 * v93;
            v173 = (v228 - 1);
            v174 = (v228 - 1);
            v175 = 4.0 * 4.0 + 64.0;
            v176 = v172 + (v91 - v222) * 64.0;
            *&v172 = v172 + (v91 - v213) * 64.0;
            v177 = 1.0 - (v176 / v175);
            *&v172 = 1.0 - (*&v172 / v175);
            v178 = vabds_f32(*&v172, v177);
            v179 = v177;
            v180 = *&v172;
            v181 = v178 / (v216 * a8);
            v182 = v91 / (v228 * v175);
            v183 = v181 + v179;
            *&v181 = v180 - v181;
            v184 = v182 + v179;
            v185 = v180 - v182;
            v231 = 1.0 - (((v173 + v183) - v234) / v228);
            v221 = 1.0 - (((v173 + *&v181) - v234) / v228);
            *&v180 = v91 - (v184 + v174 - v234) / v228;
            v225 = LODWORD(v180);
            v186 = v91 - (v185 + v174 - v234) / v228;
            v187 = 1.0;
            v223 = v186;
            do
            {
              v235 = v118;
              v237 = v91;
              v188 = v171 + 1;
              TSUSubtractPoints();
              TSUNormalizePoint();
              TSUSubtractPoints();
              TSUNormalizePoint();
              TSUMultiplyPointScalar();
              TSUDotPoints();
              v190 = acos(fmin(fmax(v189, -1.0), v187));
              v191 = sin(v190 * 0.5);
              objc_msgSend_miterLimit(self, v192, v193);
              v227 = v194 * 0.995;
              v229 = v187 / v191;
              if (v187 / v191 <= v194 * 0.995)
              {
                TSUAveragePoints();
                TSURotatePoint90Degrees();
                TSUNormalizePoint();
                TSUMultiplyPointScalar();
              }

              else
              {
                TSURotatePoint90Degrees();
                TSURotatePoint90Degrees();
                TSUNormalizePoint();
                TSUMultiplyPointScalar();
                TSUNormalizePoint();
                TSUMultiplyPointScalar();
                v235 = v196;
                v237 = v195;
              }

              TSUMix();
              v198 = v197;
              TSUMix();
              v200 = v199;
              TSUAddPoints();
              v203 = v200;
              v204 = v198;
              v205 = v201;
              if (v134)
              {
                LODWORD(v246.a) = 0;
                v206 = v202;
                *(&v246.a + 1) = v201;
                *&v246.b = __PAIR64__(LODWORD(v203), LODWORD(v206));
                *&v246.c = __PAIR64__(v225, LODWORD(v231));
                *&v246.d = __PAIR64__(LODWORD(v204), LODWORD(v223));
                sub_27678CE30(a7, &v246);
              }

              else
              {
                v206 = v202;
              }

              LODWORD(v246.a) = 0;
              *(&v246.a + 1) = v205;
              *&v246.b = __PAIR64__(LODWORD(v203), LODWORD(v206));
              *&v246.c = __PAIR64__(v225, LODWORD(v231));
              *&v246.d = __PAIR64__(LODWORD(v204), LODWORD(v223));
              sub_27678CE30(a7, &v246);
              TSUSubtractPoints();
              *&v207 = v207;
              LODWORD(v246.a) = 0;
              *&v208 = v208;
              HIDWORD(v246.a) = LODWORD(v207);
              *&v246.b = __PAIR64__(LODWORD(v203), LODWORD(v208));
              *&v246.c = __PAIR64__(v225, LODWORD(v221));
              *&v246.d = __PAIR64__(LODWORD(v204), LODWORD(v223));
              sub_27678CE30(a7, &v246);
              v118 = v235;
              v91 = v237;
              if (v229 > v227)
              {
                TSUAddPoints();
                *&v209 = v209;
                LODWORD(v246.a) = 0;
                *&v210 = v210;
                HIDWORD(v246.a) = LODWORD(v209);
                *&v246.b = __PAIR64__(LODWORD(v203), LODWORD(v210));
                *&v246.c = __PAIR64__(v225, LODWORD(v231));
                *&v246.d = __PAIR64__(LODWORD(v204), LODWORD(v223));
                sub_27678CE30(a7, &v246);
                TSUSubtractPoints();
                *&v211 = v211;
                LODWORD(v246.a) = 0;
                *&v212 = v212;
                HIDWORD(v246.a) = LODWORD(v211);
                *&v246.b = __PAIR64__(LODWORD(v203), LODWORD(v212));
                *&v246.c = __PAIR64__(v225, LODWORD(v221));
                *&v246.d = __PAIR64__(LODWORD(v204), LODWORD(v223));
                sub_27678CE30(a7, &v246);
              }

              v134 = 0;
              v170 += 16;
              ++v171;
              v187 = 1.0;
            }

            while (v70 != v188);
            if (*&v245[0])
            {
              *(&v245[0] + 1) = *&v245[0];
              operator delete(*&v245[0]);
            }

            v69 = __p;
            goto LABEL_116;
          }
        }

        else
        {

          if ((isEffectivelyClosed & 1) == 0)
          {
            goto LABEL_103;
          }
        }

        objc_msgSend_gradientAt_fromElement_(v18, v167, v224, v243);
        objc_msgSend_gradientAt_fromElement_(v18, v168, v230, v244);
        v118 = v169;
        TSUSubtractPoints();
        TSUAddPoints();
        v91 = 1.0;
        goto LABEL_103;
      }

      goto LABEL_103;
    }

    v135 = v132 - 2;
    v136 = *(a7 + 2);
    if (v132 >= v136)
    {
      v139 = v133 >> 5;
      v140 = (v133 >> 5) + 1;
      if (v140 >> 59)
      {
        sub_2766E23A4();
      }

      v141 = v136 - *a7;
      if (v141 >> 4 > v140)
      {
        v140 = v141 >> 4;
      }

      if (v141 >= 0x7FFFFFFFFFFFFFE0)
      {
        v142 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v142 = v140;
      }

      if (v142)
      {
        sub_2767913E0(a7, v142);
      }

      v143 = (32 * v139);
      v144 = v135[1];
      *v143 = *v135;
      v143[1] = v144;
      v138 = 32 * v139 + 32;
      v94 = a7;
      v145 = *(a7 + 1) - *a7;
      v146 = v143 - v145;
      memcpy(v143 - v145, *a7, v145);
      v147 = *a7;
      *a7 = v146;
      *(a7 + 1) = v138;
      *(a7 + 2) = 0;
      if (!v147)
      {
        v148 = a7;
        goto LABEL_71;
      }

      operator delete(v147);
    }

    else
    {
      v137 = *(v132 - 1);
      *v132 = *v135;
      v132[1] = v137;
      v138 = (v132 + 2);
    }

    v148 = a7;
LABEL_71:
    v148[1] = v138;
    goto LABEL_72;
  }

LABEL_116:
  if (v69)
  {
    v241 = v69;
    operator delete(v69);
  }

LABEL_119:
}

- (void)p_finishOpenGLRenderInContext:(CGContext *)a3 orDirectly:(id)a4 pathVertexData:(void *)a5 parameterized:(BOOL)a6 shouldReverseDrawOrder:(BOOL)a7 withLayoutOptions:(id)a8
{
  v162 = a6;
  v11 = a4;
  v12 = a8;
  v15 = objc_autoreleasePoolPush();
  if (*(a5 + 1) == *a5)
  {
    goto LABEL_59;
  }

  if (v11)
  {
    objc_msgSend_frame(v11, v13, v14);
    objc_msgSend_transform(v11, v16, v17);
    TSURectWithSize();
    m12 = transform.m12;
    m11 = transform.m11;
    v171 = *&transform.m13;
    v172 = *&transform.m21;
    v169 = *&transform.m13;
    v170 = *&transform.m21;
    if (v21 <= 0.0 || v20 <= 0.0)
    {
      goto LABEL_59;
    }

    v153 = objc_msgSend_color(self, v18, v19);
  }

  else
  {
    ClipBoundingBox = CGContextGetClipBoundingBox(a3);
    width = ClipBoundingBox.size.width;
    height = ClipBoundingBox.size.height;
    CGContextGetCTM(&transform, a3);
    m12 = transform.m12;
    m11 = transform.m11;
    v171 = *&transform.m13;
    v172 = *&transform.m21;
    if (objc_msgSend_p_isDrawingRasterizedIntoPDFWithContext_(self, v26, a3))
    {
      v167.m11 = m11;
      v167.m12 = m12;
      *&v167.m13 = v171;
      *&v167.m21 = v172;
      CGAffineTransformScale(&transform, &v167, 1.0, 1.0);
      m12 = transform.m12;
      m11 = transform.m11;
      v171 = *&transform.m13;
      v172 = *&transform.m21;
    }

    v169 = v171;
    v170 = v172;
    if (width <= 0.0 || height <= 0.0)
    {
      goto LABEL_59;
    }

    if (a3)
    {
      v153 = objc_msgSend_colorForCGContext_(self, v27, a3);
    }

    else
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSDBrushStroke p_finishOpenGLRenderInContext:orDirectly:pathVertexData:parameterized:shouldReverseDrawOrder:withLayoutOptions:]");
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 1352, 0, "Should have either a direct context or a CGContext.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
      v153 = 0;
    }
  }

  objc_msgSend_width(self, v22, v23);
  objc_msgSend_alphaComponent(v153, v35, v36);
  c = a3;
  v147 = v12;
  v148 = v11;
  if (v11)
  {
    x = *MEMORY[0x277CBF3A0];
    y = *(MEMORY[0x277CBF3A0] + 8);
    v39 = *(MEMORY[0x277CBF3A0] + 16);
    v38 = *(MEMORY[0x277CBF3A0] + 24);
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSDBrushStroke p_finishOpenGLRenderInContext:orDirectly:pathVertexData:parameterized:shouldReverseDrawOrder:withLayoutOptions:]");
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v44, v41, v43, 1400, 0, "Trying to draw into an IOSurface on a platform that doesn't support it.");

    v45 = 0;
    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v46, v47);
    v156 = 0;
  }

  else
  {
    CGContextSaveGState(a3);
    v167.m11 = m11;
    v167.m12 = m12;
    *&v167.m13 = v169;
    *&v167.m21 = v170;
    CGAffineTransformInvert(&transform, &v167);
    CGContextConcatCTM(a3, &transform);
    v49 = *(MEMORY[0x277CBF2C0] + 32);
    v169 = *(MEMORY[0x277CBF2C0] + 16);
    v170 = v49;
    v174 = CGContextGetClipBoundingBox(a3);
    v175 = CGRectIntegral(v174);
    x = v175.origin.x;
    y = v175.origin.y;
    v39 = v175.size.width;
    v38 = v175.size.height;
    v50 = [TSDGLFrameBuffer alloc];
    LODWORD(v156) = fmin(v39, 1024.0);
    HIDWORD(v156) = fmin(v38, 1024.0);
    v45 = objc_msgSend_initWithSize_(v50, v51, v52, v156, SHIDWORD(v156));
  }

  objc_msgSend_bindFramebufferWithBindingOption_(v45, v48, 3);
  objc_msgSend_size(v45, v53, v54);
  v56 = v55;
  objc_msgSend_size(v45, v57, v58);
  glViewport(0, 0, v56, v59);
  glEnable(0xBE2u);
  glBlendFunc(1u, 0x303u);
  glTexParameteri(0xDE1u, 0x2801u, 9729);
  glTexParameteri(0xDE1u, 0x2800u, 9729);
  v146 = v15;
  v60 = 0x277CBE000uLL;
  v63 = objc_msgSend_array(MEMORY[0x277CBEB18], v61, v62);
  v164 = objc_msgSend_array(MEMORY[0x277CBEB18], v64, v65);
  v66 = *(a5 + 1) - *a5;
  if (v66)
  {
    v67 = 0;
    v68 = v66 >> 5;
    do
    {
      v69 = 0;
      v70 = *a5;
      v71 = 32 * v67;
      v72 = v67;
      do
      {
        if (*(v70 + v71) == 1)
        {
          if (v69)
          {
            break;
          }

          ++v67;
        }

        else
        {
          ++v69;
        }

        ++v72;
        v71 += 32;
      }

      while (v72 < v68);
      v73 = v70 + 32 * v67;
      v67 += v69;
      memset(&transform, 0, 24);
      sub_27679156C(&transform, v73, v70 + 32 * v67, (32 * v69) >> 5);
      if (*&transform.m12 != *&transform.m11)
      {
        while (1)
        {
          v144 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v74, 0);
          objc_msgSend_addObject_(v164, v145, v144);
        }
      }

      if (*&transform.m11)
      {
        transform.m12 = transform.m11;
        operator delete(*&transform.m11);
      }
    }

    while (v67 < v68);
  }

  glClearColor(0.0, 0.0, 0.0, 0.0);
  if (!v11)
  {
    v151 = vcvtpd_s64_f64(v39 * 0.0009765625);
    if (v151 >= 1)
    {
      v152 = 0;
      v160 = vcvtpd_s64_f64(v38 * 0.0009765625);
      v149 = vcvtd_n_f64_s32(-v156, 1uLL);
      v154 = vcvtd_n_f64_s32(-HIDWORD(v156), 1uLL);
      do
      {
        if (v160 >= 1)
        {
          v76 = 0;
          v77 = (x + (v152 << 10));
          do
          {
            glClear(0x4000u);
            memset(&transform, 0, sizeof(transform));
            CATransform3DMakeScale(&transform, 2.0 / v156, -2.0 / SHIDWORD(v156), 1.0);
            a = transform;
            v78 = (y + (v76 << 10));
            CATransform3DTranslate(&v167, &a, v149 - v77, v154 - v78, 0.0);
            transform = v167;
            m.m11 = m11;
            m.m12 = m12;
            *&m.m13 = v171;
            *&m.m21 = v172;
            CATransform3DMakeAffineTransform(&a, &m);
            m = transform;
            CATransform3DConcat(&v167, &a, &m);
            transform = v167;
            v81 = objc_msgSend_array(*(v60 + 2840), v79, v80);
            v161 = v76;
            v86 = objc_msgSend_array(*(v60 + 2840), v82, v83);
            v87 = 0;
            v88 = 0;
            while (v87 < objc_msgSend_count(v63, v84, v85))
            {
              v90 = objc_msgSend_objectAtIndexedSubscript_(v63, v89, v87);
              v92 = objc_msgSend_objectAtIndexedSubscript_(v164, v91, v87);
              v95 = objc_msgSend_BOOLValue(v92, v93, v94);

              v100 = objc_msgSend_count(v63, v96, v97);
              if (!v88)
              {
                if (objc_msgSend_count(v81, v98, v99))
                {
                  v88 = objc_msgSend_lastObject(v81, v101, v102);
                  objc_msgSend_removeLastObject(v81, v103, v104);
                }

                else
                {
                  v105 = [TSDGLFrameBuffer alloc];
                  objc_msgSend_size(v45, v106, v107);
                  if (!v162)
                  {
                    TSUMultiplySizeScalar();
                  }

                  v88 = objc_msgSend_initWithSize_(v105, v108, v109);
                }
              }

              LODWORD(v167.m11) = 0;
              glGetIntegerv(0x8069u, &v167);
              objc_msgSend_unbindFramebufferAndBindGLFramebuffer_(v45, v110, 0xFFFFFFFFLL);
              objc_msgSend_bindFramebufferWithBindingOption_(v88, v111, 3);
              glBindTexture(0xDE1u, LODWORD(v167.m11));
              objc_msgSend_size(v88, v112, v113);
              v115 = v114;
              objc_msgSend_size(v88, v116, v117);
              glViewport(0, 0, v115, v118);
              objc_msgSend_unbindFramebufferAndBindGLFramebuffer_(v88, v119, 0xFFFFFFFFLL);
              objc_msgSend_bindFramebufferWithBindingOption_(v45, v120, 3);
              glBindTexture(0xDE1u, LODWORD(v167.m11));
              v123 = v87 + 1;
              if (v87 + 1 == v100)
              {
                v124 = 1;
              }

              else
              {
                v124 = v95;
              }

              if (v124 == 1)
              {
                objc_msgSend_addObject_(v86, v121, v88);

                v88 = 0;
              }

              if (objc_msgSend_count(v86, v121, v122) > 0xE || v123 == v100)
              {
                objc_msgSend_size(v45, v125, v126);
                v128 = v127;
                objc_msgSend_size(v45, v129, v130);
                glViewport(0, 0, v128, v131);
                if (v123 != v100)
                {
                  v134 = objc_opt_class();
                  objc_msgSend_p_clearFrameBuffers_(v134, v135, v86);
                  objc_msgSend_addObjectsFromArray_(v81, v136, v86);
                }

                objc_msgSend_removeAllObjects(v86, v132, v133);
              }

              ++v87;
            }

            glFlush();
            v140 = objc_msgSend_p_newCGImageFromGLWithWidth_height_(self, v137, v156, HIDWORD(v156));
            if (v162)
            {
              v176.origin.x = (x + (v152 << 10));
              v176.origin.y = v78;
              v176.size.width = v156;
              v176.size.height = SHIDWORD(v156);
              CGContextDrawImage(c, v176, v140);
            }

            else
            {
              v141 = objc_msgSend_colorWithAlphaComponent_(v153, v138, v139, 1.0);
              v142 = objc_opt_class();
              objc_msgSend_p_drawColor_intoContext_usingImageAsMask_withRect_(v142, v143, v141, c, v140, v77, v78, v156, SHIDWORD(v156));
            }

            CGImageRelease(v140);

            v76 = v161 + 1;
            v60 = 0x277CBE000;
          }

          while (v161 + 1 != v160);
        }

        ++v152;
      }

      while (v152 != v151);
    }

    CGContextRestoreGState(c);
  }

  objc_msgSend_unbindFramebufferAndBindGLFramebuffer_(v45, v75, 0xFFFFFFFFLL);

  v12 = v147;
  v11 = v148;
  v15 = v146;
LABEL_59:
  objc_autoreleasePoolPop(v15);
}

+ (void)p_drawColor:(id)a3 intoContext:(CGContext *)a4 usingImageAsMask:(CGImage *)a5 withRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v43 = *MEMORY[0x277D85DE8];
  v12 = a3;
  CGContextSaveGState(a4);
  v13 = CGImageGetWidth(a5);
  v14 = CGImageGetHeight(a5);
  v15 = TSDBitmapContextCreate(2, v13, v14);
  v16 = CGImageGetWidth(a5);
  v17 = CGImageGetHeight(a5);
  v44.size.width = v16;
  v44.size.height = v17;
  v44.origin.x = 0.0;
  v44.origin.y = 0.0;
  CGContextDrawImage(v15, v44, a5);
  Image = CGBitmapContextCreateImage(v15);
  CGContextRelease(v15);
  v42 = xmmword_2768256E0;
  v19 = CGImageGetWidth(Image);
  v20 = CGImageGetHeight(Image);
  BitsPerComponent = CGImageGetBitsPerComponent(Image);
  BitsPerPixel = CGImageGetBitsPerPixel(Image);
  BytesPerRow = CGImageGetBytesPerRow(Image);
  DataProvider = CGImageGetDataProvider(Image);
  ShouldInterpolate = CGImageGetShouldInterpolate(Image);
  v26 = CGImageMaskCreate(v19, v20, BitsPerComponent, BitsPerPixel, BytesPerRow, DataProvider, &v42, ShouldInterpolate);
  CGImageRelease(Image);
  IsPDFContext = TSDCGContextIsPDFContext(a4);
  if (IsPDFContext)
  {
    if (objc_msgSend_colorRGBSpace(v12, v27, v28, v42) == 1)
    {
      v30 = 35;
    }

    else
    {
      v30 = 3;
    }

    v31 = CGImageGetWidth(a5);
    v32 = CGImageGetHeight(a5);
    v33 = TSDBitmapContextCreate(v30, v31, v32);
    v34 = CGImageGetWidth(a5);
    v35 = CGImageGetHeight(a5);
    v36 = 0.0;
    v37 = 0.0;
  }

  else
  {
    v36 = x;
    v37 = y;
    v34 = width;
    v35 = height;
    v33 = a4;
  }

  v45.origin.x = v36;
  v45.origin.y = v37;
  v45.size.width = v34;
  v45.size.height = v35;
  CGContextClipToMask(v33, v45, v26);
  CGImageRelease(v26);
  v40 = objc_msgSend_CGColor(v12, v38, v39);
  CGContextSetFillColorWithColor(v33, v40);
  v46.origin.x = v36;
  v46.origin.y = v37;
  v46.size.width = v34;
  v46.size.height = v35;
  CGContextFillRect(v33, v46);
  if (IsPDFContext)
  {
    v41 = CGBitmapContextCreateImage(v33);
    CGContextRelease(v33);
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    CGContextDrawImage(a4, v47, v41);
    CGImageRelease(v41);
  }

  CGContextRestoreGState(a4);
}

- (BOOL)p_prefersRasterRenderingInContext:(CGContext *)a3
{
  if (!a3)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDBrushStroke p_prefersRasterRenderingInContext:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 2254, 0, "invalid nil value for '%{public}s'", "ctx");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  if (TSDCGContextPrefersRasterRendering(a3))
  {
    return 1;
  }

  v15 = objc_msgSend_strokeName(self, v12, v13);
  if (objc_msgSend_isEqualToString_(v15, v16, @"Pencil"))
  {
    isEqualToString = 1;
  }

  else
  {
    v19 = objc_msgSend_strokeName(self, v17, v18);
    isEqualToString = objc_msgSend_isEqualToString_(v19, v20, @"Crayon");
  }

  return isEqualToString;
}

- (BOOL)p_isDrawingRasterizedIntoPDFWithContext:(CGContext *)a3
{
  if (!a3)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDBrushStroke p_isDrawingRasterizedIntoPDFWithContext:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStroke.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 2259, 0, "invalid nil value for '%{public}s'", "ctx");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  IsPDFContext = TSDCGContextIsPDFContext(a3);
  if (IsPDFContext)
  {
    LOBYTE(IsPDFContext) = objc_msgSend_p_shouldDrawAsVectorInContext_(self, v13, a3) ^ 1;
  }

  return IsPDFContext;
}

- (BOOL)p_isFreehandDrawingStrokeWithFixedTileWidth
{
  v4 = objc_msgSend_strokeName(self, a2, v2);
  if (objc_msgSend_isEqualToString_(v4, v5, @"Pencil"))
  {
    isEqualToString = 1;
  }

  else
  {
    v9 = objc_msgSend_strokeName(self, v6, v7);
    isEqualToString = objc_msgSend_isEqualToString_(v9, v10, @"Crayon");
  }

  return isEqualToString;
}

- (int64_t)p_fastElementPercentage:(double *)a3 forOverallPercentage:(double)a4 onPath:(id)a5 withCachedCurrentElementPercentage:(id *)a6
{
  v10 = a5;
  objc_msgSend_length(v10, v11, v12);
  var2 = 0.0;
  if (a6->var0 == v10 && a6->var2 <= v14 * a4)
  {
    var1 = a6->var1;
    if (var1 <= 1)
    {
      var2 = 0.0;
    }

    else
    {
      var2 = a6->var2;
    }

    if (var1 <= 1)
    {
      v16 = 1;
      v17 = objc_msgSend_elementPercentage_forOverallPercentage_startingElementIndex_lengthToStartingElement_(v10, v13, a3, 1, a4, var2);
    }

    else
    {
      v16 = a6->var1;
      v17 = objc_msgSend_elementPercentage_forOverallPercentage_startingElementIndex_lengthToStartingElement_(v10, v13, a3, v16, a4, var2);
    }
  }

  else
  {
    v16 = 1;
    v17 = objc_msgSend_elementPercentage_forOverallPercentage_startingElementIndex_lengthToStartingElement_(v10, v13, a3, 1, a4, 0.0);
  }

  v19 = v17;
  if (v17 > v16)
  {
    do
    {
      objc_msgSend_lengthOfElement_(v10, v18, v16);
      var2 = var2 + v20;
      ++v16;
    }

    while (v19 != v16);
    objc_storeStrong(&a6->var0, a5);
    a6->var1 = v19;
    a6->var2 = var2;
  }

  return v19;
}

+ (unint64_t)p_glContextCount
{
  if (qword_280A4CA10 != -1)
  {
    sub_27680E554();
  }

  return qword_280A4CA08;
}

+ (id)p_glContextSemaphore
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276790840;
  block[3] = &unk_27A6CC4B8;
  block[4] = a1;
  if (qword_280A4CA20 != -1)
  {
    dispatch_once(&qword_280A4CA20, block);
  }

  v2 = qword_280A4CA18;

  return v2;
}

+ (id)p_glContextQueue
{
  if (qword_280A4CA30 != -1)
  {
    sub_27680E568();
  }

  v3 = qword_280A4CA28;

  return v3;
}

+ (id)p_glContextArray
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2767909A0;
  block[3] = &unk_27A6CC4B8;
  block[4] = a1;
  if (qword_280A4CA40 != -1)
  {
    dispatch_once(&qword_280A4CA40, block);
  }

  v2 = qword_280A4CA38;

  return v2;
}

- (id)p_glTextureForCurrentStrokeAndContext
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_27678CF08;
  v12 = sub_27678CF18;
  v13 = 0;
  if (qword_280A4CA50 != -1)
  {
    sub_27680E57C();
  }

  v4 = objc_msgSend_p_glContextQueue(TSDBrushStroke, a2, v2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276790BE0;
  v7[3] = &unk_27A6CD550;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

+ (void)p_drawFrameBuffers:(id)a3 intoFrameBuffer:(id)a4 withAlpha:(double)a5 usingDataBuffer:(id)a6
{
  v6 = a4;
  params = 0;
  glGetIntegerv(0x8069u, &params);
  objc_msgSend_size(v6, v7, v8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  v10 = v9;
  objc_msgSend_size(v6, v11, v12);
  TSDTransform3DMakeOrtho(&v14, 0.0, v10, 0.0, v13, -1.0, 1.0);
  glBindTexture(0xDE1u, params);
}

+ (void)p_clearFrameBuffers:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  *params = 0;
  v16 = 0;
  glGetIntegerv(0x8CAAu, &params[1]);
  glGetIntegerv(0x8CA6u, params);
  glGetIntegerv(0x8069u, &v16);
  glClearColor(0.0, 0.0, 0.0, 0.0);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v12, v18, 16);
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        objc_msgSend_bindFramebufferWithBindingOption_(v10, v6, 2, v12);
        glClear(0x4000u);
        objc_msgSend_unbindFramebufferAndBindGLFramebuffer_withBindingOption_(v10, v11, 0xFFFFFFFFLL, 2);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v12, v18, 16);
    }

    while (v7);
  }

  glBindFramebuffer(0x8CA8u, params[1]);
  glBindFramebuffer(0x8CA9u, params[0]);
  glBindTexture(0xDE1u, v16);
}

- (CGImage)p_newCGImageFromGLWithWidth:(int)a3 height:(int)a4
{
  v6 = 4 * a3;
  v7 = 4 * a3 * a4;
  v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  glReadPixels(0, 0, a3, a4, 0x1908u, 0x1401u, v8);
  v9 = CGDataProviderCreateWithData(0, v8, v7, sub_276791248);
  v10 = TSUDeviceRGBColorSpace();
  v11 = CGImageCreate(a3, a4, 8uLL, 0x20uLL, v6, v10, 1u, v9, 0, 0, kCGRenderingIntentDefault);
  CGDataProviderRelease(v9);
  return v11;
}

@end
@interface TSDBrushStroke
+ (BOOL)brushStrokeUsesMetal;
+ (id)p_metalShaderQueue;
+ (id)p_metalTextureQueue;
+ (void)p_drawColor:(id)a3 intoContext:(CGContext *)a4 usingImageAsMask:(CGImage *)a5 withRect:(CGRect)a6;
- (BOOL)needsToExtendJoinsForBoundsCalculation;
- (BOOL)p_isDrawingRasterizedIntoPDFWithContext:(CGContext *)a3;
- (BOOL)p_isFreehandDrawingStrokeWithFixedTileWidth;
- (BOOL)p_prefersRasterRenderingInContext:(CGContext *)a3;
- (BOOL)p_shouldDrawAsVectorInContext:(CGContext *)a3;
- (TSDBrushStroke)initWithArchive:(const StrokeArchive *)a3 unarchiver:(id)a4;
- (TSDBrushStroke)initWithName:(id)a3 color:(id)a4 width:(double)a5 cap:(int)a6 join:(int)a7 pattern:(id)a8 miterLimit:(double)a9;
- (double)horizontalMarginForSwatch;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)p_metalBrushShaderForPixelFormat:(unint64_t)a3 andDevice:(id)a4;
- (id)p_metalOpacityShaderForPixelFormat:(unint64_t)a3 andDevice:(id)a4;
- (id)p_metalTextureForCurrentStrokeAndDevice:(id)a3;
- (id)strokeLineEnd:(id)a3;
- (int)cap;
- (int64_t)p_fastElementPercentage:(double *)a3 forOverallPercentage:(double)a4 onPath:(id)a5 withCachedCurrentElementPercentage:(id *)a6;
- (void)i_setCap:(int)a3;
- (void)p_brushPath:(CGPath *)a3 inContext:(CGContext *)a4 orDirectly:(id)a5 parameterized:(BOOL)a6 drawRasterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8 withLayoutOptions:(id)a9;
- (void)p_brushPath:(id)a3 withScaling:(id)a4 inElementRange:(_NSRange)a5 intoPath:(id)a6 orIntoVector:(void *)a7 sectionIndex:(unint64_t *)a8 viewScale:(double)a9 withLayoutOptions:(id)a10 currentSubpathIndex:(unint64_t)a11 cachedCurrentElementPercentage:(id *)a12;
- (void)p_brushSection:(id)a3 sectionIndex:(unint64_t)a4 ontoPath:(id)a5 inElementRange:(_NSRange)a6 intoPath:(id)a7 orIntoVector:(void *)a8 viewScale:(double)a9 strokeTileLayout:(id)a10 cachedCurrentElementPercentage:(id *)a11;
- (void)p_finishMetalRenderInContext:(CGContext *)a3 orDirectly:(id)a4 pathVertexData:(void *)a5 parameterized:(BOOL)a6 shouldReverseDrawOrder:(BOOL)a7 withLayoutOptions:(id)a8;
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
  v5 = [(TSDSmartStroke *)self strokeName];
  v6 = [(TSDStroke *)self color];
  [(TSDStroke *)self width];
  v8 = v7;
  v9 = [(TSDBrushStroke *)self cap];
  v10 = [(TSDStroke *)self join];
  v11 = [(TSDStroke *)self pattern];
  [(TSDStroke *)self miterLimit];
  v13 = [(TSDBrushStroke *)v4 initWithName:v5 color:v6 width:v9 cap:v10 join:v11 pattern:v8 miterLimit:v12];

  return v13;
}

- (TSDBrushStroke)initWithName:(id)a3 color:(id)a4 width:(double)a5 cap:(int)a6 join:(int)a7 pattern:(id)a8 miterLimit:(double)a9
{
  v11 = *&a7;
  v12 = *&a6;
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v22.receiver = self;
  v22.super_class = TSDBrushStroke;
  v19 = [(TSDSmartStroke *)&v22 initWithName:v16 color:v17 width:v12 cap:v11 join:v18 pattern:a5 miterLimit:a9];
  v20 = v19;
  if (v19)
  {
    [(TSDBrushStroke *)v19 i_setCap:1];
  }

  return v20;
}

- (TSDBrushStroke)initWithArchive:(const StrokeArchive *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = TSDBrushStroke;
  v7 = [(TSDBrushStroke *)&v10 initWithArchive:a3 unarchiver:v6];
  v8 = v7;
  if (v7)
  {
    [(TSDBrushStroke *)v7 i_setCap:1];
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(TSDSmartStroke *)self strokeName];
  [(TSDStroke *)self width];
  v8 = [v3 stringWithFormat:@"<%@ %p strokeName='%@' width=%f>", v5, self, v6, v7];

  return v8;
}

+ (BOOL)brushStrokeUsesMetal
{
  v2 = +[TSDCapabilities currentCapabilities];
  v3 = [v2 isMetalCapable];

  return v3;
}

- (int)cap
{
  v2 = [(TSDStroke *)self i_cap];
  if (v2 != 1)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke cap]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:295 description:@"TSDBrushStroke should only ever have a round cap."];
  }

  return v2;
}

- (void)i_setCap:(int)a3
{
  v3.receiver = self;
  v3.super_class = TSDBrushStroke;
  [(TSDStroke *)&v3 i_setCap:1];
}

- (double)horizontalMarginForSwatch
{
  v8.receiver = self;
  v8.super_class = TSDBrushStroke;
  [(TSDStroke *)&v8 horizontalMarginForSwatch];
  v4 = v3;
  v5 = [(TSDSmartStroke *)self strokeName];
  v6 = [v5 isEqualToString:@"Pen"];

  result = 7.0;
  if (!v6)
  {
    return v4;
  }

  return result;
}

- (BOOL)needsToExtendJoinsForBoundsCalculation
{
  v3 = +[TSDBrushStrokeLoader brushStrokeLoaderForCurrentThread];
  v4 = [(TSDSmartStroke *)self strokeName];
  v5 = [v3 optionsForStroke:v4];
  v6 = [v5 objectForKeyedSubscript:@"split-at-sharp-angles"];
  v7 = [v6 BOOLValue];

  return v7;
}

- (id)strokeLineEnd:(id)a3
{
  v4 = a3;
  if ([v4 isNone])
  {
    v5 = v4;
  }

  else
  {
    v6 = [v4 identifier];
    v7 = [v6 rangeOfString:@":"];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [v6 substringFromIndex:v7 + v8];

      v6 = v9;
    }

    v10 = +[TSDBrushStrokeLoader brushStrokeLoaderForCurrentThread];
    v11 = [(TSDSmartStroke *)self strokeName];
    v5 = [v10 lineEnd:v6 forStroke:v11];
  }

  return v5;
}

- (void)paintLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 inContext:(CGContext *)a7 useFastDrawing:(BOOL)a8
{
  v8 = a8;
  y = a4.y;
  x = a4.x;
  v15 = a3;
  v16 = v15;
  if (v8)
  {
    v17 = [v15 identifier];
    v18 = [v17 rangeOfString:@":"];
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = [v17 substringFromIndex:v18 + v19];

      v21 = [TSDLineEnd lineEndWithIdentifier:v20];

      v17 = v20;
      v16 = v21;
    }

    v24.receiver = self;
    v24.super_class = TSDBrushStroke;
    [(TSDStroke *)&v24 paintLineEnd:v16 atPoint:a7 atAngle:1 withScale:x inContext:y useFastDrawing:a5, a6];
  }

  else
  {
    v22 = [(TSDBrushStroke *)self strokeLineEnd:v15];

    v23.receiver = self;
    v23.super_class = TSDBrushStroke;
    v16 = v22;
    [(TSDStroke *)&v23 paintLineEnd:v22 atPoint:a7 atAngle:0 withScale:x inContext:y useFastDrawing:a5, a6];
  }
}

- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v12 = a4;
  v15 = objc_alloc_init(TSDBrushStrokeLayoutOptions);
  [(TSDBrushStroke *)self paintPath:a3 wantsInteriorStroke:v12 inContext:a5 useFastDrawing:v10 parameterized:v9 shouldReverseDrawOrder:v8 withLayoutOptions:v15];
}

- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8 withLayoutOptions:(id)a9
{
  v9 = a8;
  v10 = a7;
  v11 = a6;
  v13 = a4;
  v16 = a9;
  if (v11)
  {
    v17.receiver = self;
    v17.super_class = TSDBrushStroke;
    [(TSDStroke *)&v17 paintPath:a3 wantsInteriorStroke:v13 inContext:a5 useFastDrawing:1 parameterized:v10 shouldReverseDrawOrder:v9];
  }

  else if ([(TSDStroke *)self shouldRender])
  {
    if ([(TSDBrushStroke *)self p_shouldDrawAsVectorInContext:a5])
    {
      [(TSDBrushStroke *)self p_brushPath:a3 inContext:a5 orDirectly:0 parameterized:v10 drawRasterized:0 shouldReverseDrawOrder:0 withLayoutOptions:v16];
    }

    else
    {
      [(TSDBrushStroke *)self p_rasterBrushPath:a3 inContext:a5 orDirectly:0 parameterized:v10 shouldReverseDrawOrder:v9 withLayoutOptions:v16];
    }
  }
}

- (void)p_brushPath:(CGPath *)a3 inContext:(CGContext *)a4 orDirectly:(id)a5 parameterized:(BOOL)a6 drawRasterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8 withLayoutOptions:(id)a9
{
  v9 = a7;
  v10 = a6;
  v98 = *MEMORY[0x277D85DE8];
  v88 = a5;
  v92 = a9;
  v83 = v10;
  v87 = v9;
  if (v10 && !v9)
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_brushPath:inContext:orDirectly:parameterized:drawRasterized:shouldReverseDrawOrder:withLayoutOptions:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
    [v12 handleFailureInFunction:v13 file:v14 lineNumber:394 description:@"Parameterized strokes must draw rasterized."];

    v9 = v87;
  }

  if (v92)
  {
    v15 = !v9;
  }

  else
  {
    v15 = 1;
  }

  if (v15 || ([v92 strokeEnd], v16 > 0.0))
  {
    v17 = [TSDBezierPath bezierPathWithCGPath:a3];
    [v17 length];
    if (v18 == 0.0)
    {
LABEL_76:

      goto LABEL_77;
    }

    if (v83)
    {
      v19 = [v17 bezierPathByFlatteningPathWithFlatness:0.1];

      if ([v19 isEffectivelyClosed] && (objc_msgSend(v19, "isClockwise") & 1) == 0)
      {
        v20 = [v19 bezierPathByReversingPath];

        v17 = v20;
      }

      else
      {
        v17 = v19;
      }
    }

    [(TSDStroke *)self width];
    [v17 setLineWidth:?];
    [(TSDStroke *)self miterLimit];
    [v17 setMiterLimit:?];
    if (v88)
    {
      [v88 transform];
      v21 = TSDTransformScale(&v96.a);
      [v88 contentsScale];
    }

    else
    {
      if (!a4)
      {
        v23 = 0.0;
        goto LABEL_18;
      }

      v85 = 3.0;
      if ([(TSDBrushStroke *)self p_isDrawingRasterizedIntoPDFWithContext:?])
      {
        goto LABEL_19;
      }

      CGContextGetCTM(&v96, a4);
      v21 = TSDTransformScale(&v96.a);
      v22 = TSDCGContextAssociatedScreenScale(a4);
    }

    v23 = v21 / v22;
LABEL_18:
    v85 = v23;
LABEL_19:
    if (v87)
    {
      operator new();
    }

    v24 = +[TSDBezierPath bezierPath];
    [v17 lineWidth];
    [v24 setLineWidth:?];
    [v24 setWindingRule:0];
    v95 = 0;
    [v17 length];
    v26 = v25;
    v27 = +[TSDBrushStrokeLoader brushStrokeLoaderForCurrentThread];
    v28 = [(TSDSmartStroke *)self strokeName];
    v29 = [v27 optionsForStroke:v28];
    v30 = [v29 objectForKeyedSubscript:@"split-at-sharp-angles"];
    v90 = [v30 BOOLValue];

    v31 = *MEMORY[0x277CBF348];
    v32 = *(MEMORY[0x277CBF348] + 8);
    v94 = *MEMORY[0x277CBF348];
    v33 = [v17 elementCount];
    v93[0] = 0;
    v93[1] = 1;
    v93[2] = 0;
    if (v33 >= 1)
    {
      v89 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0.0;
      v37 = 0.0;
      v82 = v26;
      while (1)
      {
        v38 = v37;
        v39 = [v17 elementAtIndex:v35 associatedPoints:&v96.c];
        [v17 lengthOfElement:v35];
        v41 = v40 / v26;
        v37 = v37 + v41;
        switch(v39)
        {
          case 3:
            *&v96.c = v94;
            break;
          case 2:
            if (v90)
            {
              v42 = v31;
              v84 = v38 + v41;
              v43 = v32;
              a = v96.a;
              v45 = TSDSubtractPoints(v96.c, v96.d, v96.a);
              v47 = v46;
              v48 = TSDPointLength(v45, v46);
              if (v48 >= 1.0)
              {
                v51 = TSDMultiplyPointScalar(v45, v47, 1.0 / v48);
              }

              else
              {
                v49 = TSDSubtractPoints(v96.tx, v96.ty, a);
                v51 = TSDNormalizePoint(v49, v50);
              }

              v64 = v51;
              v65 = v52;
              v66 = v43;
              v67 = v42;
              v26 = v82;
              v37 = v84;
              if (v35 < 2)
              {
                v38 = v36;
              }

              else
              {
                v68 = TSDDotPoints(v67, v66, v64, v65) >= 0.99 || (~v34 + v35) < 1;
                if (v68 || v38 - v36 <= 0.0)
                {
                  v38 = v36;
                }

                else
                {
                  [(TSDBrushStroke *)self p_brushPath:v17 withScaling:v34 inElementRange:v35 - v34 intoPath:v24 orIntoVector:0 sectionIndex:&v95 viewScale:v36 withLayoutOptions:v38 - v36 currentSubpathIndex:v85 cachedCurrentElementPercentage:v92, v89, v93];
                  v34 = v35 - 1;
                }
              }

              v69 = TSDSubtractPoints(*&v97, *(&v97 + 1), v96.tx);
              v31 = TSDNormalizePoint(v69, v70);
              v32 = v71;
              v36 = v38;
            }

            *&v96.a = v97;
            goto LABEL_59;
          case 0:
            if ((v35 - v34) >= 1)
            {
              if ([(TSDBrushStroke *)self p_isFreehandDrawingStrokeWithFixedTileWidth])
              {
                v95 = 0;
              }

              else
              {
                v59 = [v92 patternOffsetsBySubpath];
                v60 = v59 == 0;

                if (!v60)
                {
                  v61 = [MEMORY[0x277D6C290] currentHandler];
                  v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_brushPath:inContext:orDirectly:parameterized:drawRasterized:shouldReverseDrawOrder:withLayoutOptions:]"];
                  v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
                  [v61 handleFailureInFunction:v62 file:v63 lineNumber:475 description:{@"If there is a patternOffsetsBySubpath array, this should be a freehand drawing stroke."}];
                }
              }

              [(TSDBrushStroke *)self p_brushPath:v17 withScaling:v34 inElementRange:v35 - v34 intoPath:v24 orIntoVector:0 sectionIndex:&v95 viewScale:v36 withLayoutOptions:v37 - v36 currentSubpathIndex:v85 cachedCurrentElementPercentage:v92, v89++, v93];
              v36 = v37;
              v34 = v35;
            }

            *&v96.a = *&v96.c;
            v94 = *&v96.c;
            goto LABEL_59;
        }

        if (!v90)
        {
          break;
        }

        v53 = v31;
        TSUSubtractPoints();
        v31 = TSDNormalizePoint(v54, v55);
        v57 = v56;
        if (v35 < 2)
        {
          goto LABEL_42;
        }

        v58 = TSDDotPoints(v53, v32, v31, v56) >= 0.99 || (~v34 + v35) < 1;
        if (v58 || v38 - v36 <= 0.0)
        {
          goto LABEL_42;
        }

        [(TSDBrushStroke *)self p_brushPath:v17 withScaling:v34 inElementRange:v35 - v34 intoPath:v24 orIntoVector:0 sectionIndex:&v95 viewScale:v36 withLayoutOptions:v38 - v36 currentSubpathIndex:v85 cachedCurrentElementPercentage:v92, v89, v93];
        v34 = v35 - 1;
LABEL_43:
        *&v96.a = *&v96.c;
        v32 = v57;
        v36 = v38;
LABEL_59:
        if (v33 == ++v35)
        {
          goto LABEL_67;
        }
      }

      v57 = v32;
LABEL_42:
      v38 = v36;
      goto LABEL_43;
    }

    v33 = 0;
    v34 = 0;
    v89 = 0;
    v37 = 0.0;
    v36 = 0.0;
LABEL_67:
    if ((v33 + ~v34) >= 1)
    {
      if ([(TSDBrushStroke *)self p_isFreehandDrawingStrokeWithFixedTileWidth])
      {
        v95 = 0;
      }

      else
      {
        v72 = [v92 patternOffsetsBySubpath];
        v73 = v72 == 0;

        if (!v73)
        {
          v74 = [MEMORY[0x277D6C290] currentHandler];
          v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_brushPath:inContext:orDirectly:parameterized:drawRasterized:shouldReverseDrawOrder:withLayoutOptions:]"];
          v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
          [v74 handleFailureInFunction:v75 file:v76 lineNumber:549 description:{@"If there is a patternOffsetsBySubpath array, this should be a freehand drawing stroke."}];
        }
      }

      [(TSDBrushStroke *)self p_brushPath:v17 withScaling:v34 inElementRange:v33 + ~v34 intoPath:v24 orIntoVector:0 sectionIndex:&v95 viewScale:v36 withLayoutOptions:v37 - v36 currentSubpathIndex:v85 cachedCurrentElementPercentage:v92, v89, v93];
    }

    v77 = v24;
    if (!v24)
    {
      v78 = [MEMORY[0x277D6C290] currentHandler];
      v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_brushPath:inContext:orDirectly:parameterized:drawRasterized:shouldReverseDrawOrder:withLayoutOptions:]"];
      v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
      [v78 handleFailureInFunction:v79 file:v80 lineNumber:567 description:{@"invalid nil value for '%s'", "resultPath"}];

      v77 = 0;
    }

    CGContextAddPath(a4, [v77 CGPath]);
    v81 = [(TSDStroke *)self color];
    CGContextSetFillColorWithColor(a4, [v81 CGColor]);

    CGContextFillPath(a4);
    goto LABEL_76;
  }

LABEL_77:
}

- (void)p_brushPath:(id)a3 withScaling:(id)a4 inElementRange:(_NSRange)a5 intoPath:(id)a6 orIntoVector:(void *)a7 sectionIndex:(unint64_t *)a8 viewScale:(double)a9 withLayoutOptions:(id)a10 currentSubpathIndex:(unint64_t)a11 cachedCurrentElementPercentage:(id *)a12
{
  length = a5.length;
  location = a5.location;
  var1 = a4.var1;
  var0 = a4.var0;
  v101 = a3;
  v20 = a6;
  v99 = a10;
  if ([v101 elementCount] >= 2)
  {
    v21 = [v99 patternOffsetsBySubpath];
    if (v21)
    {
      v22 = [(TSDBrushStroke *)self p_isFreehandDrawingStrokeWithFixedTileWidth];

      if (!v22)
      {
        v23 = [MEMORY[0x277D6C290] currentHandler];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_brushPath:withScaling:inElementRange:intoPath:orIntoVector:sectionIndex:viewScale:withLayoutOptions:currentSubpathIndex:cachedCurrentElementPercentage:]"];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
        [v23 handleFailureInFunction:v24 file:v25 lineNumber:579 description:@"We only know how to adjust the pattern of constant width layout brush strokes."];
      }
    }

    [v101 lineWidth];
    v27 = v26;
    v28 = +[TSDBrushStrokeLoader brushStrokeLoaderForCurrentThread];
    v29 = [(TSDSmartStroke *)self strokeName];
    v98 = [v28 pathsForStroke:v29];

    v30 = +[TSDBrushStrokeLoader brushStrokeLoaderForCurrentThread];
    v31 = [(TSDSmartStroke *)self strokeName];
    v96 = [v30 boundsForStroke:v31];

    v97 = [v98 objectForKey:@"middle"];
    v32 = [v98 objectForKey:@"start"];
    if (v32)
    {
      v33 = [v98 objectForKey:@"end"];
      v34 = v33 != 0;
    }

    else
    {
      v34 = 0;
    }

    if (v27 >= 5.0)
    {
      v38 = @"middle";
    }

    else
    {
      v35 = [v98 objectForKey:@"small"];
      v36 = v35;
      if (v35)
      {
        v37 = v35;

        v34 = 0;
        v38 = @"small";
        v97 = v37;
      }

      else
      {
        v38 = @"middle";
      }
    }

    v92 = v27;
    [v101 length];
    v94 = v39;
    v40 = var0 + var1;
    if (v34)
    {
      v41 = [v96 objectForKeyedSubscript:@"start"];
      v42 = [v41 lastObject];
      [v42 CGRectValue];
      v44 = v43;
      v46 = v45;

      v47 = [v96 objectForKeyedSubscript:@"end"];
      v48 = [v47 lastObject];
      [v48 CGRectValue];
      v50 = v49;
      v52 = v51;
      v53 = v92 * (v44 / v46);
      v54 = var1 * v94 * 0.5;
      v55 = fmin(v53, v54);

      v56 = var0 + v55 / v94;
      [(TSDBrushStroke *)self p_brushSection:@"start" sectionIndex:0 ontoPath:v101 inElementRange:location intoPath:length orIntoVector:v20 viewScale:a9 strokeTileLayout:var0 cachedCurrentElementPercentage:v56, 0.0, 1.0, a7, a12];
      v57 = v40 - fmin(v92 * (v50 / v52), v54) / v94;
      [(TSDBrushStroke *)self p_brushSection:@"end" sectionIndex:0 ontoPath:v101 inElementRange:location intoPath:length orIntoVector:v20 viewScale:a9 strokeTileLayout:v57 cachedCurrentElementPercentage:v40, 0.0, 1.0, a7, a12];
      v40 = v57;
    }

    else
    {
      v56 = var0;
    }

    v58 = [v97 count];
    if (!v58 || v40 <= v56)
    {
      goto LABEL_54;
    }

    v59 = [v96 objectForKeyedSubscript:v38];
    v60 = [v59 lastObject];
    [v60 CGRectValue];
    v62 = v61;
    v64 = v63;

    v65 = v62 / v64;
    v66 = v40 - v56;
    v67 = v94 * (v40 - v56);
    v68 = v92 * v65;
    v69 = (v67 / (v92 * v65) + 1.0);
    if (v58 == 1)
    {
      v69 = 1;
    }

    v93 = v69;
    v70 = [v99 patternOffsetsBySubpath];

    if (!v70)
    {
      v76 = 0.0;
LABEL_30:
      if ([(TSDBrushStroke *)self p_isFreehandDrawingStrokeWithFixedTileWidth])
      {
        v79 = v66 * (v68 / v67);
        if (v76 > 0.0 && v76 > v79)
        {
          v80 = *a8;
          do
          {
            v76 = v76 - v79;
            v81 = (1664525 * v80 + 1013904223);
            if (v81 % v58 == v80 % v58)
            {
              v80 = v81 + 1;
            }

            else
            {
              v80 = (1664525 * v80 + 1013904223);
            }
          }

          while (v76 > 0.0 && v76 > v79);
          *a8 = v80;
        }
      }

      else
      {
        v79 = v66 / v93;
      }

      if (vabdd_f64(v56, v40) > 0.00000999999975)
      {
        do
        {
          v82 = [(TSDBrushStroke *)self p_isFreehandDrawingStrokeWithFixedTileWidth];
          v83 = fmin(v40, v79 + v56);
          v84 = 0.0;
          if (v82)
          {
            if (v76 > 0.0)
            {
              v85 = v76 / v79;
              v76 = 0.0;
              v84 = v85 + 0.0;
            }

            v86 = v79 * (1.0 - v84);
            v87 = a12;
            if (v83 - v56 > v86)
            {
              v83 = v83 - (v83 - v56 - v86);
            }
          }

          else
          {
            v87 = a12;
          }

          [(TSDBrushStroke *)self p_brushSection:v38 sectionIndex:*a8 % v58 ontoPath:v101 inElementRange:location intoPath:length orIntoVector:v20 viewScale:a9 strokeTileLayout:v56 cachedCurrentElementPercentage:v83, a7, v87];
          v88 = 1664525 * *a8 + 1013904223;
          if (v88 % v58 == *a8 % v58)
          {
            v89 = v88 + 1;
          }

          else
          {
            v89 = 1664525 * *a8 + 1013904223;
          }

          *a8 = v89;
          v56 = v83;
        }

        while (vabdd_f64(v83, v40) > 0.00000999999975);
      }

LABEL_54:

      goto LABEL_55;
    }

    v71 = [v99 patternOffsetsBySubpath];
    v72 = [v71 count];

    if (v72 <= a11)
    {
      v77 = [v99 patternOffsetsBySubpath];
      v78 = [v77 count];

      if (v78 != 1)
      {
        v91 = [MEMORY[0x277D6C290] currentHandler];
        v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_brushPath:withScaling:inElementRange:intoPath:orIntoVector:sectionIndex:viewScale:withLayoutOptions:currentSubpathIndex:cachedCurrentElementPercentage:]"];
        v95 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
        v73 = v91;
        v90 = [v99 patternOffsetsBySubpath];
        [v91 handleFailureInFunction:v74 file:v95 lineNumber:686 description:{@"Not enough pattern offsets for each subpath. Got %zi for index %zi", objc_msgSend(v90, "count"), a11}];

        v76 = 0.0;
        goto LABEL_29;
      }

      v73 = [v99 patternOffsetsBySubpath];
      v74 = [v73 objectAtIndexedSubscript:0];
      [v74 tsu_CGFloatValue];
    }

    else
    {
      v73 = [v99 patternOffsetsBySubpath];
      v74 = [v73 objectAtIndexedSubscript:a11];
      [v74 tsu_CGFloatValue];
    }

    v76 = v75 / v94;
LABEL_29:

    goto LABEL_30;
  }

LABEL_55:
}

- (void)p_brushSection:(id)a3 sectionIndex:(unint64_t)a4 ontoPath:(id)a5 inElementRange:(_NSRange)a6 intoPath:(id)a7 orIntoVector:(void *)a8 viewScale:(double)a9 strokeTileLayout:(id)a10 cachedCurrentElementPercentage:(id *)a11
{
  var3 = a10.var3;
  var2 = a10.var2;
  var1 = a10.var1;
  var0 = a10.var0;
  length = a6.length;
  location = a6.location;
  v38 = a3;
  v22 = a5;
  v23 = a7;
  v24 = v23;
  if (a8)
  {
    if (v23)
    {
      v25 = length;
      v26 = [MEMORY[0x277D6C290] currentHandler];
      v37 = v22;
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_brushSection:sectionIndex:ontoPath:inElementRange:intoPath:orIntoVector:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]"];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
      [v26 handleFailureInFunction:v27 file:v28 lineNumber:743 description:{@"expected nil value for '%s'", "resultPath"}];

      length = v25;
      v22 = v37;
    }

    [(TSDBrushStroke *)self p_rasterRenderSection:v38 sectionIndex:a4 ontoPath:v22 inElementRange:location into:length viewScale:a8 strokeTileLayout:a9 cachedCurrentElementPercentage:var0, var1, var2, var3, a11];
  }

  else
  {
    if (v23)
    {
      v29 = +[TSDBrushStrokeLoader brushStrokeLoaderForCurrentThread];
      v30 = [(TSDSmartStroke *)self strokeName];
      v31 = [v29 pathsForStroke:v30];

      v32 = [v31 objectForKeyedSubscript:v38];
      v33 = [v32 objectAtIndexedSubscript:a4];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v22 lineWidth];
        v35 = [v33 objectAtIndexedSubscript:v34 < 15.0];

        v33 = v35;
      }

      [v33 recursiveSubdivideOntoPath:v22 withScaling:location inElementRange:length into:{v24, var0, var1 - var0}];
    }

    else
    {
      v31 = [MEMORY[0x277D6C290] currentHandler];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_brushSection:sectionIndex:ontoPath:inElementRange:intoPath:orIntoVector:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]"];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
      [v31 handleFailureInFunction:v33 file:v36 lineNumber:755 description:@"resultPath and resultVector are both nil!"];
    }
  }
}

- (void)p_rasterBrushPath:(CGPath *)a3 inContext:(CGContext *)a4 orDirectly:(id)a5 parameterized:(BOOL)a6 shouldReverseDrawOrder:(BOOL)a7 withLayoutOptions:(id)a8
{
  v9 = a7;
  v10 = a6;
  v14 = a5;
  v15 = a8;
  if (v14)
  {
    [v14 transform];
  }

  else
  {
    CGContextGetCTM(&v19, a4);
  }

  v16 = sqrt(v19.b * v19.b + v19.a * v19.a);
  if (a4 && [(TSDBrushStroke *)self p_isDrawingRasterizedIntoPDFWithContext:a4])
  {
    v16 = 3.0;
  }

  if (v14 || v10 || ([(TSDStroke *)self width], v17 > 0.5 / v16))
  {
    [(TSDBrushStroke *)self p_brushPath:a3 inContext:a4 orDirectly:v14 parameterized:v10 drawRasterized:1 shouldReverseDrawOrder:v9 withLayoutOptions:v15];
  }

  else if (a4)
  {
    v18.receiver = self;
    v18.super_class = TSDBrushStroke;
    [(TSDStroke *)&v18 paintPath:a3 wantsInteriorStroke:0 inContext:a4 useFastDrawing:0 parameterized:0 shouldReverseDrawOrder:0];
  }
}

- (void)p_rasterRenderSection:(id)a3 sectionIndex:(unint64_t)a4 ontoPath:(id)a5 inElementRange:(_NSRange)a6 into:(void *)a7 viewScale:(double)a8 strokeTileLayout:(id)a9 cachedCurrentElementPercentage:(id *)a10
{
  length = a6.length;
  location = a6.location;
  var3 = a9.var3;
  var2 = a9.var2;
  var0 = a9.var0;
  var1 = a9.var1;
  v148 = *MEMORY[0x277D85DE8];
  v124 = a3;
  v14 = a5;
  v15 = location + length;
  while (location < [v14 elementCount])
  {
    [v14 lengthOfElement:location];
    if (v16 != 0.0)
    {
      break;
    }

    ++location;
  }

  while (v15 > location)
  {
    [v14 lengthOfElement:v15];
    if (v17 != 0.0)
    {
      break;
    }

    --v15;
  }

  if (v15 >= location)
  {
    v142 = 0.0;
    v143 = 0.0;
    v123 = v14;
    v133 = [(TSDBrushStroke *)self p_fastElementPercentage:&v143 forOverallPercentage:v14 onPath:a10 withCachedCurrentElementPercentage:var0];
    v18 = [(TSDBrushStroke *)self p_fastElementPercentage:&v142 forOverallPercentage:v14 onPath:a10 withCachedCurrentElementPercentage:var1];
    if (v133 < location)
    {
      v143 = 0.0;
      v133 = location;
    }

    if (v18 > v15)
    {
      v142 = 1.0;
      v18 = v15;
    }

    v132 = v18;
    if (v18 > v133)
    {
      if (v143 == 1.0 || fabs(v143 + -1.0) < 0.000000999999997)
      {
        v143 = 0.0;
        ++v133;
      }

      v19 = v142;
      if (v142 == 0.0)
      {
        v142 = 1.0;
        v132 = v18 - 1;
      }
    }

    v20 = +[TSDBezierPath bezierPath];
    [v20 appendBezierPath:v14 fromSegment:v133 t:v132 toSegment:0 t:v143 withoutMove:v142];
    CGAffineTransformMakeScale(&v147, a8, a8);
    [v20 transformUsingAffineTransform:&v147];
    v131 = [v20 bezierPathByFlatteningPathWithFlatness:0.1];

    CGAffineTransformMakeScale(&v147, 1.0 / a8, 1.0 / a8);
    [v131 transformUsingAffineTransform:&v147];
    [(TSDStroke *)self width];
    v21 = 0.5 / a8;
    if (v22 > 0.5 / a8)
    {
      [(TSDStroke *)self width];
      v21 = v23;
    }

    v129 = v21;
    __p = 0;
    v140 = 0;
    v141 = 0;
    v138 = *MEMORY[0x277CBF348];
    v24 = [v131 elementCount];
    v25 = v24;
    if (v24)
    {
      v26 = 0;
      v134 = v24 - 1;
      v27 = MEMORY[0x277D6C3C0];
      v28 = 0.000000999999997;
      while (1)
      {
        *&v147.a = *v27;
        *&v147.c = *&v147.a;
        *&v147.tx = *&v147.a;
        v29 = [v131 elementAtIndex:v26 associatedPoints:&v147];
        v30 = v29;
        v137 = *&v147.a;
        if (!v29)
        {
          break;
        }

        if (v29 != 1)
        {
          if (v29 == 3)
          {
            goto LABEL_28;
          }

          v31 = [MEMORY[0x277D6C290] currentHandler];
          v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_rasterRenderSection:sectionIndex:ontoPath:inElementRange:into:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]"];
          v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
          [v31 handleFailureInFunction:v32 file:v33 lineNumber:854 description:@"Path should be flat by now."];

          if (!v30)
          {
            break;
          }

          if (v30 == 3)
          {
LABEL_28:
            v137 = v138;
          }
        }

        v34 = v140;
        v35 = TSDDistanceSquared(*&v137, *(&v137 + 1), *(v140 - 2), *(v140 - 1)) * a8 * a8;
        if (v35 > v28 && v35 <= 1.0)
        {
          if (v26 == v134 || (v144 = *v27, v145 = v144, v146 = v144, [v131 elementAtIndex:v26 + 1 associatedPoints:&v144]) && (v34 = v140, TSUSubtractPoints(), v39 = TSDNormalizePoint(v37, v38), v40 = v28, v41 = var3, v43 = v42, TSUSubtractPoints(), v46 = TSDNormalizePoint(v44, v45), v48 = v47, v49 = v43, var3 = v41, v28 = v40, TSDDotPoints(v39, v49, v46, v48) < 0.99))
          {
LABEL_39:
            if ((v30 | 2) != 3)
            {
              v50 = [MEMORY[0x277D6C290] currentHandler];
              v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_rasterRenderSection:sectionIndex:ontoPath:inElementRange:into:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]"];
              v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
              [v50 handleFailureInFunction:v51 file:v52 lineNumber:897 description:@"Should only have line and close elements by now."];

              v34 = v140;
            }

            v53 = sqrt(v35) / 50.0;
            if (v53 <= 1.0)
            {
              v53 = 1.0;
            }

            v54 = v53;
            if (v53 >= 1)
            {
              v55 = *(v34 - 2);
              v56 = *(v34 - 1);
              TSUSubtractPoints();
              v58 = v57;
              v60 = v59;
              v61 = v54;
              v62 = 1;
              do
              {
                v63 = TSDMultiplyPointScalar(v58, v60, v62 / v61);
                *&v144 = TSDAddPoints(v55, v56, v63);
                *(&v144 + 1) = v64;
                std::vector<CGPoint>::push_back[abi:nn200100](&__p, &v144);
                ++v62;
                --v54;
              }

              while (v54);
            }
          }
        }

        else if (v35 > 1.0)
        {
          goto LABEL_39;
        }

LABEL_46:
        if (++v26 == v25)
        {
          goto LABEL_47;
        }
      }

      std::vector<CGPoint>::push_back[abi:nn200100](&__p, &v137);
      v138 = v137;
      goto LABEL_46;
    }

LABEL_47:
    v65 = (v140 - __p) >> 4;
    if (v65 >= 2)
    {
      v66 = +[TSDBrushStrokeLoader brushStrokeLoaderForCurrentThread];
      v67 = [(TSDSmartStroke *)self strokeName];
      v68 = [v66 textureIndexForStroke:v67];
      v69 = [v68 objectForKeyedSubscript:v124];
      v70 = [v69 objectAtIndexedSubscript:a4];
      [v70 unsignedIntegerValue];

      v71 = +[TSDBrushStrokeLoader brushStrokeLoaderForCurrentThread];
      v72 = [(TSDSmartStroke *)self strokeName];
      v73 = [v71 textureIndexForStroke:v72];
      v74 = [v73 objectForKeyedSubscript:@"section-count"];
      [v74 unsignedIntegerValue];

      v75 = log2(64.0) - 1;
      log2((v129 + v129) * a8);
      TSUClamp();
      v77 = (v75 - v76);
      exp2f(-v77);
      exp2f(-(v77 + 1.0));
      v78 = __p + 24;
      v79 = 0.0;
      v80 = v65 - 1;
      do
      {
        TSUDistance();
        v79 = v81 + v79;
        v78 += 16;
        --v80;
      }

      while (v80);
      v82 = v79;
      v83 = *MEMORY[0x277CBF3A0];
      v84 = *(MEMORY[0x277CBF3A0] + 8);
      v85 = *(MEMORY[0x277CBF3A0] + 16);
      v86 = *(MEMORY[0x277CBF3A0] + 24);
      v87 = +[TSDBrushStrokeLoader brushStrokeLoaderForCurrentThread];
      v88 = [(TSDSmartStroke *)self strokeName];
      v89 = [v87 pathsForStroke:v88];
      v90 = [v89 objectForKeyedSubscript:v124];
      v135 = [v90 objectAtIndexedSubscript:a4];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v135 bounds];
        v83 = v91;
        v84 = v92;
        v85 = v93;
        v86 = v94;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v95 = [v135 firstObject];
          [v95 bounds];
          v83 = v96;
          v84 = v97;
          v85 = v98;
          v86 = v99;
        }

        else
        {
          v95 = [MEMORY[0x277D6C290] currentHandler];
          v100 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_rasterRenderSection:sectionIndex:ontoPath:inElementRange:into:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]"];
          v101 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
        }
      }

      v149.origin.x = v83;
      v149.origin.y = v84;
      v149.size.width = v85;
      v149.size.height = v86;
      v102 = v82 / (var3 - var2);
      v103 = fmin(v83, 0.0);
      v104 = fmax(CGRectGetMaxX(v149), 1.0) + -1.0;
      if (var2 < 0.001)
      {
        v105 = __p;
        v106 = *__p;
        v107 = *(__p + 1);
        TSUSubtractPoints();
        v110 = TSDNormalizePoint(v108, v109);
        v112 = TSDMultiplyPointScalar(v110, v111, v102 * -v103);
        *v105 = TSDAddPoints(v106, v107, v112);
        *(v105 + 1) = v113;
      }

      if (var3 > 0.999)
      {
        v114 = (__p + 16 * v65 - 16);
        v115 = *v114;
        v116 = v114[1];
        TSUSubtractPoints();
        v119 = TSDNormalizePoint(v117, v118);
        v121 = TSDMultiplyPointScalar(v119, v120, v104 * v102);
        *v114 = TSDAddPoints(v115, v116, v121);
        *(v114 + 1) = v122;
      }

      v144 = 0uLL;
      *&v145 = 0;
      std::vector<EQKitTypes::Notation::Enum>::__vallocate[abi:nn200100](&v144, v65);
    }

    if (__p)
    {
      v140 = __p;
      operator delete(__p);
    }

    v14 = v123;
  }
}

- (void)p_finishMetalRenderInContext:(CGContext *)a3 orDirectly:(id)a4 pathVertexData:(void *)a5 parameterized:(BOOL)a6 shouldReverseDrawOrder:(BOOL)a7 withLayoutOptions:(id)a8
{
  v149 = a6;
  v189 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v148 = a8;
  context = objc_autoreleasePoolPush();
  v158 = a5;
  v155 = v10;
  if (*(a5 + 1) == *a5)
  {
    goto LABEL_70;
  }

  if (v10)
  {
    [v10 frame];
    TSURectWithSize();
    v12 = v11;
    v14 = v13;
    [v10 transform];
    m11 = transform.m11;
    m12 = transform.m12;
    v186 = *&transform.m13;
    v187 = *&transform.m21;
    v184 = *&transform.m13;
    v185 = *&transform.m21;
    if (v12 <= 0.0 || v14 <= 0.0)
    {
      goto LABEL_70;
    }

    v143 = [(TSDStroke *)self color];
LABEL_13:
    [(TSDStroke *)self width];
    v23 = v22;
    [v143 alphaComponent];
    v25 = sqrt(m12 * m12 + m11 * m11);
    v26 = 1.0 / v25;
    v27 = v23 * v25 * v24;
    if (v23 < v26)
    {
      v24 = v27;
    }

    if (v149)
    {
      v28 = 1.0;
    }

    else
    {
      v28 = v24;
    }

    if (v10)
    {
      v139 = 0;
      v131 = 0;
      x = *MEMORY[0x277CBF3A0];
      y = *(MEMORY[0x277CBF3A0] + 8);
      width = *(MEMORY[0x277CBF3A0] + 16);
      height = *(MEMORY[0x277CBF3A0] + 24);
    }

    else
    {
      CGContextSaveGState(a3);
      v179.m11 = m11;
      v179.m12 = m12;
      *&v179.m13 = v184;
      *&v179.m21 = v185;
      CGAffineTransformInvert(&transform, &v179);
      CGContextConcatCTM(a3, &transform);
      v31 = *(MEMORY[0x277CBF2C0] + 32);
      v184 = *(MEMORY[0x277CBF2C0] + 16);
      v185 = v31;
      ClipBoundingBox = CGContextGetClipBoundingBox(a3);
      v192 = CGRectIntegral(ClipBoundingBox);
      x = v192.origin.x;
      y = v192.origin.y;
      width = v192.size.width;
      height = v192.size.height;
      v131 = fmin(v192.size.width, 1024.0);
      v139 = fmin(v192.size.height, 1024.0);
    }

    v157 = TSDMetalDevicePreferringLowPower();
    if (v10)
    {
      v32 = [v10 metalDeviceOverride];
      v33 = v32 == 0;

      if (!v33)
      {
        v34 = [v155 metalDeviceOverride];

        v157 = v34;
      }
    }

    v35 = [MEMORY[0x277CBEB18] array];
    v172 = [MEMORY[0x277CBEB18] array];
    v36 = v158[1] - *v158;
    if (v36)
    {
      v37 = 0;
      v38 = v36 >> 5;
      do
      {
        v39 = 0;
        v40 = 32 * v37;
        v41 = v37;
        do
        {
          if (*(*v158 + v40) == 1)
          {
            if (v39)
            {
              memset(&transform, 0, 24);
              goto LABEL_35;
            }

            ++v41;
          }

          else
          {
            ++v39;
          }

          ++v37;
          v40 += 32;
        }

        while (v37 < v38);
        v37 = v41 + v39;
        memset(&transform, 0, 24);
        if (v39)
        {
LABEL_35:
          std::vector<TSDBrushVertexData>::__vallocate[abi:nn200100](&transform, (32 * v39) >> 5);
        }
      }

      while (v37 < v38);
    }

    if (!v155)
    {
      v47 = 70;
      v48 = v139;
      v49 = v131;
LABEL_51:
      v60 = +[TSDCapabilities currentCapabilities];
      [v60 maximumMetalTextureSizeForDevice:v157];
      v62 = v61;
      v64 = v63;

      v65 = v48;
      v66 = v49;
      if (!v149)
      {
        v67 = v49 + v49;
        v68 = v48 + v48;
        v69 = v67 > v62 || v68 > v64;
        v65 = v48;
        v66 = v49;
        if (!v69)
        {
          v66 = v67;
          v65 = v68;
        }
      }

      v167 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v47 width:v66 height:v65 mipmapped:0];
      [v167 setUsage:5];
      [v167 setStorageMode:2];
      v162 = [v157 newTextureWithDescriptor:v167];
      v171 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v47 width:v49 height:v48 mipmapped:0];
      [v171 setUsage:5];
      [v171 setStorageMode:0];
      if (v155)
      {
        v70 = [v155 surface];
        v163 = [v157 newTextureWithDescriptor:v171 iosurface:v70 plane:0];
      }

      else
      {
        v163 = [v157 newTextureWithDescriptor:v171];
      }

      v160 = [MEMORY[0x277CD6F50] renderPassDescriptor];
      v71 = [v160 colorAttachments];
      v135 = [v71 objectAtIndexedSubscript:0];

      [v135 setTexture:v162];
      [v135 setStoreAction:1];
      [v135 setLoadAction:2];
      [v135 setClearColor:{0.0, 0.0, 0.0, 0.0}];
      v72 = [(TSDBrushStroke *)self p_metalBrushShaderForPixelFormat:v47 andDevice:v157];
      v166 = [(TSDBrushStroke *)self p_metalOpacityShaderForPixelFormat:v47 andDevice:v157];
      v73 = [v163 width];
      v74 = [v163 height];
      v159 = [TSDGPUDataBuffer newDataBufferWithVertexRect:v157 textureRect:0.0 device:0.0, v73, v74, *MEMORY[0x277D6C3C8], *(MEMORY[0x277D6C3C8] + 8), *(MEMORY[0x277D6C3C8] + 16), *(MEMORY[0x277D6C3C8] + 24)];
      v181[0] = v149;
      Components = CGColorGetComponents([v143 CGColor]);
      *&v76 = vcvt_f32_f64(*Components);
      *&v77 = Components[1].f64[0];
      *(&v76 + 1) = __PAIR64__(1.0, v77);
      v182 = v76;
      [v148 strokeEnd];
      *&v78 = v78;
      v183 = LODWORD(v78);
      v161 = [(TSDBrushStroke *)self p_metalTextureForCurrentStrokeAndDevice:v157];
      v156 = TSDMetalCommandQueueForRenderingDrawables(v157);
      if (v155)
      {
        [v155 frame];
        v80 = v79;
        v82 = v81;
        v83 = *(MEMORY[0x277CD9DE8] + 16);
        *&v179.m11 = *MEMORY[0x277CD9DE8];
        *&v179.m13 = v83;
        v84 = *(MEMORY[0x277CD9DE8] + 48);
        *&v179.m21 = *(MEMORY[0x277CD9DE8] + 32);
        *&v179.m23 = v84;
        v85 = *(MEMORY[0x277CD9DE8] + 80);
        *&v179.m31 = *(MEMORY[0x277CD9DE8] + 64);
        *&v179.m33 = v85;
        v86 = *(MEMORY[0x277CD9DE8] + 112);
        *&v179.m41 = *(MEMORY[0x277CD9DE8] + 96);
        *&v179.m43 = v86;
        CATransform3DScale(&transform, &v179, 2.0 / v79, -2.0 / v81, 1.0);
        v179 = transform;
        CATransform3DTranslate(&transform, &v179, v80 * -0.5, v82 * -0.5, 0.0);
        v179 = transform;
        [v155 contentsScale];
        v88 = v87;
        [v155 contentsScale];
        CATransform3DScale(&transform, &v179, 1.0 / v88, 1.0 / v89, 1.0);
        v164 = *&transform.m13;
        v168 = *&transform.m11;
        v150 = *&transform.m23;
        v153 = *&transform.m21;
        *ca = *&transform.m31;
        v132 = *&transform.m43;
        v137 = *&transform.m41;
        v140 = *&transform.m33;
        m.m11 = m11;
        m.m12 = m12;
        *&m.m13 = v186;
        *&m.m21 = v187;
        CATransform3DMakeAffineTransform(&v179, &m);
        *&m.m11 = v168;
        *&m.m13 = v164;
        *&m.m21 = v153;
        *&m.m23 = v150;
        *&m.m31 = *ca;
        *&m.m33 = v140;
        *&m.m41 = v137;
        *&m.m43 = v132;
        CATransform3DConcat(&transform, &v179, &m);
        *cb = *&transform.m13;
        v133 = *&transform.m11;
        v165 = *&transform.m33;
        v138 = *&transform.m21;
        v141 = *&transform.m31;
        v169 = *&transform.m43;
        v151 = *&transform.m41;
        v154 = *&transform.m23;
        v90 = [v156 commandBuffer];
        v91 = [v90 renderCommandEncoderWithDescriptor:v160];
        transform.m12 = 0.0;
        transform.m11 = 0.0;
        transform.m13 = [v167 width];
        transform.m14 = [v167 height];
        *&transform.m21 = xmmword_26CA66250;
        [v91 setViewport:&transform];
        [v91 setFragmentTexture:v161 atIndex:0];
        *&v179.m11 = vcvt_hight_f32_f64(vcvt_f32_f64(v133), *cb);
        *&v179.m13 = vcvt_hight_f32_f64(vcvt_f32_f64(v138), v154);
        *&v179.m21 = vcvt_hight_f32_f64(vcvt_f32_f64(v141), v165);
        *&v179.m23 = vcvt_hight_f32_f64(vcvt_f32_f64(v151), v169);
        [v72 setPipelineStateWithEncoder:v91 vertexBytes:&v179 fragmentBytes:v181];
        v176 = 0u;
        v177 = 0u;
        v174 = 0u;
        v175 = 0u;
        v92 = v35;
        v93 = [v92 countByEnumeratingWithState:&v174 objects:v188 count:16];
        if (v93)
        {
          v94 = *v175;
          do
          {
            for (i = 0; i != v93; ++i)
            {
              if (*v175 != v94)
              {
                objc_enumerationMutation(v92);
              }

              [*(*(&v174 + 1) + 8 * i) drawWithEncoder:v91 atIndex:{objc_msgSend(v72, "bufferIndex")}];
            }

            v93 = [v92 countByEnumeratingWithState:&v174 objects:v188 count:16];
          }

          while (v93);
        }

        [v91 endEncoding];
        v96 = [MEMORY[0x277CD6F50] renderPassDescriptor];
        v97 = [v96 colorAttachments];
        v98 = [v97 objectAtIndexedSubscript:0];

        [v98 setTexture:v163];
        [v98 setStoreAction:1];
        [v98 setLoadAction:2];
        [v98 setClearColor:{0.0, 0.0, 0.0, 0.0}];
        v99 = [v90 renderCommandEncoderWithDescriptor:v96];
        transform.m12 = 0.0;
        transform.m11 = 0.0;
        transform.m13 = [v171 width];
        transform.m14 = [v171 height];
        *&transform.m21 = xmmword_26CA66250;
        [v99 setViewport:&transform];
        [v99 setFragmentTexture:v162 atIndex:0];
        TSDTransform3DMakeOrtho(&transform, 0.0, [v171 width], 0.0, objc_msgSend(v171, "height"), -1.0, 1.0);
        *&m.m11 = vcvt_hight_f32_f64(vcvt_f32_f64(*&transform.m11), *&transform.m13);
        *&m.m13 = vcvt_hight_f32_f64(vcvt_f32_f64(*&transform.m21), *&transform.m23);
        *&m.m21 = vcvt_hight_f32_f64(vcvt_f32_f64(*&transform.m31), *&transform.m33);
        *&m.m23 = vcvt_hight_f32_f64(vcvt_f32_f64(*&transform.m41), *&transform.m43);
        v100 = v28;
        *&transform.m11 = v100;
        [v166 setPipelineStateWithEncoder:v99 vertexBytes:&m fragmentBytes:&transform];
        [v159 drawWithEncoder:v99 atIndex:{objc_msgSend(v166, "bufferIndex")}];
        [v99 endEncoding];
        [v90 enqueue];
        [v90 commit];
        [v90 waitUntilCompleted];
      }

      else
      {
        v125 = vcvtpd_s64_f64(width * 0.0009765625);
        if (v125 >= 1)
        {
          v126 = 0;
          v101 = vcvtpd_s64_f64(height * 0.0009765625);
          v124 = vcvtd_n_f64_s64(-v131, 1uLL);
          v129 = v131;
          v102 = 2.0 / v131;
          v134 = vcvtd_n_f64_s64(-v139, 1uLL);
          v103 = v28;
          v128 = v139;
          v104 = 2.0 / v139;
          v130 = v101;
          do
          {
            if (v101 >= 1)
            {
              v142 = 0;
              v105 = (x + (v126 << 10));
              do
              {
                memset(&transform, 0, sizeof(transform));
                CATransform3DMakeScale(&transform, v102, v104, 1.0);
                m = transform;
                v106 = (y + (v142 << 10));
                CATransform3DTranslate(&v179, &m, v124 - v105, v134 - v106, 0.0);
                transform = v179;
                v173.m11 = m11;
                v173.m12 = m12;
                *&v173.m13 = v186;
                *&v173.m21 = v187;
                CATransform3DMakeAffineTransform(&m, &v173);
                v173 = transform;
                CATransform3DConcat(&v179, &m, &v173);
                v107 = 0;
                transform = v179;
                while (v107 < [v35 count])
                {
                  v170 = [v156 commandBuffer];
                  v108 = 0;
                  while (v107 < [v35 count] && v108 <= 8)
                  {
                    v109 = [v170 renderCommandEncoderWithDescriptor:v160];
                    v179.m12 = 0.0;
                    v179.m11 = 0.0;
                    v179.m13 = [v167 width];
                    v179.m14 = [v167 height];
                    *&v179.m21 = xmmword_26CA66250;
                    [v109 setViewport:&v179];
                    [v109 setFragmentTexture:v161 atIndex:0];
                    *&m.m11 = vcvt_hight_f32_f64(vcvt_f32_f64(*&transform.m11), *&transform.m13);
                    *&m.m13 = vcvt_hight_f32_f64(vcvt_f32_f64(*&transform.m21), *&transform.m23);
                    *&m.m21 = vcvt_hight_f32_f64(vcvt_f32_f64(*&transform.m31), *&transform.m33);
                    *&m.m23 = vcvt_hight_f32_f64(vcvt_f32_f64(*&transform.m41), *&transform.m43);
                    [v72 setPipelineStateWithEncoder:v109 vertexBytes:&m fragmentBytes:v181];
                    v108 += 2;
                    v110 = v107;
                    do
                    {
                      if (v110 >= [v35 count])
                      {
                        break;
                      }

                      v111 = [v35 objectAtIndexedSubscript:v110];
                      [v111 drawWithEncoder:v109 atIndex:{objc_msgSend(v72, "bufferIndex")}];
                      v112 = [v172 objectAtIndexedSubscript:v110];
                      v113 = [v112 BOOLValue];

                      ++v110;
                    }

                    while ((v113 & 1) == 0);
                    [v109 endEncoding];
                    v114 = [MEMORY[0x277CD6F50] renderPassDescriptor];
                    v115 = [v114 colorAttachments];
                    v116 = [v115 objectAtIndexedSubscript:0];

                    [v116 setTexture:v163];
                    [v116 setStoreAction:1];
                    if (v107)
                    {
                      [v116 setLoadAction:1];
                    }

                    else
                    {
                      [v116 setLoadAction:2];
                      [v116 setClearColor:{0.0, 0.0, 0.0, 0.0}];
                    }

                    v117 = [v170 renderCommandEncoderWithDescriptor:v114];
                    v179.m12 = 0.0;
                    v179.m11 = 0.0;
                    v179.m13 = [v171 width];
                    v179.m14 = [v171 height];
                    *&v179.m21 = xmmword_26CA66250;
                    [v117 setViewport:&v179];
                    [v117 setFragmentTexture:v162 atIndex:0];
                    TSDTransform3DMakeOrtho(&v179, 0.0, [v171 width], 0.0, objc_msgSend(v171, "height"), -1.0, 1.0);
                    *&v173.m11 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v179.m11), *&v179.m13);
                    *&v173.m13 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v179.m21), *&v179.m23);
                    *&v173.m21 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v179.m31), *&v179.m33);
                    *&v173.m23 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v179.m41), *&v179.m43);
                    *&v179.m11 = v103;
                    [v166 setPipelineStateWithEncoder:v117 vertexBytes:&v173 fragmentBytes:&v179];
                    [v159 drawWithEncoder:v117 atIndex:{objc_msgSend(v166, "bufferIndex")}];
                    [v117 endEncoding];

                    v107 = v110;
                  }

                  if (v107 > [v35 count])
                  {
                    v118 = [MEMORY[0x277D6C290] currentHandler];
                    v119 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_finishMetalRenderInContext:orDirectly:pathVertexData:parameterized:shouldReverseDrawOrder:withLayoutOptions:]"];
                    v120 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
                    [v118 handleFailureInFunction:v119 file:v120 lineNumber:1524 description:@"The buffer index should not be greater than the number of buffers."];
                  }

                  v121 = [v35 count];
                  [v170 enqueue];
                  [v170 commit];
                  if (v107 >= v121)
                  {
                    [v170 waitUntilCompleted];
                  }
                }

                CGImageFromTexture = TSDMetalCreateCGImageFromTexture(v163);
                if (v149)
                {
                  v193.origin.x = (x + (v126 << 10));
                  v193.origin.y = (y + (v142 << 10));
                  v193.size.height = v128;
                  v193.size.width = v129;
                  CGContextDrawImage(a3, v193, CGImageFromTexture);
                }

                else
                {
                  v123 = [v143 colorWithAlphaComponent:1.0];
                  [objc_opt_class() p_drawColor:v123 intoContext:a3 usingImageAsMask:CGImageFromTexture withRect:{v105, v106, v129, v128}];
                }

                CGImageRelease(CGImageFromTexture);
                ++v142;
              }

              while (v142 != v130);
            }

            ++v126;
            v101 = v130;
          }

          while (v126 != v125);
        }

        CGContextRestoreGState(a3);
      }

      goto LABEL_70;
    }

    v42 = [v155 surface];
    v43 = [v42 pixelFormat] == 1380411457;

    if (v43)
    {
      v44 = [v155 surface];
      v45 = [v44 bytesPerElement] == 8;

      if (v45)
      {
        v46 = 1;
        v47 = 115;
LABEL_44:
        if ([v155 destinationColorSpaceOverride])
        {
          v53 = [v155 destinationColorSpaceOverride];
          if (!v53)
          {
            v54 = MEMORY[0x277CBF430];
            if (!v46)
            {
              v54 = MEMORY[0x277CBF4B8];
            }

            v55 = CGColorSpaceCreateWithName(*v54);
            v53 = CFAutorelease(v55);
          }

          CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v53, kCGRenderingIntentDefault, [v143 CGColor], 0);
          v57 = [MEMORY[0x277D6C2A8] colorWithCGColor:CFAutorelease(CopyByMatchingToColorSpace)];

          v143 = v57;
        }

        v58 = [v155 surface];
        v49 = [v58 width];

        v59 = [v155 surface];
        v48 = [v59 height];

        goto LABEL_51;
      }

      v50 = [MEMORY[0x277D6C290] currentHandler];
      v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_finishMetalRenderInContext:orDirectly:pathVertexData:parameterized:shouldReverseDrawOrder:withLayoutOptions:]"];
      v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
      [v50 handleFailureInFunction:v51 file:v52 lineNumber:1298 description:@"Half float precision requires 8 bytes per element."];
    }

    v46 = 0;
    v47 = 70;
    goto LABEL_44;
  }

  v190 = CGContextGetClipBoundingBox(a3);
  v17 = v190.size.width;
  v18 = v190.size.height;
  CGContextGetCTM(&transform, a3);
  m11 = transform.m11;
  m12 = transform.m12;
  v186 = *&transform.m13;
  v187 = *&transform.m21;
  if ([(TSDBrushStroke *)self p_isDrawingRasterizedIntoPDFWithContext:a3])
  {
    v179.m11 = m11;
    v179.m12 = m12;
    *&v179.m13 = v186;
    *&v179.m21 = v187;
    CGAffineTransformScale(&transform, &v179, 3.0, 3.0);
    m11 = transform.m11;
    m12 = transform.m12;
    v186 = *&transform.m13;
    v187 = *&transform.m21;
  }

  v184 = v186;
  v185 = v187;
  if (v17 > 0.0 && v18 > 0.0)
  {
    if (a3)
    {
      v143 = [(TSDStroke *)self colorForCGContext:?];
    }

    else
    {
      v19 = [MEMORY[0x277D6C290] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_finishMetalRenderInContext:orDirectly:pathVertexData:parameterized:shouldReverseDrawOrder:withLayoutOptions:]"];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
      [v19 handleFailureInFunction:v20 file:v21 lineNumber:1162 description:@"Should have either a direct context or a CGContext."];

      v143 = 0;
      v10 = v155;
    }

    goto LABEL_13;
  }

LABEL_70:
  objc_autoreleasePoolPop(context);
}

void __128__TSDBrushStroke_p_finishMetalRenderInContext_orDirectly_pathVertexData_parameterized_shouldReverseDrawOrder_withLayoutOptions___block_invoke(uint64_t a1, __int128 *a2)
{
  v2 = a2[3];
  v47 = a2[2];
  v48 = v2;
  v49 = a2[4];
  v50 = *(a2 + 10);
  v3 = a2[1];
  v45 = *a2;
  v46 = v3;
  v4 = *(a2 + 136);
  v41 = *(a2 + 120);
  v42 = v4;
  v43 = *(a2 + 152);
  v44 = *(a2 + 21);
  v5 = *(a2 + 104);
  v39 = *(a2 + 88);
  v40 = v5;
  v6 = a2[14];
  v35 = a2[13];
  v36 = v6;
  v37 = a2[15];
  v38 = *(a2 + 32);
  v7 = a2[12];
  v33 = a2[11];
  v34 = v7;
  v8 = *(a2 + 312);
  v29 = *(a2 + 296);
  v30 = v8;
  v31 = *(a2 + 328);
  v32 = *(a2 + 43);
  v9 = *(a2 + 280);
  v27 = *(a2 + 264);
  v28 = v9;
  if (*(a1 + 32))
  {
    v11 = 0;
    do
    {
      v12 = *(a1 + 40) + v11;
      if ((*(a1 + 80) & 1) == 0)
      {
        v12 = *(a1 + 48) + ~v12;
      }

      v13 = (*(a1 + 56) + 32 * v12);
      v14 = v13[1];
      v15 = v13[2];
      v16 = v13[3];
      v17 = v13[4];
      v18 = v13[5];
      v19 = v13[6];
      v20 = v13[7];
      v23 = v47;
      v24 = v48;
      v25 = v49;
      v26 = v50;
      v21 = v45;
      v22 = v46;
      TSDGPUUpdateDataSetMetalPoint2DAtIndex(&v21, v11, v14, v15);
      v23 = v41;
      v24 = v42;
      v25 = v43;
      v26 = v44;
      v21 = v39;
      v22 = v40;
      TSDGPUUpdateDataSetMetalPoint2DAtIndex(&v21, v11, v16, v17);
      v23 = v35;
      v24 = v36;
      v25 = v37;
      v26 = v38;
      v21 = v33;
      v22 = v34;
      TSDGPUUpdateDataSetMetalPoint2DAtIndex(&v21, v11, v18, v19);
      v23 = v29;
      v24 = v30;
      v25 = v31;
      v26 = v32;
      v21 = v27;
      v22 = v28;
      TSDGPUUpdateDataSetMetalFloatAtIndex(&v21, v11++, v20);
    }

    while (v11 < *(a1 + 32));
  }
}

+ (void)p_drawColor:(id)a3 intoContext:(CGContext *)a4 usingImageAsMask:(CGImage *)a5 withRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v35 = *MEMORY[0x277D85DE8];
  v12 = a3;
  CGContextSaveGState(a4);
  v13 = CGImageGetWidth(a5);
  CGImageGetHeight(a5);
  v14 = TSDBitmapContextCreate(2, v13);
  v15 = CGImageGetWidth(a5);
  v16 = CGImageGetHeight(a5);
  v36.size.width = v15;
  v36.size.height = v16;
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  CGContextDrawImage(v14, v36, a5);
  Image = CGBitmapContextCreateImage(v14);
  CGContextRelease(v14);
  v34 = xmmword_26CA65140;
  v18 = CGImageGetWidth(Image);
  v19 = CGImageGetHeight(Image);
  BitsPerComponent = CGImageGetBitsPerComponent(Image);
  BitsPerPixel = CGImageGetBitsPerPixel(Image);
  BytesPerRow = CGImageGetBytesPerRow(Image);
  DataProvider = CGImageGetDataProvider(Image);
  ShouldInterpolate = CGImageGetShouldInterpolate(Image);
  v25 = CGImageMaskCreate(v18, v19, BitsPerComponent, BitsPerPixel, BytesPerRow, DataProvider, &v34, ShouldInterpolate);
  CGImageRelease(Image);
  IsPDFContext = TSDCGContextIsPDFContext(a4);
  if (IsPDFContext)
  {
    v27 = CGImageGetWidth(a5);
    CGImageGetHeight(a5);
    v28 = TSDBitmapContextCreate(3, v27);
    v29 = CGImageGetWidth(a5);
    v30 = CGImageGetHeight(a5);
    v31 = 0.0;
    v32 = 0.0;
  }

  else
  {
    v31 = x;
    v32 = y;
    v29 = width;
    v30 = height;
    v28 = a4;
  }

  v37.origin.x = v31;
  v37.origin.y = v32;
  v37.size.width = v29;
  v37.size.height = v30;
  CGContextClipToMask(v28, v37, v25);
  CGImageRelease(v25);
  CGContextSetFillColorWithColor(v28, [v12 CGColor]);
  v38.origin.x = v31;
  v38.origin.y = v32;
  v38.size.width = v29;
  v38.size.height = v30;
  CGContextFillRect(v28, v38);
  if (IsPDFContext)
  {
    v33 = CGBitmapContextCreateImage(v28);
    CGContextRelease(v28);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    CGContextDrawImage(a4, v39, v33);
    CGImageRelease(v33);
  }

  CGContextRestoreGState(a4);
}

- (BOOL)p_shouldDrawAsVectorInContext:(CGContext *)a3
{
  if (a3)
  {
    IsPDFContext = TSDCGContextIsPDFContext(a3);
    if (IsPDFContext)
    {
      LOBYTE(IsPDFContext) = ![(TSDBrushStroke *)self p_prefersRasterRenderingInContext:a3];
    }
  }

  else
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_shouldDrawAsVectorInContext:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:1638 description:{@"invalid nil value for '%s'", "ctx"}];

    LOBYTE(IsPDFContext) = 0;
  }

  return IsPDFContext;
}

- (BOOL)p_prefersRasterRenderingInContext:(CGContext *)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_prefersRasterRenderingInContext:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:1647 description:{@"invalid nil value for '%s'", "ctx"}];
  }

  if (TSDCGContextPrefersRasterRendering(a3))
  {
    return 1;
  }

  v9 = [(TSDSmartStroke *)self strokeName];
  if ([v9 isEqualToString:@"Pencil"])
  {
    v8 = 1;
  }

  else
  {
    v10 = [(TSDSmartStroke *)self strokeName];
    v8 = [v10 isEqualToString:@"Crayon"];
  }

  return v8;
}

- (BOOL)p_isDrawingRasterizedIntoPDFWithContext:(CGContext *)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_isDrawingRasterizedIntoPDFWithContext:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:1652 description:{@"invalid nil value for '%s'", "ctx"}];
  }

  IsPDFContext = TSDCGContextIsPDFContext(a3);
  if (IsPDFContext)
  {
    LOBYTE(IsPDFContext) = ![(TSDBrushStroke *)self p_shouldDrawAsVectorInContext:a3];
  }

  return IsPDFContext;
}

- (BOOL)p_isFreehandDrawingStrokeWithFixedTileWidth
{
  v3 = [(TSDSmartStroke *)self strokeName];
  if ([v3 isEqualToString:@"Pencil"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(TSDSmartStroke *)self strokeName];
    v4 = [v5 isEqualToString:@"Crayon"];
  }

  return v4;
}

- (int64_t)p_fastElementPercentage:(double *)a3 forOverallPercentage:(double)a4 onPath:(id)a5 withCachedCurrentElementPercentage:(id *)a6
{
  v10 = a5;
  [v10 length];
  var2 = 0.0;
  if (a6->var0 == v10 && a6->var2 <= v11 * a4)
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
      v13 = 1;
    }

    else
    {
      v13 = a6->var1;
    }
  }

  else
  {
    v13 = 1;
  }

  v14 = [v10 elementPercentage:a3 forOverallPercentage:v13 startingElementIndex:a4 lengthToStartingElement:var2];
  if (v14 > v13)
  {
    do
    {
      [v10 lengthOfElement:v13];
      var2 = var2 + v15;
      ++v13;
    }

    while (v14 != v13);
    objc_storeStrong(&a6->var0, a5);
    a6->var1 = v14;
    a6->var2 = var2;
  }

  return v14;
}

+ (id)p_metalTextureQueue
{
  if (+[TSDBrushStroke p_metalTextureQueue]::onceToken != -1)
  {
    +[TSDBrushStroke p_metalTextureQueue];
  }

  v3 = +[TSDBrushStroke p_metalTextureQueue]::sMetalTextureQueue;

  return v3;
}

uint64_t __37__TSDBrushStroke_p_metalTextureQueue__block_invoke()
{
  +[TSDBrushStroke p_metalTextureQueue]::sMetalTextureQueue = dispatch_queue_create("com.apple.iwork.TSDBrushStrokeMetalTextureQueue", 0);

  return MEMORY[0x2821F96F8]();
}

+ (id)p_metalShaderQueue
{
  if (+[TSDBrushStroke p_metalShaderQueue]::onceToken != -1)
  {
    +[TSDBrushStroke p_metalShaderQueue];
  }

  v3 = +[TSDBrushStroke p_metalShaderQueue]::sMetalShaderQueue;

  return v3;
}

uint64_t __36__TSDBrushStroke_p_metalShaderQueue__block_invoke()
{
  +[TSDBrushStroke p_metalShaderQueue]::sMetalShaderQueue = dispatch_queue_create("com.apple.iwork.TSDBrushStrokeMetalShaderQueue", 0);

  return MEMORY[0x2821F96F8]();
}

- (id)p_metalTextureForCurrentStrokeAndDevice:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__15;
  v17 = __Block_byref_object_dispose__15;
  v18 = 0;
  if ([TSDBrushStroke p_metalTextureForCurrentStrokeAndDevice:]::onceToken != -1)
  {
    [TSDBrushStroke p_metalTextureForCurrentStrokeAndDevice:];
  }

  v5 = +[TSDBrushStroke p_metalTextureQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__TSDBrushStroke_p_metalTextureForCurrentStrokeAndDevice___block_invoke_2;
  block[3] = &unk_279D49040;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

uint64_t __58__TSDBrushStroke_p_metalTextureForCurrentStrokeAndDevice___block_invoke()
{
  -[TSDBrushStroke p_metalTextureForCurrentStrokeAndDevice:]::sTexturesForDevicesAndStrokes = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:16];

  return MEMORY[0x2821F96F8]();
}

void __58__TSDBrushStroke_p_metalTextureForCurrentStrokeAndDevice___block_invoke_2(uint64_t a1)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v2 = [-[TSDBrushStroke p_metalTextureForCurrentStrokeAndDevice:]::sTexturesForDevicesAndStrokes objectForKeyedSubscript:*(a1 + 32)];
  if (!v2)
  {
    v2 = [MEMORY[0x277CBEB38] dictionary];
    [-[TSDBrushStroke p_metalTextureForCurrentStrokeAndDevice:]::sTexturesForDevicesAndStrokes setObject:? forKeyedSubscript:?];
  }

  v3 = [*(a1 + 40) strokeName];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = +[TSDBrushStrokeLoader brushStrokeLoaderForCurrentThread];
    v8 = [*(a1 + 40) strokeName];
    v9 = [v7 imageForStroke:v8];

    v10 = [objc_alloc(MEMORY[0x277CD71F0]) initWithDevice:*(a1 + 32)];
    v11 = [v9 CGImage];
    v12 = *MEMORY[0x277CD71D0];
    v13 = *MEMORY[0x277CD71B0];
    v24[0] = *MEMORY[0x277CD71A8];
    v24[1] = v13;
    v25[0] = v12;
    v25[1] = MEMORY[0x277CBEC28];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v23 = 0;
    v15 = [v10 newTextureWithCGImage:v11 options:v14 error:&v23];
    v16 = v23;
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v15;

    v19 = *(*(*(a1 + 48) + 8) + 40);
    if (v19)
    {
      v20 = [*(a1 + 40) strokeName];
      [v2 setObject:v19 forKeyedSubscript:v20];
    }

    else
    {
      v20 = [MEMORY[0x277D6C290] currentHandler];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_metalTextureForCurrentStrokeAndDevice:]_block_invoke_2"];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
      [v20 handleFailureInFunction:v21 file:v22 lineNumber:1735 description:{@"Unable to load brush texture with error %@", v16}];
    }
  }
}

- (id)p_metalBrushShaderForPixelFormat:(unint64_t)a3 andDevice:(id)a4
{
  v5 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__15;
  v18 = __Block_byref_object_dispose__15;
  v19 = 0;
  if ([TSDBrushStroke p_metalBrushShaderForPixelFormat:andDevice:]::onceToken != -1)
  {
    [TSDBrushStroke p_metalBrushShaderForPixelFormat:andDevice:];
  }

  v6 = +[TSDBrushStroke p_metalShaderQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__TSDBrushStroke_p_metalBrushShaderForPixelFormat_andDevice___block_invoke_2;
  block[3] = &unk_279D49068;
  v11 = v5;
  v12 = &v14;
  v13 = a3;
  v7 = v5;
  dispatch_sync(v6, block);

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

uint64_t __61__TSDBrushStroke_p_metalBrushShaderForPixelFormat_andDevice___block_invoke()
{
  -[TSDBrushStroke p_metalBrushShaderForPixelFormat:andDevice:]::sTexturesForDevicesAndPixelFormats = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:16];

  return MEMORY[0x2821F96F8]();
}

void __61__TSDBrushStroke_p_metalBrushShaderForPixelFormat_andDevice___block_invoke_2(void *a1)
{
  v12 = [-[TSDBrushStroke p_metalBrushShaderForPixelFormat:andDevice:]::sTexturesForDevicesAndPixelFormats objectForKeyedSubscript:a1[4]];
  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB38] dictionary];
    [-[TSDBrushStroke p_metalBrushShaderForPixelFormat:andDevice:]::sTexturesForDevicesAndPixelFormats setObject:? forKeyedSubscript:?];
  }

  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
  v3 = [v12 objectForKeyedSubscript:v2];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(a1[5] + 8) + 40))
  {
    v6 = objc_alloc_init(MEMORY[0x277CD6F68]);
    [v6 setPixelFormat:a1[6]];
    [v6 setBlendingEnabled:1];
    [v6 setDestinationAlphaBlendFactor:5];
    [v6 setDestinationRGBBlendFactor:5];
    v7 = [[TSDMetalShader alloc] initDefaultShaderWithVertexShader:@"brushStrokeVertexShader" fragmentShader:@"brushStrokeFragmentShader" device:a1[4] colorAttachment:v6];
    v8 = *(a1[5] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(*(a1[5] + 8) + 40);
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
    [v12 setObject:v10 forKeyedSubscript:v11];
  }
}

- (id)p_metalOpacityShaderForPixelFormat:(unint64_t)a3 andDevice:(id)a4
{
  v5 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__15;
  v18 = __Block_byref_object_dispose__15;
  v19 = 0;
  if ([TSDBrushStroke p_metalOpacityShaderForPixelFormat:andDevice:]::onceToken != -1)
  {
    [TSDBrushStroke p_metalOpacityShaderForPixelFormat:andDevice:];
  }

  v6 = +[TSDBrushStroke p_metalShaderQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__TSDBrushStroke_p_metalOpacityShaderForPixelFormat_andDevice___block_invoke_2;
  block[3] = &unk_279D49068;
  v11 = v5;
  v12 = &v14;
  v13 = a3;
  v7 = v5;
  dispatch_sync(v6, block);

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

uint64_t __63__TSDBrushStroke_p_metalOpacityShaderForPixelFormat_andDevice___block_invoke()
{
  -[TSDBrushStroke p_metalOpacityShaderForPixelFormat:andDevice:]::sTexturesForDevicesAndPixelFormats = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:16];

  return MEMORY[0x2821F96F8]();
}

void __63__TSDBrushStroke_p_metalOpacityShaderForPixelFormat_andDevice___block_invoke_2(void *a1)
{
  v12 = [-[TSDBrushStroke p_metalOpacityShaderForPixelFormat:andDevice:]::sTexturesForDevicesAndPixelFormats objectForKeyedSubscript:a1[4]];
  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB38] dictionary];
    [-[TSDBrushStroke p_metalOpacityShaderForPixelFormat:andDevice:]::sTexturesForDevicesAndPixelFormats setObject:? forKeyedSubscript:?];
  }

  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
  v3 = [v12 objectForKeyedSubscript:v2];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(a1[5] + 8) + 40))
  {
    v6 = objc_alloc_init(MEMORY[0x277CD6F68]);
    [v6 setPixelFormat:a1[6]];
    [v6 setBlendingEnabled:1];
    [v6 setDestinationAlphaBlendFactor:5];
    [v6 setDestinationRGBBlendFactor:5];
    v7 = [[TSDMetalShader alloc] initDefaultTextureAndOpacityShaderWithDevice:a1[4] colorAttachment:v6];
    v8 = *(a1[5] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(*(a1[5] + 8) + 40);
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
    [v12 setObject:v10 forKeyedSubscript:v11];
  }
}

@end
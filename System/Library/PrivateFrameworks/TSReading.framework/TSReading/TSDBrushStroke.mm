@interface TSDBrushStroke
+ (BOOL)brushStrokeUsesMetal;
+ (id)p_metalShaderQueue;
+ (id)p_metalTextureQueue;
+ (void)p_drawColor:(id)color intoContext:(CGContext *)context usingImageAsMask:(CGImage *)mask withRect:(CGRect)rect;
- (BOOL)needsToExtendJoinsForBoundsCalculation;
- (BOOL)p_isDrawingRasterizedIntoPDFWithContext:(CGContext *)context;
- (BOOL)p_isFreehandDrawingStrokeWithFixedTileWidth;
- (BOOL)p_prefersRasterRenderingInContext:(CGContext *)context;
- (BOOL)p_shouldDrawAsVectorInContext:(CGContext *)context;
- (TSDBrushStroke)initWithArchive:(const StrokeArchive *)archive unarchiver:(id)unarchiver;
- (TSDBrushStroke)initWithName:(id)name color:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern miterLimit:(double)limit;
- (double)horizontalMarginForSwatch;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)p_metalBrushShaderForPixelFormat:(unint64_t)format andDevice:(id)device;
- (id)p_metalOpacityShaderForPixelFormat:(unint64_t)format andDevice:(id)device;
- (id)p_metalTextureForCurrentStrokeAndDevice:(id)device;
- (id)strokeLineEnd:(id)end;
- (int)cap;
- (int64_t)p_fastElementPercentage:(double *)percentage forOverallPercentage:(double)overallPercentage onPath:(id)path withCachedCurrentElementPercentage:(id *)elementPercentage;
- (void)i_setCap:(int)cap;
- (void)p_brushPath:(CGPath *)path inContext:(CGContext *)context orDirectly:(id)directly parameterized:(BOOL)parameterized drawRasterized:(BOOL)rasterized shouldReverseDrawOrder:(BOOL)order withLayoutOptions:(id)options;
- (void)p_brushPath:(id)path withScaling:(id)scaling inElementRange:(_NSRange)range intoPath:(id)intoPath orIntoVector:(void *)vector sectionIndex:(unint64_t *)index viewScale:(double)scale withLayoutOptions:(id)self0 currentSubpathIndex:(unint64_t)self1 cachedCurrentElementPercentage:(id *)self2;
- (void)p_brushSection:(id)section sectionIndex:(unint64_t)index ontoPath:(id)path inElementRange:(_NSRange)range intoPath:(id)intoPath orIntoVector:(void *)vector viewScale:(double)scale strokeTileLayout:(id)self0 cachedCurrentElementPercentage:(id *)self1;
- (void)p_finishMetalRenderInContext:(CGContext *)context orDirectly:(id)directly pathVertexData:(void *)data parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order withLayoutOptions:(id)options;
- (void)p_rasterBrushPath:(CGPath *)path inContext:(CGContext *)context orDirectly:(id)directly parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order withLayoutOptions:(id)options;
- (void)p_rasterRenderSection:(id)section sectionIndex:(unint64_t)index ontoPath:(id)path inElementRange:(_NSRange)range into:(void *)into viewScale:(double)scale strokeTileLayout:(id)layout cachedCurrentElementPercentage:(id *)self0;
- (void)paintLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale inContext:(CGContext *)context useFastDrawing:(BOOL)drawing;
- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order;
- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order withLayoutOptions:(id)options;
@end

@implementation TSDBrushStroke

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSDMutableBrushStroke alloc];
  strokeName = [(TSDSmartStroke *)self strokeName];
  color = [(TSDStroke *)self color];
  [(TSDStroke *)self width];
  v8 = v7;
  v9 = [(TSDBrushStroke *)self cap];
  join = [(TSDStroke *)self join];
  pattern = [(TSDStroke *)self pattern];
  [(TSDStroke *)self miterLimit];
  v13 = [(TSDBrushStroke *)v4 initWithName:strokeName color:color width:v9 cap:join join:pattern pattern:v8 miterLimit:v12];

  return v13;
}

- (TSDBrushStroke)initWithName:(id)name color:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern miterLimit:(double)limit
{
  v11 = *&join;
  v12 = *&cap;
  nameCopy = name;
  colorCopy = color;
  patternCopy = pattern;
  v22.receiver = self;
  v22.super_class = TSDBrushStroke;
  v19 = [(TSDSmartStroke *)&v22 initWithName:nameCopy color:colorCopy width:v12 cap:v11 join:patternCopy pattern:width miterLimit:limit];
  v20 = v19;
  if (v19)
  {
    [(TSDBrushStroke *)v19 i_setCap:1];
  }

  return v20;
}

- (TSDBrushStroke)initWithArchive:(const StrokeArchive *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v10.receiver = self;
  v10.super_class = TSDBrushStroke;
  v7 = [(TSDBrushStroke *)&v10 initWithArchive:archive unarchiver:unarchiverCopy];
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
  strokeName = [(TSDSmartStroke *)self strokeName];
  [(TSDStroke *)self width];
  v8 = [v3 stringWithFormat:@"<%@ %p strokeName='%@' width=%f>", v5, self, strokeName, v7];

  return v8;
}

+ (BOOL)brushStrokeUsesMetal
{
  v2 = +[TSDCapabilities currentCapabilities];
  isMetalCapable = [v2 isMetalCapable];

  return isMetalCapable;
}

- (int)cap
{
  i_cap = [(TSDStroke *)self i_cap];
  if (i_cap != 1)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke cap]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
    [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:295 description:@"TSDBrushStroke should only ever have a round cap."];
  }

  return i_cap;
}

- (void)i_setCap:(int)cap
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
  strokeName = [(TSDSmartStroke *)self strokeName];
  v6 = [strokeName isEqualToString:@"Pen"];

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
  strokeName = [(TSDSmartStroke *)self strokeName];
  v5 = [v3 optionsForStroke:strokeName];
  v6 = [v5 objectForKeyedSubscript:@"split-at-sharp-angles"];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (id)strokeLineEnd:(id)end
{
  endCopy = end;
  if ([endCopy isNone])
  {
    v5 = endCopy;
  }

  else
  {
    identifier = [endCopy identifier];
    v7 = [identifier rangeOfString:@":"];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [identifier substringFromIndex:v7 + v8];

      identifier = v9;
    }

    v10 = +[TSDBrushStrokeLoader brushStrokeLoaderForCurrentThread];
    strokeName = [(TSDSmartStroke *)self strokeName];
    v5 = [v10 lineEnd:identifier forStroke:strokeName];
  }

  return v5;
}

- (void)paintLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale inContext:(CGContext *)context useFastDrawing:(BOOL)drawing
{
  drawingCopy = drawing;
  y = point.y;
  x = point.x;
  endCopy = end;
  v16 = endCopy;
  if (drawingCopy)
  {
    identifier = [endCopy identifier];
    v18 = [identifier rangeOfString:@":"];
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = [identifier substringFromIndex:v18 + v19];

      v21 = [TSDLineEnd lineEndWithIdentifier:v20];

      identifier = v20;
      v16 = v21;
    }

    v24.receiver = self;
    v24.super_class = TSDBrushStroke;
    [(TSDStroke *)&v24 paintLineEnd:v16 atPoint:context atAngle:1 withScale:x inContext:y useFastDrawing:angle, scale];
  }

  else
  {
    v22 = [(TSDBrushStroke *)self strokeLineEnd:endCopy];

    v23.receiver = self;
    v23.super_class = TSDBrushStroke;
    v16 = v22;
    [(TSDStroke *)&v23 paintLineEnd:v22 atPoint:context atAngle:0 withScale:x inContext:y useFastDrawing:angle, scale];
  }
}

- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order
{
  orderCopy = order;
  parameterizedCopy = parameterized;
  drawingCopy = drawing;
  strokeCopy = stroke;
  v15 = objc_alloc_init(TSDBrushStrokeLayoutOptions);
  [(TSDBrushStroke *)self paintPath:path wantsInteriorStroke:strokeCopy inContext:context useFastDrawing:drawingCopy parameterized:parameterizedCopy shouldReverseDrawOrder:orderCopy withLayoutOptions:v15];
}

- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order withLayoutOptions:(id)options
{
  orderCopy = order;
  parameterizedCopy = parameterized;
  drawingCopy = drawing;
  strokeCopy = stroke;
  optionsCopy = options;
  if (drawingCopy)
  {
    v17.receiver = self;
    v17.super_class = TSDBrushStroke;
    [(TSDStroke *)&v17 paintPath:path wantsInteriorStroke:strokeCopy inContext:context useFastDrawing:1 parameterized:parameterizedCopy shouldReverseDrawOrder:orderCopy];
  }

  else if ([(TSDStroke *)self shouldRender])
  {
    if ([(TSDBrushStroke *)self p_shouldDrawAsVectorInContext:context])
    {
      [(TSDBrushStroke *)self p_brushPath:path inContext:context orDirectly:0 parameterized:parameterizedCopy drawRasterized:0 shouldReverseDrawOrder:0 withLayoutOptions:optionsCopy];
    }

    else
    {
      [(TSDBrushStroke *)self p_rasterBrushPath:path inContext:context orDirectly:0 parameterized:parameterizedCopy shouldReverseDrawOrder:orderCopy withLayoutOptions:optionsCopy];
    }
  }
}

- (void)p_brushPath:(CGPath *)path inContext:(CGContext *)context orDirectly:(id)directly parameterized:(BOOL)parameterized drawRasterized:(BOOL)rasterized shouldReverseDrawOrder:(BOOL)order withLayoutOptions:(id)options
{
  rasterizedCopy = rasterized;
  parameterizedCopy = parameterized;
  v98 = *MEMORY[0x277D85DE8];
  directlyCopy = directly;
  optionsCopy = options;
  v83 = parameterizedCopy;
  v87 = rasterizedCopy;
  if (parameterizedCopy && !rasterizedCopy)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_brushPath:inContext:orDirectly:parameterized:drawRasterized:shouldReverseDrawOrder:withLayoutOptions:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
    [currentHandler handleFailureInFunction:v13 file:v14 lineNumber:394 description:@"Parameterized strokes must draw rasterized."];

    rasterizedCopy = v87;
  }

  if (optionsCopy)
  {
    v15 = !rasterizedCopy;
  }

  else
  {
    v15 = 1;
  }

  if (v15 || ([optionsCopy strokeEnd], v16 > 0.0))
  {
    v17 = [TSDBezierPath bezierPathWithCGPath:path];
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
        bezierPathByReversingPath = [v19 bezierPathByReversingPath];

        v17 = bezierPathByReversingPath;
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
    if (directlyCopy)
    {
      [directlyCopy transform];
      v21 = TSDTransformScale(&v96.a);
      [directlyCopy contentsScale];
    }

    else
    {
      if (!context)
      {
        v23 = 0.0;
        goto LABEL_18;
      }

      v85 = 3.0;
      if ([(TSDBrushStroke *)self p_isDrawingRasterizedIntoPDFWithContext:?])
      {
        goto LABEL_19;
      }

      CGContextGetCTM(&v96, context);
      v21 = TSDTransformScale(&v96.a);
      v22 = TSDCGContextAssociatedScreenScale(context);
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
    strokeName = [(TSDSmartStroke *)self strokeName];
    v29 = [v27 optionsForStroke:strokeName];
    v30 = [v29 objectForKeyedSubscript:@"split-at-sharp-angles"];
    bOOLValue = [v30 BOOLValue];

    v31 = *MEMORY[0x277CBF348];
    v32 = *(MEMORY[0x277CBF348] + 8);
    v94 = *MEMORY[0x277CBF348];
    elementCount = [v17 elementCount];
    v93[0] = 0;
    v93[1] = 1;
    v93[2] = 0;
    if (elementCount >= 1)
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
            if (bOOLValue)
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
                  [(TSDBrushStroke *)self p_brushPath:v17 withScaling:v34 inElementRange:v35 - v34 intoPath:v24 orIntoVector:0 sectionIndex:&v95 viewScale:v36 withLayoutOptions:v38 - v36 currentSubpathIndex:v85 cachedCurrentElementPercentage:optionsCopy, v89, v93];
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
                patternOffsetsBySubpath = [optionsCopy patternOffsetsBySubpath];
                v60 = patternOffsetsBySubpath == 0;

                if (!v60)
                {
                  currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
                  v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_brushPath:inContext:orDirectly:parameterized:drawRasterized:shouldReverseDrawOrder:withLayoutOptions:]"];
                  v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
                  [currentHandler2 handleFailureInFunction:v62 file:v63 lineNumber:475 description:{@"If there is a patternOffsetsBySubpath array, this should be a freehand drawing stroke."}];
                }
              }

              [(TSDBrushStroke *)self p_brushPath:v17 withScaling:v34 inElementRange:v35 - v34 intoPath:v24 orIntoVector:0 sectionIndex:&v95 viewScale:v36 withLayoutOptions:v37 - v36 currentSubpathIndex:v85 cachedCurrentElementPercentage:optionsCopy, v89++, v93];
              v36 = v37;
              v34 = v35;
            }

            *&v96.a = *&v96.c;
            v94 = *&v96.c;
            goto LABEL_59;
        }

        if (!bOOLValue)
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

        [(TSDBrushStroke *)self p_brushPath:v17 withScaling:v34 inElementRange:v35 - v34 intoPath:v24 orIntoVector:0 sectionIndex:&v95 viewScale:v36 withLayoutOptions:v38 - v36 currentSubpathIndex:v85 cachedCurrentElementPercentage:optionsCopy, v89, v93];
        v34 = v35 - 1;
LABEL_43:
        *&v96.a = *&v96.c;
        v32 = v57;
        v36 = v38;
LABEL_59:
        if (elementCount == ++v35)
        {
          goto LABEL_67;
        }
      }

      v57 = v32;
LABEL_42:
      v38 = v36;
      goto LABEL_43;
    }

    elementCount = 0;
    v34 = 0;
    v89 = 0;
    v37 = 0.0;
    v36 = 0.0;
LABEL_67:
    if ((elementCount + ~v34) >= 1)
    {
      if ([(TSDBrushStroke *)self p_isFreehandDrawingStrokeWithFixedTileWidth])
      {
        v95 = 0;
      }

      else
      {
        patternOffsetsBySubpath2 = [optionsCopy patternOffsetsBySubpath];
        v73 = patternOffsetsBySubpath2 == 0;

        if (!v73)
        {
          currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
          v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_brushPath:inContext:orDirectly:parameterized:drawRasterized:shouldReverseDrawOrder:withLayoutOptions:]"];
          v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
          [currentHandler3 handleFailureInFunction:v75 file:v76 lineNumber:549 description:{@"If there is a patternOffsetsBySubpath array, this should be a freehand drawing stroke."}];
        }
      }

      [(TSDBrushStroke *)self p_brushPath:v17 withScaling:v34 inElementRange:elementCount + ~v34 intoPath:v24 orIntoVector:0 sectionIndex:&v95 viewScale:v36 withLayoutOptions:v37 - v36 currentSubpathIndex:v85 cachedCurrentElementPercentage:optionsCopy, v89, v93];
    }

    v77 = v24;
    if (!v24)
    {
      currentHandler4 = [MEMORY[0x277D6C290] currentHandler];
      v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_brushPath:inContext:orDirectly:parameterized:drawRasterized:shouldReverseDrawOrder:withLayoutOptions:]"];
      v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
      [currentHandler4 handleFailureInFunction:v79 file:v80 lineNumber:567 description:{@"invalid nil value for '%s'", "resultPath"}];

      v77 = 0;
    }

    CGContextAddPath(context, [v77 CGPath]);
    color = [(TSDStroke *)self color];
    CGContextSetFillColorWithColor(context, [color CGColor]);

    CGContextFillPath(context);
    goto LABEL_76;
  }

LABEL_77:
}

- (void)p_brushPath:(id)path withScaling:(id)scaling inElementRange:(_NSRange)range intoPath:(id)intoPath orIntoVector:(void *)vector sectionIndex:(unint64_t *)index viewScale:(double)scale withLayoutOptions:(id)self0 currentSubpathIndex:(unint64_t)self1 cachedCurrentElementPercentage:(id *)self2
{
  length = range.length;
  location = range.location;
  var1 = scaling.var1;
  var0 = scaling.var0;
  pathCopy = path;
  intoPathCopy = intoPath;
  optionsCopy = options;
  if ([pathCopy elementCount] >= 2)
  {
    patternOffsetsBySubpath = [optionsCopy patternOffsetsBySubpath];
    if (patternOffsetsBySubpath)
    {
      p_isFreehandDrawingStrokeWithFixedTileWidth = [(TSDBrushStroke *)self p_isFreehandDrawingStrokeWithFixedTileWidth];

      if (!p_isFreehandDrawingStrokeWithFixedTileWidth)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_brushPath:withScaling:inElementRange:intoPath:orIntoVector:sectionIndex:viewScale:withLayoutOptions:currentSubpathIndex:cachedCurrentElementPercentage:]"];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
        [currentHandler handleFailureInFunction:v24 file:v25 lineNumber:579 description:@"We only know how to adjust the pattern of constant width layout brush strokes."];
      }
    }

    [pathCopy lineWidth];
    v27 = v26;
    v28 = +[TSDBrushStrokeLoader brushStrokeLoaderForCurrentThread];
    strokeName = [(TSDSmartStroke *)self strokeName];
    v98 = [v28 pathsForStroke:strokeName];

    v30 = +[TSDBrushStrokeLoader brushStrokeLoaderForCurrentThread];
    strokeName2 = [(TSDSmartStroke *)self strokeName];
    v96 = [v30 boundsForStroke:strokeName2];

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
    [pathCopy length];
    v94 = v39;
    v40 = var0 + var1;
    if (v34)
    {
      v41 = [v96 objectForKeyedSubscript:@"start"];
      lastObject = [v41 lastObject];
      [lastObject CGRectValue];
      v44 = v43;
      v46 = v45;

      v47 = [v96 objectForKeyedSubscript:@"end"];
      lastObject2 = [v47 lastObject];
      [lastObject2 CGRectValue];
      v50 = v49;
      v52 = v51;
      v53 = v92 * (v44 / v46);
      v54 = var1 * v94 * 0.5;
      v55 = fmin(v53, v54);

      v56 = var0 + v55 / v94;
      [(TSDBrushStroke *)self p_brushSection:@"start" sectionIndex:0 ontoPath:pathCopy inElementRange:location intoPath:length orIntoVector:intoPathCopy viewScale:scale strokeTileLayout:var0 cachedCurrentElementPercentage:v56, 0.0, 1.0, vector, percentage];
      v57 = v40 - fmin(v92 * (v50 / v52), v54) / v94;
      [(TSDBrushStroke *)self p_brushSection:@"end" sectionIndex:0 ontoPath:pathCopy inElementRange:location intoPath:length orIntoVector:intoPathCopy viewScale:scale strokeTileLayout:v57 cachedCurrentElementPercentage:v40, 0.0, 1.0, vector, percentage];
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
    lastObject3 = [v59 lastObject];
    [lastObject3 CGRectValue];
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
    patternOffsetsBySubpath2 = [optionsCopy patternOffsetsBySubpath];

    if (!patternOffsetsBySubpath2)
    {
      v76 = 0.0;
LABEL_30:
      if ([(TSDBrushStroke *)self p_isFreehandDrawingStrokeWithFixedTileWidth])
      {
        v79 = v66 * (v68 / v67);
        if (v76 > 0.0 && v76 > v79)
        {
          v80 = *index;
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
          *index = v80;
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
          p_isFreehandDrawingStrokeWithFixedTileWidth2 = [(TSDBrushStroke *)self p_isFreehandDrawingStrokeWithFixedTileWidth];
          v83 = fmin(v40, v79 + v56);
          v84 = 0.0;
          if (p_isFreehandDrawingStrokeWithFixedTileWidth2)
          {
            if (v76 > 0.0)
            {
              v85 = v76 / v79;
              v76 = 0.0;
              v84 = v85 + 0.0;
            }

            v86 = v79 * (1.0 - v84);
            percentageCopy2 = percentage;
            if (v83 - v56 > v86)
            {
              v83 = v83 - (v83 - v56 - v86);
            }
          }

          else
          {
            percentageCopy2 = percentage;
          }

          [(TSDBrushStroke *)self p_brushSection:v38 sectionIndex:*index % v58 ontoPath:pathCopy inElementRange:location intoPath:length orIntoVector:intoPathCopy viewScale:scale strokeTileLayout:v56 cachedCurrentElementPercentage:v83, vector, percentageCopy2];
          v88 = 1664525 * *index + 1013904223;
          if (v88 % v58 == *index % v58)
          {
            v89 = v88 + 1;
          }

          else
          {
            v89 = 1664525 * *index + 1013904223;
          }

          *index = v89;
          v56 = v83;
        }

        while (vabdd_f64(v83, v40) > 0.00000999999975);
      }

LABEL_54:

      goto LABEL_55;
    }

    patternOffsetsBySubpath3 = [optionsCopy patternOffsetsBySubpath];
    v72 = [patternOffsetsBySubpath3 count];

    if (v72 <= subpathIndex)
    {
      patternOffsetsBySubpath4 = [optionsCopy patternOffsetsBySubpath];
      v78 = [patternOffsetsBySubpath4 count];

      if (v78 != 1)
      {
        currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
        v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_brushPath:withScaling:inElementRange:intoPath:orIntoVector:sectionIndex:viewScale:withLayoutOptions:currentSubpathIndex:cachedCurrentElementPercentage:]"];
        v95 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
        patternOffsetsBySubpath6 = currentHandler2;
        patternOffsetsBySubpath5 = [optionsCopy patternOffsetsBySubpath];
        [currentHandler2 handleFailureInFunction:v74 file:v95 lineNumber:686 description:{@"Not enough pattern offsets for each subpath. Got %zi for index %zi", objc_msgSend(patternOffsetsBySubpath5, "count"), subpathIndex}];

        v76 = 0.0;
        goto LABEL_29;
      }

      patternOffsetsBySubpath6 = [optionsCopy patternOffsetsBySubpath];
      v74 = [patternOffsetsBySubpath6 objectAtIndexedSubscript:0];
      [v74 tsu_CGFloatValue];
    }

    else
    {
      patternOffsetsBySubpath6 = [optionsCopy patternOffsetsBySubpath];
      v74 = [patternOffsetsBySubpath6 objectAtIndexedSubscript:subpathIndex];
      [v74 tsu_CGFloatValue];
    }

    v76 = v75 / v94;
LABEL_29:

    goto LABEL_30;
  }

LABEL_55:
}

- (void)p_brushSection:(id)section sectionIndex:(unint64_t)index ontoPath:(id)path inElementRange:(_NSRange)range intoPath:(id)intoPath orIntoVector:(void *)vector viewScale:(double)scale strokeTileLayout:(id)self0 cachedCurrentElementPercentage:(id *)self1
{
  var3 = layout.var3;
  var2 = layout.var2;
  var1 = layout.var1;
  var0 = layout.var0;
  length = range.length;
  location = range.location;
  sectionCopy = section;
  pathCopy = path;
  intoPathCopy = intoPath;
  v24 = intoPathCopy;
  if (vector)
  {
    if (intoPathCopy)
    {
      v25 = length;
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v37 = pathCopy;
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_brushSection:sectionIndex:ontoPath:inElementRange:intoPath:orIntoVector:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]"];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
      [currentHandler handleFailureInFunction:v27 file:v28 lineNumber:743 description:{@"expected nil value for '%s'", "resultPath"}];

      length = v25;
      pathCopy = v37;
    }

    [(TSDBrushStroke *)self p_rasterRenderSection:sectionCopy sectionIndex:index ontoPath:pathCopy inElementRange:location into:length viewScale:vector strokeTileLayout:scale cachedCurrentElementPercentage:var0, var1, var2, var3, percentage];
  }

  else
  {
    if (intoPathCopy)
    {
      v29 = +[TSDBrushStrokeLoader brushStrokeLoaderForCurrentThread];
      strokeName = [(TSDSmartStroke *)self strokeName];
      currentHandler2 = [v29 pathsForStroke:strokeName];

      v32 = [currentHandler2 objectForKeyedSubscript:sectionCopy];
      v33 = [v32 objectAtIndexedSubscript:index];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [pathCopy lineWidth];
        v35 = [v33 objectAtIndexedSubscript:v34 < 15.0];

        v33 = v35;
      }

      [v33 recursiveSubdivideOntoPath:pathCopy withScaling:location inElementRange:length into:{v24, var0, var1 - var0}];
    }

    else
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_brushSection:sectionIndex:ontoPath:inElementRange:intoPath:orIntoVector:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]"];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
      [currentHandler2 handleFailureInFunction:v33 file:v36 lineNumber:755 description:@"resultPath and resultVector are both nil!"];
    }
  }
}

- (void)p_rasterBrushPath:(CGPath *)path inContext:(CGContext *)context orDirectly:(id)directly parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order withLayoutOptions:(id)options
{
  orderCopy = order;
  parameterizedCopy = parameterized;
  directlyCopy = directly;
  optionsCopy = options;
  if (directlyCopy)
  {
    [directlyCopy transform];
  }

  else
  {
    CGContextGetCTM(&v19, context);
  }

  v16 = sqrt(v19.b * v19.b + v19.a * v19.a);
  if (context && [(TSDBrushStroke *)self p_isDrawingRasterizedIntoPDFWithContext:context])
  {
    v16 = 3.0;
  }

  if (directlyCopy || parameterizedCopy || ([(TSDStroke *)self width], v17 > 0.5 / v16))
  {
    [(TSDBrushStroke *)self p_brushPath:path inContext:context orDirectly:directlyCopy parameterized:parameterizedCopy drawRasterized:1 shouldReverseDrawOrder:orderCopy withLayoutOptions:optionsCopy];
  }

  else if (context)
  {
    v18.receiver = self;
    v18.super_class = TSDBrushStroke;
    [(TSDStroke *)&v18 paintPath:path wantsInteriorStroke:0 inContext:context useFastDrawing:0 parameterized:0 shouldReverseDrawOrder:0];
  }
}

- (void)p_rasterRenderSection:(id)section sectionIndex:(unint64_t)index ontoPath:(id)path inElementRange:(_NSRange)range into:(void *)into viewScale:(double)scale strokeTileLayout:(id)layout cachedCurrentElementPercentage:(id *)self0
{
  length = range.length;
  location = range.location;
  var3 = layout.var3;
  var2 = layout.var2;
  var0 = layout.var0;
  var1 = layout.var1;
  v148 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  pathCopy = path;
  v15 = location + length;
  while (location < [pathCopy elementCount])
  {
    [pathCopy lengthOfElement:location];
    if (v16 != 0.0)
    {
      break;
    }

    ++location;
  }

  while (v15 > location)
  {
    [pathCopy lengthOfElement:v15];
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
    v123 = pathCopy;
    v133 = [(TSDBrushStroke *)self p_fastElementPercentage:&v143 forOverallPercentage:pathCopy onPath:percentage withCachedCurrentElementPercentage:var0];
    v18 = [(TSDBrushStroke *)self p_fastElementPercentage:&v142 forOverallPercentage:pathCopy onPath:percentage withCachedCurrentElementPercentage:var1];
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
    [v20 appendBezierPath:pathCopy fromSegment:v133 t:v132 toSegment:0 t:v143 withoutMove:v142];
    CGAffineTransformMakeScale(&v147, scale, scale);
    [v20 transformUsingAffineTransform:&v147];
    v131 = [v20 bezierPathByFlatteningPathWithFlatness:0.1];

    CGAffineTransformMakeScale(&v147, 1.0 / scale, 1.0 / scale);
    [v131 transformUsingAffineTransform:&v147];
    [(TSDStroke *)self width];
    v21 = 0.5 / scale;
    if (v22 > 0.5 / scale)
    {
      [(TSDStroke *)self width];
      v21 = v23;
    }

    v129 = v21;
    __p = 0;
    v140 = 0;
    v141 = 0;
    v138 = *MEMORY[0x277CBF348];
    elementCount = [v131 elementCount];
    v25 = elementCount;
    if (elementCount)
    {
      v26 = 0;
      v134 = elementCount - 1;
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

          currentHandler = [MEMORY[0x277D6C290] currentHandler];
          v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_rasterRenderSection:sectionIndex:ontoPath:inElementRange:into:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]"];
          v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
          [currentHandler handleFailureInFunction:v32 file:v33 lineNumber:854 description:@"Path should be flat by now."];

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
        v35 = TSDDistanceSquared(*&v137, *(&v137 + 1), *(v140 - 2), *(v140 - 1)) * scale * scale;
        if (v35 > v28 && v35 <= 1.0)
        {
          if (v26 == v134 || (v144 = *v27, v145 = v144, v146 = v144, [v131 elementAtIndex:v26 + 1 associatedPoints:&v144]) && (v34 = v140, TSUSubtractPoints(), v39 = TSDNormalizePoint(v37, v38), v40 = v28, v41 = var3, v43 = v42, TSUSubtractPoints(), v46 = TSDNormalizePoint(v44, v45), v48 = v47, v49 = v43, var3 = v41, v28 = v40, TSDDotPoints(v39, v49, v46, v48) < 0.99))
          {
LABEL_39:
            if ((v30 | 2) != 3)
            {
              currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
              v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_rasterRenderSection:sectionIndex:ontoPath:inElementRange:into:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]"];
              v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
              [currentHandler2 handleFailureInFunction:v51 file:v52 lineNumber:897 description:@"Should only have line and close elements by now."];

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
      strokeName = [(TSDSmartStroke *)self strokeName];
      v68 = [v66 textureIndexForStroke:strokeName];
      v69 = [v68 objectForKeyedSubscript:sectionCopy];
      v70 = [v69 objectAtIndexedSubscript:index];
      [v70 unsignedIntegerValue];

      v71 = +[TSDBrushStrokeLoader brushStrokeLoaderForCurrentThread];
      strokeName2 = [(TSDSmartStroke *)self strokeName];
      v73 = [v71 textureIndexForStroke:strokeName2];
      v74 = [v73 objectForKeyedSubscript:@"section-count"];
      [v74 unsignedIntegerValue];

      v75 = log2(64.0) - 1;
      log2((v129 + v129) * scale);
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
      strokeName3 = [(TSDSmartStroke *)self strokeName];
      v89 = [v87 pathsForStroke:strokeName3];
      v90 = [v89 objectForKeyedSubscript:sectionCopy];
      v135 = [v90 objectAtIndexedSubscript:index];

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
          firstObject = [v135 firstObject];
          [firstObject bounds];
          v83 = v96;
          v84 = v97;
          v85 = v98;
          v86 = v99;
        }

        else
        {
          firstObject = [MEMORY[0x277D6C290] currentHandler];
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

    pathCopy = v123;
  }
}

- (void)p_finishMetalRenderInContext:(CGContext *)context orDirectly:(id)directly pathVertexData:(void *)data parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order withLayoutOptions:(id)options
{
  parameterizedCopy = parameterized;
  v189 = *MEMORY[0x277D85DE8];
  directlyCopy = directly;
  optionsCopy = options;
  context = objc_autoreleasePoolPush();
  dataCopy = data;
  v155 = directlyCopy;
  if (*(data + 1) == *data)
  {
    goto LABEL_70;
  }

  if (directlyCopy)
  {
    [directlyCopy frame];
    TSURectWithSize();
    v12 = v11;
    v14 = v13;
    [directlyCopy transform];
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

    color = [(TSDStroke *)self color];
LABEL_13:
    [(TSDStroke *)self width];
    v23 = v22;
    [color alphaComponent];
    v25 = sqrt(m12 * m12 + m11 * m11);
    v26 = 1.0 / v25;
    v27 = v23 * v25 * v24;
    if (v23 < v26)
    {
      v24 = v27;
    }

    if (parameterizedCopy)
    {
      v28 = 1.0;
    }

    else
    {
      v28 = v24;
    }

    if (directlyCopy)
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
      CGContextSaveGState(context);
      v179.m11 = m11;
      v179.m12 = m12;
      *&v179.m13 = v184;
      *&v179.m21 = v185;
      CGAffineTransformInvert(&transform, &v179);
      CGContextConcatCTM(context, &transform);
      v31 = *(MEMORY[0x277CBF2C0] + 32);
      v184 = *(MEMORY[0x277CBF2C0] + 16);
      v185 = v31;
      ClipBoundingBox = CGContextGetClipBoundingBox(context);
      v192 = CGRectIntegral(ClipBoundingBox);
      x = v192.origin.x;
      y = v192.origin.y;
      width = v192.size.width;
      height = v192.size.height;
      v131 = fmin(v192.size.width, 1024.0);
      v139 = fmin(v192.size.height, 1024.0);
    }

    v157 = TSDMetalDevicePreferringLowPower();
    if (directlyCopy)
    {
      metalDeviceOverride = [directlyCopy metalDeviceOverride];
      v33 = metalDeviceOverride == 0;

      if (!v33)
      {
        metalDeviceOverride2 = [v155 metalDeviceOverride];

        v157 = metalDeviceOverride2;
      }
    }

    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v36 = dataCopy[1] - *dataCopy;
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
          if (*(*dataCopy + v40) == 1)
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
      height2 = v139;
      width2 = v131;
LABEL_51:
      v60 = +[TSDCapabilities currentCapabilities];
      [v60 maximumMetalTextureSizeForDevice:v157];
      v62 = v61;
      v64 = v63;

      v65 = height2;
      v66 = width2;
      if (!parameterizedCopy)
      {
        v67 = width2 + width2;
        v68 = height2 + height2;
        v69 = v67 > v62 || v68 > v64;
        v65 = height2;
        v66 = width2;
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
      v171 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v47 width:width2 height:height2 mipmapped:0];
      [v171 setUsage:5];
      [v171 setStorageMode:0];
      if (v155)
      {
        surface = [v155 surface];
        v163 = [v157 newTextureWithDescriptor:v171 iosurface:surface plane:0];
      }

      else
      {
        v163 = [v157 newTextureWithDescriptor:v171];
      }

      renderPassDescriptor = [MEMORY[0x277CD6F50] renderPassDescriptor];
      colorAttachments = [renderPassDescriptor colorAttachments];
      v135 = [colorAttachments objectAtIndexedSubscript:0];

      [v135 setTexture:v162];
      [v135 setStoreAction:1];
      [v135 setLoadAction:2];
      [v135 setClearColor:{0.0, 0.0, 0.0, 0.0}];
      v72 = [(TSDBrushStroke *)self p_metalBrushShaderForPixelFormat:v47 andDevice:v157];
      v166 = [(TSDBrushStroke *)self p_metalOpacityShaderForPixelFormat:v47 andDevice:v157];
      width = [v163 width];
      height = [v163 height];
      v159 = [TSDGPUDataBuffer newDataBufferWithVertexRect:v157 textureRect:0.0 device:0.0, width, height, *MEMORY[0x277D6C3C8], *(MEMORY[0x277D6C3C8] + 8), *(MEMORY[0x277D6C3C8] + 16), *(MEMORY[0x277D6C3C8] + 24)];
      v181[0] = parameterizedCopy;
      Components = CGColorGetComponents([color CGColor]);
      *&v76 = vcvt_f32_f64(*Components);
      *&v77 = Components[1].f64[0];
      *(&v76 + 1) = __PAIR64__(1.0, v77);
      v182 = v76;
      [optionsCopy strokeEnd];
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
        commandBuffer = [v156 commandBuffer];
        v91 = [commandBuffer renderCommandEncoderWithDescriptor:renderPassDescriptor];
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
        v92 = array;
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
        renderPassDescriptor2 = [MEMORY[0x277CD6F50] renderPassDescriptor];
        colorAttachments2 = [renderPassDescriptor2 colorAttachments];
        v98 = [colorAttachments2 objectAtIndexedSubscript:0];

        [v98 setTexture:v163];
        [v98 setStoreAction:1];
        [v98 setLoadAction:2];
        [v98 setClearColor:{0.0, 0.0, 0.0, 0.0}];
        v99 = [commandBuffer renderCommandEncoderWithDescriptor:renderPassDescriptor2];
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
        [commandBuffer enqueue];
        [commandBuffer commit];
        [commandBuffer waitUntilCompleted];
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
                while (v107 < [array count])
                {
                  commandBuffer2 = [v156 commandBuffer];
                  v108 = 0;
                  while (v107 < [array count] && v108 <= 8)
                  {
                    v109 = [commandBuffer2 renderCommandEncoderWithDescriptor:renderPassDescriptor];
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
                      if (v110 >= [array count])
                      {
                        break;
                      }

                      v111 = [array objectAtIndexedSubscript:v110];
                      [v111 drawWithEncoder:v109 atIndex:{objc_msgSend(v72, "bufferIndex")}];
                      v112 = [array2 objectAtIndexedSubscript:v110];
                      bOOLValue = [v112 BOOLValue];

                      ++v110;
                    }

                    while ((bOOLValue & 1) == 0);
                    [v109 endEncoding];
                    renderPassDescriptor3 = [MEMORY[0x277CD6F50] renderPassDescriptor];
                    colorAttachments3 = [renderPassDescriptor3 colorAttachments];
                    v116 = [colorAttachments3 objectAtIndexedSubscript:0];

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

                    v117 = [commandBuffer2 renderCommandEncoderWithDescriptor:renderPassDescriptor3];
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

                  if (v107 > [array count])
                  {
                    currentHandler = [MEMORY[0x277D6C290] currentHandler];
                    v119 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_finishMetalRenderInContext:orDirectly:pathVertexData:parameterized:shouldReverseDrawOrder:withLayoutOptions:]"];
                    v120 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
                    [currentHandler handleFailureInFunction:v119 file:v120 lineNumber:1524 description:@"The buffer index should not be greater than the number of buffers."];
                  }

                  v121 = [array count];
                  [commandBuffer2 enqueue];
                  [commandBuffer2 commit];
                  if (v107 >= v121)
                  {
                    [commandBuffer2 waitUntilCompleted];
                  }
                }

                CGImageFromTexture = TSDMetalCreateCGImageFromTexture(v163);
                if (parameterizedCopy)
                {
                  v193.origin.x = (x + (v126 << 10));
                  v193.origin.y = (y + (v142 << 10));
                  v193.size.height = v128;
                  v193.size.width = v129;
                  CGContextDrawImage(context, v193, CGImageFromTexture);
                }

                else
                {
                  v123 = [color colorWithAlphaComponent:1.0];
                  [objc_opt_class() p_drawColor:v123 intoContext:context usingImageAsMask:CGImageFromTexture withRect:{v105, v106, v129, v128}];
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

        CGContextRestoreGState(context);
      }

      goto LABEL_70;
    }

    surface2 = [v155 surface];
    v43 = [surface2 pixelFormat] == 1380411457;

    if (v43)
    {
      surface3 = [v155 surface];
      v45 = [surface3 bytesPerElement] == 8;

      if (v45)
      {
        v46 = 1;
        v47 = 115;
LABEL_44:
        if ([v155 destinationColorSpaceOverride])
        {
          destinationColorSpaceOverride = [v155 destinationColorSpaceOverride];
          if (!destinationColorSpaceOverride)
          {
            v54 = MEMORY[0x277CBF430];
            if (!v46)
            {
              v54 = MEMORY[0x277CBF4B8];
            }

            v55 = CGColorSpaceCreateWithName(*v54);
            destinationColorSpaceOverride = CFAutorelease(v55);
          }

          CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(destinationColorSpaceOverride, kCGRenderingIntentDefault, [color CGColor], 0);
          v57 = [MEMORY[0x277D6C2A8] colorWithCGColor:CFAutorelease(CopyByMatchingToColorSpace)];

          color = v57;
        }

        surface4 = [v155 surface];
        width2 = [surface4 width];

        surface5 = [v155 surface];
        height2 = [surface5 height];

        goto LABEL_51;
      }

      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_finishMetalRenderInContext:orDirectly:pathVertexData:parameterized:shouldReverseDrawOrder:withLayoutOptions:]"];
      v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
      [currentHandler2 handleFailureInFunction:v51 file:v52 lineNumber:1298 description:@"Half float precision requires 8 bytes per element."];
    }

    v46 = 0;
    v47 = 70;
    goto LABEL_44;
  }

  v190 = CGContextGetClipBoundingBox(context);
  v17 = v190.size.width;
  v18 = v190.size.height;
  CGContextGetCTM(&transform, context);
  m11 = transform.m11;
  m12 = transform.m12;
  v186 = *&transform.m13;
  v187 = *&transform.m21;
  if ([(TSDBrushStroke *)self p_isDrawingRasterizedIntoPDFWithContext:context])
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
    if (context)
    {
      color = [(TSDStroke *)self colorForCGContext:?];
    }

    else
    {
      currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_finishMetalRenderInContext:orDirectly:pathVertexData:parameterized:shouldReverseDrawOrder:withLayoutOptions:]"];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
      [currentHandler3 handleFailureInFunction:v20 file:v21 lineNumber:1162 description:@"Should have either a direct context or a CGContext."];

      color = 0;
      directlyCopy = v155;
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

+ (void)p_drawColor:(id)color intoContext:(CGContext *)context usingImageAsMask:(CGImage *)mask withRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v35 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  CGContextSaveGState(context);
  v13 = CGImageGetWidth(mask);
  CGImageGetHeight(mask);
  v14 = TSDBitmapContextCreate(2, v13);
  v15 = CGImageGetWidth(mask);
  v16 = CGImageGetHeight(mask);
  v36.size.width = v15;
  v36.size.height = v16;
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  CGContextDrawImage(v14, v36, mask);
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
  IsPDFContext = TSDCGContextIsPDFContext(context);
  if (IsPDFContext)
  {
    v27 = CGImageGetWidth(mask);
    CGImageGetHeight(mask);
    contextCopy = TSDBitmapContextCreate(3, v27);
    v29 = CGImageGetWidth(mask);
    v30 = CGImageGetHeight(mask);
    v31 = 0.0;
    v32 = 0.0;
  }

  else
  {
    v31 = x;
    v32 = y;
    v29 = width;
    v30 = height;
    contextCopy = context;
  }

  v37.origin.x = v31;
  v37.origin.y = v32;
  v37.size.width = v29;
  v37.size.height = v30;
  CGContextClipToMask(contextCopy, v37, v25);
  CGImageRelease(v25);
  CGContextSetFillColorWithColor(contextCopy, [colorCopy CGColor]);
  v38.origin.x = v31;
  v38.origin.y = v32;
  v38.size.width = v29;
  v38.size.height = v30;
  CGContextFillRect(contextCopy, v38);
  if (IsPDFContext)
  {
    v33 = CGBitmapContextCreateImage(contextCopy);
    CGContextRelease(contextCopy);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    CGContextDrawImage(context, v39, v33);
    CGImageRelease(v33);
  }

  CGContextRestoreGState(context);
}

- (BOOL)p_shouldDrawAsVectorInContext:(CGContext *)context
{
  if (context)
  {
    IsPDFContext = TSDCGContextIsPDFContext(context);
    if (IsPDFContext)
    {
      LOBYTE(IsPDFContext) = ![(TSDBrushStroke *)self p_prefersRasterRenderingInContext:context];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_shouldDrawAsVectorInContext:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
    [currentHandler handleFailureInFunction:v7 file:v8 lineNumber:1638 description:{@"invalid nil value for '%s'", "ctx"}];

    LOBYTE(IsPDFContext) = 0;
  }

  return IsPDFContext;
}

- (BOOL)p_prefersRasterRenderingInContext:(CGContext *)context
{
  if (!context)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_prefersRasterRenderingInContext:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
    [currentHandler handleFailureInFunction:v6 file:v7 lineNumber:1647 description:{@"invalid nil value for '%s'", "ctx"}];
  }

  if (TSDCGContextPrefersRasterRendering(context))
  {
    return 1;
  }

  strokeName = [(TSDSmartStroke *)self strokeName];
  if ([strokeName isEqualToString:@"Pencil"])
  {
    v8 = 1;
  }

  else
  {
    strokeName2 = [(TSDSmartStroke *)self strokeName];
    v8 = [strokeName2 isEqualToString:@"Crayon"];
  }

  return v8;
}

- (BOOL)p_isDrawingRasterizedIntoPDFWithContext:(CGContext *)context
{
  if (!context)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStroke p_isDrawingRasterizedIntoPDFWithContext:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
    [currentHandler handleFailureInFunction:v6 file:v7 lineNumber:1652 description:{@"invalid nil value for '%s'", "ctx"}];
  }

  IsPDFContext = TSDCGContextIsPDFContext(context);
  if (IsPDFContext)
  {
    LOBYTE(IsPDFContext) = ![(TSDBrushStroke *)self p_shouldDrawAsVectorInContext:context];
  }

  return IsPDFContext;
}

- (BOOL)p_isFreehandDrawingStrokeWithFixedTileWidth
{
  strokeName = [(TSDSmartStroke *)self strokeName];
  if ([strokeName isEqualToString:@"Pencil"])
  {
    v4 = 1;
  }

  else
  {
    strokeName2 = [(TSDSmartStroke *)self strokeName];
    v4 = [strokeName2 isEqualToString:@"Crayon"];
  }

  return v4;
}

- (int64_t)p_fastElementPercentage:(double *)percentage forOverallPercentage:(double)overallPercentage onPath:(id)path withCachedCurrentElementPercentage:(id *)elementPercentage
{
  pathCopy = path;
  [pathCopy length];
  var2 = 0.0;
  if (elementPercentage->var0 == pathCopy && elementPercentage->var2 <= v11 * overallPercentage)
  {
    var1 = elementPercentage->var1;
    if (var1 <= 1)
    {
      var2 = 0.0;
    }

    else
    {
      var2 = elementPercentage->var2;
    }

    if (var1 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = elementPercentage->var1;
    }
  }

  else
  {
    v13 = 1;
  }

  v14 = [pathCopy elementPercentage:percentage forOverallPercentage:v13 startingElementIndex:overallPercentage lengthToStartingElement:var2];
  if (v14 > v13)
  {
    do
    {
      [pathCopy lengthOfElement:v13];
      var2 = var2 + v15;
      ++v13;
    }

    while (v14 != v13);
    objc_storeStrong(&elementPercentage->var0, path);
    elementPercentage->var1 = v14;
    elementPercentage->var2 = var2;
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

- (id)p_metalTextureForCurrentStrokeAndDevice:(id)device
{
  deviceCopy = device;
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
  selfCopy = self;
  v12 = &v13;
  v10 = deviceCopy;
  v6 = deviceCopy;
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

- (id)p_metalBrushShaderForPixelFormat:(unint64_t)format andDevice:(id)device
{
  deviceCopy = device;
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
  v11 = deviceCopy;
  v12 = &v14;
  formatCopy = format;
  v7 = deviceCopy;
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

- (id)p_metalOpacityShaderForPixelFormat:(unint64_t)format andDevice:(id)device
{
  deviceCopy = device;
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
  v11 = deviceCopy;
  v12 = &v14;
  formatCopy = format;
  v7 = deviceCopy;
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
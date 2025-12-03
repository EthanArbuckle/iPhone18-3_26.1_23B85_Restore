@interface TSDBrushStrokeLoader
+ (TSDBrushStrokeLoader)brushStrokeLoaderForCurrentThread;
+ (double)p_brushPixelScaleAt100Percent;
+ (id)p_brushStrokeLoadQueue;
+ (id)p_cacheDirectory;
- (id)boundsForStroke:(id)stroke;
- (id)imageForStroke:(id)stroke;
- (id)lineEnd:(id)end forStroke:(id)stroke;
- (id)optionsForStroke:(id)stroke;
- (id)p_loadImageForBrush:(id)brush;
- (id)pathsForStroke:(id)stroke;
- (id)textureIndexForStroke:(id)stroke;
- (void)p_loadBrushIfNeeded:(id)needed;
- (void)p_loadLineEndTextureForBrush:(id)brush lineEnd:(id)end path:(CGPath *)path andBounds:(CGRect)bounds;
- (void)p_loadLineEndsForBrush:(id)brush inSVGDoc:(_xmlDoc *)doc;
- (void)p_loadSectionsForBrush:(id)brush inSVGDoc:(_xmlDoc *)doc;
@end

@implementation TSDBrushStrokeLoader

+ (TSDBrushStrokeLoader)brushStrokeLoaderForCurrentThread
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"TSDBrushStrokeLoader"];
  if (!v4)
  {
    v4 = objc_alloc_init(TSDBrushStrokeLoader);
    [threadDictionary setObject:v4 forKeyedSubscript:@"TSDBrushStrokeLoader"];
  }

  return v4;
}

- (id)lineEnd:(id)end forStroke:(id)stroke
{
  strokeCopy = stroke;
  endCopy = end;
  [(TSDBrushStrokeLoader *)self p_loadBrushIfNeeded:strokeCopy];
  endCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", strokeCopy, endCopy];

  v9 = [(NSMutableDictionary *)self->_lineEnds objectForKeyedSubscript:endCopy];

  return v9;
}

- (id)imageForStroke:(id)stroke
{
  strokeCopy = stroke;
  [(TSDBrushStrokeLoader *)self p_loadBrushIfNeeded:strokeCopy];
  v5 = [(NSMutableDictionary *)self->_images objectForKeyedSubscript:strokeCopy];

  return v5;
}

- (id)textureIndexForStroke:(id)stroke
{
  strokeCopy = stroke;
  [(TSDBrushStrokeLoader *)self p_loadBrushIfNeeded:strokeCopy];
  v5 = [(NSMutableDictionary *)self->_textureIndex objectForKeyedSubscript:strokeCopy];

  return v5;
}

- (id)optionsForStroke:(id)stroke
{
  strokeCopy = stroke;
  [(TSDBrushStrokeLoader *)self p_loadBrushIfNeeded:strokeCopy];
  v5 = [(NSMutableDictionary *)self->_options objectForKeyedSubscript:strokeCopy];

  return v5;
}

- (id)pathsForStroke:(id)stroke
{
  strokeCopy = stroke;
  [(TSDBrushStrokeLoader *)self p_loadBrushIfNeeded:strokeCopy];
  v5 = [(NSMutableDictionary *)self->_paths objectForKeyedSubscript:strokeCopy];

  return v5;
}

- (id)boundsForStroke:(id)stroke
{
  strokeCopy = stroke;
  [(TSDBrushStrokeLoader *)self p_loadBrushIfNeeded:strokeCopy];
  v5 = [(NSMutableDictionary *)self->_bounds objectForKeyedSubscript:strokeCopy];

  return v5;
}

+ (id)p_brushStrokeLoadQueue
{
  if (p_brushStrokeLoadQueue_onceToken != -1)
  {
    +[TSDBrushStrokeLoader p_brushStrokeLoadQueue];
  }

  v3 = p_brushStrokeLoadQueue_queue;

  return v3;
}

uint64_t __46__TSDBrushStrokeLoader_p_brushStrokeLoadQueue__block_invoke()
{
  p_brushStrokeLoadQueue_queue = dispatch_queue_create("com.apple.iwork.TSDBrushStrokeLoadQueue", 0);

  return MEMORY[0x2821F96F8]();
}

+ (id)p_cacheDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];

  v4 = [lastObject stringByAppendingPathComponent:@"Brushes"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];

  return v4;
}

+ (double)p_brushPixelScaleAt100Percent
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v4 = v3;

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 bounds];
  v7 = v6;
  v9 = v8;

  return fmax(v4 * sqrt(v7 * v9 / 786432.0), 1.0);
}

- (void)p_loadBrushIfNeeded:(id)needed
{
  neededCopy = needed;
  options = self->_options;
  if (!options || ([(NSMutableDictionary *)options objectForKey:neededCopy], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v7 = +[TSDBrushStrokeLoader p_brushStrokeLoadQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__TSDBrushStrokeLoader_p_loadBrushIfNeeded___block_invoke;
    v8[3] = &unk_279D47558;
    v8[4] = self;
    v9 = neededCopy;
    dispatch_sync(v7, v8);
  }
}

void __44__TSDBrushStrokeLoader_p_loadBrushIfNeeded___block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x277D85DE8];
  v62 = +[TSDBrushStrokeLoader p_cacheDirectory];
  v2 = *(a1 + 32);
  if (!*(v2 + 8))
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    *(v7 + 16) = v6;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    *(v10 + 32) = v9;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = *(a1 + 32);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v16 = *(a1 + 32);
    v17 = *(v16 + 48);
    *(v16 + 48) = v15;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v19 = *(a1 + 32);
    v20 = *(v19 + 24);
    *(v19 + 24) = v18;

    v21 = [v62 stringByAppendingString:@"/TSDBrushCacheVersion.txt"];
    v22 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v21 encoding:4 error:0];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", 14];
    if (!v22 || ([v22 isEqualToString:v23] & 1) == 0)
    {
      v58 = v23;
      v24 = [MEMORY[0x277CCAA00] defaultManager];
      v68 = 0;
      v25 = [v24 contentsOfDirectoryAtPath:v62 error:&v68];
      v26 = v68;

      v61 = a1;
      if (!v25)
      {
        v27 = [MEMORY[0x277D6C290] currentHandler];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStrokeLoader p_loadBrushIfNeeded:]_block_invoke"];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStrokeLoader.m"];
        v30 = [v26 description];
        [v27 handleFailureInFunction:v28 file:v29 lineNumber:195 description:{@"%@", v30}];
      }

      v59 = v22;
      v60 = v21;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v31 = v25;
      v32 = [v31 countByEnumeratingWithState:&v64 objects:v71 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v65;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v65 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v64 + 1) + 8 * i);
            if ([v36 hasPrefix:@"TSDBrush"])
            {
              v37 = [MEMORY[0x277CCAA00] defaultManager];
              v38 = [v62 stringByAppendingPathComponent:v36];
              v63 = v26;
              v39 = [v37 removeItemAtPath:v38 error:&v63];
              v40 = v63;

              if ((v39 & 1) == 0)
              {
                v41 = [MEMORY[0x277D6C290] currentHandler];
                v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStrokeLoader p_loadBrushIfNeeded:]_block_invoke"];
                v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStrokeLoader.m"];
                v44 = [v40 description];
                [v41 handleFailureInFunction:v42 file:v43 lineNumber:198 description:{@"%@", v44}];
              }

              v26 = v40;
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v64 objects:v71 count:16];
        }

        while (v33);
      }

      v23 = v58;
      v21 = v60;
      [v58 writeToFile:v60 atomically:0 encoding:4 error:0];

      a1 = v61;
      v22 = v59;
    }

    v2 = *(a1 + 32);
  }

  v45 = [*(v2 + 32) objectForKey:*(a1 + 40)];

  if (!v45)
  {
    v46 = [@"TSDBrush_" stringByAppendingString:*(a1 + 40)];
    v47 = TSDBundle();
    v48 = [v47 pathForResource:v46 ofType:@"svg"];

    v49 = objc_alloc(MEMORY[0x277CBEA90]);
    v50 = [MEMORY[0x277CBEBC0] tsu_fileURLWithPath:v48];
    v51 = [v49 initWithContentsOfURL:v50 options:0 error:0];

    v52 = [v51 length];
    if (v52 >> 31)
    {
      __44__TSDBrushStrokeLoader_p_loadBrushIfNeeded___block_invoke_cold_1();
    }

    else
    {
      Memory = xmlReadMemory([v51 bytes], v52, "", 0, 1);
      v54 = PerformXPathQuery(Memory, @"//svg:split-at-sharp-angles[1]");
      v55 = [v54 count] != 0;

      v69 = @"split-at-sharp-angles";
      v56 = [MEMORY[0x277CCABB0] numberWithBool:v55];
      v70 = v56;
      v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      [*(*(a1 + 32) + 32) setObject:v57 forKeyedSubscript:*(a1 + 40)];

      [*(a1 + 32) p_loadLineEndsForBrush:*(a1 + 40) inSVGDoc:Memory];
      [*(a1 + 32) p_loadSectionsForBrush:*(a1 + 40) inSVGDoc:Memory];
      xmlFreeDoc(Memory);
    }
  }
}

- (void)p_loadLineEndTextureForBrush:(id)brush lineEnd:(id)end path:(CGPath *)path andBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  endCopy = end;
  brushCopy = brush;
  v14 = +[TSDBrushStrokeLoader p_cacheDirectory];
  endCopy = [v14 stringByAppendingFormat:@"/TSDBrushEnd_%@_%@.png", brushCopy, endCopy];

  v16 = [MEMORY[0x277D6C2F8] imageWithContentsOfFile:endCopy];
  v17 = v16;
  if (v16)
  {
    Image = CGImageRetain([v16 CGImage]);
  }

  else
  {
    +[TSDBrushStrokeLoader p_brushPixelScaleAt100Percent];
    v20 = v19 * 100.0 / height;
    v21 = width * v20;
    v22 = TSDBitmapContextCreate(3, v21);
    CGContextSetRGBFillColor(v22, 1.0, 1.0, 1.0, 1.0);
    v23 = v21;
    v29.size.width = ceilf(v23);
    v24 = height * v20;
    v29.size.height = ceilf(v24);
    v29.origin.x = 0.0;
    v29.origin.y = 0.0;
    CGContextFillRect(v22, v29);
    CGContextSetRGBFillColor(v22, 0.0, 0.0, 0.0, 1.0);
    CGAffineTransformMakeScale(&transform, v20, v20);
    CGContextConcatCTM(v22, &transform);
    CGAffineTransformMakeTranslation(&transform, -x, -y);
    CGContextConcatCTM(v22, &transform);
    CGContextAddPath(v22, path);
    CGContextFillPath(v22);
    Image = CGBitmapContextCreateImage(v22);
    v25 = [MEMORY[0x277D6C2F8] imageWithCGImage:Image];
    pNGRepresentation = [v25 PNGRepresentation];

    v27 = [MEMORY[0x277CBEBC0] tsu_fileURLWithPath:endCopy];
    [pNGRepresentation writeToURL:v27 atomically:1];
    CGContextRelease(v22);
  }

  CGImageRelease(Image);
}

- (void)p_loadLineEndsForBrush:(id)brush inSVGDoc:(_xmlDoc *)doc
{
  v78 = *MEMORY[0x277D85DE8];
  brushCopy = brush;
  PerformXPathQuery(doc, @"//svg:path['_wrap'=substring(@id,string-length(@id)-4)]");
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v76 = 0u;
  v61 = [obj countByEnumeratingWithState:&v73 objects:v77 count:16];
  if (v61)
  {
    v57 = *v74;
    v5 = 0x277CCA000uLL;
    v55 = *MEMORY[0x277CBF2C0];
    v56 = *(MEMORY[0x277CBF2C0] + 16);
    v53 = *(MEMORY[0x277CBF2C0] + 40);
    v54 = *(MEMORY[0x277CBF2C0] + 32);
    docCopy = doc;
    do
    {
      v6 = 0;
      do
      {
        if (*v74 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v69 = v6;
        v7 = [*(*(&v73 + 1) + 8 * v6) objectForKey:@"nodeAttributes"];
        v70 = [v7 objectForKey:@"d"];
        v8 = [v7 objectForKey:@"id"];
        v9 = [v8 substringToIndex:{objc_msgSend(v8, "length") - 5}];

        v10 = [*(v5 + 3240) stringWithFormat:@"//svg:path[@id='%@_end']", v9];
        v11 = PerformXPathQuery(doc, v10);

        if ([v11 count] != 1)
        {
          currentHandler = [MEMORY[0x277D6C290] currentHandler];
          v13 = [*(v5 + 3240) stringWithUTF8String:"-[TSDBrushStrokeLoader p_loadLineEndsForBrush:inSVGDoc:]"];
          v14 = [*(v5 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStrokeLoader.m"];
          [currentHandler handleFailureInFunction:v13 file:v14 lineNumber:288 description:@"Arrow head needs path"];

          v5 = 0x277CCA000uLL;
        }

        v68 = v11;
        lastObject = [v11 lastObject];
        v16 = [lastObject objectForKey:@"nodeAttributes"];

        v17 = [v16 objectForKey:@"d"];
        v18 = [*(v5 + 3240) stringWithFormat:@"//svg:rect[@id='%@_end_bounds']", v9];
        v19 = PerformXPathQuery(doc, v18);

        if ([v19 count] != 1)
        {
          currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
          v21 = [*(v5 + 3240) stringWithUTF8String:"-[TSDBrushStrokeLoader p_loadLineEndsForBrush:inSVGDoc:]"];
          v22 = [*(v5 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStrokeLoader.m"];
          [currentHandler2 handleFailureInFunction:v21 file:v22 lineNumber:295 description:@"Arrow head needs bounding rect"];

          v5 = 0x277CCA000uLL;
        }

        lastObject2 = [v19 lastObject];
        [lastObject2 objectForKey:@"nodeAttributes"];
        v24 = v67 = v19;

        v25 = [v24 objectForKey:@"x"];
        [v25 doubleValue];
        v27 = v26;
        v63 = v26;

        v28 = [v24 objectForKey:@"y"];
        [v28 doubleValue];
        v30 = v29;

        v31 = [v24 objectForKey:@"width"];
        [v31 doubleValue];
        v65 = v32;

        v33 = [v24 objectForKey:@"height"];
        [v33 doubleValue];
        v35 = v34;
        v64 = v34;

        v36 = [v9 stringByReplacingOccurrencesOfString:@"_" withString:@" "];

        v37 = [*(v5 + 3240) stringWithFormat:@"%@:%@", brushCopy, v36];

        *&v71.a = v55;
        *&v71.c = v56;
        v71.tx = v54;
        v71.ty = v53;
        CGAffineTransformTranslate(&v72, &v71, 0.0, -0.5);
        v71 = v72;
        CGAffineTransformScale(&v72, &v71, 2.0 / v35, 2.0 / v35);
        v71 = v72;
        CGAffineTransformTranslate(&v72, &v71, -v27, -v30);
        v71 = v72;
        CGAffineTransformRotate(&v72, &v71, -1.57079633);
        a = v72.a;
        b = v72.b;
        c = v72.c;
        d = v72.d;
        tx = v72.tx;
        ty = v72.ty;
        v44 = [TSDSVGToBezierPathConverter newPathFromSVGPathString:v70];
        v72.a = a;
        v72.b = b;
        v62 = b;
        v72.c = c;
        v72.d = d;
        v72.tx = tx;
        v72.ty = ty;
        v45 = TSDCreateTransformedPath(v44, &v72);
        v46 = [TSDSVGToBezierPathConverter newPathFromSVGPathString:v17];
        v72.a = a;
        v72.b = b;
        v72.c = c;
        v72.d = d;
        v72.tx = tx;
        v72.ty = ty;
        v47 = TSDCreateTransformedPath(v46, &v72);
        v66 = v17;
        v79.origin.x = v63;
        v79.origin.y = v30;
        v79.size.width = v65;
        v79.size.height = v64;
        MaxX = CGRectGetMaxX(v79);
        v80.origin.x = v63;
        v80.origin.y = v30;
        v80.size.width = v65;
        v80.size.height = v64;
        MidY = CGRectGetMidY(v80);
        maxX = [TSDLineEnd lineEndWithPath:v47 wrapPath:v45 endPoint:1 isFilled:v37 identifier:tx + c * MidY + a * MaxX, ty + d * MidY + v62 * MaxX];
        [(NSMutableDictionary *)self->_lineEnds setObject:maxX forKey:v37];
        BoundingBox = CGPathGetBoundingBox(v45);
        [(TSDBrushStrokeLoader *)self p_loadLineEndTextureForBrush:brushCopy lineEnd:v37 path:v47 andBounds:BoundingBox.origin.x, BoundingBox.origin.y, BoundingBox.size.width, BoundingBox.size.height];
        v51 = v46;
        v5 = 0x277CCA000;
        CGPathRelease(v51);
        CGPathRelease(v47);
        CGPathRelease(v44);
        CGPathRelease(v45);

        v6 = v69 + 1;
        doc = docCopy;
      }

      while (v61 != v69 + 1);
      v61 = [obj countByEnumeratingWithState:&v73 objects:v77 count:16];
    }

    while (v61);
  }
}

- (id)p_loadImageForBrush:(id)brush
{
  v90 = *MEMORY[0x277D85DE8];
  brushCopy = brush;
  v5 = +[TSDBrushStrokeLoader p_cacheDirectory];
  brushCopy = [v5 stringByAppendingFormat:@"/TSDBrush_%@.png", brushCopy];
  v6 = [MEMORY[0x277D6C2F8] imageWithContentsOfFile:?];
  v72 = brushCopy;
  selfCopy = self;
  v63 = v5;
  if (v6)
  {
    v66 = v6;
    goto LABEL_35;
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v7 = [(NSMutableDictionary *)self->_paths objectForKeyedSubscript:brushCopy];
  objectEnumerator = [v7 objectEnumerator];

  v9 = [objectEnumerator countByEnumeratingWithState:&v83 objects:v89 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v84;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v84 != v12)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v11 += [*(*(&v83 + 1) + 8 * i) count];
      }

      v10 = [objectEnumerator countByEnumeratingWithState:&v83 objects:v89 count:16];
    }

    while (v10);

    if (v11 == 1)
    {
      v14 = 2048.0;
    }

    else
    {
      v14 = 512.0;
    }
  }

  else
  {

    v14 = 512.0;
  }

  v15 = TSDBitmapContextCreate(3, v14);
  CGContextSetRGBFillColor(v15, 0.0, 0.0, 0.0, 1.0);
  ClipBoundingBox = CGContextGetClipBoundingBox(v15);
  CGContextFillRect(v15, ClipBoundingBox);
  CGContextSetRGBFillColor(v15, 1.0, 1.0, 1.0, 1.0);
  v16 = [(NSMutableDictionary *)self->_paths objectForKeyedSubscript:v72];
  allKeys = [v16 allKeys];

  v18 = [allKeys sortedArrayUsingSelector:?];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v18;
  v68 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
  if (v68)
  {
    v19 = 0;
    v67 = *v80;
    do
    {
      v20 = 0;
      do
      {
        if (*v80 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v70 = v20;
        v21 = *(*(&v79 + 1) + 8 * v20);
        v22 = [(NSMutableDictionary *)self->_paths objectForKeyedSubscript:v72];
        v23 = [v22 objectForKeyedSubscript:v21];

        v24 = [(NSMutableDictionary *)self->_bounds objectForKeyedSubscript:v72];
        v25 = [v24 objectForKeyedSubscript:v21];

        if ([v23 count])
        {
          v26 = 0;
          while (1)
          {
            v27 = [v23 objectAtIndexedSubscript:v26];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              firstObject = v27;
LABEL_27:
              v32 = firstObject;
              goto LABEL_29;
            }

            v32 = 0;
LABEL_29:
            v33 = [v25 objectAtIndexedSubscript:v26];
            [v33 CGRectValue];

            [v32 bounds];
            x = v93.origin.x;
            y = v93.origin.y;
            width = v93.size.width;
            height = v93.size.height;
            v38 = fmin(CGRectGetMinX(v93), 0.0);
            v94.origin.x = x;
            v94.origin.y = y;
            v94.size.width = width;
            v94.size.height = height;
            v39 = v19 * 80.0;
            v40 = v14 / (fmax(CGRectGetMaxX(v94), 1.0) - v38);
            v41 = 32;
            do
            {
              CGContextSaveGState(v15);
              CGAffineTransformMakeTranslation(&transform, 0.0, v39);
              CGContextConcatCTM(v15, &transform);
              CGAffineTransformMakeScale(&transform, v40, v41);
              CGContextConcatCTM(v15, &transform);
              CGAffineTransformMakeTranslation(&transform, -v38, 0.5);
              CGContextConcatCTM(v15, &transform);
              CGContextAddPath(v15, [v32 CGPath]);
              CGContextFillPath(v15);
              v39 = (v41 + v39) + 4.0;
              CGContextRestoreGState(v15);
              v42 = v41 > 3;
              v41 >>= 1;
            }

            while (v42);
            ++v19;

            if (++v26 >= [v23 count])
            {
              goto LABEL_32;
            }
          }

          if (![v27 count])
          {
            currentHandler = [MEMORY[0x277D6C290] currentHandler];
            v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStrokeLoader p_loadImageForBrush:]"];
            v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStrokeLoader.m"];
            [currentHandler handleFailureInFunction:v29 file:v30 lineNumber:377 description:@"got empty array in _paths"];
          }

          firstObject = [v27 firstObject];
          goto LABEL_27;
        }

LABEL_32:

        v20 = v70 + 1;
        self = selfCopy;
      }

      while ((v70 + 1) != v68);
      v68 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
    }

    while (v68);
  }

  Image = CGBitmapContextCreateImage(v15);
  v66 = [MEMORY[0x277D6C2F8] imageWithCGImage:Image];
  pNGRepresentation = [v66 PNGRepresentation];
  v45 = [MEMORY[0x277CBEBC0] tsu_fileURLWithPath:brushCopy];
  [pNGRepresentation writeToURL:v45 atomically:1];
  CGImageRelease(Image);
  CGContextRelease(v15);

  brushCopy = v72;
LABEL_35:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(NSMutableDictionary *)self->_textureIndex setObject:dictionary forKey:brushCopy];
  v47 = [(NSMutableDictionary *)self->_paths objectForKeyedSubscript:brushCopy];
  allKeys2 = [v47 allKeys];

  v49 = [allKeys2 sortedArrayUsingSelector:sel_compare_];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v69 = v49;
  v50 = [v69 countByEnumeratingWithState:&v74 objects:v87 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = 0;
    v71 = *v75;
    do
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v75 != v71)
        {
          objc_enumerationMutation(v69);
        }

        v54 = *(*(&v74 + 1) + 8 * j);
        v55 = [(NSMutableDictionary *)self->_paths objectForKeyedSubscript:brushCopy];
        v56 = [v55 objectForKeyedSubscript:v54];

        v57 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v56, "count")}];
        [dictionary setObject:v57 forKeyedSubscript:v54];

        if ([v56 count])
        {
          v58 = 0;
          do
          {
            v59 = [dictionary objectForKeyedSubscript:v54];
            v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v52 + v58];
            [v59 addObject:v60];

            ++v58;
          }

          while (v58 < [v56 count]);
          v52 += v58;
          brushCopy = v72;
        }

        self = selfCopy;
      }

      v51 = [v69 countByEnumeratingWithState:&v74 objects:v87 count:16];
    }

    while (v51);
  }

  else
  {
    v52 = 0;
  }

  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v52];
  [dictionary setObject:v61 forKeyedSubscript:@"section-count"];

  return v66;
}

- (void)p_loadSectionsForBrush:(id)brush inSVGDoc:(_xmlDoc *)doc
{
  v64 = *MEMORY[0x277D85DE8];
  brushCopy = brush;
  dictionary = [(NSMutableDictionary *)self->_paths objectForKey:brushCopy];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
  }

  dictionary2 = [(NSMutableDictionary *)self->_bounds objectForKey:brushCopy];
  if (!dictionary2)
  {
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
  }

  selfCopy = self;
  v6 = PerformXPathQuery(doc, @"//svg:path['_section'=substring(@id,string-length(@id)-7)]");
  if (![v6 count])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStrokeLoader p_loadSectionsForBrush:inSVGDoc:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStrokeLoader.m"];
    [currentHandler handleFailureInFunction:v8 file:v9 lineNumber:496 description:@"No sections"];
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v6;
  v50 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (v50)
  {
    v48 = *v60;
    v46 = *(MEMORY[0x277CBF2C0] + 16);
    v47 = *MEMORY[0x277CBF2C0];
    v45 = *(MEMORY[0x277CBF2C0] + 32);
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v60 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v59 + 1) + 8 * i) objectForKey:@"nodeAttributes"];
        v12 = [v11 objectForKey:@"d"];
        v13 = [v11 objectForKey:@"id"];
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"//svg:rect[@id='%@_bounds']", v13];
        v15 = PerformXPathQuery(doc, v14);

        if ([v15 count] != 1)
        {
          currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStrokeLoader p_loadSectionsForBrush:inSVGDoc:]"];
          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStrokeLoader.m"];
          [currentHandler2 handleFailureInFunction:v17 file:v18 lineNumber:505 description:@"Section needs bounding rect"];
        }

        lastObject = [v15 lastObject];
        v20 = [lastObject objectForKey:@"nodeAttributes"];

        v21 = [v20 objectForKey:@"x"];
        [v21 doubleValue];
        v23 = v22;

        v24 = [v20 objectForKey:@"y"];
        [v24 doubleValue];
        v26 = v25;

        v27 = [v20 objectForKey:@"width"];
        [v27 doubleValue];
        v29 = v28;

        v30 = [v20 objectForKey:@"height"];
        [v30 doubleValue];
        v32 = v31;

        path = [TSDSVGToBezierPathConverter newPathFromSVGPathString:v12];
        v33 = [TSDBezierPath bezierPathWithCGPath:?];
        *&v58.a = v47;
        *&v58.c = v46;
        *&v58.tx = v45;
        *&v57.a = v47;
        *&v57.c = v46;
        *&v57.tx = v45;
        CGAffineTransformTranslate(&v58, &v57, 0.0, -0.5);
        v56 = v58;
        CGAffineTransformScale(&v57, &v56, 1.0 / v29, 1.0 / v32);
        v58 = v57;
        v56 = v57;
        CGAffineTransformTranslate(&v57, &v56, -v23, -v26);
        v58 = v57;
        [v33 transformUsingAffineTransform:&v57];
        v55 = v13;
        v34 = [v13 substringToIndex:{objc_msgSend(v13, "rangeOfString:", @"_"}];
        if ([brushCopy isEqualToString:@"Chalk2"] && (objc_msgSend(v34, "isEqualToString:", @"small") & 1) == 0)
        {
          v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v35 addObject:v33];
          v36 = [TSDBezierPath smoothBezierPath:v33 withThreshold:0.05];
          [v35 addObject:v36];
        }

        else
        {
          v35 = v33;
        }

        v37 = v15;
        v54 = v12;
        array = [dictionary objectForKey:v34];
        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
          [dictionary setObject:array forKey:v34];
        }

        v39 = brushCopy;
        array2 = [dictionary2 objectForKey:v34];
        if (!array2)
        {
          array2 = [MEMORY[0x277CBEB18] array];
          [dictionary2 setObject:array2 forKey:v34];
        }

        [array addObject:v35];
        v41 = [MEMORY[0x277CCAE60] valueWithCGRect:{v23, v26, v29, v32}];
        [array2 addObject:v41];

        CGPathRelease(path);
        brushCopy = v39;
      }

      v50 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
    }

    while (v50);
  }

  v42 = [(TSDBrushStrokeLoader *)selfCopy p_loadImageForBrush:brushCopy];
  [(NSMutableDictionary *)selfCopy->_images setObject:v42 forKey:brushCopy];
}

void __44__TSDBrushStrokeLoader_p_loadBrushIfNeeded___block_invoke_cold_1()
{
  v0 = [MEMORY[0x277D6C290] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStrokeLoader p_loadBrushIfNeeded:]_block_invoke"];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStrokeLoader.m"];
  [v0 handleFailureInFunction:v1 file:v2 lineNumber:214 description:@"Out-of-bounds type assignment failed"];
}

@end
@interface TSDPartitionedPartialRep
- (BOOL)directlyManagesLayerContent;
- (CGImage)p_newImageForCachingBaseRep;
- (CGRect)clipRect;
- (CGRect)layerFrameInScaledCanvas;
- (CGRect)p_clipRect;
- (CGRect)p_convertBaseToNaturalRect:(CGRect)rect;
- (TSDPartitionedPartialRep)initWithLayout:(id)layout canvas:(id)canvas;
- (UIEdgeInsets)p_edgeInsetsForClipping;
- (id)i_queueForTileProvider;
- (void)addBitmapsToRenderingQualityInfo:(id)info inContext:(CGContext *)context;
- (void)didUpdateLayer:(id)layer;
- (void)drawInContext:(CGContext *)context;
- (void)resetCachedPartitionedRendering;
- (void)willBeRemoved;
@end

@implementation TSDPartitionedPartialRep

- (TSDPartitionedPartialRep)initWithLayout:(id)layout canvas:(id)canvas
{
  if (!layout)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDPartitionedPartialRep initWithLayout:canvas:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDPartitionedPartialRep.m"), 39, @"invalid nil value for '%s'", "layout"}];
  }

  v12.receiver = self;
  v12.super_class = TSDPartitionedPartialRep;
  v9 = [(TSDRep *)&v12 initWithLayout:layout canvas:canvas];
  if (v9)
  {
    objc_opt_class();
    [layout partitioner];
    v10 = TSUDynamicCast();
    if (v10)
    {
      [v10 i_registerPartialRep:v9];
    }
  }

  return v9;
}

- (BOOL)directlyManagesLayerContent
{
  [(TSDRep *)self interactiveCanvasController];
  v2 = TSUProtocolCast();

  return [v2 shouldUseCachedPartitionRendering];
}

- (CGRect)layerFrameInScaledCanvas
{
  [(TSDPartitionedPartialRep *)self p_edgeInsetsForClipping];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TSDRep *)self frameInUnscaledCanvas];
  [(TSDCanvas *)self->super.mCanvas convertUnscaledToBoundsRect:v6 + v11, v4 + v12, v13 - (v6 + v10), v14 - (v4 + v8)];

  return CGRectIntegral(*&v15);
}

- (CGRect)clipRect
{
  [(TSDPartitionedPartialRep *)self p_edgeInsetsForClipping];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TSDRep *)self naturalBounds];
  v12 = v6 + v11;
  v14 = v4 + v13;
  v16 = v15 - (v6 + v10);
  v18 = v17 - (v4 + v8);
  result.size.height = v18;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v12;
  return result;
}

- (void)willBeRemoved
{
  layout = [(TSDRep *)self layout];
  objc_opt_class();
  [(TSDLayout *)layout partitioner];
  v4 = TSUDynamicCast();
  if (v4)
  {
    [v4 i_unregisterPartialRep:self];
  }

  v5.receiver = self;
  v5.super_class = TSDPartitionedPartialRep;
  [(TSDRep *)&v5 willBeRemoved];
}

- (void)drawInContext:(CGContext *)context
{
  layout = [(TSDRep *)self layout];
  [objc_msgSend(objc_msgSend(-[TSDLayout partitioner](layout "partitioner")];
  CGContextTranslateCTM(context, -v6, -v7);
  [(TSDLayout *)layout bounds];
  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeTranslation(&v11, -v8, -v9);
  v10 = v11;
  CGContextConcatCTM(context, &v10);
  [objc_msgSend(-[TSDLayout partitioner](layout "partitioner")];
}

- (void)addBitmapsToRenderingQualityInfo:(id)info inContext:(CGContext *)context
{
  v6 = [-[TSDLayout partitioner](-[TSDRep layout](self "layout")];

  [v6 recursivelyPerformSelector:sel_addBitmapsToRenderingQualityInfo_inContext_ withObject:info withObject:context];
}

- (void)didUpdateLayer:(id)layer
{
  v27.receiver = self;
  v27.super_class = TSDPartitionedPartialRep;
  [(TSDRep *)&v27 didUpdateLayer:?];
  if ([(TSDPartitionedPartialRep *)self directlyManagesLayerContent])
  {
    layout = [(TSDRep *)self layout];
    p_newImageForCachingBaseRep = [-[TSDLayout partitioner](layout "partitioner")];
    if (!p_newImageForCachingBaseRep)
    {
      p_newImageForCachingBaseRep = [(TSDPartitionedPartialRep *)self p_newImageForCachingBaseRep];
      [-[TSDLayout partitioner](layout "partitioner")];
      CFRelease(p_newImageForCachingBaseRep);
    }

    [layer setContents:p_newImageForCachingBaseRep];
    [(TSDLayout *)layout bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(TSDPartitionedPartialRep *)self p_edgeInsetsForClipping];
    v16 = v8 + v15;
    v18 = v10 + v17;
    v20 = v12 - (v15 + v19);
    v22 = v14 - (v17 + v21);
    [(TSDPartitionedPartialRep *)self p_clipRect];
    [layer setContentsRect:{(v16 - v23) / v24, (v18 - v25) / v26, v20 / v24, v22 / v26}];
  }
}

- (void)resetCachedPartitionedRendering
{
  layout = [(TSDRep *)self layout];
  [(TSDLayout *)layout invalidate];
  [(TSDRep *)self setNeedsDisplay];
  partitioner = [(TSDLayout *)layout partitioner];
  canvas = [(TSDRep *)self canvas];

  [partitioner i_removeCachedImageForCanvas:canvas];
}

- (id)i_queueForTileProvider
{
  v2 = [-[TSDLayout partitioner](-[TSDRep layout](self "layout")];

  return [v2 i_queueForTileProvider];
}

- (UIEdgeInsets)p_edgeInsetsForClipping
{
  layout = [(TSDRep *)self layout];
  [(TSDLayout *)layout bounds];
  v50 = v5;
  v51 = v4;
  v7 = v6;
  v44 = v8;
  v9 = [-[TSDLayout partitioner](layout "partitioner")];
  v10 = [-[TSDLayout partitioner](layout "partitioner")];
  [objc_msgSend(v9 "geometry")];
  v54 = v12;
  v55 = v11;
  v52 = v14;
  v53 = v13;
  [(TSDPartitionedPartialRep *)self p_clipRect];
  v16 = v15;
  v18 = v17;
  v56 = v19;
  v21 = v20;
  [v10 naturalBounds];
  [(TSDPartitionedPartialRep *)self p_convertBaseToNaturalRect:?];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v57.size.height = v50;
  v57.origin.x = v51;
  v57.origin.y = v7;
  v57.size.width = v44;
  v48 = v16;
  v49 = v21;
  rect = v29;
  v46 = v18;
  if (fabs(CGRectGetMinY(v57)) >= 0.00999999978)
  {
    v31 = 0.0;
  }

  else
  {
    v58.origin.x = v16;
    v58.origin.y = v18;
    v58.size.width = v56;
    v58.size.height = v21;
    MinY = CGRectGetMinY(v58);
    v59.origin.x = v23;
    v59.origin.y = v25;
    v59.size.width = v27;
    v59.size.height = v29;
    v31 = MinY - CGRectGetMinY(v59);
  }

  v60.origin.x = v51;
  v60.origin.y = v7;
  v60.size.width = v44;
  v60.size.height = v50;
  MaxY = CGRectGetMaxY(v60);
  v61.origin.y = v54;
  v61.origin.x = v55;
  v61.size.height = v52;
  v61.size.width = v53;
  if (vabdd_f64(MaxY, CGRectGetHeight(v61)) >= 0.00999999978)
  {
    v45 = 0.0;
    v34 = v46;
  }

  else
  {
    v62.origin.x = v23;
    v62.size.width = v27;
    v62.origin.y = v25;
    v62.size.height = v29;
    v33 = CGRectGetMaxY(v62);
    v63.origin.x = v48;
    v63.size.height = v21;
    v34 = v46;
    v63.origin.y = v46;
    v63.size.width = v56;
    v45 = v33 - CGRectGetMaxY(v63);
  }

  v35 = v23;
  v64.origin.x = v51;
  v64.origin.y = v7;
  v64.size.width = v44;
  v64.size.height = v50;
  if (fabs(CGRectGetMinX(v64)) >= 0.00999999978)
  {
    v37 = 0.0;
  }

  else
  {
    v65.origin.x = v48;
    v65.size.height = v21;
    v65.origin.y = v34;
    v65.size.width = v56;
    MinX = CGRectGetMinX(v65);
    v66.origin.x = v35;
    v66.size.width = v27;
    v66.origin.y = v25;
    v66.size.height = rect;
    v37 = MinX - CGRectGetMinX(v66);
  }

  v67.origin.x = v51;
  v67.origin.y = v7;
  v67.size.width = v44;
  v67.size.height = v50;
  MaxX = CGRectGetMaxX(v67);
  v68.origin.y = v54;
  v68.origin.x = v55;
  v68.size.height = v52;
  v68.size.width = v53;
  if (vabdd_f64(MaxX, CGRectGetWidth(v68)) >= 0.00999999978)
  {
    v40 = 0.0;
  }

  else
  {
    v69.origin.x = v35;
    v69.size.width = v27;
    v69.origin.y = v25;
    v69.size.height = rect;
    v39 = CGRectGetMaxX(v69);
    v70.origin.x = v48;
    v70.size.height = v49;
    v70.origin.y = v34;
    v70.size.width = v56;
    v40 = v39 - CGRectGetMaxX(v70);
  }

  v41 = v31;
  v42 = v37;
  v43 = v45;
  result.right = v40;
  result.bottom = v43;
  result.left = v42;
  result.top = v41;
  return result;
}

- (CGRect)p_clipRect
{
  v3 = [-[TSDLayout partitioner](-[TSDRep layout](self "layout")];
  if ([v3 masksToBounds])
  {
    [v3 clipRect];
  }

  else
  {
    [v3 i_partition_deepClipRect];
  }

  [(TSDPartitionedPartialRep *)self p_convertBaseToNaturalRect:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGImage)p_newImageForCachingBaseRep
{
  layout = [(TSDRep *)self layout];
  v4 = [-[TSDLayout partitioner](layout "partitioner")];
  [(TSDPartitionedPartialRep *)self p_clipRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
  v29.origin.x = TSDMultiplyRectScalar(v6, v8, v10, v12, v13);
  x = v29.origin.x;
  y = v29.origin.y;
  v30 = CGRectIntegral(v29);
  v16 = v30.origin.x;
  v17 = v30.origin.y;
  v18 = TSDBitmapContextCreate(11, v30.size.width);
  [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  TSDSetCGContextInfo(v18, 0, 0, 0, 0, v19);
  CGContextTranslateCTM(v18, x - v16, y - v17);
  [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
  v21 = v20;
  [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
  CGContextScaleCTM(v18, v21, v22);
  [v4 naturalBounds];
  CGContextTranslateCTM(v18, v23 - v6, v24 - v8);
  [objc_msgSend(objc_msgSend(-[TSDLayout partitioner](layout "partitioner")];
  CGContextTranslateCTM(v18, -v25, -v26);
  [v4 recursivelyDrawInContext:v18];
  Image = CGBitmapContextCreateImage(v18);
  CGContextRelease(v18);
  return Image;
}

- (CGRect)p_convertBaseToNaturalRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = [objc_msgSend(-[TSDLayout partitioner](-[TSDRep layout](self "layout")];
  v8 = v7;
  if (v7)
  {
    [v7 transform];
  }

  else
  {
    memset(&v20, 0, sizeof(v20));
  }

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v22 = CGRectApplyAffineTransform(v21, &v20);
  v9 = v22.origin.x;
  v10 = v22.origin.y;
  v11 = v22.size.width;
  v12 = v22.size.height;
  [v8 frame];
  v14 = v9 - v13;
  [v8 frame];
  v16 = v10 - v15;
  v17 = v14;
  v18 = v11;
  v19 = v12;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v16;
  result.origin.x = v17;
  return result;
}

@end
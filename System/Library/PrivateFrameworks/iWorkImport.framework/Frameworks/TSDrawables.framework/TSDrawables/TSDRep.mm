@interface TSDRep
- (BOOL)isDrawingInFlippedContext;
- (BOOL)isLocked;
- (CGAffineTransform)unRotatedTransform:(SEL)transform;
- (CGPath)newPathInScaledCanvasFromNaturalRect:(CGRect)rect;
- (CGPoint)centerForRotation;
- (CGPoint)convertNaturalPointFromUnscaledCanvas:(CGPoint)canvas;
- (CGPoint)convertNaturalPointToUnscaledCanvas:(CGPoint)canvas;
- (CGRect)boundsForStandardKnobs;
- (CGRect)captionFrameInUnscaledCanvas;
- (CGRect)convertNaturalRectFromUnscaledCanvas:(CGRect)canvas;
- (CGRect)convertNaturalRectToUnscaledCanvas:(CGRect)canvas;
- (CGRect)frameForMagicMove;
- (CGRect)frameInUnscaledCanvas;
- (CGRect)frameInUnscaledCanvasForMarqueeSelecting;
- (CGRect)i_clipRectRecursive;
- (CGRect)i_layerFrameInScaledCanvasIgnoringDragging;
- (CGRect)i_partition_deepClipRect;
- (CGRect)layerFrameInScaledCanvas;
- (CGRect)layerFrameInScaledCanvasRelativeToParent;
- (CGRect)naturalBounds;
- (CGRect)rectToClipChildRepRenderables;
- (CGRect)titleFrameInUnscaledCanvas;
- (NSArray)childReps;
- (NSArray)hyperlinkRegions;
- (NSArray)layoutsForChildReps;
- (NSObject)dynamicOverride;
- (TSDCanvas)canvas;
- (TSDInfo)info;
- (TSDLayout)layout;
- (TSDRep)initWithLayout:(id)layout canvas:(id)canvas;
- (TSDRep)parentRep;
- (double)angleInRoot;
- (double)contentsScale;
- (id)description;
- (id)p_comment;
- (id)textureForDescription:(id)description;
- (void)addChildTexturesToTextureSet:(id)set forDescription:(id)description passingTest:(id)test;
- (void)dealloc;
- (void)enumerateChildTexturesForDescription:(id)description passingTest:(id)test withBlock:(id)block;
- (void)i_willBeRemoved;
- (void)p_setChildReps:(id)reps;
- (void)recursivelyDrawChildrenInContext:(CGContext *)context keepingChildrenPassingTest:(id)test;
- (void)recursivelyDrawInContext:(CGContext *)context keepingChildrenPassingTest:(id)test;
- (void)recursivelyPerformSelector:(SEL)selector;
- (void)recursivelyPerformSelector:(SEL)selector withObject:(id)object;
- (void)recursivelyPerformSelector:(SEL)selector withObject:(id)object withObject:(id)withObject;
- (void)recursivelyPerformSelectorIfImplemented:(SEL)implemented;
- (void)recursivelyPerformSelectorIfImplemented:(SEL)implemented withObject:(id)object;
- (void)recursivelyPerformSelectorIfImplemented:(SEL)implemented withObject:(id)object withObject:(id)withObject;
- (void)removeChildRep:(id)rep;
- (void)setParentRep:(id)rep;
- (void)setTextureAttributes:(id)attributes textureBounds:(CGRect)bounds;
- (void)updateChildrenFromLayout;
@end

@implementation TSDRep

- (CGRect)i_partition_deepClipRect
{
  v43 = *MEMORY[0x277D85DE8];
  objc_msgSend_clipRect(self, a2, v2);
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v14 = objc_msgSend_childReps(self, v12, v13);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v38, v42, 16);
  if (v16)
  {
    v19 = v16;
    v20 = *v39;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(v14);
        }

        v22 = *(*(&v38 + 1) + 8 * i);
        memset(&v37, 0, sizeof(v37));
        v23 = objc_msgSend_layout(v22, v17, v18);
        v26 = objc_msgSend_geometry(v23, v24, v25);
        v29 = v26;
        if (v26)
        {
          objc_msgSend_transform(v26, v27, v28);
        }

        else
        {
          memset(&v37, 0, sizeof(v37));
        }

        objc_msgSend_i_partition_deepClipRect(v22, v30, v31);
        v36 = v37;
        v48 = CGRectApplyAffineTransform(v44, &v36);
        v45.origin.x = x;
        v45.origin.y = y;
        v45.size.width = width;
        v45.size.height = height;
        v46 = CGRectUnion(v45, v48);
        x = v46.origin.x;
        y = v46.origin.y;
        width = v46.size.width;
        height = v46.size.height;
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v38, v42, 16);
    }

    while (v19);
  }

  v32 = x;
  v33 = y;
  v34 = width;
  v35 = height;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (TSDRep)initWithLayout:(id)layout canvas:(id)canvas
{
  layoutCopy = layout;
  canvasCopy = canvas;
  if (!layoutCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDRep initWithLayout:canvas:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 283, 0, "invalid nil value for '%{public}s'", "layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v23.receiver = self;
  v23.super_class = TSDRep;
  v17 = [(TSDRep *)&v23 init];
  v18 = v17;
  if (v17)
  {
    if (layoutCopy)
    {
      objc_storeStrong(&v17->mLayout, layout);
      v19 = objc_storeWeak(&v18->mCanvas, canvasCopy);
      objc_msgSend_i_registerRep_(canvasCopy, v20, v18);
      v21 = canvasCopy;
    }

    else
    {
      v21 = v17;
      v18 = 0;
    }
  }

  return v18;
}

- (void)dealloc
{
  objc_storeWeak(&self->mCanvas, 0);
  if (self->mTemporaryMixingLayout)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSDRep dealloc]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 321, 0, "expected nil value for '%{public}s'", "mTemporaryMixingLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  v11.receiver = self;
  v11.super_class = TSDRep;
  [(TSDRep *)&v11 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_info(self, v6, v7);
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v13 = objc_msgSend_info(self, v11, v12);
  v16 = objc_msgSend_layout(self, v14, v15);
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_layout(self, v19, v20);
  objc_msgSend_frameInUnscaledCanvas(self, v22, v23);
  v24 = NSStringFromCGRect(v29);
  v26 = objc_msgSend_stringWithFormat_(v3, v25, @"<%@ %p info=<%@ %p> layout=<%@ %p> frameInUnscaledCanvas=%@>", v5, self, v10, v13, v18, v21, v24);

  return v26;
}

- (TSDLayout)layout
{
  mTemporaryMixingLayout = self->mTemporaryMixingLayout;
  if (!mTemporaryMixingLayout)
  {
    mTemporaryMixingLayout = self->mLayout;
  }

  v3 = mTemporaryMixingLayout;

  return v3;
}

- (TSDInfo)info
{
  v3 = objc_msgSend_layout(self, a2, v2);
  v6 = objc_msgSend_info(v3, v4, v5);

  return v6;
}

- (void)setParentRep:(id)rep
{
  obj = rep;
  WeakRetained = objc_loadWeakRetained(&self->mParentRep);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->mParentRep, obj);
    v5 = obj;
  }
}

- (NSArray)childReps
{
  if (self->mChildReps)
  {
    return self->mChildReps;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (void)recursivelyPerformSelectorIfImplemented:(SEL)implemented
{
  v19 = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_performSelector_(self, v5, implemented);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = objc_msgSend_childReps(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v14, v18, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_recursivelyPerformSelectorIfImplemented_(*(*(&v14 + 1) + 8 * v13++), v10, implemented);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v14, v18, 16);
    }

    while (v11);
  }
}

- (void)recursivelyPerformSelectorIfImplemented:(SEL)implemented withObject:(id)object
{
  v21 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_performSelector_withObject_(self, v7, implemented, objectCopy);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = objc_msgSend_childReps(self, v7, v8, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v16, v20, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_recursivelyPerformSelectorIfImplemented_withObject_(*(*(&v16 + 1) + 8 * v15++), v12, implemented, objectCopy);
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v16, v20, 16);
    }

    while (v13);
  }
}

- (void)recursivelyPerformSelectorIfImplemented:(SEL)implemented withObject:(id)object withObject:(id)withObject
{
  v24 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  withObjectCopy = withObject;
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_performSelector_withObject_withObject_(self, v10, implemented, objectCopy, withObjectCopy);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = objc_msgSend_childReps(self, v10, v11, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v19, v23, 16);
  if (v14)
  {
    v16 = v14;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v12);
        }

        objc_msgSend_recursivelyPerformSelectorIfImplemented_withObject_withObject_(*(*(&v19 + 1) + 8 * v18++), v15, implemented, objectCopy, withObjectCopy);
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v19, v23, 16);
    }

    while (v16);
  }
}

- (void)recursivelyPerformSelector:(SEL)selector
{
  v19 = *MEMORY[0x277D85DE8];
  objc_msgSend_performSelector_(self, a2, selector);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = objc_msgSend_childReps(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v14, v18, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_recursivelyPerformSelector_(*(*(&v14 + 1) + 8 * v13++), v10, selector);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v14, v18, 16);
    }

    while (v11);
  }
}

- (void)recursivelyPerformSelector:(SEL)selector withObject:(id)object
{
  v22 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_msgSend_performSelector_withObject_(self, v7, selector, objectCopy);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = objc_msgSend_childReps(self, v8, v9, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v17, v21, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_recursivelyPerformSelector_withObject_(*(*(&v17 + 1) + 8 * v16++), v13, selector, objectCopy);
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v17, v21, 16);
    }

    while (v14);
  }
}

- (void)recursivelyPerformSelector:(SEL)selector withObject:(id)object withObject:(id)withObject
{
  v25 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  withObjectCopy = withObject;
  objc_msgSend_performSelector_withObject_withObject_(self, v10, selector, objectCopy, withObjectCopy);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = objc_msgSend_childReps(self, v11, v12, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v20, v24, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v13);
        }

        objc_msgSend_recursivelyPerformSelector_withObject_withObject_(*(*(&v20 + 1) + 8 * v19++), v16, selector, objectCopy, withObjectCopy);
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v20, v24, 16);
    }

    while (v17);
  }
}

- (void)i_willBeRemoved
{
  objc_msgSend_willBeRemoved(self, a2, v2);
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  objc_msgSend_i_unregisterRep_(WeakRetained, v5, self);

  objc_msgSend_cancelPreviousPerformRequestsWithTarget_(MEMORY[0x277CBEB88], v6, self);
  self->mHasBeenRemoved = 1;
}

- (double)angleInRoot
{
  v4 = objc_msgSend_parentRep(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_parentRep(self, v5, v6);
    objc_msgSend_angleInRoot(v7, v8, v9);
    v11 = v10 + 0.0;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = objc_msgSend_info(self, v5, v6);
  v15 = objc_msgSend_geometry(v12, v13, v14);

  if (v15)
  {
    v18 = objc_msgSend_info(self, v16, v17);
    v21 = objc_msgSend_geometry(v18, v19, v20);
    objc_msgSend_angle(v21, v22, v23);
    v11 = v11 + v24;
  }

  return v11;
}

- (CGRect)naturalBounds
{
  v3 = objc_msgSend_layout(self, a2, v2);
  v6 = objc_msgSend_geometry(v3, v4, v5);
  objc_msgSend_size(v6, v7, v8);
  TSURectWithSize();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)convertNaturalRectToUnscaledCanvas:(CGRect)canvas
{
  height = canvas.size.height;
  width = canvas.size.width;
  y = canvas.origin.y;
  x = canvas.origin.x;
  v8 = objc_msgSend_layout(self, a2, v3);
  objc_msgSend_convertNaturalRectToUnscaledCanvas_(v8, v9, v10, x, y, width, height);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)convertNaturalRectFromUnscaledCanvas:(CGRect)canvas
{
  height = canvas.size.height;
  width = canvas.size.width;
  y = canvas.origin.y;
  x = canvas.origin.x;
  v8 = objc_msgSend_layout(self, a2, v3);
  objc_msgSend_convertNaturalRectFromUnscaledCanvas_(v8, v9, v10, x, y, width, height);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGPath)newPathInScaledCanvasFromNaturalRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  Mutable = CGPathCreateMutable();
  v11 = objc_msgSend_layout(self, v9, v10);
  v14 = v11;
  if (v11)
  {
    objc_msgSend_transformInRoot(v11, v12, v13);
  }

  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  objc_msgSend_viewScale(WeakRetained, v16, v17);

  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  CGRectGetMinX(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  CGRectGetMinY(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  CGRectGetMaxX(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  CGRectGetMinY(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  CGRectGetMaxX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  CGRectGetMaxY(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  CGRectGetMinX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  CGRectGetMaxY(v26);
  CGPathMoveToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPoint)convertNaturalPointToUnscaledCanvas:(CGPoint)canvas
{
  y = canvas.y;
  x = canvas.x;
  v4 = objc_msgSend_layout(self, a2, v3);
  v7 = v4;
  if (v4)
  {
    objc_msgSend_transformInRoot(v4, v5, v6);
    v8 = v16;
    v9 = v17;
    v10 = v18;
  }

  else
  {
    v10 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  v15 = vaddq_f64(v10, vmlaq_n_f64(vmulq_n_f64(v9, y), v8, x));

  v12 = v15.f64[1];
  v11 = v15.f64[0];
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)convertNaturalPointFromUnscaledCanvas:(CGPoint)canvas
{
  y = canvas.y;
  x = canvas.x;
  v6 = objc_msgSend_layout(self, a2, v3);
  objc_msgSend_convertNaturalPointFromUnscaledCanvas_(v6, v7, v8, x, y);
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGRect)frameInUnscaledCanvas
{
  v3 = objc_msgSend_layout(self, a2, v2);
  objc_msgSend_frameInRoot(v3, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)frameInUnscaledCanvasForMarqueeSelecting
{
  objc_msgSend_frameInUnscaledCanvas(self, a2, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  objc_msgSend_titleFrameInUnscaledCanvas(self, v12, v13);
  v40.origin.x = v14;
  v40.origin.y = v15;
  v40.size.width = v16;
  v40.size.height = v17;
  v37.origin.x = v5;
  v37.origin.y = v7;
  v37.size.width = v9;
  v37.size.height = v11;
  v38 = CGRectUnion(v37, v40);
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  objc_msgSend_captionFrameInUnscaledCanvas(self, v22, v23);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = x;
  v33 = y;
  v34 = width;
  v35 = height;

  return CGRectUnion(*&v32, *&v25);
}

- (CGRect)titleFrameInUnscaledCanvas
{
  v3 = *MEMORY[0x277CBF398];
  v4 = *(MEMORY[0x277CBF398] + 8);
  v5 = *(MEMORY[0x277CBF398] + 16);
  v6 = *(MEMORY[0x277CBF398] + 24);
  objc_opt_class();
  v9 = objc_msgSend_info(self, v7, v8);
  v10 = TSUDynamicCast();
  v13 = objc_msgSend_title(v10, v11, v12);

  if (v13)
  {
    v16 = objc_msgSend_layout(self, v14, v15);
    v19 = objc_msgSend_layoutController(v16, v17, v18);
    v21 = objc_msgSend_layoutForInfo_childOfLayout_(v19, v20, v13, v16);

    if (v21)
    {
      objc_msgSend_frameInRoot(v21, v22, v23);
      v3 = v24;
      v4 = v25;
      v5 = v26;
      v6 = v27;
    }

    else
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSDRep titleFrameInUnscaledCanvas]");
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDRep.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 652, 0, "invalid nil value for '%{public}s'", "titleLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
    }
  }

  v35 = v3;
  v36 = v4;
  v37 = v5;
  v38 = v6;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (CGRect)captionFrameInUnscaledCanvas
{
  v3 = *MEMORY[0x277CBF398];
  v4 = *(MEMORY[0x277CBF398] + 8);
  v5 = *(MEMORY[0x277CBF398] + 16);
  v6 = *(MEMORY[0x277CBF398] + 24);
  objc_opt_class();
  v9 = objc_msgSend_info(self, v7, v8);
  v10 = TSUDynamicCast();
  v13 = objc_msgSend_caption(v10, v11, v12);

  if (v13)
  {
    v16 = objc_msgSend_layout(self, v14, v15);
    v19 = objc_msgSend_layoutController(v16, v17, v18);
    v21 = objc_msgSend_layoutForInfo_childOfLayout_(v19, v20, v13, v16);

    if (v21)
    {
      objc_msgSend_frameInRoot(v21, v22, v23);
      v3 = v24;
      v4 = v25;
      v5 = v26;
      v6 = v27;
    }

    else
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSDRep captionFrameInUnscaledCanvas]");
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDRep.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 668, 0, "invalid nil value for '%{public}s'", "captionLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
    }
  }

  v35 = v3;
  v36 = v4;
  v37 = v5;
  v38 = v6;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (CGRect)layerFrameInScaledCanvas
{
  (MEMORY[0x2821F9670])(self, sel_i_layerFrameInScaledCanvasIgnoringDragging);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)i_layerFrameInScaledCanvasIgnoringDragging
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  objc_msgSend_frameInUnscaledCanvas(self, v4, v5);
  objc_msgSend_convertUnscaledToBoundsRect_(WeakRetained, v6, v7);
  v17 = CGRectIntegral(v16);
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)layerFrameInScaledCanvasRelativeToParent
{
  objc_msgSend_layerFrameInScaledCanvas(self, a2, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v14 = objc_msgSend_parentRep(self, v12, v13);

  if (v14)
  {
    v17 = objc_msgSend_parentRep(self, v15, v16);
    objc_msgSend_layerFrameInScaledCanvas(v17, v18, v19);
    TSUSubtractPoints();
    v5 = v20;
    v7 = v21;
  }

  v22 = v5;
  v23 = v7;
  v24 = v9;
  v25 = v11;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (NSArray)layoutsForChildReps
{
  v3 = objc_msgSend_layout(self, a2, v2);
  v6 = objc_msgSend_children(v3, v4, v5);

  return v6;
}

- (void)updateChildrenFromLayout
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_childReps(self, a2, v2);
  v7 = objc_msgSend_layoutsForChildReps(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);
  v55 = v7;
  if (v10 != objc_msgSend_count(v4, v11, v12))
  {
LABEL_14:
    v15 = objc_msgSend_canvas(self, v13, v14);
    v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v33 = v7;
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v56, v64, 16);
    if (v35)
    {
      v37 = v35;
      v38 = *v57;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v57 != v38)
          {
            objc_enumerationMutation(v33);
          }

          v40 = *(*(&v56 + 1) + 8 * i);
          v41 = objc_msgSend_repForLayout_(v15, v36, v40);
          if (v41)
          {
            v44 = v41;
            objc_msgSend_addObject_(v32, v42, v41);
          }

          else
          {
            v46 = objc_alloc(objc_msgSend_repClassOverride(v40, v42, v43));
            v44 = objc_msgSend_initWithLayout_canvas_(v46, v47, v40, v15);
            if (v44)
            {
              objc_msgSend_addObject_(v32, v45, v44);
            }
          }

          objc_msgSend_setParentRep_(v44, v45, self);
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v56, v64, 16);
      }

      while (v37);
    }

    objc_msgSend_orderRepsForLayout_(v15, v48, v32);
    objc_msgSend_p_setChildReps_(self, v49, v32);

LABEL_26:
    v7 = v55;
    goto LABEL_27;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v15 = v7;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v60, v65, 16);
  if (v17)
  {
    v19 = v17;
    v20 = 0;
    v21 = *v61;
    while (2)
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v61 != v21)
        {
          objc_enumerationMutation(v15);
        }

        v23 = *(*(&v60 + 1) + 8 * j);
        v24 = objc_msgSend_objectAtIndexedSubscript_(v4, v18, v20);
        v27 = objc_msgSend_layout(v24, v25, v26);
        v30 = v27;
        if (v27 != v23)
        {

LABEL_13:
          v7 = v55;
          goto LABEL_14;
        }

        v31 = objc_msgSend_parentRep(v24, v28, v29);

        if (v31 != self)
        {
          goto LABEL_13;
        }

        ++v20;
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v60, v65, 16);
      if (v19)
      {
        continue;
      }

      goto LABEL_26;
    }
  }

LABEL_27:

  v52 = objc_msgSend_childReps(self, v50, v51);
  objc_msgSend_makeObjectsPerformSelector_(v52, v53, a2);
}

- (void)p_setChildReps:(id)reps
{
  v48 = *MEMORY[0x277D85DE8];
  repsCopy = reps;
  if ((objc_msgSend_isEqual_(repsCopy, v5, self->mChildReps) & 1) == 0)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v8 = objc_msgSend_initWithArray_(v6, v7, repsCopy);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v9 = self->mChildReps;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v42, v47, 16);
    if (v11)
    {
      v13 = v11;
      v14 = *v43;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v43 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v42 + 1) + 8 * i);
          if ((objc_msgSend_containsObject_(v8, v12, v16) & 1) == 0)
          {
            v18 = objc_msgSend_parentRep(v16, v12, v17);

            if (v18 == self)
            {
              objc_msgSend_setParentRep_(v16, v12, 0);
            }
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v42, v47, 16);
      }

      while (v13);
    }

    if (self->mChildReps)
    {
      v19 = objc_alloc(MEMORY[0x277CBEB98]);
      v21 = objc_msgSend_initWithArray_(v19, v20, self->mChildReps);
    }

    else
    {
      v21 = 0;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v22 = repsCopy;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v38, v46, 16);
    if (v24)
    {
      v26 = v24;
      v27 = *v39;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v39 != v27)
          {
            objc_enumerationMutation(v22);
          }

          v29 = *(*(&v38 + 1) + 8 * j);
          if ((objc_msgSend_containsObject_(v21, v25, v29, v38) & 1) == 0)
          {
            v31 = objc_msgSend_parentRep(v29, v25, v30);
            objc_msgSend_removeChildRep_(v31, v32, v29);

            objc_msgSend_setParentRep_(v29, v33, self);
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v38, v46, 16);
      }

      while (v26);
    }

    v36 = objc_msgSend_mutableCopy(v22, v34, v35);
    mChildReps = self->mChildReps;
    self->mChildReps = v36;
  }
}

- (void)removeChildRep:(id)rep
{
  repCopy = rep;
  v5 = objc_msgSend_indexOfObjectIdenticalTo_(self->mChildReps, v4, repCopy);
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_removeObjectAtIndex_(self->mChildReps, v6, v5);
    objc_msgSend_setParentRep_(repCopy, v7, 0);
  }
}

- (BOOL)isDrawingInFlippedContext
{
  v4 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2);
  v7 = objc_msgSend_threadDictionary(v4, v5, v6);
  v9 = objc_msgSend_valueWithPointer_(MEMORY[0x277CCAE60], v8, self);
  v11 = objc_msgSend_objectForKey_(v7, v10, v9);

  if (v11)
  {
    v14 = objc_msgSend_BOOLValue(v11, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CGRect)i_clipRectRecursive
{
  v63 = *MEMORY[0x277D85DE8];
  objc_msgSend_clipRect(self, a2, v2);
  x = v64.origin.x;
  y = v64.origin.y;
  width = v64.size.width;
  height = v64.size.height;
  v10 = 0x277D81000uLL;
  if (CGRectIsNull(v64))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDRep i_clipRectRecursive]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 1947, 0, "This rep's clipRect should not be null.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = objc_msgSend_childReps(self, v8, v9);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v58, v62, 16);
  if (v19)
  {
    v22 = v19;
    v23 = "[TSDRep i_clipRectRecursive]";
    v24 = *v59;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v59 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v58 + 1) + 8 * i);
        v29 = objc_msgSend_layout(v26, v20, v21);
        if (!v29)
        {
          v30 = *(v10 + 336);
          objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v23);
          v31 = v10;
          v33 = v32 = v23;
          v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDRep.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v36, v33, v35, 1951, 0, "invalid nil value for '%{public}s'", "currentChildLayout");

          v23 = v32;
          v10 = v31;
          objc_msgSend_logBacktraceThrottled(*(v31 + 336), v37, v38);
        }

        objc_msgSend_i_clipRectRecursive(v26, v27, v28);
        v39 = v65.origin.x;
        v40 = v65.origin.y;
        v41 = v65.size.width;
        v42 = v65.size.height;
        if (CGRectIsNull(v65))
        {
          v45 = *(v10 + 336);
          v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v23);
          v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDRep.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v49, v46, v48, 1955, 0, "The child's i_clipRectRecursive should not be null.");

          objc_msgSend_logBacktraceThrottled(*(v10 + 336), v50, v51);
        }

        if (v29)
        {
          objc_msgSend_transform(v29, v43, v44);
        }

        else
        {
          memset(&v57, 0, sizeof(v57));
        }

        v66.origin.x = v39;
        v66.origin.y = v40;
        v66.size.width = v41;
        v66.size.height = v42;
        v70 = CGRectApplyAffineTransform(v66, &v57);
        v67.origin.x = x;
        v67.origin.y = y;
        v67.size.width = width;
        v67.size.height = height;
        v68 = CGRectUnion(v67, v70);
        x = v68.origin.x;
        y = v68.origin.y;
        width = v68.size.width;
        height = v68.size.height;
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v58, v62, 16);
    }

    while (v22);
  }

  v52 = x;
  v53 = y;
  v54 = width;
  v55 = height;
  result.size.height = v55;
  result.size.width = v54;
  result.origin.y = v53;
  result.origin.x = v52;
  return result;
}

- (void)recursivelyDrawInContext:(CGContext *)context keepingChildrenPassingTest:(id)test
{
  testCopy = test;
  v7 = TSDCGContextGetPdfTagger(context);
  objc_msgSend_beginObject_(v7, v8, self);
  v11 = objc_msgSend_layout(self, v9, v10);
  v14 = objc_msgSend_geometry(v11, v12, v13);
  v17 = v14;
  if (v14)
  {
    objc_msgSend_transform(v14, v15, v16);
  }

  else
  {
    memset(&v35, 0, sizeof(v35));
  }

  CGContextConcatCTM(context, &v35);

  objc_msgSend_clipRect(self, v18, v19);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v30 = objc_msgSend_masksToBounds(self, v28, v29);
  v31 = v30;
  if (v30)
  {
    CGContextClipToRectSafe();
  }

  ClipBoundingBox = CGContextGetClipBoundingBox(context);
  v36.origin.x = v21;
  v36.origin.y = v23;
  v36.size.width = v25;
  v36.size.height = v27;
  if (CGRectIntersectsRect(v36, ClipBoundingBox))
  {
    CGContextSaveGState(context);
    if ((v31 & 1) == 0)
    {
      CGContextClipToRectSafe();
    }

    objc_msgSend_drawInContext_(self, v33, context, *&v35.a, *&v35.c, *&v35.tx);
    CGContextRestoreGState(context);
  }

  objc_msgSend_recursivelyDrawChildrenInContext_keepingChildrenPassingTest_(self, v32, context, testCopy, *&v35.a, *&v35.c, *&v35.tx);
  objc_msgSend_endObject_(v7, v34, self);
}

- (void)recursivelyDrawChildrenInContext:(CGContext *)context keepingChildrenPassingTest:(id)test
{
  v23 = *MEMORY[0x277D85DE8];
  testCopy = test;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = objc_msgSend_childReps(self, v7, v8, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v18, v22, 16);
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        if (!testCopy || testCopy[2](testCopy, *(*(&v18 + 1) + 8 * v14)))
        {
          CGContextSaveGState(context);
          objc_msgSend_recursivelyDrawInContext_keepingChildrenPassingTest_(v15, v17, context, testCopy);
          CGContextRestoreGState(context);
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v16, &v18, v22, 16);
    }

    while (v12);
  }
}

- (CGRect)boundsForStandardKnobs
{
  v3 = objc_msgSend_layout(self, a2, v2);
  objc_msgSend_boundsForStandardKnobs(v3, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (double)contentsScale
{
  v3 = objc_msgSend_canvas(self, a2, v2);
  objc_msgSend_contentsScale(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (CGAffineTransform)unRotatedTransform:(SEL)transform
{
  v7 = *&a4->c;
  *&v24.a = *&a4->a;
  *&v24.c = v7;
  *&v24.tx = *&a4->tx;
  TSUTransformAngleInDegrees();
  v9 = v8;
  objc_msgSend_centerForRotation(self, v10, v11);
  v13 = v12;
  v15 = v14;
  v16 = *(MEMORY[0x277CBF2C0] + 16);
  *&v24.a = *MEMORY[0x277CBF2C0];
  *&v24.c = v16;
  *&v24.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&t1.a = *&v24.a;
  *&t1.c = v16;
  *&t1.tx = *&v24.tx;
  CGAffineTransformTranslate(&v24, &t1, v12, v15);
  v22 = v24;
  CGAffineTransformRotate(&t1, &v22, v9 * -3.14159265 / 180.0);
  v24 = t1;
  v22 = t1;
  CGAffineTransformTranslate(&t1, &v22, -v13, -v15);
  v24 = t1;
  v17 = *&a4->c;
  *&t1.a = *&a4->a;
  *&t1.c = v17;
  *&t1.tx = *&a4->tx;
  if (TSUIsTransformFlipped())
  {
    v18 = *&a4->c;
    *&t1.a = *&a4->a;
    *&t1.c = v18;
    *&t1.tx = *&a4->tx;
    *&v22.a = *&v24.a;
    *&v22.c = *&v24.c;
    v19 = *&v24.tx;
  }

  else
  {
    t1 = v24;
    v20 = *&a4->c;
    *&v22.a = *&a4->a;
    *&v22.c = v20;
    v19 = *&a4->tx;
  }

  *&v22.tx = v19;
  return CGAffineTransformConcat(retstr, &t1, &v22);
}

- (void)setTextureAttributes:(id)attributes textureBounds:(CGRect)bounds
{
  attributesCopy = attributes;
  v8 = objc_msgSend_info(self, v6, v7);
  v11 = objc_msgSend_geometry(v8, v9, v10);
  objc_msgSend_angle(v11, v12, v13);
  objc_msgSend_setTextureAngle_(attributesCopy, v15, v16, v14 * 0.0174532925);

  v19 = objc_msgSend_canvas(self, v17, v18);
  v22 = objc_msgSend_topLevelReps(v19, v20, v21);
  v24 = objc_msgSend_indexOfObject_(v22, v23, self);
  objc_msgSend_setTextureZOrder_(attributesCopy, v25, v24);

  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v28 = objc_msgSend_layout(self, v26, v27);
  v31 = v28;
  if (v28)
  {
    objc_msgSend_transformInRoot(v28, v29, v30);
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
  }

  v32 = TSUIsTransformFlipped();
  objc_msgSend_setIsFlippedHorizontally_(attributesCopy, v33, v32, v34, v35, v36);
}

- (id)textureForDescription:(id)description
{
  descriptionCopy = description;
  isMagicMove = objc_msgSend_isMagicMove(descriptionCopy, v5, v6);
  memset(&v77, 0, sizeof(v77));
  v10 = objc_msgSend_layout(self, v8, v9);
  v13 = v10;
  if (v10)
  {
    objc_msgSend_transformInRoot(v10, v11, v12);
  }

  else
  {
    memset(&v77, 0, sizeof(v77));
  }

  if (isMagicMove)
  {
    v75 = v77;
    objc_msgSend_unRotatedTransform_(self, v14, &v75);
    v77 = v76;
  }

  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  objc_msgSend_viewScale(WeakRetained, v16, v17);
  v19 = v18;

  objc_msgSend_clipRect(self, v20, v21);
  x = v79.origin.x;
  y = v79.origin.y;
  width = v79.size.width;
  height = v79.size.height;
  v76 = v77;
  CGRectApplyAffineTransform(v79, &v76);
  TSUMultiplyRectScalar();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  objc_msgSend_naturalBounds(self, v33, v34);
  v76 = v77;
  CGRectApplyAffineTransform(v80, &v76);
  TSUMultiplyRectScalar();
  v81.origin.x = v26;
  v81.origin.y = v28;
  v81.size.width = v30;
  v81.size.height = v32;
  v82 = CGRectIntegral(v81);
  v35 = v82.origin.x;
  v36 = v82.origin.y;
  v37 = v82.size.width;
  v38 = v82.size.height;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = sub_2767C2C88;
  v65[3] = &unk_27A6CDF18;
  v68 = v82;
  v69 = x;
  v70 = y;
  v71 = width;
  v72 = height;
  v73 = v19;
  v74 = v77;
  v66 = descriptionCopy;
  selfCopy = self;
  v39 = descriptionCopy;
  v40 = MEMORY[0x277C9C8B0](v65);
  v41 = objc_alloc_init(TSDTextureSet);
  objc_msgSend_setRep_(v41, v42, self);
  objc_msgSend_setObjectType_(v41, v43, 0);
  v44 = [TSDTexturedRectangle alloc];
  TSUSubtractPoints();
  v48 = objc_msgSend_initWithSize_offset_renderBlock_(v44, v45, v40, v37, v38, v46, v47);
  objc_msgSend_setIsMagicMove_(v41, v49, isMagicMove);
  objc_msgSend_setTextureType_(v48, v50, 5);
  objc_msgSend_setTextureOpacity_(v48, v51, v52, 1.0);
  objc_msgSend_addRenderable_(v41, v53, v48);
  objc_msgSend_opacity(self, v54, v55);
  objc_msgSend_setTextureOpacity_(v41, v56, v57);
  objc_msgSend_centerForRotation(self, v58, v59);
  objc_msgSend_setCenter_(v41, v60, v61);
  objc_msgSend_setTextureAttributes_textureBounds_(self, v62, v41, v35, v36, v37, v38);

  return v41;
}

- (void)addChildTexturesToTextureSet:(id)set forDescription:(id)description passingTest:(id)test
{
  setCopy = set;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2767C2E20;
  v11[3] = &unk_27A6CDF40;
  v12 = setCopy;
  v9 = setCopy;
  objc_msgSend_enumerateChildTexturesForDescription_passingTest_withBlock_(self, v10, description, test, v11);
}

- (void)enumerateChildTexturesForDescription:(id)description passingTest:(id)test withBlock:(id)block
{
  v71 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  testCopy = test;
  blockCopy = block;
  v12 = objc_msgSend_childReps(self, v10, v11);
  v15 = objc_msgSend_canvas(self, v13, v14);
  objc_msgSend_viewScale(v15, v16, v17);

  memset(&v68, 0, sizeof(v68));
  v20 = objc_msgSend_layout(self, v18, v19);
  v23 = v20;
  if (v20)
  {
    objc_msgSend_transformInRoot(v20, v21, v22);
  }

  else
  {
    memset(&v68, 0, sizeof(v68));
  }

  objc_msgSend_naturalBounds(self, v24, v25);
  v67 = v68;
  CGRectApplyAffineTransform(v72, &v67);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v12;
  v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v63, v70, 16);
  if (v57)
  {
    TSUMultiplyRectScalar();
    v56 = *v64;
    do
    {
      v29 = 0;
      v30 = 0uLL;
      do
      {
        if (*v64 != v56)
        {
          objc_enumerationMutation(obj);
          v30 = 0uLL;
        }

        v31 = *(*(&v63 + 1) + 8 * v29);
        if (!testCopy || (v32 = testCopy[2](testCopy, *(*(&v63 + 1) + 8 * v29), 0), v30 = 0uLL, v32))
        {
          *&v67.c = v30;
          *&v67.tx = v30;
          *&v67.a = v30;
          v33 = objc_msgSend_layout(v31, v27, v28);
          v36 = v33;
          if (v33)
          {
            objc_msgSend_transformInRoot(v33, v34, v35);
          }

          else
          {
            memset(&v67, 0, sizeof(v67));
          }

          objc_msgSend_naturalBounds(v31, v37, v38);
          v62 = v67;
          CGRectApplyAffineTransform(v73, &v62);
          v40 = objc_msgSend_textureForDescription_(v31, v39, descriptionCopy);
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v43 = objc_msgSend_allTextures(v40, v41, v42);
          v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v58, v69, 16);
          if (v45)
          {
            v46 = v45;
            TSUMultiplyRectScalar();
            TSUSubtractPoints();
            v49 = *v59;
            do
            {
              for (i = 0; i != v46; ++i)
              {
                if (*v59 != v49)
                {
                  objc_enumerationMutation(v43);
                }

                v51 = *(*(&v58 + 1) + 8 * i);
                objc_msgSend_offset(v51, v47, v48);
                TSUAddPoints();
                objc_msgSend_setOffset_(v51, v52, v53);
                blockCopy[2](blockCopy, v51);
              }

              v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v47, &v58, v69, 16);
            }

            while (v46);
          }

          v30 = 0uLL;
        }

        ++v29;
      }

      while (v29 != v57);
      v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v63, v70, 16, 0.0);
    }

    while (v57);
  }
}

- (CGRect)frameForMagicMove
{
  objc_msgSend_naturalBounds(self, a2, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  memset(&v53, 0, sizeof(v53));
  v14 = objc_msgSend_layout(self, v12, v13);
  v17 = v14;
  if (v14)
  {
    objc_msgSend_transformInRoot(v14, v15, v16);
  }

  else
  {
    memset(&v53, 0, sizeof(v53));
  }

  objc_msgSend_centerForRotation(self, v18, v19);
  v21 = v20;
  v23 = v22;
  v26 = objc_msgSend_layout(self, v24, v25);
  v29 = v26;
  if (v26)
  {
    objc_msgSend_transformInRoot(v26, v27, v28);
  }

  else
  {
    memset(&v52, 0, sizeof(v52));
  }

  v30 = TSUIsTransformFlipped();

  v52 = v53;
  TSUTransformAngleInDegrees();
  if (v30)
  {
    v32 = v31;
  }

  else
  {
    v32 = -v31;
  }

  v33 = *(MEMORY[0x277CBF2C0] + 16);
  *&v52.a = *MEMORY[0x277CBF2C0];
  *&v52.c = v33;
  *&v52.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v51.a = *&v52.a;
  *&v51.c = v33;
  *&v51.tx = *&v52.tx;
  CGAffineTransformTranslate(&v52, &v51, v21, v23);
  t1 = v52;
  CGAffineTransformRotate(&v51, &t1, v32 * 3.14159265 / 180.0);
  v52 = v51;
  t1 = v51;
  CGAffineTransformTranslate(&v51, &t1, -v21, -v23);
  v52 = v51;
  memset(&v51, 0, sizeof(v51));
  t1 = v52;
  v49 = v53;
  CGAffineTransformConcat(&v51, &t1, &v49);
  t1 = v51;
  v54.origin.x = v5;
  v54.origin.y = v7;
  v54.size.width = v9;
  v54.size.height = v11;
  CGRectApplyAffineTransform(v54, &t1);
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  objc_msgSend_viewScale(WeakRetained, v35, v36);
  TSUMultiplyRectScalar();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v45 = v38;
  v46 = v40;
  v47 = v42;
  v48 = v44;
  result.size.height = v48;
  result.size.width = v47;
  result.origin.y = v46;
  result.origin.x = v45;
  return result;
}

- (NSObject)dynamicOverride
{
  v4 = objc_msgSend_canvas(self, a2, v2);
  v7 = objc_msgSend_delegate(v4, v5, v6);
  v8 = TSUProtocolCast();

  if (v8)
  {
    v10 = objc_msgSend_dynamicOverrideForRep_(v8, v9, self, &unk_2885BDF70);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CGRect)rectToClipChildRepRenderables
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)isLocked
{
  v3 = objc_msgSend_info(self, a2, v2);
  v4 = sub_27679ACC0(v3);

  return v4;
}

- (CGPoint)centerForRotation
{
  v3 = objc_msgSend_layout(self, a2, v2);
  objc_msgSend_centerForRotation(v3, v4, v5);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (NSArray)hyperlinkRegions
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  if (v6 && (objc_msgSend_hyperlinkURL(v6, v7, v8), (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v12 = v9, objc_msgSend_hyperlinkURL(v6, v10, v11), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend_absoluteString(v13, v14, v15), v16 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend_length(v16, v17, v18), v16, v13, v12, v19))
  {
    objc_opt_class();
    v22 = objc_msgSend_layout(self, v20, v21);
    v23 = TSUDynamicCast();

    if (v23)
    {
      v26 = objc_msgSend_i_wrapPath(v23, v24, v25);
      v27 = [TSDHyperlinkRegion alloc];
      v30 = objc_msgSend_hyperlinkURL(v6, v28, v29);
      v32 = objc_msgSend_initWithURL_bezierPath_(v27, v31, v30, v26);

      v34 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v33, v32);
    }

    else
    {
      v34 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v34 = MEMORY[0x277CBEBF8];
  }

  return v34;
}

- (id)p_comment
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  v9 = objc_msgSend_comment(v6, v7, v8);

  return v9;
}

- (TSDCanvas)canvas
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);

  return WeakRetained;
}

- (TSDRep)parentRep
{
  WeakRetained = objc_loadWeakRetained(&self->mParentRep);

  return WeakRetained;
}

@end
@interface TSDLayout
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)descendentWrappablesContainsWrappable:(id)wrappable;
- (BOOL)i_anyAncestorCurrentlyBeingRotatedWantsNormalLayoutDuringDynamicRotation;
- (BOOL)isInGroup;
- (BOOL)isSelectable;
- (BOOL)resizeMayChangeAspectRatio;
- (BOOL)shouldUseCaptionEdgeInsetsInInterimPosition;
- (BOOL)supportsParentFlipping;
- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)space;
- (CGAffineTransform)originalPureTransformInRoot;
- (CGAffineTransform)originalTransformInRoot;
- (CGAffineTransform)p_additionalTransformForInlineRoot;
- (CGAffineTransform)pureTransformInRoot;
- (CGPoint)activityLineUnscaledEndPointForSearchReference:(id)reference;
- (CGPoint)alignmentFrameOriginForFixingInterimPosition;
- (CGPoint)capturedInfoPositionForAttachment;
- (CGPoint)centerForConnecting;
- (CGPoint)centerForRotation;
- (CGPoint)commentPoleUnscaledOffset;
- (CGPoint)convertNaturalPointFromUnscaledCanvas:(CGPoint)canvas;
- (CGPoint)convertNaturalPointToUnscaledCanvas:(CGPoint)canvas;
- (CGPoint)minimumPositionOffset;
- (CGPoint)unscaledCommentPoleOrigin;
- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)transform;
- (CGRect)boundsForStandardKnobs;
- (CGRect)convertNaturalRectFromUnscaledCanvas:(CGRect)canvas;
- (CGRect)convertNaturalRectToUnscaledCanvas:(CGRect)canvas;
- (CGRect)frameForCaptionPositioning;
- (CGRect)frameForCulling;
- (CGRect)frameForCullingWithBaseFrame:(CGRect)frame additionalTransform:(CGAffineTransform *)transform;
- (CGRect)i_frameForCullingWithAdditionalTransform:(CGAffineTransform *)transform;
- (CGRect)i_takeDirtyRect;
- (CGRect)initialBoundsForStandardKnobs;
- (CGRect)rectInRootForPresentingAnnotationPopoverForSelectionPath:(id)path;
- (CGRect)rectInRootForSelectionAnchorRectOfSelectionPath:(id)path;
- (CGRect)rectInRootForSelectionPath:(id)path;
- (CGRect)rectInRootForZoomingToSelectionPath:(id)path;
- (CGRect)rectInRootOfAutoZoomContextOfSelectionPath:(id)path;
- (CGSize)maximumFrameSizeForChild:(id)child;
- (CGSize)maximumInlineFrameSize;
- (CGSize)minimumSize;
- (CGSize)p_newMaxInlineFrameSize;
- (NSArray)dependentLayouts;
- (NSObject)dynamicOverride;
- (TSDInfoGeometry)initialInfoGeometry;
- (TSDLayout)initWithInfo:(id)info;
- (TSDLayoutGeometry)dynamicGeometry;
- (TSDLayoutGeometry)inspectorGeometry;
- (TSDLayoutGeometry)originalPureGeometry;
- (TSDLayoutGeometry)pureGeometry;
- (TSDLayoutGeometry)pureGeometryInParent;
- (TSDLayoutGeometry)pureGeometryInRoot;
- (TSUBezierPath)i_wrapPath;
- (UIEdgeInsets)captionEdgeInsets;
- (double)inspectorGeometryAngleInDegrees;
- (double)percentOfUnscaledRectContainedInParentRep:(CGRect)rep;
- (double)scaleForInlineClampingUnrotatedSize:(CGSize)size withTransform:(CGAffineTransform *)transform;
- (id)childInfosForChildLayouts;
- (id)computeInfoGeometryFromPureLayoutGeometry:(id)geometry;
- (id)computeLayoutGeometry;
- (id)containedPencilAnnotations;
- (id)containedPencilAnnotationsIncludingChildren:(BOOL)children;
- (id)i_captionAndTitleLayouts;
- (id)layoutController;
- (id)layoutGeometryFromInfo;
- (id)rootLayout;
- (id)unscaledCommentFlagAnchorInfoForSearchReference:(id)reference;
- (id)wrapInvalidationParent;
- (void)addConnectedLayout:(id)layout;
- (void)beginDrag;
- (void)beginDynamicOperation;
- (void)calculateAndSetPointsToSearchReference:(id)reference;
- (void)dragBy:(CGPoint)by;
- (void)dragByUnscaled:(CGPoint)unscaled;
- (void)endDynamicOperation;
- (void)i_counterScrollingChildLayoutsDidChange;
- (void)i_recursivelyClearInvalidationCache;
- (void)insertChild:(id)child atIndex:(unint64_t)index;
- (void)invalidate;
- (void)invalidateChildren;
- (void)invalidateFrame;
- (void)invalidateInlineAndDepedentsForInlineFrameResize;
- (void)invalidateSize;
- (void)p_calculateClampModelValuesWithAdditionalTransform:(CGAffineTransform *)transform andPerformBlock:(id)block;
- (void)p_invalidateConnectedLayouts;
- (void)p_invalidateDescendentWrapPaths;
- (void)p_invalidateDescendentWrapPathsInRoot;
- (void)p_recursiveInvalidate;
- (void)p_registerWithLayoutController:(id)controller;
- (void)p_unregisterWithLayoutController:(id)controller;
- (void)p_updateDescendentWrapPathsWithTransform:(CGAffineTransform *)transform;
- (void)processChangedProperty:(int)property;
- (void)recursivelyAddLayoutAndChildrenToSet:(id)set;
- (void)setDynamicGeometry:(id)geometry;
- (void)setGeometry:(id)geometry;
- (void)setNeedsDisplay;
- (void)setParent:(id)parent;
- (void)transferLayoutGeometryToInfo:(id)info withAdditionalTransform:(CGAffineTransform *)transform assertIfInDocument:(BOOL)document;
- (void)unregisterFromLayoutController;
- (void)updateChildrenFromInfo;
- (void)updateMaximumInlineFrameSize;
- (void)validate;
- (void)validateFromLastInterimPosition;
@end

@implementation TSDLayout

- (CGPoint)unscaledCommentPoleOrigin
{
  objc_msgSend_rectInRootForCalculatingActivityLineEndpoint(self, a2, v2);
  objc_msgSend_commentPoleUnscaledOffset(self, v4, v5);

  TSUAddPoints();
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)activityLineUnscaledEndPointForSearchReference:(id)reference
{
  v3 = *MEMORY[0x277D814D0];
  v4 = *(MEMORY[0x277D814D0] + 8);
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)unscaledCommentFlagAnchorInfoForSearchReference:(id)reference
{
  objc_msgSend_rectInRootForCalculatingActivityLineEndpoint(self, a2, reference);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = objc_alloc(MEMORY[0x277D80638]);
  isVertical = objc_msgSend_initWithLeftAnchor_rightAnchor_isVertical_(v9, v10, 0, v4, v6, v4 + v8, v6);

  return isVertical;
}

- (CGRect)rectInRootForPresentingAnnotationPopoverForSelectionPath:(id)path
{
  v3 = objc_msgSend_geometryInRoot(self, a2, path);
  objc_msgSend_frame(v3, v4, v5);
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

- (id)containedPencilAnnotations
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  v9 = objc_msgSend_pencilAnnotations(v6, v7, v8);
  v12 = objc_msgSend_mutableCopy(v9, v10, v11);

  return v12;
}

- (id)containedPencilAnnotationsIncludingChildren:(BOOL)children
{
  childrenCopy = children;
  v27 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, children);
  v8 = objc_msgSend_containedPencilAnnotations(self, v6, v7);
  objc_msgSend_addObjectsFromArray_(v5, v9, v8);

  if (childrenCopy)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = objc_msgSend_childrenForPencilAnnotations(self, v10, v11, 0);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v22, v26, 16);
    if (v14)
    {
      v16 = v14;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = objc_msgSend_containedPencilAnnotationsIncludingChildren_(*(*(&v22 + 1) + 8 * i), v15, 1);
          objc_msgSend_addObjectsFromArray_(v5, v20, v19);
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v22, v26, 16);
      }

      while (v16);
    }
  }

  return v5;
}

- (CGPoint)commentPoleUnscaledOffset
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDLayout(Annotations) commentPoleUnscaledOffset]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDLayout+Annotations.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 182, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSDLayout(Annotations) commentPoleUnscaledOffset]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (TSDLayout)initWithInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = TSDLayout;
  v6 = [(TSDAbstractLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mInfo, info);
    *&v7->mInvalidFlags |= 3u;
    v7->mMaximumInlineFrameSize = vdupq_n_s64(0x7FF8000000000000uLL);
  }

  return v7;
}

- (void)setGeometry:(id)geometry
{
  geometryCopy = geometry;
  v7 = objc_msgSend_geometry(self, v5, v6);
  v9 = v7;
  if (!v7 || (objc_msgSend_isEqual_(v7, v8, geometryCopy) & 1) == 0)
  {
    v24 = &unk_2885A2AF0;
    v10 = TSUProtocolCast();

    if (v10)
    {
      if (v9 && (objc_msgSend_differsInMoreThanTranslationFrom_(v9, v11, geometryCopy, &unk_2885A2AF0) & 1) == 0)
      {
        if (geometryCopy)
        {
          objc_msgSend_transform(geometryCopy, v11, v12, 0.0, 0.0, 0.0);
        }

        objc_msgSend_transform(v9, v11, v12);
        TSUSubtractPoints();
        memset(&v31, 0, sizeof(v31));
        CGAffineTransformMakeTranslation(&v31, v13, v14);
        v17 = objc_msgSend_parent(self, v15, v16);

        if (v17)
        {
          v20 = objc_msgSend_parent(self, v18, v19);
          v23 = v20;
          if (v20)
          {
            objc_msgSend_transformInRoot(v20, v21, v22);
          }

          else
          {
            v28 = 0u;
            v29 = 0u;
            v27 = 0u;
          }

          v26 = v31;
          TSUTransformFromTransformSpace();
          v31 = v30;
        }

        v30 = v31;
        objc_msgSend_p_updateDescendentWrapPathsWithTransform_(self, v18, &v30);
      }

      else
      {
        objc_msgSend_p_invalidateDescendentWrapPathsInRoot(self, v11, v12, v24);
      }
    }
  }

  v25.receiver = self;
  v25.super_class = TSDLayout;
  [(TSDAbstractLayout *)&v25 setGeometry:geometryCopy, v24];
}

- (TSDLayoutGeometry)dynamicGeometry
{
  if (self->mBaseGeometry)
  {
    v4 = objc_msgSend_geometry(self, a2, v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDynamicGeometry:(id)geometry
{
  geometryCopy = geometry;
  v20 = geometryCopy;
  if (!self->mBaseGeometry)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], geometryCopy, "[TSDLayout setDynamicGeometry:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 156, 0, "setting dynamic geometry when not in dynamic operation");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    geometryCopy = v20;
  }

  objc_msgSend_setGeometry_(self, geometryCopy, geometryCopy);
  v14 = objc_msgSend_layoutController(self, v12, v13);
  v17 = objc_msgSend_canvas(v14, v15, v16);
  objc_msgSend_layoutInvalidated(v17, v18, v19);
}

- (CGRect)frameForCulling
{
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v7[0] = *MEMORY[0x277CBF2C0];
  v7[1] = v2;
  v7[2] = *(MEMORY[0x277CBF2C0] + 32);
  objc_msgSend_i_frameForCullingWithAdditionalTransform_(self, a2, v7);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)transform
{
  objc_msgSend_frame(self, a2, transform);
  v4 = *&transform->c;
  *&v5.a = *&transform->a;
  *&v5.c = v4;
  *&v5.tx = *&transform->tx;
  return CGRectApplyAffineTransform(v6, &v5);
}

- (CGRect)i_frameForCullingWithAdditionalTransform:(CGAffineTransform *)transform
{
  v5 = *&transform->c;
  v12 = *&transform->a;
  v13 = v5;
  v14 = *&transform->tx;
  objc_msgSend_baseFrameForFrameForCullingWithAdditionalTransform_(self, a2, &v12);
  v6 = *&transform->c;
  v12 = *&transform->a;
  v13 = v6;
  v14 = *&transform->tx;
  objc_msgSend_frameForCullingWithBaseFrame_additionalTransform_(self, v7, &v12);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)frameForCullingWithBaseFrame:(CGRect)frame additionalTransform:(CGAffineTransform *)transform
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v39 = *MEMORY[0x277D85DE8];
  memset(&v37, 0, sizeof(v37));
  v10 = objc_msgSend_geometry(self, a2, transform);
  v13 = v10;
  if (v10)
  {
    objc_msgSend_transform(v10, v11, v12);
  }

  else
  {
    memset(&v37, 0, sizeof(v37));
  }

  t1 = v37;
  memset(&v36, 0, sizeof(v36));
  v14 = *&transform->c;
  *&t2.a = *&transform->a;
  *&t2.c = v14;
  *&t2.tx = *&transform->tx;
  CGAffineTransformConcat(&v36, &t1, &t2);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = objc_msgSend_children(self, v15, v16, 0);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v30, v38, 16);
  if (v19)
  {
    v22 = v19;
    v23 = *v31;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(v17);
        }

        v25 = *(*(&v30 + 1) + 8 * i);
        if (objc_msgSend_shouldBeIncludedInParentFrameForCulling(v25, v20, v21))
        {
          t1 = v36;
          objc_msgSend_i_frameForCullingWithAdditionalTransform_(v25, v20, &t1);
          v43.origin.x = x;
          v43.origin.y = y;
          v43.size.width = width;
          v43.size.height = height;
          v41 = CGRectUnion(v40, v43);
          x = v41.origin.x;
          y = v41.origin.y;
          width = v41.size.width;
          height = v41.size.height;
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v30, v38, 16);
    }

    while (v22);
  }

  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)invalidate
{
  v26 = *MEMORY[0x277D85DE8];
  if ((*&self->mAlreadyInvalidatedFlags & 1) == 0)
  {
    v4 = objc_msgSend_layoutController(self, a2, v2);
    objc_msgSend_invalidateLayout_(v4, v5, self);

    if (objc_msgSend_layoutState(self, v6, v7))
    {
      v10 = (*&self->mAlreadyInvalidatedFlags & 0xFE) + 1;
    }

    else
    {
      v10 = *&self->mAlreadyInvalidatedFlags & 0xFE;
    }

    *&self->mAlreadyInvalidatedFlags = v10;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = objc_msgSend_dependentLayouts(self, v8, v9, 0);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v21, v25, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v11);
          }

          objc_msgSend_invalidate(*(*(&v21 + 1) + 8 * i), v14, v15);
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v21, v25, 16);
      }

      while (v16);
    }

    objc_msgSend_p_invalidateConnectedLayouts(self, v19, v20);
  }
}

- (void)i_recursivelyClearInvalidationCache
{
  objc_msgSend_i_clearInvalidationCache(self, a2, v2);
  v8 = objc_msgSend_children(self, v5, v6);
  objc_msgSend_makeObjectsPerformSelector_(v8, v7, a2);
}

- (void)insertChild:(id)child atIndex:(unint64_t)index
{
  v14.receiver = self;
  v14.super_class = TSDLayout;
  childCopy = child;
  [(TSDAbstractLayout *)&v14 insertChild:childCopy atIndex:index];
  v9 = objc_msgSend_originPinnedCounterScrollingChildLayouts(self, v7, v8, v14.receiver, v14.super_class);
  v11 = objc_msgSend_containsObject_(v9, v10, childCopy);

  if (v11)
  {
    objc_msgSend_i_counterScrollingChildLayoutsDidChange(self, v12, v13);
  }
}

- (void)i_counterScrollingChildLayoutsDidChange
{
  objc_opt_class();
  v5 = objc_msgSend_parent(self, v3, v4);
  v8 = TSUDynamicCast();

  objc_msgSend_i_counterScrollingChildLayoutsDidChange(v8, v6, v7);
}

- (void)invalidateSize
{
  v39 = *MEMORY[0x277D85DE8];
  if ((*&self->mAlreadyInvalidatedFlags & 2) == 0 && !self->mInvalidatingSize)
  {
    self->mInvalidatingSize = 1;
    *&self->mInvalidFlags |= 2u;
    *&self->mAlreadyInvalidatedFlags = *&self->mAlreadyInvalidatedFlags & 0xFD | (2 * (objc_msgSend_layoutState(self, a2, v2) != 0));
    v6 = objc_msgSend_dependentLayouts(self, v4, v5);
    v9 = objc_msgSend_bidirectionalSizeDependentLayouts(self, v7, v8);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = v6;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v33, v38, 16);
    if (v12)
    {
      v14 = v12;
      v15 = *v34;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          if (objc_msgSend_shouldInvalidateSizeWhenInvalidateSizeOfReliedOnLayout_(v17, v13, self))
          {
            objc_msgSend_invalidateSize(v17, v13, v18);
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v33, v38, 16);
      }

      while (v14);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = v9;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v29, v37, 16);
    if (v21)
    {
      v24 = v21;
      v25 = *v30;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(v19);
          }

          objc_msgSend_invalidateSize(*(*(&v29 + 1) + 8 * j), v22, v23, v29);
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v29, v37, 16);
      }

      while (v24);
    }

    objc_msgSend_invalidate(self, v27, v28);
    self->mInvalidatingSize = 0;
  }
}

- (void)invalidateFrame
{
  objc_msgSend_invalidateSize(self, a2, v2);

  objc_msgSend_invalidatePosition(self, v4, v5);
}

- (void)invalidateInlineAndDepedentsForInlineFrameResize
{
  v37 = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_invalidGeometry(self, a2, v2) & 1) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDLayout invalidateInlineAndDepedentsForInlineFrameResize]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 295, 0, "invalidateInlineAndDepedentsForInlineFrameResize should be called only if self has invalidGeometry.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_msgSend_dependentLayouts(self, v4, v5);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = objc_msgSend_children(self, v14, v15, 0);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v32, v36, 16);
  if (v18)
  {
    v21 = v18;
    v22 = *v33;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v16);
        }

        v24 = *(*(&v32 + 1) + 8 * i);
        v25 = objc_msgSend_info(v24, v19, v20);
        if (objc_msgSend_isInlineWithText(v25, v26, v27))
        {
        }

        else
        {
          v29 = objc_msgSend_indexOfObjectIdenticalTo_(v13, v28, v24);

          if (v29 == 0x7FFFFFFFFFFFFFFFLL)
          {
            continue;
          }
        }

        objc_msgSend_invalidateSize(v24, v19, v20);
        objc_msgSend_invalidateInlineAndDepedentsForInlineFrameResize(v24, v30, v31);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v32, v36, 16);
    }

    while (v21);
  }
}

- (void)updateMaximumInlineFrameSize
{
  objc_msgSend_p_newMaxInlineFrameSize(self, a2, v2);
  v5 = v4;
  v7 = v6;
  objc_msgSend_maximumInlineFrameSize(self, v8, v9);
  if (v5 != v13 || v7 != v12)
  {
    objc_msgSend_setMaximumInlineFrameSize_(self, v10, v11, v5, v7);
    objc_msgSend_invalidateSize(self, v15, v16);

    objc_msgSend_invalidateInlineAndDepedentsForInlineFrameResize(self, v17, v18);
  }
}

- (id)wrapInvalidationParent
{
  v3 = objc_msgSend_parent(self, a2, v2);
  if (v3)
  {
    while (1)
    {
      v4 = TSUProtocolCast();
      if (v4)
      {
        break;
      }

      v7 = objc_msgSend_parent(v3, v5, v6, &unk_2885CEB50);

      v3 = v7;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

LABEL_7:

  return v7;
}

- (void)invalidateChildren
{
  v5 = objc_msgSend_layoutController(self, a2, v2);
  objc_msgSend_invalidateChildrenOfLayout_(v5, v4, self);
}

- (id)childInfosForChildLayouts
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  if (v6)
  {
    v9 = objc_msgSend_caption(v6, v7, v8);
    v12 = objc_msgSend_layoutController(self, v10, v11);
    v15 = objc_msgSend_canvas(v12, v13, v14);

    if (v9 && objc_msgSend_shouldShowCaption(self, v16, v17) && (!v15 || objc_msgSend_shouldShowOnCanvas_(v9, v16, v15)))
    {
      v18 = objc_msgSend_arrayByAddingObject_(MEMORY[0x277CBEBF8], v16, v9);
    }

    else
    {
      v18 = MEMORY[0x277CBEBF8];
    }

    v19 = objc_msgSend_title(v6, v16, v17);
    v21 = v19;
    if (v19 && (!v15 || objc_msgSend_shouldShowOnCanvas_(v19, v20, v15)))
    {
      v22 = objc_msgSend_arrayByAddingObject_(v18, v20, v21);

      v18 = v22;
    }
  }

  else
  {
    v18 = MEMORY[0x277CBEBF8];
  }

  return v18;
}

- (void)updateChildrenFromInfo
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_childInfosForChildLayouts(self, a2, v2);
  v7 = objc_msgSend_children(self, v5, v6);
  v10 = objc_msgSend_count(v4, v8, v9);
  v53 = v4;
  if (v10 != objc_msgSend_count(v7, v11, v12))
  {
LABEL_12:
    v15 = objc_msgSend_array(MEMORY[0x277CBEB18], v13, v14);
    v30 = objc_msgSend_layoutController(self, v28, v29);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v31 = v4;
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v54, v62, 16);
    if (v33)
    {
      v35 = v33;
      v36 = *v55;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v55 != v36)
          {
            objc_enumerationMutation(v31);
          }

          v38 = *(*(&v54 + 1) + 8 * i);
          v39 = objc_msgSend_layoutForInfo_childOfLayout_(v30, v34, v38, self);
          if (!v39)
          {
            v41 = objc_alloc(objc_msgSend_layoutClass(v38, v34, v40));
            v39 = objc_msgSend_initWithInfo_(v41, v42, v38);
            if (!v39)
            {
              continue;
            }
          }

          v43 = v39;
          objc_msgSend_addObject_(v15, v34, v39);
        }

        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v34, &v54, v62, 16);
      }

      while (v35);
    }

    objc_msgSend_setChildren_(self, v44, v15);
    objc_msgSend_invalidate(self, v45, v46);
    objc_msgSend_i_clearInvalidationCache(self, v47, v48);

LABEL_23:
    v4 = v53;
    goto LABEL_24;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v15 = v4;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v58, v63, 16);
  if (v17)
  {
    v19 = v17;
    v20 = 0;
    v21 = *v59;
    while (2)
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v59 != v21)
        {
          objc_enumerationMutation(v15);
        }

        v23 = *(*(&v58 + 1) + 8 * j);
        v24 = objc_msgSend_objectAtIndexedSubscript_(v7, v18, v20);
        v27 = objc_msgSend_info(v24, v25, v26);

        if (v27 != v23)
        {

          v4 = v53;
          goto LABEL_12;
        }

        ++v20;
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v58, v63, 16);
      if (v19)
      {
        continue;
      }

      goto LABEL_23;
    }
  }

LABEL_24:

  v51 = objc_msgSend_children(self, v49, v50);
  objc_msgSend_makeObjectsPerformSelector_(v51, v52, sel_updateChildrenFromInfo);
}

- (void)unregisterFromLayoutController
{
  v4 = objc_msgSend_layoutController(self, a2, v2);

  if (v4)
  {
    v8 = objc_msgSend_layoutController(self, v5, v6);
    objc_msgSend_p_unregisterWithLayoutController_(self, v7, v8);
  }
}

- (void)setParent:(id)parent
{
  parentCopy = parent;
  v7 = objc_msgSend_parent(self, v5, v6);

  if (v7 != parentCopy)
  {
    objc_msgSend_parentWillChangeTo_(self, v8, parentCopy);
    v11 = objc_msgSend_root(self, v9, v10);
    v16 = objc_msgSend_root(parentCopy, v12, v13);
    if (v11 != v16)
    {
      v18 = objc_msgSend_layoutController(self, v14, v15);
      if (v18)
      {
        objc_msgSend_p_unregisterWithLayoutController_(self, v17, v18);
      }
    }

    v32.receiver = self;
    v32.super_class = TSDLayout;
    [(TSDAbstractLayout *)&v32 setParent:parentCopy];
    objc_opt_class();
    v19 = TSUDynamicCast();
    objc_msgSend_i_clearInvalidationCache(v19, v20, v21);

    if (v11 != v16)
    {
      v25 = objc_msgSend_layoutController(self, v22, v23);
      if (v25)
      {
        objc_msgSend_p_registerWithLayoutController_(self, v24, v25);
        objc_msgSend_p_recursiveInvalidate(self, v26, v27);
        objc_msgSend_i_recursivelyClearInvalidationCache(self, v28, v29);
      }
    }

    objc_msgSend_parentDidChange(self, v22, v23);
    if (v16)
    {
      objc_msgSend_p_invalidateConnectedLayouts(self, v30, v31);
    }
  }
}

- (id)rootLayout
{
  objc_opt_class();
  v5 = objc_msgSend_root(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (id)layoutController
{
  v3 = objc_msgSend_rootLayout(self, a2, v2);
  v6 = objc_msgSend_layoutController(v3, v4, v5);

  return v6;
}

- (void)validate
{
  if (objc_msgSend_invalidGeometry(self, a2, v2))
  {
    objc_msgSend_capturedInfoPositionForAttachment(self, v4, v5);
    self->mCapturedInfoGeometryPositionForAttached.x = v6;
    self->mCapturedInfoGeometryPositionForAttached.y = v7;
    v10 = objc_msgSend_computeLayoutGeometry(self, v8, v9);
    objc_msgSend_setGeometry_(self, v11, v10);

    v14 = objc_msgSend_info(self, v12, v13);
    if (objc_msgSend_isInlineWithText(v14, v15, v16))
    {
    }

    else
    {
      v21 = objc_msgSend_info(self, v17, v18);
      if ((objc_msgSend_isAnchoredToText(v21, v22, v23) & 1) == 0)
      {

        goto LABEL_9;
      }

      objc_opt_class();
      v26 = objc_msgSend_info(self, v24, v25);
      v27 = TSUDynamicCast();
      v30 = objc_msgSend_exteriorTextWrap(v27, v28, v29);
      isHTMLWrap = objc_msgSend_isHTMLWrap(v30, v31, v32);

      if (!isHTMLWrap)
      {
        goto LABEL_9;
      }
    }

    objc_msgSend_p_newMaxInlineFrameSize(self, v4, v5);
    objc_msgSend_setMaximumInlineFrameSize_(self, v19, v20);
LABEL_9:
    *&self->mInvalidFlags &= 0xFCu;
  }

  objc_msgSend_i_clearInvalidationCache(self, v4, v5);
}

- (CGPoint)capturedInfoPositionForAttachment
{
  v3 = objc_msgSend_info(self, a2, v2);
  v6 = objc_msgSend_geometry(v3, v4, v5);
  objc_msgSend_position(v6, v7, v8);
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (id)layoutGeometryFromInfo
{
  if (!self->mInfo)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDLayout layoutGeometryFromInfo]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 536, 0, "Layouts must either override computeLayoutGeometry, or have a non-nil info to query for geometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  v10 = [TSDLayoutGeometry alloc];
  v13 = objc_msgSend_info(self, v11, v12);
  v16 = objc_msgSend_geometry(v13, v14, v15);
  v18 = objc_msgSend_initWithInfoGeometry_(v10, v17, v16);

  return v18;
}

- (id)computeInfoGeometryFromPureLayoutGeometry:(id)geometry
{
  if (geometry)
  {
    objc_msgSend_fullTransform(geometry, a2, geometry);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  v3 = objc_msgSend_geometryFromFullTransform_(TSDInfoGeometry, a2, v5);

  return v3;
}

- (BOOL)isInGroup
{
  v3 = objc_msgSend_parent(self, a2, v2);
  if (v3)
  {
    v4 = v3;
    do
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        break;
      }

      v8 = objc_msgSend_parent(v4, v5, v6);

      v4 = v8;
    }

    while (v8);
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (CGPoint)alignmentFrameOriginForFixingInterimPosition
{
  if (self->mLayoutState == 2)
  {
    x = self->mBaseAlignmentFrameOriginForFixingInterimPosition.x;
    y = self->mBaseAlignmentFrameOriginForFixingInterimPosition.y;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = TSDLayout;
    [(TSDAbstractLayout *)&v6 alignmentFrameOriginForFixingInterimPosition];
  }

  result.y = y;
  result.x = x;
  return result;
}

- (void)beginDynamicOperation
{
  p_mInitialBoundsForStandardKnobs = &self->mInitialBoundsForStandardKnobs;
  objc_msgSend_boundsForStandardKnobs(self, a2, v2);
  p_mInitialBoundsForStandardKnobs->origin.x = v7;
  p_mInitialBoundsForStandardKnobs->origin.y = v8;
  p_mInitialBoundsForStandardKnobs->size.width = v9;
  p_mInitialBoundsForStandardKnobs->size.height = v10;
  if (self->mBaseGeometry)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDLayout beginDynamicOperation]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 675, 0, "beginning dynamic operation when there is already a base geometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v18 = objc_msgSend_geometry(self, v5, v6);
  v21 = objc_msgSend_copy(v18, v19, v20);
  mBaseGeometry = self->mBaseGeometry;
  self->mBaseGeometry = v21;

  self->mLayoutState = 1;
}

- (void)endDynamicOperation
{
  mBaseGeometry = self->mBaseGeometry;
  if (mBaseGeometry)
  {
    self->mBaseGeometry = 0;
  }

  self->mLayoutState = 0;

  objc_msgSend_i_clearInvalidationCache(self, a2, v2);
}

- (void)beginDrag
{
  p_mBaseAlignmentFrameOriginForFixingInterimPosition = &self->mBaseAlignmentFrameOriginForFixingInterimPosition;
  objc_msgSend_alignmentFrameOriginForFixingInterimPosition(self, a2, v2);
  p_mBaseAlignmentFrameOriginForFixingInterimPosition->x = v5;
  p_mBaseAlignmentFrameOriginForFixingInterimPosition->y = v6;
  self->mLayoutState = 2;
}

- (void)dragByUnscaled:(CGPoint)unscaled
{
  y = unscaled.y;
  x = unscaled.x;
  v7 = objc_msgSend_parent(self, a2, v3);

  if (v7)
  {
    v10 = objc_msgSend_parent(self, v8, v9);
    v13 = v10;
    if (v10)
    {
      objc_msgSend_transformInRoot(v10, v11, v12);
    }

    else
    {
      memset(&v16, 0, sizeof(v16));
    }

    CGAffineTransformInvert(&v17, &v16);
    TSUDeltaApplyAffineTransform();
    x = v14;
    y = v15;
  }

  objc_msgSend_dragBy_(self, v8, v9, x, y, *&v16.a, *&v16.c, *&v16.tx);
}

- (void)dragBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  if (by.x != *MEMORY[0x277CBF348] || by.y != *(MEMORY[0x277CBF348] + 8))
  {
    if (!self->mBaseGeometry)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDLayout dragBy:]");
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 729, 0, "invalid nil value for '%{public}s'", "mBaseGeometry");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    }

    v15 = objc_msgSend_geometry(self, a2, v3);
    v29 = objc_msgSend_geometryByTranslatingBy_(v15, v16, v17, x, y);

    objc_msgSend_setDynamicGeometry_(self, v18, v29);
    objc_msgSend_p_invalidateConnectedLayouts(self, v19, v20);
    v23 = objc_msgSend_layoutController(self, v21, v22);
    v26 = objc_msgSend_canvas(v23, v24, v25);
    objc_msgSend_layoutInvalidated(v26, v27, v28);
  }
}

- (CGAffineTransform)originalTransformInRoot
{
  v4 = MEMORY[0x277CBF2C0];
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v5;
  *&retstr->tx = *(v4 + 32);
  result = self;
  if (result)
  {
    v7 = result;
    do
    {
      objc_opt_class();
      v8 = TSUDynamicCast();
      v11 = objc_msgSend_originalGeometry(v8, v9, v10);

      if (v11)
      {
        objc_msgSend_originalGeometry(v8, v12, v13);
      }

      else
      {
        objc_msgSend_geometry(v7, v12, v13);
      }
      v14 = ;
      v16 = v14;
      if (v14)
      {
        v17 = *&retstr->c;
        v22[0] = *&retstr->a;
        v22[1] = v17;
        v22[2] = *&retstr->tx;
        objc_msgSend_transformByConcatenatingTransformTo_(v14, v15, v22);
      }

      else
      {
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
      }

      v18 = v24;
      *&retstr->a = v23;
      *&retstr->c = v18;
      *&retstr->tx = v25;

      v21 = objc_msgSend_parent(v7, v19, v20);

      v7 = v21;
    }

    while (v21);
  }

  return result;
}

- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)space
{
  v7 = objc_msgSend_info(self, space, a4);
  v10 = objc_msgSend_geometry(v7, v8, v9);

  if (objc_msgSend_heightValid(v10, v11, v12) && objc_msgSend_widthValid(v10, v13, v14) && (objc_msgSend_size(v10, v15, v16), v19 != 0.0) && (objc_msgSend_size(v10, v17, v18), v22 != 0.0))
  {
    memset(&v42, 0, sizeof(v42));
    v25 = objc_msgSend_originalPureGeometry(self, v20, v21);
    v28 = v25;
    if (v25)
    {
      objc_msgSend_fullTransform(v25, v26, v27);
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    CGAffineTransformInvert(&t1, &t2);
    v31 = objc_msgSend_info(self, v29, v30);
    v34 = objc_msgSend_geometry(v31, v32, v33);
    v37 = v34;
    if (v34)
    {
      objc_msgSend_fullTransform(v34, v35, v36);
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    CGAffineTransformConcat(&v42, &t1, &t2);

    t1 = v42;
    CGAffineTransformInvert(&t2, &t1);
    v38 = *&a4->c;
    *&v39.a = *&a4->a;
    *&v39.c = v38;
    *&v39.tx = *&a4->tx;
    CGAffineTransformConcat(&t1, &t2, &v39);
    t2 = v42;
    CGAffineTransformConcat(retstr, &t1, &t2);
  }

  else
  {
    v23 = *&a4->c;
    *&retstr->a = *&a4->a;
    *&retstr->c = v23;
    *&retstr->tx = *&a4->tx;
  }

  return result;
}

- (BOOL)i_anyAncestorCurrentlyBeingRotatedWantsNormalLayoutDuringDynamicRotation
{
  objc_opt_class();
  v5 = objc_msgSend_parent(self, v3, v4);
  v6 = TSUDynamicCast();

  if (v6)
  {
    while (1)
    {
      if (objc_msgSend_layoutState(v6, v7, v8) != 3)
      {
        LOBYTE(v14) = 0;
        goto LABEL_9;
      }

      if (objc_msgSend_wantsNormalLayoutDuringDynamicRotation(v6, v9, v10))
      {
        break;
      }

      objc_opt_class();
      v13 = objc_msgSend_parent(v6, v11, v12);
      v14 = TSUDynamicCast();

      v6 = v14;
      if (!v14)
      {
        goto LABEL_9;
      }
    }

    LOBYTE(v14) = 1;
LABEL_9:
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (BOOL)resizeMayChangeAspectRatio
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  if (v6)
  {
    v9 = objc_msgSend_aspectRatioLocked(v6, v7, v8) ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (BOOL)canAspectRatioLockBeChangedByUser
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  LOBYTE(v5) = objc_msgSend_canAspectRatioLockBeChangedByUser(v6, v7, v8);
  return v5;
}

- (CGSize)minimumSize
{
  v2 = 1.0;
  v3 = 1.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)initialBoundsForStandardKnobs
{
  x = self->mInitialBoundsForStandardKnobs.origin.x;
  y = self->mInitialBoundsForStandardKnobs.origin.y;
  width = self->mInitialBoundsForStandardKnobs.size.width;
  height = self->mInitialBoundsForStandardKnobs.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (TSDInfoGeometry)initialInfoGeometry
{
  v3 = objc_msgSend_info(self, a2, v2);
  v6 = objc_msgSend_geometry(v3, v4, v5);

  return v6;
}

- (TSDLayoutGeometry)originalPureGeometry
{
  objc_msgSend_initialBoundsForStandardKnobs(self, a2, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  memset(&v25, 0, sizeof(v25));
  v14 = objc_msgSend_originalGeometry(self, v12, v13);
  v17 = v14;
  if (v14)
  {
    objc_msgSend_transform(v14, v15, v16);
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
  }

  CGAffineTransformMakeTranslation(&t1, v5, v7);
  v22 = v25;
  CGAffineTransformConcat(&v24, &t1, &v22);
  v25 = v24;
  v18 = [TSDLayoutGeometry alloc];
  v24 = v25;
  v20 = objc_msgSend_initWithSize_transform_(v18, v19, &v24, v9, v11);

  return v20;
}

- (TSDLayoutGeometry)pureGeometry
{
  objc_msgSend_boundsForStandardKnobs(self, a2, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  memset(&v25, 0, sizeof(v25));
  v14 = objc_msgSend_geometry(self, v12, v13);
  v17 = v14;
  if (v14)
  {
    objc_msgSend_transform(v14, v15, v16);
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
  }

  CGAffineTransformMakeTranslation(&t1, v5, v7);
  v22 = v25;
  CGAffineTransformConcat(&v24, &t1, &v22);
  v25 = v24;
  v18 = [TSDLayoutGeometry alloc];
  v24 = v25;
  v20 = objc_msgSend_initWithSize_transform_(v18, v19, &v24, v9, v11);

  return v20;
}

- (TSDLayoutGeometry)pureGeometryInRoot
{
  v4 = objc_msgSend_pureGeometry(self, a2, v2);
  v6 = objc_msgSend_geometryInRoot_(self, v5, v4);

  return v6;
}

- (TSDLayoutGeometry)pureGeometryInParent
{
  v4 = objc_msgSend_pureGeometry(self, a2, v2);
  v7 = objc_msgSend_mutableCopy(v4, v5, v6);

  v10 = objc_msgSend_parent(self, v8, v9);
  v13 = objc_msgSend_geometry(v10, v11, v12);
  v16 = v13;
  if (v13)
  {
    objc_msgSend_transform(v13, v14, v15);
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  objc_msgSend_transformBy_(v7, v14, v18);

  return v7;
}

- (CGAffineTransform)p_additionalTransformForInlineRoot
{
  v5 = MEMORY[0x277CBF2C0];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  result = objc_msgSend_parent(self, a3, v3);
  if (result)
  {
    v10 = result;
    do
    {
      if (objc_msgSend_isRootLevelForInlineGeometry(v10, v8, v9))
      {
        break;
      }

      v13 = objc_msgSend_geometry(v10, v11, v12);
      v15 = v13;
      if (v13)
      {
        v16 = *&retstr->c;
        v21[0] = *&retstr->a;
        v21[1] = v16;
        v21[2] = *&retstr->tx;
        objc_msgSend_transformByConcatenatingTransformTo_(v13, v14, v21);
      }

      else
      {
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
      }

      v17 = v23;
      *&retstr->a = v22;
      *&retstr->c = v17;
      *&retstr->tx = v24;

      v20 = objc_msgSend_parent(v10, v18, v19);

      v10 = v20;
    }

    while (v20);
  }

  return result;
}

- (TSDLayoutGeometry)inspectorGeometry
{
  v4 = objc_msgSend_pureGeometry(self, a2, v2);
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  v46 = *MEMORY[0x277CBF2C0];
  v47 = v5;
  v48 = *(MEMORY[0x277CBF2C0] + 32);
  v8 = objc_msgSend_parent(self, v6, v7);
  if (v8)
  {
    v11 = v8;
    do
    {
      if (objc_msgSend_isRootLayoutForInspectorGeometry(v11, v9, v10))
      {
        break;
      }

      v14 = objc_msgSend_geometry(v11, v12, v13);
      v16 = v14;
      if (v14)
      {
        v42[0] = v46;
        v42[1] = v47;
        v42[2] = v48;
        objc_msgSend_transformByConcatenatingTransformTo_(v14, v15, v42);
      }

      else
      {
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
      }

      v46 = v43;
      v47 = v44;
      v48 = v45;

      v19 = objc_msgSend_parent(v11, v17, v18);

      v11 = v19;
    }

    while (v19);
  }

  v43 = v46;
  v44 = v47;
  v45 = v48;
  v20 = objc_msgSend_geometryByTransformingBy_(v4, v9, &v43);

  v23 = objc_msgSend_layoutController(self, v21, v22);
  v26 = objc_msgSend_canvas(v23, v24, v25);
  isAnchoredAtRight = objc_msgSend_isAnchoredAtRight(v26, v27, v28);

  if (isAnchoredAtRight)
  {
    objc_msgSend_frame(v20, v30, v31);
    x = v50.origin.x;
    y = v50.origin.y;
    width = v50.size.width;
    height = v50.size.height;
    MinX = CGRectGetMinX(v50);
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    MaxX = CGRectGetMaxX(v51);
    v40 = objc_msgSend_geometryByTranslatingBy_(v20, v38, v39, -(MinX + MaxX), 0.0);

    v20 = v40;
  }

  return v20;
}

- (double)inspectorGeometryAngleInDegrees
{
  v3 = objc_msgSend_inspectorGeometry(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    objc_msgSend_transform(v3, v4, v5);
  }

  TSUTransformAngleInDegrees();
  TSUNormalizeAngleInDegrees();
  v8 = v7;

  v9 = fabs(v8 + -360.0) < 0.00999999978 || v8 == 360.0;
  result = 0.0;
  if (!v9)
  {
    return v8;
  }

  return result;
}

- (CGAffineTransform)pureTransformInRoot
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v6 = objc_msgSend_pureGeometry(self, a3, v3);
  v9 = v6;
  if (v6)
  {
    objc_msgSend_transform(v6, v7, v8);
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  result = objc_msgSend_parent(self, v10, v11);
  if (result)
  {
    v15 = result;
    do
    {
      v16 = objc_msgSend_geometry(v15, v13, v14);
      v18 = v16;
      if (v16)
      {
        v19 = *&retstr->c;
        v24[0] = *&retstr->a;
        v24[1] = v19;
        v24[2] = *&retstr->tx;
        objc_msgSend_transformByConcatenatingTransformTo_(v16, v17, v24);
      }

      else
      {
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
      }

      v20 = v26;
      *&retstr->a = v25;
      *&retstr->c = v20;
      *&retstr->tx = v27;

      v23 = objc_msgSend_parent(v15, v21, v22);

      v15 = v23;
    }

    while (v23);
  }

  return result;
}

- (CGAffineTransform)originalPureTransformInRoot
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v6 = objc_msgSend_originalPureGeometry(self, a3, v3);
  v9 = v6;
  if (v6)
  {
    objc_msgSend_transform(v6, v7, v8);
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  result = objc_msgSend_parent(self, v10, v11);
  if (result)
  {
    v15 = result;
    do
    {
      v16 = objc_msgSend_geometry(v15, v13, v14);
      v18 = v16;
      if (v16)
      {
        v19 = *&retstr->c;
        v24[0] = *&retstr->a;
        v24[1] = v19;
        v24[2] = *&retstr->tx;
        objc_msgSend_transformByConcatenatingTransformTo_(v16, v17, v24);
      }

      else
      {
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
      }

      v20 = v26;
      *&retstr->a = v25;
      *&retstr->c = v20;
      *&retstr->tx = v27;

      v23 = objc_msgSend_parent(v15, v21, v22);

      v15 = v23;
    }

    while (v23);
  }

  return result;
}

- (BOOL)supportsParentFlipping
{
  if (!objc_msgSend_supportsFlipping(self, a2, v2))
  {
    return 0;
  }

  objc_opt_class();
  v6 = objc_msgSend_info(self, v4, v5);
  v7 = TSUDynamicCast();

  if (v7)
  {
    v12 = objc_msgSend_title(v7, v8, v9);
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v14 = objc_msgSend_caption(v7, v10, v11);
      v13 = v14 == 0;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (NSObject)dynamicOverride
{
  v4 = objc_msgSend_layoutController(self, a2, v2);
  v7 = objc_msgSend_canvas(v4, v5, v6);
  v10 = objc_msgSend_delegate(v7, v8, v9);
  v11 = TSUProtocolCast();

  if (v11)
  {
    v13 = objc_msgSend_dynamicOverrideForLayout_(v11, v12, self, &unk_2885BDF70);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)transferLayoutGeometryToInfo:(id)info withAdditionalTransform:(CGAffineTransform *)transform assertIfInDocument:(BOOL)document
{
  documentCopy = document;
  infoCopy = info;
  v11 = infoCopy;
  if (documentCopy && objc_msgSend_tsp_isInDocument(infoCopy, v9, v10))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSDLayout transferLayoutGeometryToInfo:withAdditionalTransform:assertIfInDocument:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 1157, 0, "Should not transfer layout geometry to info that's in the document!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_27665D46C;
  v24[3] = &unk_27A6CC610;
  v25 = v11;
  v20 = *&transform->c;
  v23[0] = *&transform->a;
  v23[1] = v20;
  v23[2] = *&transform->tx;
  v21 = v11;
  objc_msgSend_p_calculateClampModelValuesWithAdditionalTransform_andPerformBlock_(self, v22, v23, v24);
}

- (void)p_calculateClampModelValuesWithAdditionalTransform:(CGAffineTransform *)transform andPerformBlock:(id)block
{
  blockCopy = block;
  v9 = objc_msgSend_pureGeometry(self, v7, v8);
  v10 = *&transform->c;
  v51[0] = *&transform->a;
  v51[1] = v10;
  v51[2] = *&transform->tx;
  v12 = objc_msgSend_geometryByTransformingBy_(v9, v11, v51);

  v14 = objc_msgSend_computeInfoGeometryFromPureLayoutGeometry_(self, v13, v12);
  v17 = objc_msgSend_normalizedGeometry(v14, v15, v16);

  v20 = objc_msgSend_info(self, v18, v19);
  v23 = objc_msgSend_geometry(v20, v21, v22);

  if (objc_msgSend_widthValid(v23, v24, v25) && (objc_msgSend_heightValid(v23, v26, v27) & 1) != 0)
  {
    v28 = v17;
  }

  else
  {
    v28 = objc_msgSend_mutableCopy(v17, v26, v27);
    v31 = objc_msgSend_widthValid(v23, v29, v30);
    objc_msgSend_setWidthValid_(v28, v32, v31);
    v35 = objc_msgSend_heightValid(v23, v33, v34);
    objc_msgSend_setHeightValid_(v28, v36, v35);
    objc_msgSend_size(v28, v37, v38);
    v40 = v39;
    v42 = v41;
    if ((objc_msgSend_widthValid(v23, v43, v44) & 1) == 0)
    {
      objc_msgSend_size(v23, v45, v46);
      if (v47 == 0.0)
      {
        v40 = 0.0;
      }
    }

    if ((objc_msgSend_heightValid(v23, v45, v46) & 1) == 0)
    {
      objc_msgSend_size(v23, v48, v49);
      if (v50 == 0.0)
      {
        v42 = 0.0;
      }
    }

    objc_msgSend_setSize_(v28, v48, v49, v40, v42);
  }

  blockCopy[2](blockCopy, v28);
}

- (void)validateFromLastInterimPosition
{
  v4 = objc_msgSend_layoutController(self, a2, v2);
  objc_msgSend_validateLayoutWithDependencies_(v4, v5, self);

  v8 = objc_msgSend_info(self, v6, v7);
  v11 = objc_msgSend_owningAttachment(v8, v9, v10);

  if (v11)
  {

    MEMORY[0x2821F9670](self, sel_fixTransformFromLastInterimPosition, v12);
  }
}

- (BOOL)isSelectable
{
  v3 = objc_msgSend_info(self, a2, v2);
  isSelectable = objc_msgSend_isSelectable(v3, v4, v5);

  return isSelectable;
}

- (CGRect)boundsForStandardKnobs
{
  v3 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_size(v3, v4, v5);
  TSURectWithSize();
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

- (CGRect)frameForCaptionPositioning
{
  v3 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_frame(v3, v4, v5);
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

- (UIEdgeInsets)captionEdgeInsets
{
  objc_msgSend_alignmentFrame(self, a2, v2);
  v81 = v5;
  v82 = v4;
  v7 = v6;
  v80 = v8;
  objc_msgSend_alignmentFrameForCaptionEdgeInsetsCalculation(self, v9, v10);
  x = v11;
  y = v13;
  width = v15;
  height = v17;
  objc_opt_class();
  v21 = objc_msgSend_info(self, v19, v20);
  v22 = TSUDynamicCast();

  v25 = objc_msgSend_title(v22, v23, v24);
  v28 = objc_msgSend_layoutController(self, v26, v27);
  v31 = objc_msgSend_canvas(v28, v29, v30);
  v34 = v31;
  if (v25 && (!v31 || objc_msgSend_shouldShowOnCanvas_(v25, v32, v31)))
  {
    v35 = objc_msgSend_layoutForInfo_childOfLayout_(v28, v32, v25, self);
    v38 = v35;
    if (v35)
    {
      objc_msgSend_alignmentFrameInParent(v35, v36, v37);
      v98.origin.x = v39;
      v98.origin.y = v40;
      v98.size.width = v41;
      v98.size.height = v42;
      v85.origin.x = x;
      v85.origin.y = y;
      v85.size.width = width;
      v85.size.height = height;
      v86 = CGRectUnion(v85, v98);
      x = v86.origin.x;
      y = v86.origin.y;
      width = v86.size.width;
      height = v86.size.height;
    }

    else
    {
      v43 = MEMORY[0x277D81150];
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSDLayout captionEdgeInsets]");
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v47, v44, v46, 1301, 0, "invalid nil value for '%{public}s'", "titleLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49);
    }
  }

  v52 = objc_msgSend_caption(v22, v32, v33);
  if (v52 && objc_msgSend_shouldShowCaption(self, v50, v51) && (!v34 || objc_msgSend_shouldShowOnCanvas_(v52, v53, v34)))
  {
    v54 = objc_msgSend_layoutForInfo_childOfLayout_(v28, v53, v52, self);
    v57 = v54;
    if (v54)
    {
      objc_msgSend_alignmentFrameInParent(v54, v55, v56);
      v99.origin.x = v58;
      v99.origin.y = v59;
      v99.size.width = v60;
      v99.size.height = v61;
      v87.origin.x = x;
      v87.origin.y = y;
      v87.size.width = width;
      v87.size.height = height;
      v88 = CGRectUnion(v87, v99);
      x = v88.origin.x;
      y = v88.origin.y;
      width = v88.size.width;
      height = v88.size.height;
    }

    else
    {
      v62 = MEMORY[0x277D81150];
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "[TSDLayout captionEdgeInsets]");
      v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v66, v63, v65, 1310, 0, "invalid nil value for '%{public}s'", "captionLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68);
    }
  }

  v89.origin.x = x;
  v89.origin.y = y;
  v89.size.width = width;
  v89.size.height = height;
  v77 = height;
  MinY = CGRectGetMinY(v89);
  v90.origin.x = v82;
  v90.origin.y = v81;
  v90.size.width = v7;
  v90.size.height = v80;
  v84 = MinY - CGRectGetMinY(v90);
  v91.origin.x = x;
  v91.origin.y = y;
  v91.size.width = width;
  v91.size.height = height;
  MinX = CGRectGetMinX(v91);
  v92.origin.x = v82;
  v92.origin.y = v81;
  v92.size.width = v7;
  v92.size.height = v80;
  v79 = MinX - CGRectGetMinX(v92);
  v93.origin.x = v82;
  v93.origin.y = v81;
  v93.size.width = v7;
  v93.size.height = v80;
  MaxY = CGRectGetMaxY(v93);
  v94.origin.x = x;
  v94.origin.y = y;
  v94.size.width = width;
  v94.size.height = v77;
  v78 = MaxY - CGRectGetMaxY(v94);
  v95.origin.x = v82;
  v95.origin.y = v81;
  v95.size.width = v7;
  v95.size.height = v80;
  MaxX = CGRectGetMaxX(v95);
  v96.origin.x = x;
  v96.origin.y = y;
  v96.size.width = width;
  v96.size.height = v77;
  v72 = MaxX - CGRectGetMaxX(v96);

  v73 = v84;
  v75 = v78;
  v74 = v79;
  v76 = v72;
  result.right = v76;
  result.bottom = v75;
  result.left = v74;
  result.top = v73;
  return result;
}

- (BOOL)shouldUseCaptionEdgeInsetsInInterimPosition
{
  v3 = objc_msgSend_info(self, a2, v2);
  if (objc_msgSend_isInlineWithText(v3, v4, v5))
  {
    isInlineWithTextWithWrap = 1;
  }

  else
  {
    isInlineWithTextWithWrap = objc_msgSend_isInlineWithTextWithWrap(v3, v6, v7);
  }

  return isInlineWithTextWithWrap;
}

- (CGPoint)centerForRotation
{
  objc_msgSend_boundsForStandardKnobs(self, a2, v2);

  TSUCenterOfRect();
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)centerForConnecting
{
  objc_msgSend_centerForRotation(self, a2, v2);
  v17 = v5;
  v18 = v4;
  v8 = objc_msgSend_geometry(self, v6, v7);
  v11 = v8;
  if (v8)
  {
    objc_msgSend_transform(v8, v9, v10);
    v12 = v20;
    v13 = v21;
    v14 = v22;
  }

  else
  {
    v14 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  v19 = vaddq_f64(v14, vmlaq_n_f64(vmulq_n_f64(v13, v17), v12, v18));

  v16 = v19.f64[1];
  v15 = v19.f64[0];
  result.y = v16;
  result.x = v15;
  return result;
}

- (id)computeLayoutGeometry
{
  v4 = objc_msgSend_layoutGeometryFromInfo(self, a2, v2);
  objc_opt_class();
  v7 = objc_msgSend_parent(self, v5, v6);
  v8 = TSUDynamicCast();

  if (v8 && objc_msgSend_layoutState(self, v9, v10) != 4)
  {
    if (objc_msgSend_layoutState(self, v11, v12) == 3 && (objc_msgSend_wantsNormalLayoutDuringDynamicRotation(self, v13, v14) & 1) == 0)
    {
      v31 = [TSDLayoutGeometry alloc];
      v34 = objc_msgSend_originalPureGeometry(self, v32, v33);
      objc_msgSend_size(v34, v35, v36);
      v40 = v39;
      v42 = v41;
      if (v4)
      {
        objc_msgSend_transform(v4, v37, v38);
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
      }

      v30 = objc_msgSend_initWithSize_transform_(v31, v37, &v44, v40, v42);

      v4 = v34;
    }

    else
    {
      objc_msgSend_size(v4, v13, v14);
      v18 = v17;
      v20 = v19;
      if (v4)
      {
        objc_msgSend_transform(v4, v15, v16);
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
      }

      objc_msgSend_scaleForInlineClampingUnrotatedSize_withTransform_(self, v15, &v44, v18, v20);
      objc_msgSend_size(v4, v21, v22);
      TSUMultiplySizeScalar();
      v24 = v23;
      v26 = v25;
      v29 = [TSDLayoutGeometry alloc];
      if (v4)
      {
        objc_msgSend_transform(v4, v27, v28);
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
      }

      v30 = objc_msgSend_initWithSize_transform_(v29, v27, &v44, v24, v26);
    }

    v4 = v30;
  }

  return v4;
}

- (double)scaleForInlineClampingUnrotatedSize:(CGSize)size withTransform:(CGAffineTransform *)transform
{
  objc_opt_class();
  v8 = objc_msgSend_parent(self, v6, v7);
  v9 = TSUDynamicCast();

  v11 = 1.0;
  if (v9)
  {
    objc_msgSend_maximumFrameSizeForChild_(v9, v10, self);
    v14 = v13;
    if (v13 < 1.79769313e308 || v12 < 1.79769313e308)
    {
      v16 = v12;
      v17 = v12 < 1.79769313e308;
      TSURectWithSize();
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v26 = *&transform->c;
      *&v36.a = *&transform->a;
      *&v36.c = v26;
      *&v36.tx = *&transform->tx;
      TSUTransformAngleInRadians();
      CGAffineTransformMakeRotation(&v36, v27);
      v37.origin.x = v19;
      v37.origin.y = v21;
      v37.size.width = v23;
      v37.size.height = v25;
      v38 = CGRectApplyAffineTransform(v37, &v36);
      v28 = v38.size.height > v16 && v17;
      v29 = v38.size.width > v14 && v14 < 1.79769313e308;
      if (v29 || v28)
      {
        v31 = v14 / v38.size.width;
        v32 = 1.0;
        if (v38.size.width <= v14)
        {
          v31 = 1.0;
        }

        if (v38.size.height > v16)
        {
          v32 = v16 / v38.size.height;
        }

        v33 = fmin(v31, v32);
        if (v16 < 1.79769313e308)
        {
          v31 = v33;
        }

        if (v14 >= 1.79769313e308)
        {
          v11 = v32;
        }

        else
        {
          v11 = v31;
        }

        if (v38.size.width * v11 > v14 || v38.size.height * v11 > v16)
        {
          v11 = nextafter(v11, 0.0);
        }
      }
    }
  }

  return v11;
}

- (void)processChangedProperty:(int)property
{
  if (property <= 544)
  {
    if (property == 512)
    {
      objc_msgSend_invalidateFrame(self, a2, *&property);
    }

    else if (property == 513)
    {
      objc_msgSend_invalidatePosition(self, a2, *&property);
    }
  }

  else if ((property - 545) < 3 || property == 549)
  {
    objc_msgSend_invalidateChildren(self, a2, *&property);
  }
}

- (void)calculateAndSetPointsToSearchReference:(id)reference
{
  referenceCopy = reference;
  objc_msgSend_calculatePointFromSearchReference_(self, v5, referenceCopy);
  objc_msgSend_setSearchReferencePoint_(referenceCopy, v6, v7);
  objc_msgSend_activityLineUnscaledEndPointForSearchReference_(self, v8, referenceCopy);
  objc_msgSend_setConnectionLineUnscaledPoint_(referenceCopy, v9, v10);
  v13 = objc_msgSend_unscaledCommentFlagAnchorInfoForSearchReference_(self, v11, referenceCopy);
  objc_msgSend_setUnscaledCommentFlagAnchorInfo_(referenceCopy, v12, v13);
}

- (NSArray)dependentLayouts
{
  v4 = objc_msgSend_parent(self, a2, v2);
  v6 = objc_msgSend_additionalDependenciesForChildLayout_(v4, v5, self);
  v8 = objc_msgSend_arrayByAddingObjectsFromArray_(MEMORY[0x277CBEBF8], v7, v6);

  objc_opt_class();
  v11 = objc_msgSend_info(self, v9, v10);
  v12 = TSUDynamicCast();

  if (v12)
  {
    v15 = objc_msgSend_layoutController(self, v13, v14);
    v20 = objc_msgSend_title(v12, v16, v17);
    if (v20)
    {
      v22 = objc_msgSend_layoutForInfo_childOfLayout_(v15, v18, v20, self);
      if (v22)
      {
        v23 = objc_msgSend_arrayByAddingObject_(v8, v21, v22);

        v8 = v23;
      }
    }

    v25 = objc_msgSend_caption(v12, v18, v19);
    if (v25)
    {
      v27 = objc_msgSend_layoutForInfo_childOfLayout_(v15, v24, v25, self);
      if (v27)
      {
        v28 = objc_msgSend_arrayByAddingObject_(v8, v26, v27);

        v8 = v28;
      }
    }
  }

  return v8;
}

- (CGSize)maximumFrameSizeForChild:(id)child
{
  v3 = 1.79769313e308;
  v4 = 1.79769313e308;
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)i_captionAndTitleLayouts
{
  v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
  objc_opt_class();
  v6 = objc_msgSend_info(self, v4, v5);
  v7 = TSUDynamicCast();

  if (v7)
  {
    v10 = objc_msgSend_layoutController(self, v8, v9);
    v15 = objc_msgSend_title(v7, v11, v12);
    if (v15)
    {
      v17 = objc_msgSend_layoutForInfo_childOfLayout_(v10, v13, v15, self);
      if (v17)
      {
        v18 = objc_msgSend_arrayByAddingObject_(v3, v16, v17);

        v3 = v18;
      }
    }

    v20 = objc_msgSend_caption(v7, v13, v14);
    if (v20)
    {
      v22 = objc_msgSend_layoutForInfo_childOfLayout_(v10, v19, v20, self);
      if (v22)
      {
        v23 = objc_msgSend_arrayByAddingObject_(v3, v21, v22);

        v3 = v23;
      }
    }
  }

  return v3;
}

- (BOOL)descendentWrappablesContainsWrappable:(id)wrappable
{
  v4 = objc_msgSend_parent(wrappable, a2, wrappable);
  LOBYTE(self) = v4 == self;

  return self;
}

- (void)p_updateDescendentWrapPathsWithTransform:(CGAffineTransform *)transform
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = objc_msgSend_descendentWrappables(self, a2, transform);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        objc_opt_class();
        v10 = TSUDynamicCast();
        v12 = v10;
        if (v10)
        {
          v13 = *&transform->c;
          v15[0] = *&transform->a;
          v15[1] = v13;
          v15[2] = *&transform->tx;
          objc_msgSend_inRootGeometryChangedBy_(v10, v11, v15);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v14, &v16, v20, 16);
    }

    while (v7);
  }
}

- (void)p_invalidateDescendentWrapPathsInRoot
{
  v19 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = objc_msgSend_descendentWrappables(self, a2, v2, 0, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v14, v18, 16);
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        v9 = TSUDynamicCast();
        v12 = v9;
        if (v9)
        {
          objc_msgSend_invalidateInRootGeometry(v9, v10, v11);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v13, &v14, v18, 16);
    }

    while (v6);
  }
}

- (void)setNeedsDisplay
{
  v2 = *(MEMORY[0x277CBF390] + 16);
  self->mDirtyRect.origin = *MEMORY[0x277CBF390];
  self->mDirtyRect.size = v2;
}

- (void)recursivelyAddLayoutAndChildrenToSet:(id)set
{
  setCopy = set;
  objc_msgSend_addObject_(setCopy, v6, self);
  v10 = objc_msgSend_children(self, v7, v8);
  objc_msgSend_makeObjectsPerformSelector_withObject_(v10, v9, a2, setCopy);
}

- (CGRect)i_takeDirtyRect
{
  x = self->mDirtyRect.origin.x;
  y = self->mDirtyRect.origin.y;
  width = self->mDirtyRect.size.width;
  height = self->mDirtyRect.size.height;
  v6 = *(MEMORY[0x277CBF398] + 16);
  self->mDirtyRect.origin = *MEMORY[0x277CBF398];
  self->mDirtyRect.size = v6;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (TSUBezierPath)i_wrapPath
{
  v3 = MEMORY[0x277D81160];
  v4 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_size(v4, v5, v6);
  TSURectWithSize();
  v9 = objc_msgSend_bezierPathWithRect_(v3, v7, v8);

  return v9;
}

- (void)p_registerWithLayoutController:(id)controller
{
  controllerCopy = controller;
  objc_msgSend_i_registerLayout_(controllerCopy, v6, self);
  objc_msgSend_i_clearInvalidationCache(self, v7, v8);
  v12 = objc_msgSend_children(self, v9, v10);
  objc_msgSend_makeObjectsPerformSelector_withObject_(v12, v11, a2, controllerCopy);
}

- (void)p_unregisterWithLayoutController:(id)controller
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  objc_msgSend_i_unregisterLayout_(controllerCopy, v6, self);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->mConnectedLayouts;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_connectedLayoutDisconnected_(*(*(&v20 + 1) + 8 * v13++), v10, self, v20);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v20, v24, 16);
    }

    while (v11);
  }

  objc_msgSend_i_clearInvalidationCache(self, v14, v15);
  v18 = objc_msgSend_children(self, v16, v17);
  objc_msgSend_makeObjectsPerformSelector_withObject_(v18, v19, a2, controllerCopy);
}

- (void)p_recursiveInvalidate
{
  objc_msgSend_invalidate(self, a2, v2);
  v8 = objc_msgSend_children(self, v5, v6);
  objc_msgSend_makeObjectsPerformSelector_(v8, v7, a2);
}

- (CGSize)p_newMaxInlineFrameSize
{
  objc_opt_class();
  v5 = objc_msgSend_parent(self, v3, v4);
  v6 = TSUDynamicCast();

  if (v6)
  {
    objc_msgSend_maximumFrameSizeForChild_(v6, v7, self);
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v9 = 0x7FEFFFFFFFFFFFFFLL;
    v11 = 0x7FEFFFFFFFFFFFFFLL;
  }

  v12 = *&v9;
  v13 = *&v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGRect)rectInRootOfAutoZoomContextOfSelectionPath:(id)path
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)rectInRootForSelectionPath:(id)path
{
  v3 = objc_msgSend_geometryInRoot(self, a2, path);
  objc_msgSend_frame(v3, v4, v5);
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

- (CGRect)rectInRootForZoomingToSelectionPath:(id)path
{
  MEMORY[0x2821F9670](self, sel_rectInRootForSelectionPath_, path);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)rectInRootForSelectionAnchorRectOfSelectionPath:(id)path
{
  MEMORY[0x2821F9670](self, sel_rectInRootForZoomingToSelectionPath_, path);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)percentOfUnscaledRectContainedInParentRep:(CGRect)rep
{
  height = rep.size.height;
  width = rep.size.width;
  y = rep.origin.y;
  x = rep.origin.x;
  v8 = objc_msgSend_pureGeometryInRoot(self, a2, v3);
  objc_msgSend_frame(v8, v9, v10);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v29.origin.x = v12;
  v29.origin.y = v14;
  v29.size.width = v16;
  v29.size.height = v18;
  *v23.n128_u64 = CGRectInset(v29, -10.0, -10.0);
  v19.n128_u64[0] = v23.n128_u64[0];
  v20.n128_u64[0] = v24.n128_u64[0];
  v21.n128_u64[0] = v25.n128_u64[0];
  v22.n128_u64[0] = v26.n128_u64[0];
  v23.n128_f64[0] = x;
  v24.n128_f64[0] = y;
  v25.n128_f64[0] = width;
  v26.n128_f64[0] = height;

  MEMORY[0x2821EC370](v23, v24, v25, v26, v19, v20, v21, v22);
  return result;
}

- (void)addConnectedLayout:(id)layout
{
  layoutCopy = layout;
  mConnectedLayouts = self->mConnectedLayouts;
  v8 = layoutCopy;
  if (!mConnectedLayouts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->mConnectedLayouts;
    self->mConnectedLayouts = v6;

    layoutCopy = v8;
    mConnectedLayouts = self->mConnectedLayouts;
  }

  objc_msgSend_addObject_(mConnectedLayouts, layoutCopy, layoutCopy);
}

- (void)p_invalidateConnectedLayouts
{
  mConnectedLayouts = self->mConnectedLayouts;
  if (mConnectedLayouts && objc_msgSend_count(mConnectedLayouts, a2, v2))
  {
    v8 = objc_msgSend_copy(self->mConnectedLayouts, v5, v6);
    objc_msgSend_makeObjectsPerformSelector_withObject_(v8, v7, sel_connectedLayoutInvalidated_, self);
  }
}

- (void)p_invalidateDescendentWrapPaths
{
  v19 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = objc_msgSend_descendentWrappables(self, a2, v2, 0, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v14, v18, 16);
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        v9 = TSUDynamicCast();
        v12 = v9;
        if (v9)
        {
          objc_msgSend_invalidateExteriorWrap(v9, v10, v11);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v13, &v14, v18, 16);
    }

    while (v6);
  }
}

- (CGPoint)convertNaturalPointFromUnscaledCanvas:(CGPoint)canvas
{
  y = canvas.y;
  x = canvas.x;
  objc_msgSend_transformInRoot(self, a2, v3);
  CGAffineTransformInvert(&v9, &v8);
  v4 = vaddq_f64(*&v9.tx, vmlaq_n_f64(vmulq_n_f64(*&v9.c, y), *&v9.a, x));
  v5 = v4.f64[1];
  result.x = v4.f64[0];
  result.y = v5;
  return result;
}

- (CGRect)convertNaturalRectFromUnscaledCanvas:(CGRect)canvas
{
  height = canvas.size.height;
  width = canvas.size.width;
  y = canvas.origin.y;
  x = canvas.origin.x;
  objc_msgSend_transformInRoot(self, a2, v3);
  CGAffineTransformInvert(&v9, &v8);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  return CGRectApplyAffineTransform(v10, &v9);
}

- (CGPoint)convertNaturalPointToUnscaledCanvas:(CGPoint)canvas
{
  y = canvas.y;
  x = canvas.x;
  objc_msgSend_transformInRoot(self, a2, v3);
  v4 = vaddq_f64(v10, vmlaq_n_f64(vmulq_n_f64(v9, y), v8, x));
  v5 = v4.f64[1];
  result.x = v4.f64[0];
  result.y = v5;
  return result;
}

- (CGRect)convertNaturalRectToUnscaledCanvas:(CGRect)canvas
{
  height = canvas.size.height;
  width = canvas.size.width;
  y = canvas.origin.y;
  x = canvas.origin.x;
  objc_msgSend_transformInRoot(self, a2, v3);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  return CGRectApplyAffineTransform(v9, &v8);
}

- (CGSize)maximumInlineFrameSize
{
  width = self->mMaximumInlineFrameSize.width;
  height = self->mMaximumInlineFrameSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)minimumPositionOffset
{
  x = self->mMinimumPositionOffset.x;
  y = self->mMinimumPositionOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
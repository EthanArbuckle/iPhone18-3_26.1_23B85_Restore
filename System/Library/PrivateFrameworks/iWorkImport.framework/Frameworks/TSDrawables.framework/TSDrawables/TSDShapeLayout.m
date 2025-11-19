@interface TSDShapeLayout
- (BOOL)canBeIntersected;
- (BOOL)isFreehandDrawingSpacerShape;
- (BOOL)isInvisibleAutosizingShape;
- (BOOL)isTailEndOnLeft;
- (BOOL)p_cachedPathIsLineSegment;
- (BOOL)p_cachedPathIsOpen;
- (BOOL)p_isInlineInsideParentContainerDynamicallyChangingAvailableSpace;
- (BOOL)shouldAdjustForStrokeWidthForCollabCursor;
- (BOOL)shouldBeDisplayedInShowMode;
- (BOOL)supportsCalloutAttributes;
- (BOOL)supportsResize;
- (CGAffineTransform)computeLayoutTransform;
- (CGPoint)centerForConnecting;
- (CGPoint)headLineEndPoint;
- (CGPoint)headPoint;
- (CGPoint)tailLineEndPoint;
- (CGPoint)tailPoint;
- (CGRect)aliasedAlignmentFrameForScale:(double)a3;
- (CGRect)alignmentFrame;
- (CGRect)alignmentFrameInRoot;
- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)a3;
- (CGRect)boundsForStandardKnobs;
- (CGRect)frameForCullingWithBaseFrame:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4;
- (CGRect)frameForPartitioning;
- (CGRect)p_boundsOfLineEndForHead:(BOOL)a3 transform:(CGAffineTransform *)a4;
- (CGRect)p_cachedClippedPathStroked;
- (CGRect)p_cachedPathBounds;
- (CGRect)p_cachedPathBoundsWithoutStroke;
- (CGRect)p_updatedCachedClipRectIfNeededForRotation:(CGAffineTransform *)a3;
- (CGRect)pathBoundsWithoutStroke;
- (CGRect)shapeFrameWithTransform:(CGAffineTransform *)a3;
- (CGRect)shapeFrameWithTransform:(CGAffineTransform *)a3 strokeDrawOptions:(unint64_t)a4;
- (CGSize)minimumSize;
- (TSDFill)fill;
- (TSDInfoGeometry)layoutInfoGeometry;
- (TSDLineEnd)strokeHeadLineEnd;
- (TSDLineEnd)strokeTailLineEnd;
- (TSDPathSource)pathSource;
- (TSDShapeInfo)shapeInfo;
- (TSDShapeLayout)initWithInfo:(id)a3;
- (TSUBezierPath)clippedPathForLineEnds;
- (double)i_scaleFromClampedParentLayout;
- (double)lineEndScale:(BOOL)a3;
- (double)scaleForInlineClampingUnrotatedSize:(CGSize)a3 withTransform:(CGAffineTransform *)a4;
- (id)computeLayoutGeometry;
- (id)editablePathSource;
- (id)i_computeWrapPath;
- (id)i_computeWrapPathClosed:(BOOL)a3;
- (id)layoutGeometryFromInfo;
- (id)p_cachedPath;
- (id)p_createClippedPath;
- (id)p_unitePath:(id)a3 withLineEndForHead:(BOOL)a4 stroke:(id)a5;
- (id)reliedOnLayouts;
- (id)smartPathSource;
- (id)stroke;
- (int)wrapType;
- (void)aliasPathForScale:(double)a3 adjustedStroke:(id *)a4 adjustedPath:(id *)a5 startDelta:(CGPoint *)a6 endDelta:(CGPoint *)a7;
- (void)aliasPathForScale:(double)a3 originalStroke:(id)a4 adjustedStroke:(id *)a5 adjustedPath:(id *)a6 startDelta:(CGPoint *)a7 endDelta:(CGPoint *)a8;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateFrame;
- (void)invalidatePath;
- (void)invalidatePathBounds;
- (void)offsetGeometryBy:(CGPoint)a3;
- (void)p_invalidateClippedPath;
- (void)p_performBlockOkayToSetGeometry:(id)a3;
- (void)p_validateHeadAndTail;
- (void)p_validateHeadLineEnd;
- (void)p_validateTailLineEnd;
- (void)processChangedProperty:(int)a3;
- (void)setGeometry:(id)a3;
- (void)transferLayoutGeometryToInfo:(id)a3 withAdditionalTransform:(CGAffineTransform *)a4 assertIfInDocument:(BOOL)a5;
- (void)validate;
@end

@implementation TSDShapeLayout

- (TSDShapeLayout)initWithInfo:(id)a3
{
  v11.receiver = self;
  v11.super_class = TSDShapeLayout;
  v3 = [(TSDLayout *)&v11 initWithInfo:a3];
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_shapeInfo(v3, v4, v5);

    if (v7)
    {
      *&v6->mShapeInvalidFlags |= 0x7Fu;
      v8 = MEMORY[0x277CBF2C0];
      v9 = *(MEMORY[0x277CBF2C0] + 16);
      *&v6->mClippedPathRotatedTransform.a = *MEMORY[0x277CBF2C0];
      *&v6->mClippedPathRotatedTransform.c = v9;
      *&v6->mClippedPathRotatedTransform.tx = *(v8 + 32);
      v6->mLastParentLimitedScale = 1.0;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSDShapeLayout;
  [(TSDAbstractLayout *)&v2 dealloc];
}

- (id)layoutGeometryFromInfo
{
  v4.receiver = self;
  v4.super_class = TSDShapeLayout;
  v2 = [(TSDLayout *)&v4 layoutGeometryFromInfo];

  return v2;
}

- (BOOL)isFreehandDrawingSpacerShape
{
  objc_opt_class();
  v5 = objc_msgSend_shapeInfo(self, v3, v4);
  v8 = objc_msgSend_parentInfo(v5, v6, v7);
  v9 = TSUDynamicCast();

  if (v9)
  {
    v12 = objc_msgSend_freehandDrawingSpacerShape(v9, v10, v11);
    v15 = objc_msgSend_shapeInfo(self, v13, v14);
    v16 = v12 == v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)reliedOnLayouts
{
  v40 = *MEMORY[0x277D85DE8];
  v38.receiver = self;
  v38.super_class = TSDShapeLayout;
  v3 = [(TSDLayout *)&v38 reliedOnLayouts];
  if (objc_msgSend_isFreehandDrawingSpacerShape(self, v4, v5))
  {
    v8 = objc_msgSend_set(MEMORY[0x277CBEB58], v6, v7);
    objc_opt_class();
    v11 = objc_msgSend_shapeInfo(self, v9, v10);
    v14 = objc_msgSend_parentInfo(v11, v12, v13);
    v15 = TSUCheckedDynamicCast();

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v18 = objc_msgSend_childInfos(v15, v16, v17, 0);
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v34, v39, 16);
    if (v20)
    {
      v23 = v20;
      v24 = *v35;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(v18);
          }

          v26 = *(*(&v34 + 1) + 8 * i);
          v27 = objc_msgSend_info(self, v21, v22);

          if (v26 != v27)
          {
            v28 = objc_msgSend_layoutController(self, v21, v22);
            v30 = objc_msgSend_layoutForInfo_(v28, v29, v26);

            if (v30)
            {
              objc_msgSend_addObject_(v8, v31, v30);
            }
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v34, v39, 16);
      }

      while (v23);
    }

    if (v3)
    {
      objc_msgSend_unionSet_(v8, v32, v3);
    }
  }

  else
  {
    v8 = v3;
  }

  return v8;
}

- (void)invalidate
{
  if (objc_msgSend_isFreehandDrawingSpacerShape(self, a2, v2))
  {
    *&self->super.super.super.mInvalidFlags |= 3u;
  }

  v4.receiver = self;
  v4.super_class = TSDShapeLayout;
  [(TSDDrawableLayout *)&v4 invalidate];
}

- (id)computeLayoutGeometry
{
  v144 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v5 = objc_msgSend_parent(self, v3, v4);
  v6 = TSUDynamicCast();

  if (v6)
  {
    objc_msgSend_maximumFrameSizeForChild_(v6, v7, self);
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v10 = 1.79769313e308;
    v12 = 1.79769313e308;
  }

  objc_msgSend_i_scaleFromClampedParentLayout(self, v7, v8);
  v16 = v15;
  v17 = v10 == self->mLastParentLimitedSize.width && v12 == self->mLastParentLimitedSize.height;
  if (v17 && v15 == self->mLastParentLimitedScale)
  {
    if (!objc_msgSend_p_isInlineInsideParentContainerDynamicallyChangingAvailableSpace(self, v13, v14))
    {
      v21 = objc_msgSend_pathSource(self, v13, v14);
      goto LABEL_12;
    }
  }

  else
  {
    self->mLastParentLimitedSize.width = v10;
    self->mLastParentLimitedSize.height = v12;
    self->mLastParentLimitedScale = v15;
  }

  v18 = objc_msgSend_shapeInfo(self, v13, v14);
  v21 = objc_msgSend_pathSource(v18, v19, v20);

LABEL_12:
  isFreehandDrawingSpacerShape = objc_msgSend_isFreehandDrawingSpacerShape(self, v22, v23);
  v28 = *MEMORY[0x277CBF348];
  v27 = *(MEMORY[0x277CBF348] + 8);
  v134 = *MEMORY[0x277CBF348];
  if (isFreehandDrawingSpacerShape && objc_msgSend_layoutState(v6, v24, v25) != 4)
  {
    v133 = objc_msgSend_layoutInfoGeometry(self, v24, v25);
    objc_msgSend_boundsBeforeRotation(v133, v31, v32);
    x = v33;
    y = v35;
    width = v37;
    height = v39;
    objc_opt_class();
    v43 = objc_msgSend_shapeInfo(self, v41, v42);
    v46 = objc_msgSend_parentInfo(v43, v44, v45);
    v47 = TSUCheckedDynamicCast();

    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v132 = v47;
    v50 = objc_msgSend_childInfos(v47, v48, v49);
    v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v139, v143, 16);
    if (v52)
    {
      v55 = v52;
      v56 = *v140;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v140 != v56)
          {
            objc_enumerationMutation(v50);
          }

          v58 = *(*(&v139 + 1) + 8 * i);
          v59 = objc_msgSend_info(self, v53, v54);

          if (v58 != v59)
          {
            v60 = objc_msgSend_layoutController(self, v53, v54);
            v62 = objc_msgSend_layoutForInfo_(v60, v61, v58);

            if (v62)
            {
              if (objc_msgSend_layoutState(self, v63, v64) || (objc_msgSend_originalGeometry(v62, v65, v66), v70 = objc_claimAutoreleasedReturnValue(), v70, !v70))
              {
                v67 = objc_msgSend_geometry(v62, v65, v66);
              }

              else
              {
                v67 = objc_msgSend_originalGeometry(v62, v65, v66);
              }

              v71 = v67;
              objc_msgSend_frame(v67, v68, v69);
              v148.origin.x = v72;
              v148.origin.y = v73;
              v148.size.width = v74;
              v148.size.height = v75;
              v146.origin.x = x;
              v146.origin.y = y;
              v146.size.width = width;
              v146.size.height = height;
              v147 = CGRectUnion(v146, v148);
              x = v147.origin.x;
              y = v147.origin.y;
              width = v147.size.width;
              height = v147.size.height;
            }
          }
        }

        v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v53, &v139, v143, 16);
      }

      while (v55);
    }

    objc_msgSend_naturalSize(v21, v76, v77);
    if (v81 != width || v80 != height)
    {
      v82 = objc_msgSend_copy(v21, v78, v79);

      objc_msgSend_setNaturalSize_(v82, v83, v84, width, height);
      v21 = v82;
    }

    v29 = v21;
    objc_msgSend_boundsBeforeRotation(v133, v85, v86);
    TSUSubtractPoints();
    v28 = v87;
    v30 = v88;

    v21 = v29;
  }

  else
  {
    v29 = 0;
    v30 = v27;
  }

  if (v10 < 1.79769313e308 || v12 < 1.79769313e308 || v16 != 1.0)
  {
    v89 = objc_msgSend_copy(v21, v24, v25);
    v92 = objc_msgSend_layoutInfoGeometry(self, v90, v91);
    objc_msgSend_center(v92, v93, v94);
    v97 = objc_msgSend_layoutInfoGeometry(self, v95, v96);
    objc_msgSend_position(v97, v98, v99);

    memset(&v138, 0, sizeof(v138));
    v102 = objc_msgSend_layoutInfoGeometry(self, v100, v101);
    if (v102)
    {
      TSUSubtractPoints();
      objc_msgSend_transformBasedOnPoint_centeredAtPoint_(v102, v103, v104, v134, v27, v105, v106);
    }

    else
    {
      memset(&v138, 0, sizeof(v138));
    }

    if (v16 == 1.0)
    {
      v137 = v138;
      objc_msgSend_scaleToApplyToPathSourceNaturalSizeApplyingLayoutTransform_withStartingPathSource_(self, v107, &v137, v89);
      v16 = v109;
    }

    if (v16 == 1.0)
    {
      if (v21 != self->mShrunkenPathSource)
      {
        goto LABEL_46;
      }
    }

    else
    {
      objc_msgSend_naturalSize(v89, v107, v108);
      TSUMultiplySizeScalar();
      objc_msgSend_scaleToNaturalSize_(v89, v110, v111);
    }

    v112 = v89;

    v29 = v112;
LABEL_46:
  }

  mShrunkenPathSource = self->mShrunkenPathSource;
  objc_storeStrong(&self->mShrunkenPathSource, v29);
  v116 = objc_msgSend_pathSource(self, v114, v115);
  if (v116 == v21)
  {
    v117 = isFreehandDrawingSpacerShape;
  }

  else
  {
    v117 = 1;
  }

  if (v117)
  {
  }

  else
  {

    if ((v29 == 0) != (mShrunkenPathSource != 0))
    {
      goto LABEL_54;
    }
  }

  objc_msgSend_invalidatePath(self, v118, v119);
  objc_msgSend_invalidatePathBounds(self, v120, v121);
LABEL_54:
  objc_msgSend_pathBounds(self, v118, v119);
  v123 = v122;
  v125 = v124;
  memset(&v138, 0, sizeof(v138));
  objc_msgSend_computeLayoutTransform(self, v126, v127);
  CGAffineTransformMakeTranslation(&t1, v28, v30);
  t2 = v138;
  CGAffineTransformConcat(&v137, &t1, &t2);
  v138 = v137;
  v128 = [TSDLayoutGeometry alloc];
  v137 = v138;
  v130 = objc_msgSend_initWithSize_transform_(v128, v129, &v137, v123, v125);

  return v130;
}

- (double)scaleForInlineClampingUnrotatedSize:(CGSize)a3 withTransform:(CGAffineTransform *)a4
{
  height = a3.height;
  width = a3.width;
  v8 = objc_msgSend_shapeInfo(self, a2, a4);
  v11 = objc_msgSend_pathSource(v8, v9, v10);
  v14 = objc_msgSend_copy(v11, v12, v13);

  objc_msgSend_scaleToNaturalSize_(v14, v15, v16, width, height);
  v17 = *&a4->c;
  v22[0] = *&a4->a;
  v22[1] = v17;
  v22[2] = *&a4->tx;
  objc_msgSend_scaleToApplyToPathSourceNaturalSizeApplyingLayoutTransform_withStartingPathSource_(self, v18, v22, v14);
  v20 = v19;

  return v20;
}

- (CGAffineTransform)computeLayoutTransform
{
  memset(&v16, 0, sizeof(v16));
  v6 = objc_msgSend_layoutInfoGeometry(self, a3, v3);
  v9 = v6;
  if (v6)
  {
    objc_msgSend_transform(v6, v7, v8);
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
  }

  objc_msgSend_pathBounds(self, v10, v11);
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  v15 = v16;
  return CGAffineTransformTranslate(retstr, &v15, v12, v13);
}

- (void)p_performBlockOkayToSetGeometry:(id)a3
{
  v13 = a3;
  if (self->mOkayToSetGeometry)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDShapeLayout p_performBlockOkayToSetGeometry:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 281, 0, "Reentrant geometry changing okay logic");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    mOkayToSetGeometry = self->mOkayToSetGeometry;
  }

  else
  {
    mOkayToSetGeometry = 0;
  }

  self->mOkayToSetGeometry = 1;
  v13[2]();
  self->mOkayToSetGeometry = mOkayToSetGeometry;
}

- (void)setGeometry:(id)a3
{
  v6 = a3;
  if (!self->mOkayToSetGeometry)
  {
    v7 = objc_msgSend_shapeInfo(self, v4, v5);
    v8 = objc_opt_class();
    isCaption = objc_msgSend_isCaption(v8, v9, v10);

    if ((isCaption & 1) == 0)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDShapeLayout setGeometry:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 289, 0, "You should not be setting the geometry on a shape except via its own validation logic, or via -offsetGeometryBy: Please talk to drawables if you think you want to do this.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }
  }

  if (self->mCachedAlignmentFrame.isValid)
  {
    v19 = objc_msgSend_geometry(self, v4, v5);
    v21 = v19;
    if (v19 && (objc_msgSend_isEqual_(v19, v20, v6) & 1) == 0 && (objc_msgSend_differsInMoreThanTranslationFrom_(v21, v22, v6) & 1) == 0)
    {
      if (v6)
      {
        objc_msgSend_transform(v6, v23, v24);
      }

      objc_msgSend_transform(v21, v23, v24, *(MEMORY[0x277CBF348] + 8));
      TSUSubtractPoints();
      TSUAddPoints();
      self->mCachedAlignmentFrame.cachedRect.origin.x = v25;
      self->mCachedAlignmentFrame.cachedRect.origin.y = v26;
      p_mCachedAlignmentFrameInRootTransformInRoot = &self->mCachedAlignmentFrameInRootTransformInRoot;
      v28 = *&self->mCachedAlignmentFrameInRootTransformInRoot.c;
      *&v42.a = *&self->mCachedAlignmentFrameInRootTransformInRoot.a;
      *&v42.c = v28;
      *&v42.tx = *&self->mCachedAlignmentFrameInRootTransformInRoot.tx;
      TSUTransformAngleInDegrees();
      if (v29 == 0.0)
      {
        TSUAddPoints();
        self->mCachedAlignmentFrameInRoot.cachedRect.origin.x = v30;
        self->mCachedAlignmentFrameInRoot.cachedRect.origin.y = v31;
        memset(&v42, 0, sizeof(v42));
        objc_msgSend_transform(v21, v32, v33);
        CGAffineTransformInvert(&t2, &t1);
        v34 = *&self->mCachedAlignmentFrameInRootTransformInRoot.c;
        *&t1.a = *&p_mCachedAlignmentFrameInRootTransformInRoot->a;
        *&t1.c = v34;
        *&t1.tx = *&self->mCachedAlignmentFrameInRootTransformInRoot.tx;
        CGAffineTransformConcat(&v42, &t1, &t2);
        if (v6)
        {
          objc_msgSend_transform(v6, v35, v36);
        }

        else
        {
          memset(&t1, 0, sizeof(t1));
        }

        v39 = v42;
        CGAffineTransformConcat(&t2, &v39, &t1);
        v37 = *&t2.c;
        *&p_mCachedAlignmentFrameInRootTransformInRoot->a = *&t2.a;
        *&self->mCachedAlignmentFrameInRootTransformInRoot.c = v37;
        *&self->mCachedAlignmentFrameInRootTransformInRoot.tx = *&t2.tx;
      }

      else
      {
        self->mCachedAlignmentFrameInRoot.isValid = 0;
      }
    }
  }

  v38.receiver = self;
  v38.super_class = TSDShapeLayout;
  [(TSDDrawableLayout *)&v38 setGeometry:v6];
}

- (CGRect)alignmentFrame
{
  p_mCachedAlignmentFrame = &self->mCachedAlignmentFrame;
  if (self->mCachedAlignmentFrame.isValid)
  {
    x = p_mCachedAlignmentFrame->cachedRect.origin.x;
    y = self->mCachedAlignmentFrame.cachedRect.origin.y;
    width = self->mCachedAlignmentFrame.cachedRect.size.width;
    height = self->mCachedAlignmentFrame.cachedRect.size.height;
  }

  else
  {
    objc_msgSend_transform(self, a2, v2);
    objc_msgSend_shapeFrameWithTransform_(self, v9, &v10);
    p_mCachedAlignmentFrame->cachedRect.origin.x = x;
    p_mCachedAlignmentFrame->cachedRect.origin.y = y;
    p_mCachedAlignmentFrame->cachedRect.size.width = width;
    p_mCachedAlignmentFrame->cachedRect.size.height = height;
    p_mCachedAlignmentFrame->isValid = 1;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)a3
{
  v5 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v5;
  *&t1.tx = *&a3->tx;
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&t2.a = *MEMORY[0x277CBF2C0];
  *&t2.c = v6;
  *&t2.tx = *(MEMORY[0x277CBF2C0] + 32);
  if (CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v17.receiver = self;
    v17.super_class = TSDShapeLayout;
    v9 = *&a3->c;
    *&t1.a = *&a3->a;
    *&t1.c = v9;
    *&t1.tx = *&a3->tx;
    [(TSDStyledLayout *)&v17 baseFrameForFrameForCullingWithAdditionalTransform:&t1];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
    objc_msgSend_transform(self, v7, v8);
    v14 = *&a3->c;
    *&v16.a = *&a3->a;
    *&v16.c = v14;
    *&v16.tx = *&a3->tx;
    CGAffineTransformConcat(&t1, &t2, &v16);
    t2 = t1;
    objc_msgSend_shapeFrameWithTransform_(self, v15, &t2);
  }

  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)alignmentFrameInRoot
{
  v4 = objc_msgSend_parent(self, a2, v2);

  if (v4)
  {
    p_mCachedAlignmentFrameInRoot = &self->mCachedAlignmentFrameInRoot;
    if (!self->mCachedAlignmentFrameInRoot.isValid || (objc_msgSend_transformInRoot(self, v5, v6), v8 = *&self->mCachedAlignmentFrameInRootTransformInRoot.c, *&v21.a = *&self->mCachedAlignmentFrameInRootTransformInRoot.a, *&v21.c = v8, *&v21.tx = *&self->mCachedAlignmentFrameInRootTransformInRoot.tx, !CGAffineTransformEqualToTransform(&v21, &t2)))
    {
      objc_msgSend_transformInRoot(self, v5, v6);
      objc_msgSend_shapeFrameWithTransform_(self, v9, &t2);
      p_mCachedAlignmentFrameInRoot->cachedRect.origin.x = v10;
      self->mCachedAlignmentFrameInRoot.cachedRect.origin.y = v11;
      self->mCachedAlignmentFrameInRoot.cachedRect.size.width = v12;
      self->mCachedAlignmentFrameInRoot.cachedRect.size.height = v13;
      objc_msgSend_transformInRoot(self, v14, v15);
      v16 = *&t2.c;
      *&self->mCachedAlignmentFrameInRootTransformInRoot.a = *&t2.a;
      *&self->mCachedAlignmentFrameInRootTransformInRoot.c = v16;
      *&self->mCachedAlignmentFrameInRootTransformInRoot.tx = *&t2.tx;
      self->mCachedAlignmentFrameInRoot.isValid = 1;
    }

    x = p_mCachedAlignmentFrameInRoot->cachedRect.origin.x;
    y = self->mCachedAlignmentFrameInRoot.cachedRect.origin.y;
    width = self->mCachedAlignmentFrameInRoot.cachedRect.size.width;
    height = self->mCachedAlignmentFrameInRoot.cachedRect.size.height;
  }

  else
  {
    objc_msgSend_alignmentFrame(self, v5, v6);
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)processChangedProperty:(int)a3
{
  v23.receiver = self;
  v23.super_class = TSDShapeLayout;
  [(TSDDrawableLayout *)&v23 processChangedProperty:?];
  if (a3 > 522)
  {
    if (a3 == 523)
    {
      objc_msgSend_invalidatePathBounds(self, v5, v6);
      objc_msgSend_p_invalidateTail(self, v21, v22);
    }

    else
    {
      if (a3 != 527)
      {
        return;
      }

      objc_msgSend_invalidatePath(self, v5, v6);
      mShrunkenPathSource = self->mShrunkenPathSource;
      self->mShrunkenPathSource = 0;
    }

    goto LABEL_11;
  }

  if (a3 != 517)
  {
    if (a3 != 522)
    {
      return;
    }

    objc_msgSend_invalidatePathBounds(self, v5, v6);
    objc_msgSend_p_invalidateHead(self, v7, v8);
LABEL_11:
    objc_msgSend_invalidateFrame(self, v9, v10);
    return;
  }

  objc_msgSend_invalidatePathBounds(self, v5, v6);
  objc_msgSend_p_invalidateHead(self, v12, v13);
  objc_msgSend_p_invalidateTail(self, v14, v15);
  objc_msgSend_invalidateFrame(self, v16, v17);
  v18 = self->mShrunkenPathSource;
  if (v18)
  {
    self->mShrunkenPathSource = 0;

    objc_msgSend_invalidatePath(self, v19, v20);
  }
}

- (CGRect)boundsForStandardKnobs
{
  v4 = objc_msgSend_pathSource(self, a2, v2);
  objc_msgSend_naturalSize(v4, v5, v6);
  TSURectWithSize();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  objc_msgSend_pathBounds(self, v15, v16);
  v18 = -v17;
  v20 = -v19;
  v21 = v8;
  v22 = v10;
  v23 = v12;
  v24 = v14;

  return CGRectOffset(*&v21, v18, v20);
}

- (CGRect)frameForCullingWithBaseFrame:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4
{
  v6.receiver = self;
  v6.super_class = TSDShapeLayout;
  v4 = *&a4->c;
  v5[0] = *&a4->a;
  v5[1] = v4;
  v5[2] = *&a4->tx;
  [(TSDStyledLayout *)&v6 frameForCullingWithBaseFrame:v5 additionalTransform:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  return CGRectInset(v7, -1.0, -1.0);
}

- (CGRect)frameForPartitioning
{
  objc_msgSend_frameForCulling(self, a2, v2);

  return CGRectInset(*&v3, 1.0, 1.0);
}

- (BOOL)shouldAdjustForStrokeWidthForCollabCursor
{
  if (!objc_msgSend_pathIsLineSegment(self, a2, v2))
  {
    return 0;
  }

  v6 = objc_msgSend_info(self, v4, v5);
  v9 = objc_msgSend_geometry(v6, v7, v8);
  objc_msgSend_size(v9, v10, v11);
  if (v14 == 0.0)
  {
    v15 = 1;
  }

  else
  {
    v16 = objc_msgSend_info(self, v12, v13);
    v19 = objc_msgSend_geometry(v16, v17, v18);
    objc_msgSend_size(v19, v20, v21);
    v15 = v22 == 0.0;
  }

  return v15;
}

- (id)stroke
{
  v4 = objc_msgSend_shapeInfo(self, a2, v2);
  v7 = objc_msgSend_stroke(v4, v5, v6);

  if (self->mLastParentLimitedScale == 1.0)
  {
    v10 = v7;
  }

  else
  {
    v10 = objc_msgSend_mutableCopy(v7, v8, v9);
    if (objc_msgSend_isFrame(v10, v11, v12))
    {
      v15 = v10;
      objc_msgSend_minimumAssetScale(v15, v16, v17);
      v19 = v18;
      objc_msgSend_assetScale(v15, v20, v21);
      objc_msgSend_setAssetScale_(v15, v23, v24, fmax(v19, v22 * self->mLastParentLimitedScale));
    }

    else
    {
      objc_msgSend_width(v10, v13, v14);
      objc_msgSend_setWidth_(v10, v26, v27, v25 * self->mLastParentLimitedScale);
    }
  }

  return v10;
}

- (TSDShapeInfo)shapeInfo
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (TSDPathSource)pathSource
{
  mShrunkenPathSource = self->mShrunkenPathSource;
  if (mShrunkenPathSource)
  {
    v4 = mShrunkenPathSource;
  }

  else
  {
    v5 = objc_msgSend_shapeInfo(self, a2, v2);
    v4 = objc_msgSend_pathSource(v5, v6, v7);
  }

  return v4;
}

- (id)editablePathSource
{
  v4 = objc_msgSend_pathSource(self, a2, v2);
  v7 = objc_msgSend_shapeInfo(self, v5, v6);
  v10 = objc_msgSend_pathSource(v7, v8, v9);

  objc_opt_class();
  v11 = TSUDynamicCast();
  if (v11)
  {
    v13 = v11;
    mCachedEditableBezierPathSource = self->mCachedEditableBezierPathSource;
    self->mCachedEditableBezierPathSource = 0;

    mCachedPathSource = self->mCachedPathSource;
    self->mCachedPathSource = 0;
  }

  else
  {
    if (v10 != self->mCachedPathSource)
    {
      v16 = objc_msgSend_editableBezierPathSourceWithPathSource_(TSDEditableBezierPathSource, v12, v4);
      v17 = self->mCachedEditableBezierPathSource;
      self->mCachedEditableBezierPathSource = v16;

      objc_storeStrong(&self->mCachedPathSource, v4);
    }

    v13 = self->mCachedEditableBezierPathSource;
  }

  return v13;
}

- (CGRect)pathBoundsWithoutStroke
{
  (MEMORY[0x2821F9670])(self, sel_p_cachedPathBoundsWithoutStroke);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)smartPathSource
{
  v3 = objc_msgSend_pathSource(self, a2, v2);
  v4 = TSUProtocolCast();

  return v4;
}

- (TSDInfoGeometry)layoutInfoGeometry
{
  v3 = objc_msgSend_info(self, a2, v2);
  v6 = objc_msgSend_geometry(v3, v4, v5);

  return v6;
}

- (CGPoint)headPoint
{
  objc_msgSend_p_validateHeadAndTail(self, a2, v2);
  x = self->mHeadPoint.x;
  y = self->mHeadPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)tailPoint
{
  objc_msgSend_p_validateHeadAndTail(self, a2, v2);
  x = self->mTailPoint.x;
  y = self->mTailPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)headLineEndPoint
{
  objc_msgSend_p_validateHeadLineEnd(self, a2, v2);
  x = self->mHeadLineEndPoint.x;
  y = self->mHeadLineEndPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)tailLineEndPoint
{
  objc_msgSend_p_validateTailLineEnd(self, a2, v2);
  x = self->mTailLineEndPoint.x;
  y = self->mTailLineEndPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (BOOL)isTailEndOnLeft
{
  objc_msgSend_tailPoint(self, a2, v2);
  v6 = objc_msgSend_geometryInRoot(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    objc_msgSend_transform(v6, v7, v8);
  }

  objc_msgSend_headPoint(self, v10, v11);
  v14 = objc_msgSend_geometryInRoot(self, v12, v13);
  v17 = v14;
  if (v14)
  {
    objc_msgSend_transform(v14, v15, v16);
  }

  TSUSubtractPoints();
  if (fabs(v18) < 1.0)
  {
    v18 = v19;
  }

  return v18 < 0.0;
}

- (double)lineEndScale:(BOOL)a3
{
  if (a3)
  {
    objc_msgSend_strokeHeadLineEnd(self, a2, a3);
  }

  else
  {
    objc_msgSend_strokeTailLineEnd(self, a2, a3);
  }
  v4 = ;
  v7 = objc_msgSend_stroke(self, v5, v6);
  objc_msgSend_width(v7, v8, v9);
  objc_msgSend_scaleForStrokeWidth_(v4, v10, v11);
  v13 = v12;

  return v13;
}

- (TSUBezierPath)clippedPathForLineEnds
{
  if ((*&self->mShapeInvalidFlags & 0x40) != 0)
  {
    ClippedPath = objc_msgSend_p_createClippedPath(self, a2, v2);
    mCachedClippedPath = self->mCachedClippedPath;
    self->mCachedClippedPath = ClippedPath;

    *&self->mShapeInvalidFlags &= ~0x40u;
  }

  v6 = self->mCachedClippedPath;

  return v6;
}

- (CGRect)shapeFrameWithTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->c;
  v8[0] = *&a3->a;
  v8[1] = v3;
  v8[2] = *&a3->tx;
  objc_msgSend_shapeFrameWithTransform_strokeDrawOptions_(self, a2, v8, 7);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)shapeFrameWithTransform:(CGAffineTransform *)a3 strokeDrawOptions:(unint64_t)a4
{
  v4 = a4;
  objc_msgSend_pathBounds(self, a2, a3);
  v9 = *&a3->c;
  *&v46.a = *&a3->a;
  *&v46.c = v9;
  *&v46.tx = *&a3->tx;
  CGAffineTransformTranslate(&v47, &v46, -v7, -v8);
  v12 = *&v47.c;
  *&a3->a = *&v47.a;
  *&a3->c = v12;
  *&a3->tx = *&v47.tx;
  if ((v4 & 1) == 0)
  {
    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
    goto LABEL_10;
  }

  v17 = objc_msgSend_stroke(self, v10, v11);
  if (objc_msgSend_isFrame(v17, v18, v19))
  {
    objc_msgSend_pathBounds(self, v20, v21);
  }

  else
  {
    v26 = *&a3->c;
    *&v47.a = *&a3->a;
    *&v47.c = v26;
    *&v47.tx = *&a3->tx;
    if (!TSUAffineTransformIsRectilinear())
    {
      v30 = *&a3->c;
      *&v47.a = *&a3->a;
      *&v47.c = v30;
      *&v47.tx = *&a3->tx;
      objc_msgSend_p_updatedCachedClipRectIfNeededForRotation_(self, v27, &v47);
      goto LABEL_9;
    }

    objc_msgSend_p_cachedClippedPathStroked(self, v27, v28);
  }

  v29 = *&a3->c;
  *&v47.a = *&a3->a;
  *&v47.c = v29;
  *&v47.tx = *&a3->tx;
  v48 = CGRectApplyAffineTransform(*&v22, &v47);
LABEL_9:
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;

LABEL_10:
  if (objc_msgSend_pathIsOpen(self, v10, v11))
  {
    if ((v4 & 2) != 0)
    {
      v32 = *&a3->c;
      *&v47.a = *&a3->a;
      *&v47.c = v32;
      *&v47.tx = *&a3->tx;
      objc_msgSend_p_boundsOfLineEndForHead_transform_(self, v31, 1, &v47);
      v54.origin.x = v33;
      v54.origin.y = v34;
      v54.size.width = v35;
      v54.size.height = v36;
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      v50 = CGRectUnion(v49, v54);
      x = v50.origin.x;
      y = v50.origin.y;
      width = v50.size.width;
      height = v50.size.height;
    }

    if ((v4 & 4) != 0)
    {
      v37 = *&a3->c;
      *&v47.a = *&a3->a;
      *&v47.c = v37;
      *&v47.tx = *&a3->tx;
      objc_msgSend_p_boundsOfLineEndForHead_transform_(self, v31, 0, &v47);
      v55.origin.x = v38;
      v55.origin.y = v39;
      v55.size.width = v40;
      v55.size.height = v41;
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      v52 = CGRectUnion(v51, v55);
      x = v52.origin.x;
      y = v52.origin.y;
      width = v52.size.width;
      height = v52.size.height;
    }
  }

  v42 = x;
  v43 = y;
  v44 = width;
  v45 = height;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

- (BOOL)shouldBeDisplayedInShowMode
{
  objc_msgSend_frameForCulling(self, a2, v2);
  HasNaNComponents = TSURectHasNaNComponents();
  v9.receiver = self;
  v9.super_class = TSDShapeLayout;
  if ([(TSDLayout *)&v9 shouldBeDisplayedInShowMode])
  {
    v7 = (objc_msgSend_isInvisibleAutosizingShape(self, v5, v6) | HasNaNComponents) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)isInvisibleAutosizingShape
{
  v4 = objc_msgSend_info(self, a2, v2);
  v7 = objc_msgSend_geometry(v4, v5, v6);
  v10 = objc_msgSend_widthValid(v7, v8, v9);

  v13 = objc_msgSend_info(self, v11, v12);
  v16 = objc_msgSend_geometry(v13, v14, v15);
  v19 = objc_msgSend_heightValid(v16, v17, v18);

  if (v10 && (v19 & 1) != 0)
  {
    LOBYTE(v22) = 0;
  }

  else
  {
    v23 = objc_msgSend_layoutController(self, v20, v21);
    v26 = objc_msgSend_canvas(v23, v24, v25);
    v22 = objc_msgSend_shouldShowInstructionalTextForLayout_(v26, v27, self) ^ 1;
  }

  return v22;
}

- (CGPoint)centerForConnecting
{
  v21.receiver = self;
  v21.super_class = TSDShapeLayout;
  [(TSDLayout *)&v21 centerForConnecting];
  v4 = v3;
  v6 = v5;
  if (objc_msgSend_isInvisibleAutosizingShape(self, v7, v8))
  {
    v11 = objc_msgSend_info(self, v9, v10);
    v14 = objc_msgSend_geometry(v11, v12, v13);
    objc_msgSend_center(v14, v15, v16);
    v4 = v17;
    v6 = v18;
  }

  v19 = v4;
  v20 = v6;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGRect)aliasedAlignmentFrameForScale:(double)a3
{
  v67 = 0.0;
  v68 = 0.0;
  v65 = 0.0;
  v66 = 0.0;
  v63 = 0;
  v64 = 0;
  objc_msgSend_aliasPathForScale_adjustedStroke_adjustedPath_startDelta_endDelta_(self, a2, &v64, &v63, &v67, &v65, a3);
  v4 = v64;
  v5 = v63;
  objc_msgSend_pathBounds(self, v6, v7);
  v9 = v8;
  v11 = v10;
  memset(&v62, 0, sizeof(v62));
  objc_msgSend_transform(self, v12, v13);
  v60 = v62;
  CGAffineTransformTranslate(&v61, &v60, -v9, -v11);
  v62 = v61;
  v14 = v4;
  if (objc_msgSend_isFrame(v14, v15, v16))
  {
    objc_msgSend_bounds(v5, v17, v18);
    objc_msgSend_coverageRect_(v14, v19, v20);
    v61 = v62;
    v70 = CGRectApplyAffineTransform(v69, &v61);
    x = v70.origin.x;
    y = v70.origin.y;
    width = v70.size.width;
    height = v70.size.height;
  }

  else
  {
    v27 = objc_msgSend_copy(v5, v17, v18);
    v61 = v62;
    objc_msgSend_transformUsingAffineTransform_(v27, v28, &v61);
    objc_msgSend_boundsForPath_(v14, v29, v27);
    x = v30;
    y = v31;
    width = v32;
    height = v33;
  }

  if (objc_msgSend_pathIsOpen(self, v21, v22))
  {
    v61 = v62;
    objc_msgSend_p_boundsOfLineEndForHead_transform_(self, v34, 1, &v61);
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    CGAffineTransformMakeTranslation(&v61, v67, v68);
    v71.origin.x = v36;
    v71.origin.y = v38;
    v71.size.width = v40;
    v71.size.height = v42;
    v78 = CGRectApplyAffineTransform(v71, &v61);
    v72.origin.x = x;
    v72.origin.y = y;
    v72.size.width = width;
    v72.size.height = height;
    v73 = CGRectUnion(v72, v78);
    v43 = v73.origin.x;
    v44 = v73.origin.y;
    v45 = v73.size.width;
    v46 = v73.size.height;
    v61 = v62;
    objc_msgSend_p_boundsOfLineEndForHead_transform_(self, v47, 0, &v61);
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    CGAffineTransformMakeTranslation(&v61, v65, v66);
    v74.origin.x = v49;
    v74.origin.y = v51;
    v74.size.width = v53;
    v74.size.height = v55;
    v79 = CGRectApplyAffineTransform(v74, &v61);
    v75.origin.x = v43;
    v75.origin.y = v44;
    v75.size.width = v45;
    v75.size.height = v46;
    v76 = CGRectUnion(v75, v79);
    x = v76.origin.x;
    y = v76.origin.y;
    width = v76.size.width;
    height = v76.size.height;
  }

  v56 = x;
  v57 = y;
  v58 = width;
  v59 = height;
  result.size.height = v59;
  result.size.width = v58;
  result.origin.y = v57;
  result.origin.x = v56;
  return result;
}

- (void)aliasPathForScale:(double)a3 adjustedStroke:(id *)a4 adjustedPath:(id *)a5 startDelta:(CGPoint *)a6 endDelta:(CGPoint *)a7
{
  v14 = objc_msgSend_stroke(self, a2, a4);
  objc_msgSend_aliasPathForScale_originalStroke_adjustedStroke_adjustedPath_startDelta_endDelta_(self, v13, v14, a4, a5, a6, a7, a3);
}

- (void)aliasPathForScale:(double)a3 originalStroke:(id)a4 adjustedStroke:(id *)a5 adjustedPath:(id *)a6 startDelta:(CGPoint *)a7 endDelta:(CGPoint *)a8
{
  v189 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v17 = objc_msgSend_shapeInfo(self, v15, v16);
  if (!objc_msgSend_pathIsOpen(self, v18, v19))
  {
LABEL_19:
    v49 = objc_msgSend_path(self, v20, v21);
    goto LABEL_22;
  }

  v181 = a6;
  v24 = objc_msgSend_headLineEnd(v17, v20, v21);
  if (v24)
  {
    v8 = objc_msgSend_headLineEnd(v17, v22, v23);
    v9 = objc_msgSend_null(MEMORY[0x277CBEB68], v25, v26);
    if (objc_msgSend_isEqual_(v8, v27, v9))
    {
      v28 = a5;
      v179 = v14;
      v29 = 0;
    }

    else
    {
      v30 = objc_msgSend_headLineEnd(v17, v22, v23);
      if ((objc_msgSend_isNone(v30, v31, v32) & 1) == 0)
      {

        goto LABEL_21;
      }

      v175 = v30;
      v28 = a5;
      v179 = v14;
      v29 = 1;
    }
  }

  else
  {
    v28 = a5;
    v179 = v14;
    v29 = 0;
  }

  v33 = objc_msgSend_tailLineEnd(v17, v22, v23);
  if (v33)
  {
    v36 = v33;
    v176 = v9;
    v177 = v8;
    objc_msgSend_tailLineEnd(v17, v34, v35);
    v38 = v37 = v17;
    v41 = objc_msgSend_null(MEMORY[0x277CBEB68], v39, v40);
    if (objc_msgSend_isEqual_(v38, v42, v41))
    {

      v45 = 0;
    }

    else
    {
      v46 = objc_msgSend_tailLineEnd(v37, v43, v44);
      v45 = objc_msgSend_isNone(v46, v47, v48) ^ 1;
    }

    v17 = v37;
    a5 = v28;
    v9 = v176;
    v8 = v177;
    if (v29)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v45 = 0;
    a5 = v28;
    if (v29)
    {
LABEL_15:
    }
  }

  if (v24)
  {
  }

  v14 = v179;
  a6 = v181;
  if ((v45 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_21:
  v49 = objc_msgSend_clippedPathForLineEnds(self, v20, v21);
LABEL_22:
  v52 = v49;
  memset(&v187, 0, sizeof(v187));
  objc_msgSend_transformInRoot(self, v50, v51);
  v55 = objc_msgSend_layoutController(self, v53, v54);
  v58 = objc_msgSend_canvas(v55, v56, v57);

  if (objc_msgSend_isPrinting(v58, v59, v60))
  {
    isDrawingIntoPDF = 1;
  }

  else
  {
    isDrawingIntoPDF = objc_msgSend_isDrawingIntoPDF(v58, v61, v62);
  }

  v64 = a8;
  if (a5)
  {
    v65 = v14;
    *a5 = v14;
  }

  v66 = a5;
  if (a6)
  {
    *a6 = objc_msgSend_copy(v52, v61, v62);
  }

  v67 = MEMORY[0x277CBF348];
  if (a7)
  {
    *a7 = *MEMORY[0x277CBF348];
  }

  if (a8)
  {
    *a8 = *v67;
  }

  if (v52)
  {
    v188 = v187;
    if (!(isDrawingIntoPDF & 1 | ((TSUIsTransformAxisAligned() & 1) == 0)))
    {
      objc_msgSend_pathBounds(self, v68, v69);
      v71 = v70;
      v73 = v72;
      if (!objc_msgSend_shouldRender(v14, v74, v75) || objc_msgSend_shouldAntialiasDefeat(v14, v76, v77))
      {
        v78 = objc_msgSend_mutableCopy(v14, v76, v77);
        v83 = 0.0;
        v180 = v78;
        if (objc_msgSend_shouldRender(v78, v79, v80))
        {
          isFrame = objc_msgSend_isFrame(v78, v81, v82);
          v85 = a7;
          if ((isFrame & 1) == 0)
          {
            objc_msgSend_width(v14, v81, v82);
            v83 = 1.0;
            if (v88 * a3 > 1.0)
            {
              TSURound();
              v90 = v89;
              objc_msgSend_setWidth_(v180, v91, v92, v89 / a3);
              v83 = v90;
            }

            objc_msgSend_width(v14, v86, v87);
            objc_msgSend_setActualWidth_(v180, v93, v94);
          }
        }

        else
        {
          v85 = a7;
        }

        v182 = a6;
        if (v85)
        {
          if (a8)
          {
LABEL_45:
            v95 = objc_msgSend_copy(v52, v81, v82);
            objc_msgSend_elementAtIndex_associatedPoints_(v52, v96, 0, &v188);
            if (v85)
            {
              *v85 = *&v188.a;
            }

            if (v64)
            {
              objc_msgSend_currentPoint(v52, v97, v98);
              v64->x = v99;
              v64->y = v100;
            }

            v185 = v187;
            CGAffineTransformTranslate(&v186, &v185, -v71, -v73);
            v187 = v186;
            objc_msgSend_transformUsingAffineTransform_(v95, v101, &v186);
            v104 = objc_msgSend_pathSource(self, v102, v103);
            objc_opt_class();
            v178 = v104;
            if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_isCurveContinuous(v104, v105, v106))
            {
              v109 = objc_msgSend_copy(v104, v105, v106);
              v110 = MEMORY[0x277D81160];
              objc_msgSend_bounds(v95, v111, v112);
              v115 = objc_msgSend_bezierPathWithRect_(v110, v113, v114);
              *&v116 = a3;
              *&v117 = v83;
              objc_msgSend_aliasedPathWithViewScale_effectiveStrokeWidth_(v115, v118, v119, v116, v117);
              v121 = v120 = v17;
              objc_msgSend_bounds(v121, v122, v123);
              v125 = v124;
              v127 = v126;
              v129 = v128;
              v131 = v130;

              v17 = v120;
              v85 = a7;

              v185 = v187;
              CGAffineTransformInvert(&v186, &v185);
              v190.origin.x = v125;
              v190.origin.y = v127;
              v190.size.width = v129;
              v190.size.height = v131;
              v191 = CGRectApplyAffineTransform(v190, &v186);
              objc_msgSend_scaleToNaturalSize_(v109, v132, v133, v191.size.width, v191.size.height);
              v134 = v109;
              v137 = objc_msgSend_bezierPathWithoutFlips(v109, v135, v136);

              v186 = v187;
              objc_msgSend_transformUsingAffineTransform_(v137, v138, &v186);
              objc_msgSend_bounds(v137, v139, v140);
              v142 = v125 - v141;
              objc_msgSend_bounds(v137, v143, v144);
              CGAffineTransformMakeTranslation(&v186, v142, v127 - v145);
              objc_msgSend_transformUsingAffineTransform_(v137, v146, &v186);
              v95 = v134;
            }

            else
            {
              *&v107 = a3;
              *&v108 = v83;
              v137 = objc_msgSend_aliasedPathWithViewScale_effectiveStrokeWidth_(v95, v105, v106, v107, v108);
            }

            v185 = v187;
            CGAffineTransformInvert(&v186, &v185);
            objc_msgSend_transformUsingAffineTransform_(v137, v147, &v186);
            *&v186.a = *v67;
            objc_msgSend_elementAtIndex_associatedPoints_(v137, v148, 0, &v186);
            if (v85)
            {
              TSUSubtractPoints();
              v85->x = v151;
              v85->y = v152;
            }

            if (a8)
            {
              objc_msgSend_currentPoint(v137, v149, v150);
              TSUSubtractPoints();
              a8->x = v153;
              a8->y = v154;
            }

            if (v66)
            {
              v155 = v180;
              *v66 = v180;
            }

            if (v182)
            {
              v156 = v137;
              *v182 = v137;
            }

            goto LABEL_62;
          }
        }

        else
        {
          v157 = MEMORY[0x277D81150];
          objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, "[TSDShapeLayout aliasPathForScale:originalStroke:adjustedStroke:adjustedPath:startDelta:endDelta:]");
          v159 = v158 = v17;
          v161 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v160, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeLayout.m");
          v162 = v157;
          v64 = a8;
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v162, v163, v159, v161, 825, 0, "invalid nil value for '%{public}s'", "startDelta");

          v85 = a7;
          v17 = v158;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v164, v165);
          if (a8)
          {
            goto LABEL_45;
          }
        }

        v166 = MEMORY[0x277D81150];
        objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, "[TSDShapeLayout aliasPathForScale:originalStroke:adjustedStroke:adjustedPath:startDelta:endDelta:]");
        v168 = v167 = v17;
        v170 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v169, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeLayout.m");
        v171 = v166;
        v64 = a8;
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v171, v172, v168, v170, 826, 0, "invalid nil value for '%{public}s'", "endDelta");

        v85 = a7;
        v17 = v167;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v173, v174);
        goto LABEL_45;
      }
    }
  }

LABEL_62:
}

- (TSDFill)fill
{
  v3 = objc_msgSend_shapeInfo(self, a2, v2);
  v6 = objc_msgSend_fill(v3, v4, v5);

  return v6;
}

- (BOOL)canBeIntersected
{
  if ((objc_msgSend_pathIsLineSegment(self, a2, v2) & 1) == 0)
  {
    v10 = objc_msgSend_info(self, v7, v8);
    isFloatingAboveText = objc_msgSend_isFloatingAboveText(v10, v11, v12);
    if (isFloatingAboveText)
    {
      goto LABEL_4;
    }

    v3 = objc_msgSend_info(self, v13, v14);
    if (!objc_msgSend_isAnchoredToText(v3, v21, v22))
    {
      v9 = 0;
      goto LABEL_13;
    }

    v4 = objc_msgSend_info(self, v23, v24);
    v5 = objc_msgSend_exteriorTextWrap(v4, v25, v26);
    if ((objc_msgSend_isHTMLWrap(v5, v27, v28) & 1) == 0)
    {
LABEL_4:
      v16 = objc_msgSend_parent(self, v13, v14);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = objc_msgSend_parent(self, v17, v18);
        v9 = objc_msgSend_allowIntersectionOfChildLayout_(v19, v20, self);

        if (isFloatingAboveText)
        {
          goto LABEL_14;
        }
      }

      else
      {

        v9 = 1;
        if (isFloatingAboveText)
        {
LABEL_14:

          return v9;
        }
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_13:
    goto LABEL_14;
  }

  return 0;
}

- (BOOL)supportsCalloutAttributes
{
  objc_opt_class();
  v5 = objc_msgSend_pathSource(self, v3, v4);
  v6 = TSUDynamicCast();
  v7 = v6 != 0;

  return v7;
}

- (void)invalidateFrame
{
  v3.receiver = self;
  v3.super_class = TSDShapeLayout;
  [(TSDLayout *)&v3 invalidateFrame];
  self->mCachedAlignmentFrame.isValid = 0;
  self->mCachedAlignmentFrameInRoot.isValid = 0;
}

- (void)invalidatePath
{
  *&self->mShapeInvalidFlags |= 7u;
  mCachedPath = self->mCachedPath;
  self->mCachedPath = 0;

  objc_msgSend_invalidatePathBounds(self, v4, v5);
  objc_msgSend_p_invalidateHead(self, v6, v7);
  objc_msgSend_p_invalidateTail(self, v8, v9);

  MEMORY[0x2821F9670](self, sel_p_invalidateClippedPath, v10);
}

- (void)invalidatePathBounds
{
  self->mCachedPathBoundsStruct.isValid = 0;
  self->mCachedPathBoundsWithoutStrokeStruct.isValid = 0;
  self->mCachedAlignmentFrame.isValid = 0;
  self->mCachedAlignmentFrameInRoot.isValid = 0;
  self->mCachedClippedPathStroked.isValid = 0;
  self->mCachedClippedPathRotatedStroked.isValid = 0;
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  self->mCachedPathBoundsStruct.cachedRect.origin = *MEMORY[0x277CBF3A0];
  self->mCachedPathBoundsStruct.cachedRect.size = v4;
  self->mCachedPathBoundsWithoutStrokeStruct.cachedRect.origin = v3;
  self->mCachedPathBoundsWithoutStrokeStruct.cachedRect.size = v4;
  objc_msgSend_invalidateExteriorWrap(self, a2, v2);
}

- (BOOL)supportsResize
{
  v4 = objc_msgSend_path(self, a2, v2);
  objc_msgSend_bounds(v4, v5, v6);
  v8 = v7;
  v10 = v9;

  return (objc_msgSend_pathIsLineSegment(self, v11, v12) & 1) == 0 && fmin(v8, v10) >= 0.00000001;
}

- (BOOL)p_isInlineInsideParentContainerDynamicallyChangingAvailableSpace
{
  v4 = objc_msgSend_shapeInfo(self, a2, v2);
  isInlineWithText = objc_msgSend_isInlineWithText(v4, v5, v6);

  if (!isInlineWithText || objc_msgSend_layoutState(self, v8, v9) != 1 && (objc_msgSend_layoutState(self, v10, v11) != 3 || !objc_msgSend_wantsNormalLayoutDuringDynamicRotation(self, v27, v28)))
  {
    return 0;
  }

  objc_opt_class();
  v14 = objc_msgSend_parent(self, v12, v13);
  v15 = TSUDynamicCast();

  if (!v15)
  {
    return 0;
  }

  do
  {
    isDynamicallyChangingAvailableSpaceForContainedChild = objc_msgSend_isDynamicallyChangingAvailableSpaceForContainedChild(v15, v16, v17);
    if ((isDynamicallyChangingAvailableSpaceForContainedChild & 1) != 0 || objc_msgSend_layoutState(v15, v18, v19) != 1 && objc_msgSend_layoutState(v15, v21, v22) != 3)
    {
      break;
    }

    objc_opt_class();
    v25 = objc_msgSend_parent(v15, v23, v24);
    v26 = TSUDynamicCast();

    v15 = v26;
  }

  while (v26);

  return isDynamicallyChangingAvailableSpaceForContainedChild;
}

- (double)i_scaleFromClampedParentLayout
{
  objc_opt_class();
  v5 = objc_msgSend_parent(self, v3, v4);
  v6 = TSUDynamicCast();

  if (v6)
  {
    objc_msgSend_i_scaleForInlineClampingChildLayouts(v6, v7, v8);
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  return v10;
}

- (CGSize)minimumSize
{
  v4 = objc_msgSend_shapeInfo(self, a2, v2);
  v7 = objc_msgSend_containingGroup(v4, v5, v6);
  isFreehandDrawing = objc_msgSend_isFreehandDrawing(v7, v8, v9);

  if (isFreehandDrawing)
  {
    v13 = *MEMORY[0x277CBF3A8];
    v14 = *(MEMORY[0x277CBF3A8] + 8);
  }

  else
  {
    v15 = objc_msgSend_shapeInfo(self, v11, v12);
    v18 = objc_msgSend_pathSource(v15, v16, v17);
    v21 = objc_msgSend_bezierPath(v18, v19, v20);
    isLineSegment = objc_msgSend_isLineSegment(v21, v22, v23);

    v13 = 0.001;
    v14 = 0.0;
    if (!isLineSegment)
    {
      v14 = 0.001;
    }
  }

  result.height = v14;
  result.width = v13;
  return result;
}

- (void)offsetGeometryBy:(CGPoint)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_276678708;
  v3[3] = &unk_27A6CC768;
  v4 = a3;
  v3[4] = self;
  objc_msgSend_p_performBlockOkayToSetGeometry_(self, a2, v3);
}

- (TSDLineEnd)strokeHeadLineEnd
{
  v4 = objc_msgSend_shapeInfo(self, a2, v2);
  v9 = objc_msgSend_headLineEnd(v4, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_stroke(self, v7, v8);
    v13 = objc_msgSend_shapeInfo(self, v11, v12);
    v16 = objc_msgSend_headLineEnd(v13, v14, v15);
    v18 = objc_msgSend_strokeLineEnd_(v10, v17, v16);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (TSDLineEnd)strokeTailLineEnd
{
  v4 = objc_msgSend_shapeInfo(self, a2, v2);
  v9 = objc_msgSend_tailLineEnd(v4, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_stroke(self, v7, v8);
    v13 = objc_msgSend_shapeInfo(self, v11, v12);
    v16 = objc_msgSend_tailLineEnd(v13, v14, v15);
    v18 = objc_msgSend_strokeLineEnd_(v10, v17, v16);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (int)wrapType
{
  v3.receiver = self;
  v3.super_class = TSDShapeLayout;
  return [(TSDDrawableLayout *)&v3 wrapType];
}

- (id)i_computeWrapPath
{
  v4 = objc_msgSend_fill(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_isClear(v4, v5, v6) ^ 1;
    objc_msgSend_i_computeWrapPathClosed_(self, v9, v8);
  }

  else
  {
    objc_msgSend_i_computeWrapPathClosed_(self, v5, 0);
  }
  v10 = ;

  return v10;
}

- (id)i_computeWrapPathClosed:(BOOL)a3
{
  v5 = objc_msgSend_path(self, a2, a3);
  v8 = objc_msgSend_stroke(self, v6, v7);
  v11 = v8;
  if (v8 && objc_msgSend_shouldRender(v8, v9, v10))
  {
    objc_opt_class();
    v14 = TSUDynamicCast();
    if (v14)
    {
      v15 = MEMORY[0x277D81160];
      objc_msgSend_pathBounds(self, v12, v13);
      v18 = objc_msgSend_bezierPathWithRect_(v15, v16, v17);
    }

    else
    {
      v19 = objc_msgSend_path(self, v12, v13);
      v22 = objc_msgSend_copy(v19, v20, v21);

      objc_msgSend_takeAttributesFromStroke_(v22, v23, v11);
      v5 = objc_msgSend_strokedCopyAttemptingUsingLivarotFirst(v22, v24, v25);
      if (a3 || objc_msgSend_isEffectivelyClosed(v22, v26, v27))
      {
        v28 = objc_msgSend_uniteWithBezierPath_(v22, v26, v5);
      }

      else
      {
        v28 = v5;
      }

      v18 = v28;

      if (objc_msgSend_pathIsOpen(self, v29, v30))
      {
        v32 = objc_msgSend_p_unitePath_withLineEndForHead_stroke_(self, v31, v18, 1, v11);

        v18 = objc_msgSend_p_unitePath_withLineEndForHead_stroke_(self, v33, v32, 0, v11);
      }
    }

    v5 = v14;
  }

  else
  {
    v18 = objc_msgSend_copy(v5, v9, v10);
  }

  objc_msgSend_pathBounds(self, v34, v35);
  v37 = v36;
  v39 = v38;
  if ((TSUNearlyEqualPoints() & 1) == 0)
  {
    CGAffineTransformMakeTranslation(&v42, -v37, -v39);
    objc_msgSend_transformUsingAffineTransform_(v18, v40, &v42);
  }

  return v18;
}

- (void)transferLayoutGeometryToInfo:(id)a3 withAdditionalTransform:(CGAffineTransform *)a4 assertIfInDocument:(BOOL)a5
{
  v5 = a5;
  v16.receiver = self;
  v16.super_class = TSDShapeLayout;
  v7 = *&a4->c;
  v13 = *&a4->a;
  v14 = v7;
  v15 = *&a4->tx;
  v8 = a3;
  [(TSDLayout *)&v16 transferLayoutGeometryToInfo:v8 withAdditionalTransform:&v13 assertIfInDocument:v5];
  v11 = objc_msgSend_pathSource(self, v9, v10, v13, v14, v15, v16.receiver, v16.super_class);
  objc_msgSend_setPathSource_(v8, v12, v11);
}

- (void)validate
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_276678C80;
  v2[3] = &unk_27A6CC658;
  v2[4] = self;
  objc_msgSend_p_performBlockOkayToSetGeometry_(self, a2, v2);
}

- (id)p_cachedPath
{
  if (*&self->mShapeInvalidFlags)
  {
    v4 = objc_msgSend_pathSource(self, a2, v2);
    v7 = objc_msgSend_bezierPath(v4, v5, v6);
    mCachedPath = self->mCachedPath;
    self->mCachedPath = v7;

    *&self->mShapeInvalidFlags &= ~1u;
  }

  v9 = self->mCachedPath;

  return v9;
}

- (CGRect)p_cachedPathBounds
{
  p_mCachedPathBoundsStruct = &self->mCachedPathBoundsStruct;
  if (self->mCachedPathBoundsStruct.isValid)
  {
    x = p_mCachedPathBoundsStruct->cachedRect.origin.x;
    y = self->mCachedPathBoundsStruct.cachedRect.origin.y;
    width = self->mCachedPathBoundsStruct.cachedRect.size.width;
    height = self->mCachedPathBoundsStruct.cachedRect.size.height;
  }

  else
  {
    v9 = objc_msgSend_stroke(self, a2, v2);
    v12 = objc_msgSend_path(self, v10, v11);
    objc_msgSend_boundsForPath_(v9, v13, v12);
    x = v14;
    y = v15;
    width = v16;
    height = v17;

    if (objc_msgSend_pathIsOpen(self, v18, v19))
    {
      v22 = objc_msgSend_stroke(self, v20, v21);
      v25 = objc_msgSend_supportsWidth(v22, v23, v24);

      if (v25)
      {
        v45 = *(MEMORY[0x277CBF2C0] + 16);
        v47 = *MEMORY[0x277CBF2C0];
        v46 = v47;
        v48 = v45;
        v49 = *(MEMORY[0x277CBF2C0] + 32);
        v44 = v49;
        objc_msgSend_p_boundsOfLineEndForHead_transform_(self, v26, 1, &v47);
        v55.origin.x = v27;
        v55.origin.y = v28;
        v55.size.width = v29;
        v55.size.height = v30;
        v50.origin.x = x;
        v50.origin.y = y;
        v50.size.width = width;
        v50.size.height = height;
        v51 = CGRectUnion(v50, v55);
        v31 = v51.origin.x;
        v32 = v51.origin.y;
        v33 = v51.size.width;
        v34 = v51.size.height;
        v47 = v46;
        v48 = v45;
        v49 = v44;
        objc_msgSend_p_boundsOfLineEndForHead_transform_(self, v35, 0, &v47);
        v56.origin.x = v36;
        v56.origin.y = v37;
        v56.size.width = v38;
        v56.size.height = v39;
        v52.origin.x = v31;
        v52.origin.y = v32;
        v52.size.width = v33;
        v52.size.height = v34;
        v53 = CGRectUnion(v52, v56);
        x = v53.origin.x;
        y = v53.origin.y;
        width = v53.size.width;
        height = v53.size.height;
      }
    }

    p_mCachedPathBoundsStruct->cachedRect.origin.x = x;
    p_mCachedPathBoundsStruct->cachedRect.origin.y = y;
    p_mCachedPathBoundsStruct->cachedRect.size.width = width;
    p_mCachedPathBoundsStruct->cachedRect.size.height = height;
    p_mCachedPathBoundsStruct->isValid = 1;
  }

  v40 = x;
  v41 = y;
  v42 = width;
  v43 = height;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

- (CGRect)p_cachedClippedPathStroked
{
  p_mCachedClippedPathStroked = &self->mCachedClippedPathStroked;
  if (!self->mCachedClippedPathStroked.isValid)
  {
    v6 = objc_msgSend_shapeInfo(self, a2, v2);
    v11 = objc_msgSend_headLineEnd(v6, v7, v8);
    if (v11)
    {
      v12 = objc_msgSend_shapeInfo(self, v9, v10);
      v3 = objc_msgSend_headLineEnd(v12, v13, v14);
      if (!objc_msgSend_isNone(v3, v15, v16))
      {

        goto LABEL_12;
      }

      v52 = v12;
    }

    v17 = objc_msgSend_shapeInfo(self, v9, v10);
    v22 = objc_msgSend_tailLineEnd(v17, v18, v19);
    if (v22)
    {
      v23 = objc_msgSend_shapeInfo(self, v20, v21);
      v26 = objc_msgSend_tailLineEnd(v23, v24, v25);
      v29 = objc_msgSend_isNone(v26, v27, v28) ^ 1;
    }

    else
    {
      v29 = 0;
    }

    if (v11)
    {
    }

    if ((v29 & 1) == 0)
    {
      objc_msgSend_p_cachedPathBounds(self, v30, v31);
      p_mCachedClippedPathStroked->cachedRect.origin.x = v44;
      p_mCachedClippedPathStroked->cachedRect.origin.y = v45;
      p_mCachedClippedPathStroked->cachedRect.size.width = v46;
      p_mCachedClippedPathStroked->cachedRect.size.height = v47;
      goto LABEL_14;
    }

LABEL_12:
    v32 = objc_msgSend_clippedPathForLineEnds(self, v30, v31);
    v35 = objc_msgSend_copy(v32, v33, v34);

    v38 = objc_msgSend_stroke(self, v36, v37);
    objc_msgSend_boundsForPath_(v38, v39, v35);
    p_mCachedClippedPathStroked->cachedRect.origin.x = v40;
    p_mCachedClippedPathStroked->cachedRect.origin.y = v41;
    p_mCachedClippedPathStroked->cachedRect.size.width = v42;
    p_mCachedClippedPathStroked->cachedRect.size.height = v43;

LABEL_14:
    p_mCachedClippedPathStroked->isValid = 1;
  }

  x = p_mCachedClippedPathStroked->cachedRect.origin.x;
  y = p_mCachedClippedPathStroked->cachedRect.origin.y;
  width = p_mCachedClippedPathStroked->cachedRect.size.width;
  height = p_mCachedClippedPathStroked->cachedRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)p_updatedCachedClipRectIfNeededForRotation:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v39 = *&a3->a;
  v40 = v4;
  p_mClippedPathRotatedTransform = &self->mClippedPathRotatedTransform;
  v6 = *&a3->c;
  v35 = *&a3->a;
  v36 = v6;
  v37 = 0;
  v38 = 0;
  mClippedPathRotatedTransform = self->mClippedPathRotatedTransform;
  if (TSUNearlyEqualTransforms())
  {
    p_mCachedClippedPathRotatedStroked = &self->mCachedClippedPathRotatedStroked;
    p_isValid = &self->mCachedClippedPathRotatedStroked.isValid;
    if (self->mCachedClippedPathRotatedStroked.isValid)
    {
      width = self->mCachedClippedPathRotatedStroked.cachedRect.size.width;
      height = self->mCachedClippedPathRotatedStroked.cachedRect.size.height;
      goto LABEL_9;
    }

    v13 = 1;
  }

  else
  {
    v13 = objc_msgSend_layoutState(self, v7, v8, *&mClippedPathRotatedTransform.a, *&mClippedPathRotatedTransform.c, *&mClippedPathRotatedTransform.tx, v35, v36, v37, v38) != 4;
    p_mCachedClippedPathRotatedStroked = &self->mCachedClippedPathRotatedStroked;
    p_isValid = &self->mCachedClippedPathRotatedStroked.isValid;
  }

  v14 = objc_msgSend_clippedPathForLineEnds(self, v7, v8, *&mClippedPathRotatedTransform.a, *&mClippedPathRotatedTransform.c, *&mClippedPathRotatedTransform.tx);
  v17 = objc_msgSend_copy(v14, v15, v16);

  v35 = v39;
  v36 = v40;
  v37 = 0;
  v38 = 0;
  objc_msgSend_transformUsingAffineTransform_(v17, v18, &v35);
  v21 = objc_msgSend_stroke(self, v19, v20);
  objc_msgSend_boundsForPath_(v21, v22, v17);
  v24 = v23;
  v26 = v25;
  width = v27;
  height = v28;

  if (v13)
  {
    p_mCachedClippedPathRotatedStroked->cachedRect.origin.x = v24;
    p_mCachedClippedPathRotatedStroked->cachedRect.origin.y = v26;
    p_mCachedClippedPathRotatedStroked->cachedRect.size.width = width;
    p_mCachedClippedPathRotatedStroked->cachedRect.size.height = height;
    v29 = v40;
    *&p_mClippedPathRotatedTransform->a = v39;
    *&p_mClippedPathRotatedTransform->c = v29;
    p_mClippedPathRotatedTransform->tx = 0.0;
    p_mClippedPathRotatedTransform->ty = 0.0;
    *p_isValid = 1;
  }

LABEL_9:
  TSUAddPoints();
  v32 = width;
  v33 = height;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (CGRect)p_cachedPathBoundsWithoutStroke
{
  p_mCachedPathBoundsWithoutStrokeStruct = &self->mCachedPathBoundsWithoutStrokeStruct;
  if (self->mCachedPathBoundsWithoutStrokeStruct.isValid)
  {
    x = p_mCachedPathBoundsWithoutStrokeStruct->cachedRect.origin.x;
    y = self->mCachedPathBoundsWithoutStrokeStruct.cachedRect.origin.y;
    width = self->mCachedPathBoundsWithoutStrokeStruct.cachedRect.size.width;
    height = self->mCachedPathBoundsWithoutStrokeStruct.cachedRect.size.height;
  }

  else
  {
    v8 = objc_msgSend_path(self, a2, v2);
    objc_msgSend_bounds(v8, v9, v10);
    x = v11;
    y = v12;
    width = v13;
    height = v14;

    p_mCachedPathBoundsWithoutStrokeStruct->cachedRect.origin.x = x;
    p_mCachedPathBoundsWithoutStrokeStruct->cachedRect.origin.y = y;
    p_mCachedPathBoundsWithoutStrokeStruct->cachedRect.size.width = width;
    p_mCachedPathBoundsWithoutStrokeStruct->cachedRect.size.height = height;
    p_mCachedPathBoundsWithoutStrokeStruct->isValid = 1;
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (BOOL)p_cachedPathIsOpen
{
  if ((*&self->mShapeInvalidFlags & 2) != 0)
  {
    v4 = objc_msgSend_path(self, a2, v2);
    self->mCachedPathIsOpen = objc_msgSend_isOpen(v4, v5, v6);

    *&self->mShapeInvalidFlags &= ~2u;
  }

  return self->mCachedPathIsOpen;
}

- (BOOL)p_cachedPathIsLineSegment
{
  if ((*&self->mShapeInvalidFlags & 4) != 0)
  {
    v4 = objc_msgSend_path(self, a2, v2);
    self->mCachedPathIsLineSegment = objc_msgSend_isLineSegment(v4, v5, v6);

    *&self->mShapeInvalidFlags &= ~4u;
  }

  return self->mCachedPathIsLineSegment;
}

- (void)p_invalidateClippedPath
{
  *&self->mShapeInvalidFlags |= 0x40u;
  self->mCachedClippedPathStroked.isValid = 0;
  self->mCachedClippedPathRotatedStroked.isValid = 0;
  mCachedClippedPath = self->mCachedClippedPath;
  self->mCachedClippedPath = 0;
}

- (void)p_validateHeadAndTail
{
  if ((*&self->mShapeInvalidFlags & 8) != 0)
  {
    *&self->mShapeInvalidFlags &= ~8u;
    v6 = objc_msgSend_path(self, a2, v2);
    objc_msgSend_getStartPoint_andEndPoint_(v6, v5, &self->mTailPoint, &self->mHeadPoint);
  }
}

- (void)p_validateHeadLineEnd
{
  objc_msgSend_p_validateHeadAndTail(self, a2, v2);
  if ((*&self->mShapeInvalidFlags & 0x10) != 0)
  {
    *&self->mShapeInvalidFlags &= ~0x10u;
    memset(v24, 0, 24);
    v6 = MEMORY[0x277D81160];
    v7 = objc_msgSend_path(self, v4, v5);
    v10 = objc_msgSend_shapeInfo(self, v8, v9);
    v13 = objc_msgSend_headLineEnd(v10, v11, v12);
    v16 = objc_msgSend_shapeInfo(self, v14, v15);
    v19 = objc_msgSend_tailLineEnd(v16, v17, v18);
    v22 = objc_msgSend_stroke(self, v20, v21);
    objc_msgSend_lineEndPositioningOnPath_atHead_headPoint_tailPoint_headLineEnd_tailLineEnd_stroke_(v6, v23, v7, 1, v13, v19, v22, self->mHeadPoint.x, self->mHeadPoint.y, self->mTailPoint.x, self->mTailPoint.y);

    self->mHeadLineEndAngle = 0.0;
    self->mHeadLineEndPoint = *(v24 + 8);
    self->mHeadCutSegment = 0;
    self->mHeadCutT = 0.0;
  }
}

- (void)p_validateTailLineEnd
{
  objc_msgSend_p_validateHeadAndTail(self, a2, v2);
  if ((*&self->mShapeInvalidFlags & 0x20) != 0)
  {
    *&self->mShapeInvalidFlags &= ~0x20u;
    memset(v24, 0, 24);
    v6 = MEMORY[0x277D81160];
    v7 = objc_msgSend_path(self, v4, v5);
    v10 = objc_msgSend_shapeInfo(self, v8, v9);
    v13 = objc_msgSend_headLineEnd(v10, v11, v12);
    v16 = objc_msgSend_shapeInfo(self, v14, v15);
    v19 = objc_msgSend_tailLineEnd(v16, v17, v18);
    v22 = objc_msgSend_stroke(self, v20, v21);
    objc_msgSend_lineEndPositioningOnPath_atHead_headPoint_tailPoint_headLineEnd_tailLineEnd_stroke_(v6, v23, v7, 0, v13, v19, v22, self->mHeadPoint.x, self->mHeadPoint.y, self->mTailPoint.x, self->mTailPoint.y);

    self->mTailLineEndAngle = 0.0;
    self->mTailLineEndPoint = *(v24 + 8);
    self->mTailCutSegment = 0;
    self->mTailCutT = 0.0;
  }
}

- (id)p_createClippedPath
{
  if (!objc_msgSend_pathIsOpen(self, a2, v2) || (objc_msgSend_stroke(self, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend_supportsWidth(v6, v7, v8), v6, !v9) || (objc_msgSend_p_validateHeadLineEnd(self, v4, v5), objc_msgSend_p_validateTailLineEnd(self, v10, v11), mHeadLineEndAngle = self->mHeadLineEndAngle, mHeadCutSegment = self->mHeadCutSegment, mHeadLineEndPoint = self->mHeadLineEndPoint, mHeadCutT = self->mHeadCutT, mTailLineEndPoint = self->mTailLineEndPoint, mTailLineEndAngle = self->mTailLineEndAngle, mTailCutSegment = self->mTailCutSegment, mTailCutT = self->mTailCutT, v18 = MEMORY[0x277D81160], objc_msgSend_path(self, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stroke(self, v22, v23), v24 = objc_claimAutoreleasedReturnValue(), v31 = mTailCutT, v32 = mHeadLineEndAngle, v34 = mHeadCutSegment, v35 = mHeadCutT, v28 = mTailLineEndAngle, v30 = mTailCutSegment, objc_msgSend_createClippedPath_headPositioning_tailPositioning_stroke_(v18, v25, v21, &v32, &v28, v24), v26 = objc_claimAutoreleasedReturnValue(), v24, v21, !v26))
  {
    objc_msgSend_path(self, v4, v5);
    return objc_claimAutoreleasedReturnValue();
  }

  return v26;
}

- (CGRect)p_boundsOfLineEndForHead:(BOOL)a3 transform:(CGAffineTransform *)a4
{
  v5 = a3;
  v7 = MEMORY[0x277CBF398];
  if (a3)
  {
    objc_msgSend_strokeHeadLineEnd(self, a2, a3);
  }

  else
  {
    objc_msgSend_strokeTailLineEnd(self, a2, a3);
  }
  v8 = ;
  v11 = v8;
  v12 = *v7;
  v13 = v7[1];
  v14 = v7[2];
  v15 = v7[3];
  if (v8 && (objc_msgSend_isNone(v8, v9, v10) & 1) == 0)
  {
    if (v5)
    {
      objc_msgSend_headLineEndPoint(self, v16, v17);
      v19 = v18;
      v21 = v20;
      objc_msgSend_headLineEndAngle(self, v22, v23);
    }

    else
    {
      objc_msgSend_tailLineEndPoint(self, v16, v17);
      v19 = v26;
      v21 = v27;
      objc_msgSend_tailLineEndAngle(self, v28, v29);
    }

    v30 = v25;
    objc_msgSend_lineEndScale_(self, v24, v5);
    v32 = v31;
    v35 = objc_msgSend_stroke(self, v33, v34);
    v36 = *&a4->c;
    v46[0] = *&a4->a;
    v46[1] = v36;
    v46[2] = *&a4->tx;
    objc_msgSend_boundsForLineEnd_atPoint_atAngle_withScale_transform_(v35, v37, v11, v46, v19, v21, v30, v32);
    v12 = v38;
    v13 = v39;
    v14 = v40;
    v15 = v41;
  }

  v42 = v12;
  v43 = v13;
  v44 = v14;
  v45 = v15;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

- (id)p_unitePath:(id)a3 withLineEndForHead:(BOOL)a4 stroke:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v12 = v8;
  if (v6)
  {
    objc_msgSend_strokeHeadLineEnd(self, v10, v11);
  }

  else
  {
    objc_msgSend_strokeTailLineEnd(self, v10, v11);
  }
  v13 = ;
  v16 = v13;
  v17 = v12;
  if (v13)
  {
    v17 = v12;
    if ((objc_msgSend_isNone(v13, v14, v15) & 1) == 0)
    {
      if (v6)
      {
        objc_msgSend_headLineEndPoint(self, v18, v19);
        v21 = v20;
        v23 = v22;
        objc_msgSend_headLineEndAngle(self, v24, v25);
      }

      else
      {
        objc_msgSend_tailLineEndPoint(self, v18, v19);
        v21 = v28;
        v23 = v29;
        objc_msgSend_tailLineEndAngle(self, v30, v31);
      }

      v32 = v27;
      objc_msgSend_lineEndScale_(self, v26, v6);
      v35 = objc_msgSend_pathForLineEnd_wrapPath_atPoint_atAngle_withScale_(v9, v33, v16, 1, v21, v23, v32, v34);
      v17 = objc_msgSend_uniteWithBezierPath_(v12, v36, v35);
    }
  }

  return v17;
}

@end
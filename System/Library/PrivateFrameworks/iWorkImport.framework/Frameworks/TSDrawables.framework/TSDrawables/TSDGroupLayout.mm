@interface TSDGroupLayout
- (BOOL)allowsConnections;
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)descendentWrappablesContainsWrappable:(id)a3;
- (BOOL)protected_isNonGroupedDescendant:(id)a3;
- (BOOL)resizeMayChangeAspectRatio;
- (BOOL)shouldBeIncludedInParentFrameForCulling;
- (BOOL)supportsFlipping;
- (BOOL)supportsParentFlipping;
- (BOOL)supportsRotation;
- (CGAffineTransform)transformForFindHighlightsOfChild:(SEL)a3;
- (CGRect)alignmentFrame;
- (CGRect)alignmentFrameForCaptionEdgeInsetsCalculation;
- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)a3;
- (CGRect)boundsForStandardKnobs;
- (CGRect)clipRect;
- (CGRect)computeBoundsForStandardKnobs;
- (CGRect)frameForCaptionPositioning;
- (CGRect)frameForCullingWithBaseFrame:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4;
- (CGRect)i_boundsForChildren;
- (CGRect)rectInRootForCalculatingActivityLineEndpoint;
- (CGRect)rectInRootForPresentingAnnotationPopoverForSelectionPath:(id)a3;
- (CGRect)rectInRootForSelectionPath:(id)a3;
- (CGSize)minimumSize;
- (NSOrderedSet)i_groupedChildren;
- (TSDGroupLayout)initWithInfo:(id)a3;
- (double)i_clampingScaleForChildLayouts;
- (id)additionalDependenciesForChildLayout:(id)a3;
- (id)childInfosForChildLayouts;
- (id)computeInfoGeometryDuringResize;
- (id)computeLayoutGeometry;
- (id)descendentWrappables;
- (id)i_computeBaseLayoutGeometry;
- (id)i_computeWrapPath;
- (id)i_wrapPath;
- (id)i_wrapPathIncludingTitleAndCaption;
- (id)layoutGeometryFromInfo;
- (id)layoutsForProvidingGuidesForChildLayouts;
- (id)p_childWrapPathsFrom:(id)a3 inDescendents:(id)a4 includingTitleAndCaption:(BOOL)a5;
- (id)p_groupInfo;
- (id)pathForClippingConnectionLines;
- (id)reliedOnLayouts;
- (id)visibleGeometries;
- (void)beginDynamicOperation;
- (void)dragBy:(CGPoint)a3;
- (void)endDynamicOperation;
- (void)i_clearInvalidationCache;
- (void)invalidate;
- (void)invalidateExteriorWrap;
- (void)p_createDynamicCopies;
- (void)p_destroyDynamicCopies;
- (void)p_invalidateParentForWrap;
- (void)processChangedProperty:(int)a3;
- (void)setDynamicGeometry:(id)a3;
- (void)transferLayoutGeometryToInfo:(id)a3 withAdditionalTransform:(CGAffineTransform *)a4 assertIfInDocument:(BOOL)a5;
- (void)updateChildrenFromInfo;
- (void)updateLayoutGeometryInPreparationForPartitioning;
@end

@implementation TSDGroupLayout

- (TSDGroupLayout)initWithInfo:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSDGroupLayout;
  result = [(TSDContainerLayout *)&v4 initWithInfo:a3];
  if (result)
  {
    result->mClampingScaleForChildLayouts = 1.0;
  }

  return result;
}

- (id)p_groupInfo
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUCheckedDynamicCast();

  return v6;
}

- (id)visibleGeometries
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v7 = objc_msgSend_geometry(self, v5, v6);
  v10 = v7;
  if (v7)
  {
    objc_msgSend_transform(v7, v8, v9);
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = objc_msgSend_children(self, v11, v12);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v37, v45, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v38;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = objc_msgSend_visibleGeometries(*(*(&v37 + 1) + 8 * i), v16, v17);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v33, v44, 16);
        if (v23)
        {
          v25 = v23;
          v26 = *v34;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v34 != v26)
              {
                objc_enumerationMutation(v21);
              }

              v28 = *(*(&v33 + 1) + 8 * j);
              v32[0] = v41;
              v32[1] = v42;
              v32[2] = v43;
              v29 = objc_msgSend_geometryByTransformingBy_(v28, v24, v32);
              objc_msgSend_addObject_(v4, v30, v29);
            }

            v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v33, v44, 16);
          }

          while (v25);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v37, v45, 16);
    }

    while (v18);
  }

  return v4;
}

- (id)childInfosForChildLayouts
{
  v114 = *MEMORY[0x277D85DE8];
  v111.receiver = self;
  v111.super_class = TSDGroupLayout;
  v3 = [(TSDContainerLayout *)&v111 childInfosForChildLayouts];
  objc_opt_class();
  v6 = objc_msgSend_info(self, v4, v5);
  v7 = TSUDynamicCast();

  v12 = v3;
  if ((objc_msgSend_isFreehandDrawing(v7, v8, v9) & 1) == 0)
  {
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v87 = v3;
    v88 = v7;
    if (v7)
    {
      objc_msgSend_transformInRoot(v7, v10, v11);
    }

    else
    {
      v106 = 0uLL;
      v107 = 0uLL;
      v105 = 0uLL;
    }

    objc_msgSend_counterTransformForTransformInRoot_(TSDCounterRotateInfo, v10, &v105);
    v105 = v108;
    v106 = v109;
    v107 = v110;
    v13 = *(MEMORY[0x277CBF2C0] + 16);
    v102 = *MEMORY[0x277CBF2C0];
    v103 = v13;
    v104 = *(MEMORY[0x277CBF2C0] + 32);
    v14 = TSUNearlyEqualTransforms();
    v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v15, v16);
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v17 = v3;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v98, v113, 16);
    if (v19)
    {
      v20 = v19;
      v21 = *v99;
      v91 = v14 ^ 1;
      v92 = *v99;
      v89 = v17;
      v90 = v12;
      do
      {
        v22 = 0;
        v93 = v20;
        do
        {
          if (*v99 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v98 + 1) + 8 * v22);
          objc_opt_class();
          v24 = TSUDynamicCast();
          v27 = v24;
          if (!v24 || !objc_msgSend_wantsCounterRotationWhenNotSupportingParentRotationInRotatedParent(v24, v25, v26))
          {
LABEL_30:
            objc_msgSend_addObject_(v12, v25, v23);
            goto LABEL_31;
          }

          v29 = objc_msgSend_supportsParentRotation(v27, v25, v28);
          if ((v29 | v91))
          {
            if (v29)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v54 = objc_msgSend_geometry(v27, v25, v30);
            v57 = v54;
            if (v54)
            {
              objc_msgSend_transform(v54, v55, v56);
            }

            else
            {
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
            }

            v58 = TSUIsTransformFlipped();

            v21 = v92;
            v20 = v93;
            if (!v58)
            {
              goto LABEL_30;
            }
          }

          v31 = objc_msgSend_layoutController(self, v25, v30);
          v33 = objc_msgSend_layoutsForInfo_(v31, v32, v27);

          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v34 = v33;
          v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v94, v112, 16);
          if (v36)
          {
            v39 = v36;
            v40 = *v95;
LABEL_16:
            v41 = 0;
            while (1)
            {
              if (*v95 != v40)
              {
                objc_enumerationMutation(v34);
              }

              v42 = *(*(&v94 + 1) + 8 * v41);
              v43 = objc_msgSend_parent(v42, v37, v38);
              v46 = objc_msgSend_parent(v43, v44, v45);

              if (v46 == self)
              {
                break;
              }

              v49 = objc_msgSend_parent(v42, v47, v48);

              if (v49 == self)
              {
                goto LABEL_23;
              }

              if (v39 == ++v41)
              {
                v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v94, v112, 16);
                if (v39)
                {
                  goto LABEL_16;
                }

                goto LABEL_23;
              }
            }

            objc_opt_class();
            v62 = objc_msgSend_parent(v42, v60, v61);
            v52 = TSUDynamicCast();

            if (!v52)
            {
              goto LABEL_24;
            }

            objc_opt_class();
            v65 = objc_msgSend_info(v52, v63, v64);
            v66 = TSUCheckedDynamicCast();

            v17 = v89;
            v12 = v90;
            if (v66)
            {
              objc_msgSend_counterTransform(v66, v67, v68);
            }

            else
            {
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
            }

            v102 = v108;
            v103 = v109;
            v104 = v110;
            if ((TSUNearlyEqualTransforms() & 1) == 0)
            {
              v105 = v108;
              v106 = v109;
              v107 = v110;
              objc_msgSend_setCounterTransform_(v66, v69, &v105);
              objc_msgSend_invalidateFrame(v52, v70, v71);
            }

            objc_msgSend_addObject_(v90, v69, v66);
          }

          else
          {
LABEL_23:

LABEL_24:
            v50 = [TSDCounterRotateInfo alloc];
            v105 = v108;
            v106 = v109;
            v107 = v110;
            v52 = objc_msgSend_initWithChildInfo_parentGroup_counterTransform_(v50, v51, v27, v88, &v105);
            v12 = v90;
            objc_msgSend_addObject_(v90, v53, v52);
            v17 = v89;
          }

          v21 = v92;
          v20 = v93;
LABEL_31:

          ++v22;
        }

        while (v22 != v20);
        v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v59, &v98, v113, 16);
        v20 = v72;
      }

      while (v72);
    }

    v75 = objc_msgSend_count(v12, v73, v74);
    if (v75 != objc_msgSend_count(v17, v76, v77))
    {
      v79 = MEMORY[0x277D81150];
      v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "[TSDGroupLayout childInfosForChildLayouts]");
      v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v79, v83, v80, v82, 139, 0, "should have same number of children!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v84, v85);
    }

    v3 = v87;
    v7 = v88;
  }

  return v12;
}

- (id)layoutGeometryFromInfo
{
  mDynamicLayoutGeometry = self->mDynamicLayoutGeometry;
  if (mDynamicLayoutGeometry)
  {
    v4 = mDynamicLayoutGeometry;
  }

  else
  {
    v6 = objc_msgSend_info(self, a2, v2);
    v9 = objc_msgSend_geometry(v6, v7, v8);

    if (!objc_msgSend_widthValid(v9, v10, v11) || (objc_msgSend_heightValid(v9, v12, v13) & 1) == 0)
    {
      v41 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSDGroupLayout layoutGeometryFromInfo]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupLayout.m");
      v19 = objc_msgSend_widthValid(v9, v17, v18);
      v22 = objc_msgSend_heightValid(v9, v20, v21);
      v25 = objc_msgSend_info(self, v23, v24);
      v28 = objc_msgSend_childInfos(v25, v26, v27);
      v31 = objc_msgSend_count(v28, v29, v30);
      v32 = NSStringFromCGRect(self->mBoundsForStandardKnobs);
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v35, v14, v16, 164, 0, "Invalid info geom! wV: %d hV: %d. numChildren: %zi boundsForStandardKnobs %{public}@ %{public}@ geom: %{public}@", v19, v22, v31, v32, v34, v9);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
    }

    v38 = [TSDLayoutGeometry alloc];
    v4 = objc_msgSend_initWithInfoGeometry_(v38, v39, v9);
  }

  return v4;
}

- (id)reliedOnLayouts
{
  v3 = objc_msgSend_i_groupedChildren(self, a2, v2);
  v6 = objc_msgSend_set(v3, v4, v5);

  return v6;
}

- (id)additionalDependenciesForChildLayout:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_p_groupInfo(self, v5, v6);
  v10 = objc_msgSend_info(v4, v8, v9);

  LOBYTE(v4) = objc_msgSend_isNonGroupedChild_(v7, v11, v10);
  if (v4)
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v15[0] = self;
    v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v15, 1);
  }

  return v13;
}

- (CGRect)computeBoundsForStandardKnobs
{
  v37 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = objc_msgSend_i_groupedChildren(self, a2, v2, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v32, v36, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    do
    {
      v12 = 0;
      do
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v32 + 1) + 8 * v12);
        objc_opt_class();
        v16 = objc_msgSend_info(v13, v14, v15);
        v17 = TSUDynamicCast();

        if (!v17 || (objc_msgSend_isEffectivelyEmpty(v17, v18, v19) & 1) == 0)
        {
          v20 = objc_msgSend_pureGeometry(v13, v18, v19);
          objc_msgSend_frame(v20, v21, v22);
          v42.origin.x = x;
          v42.origin.y = y;
          v42.size.width = width;
          v42.size.height = height;
          v39 = CGRectUnion(v38, v42);
          x = v39.origin.x;
          y = v39.origin.y;
          width = v39.size.width;
          height = v39.size.height;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v23, &v32, v36, 16);
    }

    while (v10);
  }

  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  if (CGRectIsNull(v40))
  {
    TSURectWithSize();
    x = v24;
    y = v25;
    width = v26;
    height = v27;
  }

  v28 = x;
  v29 = y;
  v30 = width;
  v31 = height;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (id)i_computeBaseLayoutGeometry
{
  p_mBoundsForStandardKnobs = &self->mBoundsForStandardKnobs;
  objc_msgSend_computeBoundsForStandardKnobs(self, a2, v2);
  p_mBoundsForStandardKnobs->origin.x = v7;
  p_mBoundsForStandardKnobs->origin.y = v8;
  p_mBoundsForStandardKnobs->size.width = v9;
  p_mBoundsForStandardKnobs->size.height = v10;

  return objc_msgSend_layoutGeometryFromInfo(self, v5, v6);
}

- (id)computeLayoutGeometry
{
  v96 = *MEMORY[0x277D85DE8];
  self->mClampingScaleForChildLayouts = 1.0;
  p_mBoundsForChildren = &self->mBoundsForChildren;
  v5 = MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 16);
  self->mBoundsForChildren.origin = *MEMORY[0x277CBF398];
  self->mBoundsForChildren.size = v6;
  v7 = objc_msgSend_i_computeBaseLayoutGeometry(self, a2, v2);
  v10 = objc_msgSend_layoutController(self, v8, v9);
  v13 = objc_msgSend_canvas(v10, v11, v12);
  if (objc_msgSend_shouldClampGroupsToParentsByScaling(v13, v14, v15))
  {
    v18 = objc_msgSend_i_groupedChildren(self, v16, v17);
    v21 = objc_msgSend_count(v18, v19, v20);

    if (!v21)
    {
      goto LABEL_18;
    }

    objc_opt_class();
    v24 = objc_msgSend_parent(self, v22, v23);
    v10 = TSUDynamicCast();

    if (v10 && objc_msgSend_layoutState(self, v25, v26) != 4)
    {
      if (objc_msgSend_layoutState(self, v27, v28) == 3 && (objc_msgSend_wantsNormalLayoutDuringDynamicRotation(self, v29, v30) & 1) == 0)
      {
        v75 = [TSDLayoutGeometry alloc];
        v78 = objc_msgSend_originalPureGeometry(self, v76, v77);
        objc_msgSend_size(v78, v79, v80);
        v84 = v83;
        v86 = v85;
        if (v7)
        {
          objc_msgSend_transform(v7, v81, v82);
        }

        else
        {
          memset(&v94, 0, sizeof(v94));
        }

        v66 = objc_msgSend_initWithSize_transform_(v75, v81, &v94, v84, v86);
      }

      else
      {
        v31 = objc_msgSend_layoutController(self, v29, v30);
        v34 = objc_msgSend_i_groupedChildren(self, v32, v33);
        v37 = objc_msgSend_set(v34, v35, v36);
        objc_msgSend_validateLayoutsWithDependencies_(v31, v38, v37);

        x = *v5;
        y = v5[1];
        width = v5[2];
        height = v5[3];
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v45 = objc_msgSend_i_groupedChildren(self, v43, v44);
        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v90, v95, 16);
        if (v47)
        {
          v50 = v47;
          v51 = *v91;
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v91 != v51)
              {
                objc_enumerationMutation(v45);
              }

              objc_msgSend_frameForCulling(*(*(&v90 + 1) + 8 * i), v48, v49);
              v100.origin.x = x;
              v100.origin.y = y;
              v100.size.width = width;
              v100.size.height = height;
              v99 = CGRectUnion(v98, v100);
              x = v99.origin.x;
              y = v99.origin.y;
              width = v99.size.width;
              height = v99.size.height;
            }

            v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v48, &v90, v95, 16);
          }

          while (v50);
        }

        memset(&v94, 0, sizeof(v94));
        v55 = objc_msgSend_layoutGeometryFromInfo(self, v53, v54);
        v58 = v55;
        if (v55)
        {
          objc_msgSend_transform(v55, v56, v57);
        }

        else
        {
          memset(&v94, 0, sizeof(v94));
        }

        CGAffineTransformMakeTranslation(&t1, x, y);
        v87 = v94;
        CGAffineTransformConcat(&v89, &t1, &v87);
        v94 = v89;
        objc_msgSend_scaleForInlineClampingUnrotatedSize_withTransform_(self, v60, &v89, width, height);
        if (v63 == 1.0)
        {
          goto LABEL_17;
        }

        self->mClampingScaleForChildLayouts = v63;
        objc_msgSend_computeBoundsForStandardKnobs(self, v61, v62);
        v64 = [TSDLayoutGeometry alloc];
        TSUMultiplySizeScalar();
        v89 = v94;
        v66 = objc_msgSend_initWithSize_transform_(v64, v65, &v89);

        TSUMultiplyRectScalar();
        self->mBoundsForStandardKnobs.origin.x = v67;
        self->mBoundsForStandardKnobs.origin.y = v68;
        self->mBoundsForStandardKnobs.size.width = v69;
        self->mBoundsForStandardKnobs.size.height = v70;
        TSUMultiplyRectScalar();
        p_mBoundsForChildren->origin.x = v71;
        p_mBoundsForChildren->origin.y = v72;
        p_mBoundsForChildren->size.width = v73;
        p_mBoundsForChildren->size.height = v74;
      }

      v7 = v66;
    }
  }

  else
  {
  }

LABEL_17:

LABEL_18:

  return v7;
}

- (BOOL)protected_isNonGroupedDescendant:(id)a3
{
  v4 = a3;
  v5 = 0;
  v6 = v4;
  do
  {
    v7 = v5;
    v5 = v6;

    v6 = objc_msgSend_parent(v5, v8, v9);
  }

  while (v5 && v6 != self);
  if (v6 != self)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSDGroupLayout protected_isNonGroupedDescendant:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 287, 0, "Requesting groupedness of a layout that isn't a descendant of the receiver");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  objc_opt_class();
  v18 = TSUDynamicCast();
  v21 = objc_msgSend_info(v18, v19, v20);

  if (v21)
  {
    v24 = objc_msgSend_p_groupInfo(self, v22, v23);
    isNonGroupedChild = objc_msgSend_isNonGroupedChild_(v24, v25, v21);
  }

  else
  {
    isNonGroupedChild = 0;
  }

  return isNonGroupedChild;
}

- (double)i_clampingScaleForChildLayouts
{
  if ((objc_msgSend_i_isClampedToParentByScaling(self, a2, v2) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDGroupLayout i_clampingScaleForChildLayouts]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 294, 0, "Do not access i_clampingScaleForChildLayouts without checking i_isClampedToParentByScaling first.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  return self->mClampingScaleForChildLayouts;
}

- (CGRect)i_boundsForChildren
{
  if ((objc_msgSend_i_isClampedToParentByScaling(self, a2, v2) & 1) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDGroupLayout i_boundsForChildren]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 301, 0, "Do not access i_boundsForChildren without checking i_isClampedToParentByScaling first.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  if (objc_msgSend_i_isClampedToParentByScaling(self, v4, v5))
  {
    x = self->mBoundsForChildren.origin.x;
    y = self->mBoundsForChildren.origin.y;
    width = self->mBoundsForChildren.size.width;
    height = self->mBoundsForChildren.size.height;
  }

  else
  {
    objc_msgSend_boundsForStandardKnobs(self, v13, v14);
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)a3
{
  if (objc_msgSend_i_isClampedToParentByScaling(self, a2, a3))
  {
    v7 = objc_msgSend_geometry(self, v5, v6);
    objc_msgSend_frame(v7, v8, v9);
    v10 = *&a3->c;
    *&v25.a = *&a3->a;
    *&v25.c = v10;
    *&v25.tx = *&a3->tx;
    v27 = CGRectApplyAffineTransform(v26, &v25);
    x = v27.origin.x;
    y = v27.origin.y;
    width = v27.size.width;
    height = v27.size.height;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = TSDGroupLayout;
    v15 = *&a3->c;
    *&v25.a = *&a3->a;
    *&v25.c = v15;
    *&v25.tx = *&a3->tx;
    [(TSDContainerLayout *)&v24 baseFrameForFrameForCullingWithAdditionalTransform:&v25];
    x = v16;
    y = v17;
    width = v18;
    height = v19;
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)frameForCullingWithBaseFrame:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v54 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_i_isClampedToParentByScaling(self, a2, a4))
  {
    memset(&v52, 0, sizeof(v52));
    v12 = objc_msgSend_geometry(self, v10, v11);
    v15 = v12;
    if (v12)
    {
      objc_msgSend_transform(v12, v13, v14);
    }

    else
    {
      memset(&v52, 0, sizeof(v52));
    }

    t1 = v52;
    memset(&v51, 0, sizeof(v51));
    v21 = *&a4->c;
    *&t2.a = *&a4->a;
    *&t2.c = v21;
    *&t2.tx = *&a4->tx;
    CGAffineTransformConcat(&v51, &t1, &t2);
    v24 = objc_msgSend_p_groupInfo(self, v22, v23);
    v27 = objc_msgSend_children(self, v25, v26);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = sub_2767881D4;
    v48[3] = &unk_27A6CDC98;
    v48[4] = v24;
    v29 = objc_msgSend_tsu_arrayOfObjectsPassingTest_(v27, v28, v48);

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v30 = v29;
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v44, v53, 16);
    if (v32)
    {
      v35 = v32;
      v36 = *v45;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v45 != v36)
          {
            objc_enumerationMutation(v30);
          }

          v38 = *(*(&v44 + 1) + 8 * i);
          if (objc_msgSend_shouldBeIncludedInParentFrameForCulling(v38, v33, v34))
          {
            t1 = v51;
            objc_msgSend_i_frameForCullingWithAdditionalTransform_(v38, v33, &t1);
            v58.origin.x = x;
            v58.origin.y = y;
            v58.size.width = width;
            v58.size.height = height;
            v56 = CGRectUnion(v55, v58);
            x = v56.origin.x;
            y = v56.origin.y;
            width = v56.size.width;
            height = v56.size.height;
          }
        }

        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v44, v53, 16);
      }

      while (v35);
    }
  }

  else
  {
    v43.receiver = self;
    v43.super_class = TSDGroupLayout;
    v16 = *&a4->c;
    *&v52.a = *&a4->a;
    *&v52.c = v16;
    *&v52.tx = *&a4->tx;
    [(TSDLayout *)&v43 frameForCullingWithBaseFrame:&v52 additionalTransform:x, y, width, height];
    x = v17;
    y = v18;
    width = v19;
    height = v20;
  }

  v39 = x;
  v40 = y;
  v41 = width;
  v42 = height;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (CGRect)rectInRootForSelectionPath:(id)a3
{
  v3 = objc_msgSend_pureGeometryInRoot(self, a2, a3);
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

- (void)processChangedProperty:(int)a3
{
  v3 = *&a3;
  if (a3 == 512)
  {
    v5 = objc_msgSend_info(self, a2, *&a3);
    isFreehandDrawing = objc_msgSend_isFreehandDrawing(v5, v6, v7);

    if (isFreehandDrawing)
    {
      goto LABEL_14;
    }

    v11 = objc_msgSend_info(self, v9, v10);
    v14 = objc_msgSend_geometry(v11, v12, v13);
    v17 = v14;
    if (v14)
    {
      objc_msgSend_transform(v14, v15, v16);
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
    }

    TSUTransformAngleInRadians();
    v19 = v18;
    v22 = objc_msgSend_geometry(self, v20, v21);
    v25 = v22;
    if (v22)
    {
      objc_msgSend_transform(v22, v23, v24);
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
    }

    TSUTransformAngleInRadians();
    if (v19 == v26)
    {

      goto LABEL_14;
    }

    v27 = fabs(v26 * 0.000000999999997);
    v28 = vabdd_f64(v19, v26);

    if (v28 < v27)
    {
      goto LABEL_14;
    }

    goto LABEL_3;
  }

  if (a3 == 514)
  {
LABEL_3:
    objc_msgSend_invalidateChildren(self, a2, *&a3);
  }

LABEL_14:
  v29.receiver = self;
  v29.super_class = TSDGroupLayout;
  [(TSDContainerLayout *)&v29 processChangedProperty:v3];
}

- (CGRect)boundsForStandardKnobs
{
  x = self->mBoundsForStandardKnobs.origin.x;
  y = self->mBoundsForStandardKnobs.origin.y;
  width = self->mBoundsForStandardKnobs.size.width;
  height = self->mBoundsForStandardKnobs.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)frameForCaptionPositioning
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBF398];
  memset(&v56, 0, sizeof(v56));
  objc_msgSend_transform(self, a2, v2);
  if (objc_msgSend_i_isClampedToParentByScaling(self, v5, v6))
  {
    mClampingScaleForChildLayouts = self->mClampingScaleForChildLayouts;
    v54 = v56;
    CGAffineTransformScale(&v55, &v54, mClampingScaleForChildLayouts, mClampingScaleForChildLayouts);
    v56 = v55;
  }

  x = *v4;
  y = v4[1];
  width = v4[2];
  height = v4[3];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v14 = objc_msgSend_i_groupedChildren(self, v7, v8, 0);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v50, v57, 16);
  if (v16)
  {
    v17 = v16;
    v18 = *v51;
    do
    {
      v19 = 0;
      do
      {
        if (*v51 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v50 + 1) + 8 * v19);
        objc_opt_class();
        v23 = objc_msgSend_info(v20, v21, v22);
        v24 = TSUDynamicCast();

        if (!v24 || (objc_msgSend_isEffectivelyEmpty(v24, v25, v26) & 1) == 0)
        {
          objc_msgSend_frameForCaptionPositioning(v20, v25, v26);
          v55 = v56;
          v60 = CGRectApplyAffineTransform(v59, &v55);
          v67.origin.x = x;
          v67.origin.y = y;
          v67.size.width = width;
          v67.size.height = height;
          v61 = CGRectUnion(v60, v67);
          x = v61.origin.x;
          y = v61.origin.y;
          width = v61.size.width;
          height = v61.size.height;
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v27, &v50, v57, 16);
    }

    while (v17);
  }

  if ((objc_msgSend_i_isClampedToParentByScaling(self, v28, v29) & 1) == 0)
  {
    objc_msgSend_boundsForStandardKnobs(self, v30, v31);
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    objc_msgSend_transform(self, v40, v41);
    v62.origin.x = v33;
    v62.origin.y = v35;
    v62.size.width = v37;
    v62.size.height = v39;
    v68 = CGRectApplyAffineTransform(v62, &v55);
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    v64 = CGRectUnion(v63, v68);
    x = v64.origin.x;
    y = v64.origin.y;
    width = v64.size.width;
    height = v64.size.height;
  }

  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = height;
  if (CGRectIsNull(v65))
  {
    TSURectWithSize();
    x = v42;
    y = v43;
    width = v44;
    height = v45;
  }

  v46 = x;
  v47 = y;
  v48 = width;
  v49 = height;
  result.size.height = v49;
  result.size.width = v48;
  result.origin.y = v47;
  result.origin.x = v46;
  return result;
}

- (CGRect)clipRect
{
  x = self->mBoundsForStandardKnobs.origin.x;
  y = self->mBoundsForStandardKnobs.origin.y;
  width = self->mBoundsForStandardKnobs.size.width;
  height = self->mBoundsForStandardKnobs.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)updateLayoutGeometryInPreparationForPartitioning
{
  v98 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_info(self, a2, v2);
  isEffectivelyEmpty = objc_msgSend_isEffectivelyEmpty(v4, v5, v6);

  if ((isEffectivelyEmpty & 1) == 0)
  {
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_msgSend_i_groupedChildren(self, v8, v9);
    v14 = objc_msgSend_array(v11, v12, v13);
    v16 = objc_msgSend_arrayByAddingObject_(v14, v15, self);
    v18 = objc_msgSend_setWithArray_(v10, v17, v16);

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v19 = v18;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v91, v97, 16);
    if (v21)
    {
      v24 = v21;
      v25 = *v92;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v92 != v25)
          {
            objc_enumerationMutation(v19);
          }

          objc_msgSend_invalidateFrame(*(*(&v91 + 1) + 8 * i), v22, v23);
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v91, v97, 16);
      }

      while (v24);
    }

    v29 = objc_msgSend_layoutController(self, v27, v28);
    objc_msgSend_validateLayoutWithDependencies_(v29, v30, self);

    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v37 = objc_msgSend_i_groupedChildren(self, v35, v36);
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v87, v96, 16);
    if (v39)
    {
      v42 = v39;
      v43 = *v88;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v88 != v43)
          {
            objc_enumerationMutation(v37);
          }

          objc_msgSend_frameForCulling(*(*(&v87 + 1) + 8 * j), v40, v41);
          v101.origin.x = x;
          v101.origin.y = y;
          v101.size.width = width;
          v101.size.height = height;
          v100 = CGRectUnion(v99, v101);
          x = v100.origin.x;
          y = v100.origin.y;
          width = v100.size.width;
          height = v100.size.height;
        }

        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v87, v96, 16);
      }

      while (v42);
    }

    v45 = fmax(width, 1.0);
    v46 = fmax(height, 1.0);
    v49 = objc_msgSend_geometry(self, v47, v48);
    objc_msgSend_size(v49, v50, v51);
    v53 = v52;
    v55 = v54;

    v56 = fmax(v53, 1.0);
    v57 = fmax(v55, 1.0);
    memset(&v86, 0, sizeof(v86));
    CGAffineTransformMakeScale(&v86, v45 / v56, v46 / v57);
    CGAffineTransformMakeTranslation(&t2, x / v56, y / v57);
    t1 = v86;
    CGAffineTransformConcat(&v85, &t1, &t2);
    v86 = v85;
    v60 = objc_msgSend_geometry(self, v58, v59);
    v63 = v60;
    if (v60)
    {
      objc_msgSend_fullTransform(v60, v61, v62);
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    t1 = v86;
    CGAffineTransformConcat(&v85, &t1, &t2);
    v65 = objc_msgSend_geometryFromFullTransform_(TSDLayoutGeometry, v64, &v85);
    objc_msgSend_setGeometry_(self, v66, v65);

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v69 = objc_msgSend_children(self, v67, v68, 0);
    v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v70, &v79, v95, 16);
    if (v71)
    {
      v72 = v71;
      v73 = *v80;
      do
      {
        for (k = 0; k != v72; ++k)
        {
          if (*v80 != v73)
          {
            objc_enumerationMutation(v69);
          }

          v75 = *(*(&v79 + 1) + 8 * k);
          TSUMultiplyPointScalar();
          objc_msgSend_offsetGeometryBy_(v75, v76, v77);
        }

        v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v78, &v79, v95, 16);
      }

      while (v72);
    }
  }
}

- (CGAffineTransform)transformForFindHighlightsOfChild:(SEL)a3
{
  v6 = a4;
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  objc_msgSend_transform(self, v7, v8);
  if (objc_msgSend_i_isClampedToParentByScaling(self, v9, v10))
  {
    v11 = v6;
    v14 = objc_msgSend_i_groupedChildren(self, v12, v13);
    v16 = objc_msgSend_containsObject_(v14, v15, v11);

    if (v16)
    {
      mClampingScaleForChildLayouts = self->mClampingScaleForChildLayouts;
      v18 = *&retstr->c;
      *&v21.a = *&retstr->a;
      *&v21.c = v18;
      *&v21.tx = *&retstr->tx;
      CGAffineTransformScale(&v22, &v21, mClampingScaleForChildLayouts, mClampingScaleForChildLayouts);
      v19 = *&v22.c;
      *&retstr->a = *&v22.a;
      *&retstr->c = v19;
      *&retstr->tx = *&v22.tx;
    }
  }

  return result;
}

- (CGRect)alignmentFrame
{
  p_mBoundsForStandardKnobs = &self->mBoundsForStandardKnobs;
  objc_msgSend_transform(self, a2, v2);
  return CGRectApplyAffineTransform(*p_mBoundsForStandardKnobs, &v4);
}

- (BOOL)shouldBeIncludedInParentFrameForCulling
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  LOBYTE(v5) = objc_msgSend_isEffectivelyEmpty(v6, v7, v8);
  return v5 ^ 1;
}

- (CGRect)rectInRootForPresentingAnnotationPopoverForSelectionPath:(id)a3
{
  objc_msgSend_boundsForStandardKnobs(self, a2, a3);

  objc_msgSend_rectInRoot_(self, v4, v5);
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)beginDynamicOperation
{
  objc_msgSend_p_createDynamicCopies(self, a2, v2);
  v4.receiver = self;
  v4.super_class = TSDGroupLayout;
  [(TSDLayout *)&v4 beginDynamicOperation];
}

- (id)computeInfoGeometryDuringResize
{
  v3 = objc_msgSend_geometry(self, a2, v2);
  v6 = objc_msgSend_infoGeometry(v3, v4, v5);

  return v6;
}

- (BOOL)canAspectRatioLockBeChangedByUser
{
  v3 = objc_msgSend_info(self, a2, v2);
  canAspectRatioLockBeChangedByUser = objc_msgSend_canAspectRatioLockBeChangedByUser(v3, v4, v5);

  return canAspectRatioLockBeChangedByUser;
}

- (BOOL)resizeMayChangeAspectRatio
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_info(self, a2, v2);
  if ((objc_msgSend_aspectRatioLocked(v4, v5, v6) & 1) != 0 || !objc_msgSend_canAspectRatioLockBeChangedByUser(v4, v7, v8))
  {
    v23 = 0;
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v11 = objc_msgSend_allNestedChildrenInfosIncludingGroups(v4, v9, v10);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v48, v53, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v49;
LABEL_5:
      v18 = 0;
      while (1)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(v11);
        }

        if (objc_msgSend_aspectRatioLocked(*(*(&v48 + 1) + 8 * v18), v14, v15))
        {
          goto LABEL_28;
        }

        if (v16 == ++v18)
        {
          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v48, v53, 16);
          if (v16)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    if ((objc_msgSend_isFreehandDrawing(v4, v19, v20) & 1) == 0)
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v11 = objc_msgSend_i_groupedChildren(self, v21, v22, 0);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v24, &v44, v52, 16);
      if (!v25)
      {
        v23 = 1;
        goto LABEL_29;
      }

      v28 = v25;
      v29 = *v45;
LABEL_16:
      v30 = 0;
      while (1)
      {
        if (*v45 != v29)
        {
          objc_enumerationMutation(v11);
        }

        v31 = *(*(&v44 + 1) + 8 * v30);
        v32 = objc_msgSend_info(v31, v26, v27);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          break;
        }

        v36 = objc_msgSend_info(v31, v34, v35);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v39 = objc_msgSend_info(v31, v37, v38);
          isFreehandDrawing = objc_msgSend_isFreehandDrawing(v39, v40, v41);

          if ((isFreehandDrawing & 1) == 0 && !objc_msgSend_resizeMayChangeAspectRatio(v31, v26, v27))
          {
            break;
          }
        }

        else
        {
        }

        if (v28 == ++v30)
        {
          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v26, &v44, v52, 16);
          v23 = 1;
          if (v28)
          {
            goto LABEL_16;
          }

          goto LABEL_29;
        }
      }

LABEL_28:
      v23 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v23 = 1;
  }

LABEL_30:

  return v23;
}

- (CGSize)minimumSize
{
  v49 = *MEMORY[0x277D85DE8];
  height = self->mBoundsForStandardKnobs.size.height;
  width = self->mBoundsForStandardKnobs.size.width;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v4 = objc_msgSend_i_groupedChildren(self, a2, v2);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v44, v48, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v45;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v14 = *(*(&v44 + 1) + 8 * i);
        objc_msgSend_minimumSize(v14, v7, v8);
        TSURectWithSize();
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v25 = objc_msgSend_pureGeometry(v14, v23, v24);
        v28 = v25;
        if (v25)
        {
          objc_msgSend_transform(v25, v26, v27);
        }

        else
        {
          memset(&v43, 0, sizeof(v43));
        }

        v51.origin.x = v16;
        v51.origin.y = v18;
        v51.size.width = v20;
        v51.size.height = v22;
        v52 = CGRectApplyAffineTransform(v51, &v43);
        v29 = v52.size.width;
        v30 = v52.size.height;

        v33 = objc_msgSend_pureGeometry(v14, v31, v32);
        objc_msgSend_frame(v33, v34, v35);
        v37 = v36;
        v39 = v38;

        if (v37 > 1.0e-11)
        {
          v12 = fmax(v12, v29 / v37);
        }

        if (v39 > 1.0e-11)
        {
          v11 = fmax(v11, v30 / v39);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v44, v48, 16);
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  v40 = width * v12;
  v41 = height * v11;
  result.height = v41;
  result.width = v40;
  return result;
}

- (void)endDynamicOperation
{
  objc_msgSend_p_destroyDynamicCopies(self, a2, v2);
  v4.receiver = self;
  v4.super_class = TSDGroupLayout;
  [(TSDLayout *)&v4 endDynamicOperation];
}

- (void)i_clearInvalidationCache
{
  v3.receiver = self;
  v3.super_class = TSDGroupLayout;
  [(TSDLayout *)&v3 i_clearInvalidationCache];
  self->mHasInvalidated = 0;
}

- (void)invalidate
{
  if (!self->mHasInvalidated)
  {
    self->mHasInvalidated = objc_msgSend_layoutState(self, a2, v2) != 0;
    v14.receiver = self;
    v14.super_class = TSDGroupLayout;
    [(TSDLayout *)&v14 invalidate];
    objc_msgSend_p_invalidateParentForWrap(self, v4, v5);
    mCachedWrapPath = self->mCachedWrapPath;
    self->mCachedWrapPath = 0;

    mCachedPathForClippingConnectionLines = self->mCachedPathForClippingConnectionLines;
    self->mCachedPathForClippingConnectionLines = 0;

    v10 = objc_msgSend_info(self, v8, v9);
    isInlineWithText = objc_msgSend_isInlineWithText(v10, v11, v12);

    if ((isInlineWithText & 1) == 0)
    {
      *&self->super.super.mInvalidFlags |= 3u;
    }
  }
}

- (void)updateChildrenFromInfo
{
  v4.receiver = self;
  v4.super_class = TSDGroupLayout;
  [(TSDLayout *)&v4 updateChildrenFromInfo];
  mCachedGroupedChildren = self->mCachedGroupedChildren;
  self->mCachedGroupedChildren = 0;
}

- (void)invalidateExteriorWrap
{
  v5.receiver = self;
  v5.super_class = TSDGroupLayout;
  [(TSDLayout *)&v5 invalidateExteriorWrap];
  mCachedWrapPath = self->mCachedWrapPath;
  self->mCachedWrapPath = 0;

  mCachedPathForClippingConnectionLines = self->mCachedPathForClippingConnectionLines;
  self->mCachedPathForClippingConnectionLines = 0;
}

- (void)dragBy:(CGPoint)a3
{
  v6.receiver = self;
  v6.super_class = TSDGroupLayout;
  [(TSDLayout *)&v6 dragBy:a3.x, a3.y];
  objc_msgSend_p_invalidateParentForWrap(self, v4, v5);
}

- (id)layoutsForProvidingGuidesForChildLayouts
{
  v3 = objc_msgSend_i_groupedChildren(self, a2, v2);
  v6 = objc_msgSend_array(v3, v4, v5);

  return v6;
}

- (BOOL)allowsConnections
{
  v3 = objc_msgSend_info(self, a2, v2);
  v6 = objc_msgSend_childInfos(v3, v4, v5);
  if (objc_msgSend_count(v6, v7, v8))
  {
    isFreehandDrawing = 1;
  }

  else
  {
    isFreehandDrawing = objc_msgSend_isFreehandDrawing(v3, v9, v10);
  }

  return isFreehandDrawing;
}

- (BOOL)supportsRotation
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = objc_msgSend_children(self, a2, v2, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v19, v23, 16);
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        v12 = objc_msgSend_info(v9, v10, v11);
        v13 = TSUDynamicCast();

        LODWORD(v12) = objc_msgSend_supportsParentRotation(v13, v14, v15);
        if (!v12)
        {
          v17 = 0;
          goto LABEL_11;
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v16, &v19, v23, 16);
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_11:

  return v17;
}

- (BOOL)supportsFlipping
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = objc_msgSend_children(self, a2, v2, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v13, v17, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v3);
        }

        if (!objc_msgSend_supportsParentFlipping(*(*(&v13 + 1) + 8 * i), v6, v7))
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v13, v17, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (BOOL)supportsParentFlipping
{
  v27 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = TSDGroupLayout;
  if (![(TSDLayout *)&v25 supportsParentFlipping])
  {
    return 0;
  }

  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  if (objc_msgSend_isFreehandDrawing(v6, v7, v8))
  {
    v11 = 1;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = objc_msgSend_i_groupedChildren(self, v9, v10, 0);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v21, v26, 16);
    if (v14)
    {
      v17 = v14;
      v18 = *v22;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v12);
          }

          if (!objc_msgSend_supportsParentFlipping(*(*(&v21 + 1) + 8 * i), v15, v16))
          {
            v11 = 0;
            goto LABEL_15;
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v21, v26, 16);
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v11 = 1;
LABEL_15:
  }

  return v11;
}

- (id)p_childWrapPathsFrom:(id)a3 inDescendents:(id)a4 includingTitleAndCaption:(BOOL)a5
{
  v5 = a5;
  v63 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v10 = v7;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v57, v62, 16);
  if (v12)
  {
    v13 = v12;
    v14 = *v58;
    v51 = *v58;
    v49 = v5;
    v47 = v10;
    v48 = v8;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v58 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v57 + 1) + 8 * i);
        objc_opt_class();
        v18 = TSUDynamicCast();
        if (v18)
        {
          if (!objc_msgSend_containsObject_(v8, v17, v18))
          {
            goto LABEL_25;
          }

          if (v5)
          {
            objc_msgSend_i_wrapPathIncludingTitleAndCaption(v18, v19, v20);
          }

          else
          {
            objc_msgSend_i_wrapPath(v18, v19, v20);
          }
          v38 = ;
          v26 = objc_msgSend_copy(v38, v39, v40);

          objc_msgSend_transform(v18, v41, v42);
          objc_msgSend_transformUsingAffineTransform_(v26, v43, v56);
          objc_msgSend_addObject_(v9, v44, v26);
        }

        else
        {
          if (!objc_msgSend_conformsToProtocol_(v16, v17, &unk_2885A2AF0))
          {
            goto LABEL_25;
          }

          v23 = objc_msgSend_children(v16, v21, v22);
          v25 = objc_msgSend_p_childWrapPathsFrom_inDescendents_includingTitleAndCaption_(self, v24, v23, v8, v5);

          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v26 = v25;
          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v52, v61, 16);
          if (v28)
          {
            v31 = v28;
            v32 = *v53;
            do
            {
              for (j = 0; j != v31; ++j)
              {
                if (*v53 != v32)
                {
                  objc_enumerationMutation(v26);
                }

                v36 = objc_msgSend_copy(*(*(&v52 + 1) + 8 * j), v29, v30);
                if (v16)
                {
                  objc_msgSend_transform(v16, v34, v35);
                }

                else
                {
                  memset(v56, 0, sizeof(v56));
                }

                objc_msgSend_transformUsingAffineTransform_(v36, v34, v56);
                objc_msgSend_addObject_(v9, v37, v36);
              }

              v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v52, v61, 16);
            }

            while (v31);
          }

          v5 = v49;
          v10 = v47;
          v8 = v48;
        }

        v14 = v51;

LABEL_25:
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v45, &v57, v62, 16);
    }

    while (v13);
  }

  return v9;
}

- (id)i_computeWrapPath
{
  v4 = objc_msgSend_children(self, a2, v2);
  v5 = MEMORY[0x277D812C0];
  v8 = objc_msgSend_descendentWrappables(self, v6, v7);
  v10 = objc_msgSend_setWithArray_(v5, v9, v8);
  v12 = objc_msgSend_p_childWrapPathsFrom_inDescendents_includingTitleAndCaption_(self, v11, v4, v10, 0);

  v14 = objc_msgSend_uniteBezierPaths_(MEMORY[0x277D81160], v13, v12);

  return v14;
}

- (id)i_wrapPath
{
  if (self->mCachedWrapPath)
  {
    goto LABEL_9;
  }

  v4 = objc_msgSend_children(self, a2, v2);
  if (!objc_msgSend_count(v4, v5, v6))
  {

    goto LABEL_8;
  }

  v9 = objc_msgSend_info(self, v7, v8);
  isEffectivelyEmpty = objc_msgSend_isEffectivelyEmpty(v9, v10, v11);

  if (isEffectivelyEmpty)
  {
LABEL_8:
    v31 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v13, v14);
    mCachedWrapPath = self->mCachedWrapPath;
    self->mCachedWrapPath = v31;

    goto LABEL_9;
  }

  v15 = objc_msgSend_children(self, v13, v14);
  v16 = MEMORY[0x277D812C0];
  v19 = objc_msgSend_descendentWrappables(self, v17, v18);
  v21 = objc_msgSend_setWithArray_(v16, v20, v19);
  v23 = objc_msgSend_p_childWrapPathsFrom_inDescendents_includingTitleAndCaption_(self, v22, v15, v21, 0);

  v25 = objc_msgSend_uniteBezierPaths_(MEMORY[0x277D81160], v24, v23);
  v26 = self->mCachedWrapPath;
  self->mCachedWrapPath = v25;

  if (objc_msgSend_i_isClampedToParentByScaling(self, v27, v28))
  {
    v29 = self->mCachedWrapPath;
    CGAffineTransformMakeScale(&v35, self->mClampingScaleForChildLayouts, self->mClampingScaleForChildLayouts);
    objc_msgSend_transformUsingAffineTransform_(v29, v30, &v35);
  }

LABEL_9:
  v33 = self->mCachedWrapPath;

  return v33;
}

- (id)i_wrapPathIncludingTitleAndCaption
{
  v98 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_children(self, a2, v2);
  if (!objc_msgSend_count(v4, v5, v6))
  {

    goto LABEL_14;
  }

  v9 = objc_msgSend_info(self, v7, v8);
  isEffectivelyEmpty = objc_msgSend_isEffectivelyEmpty(v9, v10, v11);

  if (isEffectivelyEmpty)
  {
LABEL_14:
    v36 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v13, v14);
    goto LABEL_15;
  }

  v15 = objc_msgSend_children(self, v13, v14);
  v16 = MEMORY[0x277D812C0];
  v19 = objc_msgSend_descendentWrappables(self, v17, v18);
  v21 = objc_msgSend_setWithArray_(v16, v20, v19);
  v23 = objc_msgSend_p_childWrapPathsFrom_inDescendents_includingTitleAndCaption_(self, v22, v15, v21, 1);

  if (objc_msgSend_i_isClampedToParentByScaling(self, v24, v25))
  {
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v27 = v23;
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v93, v97, 16);
    if (v29)
    {
      v30 = v29;
      v31 = *v94;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v94 != v31)
          {
            objc_enumerationMutation(v27);
          }

          v33 = *(*(&v93 + 1) + 8 * i);
          CGAffineTransformMakeScale(&v92, self->mClampingScaleForChildLayouts, self->mClampingScaleForChildLayouts);
          objc_msgSend_transformUsingAffineTransform_(v33, v34, &v92);
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v35, &v93, v97, 16);
      }

      while (v30);
    }
  }

  v36 = objc_msgSend_appendBezierPaths_(MEMORY[0x277D81160], v26, v23);

LABEL_15:
  v39 = objc_msgSend_info(self, v37, v38);
  v42 = objc_msgSend_title(v39, v40, v41);

  if (v42)
  {
    v45 = objc_msgSend_layoutController(self, v43, v44);
    v47 = objc_msgSend_layoutForInfo_childOfLayout_(v45, v46, v42, self);

    if (v47)
    {
      v50 = objc_msgSend_i_wrapPath(v47, v48, v49);
      v53 = objc_msgSend_copy(v50, v51, v52);

      objc_msgSend_transform(v47, v54, v55);
      objc_msgSend_transformUsingAffineTransform_(v53, v56, &v92);
      objc_msgSend_appendBezierPath_(v36, v57, v53);
    }

    else
    {
      v58 = MEMORY[0x277D81150];
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "[TSDGroupLayout i_wrapPathIncludingTitleAndCaption]");
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v62, v59, v61, 813, 0, "invalid nil value for '%{public}s'", "titleLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64);
    }
  }

  v65 = objc_msgSend_info(self, v43, v44);
  v68 = objc_msgSend_caption(v65, v66, v67);

  if (v68)
  {
    v71 = objc_msgSend_layoutController(self, v69, v70);
    v73 = objc_msgSend_layoutForInfo_childOfLayout_(v71, v72, v68, self);

    if (v73)
    {
      v76 = objc_msgSend_i_wrapPath(v73, v74, v75);
      v79 = objc_msgSend_copy(v76, v77, v78);

      objc_msgSend_transform(v73, v80, v81);
      objc_msgSend_transformUsingAffineTransform_(v79, v82, &v92);
      objc_msgSend_appendBezierPath_(v36, v83, v79);
    }

    else
    {
      v84 = MEMORY[0x277D81150];
      v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "[TSDGroupLayout i_wrapPathIncludingTitleAndCaption]");
      v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v86, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v84, v88, v85, v87, 825, 0, "invalid nil value for '%{public}s'", "captionLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v89, v90);
    }
  }

  return v36;
}

- (id)pathForClippingConnectionLines
{
  mCachedPathForClippingConnectionLines = self->mCachedPathForClippingConnectionLines;
  if (!mCachedPathForClippingConnectionLines)
  {
    v5 = MEMORY[0x277D81160];
    v6 = objc_msgSend_i_wrapPath(self, a2, v2);
    v8 = objc_msgSend_exteriorOfBezierPath_(v5, v7, v6);
    v9 = self->mCachedPathForClippingConnectionLines;
    self->mCachedPathForClippingConnectionLines = v8;

    mCachedPathForClippingConnectionLines = self->mCachedPathForClippingConnectionLines;
  }

  return mCachedPathForClippingConnectionLines;
}

- (CGRect)rectInRootForCalculatingActivityLineEndpoint
{
  objc_msgSend_boundsForStandardKnobs(self, a2, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v14 = objc_msgSend_geometryInRoot(self, v12, v13);
  v17 = v14;
  if (v14)
  {
    objc_msgSend_transform(v14, v15, v16);
  }

  else
  {
    memset(&v26, 0, sizeof(v26));
  }

  v27.origin.x = v5;
  v27.origin.y = v7;
  v27.size.width = v9;
  v27.size.height = v11;
  v28 = CGRectApplyAffineTransform(v27, &v26);
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)transferLayoutGeometryToInfo:(id)a3 withAdditionalTransform:(CGAffineTransform *)a4 assertIfInDocument:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v44.receiver = self;
  v44.super_class = TSDGroupLayout;
  v9 = *&a4->c;
  *&v43.a = *&a4->a;
  *&v43.c = v9;
  *&v43.tx = *&a4->tx;
  [(TSDLayout *)&v44 transferLayoutGeometryToInfo:v8 withAdditionalTransform:&v43 assertIfInDocument:v5];
  v12 = objc_msgSend_info(self, v10, v11);
  v15 = objc_msgSend_childInfos(v12, v13, v14);

  objc_opt_class();
  v16 = TSUCheckedDynamicCast();
  memset(&v43, 0, sizeof(v43));
  objc_msgSend_boundsForStandardKnobs(self, v17, v18);
  v20 = -v19;
  objc_msgSend_boundsForStandardKnobs(self, v21, v22);
  CGAffineTransformMakeTranslation(&v43, v20, -v23);
  v26 = objc_msgSend_count(v15, v24, v25);
  if (v26)
  {
    v29 = v26;
    for (i = 0; i != v29; ++i)
    {
      v31 = objc_msgSend_layoutController(self, v27, v28);
      v33 = objc_msgSend_objectAtIndexedSubscript_(v15, v32, i);
      v35 = objc_msgSend_layoutForInfo_(v31, v34, v33);

      v38 = objc_msgSend_childInfos(v16, v36, v37);
      v40 = objc_msgSend_objectAtIndexedSubscript_(v38, v39, i);
      v42 = v43;
      objc_msgSend_transferLayoutGeometryToInfo_withAdditionalTransform_assertIfInDocument_(v35, v41, v40, &v42, v5);
    }
  }
}

- (CGRect)alignmentFrameForCaptionEdgeInsetsCalculation
{
  v45 = *MEMORY[0x277D85DE8];
  objc_msgSend_alignmentFrame(self, a2, v2);
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  memset(&v43, 0, sizeof(v43));
  objc_msgSend_transform(self, v12, v13);
  if (objc_msgSend_i_isClampedToParentByScaling(self, v14, v15))
  {
    mClampingScaleForChildLayouts = self->mClampingScaleForChildLayouts;
    v41 = v43;
    CGAffineTransformScale(&v42, &v41, mClampingScaleForChildLayouts, mClampingScaleForChildLayouts);
    v43 = v42;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v19 = objc_msgSend_i_groupedChildren(self, v16, v17, 0);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v37, v44, 16);
  if (v21)
  {
    v22 = v21;
    v23 = *v38;
    do
    {
      v24 = 0;
      do
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v37 + 1) + 8 * v24);
        objc_opt_class();
        v28 = objc_msgSend_info(v25, v26, v27);
        v29 = TSUDynamicCast();

        if (!v29 || (objc_msgSend_isEffectivelyEmpty(v29, v30, v31) & 1) == 0)
        {
          objc_msgSend_alignmentFrameForInlineLayout(v25, v30, v31);
          v42 = v43;
          v50 = CGRectApplyAffineTransform(v46, &v42);
          v47.origin.x = x;
          v47.origin.y = y;
          v47.size.width = width;
          v47.size.height = height;
          v48 = CGRectUnion(v47, v50);
          x = v48.origin.x;
          y = v48.origin.y;
          width = v48.size.width;
          height = v48.size.height;
        }

        ++v24;
      }

      while (v22 != v24);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v32, &v37, v44, 16);
    }

    while (v22);
  }

  v33 = x;
  v34 = y;
  v35 = width;
  v36 = height;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (id)descendentWrappables
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v6 = objc_msgSend_children(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);
  v11 = objc_msgSend_initWithCapacity_(v3, v10, v9);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = objc_msgSend_children(self, v12, v13, 0);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v27, v31, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v28;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v27 + 1) + 8 * i);
        if (objc_msgSend_conformsToProtocol_(v21, v17, &unk_2885AB610))
        {
          objc_msgSend_addObject_(v11, v22, v21);
        }

        if (objc_msgSend_conformsToProtocol_(v21, v22, &unk_2885A2AF0))
        {
          v24 = objc_msgSend_descendentWrappables(v21, v17, v23);
          objc_msgSend_addObjectsFromArray_(v11, v25, v24);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v27, v31, 16);
    }

    while (v18);
  }

  return v11;
}

- (BOOL)descendentWrappablesContainsWrappable:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_parent(v4, v5, v6);

  if (v7 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    v8 = TSUDynamicCast();
    v10 = objc_msgSend_childLayoutContainingPossibleDescendentLayout_(self, v9, v8);
    v11 = TSUProtocolCast();

    if (v11)
    {
      v13 = objc_msgSend_descendentWrappablesContainsWrappable_(v11, v12, v4, &unk_2885A2AF0);
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (void)p_createDynamicCopies
{
  if (self->mDynamicLayoutGeometry)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDGroupLayout p_createDynamicCopies]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 955, 0, "expected nil value for '%{public}s'", "mDynamicLayoutGeometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  v15 = objc_msgSend_geometry(self, a2, v2);
  v13 = objc_msgSend_copy(v15, v11, v12);
  mDynamicLayoutGeometry = self->mDynamicLayoutGeometry;
  self->mDynamicLayoutGeometry = v13;
}

- (void)setDynamicGeometry:(id)a3
{
  v9.receiver = self;
  v9.super_class = TSDGroupLayout;
  v4 = a3;
  [(TSDLayout *)&v9 setDynamicGeometry:v4];
  v7 = objc_msgSend_copy(v4, v5, v6, v9.receiver, v9.super_class);

  mDynamicLayoutGeometry = self->mDynamicLayoutGeometry;
  self->mDynamicLayoutGeometry = v7;
}

- (void)p_destroyDynamicCopies
{
  mDynamicLayoutGeometry = self->mDynamicLayoutGeometry;
  if (!mDynamicLayoutGeometry)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDGroupLayout p_destroyDynamicCopies]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 965, 0, "invalid nil value for '%{public}s'", "mDynamicLayoutGeometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    mDynamicLayoutGeometry = self->mDynamicLayoutGeometry;
  }

  self->mDynamicLayoutGeometry = 0;
}

- (void)p_invalidateParentForWrap
{
  v35 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isBeingManipulated(self, a2, v2))
  {
    v6 = objc_msgSend_info(self, v4, v5);
    v9 = objc_msgSend_exteriorTextWrap(v6, v7, v8);
    v12 = objc_msgSend_type(v9, v10, v11);

    if (v12 != 5)
    {
      v15 = objc_msgSend_wrapInvalidationParent(self, v13, v14);
      v18 = v15;
      if (v15)
      {
        objc_msgSend_beginResizeWrapInvalidationCluster(v15, v16, v17);
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v21 = objc_msgSend_descendentWrappables(self, v19, v20, 0);
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v30, v34, 16);
        if (v23)
        {
          v25 = v23;
          v26 = *v31;
          do
          {
            v27 = 0;
            do
            {
              if (*v31 != v26)
              {
                objc_enumerationMutation(v21);
              }

              objc_msgSend_wrappableChildInvalidated_(v18, v24, *(*(&v30 + 1) + 8 * v27++));
            }

            while (v25 != v27);
            v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v30, v34, 16);
          }

          while (v25);
        }

        objc_msgSend_endResizeWrapInvalidationCluster(v18, v28, v29);
      }
    }
  }
}

- (NSOrderedSet)i_groupedChildren
{
  mCachedGroupedChildren = self->mCachedGroupedChildren;
  if (!mCachedGroupedChildren)
  {
    v5 = objc_msgSend_p_groupInfo(self, a2, v2);
    v8 = objc_msgSend_children(self, v6, v7);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_27678AECC;
    v15[3] = &unk_27A6CDC98;
    v15[4] = v5;
    v10 = objc_msgSend_tsu_arrayOfObjectsPassingTest_(v8, v9, v15);

    v12 = objc_msgSend_orderedSetWithArray_(MEMORY[0x277CBEB70], v11, v10);
    v13 = self->mCachedGroupedChildren;
    self->mCachedGroupedChildren = v12;

    mCachedGroupedChildren = self->mCachedGroupedChildren;
  }

  return mCachedGroupedChildren;
}

@end
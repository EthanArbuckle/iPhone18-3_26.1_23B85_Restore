@interface TSDFreehandDrawingLayout
- (BOOL)descendentWrappablesContainsWrappable:(id)wrappable;
- (BOOL)shouldSnapWhileResizing;
- (BOOL)shouldSpacerShapeProvideSpace;
- (CGRect)computeBoundsForStandardKnobs;
- (CGRect)frameForMovieExport;
- (CGSize)minimumSize;
- (TSDFreehandDrawingInfo)freehandInfo;
- (TSDFreehandDrawingLayout)initWithInfo:(id)info;
- (double)opacity;
- (id)additionalDependenciesForChildLayout:(id)layout;
- (id)childInfosForChildLayouts;
- (id)childrenForPencilAnnotations;
- (id)computeLayoutGeometry;
- (id)descendentWrappables;
- (id)layoutGeometryFromInfo;
- (id)p_sizeEnforcingChild;
- (void)processChangedProperty:(int)property;
- (void)transferLayoutGeometryToInfo:(id)info withAdditionalTransform:(CGAffineTransform *)transform assertIfInDocument:(BOOL)document;
@end

@implementation TSDFreehandDrawingLayout

- (TSDFreehandDrawingLayout)initWithInfo:(id)info
{
  v4.receiver = self;
  v4.super_class = TSDFreehandDrawingLayout;
  result = [(TSDGroupLayout *)&v4 initWithInfo:info];
  if (result)
  {
    result->_scaleForInlineClampingChildLayouts = 1.0;
  }

  return result;
}

- (TSDFreehandDrawingInfo)freehandInfo
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (void)processChangedProperty:(int)property
{
  v3 = *&property;
  if (property == 514 && objc_msgSend_shouldSpacerShapeProvideSpace(self, a2, *&property))
  {
    v7 = objc_msgSend_p_sizeEnforcingChild(self, v5, v6);
    objc_msgSend_invalidate(v7, v8, v9);
  }

  v10.receiver = self;
  v10.super_class = TSDFreehandDrawingLayout;
  [(TSDGroupLayout *)&v10 processChangedProperty:v3];
}

- (CGSize)minimumSize
{
  v4.receiver = self;
  v4.super_class = TSDFreehandDrawingLayout;
  [(TSDGroupLayout *)&v4 minimumSize];
  if (v2 < 0.00000000999999994)
  {
    v2 = 0.00000000999999994;
  }

  if (v3 < 0.00000000999999994)
  {
    v3 = 0.00000000999999994;
  }

  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)frameForMovieExport
{
  objc_msgSend_frameForCulling(self, a2, v2);
  v4 = v3;
  v6 = v5;
  TSUCeilSize();
  v8 = v7;
  v10 = v9;
  v11 = v4;
  v12 = v6;
  result.size.height = v10;
  result.size.width = v8;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)shouldSpacerShapeProvideSpace
{
  v4 = objc_msgSend_info(self, a2, v2);
  v7 = objc_msgSend_context(v4, v5, v6);
  v10 = objc_msgSend_documentRoot(v7, v8, v9);
  v13 = objc_msgSend_freehandDrawingsRequireSpacerShape(v10, v11, v12);

  v16 = objc_msgSend_freehandInfo(self, v14, v15);
  v19 = objc_msgSend_childInfos(v16, v17, v18);
  v22 = objc_msgSend_count(v19, v20, v21);

  if (v22)
  {
    return v13;
  }

  else
  {
    return 1;
  }
}

- (id)childInfosForChildLayouts
{
  if (objc_msgSend_shouldSpacerShapeProvideSpace(self, a2, v2))
  {
    v6 = objc_msgSend_freehandInfo(self, v4, v5);
    v9 = objc_msgSend_freehandDrawingSpacerShape(v6, v7, v8);
    v11 = objc_msgSend_arrayByAddingObject_(MEMORY[0x277CBEBF8], v10, v9);
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v16.receiver = self;
  v16.super_class = TSDFreehandDrawingLayout;
  childInfosForChildLayouts = [(TSDGroupLayout *)&v16 childInfosForChildLayouts];
  v14 = objc_msgSend_arrayByAddingObjectsFromArray_(v11, v13, childInfosForChildLayouts);

  return v14;
}

- (void)transferLayoutGeometryToInfo:(id)info withAdditionalTransform:(CGAffineTransform *)transform assertIfInDocument:(BOOL)document
{
  documentCopy = document;
  infoCopy = info;
  v27.receiver = self;
  v27.super_class = TSDFreehandDrawingLayout;
  v9 = *&transform->c;
  *&v26.a = *&transform->a;
  *&v26.c = v9;
  *&v26.tx = *&transform->tx;
  [(TSDGroupLayout *)&v27 transferLayoutGeometryToInfo:infoCopy withAdditionalTransform:&v26 assertIfInDocument:documentCopy];
  v10 = infoCopy;
  v13 = objc_msgSend_p_sizeEnforcingChild(self, v11, v12);
  memset(&v26, 0, sizeof(v26));
  objc_msgSend_boundsForStandardKnobs(self, v14, v15);
  v17 = -v16;
  objc_msgSend_boundsForStandardKnobs(self, v18, v19);
  CGAffineTransformMakeTranslation(&v26, v17, -v20);
  v23 = objc_msgSend_freehandDrawingSpacerShape(v10, v21, v22);

  v25 = v26;
  objc_msgSend_transferLayoutGeometryToInfo_withAdditionalTransform_assertIfInDocument_(v13, v24, v23, &v25, documentCopy);
}

- (id)computeLayoutGeometry
{
  v165 = *MEMORY[0x277D85DE8];
  scaleForInlineClampingChildLayouts = self->_scaleForInlineClampingChildLayouts;
  self->_scaleForInlineClampingChildLayouts = 1.0;
  v5 = objc_msgSend_i_computeBaseLayoutGeometry(self, a2, v2);
  objc_opt_class();
  v8 = objc_msgSend_parent(self, v6, v7);
  v9 = TSUDynamicCast();

  if (v9 && objc_msgSend_layoutState(self, v10, v11) != 4)
  {
    if (objc_msgSend_layoutState(self, v12, v13) == 3 && (objc_msgSend_wantsNormalLayoutDuringDynamicRotation(self, v14, v15) & 1) == 0)
    {
      v124 = [TSDLayoutGeometry alloc];
      obj = objc_msgSend_originalPureGeometry(self, v125, v126);
      objc_msgSend_size(obj, v127, v128);
      v132 = v131;
      v134 = v133;
      if (v5)
      {
        objc_msgSend_transform(v5, v129, v130);
      }

      else
      {
        memset(&v160, 0, sizeof(v160));
      }

      v123 = objc_msgSend_initWithSize_transform_(v124, v129, &v160, v132, v134);
    }

    else
    {
      v137 = v9;
      v16 = objc_msgSend_i_groupedChildren(self, v14, v15);
      v19 = objc_msgSend_set(v16, v17, v18);

      if (scaleForInlineClampingChildLayouts != 1.0)
      {
        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        v22 = v19;
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v156, v164, 16);
        if (v24)
        {
          v27 = v24;
          v28 = *v157;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v157 != v28)
              {
                objc_enumerationMutation(v22);
              }

              v30 = *(*(&v156 + 1) + 8 * i);
              objc_msgSend_invalidateSize(v30, v25, v26);
              objc_msgSend_invalidatePosition(v30, v31, v32);
            }

            v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v156, v164, 16);
          }

          while (v27);
        }

        v35 = objc_msgSend_layoutController(self, v33, v34);
        objc_msgSend_validateLayoutsWithDependencies_(v35, v36, v22);
      }

      selfCopy = self;
      v37 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v20, v21);
      v152 = 0u;
      v153 = 0u;
      v154 = 0u;
      v155 = 0u;
      obj = v19;
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v152, v163, 16);
      if (v39)
      {
        v42 = v39;
        v43 = *v153;
        do
        {
          for (j = 0; j != v42; ++j)
          {
            if (*v153 != v43)
            {
              objc_enumerationMutation(obj);
            }

            v45 = *(*(&v152 + 1) + 8 * j);
            v46 = MEMORY[0x277CCAE60];
            objc_msgSend_frame(v45, v40, v41);
            v151[0] = v47;
            v151[1] = v48;
            v151[2] = v49;
            v151[3] = v50;
            v52 = objc_msgSend_valueWithBytes_objCType_(v46, v51, v151, "{CGRect={CGPoint=dd}{CGSize=dd}}");
            objc_msgSend_setObject_forKeyedSubscript_(v37, v53, v52, v45);
          }

          v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v152, v163, 16);
        }

        while (v42);
      }

      selfCopy2 = self;
      objc_msgSend_computeBoundsForStandardKnobs(self, v55, v56);
      v58 = v57;
      v60 = v59;
      v62 = v61;
      v64 = v63;
      memset(&v160, 0, sizeof(v160));
      v67 = objc_msgSend_layoutGeometryFromInfo(self, v65, v66);
      v70 = v67;
      if (v67)
      {
        objc_msgSend_transform(v67, v68, v69);
      }

      else
      {
        memset(&v160, 0, sizeof(v160));
      }

      CGAffineTransformMakeTranslation(&t1, v58, v60);
      t2 = v160;
      CGAffineTransformConcat(&v150, &t1, &t2);
      v160 = v150;
      v71 = [TSDLayoutGeometry alloc];
      v150 = v160;
      v73 = objc_msgSend_initWithSize_transform_(v71, v72, &v150, v62, v64);

      objc_msgSend_size(v73, v74, v75);
      v79 = v78;
      v81 = v80;
      if (v73)
      {
        objc_msgSend_transform(v73, v76, v77);
      }

      else
      {
        memset(&v150, 0, sizeof(v150));
      }

      objc_msgSend_scaleForInlineClampingUnrotatedSize_withTransform_(self, v76, &v150, v79, v81);
      if (v84 != 1.0)
      {
        v136 = v73;
        self->_scaleForInlineClampingChildLayouts = v84;
        v144 = 0u;
        v145 = 0u;
        v146 = 0u;
        v147 = 0u;
        v85 = obj;
        v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v86, &v144, v162, 16);
        if (v87)
        {
          v90 = v87;
          v91 = *v145;
          do
          {
            for (k = 0; k != v90; ++k)
            {
              if (*v145 != v91)
              {
                objc_enumerationMutation(v85);
              }

              v93 = *(*(&v144 + 1) + 8 * k);
              objc_msgSend_invalidateSize(v93, v88, v89);
              objc_msgSend_invalidatePosition(v93, v94, v95);
            }

            v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v88, &v144, v162, 16);
          }

          while (v90);
        }

        v98 = objc_msgSend_layoutController(self, v96, v97);
        objc_msgSend_validateLayoutsWithDependencies_(v98, v99, v85);

        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v100 = v85;
        v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v100, v101, &v140, v161, 16);
        if (v102)
        {
          v104 = v102;
          v105 = *v141;
          do
          {
            for (m = 0; m != v104; ++m)
            {
              if (*v141 != v105)
              {
                objc_enumerationMutation(v100);
              }

              v107 = *(*(&v140 + 1) + 8 * m);
              v108 = objc_msgSend_objectForKeyedSubscript_(v37, v103, v107);
              v111 = v108;
              if (v108)
              {
                objc_msgSend_CGRectValue(v108, v109, v110);
                TSUMultiplyPointScalar();
                objc_msgSend_frame(v107, v112, v113);
                TSUSubtractPoints();
                objc_msgSend_offsetGeometryBy_(v107, v114, v115);
              }

              else
              {
                v116 = MEMORY[0x277D81150];
                v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v109, "[TSDFreehandDrawingLayout computeLayoutGeometry]");
                v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFreehandDrawingLayout.m");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v116, v120, v117, v119, 219, 0, "invalid nil value for '%{public}s'", "childOriginValue");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v121, v122);
              }
            }

            v104 = objc_msgSend_countByEnumeratingWithState_objects_count_(v100, v103, &v140, v161, 16);
          }

          while (v104);
        }

        selfCopy2 = selfCopy;
        v73 = v136;
      }

      v123 = objc_msgSend_i_computeBaseLayoutGeometry(selfCopy2, v82, v83);

      v5 = v37;
      v9 = v137;
    }

    v5 = v123;
  }

  return v5;
}

- (id)additionalDependenciesForChildLayout:(id)layout
{
  layoutCopy = layout;
  v7 = objc_msgSend_p_sizeEnforcingChild(self, v5, v6);
  v10 = v7;
  if (v7 == layoutCopy || !v7)
  {
    v23.receiver = self;
    v23.super_class = TSDFreehandDrawingLayout;
    v21 = [(TSDGroupLayout *)&v23 additionalDependenciesForChildLayout:layoutCopy];
  }

  else
  {
    if (objc_msgSend_isBeingManipulated(layoutCopy, v8, v9) & 1) != 0 || (objc_msgSend_freehandInfo(self, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend_info(layoutCopy, v14, v15), v16 = objc_claimAutoreleasedReturnValue(), isNonGroupedChild = objc_msgSend_isNonGroupedChild_(v13, v17, v16), v16, v13, (isNonGroupedChild))
    {
      v20 = MEMORY[0x277CBEBF8];
      goto LABEL_8;
    }

    v21 = objc_msgSend_arrayByAddingObject_(MEMORY[0x277CBEBF8], v19, v10);
  }

  v20 = v21;
LABEL_8:

  return v20;
}

- (BOOL)shouldSnapWhileResizing
{
  v4 = objc_msgSend_freehandInfo(self, a2, v2);
  v7 = objc_msgSend_childInfos(v4, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);

  if (v10 > 0xC8)
  {
    return 0;
  }

  v12.receiver = self;
  v12.super_class = TSDFreehandDrawingLayout;
  return [(TSDAbstractLayout *)&v12 shouldSnapWhileResizing];
}

- (id)descendentWrappables
{
  if (objc_msgSend_shouldSpacerShapeProvideSpace(self, a2, v2))
  {
    v6 = objc_msgSend_p_sizeEnforcingChild(self, v4, v5);
    v9 = objc_msgSend_freehandInfo(self, v7, v8);
    v12 = objc_msgSend_exteriorTextWrap(v9, v10, v11);
    v15 = objc_msgSend_fitType(v12, v13, v14);

    if (v15 == 1)
    {
      v28.receiver = self;
      v28.super_class = TSDFreehandDrawingLayout;
      descendentWrappables = [(TSDGroupLayout *)&v28 descendentWrappables];
      descendentWrappables2 = objc_msgSend_mutableCopy(descendentWrappables, v19, v20);

      objc_msgSend_removeObject_(descendentWrappables2, v22, v6);
    }

    else
    {
      v23 = objc_msgSend_i_captionAndTitleLayouts(self, v16, v17);
      descendentWrappables2 = v23;
      if (v6)
      {
        v25 = objc_msgSend_arrayByAddingObject_(v23, v24, v6);

        descendentWrappables2 = v25;
      }
    }
  }

  else
  {
    v27.receiver = self;
    v27.super_class = TSDFreehandDrawingLayout;
    descendentWrappables2 = [(TSDGroupLayout *)&v27 descendentWrappables];
  }

  return descendentWrappables2;
}

- (BOOL)descendentWrappablesContainsWrappable:(id)wrappable
{
  wrappableCopy = wrappable;
  if (objc_msgSend_shouldSpacerShapeProvideSpace(self, v5, v6))
  {
    v9 = objc_msgSend_p_sizeEnforcingChild(self, v7, v8);
    v10 = TSUProtocolCast();

    v13 = objc_msgSend_freehandInfo(self, v11, v12, &unk_2885AB610);
    v16 = objc_msgSend_exteriorTextWrap(v13, v14, v15);
    v19 = objc_msgSend_fitType(v16, v17, v18);

    v20 = v10 == wrappableCopy && v19 != 1;
    if (v19 == 1 && v10 != wrappableCopy)
    {
      v23.receiver = self;
      v23.super_class = TSDFreehandDrawingLayout;
      v20 = [(TSDGroupLayout *)&v23 descendentWrappablesContainsWrappable:wrappableCopy];
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = TSDFreehandDrawingLayout;
    v20 = [(TSDGroupLayout *)&v22 descendentWrappablesContainsWrappable:wrappableCopy];
  }

  return v20;
}

- (CGRect)computeBoundsForStandardKnobs
{
  v4 = objc_msgSend_p_sizeEnforcingChild(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_p_sizeEnforcingChild(self, v5, v6);
    v10 = objc_msgSend_pureGeometry(v7, v8, v9);
    objc_msgSend_frame(v10, v11, v12);
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v29.receiver = self;
    v29.super_class = TSDFreehandDrawingLayout;
    [(TSDGroupLayout *)&v29 computeBoundsForStandardKnobs];
    v14 = v21;
    v16 = v22;
    v18 = v23;
    v20 = v24;
  }

  v25 = v14;
  v26 = v16;
  v27 = v18;
  v28 = v20;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (id)layoutGeometryFromInfo
{
  v17.receiver = self;
  v17.super_class = TSDFreehandDrawingLayout;
  layoutGeometryFromInfo = [(TSDGroupLayout *)&v17 layoutGeometryFromInfo];
  v6 = layoutGeometryFromInfo;
  if (self->_scaleForInlineClampingChildLayouts != 1.0)
  {
    objc_msgSend_size(layoutGeometryFromInfo, v4, v5);
    TSUMultiplySizeScalar();
    v8 = v7;
    v10 = v9;
    v13 = [TSDLayoutGeometry alloc];
    if (v6)
    {
      objc_msgSend_transform(v6, v11, v12);
    }

    else
    {
      memset(v16, 0, sizeof(v16));
    }

    v14 = objc_msgSend_initWithSize_transform_(v13, v11, v16, v8, v10);

    v6 = v14;
  }

  return v6;
}

- (id)p_sizeEnforcingChild
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_freehandInfo(self, a2, v2);
  if (objc_msgSend_shouldSpacerShapeProvideSpace(self, v5, v6))
  {
    v9 = objc_msgSend_layoutController(self, v7, v8);
    v12 = objc_msgSend_freehandDrawingSpacerShape(v4, v10, v11);
    v14 = objc_msgSend_layoutsForInfo_(v9, v13, v12);

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = v14;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v27, v31, 16);
    if (v17)
    {
      v20 = v17;
      v21 = *v28;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v15);
          }

          v23 = *(*(&v27 + 1) + 8 * i);
          v24 = objc_msgSend_parent(v23, v18, v19, v27);

          if (v24 == self)
          {
            v25 = v23;
            goto LABEL_13;
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v27, v31, 16);
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v25 = 0;
LABEL_13:
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (double)opacity
{
  if (objc_msgSend_p_isUpdatingOpacity(self, a2, v2))
  {

    MEMORY[0x2821F9670](self, sel_p_dynamicOpacity, v5);
  }

  else
  {
    v6 = objc_msgSend_freehandInfo(self, v4, v5);
    objc_msgSend_opacity(v6, v7, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

- (id)childrenForPencilAnnotations
{
  v3 = objc_msgSend_i_captionAndTitleLayouts(self, a2, v2);
  v5 = objc_msgSend_arrayByAddingObjectsFromArray_(MEMORY[0x277CBEBF8], v4, v3);

  return v5;
}

@end
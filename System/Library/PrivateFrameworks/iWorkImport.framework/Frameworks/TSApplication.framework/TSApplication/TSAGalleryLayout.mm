@interface TSAGalleryLayout
- (BOOL)shouldInvalidateSizeWhenInvalidateSizeOfReliedOnLayout:(id)layout;
- (CGPoint)calculateOffsetForGalleryItem:(id)item withFacesRect:(CGRect)rect;
- (CGRect)alignmentFrameForProvidingGuidesInRoot;
- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size;
- (CGRect)imageContainerRect;
- (CGRect)imageFrameInRootWithDragOffset:(CGPoint)offset;
- (CGRect)imageRect;
- (CGRect)imageRectInImageContainerForItem:(id)item;
- (CGRect)nonAutosizedFrameForTextLayout:(id)layout;
- (CGRect)p_imageRectInImageContainerForItem:(id)item dragOffset:(CGPoint)offset;
- (CGRect)pageControlBoundingRect;
- (CGSize)minimumSize;
- (CGSize)p_maxLayoutSize;
- (TSAGalleryLayout)initWithInfo:(id)info;
- (TSDLayoutGeometry)imageContainerGeometry;
- (TSDLayoutGeometry)imageGeometry;
- (TSDLayoutGeometry)imageGeometryInRoot;
- (TSWPLayout)currentCaptionLayout;
- (UIEdgeInsets)adjustedInsetsForTarget:(id)target;
- (double)p_minScaleForItem:(id)item;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap;
- (double)widthForColumnIndex:(unint64_t)index bodyWidth:(double)width;
- (id)childInfosForChildLayouts;
- (id)children;
- (id)childrenForPencilAnnotations;
- (id)computeInfoGeometryForFittingInFrame:(CGRect)frame;
- (id)computeLayoutGeometry;
- (id)dependentsOfTextLayout:(id)layout;
- (id)interiorClippingPath;
- (id)p_galleryInfo;
- (id)pathForClippingConnectionLines;
- (void)dealloc;
- (void)invalidateExteriorWrap;
- (void)invalidateSize;
- (void)setCurrentItem:(id)item;
- (void)updateChildrenFromInfo;
@end

@implementation TSAGalleryLayout

- (TSAGalleryLayout)initWithInfo:(id)info
{
  v19.receiver = self;
  v19.super_class = TSAGalleryLayout;
  v3 = [(TSAGalleryLayout *)&v19 initWithInfo:info];
  v7 = v3;
  if (v3)
  {
    v8 = objc_msgSend_p_galleryInfo(v3, v4, v5, v6);
    v12 = objc_msgSend_items(v8, v9, v10, v11);
    v16 = objc_msgSend_firstObject(v12, v13, v14, v15);
    currentItem = v7->_currentItem;
    v7->_currentItem = v16;
  }

  return v7;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_captionLayouts;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_setParent_(*(*(&v12 + 1) + 8 * v10++), v6, 0, v7);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v12, v16, 16);
    }

    while (v8);
  }

  v11.receiver = self;
  v11.super_class = TSAGalleryLayout;
  [(TSAGalleryLayout *)&v11 dealloc];
}

- (id)p_galleryInfo
{
  objc_opt_class();
  v6 = objc_msgSend_info(self, v3, v4, v5);
  v7 = TSUCheckedDynamicCast();

  return v7;
}

- (void)setCurrentItem:(id)item
{
  itemCopy = item;
  if (self->_currentItem != itemCopy)
  {
    v62 = itemCopy;
    objc_storeStrong(&self->_currentItem, item);
    objc_msgSend_invalidateSize(self, v6, v7, v8);
    v12 = objc_msgSend_info(self, v9, v10, v11);
    if (objc_msgSend_isAnchoredToText(v12, v13, v14, v15))
    {
    }

    else
    {
      v22 = objc_msgSend_info(self, v16, v17, v18);
      isInlineWithText = objc_msgSend_isInlineWithText(v22, v23, v24, v25);

      if (!isInlineWithText)
      {
LABEL_7:
        objc_opt_class();
        v50 = objc_msgSend_layoutController(self, v47, v48, v49);
        v54 = objc_msgSend_canvas(v50, v51, v52, v53);
        v57 = objc_msgSend_repForLayout_(v54, v55, self, v56);
        v58 = TSUCheckedDynamicCast();

        objc_msgSend_invalidateCurrentItem(v58, v59, v60, v61);
        itemCopy = v62;
        goto LABEL_8;
      }
    }

    v27 = objc_msgSend_layoutController(self, v19, v20, v21);
    v31 = objc_msgSend_canvas(v27, v28, v29, v30);
    isTemporaryForLayout = objc_msgSend_isTemporaryForLayout(v31, v32, v33, v34);

    if ((isTemporaryForLayout & 1) == 0)
    {
      v39 = objc_msgSend_info(self, v36, v37, v38);
      v43 = objc_msgSend_owningAttachment(v39, v40, v41, v42);
      objc_msgSend_infoChanged(v43, v44, v45, v46);
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (TSWPLayout)currentCaptionLayout
{
  if (self->_shouldSuppressCaptions)
  {
    goto LABEL_2;
  }

  v7 = objc_msgSend_p_galleryInfo(self, a2, v2, v3);
  v11 = objc_msgSend_captionMode(v7, v8, v9, v10);

  if (v11 == 1)
  {
    v17 = objc_msgSend_currentItem(self, v12, v13, v14);
    if (v17)
    {
      v4 = objc_msgSend_objectForKey_(self->_captionLayoutsForItems, v15, v17, v16);
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_3;
  }

  if (v11 != 2)
  {
LABEL_2:
    v4 = 0;
  }

  else
  {
    v4 = self->_galleryCaptionLayout;
  }

LABEL_3:

  return v4;
}

- (id)children
{
  v10.receiver = self;
  v10.super_class = TSAGalleryLayout;
  children = [(TSAGalleryLayout *)&v10 children];
  v6 = children;
  captionLayouts = self->_captionLayouts;
  if (captionLayouts)
  {
    v8 = objc_msgSend_arrayByAddingObjectsFromArray_(children, v4, captionLayouts, v5);

    v6 = v8;
  }

  return v6;
}

- (id)childInfosForChildLayouts
{
  v67 = *MEMORY[0x277D85DE8];
  v65.receiver = self;
  v65.super_class = TSAGalleryLayout;
  childInfosForChildLayouts = [(TSAGalleryLayout *)&v65 childInfosForChildLayouts];
  v7 = objc_msgSend_p_galleryInfo(self, v4, v5, v6);
  v11 = objc_msgSend_captionMode(v7, v8, v9, v10);
  if (v11 == 1)
  {
    objc_msgSend_items(v7, v12, v13, v14);
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v64 = 0u;
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v61, v66, 16);
    if (v37)
    {
      v41 = v37;
      v59 = v7;
      v42 = *v62;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v62 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v44 = objc_msgSend_captionStorage(*(*(&v61 + 1) + 8 * i), v38, v39, v40, v59);
          if (objc_msgSend_containsObject_(childInfosForChildLayouts, v45, v44, v46))
          {
            v49 = MEMORY[0x277D81150];
            v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "[TSAGalleryLayout childInfosForChildLayouts]", v48);
            v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryLayout.m", v52);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v54, v50, v53, 272, 0, "Expected the caption storage layout(s) to be manually managed by updateChildrenFromInfo");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57);
          }
        }

        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v61, v66, 16);
      }

      while (v41);
      v7 = v59;
    }

    goto LABEL_16;
  }

  if (v11 == 2)
  {
    v15 = objc_msgSend_items(v7, v12, v13, v14);
    v19 = objc_msgSend_count(v15, v16, v17, v18);

    if (v19)
    {
      obj = objc_msgSend_captionStorage(v7, v20, v21, v22);
      if (objc_msgSend_containsObject_(childInfosForChildLayouts, v23, obj, v24))
      {
        v27 = MEMORY[0x277D81150];
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSAGalleryLayout childInfosForChildLayouts]", v26);
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryLayout.m", v30);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v28, v31, 263, 0, "Expected the caption storage layout(s) to be manually managed by updateChildrenFromInfo");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
      }

LABEL_16:
    }
  }

  return childInfosForChildLayouts;
}

- (void)updateChildrenFromInfo
{
  v166 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_p_galleryInfo(self, a2, v2, v3);
  v9 = objc_msgSend_captionMode(v5, v6, v7, v8);
  v13 = 0x280A40000uLL;
  v147 = v5;
  if (v9 == 1)
  {
    v46 = objc_msgSend_items(v5, v10, v11, v12);
    v47 = objc_alloc(MEMORY[0x277CBEB40]);
    v51 = objc_msgSend_count(v46, v48, v49, v50);
    v45 = objc_msgSend_initWithCapacity_(v47, v52, v51, v53);
    objc_msgSend_nonAutosizedFrameForTextLayout_(self, v54, 0, v55);
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    obj = v46;
    v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v64, &v159, v165, 16);
    if (v65)
    {
      v69 = v65;
      v70 = *v160;
      v148 = v45;
      do
      {
        for (i = 0; i != v69; ++i)
        {
          if (*v160 != v70)
          {
            objc_enumerationMutation(obj);
          }

          v72 = *(*(&v159 + 1) + 8 * i);
          v73 = objc_msgSend_captionStorage(v72, v66, v67, v68);
          v74 = *(v13 + 1972);
          v79 = objc_msgSend_objectForKey_(*(&self->super.super.super.super.isa + v74), v75, v72, v76);
          if (!v79)
          {
            v80 = v69;
            v81 = v70;
            v82 = v13;
            v83 = v73;
            v84 = objc_alloc(objc_opt_class());
            v79 = objc_msgSend_initWithInfo_frame_(v84, v85, v83, v86, v57, v59, v61, v63);
            objc_msgSend_setParent_(v79, v87, self, v88);
            v90 = *(&self->super.super.super.super.isa + v74);
            if (!v90)
            {
              v91 = objc_alloc(MEMORY[0x277CCAB00]);
              v93 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v91, v92, 512, 512, 0);
              v94 = *(&self->super.super.super.super.isa + v74);
              *(&self->super.super.super.super.isa + v74) = v93;

              v90 = *(&self->super.super.super.super.isa + v74);
            }

            objc_msgSend_setObject_forKey_(v90, v89, v79, v72);

            v13 = v82;
            v70 = v81;
            v69 = v80;
            v45 = v148;
          }

          objc_msgSend_addObject_(v45, v77, v79, v78);
        }

        v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v66, &v159, v165, 16);
      }

      while (v69);
    }
  }

  else if (v9 == 2 && (objc_msgSend_items(v5, v10, v11, v12), v14 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend_count(v14, v15, v16, v17), v14, v18))
  {
    v22 = objc_msgSend_captionStorage(v5, v10, v19, v12);
    if (!self->_galleryCaptionLayout)
    {
      objc_msgSend_nonAutosizedFrameForTextLayout_(self, v20, 0, v21);
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v31 = v22;
      v35 = objc_alloc(objc_msgSend_layoutClass(v31, v32, v33, v34));
      v38 = objc_msgSend_initWithInfo_frame_(v35, v36, v31, v37, v24, v26, v28, v30);

      galleryCaptionLayout = self->_galleryCaptionLayout;
      self->_galleryCaptionLayout = v38;

      objc_msgSend_setParent_(self->_galleryCaptionLayout, v40, self, v41);
    }

    v42 = objc_alloc(MEMORY[0x277CBEB70]);
    v45 = objc_msgSend_initWithObject_(v42, v43, self->_galleryCaptionLayout, v44);
  }

  else
  {
    v45 = 0;
  }

  v95 = self->_galleryCaptionLayout;
  if (v95 && (objc_msgSend_containsObject_(v45, v10, v95, v12) & 1) == 0)
  {
    objc_msgSend_setParent_(self->_galleryCaptionLayout, v96, 0, v97);
    v98 = self->_galleryCaptionLayout;
    self->_galleryCaptionLayout = 0;
  }

  v99 = objc_alloc(MEMORY[0x277CBEB18]);
  v100 = *(v13 + 1972);
  v104 = objc_msgSend_count(*(&self->super.super.super.super.isa + v100), v101, v102, v103);
  v107 = objc_msgSend_initWithCapacity_(v99, v105, v104, v106);
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v108 = *(&self->super.super.super.super.isa + v100);
  v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v109, &v155, v164, 16);
  if (v110)
  {
    v113 = v110;
    v114 = *v156;
    do
    {
      for (j = 0; j != v113; ++j)
      {
        if (*v156 != v114)
        {
          objc_enumerationMutation(v108);
        }

        v116 = *(*(&v155 + 1) + 8 * j);
        v117 = objc_msgSend_objectForKey_(*(&self->super.super.super.super.isa + v100), v111, v116, v112);
        if ((objc_msgSend_containsObject_(v45, v118, v117, v119) & 1) == 0)
        {
          objc_msgSend_setParent_(v117, v120, 0, v121);
          objc_msgSend_addObject_(v107, v122, v116, v123);
        }
      }

      v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v111, &v155, v164, 16);
    }

    while (v113);
  }

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v124 = v107;
  v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v125, &v151, v163, 16);
  if (v126)
  {
    v129 = v126;
    v130 = *v152;
    do
    {
      for (k = 0; k != v129; ++k)
      {
        if (*v152 != v130)
        {
          objc_enumerationMutation(v124);
        }

        objc_msgSend_removeObjectForKey_(*(&self->super.super.super.super.isa + v100), v127, *(*(&v151 + 1) + 8 * k), v128);
      }

      v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v127, &v151, v163, 16);
    }

    while (v129);
  }

  v135 = objc_msgSend_array(v45, v132, v133, v134);
  if ((objc_msgSend_isEqualToArray_(self->_captionLayouts, v136, v135, v137) & 1) == 0)
  {
    objc_msgSend_invalidateSize(self, v138, v139, v140);
    objc_storeStrong(&self->_captionLayouts, v135);
    v146 = objc_msgSend_currentCaptionLayout(self, v141, v142, v143);
    if (v146)
    {
      objc_msgSend_invalidateForAutosizingTextLayout_(self, v144, v146, v145);
    }
  }

  objc_msgSend_makeObjectsPerformSelector_(self->_captionLayouts, v138, sel_updateChildrenFromInfo, v140);
  v150.receiver = self;
  v150.super_class = TSAGalleryLayout;
  [(TSAGalleryLayout *)&v150 updateChildrenFromInfo];
}

- (void)invalidateSize
{
  if (!self->_isInvalidatingSize)
  {
    self->_isInvalidatingSize = 1;
    v8.receiver = self;
    v8.super_class = TSAGalleryLayout;
    [(TSAGalleryLayout *)&v8 invalidateSize];
    objc_msgSend_invalidateExteriorWrap(self, v3, v4, v5);
    objc_msgSend_makeObjectsPerformSelector_(self->_captionLayouts, v6, sel_invalidateFrame, v7);
    self->_isInvalidatingSize = 0;
  }
}

- (BOOL)shouldInvalidateSizeWhenInvalidateSizeOfReliedOnLayout:(id)layout
{
  layoutCopy = layout;
  captionLayouts = self->_captionLayouts;
  objc_opt_class();
  v6 = TSUDynamicCast();
  v9 = objc_msgSend_indexOfObjectIdenticalTo_(captionLayouts, v7, v6, v8) != 0x7FFFFFFFFFFFFFFFLL || self->_galleryCaptionLayout == layoutCopy;

  return v9;
}

- (void)invalidateExteriorWrap
{
  v4.receiver = self;
  v4.super_class = TSAGalleryLayout;
  [(TSAGalleryLayout *)&v4 invalidateExteriorWrap];
  cachedPathForClippingConnectionLines = self->_cachedPathForClippingConnectionLines;
  self->_cachedPathForClippingConnectionLines = 0;
}

- (id)computeLayoutGeometry
{
  selfCopy = self;
  v183 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_layoutGeometryFromInfo(self, a2, v2, v3);
  objc_msgSend_size(v5, v6, v7, v8);
  TSURectWithSize();
  selfCopy->_imageContainerRect.origin.x = v9;
  selfCopy->_imageContainerRect.origin.y = v10;
  selfCopy->_imageContainerRect.size.width = v11;
  selfCopy->_imageContainerRect.size.height = v12;
  v16 = objc_msgSend_mutableCopy(v5, v13, v14, v15);
  objc_msgSend_size(v16, v17, v18, v19);
  v21 = v20;
  p_imageContainerRect = &selfCopy->_imageContainerRect;
  MaxY = CGRectGetMaxY(selfCopy->_imageContainerRect);
  v29 = 0.0;
  v30 = 6.0;
  if (!objc_msgSend_count(selfCopy->_captionLayouts, v23, v24, v25))
  {
    v31 = 0.0;
    goto LABEL_14;
  }

  v31 = 0.0;
  if (selfCopy->_shouldSuppressCaptions)
  {
LABEL_14:
    objc_msgSend_p_maxLayoutSize(selfCopy, v26, v27, v28);
    goto LABEL_15;
  }

  v170 = v16;
  v171 = selfCopy;
  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v32 = selfCopy->_captionLayouts;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v177, v182, 16);
  if (v34)
  {
    v38 = v34;
    v39 = *v178;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v178 != v39)
        {
          objc_enumerationMutation(v32);
        }

        v41 = *(*(&v177 + 1) + 8 * i);
        if (objc_msgSend_invalidGeometry(v41, v35, v36, v37))
        {
          v45 = MEMORY[0x277D81150];
          v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSAGalleryLayout computeLayoutGeometry]", v44);
          v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryLayout.m", v48);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53);
        }

        v54 = objc_msgSend_geometry(v41, v42, v43, v44);
        objc_msgSend_size(v54, v55, v56, v57);
        v59 = v58;
        v61 = v60;

        v31 = fmax(v31, v59);
        v30 = fmax(v30, v61);
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v177, v182, 16);
    }

    while (v38);
  }

  MaxY = MaxY + 6.0;

  selfCopy = v171;
  v16 = v170;
  objc_msgSend_p_maxLayoutSize(v171, v62, v63, v64);
LABEL_15:
  if (v68 < 1.79769313e308)
  {
    v69 = objc_msgSend_parent(selfCopy, v65, v66, v67);
    v70 = TSUProtocolCast();

    v74 = objc_msgSend_currentCaptionLayout(selfCopy, v71, v72, v73, &unk_288524C48);
    v77 = objc_msgSend_autosizeFlagsForTextLayout_(v70, v75, v74, v76);

    v29 = 0.0;
    if (v77 == 3)
    {
      v81 = objc_msgSend_currentCaptionLayout(selfCopy, v78, v79, v80);
      objc_msgSend_nonAutosizedFrameForTextLayout_(selfCopy, v82, v81, v83);
      v29 = v84;
    }
  }

  v85 = objc_alloc(MEMORY[0x277D80300]);
  v89 = objc_msgSend_initWithFrame_(v85, v86, v87, v88, v29, MaxY, v31, v30);
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v90 = selfCopy->_captionLayouts;
  v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v91, &v173, v181, 16);
  if (v92)
  {
    v95 = v92;
    v96 = *v174;
    do
    {
      for (j = 0; j != v95; ++j)
      {
        if (*v174 != v96)
        {
          objc_enumerationMutation(v90);
        }

        objc_msgSend_setGeometry_(*(*(&v173 + 1) + 8 * j), v93, v89, v94);
      }

      v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v93, &v173, v181, 16);
    }

    while (v95);
  }

  v185.origin.x = v29;
  v185.origin.y = MaxY;
  v185.size.width = v31;
  v185.size.height = v30;
  v186.origin.y = CGRectGetMaxY(v185) + -6.0;
  v186.size.width = v21 + -10.0;
  selfCopy->_pageControlBoundingRect.origin.x = 5.0;
  selfCopy->_pageControlBoundingRect.origin.y = v186.origin.y;
  selfCopy->_pageControlBoundingRect.size.width = v21 + -10.0;
  selfCopy->_pageControlBoundingRect.size.height = 26.0;
  v186.origin.x = 5.0;
  v186.size.height = 26.0;
  v98 = CGRectGetMaxY(v186);
  objc_msgSend_setSize_(v16, v99, v100, v101, v21, v98);
  objc_msgSend_p_maxLayoutSize(selfCopy, v102, v103, v104);
  v110 = v109;
  if (v108 < 1.79769313e308 || v109 < 1.79769313e308)
  {
    if (v108 < 1.79769313e308)
    {
      v111 = objc_opt_class();
      objc_msgSend_size(v16, v112, v113, v114);
      objc_msgSend_p_constrainedImageContainerWidthForWidth_maxLayoutWidth_(v111, v115, v116, v117);
      v119 = v118;
      p_imageContainerRect->size.width = v118;
      selfCopy->_pageControlBoundingRect.size.width = v118 + -10.0;
      objc_msgSend_size(v16, v120, v121, v122);
      objc_msgSend_setSize_(v16, v123, v124, v125, v119);
    }

    if (v110 < 1.79769313e308)
    {
      objc_msgSend_size(v16, v105, v106, v107);
      v127 = v126 - v110;
      if (v127 > 0.0)
      {
        v128 = CGRectGetHeight(*p_imageContainerRect) - v127;
        v129 = objc_opt_class();
        objc_msgSend_p_constrainedImageContainerHeightForHeight_(v129, v130, v131, v132, v128);
        v134 = v133;
        v135 = CGRectGetHeight(*p_imageContainerRect) - v133;
        p_imageContainerRect->size.height = v134;
        v139 = objc_msgSend_currentCaptionLayout(selfCopy, v136, v137, v138);
        v143 = objc_msgSend_geometry(v139, v140, v141, v142);
        v147 = objc_msgSend_geometryByTranslatingBy_(v143, v144, v145, v146, 0.0, -v135);
        objc_msgSend_setGeometry_(v139, v148, v147, v149);

        selfCopy->_pageControlBoundingRect.origin.y = selfCopy->_pageControlBoundingRect.origin.y - v135;
        objc_msgSend_size(v16, v150, v151, v152);
        v154 = v153;
        objc_msgSend_size(v16, v155, v156, v157);
        objc_msgSend_setSize_(v16, v159, v160, v161, v154, v158 - v135);
      }
    }
  }

  v162 = objc_msgSend_currentItem(selfCopy, v105, v106, v107);
  objc_msgSend_p_imageRectInImageContainerForItem_dragOffset_(selfCopy, v163, v162, v164, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
  selfCopy->_imageRectInImageContainer.origin.x = v165;
  selfCopy->_imageRectInImageContainer.origin.y = v166;
  selfCopy->_imageRectInImageContainer.size.width = v167;
  selfCopy->_imageRectInImageContainer.size.height = v168;

  return v16;
}

- (CGRect)p_imageRectInImageContainerForItem:(id)item dragOffset:(CGPoint)offset
{
  itemCopy = item;
  TSURectWithSize();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  objc_msgSend_naturalSize(itemCopy, v14, v15, v16);
  if (v18 > 0.0 && v17 > 0.0)
  {
    TSUCenterOfRect();
    objc_msgSend_offset(itemCopy, v19, v20, v21);
    TSUAddPoints();
    TSUAddPoints();
    objc_msgSend_scale(itemCopy, v22, v23, v24);
    v26 = v25;
    objc_msgSend_p_minScaleForItem_(self, v27, itemCopy, v28);
    if (fmax(v26, v31) <= 0.0)
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSAGalleryLayout p_imageRectInImageContainerForItem:dragOffset:]", v30);
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryLayout.m", v35);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v37, v33, v36, 634, 0, "The item scale should be positive");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40);
    }

    TSUMultiplySizeScalar();
    TSURectWithCenterAndSize();
    TSUTranslatedRectMaximizingOverlapWithRect();
    v7 = v41;
    v9 = v42;
    v11 = v43;
    v13 = v44;
  }

  v45 = v7;
  v46 = v9;
  v47 = v11;
  v48 = v13;
  result.size.height = v48;
  result.size.width = v47;
  result.origin.y = v46;
  result.origin.x = v45;
  return result;
}

- (double)p_minScaleForItem:(id)item
{
  objc_msgSend_naturalSize(item, a2, item, v3);
  width = self->_imageContainerRect.size.width;
  height = self->_imageContainerRect.size.height;
  TSUMultiplySizeScalar();
  return fmin(v7 / width, v8 / height);
}

- (CGSize)minimumSize
{
  objc_msgSend_p_maxLayoutSize(self, a2, v2, v3);
  v5 = v4;
  v6 = objc_opt_class();
  objc_msgSend_p_constrainedImageContainerWidthForWidth_maxLayoutWidth_(v6, v7, v8, v9, 220.0, v5);
  v11 = v10;
  objc_msgSend_p_constrainedImageContainerHeightForHeight_(v6, v12, v13, v14, 100.0);
  v16 = v15;
  v17 = v11;
  result.height = v16;
  result.width = v17;
  return result;
}

- (CGSize)p_maxLayoutSize
{
  objc_opt_class();
  v6 = objc_msgSend_parent(self, v3, v4, v5);
  v7 = TSUDynamicCast();

  if (v7)
  {
    objc_msgSend_maximumFrameSizeForChild_(v7, v8, self, v9);
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v11 = 0x7FEFFFFFFFFFFFFFLL;
    v13 = 0x7FEFFFFFFFFFFFFFLL;
  }

  v14 = *&v11;
  v15 = *&v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (TSDLayoutGeometry)imageContainerGeometry
{
  objc_msgSend_imageContainerRect(self, a2, v2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  memset(&v29, 0, sizeof(v29));
  v16 = objc_msgSend_geometry(self, v13, v14, v15);
  v20 = v16;
  if (v16)
  {
    objc_msgSend_transform(v16, v17, v18, v19);
  }

  else
  {
    memset(&v29, 0, sizeof(v29));
  }

  CGAffineTransformMakeTranslation(&t1, v6, v8);
  v26 = v29;
  CGAffineTransformConcat(&v28, &t1, &v26);
  v29 = v28;
  v21 = objc_alloc(MEMORY[0x277D80300]);
  v28 = v29;
  v24 = objc_msgSend_initWithSize_transform_(v21, v22, &v28, v23, v10, v12);

  return v24;
}

- (CGRect)imageRect
{
  selfCopy = self;
  objc_msgSend_imageContainerRect(self, a2, v2, v3);
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  selfCopy = (selfCopy + 296);
  MinX = CGRectGetMinX(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MinY = CGRectGetMinY(v17);
  isa = selfCopy->super.super.super.super.isa;
  parent = selfCopy->super.super.super._parent;
  children = selfCopy->super.super.super._children;
  geometry = selfCopy->super.super.super._geometry;

  return CGRectOffset(*&isa, MinX, MinY);
}

- (TSDLayoutGeometry)imageGeometry
{
  objc_msgSend_imageRect(self, a2, v2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_alloc(MEMORY[0x277D80360]);
  v17 = objc_msgSend_initWithFrame_(v13, v14, v15, v16, v6, v8, v10, v12);
  v21 = objc_msgSend_geometry(self, v18, v19, v20);
  v25 = v21;
  if (v21)
  {
    objc_msgSend_transform(v21, v22, v23, v24);
  }

  else
  {
    memset(v27, 0, sizeof(v27));
  }

  objc_msgSend_transformBy_(v17, v22, v27, v24);

  return v17;
}

- (TSDLayoutGeometry)imageGeometryInRoot
{
  v5 = objc_msgSend_imageGeometry(self, a2, v2, v3);
  v9 = objc_msgSend_mutableCopy(v5, v6, v7, v8);

  v13 = objc_msgSend_parent(self, v10, v11, v12);
  if (v13)
  {
    v17 = v13;
    do
    {
      v18 = objc_msgSend_geometry(v17, v14, v15, v16, v28, v29, v30);
      v22 = v18;
      if (v18)
      {
        objc_msgSend_transform(v18, v19, v20, v21);
      }

      else
      {
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
      }

      objc_msgSend_transformBy_(v9, v19, &v28, v21);

      v26 = objc_msgSend_parent(v17, v23, v24, v25);

      v17 = v26;
    }

    while (v26);
  }

  return v9;
}

- (CGRect)imageRectInImageContainerForItem:(id)item
{
  objc_msgSend_p_imageRectInImageContainerForItem_dragOffset_(self, a2, item, v3, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)imageFrameInRootWithDragOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v8 = objc_msgSend_currentItem(self, a2, v3, v4);
  objc_msgSend_p_imageRectInImageContainerForItem_dragOffset_(self, v9, v8, v10, x, y);
  rect.origin.x = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  objc_msgSend_imageContainerRect(self, v18, v19, v20);
  v21 = v57.origin.x;
  v22 = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  MinX = CGRectGetMinX(v57);
  v58.origin.x = v21;
  v58.origin.y = v22;
  v58.size.width = width;
  v58.size.height = height;
  MinY = CGRectGetMinY(v58);
  v59.origin.x = rect.origin.x;
  v59.origin.y = v13;
  v59.size.width = v15;
  v59.size.height = v17;
  v60 = CGRectOffset(v59, MinX, MinY);
  v27 = v60.origin.x;
  v28 = v60.origin.y;
  v29 = v60.size.width;
  v30 = v60.size.height;
  v31 = objc_alloc(MEMORY[0x277D80360]);
  v35 = objc_msgSend_initWithFrame_(v31, v32, v33, v34, v27, v28, v29, v30);
  objc_msgSend_transformInRoot(self, v36, v37, v38);
  objc_msgSend_transformBy_(v35, v39, &rect.origin.y, v40);
  objc_msgSend_frame(v35, v41, v42, v43);
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  v52 = v45;
  v53 = v47;
  v54 = v49;
  v55 = v51;
  result.size.height = v55;
  result.size.width = v54;
  result.origin.y = v53;
  result.origin.x = v52;
  return result;
}

- (id)computeInfoGeometryForFittingInFrame:(CGRect)frame
{
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = objc_msgSend_currentCaptionLayout(self, a2, v3, v4);
  v12 = v8;
  if (v8)
  {
    v13 = objc_msgSend_geometry(v8, v9, v10, v11);
    objc_msgSend_frame(v13, v14, v15, v16);
  }

  else
  {
    v17 = objc_msgSend_p_galleryInfo(self, v9, v10, v11);
    v13 = objc_msgSend_captionStorage(v17, v18, v19, v20);

    v24 = objc_alloc(objc_msgSend_layoutClass(v13, v21, v22, v23));
    objc_msgSend_nonAutosizedFrameForTextLayout_(self, v25, 0, v26);
    v29 = objc_msgSend_initWithInfo_frame_(v24, v27, v13, v28);
    objc_msgSend_setParent_(v29, v30, self, v31);
    v35 = objc_msgSend_layoutController(v29, v32, v33, v34);

    if (!v35)
    {
      v39 = MEMORY[0x277D81150];
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSAGalleryLayout computeInfoGeometryForFittingInFrame:]", v38);
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryLayout.m", v42);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v44, v40, v43, 764, 0, "invalid nil value for '%{public}s'", "temporaryCaptionLayout.layoutController");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47);
    }

    objc_msgSend_invalidateSize(self, v36, v37, v38);
    v51 = objc_msgSend_layoutController(v29, v48, v49, v50);
    objc_msgSend_validateLayoutWithDependencies_(v51, v52, v29, v53);

    v57 = objc_msgSend_geometry(v29, v54, v55, v56);
    objc_msgSend_frame(v57, v58, v59, v60);

    objc_msgSend_setParent_(v29, v61, 0, v62);
  }

  objc_msgSend_minimumSize(self, v63, v64, v65);
  TSUSizeMax();
  v67 = v66;
  v69 = v68;
  v70 = objc_alloc(MEMORY[0x277D802E8]);
  v74 = objc_msgSend_initWithPosition_size_(v70, v71, v72, v73, x, y, v67, v69);

  return v74;
}

- (CGPoint)calculateOffsetForGalleryItem:(id)item withFacesRect:(CGRect)rect
{
  TSUCenterOfRect();
  objc_msgSend_imageRectInImageContainerForItem_(self, v6, item, v7);
  TSURectWithSize();
  TSUCenterOfRect();

  TSUSubtractPoints();
  result.y = v9;
  result.x = v8;
  return result;
}

- (id)pathForClippingConnectionLines
{
  cachedPathForClippingConnectionLines = self->_cachedPathForClippingConnectionLines;
  if (!cachedPathForClippingConnectionLines)
  {
    objc_msgSend_imageContainerRect(self, a2, v2, v3);
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    objc_msgSend_pageControlBoundingRect(self, v14, v15, v16);
    rect = v17;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v37.origin.x = v7;
    v37.origin.y = v9;
    v37.size.width = v11;
    v37.size.height = v13;
    rect_16 = CGRectGetMinX(v37);
    v38.origin.x = v7;
    v38.origin.y = v9;
    v38.size.width = v11;
    v38.size.height = v13;
    rect_8 = CGRectGetMinY(v38);
    v39.origin.x = v7;
    v39.origin.y = v9;
    v39.size.width = v11;
    v39.size.height = v13;
    Width = CGRectGetWidth(v39);
    v40.origin.x = rect;
    v40.origin.y = v19;
    v40.size.width = v21;
    v40.size.height = v23;
    MinY = CGRectGetMinY(v40);
    v41.origin.x = v7;
    v41.origin.y = v9;
    v41.size.width = v11;
    v41.size.height = v13;
    v26 = CGRectGetMinY(v41);
    v30 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v27, v28, v29, rect_16, rect_8, Width, MinY - v26);
    v31 = self->_cachedPathForClippingConnectionLines;
    self->_cachedPathForClippingConnectionLines = v30;

    cachedPathForClippingConnectionLines = self->_cachedPathForClippingConnectionLines;
  }

  return cachedPathForClippingConnectionLines;
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)layout
{
  v5 = objc_msgSend_layoutGeometryFromInfo(self, a2, layout, v3);
  objc_msgSend_size(v5, v6, v7, v8);
  v10 = v9;
  objc_msgSend_p_maxLayoutSize(self, v11, v12, v13);
  v18 = v17;
  if (v17 >= 1.79769313e308)
  {
    v39 = 0.0;
  }

  else
  {
    v19 = objc_opt_class();
    objc_msgSend_size(v5, v20, v21, v22);
    objc_msgSend_p_constrainedImageContainerWidthForWidth_maxLayoutWidth_(v19, v23, v24, v25);
    v10 = v26;
    v30 = objc_msgSend_parent(self, v27, v28, v29);
    v31 = TSUProtocolCast();

    v35 = objc_msgSend_currentCaptionLayout(self, v32, v33, v34, &unk_288524C48);
    v38 = objc_msgSend_autosizeFlagsForTextLayout_(v31, v36, v35, v37);

    if (v38 == 3)
    {
      v39 = (v10 - v18) * 0.5;
    }

    else
    {
      v39 = 0.0;
    }

    if (v38 == 3)
    {
      v10 = v18;
    }
  }

  objc_msgSend_size(v5, v14, v15, v16);
  v41 = v40 + 6.0;

  v42 = 6.0;
  v43 = v39;
  v44 = v41;
  v45 = v10;
  result.size.height = v42;
  result.size.width = v45;
  result.origin.y = v44;
  result.origin.x = v43;
  return result;
}

- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size
{
  height = size.height;
  objc_msgSend_nonAutosizedFrameForTextLayout_(self, a2, layout, v4, size.width);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  v9 = fmax(CGRectGetHeight(v13), height);
  v10 = x;
  v11 = y;
  v12 = width;
  result.size.height = v9;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)dependentsOfTextLayout:(id)layout
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = self;
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v5, 1);

  return v3;
}

- (id)interiorClippingPath
{
  v4 = MEMORY[0x277D81160];
  v5 = objc_msgSend_currentCaptionLayout(self, a2, v2, v3);
  v9 = objc_msgSend_geometry(v5, v6, v7, v8);
  objc_msgSend_size(v9, v10, v11, v12);
  TSURectWithSize();
  v16 = objc_msgSend_bezierPathWithRect_(v4, v13, v14, v15);

  return v16;
}

- (id)childrenForPencilAnnotations
{
  v12.receiver = self;
  v12.super_class = TSAGalleryLayout;
  children = [(TSAGalleryLayout *)&v12 children];
  v9 = objc_msgSend_currentCaptionLayout(self, v4, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_arrayByAddingObject_(children, v7, v9, v8);

    children = v10;
  }

  return children;
}

- (double)widthForColumnIndex:(unint64_t)index bodyWidth:(double)width
{
  v5 = objc_msgSend_geometry(self, a2, index, v4, width);
  objc_msgSend_size(v5, v6, v7, v8);
  v10 = v9;

  return v10 + -6.0 + -6.0;
}

- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap
{
  if (outWidth)
  {
    *outWidth = width + -6.0 + -6.0;
  }

  if (gap)
  {
    *gap = 0.0;
  }

  return 6.0;
}

- (UIEdgeInsets)adjustedInsetsForTarget:(id)target
{
  v3 = 6.0;
  v4 = 6.0;
  v5 = 6.0;
  v6 = 6.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (CGRect)alignmentFrameForProvidingGuidesInRoot
{
  v4 = objc_msgSend_imageContainerGeometry(self, a2, v2, v3);
  objc_msgSend_frame(v4, v5, v6, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)imageContainerRect
{
  x = self->_imageContainerRect.origin.x;
  y = self->_imageContainerRect.origin.y;
  width = self->_imageContainerRect.size.width;
  height = self->_imageContainerRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)pageControlBoundingRect
{
  x = self->_pageControlBoundingRect.origin.x;
  y = self->_pageControlBoundingRect.origin.y;
  width = self->_pageControlBoundingRect.size.width;
  height = self->_pageControlBoundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
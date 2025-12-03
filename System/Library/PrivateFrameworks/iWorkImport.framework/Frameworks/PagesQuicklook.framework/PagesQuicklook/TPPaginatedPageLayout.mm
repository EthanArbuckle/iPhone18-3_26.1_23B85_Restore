@interface TPPaginatedPageLayout
- (BOOL)allowIntersectionOfChildLayout:(id)layout;
- (BOOL)allowsFootnotes;
- (BOOL)canHavePreviousPageFootnotes;
- (BOOL)hasFooters;
- (BOOL)hasHeaders;
- (BOOL)isReadyForBodyLayout;
- (BOOL)marginsAreMirrored;
- (BOOL)p_isHeaderFooterLayout:(id)layout;
- (BOOL)shouldHeaderFooterBeVisible:(int64_t)visible;
- (BOOL)textIsVertical;
- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size;
- (CGRect)bodyRect;
- (CGRect)footnoteContainerFrameWithSize:(CGSize)size;
- (CGRect)nonAutosizedFrameForTextLayout:(id)layout;
- (CGSize)maximumFrameSizeForChild:(id)child;
- (Class)backgroundFillOwningInfoClass;
- (Class)repClassForTextLayout:(id)layout;
- (NSArray)floatingDrawableLayouts;
- (NSFastEnumeration)childTextLayoutsForExteriorWrap;
- (TPBodyLayout)bodyLayout;
- (TPMasterDrawableProvider)masterDrawableProvider;
- (UIEdgeInsets)adjustedInsetsForTarget:(id)target;
- (double)blockHeightAvailableForFootnotes;
- (double)maxAutoGrowBlockHeightForTextLayout:(id)layout;
- (double)maxAutoGrowLineWidthForTextLayout:(id)layout;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap;
- (id)additionalDependenciesForChildLayout:(id)layout;
- (id)computeLayoutGeometry;
- (id)dependentLayouts;
- (id)dependentsOfTextLayout:(id)layout;
- (id)existingAttachmentLayoutForInfo:(id)info;
- (id)headerFooterProvider;
- (id)layoutForChildInfo:(id)info;
- (id)layoutsCausingWrapOnTextLayoutTarget:(id)target ignoreIntersection:(BOOL)intersection;
- (id)layoutsForChildInfo:(id)info;
- (id)layoutsForProvidingGuidesForChildLayouts;
- (id)p_childLayoutInParentLayout:(id)layout forChildInfo:(id)info;
- (id)p_existingChildLayoutForInfo:(id)info;
- (id)p_generateChildTextLayoutsForExteriorWrap;
- (id)p_insertBodyLayout;
- (id)p_insertChildLayoutForInfo:(id)info;
- (id)p_insertFootnoteContainerLayout;
- (id)p_insertValidatedChildLayoutForInfo:(id)info;
- (id)p_insertValidatedFloatingLayouts;
- (id)p_insertValidatedMasterLayouts;
- (id)p_orderedChildInfos;
- (id)primaryLayoutForInfo:(id)info;
- (id)sectionTemplateDrawableProvider;
- (int)naturalAlignmentForTextLayout:(id)layout;
- (pair<double,)p_sideMargins;
- (unint64_t)autosizeFlagsForTextLayout:(id)layout;
- (unint64_t)pageIndex;
- (void)addAttachmentLayout:(id)layout;
- (void)beginResizeWrapInvalidationCluster;
- (void)dealloc;
- (void)endResizeWrapInvalidationCluster;
- (void)evacuateOldChildLayoutCache;
- (void)inflateFootnotesInFootnoteContainer:(id)container;
- (void)insertChild:(id)child atIndex:(unint64_t)index;
- (void)invalidateBodyAndMarginLayouts;
- (void)invalidateFootnoteContainers;
- (void)invalidateFootnoteSeparatorLine;
- (void)invalidateHeaderFooterLayouts;
- (void)invalidateHeaderFooterLayoutsCache;
- (void)invalidateLayoutsForPageCountChange;
- (void)invalidatePosition;
- (void)invalidateSize;
- (void)p_addLayoutIfAttached:(id)attached;
- (void)p_addLayoutsForInfos:(id)infos toArray:(id)array;
- (void)p_clearChildTextLayoutCache;
- (void)p_populateOldChildLayoutsWithLayouts:(id)layouts;
- (void)p_removeInlineLayoutsFromPageLayout;
- (void)p_removeNoLongerInlineLayoutsFromBodyLayout;
- (void)p_sortChildLayouts;
- (void)p_updateFromLayoutInfoProvider;
- (void)p_validateTextLayoutsForExteriorWrapAffectedByAnchoredAttachments;
- (void)parentDidChange;
- (void)parentWillChangeTo:(id)to;
- (void)processWidowAndInflation;
- (void)rebuildChildLayoutsOnNextValidationForcingTextLayoutOnTopLevelObjects:(BOOL)objects;
- (void)replaceChild:(id)child with:(id)with;
- (void)setChildren:(id)children;
- (void)setNeedsInflation;
- (void)validate;
- (void)wrappableChildInvalidated:(id)invalidated;
@end

@implementation TPPaginatedPageLayout

- (void)dealloc
{
  if (self->_oldChildLayouts)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPaginatedPageLayout dealloc]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 133, 0, "_oldChildLayouts should have been released at the end of -validate or after laying out the body");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  objc_msgSend_setParent_(self->_footnoteContainerLayout, a2, v2, v3, v4, v5, 0);
  v25.receiver = self;
  v25.super_class = TPPaginatedPageLayout;
  [(TPPaginatedPageLayout *)&v25 dealloc];
}

- (BOOL)shouldHeaderFooterBeVisible:(int64_t)visible
{
  v6.receiver = self;
  v6.super_class = TPPaginatedPageLayout;
  return [(TSWPPageLayout *)&v6 shouldHeaderFooterBeVisible:visible]&& self->_shouldHeaderFooterBeVisible;
}

- (Class)backgroundFillOwningInfoClass
{
  v7 = objc_msgSend_pageIndex(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_info(self, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_documentRoot(v13, v14, v15, v16, v17, v18);
  objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v20, v21, v22, v23, v24, v7, v19);
  v25 = objc_opt_class();

  return v25;
}

- (id)headerFooterProvider
{
  if (!self->_headerFooterProvider)
  {
    v7 = objc_msgSend_pageIndex(self, a2, v2, v3, v4, v5);
    v13 = objc_msgSend_info(self, v8, v9, v10, v11, v12);
    v19 = objc_msgSend_documentRoot(v13, v14, v15, v16, v17, v18);
    isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v20, v21, v22, v23, v24, v7, v19);

    if ((isPageTemplatePageIndex_documentRoot & 1) == 0)
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, v30, "[TPPaginatedPageLayout headerFooterProvider]");
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v39, v40, v41, v42, v43, v32, v38, 166, 0, "Page must be laid out before fetching header/footer provider OR the page index is for a page template which lacks header/footer providers.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47, v48);
    }
  }

  headerFooterProvider = self->_headerFooterProvider;

  return headerFooterProvider;
}

- (id)sectionTemplateDrawableProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sectionTemplateDrawableProvider);

  if (!WeakRetained)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, v8, "[TPPaginatedPageLayout sectionTemplateDrawableProvider]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v17, v18, v19, v20, v21, v10, v16, 175, 0, "Page must be laid out before fetching master drawable provider");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25, v26);
  }

  v27 = objc_loadWeakRetained(&self->_sectionTemplateDrawableProvider);

  return v27;
}

- (TPBodyLayout)bodyLayout
{
  v7 = objc_msgSend_layoutController(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_info(self, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_bodyInfo(v13, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_layoutForInfo_childOfLayout_(v7, v20, v21, v22, v23, v24, v19, self);

  return v25;
}

- (CGRect)bodyRect
{
  v7 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_documentRoot(v7, v8, v9, v10, v11, v12);

  objc_msgSend_pageSize(v13, v14, v15, v16, v17, v18);
  v20 = v19.n128_f64[0];
  v22 = v21.n128_f64[0];
  objc_msgSend_topMargin(v13, v23, v19, v21, v24, v25);
  v27 = v26.n128_f64[0];
  objc_msgSend_bottomMargin(v13, v28, v26, v29, v30, v31);
  v33 = v32.n128_f64[0];
  if (objc_msgSend_shouldHeaderFooterBeVisible_(self, v34, v32, v35, v36, v37, 0))
  {
    objc_msgSend_headerMargin(v13, v38, v39, v40, v41, v42);
    v44 = v43.n128_f64[0];
    objc_msgSend_headerHeight(self, v45, v43, v46, v47, v48);
    v39.n128_f64[0] = v44 + v39.n128_f64[0];
    if (v27 < v39.n128_f64[0])
    {
      v27 = v39.n128_f64[0];
    }
  }

  v54 = v22 - v33;
  if (objc_msgSend_shouldHeaderFooterBeVisible_(self, v38, v39, v40, v41, v42, 1))
  {
    objc_msgSend_footerMargin(v13, v49, v50, v51, v52, v53);
    v56 = v55.n128_f64[0];
    objc_msgSend_footerHeight(self, v57, v55, v58, v59, v60);
    v51.n128_f64[0] = v22 - v56;
    v50.n128_f64[0] = v22 - v56 - v50.n128_f64[0];
    if (v50.n128_f64[0] < v54)
    {
      v54 = v50.n128_f64[0];
    }
  }

  objc_msgSend_p_sideMargins(self, v49, v50, v51, v52, v53);
  v62 = v61;
  v64 = v20 - v63 - v61;

  v65 = v62;
  v66 = v27;
  v67 = v64;
  v68 = v54 - v27;
  result.size.height = v68;
  result.size.width = v67;
  result.origin.y = v66;
  result.origin.x = v65;
  return result;
}

- (BOOL)allowsFootnotes
{
  if ((self->_contentFlags & 0x10) != 0)
  {
    v8 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
    v14 = objc_msgSend_documentRoot(v8, v9, v10, v11, v12, v13);
    if (objc_msgSend_laysOutBodyVertically(v14, v15, v16, v17, v18, v19))
    {
      v25 = objc_msgSend_info(self, v20, v21, v22, v23, v24);
      v31 = objc_msgSend_documentRoot(v25, v26, v27, v28, v29, v30);
      v37 = objc_msgSend_settings(v31, v32, v33, v34, v35, v36);
      hasFacingPages = objc_msgSend_hasFacingPages(v37, v38, v39, v40, v41, v42);

      if (hasFacingPages && !self->_overrideAllowFootnotes)
      {
        v49 = objc_msgSend_info(self, v44, v45, v46, v47, v48);
        v55 = objc_msgSend_pageIndex(v49, v50, v51, v52, v53, v54);

        v6 = v55 ^ 1;
        return v6 & 1;
      }
    }

    else
    {
    }

    v6 = 1;
    return v6 & 1;
  }

  v6 = 0;
  return v6 & 1;
}

- (BOOL)canHavePreviousPageFootnotes
{
  if ((self->_contentFlags & 0x10) == 0)
  {
    goto LABEL_6;
  }

  v7 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_documentRoot(v7, v8, v9, v10, v11, v12);
  if ((objc_msgSend_laysOutBodyVertically(v13, v14, v15, v16, v17, v18) & 1) == 0)
  {

    goto LABEL_6;
  }

  v24 = objc_msgSend_info(self, v19, v20, v21, v22, v23);
  v30 = objc_msgSend_documentRoot(v24, v25, v26, v27, v28, v29);
  v36 = objc_msgSend_settings(v30, v31, v32, v33, v34, v35);
  hasFacingPages = objc_msgSend_hasFacingPages(v36, v37, v38, v39, v40, v41);

  if (!hasFacingPages)
  {
LABEL_6:
    v55 = 0;
    return v55 & 1;
  }

  v48 = objc_msgSend_info(self, v43, v44, v45, v46, v47);
  v54 = objc_msgSend_pageIndex(v48, v49, v50, v51, v52, v53);

  v55 = v54 ^ 1;
  return v55 & 1;
}

- (BOOL)hasHeaders
{
  v6 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_documentRoot(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_settings(v12, v13, v14, v15, v16, v17);
  hasHeaders = objc_msgSend_hasHeaders(v18, v19, v20, v21, v22, v23);

  return hasHeaders;
}

- (BOOL)hasFooters
{
  v6 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_documentRoot(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_settings(v12, v13, v14, v15, v16, v17);
  hasFooters = objc_msgSend_hasFooters(v18, v19, v20, v21, v22, v23);

  return hasFooters;
}

- (void)invalidateLayoutsForPageCountChange
{
  v117 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  selfCopy = self;
  v8 = objc_msgSend_info(self, v3, v4, v5, v6, v7);
  v9 = TSUDynamicCast();

  if (v9)
  {
    v112 = 0;
    v113 = &v112;
    v114 = 0x2020000000;
    v115 = 0;
    v106 = 0;
    v107 = &v106;
    v108 = 0x3042000000;
    v109 = sub_275FC4BDC;
    v110 = sub_275FC4BE8;
    v111 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_275FC4BF0;
    aBlock[3] = &unk_27A6A8378;
    aBlock[4] = &v112;
    aBlock[5] = &v106;
    obj = _Block_copy(aBlock);
    objc_storeWeak(v107 + 5, obj);
    v15 = objc_msgSend_children(selfCopy, v10, v11, v12, v13, v14);
    objc_msgSend_enumerateObjectsUsingBlock_(v15, v16, v17, v18, v19, v20, obj);

    if (*(v113 + 24) == 1)
    {
      objc_msgSend_invalidate(selfCopy, v21, v22, v23, v24, v25);
      v98 = objc_opt_new();
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v30 = objc_msgSend_floatingDrawableInfos(v9, v26, 0, v27, v28, v29);
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, v32, v33, v34, v35, &v101, v116, 16);
      if (v36)
      {
        v37 = *v102;
        v99 = v30;
        while (2)
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v102 != v37)
            {
              objc_enumerationMutation(v99);
            }

            objc_opt_class();
            v39 = TSUDynamicCast();
            v45 = objc_msgSend_textStorage(v39, v40, v41, v42, v43, v44);
            if (objc_msgSend_isLinked(v39, v46, v47, v48, v49, v50) && objc_msgSend_attachmentCount(v45, v51, v52, v53, v54, v55) && (objc_msgSend_containsObject_(v98, v56, v57, v58, v59, v60, v45) & 1) == 0)
            {
              v67 = objc_msgSend_attachmentCount(v45, v61, v62, v63, v64, v65);
              if (v67)
              {
                v72 = 0;
                while (1)
                {
                  v73 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(v45, v66, v68, v69, v70, v71, v72, 0);
                  v79 = (objc_msgSend_elementKind(v73, v74, v75, v76, v77, v78) & 0x20) == 0;

                  if (!v79)
                  {
                    break;
                  }

                  if (v67 == ++v72)
                  {
                    goto LABEL_15;
                  }
                }

                v85 = objc_msgSend_pageController(v9, v66, v68, v69, v70, v71);
                v91 = objc_msgSend_pageIndex(selfCopy, v86, v87, v88, v89, v90);
                objc_msgSend_i_invalidatePageIndex_(v85, v92, v93, v94, v95, v96, v91);

                v30 = v99;
                goto LABEL_20;
              }

LABEL_15:
              objc_msgSend_addObject_(v98, v66, v68, v69, v70, v71, v45);
            }
          }

          v30 = v99;
          v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v99, v80, v81, v82, v83, v84, &v101, v116, 16);
          if (v36)
          {
            continue;
          }

          break;
        }
      }

LABEL_20:
    }

    _Block_object_dispose(&v106, 8);
    objc_destroyWeak(&v111);
    _Block_object_dispose(&v112, 8);
  }
}

- (id)primaryLayoutForInfo:(id)info
{
  v50 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = objc_opt_class();
  if (objc_msgSend_canPartitionInline(v5, v6, v7, v8, v9, v10) && (objc_msgSend_owningAttachmentNoRecurse(infoCopy, v11, v12, v13, v14, v15), v16 = objc_claimAutoreleasedReturnValue(), isAttachedToBodyText = objc_msgSend_isAttachedToBodyText(v16, v17, v18, v19, v20, v21), v16, isAttachedToBodyText))
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v23 = objc_msgSend_bodyLayout(self, v11, 0, v13, v14, v15, 0);
    v29 = objc_msgSend_columns(v23, v24, v25, v26, v27, v28);

    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, v31, v32, v33, v34, &v45, v49, 16);
    if (v36)
    {
      v41 = *v46;
LABEL_5:
      v42 = 0;
      while (1)
      {
        if (*v46 != v41)
        {
          objc_enumerationMutation(v29);
        }

        v43 = objc_msgSend_partitionedLayoutForInfo_(*(*(&v45 + 1) + 8 * v42), v35, v37, v38, v39, v40, infoCopy);
        if (v43)
        {
          break;
        }

        if (v36 == ++v42)
        {
          v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v35, v37, v38, v39, v40, &v45, v49, 16);
          if (v36)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v43 = 0;
    }
  }

  else
  {
    v43 = objc_msgSend_layoutForChildInfo_(self, v11, v12, v13, v14, v15, infoCopy);
  }

  return v43;
}

- (id)layoutForChildInfo:(id)info
{
  v7 = objc_msgSend_p_childLayoutInParentLayout_forChildInfo_(self, a2, v3, v4, v5, v6, self, info);

  return v7;
}

- (id)p_childLayoutInParentLayout:(id)layout forChildInfo:(id)info
{
  v31 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  infoCopy = info;
  sub_275FC5090(self, infoCopy);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v8 = v27 = 0u;
  v14 = 0;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, v10, v11, v12, v13, &v26, v30, 16);
  if (v16)
  {
    v21 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v8);
        }

        v23 = *(*(&v26 + 1) + 8 * i);
        if (!v14 || objc_msgSend_orderedBefore_(*(*(&v26 + 1) + 8 * i), v15, v17, v18, v19, v20, v14, v26))
        {
          v24 = v23;

          v14 = v24;
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, v17, v18, v19, v20, &v26, v30, 16);
    }

    while (v16);
  }

  return v14;
}

- (id)layoutsForChildInfo:(id)info
{
  v3 = sub_275FC5090(self, info);
  v9 = objc_msgSend_copy(v3, v4, v5, v6, v7, v8);

  return v9;
}

- (BOOL)isReadyForBodyLayout
{
  if (!self->_childLayoutsValid || !self->_headerFooterProvider)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_sectionTemplateDrawableProvider);
  v3 = WeakRetained != 0;

  return v3;
}

- (id)layoutsForProvidingGuidesForChildLayouts
{
  v7 = objc_msgSend_children(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_arrayByAddingObject_(v7, v8, v9, v10, v11, v12, self);

  return v13;
}

- (unint64_t)pageIndex
{
  v6 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_pageIndex(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (void)parentWillChangeTo:(id)to
{
  toCopy = to;
  v23.receiver = self;
  v23.super_class = TPPaginatedPageLayout;
  [(TSWPPageLayout *)&v23 parentWillChangeTo:toCopy];
  if (!toCopy)
  {
    objc_opt_class();
    v10 = objc_msgSend_info(self, v5, v6, v7, v8, v9);
    v16 = objc_msgSend_pageController(v10, v11, v12, v13, v14, v15);
    v17 = TSUDynamicCast();
    objc_msgSend_i_unregisterPageLayout_(v17, v18, v19, v20, v21, v22, self);
  }
}

- (void)parentDidChange
{
  v134.receiver = self;
  v134.super_class = TPPaginatedPageLayout;
  [(TPPaginatedPageLayout *)&v134 parentDidChange];
  v8 = objc_msgSend_parent(self, v3, v4, v5, v6, v7);

  if (v8)
  {
    v14 = objc_msgSend_info(self, v9, v10, v11, v12, v13);

    if (!v14)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "[TPPaginatedPageLayout parentDidChange]");
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v28, v29, v30, v31, v32, v21, v27, 405, 0, "invalid nil value for '%{public}s'", "self.info");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36, v37);
    }

    v38 = objc_msgSend_rootLayout(self, v15, v16, v17, v18, v19);
    v44 = objc_msgSend_layoutController(v38, v39, v40, v41, v42, v43);
    v51 = objc_msgSend_canvas(v44, v45, v46, v47, v48, v49);
    if (v51)
    {
      v56 = objc_msgSend_rootLayout(self, v50, v52, v53, v54, v55);
      v62 = objc_msgSend_layoutController(v56, v57, v58, v59, v60, v61);
      v68 = objc_msgSend_canvas(v62, v63, v64, v65, v66, v67);
      v74 = objc_msgSend_infosToDisplay(v68, v69, v70, v71, v72, v73);
      v80 = objc_msgSend_info(self, v75, v76, v77, v78, v79);
      v86 = objc_msgSend_containsObject_(v74, v81, v82, v83, v84, v85, v80);

      if ((v86 & 1) == 0)
      {
        v92 = MEMORY[0x277D81150];
        v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, v88, v89, v90, v91, "[TPPaginatedPageLayout parentDidChange]");
        v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, v95, v96, v97, v98, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm");
        v105 = objc_msgSend_info(self, v100, v101, v102, v103, v104);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v92, v106, v107, v108, v109, v110, v93, v99, 406, 0, "unexpected page layout added for page: %@", v105);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v111, v112, v113, v114, v115);
      }
    }

    else
    {
    }

    objc_msgSend_invalidateChildren(self, v87, v88, v89, v90, v91);
    objc_opt_class();
    v121 = objc_msgSend_info(self, v116, v117, v118, v119, v120);
    v127 = objc_msgSend_pageController(v121, v122, v123, v124, v125, v126);
    v128 = TSUDynamicCast();
    objc_msgSend_i_registerPageLayout_(v128, v129, v130, v131, v132, v133, self);
  }
}

- (void)replaceChild:(id)child with:(id)with
{
  childCopy = child;
  withCopy = with;
  if (childCopy != withCopy)
  {
    objc_msgSend_removeObject_(self->_anchoredDrawableLayouts, v7, v9, v10, v11, v12, childCopy);
  }

  v18.receiver = self;
  v18.super_class = TPPaginatedPageLayout;
  [(TPPaginatedPageLayout *)&v18 replaceChild:childCopy with:withCopy];
  objc_msgSend_p_clearChildTextLayoutCache(self, v13, v14, v15, v16, v17);
}

- (void)insertChild:(id)child atIndex:(unint64_t)index
{
  childCopy = child;
  objc_msgSend_p_addLayoutIfAttached_(self, v7, v8, v9, v10, v11, childCopy);
  v17.receiver = self;
  v17.super_class = TPPaginatedPageLayout;
  [(TPPaginatedPageLayout *)&v17 insertChild:childCopy atIndex:index];
  objc_msgSend_p_clearChildTextLayoutCache(self, v12, v13, v14, v15, v16);
}

- (void)setChildren:(id)children
{
  v35 = *MEMORY[0x277D85DE8];
  childrenCopy = children;
  objc_msgSend_removeAllObjects(self->_anchoredDrawableLayouts, v5, v6, v7, v8, v9);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = childrenCopy;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, v15, &v30, v34, 16);
  if (v17)
  {
    v22 = *v31;
    do
    {
      v23 = 0;
      do
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_p_addLayoutIfAttached_(self, v16, v18, v19, v20, v21, *(*(&v30 + 1) + 8 * v23++));
      }

      while (v17 != v23);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, v18, v19, v20, v21, &v30, v34, 16);
    }

    while (v17);
  }

  v29.receiver = self;
  v29.super_class = TPPaginatedPageLayout;
  [(TPPaginatedPageLayout *)&v29 setChildren:v10];
  objc_msgSend_p_clearChildTextLayoutCache(self, v24, v25, v26, v27, v28);
}

- (void)p_addLayoutIfAttached:(id)attached
{
  attachedCopy = attached;
  objc_opt_class();
  v4 = TSUDynamicCast();
  v10 = objc_msgSend_info(v4, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_owningAttachment(v10, v11, v12, v13, v14, v15);
  isDrawable = objc_msgSend_isDrawable(v16, v17, v18, v19, v20, v21);

  if (isDrawable)
  {
    anchoredDrawableLayouts = self->_anchoredDrawableLayouts;
    if (!anchoredDrawableLayouts)
    {
      v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v30 = self->_anchoredDrawableLayouts;
      self->_anchoredDrawableLayouts = v29;

      anchoredDrawableLayouts = self->_anchoredDrawableLayouts;
    }

    objc_msgSend_addObject_(anchoredDrawableLayouts, v23, v24, v25, v26, v27, v4);
  }
}

- (CGSize)maximumFrameSizeForChild:(id)child
{
  childCopy = child;
  v10 = objc_msgSend_info(childCopy, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_owningAttachmentNoRecurse(v10, v11, v12, v13, v14, v15);

  if (v16 && objc_msgSend_isAnchored(v16, v17, v18, v19, v20, v21) && (objc_opt_class(), TSUDynamicCast(), v22 = objc_claimAutoreleasedReturnValue(), isHTMLWrap = objc_msgSend_isHTMLWrap(v22, v23, v24, v25, v26, v27), v22, isHTMLWrap))
  {
    v34 = objc_msgSend_bodyLayout(self, v29, v30, v31, v32, v33);
    objc_msgSend_maximumFrameSizeForChild_(v34, v35, v36, v37, v38, v39, childCopy);
    v41 = v40;
    v43 = v42;
  }

  else
  {
    v48.receiver = self;
    v48.super_class = TPPaginatedPageLayout;
    [(TPPaginatedPageLayout *)&v48 maximumFrameSizeForChild:childCopy];
    v41 = v44;
    v43 = v45;
  }

  v46 = v41;
  v47 = v43;
  result.height = v47;
  result.width = v46;
  return result;
}

- (BOOL)allowIntersectionOfChildLayout:(id)layout
{
  layoutCopy = layout;
  v36.receiver = self;
  v36.super_class = TPPaginatedPageLayout;
  if ([(TPPaginatedPageLayout *)&v36 allowIntersectionOfChildLayout:layoutCopy])
  {
    v10 = objc_msgSend_info(self, v5, v6, v7, v8, v9);
    v16 = objc_msgSend_documentRoot(v10, v11, v12, v13, v14, v15);

    if (objc_msgSend_isCollaborativeClient(v16, v17, v18, v19, v20, v21))
    {
      v27 = objc_msgSend_info(layoutCopy, v22, v23, v24, v25, v26);
      isSectionInfo = objc_msgSend_isSectionInfo_(v16, v28, v29, v30, v31, v32, v27);

      v34 = isSectionInfo ^ 1;
    }

    else
    {
      v34 = 1;
    }
  }

  else
  {
    v34 = 0;
  }

  return v34 & 1;
}

- (id)computeLayoutGeometry
{
  v6 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  objc_msgSend_pageFrame(v6, v7, v8, v9, v10, v11);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = objc_alloc(MEMORY[0x277D80300]);
  v21.n128_u64[0] = v13;
  v22.n128_u64[0] = v15;
  v23.n128_u64[0] = v17;
  v24.n128_u64[0] = v19;
  v26 = objc_msgSend_initWithFrame_(v20, v25, v21, v22, v23, v24);

  return v26;
}

- (id)dependentLayouts
{
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4, v5);
  v14 = objc_msgSend_bodyLayout(self, v8, v9, v10, v11, v12);
  if (v14)
  {
    objc_msgSend_addObject_(v7, v13, v15, v16, v17, v18, v14);
  }

  v19 = 0;
  v20 = self + *MEMORY[0x277D80FC0];
  v21 = 1;
  do
  {
    v22 = 0;
    v23 = v21;
    v24 = &v20[24 * v19];
    do
    {
      v26 = *&v24[v22];
      if (v26)
      {
        objc_msgSend_addObject_(v7, v25, v27, v28, v29, v30, v26);
      }

      v22 += 8;
    }

    while (v22 != 24);
    v21 = 0;
    v19 = 1;
  }

  while ((v23 & 1) != 0);

  return v7;
}

- (void)invalidatePosition
{
  v25.receiver = self;
  v25.super_class = TPPaginatedPageLayout;
  [(TPPaginatedPageLayout *)&v25 invalidatePosition];
  v8 = objc_msgSend_floatingDrawableLayouts(self, v3, v4, v5, v6, v7);
  objc_msgSend_makeObjectsPerformSelector_(v8, v9, v10, v11, v12, v13, sel_invalidateExteriorWrap);

  v19 = objc_msgSend_anchoredDrawableLayouts(self, v14, v15, v16, v17, v18);
  objc_msgSend_makeObjectsPerformSelector_(v19, v20, v21, v22, v23, v24, sel_invalidateExteriorWrap);
}

- (void)invalidateSize
{
  v28 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = TPPaginatedPageLayout;
  [(TPPaginatedPageLayout *)&v26 invalidateSize];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = objc_msgSend_dependentLayouts(self, v3, 0, v4, v5, v6, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v9, v10, v11, v12, &v22, v27, 16);
  if (v14)
  {
    v19 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v7);
        }

        v21 = *(*(&v22 + 1) + 8 * i);
        if (objc_msgSend_layoutState(v21, v13, v15, v16, v17, v18) != 2)
        {
          objc_msgSend_invalidateFrame(v21, v13, v15, v16, v17, v18);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v13, v15, v16, v17, v18, &v22, v27, 16);
    }

    while (v14);
  }
}

- (id)p_generateChildTextLayoutsForExteriorWrap
{
  objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4, v5);
  v100 = v99 = self;
  v12 = objc_msgSend_children(self, v7, v8, v9, v10, v11);
  v19 = objc_msgSend_count(v12, v13, v14, v15, v16, v17);
  if (v19)
  {
    v98 = v12;
    v25 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v18, v20, v21, v22, v23, v12);
    for (i = 0; i < objc_msgSend_count(v25, v24, v26, v27, v28, v29); ++i)
    {
      v36 = objc_msgSend_objectAtIndexedSubscript_(v25, v31, v32, v33, v34, v35, i);
      objc_opt_class();
      v37 = TSUDynamicCast();
      v43 = objc_msgSend_children(v36, v38, v39, v40, v41, v42);
      v49 = objc_msgSend_count(v43, v44, v45, v46, v47, v48);

      if (v49 || v37)
      {
        if (i >= v19 || (objc_msgSend_info(v36, v50, v51, v52, v53, v54), (v56 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend_info(v99, v55, v57, v58, v59, v60), v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend_documentRoot(v61, v62, v63, v64, v65, v66), v67 = objc_claimAutoreleasedReturnValue(), objc_msgSend_info(v36, v68, v69, v70, v71, v72), v73 = objc_claimAutoreleasedReturnValue(), isSectionInfo = objc_msgSend_isSectionInfo_(v67, v74, v75, v76, v77, v78, v73), v73, v67, v61, v56, (isSectionInfo & 1) == 0))
        {
          v80 = objc_msgSend_children(v36, v50, v51, v52, v53, v54);
          objc_msgSend_addObjectsFromArray_(v25, v81, v82, v83, v84, v85, v80);

          if (v37)
          {
            if (objc_msgSend_shouldWrapAroundExternalDrawables(v37, v86, v87, v88, v89, v90))
            {
              objc_msgSend_addObject_(v100, v91, v92, v93, v94, v95, v37);
            }
          }
        }
      }
    }

    v12 = v98;
  }

  v96 = objc_msgSend_copy(v100, v18, v20, v21, v22, v23);

  return v96;
}

- (void)p_clearChildTextLayoutCache
{
  if (self->_childTextLayoutsForExteriorWrapCache)
  {
    if (*MEMORY[0x277D814A8] != -1)
    {
      sub_2760381B0();
    }

    childTextLayoutsForExteriorWrapCache = self->_childTextLayoutsForExteriorWrapCache;
  }

  else
  {
    childTextLayoutsForExteriorWrapCache = 0;
  }

  self->_childTextLayoutsForExteriorWrapCache = 0;
}

- (NSFastEnumeration)childTextLayoutsForExteriorWrap
{
  if (self->_childTextLayoutsForExteriorWrapCache)
  {
    ++self->_childTextLayoutCacheHits;
  }

  else
  {
    v7 = objc_msgSend_p_generateChildTextLayoutsForExteriorWrap(self, a2, v2, v3, v4, v5);
    childTextLayoutsForExteriorWrapCache = self->_childTextLayoutsForExteriorWrapCache;
    self->_childTextLayoutsForExteriorWrapCache = v7;

    self->_childTextLayoutCacheHits = 0;
  }

  v9 = self->_childTextLayoutsForExteriorWrapCache;

  return v9;
}

- (NSArray)floatingDrawableLayouts
{
  objc_opt_class();
  v8 = objc_msgSend_info(self, v3, v4, v5, v6, v7);
  v9 = TSUDynamicCast();

  if (v9)
  {
    v15 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11, v12, v13, v14);
    v21 = objc_msgSend_floatingDrawableInfos(v9, v16, v17, v18, v19, v20);
    objc_msgSend_p_addLayoutsForInfos_toArray_(self, v22, v23, v24, v25, v26, v21, v15);
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  return v15;
}

- (void)processWidowAndInflation
{
  v66 = objc_msgSend_bodyLayout(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_processWidowAndInflation(v66, v7, v8, v9, v10, v11);

  if (v12 && (objc_msgSend_isEmpty(self->_footnoteContainerLayout, v13, v14, v15, v16, v17) & 1) == 0)
  {
    v67 = objc_msgSend_info(self, v18, v19, v20, v21, v22);
    v28 = objc_msgSend_pageController(v67, v23, v24, v25, v26, v27);
    v34 = objc_msgSend_pageIndex(v67, v29, v30, v31, v32, v33);
    v40 = objc_msgSend_footnoteLayoutRangeForPageIndex_forcePagination_(v28, v35, v36, v37, v38, v39, v34, 0);
    v42 = v41;

    if (v40 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v48 = MEMORY[0x277D81150];
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, v47, "[TPPaginatedPageLayout processWidowAndInflation]");
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v56, v57, v58, v59, v60, v49, v55, 652, 0, "Should have a found a valid footnote layout range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63, v64, v65);
    }

    objc_msgSend_trimFootnoteLayoutsFromIndex_(self->_footnoteContainerLayout, v43, v44, v45, v46, v47, v42);
  }
}

- (void)invalidateHeaderFooterLayoutsCache
{
  objc_msgSend_i_clearHeaderFooterLayouts(self, a2, v2, v3, v4, v5);
  objc_msgSend_rebuildChildLayoutsOnNextValidationForcingTextLayoutOnTopLevelObjects_(self, v7, v8, v9, v10, v11, 0);

  objc_msgSend_invalidate(self, v12, v13, v14, v15, v16);
}

- (void)invalidateHeaderFooterLayouts
{
  v57 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_headerFooterProviderValid(self, a2, v2, v3, v4, v5))
  {
    if (objc_msgSend_i_updateHeaderFooterLayouts(self, v7, v8, v9, v10, v11))
    {
      objc_msgSend_rebuildChildLayoutsOnNextValidationForcingTextLayoutOnTopLevelObjects_(self, v12, v13, v14, v15, v16, 0);

      objc_msgSend_invalidate(self, v17, v18, v19, v20, v21);
    }

    else
    {
      v22 = 0;
      v23 = self + *MEMORY[0x277D80FC0];
      v24 = 1;
      do
      {
        v25 = 0;
        v26 = v24;
        v27 = &v23[24 * v22];
        do
        {
          v28 = *&v27[8 * v25];
          objc_msgSend_invalidateFrame(v28, v29, v30, v31, v32, v33);
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v38 = objc_msgSend_dependentLayouts(v28, v34, 0, v35, v36, v37, 0);
          v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, v40, v41, v42, v43, &v52, v56, 16);
          if (v45)
          {
            v50 = *v53;
            do
            {
              for (i = 0; i != v45; ++i)
              {
                if (*v53 != v50)
                {
                  objc_enumerationMutation(v38);
                }

                objc_msgSend_invalidateFrame(*(*(&v52 + 1) + 8 * i), v44, v46, v47, v48, v49);
              }

              v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v44, v46, v47, v48, v49, &v52, v56, 16);
            }

            while (v45);
          }

          ++v25;
        }

        while (v25 != 3);
        v24 = 0;
        v22 = 1;
      }

      while ((v26 & 1) != 0);
    }
  }
}

- (void)invalidateBodyAndMarginLayouts
{
  v7 = objc_msgSend_bodyLayout(self, a2, v2, v3, v4, v5);

  if (v7)
  {
    v18 = objc_msgSend_bodyLayout(self, v8, v9, v10, v11, v12);
    objc_msgSend_invalidateFrame(v18, v13, v14, v15, v16, v17);
  }
}

- (void)invalidateFootnoteSeparatorLine
{
  v24 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_documentRoot(v24, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_footnoteKind(v12, v13, v14, v15, v16, v17) != 1;
  objc_msgSend_setIncludeFootnoteSeparatorLine_(self->_footnoteContainerLayout, v19, v20, v21, v22, v23, v18);
}

- (void)invalidateFootnoteContainers
{
  v7 = objc_msgSend_bodyLayout(self, a2, v2, v3, v4, v5);
  objc_msgSend_resetFootnoteHeightMeasurer(v7, v8, v9, v10, v11, v12);

  objc_msgSend_removeFromParent(self->_footnoteContainerLayout, v13, v14, v15, v16, v17);
  footnoteContainerLayout = self->_footnoteContainerLayout;
  self->_footnoteContainerLayout = 0;

  self->_childLayoutsValid = 0;
}

- (void)rebuildChildLayoutsOnNextValidationForcingTextLayoutOnTopLevelObjects:(BOOL)objects
{
  self->_childLayoutsValid = 0;
  if (objects)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3042000000;
    v20 = sub_275FC4BDC;
    v21 = sub_275FC4BE8;
    v22 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_275FC6D8C;
    aBlock[3] = &unk_27A6A83A0;
    aBlock[4] = &v17;
    v4 = _Block_copy(aBlock);
    objc_storeWeak(v18 + 5, v4);
    v10 = objc_msgSend_children(self, v5, v6, v7, v8, v9);
    objc_msgSend_enumerateObjectsUsingBlock_(v10, v11, v12, v13, v14, v15, v4);

    _Block_object_dispose(&v17, 8);
    objc_destroyWeak(&v22);
  }
}

- (void)setNeedsInflation
{
  v7 = objc_msgSend_bodyLayout(self, a2, v2, v3, v4, v5);
  objc_msgSend_setNeedsInflation(v7, v8, v9, v10, v11, v12);

  objc_opt_class();
  v18 = objc_msgSend_footnoteContainerLayout(self, v13, v14, v15, v16, v17);
  v24 = TSUDynamicCast();

  objc_msgSend_setNeedsInflation(v24, v19, v20, v21, v22, v23);
}

- (double)blockHeightAvailableForFootnotes
{
  v7 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_documentRoot(v7, v8, v9, v10, v11, v12);
  if (objc_msgSend_laysOutBodyVertically(v13, v14, v15, v16, v17, v18))
  {
    objc_msgSend_bodyRect(self, v19, v20, v21, v22, v23);
    v25.n128_f64[0] = CGRectGetWidth(v39);
  }

  else
  {
    objc_msgSend_bodyRect(self, v19, v20, v21, v22, v23);
    v25.n128_f64[0] = CGRectGetHeight(v40);
  }

  v29 = v25.n128_f64[0];
  v30 = objc_msgSend_bodyLayout(self, v24, v25, v26, v27, v28);
  objc_msgSend_contentBlockHeight(v30, v31, v32, v33, v34, v35);
  v37 = v29 - v36;

  return v37;
}

- (void)inflateFootnotesInFootnoteContainer:(id)container
{
  containerCopy = container;
  v9 = objc_msgSend_footnoteContainerLayout(self, v4, v5, v6, v7, v8);

  if (v9 != containerCopy)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "[TPPaginatedPageLayout inflateFootnotesInFootnoteContainer:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v23, v24, v25, v26, v27, v16, v22, 760, 0, "Why are we trying to inflate a footnote container layout that isn't ours?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31, v32);
  }

  objc_opt_class();
  v38 = objc_msgSend_info(self, v33, v34, v35, v36, v37);
  v44 = objc_msgSend_pageController(v38, v39, v40, v41, v42, v43);
  v45 = TSUDynamicCast();
  objc_msgSend_i_inflateFootnotesInFootnoteContainer_(v45, v46, v47, v48, v49, v50, containerCopy);
}

- (CGRect)footnoteContainerFrameWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  objc_msgSend_bodyRect(self, a2, size, *&size.height, v3, v4);
  v9 = v8.n128_f64[0];
  v11 = v10.n128_f64[0];
  v13 = v12.n128_f64[0];
  v15 = v14.n128_f64[0];
  v17 = objc_msgSend_info(self, v16, v8, v10, v12, v14);
  v23 = objc_msgSend_documentRoot(v17, v18, v19, v20, v21, v22);
  v29 = objc_msgSend_laysOutBodyVertically(v23, v24, v25, v26, v27, v28);

  if (v29)
  {
    v35 = objc_msgSend_bodyLayout(self, v30, v31, v32, v33, v34);
    v36 = v35 != 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = objc_msgSend_info(self, v30, v31, v32, v33, v34);
  v43 = objc_msgSend_documentRoot(v37, v38, v39, v40, v41, v42);
  v49 = objc_msgSend_footnoteKind(v43, v44, v45, v46, v47, v48) == 0 && v36;

  if (v49 == 1)
  {
    if (v29)
    {
      v55 = objc_msgSend_bodyLayout(self, v50, v51, v52, v53, v54);
      v61 = objc_msgSend_columns(v55, v56, v57, v58, v59, v60);
      v67 = objc_msgSend_lastObject(v61, v62, v63, v64, v65, v66);
      objc_msgSend_frameBounds(v67, v68, v69, v70, v71, v72);
      v74 = v73;

      v9 = v9 + v74 - width;
    }

    else
    {
      v87.origin.x = v9;
      v87.origin.y = v11;
      v87.size.width = v13;
      v87.size.height = v15;
      v11 = CGRectGetMaxY(v87) - height;
    }
  }

  else
  {
    v75 = objc_msgSend_bodyLayout(self, v50, v51, v52, v53, v54);
    objc_msgSend_contentBlockHeight(v75, v76, v77, v78, v79, v80);
    v82 = v81;
    if (v29)
    {
      v9 = v9 + v13 - v81 - width;
    }

    else
    {
      v88.origin.x = v9;
      v88.origin.y = v11;
      v88.size.width = v13;
      v88.size.height = v15;
      v11 = v82 + CGRectGetMinY(v88);
    }
  }

  v83 = v9;
  v84 = v11;
  v85 = width;
  v86 = height;
  result.size.height = v86;
  result.size.width = v85;
  result.origin.y = v84;
  result.origin.x = v83;
  return result;
}

- (id)layoutsCausingWrapOnTextLayoutTarget:(id)target ignoreIntersection:(BOOL)intersection
{
  v256 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  v223 = targetCopy;
  objc_opt_class();
  v12 = objc_msgSend_info(self, v7, v8, v9, v10, v11);
  v13 = TSUDynamicCast();

  v224 = v13;
  if (!v13 || (objc_msgSend_shouldWrapAroundExternalDrawables(targetCopy, v14, v15, v16, v17, v18) & 1) == 0)
  {
    v71 = 0;
    goto LABEL_83;
  }

  v24 = objc_msgSend_parent(targetCopy, v19, v20, v21, v22, v23);
  selfCopy = self;
  objc_opt_class();
  v235 = TSUClassAndProtocolCast();

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_275FC7D24;
  aBlock[3] = &unk_27A6A83C8;
  intersectionCopy = intersection;
  v233 = targetCopy;
  v251 = v233;
  v25 = _Block_copy(aBlock);
  objc_msgSend_isInGroup(v233, v26, v27, v28, v29, v30, &unk_28851B9A0, &unk_28853CDB0);
  v36 = objc_msgSend_info(v235, v31, v32, v33, v34, v35);
  v43 = objc_msgSend_owningAttachment(v36, v37, v38, v39, v40, v41);
  if (!v43)
  {

    goto LABEL_8;
  }

  v48 = objc_msgSend_info(v235, v42, v44, v45, v46, v47);
  v54 = objc_msgSend_owningAttachment(v48, v49, v50, v51, v52, v53);
  isAnchored = objc_msgSend_isAnchored(v54, v55, v56, v57, v58, v59);

  if (isAnchored)
  {
LABEL_8:
    v72 = objc_msgSend_floatingDrawableLayouts(selfCopy, v61, v62, v63, v64, v65);
    v78 = objc_msgSend_anchoredDrawableLayouts(selfCopy, v73, v74, v75, v76, v77);
    v84 = objc_msgSend_allObjects(v78, v79, v80, v81, v82, v83);
    v90 = objc_msgSend_arrayByAddingObjectsFromArray_(v72, v85, v86, v87, v88, v89, v84);
    v222 = objc_msgSend_mutableCopy(v90, v91, v92, v93, v94, v95);

    goto LABEL_9;
  }

  v222 = objc_opt_new();
LABEL_9:
  v226 = objc_msgSend_drawablesZOrder(v224, v66, v67, v68, v69, v70);
  objc_opt_class();
  v97 = TSUDynamicCast();
  if (v97)
  {
    do
    {
      v102 = objc_msgSend_info(v97, v96, v98, v99, v100, v101);
      v229 = objc_msgSend_zOrderOfDrawable_(v226, v103, v104, v105, v106, v107, v102);

      objc_opt_class();
      v113 = objc_msgSend_parent(v97, v108, v109, v110, v111, v112);
      v225 = TSUDynamicCast();

      v114 = v225;
      if (v229 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v97 = v225;
    }

    while (v225);
    if (v229 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v115 = MEMORY[0x277CBEB58];
      v116 = objc_msgSend_count(v222, v96, v98, v99, v100, v101);
      v71 = objc_msgSend_setWithCapacity_(v115, v117, v118, v119, v120, v121, v116);
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      obj = v222;
      v232 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v122, v123, v124, v125, v126, &v246, v255, 16);
      if (!v232)
      {
        goto LABEL_79;
      }

      v231 = *v247;
      if (v235)
      {
        v132 = v235 == selfCopy;
      }

      else
      {
        v132 = 1;
      }

      v133 = v132;
      v227 = v133;
      while (1)
      {
        for (i = 0; i != v232; ++i)
        {
          if (*v247 != v231)
          {
            objc_enumerationMutation(obj);
          }

          v135 = *(*(&v246 + 1) + 8 * i);
          if (v135 != v233 && v135 != v235)
          {
            v230 = i;
            v137 = v235;
            v143 = v137;
            if (v227)
            {
              v144 = 1;
              v145 = v137;
            }

            else
            {
              v146 = v137;
              do
              {
                v145 = objc_msgSend_parent(v146, v138, v139, v140, v141, v142);

                if (v145)
                {
                  v147 = v145 == selfCopy;
                }

                else
                {
                  v147 = 1;
                }

                v144 = v147;
                if (v145 == v135)
                {
                  break;
                }

                v146 = v145;
              }

              while ((v144 & 1) == 0);
            }

            if (objc_opt_respondsToSelector())
            {
              v153 = v135;
              objc_msgSend_descendentWrappables(v153, v154, v155, v156, v157, v158);
            }

            else
            {
              v153 = 0;
              objc_msgSend_descendentWrappables(0, v148, v149, v150, v151, v152);
            }
            v236 = ;
            v234 = v153;
            if (!v153)
            {
              goto LABEL_49;
            }

            if (v235)
            {
              v164 = objc_msgSend_indexOfObject_(v236, v159, v160, v161, v162, v163, v143);
            }

            else
            {
              v164 = objc_msgSend_indexOfObject_(v236, v159, v160, v161, v162, v163, v233);
            }

            v170 = v164;
            if (v164 == 0x7FFFFFFFFFFFFFFFLL || v164 == objc_msgSend_count(v236, v165, v166, v167, v168, v169) - 1)
            {
              if (v170 != objc_msgSend_count(v236, v165, v166, v167, v168, v169) - 1)
              {
LABEL_49:
                v171 = objc_msgSend_info(v135, v159, v160, v161, v162, v163);
                v177 = objc_msgSend_zOrderOfDrawable_(v226, v172, v173, v174, v175, v176, v171);

                if (v177 >= v229)
                {
                  if (v144 && (objc_opt_respondsToSelector() & 1) != 0 && v25[2](v25, v135))
                  {
                    objc_msgSend_addObject_(v71, v178, v179, v180, v181, v182, v135);
                  }

                  if (v234)
                  {
                    v240 = 0u;
                    v241 = 0u;
                    v238 = 0u;
                    v239 = 0u;
                    v183 = v236;
                    v189 = objc_msgSend_countByEnumeratingWithState_objects_count_(v183, v184, v185, v186, v187, v188, &v238, v253, 16);
                    if (v189)
                    {
                      v190 = *v239;
                      do
                      {
                        for (j = 0; j != v189; ++j)
                        {
                          if (*v239 != v190)
                          {
                            objc_enumerationMutation(v183);
                          }

                          v192 = *(*(&v238 + 1) + 8 * j);
                          objc_opt_class();
                          v193 = TSUDynamicCast();
                          v194 = v25[2](v25, v193);

                          if (v194)
                          {
                            objc_msgSend_addObject_(v71, v195, v196, v197, v198, v199, v192);
                          }
                        }

                        v189 = objc_msgSend_countByEnumeratingWithState_objects_count_(v183, v195, v196, v197, v198, v199, &v238, v253, 16);
                      }

                      while (v189);
                    }

                    goto LABEL_75;
                  }
                }
              }
            }

            else
            {
              v200 = objc_msgSend_count(v236, v165, v166, v167, v168, v169);
              v206 = objc_msgSend_subarrayWithRange_(v236, v201, v202, v203, v204, v205, v170 + 1, v200 - (v170 + 1));
              v244 = 0u;
              v245 = 0u;
              v242 = 0u;
              v243 = 0u;
              v183 = v206;
              v212 = objc_msgSend_countByEnumeratingWithState_objects_count_(v183, v207, v208, v209, v210, v211, &v242, v254, 16);
              if (v212)
              {
                v213 = *v243;
                do
                {
                  for (k = 0; k != v212; ++k)
                  {
                    if (*v243 != v213)
                    {
                      objc_enumerationMutation(v183);
                    }

                    v215 = *(*(&v242 + 1) + 8 * k);
                    if (v25[2](v25, v215))
                    {
                      objc_msgSend_addObject_(v71, v216, v217, v218, v219, v220, v215);
                    }
                  }

                  v212 = objc_msgSend_countByEnumeratingWithState_objects_count_(v183, v216, v217, v218, v219, v220, &v242, v254, 16);
                }

                while (v212);
              }

LABEL_75:
            }

            i = v230;
            continue;
          }
        }

        v232 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v127, v128, v129, v130, v131, &v246, v255, 16);
        if (!v232)
        {
LABEL_79:

          v114 = v225;
          goto LABEL_82;
        }
      }
    }
  }

  else
  {
    v114 = 0;
  }

  v71 = 0;
LABEL_82:

LABEL_83:

  return v71;
}

- (id)existingAttachmentLayoutForInfo:(id)info
{
  v7 = objc_msgSend_p_existingChildLayoutForInfo_(self, a2, v3, v4, v5, v6, info);

  return v7;
}

- (void)addAttachmentLayout:(id)layout
{
  layoutCopy = layout;
  v49 = layoutCopy;
  if (layoutCopy)
  {
    objc_msgSend_addChild_(self, layoutCopy, v6, v7, v8, v9, layoutCopy);
    objc_msgSend_updateChildrenFromInfo(v49, v10, v11, v12, v13, v14);
    v20 = objc_msgSend_layoutController(self, v15, v16, v17, v18, v19);
    objc_msgSend_validateLayoutWithDependencies_(v20, v21, v22, v23, v24, v25, v49);

    objc_msgSend_p_sortChildLayouts(self, v26, v27, v28, v29, v30);
  }

  else
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, v9, "[TPPaginatedPageLayout addAttachmentLayout:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v39, v40, v41, v42, v43, v32, v38, 930, 0, "invalid nil value for '%{public}s'", "node");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47, v48);
  }
}

- (id)additionalDependenciesForChildLayout:(id)layout
{
  v56[1] = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v10 = objc_msgSend_bodyLayout(self, v5, v6, v7, v8, v9);
  v16 = v10;
  if (v10)
  {
    if (v10 == layoutCopy)
    {
      v48 = objc_msgSend_footnoteContainerLayout(self, v11, v12, v13, v14, v15);
      v23 = v48;
      if (v48)
      {
        v56[0] = v48;
        v47 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v49, v50, v51, v52, v53, v56, 1);
      }

      else
      {
        v47 = 0;
      }
    }

    else
    {
      objc_opt_class();
      v22 = objc_msgSend_info(self, v17, v18, v19, v20, v21);
      v23 = TSUDynamicCast();

      v29 = objc_msgSend_floatingDrawableInfos(v23, v24, v25, v26, v27, v28);
      v35 = objc_msgSend_info(layoutCopy, v30, v31, v32, v33, v34);
      v41 = objc_msgSend_containsObject_(v29, v36, v37, v38, v39, v40, v35);

      if (v41)
      {
        v55 = v16;
        v47 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v42, v43, v44, v45, v46, &v55, 1);
      }

      else
      {
        v47 = 0;
      }
    }
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

- (void)beginResizeWrapInvalidationCluster
{
  inInvalidationClusterCount = self->_inInvalidationClusterCount;
  if (!inInvalidationClusterCount)
  {
    self->_childTextLayoutsNeedInvalidationForExteriorWrap = 0;
  }

  self->_inInvalidationClusterCount = inInvalidationClusterCount + 1;
}

- (void)endResizeWrapInvalidationCluster
{
  inInvalidationClusterCount = self->_inInvalidationClusterCount;
  if (inInvalidationClusterCount <= 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPaginatedPageLayout endResizeWrapInvalidationCluster]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v20, v9, v15, 978, 0, "Closing an invalidation cluster when one is not open!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24, v25);
    inInvalidationClusterCount = self->_inInvalidationClusterCount;
  }

  v26 = inInvalidationClusterCount - 1;
  self->_inInvalidationClusterCount = v26;
  if (!v26 && self->_childTextLayoutsNeedInvalidationForExteriorWrap)
  {
    objc_msgSend_wrappableChildInvalidated_(self, a2, v2, v3, v4, v5, 0);
    self->_childTextLayoutsNeedInvalidationForExteriorWrap = 0;
  }
}

- (void)wrappableChildInvalidated:(id)invalidated
{
  v90 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  if (self->_inInvalidationClusterCount < 1)
  {
    if ((objc_msgSend_isValidating(self, v4, v6, v7, v8, v9) & 1) == 0)
    {
      v84 = objc_msgSend_set(MEMORY[0x277CBEB58], v10, v11, v12, v13, v14);
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      selfCopy = self;
      v19 = objc_msgSend_childTextLayoutsForExteriorWrap(self, v15, 0, v16, v17, v18);
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, v21, v22, v23, v24, &v85, v89, 16);
      if (v26)
      {
        v31 = *v86;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v86 != v31)
            {
              objc_enumerationMutation(v19);
            }

            v33 = *(*(&v85 + 1) + 8 * i);
            if (objc_msgSend_textLayoutValid(v33, v25, v27, v28, v29, v30, v82))
            {
              v39 = objc_msgSend_parent(v33, v34, v35, v36, v37, v38);
              v40 = v39 == invalidatedCopy;

              if (!v40)
              {
                if (objc_msgSend_parentAutosizes(v33, v41, v42, v43, v44, v45))
                {
                  objc_msgSend_invalidateSize(v33, v46, v47, v48, v49, v50);
                }

                else
                {
                  objc_msgSend_invalidateTextLayout(v33, v46, v47, v48, v49, v50);
                }
              }
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v51 = objc_msgSend_info(v33, v25, v27, v28, v29, v30);
              v57 = objc_msgSend_parentInfo(v51, v52, v53, v54, v55, v56);
              v82 = &unk_288540768;
              v58 = TSUCheckedProtocolCast();

              if (v58)
              {
                objc_msgSend_addObject_(v84, v59, v60, v61, v62, v63, v58, &unk_288540768);
              }
            }
          }

          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v25, v27, v28, v29, v30, &v85, v89, 16);
        }

        while (v26);
      }

      objc_opt_class();
      v69 = objc_msgSend_info(selfCopy, v64, v65, v66, v67, v68);
      v75 = objc_msgSend_pageController(v69, v70, v71, v72, v73, v74);
      v76 = TSUDynamicCast();
      objc_msgSend_i_invalidateFlows_startingPage_(v76, v77, v78, v79, v80, v81, v84, selfCopy);
    }
  }

  else
  {
    self->_childTextLayoutsNeedInvalidationForExteriorWrap = 1;
  }
}

- (unint64_t)autosizeFlagsForTextLayout:(id)layout
{
  layoutCopy = layout;
  v10 = objc_msgSend_storage(layoutCopy, v5, v6, v7, v8, v9);
  if (objc_msgSend_wpKind(v10, v11, v12, v13, v14, v15) != 1)
  {

    goto LABEL_7;
  }

  v21 = objc_msgSend_children(self, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_containsObject_(v21, v22, v23, v24, v25, v26, layoutCopy);

  if (!v27)
  {
LABEL_7:
    v33 = 96;
    goto LABEL_8;
  }

  if (objc_msgSend_usesSingleHeaderFooter(self->_headerFooterProvider, v28, v29, v30, v31, v32))
  {
    v33 = 3;
  }

  else
  {
    v33 = 15;
  }

LABEL_8:

  return v33;
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)layout
{
  v3.n128_u64[0] = *MEMORY[0x277CBF3A8];
  v4.n128_u64[0] = *(MEMORY[0x277CBF3A8] + 8);
  (MEMORY[0x2821F9670])(self, sel_autosizedFrameForTextLayout_textSize_, v3, v4);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  layoutCopy = layout;
  v13 = objc_msgSend_storage(layoutCopy, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_wpKind(v13, v14, v15, v16, v17, v18);

  if (v19 == 1)
  {
    v25 = objc_msgSend_info(self, v20, v21, v22, v23, v24);
    v31 = objc_msgSend_documentRoot(v25, v26, v27, v28, v29, v30);
    objc_msgSend_pageSize(v31, v32, v33, v34, v35, v36);
    v38 = v37.n128_f64[0];
    v40 = v39.n128_f64[0];
    objc_msgSend_p_sideMargins(self, v41, v37, v39, v42, v43);
    v49 = v45.n128_f64[0];
    v50 = (&self->super.super.super.super.super.isa + *MEMORY[0x277D80FC0]);
    if (*v50 != layoutCopy && v50[3] != layoutCopy)
    {
      v51 = v46.n128_f64[0];
      if (v50[1] == layoutCopy || v50[4] == layoutCopy)
      {
        if (objc_msgSend_usesSingleHeaderFooter(self->_headerFooterProvider, v44, v45, v46, v47, v48))
        {
          v45.n128_f64[0] = v38 - v51;
          width = v38 - v51 - v49;
        }

        else
        {
          v46.n128_u64[0] = 0.5;
          v45.n128_f64[0] = (v38 - v49 - v51 - width) * 0.5;
          v49 = v49 + v45.n128_f64[0];
        }
      }

      else
      {
        if (v50[2] != layoutCopy && v50[5] != layoutCopy)
        {
          v52 = MEMORY[0x277D81150];
          v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, v48, "[TPPaginatedPageLayout autosizedFrameForTextLayout:textSize:]");
          v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v60, v61, v62, v63, v64, v53, v59, 1083, 0, "unexpected layout");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67, v68, v69);
        }

        v45.n128_f64[0] = v38 - v51;
        v49 = v38 - v51 - width;
      }
    }

    if (*v50 == layoutCopy || v50[1] == layoutCopy || v50[2] == layoutCopy)
    {
      objc_msgSend_headerMargin(v31, v44, v45, v46, v47, v48);
      v70 = v90;
    }

    else
    {
      if (v50[3] != layoutCopy && v50[4] != layoutCopy && v50[5] != layoutCopy)
      {
        v71 = MEMORY[0x277D81150];
        v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, v48, "[TPPaginatedPageLayout autosizedFrameForTextLayout:textSize:]");
        v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, v74, v75, v76, v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v79, v80, v81, v82, v83, v72, v78, 1098, 0, "unexpected layout");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v84, v85, v86, v87, v88);
      }

      objc_msgSend_footerMargin(v31, v44, v45, v46, v47, v48);
      v70 = v40 - v89 - height;
    }
  }

  else
  {
    v49 = *MEMORY[0x277CBF398];
    v70 = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
  }

  v91 = v49;
  v92 = v70;
  v93 = width;
  v94 = height;
  result.size.height = v94;
  result.size.width = v93;
  result.origin.y = v92;
  result.origin.x = v91;
  return result;
}

- (id)dependentsOfTextLayout:(id)layout
{
  layoutCopy = layout;
  v11 = objc_msgSend_bodyLayout(self, v5, v6, v7, v8, v9);
  if (v11)
  {
    v16 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v10, v12, v13, v14, v15, v11);
  }

  else
  {
    v16 = 0;
  }

  v17 = self + *MEMORY[0x277D80FC0];
  v18 = *(v17 + 1);
  if (v18 == layoutCopy || *(v17 + 4) == layoutCopy)
  {
    if (!v16)
    {
      v16 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v12, v13, v14, v15);
      v18 = *(v17 + 1);
    }

    v19 = &v17[24 * (v18 != layoutCopy)];
    if (*v19)
    {
      objc_msgSend_addObject_(v16, v10, v12, v13, v14, v15);
    }

    if (*(v19 + 2))
    {
      objc_msgSend_addObject_(v16, v10, v12, v13, v14, v15);
    }
  }

  return v16;
}

- (Class)repClassForTextLayout:(id)layout
{
  layoutCopy = layout;
  if ((objc_msgSend_p_isHeaderFooterLayout_(self, v5, v6, v7, v8, v9, layoutCopy) & 1) == 0)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "[TPPaginatedPageLayout repClassForTextLayout:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v23, v24, v25, v26, v27, v16, v22, 1147, 0, "unexpected layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31, v32);
  }

  v33 = objc_opt_class();
  v34 = v33;

  return v33;
}

- (double)maxAutoGrowLineWidthForTextLayout:(id)layout
{
  layoutCopy = layout;
  if (objc_msgSend_p_isHeaderFooterLayout_(self, v5, v6, v7, v8, v9, layoutCopy))
  {
    v15 = objc_msgSend_info(self, v10, v11, v12, v13, v14);
    v21 = objc_msgSend_documentRoot(v15, v16, v17, v18, v19, v20);

    objc_msgSend_pageSize(v21, v22, v23, v24, v25, v26);
    v28 = v27.n128_f64[0];
    v30 = v29.n128_f64[0];
    objc_msgSend_headerMargin(v21, v31, v27, v29, v32, v33);
    v35 = v34.n128_f64[0];
    objc_msgSend_leftMargin(v21, v36, v34, v37, v38, v39);
    v41 = v40.n128_f64[0];
    objc_msgSend_leftMargin(v21, v42, v40, v43, v44, v45);
    v47 = v46.n128_f64[0];
    objc_msgSend_rightMargin(v21, v48, v46, v49, v50, v51);
    v53 = v52.n128_f64[0];
    objc_msgSend_footerMargin(v21, v54, v52, v55, v56, v57);
    v79.size.width = v28 - v47 - v53;
    v79.size.height = v30 - v58;
    v79.origin.x = v35;
    v79.origin.y = v41;
    Width = CGRectGetWidth(v79);
  }

  else
  {
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "[TPPaginatedPageLayout maxAutoGrowLineWidthForTextLayout:]");
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v68, v69, v70, v71, v72, v61, v67, 1157, 0, "unexpected layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76, v77);
    Width = 4000.0;
  }

  return Width;
}

- (double)maxAutoGrowBlockHeightForTextLayout:(id)layout
{
  layoutCopy = layout;
  if ((objc_msgSend_p_isHeaderFooterLayout_(self, v5, v6, v7, v8, v9, layoutCopy) & 1) == 0)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "[TPPaginatedPageLayout maxAutoGrowBlockHeightForTextLayout:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v23, v24, v25, v26, v27, v16, v22, 1172, 0, "unexpected layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31, v32);
  }

  v33 = objc_msgSend_info(self, v10, v11, v12, v13, v14);
  v39 = objc_msgSend_documentRoot(v33, v34, v35, v36, v37, v38);

  objc_msgSend_pageSize(v39, v40, v41, v42, v43, v44);
  v46 = v45.n128_f64[0];
  v48 = v47.n128_f64[0];
  objc_msgSend_headerMargin(v39, v49, v45, v47, v50, v51);
  v53 = v52.n128_f64[0];
  objc_msgSend_leftMargin(v39, v54, v52, v55, v56, v57);
  v59 = v58.n128_f64[0];
  objc_msgSend_leftMargin(v39, v60, v58, v61, v62, v63);
  v65 = v64.n128_f64[0];
  objc_msgSend_rightMargin(v39, v66, v64, v67, v68, v69);
  v71 = v70.n128_f64[0];
  objc_msgSend_footerMargin(v39, v72, v70, v73, v74, v75);
  v79.size.width = v46 - v65 - v71;
  v79.size.height = v48 - v76;
  v79.origin.x = v53;
  v79.origin.y = v59;
  v77 = CGRectGetHeight(v79) * 0.400000006;

  return v77;
}

- (int)naturalAlignmentForTextLayout:(id)layout
{
  layoutCopy = layout;
  if ((objc_msgSend_usesSingleHeaderFooter(self->_headerFooterProvider, v5, v6, v7, v8, v9) & 1) != 0 || (objc_msgSend_storage(layoutCopy, v10, v11, v12, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend_wpKind(v15, v16, v17, v18, v19, v20), v15, v21 != 1))
  {
    v45 = 4;
  }

  else
  {
    v27 = objc_msgSend_info(self, v22, v23, v24, v25, v26);
    v33 = objc_msgSend_documentRoot(v27, v28, v29, v30, v31, v32);
    v39 = objc_msgSend_storage(layoutCopy, v34, v35, v36, v37, v38);
    v45 = objc_msgSend_naturalAlignmentAtCharIndex_inTextStorage_(v33, v40, v41, v42, v43, v44, 0, v39);
  }

  return v45;
}

- (void)validate
{
  isValidating = objc_msgSend_isValidating(self, a2, v2, v3, v4, v5);
  if (isValidating)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, v12, "[TPPaginatedPageLayout validate]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v22, v23, v24, v25, v14, v20, 1206, 0, "Reentrant call to -validate");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29, v30);
  }

  objc_msgSend_setValidating_(self, v7, v9, v10, v11, v12, 1);
  v291.receiver = self;
  v291.super_class = TPPaginatedPageLayout;
  [(TPPageLayout *)&v291 validate];
  objc_msgSend_p_updateFromLayoutInfoProvider(self, v31, v32, v33, v34, v35);
  if (!self->_childLayoutsValid)
  {
    objc_msgSend_p_removeInlineLayoutsFromPageLayout(self, v36, v37, v38, v39, v40);
    objc_msgSend_p_removeNoLongerInlineLayoutsFromBodyLayout(self, v41, v42, v43, v44, v45);
    oldChildLayouts = self->_oldChildLayouts;
    self->_oldChildLayouts = 0;

    v47 = objc_alloc_init(MEMORY[0x277D81308]);
    v48 = self->_oldChildLayouts;
    self->_oldChildLayouts = v47;

    v54 = objc_msgSend_children(self, v49, v50, v51, v52, v53);
    objc_msgSend_p_populateOldChildLayoutsWithLayouts_(self, v55, v56, v57, v58, v59, v54);

    v280 = objc_opt_new();
    contentFlags = self->_contentFlags;
    if (contentFlags)
    {
      v66 = objc_msgSend_p_insertBodyLayout(self, v60, v61, v62, v63, v64);
      objc_msgSend_tsu_addNonNilObject_(v280, v67, v68, v69, v70, v71, v66);

      contentFlags = self->_contentFlags;
    }

    if ((contentFlags & 2) != 0)
    {
      v72 = objc_msgSend_p_insertValidatedFloatingLayouts(self, v60, v61, v62, v63, v64);
      objc_msgSend_addObjectsFromArray_(v280, v73, v74, v75, v76, v77, v72);

      contentFlags = self->_contentFlags;
    }

    if ((contentFlags & 4) != 0)
    {
      v78 = objc_msgSend_p_insertValidatedMasterLayouts(self, v60, v61, v62, v63, v64);
      objc_msgSend_addObjectsFromArray_(v280, v79, v80, v81, v82, v83, v78);

      contentFlags = self->_contentFlags;
    }

    if ((contentFlags & 8) != 0)
    {
      LOBYTE(v287) = 0;
      v84 = objc_msgSend_i_insertValidatedHeaderFooterLayouts_(self, v60, v61, v62, v63, v64, &v287);
      objc_msgSend_addObjectsFromArray_(v280, v85, v86, v87, v88, v89, v84);

      if (v287 == 1)
      {
        v90 = objc_msgSend_bodyLayout(self, v60, v61, v62, v63, v64);
        objc_msgSend_invalidateSize(v90, v91, v92, v93, v94, v95);
        objc_msgSend_invalidatePosition(v90, v96, v97, v98, v99, v100);
      }

      contentFlags = self->_contentFlags;
    }

    if ((contentFlags & 0x10) != 0)
    {
      v101 = objc_msgSend_p_insertFootnoteContainerLayout(self, v60, v61, v62, v63, v64);
      objc_msgSend_tsu_addNonNilObject_(v280, v102, v103, v104, v105, v106, v101);
    }

    objc_msgSend_setChildren_(self, v60, v61, v62, v63, v64, v280);
    objc_msgSend_p_sortChildLayouts(self, v107, v108, v109, v110, v111);
    v117 = self->_contentFlags;
    if (v117)
    {
      v119 = objc_msgSend_bodyLayout(self, v112, v113, v114, v115, v116);
      if (v119)
      {
        v124 = objc_msgSend_layoutController(self, v118, v120, v121, v122, v123);
        objc_msgSend_validateLayoutWithDependencies_(v124, v125, v126, v127, v128, v129, v119);
      }

      objc_msgSend_p_validateTextLayoutsForExteriorWrapAffectedByAnchoredAttachments(self, v118, v120, v121, v122, v123);

      v117 = self->_contentFlags;
    }

    if ((v117 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    v131 = objc_msgSend_footnoteContainerLayout(self, v112, v113, v114, v115, v116);
    if (!v131)
    {
LABEL_42:

      v117 = self->_contentFlags;
LABEL_43:
      if ((v117 & 1) == 0 || !objc_msgSend_count(self->_oldChildLayouts, v112, v113, v114, v115, v116))
      {
        v256 = self->_oldChildLayouts;
        self->_oldChildLayouts = 0;
      }

      self->_childLayoutsValid = 1;

      goto LABEL_47;
    }

    v136 = objc_msgSend_layoutController(self, v130, v132, v133, v134, v135);
    objc_msgSend_validateLayoutWithDependencies_(v136, v137, v138, v139, v140, v141, v131);

    v148 = objc_msgSend_bodyLayout(self, v142, v143, v144, v145, v146);
    if (!v148 || (objc_msgSend_children(v131, v147, v149, v150, v151, v152), v153 = objc_claimAutoreleasedReturnValue(), v159 = objc_msgSend_count(v153, v154, v155, v156, v157, v158), v153, !v159))
    {
LABEL_41:

      goto LABEL_42;
    }

    objc_msgSend_alignmentFrame(v148, v160, v161, v162, v163, v164);
    v166 = v165.n128_f64[0];
    v168 = v167.n128_f64[0];
    objc_msgSend_alignmentFrame(v131, v169, v170, v171, v165, v167);
    v173 = v172.n128_f64[0];
    v175 = v174.n128_f64[0];
    v177 = v176.n128_f64[0];
    v179 = v178.n128_f64[0];
    IsVertical = objc_msgSend_textIsVertical(v148, v180, v172, v174, v176, v178);
    v275 = TSUNearlyContainsRect();
    v278 = IsVertical;
    if (IsVertical)
    {
      TSURectGetMaxPoint();
      TSURectGetMaxPoint();
    }

    v276 = TSUPointsAlmostEqual();
    v287 = 0;
    v288 = &v287;
    v182.n128_u64[0] = 0x2020000000;
    v289 = 0x2020000000;
    v290 = 1;
    v283 = 0;
    v284 = &v283;
    v285 = 0x2020000000;
    v286 = 0x7FF0000000000000;
    v187 = objc_msgSend_columns(v148, v183, v182, v184, v185, v186);
    v282[0] = MEMORY[0x277D85DD0];
    v188.n128_u64[0] = 3221225472;
    v282[1] = 3221225472;
    v282[2] = sub_275FC9850;
    v282[3] = &unk_27A6A83F0;
    v282[4] = &v287;
    v282[5] = &v283;
    objc_msgSend_enumerateObjectsUsingBlock_(v187, v189, v188, v190, v191, v192, v282);

    v198 = objc_msgSend_geometry(v148, v193, v194, v195, v196, v197);
    objc_msgSend_frame(v198, v199, v200, v201, v202, v203);
    v284[3] = v204 + v284[3];

    if (v288[3] & v276)
    {
      if (IsVertical)
      {
        v210 = v177 > v166;
LABEL_30:
        v212 = objc_msgSend_info(self, v205, v206, v207, v208, v209);
        v279 = objc_msgSend_documentRoot(v212, v213, v214, v215, v216, v217);
        v223 = objc_msgSend_settings(v279, v218, v219, v220, v221, v222);
        v277 = v210;
        if (objc_msgSend_hasFacingPages(v223, v224, v225, v226, v227, v228))
        {
          v229 = v284[3];
          v292.origin.x = v173;
          v292.origin.y = v175;
          v292.size.width = v177;
          v292.size.height = v179;
          MaxX = CGRectGetMaxX(v292);
          v231 = v212;
          v211 = vabdd_f64(v229, MaxX) < 0.00999999978 || v229 == MaxX;
        }

        else
        {
          v231 = v212;
          v211 = 0;
        }

        v210 = v277;
        goto LABEL_37;
      }

      v211 = 0;
      v210 = v179 > v168;
    }

    else
    {
      v210 = 0;
      v211 = 0;
      if (v278)
      {
        goto LABEL_30;
      }
    }

LABEL_37:
    if (((v275 | v210) & 1) == 0 && !v211)
    {
      v232 = MEMORY[0x277D81150];
      v233 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v205, v206, v207, v208, v209, "[TPPaginatedPageLayout validate]");
      v239 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v234, v235, v236, v237, v238, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm");
      v245 = objc_msgSend_pageIndex(self, v240, v241, v242, v243, v244);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v232, v246, v247, v248, v249, v250, v233, v239, 1308, 0, "footnote layout spills outside of body rect on page #%lu", v245 + 1);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v251, v252, v253, v254, v255);
    }

    _Block_object_dispose(&v283, 8);
    _Block_object_dispose(&v287, 8);
    goto LABEL_41;
  }

LABEL_47:
  if ((self->_contentFlags & 2) != 0)
  {
    objc_opt_class();
    v262 = objc_msgSend_info(self, v257, v258, v259, v260, v261);
    v268 = objc_msgSend_pageController(v262, v263, v264, v265, v266, v267);
    v269 = TSUDynamicCast();

    v281[0] = MEMORY[0x277D85DD0];
    v270.n128_u64[0] = 3221225472;
    v281[1] = 3221225472;
    v281[2] = sub_275FC98E8;
    v281[3] = &unk_27A6A8418;
    v281[4] = v269;
    v281[5] = self;
    objc_msgSend_accquireLockAndPerformAction_(v269, v271, v270, v272, v273, v274, v281);
  }

  objc_msgSend_setValidating_(self, v36, v37, v38, v39, v40, isValidating);
}

- (void)evacuateOldChildLayoutCache
{
  oldChildLayouts = self->_oldChildLayouts;
  self->_oldChildLayouts = 0;
}

- (UIEdgeInsets)adjustedInsetsForTarget:(id)target
{
  v3 = *MEMORY[0x277D81428];
  v4 = *(MEMORY[0x277D81428] + 8);
  v5 = *(MEMORY[0x277D81428] + 16);
  v6 = *(MEMORY[0x277D81428] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap
{
  if (outWidth)
  {
    *outWidth = width;
  }

  if (gap)
  {
    *gap = 0.0;
  }

  return 0.0;
}

- (BOOL)textIsVertical
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPaginatedPageLayout textIsVertical]");
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v14, v15, v16, v17, v18, v7, v13, 1394, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22, v23);
  v24 = MEMORY[0x277CBEAD8];
  v25 = *MEMORY[0x277CBE658];
  v31 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, v27, v28, v29, v30, @"%s: %s", "Do not call method", "[TPPaginatedPageLayout textIsVertical]");
  v37 = objc_msgSend_exceptionWithName_reason_userInfo_(v24, v32, v33, v34, v35, v36, v25, v31, 0);
  v38 = v37;

  objc_exception_throw(v37);
}

- (BOOL)marginsAreMirrored
{
  v7 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_documentRoot(v7, v8, v9, v10, v11, v12);

  v19 = objc_msgSend_settings(v13, v14, v15, v16, v17, v18);
  hasFacingPages = objc_msgSend_hasFacingPages(v19, v20, v21, v22, v23, v24);

  if (hasFacingPages)
  {
    v31 = objc_msgSend_info(self, v26, v27, v28, v29, v30);
    v37 = objc_msgSend_pageIndex(v31, v32, v33, v34, v35, v36);
    v48 = (objc_msgSend_laysOutBodyVertically(v13, v38, v39, v40, v41, v42) & 1) == 0 && objc_msgSend_writingDirection(v13, v43, v44, v45, v46, v47) != 2;
    v49 = (v37 & 1) == v48;
  }

  else
  {
    v49 = 0;
  }

  return v49;
}

- (id)p_orderedChildInfos
{
  v6 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  objc_opt_class();
  v7 = TSUDynamicCast();
  v13 = objc_msgSend_bodyInfo(v6, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_floatingDrawableInfos(v7, v14, v15, v16, v17, v18);
  if (objc_msgSend_count(v19, v20, v21, v22, v23, v24))
  {
    v97 = objc_msgSend_documentRoot(v6, v25, v26, v27, v28, v29);
    v35 = objc_msgSend_bodyStorage(v97, v30, v31, v32, v33, v34);
    v36 = objc_alloc(MEMORY[0x277CBEB58]);
    v42 = objc_msgSend_initWithArray_(v36, v37, v38, v39, v40, v41, v19);
    v48 = v42;
    if (v13)
    {
      objc_msgSend_addObject_(v42, v43, v44, v45, v46, v47, v35);
    }

    v49 = objc_msgSend_orderedDrawables_(v7, v43, v44, v45, v46, v47, v48);
    v55 = objc_msgSend_mutableCopy(v49, v50, v51, v52, v53, v54);

    if (v13)
    {
      v62 = objc_msgSend_indexOfObject_(v55, v56, v57, v58, v59, v60, v35);
      if (v62 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v96 = MEMORY[0x277D81150];
        v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v63, v64, v65, v66, "[TPPaginatedPageLayout p_orderedChildInfos]");
        v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v96, v74, v75, v76, v77, v78, v67, v73, 1461, 0, "cannot find index of body storage");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82, v83);
      }

      objc_msgSend_setObject_atIndexedSubscript_(v55, v61, v63, v64, v65, v66, v13, v62);
    }
  }

  else if (v13)
  {
    v84 = objc_alloc(MEMORY[0x277CBEB18]);
    v55 = objc_msgSend_initWithCapacity_(v84, v85, v86, v87, v88, v89, 1);
    objc_msgSend_addObject_(v55, v90, v91, v92, v93, v94, v13);
  }

  else
  {
    v55 = 0;
  }

  return v55;
}

- (void)p_updateFromLayoutInfoProvider
{
  v94 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_layoutInfoProvider(v94, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_pageIndex(v94, v13, v14, v15, v16, v17);
  if (!objc_msgSend_canProvideInfoForPageIndex_(v12, v19, v20, v21, v22, v23, v18))
  {
    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, v28, "[TPPaginatedPageLayout p_updateFromLayoutInfoProvider]");
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v57, v58, v59, v60, v61, v50, v56, 1519, 0, "Unable to configure page.  Pagination not complete?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64, v65, v66);
    goto LABEL_9;
  }

  v29 = objc_msgSend_headerFooterProviderForPageIndex_(v12, v24, v25, v26, v27, v28, v18);
  v35 = objc_msgSend_sectionTemplateDrawableProviderForPageIndex_(v12, v30, v31, v32, v33, v34, v18);
  v41 = objc_msgSend_pageIndex(v94, v36, v37, v38, v39, v40);
  v47 = objc_msgSend_contentFlagsForPageIndex_(v12, v42, v43, v44, v45, v46, v41);
  if (v29 != self->_headerFooterProvider)
  {
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_sectionTemplateDrawableProvider);
  if (v35 != WeakRetained)
  {

LABEL_7:
    objc_storeStrong(&self->_headerFooterProvider, v29);
    objc_storeWeak(&self->_sectionTemplateDrawableProvider, v35);
    self->_contentFlags = v47;
    self->_childLayoutsValid = 0;
    goto LABEL_8;
  }

  contentFlags = self->_contentFlags;

  if (v47 != contentFlags)
  {
    goto LABEL_7;
  }

LABEL_8:
  self->_pageNumber = objc_msgSend_pageNumberForPageIndex_(v12, v68, v69, v70, v71, v72, v18);
  self->_pageCount = objc_msgSend_pageCountForPageIndex_(v12, v73, v74, v75, v76, v77, v18);
  self->_shouldHeaderFooterBeVisible = objc_msgSend_shouldHeaderFooterBeVisibleForPageIndex_(v12, v78, v79, v80, v81, v82, v18);
  v88 = objc_msgSend_backgroundFillForPageIndex_(v12, v83, v84, v85, v86, v87, v18);
  objc_msgSend_setBackgroundFill_(self, v89, v90, v91, v92, v93, v88);

LABEL_9:
}

- (id)p_insertChildLayoutForInfo:(id)info
{
  infoCopy = info;
  v11 = objc_msgSend_p_existingChildLayoutForInfo_(self, v5, v6, v7, v8, v9, infoCopy);
  if (!v11)
  {
    v16 = objc_alloc(objc_msgSend_layoutClass(infoCopy, v10, v12, v13, v14, v15));
    v11 = objc_msgSend_initWithInfo_(v16, v17, v18, v19, v20, v21, infoCopy);
  }

  v22 = objc_msgSend_parent(v11, v10, v12, v13, v14, v15);

  if (v22 != self)
  {
    objc_msgSend_addChild_(self, v23, v24, v25, v26, v27, v11);
  }

  return v11;
}

- (id)p_insertValidatedChildLayoutForInfo:(id)info
{
  v8 = objc_msgSend_p_insertChildLayoutForInfo_(self, a2, v3, v4, v5, v6, info);
  v14 = v8;
  if (v8)
  {
    objc_msgSend_updateChildrenFromInfo(v8, v9, v10, v11, v12, v13);
    v20 = objc_msgSend_layoutController(self, v15, v16, v17, v18, v19);
    objc_msgSend_validateLayoutWithDependencies_(v20, v21, v22, v23, v24, v25, v14);
  }

  return v14;
}

- (id)p_existingChildLayoutForInfo:(id)info
{
  infoCopy = info;
  v10 = objc_msgSend_layoutController(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_layoutForInfo_childOfLayout_(v10, v11, v12, v13, v14, v15, infoCopy, self);

  if (!v16)
  {
    v16 = objc_msgSend_objectForKeyedSubscript_(self->_oldChildLayouts, v17, v18, v19, v20, v21, infoCopy);
  }

  return v16;
}

- (id)p_insertValidatedMasterLayouts
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_sectionTemplateDrawableProvider);
  v10 = objc_msgSend_sectionTemplateDrawables(WeakRetained, v5, v6, v7, v8, v9, 0);

  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, v15, &v69, v73, 16);
  if (v17)
  {
    v22 = *v70;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v70 != v22)
        {
          objc_enumerationMutation(v10);
        }

        v24 = objc_msgSend_p_insertChildLayoutForInfo_(self, v16, v18, v19, v20, v21, *(*(&v69 + 1) + 8 * i));
        objc_msgSend_updateChildrenFromInfo(v24, v25, v26, v27, v28, v29);
        objc_msgSend_addObject_(v3, v30, v31, v32, v33, v34, v24);
        if (objc_msgSend_invalidGeometry(v24, v35, v36, v37, v38, v39))
        {
          v45 = objc_msgSend_layoutController(self, v40, v41, v42, v43, v44);
          objc_msgSend_invalidateLayout_(v45, v46, v47, v48, v49, v50, v24);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, v18, v19, v20, v21, &v69, v73, 16);
    }

    while (v17);
  }

  v56 = objc_msgSend_layoutController(self, v51, v52, v53, v54, v55);
  v62 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v57, v58, v59, v60, v61, v3);
  objc_msgSend_validateLayoutsWithDependencies_(v56, v63, v64, v65, v66, v67, v62);

  return v3;
}

- (id)p_insertValidatedFloatingLayouts
{
  v160 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  selfCopy = self;
  v8 = objc_msgSend_info(self, v3, v4, v5, v6, v7);
  v9 = TSUDynamicCast();

  v146 = v9;
  if (v9)
  {
    v145 = objc_msgSend_floatingDrawableInfos(v9, v10, v11, v12, v13, v14);
    v148 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (objc_msgSend_count(v145, v15, v16, v17, v18, v19))
    {
      v25 = objc_msgSend_info(selfCopy, v20, v21, v22, v23, v24);
      v31 = objc_msgSend_bodyInfo(v25, v26, v27, v28, v29, v30);

      v144 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v37 = objc_msgSend_children(selfCopy, v32, v33, v34, v35, v36);
      objc_msgSend_makeObjectsPerformSelector_withObject_(v37, v38, v39, v40, v41, v42, sel_recursivelyAddLayoutAndChildrenToSet_, v144);

      objc_msgSend_p_orderedChildInfos(selfCopy, v43, v44, v45, v46, v47);
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      obj = v155 = 0u;
      v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v48, v49, v50, v51, v52, &v154, v159, 16);
      if (v54)
      {
        v59 = *v155;
        do
        {
          for (i = 0; i != v54; ++i)
          {
            if (*v155 != v59)
            {
              objc_enumerationMutation(obj);
            }

            if (*(*(&v154 + 1) + 8 * i) != v31)
            {
              v61 = objc_msgSend_p_insertChildLayoutForInfo_(selfCopy, v53, v55, v56, v57, v58);
              objc_msgSend_updateChildrenFromInfo(v61, v62, v63, v64, v65, v66);
              objc_msgSend_addObject_(v148, v67, v68, v69, v70, v71, v61);
            }
          }

          v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v53, v55, v56, v57, v58, &v154, v159, 16);
        }

        while (v54);
      }

      v72 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v78 = objc_msgSend_children(selfCopy, v73, v74, v75, v76, v77);
      objc_msgSend_makeObjectsPerformSelector_withObject_(v78, v79, v80, v81, v82, v83, sel_recursivelyAddLayoutAndChildrenToSet_, v72);

      objc_msgSend_minusSet_(v72, v84, v85, v86, v87, v88, v144);
      v152 = 0u;
      v153 = 0u;
      v150 = 0u;
      v151 = 0u;
      v89 = v144;
      v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v90, v91, v92, v93, v94, &v150, v158, 16);
      if (v95)
      {
        v96 = *v151;
        do
        {
          for (j = 0; j != v95; ++j)
          {
            if (*v151 != v96)
            {
              objc_enumerationMutation(v89);
            }

            objc_opt_class();
            v98 = TSUDynamicCast();
            if (objc_msgSend_textLayoutValid(v98, v99, v100, v101, v102, v103))
            {
              v109 = objc_msgSend_reliedOnLayouts(v98, v104, v105, v106, v107, v108);
              v115 = objc_msgSend_intersectsSet_(v109, v110, v111, v112, v113, v114, v72);

              if (v115)
              {
                objc_msgSend_invalidateTextLayout(v98, v116, v117, v118, v119, v120);
              }
            }
          }

          v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v121, v122, v123, v124, v125, &v150, v158, 16);
        }

        while (v95);
      }

      v131 = objc_msgSend_layoutController(selfCopy, v126, v127, v128, v129, v130);
      v137 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v132, v133, v134, v135, v136, v148);
      objc_msgSend_validateLayoutsWithDependencies_(v131, v138, v139, v140, v141, v142, v137);
    }
  }

  else
  {
    v148 = MEMORY[0x277CBEBF8];
  }

  return v148;
}

- (void)p_validateTextLayoutsForExteriorWrapAffectedByAnchoredAttachments
{
  v100 = *MEMORY[0x277D85DE8];
  v92 = 0;
  v93 = &v92;
  v94 = 0x4012000000;
  v95 = sub_275FCAD88;
  v96 = nullsub_1;
  v97 = &unk_2760658C2;
  v98 = *MEMORY[0x277D81490];
  v6 = objc_msgSend_bodyLayout(self, a2, v98, v2, v3, v4);
  v12 = objc_msgSend_columns(v6, v7, v8, v9, v10, v11);
  v91[0] = MEMORY[0x277D85DD0];
  v13.n128_u64[0] = 3221225472;
  v91[1] = 3221225472;
  v91[2] = sub_275FCAD98;
  v91[3] = &unk_27A6A8268;
  v91[4] = &v92;
  objc_msgSend_enumerateObjectsUsingBlock_(v12, v14, v13, v15, v16, v17, v91);

  if (v93[7])
  {
    v23 = objc_msgSend_layoutController(self, v18, v19, v20, v21, v22);
    v29 = objc_msgSend_info(self, v24, v25, v26, v27, v28);
    v35 = objc_msgSend_documentRoot(v29, v30, v31, v32, v33, v34);
    v41 = objc_msgSend_bodyStorage(v35, v36, v37, v38, v39, v40);

    v47 = objc_msgSend_attachmentIndexRangeForTextRange_(v41, v42, v43, v44, v45, v46, v93[6], v93[7]);
    v49 = v48;
    if (v47 < v47 + v48)
    {
      while (1)
      {
        objc_opt_class();
        v55 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(v41, v50, v51, v52, v53, v54, v47, 0);
        v56 = TSUDynamicCast();

        if (v56)
        {
          if (objc_msgSend_isAnchored(v56, v57, v58, v59, v60, v61))
          {
            break;
          }
        }

        ++v47;
        if (!--v49)
        {
          goto LABEL_17;
        }
      }

      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v66 = objc_msgSend_childTextLayoutsForExteriorWrap(self, v62, 0, v63, v64, v65, 0);
      v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, v68, v69, v70, v71, &v87, v99, 16);
      if (v73)
      {
        v78 = *v88;
        do
        {
          for (i = 0; i != v73; ++i)
          {
            if (*v88 != v78)
            {
              objc_enumerationMutation(v66);
            }

            v80 = *(*(&v87 + 1) + 8 * i);
            v82 = objc_msgSend_layoutController(v80, v72, v74, v75, v76, v77);
            if (v82 == v23)
            {
              objc_msgSend_tp_validateTextLayoutForcibly(v80, v81, v83, v84, v85, v86);
            }
          }

          v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v72, v74, v75, v76, v77, &v87, v99, 16);
        }

        while (v73);
      }
    }

LABEL_17:
  }

  _Block_object_dispose(&v92, 8);
}

- (id)p_insertBodyLayout
{
  v7 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_bodyInfo(v7, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_p_insertChildLayoutForInfo_(self, v14, v15, v16, v17, v18, v13);

  return v19;
}

- (id)p_insertFootnoteContainerLayout
{
  v7 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_documentRoot(v7, v8, v9, v10, v11, v12);

  footnoteContainerLayout = self->_footnoteContainerLayout;
  if (!footnoteContainerLayout)
  {
    objc_msgSend_bodyRect(self, v14, v15, v16, v17, v18);
    v21 = v20.n128_f64[0];
    v23 = v22.n128_f64[0];
    v27 = objc_msgSend_laysOutBodyVertically(v13, v24, v25, v26, v20, v22);
    v33 = objc_msgSend_settings(v13, v28, v29, v30, v31, v32);
    hasFacingPages = objc_msgSend_hasFacingPages(v33, v34, v35, v36, v37, v38);

    if (v27)
    {
      v45 = v23;
    }

    else
    {
      v45 = v21;
    }

    if (v27)
    {
      v23 = v21;
    }

    objc_msgSend_footnoteGap(v13, v40, v41, v42, v43, v44);
    v47 = v46;
    v48 = [TPInflatableFootnoteContainerLayout alloc];
    v54 = objc_msgSend_info(self, v49, v50, v51, v52, v53);
    v61 = objc_msgSend_pageController(v54, v55, v56, v57, v58, v59);
    v65.n128_u64[0] = 0x3FECCCCCC0000000;
    if ((v27 & hasFacingPages) != 0)
    {
      v65.n128_f64[0] = 1.0;
    }

    v62.n128_f64[0] = v23 * v65.n128_f64[0];
    v65.n128_f64[0] = v45;
    v63.n128_u64[0] = v47;
    v66 = objc_msgSend_initWithFootnoteMarkProvider_vertical_lineWidth_maxFootnoteBlockHeight_footnoteSpacing_(v48, v60, v65, v62, v63, v64, v61, v27);
    v67 = self->_footnoteContainerLayout;
    self->_footnoteContainerLayout = v66;

    v73 = objc_msgSend_footnoteKind(v13, v68, v69, v70, v71, v72) != 1;
    objc_msgSend_setIncludeFootnoteSeparatorLine_(self->_footnoteContainerLayout, v74, v75, v76, v77, v78, v73);
    footnoteContainerLayout = self->_footnoteContainerLayout;
  }

  v79 = objc_msgSend_parent(footnoteContainerLayout, v14, v15, v16, v17, v18);

  if (v79 != self)
  {
    objc_msgSend_addChild_(self, v80, v81, v82, v83, v84, self->_footnoteContainerLayout);
  }

  v85 = self->_footnoteContainerLayout;
  v86 = v85;

  return v85;
}

- (void)p_populateOldChildLayoutsWithLayouts:(id)layouts
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  layoutsCopy = layouts;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(layoutsCopy, v5, v6, v7, v8, v9, &v31, v35, 16);
  if (v11)
  {
    v16 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(layoutsCopy);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        v20 = objc_msgSend_info(v18, v10, v12, v13, v14, v15, v31);
        if (v20)
        {
          objc_msgSend_setObject_forUncopiedKey_(self->_oldChildLayouts, v19, v21, v22, v23, v24, v18, v20);
        }

        v25 = objc_msgSend_children(v18, v19, v21, v22, v23, v24);
        objc_msgSend_p_populateOldChildLayoutsWithLayouts_(self, v26, v27, v28, v29, v30, v25);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(layoutsCopy, v10, v12, v13, v14, v15, &v31, v35, 16);
    }

    while (v11);
  }
}

- (void)p_sortChildLayouts
{
  objc_opt_class();
  v8 = objc_msgSend_info(self, v3, v4, v5, v6, v7);
  v9 = TSUDynamicCast();

  if (v9)
  {
    objc_opt_class();
    v15 = objc_msgSend_children(self, v10, v11, v12, v13, v14);
    v16 = TSUCheckedDynamicCast();

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_275FCB39C;
    v22[3] = &unk_27A6A8440;
    v22[4] = self;
    v23 = v9;
    objc_msgSend_sortUsingComparator_(v16, v17, v18, v19, v20, v21, v22);
  }
}

- (BOOL)p_isHeaderFooterLayout:(id)layout
{
  layoutCopy = layout;
  v5 = 0;
  v6 = MEMORY[0x277D80FC0];
  while (!v5)
  {
    v5 = 0;
    while (!v5)
    {
      v5 = *(&self->super.super.super.super.super.isa + *v6) == layoutCopy;
      operator++();
    }

    operator++();
  }

  return v5;
}

- (void)p_removeInlineLayoutsFromPageLayout
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_children(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_copy(v6, v7, v8, v9, v10, v11);

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = v12;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v15, v16, v17, v18, &v35, v39, 16);
  if (v20)
  {
    v25 = *v36;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(v13);
        }

        v27 = *(*(&v35 + 1) + 8 * i);
        v28 = objc_msgSend_info(v27, v19, v21, v22, v23, v24, v35);
        isInlineWithText = objc_msgSend_isInlineWithText(v28, v29, v30, v31, v32, v33);

        if (isInlineWithText)
        {
          objc_msgSend_removeFromParent(v27, v19, v21, v22, v23, v24);
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v19, v21, v22, v23, v24, &v35, v39, 16);
    }

    while (v20);
  }
}

- (void)p_removeNoLongerInlineLayoutsFromBodyLayout
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_bodyLayout(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_children(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_copy(v12, v13, v14, v15, v16, v17);

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v19 = v18;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, v21, v22, v23, v24, &v41, v45, 16);
  if (v26)
  {
    v31 = *v42;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(v19);
        }

        v33 = *(*(&v41 + 1) + 8 * i);
        v34 = objc_msgSend_info(v33, v25, v27, v28, v29, v30, v41);
        isInlineWithText = objc_msgSend_isInlineWithText(v34, v35, v36, v37, v38, v39);

        if ((isInlineWithText & 1) == 0)
        {
          objc_msgSend_removeFromParent(v33, v25, v27, v28, v29, v30);
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v25, v27, v28, v29, v30, &v41, v45, 16);
    }

    while (v26);
  }
}

- (pair<double,)p_sideMargins
{
  v7 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_documentRoot(v7, v8, v9, v10, v11, v12);

  if (objc_msgSend_marginsAreMirrored(self, v14, v15, v16, v17, v18))
  {
    objc_msgSend_rightMargin(v13, v19, v20, v21, v22, v23);
    v25 = v24.n128_u64[0];
    objc_msgSend_leftMargin(v13, v26, v24, v27, v28, v29);
  }

  else
  {
    objc_msgSend_leftMargin(v13, v19, v20, v21, v22, v23);
    v25 = v31.n128_u64[0];
    objc_msgSend_rightMargin(v13, v32, v31, v33, v34, v35);
  }

  v36 = v30;

  v37 = *&v25;
  v38 = v36;
  result.var1 = v38;
  result.var0 = v37;
  return result;
}

- (TPMasterDrawableProvider)masterDrawableProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_masterDrawableProvider);

  return WeakRetained;
}

- (void)p_addLayoutsForInfos:(id)infos toArray:(id)array
{
  v78 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  arrayCopy = array;
  v67 = objc_msgSend_layoutController(self, v7, v8, v9, v10, v11);
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = infosCopy;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, v13, v14, v15, v16, &v72, v77, 16);
  if (v18)
  {
    v65 = *v73;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v73 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v72 + 1) + 8 * i);
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v24 = objc_msgSend_layoutsForInfo_(v67, v17, 0, v19, v20, v21, v23);
        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, v26, v27, v28, v29, &v68, v76, 16);
        if (v30)
        {
          v31 = 0;
          v32 = *v69;
LABEL_8:
          v33 = 0;
          v34 = v31;
          while (1)
          {
            if (*v69 != v32)
            {
              objc_enumerationMutation(v24);
            }

            v31 = *(*(&v68 + 1) + 8 * v33);

            v40 = objc_msgSend_parent(v31, v35, v36, v37, v38, v39);
            v41 = v40 == self;

            if (v41)
            {
              break;
            }

            ++v33;
            v34 = v31;
            if (v30 == v33)
            {
              v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v42, v43, v44, v45, v46, &v68, v76, 16);
              if (v30)
              {
                goto LABEL_8;
              }

              goto LABEL_15;
            }
          }

          if (v31)
          {
            goto LABEL_18;
          }
        }

        else
        {
LABEL_15:
        }

        v52 = objc_alloc(objc_msgSend_layoutClass(v23, v47, v48, v49, v50, v51));
        v31 = objc_msgSend_initWithInfo_(v52, v53, v54, v55, v56, v57, v23);
        objc_msgSend_updateChildrenFromInfo(v31, v58, v59, v60, v61, v62);
LABEL_18:
        objc_msgSend_addObject_(arrayCopy, v47, v48, v49, v50, v51, v31);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, v63, v19, v20, v21, &v72, v77, 16);
    }

    while (v18);
  }
}

@end
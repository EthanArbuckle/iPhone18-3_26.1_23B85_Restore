@interface TPBodyLayout
+ (CGSize)minimumBodySize;
- (BOOL)canHaveFootnotesFromPreviousTarget:(id)target;
- (BOOL)containsStartOfPencilAnnotation:(id)annotation;
- (BOOL)containsStartOfRange:(_NSRange)range;
- (BOOL)excludeFromNearestVisibleRectSearchForSelectionPath:(id)path;
- (BOOL)invalidateForPageCountChange;
- (BOOL)isFootnoteContainerOnSamePageAsTarget:(id)target;
- (BOOL)isLayoutOffscreen;
- (BOOL)layoutIsValid;
- (BOOL)marginsAreMirrored;
- (BOOL)processWidowAndInflation;
- (BOOL)selectionMustBeEntirelyOnscreenToCountAsVisibleInSelectionPath:(id)path;
- (BOOL)shouldInvalidateSizeWhenInvalidateSizeOfReliedOnLayout:(id)layout;
- (BOOL)textIsVertical;
- (CGPoint)activityLineUnscaledEndPointForSearchReference:(id)reference;
- (CGPoint)anchorPoint;
- (CGPoint)anchoredAttachmentPositionFromLayoutPosition:(CGPoint)position;
- (CGPoint)calculatePointFromSearchReference:(id)reference;
- (CGPoint)capturedInfoPositionForAttachment;
- (CGPoint)layoutPositionFromAnchoredAttachmentPosition:(CGPoint)position;
- (CGPoint)position;
- (CGRect)p_rectForSelection:(id)selection useParagraphModeRects:(BOOL)rects;
- (CGRect)rectForPresentingAnnotationPopoverForSelectionPath:(id)path;
- (CGRect)rectForSelection:(id)selection;
- (CGRect)rectInRootForPresentingAnnotationPopoverForSelectionPath:(id)path;
- (CGRect)rectInRootForSelectionPath:(id)path;
- (CGRect)rectInRootOfAutoZoomContextOfSelectionPath:(id)path;
- (CGRect)targetRectForCanvasRect:(CGRect)rect;
- (CGSize)currentSize;
- (CGSize)maxSize;
- (CGSize)maximumFrameSizeForChild:(id)child;
- (CGSize)minSize;
- (TSDCanvas)canvas;
- (TSDHint)nextTargetFirstChildHint;
- (TSWPFootnoteHeightMeasurer)footnoteHeightMeasurer;
- (TSWPOffscreenColumn)nextTargetFirstColumn;
- (TSWPOffscreenColumn)previousTargetLastColumn;
- (TSWPStorage)storage;
- (TSWPTopicNumberHints)nextTargetTopicNumberHints;
- (double)contentBlockHeight;
- (double)maxAnchorInBlockDirection;
- (id)addPartitionableAttachmentLayout:(id)layout;
- (id)columnMetricsForCharIndex:(unint64_t)index outRange:(_NSRange *)range;
- (id)computeLayoutGeometry;
- (id)containedPencilAnnotations;
- (id)currentAnchoredDrawableLayouts;
- (id)existingAttachmentLayoutForInfo:(id)info;
- (id)layoutForInlineDrawable:(id)drawable;
- (id)p_layoutForDrawable:(id)drawable inContainingLayout:(id)layout;
- (id)pageController;
- (id)unscaledCommentFlagAnchorInfoForSearchReference:(id)reference;
- (id)unscaledContentRectsToAvoidPencilAnnotationOverlap;
- (id)validatedLayoutForAnchoredDrawable:(id)drawable;
- (unint64_t)pageCount;
- (unint64_t)pageNumber;
- (void)addAttachmentLayout:(id)layout;
- (void)clearHiddenInlineDrawableLayoutMarks;
- (void)insertChild:(id)child atIndex:(unint64_t)index;
- (void)invalidateSize;
- (void)markHiddenInlineDrawableLayout:(id)layout;
- (void)p_addLayoutIfAttached:(id)attached;
- (void)p_killDrawableLayouts:(id)layouts;
- (void)parentWillChangeTo:(id)to;
- (void)replaceChild:(id)child with:(id)with;
- (void)resetFootnoteHeightMeasurer;
- (void)setChildren:(id)children;
- (void)setNeedsInflation;
- (void)updateStartCharIndexWithDirtyRanges:(id)ranges;
- (void)validate;
- (void)willBeRemovedFromLayoutController:(id)controller;
- (void)willInflate;
@end

@implementation TPBodyLayout

+ (CGSize)minimumBodySize
{
  v2 = 72.0;
  v3 = 72.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)rectInRootOfAutoZoomContextOfSelectionPath:(id)path
{
  v105 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = *MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 8);
  v7 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  objc_opt_class();
  v14 = objc_msgSend_mostSpecificSelectionOfClass_(pathCopy, v9, v10, v11, v12, v13, 0);
  v15 = TSUCheckedDynamicCast();

  if (v15)
  {
    if ((objc_msgSend_isValid(v15, v16, v17, v18, v19, v20) & 1) == 0)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, v25, "[TPBodyLayout rectInRootOfAutoZoomContextOfSelectionPath:]");
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v34, v35, v36, v37, v38, v27, v33, 123, 0, "invalid text selection");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42, v43);
    }

    if (objc_msgSend_isValid(v15, v21, v22, v23, v24, v25))
    {
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v48 = objc_msgSend_columns(self, v44, 0, v45, v46, v47, 0);
      v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, v50, v51, v52, v53, &v100, v104, 16);
      if (v55)
      {
        v60 = *v101;
        do
        {
          for (i = 0; i != v55; ++i)
          {
            if (*v101 != v60)
            {
              objc_enumerationMutation(v48);
            }

            v62 = *(*(&v100 + 1) + 8 * i);
            v63 = objc_msgSend_range(v62, length, v56, v57, v58, v59);
            v65 = v64;
            v107.location = objc_msgSend_DEPRECATED_range(v15, v64, v66, v67, v68, v69);
            v107.length = v70;
            v106.location = v63;
            v106.length = v65;
            length = NSIntersectionRange(v106, v107).length;
            if (!length)
            {
              v71 = objc_msgSend_range(v62, 0, v56, v57, v58, v59);
              v73 = v72;
              v78 = objc_msgSend_DEPRECATED_range(v15, v72, v74, v75, v76, v77);
              if (v71 > v78 || &v73[v71] < &length[v78])
              {
                continue;
              }
            }

            objc_msgSend_frameBounds(v62, length, v56, v57, v58, v59);
            v110.origin.x = v5;
            v110.origin.y = v6;
            v110.size.width = v7;
            v110.size.height = v8;
            *v56.n128_u64 = CGRectUnion(v108, v110);
            v5 = v56.n128_f64[0];
            v6 = v57.n128_f64[0];
            v7 = v58.n128_f64[0];
            v8 = v59.n128_f64[0];
          }

          v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, length, v56, v57, v58, v59, &v100, v104, 16);
        }

        while (v55);
      }
    }
  }

  v80.n128_f64[0] = v5;
  v81.n128_f64[0] = v6;
  v82.n128_f64[0] = v7;
  v83.n128_f64[0] = v8;
  objc_msgSend_rectInRoot_(self, v84, v80, v81, v82, v83);
  v86 = v85.n128_u64[0];
  v88 = v87.n128_u64[0];
  objc_msgSend_rectInRootForSelectionPath_(self, v89, v85, v90, v87, v91, pathCopy);
  v93 = v92;
  v95 = v94;

  v96 = *&v86;
  v97 = v93;
  v98 = *&v88;
  v99 = v95;
  result.size.height = v99;
  result.size.width = v98;
  result.origin.y = v97;
  result.origin.x = v96;
  return result;
}

- (CGRect)rectInRootForSelectionPath:(id)path
{
  pathCopy = path;
  v5 = *MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 8);
  v7 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  v9 = objc_opt_class();
  v16 = objc_msgSend_mostSpecificSelectionOfClass_(pathCopy, v10, v11, v12, v13, v14, v9);
  if (v16)
  {
    objc_msgSend_rectForSelection_(self, v15, v17, v18, v19, v20, v16);
    objc_msgSend_rectInRoot_(self, v21, v22, v23, v24, v25);
    v5 = v26;
    v6 = v27;
    v7 = v28;
    v8 = v29;
  }

  v30 = v5;
  v31 = v6;
  v32 = v7;
  v33 = v8;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (BOOL)selectionMustBeEntirelyOnscreenToCountAsVisibleInSelectionPath:(id)path
{
  pathCopy = path;
  objc_opt_class();
  v10 = objc_msgSend_mostSpecificSelectionOfClass_(pathCopy, v5, v6, v7, v8, v9, 0);
  v11 = TSUDynamicCast();

  if (v11 && (objc_msgSend_isInsertionPoint(v11, v12, v13, v14, v15, v16) & 1) != 0)
  {
    v17 = 1;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = TPBodyLayout;
    v17 = [(TPBodyLayout *)&v19 selectionMustBeEntirelyOnscreenToCountAsVisibleInSelectionPath:pathCopy];
  }

  return v17;
}

- (CGRect)rectForSelection:(id)selection
{
  objc_msgSend_p_rectForSelection_useParagraphModeRects_(self, a2, v3, v4, v5, v6, selection, 1);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)rectInRootForPresentingAnnotationPopoverForSelectionPath:(id)path
{
  pathCopy = path;
  objc_msgSend_rectForPresentingAnnotationPopoverForSelectionPath_(self, v5, v6, v7, v8, v9, pathCopy);
  objc_msgSend_rectInRoot_(self, v10, v11, v12, v13, v14);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (id)containedPencilAnnotations
{
  v7 = MEMORY[0x277D80DC0];
  v8 = objc_msgSend_columns(self, a2, v2, v3, v4, v5);
  v14 = objc_msgSend_rangeOfColumns_(v7, v9, v10, v11, v12, v13, v8);
  v16 = v15;

  v22 = objc_msgSend_storage(self, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_pencilAnnotationsInContainedTextRange_(v22, v23, v24, v25, v26, v27, v14, v16);

  return v28;
}

- (id)unscaledContentRectsToAvoidPencilAnnotationOverlap
{
  v7 = objc_msgSend_columns(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_contentRectsToAvoidPencilAnnotationOverlapWithColumns_(MEMORY[0x277D80DC0], v8, v9, v10, v11, v12, v7);
  v21[0] = MEMORY[0x277D85DD0];
  v14.n128_u64[0] = 3221225472;
  v21[1] = 3221225472;
  v21[2] = sub_275FBBA9C;
  v21[3] = &unk_27A6A8220;
  v21[4] = self;
  v19 = objc_msgSend_tsu_arrayByMappingObjectsUsingBlock_(v13, v15, v14, v16, v17, v18, v21);

  return v19;
}

- (BOOL)containsStartOfPencilAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v5 = MEMORY[0x277D80DC0];
  v11 = objc_msgSend_columns(self, v6, v7, v8, v9, v10);
  v17 = objc_msgSend_rangeOfColumns_(v5, v12, v13, v14, v15, v16, v11);
  v19 = v18;

  objc_opt_class();
  v20 = TSUCheckedDynamicCast();
  v26 = objc_msgSend_storage(self, v21, v22, v23, v24, v25);
  v32 = objc_msgSend_rangeForPencilAnnotation_(v26, v27, v28, v29, v30, v31, v20);
  v34 = v33;

  v36.location = v32;
  v36.length = v34;
  v37.location = v17;
  v37.length = v19;
  LOBYTE(v17) = NSIntersectionRange(v36, v37).location == v32;

  return v17;
}

- (BOOL)containsStartOfRange:(_NSRange)range
{
  location = range.location;
  v8 = MEMORY[0x277D80DC0];
  v9 = objc_msgSend_columns(self, a2, v3, v4, v5, v6, range.location, range.length);
  v15 = objc_msgSend_rangeOfColumns_(v8, v10, v11, v12, v13, v14, v9);
  v17 = v16;

  return location >= v15 && location - v15 < v17;
}

- (CGRect)rectForPresentingAnnotationPopoverForSelectionPath:(id)path
{
  pathCopy = path;
  v5 = *MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 8);
  v7 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  v9 = objc_opt_class();
  v16 = objc_msgSend_mostSpecificSelectionOfClass_(pathCopy, v10, v11, v12, v13, v14, v9);
  if (v16)
  {
    objc_msgSend_p_rectForSelection_useParagraphModeRects_(self, v15, v17, v18, v19, v20, v16, 0);
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  v25 = v5;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)p_rectForSelection:(id)selection useParagraphModeRects:(BOOL)rects
{
  rectsCopy = rects;
  selectionCopy = selection;
  v7 = MEMORY[0x277D80DC0];
  v13 = objc_msgSend_columns(self, v8, v9, v10, v11, v12);
  objc_msgSend_rectForSelection_withColumns_useParagraphModeRects_(v7, v14, v15, v16, v17, v18, selectionCopy, v13, rectsCopy);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)p_killDrawableLayouts:(id)layouts
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = objc_msgSend_copy(layouts, a2, v3, v4, v5, v6);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v9, v10, v11, v12, &v22, v26, 16);
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
        if ((objc_msgSend_isBeingManipulated(v21, v13, v15, v16, v17, v18, v22) & 1) == 0)
        {
          objc_msgSend_removeFromParent(v21, v13, v15, v16, v17, v18);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v13, v15, v16, v17, v18, &v22, v26, 16);
    }

    while (v14);
  }
}

- (void)setNeedsInflation
{
  columns = self->_columns;
  self->_columns = 0;
}

- (void)updateStartCharIndexWithDirtyRanges:(id)ranges
{
  v147 = *MEMORY[0x277D85DE8];
  rangesCopy = ranges;
  if (objc_msgSend_count(self->_columns, v5, v6, v7, v8, v9))
  {
    v141 = rangesCopy;
    v15 = objc_msgSend_objectAtIndexedSubscript_(self->_columns, v10, v11, v12, v13, v14, 0);
    v21 = objc_msgSend_range(v15, v16, v17, v18, v19, v20);
    v27 = objc_msgSend_info(self, v22, v23, v24, v25, v26);
    v33 = objc_msgSend_pageHint(v27, v28, v29, v30, v31, v32);

    v140 = v33;
    if (v33)
    {
      v39 = objc_msgSend_firstHint(v33, v34, v35, v36, v37, v38);
      v45 = objc_msgSend_range(v39, v40, v41, v42, v43, v44);

      v56 = v45 - v21;
      if (objc_msgSend_isEmpty(rangesCopy, v46, v47, v48, v49, v50))
      {
        v57 = 0;
      }

      else
      {
        v76 = objc_msgSend_superRange(rangesCopy, v51, v52, v53, v54, v55);
        v57 = &v51[v76 - v56];
      }

      v139 = v15;
      if (v57 > objc_msgSend_range(v15, v51, v52, v53, v54, v55))
      {
        v82 = objc_msgSend_storageChangeCount(v15, v77, v78, v79, v80, v81);
        v88 = objc_msgSend_info(self, v83, v84, v85, v86, v87);
        v94 = objc_msgSend_bodyStorage(v88, v89, v90, v91, v92, v93);
        v100 = objc_msgSend_changeCount(v94, v95, v96, v97, v98, v99);

        v106 = v82 == v100;
        v15 = v139;
        if (!v106)
        {
          v138 = MEMORY[0x277D81150];
          v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, v102, v103, v104, v105, "[TPBodyLayout updateStartCharIndexWithDirtyRanges:]");
          v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, v109, v110, v111, v112, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v138, v114, v115, v116, v117, v118, v107, v113, 270, 0, "dirty range should not overlap range being sync'd");

          v15 = v139;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v119, v120, v121, v122, v123);
        }
      }

      if (v45 != v21)
      {
        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v124 = self->_columns;
        v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v125, v126, v127, v128, v129, &v142, v146, 16);
        if (v131)
        {
          v136 = *v143;
          do
          {
            for (i = 0; i != v131; ++i)
            {
              if (*v143 != v136)
              {
                objc_enumerationMutation(v124);
              }

              objc_msgSend_incrementRanges_startingAt_(*(*(&v142 + 1) + 8 * i), v130, v132, v133, v134, v135, v56, v57);
            }

            v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v130, v132, v133, v134, v135, &v142, v146, 16);
          }

          while (v131);
        }
      }
    }

    else
    {
      v58 = MEMORY[0x277D81150];
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, v38, "[TPBodyLayout updateStartCharIndexWithDirtyRanges:]");
      v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, v61, v62, v63, v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v66, v67, v68, v69, v70, v59, v65, 263, 0, "invalid nil value for '%{public}s'", "pageHint");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74, v75);
    }

    rangesCopy = v141;
  }
}

- (BOOL)processWidowAndInflation
{
  v164 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_lastObject(self->_columns, a2, v2, v3, v4, v5);
  v156 = v6;
  if (v6)
  {
    v12 = objc_msgSend_range(v6, v7, v8, v9, v10, v11);
    v14 = v13;
    v19 = objc_msgSend_info(self, v13, v15, v16, v17, v18);
    v25 = objc_msgSend_pageHint(v19, v20, v21, v22, v23, v24);

    v154 = v25;
    if (v25)
    {
      v31 = objc_msgSend_lastHint(v25, v26, v27, v28, v29, v30);
      v37 = objc_msgSend_range(v31, v32, v33, v34, v35, v36);
      v38 = &v14[v12];
      v40 = (v37 + v39);

      if (v40 != v38)
      {
        v46 = objc_msgSend_info(self, v41, v42, v43, v44, v45);
        v158 = objc_msgSend_bodyStorage(v46, v47, v48, v49, v50, v51);

        v57 = objc_msgSend_range(v156, v52, v53, v54, v55, v56);
        if (v40 <= &v58[v57])
        {
          v63 = &v58[v57];
        }

        else
        {
          v63 = v40;
        }

        if (v40 >= &v58[v57])
        {
          v64 = &v58[v57];
        }

        else
        {
          v64 = v40;
        }

        v65 = v63 - v64;
        objc_msgSend_footnoteRangeForTextRange_(v158, v58, v59, v60, v61, v62, v64, v63 - v64);
        v67 = v66;
        v72 = objc_msgSend_autoNumberFootnoteCountForRange_(v158, v66, v68, v69, v70, v71, v64, v65);
        objc_msgSend_trimToCharIndex_inTarget_removeFootnoteReferenceCount_removeAutoNumberFootnoteCount_(v156, v73, v74, v75, v76, v77, v40, self, v67, v72);
        v78 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v85 = objc_msgSend_attachmentIndexRangeForTextRange_(v158, v79, v80, v81, v82, v83, v64, v65);
        v155 = &v84[v85];
        if (v85 < &v84[v85])
        {
          do
          {
            objc_opt_class();
            v95 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(v158, v90, v91, v92, v93, v94, v85, 0);
            v96 = TSUDynamicCast();

            if (v96 && (objc_msgSend_isAnchored(v96, v97, v98, v99, v100, v101) & 1) == 0)
            {
              v161 = 0u;
              v162 = 0u;
              v159 = 0u;
              v160 = 0u;
              v106 = objc_msgSend_children(self, v102, 0, v103, v104, v105);
              v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v107, v108, v109, v110, v111, &v159, v163, 16);
              if (v113)
              {
                v118 = *v160;
                do
                {
                  for (i = 0; i != v113; ++i)
                  {
                    if (*v160 != v118)
                    {
                      objc_enumerationMutation(v106);
                    }

                    v120 = *(*(&v159 + 1) + 8 * i);
                    v121 = objc_msgSend_info(v120, v112, v114, v115, v116, v117);
                    v127 = objc_msgSend_owningAttachment(v121, v122, v123, v124, v125, v126);
                    v128 = v127 == v96;

                    if (v128)
                    {
                      objc_msgSend_addObject_(v78, v112, v114, v115, v116, v117, v120);
                    }
                  }

                  v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v112, v114, v115, v116, v117, &v159, v163, 16);
                }

                while (v113);
              }
            }

            ++v85;
          }

          while (v85 != v155);
        }

        objc_msgSend_p_killDrawableLayouts_(self, v84, v86, v87, v88, v89, v78);
        objc_msgSend_setNeedsDisplay(self, v129, v130, v131, v132, v133);

        v134 = 1;
        goto LABEL_28;
      }
    }

    else
    {
      v135 = MEMORY[0x277D81150];
      v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, v30, "[TPBodyLayout processWidowAndInflation]");
      v142 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v137, v138, v139, v140, v141, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v135, v143, v144, v145, v146, v147, v136, v142, 295, 0, "invalid nil value for '%{public}s'", "pageHint", 0);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v148, v149, v150, v151, v152);
    }

    v134 = 0;
LABEL_28:

    goto LABEL_29;
  }

  objc_msgSend_invalidate(self, v7, v8, v9, v10, v11);
  v134 = 0;
LABEL_29:

  return v134;
}

- (double)contentBlockHeight
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = self->_columns;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, v4, v5, v6, v7, &v19, v23, 16);
  if (v9)
  {
    v14 = *v20;
    v15 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v2);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        objc_msgSend_textBlockBottom(v17, v8, v10, v11, v12, v13, v19);
        if (v10.n128_f64[0] > v15)
        {
          objc_msgSend_textBlockBottom(v17, v8, v10, v11, v12, v13);
          v15 = v10.n128_f64[0];
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v8, v10, v11, v12, v13, &v19, v23, 16);
    }

    while (v9);
  }

  else
  {
    v15 = 0.0;
  }

  return v15;
}

- (CGSize)maximumFrameSizeForChild:(id)child
{
  v154 = *MEMORY[0x277D85DE8];
  childCopy = child;
  v10 = objc_msgSend_pageLayout(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_info(v10, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_documentRoot(v16, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_laysOutBodyVertically(v22, v23, v24, v25, v26, v27);

  objc_opt_class();
  v34 = objc_msgSend_info(childCopy, v29, v30, v31, v32, v33);
  v40 = objc_msgSend_owningAttachment(v34, v35, v36, v37, v38, v39);
  v41 = TSUDynamicCast();

  if (!v41)
  {
    goto LABEL_31;
  }

  if (objc_msgSend_isAnchored(v41, v42, v43, v44, v45, v46))
  {
    objc_opt_class();
    v52 = TSUDynamicCast();
    if ((objc_msgSend_isHTMLWrap(v52, v53, v54, v55, v56, v57) & 1) == 0)
    {

      goto LABEL_31;
    }

    columns = self->_columns;

    if (!columns)
    {
      goto LABEL_31;
    }
  }

  else if (!self->_columns)
  {
    goto LABEL_31;
  }

  v142 = childCopy;
  CharIndex = objc_msgSend_findCharIndex(v41, v47, v48, v49, v50, v51);
  v65 = objc_msgSend_geometry(self, v60, v61, v62, v63, v64);
  objc_msgSend_frame(v65, v66, v67, v68, v69, v70);
  v72 = v71;

  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v73 = self->_columns;
  v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v74, v75, v76, v77, v78, &v148, v153, 16);
  if (v80)
  {
    v85 = *v149;
    while (2)
    {
      for (i = 0; i != v80; ++i)
      {
        if (*v149 != v85)
        {
          objc_enumerationMutation(v73);
        }

        v87 = *(*(&v148 + 1) + 8 * i);
        if ((objc_msgSend_layoutResultFlags(v87, v79, v81, v82, v83, v84) & 0x80000000) != 0)
        {
          objc_msgSend_frameBounds(v87, v79, v81, v82, v83, v84);
          v110 = v108.n128_f64[0];
          childCopy = v142;
          if (v28)
          {
            v141 = v109.n128_f64[0];
            v106.n128_f64[0] = CGRectGetMaxX(*v106.n128_u64);
            v110 = v106.n128_f64[0];
          }

          else
          {
            v141 = v72 - v107.n128_f64[0];
          }

          v116 = objc_msgSend_parentStorage(v41, v105, v106, v107, v108, v109);
          v122 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v116, v117, v118, v119, v120, v121, CharIndex, 0);

          objc_msgSend_floatValueForProperty_(v122, v123, v124, v125, v126, v127, 81);
          v129 = v128.n128_f32[0];
          objc_msgSend_floatValueForProperty_(v122, v130, v128, v131, v132, v133, 82);
          v135 = v129 + v134;
          v136 = v141 - v135;
          v137 = v110 - v135;
          if (v28)
          {
            v139 = v110;
          }

          else
          {
            v139 = v137;
          }

          if (v28)
          {
            v141 = v136;
          }

          goto LABEL_32;
        }
      }

      v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v79, v81, v82, v83, v84, &v148, v153, 16);
      if (v80)
      {
        continue;
      }

      break;
    }
  }

  childCopy = v142;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v88 = self->_columns;
  v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, v90, v91, v92, v93, &v144, v152, 16);
  if (v95)
  {
    v100 = *v145;
    do
    {
      for (j = 0; j != v95; ++j)
      {
        if (*v145 != v100)
        {
          objc_enumerationMutation(v88);
        }

        v102 = *(*(&v144 + 1) + 8 * j);
        v103 = objc_msgSend_range(v102, v94, v96, v97, v98, v99);
        if (CharIndex >= v103 && CharIndex - v103 < v94)
        {
          objc_msgSend_frameBounds(v102, v94, v96, v97, v98, v99);
          v139 = v138;
          v141 = v140;

          childCopy = v142;
          goto LABEL_32;
        }
      }

      v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v94, v96, v97, v98, v99, &v144, v152, 16);
      childCopy = v142;
    }

    while (v95);
  }

LABEL_31:
  v143.receiver = self;
  v143.super_class = TPBodyLayout;
  [(TPBodyLayout *)&v143 maximumFrameSizeForChild:childCopy];
  v139 = v111;
  v141 = v112;
LABEL_32:
  if (v139 >= 18.0)
  {
    v113 = v139;
  }

  else
  {
    v113 = 18.0;
  }

  if (!v28)
  {
    v139 = v113;
  }

  if ((v28 & (v141 < 18.0)) != 0)
  {
    v141 = 18.0;
  }

  v114 = v139;
  v115 = v141;
  result.height = v115;
  result.width = v114;
  return result;
}

- (id)computeLayoutGeometry
{
  v6 = objc_msgSend_pageLayout(self, a2, v2, v3, v4, v5);
  v12 = v6;
  if (v6)
  {
    objc_msgSend_bodyRect(v6, v7, v8, v9, v10, v11);
    v18 = v14.n128_f64[0];
    v19 = v15.n128_f64[0];
    v20 = v16.n128_f64[0];
    v21 = v17.n128_f64[0];
    if (v16.n128_f64[0] < 0.0)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, v17, "[TPBodyLayout computeLayoutGeometry]");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm");
      v69.origin.x = v18;
      v69.origin.y = v19;
      v69.size.width = v20;
      v69.size.height = v21;
      v30 = NSStringFromCGRect(v69);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v31, v32, v33, v34, v35, v23, v29, 445, 0, "Body rect width is illegal %{public}@", v30);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39, v40);
    }

    if (v21 < 0.0)
    {
      v41 = MEMORY[0x277D81150];
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, v17, "[TPBodyLayout computeLayoutGeometry]");
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm");
      v70.origin.x = v18;
      v70.origin.y = v19;
      v70.size.width = v20;
      v70.size.height = v21;
      v49 = NSStringFromCGRect(v70);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v50, v51, v52, v53, v54, v42, v48, 446, 0, "Body rect height is illegal %{public}@", v49);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58, v59);
    }

    if (v20 < 72.0 && fabs(v20 + -72.0) >= 0.00999999978 && *MEMORY[0x277D81500] != -1)
    {
      sub_276038188();
    }

    if (v21 < 72.0 && fabs(v21 + -72.0) >= 0.00999999978 && *MEMORY[0x277D81500] != -1)
    {
      sub_27603819C();
    }

    if (v20 < 72.0)
    {
      v20 = 72.0;
    }

    if (v21 < 72.0)
    {
      v21 = 72.0;
    }
  }

  else
  {
    v19 = 0.0;
    v21 = 72.0;
    v20 = 72.0;
    v18 = 0.0;
  }

  v60 = objc_alloc(MEMORY[0x277D80300]);
  v61.n128_f64[0] = v18;
  v62.n128_f64[0] = v19;
  v63.n128_f64[0] = v20;
  v64.n128_f64[0] = v21;
  v66 = objc_msgSend_initWithFrame_(v60, v65, v61, v62, v63, v64);

  return v66;
}

- (CGPoint)capturedInfoPositionForAttachment
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)validate
{
  v86.receiver = self;
  v86.super_class = TPBodyLayout;
  [(TPBodyLayout *)&v86 validate];
  if (objc_msgSend_needsInflation(self, v3, v4, v5, v6, v7))
  {
    v13 = objc_msgSend_currentInlineDrawableLayouts(self, v8, v9, v10, v11, v12);
    objc_msgSend_p_killDrawableLayouts_(self, v14, v15, v16, v17, v18, v13);

    v24 = objc_msgSend_currentAnchoredDrawableLayouts(self, v19, v20, v21, v22, v23);
    objc_msgSend_p_killDrawableLayouts_(self, v25, v26, v27, v28, v29, v24);

    v35 = objc_msgSend_footnoteHeightMeasurer(self, v30, v31, v32, v33, v34);
    objc_msgSend_removeAllFootnoteReferenceStorages(v35, v36, v37, v38, v39, v40);

    v46 = objc_msgSend_info(self, v41, v42, v43, v44, v45);
    objc_msgSend_inflateBodyLayout_(v46, v47, v48, v49, v50, v51, self);

    v57 = objc_msgSend_parent(self, v52, v53, v54, v55, v56);
    objc_msgSend_evacuateOldChildLayoutCache(v57, v58, v59, v60, v61, v62);
  }

  if (objc_msgSend_needsInflation(self, v8, v9, v10, v11, v12))
  {
    v68 = MEMORY[0x277D81150];
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, v67, "[TPBodyLayout validate]");
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v76, v77, v78, v79, v80, v69, v75, 497, 0, "still need inflation after validation");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83, v84, v85);
  }
}

- (void)willInflate
{
  if ((objc_msgSend_needsInflation(self, a2, v2, v3, v4, v5) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, v11, "[TPBodyLayout willInflate]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v20, v21, v22, v23, v24, v13, v19, 502, 0, "Shouldn't call willInflate unless inflation is needed");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28, v29);
  }

  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  columns = self->_columns;
  self->_columns = v30;
}

- (BOOL)shouldInvalidateSizeWhenInvalidateSizeOfReliedOnLayout:(id)layout
{
  layoutCopy = layout;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TPBodyLayout;
    v5 = [(TPBodyLayout *)&v7 shouldInvalidateSizeWhenInvalidateSizeOfReliedOnLayout:layoutCopy];
  }

  return v5;
}

- (void)invalidateSize
{
  v34 = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = TPBodyLayout;
  [(TPBodyLayout *)&v32 invalidateSize];
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v7 = objc_msgSend_currentAnchoredDrawableLayouts(self, v3, 0, v4, v5, v6, 0, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v9, v10, v11, v12, &v28, v33, 16);
  if (v13)
  {
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v7);
        }

        objc_opt_class();
        v16 = TSUDynamicCast();
        v22 = v16;
        if (v16)
        {
          objc_msgSend_invalidateExteriorWrap(v16, v17, v18, v19, v20, v21);
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v23, v24, v25, v26, v27, &v28, v33, 16);
    }

    while (v13);
  }
}

- (void)parentWillChangeTo:(id)to
{
  v3.receiver = self;
  v3.super_class = TPBodyLayout;
  [(TPBodyLayout *)&v3 parentWillChangeTo:to];
}

- (void)replaceChild:(id)child with:(id)with
{
  childCopy = child;
  withCopy = with;
  if (childCopy != withCopy)
  {
    objc_msgSend_removeObject_(self->_inlineDrawableLayouts, v7, v9, v10, v11, v12, childCopy);
  }

  v13.receiver = self;
  v13.super_class = TPBodyLayout;
  [(TPBodyLayout *)&v13 replaceChild:childCopy with:withCopy];
}

- (void)insertChild:(id)child atIndex:(unint64_t)index
{
  childCopy = child;
  objc_msgSend_p_addLayoutIfAttached_(self, v7, v8, v9, v10, v11, childCopy);
  v12.receiver = self;
  v12.super_class = TPBodyLayout;
  [(TPBodyLayout *)&v12 insertChild:childCopy atIndex:index];
}

- (void)setChildren:(id)children
{
  v30 = *MEMORY[0x277D85DE8];
  childrenCopy = children;
  objc_msgSend_removeAllObjects(self->_inlineDrawableLayouts, v5, v6, v7, v8, v9);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = childrenCopy;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, v15, &v25, v29, 16);
  if (v17)
  {
    v22 = *v26;
    do
    {
      v23 = 0;
      do
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_p_addLayoutIfAttached_(self, v16, v18, v19, v20, v21, *(*(&v25 + 1) + 8 * v23++));
      }

      while (v17 != v23);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, v18, v19, v20, v21, &v25, v29, 16);
    }

    while (v17);
  }

  v24.receiver = self;
  v24.super_class = TPBodyLayout;
  [(TPBodyLayout *)&v24 setChildren:v10];
}

- (void)p_addLayoutIfAttached:(id)attached
{
  attachedCopy = attached;
  v9 = objc_msgSend_info(attachedCopy, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_owningAttachment(v9, v10, v11, v12, v13, v14);
  isDrawable = objc_msgSend_isDrawable(v15, v16, v17, v18, v19, v20);

  if (isDrawable)
  {
    inlineDrawableLayouts = self->_inlineDrawableLayouts;
    if (!inlineDrawableLayouts)
    {
      v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v29 = self->_inlineDrawableLayouts;
      self->_inlineDrawableLayouts = v28;

      inlineDrawableLayouts = self->_inlineDrawableLayouts;
    }

    objc_msgSend_addObject_(inlineDrawableLayouts, v22, v23, v24, v25, v26, attachedCopy);
  }
}

- (id)columnMetricsForCharIndex:(unint64_t)index outRange:(_NSRange *)range
{
  v10 = objc_msgSend_info(self, a2, v4, v5, v6, v7);
  v16 = objc_msgSend_bodyStorage(v10, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_columnStyleAtCharIndex_effectiveRange_(v16, v17, v18, v19, v20, v21, index, range);

  return v22;
}

- (BOOL)marginsAreMirrored
{
  v6 = objc_msgSend_pageLayout(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_marginsAreMirrored(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (TSWPStorage)storage
{
  v6 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_bodyStorage(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (TSWPOffscreenColumn)previousTargetLastColumn
{
  v6 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_previousTargetLastColumn(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (TSWPOffscreenColumn)nextTargetFirstColumn
{
  v6 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_nextTargetFirstColumn(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (TSWPTopicNumberHints)nextTargetTopicNumberHints
{
  v6 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_nextTargetTopicNumberHints(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (TSWPFootnoteHeightMeasurer)footnoteHeightMeasurer
{
  v7 = objc_msgSend_pageLayout(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_info(v7, v8, v9, v10, v11, v12);

  v19 = objc_msgSend_documentRoot(v13, v14, v15, v16, v17, v18);
  if (!objc_msgSend_footnotesShouldAffectBodyLayout(v19, v20, v21, v22, v23, v24) || (objc_msgSend_info(self, v25, v26, v27, v28, v29), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend_bodyStorage(v30, v31, v32, v33, v34, v35), v36 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend_footnoteCount(v36, v37, v38, v39, v40, v41), v36, v30, !v42))
  {
    objc_msgSend_tearDown(self->_footnoteHeightMeasurer, v25, v26, v27, v28, v29);
    footnoteHeightMeasurer = self->_footnoteHeightMeasurer;
    self->_footnoteHeightMeasurer = 0;
LABEL_11:

    goto LABEL_12;
  }

  if (!self->_footnoteHeightMeasurer)
  {
    objc_msgSend_currentSize(self, v25, v26, v27, v28, v29);
    v44 = v43.n128_f64[0];
    v46 = v45.n128_f64[0];
    v50 = objc_msgSend_laysOutBodyVertically(v19, v47, v43, v45, v48, v49);
    if (v50)
    {
      *&v51 = v46;
    }

    else
    {
      *&v51 = v44;
    }

    if (!v50)
    {
      v44 = v46;
    }

    v52 = [TPFootnoteHeightMeasurer alloc];
    footnoteHeightMeasurer = objc_msgSend_pageController(self, v53, v54, v55, v56, v57);
    v64 = objc_msgSend_laysOutBodyVertically(v19, v59, v60, v61, v62, v63);
    v70 = objc_msgSend_settings(v19, v65, v66, v67, v68, v69);
    v76 = objc_msgSend_footnoteGap(v70, v71, v72, v73, v74, v75);
    v77.n128_f64[0] = v44 * 0.899999976;
    v78.n128_f64[0] = v76;
    v79.n128_u64[0] = v51;
    v82 = objc_msgSend_initWithFootnoteMarkProvider_documentRoot_pageDelegate_maxFootnoteLineWidth_maxFootnoteBlockHeight_vertical_footnoteSpacing_(v52, v80, v79, v77, v78, v81, footnoteHeightMeasurer, v19, self, v64);
    v83 = self->_footnoteHeightMeasurer;
    self->_footnoteHeightMeasurer = v82;

    goto LABEL_11;
  }

LABEL_12:
  v84 = self->_footnoteHeightMeasurer;
  v85 = v84;

  return v84;
}

- (void)resetFootnoteHeightMeasurer
{
  objc_msgSend_tearDown(self->_footnoteHeightMeasurer, a2, v2, v3, v4, v5);
  footnoteHeightMeasurer = self->_footnoteHeightMeasurer;
  self->_footnoteHeightMeasurer = 0;
}

- (void)willBeRemovedFromLayoutController:(id)controller
{
  controllerCopy = controller;
  objc_msgSend_resetFootnoteHeightMeasurer(self, v5, v6, v7, v8, v9);
  v10.receiver = self;
  v10.super_class = TPBodyLayout;
  [(TPBodyLayout *)&v10 willBeRemovedFromLayoutController:controllerCopy];
}

- (TSDHint)nextTargetFirstChildHint
{
  v6 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_nextTargetFirstChildHint(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (CGSize)minSize
{
  v6 = objc_msgSend_geometry(self, a2, v2, v3, v4, v5);
  objc_msgSend_size(v6, v7, v8, v9, v10, v11);
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)maxSize
{
  v6 = objc_msgSend_geometry(self, a2, v2, v3, v4, v5);
  objc_msgSend_size(v6, v7, v8, v9, v10, v11);
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)currentSize
{
  v6 = objc_msgSend_geometry(self, a2, v2, v3, v4, v5);
  objc_msgSend_size(v6, v7, v8, v9, v10, v11);
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGPoint)position
{
  v2.n128_u64[0] = *(MEMORY[0x277CBF348] + 8);
  v17 = v2.n128_f64[0];
  v18 = *MEMORY[0x277CBF348];
  v5 = objc_msgSend_geometry(self, a2, v2, *MEMORY[0x277CBF348], v3, v4);
  v11 = v5;
  if (v5)
  {
    objc_msgSend_transform(v5, v6, v7, v8, v9, v10);
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

  v19 = vaddq_f64(v14, vmlaq_n_f64(vmulq_n_f64(v13, v17), v12, *&v18));

  v16 = v19.f64[1];
  v15 = v19.f64[0];
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)anchorPoint
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)targetRectForCanvasRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  objc_msgSend_frameInRoot(self, a2, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  v8 = -v7;
  v10 = -v9;
  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;

  return CGRectOffset(*&v11, v8, v10);
}

- (TSDCanvas)canvas
{
  v6 = objc_msgSend_layoutController(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_canvas(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (id)addPartitionableAttachmentLayout:(id)layout
{
  layoutCopy = layout;
  objc_msgSend_addAttachmentLayout_(self, v5, v6, v7, v8, v9, layoutCopy);

  return layoutCopy;
}

- (BOOL)layoutIsValid
{
  v7 = objc_msgSend_pageController(self, a2, v2, v3, v4, v5);
  if (objc_msgSend_isPaginationComplete(v7, v8, v9, v10, v11, v12))
  {
    v18 = 1;
  }

  else
  {
    PageIndexNeedingLayout = objc_msgSend_firstPageIndexNeedingLayout(v7, v13, v14, v15, v16, v17);
    v25 = objc_msgSend_parent(self, v20, v21, v22, v23, v24);
    v31 = objc_msgSend_info(v25, v26, v27, v28, v29, v30);
    v18 = PageIndexNeedingLayout > objc_msgSend_pageIndex(v31, v32, v33, v34, v35, v36) + 1;
  }

  return v18;
}

- (BOOL)isFootnoteContainerOnSamePageAsTarget:(id)target
{
  if (target != self)
  {
    return 0;
  }

  v8 = objc_msgSend_pageLayout(self, a2, v3, v4, v5, v6);
  v7 = objc_msgSend_allowsFootnotes(v8, v9, v10, v11, v12, v13);

  return v7;
}

- (BOOL)canHaveFootnotesFromPreviousTarget:(id)target
{
  if (target != self)
  {
    return 0;
  }

  v8 = objc_msgSend_pageLayout(self, a2, v3, v4, v5, v6);
  HavePreviousPageFootnotes = objc_msgSend_canHavePreviousPageFootnotes(v8, v9, v10, v11, v12, v13);

  return HavePreviousPageFootnotes;
}

- (void)clearHiddenInlineDrawableLayoutMarks
{
  markedHiddenInlineDrawableLayouts = self->_markedHiddenInlineDrawableLayouts;
  self->_markedHiddenInlineDrawableLayouts = 0;
}

- (void)markHiddenInlineDrawableLayout:(id)layout
{
  layoutCopy = layout;
  markedHiddenInlineDrawableLayouts = self->_markedHiddenInlineDrawableLayouts;
  v12 = layoutCopy;
  if (!markedHiddenInlineDrawableLayouts)
  {
    v10 = objc_opt_new();
    v11 = self->_markedHiddenInlineDrawableLayouts;
    self->_markedHiddenInlineDrawableLayouts = v10;

    markedHiddenInlineDrawableLayouts = self->_markedHiddenInlineDrawableLayouts;
    layoutCopy = v12;
  }

  objc_msgSend_addObject_(markedHiddenInlineDrawableLayouts, layoutCopy, v5, v6, v7, v8, layoutCopy);
}

- (id)existingAttachmentLayoutForInfo:(id)info
{
  infoCopy = info;
  v10 = objc_msgSend_layoutController(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_layoutForInfo_childOfLayout_(v10, v11, v12, v13, v14, v15, infoCopy, self);

  return v16;
}

- (void)addAttachmentLayout:(id)layout
{
  layoutCopy = layout;
  v63 = layoutCopy;
  if (!layoutCopy)
  {
    v47 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, v9, "[TPBodyLayout addAttachmentLayout:]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v53, v54, v55, v56, v57, v35, v41, 799, 0, "layout is nil");
    goto LABEL_7;
  }

  v10 = objc_msgSend_parent(layoutCopy, v5, v6, v7, v8, v9);

  if (v10 != self)
  {
    objc_msgSend_addChild_(self, v11, v12, v13, v14, v15, v63);
  }

  v16 = objc_msgSend_info(v63, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_owningAttachment(v16, v17, v18, v19, v20, v21);
  isAnchored = objc_msgSend_isAnchored(v22, v23, v24, v25, v26, v27);

  if (isAnchored)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, v33, "[TPBodyLayout addAttachmentLayout:]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v42, v43, v44, v45, v46, v35, v41, 805, 0, "Body attachment child should be inline");
LABEL_7:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61, v62);
  }
}

- (CGPoint)calculatePointFromSearchReference:(id)reference
{
  v3 = 0.0;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
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
  v4 = objc_alloc(MEMORY[0x277D80638]);
  objc_msgSend_frameInRoot(self, v5, v6, v7, v8, v9);
  v11 = v10.n128_u64[0];
  v13 = v12.n128_u64[0];
  objc_msgSend_frameInRoot(self, v14, v10, v12, v15, v16);
  v18.n128_u64[0] = v17;
  v20.n128_u64[0] = v19;
  v21.n128_u64[0] = v11;
  v22.n128_u64[0] = v13;
  isVertical = objc_msgSend_initWithLeftAnchor_rightAnchor_isVertical_(v4, v23, v21, v22, v18, v20, 0);

  return isVertical;
}

- (BOOL)excludeFromNearestVisibleRectSearchForSelectionPath:(id)path
{
  pathCopy = path;
  v5 = MEMORY[0x277D80DC0];
  v11 = objc_msgSend_columns(self, v6, v7, v8, v9, v10);
  objc_msgSend_rangeOfColumns_(v5, v12, v13, v14, v15, v16, v11);
  v18 = v17;

  v19 = objc_opt_class();
  v25 = objc_msgSend_mostSpecificSelectionOfClass_(pathCopy, v20, v21, v22, v23, v24, v19);
  v31 = v25;
  if (v18 || (objc_msgSend_DEPRECATED_range(v25, v26, v27, v28, v29, v30), !v33))
  {
    LOBYTE(v32) = 0;
  }

  else
  {
    v38 = objc_msgSend_columns(self, v33, v34, v35, v36, v37);
    v44 = objc_msgSend_lastObject(v38, v39, v40, v41, v42, v43);
    v32 = objc_msgSend_onlyHasPartitionedAttachments(v44, v45, v46, v47, v48, v49) ^ 1;
  }

  return v32;
}

- (id)p_layoutForDrawable:(id)drawable inContainingLayout:(id)layout
{
  drawableCopy = drawable;
  layoutCopy = layout;
  if (!drawableCopy)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, v11, "[TPBodyLayout p_layoutForDrawable:inContainingLayout:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm");
    v20 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v21, v22, v23, v24, v25, v13, v19, 1129, 0, "Invalid request to validate layout of nil drawable in %{public}@ %@", v20, layoutCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29, v30);
  }

  v32 = objc_msgSend_existingAttachmentLayoutForInfo_(layoutCopy, v6, v8, v9, v10, v11, drawableCopy);
  if (v32 || (v37 = objc_alloc(objc_msgSend_layoutClass(drawableCopy, v31, v33, v34, v35, v36)), (v32 = objc_msgSend_initWithInfo_(v37, v38, v39, v40, v41, v42, drawableCopy)) != 0))
  {
    v43 = objc_msgSend_parent(v32, v31, v33, v34, v35, v36);

    if (v43 != layoutCopy)
    {
      objc_msgSend_addAttachmentLayout_(layoutCopy, v44, v45, v46, v47, v48, v32);
    }
  }

  else
  {
    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v33, v34, v35, v36, "[TPBodyLayout p_layoutForDrawable:inContainingLayout:]");
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v57, v58, v59, v60, v61, v50, v56, 1138, 0, "Failed to create a layout for info %@", drawableCopy);

    v32 = 0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64, v65, v66);
  }

  return v32;
}

- (id)layoutForInlineDrawable:(id)drawable
{
  v7 = objc_msgSend_p_layoutForDrawable_inContainingLayout_(self, a2, v3, v4, v5, v6, drawable, self);

  return v7;
}

- (id)validatedLayoutForAnchoredDrawable:(id)drawable
{
  drawableCopy = drawable;
  v10 = objc_msgSend_parent(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_p_layoutForDrawable_inContainingLayout_(self, v11, v12, v13, v14, v15, drawableCopy, v10);

  return v16;
}

- (id)currentAnchoredDrawableLayouts
{
  v6 = objc_msgSend_pageLayout(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_anchoredDrawableLayouts(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_allObjects(v12, v13, v14, v15, v16, v17);

  return v18;
}

- (double)maxAnchorInBlockDirection
{
  v7 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  if (objc_msgSend_laysOutVertically(v7, v8, v9, v10, v11, v12))
  {
    v18 = objc_msgSend_parent(self, v13, v14, v15, v16, v17);
    objc_msgSend_frame(v18, v19, v20, v21, v22, v23);
    v24.n128_f64[0] = CGRectGetWidth(v45);
    v25 = v24.n128_f64[0];
    objc_msgSend_position(self, v26, v24, v27, v28, v29);
    v31 = v25 - v30;
  }

  else
  {
    v18 = objc_msgSend_parent(self, v13, v14, v15, v16, v17);
    objc_msgSend_frame(v18, v32, v33, v34, v35, v36);
    v37.n128_f64[0] = CGRectGetHeight(v46);
    v38 = v37.n128_f64[0];
    objc_msgSend_position(self, v39, v37, v40, v41, v42);
    v31 = v38 - v43;
  }

  return v31;
}

- (BOOL)isLayoutOffscreen
{
  v6 = objc_msgSend_layoutController(self, a2, v2, v3, v4, v5);
  isLayoutOffscreen = objc_msgSend_isLayoutOffscreen(v6, v7, v8, v9, v10, v11);

  return isLayoutOffscreen;
}

- (CGPoint)layoutPositionFromAnchoredAttachmentPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  objc_msgSend_transform(self, a2, position, *&position.y, v3, v4);
  v5 = vaddq_f64(v11, vmlaq_n_f64(vmulq_n_f64(v10, y), v9, x));
  v6 = v5.f64[1];
  result.x = v5.f64[0];
  result.y = v6;
  return result;
}

- (CGPoint)anchoredAttachmentPositionFromLayoutPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  objc_msgSend_transform(self, a2, position, *&position.y, v3, v4);
  CGAffineTransformInvert(&v10, &v9);
  v5 = vaddq_f64(*&v10.tx, vmlaq_n_f64(vmulq_n_f64(*&v10.c, y), *&v10.a, x));
  v6 = v5.f64[1];
  result.x = v5.f64[0];
  result.y = v6;
  return result;
}

- (unint64_t)pageNumber
{
  v6 = objc_msgSend_parent(self, a2, v2, v3, v4, v5);
  v12 = v6;
  if (v6)
  {
    v13 = objc_msgSend_pageNumber(v6, v7, v8, v9, v10, v11);
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v13;
}

- (unint64_t)pageCount
{
  v6 = objc_msgSend_parent(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_pageCount(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (BOOL)invalidateForPageCountChange
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  columns = self->_columns;
  v20[0] = MEMORY[0x277D85DD0];
  v2.n128_u64[0] = 3221225472;
  v20[1] = 3221225472;
  v20[2] = sub_275FBEE78;
  v20[3] = &unk_27A6A8268;
  v20[4] = &v21;
  objc_msgSend_enumerateObjectsUsingBlock_(columns, a2, v2, v3, v4, v5, v20);
  if (*(v22 + 24) == 1)
  {
    objc_msgSend_setNeedsInflation(self, v8, v9, v10, v11, v12);
    objc_msgSend_invalidateSize(self, v13, v14, v15, v16, v17);
    v18 = *(v22 + 24);
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v21, 8);
  return v18 & 1;
}

- (BOOL)textIsVertical
{
  v6 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_laysOutVertically(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (id)pageController
{
  v6 = objc_msgSend_pageLayout(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_info(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_pageController(v12, v13, v14, v15, v16, v17);

  return v18;
}

@end
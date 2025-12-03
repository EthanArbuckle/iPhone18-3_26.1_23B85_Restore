@interface KNPdfHandoutExporter
- (BOOL)incrementPage;
- (KNPdfHandoutExporter)initWithDocumentRoot:(id)root;
- (id)currentInfos;
- (id)p_noteSegmentsForSlideNode:(id)node withScaledClipRect:(CGRect)rect firstSegmentIndex:(unint64_t)index;
- (id)p_segmentsForPage:(unint64_t)page;
- (id)p_segmentsForSlideNode:(id)node withScaledClipRect:(CGRect)rect firstSegmentIndex:(unint64_t)index;
- (unint64_t)pageCount;
- (void)drawPolyPageBodyInContext:(CGContext *)context scaledClipRect:(CGRect)rect;
- (void)p_drawDividerLineForRect:(CGRect)rect pageRect:(CGRect)pageRect context:(CGContext *)context;
- (void)p_drawNotesForNode:(id)node index:(unint64_t)index forRect:(CGRect)rect notesIndex:(unint64_t)notesIndex scaledClipRect:(CGRect)clipRect context:(CGContext *)context;
- (void)p_drawRuledLinesForRect:(CGRect)rect pageRect:(CGRect)pageRect numberOfLines:(unint64_t)lines context:(CGContext *)context;
- (void)p_segmentSlideNodesWithScaledClipRect:(CGRect)rect;
- (void)p_segmentSlidesIfNecessary;
@end

@implementation KNPdfHandoutExporter

- (KNPdfHandoutExporter)initWithDocumentRoot:(id)root
{
  v4.receiver = self;
  v4.super_class = KNPdfHandoutExporter;
  result = [(KNRenderingExporter *)&v4 initWithDocumentRoot:root];
  result->super.super.super._slidesPerPage = 3;
  return result;
}

- (id)currentInfos
{
  objc_opt_class();
  v5 = objc_msgSend_slide(self->super.super.super._currentSlideNode, v3, v4);
  v6 = TSUDynamicCast();

  if (v6)
  {
    if (self->_isDrawingNote)
    {
      v9 = objc_msgSend_note(v6, v7, v8);
      currentInfos = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v10, v9);
    }

    else
    {
      v13.receiver = self;
      v13.super_class = KNPdfHandoutExporter;
      currentInfos = [(KNRenderingExporter *)&v13 currentInfos];
    }
  }

  else
  {
    currentInfos = 0;
  }

  return currentInfos;
}

- (unint64_t)pageCount
{
  v21 = *MEMORY[0x277D85DE8];
  objc_msgSend_p_segmentSlidesIfNecessary(self, a2, v2);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_segments;
  v6 = 0;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v6 += objc_msgSend_span(*(*(&v16 + 1) + 8 * i), v7, v8, v16);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v16, v20, 16);
    }

    while (v9);
  }

  v14 = objc_msgSend_slidesPerPage(self, v12, v13);
  if (v6 % v14)
  {
    return v6 / v14 + 1;
  }

  else
  {
    return v6 / v14;
  }
}

- (BOOL)incrementPage
{
  objc_msgSend_p_segmentSlidesIfNecessary(self, a2, v2);
  if (self->super.super.super._currentSlideNode)
  {
    v5 = self->_pageIndex + 1;
  }

  else
  {
    v5 = 0;
  }

  self->_pageIndex = v5;
  v6 = objc_msgSend_p_segmentsForPage_(self, v4, v5);
  segmentsForCurrentPage = self->_segmentsForCurrentPage;
  self->_segmentsForCurrentPage = v6;

  if (objc_msgSend_count(self->_segmentsForCurrentPage, v8, v9))
  {
    v12 = objc_msgSend_objectAtIndexedSubscript_(self->_segmentsForCurrentPage, v10, 0);
    v15 = objc_msgSend_slideNode(v12, v13, v14);
    currentSlideNode = self->super.super.super._currentSlideNode;
    self->super.super.super._currentSlideNode = v15;

    v18 = objc_msgSend_objectAtIndexedSubscript_(self->_segmentsForCurrentPage, v17, 0);
    self->super.super.super._currentBuildIndex = objc_msgSend_buildIndex(v18, v19, v20);
  }

  v21 = objc_msgSend_count(self->_segmentsForCurrentPage, v10, v11);
  if (v21)
  {
    v23.receiver = self;
    v23.super_class = KNPdfHandoutExporter;
    LOBYTE(v21) = [(KNRenderingExporter *)&v23 incrementPage];
  }

  return v21;
}

- (void)p_segmentSlidesIfNecessary
{
  if (!self->_segments)
  {
    objc_msgSend_scaledClipRectForPageCount(self, a2, v2);
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = *MEMORY[0x277D7FFE8];
    if (objc_msgSend_isPrinting(*(&self->super.super.super.super.super.isa + v12), v13, v14))
    {

      objc_msgSend_p_segmentSlideNodesWithScaledClipRect_(self, v15, v16, v5, v7, v9, v11);
    }

    else
    {
      objc_msgSend_setIsPrinting_(*(&self->super.super.super.super.super.isa + v12), v15, 1);
      objc_msgSend_rectBySubtractingDefaultPageMarginsFromRect_(self, v17, v18, v5, v7, v9, v11);
      objc_msgSend_p_segmentSlideNodesWithScaledClipRect_(self, v19, v20);
      v22 = *(&self->super.super.super.super.super.isa + v12);

      objc_msgSend_setIsPrinting_(v22, v21, 0);
    }
  }
}

- (void)drawPolyPageBodyInContext:(CGContext *)context scaledClipRect:(CGRect)rect
{
  width = rect.size.width;
  height = rect.size.height;
  y = rect.origin.y;
  x = rect.origin.x;
  v75 = *MEMORY[0x277D85DE8];
  v57 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D7FFD8]);
  v58 = objc_msgSend_show(v57, v6, v7);
  objc_msgSend_size(v58, v8, v9);
  v64 = objc_msgSend_slidesPerPage(self, v10, v11);
  isPrintingSlideNumbers = objc_msgSend_isPrintingSlideNumbers(self, v12, v13);
  v15 = 3.0;
  if (width < height)
  {
    v15 = 2.0;
  }

  v16 = width / v15;
  if (isPrintingSlideNumbers)
  {
    v17 = v16 + -18.0;
  }

  else
  {
    v17 = v16;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = self->_segmentsForCurrentPage;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v70, v74, 16);
  if (v21)
  {
    v22 = 0;
    v23 = (height + (v64 - 1) * -18.0) / v64;
    v24 = y + height - v23;
    v61 = v23 + 18.0;
    v59 = -(v23 + 18.0);
    v65 = v23;
    v62 = (v23 / 27.0);
    v63 = *v71;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v71 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v70 + 1) + 8 * i);
        v27 = objc_msgSend_slideNode(v26, v19, v20);
        v30 = objc_msgSend_buildIndex(v26, v28, v29);
        v33 = objc_msgSend_notesIndex(v26, v31, v32);
        v36 = objc_msgSend_span(v26, v34, v35);
        TSUFitOrFillSizeInRect();
        v41 = v39;
        v42 = v40;
        v43 = x + v17 * 0.5 - v39 * 0.5;
        v44 = v65 + v24 - v40;
        if (!v33)
        {
          objc_msgSend_drawImageForSlideNode_event_slideSize_intoRect_annotationFlagsScale_context_(self, v37, v27, v30, context, v39, v40, x + v17 * 0.5 - v39 * 0.5, v44, v39, v40, 0.0);
        }

        if (objc_msgSend_isPrintingSlideNumbers(self, v37, v38))
        {
          if (!v33)
          {
            objc_msgSend_drawSlideNumberForNode_buildIndex_forRect_context_position_(self, v45, v27, v30, context, 1, x, v24, v17, v65);
          }

          v17 = v17 + 18.0;
        }

        if (v36 < 2)
        {
          v48 = (height + (v64 - 1) * -18.0) / v64;
        }

        else
        {
          v47 = (v36 - 1);
          v24 = v24 + v59 * v47;
          v48 = v47 * 18.0 + v65 * v36;
        }

        v49 = *MEMORY[0x277D7FFE8];
        isPrinting = objc_msgSend_isPrinting(*(&self->super.super.super.super.super.isa + v49), v45, v46);
        objc_msgSend_setIsPrinting_(*(&self->super.super.super.super.super.isa + v49), v51, 1);
        objc_msgSend_p_drawNotesForNode_index_forRect_notesIndex_scaledClipRect_context_(self, v52, v27, v30, v33, context, x, v24, v17, v48, x, y, width, height);
        objc_msgSend_setIsPrinting_(*(&self->super.super.super.super.super.isa + v49), v53, isPrinting);
        if (!v33)
        {
          objc_msgSend_drawBorderForRect_context_(self, v54, context, v43, v44, v41, v42);
        }

        v22 += v36;
        if (v64 != v22)
        {
          objc_msgSend_p_drawDividerLineForRect_pageRect_context_(self, v54, context, x, v24, v17, v48, x, y, width, height);
        }

        objc_msgSend_p_drawRuledLinesForRect_pageRect_numberOfLines_context_(self, v54, v62, context, x, v24, v17, v48, x, y, width, height);
        if (objc_msgSend_isPrintingSlideNumbers(self, v55, v56))
        {
          v17 = v17 + -18.0;
        }

        v24 = v24 - v61;
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v70, v74, 16);
    }

    while (v21);
  }
}

- (id)p_segmentsForPage:(unint64_t)page
{
  v36 = *MEMORY[0x277D85DE8];
  if (!self->_segments)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNPdfHandoutExporter p_segmentsForPage:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPdfHandoutExporter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 225, 0, "invalid nil value for '%{public}s'", "_segments");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v12 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, page);
  v15 = objc_msgSend_slidesPerPage(self, v13, v14);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v16 = self->_segments;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v31, v35, 16);
  if (v20)
  {
    v21 = 0;
    v22 = v15 * page;
    v23 = *v32;
LABEL_5:
    v24 = 0;
    while (1)
    {
      if (*v32 != v23)
      {
        objc_enumerationMutation(v16);
      }

      v25 = *(*(&v31 + 1) + 8 * v24);
      v26 = objc_msgSend_span(v25, v18, v19);
      v21 += v26;
      if (v21 > v22)
      {
        objc_msgSend_addObject_(v12, v18, v25);
        v15 -= v26;
        if (!v15)
        {
          break;
        }
      }

      if (v20 == ++v24)
      {
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v31, v35, 16);
        if (v20)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v29 = objc_msgSend_copy(v12, v27, v28);

  return v29;
}

- (void)p_segmentSlideNodesWithScaledClipRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v41 = *MEMORY[0x277D85DE8];
  v30 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v3);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = objc_msgSend_slidesForPrinting(self, v9, v10);
  obj = v11;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v35, v40, 16);
  if (v14)
  {
    v15 = 0;
    v16 = *v36;
    do
    {
      v17 = 0;
      do
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = objc_msgSend_p_segmentsForSlideNode_withScaledClipRect_firstSegmentIndex_(self, v13, *(*(&v35 + 1) + 8 * v17), v15, x, y, width, height);
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v19 = v18;
        v21 = 0;
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v31, v39, 16);
        if (v24)
        {
          v25 = *v32;
          do
          {
            v26 = 0;
            do
            {
              if (*v32 != v25)
              {
                objc_enumerationMutation(v19);
              }

              v21 += objc_msgSend_span(*(*(&v31 + 1) + 8 * v26++), v22, v23);
            }

            while (v24 != v26);
            v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v31, v39, 16);
          }

          while (v24);
        }

        objc_msgSend_addObjectsFromArray_(v30, v27, v19);
        v15 += v21;
        ++v17;
      }

      while (v17 != v14);
      v11 = obj;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v35, v40, 16);
    }

    while (v14);
  }

  segments = self->_segments;
  self->_segments = v30;
}

- (id)p_segmentsForSlideNode:(id)node withScaledClipRect:(CGRect)rect firstSegmentIndex:(unint64_t)index
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  nodeCopy = node;
  v14 = objc_msgSend_array(MEMORY[0x277CBEB18], v12, v13);
  if (objc_msgSend_isPrintingNotes(self, v15, v16) && objc_msgSend_hasNote(nodeCopy, v17, v18))
  {
    v19 = objc_msgSend_p_noteSegmentsForSlideNode_withScaledClipRect_firstSegmentIndex_(self, v17, nodeCopy, index, x, y, width, height);
    objc_msgSend_addObjectsFromArray_(v14, v20, v19);
  }

  if (objc_msgSend_isPrintingBuilds(self, v17, v18) && objc_msgSend_safeHasBuildEvents(nodeCopy, v21, v22))
  {
    for (i = objc_msgSend_count(v14, v21, v22) != 0; i <= objc_msgSend_safeBuildEventCount(nodeCopy, v23, v24); ++i)
    {
      v28 = [KNPrintSegment alloc];
      v30 = objc_msgSend_initWithSlideNode_buildIndex_notesIndex_span_(v28, v29, nodeCopy, i, 0, 1);
      objc_msgSend_addObject_(v14, v31, v30);
    }
  }

  else if (!objc_msgSend_count(v14, v21, v22))
  {
    v32 = [KNPrintSegment alloc];
    v34 = objc_msgSend_initWithSlideNode_buildIndex_notesIndex_span_(v32, v33, nodeCopy, 0, 0, 1);
    objc_msgSend_addObject_(v14, v35, v34);
  }

  v36 = objc_msgSend_copy(v14, v26, v27);

  return v36;
}

- (id)p_noteSegmentsForSlideNode:(id)node withScaledClipRect:(CGRect)rect firstSegmentIndex:(unint64_t)index
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v110[1] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v107 = objc_msgSend_array(MEMORY[0x277CBEB18], v11, v12);
  if (objc_msgSend_hasNote(nodeCopy, v13, v14))
  {
    v104 = objc_msgSend_slidesPerPage(self, v15, v16);
    v112.origin.x = x;
    v112.origin.y = y;
    v112.size.width = width;
    v112.size.height = height;
    MaxX = CGRectGetMaxX(v112);
    v18 = 3.0;
    if (width < height)
    {
      v18 = 2.0;
    }

    v113.size.width = width / v18;
    v113.origin.x = x;
    v113.origin.y = y;
    v113.size.height = (height + (v104 - 1) * -18.0) / v104;
    v19 = CGRectGetMaxX(v113);
    objc_opt_class();
    v22 = objc_msgSend_slide(nodeCopy, v20, v21);
    v23 = TSUDynamicCast();

    v102 = v23;
    v26 = objc_msgSend_note(v23, v24, v25);
    objc_msgSend_setShrinkTextForPrinting_(v26, v27, 0);
    v30 = objc_msgSend_containedStorage(v26, v28, v29);
    v109 = objc_msgSend_length(v30, v31, v32);

    v108 = objc_msgSend_canvas(*(&self->super.super.super.super.super.isa + *MEMORY[0x277D7FFE8]), v33, v34);
    v38 = objc_msgSend_layoutController(v108, v35, v36);
    if (v109)
    {
      v39 = 0;
      v40 = 0;
      v41 = MaxX - v19 + -25.0 + 18.0;
      v42 = (v104 + index / v104 * v104 - index - 1) * 18.0 + (height + (v104 - 1) * -18.0) / v104 * (v104 + index / v104 * v104 - index);
      v103 = v104 + index / v104 * v104 - index;
      v105 = v103;
      do
      {
        objc_msgSend_setInitialCharacterIndexForExporting_(v26, v37, v39);
        objc_msgSend_setFrameForPrinting_(v26, v43, v44, 0.0, 0.0, v41, v42);
        v110[0] = v26;
        v46 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v45, v110, 1);
        objc_msgSend_setInfosToDisplay_(v108, v47, v46);

        objc_opt_class();
        v49 = objc_msgSend_layoutForInfo_(v38, v48, v26);
        v50 = TSUDynamicCast();

        if (!v50)
        {
          v53 = MEMORY[0x277D81150];
          v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "[KNPdfHandoutExporter p_noteSegmentsForSlideNode:withScaledClipRect:firstSegmentIndex:]");
          v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPdfHandoutExporter.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v57, v54, v56, 339, 0, "invalid nil value for '%{public}s'", "noteLayout");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59);
        }

        objc_msgSend_validateLayouts(v38, v51, v52);
        v62 = objc_msgSend_containedLayout(v50, v60, v61);

        if (!v62)
        {
          v65 = MEMORY[0x277D81150];
          v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "[KNPdfHandoutExporter p_noteSegmentsForSlideNode:withScaledClipRect:firstSegmentIndex:]");
          v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPdfHandoutExporter.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v69, v66, v68, 343, 0, "invalid nil value for '%{public}s'", "containedLayout");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71);
        }

        objc_msgSend_invalidateTextLayout(v62, v63, v64);
        objc_msgSend_invalidateLayout_(v38, v72, v62);
        objc_msgSend_validateLayouts(v38, v73, v74);
        v77 = objc_msgSend_containedTextRange(v62, v75, v76);
        v79 = v78;
        objc_msgSend_setInfosToDisplay_(v108, v78, MEMORY[0x277CBEBF8]);
        v82 = &v79[v77];
        if (&v79[v77] >= v109)
        {
          v87 = MEMORY[0x277D80DC0];
          v88 = objc_msgSend_columns(v62, v80, v81);
          objc_msgSend_columnRectForRange_withColumns_(v87, v89, v77, v79, v88);
          v91 = v90;

          v92 = [KNPrintSegment alloc];
          v94 = vcvtpd_u64_f64(v91 / (height / v104));
          if (v103 >= v94)
          {
            v95 = objc_msgSend_initWithSlideNode_buildIndex_notesIndex_span_(v92, v93, nodeCopy, 0, v39, v94);
          }

          else
          {
            v95 = objc_msgSend_initWithSlideNode_buildIndex_notesIndex_span_(v92, v93, nodeCopy, 0, v39, v103);
          }

          v85 = v95;
          objc_msgSend_addObject_(v107, v96, v95);
        }

        else
        {
          v83 = [KNPrintSegment alloc];
          v85 = objc_msgSend_initWithSlideNode_buildIndex_notesIndex_span_(v83, v84, nodeCopy, 0, v39, v105);
          v105 = v104;
          v42 = height;
          objc_msgSend_addObject_(v107, v86, v85);
        }

        v39 = v82;
        v40 = v62;
      }

      while (v82 < v109);
    }

    else
    {
      v62 = 0;
    }

    objc_msgSend_setInitialCharacterIndexForExporting_(v26, v37, 0);
    objc_msgSend_invalidateTextLayout(v62, v97, v98);
    if (v62)
    {
      objc_msgSend_invalidateLayout_(v38, v99, v62);
    }
  }

  v100 = objc_msgSend_copy(v107, v15, v16);

  return v100;
}

- (void)p_drawDividerLineForRect:(CGRect)rect pageRect:(CGRect)pageRect context:(CGContext *)context
{
  height = pageRect.size.height;
  width = pageRect.size.width;
  y = pageRect.origin.y;
  x = pageRect.origin.x;
  v10 = rect.origin.x;
  MinY = CGRectGetMinY(rect);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MaxX = CGRectGetMaxX(v21);
  v15 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D81180], v13, v14, 0.0, 0.5);
  v18 = objc_msgSend_CGColor(v15, v16, v17);
  CGContextSetStrokeColorWithColor(context, v18);
  v19 = MinY + -9.0;

  CGContextSetLineWidth(context, 0.25);
  CGContextBeginPath(context);
  CGContextMoveToPoint(context, v10, v19);
  CGContextAddLineToPoint(context, v10 + MaxX - v10, v19);
  CGContextClosePath(context);

  CGContextStrokePath(context);
}

- (void)p_drawRuledLinesForRect:(CGRect)rect pageRect:(CGRect)pageRect numberOfLines:(unint64_t)lines context:(CGContext *)context
{
  linesCopy = lines;
  height = pageRect.size.height;
  width = pageRect.size.width;
  y = pageRect.origin.y;
  x = pageRect.origin.x;
  v12 = rect.size.height;
  v13 = rect.size.width;
  v14 = rect.origin.y;
  v15 = rect.origin.x;
  if (objc_msgSend_isPrintingRuledLines(self, a2, lines))
  {
    v26.origin.x = v15;
    v26.origin.y = v14;
    v26.size.width = v13;
    v26.size.height = v12;
    MaxX = CGRectGetMaxX(v26);
    v27.origin.x = v15;
    v27.origin.y = v14;
    v27.size.width = v13;
    v27.size.height = v12;
    MaxY = CGRectGetMaxY(v27);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v17 = CGRectGetMaxX(v28);
    v20 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D81180], v18, v19, 0.0, 0.25);
    v23 = objc_msgSend_CGColor(v20, v21, v22);
    CGContextSetStrokeColorWithColor(context, v23);

    CGContextSetLineWidth(context, 0.25);
    if (linesCopy)
    {
      v24 = MaxX + 9.0 + v17 - (MaxX + 9.0);
      do
      {
        MaxY = MaxY + -27.0;
        CGContextBeginPath(context);
        CGContextMoveToPoint(context, MaxX + 9.0, MaxY);
        CGContextAddLineToPoint(context, v24, MaxY);
        CGContextClosePath(context);
        CGContextStrokePath(context);
        --linesCopy;
      }

      while (linesCopy);
    }
  }
}

- (void)p_drawNotesForNode:(id)node index:(unint64_t)index forRect:(CGRect)rect notesIndex:(unint64_t)notesIndex scaledClipRect:(CGRect)clipRect context:(CGContext *)context
{
  height = clipRect.size.height;
  width = clipRect.size.width;
  y = clipRect.origin.y;
  x = clipRect.origin.x;
  v14 = rect.size.height;
  v15 = rect.size.width;
  v16 = rect.origin.y;
  v17 = rect.origin.x;
  nodeCopy = node;
  if (objc_msgSend_isPrintingNotes(self, v21, v22))
  {
    v25 = objc_msgSend_hasNote(nodeCopy, v23, v24) ^ 1;
    if (index)
    {
      LOBYTE(v25) = 1;
    }

    if ((v25 & 1) == 0)
    {
      memset(&v81, 0, sizeof(v81));
      CGContextGetTextMatrix(&v81, context);
      CGContextSaveGState(context);
      self->_isDrawingNote = 1;
      v28 = objc_msgSend_clearColor(MEMORY[0x277D81180], v26, v27);
      v29 = *MEMORY[0x277D7FFE8];
      objc_msgSend_setBackgroundColor_(*(&self->super.super.super.super.super.isa + v29), v30, v28);

      v82.origin.x = v17;
      v82.origin.y = v16;
      v82.size.width = v15;
      v82.size.height = v14;
      MaxX = CGRectGetMaxX(v82);
      CGContextTranslateCTM(context, MaxX + 18.0, v16);
      v83.origin.x = x;
      v83.origin.y = y;
      v83.size.width = width;
      v83.size.height = height;
      v32 = CGRectGetMaxX(v83);
      v84.origin.x = v17;
      v84.origin.y = v16;
      v84.size.width = v15;
      v84.size.height = v14;
      v33 = CGRectGetMaxX(v84);
      v36 = objc_msgSend_cyanColor(MEMORY[0x277D81180], v34, v35);
      v37 = v32 - v33 + -25.0 + 18.0;
      nullsub_1(context, v36, 0.0, 0.0, v37, v14);

      objc_msgSend_setCurrentSlideNode_(self, v38, nodeCopy);
      objc_opt_class();
      v41 = objc_msgSend_slide(self->super.super.super._currentSlideNode, v39, v40);
      v42 = TSUDynamicCast();

      v77 = v42;
      v45 = objc_msgSend_note(v42, v43, v44);
      objc_msgSend_setShrinkTextForPrinting_(v45, v46, 0);
      objc_msgSend_setFrameForPrinting_(v45, v47, v48, 0.0, 0.0, v37, v14);
      objc_msgSend_setInitialCharacterIndexForExporting_(v45, v49, notesIndex);
      v78 = objc_msgSend_canvas(*(&self->super.super.super.super.super.isa + v29), v50, v51);
      v54 = objc_msgSend_layoutController(v78, v52, v53);
      objc_opt_class();
      v56 = objc_msgSend_layoutForInfo_(v54, v55, v45);
      v57 = TSUDynamicCast();

      if (v57)
      {
        v60 = objc_msgSend_containedLayout(v57, v58, v59);
        objc_msgSend_invalidateTextLayout(v60, v61, v62);
        objc_msgSend_invalidateLayout_(v54, v63, v60);
        objc_msgSend_validateLayouts(v54, v64, v65);
      }

      else
      {
        v60 = 0;
      }

      v80.receiver = self;
      v80.super_class = KNPdfHandoutExporter;
      if (![(TSARenderingExporter *)&v80 drawCurrentPageInContext:context viewScale:0 unscaledClipRect:1.0 createPage:0.0, 0.0, v37, v14])
      {
        v67 = MEMORY[0x277D81150];
        v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "[KNPdfHandoutExporter p_drawNotesForNode:index:forRect:notesIndex:scaledClipRect:context:]");
        v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPdfHandoutExporter.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v71, v68, v70, 465, 0, "Failed to print note");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73);
      }

      objc_msgSend_setInitialCharacterIndexForExporting_(v45, v66, 0);
      objc_msgSend_invalidateTextLayout(v60, v74, v75);
      if (v60)
      {
        objc_msgSend_invalidateLayout_(v54, v76, v60);
      }

      objc_msgSend_setInfosToDisplay_(v78, v76, MEMORY[0x277CBEBF8]);
      self->_isDrawingNote = 0;

      CGContextRestoreGState(context);
      v79 = v81;
      CGContextSetTextMatrix(context, &v79);
    }
  }
}

@end
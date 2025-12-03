@interface KNPdfNoteExporter
- (BOOL)drawMonoPageExtraContentInContext:(CGContext *)context scaledClipRect:(CGRect)rect;
- (BOOL)incrementPage;
- (CGRect)monoSlideRectFromScaledClipRect:(CGRect)rect outScaledClipRect:(CGRect *)clipRect;
- (id)currentInfos;
- (id)printHelper:(id)helper noteSegmentsForSlideNode:(id)node;
- (id)slideNodesForPrintHelper:(id)helper;
- (unint64_t)pageCount;
- (void)p_preparePrintHelperIfNeeded;
@end

@implementation KNPdfNoteExporter

- (id)currentInfos
{
  objc_opt_class();
  v5 = objc_msgSend_slide(self->super.super._currentSlideNode, v3, v4);
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
      v13.super_class = KNPdfNoteExporter;
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
  objc_msgSend_p_preparePrintHelperIfNeeded(self, a2, v2);
  helper = self->_helper;

  return objc_msgSend_pageCount(helper, v4, v5);
}

- (BOOL)incrementPage
{
  objc_msgSend_p_preparePrintHelperIfNeeded(self, a2, v2);
  if (!self->super.super._currentSlideNode)
  {
    objc_msgSend_resetPage(self->_helper, v4, v5);
  }

  v6 = objc_msgSend_incrementPage(self->_helper, v4, v5);
  v9 = objc_msgSend_slideNode(self->_helper, v7, v8);
  currentSlideNode = self->super.super._currentSlideNode;
  self->super.super._currentSlideNode = v9;

  self->super.super._currentBuildIndex = objc_msgSend_buildIndex(self->_helper, v11, v12);
  if (!v6)
  {
    return 0;
  }

  v14.receiver = self;
  v14.super_class = KNPdfNoteExporter;
  return [(KNRenderingExporter *)&v14 incrementPage];
}

- (void)p_preparePrintHelperIfNeeded
{
  if (!self->_helper)
  {
    v3 = [KNSlideLayoutPrintHelper alloc];
    v5 = objc_msgSend_initWithRenderingExporter_(v3, v4, self);
    helper = self->_helper;
    self->_helper = v5;

    v7 = self->_helper;

    MEMORY[0x2821F9670](v7, sel_setDataSource_, self);
  }
}

- (CGRect)monoSlideRectFromScaledClipRect:(CGRect)rect outScaledClipRect:(CGRect *)clipRect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = objc_msgSend_show(*(&self->super.super.super.super.isa + *MEMORY[0x277D7FFD8]), a2, clipRect);
  objc_msgSend_size(v9, v10, v11);
  v12 = y + 9.0;
  v13 = height + -18.0;
  v14 = x + 9.0;
  v15 = width + -18.0;
  TSUFitOrFillSizeInRect();
  v25 = CGRectIntegral(v24);
  v16 = v25.origin.x;
  v17 = v25.origin.y;
  v18 = v25.size.width;
  v19 = v25.size.height;
  if (clipRect)
  {
    v26.origin.x = v14;
    v26.origin.y = v12;
    v26.size.width = v15;
    v26.size.height = v13;
    *clipRect = CGRectIntegral(v26);
  }

  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (BOOL)drawMonoPageExtraContentInContext:(CGContext *)context scaledClipRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = objc_msgSend_commentsPageIndex(self->_helper, a2, context);
  v13 = objc_msgSend_notesIndex(self->_helper, v11, v12);
  if (self->super.super._currentBuildIndex)
  {
    return 0;
  }

  v16 = v13;
  if (!objc_msgSend_hasNote(self->super.super._currentSlideNode, v14, v15))
  {
    return 0;
  }

  if ((v10 - 0x7FFFFFFFFFFFFFFFLL) >= 0x8000000000000002 && v16 == 0)
  {
    return 0;
  }

  memset(&v76, 0, sizeof(v76));
  CGContextGetTextMatrix(&v76, context);
  CGContextSaveGState(context);
  self->_isDrawingNote = 1;
  v20 = objc_msgSend_clearColor(MEMORY[0x277D81180], v18, v19);
  v21 = *MEMORY[0x277D7FFE8];
  objc_msgSend_setBackgroundColor_(*(&self->super.super.super.super.isa + v21), v22, v20);

  CGContextTranslateCTM(context, x, y);
  if (v16)
  {
    v77.origin.x = x;
    v77.origin.y = y;
    v77.size.width = width;
    v77.size.height = height;
    v25 = CGRectGetWidth(v77);
    v78.origin.x = x;
    v78.origin.y = y;
    v78.size.width = width;
    v78.size.height = height;
    v26 = CGRectGetHeight(v78);
    width = v25;
  }

  else
  {
    v26 = height * 0.5 + -18.0;
  }

  v29 = objc_msgSend_cyanColor(MEMORY[0x277D81180], v23, v24);
  nullsub_1(context, v29, 0.0, 0.0, width, v26);

  objc_opt_class();
  v32 = objc_msgSend_slide(self->super.super._currentSlideNode, v30, v31);
  v33 = TSUDynamicCast();

  v36 = objc_msgSend_note(v33, v34, v35);
  objc_msgSend_setShrinkTextForPrinting_(v36, v37, 0);
  objc_msgSend_setFrameForPrinting_(v36, v38, v39, 0.0, 0.0, width, v26);
  objc_msgSend_setInitialCharacterIndexForExporting_(v36, v40, v16);
  v73 = objc_msgSend_canvas(*(&self->super.super.super.super.isa + v21), v41, v42);
  v45 = objc_msgSend_layoutController(v73, v43, v44);
  v72 = v45;
  objc_opt_class();
  v47 = objc_msgSend_layoutForInfo_(v45, v46, v36);
  v48 = TSUDynamicCast();

  v71 = v48;
  if (v48)
  {
    v51 = objc_msgSend_containedLayout(v48, v49, v50);
    objc_msgSend_invalidateTextLayout(v51, v52, v53);
    objc_msgSend_invalidateLayout_(v45, v54, v51);
    objc_msgSend_validateLayouts(v45, v55, v56);
  }

  else
  {
    v51 = 0;
  }

  v70 = v21;
  isPrinting = objc_msgSend_isPrinting(*(&self->super.super.super.super.isa + v21), v49, v50);
  if ((isPrinting & 1) == 0)
  {
    objc_msgSend_setIsPrinting_(*(&self->super.super.super.super.isa + v21), v57, 1);
  }

  v75.receiver = self;
  v75.super_class = KNPdfNoteExporter;
  v27 = [(TSARenderingExporter *)&v75 drawCurrentPageInContext:context viewScale:0 unscaledClipRect:1.0 createPage:0.0, 0.0, width, v26];
  if (!v27)
  {
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "[KNPdfNoteExporter drawMonoPageExtraContentInContext:scaledClipRect:]");
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPdfNoteExporter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v64, v61, v63, 196, 0, "Failed to print note");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66);
  }

  if ((isPrinting & 1) == 0)
  {
    objc_msgSend_setIsPrinting_(*(&self->super.super.super.super.isa + v70), v59, 0);
  }

  objc_msgSend_setInitialCharacterIndexForExporting_(v36, v59, 0);
  objc_msgSend_invalidateTextLayout(v51, v67, v68);
  if (v51)
  {
    objc_msgSend_invalidateLayout_(v72, v69, v51);
  }

  objc_msgSend_setInfosToDisplay_(v73, v69, MEMORY[0x277CBEBF8]);
  self->_isDrawingNote = 0;

  CGContextRestoreGState(context);
  v74 = v76;
  CGContextSetTextMatrix(context, &v74);
  return v27;
}

- (id)slideNodesForPrintHelper:(id)helper
{
  v3 = objc_msgSend_slidesForPrinting(self, a2, helper);

  return v3;
}

- (id)printHelper:(id)helper noteSegmentsForSlideNode:(id)node
{
  v108[1] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v5 = *MEMORY[0x277D7FFE8];
  isPrinting = objc_msgSend_isPrinting(*(&self->super.super.super.super.isa + v5), v6, v7);
  objc_msgSend_setIsPrinting_(*(&self->super.super.super.super.isa + v5), v9, 0);
  v103 = v5;
  objc_msgSend_scaledClipRectForPageCount(self, v10, v11);
  v107.origin.x = v12;
  v107.origin.y = v13;
  v107.size.width = v14;
  v107.size.height = v15;
  objc_msgSend_setIsPrinting_(*(&self->super.super.super.super.isa + v5), v16, isPrinting);
  objc_msgSend_monoSlideRectFromScaledClipRect_outScaledClipRect_(self, v17, &v107, *&v107.origin, *&v107.size);
  selfCopy = self;
  v105 = objc_msgSend_array(MEMORY[0x277CBEB18], v18, v19);
  if (objc_msgSend_hasNote(nodeCopy, v20, v21))
  {
    objc_opt_class();
    v26 = objc_msgSend_slide(nodeCopy, v24, v25);
    v101 = TSUDynamicCast();

    v29 = objc_msgSend_note(v101, v27, v28);
    objc_msgSend_setShrinkTextForPrinting_(v29, v30, 0);
    v33 = objc_msgSend_containedStorage(v29, v31, v32);
    v104 = objc_msgSend_length(v33, v34, v35);

    Width = CGRectGetWidth(v107);
    Height = CGRectGetHeight(v107);
    size = v107.size;
    v43 = objc_msgSend_isPrinting(*(&self->super.super.super.super.isa + v5), v39, v40);
    if ((v43 & 1) == 0)
    {
      objc_msgSend_setIsPrinting_(*(&self->super.super.super.super.isa + v5), v41, 1);
    }

    v44 = objc_msgSend_canvas(*(&self->super.super.super.super.isa + v5), v41, v42);
    v48 = objc_msgSend_layoutController(v44, v45, v46);
    v100 = v43;
    if (v104)
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      do
      {
        v52 = [KNPrintSegment alloc];
        v54 = objc_msgSend_initWithSlideNode_buildIndex_notesIndex_span_(v52, v53, nodeCopy, 0, v50, v49);
        objc_msgSend_addObject_(v105, v55, v54);
        objc_msgSend_setInitialCharacterIndexForExporting_(v29, v56, v50);
        if (v49)
        {
          v59 = Height;
        }

        else
        {
          v59 = size.height * 0.5 + -18.0;
        }

        if (v49)
        {
          objc_msgSend_setFrameForPrinting_(v29, v57, v58, 0.0, 0.0, Width, v59);
        }

        else
        {
          objc_msgSend_setFrameForPrinting_(v29, v57, v58, 0.0, 0.0, size.width, v59);
        }

        v108[0] = v29;
        v61 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v60, v108, 1);
        objc_msgSend_setInfosToDisplay_(v44, v62, v61);

        objc_opt_class();
        v64 = objc_msgSend_layoutForInfo_(v48, v63, v29);
        v65 = TSUDynamicCast();

        if (!v65)
        {
          v68 = MEMORY[0x277D81150];
          v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "[KNPdfNoteExporter printHelper:noteSegmentsForSlideNode:]");
          v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPdfNoteExporter.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v72, v69, v71, 282, 0, "invalid nil value for '%{public}s'", "noteLayout");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74);
        }

        objc_msgSend_validateLayouts(v48, v66, v67);
        v77 = objc_msgSend_containedLayout(v65, v75, v76);

        if (!v77)
        {
          v80 = MEMORY[0x277D81150];
          v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "[KNPdfNoteExporter printHelper:noteSegmentsForSlideNode:]");
          v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPdfNoteExporter.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v84, v81, v83, 286, 0, "invalid nil value for '%{public}s'", "containedLayout");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86);
        }

        objc_msgSend_invalidateTextLayout(v77, v78, v79);
        objc_msgSend_invalidateLayout_(v48, v87, v77);
        objc_msgSend_validateLayouts(v48, v88, v89);
        v92 = objc_msgSend_containedTextRange(v77, v90, v91);
        v94 = v93;
        objc_msgSend_setInfosToDisplay_(v44, v93, MEMORY[0x277CBEBF8]);

        v50 = &v94[v92];
        ++v49;
        v51 = v77;
      }

      while (v50 < v104);
    }

    else
    {
      v77 = 0;
    }

    if ((v100 & 1) == 0)
    {
      objc_msgSend_setIsPrinting_(*(&selfCopy->super.super.super.super.isa + v103), v47, 0);
    }

    objc_msgSend_setInitialCharacterIndexForExporting_(v29, v47, 0);
    objc_msgSend_invalidateTextLayout(v77, v95, v96);
    if (v77)
    {
      objc_msgSend_invalidateLayout_(v48, v97, v77);
    }
  }

  v98 = objc_msgSend_copy(v105, v22, v23);

  return v98;
}

@end
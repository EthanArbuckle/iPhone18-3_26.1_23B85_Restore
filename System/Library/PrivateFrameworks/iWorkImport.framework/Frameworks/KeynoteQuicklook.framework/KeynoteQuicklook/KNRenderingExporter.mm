@interface KNRenderingExporter
- (BOOL)drawImageForSlideNode:(id)node event:(unint64_t)event slideSize:(CGSize)size intoRect:(CGRect)rect annotationFlagsScale:(double)scale context:(CGContext *)context;
- (BOOL)drawMonoPageInContext:(CGContext *)context viewScale:(double)scale unscaledClipRect:(CGRect)rect createPage:(BOOL)page helper:(id)helper;
- (BOOL)exportToURL:(id)l pageNumber:(unint64_t)number delegate:(id)delegate error:(id *)error;
- (BOOL)incrementPage;
- (BOOL)preparePage:(unint64_t)page;
- (CGRect)beginPageInContext:(CGContext *)context viewScale:(double)scale unscaledClipRect:(CGRect)rect createPage:(BOOL)page;
- (CGRect)boundsRect;
- (CGRect)monoSlideRectFromScaledClipRect:(CGRect)rect outScaledClipRect:(CGRect *)clipRect;
- (CGRect)scaledClipRectForPageCount;
- (CGRect)scaledClipRectMinusBottomSpace:(CGRect)space;
- (CGRect)unscaledClipRectForPageCount;
- (KNRenderingExporter)initWithDocumentRoot:(id)root;
- (NSArray)slidesForPrinting;
- (TSWPFontHeightInfo)bottomTextFontHeightInfo;
- (double)bottomTextVerticalSpace;
- (id)currentInfos;
- (id)p_slideNumberStringForSlideNode:(id)node buildIndex:(unint64_t)index;
- (id)p_sourceNodes;
- (id)quickLookSlideNodes;
- (int64_t)pageIndexFromQuickLookSlideNode:(id)node;
- (unint64_t)currentSlideNumber;
- (unint64_t)maximumRangeValue;
- (unint64_t)p_slideNumberForSlideNode:(id)node;
- (unint64_t)pageCount;
- (unint64_t)rangeEnd;
- (unint64_t)rangeStart;
- (void)addAnchorPointForSlide:(id)slide context:(CGContext *)context;
- (void)drawBorderForRect:(CGRect)rect context:(CGContext *)context;
- (void)drawDateForRect:(CGRect)rect context:(CGContext *)context;
- (void)drawNSStringDateForRect:(CGRect)rect context:(CGContext *)context;
- (void)drawSlideNumberForNode:(id)node buildIndex:(unint64_t)index forRect:(CGRect)rect context:(CGContext *)context position:(int64_t)position;
- (void)enableRenderAllContent;
- (void)endPageInContext:(CGContext *)context createPage:(BOOL)page;
- (void)setCurrentSlideNode:(id)node;
- (void)setOptions:(id)options;
- (void)setSlideRangeEnd:(unint64_t)end;
- (void)setSlideRangeStart:(unint64_t)start;
- (void)setup;
- (void)teardown;
@end

@implementation KNRenderingExporter

- (KNRenderingExporter)initWithDocumentRoot:(id)root
{
  rootCopy = root;
  v5 = [KNImager alloc];
  v7 = objc_msgSend_initWithDocumentRoot_(v5, v6, rootCopy);
  v22.receiver = self;
  v22.super_class = KNRenderingExporter;
  v9 = [(TSARenderingExporter *)&v22 initWithDocumentRoot:rootCopy imager:v7];
  if (v9)
  {
    objc_msgSend_setIsPrinting_(v7, v8, 1);
    objc_msgSend_setShouldShowComments_(v7, v10, v9->_printingComments);
    objc_msgSend_setShouldShowTextCommentHighlights_(v7, v11, 0);
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    currentSlidesOnPage = v9->_currentSlidesOnPage;
    v9->_currentSlidesOnPage = v12;

    v16 = objc_msgSend_show(rootCopy, v14, v15);
    v9->_slidesPerPage = 1;
    v17 = [KNPdfHyperlinkController alloc];
    v19 = objc_msgSend_initWithShow_(v17, v18, v16);
    hyperlinkController = v9->_hyperlinkController;
    v9->_hyperlinkController = v19;

    v9->_rangeStart = 1;
    v9->_rangeEnd = -1;
    v9->_maxRangeValue = -1;
  }

  return v9;
}

- (BOOL)exportToURL:(id)l pageNumber:(unint64_t)number delegate:(id)delegate error:(id *)error
{
  v10 = *(&self->super.super.isa + *MEMORY[0x277D7FFE8]);
  delegateCopy = delegate;
  lCopy = l;
  objc_msgSend_setIsPrinting_(v10, v13, 0);
  v15.receiver = self;
  v15.super_class = KNRenderingExporter;
  LOBYTE(error) = [(TSARenderingExporter *)&v15 exportToURL:lCopy pageNumber:number delegate:delegateCopy error:error];

  return error;
}

- (CGRect)boundsRect
{
  TSURectWithSize();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)currentInfos
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_slide(self->_currentSlideNode, a2, v2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_infosToDisplay(v4, v5, v6);
    isPrintingBackgrounds = objc_msgSend_isPrintingBackgrounds(self, v8, v9);
    v11 = objc_alloc(MEMORY[0x277CBEB18]);
    v14 = objc_msgSend_count(v7, v12, v13);
    v16 = objc_msgSend_initWithCapacity_(v11, v15, v14);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v17 = v7;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v29, v33, 16);
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v29 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if (isPrintingBackgrounds & 1 | ((objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_msgSend_addObject_(v16, v24, v23, v29);
            }
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v24, &v29, v33, 16);
      }

      while (v20);
    }

    v27 = objc_msgSend_copy(v16, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)setup
{
  v5.receiver = self;
  v5.super_class = KNRenderingExporter;
  [(TSARenderingExporter *)&v5 setup];
  currentSlideNode = self->_currentSlideNode;
  self->_currentSlideNode = 0;

  currentSlidesOnPage = self->_currentSlidesOnPage;
  self->_currentSlidesOnPage = 0;
}

- (void)teardown
{
  currentSlideNode = self->_currentSlideNode;
  self->_currentSlideNode = 0;

  currentSlidesOnPage = self->_currentSlidesOnPage;
  self->_currentSlidesOnPage = 0;

  v5.receiver = self;
  v5.super_class = KNRenderingExporter;
  [(TSARenderingExporter *)&v5 teardown];
}

- (unint64_t)pageCount
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_slidesForPrinting(self, a2, v2);
  v9 = objc_msgSend_count(v4, v5, v6);
  if (v9 && objc_msgSend_isPrintingBuilds(self, v7, v8))
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v4;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v26, v30, 16);
    if (v12)
    {
      v15 = v12;
      v16 = 0;
      v17 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v10);
          }

          v19 = *(*(&v26 + 1) + 8 * i);
          if (objc_msgSend_safeHasBuildEvents(v19, v13, v14, v26))
          {
            v16 += objc_msgSend_safeBuildEventCount(v19, v13, v14);
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v26, v30, 16);
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v20 = v16 + v9;
  v21 = v20 / objc_msgSend_slidesPerPage(self, v7, v8, v26);
  if (v20 % objc_msgSend_slidesPerPage(self, v22, v23))
  {
    v24 = v21 + 1;
  }

  else
  {
    v24 = v21;
  }

  return v24;
}

- (BOOL)preparePage:(unint64_t)page
{
  currentSlideNode = self->_currentSlideNode;
  self->_currentSlideNode = 0;

  for (; page; --page)
  {
    objc_msgSend_incrementPage(self, v6, v7);
  }

  v8 = objc_msgSend_currentSlideNode(self, v6, v7);
  v9 = v8 != 0;

  return v9;
}

- (BOOL)incrementPage
{
  v3 = self->_currentPage + 1;
  self->_currentPage = v3;
  return v3 <= objc_msgSend_pageCount(self, a2, v2);
}

- (unint64_t)rangeStart
{
  rangeStart = self->_rangeStart;
  if (rangeStart - 1 >= objc_msgSend_maximumRangeValue(self, a2, v2))
  {
    return 1;
  }

  else
  {
    return rangeStart;
  }
}

- (unint64_t)rangeEnd
{
  rangeEnd = self->_rangeEnd;
  v4 = objc_msgSend_maximumRangeValue(self, a2, v2);
  if (rangeEnd == -1 || rangeEnd > v4)
  {
    v7 = v4;
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNRenderingExporter rangeEnd]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRenderingExporter.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 276, 0, "Expects a value in a valid range for rangeEnd. RangeEnd: '%lu'. Max: '%lu'", rangeEnd, v7);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v13, v14);
    return v7;
  }

  return rangeEnd;
}

- (NSArray)slidesForPrinting
{
  selfCopy = self;
  v4 = objc_msgSend_show(*(&self->super.super.isa + *MEMORY[0x277D7FFD8]), a2, v2);
  v7 = objc_msgSend_rangeStart(selfCopy, v5, v6);
  v10 = objc_msgSend_rangeEnd(selfCopy, v8, v9);
  LOBYTE(selfCopy) = objc_msgSend_isPrintingSkippedSlides(selfCopy, v11, v12);
  v15 = objc_msgSend_slideTree(v4, v13, v14);
  v18 = v15;
  if (selfCopy)
  {
    objc_msgSend_slideNodes(v15, v16, v17);
  }

  else
  {
    objc_msgSend_visibleSlideNodes(v15, v16, v17);
  }
  v19 = ;

  v20 = v7 - 1;
  v23 = objc_msgSend_count(v19, v21, v22);
  if (v10 >= v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = v10;
  }

  v26 = objc_msgSend_subarrayWithRange_(v19, v24, v20, v25 - v20);

  return v26;
}

- (id)p_sourceNodes
{
  objc_opt_class();
  v3 = TSUCheckedDynamicCast();
  v6 = objc_msgSend_show(v3, v4, v5);
  v9 = objc_msgSend_slideTree(v6, v7, v8);
  if (objc_msgSend_isPrintingSkippedSlides(self, v10, v11))
  {
    objc_msgSend_slideNodes(v9, v12, v13);
  }

  else
  {
    objc_msgSend_visibleSlideNodes(v9, v12, v13);
  }
  v14 = ;

  return v14;
}

- (void)drawBorderForRect:(CGRect)rect context:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (objc_msgSend_isPrintingBorders(self, a2, context))
  {
    v11 = MEMORY[0x277D803C0];
    v12 = objc_msgSend_blackColor(MEMORY[0x277D81180], v9, v10);
    v15 = objc_msgSend_strokeWithColor_width_(v11, v13, v12, 0.25);

    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v18 = CGRectInset(v17, -0.125, -0.125);
    objc_msgSend_paintRect_inContext_(v15, v14, context, v18.origin.x, v18.origin.y, v18.size.width, v18.size.height);
  }
}

- (TSWPFontHeightInfo)bottomTextFontHeightInfo
{
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  return self;
}

- (double)bottomTextVerticalSpace
{
  objc_msgSend_bottomTextFontHeightInfo(self, a2, v2, 0, 0);
  objc_msgSend_bottomTextVerticalPosition(self, v4, v5);
  return 0.0 + 11.0 + v6;
}

- (void)drawDateForRect:(CGRect)rect context:(CGContext *)context
{
  if (objc_msgSend_isPrintingDate(self, a2, context, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height))
  {
    printTitle = self->_printTitle;
    if (printTitle)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = MEMORY[0x277CCA968];
      v11 = objc_msgSend_date(MEMORY[0x277CBEAA8], v6, v7);
      v13 = objc_msgSend_localizedStringFromDate_dateStyle_timeStyle_(v10, v12, v11, 3, 0);
      v18 = objc_msgSend_stringWithFormat_(v9, v14, @"%@ - %@", printTitle, v13);
    }

    else
    {
      v15 = MEMORY[0x277CCA968];
      v11 = objc_msgSend_date(MEMORY[0x277CBEAA8], v6, v7);
      v18 = objc_msgSend_localizedStringFromDate_dateStyle_timeStyle_(v15, v16, v11, 3, 0);
    }

    v17 = v18;
    if (v18)
    {
      CGContextSaveGState(context);
      CGContextRestoreGState(context);
      v17 = v18;
    }
  }
}

- (void)drawNSStringDateForRect:(CGRect)rect context:(CGContext *)context
{
  if (objc_msgSend_isPrintingDate(self, a2, context, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height))
  {
    printTitle = self->_printTitle;
    if (printTitle)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = MEMORY[0x277CCA968];
      v10 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6);
      v12 = objc_msgSend_localizedStringFromDate_dateStyle_timeStyle_(v9, v11, v10, 3, 0);
      v16 = objc_msgSend_stringWithFormat_(v8, v13, @"%@ - %@", printTitle, v12);
    }

    else
    {
      v14 = MEMORY[0x277CCA968];
      v10 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6);
      v16 = objc_msgSend_localizedStringFromDate_dateStyle_timeStyle_(v14, v15, v10, 3, 0);
    }
  }
}

- (void)drawSlideNumberForNode:(id)node buildIndex:(unint64_t)index forRect:(CGRect)rect context:(CGContext *)context position:(int64_t)position
{
  nodeCopy = node;
  if (objc_msgSend_isPrintingSlideNumbers(self, v10, v11))
  {
    v13 = objc_msgSend_p_slideNumberStringForSlideNode_buildIndex_(self, v12, nodeCopy, index);
    if (v13)
    {
      CGContextSaveGState(context);
      CGContextRestoreGState(context);
    }
  }

  MEMORY[0x2821F9730]();
}

- (BOOL)drawImageForSlideNode:(id)node event:(unint64_t)event slideSize:(CGSize)size intoRect:(CGRect)rect annotationFlagsScale:(double)scale context:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = size.height;
  v14 = size.width;
  nodeCopy = node;
  objc_opt_class();
  v18 = TSUDynamicCast();
  v23 = objc_msgSend_show(v18, v19, v20);
  offscreenController = self->_offscreenController;
  if (!offscreenController)
  {
    v30 = 0;
    goto LABEL_8;
  }

  objc_msgSend_outputSize(offscreenController, v21, v22);
  if (v28 != v14 || v27 != v13)
  {
    v30 = self->_offscreenController;
LABEL_8:
    self->_offscreenController = 0;

    v31 = [KNOffscreenController alloc];
    v33 = objc_msgSend_initWithShow_canvasDelegate_outputSize_(v31, v32, v23, self, v14, v13);
    v34 = self->_offscreenController;
    self->_offscreenController = v33;
  }

  v35 = objc_msgSend_session(self->_offscreenController, v25, v26);
  objc_msgSend_setIsExportingToPDF_(v35, v36, 1);
  objc_msgSend_setShouldUseContentlessLayers_(v35, v37, 1);
  isPrintingSlideBackgroundsWithAlpha = objc_msgSend_isPrintingSlideBackgroundsWithAlpha(self, v38, v39);
  objc_msgSend_setShouldAllowBackgroundAlpha_(v35, v41, isPrintingSlideBackgroundsWithAlpha);
  if (objc_msgSend_supportsPrintingComments(self, v42, v43))
  {
    if (objc_msgSend_isPrintingComments(self, v44, v45))
    {
      objc_msgSend_setFloatingCommentBehavior_(v35, v46, 2);
    }

    else
    {
      objc_msgSend_setFloatingCommentBehavior_(v35, v46, 1);
    }
  }

  objc_msgSend_gotoSlideNode_andEvent_(self->_offscreenController, v44, nodeCopy, event);
  objc_msgSend_isPrintingCanvas(self, v47, v48);
  objc_msgSend_shouldSuppressBackgrounds(self, v49, v50);
  TSDSetCGContextInfo();
  memset(&v88, 0, sizeof(v88));
  CGContextGetTextMatrix(&v88, context);
  CGContextSaveGState(context);
  CGContextClipToRectSafe();
  if (objc_msgSend_isPrintingDraftQuality(self, v51, v52))
  {
    CGContextSetInterpolationQuality(context, kCGInterpolationLow);
    v55 = self->_offscreenController;
    isPrintingBuilds = objc_msgSend_isPrintingBuilds(self, v56, v57);
    v60 = objc_msgSend_copyImageOfCurrentEventIgnoringBuildVisilibity_(v55, v59, isPrintingBuilds ^ 1u);
    v89.origin.x = x;
    v89.origin.y = y;
    v89.size.width = width;
    v89.size.height = height;
    CGContextDrawImage(context, v89, v60);
    CGImageRelease(v60);
  }

  else
  {
    v63 = self->_offscreenController;
    v64 = objc_msgSend_isPrintingBuilds(self, v53, v54);
    objc_msgSend_drawCurrentEventIntoContext_intoRect_ignoreBuildVisibility_(v63, v65, context, v64 ^ 1u, x, y, width, height);
  }

  if ((objc_msgSend_isSkipped(nodeCopy, v61, v62) & 1) == 0)
  {
    v68 = objc_msgSend_currentSlideNumber(self, v66, v67);
    objc_msgSend_setCurrentSlideNumber_(self->_hyperlinkController, v69, v68);
    v72 = objc_msgSend_isPrintingBuilds(self, v70, v71);
    hyperlinkController = self->_hyperlinkController;
    v76 = objc_msgSend_animatedSlideView(self->_offscreenController, v74, v75);
    v79 = v76;
    if (v72)
    {
      v80 = objc_msgSend_repsCurrentlyVisible(v76, v77, v78);
      objc_msgSend_addHyperlinksForReps_targetRect_context_(hyperlinkController, v81, v80, context, x, y, width, height);
    }

    else
    {
      v80 = objc_msgSend_canvas(v76, v77, v78);
      v84 = objc_msgSend_topLevelReps(v80, v82, v83);
      objc_msgSend_addHyperlinksForReps_targetRect_context_(hyperlinkController, v85, v84, context, x, y, width, height);
    }
  }

  CGContextRestoreGState(context);
  v87 = v88;
  CGContextSetTextMatrix(context, &v87);

  return 1;
}

- (void)addAnchorPointForSlide:(id)slide context:(CGContext *)context
{
  memset(&v20, 0, sizeof(v20));
  slideCopy = slide;
  CGContextGetCTM(&v20, context);
  v9 = objc_msgSend_show(*(&self->super.super.isa + *MEMORY[0x277D7FFD8]), v7, v8);
  objc_msgSend_size(v9, v10, v11);
  point = vaddq_f64(*&v20.tx, vmlaq_f64(vmulq_n_f64(*&v20.c, v12), 0, *&v20.a));
  v13 = MEMORY[0x277CCACA8];
  v16 = objc_msgSend_uniqueIdentifier(slideCopy, v14, v15);

  v18 = objc_msgSend_stringWithFormat_(v13, v17, @"?slideid=%@", v16);
  CGPDFContextAddDestinationAtPoint(context, v18, point);
}

- (unint64_t)currentSlideNumber
{
  v4 = objc_msgSend_slidesForPrinting(self, a2, v2);
  v6 = objc_msgSend_indexOfObject_(v4, v5, self->_currentSlideNode);

  return v6;
}

- (void)setCurrentSlideNode:(id)node
{
  nodeCopy = node;
  if (self->_currentSlideNode != nodeCopy)
  {
    v11 = nodeCopy;
    objc_storeStrong(&self->_currentSlideNode, node);
    v6 = *(&self->super.super.isa + *MEMORY[0x277D7FFE8]);
    v9 = objc_msgSend_slide(self->_currentSlideNode, v7, v8);
    objc_msgSend_setSlide_(v6, v10, v9);

    nodeCopy = v11;
  }
}

- (void)setOptions:(id)options
{
  optionsCopy = options;
  v106.receiver = self;
  v106.super_class = KNRenderingExporter;
  [(TSARenderingExporter *)&v106 setOptions:optionsCopy];
  self->_maxRangeValue = -1;
  v7 = objc_msgSend_objectForKey_(optionsCopy, v5, *MEMORY[0x277D80780]);
  if (v7)
  {
    objc_opt_class();
    v8 = TSUDynamicCast();
    v11 = objc_msgSend_intValue(v7, v9, v10);
    objc_msgSend_setRenderingQuality_(v8, v12, v11);
  }

  v13 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v6, @"KNPrintSlideBorders");
  v16 = v13;
  if (v13)
  {
    self->_printingBorders = objc_msgSend_BOOLValue(v13, v14, v15);
  }

  v17 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v14, @"KNPrintUsePageMargins");
  v20 = v17;
  if (v17)
  {
    self->_printingPageMargins = objc_msgSend_BOOLValue(v17, v18, v19);
  }

  v21 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v18, @"KNPrintDate");
  v24 = v21;
  if (v21)
  {
    self->_printingDate = objc_msgSend_BOOLValue(v21, v22, v23);
  }

  v26 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v22, @"KNPrintDateTitle");
  if (v26)
  {
    objc_storeStrong(&self->_printTitle, v26);
  }

  v27 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v25, @"KNPrintSlideNumbers");
  v30 = v27;
  if (v27)
  {
    self->_printingSlideNumbers = objc_msgSend_BOOLValue(v27, v28, v29);
  }

  v31 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v28, @"KNPrintEachBuild");
  v34 = v31;
  if (v31)
  {
    self->_printingBuilds = objc_msgSend_BOOLValue(v31, v32, v33);
  }

  v103 = v20;
  v104 = v16;
  v35 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v32, @"KNPrintHiddenSlides");
  v38 = v35;
  if (v35)
  {
    self->_printingSkippedSlides = objc_msgSend_BOOLValue(v35, v36, v37);
  }

  v39 = v7;
  v98 = v38;
  v40 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v36, @"KNPrintDraftQuality");
  v43 = v40;
  if (v40)
  {
    self->_printingDraftQuality = objc_msgSend_BOOLValue(v40, v41, v42);
  }

  v44 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v41, *MEMORY[0x277D807B8]);
  v47 = v44;
  if (v44)
  {
    self->_printingComments = objc_msgSend_BOOLValue(v44, v45, v46);
  }

  v96 = v47;
  v102 = v24;
  v48 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v45, *MEMORY[0x277D807A8]);
  v51 = v48;
  if (v48)
  {
    self->_printingBackgrounds = objc_msgSend_BOOLValue(v48, v49, v50);
  }

  v95 = v51;
  v101 = v26;
  v52 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v49, @"KNPrintDraftQuality");
  v55 = v52;
  if (v52)
  {
    self->_printingDraftQuality = objc_msgSend_BOOLValue(v52, v53, v54);
  }

  v56 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v53, @"KNPrintSlideRangeStart");
  v59 = v56;
  v100 = v30;
  if (v56)
  {
    v60 = objc_msgSend_unsignedIntegerValue(v56, v57, v58);
    objc_msgSend_setSlideRangeStart_(self, v61, v60);
  }

  else
  {
    objc_msgSend_setSlideRangeStart_(self, v57, 1);
  }

  v63 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v62, @"KNPrintSlideRangeEnd");
  v66 = v63;
  v99 = v34;
  if (v63)
  {
    v67 = objc_msgSend_unsignedIntegerValue(v63, v64, v65);
  }

  else
  {
    v67 = objc_msgSend_maximumRangeValue(self, v64, v65);
  }

  v97 = v43;
  objc_msgSend_setSlideRangeEnd_(self, v68, v67);
  v70 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v69, @"KNPrintSlidesPerGridPage");
  v73 = v70;
  if (v70)
  {
    v74 = objc_msgSend_integerValue(v70, v71, v72);
    objc_msgSend_setSlidesPerPage_(self, v75, v74);
  }

  v76 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v71, @"KNPrintSlidesPerHandoutPage");
  v79 = v76;
  if (v76)
  {
    v80 = objc_msgSend_integerValue(v76, v77, v78);
    objc_msgSend_setSlidesPerPage_(self, v81, v80);
  }

  v105 = v39;
  v82 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v77, @"KNPrintAddNotesToHandout");
  v85 = v82;
  if (v82)
  {
    self->_printingNotes = objc_msgSend_BOOLValue(v82, v83, v84);
  }

  v86 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v83, @"KNPrintRuledLines");
  v89 = v86;
  if (v86)
  {
    self->_printingRuledLines = objc_msgSend_BOOLValue(v86, v87, v88);
  }

  v90 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v87, @"KNPrintSlideBackgroundsWithAlpha");
  v93 = v90;
  if (v90)
  {
    v94 = objc_msgSend_BOOLValue(v90, v91, v92);
  }

  else
  {
    v94 = 1;
  }

  self->_printingSlideBackgroundsWithAlpha = v94;
}

- (void)enableRenderAllContent
{
  self->_printingSkippedSlides = 1;
  self->_printingBackgrounds = 1;
  self->_printingSlideBackgroundsWithAlpha = 1;
  self->_printingComments = 1;
}

- (int64_t)pageIndexFromQuickLookSlideNode:(id)node
{
  nodeCopy = node;
  if (objc_msgSend_isPrintingBuilds(self, v5, v6))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNRenderingExporter pageIndexFromQuickLookSlideNode:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRenderingExporter.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 745, 0, "Printing builds not supported in -pageIndexFromSlide");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v17 = objc_msgSend_quickLookSlideNodes(self, v7, v8);
    v16 = objc_msgSend_indexOfObjectIdenticalTo_(v17, v18, nodeCopy);
  }

  return v16;
}

- (id)quickLookSlideNodes
{
  v3 = objc_msgSend_show(*(&self->super.super.isa + *MEMORY[0x277D7FFD8]), a2, v2);
  v6 = objc_msgSend_slideTree(v3, v4, v5);
  v9 = objc_msgSend_visibleSlideNodes(v6, v7, v8);

  return v9;
}

- (void)setSlideRangeStart:(unint64_t)start
{
  v6 = objc_msgSend_maximumRangeValue(self, a2, start);
  if (start != -1 && (!start || v6 < start))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNRenderingExporter setSlideRangeStart:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRenderingExporter.m");
    v12 = NSStringFromSelector(a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v11, 761, 0, "%@ expects a value in the range [1, slideTree.visibleSlideNodes.count) ||  [1, slideTree.slideNodes.count)  || NSUIntegerMax", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  if (start + 1 < 3)
  {
    startCopy = 1;
  }

  else
  {
    startCopy = start;
  }

  self->_rangeStart = startCopy;
}

- (void)setSlideRangeEnd:(unint64_t)end
{
  endCopy = end;
  v6 = objc_msgSend_maximumRangeValue(self, a2, end);
  if (endCopy == -1)
  {
    endCopy = v6;
  }

  else if (!endCopy || v6 < endCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNRenderingExporter setSlideRangeEnd:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRenderingExporter.m");
    v12 = NSStringFromSelector(a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v11, 772, 0, "%@ expects a value in the range [1, slideTree.visibleSlideNodes.count) ||  [1, slideTree.slideNodes.count)  || NSUIntegerMax", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  self->_rangeEnd = endCopy;
}

- (unint64_t)maximumRangeValue
{
  result = self->_maxRangeValue;
  if (result == -1)
  {
    v5 = objc_msgSend_p_sourceNodes(self, a2, v2);
    self->_maxRangeValue = objc_msgSend_count(v5, v6, v7);

    return self->_maxRangeValue;
  }

  return result;
}

- (unint64_t)p_slideNumberForSlideNode:(id)node
{
  nodeCopy = node;
  v7 = objc_msgSend_show(*(&self->super.super.isa + *MEMORY[0x277D7FFD8]), v5, v6);
  if ((objc_msgSend_isPrintingSelectedSlides(self, v8, v9) & 1) != 0 || objc_msgSend_isPrintingSkippedSlides(self, v10, v11))
  {
    v12 = objc_msgSend_slideTree(v7, v10, v11);
    v14 = objc_msgSend_indexOfSlideNode_(v12, v13, nodeCopy) + 1;
  }

  else
  {
    v12 = objc_msgSend_slideTree(v7, v10, v11);
    v14 = objc_msgSend_slideNumberForSlideNode_(v12, v15, nodeCopy);
  }

  return v14;
}

- (id)p_slideNumberStringForSlideNode:(id)node buildIndex:(unint64_t)index
{
  nodeCopy = node;
  v8 = objc_msgSend_p_slideNumberForSlideNode_(self, v7, nodeCopy);
  if (objc_msgSend_isPrintingBuilds(self, v9, v10) && objc_msgSend_hasBuildEvents(nodeCopy, v11, v12))
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = sub_275DC204C();
    v16 = objc_msgSend_localizedStringForKey_value_table_(v14, v15, @"%lu-%lu", &stru_2884D8E20, @"Keynote");
    objc_msgSend_localizedStringWithFormat_(v13, v17, v16, v8, index + 1);
  }

  else
  {
    v18 = MEMORY[0x277CCACA8];
    v14 = sub_275DC204C();
    v16 = objc_msgSend_localizedStringForKey_value_table_(v14, v19, @"%lu", &stru_2884D8E20, @"Keynote");
    objc_msgSend_localizedStringWithFormat_(v18, v20, v16, v8);
  }
  v21 = ;

  return v21;
}

- (CGRect)scaledClipRectMinusBottomSpace:(CGRect)space
{
  height = space.size.height;
  width = space.size.width;
  y = space.origin.y;
  x = space.origin.x;
  if ((objc_msgSend_isPrintingDate(self, a2, v3) & 1) != 0 || objc_msgSend_isPrintingSlideNumbers(self, v9, v10) && objc_msgSend_supportsPrintingComments(self, v15, v16))
  {
    objc_msgSend_bottomTextVerticalSpace(self, v9, v10);
    y = y + v11;
    objc_msgSend_bottomTextVerticalSpace(self, v12, v13);
    height = height - v14;
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)scaledClipRectForPageCount
{
  if (objc_msgSend_isPrinting(*(&self->super.super.isa + *MEMORY[0x277D7FFE8]), a2, v2))
  {
    objc_msgSend_unscaledClipRectForPageCount(self, v4, v5);
    objc_msgSend_viewScaleForPageCount(self, v6, v7);
  }

  else
  {
    objc_msgSend_unscaledClipRect(self, v4, v5);
  }

  TSUMultiplyRectScalar();

  objc_msgSend_scaledClipRectMinusBottomSpace_(self, v8, v9);
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)beginPageInContext:(CGContext *)context viewScale:(double)scale unscaledClipRect:(CGRect)rect createPage:(BOOL)page
{
  pageCopy = page;
  TSUMultiplyRectScalar();
  v28.origin.x = v11;
  v28.origin.y = v12;
  v28.size.width = v13;
  v28.size.height = v14;
  if (pageCopy)
  {
    CGContextBeginPage(context, &v28);
  }

  v15 = *MEMORY[0x277D7FFE8];
  if ((objc_msgSend_isPrinting(*(&self->super.super.isa + v15), v9, v10, *&v28.origin) & 1) == 0 && objc_msgSend_useWhiteBackground(self, v16, v17))
  {
    CGContextSetRGBFillColor(context, 1.0, 1.0, 1.0, 1.0);
    CGContextFillRect(context, v28);
  }

  if ((objc_msgSend_isPrinting(*(&self->super.super.isa + v15), v16, v17) & 1) == 0 && (objc_msgSend_supportsPrintingComments(self, v18, v19) & 1) == 0)
  {
    objc_msgSend_rectBySubtractingDefaultPageMarginsFromRect_(self, v18, v19, *&v28.origin, v28.size.width, v28.size.height);
    v28.origin.x = v20;
    v28.origin.y = v21;
    v28.size.width = v22;
    v28.size.height = v23;
    CGContextTranslateCTM(context, v20, v21);
    v28.origin = *MEMORY[0x277CBF348];
  }

  objc_msgSend_yellowColor(MEMORY[0x277D81180], v18, v19, *&v28.origin);

  y = v28.origin.y;
  x = v28.origin.x;
  width = v28.size.width;
  height = v28.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)endPageInContext:(CGContext *)context createPage:(BOOL)page
{
  if (page)
  {
    CGContextEndPage(context);
  }
}

- (CGRect)unscaledClipRectForPageCount
{
  x = self->_unscaledClipRectForPageCount.origin.x;
  y = self->_unscaledClipRectForPageCount.origin.y;
  width = self->_unscaledClipRectForPageCount.size.width;
  height = self->_unscaledClipRectForPageCount.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)monoSlideRectFromScaledClipRect:(CGRect)rect outScaledClipRect:(CGRect *)clipRect
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNRenderingExporter(Mono) monoSlideRectFromScaledClipRect:outScaledClipRect:]", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRenderingExporter.m");
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v7, 904, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  v13 = MEMORY[0x277CBEAD8];
  v14 = *MEMORY[0x277CBE658];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v19 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v17, "[KNRenderingExporter(Mono) monoSlideRectFromScaledClipRect:outScaledClipRect:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v13, v20, v14, v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (BOOL)drawMonoPageInContext:(CGContext *)context viewScale:(double)scale unscaledClipRect:(CGRect)rect createPage:(BOOL)page helper:(id)helper
{
  pageCopy = page;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  helperCopy = helper;
  objc_msgSend_beginPageInContext_viewScale_unscaledClipRect_createPage_(self, v16, context, pageCopy, scale, x, y, width, height);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  objc_msgSend_scaledClipRectMinusBottomSpace_(self, v25, v26);
  v27 = *(MEMORY[0x277CBF3A0] + 16);
  v54 = *MEMORY[0x277CBF3A0];
  v55 = v27;
  objc_msgSend_monoSlideRectFromScaledClipRect_outScaledClipRect_(self, v28, &v54);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v39 = objc_msgSend_progressContext(self, v37, v38);
  objc_msgSend_advanceProgress_(v39, v40, v41, 1.0);

  LODWORD(v39) = objc_msgSend_shouldDrawSlide(helperCopy, v42, v43);
  if (v39)
  {
    objc_msgSend_drawBorderForRect_context_(self, v44, context, v30, v32, v34, v36);
    v46 = objc_msgSend_drawImageForSlideNode_event_slideSize_intoRect_annotationFlagsScale_context_(self, v45, self->_currentSlideNode, self->_currentBuildIndex, context, v34, v36, v30, v32, v34, v36, 0.0);
  }

  else
  {
    v46 = 0;
  }

  v49 = v46 | objc_msgSend_drawMonoPageExtraContentInContext_scaledClipRect_(self, v44, context, v54, v55);
  if (v49)
  {
    objc_msgSend_drawSlideNumberForNode_buildIndex_forRect_context_position_(self, v47, self->_currentSlideNode, self->_currentBuildIndex, context, 3, v18, v20, v22, v24);
    objc_msgSend_drawDateForRect_context_(self, v50, context, v18, v20, v22, v24);
  }

  if ((objc_msgSend_isPrinting(*(&self->super.super.isa + *MEMORY[0x277D7FFE8]), v47, v48) & 1) == 0 && (objc_msgSend_isSkipped(self->_currentSlideNode, v51, v52) & 1) == 0 && !self->_currentBuildIndex)
  {
    objc_msgSend_addAnchorPointForSlide_context_(self, v51, self->_currentSlideNode, context);
  }

  objc_msgSend_endPageInContext_createPage_(self, v51, context, pageCopy);
  return v49 & 1;
}

@end
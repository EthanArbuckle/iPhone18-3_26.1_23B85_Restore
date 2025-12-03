@interface KNPdfGridExporter
- (BOOL)incrementPage;
- (KNPdfGridExporter)initWithDocumentRoot:(id)root;
- (void)drawPolyPageBodyInContext:(CGContext *)context scaledClipRect:(CGRect)rect;
@end

@implementation KNPdfGridExporter

- (KNPdfGridExporter)initWithDocumentRoot:(id)root
{
  v4.receiver = self;
  v4.super_class = KNPdfGridExporter;
  result = [(KNRenderingExporter *)&v4 initWithDocumentRoot:root];
  result->super.super.super._slidesPerPage = 4;
  return result;
}

- (BOOL)incrementPage
{
  v4 = objc_msgSend_slidesForPrinting(self, a2, v2);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  currentSlidesOnPage = self->super.super.super._currentSlidesOnPage;
  self->super.super.super._currentSlidesOnPage = v5;

  if (!self->super.super.super._currentSlideNode)
  {
    self->super.super.super._currentBuildIndex = 0;
    v9 = objc_msgSend_objectAtIndex_(v4, v7, 0);
    objc_msgSend_setCurrentSlideNode_(self, v10, v9);

    v11 = self->super.super.super._currentSlidesOnPage;
    v12 = MEMORY[0x277D812A8];
    currentSlideNode = self->super.super.super._currentSlideNode;
    v15 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v14, self->super.super.super._currentBuildIndex);
    v17 = objc_msgSend_pairWithFirst_second_(v12, v16, currentSlideNode, v15);
    objc_msgSend_addObject_(v11, v18, v17);
  }

  v19 = objc_msgSend_count(self->super.super.super._currentSlidesOnPage, v7, v8);
  if (v19 < objc_msgSend_slidesPerPage(self, v20, v21))
  {
    do
    {
      v24 = objc_msgSend_indexOfObject_(v4, v22, self->super.super.super._currentSlideNode);
      v27 = objc_msgSend_count(v4, v25, v26);
      if (objc_msgSend_isPrintingBuilds(self, v28, v29) && objc_msgSend_safeHasBuildEvents(self->super.super.super._currentSlideNode, v22, v30) && (v32 = self->super.super.super._currentBuildIndex + 1, v32 <= objc_msgSend_safeBuildEventCount(self->super.super.super._currentSlideNode, v22, v31)))
      {
        v48 = self->super.super.super._currentBuildIndex + 1;
        self->super.super.super._currentBuildIndex = v48;
        v36 = MEMORY[0x277D812A8];
        v35 = self->super.super.super._currentSlidesOnPage;
        v37 = self->super.super.super._currentSlideNode;
        objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v22, v48);
      }

      else
      {
        v23 = v24 + 1;
        if (v24 + 1 >= v27)
        {
          break;
        }

        self->super.super.super._currentBuildIndex = 0;
        v33 = objc_msgSend_objectAtIndex_(v4, v22, v23);
        objc_msgSend_setCurrentSlideNode_(self, v34, v33);

        v35 = self->super.super.super._currentSlidesOnPage;
        v36 = MEMORY[0x277D812A8];
        v37 = self->super.super.super._currentSlideNode;
        objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v38, self->super.super.super._currentBuildIndex);
      }
      v39 = ;
      v41 = objc_msgSend_pairWithFirst_second_(v36, v40, v37, v39);
      objc_msgSend_addObject_(v35, v42, v41);

      v45 = objc_msgSend_count(self->super.super.super._currentSlidesOnPage, v43, v44);
    }

    while (v45 < objc_msgSend_slidesPerPage(self, v46, v47));
  }

  if (objc_msgSend_count(self->super.super.super._currentSlidesOnPage, v22, v23))
  {
    v51.receiver = self;
    v51.super_class = KNPdfGridExporter;
    incrementPage = [(KNRenderingExporter *)&v51 incrementPage];
  }

  else
  {
    incrementPage = 0;
  }

  return incrementPage;
}

- (void)drawPolyPageBodyInContext:(CGContext *)context scaledClipRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v82 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D7FFD8]);
  v12 = objc_msgSend_show(v82, v10, v11);
  objc_msgSend_size(v12, v13, v14);
  if (width <= height || v17 <= v18)
  {
    v19 = v18 > v17 && height > width;
  }

  else
  {
    v19 = 1;
  }

  v22 = objc_msgSend_slidesPerPage(self, v15, v16) - 2;
  if (v22 > 0xE)
  {
    v24 = 2;
    v23 = 3;
  }

  else
  {
    v23 = qword_275E71140[v22];
    v24 = qword_275E711B8[v22];
  }

  if (v19)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  if (v19)
  {
    v26 = v24;
  }

  else
  {
    v26 = v23;
  }

  v27 = (width + (v25 - 1) * -18.0) / v25;
  v28 = (v26 - 1);
  v29 = (height + v28 * -18.0) / v26;
  v30 = y + (v29 + 18.0) * v28;
  v33 = objc_msgSend_array(MEMORY[0x277CBEB18], v20, v21);
  v34 = 0;
  do
  {
    v35 = 0;
    do
    {
      v36 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v31, v32, x + v35 * 18.0 + v27 * v35, v30 - (v34 * 18.0 + v29 * v34), v27, v29);
      objc_msgSend_addObject_(v33, v37, v36);

      ++v35;
    }

    while (v25 != v35);
    ++v34;
  }

  while (v34 != v26);
  if (objc_msgSend_count(self->super.super.super._currentSlidesOnPage, v31, v32))
  {
    v39 = 0;
    do
    {
      v40 = objc_msgSend_objectAtIndexedSubscript_(self->super.super.super._currentSlidesOnPage, v38, v39);
      v43 = objc_msgSend_first(v40, v41, v42);
      v46 = objc_msgSend_second(v40, v44, v45);
      v49 = objc_msgSend_unsignedIntegerValue(v46, v47, v48);

      v51 = objc_msgSend_objectAtIndexedSubscript_(v33, v50, v39);
      objc_msgSend_CGRectValue(v51, v52, v53);
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;

      v64 = objc_msgSend_cyanColor(MEMORY[0x277D81180], v62, v63);
      nullsub_1(context, v64, v55, v57, v59, v61);

      objc_msgSend_isPrintingSlideNumbers(self, v65, v66);
      objc_msgSend_size(v12, v67, v68);
      TSUFitOrFillSizeInRect();
      v70 = v69;
      v72 = v71;
      v74 = v73;
      v76 = v75;
      objc_msgSend_drawImageForSlideNode_event_slideSize_intoRect_annotationFlagsScale_context_(self, v77, v43, v49, context, v73, v75, v69, v71, v73, v75, 0.0);
      objc_msgSend_drawBorderForRect_context_(self, v78, context, v70, v72, v74, v76);
      objc_msgSend_drawSlideNumberForNode_buildIndex_forRect_context_position_(self, v79, v43, v49, context, 2, v70, v72, v74, v76);

      ++v39;
    }

    while (v39 < objc_msgSend_count(self->super.super.super._currentSlidesOnPage, v80, v81));
  }
}

@end
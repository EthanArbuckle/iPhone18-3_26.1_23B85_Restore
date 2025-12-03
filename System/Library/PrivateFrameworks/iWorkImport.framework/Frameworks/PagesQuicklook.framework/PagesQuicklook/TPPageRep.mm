@interface TPPageRep
- (BOOL)childRepIsMasterDrawable:(id)drawable;
- (BOOL)childRepIsOnDocSetupCanvas:(id)canvas;
- (BOOL)directlyManagesLayerContent;
- (BOOL)isOpaque;
- (BOOL)p_pageRequiresHorizontalSeparator;
- (id)backgroundFill;
- (id)bodyReps;
- (id)colorBehindBodyTextLayer:(id)layer;
- (id)parentRepForMagnification;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context;
- (void)willBeRemoved;
@end

@implementation TPPageRep

- (void)dealloc
{
  if (self->_horizontalSeparatorLayer)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageRep dealloc]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 125, 0, "child layers must already be cleared");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  v25.receiver = self;
  v25.super_class = TPPageRep;
  [(TSDRep *)&v25 dealloc];
}

- (id)backgroundFill
{
  v7 = objc_msgSend_canvas(self, a2, v2, v3, v4, v5);
  shouldSuppressBackgrounds = objc_msgSend_shouldSuppressBackgrounds(v7, v8, v9, v10, v11, v12);

  if (shouldSuppressBackgrounds)
  {
    v19 = 0;
  }

  else
  {
    v20 = objc_msgSend_layout(self, v14, v15, v16, v17, v18);
    v19 = objc_msgSend_backgroundFill(v20, v21, v22, v23, v24, v25);
  }

  return v19;
}

- (BOOL)isOpaque
{
  v6 = objc_msgSend_backgroundFill(self, a2, v2, v3, v4, v5);
  isOpaque = objc_msgSend_isOpaque(v6, v7, v8, v9, v10, v11);

  return isOpaque;
}

- (id)colorBehindBodyTextLayer:(id)layer
{
  v7 = objc_msgSend_layout(self, a2, v3, v4, v5, v6, layer);
  v13 = objc_msgSend_backgroundFill(v7, v8, v9, v10, v11, v12);

  if (v13)
  {
    v19 = objc_msgSend_backgroundFill(v7, v14, v15, v16, v17, v18);
    v25 = objc_msgSend_referenceColor(v19, v20, v21, v22, v23, v24);
  }

  else
  {
    v26 = objc_msgSend_sectionTemplateDrawableProvider(v7, v14, v15, v16, v17, v18);
    v32 = objc_msgSend_countOfSectionTemplateDrawables(v26, v27, v28, v29, v30, v31);

    if (v32)
    {
      v25 = 0;
    }

    else
    {
      v25 = objc_msgSend_whiteColor(MEMORY[0x277D81180], v33, v34, v35, v36, v37);
    }
  }

  return v25;
}

- (void)willBeRemoved
{
  v5.receiver = self;
  v5.super_class = TPPageRep;
  [(TSDRep *)&v5 willBeRemoved];
  horizontalSeparatorLayer = self->_horizontalSeparatorLayer;
  self->_horizontalSeparatorLayer = 0;

  verticalSeparatorLayer = self->_verticalSeparatorLayer;
  self->_verticalSeparatorLayer = 0;
}

- (BOOL)childRepIsOnDocSetupCanvas:(id)canvas
{
  v7 = objc_msgSend_info(self, a2, v3, v4, v5, v6, canvas);
  isDocumentSetupPage = objc_msgSend_isDocumentSetupPage(v7, v8, v9, v10, v11, v12);

  return isDocumentSetupPage;
}

- (BOOL)childRepIsMasterDrawable:(id)drawable
{
  drawableCopy = drawable;
  v10 = objc_msgSend_layout(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_info(drawableCopy, v11, v12, v13, v14, v15);

  objc_opt_class();
  v17 = TSDTopmostInfoFromInfo();
  v18 = TSUDynamicCast();

  if (v16)
  {
    v24 = objc_msgSend_sectionTemplateDrawableProvider(v10, v19, v20, v21, v22, v23);
    v30 = objc_msgSend_sectionTemplateDrawables(v24, v25, v26, v27, v28, v29);
    v36 = objc_msgSend_containsObject_(v30, v31, v32, v33, v34, v35, v18);
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (BOOL)p_pageRequiresHorizontalSeparator
{
  objc_opt_class();
  v8 = objc_msgSend_info(self, v3, v4, v5, v6, v7);
  v14 = objc_msgSend_pageController(v8, v9, v10, v11, v12, v13);
  v15 = TSUCheckedDynamicCast();

  v21 = objc_msgSend_layout(self, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_geometry(v21, v22, v23, v24, v25, v26);
  objc_msgSend_frame(v27, v28, v29, v30, v31, v32);
  if (v35.n128_f64[0] <= 0.0)
  {
    v49 = 0;
  }

  else
  {
    v38 = objc_msgSend_info(self, v33, v34, v35, v36, v37);
    if (objc_msgSend_isDocumentSetupPage(v38, v39, v40, v41, v42, v43))
    {
      v49 = 0;
    }

    else
    {
      objc_msgSend_verticalPageSeparation(v15, v44, v45, v46, v47, v48);
      v49 = v50 == 0.0;
    }
  }

  return v49;
}

- (BOOL)directlyManagesLayerContent
{
  if (self->_fillCanApplyToCALayer)
  {
    return 1;
  }

  v7 = objc_msgSend_backgroundFill(self, a2, v2, v3, v4, v5);
  v6 = v7 == 0;

  return v6;
}

- (void)drawInContext:(CGContext *)context
{
  v9 = objc_msgSend_backgroundFill(self, a2, v3, v4, v5, v6);
  if (v9)
  {
    v21 = v9;
    Mutable = CGPathCreateMutable();
    objc_msgSend_naturalBounds(self, v11, v12, v13, v14, v15);
    CGPathAddRectSafe();
    objc_msgSend_paintPath_inContext_(v21, v16, v17, v18, v19, v20, Mutable, context);
    CGPathRelease(Mutable);
    v9 = v21;
  }
}

- (id)bodyReps
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_childReps(self, v4, v5, v6, v7, v8);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_275FCCCD8;
  v17[3] = &unk_27A6A8468;
  v10 = v3;
  v18 = v10;
  objc_msgSend_enumerateObjectsUsingBlock_(v9, v11, v12, v13, v14, v15, v17);

  return v10;
}

- (id)parentRepForMagnification
{
  v6 = objc_msgSend_bodyReps(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_tsu_onlyObject(v6, v7, v8, v9, v10, v11);

  return v12;
}

@end
@interface TSARenderingExporter
- (BOOL)drawCurrentPageInContext:(CGContext *)a3 viewScale:(double)a4 unscaledClipRect:(CGRect)a5 createPage:(BOOL)a6;
- (BOOL)incrementPage;
- (BOOL)p_exportToURL:(id)a3 pageNumber:(unint64_t)a4 delegate:(id)a5 error:(id *)a6;
- (BOOL)preparePage:(unint64_t)a3;
- (BOOL)setInfosToCurrentPage;
- (BOOL)setUpAndDrawCurrentPageInContext:(CGContext *)a3 viewScale:(double)a4 unscaledClipRect:(CGRect)a5 createPage:(BOOL)a6;
- (CGRect)boundsRect;
- (TSARenderingExporter)initWithDocumentRoot:(id)a3;
- (TSARenderingExporter)initWithDocumentRoot:(id)a3 imager:(id)a4;
- (double)progressForCurrentPage;
- (id)currentInfos;
- (id)p_renderingExporterDelegate;
- (unint64_t)pageCount;
- (void)drawAllPagesWithContext:(CGContext *)a3 returnSuccess:(BOOL *)a4;
- (void)drawCurrentPageWithContext:(CGContext *)a3 returnSuccess:(BOOL *)a4;
- (void)p_drawCurrentPageWithContext:(CGContext *)a3 returnSuccess:(BOOL *)a4 createPage:(BOOL)a5;
- (void)performBlockWithImager:(id)a3;
- (void)setOptions:(id)a3;
- (void)teardown;
@end

@implementation TSARenderingExporter

- (id)currentInfos
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSARenderingExporter currentInfos]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSARenderingExporter.m", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 35, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v20, v18, "[TSARenderingExporter currentInfos]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v22, v15, v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (id)p_renderingExporterDelegate
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSARenderingExporter p_renderingExporterDelegate]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSARenderingExporter.m", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 58, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v20, v18, "[TSARenderingExporter p_renderingExporterDelegate]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v22, v15, v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (TSARenderingExporter)initWithDocumentRoot:(id)a3 imager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v27.receiver = self;
  v27.super_class = TSARenderingExporter;
  v9 = [(TSARenderingExporter *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mDocumentRoot, a3);
    objc_storeStrong(&v10->mImager, a4);
    v14 = objc_msgSend_p_renderingExporterDelegate(v10, v11, v12, v13);
    mRenderingExporterDelegate = v10->mRenderingExporterDelegate;
    v10->mRenderingExporterDelegate = v14;

    v16 = dispatch_queue_create("com.apple.iwork.TSARenderingExporterImagerAccessQueue", 0);
    mImagerAccessLock = v10->mImagerAccessLock;
    v10->mImagerAccessLock = v16;

    DeviceRGB = TSUCGColorCreateDeviceRGB();
    v21 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D81180], v19, DeviceRGB, v20);
    objc_msgSend_setBackgroundColor_(v10->mImager, v22, v21, v23);

    CGColorRelease(DeviceRGB);
    objc_msgSend_setUpPdfTaggerWithOptions_(v10, v24, 0, v25);
  }

  return v10;
}

- (TSARenderingExporter)initWithDocumentRoot:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_currentCapabilities(MEMORY[0x277D801F0], v5, v6, v7);
  if (!objc_msgSend_isHDRCapable(v8, v9, v10, v11))
  {

    goto LABEL_5;
  }

  v15 = objc_msgSend_prefersHDRImager(self, v12, v13, v14);

  if (!v15)
  {
LABEL_5:
    v24 = objc_alloc(objc_msgSend_imagerClass(self, v16, v17, v18));
    v21 = objc_msgSend_initWithDocumentRoot_(v24, v25, v4, v26);
    goto LABEL_6;
  }

  v19 = objc_alloc(objc_msgSend_imagerClass(self, v16, v17, v18));
  v21 = objc_msgSend_initWithDocumentRoot_renderForWideGamut_renderHDRContent_(v19, v20, v4, 1, 1);
LABEL_6:
  v27 = v21;
  objc_msgSend_setIsPrinting_(v21, v22, 1, v23);
  objc_msgSend_setMayBeReused_(v27, v28, 1, v29);
  v31 = objc_msgSend_initWithDocumentRoot_imager_(self, v30, v4, v27);

  return v31;
}

- (void)setOptions:(id)a3
{
  v11 = a3;
  v7 = objc_msgSend_copy(v11, v4, v5, v6);
  mOptions = self->mOptions;
  self->mOptions = v7;

  objc_msgSend_setUpPdfTaggerWithOptions_(self, v9, v11, v10);
}

- (BOOL)setUpAndDrawCurrentPageInContext:(CGContext *)a3 viewScale:(double)a4 unscaledClipRect:(CGRect)a5 createPage:(BOOL)a6
{
  v6 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = objc_autoreleasePoolPush();
  CGContextSaveGState(a3);
  if (self->mBitmapRenderingQualityInfo)
  {
    TSDCGContextSetBitmapQualityInfo();
  }

  mPdfTagger = self->mPdfTagger;
  if (mPdfTagger)
  {
    TSDCGContextSetPdfTagger();
    objc_msgSend_setCGContext_(self->mPdfTagger, v16, a3, v17);
    objc_msgSend_beginPage(self->mPdfTagger, v18, v19, v20);
  }

  Page = objc_msgSend_drawCurrentPageInContext_viewScale_unscaledClipRect_createPage_(self, mPdfTagger, a3, v6, a4, x, y, width, height);
  v25 = self->mPdfTagger;
  if (v25)
  {
    objc_msgSend_endPage(v25, v21, v22, v23);
  }

  CGContextRestoreGState(a3);
  objc_autoreleasePoolPop(v14);
  return Page;
}

- (void)p_drawCurrentPageWithContext:(CGContext *)a3 returnSuccess:(BOOL *)a4 createPage:(BOOL)a5
{
  if (*a4)
  {
    v6 = a5;
    objc_msgSend_viewScale(self->mRenderingExporterDelegate, a2, a3, a4);
    v10 = v9;
    objc_msgSend_unscaledClipRect(self, v11, v12, v13);
    Page = objc_msgSend_setUpAndDrawCurrentPageInContext_viewScale_unscaledClipRect_createPage_(self, v14, a3, v6, v10, v15, v16, v17, v18);
  }

  else
  {
    Page = 0;
  }

  *a4 = Page;
}

- (void)drawAllPagesWithContext:(CGContext *)a3 returnSuccess:(BOOL *)a4
{
  objc_msgSend_waitForRecalcToFinish(self, a2, a3, a4);
  if (objc_msgSend_incrementPage(self, v7, v8, v9))
  {
    do
    {
      if (objc_msgSend_isCancelled(self, v10, v11, v12))
      {
        break;
      }

      if (!*a4)
      {
        break;
      }

      objc_msgSend_p_drawCurrentPageWithContext_returnSuccess_createPage_(self, v13, a3, a4, 1);
    }

    while ((objc_msgSend_incrementPage(self, v14, v15, v16) & 1) != 0);
  }
}

- (void)drawCurrentPageWithContext:(CGContext *)a3 returnSuccess:(BOOL *)a4
{
  if ((objc_msgSend_isCancelled(self, a2, a3, a4) & 1) == 0)
  {
    objc_msgSend_waitForRecalcToFinish(self, v7, v8, v9);
    v14 = objc_msgSend_supportsPaging(self->mRenderingExporterDelegate, v10, v11, v12);

    objc_msgSend_p_drawCurrentPageWithContext_returnSuccess_createPage_(self, v13, a3, a4, v14);
  }
}

- (BOOL)p_exportToURL:(id)a3 pageNumber:(unint64_t)a4 delegate:(id)a5 error:(id *)a6
{
  v10 = a3;
  v137 = a5;
  if (a4 == -1 && (objc_msgSend_supportsPaging(self->mRenderingExporterDelegate, v11, v12, v13) & 1) == 0)
  {
    v74 = MEMORY[0x277D81150];
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSARenderingExporter p_exportToURL:pageNumber:delegate:error:]", v15);
    v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSARenderingExporter.m", v77);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v79, v75, v78, 228, 0, "Attempting to create page on a rendering exporter delegate that does not support paging.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v81, v82);
    v73 = 0;
  }

  else
  {
    objc_opt_class();
    v16 = TSUDynamicCast();
    v20 = v16;
    if (v16 && !objc_msgSend_validatePassphrases_(v16, v17, a6, v19))
    {
      v73 = 0;
    }

    else
    {
      v138 = 0;
      self->mDoesDrawAllPages = a4 == -1;
      objc_msgSend_setup(self, v17, v18, v19);
      if (a4 == -1 || objc_msgSend_preparePage_(self, v21, a4, v23))
      {
        v136 = objc_msgSend_calculationEngine(self->mDocumentRoot, v21, v22, v23);
        v27 = objc_msgSend_dirtyCellCount(v136, v24, v25, v26);
        objc_msgSend_totalProgess(self, v28, v29, v30);
        v32 = v31;
        v36 = objc_msgSend_progressContext(self, v33, v34, v35);
        objc_msgSend_createStageWithSteps_takingSteps_(v36, v37, v38, v39, v27 / 1000.0 + v32, 100.0);

        v43 = objc_msgSend_progressContext(self, v40, v41, v42);
        objc_msgSend_nextSubStageWillTakeThisManyOfMySteps_(v43, v44, v45, v46, v27 / 1000.0);

        if ((objc_msgSend_isFileURL(v10, v47, v48, v49) & 1) == 0)
        {
          v52 = MEMORY[0x277D81150];
          v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "[TSARenderingExporter p_exportToURL:pageNumber:delegate:error:]", v51);
          v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSARenderingExporter.m", v55);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v57, v53, v56, 262, 0, "can only export to a file URL");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60);
        }

        v61 = objc_msgSend_newCGContextForURL_(self->mRenderingExporterDelegate, v50, v10, v51);
        if (v61)
        {
          TSDCGContextSetIsExportingWithRenderingExporter();
          v138 = 1;
          objc_msgSend_waitForRecalcToFinish(self, v62, v63, v64);
          if (objc_msgSend_supportsRenderingQuality(self->mRenderingExporterDelegate, v65, v66, v67) && (objc_opt_respondsToSelector() & 1) != 0)
          {
            v72 = objc_msgSend_renderingQuality(self->mRenderingExporterDelegate, v68, v69, v70);
          }

          else
          {
            v83 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v68, v69, v70);
            v86 = objc_msgSend_stringForKey_(v83, v84, @"TSAPDFExportBitmapQuality", v85);
            v90 = objc_msgSend_lowercaseString(v86, v87, v88, v89);

            if (objc_msgSend_isEqualToString_(v90, v91, @"good", v92))
            {
              v72 = 0;
            }

            else if (objc_msgSend_isEqualToString_(v90, v93, @"better", v94))
            {
              v72 = 1;
            }

            else
            {
              v72 = 2;
            }
          }

          if (v72 != 2)
          {
            v95 = objc_alloc(MEMORY[0x277D801D8]);
            v98 = objc_msgSend_initWithQuality_canvasScale_(v95, v96, v72, v97, 1.0);
            mBitmapRenderingQualityInfo = self->mBitmapRenderingQualityInfo;
            self->mBitmapRenderingQualityInfo = v98;
          }

          if (a4 == -1)
          {
            objc_msgSend_drawAllPagesWithContext_returnSuccess_(self, v71, v61, &v138);
            if (objc_msgSend_isCancelled(self, v102, v103, v104))
            {
              v106 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v100, v105, v101);
              v110 = objc_msgSend_path(v10, v107, v108, v109);
              v113 = objc_msgSend_fileExistsAtPath_(v106, v111, v110, v112);

              if (v113)
              {
                v115 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v100, v114, v101);
                v119 = objc_msgSend_path(v10, v116, v117, v118);
                objc_msgSend_removeItemAtPath_error_(v115, v120, v119, 0);
              }
            }
          }

          else
          {
            objc_msgSend_drawCurrentPageWithContext_returnSuccess_(self, v71, v61, &v138);
          }

          objc_msgSend_finalizeContext_(self, v100, v61, v101);
        }
      }

      else
      {
        v61 = 0;
      }

      objc_msgSend_setCGContext_(self->mPdfTagger, v21, 0, v23);
      if (v61)
      {
        TSDClearCGContextInfo();
        objc_msgSend_releaseCGContext_(self->mRenderingExporterDelegate, v121, v61, v122);
      }

      v123 = self->mBitmapRenderingQualityInfo;
      self->mBitmapRenderingQualityInfo = 0;

      mPdfTagger = self->mPdfTagger;
      self->mPdfTagger = 0;

      v128 = objc_msgSend_progressContext(self, v125, v126, v127);
      objc_msgSend_endStage(v128, v129, v130, v131);

      objc_msgSend_teardown(self, v132, v133, v134);
      v73 = v138;
    }
  }

  return v73 & 1;
}

- (void)teardown
{
  objc_msgSend_teardown(self->mRenderingExporterDelegate, a2, v2, v3);
  mImagerAccessLock = self->mImagerAccessLock;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2760B467C;
  block[3] = &unk_27A6B0170;
  block[4] = self;
  dispatch_sync(mImagerAccessLock, block);
}

- (BOOL)incrementPage
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSARenderingExporter incrementPage]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSARenderingExporter.m", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 386, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v20, v18, "[TSARenderingExporter incrementPage]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v22, v15, v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (BOOL)preparePage:(unint64_t)a3
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSARenderingExporter preparePage:]", v3);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSARenderingExporter.m", v7);
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v5, v8, 390, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v16 = *MEMORY[0x277CBE658];
  v17 = MEMORY[0x277CCACA8];
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v22 = objc_msgSend_stringWithFormat_(v17, v20, @"Abstract method not overridden by %@: %s", v21, v19, "[TSARenderingExporter preparePage:]");
  v24 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v23, v16, v22, 0);
  v25 = v24;

  objc_exception_throw(v24);
}

- (BOOL)setInfosToCurrentPage
{
  v5 = objc_msgSend_currentInfos(self, a2, v2, v3);
  v6 = v5;
  if (v5)
  {
    mImagerAccessLock = self->mImagerAccessLock;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2760B49D0;
    v9[3] = &unk_27A6B0248;
    v9[4] = self;
    v10 = v5;
    dispatch_sync(mImagerAccessLock, v9);
  }

  return v6 != 0;
}

- (BOOL)drawCurrentPageInContext:(CGContext *)a3 viewScale:(double)a4 unscaledClipRect:(CGRect)a5 createPage:(BOOL)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a3;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 1;
  v14 = objc_msgSend_progressContext(self, a2, a3, a6);
  objc_msgSend_progressForCurrentPage(self, v15, v16, v17);
  objc_msgSend_createStageWithSteps_takingSteps_(v14, v18, v19, v20, 2.0, v21);
  v25 = objc_msgSend_documentRoot(self, v22, v23, v24);
  v29 = objc_msgSend_accessController(v25, v26, v27, v28);
  v37 = MEMORY[0x277D85DD0];
  v38 = 3221225472;
  v39 = sub_2760B4B78;
  v40 = &unk_27A6B0298;
  v41 = self;
  v30 = v14;
  v50 = a6;
  v44 = a4;
  v45 = x;
  v46 = y;
  v47 = width;
  v48 = height;
  v42 = v30;
  v43 = &v51;
  v49 = v12;
  objc_msgSend_performRead_(v29, v31, &v37, v32);

  objc_msgSend_endStage(v30, v33, v34, v35, v37, v38, v39, v40, v41);
  LOBYTE(v12) = *(v52 + 24);

  _Block_object_dispose(&v51, 8);
  return v12;
}

- (void)performBlockWithImager:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    mImagerAccessLock = self->mImagerAccessLock;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_2760B4E3C;
    v7[3] = &unk_27A6B02C0;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(mImagerAccessLock, v7);
  }
}

- (CGRect)boundsRect
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSARenderingExporter boundsRect]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSARenderingExporter.m", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 469, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v20, v18, "[TSARenderingExporter boundsRect]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v22, v15, v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (double)progressForCurrentPage
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSARenderingExporter progressForCurrentPage]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSARenderingExporter.m", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 477, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v20, v18, "[TSARenderingExporter progressForCurrentPage]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v22, v15, v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (unint64_t)pageCount
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSARenderingExporter pageCount]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSARenderingExporter.m", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 481, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v20, v18, "[TSARenderingExporter pageCount]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v22, v15, v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

@end
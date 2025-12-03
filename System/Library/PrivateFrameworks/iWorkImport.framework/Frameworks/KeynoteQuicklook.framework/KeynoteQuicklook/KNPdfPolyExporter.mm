@interface KNPdfPolyExporter
- (BOOL)drawPolyPageInContext:(CGContext *)context viewScale:(double)scale unscaledClipRect:(CGRect)rect createPage:(BOOL)page;
- (void)drawPolyPageBodyInContext:(CGContext *)context scaledClipRect:(CGRect)rect;
@end

@implementation KNPdfPolyExporter

- (BOOL)drawPolyPageInContext:(CGContext *)context viewScale:(double)scale unscaledClipRect:(CGRect)rect createPage:(BOOL)page
{
  pageCopy = page;
  objc_msgSend_beginPageInContext_viewScale_unscaledClipRect_createPage_(self, a2, context, scale, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  CGContextSaveGState(context);
  v19 = objc_msgSend_progressContext(self, v17, v18);
  objc_msgSend_advanceProgress_(v19, v20, v21, 1.0);

  objc_msgSend_scaledClipRectMinusBottomSpace_(self, v22, v23, v10, v12, v14, v16);
  objc_msgSend_drawPolyPageBodyInContext_scaledClipRect_(self, v24, context);
  CGContextRestoreGState(context);
  objc_msgSend_drawDateForRect_context_(self, v25, context, v10, v12, v14, v16);
  objc_msgSend_endPageInContext_createPage_(self, v26, context, pageCopy);
  return 1;
}

- (void)drawPolyPageBodyInContext:(CGContext *)context scaledClipRect:(CGRect)rect
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNPdfPolyExporter drawPolyPageBodyInContext:scaledClipRect:]", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPdfExporter.mm");
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v7, 60, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  v13 = MEMORY[0x277CBEAD8];
  v14 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v18 = objc_msgSend_stringWithFormat_(v14, v17, @"Abstract method not overridden by %@: %s", v16, "[KNPdfPolyExporter drawPolyPageBodyInContext:scaledClipRect:]");
  v20 = objc_msgSend_exceptionWithName_reason_userInfo_(v13, v19, *MEMORY[0x277CBE658], v18, 0);
  v21 = v20;

  objc_exception_throw(v20);
}

@end
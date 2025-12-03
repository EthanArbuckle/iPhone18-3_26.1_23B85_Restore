@interface TSWPInteriorTextWrapController
+ (id)sharedInteriorTextWrapController;
- (BOOL)checkForUnobstructedSpan:(CGRect)span wrappableAttachments:(id)attachments userInfo:(id)info;
- (double)nextUnobstructedSpanStartingAt:(CGRect)at wrappableAttachments:(id)attachments userInfo:(id)info;
- (id)beginWrappingToColumn:(id)column columnTransformFromWP:(CGAffineTransform *)p target:(id)target hasWrappables:(BOOL *)wrappables;
- (void)splitLine:(CGRect)line lineSegmentRects:(id)rects wrappableAttachments:(id)attachments ignoreFloatingGraphics:(BOOL)graphics canvasCausedWrap:(BOOL *)wrap skipHint:(double *)hint userInfo:(id)info;
@end

@implementation TSWPInteriorTextWrapController

+ (id)sharedInteriorTextWrapController
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276DD20AC;
  block[3] = &unk_27A6F3D70;
  block[4] = self;
  if (qword_280A583B8 != -1)
  {
    dispatch_once(&qword_280A583B8, block);
  }

  v2 = qword_280A583B0;

  return v2;
}

- (id)beginWrappingToColumn:(id)column columnTransformFromWP:(CGAffineTransform *)p target:(id)target hasWrappables:(BOOL *)wrappables
{
  targetCopy = target;
  columnCopy = column;
  v11 = objc_alloc_init(TSWPInteriorCookie);
  objc_msgSend_setLayout_(v11, v12, targetCopy);
  objc_msgSend_setColumn_(v11, v13, columnCopy);

  v14 = *&p->c;
  *&v22.a = *&p->a;
  *&v22.c = v14;
  *&v22.tx = *&p->tx;
  memset(&v23, 0, sizeof(v23));
  CGAffineTransformInvert(&v23, &v22);
  v17 = objc_msgSend_interiorWrapSegments(targetCopy, v15, v16);

  v22 = v23;
  v19 = objc_msgSend_wrapSegmentsByApplyingAffineTransform_(v17, v18, &v22);
  objc_msgSend_setInteriorWrapSegmentsInWrapSpace_(v11, v20, v19);

  *wrappables = 1;

  return v11;
}

- (void)splitLine:(CGRect)line lineSegmentRects:(id)rects wrappableAttachments:(id)attachments ignoreFloatingGraphics:(BOOL)graphics canvasCausedWrap:(BOOL *)wrap skipHint:(double *)hint userInfo:(id)info
{
  height = line.size.height;
  width = line.size.width;
  y = line.origin.y;
  x = line.origin.x;
  rectsCopy = rects;
  *hint = 1.0;
  infoCopy = info;
  objc_opt_class();
  v16 = TSUDynamicCast();

  if (v16)
  {
    v19 = objc_msgSend_interiorWrapSegmentsInWrapSpace(v16, v17, v18);
    objc_msgSend_splitLine_lineSegmentRects_wrapSegments_type_skipHint_(TSWPTextWrapper, v20, rectsCopy, v19, 0, 0, x, y, width, height);
  }
}

- (double)nextUnobstructedSpanStartingAt:(CGRect)at wrappableAttachments:(id)attachments userInfo:(id)info
{
  attachmentsCopy = attachments;
  infoCopy = info;
  v8 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPInteriorTextWrapController nextUnobstructedSpanStartingAt:wrappableAttachments:userInfo:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPInteriorTextWrapController.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v10, v12, 78, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  v16 = MEMORY[0x277CBEAD8];
  v17 = *MEMORY[0x277CBE658];
  v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"%s: %s", "Do not call method", "[TSWPInteriorTextWrapController nextUnobstructedSpanStartingAt:wrappableAttachments:userInfo:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v16, v20, v17, v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (BOOL)checkForUnobstructedSpan:(CGRect)span wrappableAttachments:(id)attachments userInfo:(id)info
{
  attachmentsCopy = attachments;
  infoCopy = info;
  v8 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPInteriorTextWrapController checkForUnobstructedSpan:wrappableAttachments:userInfo:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPInteriorTextWrapController.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v10, v12, 84, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  v16 = MEMORY[0x277CBEAD8];
  v17 = *MEMORY[0x277CBE658];
  v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"%s: %s", "Do not call method", "[TSWPInteriorTextWrapController checkForUnobstructedSpan:wrappableAttachments:userInfo:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v16, v20, v17, v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

@end
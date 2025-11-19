@interface TSWPInteriorTextWrapController
+ (id)sharedInteriorTextWrapController;
- (BOOL)checkForUnobstructedSpan:(CGRect)a3 wrappableAttachments:(id)a4 userInfo:(id)a5;
- (double)nextUnobstructedSpanStartingAt:(CGRect)a3 wrappableAttachments:(id)a4 userInfo:(id)a5;
- (id)beginWrappingToColumn:(id)a3 columnTransformFromWP:(CGAffineTransform *)a4 target:(id)a5 hasWrappables:(BOOL *)a6;
- (void)splitLine:(CGRect)a3 lineSegmentRects:(id)a4 wrappableAttachments:(id)a5 ignoreFloatingGraphics:(BOOL)a6 canvasCausedWrap:(BOOL *)a7 skipHint:(double *)a8 userInfo:(id)a9;
@end

@implementation TSWPInteriorTextWrapController

+ (id)sharedInteriorTextWrapController
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276DD20AC;
  block[3] = &unk_27A6F3D70;
  block[4] = a1;
  if (qword_280A583B8 != -1)
  {
    dispatch_once(&qword_280A583B8, block);
  }

  v2 = qword_280A583B0;

  return v2;
}

- (id)beginWrappingToColumn:(id)a3 columnTransformFromWP:(CGAffineTransform *)a4 target:(id)a5 hasWrappables:(BOOL *)a6
{
  v9 = a5;
  v10 = a3;
  v11 = objc_alloc_init(TSWPInteriorCookie);
  objc_msgSend_setLayout_(v11, v12, v9);
  objc_msgSend_setColumn_(v11, v13, v10);

  v14 = *&a4->c;
  *&v22.a = *&a4->a;
  *&v22.c = v14;
  *&v22.tx = *&a4->tx;
  memset(&v23, 0, sizeof(v23));
  CGAffineTransformInvert(&v23, &v22);
  v17 = objc_msgSend_interiorWrapSegments(v9, v15, v16);

  v22 = v23;
  v19 = objc_msgSend_wrapSegmentsByApplyingAffineTransform_(v17, v18, &v22);
  objc_msgSend_setInteriorWrapSegmentsInWrapSpace_(v11, v20, v19);

  *a6 = 1;

  return v11;
}

- (void)splitLine:(CGRect)a3 lineSegmentRects:(id)a4 wrappableAttachments:(id)a5 ignoreFloatingGraphics:(BOOL)a6 canvasCausedWrap:(BOOL *)a7 skipHint:(double *)a8 userInfo:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v21 = a4;
  *a8 = 1.0;
  v15 = a9;
  objc_opt_class();
  v16 = TSUDynamicCast();

  if (v16)
  {
    v19 = objc_msgSend_interiorWrapSegmentsInWrapSpace(v16, v17, v18);
    objc_msgSend_splitLine_lineSegmentRects_wrapSegments_type_skipHint_(TSWPTextWrapper, v20, v21, v19, 0, 0, x, y, width, height);
  }
}

- (double)nextUnobstructedSpanStartingAt:(CGRect)a3 wrappableAttachments:(id)a4 userInfo:(id)a5
{
  v6 = a4;
  v7 = a5;
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

- (BOOL)checkForUnobstructedSpan:(CGRect)a3 wrappableAttachments:(id)a4 userInfo:(id)a5
{
  v6 = a4;
  v7 = a5;
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
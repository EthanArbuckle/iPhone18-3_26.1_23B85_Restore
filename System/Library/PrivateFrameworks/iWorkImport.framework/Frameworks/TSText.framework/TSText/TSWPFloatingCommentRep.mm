@interface TSWPFloatingCommentRep
- (BOOL)p_shouldDraw;
- (TSWPFloatingCommentRep)initWithLayout:(id)a3 canvas:(id)a4;
- (id)documentRoot;
- (void)drawInContext:(CGContext *)a3;
- (void)recursivelyDrawChildrenInContext:(CGContext *)a3 keepingChildrenPassingTest:(id)a4;
@end

@implementation TSWPFloatingCommentRep

- (TSWPFloatingCommentRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v5.receiver = self;
  v5.super_class = TSWPFloatingCommentRep;
  return [(TSWPShapeRep *)&v5 initWithLayout:a3 canvas:a4];
}

- (id)documentRoot
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v8 = objc_msgSend_context(v5, v6, v7);
  v11 = objc_msgSend_documentObject(v8, v9, v10);
  v12 = TSUDynamicCast();

  return v12;
}

- (void)drawInContext:(CGContext *)a3
{
  if (objc_msgSend_p_shouldDraw(self, a2, a3))
  {
    v5.receiver = self;
    v5.super_class = TSWPFloatingCommentRep;
    [(TSDStyledRep *)&v5 drawInContext:a3];
  }
}

- (void)recursivelyDrawChildrenInContext:(CGContext *)a3 keepingChildrenPassingTest:(id)a4
{
  v6 = a4;
  if (objc_msgSend_p_shouldDraw(self, v7, v8))
  {
    v9.receiver = self;
    v9.super_class = TSWPFloatingCommentRep;
    [(TSDShapeRep *)&v9 recursivelyDrawChildrenInContext:a3 keepingChildrenPassingTest:v6];
  }
}

- (BOOL)p_shouldDraw
{
  v6 = objc_msgSend_documentRoot(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_info(self, v4, v5);
    shouldShowFloatingCommentInfo = objc_msgSend_shouldShowFloatingCommentInfo_(v6, v8, v7);
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSWPFloatingCommentRep p_shouldDraw]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFloatingCommentRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 885, 0, "invalid nil value for '%{public}s'", "root");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    shouldShowFloatingCommentInfo = 0;
  }

  return shouldShowFloatingCommentInfo;
}

@end
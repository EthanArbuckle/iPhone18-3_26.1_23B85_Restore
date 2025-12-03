@interface TSWPEquationBaseRep
+ (void)drawErrorIconWithSize:(CGSize)size context:(CGContext *)context;
+ (void)drawWarningIconWithSize:(CGSize)size context:(CGContext *)context;
+ (void)p_drawErrorIcon:(CGPDFDocument *)icon size:(CGSize)size context:(CGContext *)context;
@end

@implementation TSWPEquationBaseRep

+ (void)p_drawErrorIcon:(CGPDFDocument *)icon size:(CGSize)size context:(CGContext *)context
{
  if (icon)
  {
    Page = CGPDFDocumentGetPage(icon, 1uLL);
    if (Page)
    {
      v7 = Page;
      TSURectWithSize();
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      CGContextSaveGState(context);
      CGContextSetShouldAntialias(context, 1);
      v35.origin.x = v9;
      v35.origin.y = v11;
      v35.size.width = v13;
      v35.size.height = v15;
      MinY = CGRectGetMinY(v35);
      v36.origin.x = v9;
      v36.origin.y = v11;
      v36.size.width = v13;
      v36.size.height = v15;
      MaxY = CGRectGetMaxY(v36);
      CGContextTranslateCTM(context, 0.0, MinY + MaxY);
      CGContextScaleCTM(context, 1.0, -1.0);
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      v30 = 0;
      v31 = 0;
      TSDComputeBoxTransformAndSizeForPDFPage();
      if ((TSUSizeIsEmpty() & 1) != 0 || TSUSizeHasNaNComponents())
      {
        v19 = MEMORY[0x277D81150];
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "+[TSWPEquationBaseRep p_drawErrorIcon:size:context:]");
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationBaseRep.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 35, 0, "Invalid equation error/warning PDF");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
        TSDComputeDrawTransformForPDFPage();
        memset(&v26, 0, sizeof(v26));
        CGContextConcatCTM(context, &v26);
        CGContextClipToRectSafe();
        CGContextDrawPDFPage(context, v7);
      }

      CGContextRestoreGState(context);
    }
  }
}

+ (void)drawErrorIconWithSize:(CGSize)size context:(CGContext *)context
{
  if (qword_280A58280 != -1)
  {
    sub_276F4F4A4();
  }

  v5 = qword_280A58278;

  MEMORY[0x2821F9670](self, sel_p_drawErrorIcon_size_context_, v5);
}

+ (void)drawWarningIconWithSize:(CGSize)size context:(CGContext *)context
{
  if (qword_280A58290 != -1)
  {
    sub_276F4F4B8();
  }

  v5 = qword_280A58288;

  MEMORY[0x2821F9670](self, sel_p_drawErrorIcon_size_context_, v5);
}

@end
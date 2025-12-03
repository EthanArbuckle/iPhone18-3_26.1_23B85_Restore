@interface TNPdfHyperlinkController
- (CGRect)canvasRect;
- (TNPdfHyperlinkController)initWithDocumentRoot:(id)root;
- (id)destinationFromUrl:(id)url;
@end

@implementation TNPdfHyperlinkController

- (TNPdfHyperlinkController)initWithDocumentRoot:(id)root
{
  v4.receiver = self;
  v4.super_class = TNPdfHyperlinkController;
  return [(TSAPdfHyperlinkController *)&v4 init];
}

- (CGRect)canvasRect
{
  x = self->mCanvasRect.origin.x;
  y = self->mCanvasRect.origin.y;
  width = self->mCanvasRect.size.width;
  height = self->mCanvasRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)destinationFromUrl:(id)url
{
  urlCopy = url;
  if ((objc_msgSend_isSheetURL(urlCopy, v4, v5) & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TNPdfHyperlinkController destinationFromUrl:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPdfHyperlinkController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 43, 0, "Unable to return destination for a non-sheet URL");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = objc_msgSend_absoluteString(urlCopy, v6, v7);
  v16 = *MEMORY[0x277D80FF8];
  v20 = &stru_2884F65E0;
  if (objc_msgSend_hasPrefix_(v15, v17, *MEMORY[0x277D80FF8]))
  {
    v21 = objc_msgSend_length(v16, v18, v19);
    v20 = objc_msgSend_substringFromIndex_(v15, v22, v21);
  }

  if (!objc_msgSend_length(v20, v18, v19))
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TNPdfHyperlinkController destinationFromUrl:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPdfHyperlinkController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 51, 0, "No destination returned for URL: %@", urlCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
  }

  if (v20)
  {
    v31 = v20;
  }

  else
  {
    v31 = &stru_2884F65E0;
  }

  v32 = v31;

  return v31;
}

@end
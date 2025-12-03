@interface TPPdfHyperlinkController
+ (id)URLWithDestinationName:(id)name;
+ (id)destinationFromSectionURL:(id)l;
- (BOOL)isDestination:(id)destination;
- (CGRect)canvasRect;
- (TPPdfHyperlinkController)initWithDocumentRoot:(id)root;
- (id)destinationFromUrl:(id)url;
@end

@implementation TPPdfHyperlinkController

- (TPPdfHyperlinkController)initWithDocumentRoot:(id)root
{
  v4.receiver = self;
  v4.super_class = TPPdfHyperlinkController;
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

+ (id)destinationFromSectionURL:(id)l
{
  lCopy = l;
  v9 = objc_msgSend_absoluteString(lCopy, v4, v5, v6, v7, v8);
  v10 = *MEMORY[0x277D80FF0];
  if ((objc_msgSend_hasPrefix_(v9, v11, v12, v13, v14, v15, *MEMORY[0x277D80FF0]) & 1) == 0)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, v20, "+[TPPdfHyperlinkController destinationFromSectionURL:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPdfHyperlinkController.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v29, v30, v31, v32, v33, v22, v28, 86, 0, "Expected section URL");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37, v38);
  }

  if (objc_msgSend_hasPrefix_(v9, v16, v17, v18, v19, v20, v10))
  {
    v44 = objc_msgSend_length(v10, v39, v40, v41, v42, v43);
    v50 = objc_msgSend_substringFromIndex_(v9, v45, v46, v47, v48, v49, v44);
    v56 = objc_msgSend_length(v50, v51, v52, v53, v54, v55);
  }

  else
  {
    v50 = &stru_288501738;
    v56 = objc_msgSend_length(&stru_288501738, v39, v40, v41, v42, v43);
  }

  if (!v56)
  {
    v62 = MEMORY[0x277D81150];
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, v61, "+[TPPdfHyperlinkController destinationFromSectionURL:]");
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPdfHyperlinkController.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v70, v71, v72, v73, v74, v63, v69, 93, 0, "No destination returned for URL: %@", lCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76, v77, v78, v79);
  }

  return v50;
}

- (BOOL)isDestination:(id)destination
{
  v7 = objc_msgSend_absoluteString(destination, a2, v3, v4, v5, v6);
  if (objc_msgSend_hasPrefix_(v7, v8, v9, v10, v11, v12, *MEMORY[0x277D80FE8]))
  {
    hasPrefix = 1;
  }

  else
  {
    hasPrefix = objc_msgSend_hasPrefix_(v7, v13, v14, v15, v16, v17, *MEMORY[0x277D80FF0]);
  }

  return hasPrefix;
}

- (id)destinationFromUrl:(id)url
{
  urlCopy = url;
  v9 = objc_msgSend_absoluteString(urlCopy, v4, v5, v6, v7, v8);
  if (objc_msgSend_hasPrefix_(v9, v10, v11, v12, v13, v14, *MEMORY[0x277D80FE8]))
  {
    v20 = objc_msgSend_stringByRemovingPercentEncoding(v9, v15, v16, v17, v18, v19);
    v26 = objc_msgSend_substringFromIndex_(v20, v21, v22, v23, v24, v25, 1);
  }

  else if (objc_msgSend_hasPrefix_(v9, v15, v16, v17, v18, v19, *MEMORY[0x277D80FF0]))
  {
    v26 = objc_msgSend_destinationFromSectionURL_(TPPdfHyperlinkController, v27, v28, v29, v30, v31, urlCopy);
  }

  else
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, v31, "[TPPdfHyperlinkController destinationFromUrl:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPdfHyperlinkController.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v40, v41, v42, v43, v44, v33, v39, 115, 0, "Unable to return destination for URL that is not a bookmark or section URL");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48, v49);
    v26 = &stru_288501738;
  }

  return v26;
}

+ (id)URLWithDestinationName:(id)name
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = *MEMORY[0x277D80FE8];
  v5 = MEMORY[0x277CCA900];
  nameCopy = name;
  v12 = objc_msgSend_URLFragmentAllowedCharacterSet(v5, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(nameCopy, v13, v14, v15, v16, v17, v12);

  v24 = objc_msgSend_stringByAppendingString_(v4, v19, v20, v21, v22, v23, v18);
  v30 = objc_msgSend_URLWithString_(v3, v25, v26, v27, v28, v29, v24);

  return v30;
}

@end
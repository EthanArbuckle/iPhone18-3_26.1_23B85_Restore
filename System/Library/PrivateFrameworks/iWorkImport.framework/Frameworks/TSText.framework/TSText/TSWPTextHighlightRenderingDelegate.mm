@interface TSWPTextHighlightRenderingDelegate
- (BOOL)shouldRenderForLineDrawFlags:(unint64_t)flags;
- (CGColor)cgColor;
- (TSWPTextHighlightRenderingDelegate)initWithHighlights:(id)highlights;
@end

@implementation TSWPTextHighlightRenderingDelegate

- (TSWPTextHighlightRenderingDelegate)initWithHighlights:(id)highlights
{
  highlightsCopy = highlights;
  if (!highlightsCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSWPTextHighlightRenderingDelegate initWithHighlights:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTextHighlightRenderingDelegate.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 28, 0, "Invalid parameter not satisfying: %{public}s", "highlights != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  if (!objc_msgSend_count(highlightsCopy, v4, v5))
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSWPTextHighlightRenderingDelegate initWithHighlights:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTextHighlightRenderingDelegate.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 29, 0, "Invalid parameter not satisfying: %{public}s", "highlights.count > 0");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  v28.receiver = self;
  v28.super_class = TSWPTextHighlightRenderingDelegate;
  v24 = [(TSWPTextHighlightRenderingDelegate *)&v28 init];
  if (v24)
  {
    v25 = objc_msgSend_copy(highlightsCopy, v22, v23);
    highlights = v24->_highlights;
    v24->_highlights = v25;
  }

  return v24;
}

- (CGColor)cgColor
{
  v3 = objc_msgSend_highlights(self, a2, v2);
  v5 = objc_msgSend_highlightTextColorForHighlights_(TSWPHighlight, v4, v3);

  if (v5)
  {
    v8 = objc_msgSend_CGColor(v5, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)shouldRenderForLineDrawFlags:(unint64_t)flags
{
  flagsCopy = flags;
  v35 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_highlights(self, a2, flags);
  v8 = objc_msgSend_count(v5, v6, v7);

  if (!v8)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPTextHighlightRenderingDelegate shouldRenderForLineDrawFlags:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTextHighlightRenderingDelegate.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 49, 0, "Should still have highlights");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = objc_msgSend_highlights(self, v9, v10, 0);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v30, v34, 16);
  if (v20)
  {
    v23 = v20;
    v24 = *v31;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v18);
        }

        v26 = *(*(&v30 + 1) + 8 * i);
        isCommentEmpty = objc_msgSend_isCommentEmpty(v26, v21, v22);
        if ((flagsCopy & 0x2000) != 0 && (isCommentEmpty & 1) != 0 || (flagsCopy & 0x1000) != 0 && !objc_msgSend_isCommentEmpty(v26, v21, v22))
        {
          v28 = 1;
          goto LABEL_16;
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v30, v34, 16);
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  v28 = 0;
LABEL_16:

  return v28;
}

@end
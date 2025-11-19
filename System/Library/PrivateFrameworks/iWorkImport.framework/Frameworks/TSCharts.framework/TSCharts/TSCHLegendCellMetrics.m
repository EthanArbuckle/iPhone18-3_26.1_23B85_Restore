@interface TSCHLegendCellMetrics
- (TSCHLegendCellMetrics)initWithParagraphStyle:(id)a3;
- (void)dealloc;
@end

@implementation TSCHLegendCellMetrics

- (TSCHLegendCellMetrics)initWithParagraphStyle:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v43.receiver = self;
    v43.super_class = TSCHLegendCellMetrics;
    v10 = [(TSCHLegendCellMetrics *)&v43 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_paragraphStyle, a3);
      v16 = objc_msgSend_sharedText(TSCHText, v12, v13, v14, v15);
      v11->_font = objc_msgSend_retainedCTFontForParagraphStyle_(v16, v17, v18, v19, v20, v11->_paragraphStyle);

      v21 = sub_2762AC268();
      v23 = v22;
      Ascent = CTFontGetAscent(v11->_font);
      Descent = CTFontGetDescent(v11->_font);
      BoundingBox = CTFontGetBoundingBox(v11->_font);
      *&BoundingBox.origin.x = v21;
      *&BoundingBox.size.width = v23;
      *&BoundingBox.size.height = Ascent;
      v11->_badgeSize = *&BoundingBox.size.height;
      v11->_legendSymbolGap = *&BoundingBox.origin.x;
      *&BoundingBox.origin.x = Descent + BoundingBox.origin.y;
      v11->_trueTitleHeight = *&BoundingBox.size.width;
      v11->_lineGap = *&BoundingBox.origin.x;
      v11->_baseline = *&BoundingBox.size.height;
    }

    self = v11;
    v26 = self;
  }

  else
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCHLegendCellMetrics initWithParagraphStyle:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendCellMetrics.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 49, 0, "invalid nil value for '%{public}s'", "paragraphStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
    v26 = 0;
  }

  return v26;
}

- (void)dealloc
{
  font = self->_font;
  if (font)
  {
    CFRelease(font);
  }

  v4.receiver = self;
  v4.super_class = TSCHLegendCellMetrics;
  [(TSCHLegendCellMetrics *)&v4 dealloc];
}

@end
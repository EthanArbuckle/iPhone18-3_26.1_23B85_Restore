@interface TSCHChartAxisPaddingLayoutItem
- (CGSize)calcMinSize;
@end

@implementation TSCHChartAxisPaddingLayoutItem

- (CGSize)calcMinSize
{
  v6 = MEMORY[0x277CBF3A8];
  v7 = objc_msgSend_parent(self, a2, v2, v3, v4);
  v12 = objc_msgSend_axisPosition(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_model(self, v13, v14, v15, v16);
  v22 = objc_msgSend_axisID(v7, v18, v19, v20, v21);
  v27 = objc_msgSend_axisForID_(v17, v23, v24, v25, v26, v22);

  v32 = objc_msgSend_intValueForProperty_defaultValue_(v27, v28, v29, v30, v31, 1034, 0);
  v37 = objc_msgSend_chartInfo(v17, v33, v34, v35, v36);
  v42 = objc_msgSend_paragraphStyleAtIndex_(v37, v38, v39, v40, v41, v32);

  v47 = objc_msgSend_sharedText(TSCHText, v43, v44, v45, v46);
  v52 = objc_msgSend_retainedCTFontForParagraphStyle_(v47, v48, v49, v50, v51, v42);

  if (!v52)
  {
    v57 = MEMORY[0x277D81150];
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v54, v55, v56, "[TSCHChartAxisPaddingLayoutItem calcMinSize]");
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisPaddingLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v64, v65, v66, v67, v58, v63, 37, 0, "invalid nil value for '%{public}s'", "font");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
  }

  v72 = *v6;
  v73 = v6[1];
  Ascent = CTFontGetAscent(v52);
  v75 = Ascent + CTFontGetDescent(v52);
  CFRelease(v52);
  if (v12 > 5)
  {
    goto LABEL_8;
  }

  if (((1 << v12) & 0x2A) != 0)
  {
    v76 = v75 * 0.5 + 5.0;
LABEL_9:
    v72 = v72 + v76;
    goto LABEL_10;
  }

  if (((1 << v12) & 0x14) == 0)
  {
LABEL_8:
    v73 = v73 + v75 * 0.5;
    v76 = v75 * 0.5 + 5.0;
    goto LABEL_9;
  }

  v73 = fmax(v73 + v75 * 0.5 + -2.0, 0.0);
LABEL_10:

  v77 = v72;
  v78 = v73;
  result.height = v78;
  result.width = v77;
  return result;
}

@end
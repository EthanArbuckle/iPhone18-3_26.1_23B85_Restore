@interface TSWPTextMeasurer
+ (BOOL)canQuicklyMeasureParagraphStyle:(id)a3;
+ (BOOL)canQuicklyMeasureString:(id)a3 textMeasurerBundle:(id)a4;
+ (double)heightForString:(id)a3 textMeasurerBundle:(id)a4 width:(double)a5 outFitWidth:(double *)a6;
+ (double)widthForString:(id)a3 textMeasurerBundle:(id)a4;
+ (id)textMeasurerBundleForParagraphStyle:(id)a3;
@end

@implementation TSWPTextMeasurer

+ (BOOL)canQuicklyMeasureParagraphStyle:(id)a3
{
  v3 = a3;
  v5 = v3;
  if (!v3)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "+[TSWPTextMeasurer canQuicklyMeasureParagraphStyle:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 1285, 0, "invalid nil value for '%{public}s'", "textStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
LABEL_19:
    v24 = 0;
    goto LABEL_20;
  }

  objc_msgSend_floatValueForProperty_(v3, v4, 34);
  if (v7 != 0.0 && fabsf(v7) >= 0.01)
  {
    goto LABEL_19;
  }

  objc_msgSend_floatValueForProperty_(v5, v6, 80);
  if (v9 != 0.0 && fabsf(v9) >= 0.01)
  {
    goto LABEL_19;
  }

  v10 = objc_msgSend_valueForProperty_(v5, v8, 85);
  objc_msgSend_amount(v10, v11, v12);
  if ((v14 == 1.0 || fabs(v14 + -1.0) < 0.00999999978) && !objc_msgSend_intValueForProperty_(v5, v13, 105) && ((objc_msgSend_floatValueForProperty_(v5, v15, 88), v17 = v16, objc_msgSend_floatValueForProperty_(v5, v18, 87), v17 == 0.0) || fabsf(v17) < 0.01) && (v20 == 0.0 || fabsf(v20) < 0.01) && ((objc_msgSend_floatValueForProperty_(v5, v19, 36), v22 == 0.0) || fabsf(v22) < 0.01) && !objc_msgSend_intValueForProperty_(v5, v21, 21))
  {
    v33 = objc_msgSend_objectForProperty_(v5, v23, 45);
    v36 = objc_msgSend_null(MEMORY[0x277CBEB68], v34, v35);
    v24 = v33 == v36;
  }

  else
  {
    v24 = 0;
  }

LABEL_20:
  return v24;
}

+ (BOOL)canQuicklyMeasureString:(id)a3 textMeasurerBundle:(id)a4
{
  v5 = a3;
  v7 = a4;
  if (v5 && (objc_msgSend_containsString_(v5, v6, @"\t") & 1) == 0)
  {
    v10 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v8, v5);
    v13 = objc_msgSend_coveredCharacterSet(v7, v11, v12);
    isSupersetOfSet = objc_msgSend_isSupersetOfSet_(v13, v14, v10);
  }

  else
  {
    isSupersetOfSet = 0;
  }

  return isSupersetOfSet;
}

+ (id)textMeasurerBundleForParagraphStyle:(id)a3
{
  v39[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "+[TSWPTextMeasurer textMeasurerBundleForParagraphStyle:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 1379, 0, "invalid nil value for '%{public}s'", "textStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  FontForStyle = TSWPFastCreateFontForStyle(0, v4, 0x64uLL);
  v15 = FontForStyle;
  if (FontForStyle)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    sub_276D38FF4(FontForStyle, v13, v14, &v32);
    v38 = *MEMORY[0x277D740A8];
    v39[0] = v15;
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v39, &v38, 1);
    v18 = CTFontCopyCharacterSet(v15);
    CFRelease(v15);
    v19 = objc_alloc_init(TSWPTextMeasurerBundle);
    objc_msgSend_setFontAttributes_(v19, v20, v17);
    v31[2] = v34;
    v31[3] = v35;
    v31[4] = v36;
    v31[5] = v37;
    v31[0] = v32;
    v31[1] = v33;
    objc_msgSend_setFontHeightInfo_(v19, v21, v31);
    objc_msgSend_setCoveredCharacterSet_(v19, v22, v18);
  }

  else
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "+[TSWPTextMeasurer textMeasurerBundleForParagraphStyle:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 1383, 0, "invalid nil value for '%{public}s'", "ctFont");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    v19 = 0;
  }

  return v19;
}

+ (double)heightForString:(id)a3 textMeasurerBundle:(id)a4 width:(double)a5 outFitWidth:(double *)a6
{
  v9 = a3;
  v11 = a4;
  if (!v9)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "+[TSWPTextMeasurer heightForString:textMeasurerBundle:width:outFitWidth:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 1403, 0, "invalid nil value for '%{public}s'", "string");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  if (!v11)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "+[TSWPTextMeasurer heightForString:textMeasurerBundle:width:outFitWidth:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 1404, 0, "invalid nil value for '%{public}s'", "textMeasurerBundle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }

  if (a6)
  {
    *a6 = 0.0;
  }

  v26 = objc_alloc(MEMORY[0x277CCA898]);
  v29 = objc_msgSend_fontAttributes(v11, v27, v28);
  v31 = objc_msgSend_initWithString_attributes_(v26, v30, v9, v29);

  v32 = CTTypesetterCreateWithAttributedString(v31);
  v37 = objc_msgSend_length(v9, v33, v34);
  if (v37 < 1)
  {
    v39 = 0;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    do
    {
      v40 = CTTypesetterSuggestLineBreak(v32, v38, a5);
      if (a6)
      {
        v67.location = v38;
        v67.length = v40;
        Line = CTTypesetterCreateLine(v32, v67);
        TypographicBounds = CTLineGetTypographicBounds(Line, 0, 0, 0);
        CFRelease(Line);
        if (TypographicBounds > *a6)
        {
          *a6 = TypographicBounds;
        }
      }

      ++v39;
      v38 += v40;
    }

    while (v38 < v37);
  }

  v43 = objc_msgSend_length(v9, v35, v36);
  v45 = objc_msgSend_characterAtIndex_(v9, v44, v43 - 1);
  v46 = v45;
  v49 = IsParagraphBreakingCharacter(v45);
  if (v11)
  {
    objc_msgSend_fontHeightInfo(v11, v47, v48);
    v50 = v65;
    objc_msgSend_fontHeightInfo(v11, v51, v52);
    v53 = v64;
    objc_msgSend_fontHeightInfo(v11, v54, v55);
    v56 = v63;
    objc_msgSend_fontHeightInfo(v11, v57, v58);
    v59 = v66;
  }

  else
  {
    v59 = 0.0;
    v56 = 0.0;
    v50 = 0.0;
    v53 = 0.0;
  }

  CFRelease(v32);
  if (v46 == 8232)
  {
    v60 = 1;
  }

  else
  {
    v60 = v49;
  }

  v61 = (v56 + v50 + v53) * (v39 + v60) + (v39 + v60 - 1) * v59;

  return v61;
}

+ (double)widthForString:(id)a3 textMeasurerBundle:(id)a4
{
  v5 = a3;
  v7 = a4;
  if (!v5)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSWPTextMeasurer widthForString:textMeasurerBundle:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1451, 0, "invalid nil value for '%{public}s'", "string");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  if (!v7)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSWPTextMeasurer widthForString:textMeasurerBundle:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 1452, 0, "invalid nil value for '%{public}s'", "textMeasurerBundle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  v22 = objc_alloc(MEMORY[0x277CCA898]);
  v25 = objc_msgSend_fontAttributes(v7, v23, v24);
  v27 = objc_msgSend_initWithString_attributes_(v22, v26, v5, v25);

  objc_msgSend_boundingRectWithSize_options_context_(v27, v28, 0, 0, 1.79769313e308, 1.79769313e308);
  v30 = v29;

  return v30;
}

@end
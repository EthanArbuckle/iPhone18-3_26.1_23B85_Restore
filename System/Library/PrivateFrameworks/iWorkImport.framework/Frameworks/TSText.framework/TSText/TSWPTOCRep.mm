@interface TSWPTOCRep
- (id)hyperlinkRegions;
- (id)i_paragraphStyleAtPoint:(CGPoint)point;
- (id)paragraphStylesBetweenCharIndex:(unint64_t)index andCharIndex:(unint64_t)charIndex;
- (id)tocInfo;
- (unint64_t)charIndexAtPoint:(CGPoint)point;
@end

@implementation TSWPTOCRep

- (id)tocInfo
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (unint64_t)charIndexAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = objc_msgSend_containedRep(self, a2, v3);
  v9 = objc_msgSend_layout(v6, v7, v8);
  v11 = objc_msgSend_charIndexFromPoint_hitTestMode_isAtEndOfLine_leadingEdge_inLayoutTarget_(TSWPColumn, v10, 0, 0, 0, v9, x, y);

  return v11;
}

- (id)paragraphStylesBetweenCharIndex:(unint64_t)index andCharIndex:(unint64_t)charIndex
{
  if (index == 0x7FFFFFFFFFFFFFFFLL || charIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v52 = v4;
    v53 = v5;
    v12 = objc_msgSend_tocInfo(self, a2, index);
    v15 = objc_msgSend_containedRep(self, v13, v14);
    v18 = v15;
    if (index >= charIndex)
    {
      indexCopy = charIndex;
    }

    else
    {
      indexCopy = index;
    }

    if (index <= charIndex)
    {
      indexCopy2 = charIndex;
    }

    else
    {
      indexCopy2 = index;
    }

    v50 = objc_msgSend_set(MEMORY[0x277CBEB58], v16, v17);
    do
    {
      v51 = xmmword_276F98AE0;
      v23 = objc_msgSend_storage(v18, v21, v22);
      v25 = objc_msgSend_paragraphIndexAtCharIndex_(v23, v24, indexCopy);

      v28 = objc_msgSend_storage(v18, v26, v27);
      v30 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v28, v29, indexCopy, &v51);

      v33 = objc_msgSend_visibleTOCEntries(v12, v31, v32);
      if (v25 < objc_msgSend_count(v33, v34, v35))
      {
        v37 = objc_msgSend_objectAtIndex_(v33, v36, v25);
        v41 = objc_msgSend_indexedStyle(v37, v38, v39);
        if (v41)
        {
          objc_msgSend_addObject_(v50, v40, v41);
        }
      }

      v42 = *(&v51 + 1) + v51;
      if (*(&v51 + 1) + v51 <= indexCopy)
      {
        v43 = MEMORY[0x277D81150];
        v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSWPTOCRep paragraphStylesBetweenCharIndex:andCharIndex:]");
        v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCRep.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v47, v44, v46, 263, 0, "did not advance while iterating through paragraph styles");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49);
        v42 = *(&v51 + 1) + v51;
      }

      if (indexCopy + 1 > v42)
      {
        ++indexCopy;
      }

      else
      {
        indexCopy = v42;
      }
    }

    while (indexCopy < indexCopy2);

    v7 = v50;
  }

  return v7;
}

- (id)hyperlinkRegions
{
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v7 = objc_msgSend_tocInfo(self, v5, v6);
  v10 = objc_msgSend_containedRep(self, v8, v9);
  v13 = objc_msgSend_storage(v10, v11, v12);
  v16 = objc_msgSend_range(v10, v14, v15);
  v18 = objc_msgSend_paragraphIndexRangeForCharRange_(v13, v17, v16, v17);
  v20 = v19;
  v22 = objc_msgSend_visibleTOCEntries(v7, v19, v21);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_276E2CDDC;
  v28[3] = &unk_27A6F58D8;
  v28[8] = v18;
  v28[9] = v20;
  v28[4] = v13;
  v28[5] = v10;
  v28[6] = self;
  v28[7] = v4;
  objc_msgSend_enumerateObjectsUsingBlock_(v22, v23, v28);

  v26 = objc_msgSend_copy(v4, v24, v25);

  return v26;
}

- (id)i_paragraphStyleAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v7 = objc_msgSend_containedRep(self, a2, v3);
  v10 = objc_msgSend_layout(v7, v8, v9);
  v12 = objc_msgSend_charIndexFromPoint_hitTestMode_isAtEndOfLine_leadingEdge_inLayoutTarget_(TSWPColumn, v11, 0, 0, 0, v10, x, y);

  v15 = objc_msgSend_storage(v7, v13, v14);
  v17 = objc_msgSend_paragraphIndexAtCharIndex_(v15, v16, v12);

  v20 = objc_msgSend_tocInfo(self, v18, v19);
  v23 = objc_msgSend_visibleTOCEntries(v20, v21, v22);
  v27 = 0;
  if (v17 < objc_msgSend_count(v23, v24, v25))
  {
    v28 = objc_msgSend_objectAtIndex_(v23, v26, v17);
    v27 = objc_msgSend_indexedStyle(v28, v29, v30);
  }

  return v27;
}

@end
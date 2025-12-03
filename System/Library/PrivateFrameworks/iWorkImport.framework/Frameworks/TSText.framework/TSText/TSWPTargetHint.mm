@interface TSWPTargetHint
- (BOOL)isEqual:(id)equal;
- (CGRect)frameBounds;
- (NSString)debugDescription;
- (_NSRange)anchoredRange;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)trimToCharIndex:(unint64_t)index inTarget:(id)target removeFootnoteReferenceCount:(unint64_t)count removeAutoNumberFootnoteCount:(unint64_t)footnoteCount;
@end

@implementation TSWPTargetHint

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  objc_msgSend_frameBounds(self, v11, v12);
  objc_msgSend_setFrameBounds_(v10, v13, v14);
  v17 = objc_msgSend_range(self, v15, v16);
  objc_msgSend_setRange_(v10, v18, v17, v18);
  WidowPullsDownFromCharIndex = objc_msgSend_nextWidowPullsDownFromCharIndex(self, v19, v20);
  objc_msgSend_setNextWidowPullsDownFromCharIndex_(v10, v22, WidowPullsDownFromCharIndex);
  v25 = objc_msgSend_anchoredRange(self, v23, v24);
  objc_msgSend_setAnchoredRange_(v10, v26, v25, v26);
  v29 = objc_msgSend_columnCount(self, v27, v28);
  objc_msgSend_setColumnCount_(v10, v30, v29);
  v33 = objc_msgSend_lineFragmentCount(self, v31, v32);
  objc_msgSend_setLineFragmentCount_(v10, v34, v33);
  v37 = objc_msgSend_usedParagraphHeights(self, v35, v36);
  objc_msgSend_setUsedParagraphHeights_(v10, v38, v37);
  v41 = objc_msgSend_endOfLayout(self, v39, v40);
  objc_msgSend_setEndOfLayout_(v10, v42, v41);
  HasListLabel = objc_msgSend_lastLineIsEmptyAndHasListLabel(self, v43, v44);
  objc_msgSend_setLastLineIsEmptyAndHasListLabel_(v10, v46, HasListLabel);
  IsVertical = objc_msgSend_textIsVertical(self, v47, v48);
  objc_msgSend_setTextIsVertical_(v10, v50, IsVertical);
  v53 = objc_msgSend_terminatedByBreak(self, v51, v52);
  objc_msgSend_setTerminatedByBreak_(v10, v54, v53);
  return v10;
}

- (void)trimToCharIndex:(unint64_t)index inTarget:(id)target removeFootnoteReferenceCount:(unint64_t)count removeAutoNumberFootnoteCount:(unint64_t)footnoteCount
{
  v10 = objc_msgSend_range(self, a2, index, target, count, footnoteCount);
  if (index <= v10)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPTargetHint trimToCharIndex:inTarget:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTargetHint.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 36, 0, "trimming will remove all characters from this page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  if (objc_msgSend_nextWidowPullsDownFromCharIndex(self, v8, v9) < index)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSWPTargetHint trimToCharIndex:inTarget:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTargetHint.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 37, 0, "Bad charIndex");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }

  if (index < v10)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSWPTargetHint trimToCharIndex:inTarget:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTargetHint.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 38, 0, "Bad charIndex");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
  }

  objc_msgSend_setRange_(self, v18, v10, index - v10);
  objc_msgSend_setNextWidowPullsDownFromCharIndex_(self, v33, index);

  objc_msgSend_setLineFragmentCount_(self, v34, 0x7FFFFFFFFFFFFFFFLL);
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v12.location = objc_msgSend_range(self, v5, v6);
  v7 = NSStringFromRange(v12);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"(%@*)%p range: %@", v4, self, v7);

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5 || (objc_msgSend_frameBounds(v5, v6, v7), v9 = v8, v11 = v10, v13 = v12, v15 = v14, objc_msgSend_frameBounds(self, v16, v17), v78.origin.x = v18, v78.origin.y = v19, v78.size.width = v20, v78.size.height = v21, v77.origin.x = v9, v77.origin.y = v11, v77.size.width = v13, v77.size.height = v15, !CGRectEqualToRect(v77, v78)) || ((v24 = objc_msgSend_range(v5, v22, v23), v26 = v25, v24 == objc_msgSend_range(self, v25, v27)) ? (v30 = v26 == v28) : (v30 = 0), !v30 || (WidowPullsDownFromCharIndex = objc_msgSend_nextWidowPullsDownFromCharIndex(v5, v28, v29), WidowPullsDownFromCharIndex != objc_msgSend_nextWidowPullsDownFromCharIndex(self, v32, v33))))
  {
LABEL_17:
    LOBYTE(v42) = 0;
    goto LABEL_18;
  }

  v36 = objc_msgSend_anchoredRange(v5, v34, v35);
  v38 = v37;
  LOBYTE(v42) = 0;
  if (v36 == objc_msgSend_anchoredRange(self, v37, v39) && v38 == v40)
  {
    v43 = objc_msgSend_columnCount(v5, v40, v41);
    if (v43 == objc_msgSend_columnCount(self, v44, v45))
    {
      v48 = objc_msgSend_lineFragmentCount(v5, v46, v47);
      if (v48 == objc_msgSend_lineFragmentCount(self, v49, v50))
      {
        v53 = objc_msgSend_usedParagraphHeights(v5, v51, v52);
        if (v53 == objc_msgSend_usedParagraphHeights(self, v54, v55))
        {
          v58 = objc_msgSend_endOfLayout(v5, v56, v57);
          if (v58 == objc_msgSend_endOfLayout(self, v59, v60))
          {
            HasListLabel = objc_msgSend_lastLineIsEmptyAndHasListLabel(v5, v61, v62);
            if (HasListLabel == objc_msgSend_lastLineIsEmptyAndHasListLabel(self, v64, v65))
            {
              IsVertical = objc_msgSend_textIsVertical(v5, v66, v67);
              if (IsVertical == objc_msgSend_textIsVertical(self, v69, v70))
              {
                v74 = objc_msgSend_terminatedByBreak(v5, v71, v72);
                v42 = v74 ^ objc_msgSend_terminatedByBreak(self, v75, v76) ^ 1;
                goto LABEL_18;
              }
            }
          }
        }
      }
    }

    goto LABEL_17;
  }

LABEL_18:

  return v42;
}

- (unint64_t)hash
{
  TSUHash();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();

  return TSUHashWithSeed();
}

- (CGRect)frameBounds
{
  x = self->_frameBounds.origin.x;
  y = self->_frameBounds.origin.y;
  width = self->_frameBounds.size.width;
  height = self->_frameBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)anchoredRange
{
  length = self->_anchoredRange.length;
  location = self->_anchoredRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end
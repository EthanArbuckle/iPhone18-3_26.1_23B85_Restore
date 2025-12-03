@interface TSWPSelection
+ (BOOL)p_checkEndOfLineFlagForRange:(_NSRange *)range leadingEdge:(BOOL *)edge type:(int64_t *)type endOfLine:(BOOL)line storage:(id)storage;
+ (id)selectionFromWPSelection:(id)selection;
+ (id)selectionWithRange:(_NSRange)range;
+ (id)selectionWithRange:(_NSRange)range type:(int64_t)type leadingEdge:(BOOL)edge storage:(id)storage;
+ (id)selectionWithRanges:(id)ranges;
- (BOOL)containsCharacterAtIndex:(unint64_t)index;
- (BOOL)containsCharacterAtIndex:(unint64_t)index withOptions:(unint64_t)options;
- (BOOL)intersectsRange:(_NSRange)range;
- (BOOL)isDiscontiguous;
- (BOOL)isEquivalentForInsertionStyle:(id)style;
- (BOOL)isInsertionPoint;
- (BOOL)isValid;
- (BOOL)p_isEqual:(id)equal;
- (BOOL)p_isRange;
- (BOOL)validVisualRanges;
- (NSString)description;
- (TSWPRangeArray)visualRanges;
- (TSWPSelection)initWithArchive:(const void *)archive;
- (TSWPSelection)initWithRangeArray:(id)array;
- (TSWPSelection)initWithType:(int64_t)type range:(_NSRange)range styleInsertionBehavior:(int64_t)behavior caretAffinity:(int64_t)affinity caretIsLeadingEdge:(BOOL)edge leadingCharIndex:(unint64_t)index;
- (TSWPSelection)initWithType:(int64_t)type range:(_NSRange)range styleInsertionBehavior:(int64_t)behavior caretAffinity:(int64_t)affinity caretIsLeadingEdge:(BOOL)edge storage:(id)storage;
- (TSWPSelection)initWithType:(int64_t)type ranges:(id)ranges;
- (TSWPSelection)initWithType:(int64_t)type ranges:(id)ranges validVisualRanges:(BOOL)visualRanges styleInsertionBehavior:(int64_t)behavior caretAffinity:(int64_t)affinity caretIsLeadingEdge:(BOOL)edge leadingCharIndex:(unint64_t)index headCharIndex:(unint64_t)self0 tailCharIndex:(unint64_t)self1;
- (_NSRange)DEPRECATED_range;
- (_NSRange)firstRange;
- (_NSRange)insertionPointRange;
- (_NSRange)superRange;
- (_NSRange)visualDefinitionRange;
- (id)constrainToRange:(_NSRange)range;
- (id)copyWithNewLogicalRanges:(id)ranges;
- (id)copyWithNewRange:(_NSRange)range newCaretAffinity:(int64_t)affinity;
- (id)copyWithNewStyleInsertionBehavior:(int64_t)behavior newCaretAffinity:(int64_t)affinity;
- (id)copyWithNewType:(int64_t)type;
- (id)copyWithNewType:(int64_t)type range:(_NSRange)range;
- (id)copyWithNewVisualTypeRange:(_NSRange)range head:(unint64_t)head tail:(unint64_t)tail;
- (id)copyWithVisualRanges:(id)ranges headCharIndex:(unint64_t)index tailCharIndex:(unint64_t)charIndex rightToLeft:(BOOL)left sameLine:(BOOL)line;
- (id)copyWithZone:(_NSZone *)zone;
- (id)p_copyWithClass:(Class)class;
- (id)shortDescription;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (unint64_t)rangeCount;
- (void)enumerateRanges:(id)ranges;
- (void)enumerateRangesInRange:(_NSRange)range usingBlock:(id)block;
- (void)reverseEnumerateRanges:(id)ranges;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setI_logicalRanges:(id)ranges;
@end

@implementation TSWPSelection

- (BOOL)validVisualRanges
{
  valid = objc_msgSend_i_validVisualRanges(self, a2, v2);
  if (valid)
  {

    LOBYTE(valid) = objc_msgSend_isVisual(self, v5, v6);
  }

  return valid;
}

- (_NSRange)DEPRECATED_range
{
  v4 = objc_msgSend_ranges(self, a2, v2);
  objc_msgSend_superRange(v4, v5, v6);

  if (objc_msgSend_isVisual(self, v7, v8) && objc_msgSend_isInsertionPoint(self, v9, v10) && (objc_msgSend_caretIsLeadingEdge(self, v9, v10) & 1) == 0)
  {
    v11 = objc_msgSend_leadingCharIndex(self, v9, v10);
    v12 = 0;
  }

  else
  {

    v11 = objc_msgSend_visualDefinitionRange(self, v9, v10);
  }

  result.length = v12;
  result.location = v11;
  return result;
}

- (TSWPSelection)initWithType:(int64_t)type ranges:(id)ranges validVisualRanges:(BOOL)visualRanges styleInsertionBehavior:(int64_t)behavior caretAffinity:(int64_t)affinity caretIsLeadingEdge:(BOOL)edge leadingCharIndex:(unint64_t)index headCharIndex:(unint64_t)self0 tailCharIndex:(unint64_t)self1
{
  visualRangesCopy = visualRanges;
  rangesCopy = ranges;
  v18 = MEMORY[0x277D81490];
  if (!rangesCopy)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSWPSelection initWithType:ranges:validVisualRanges:styleInsertionBehavior:caretAffinity:caretIsLeadingEdge:leadingCharIndex:headCharIndex:tailCharIndex:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSelection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 144, 0, "Bad parameter: ranges must be non-nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
    rangesCopy = objc_msgSend_rangeArrayWithRange_(TSWPRangeArray, v26, *v18, v18[1]);
  }

  v27 = rangesCopy;
  edgeCopy = edge;
  behaviorCopy = behavior;
  affinityCopy = affinity;
  v28 = objc_msgSend_superRange(rangesCopy, v16, v17);
  v31 = v28;
  v32 = v29;
  v34 = v28 == *v18 && v29 == v18[1];
  if (v28 >= 0x7FFFFFFF && !v34 || !objc_msgSend_rangeCount(v27, v29, v30))
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSWPSelection initWithType:ranges:validVisualRanges:styleInsertionBehavior:caretAffinity:caretIsLeadingEdge:leadingCharIndex:headCharIndex:tailCharIndex:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSelection.mm");
    v156.location = v31;
    v156.length = v32;
    v39 = NSStringFromRange(v156);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v40, v36, v38, 153, 0, "Illegal super range: %{public}@", v39);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
    v44 = objc_msgSend_rangeArrayWithRange_(TSWPRangeArray, v43, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8));

    v27 = v44;
  }

  if (visualRangesCopy && v32)
  {
    if (charIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v45 = MEMORY[0x277D81150];
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSWPSelection initWithType:ranges:validVisualRanges:styleInsertionBehavior:caretAffinity:caretIsLeadingEdge:leadingCharIndex:headCharIndex:tailCharIndex:]");
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSelection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v49, v46, v48, 159, 0, "Bad headCharIndex");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
    }

    if (tailCharIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v52 = MEMORY[0x277D81150];
      v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSWPSelection initWithType:ranges:validVisualRanges:styleInsertionBehavior:caretAffinity:caretIsLeadingEdge:leadingCharIndex:headCharIndex:tailCharIndex:]");
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSelection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v56, v53, v55, 160, 0, "Bad tailCharIndex");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58);
    }

    v60 = charIndex != 0x7FFFFFFFFFFFFFFFLL && tailCharIndex != 0x7FFFFFFFFFFFFFFFLL;
    visualRangesCopy = v60;
  }

  v155.receiver = self;
  v155.super_class = TSWPSelection;
  v61 = [(TSWPSelection *)&v155 init];
  v64 = v61;
  v65 = v61;
  if (v61)
  {
    v61->_type = type;
    if (!objc_msgSend_rangeCount(v27, v62, v63))
    {
      v68 = MEMORY[0x277D81150];
      v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "[TSWPSelection initWithType:ranges:validVisualRanges:styleInsertionBehavior:caretAffinity:caretIsLeadingEdge:leadingCharIndex:headCharIndex:tailCharIndex:]");
      v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSelection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v72, v69, v71, 174, 0, "Illegal empty range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74);
    }

    if (!objc_msgSend_rangeCount(v27, v66, v67))
    {
      v77 = objc_msgSend_rangeArrayWithRange_(TSWPRangeArray, v75, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8));

      v27 = v77;
    }

    if (v32 > 0x7FFFFFFE || v31 >= 0x7FFFFFFF && v31 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v78 = objc_msgSend_rangeArrayWithRange_(TSWPRangeArray, v75, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8));

      v27 = v78;
    }

    v79 = objc_msgSend_copy(v27, v75, v76);
    ranges = v65->_ranges;
    v65->_ranges = v79;

    v83 = type != 7 || visualRangesCopy;
    if (v83)
    {
      Range = objc_msgSend_superRange(v27, v81, v82);
    }

    else
    {
      if (objc_msgSend_rangeCount(v27, v81, v82) >= 2 && *MEMORY[0x277D81430] != -1)
      {
        sub_276F4F298();
      }

      Range = objc_msgSend_firstRange(v27, v87, v88);
    }

    v64->_visualDefinitionRange.location = Range;
    v64->_visualDefinitionRange.length = v85;
    isRange = objc_msgSend_isRange(v65, v85, v86);
    if (objc_msgSend_rangeCount(v27, v89, v90) == 1)
    {
      objc_msgSend_firstRange(v27, v91, v92);
      v93 = v91 == 0;
    }

    else
    {
      v93 = 0;
    }

    indexCopy = index;
    v95 = index != 0x7FFFFFFFFFFFFFFFLL && index >= 0x7FFFFFFF;
    v96 = !v95;
    if (v95)
    {
      v97 = MEMORY[0x277D81150];
      v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, "[TSWPSelection initWithType:ranges:validVisualRanges:styleInsertionBehavior:caretAffinity:caretIsLeadingEdge:leadingCharIndex:headCharIndex:tailCharIndex:]");
      v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSelection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v97, v101, v98, v100, 213, 0, "Illegal leadingCharIndex (%lu)", index);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v102, v103);
    }

    v104 = !v93;
    if (index != 0x7FFFFFFFFFFFFFFFLL)
    {
      v104 = 1;
    }

    if ((v104 & 1) == 0)
    {
      indexCopy = objc_msgSend_firstRange(v27, v91, v92);
    }

    if (v96)
    {
      v105 = indexCopy;
    }

    else
    {
      v105 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (isRange)
    {
      v105 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v65->_leadingCharIndex = v105;
    v65->_caretIsLeadingEdge = objc_msgSend_isInsertionPoint(v65, v91, v92) ^ 1 | edgeCopy;
    v65->_styleInsertionBehavior = behaviorCopy;
    v65->_caretLFAffinity = affinityCopy;
    v109 = tailCharIndex == 0x7FFFFFFFFFFFFFFFLL || tailCharIndex < 0x7FFFFFFF;
    if (charIndex != 0x7FFFFFFFFFFFFFFFLL && charIndex >= 0x7FFFFFFF)
    {
      v110 = MEMORY[0x277D81150];
      v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v106, "[TSWPSelection initWithType:ranges:validVisualRanges:styleInsertionBehavior:caretAffinity:caretIsLeadingEdge:leadingCharIndex:headCharIndex:tailCharIndex:]");
      v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v112, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSelection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v110, v114, v111, v113, 227, 0, "Illegal headCharIndex (%lu)", charIndex);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v115, v116);
    }

    if (v109)
    {
      tailCharIndexCopy = tailCharIndex;
    }

    else
    {
      v118 = MEMORY[0x277D81150];
      v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v106, "[TSWPSelection initWithType:ranges:validVisualRanges:styleInsertionBehavior:caretAffinity:caretIsLeadingEdge:leadingCharIndex:headCharIndex:tailCharIndex:]");
      v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSelection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v118, v122, v119, v121, 228, 0, "Illegal tailCharIndex (%lu)", tailCharIndex);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v123, v124);
      tailCharIndexCopy = 0x7FFFFFFFFFFFFFFFLL;
    }

    charIndexCopy = 0x7FFFFFFFFFFFFFFFLL;
    if (charIndex < 0x7FFFFFFF)
    {
      charIndexCopy = charIndex;
    }

    v65->_headCharIndex = charIndexCopy;
    v65->_tailCharIndex = tailCharIndexCopy;
    if (visualRangesCopy && ((type == 7) & isRange) == 0)
    {
      v126 = MEMORY[0x277D81150];
      v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v106, "[TSWPSelection initWithType:ranges:validVisualRanges:styleInsertionBehavior:caretAffinity:caretIsLeadingEdge:leadingCharIndex:headCharIndex:tailCharIndex:]");
      v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v128, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSelection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v126, v130, v127, v129, 234, 0, "only visual selections can have valid visual ranges");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v131, v132);
    }

    v133 = visualRangesCopy;
    if (type != 7)
    {
      v133 = 0;
    }

    v65->_validVisualRanges = v133 & isRange;
    if (objc_msgSend_isInsertionPoint(v65, v106, v107))
    {
      leadingCharIndex = v65->_leadingCharIndex;
      if (leadingCharIndex == 0x7FFFFFFFFFFFFFFFLL || !v65->_caretIsLeadingEdge && leadingCharIndex == objc_msgSend_insertionCharIndex(v65, v134, v135))
      {
        v137 = MEMORY[0x277D81150];
        v138 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v134, "[TSWPSelection initWithType:ranges:validVisualRanges:styleInsertionBehavior:caretAffinity:caretIsLeadingEdge:leadingCharIndex:headCharIndex:tailCharIndex:]");
        v140 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v139, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSelection.mm");
        v141 = v65->_leadingCharIndex;
        v144 = objc_msgSend_insertionCharIndex(v65, v142, v143);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v137, v145, v138, v140, 241, 0, "Bad leadingCharIndex: %lu (%lu)", v141, v144);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v146, v147);
      }
    }
  }

  return v65;
}

- (TSWPSelection)initWithType:(int64_t)type range:(_NSRange)range styleInsertionBehavior:(int64_t)behavior caretAffinity:(int64_t)affinity caretIsLeadingEdge:(BOOL)edge leadingCharIndex:(unint64_t)index
{
  edgeCopy = edge;
  v13 = objc_msgSend_rangeArrayWithRange_(TSWPRangeArray, a2, range.location, range.length);
  IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex = objc_msgSend_initWithType_ranges_validVisualRanges_styleInsertionBehavior_caretAffinity_caretIsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_(self, v14, type, v13, 0, behavior, affinity, edgeCopy, index, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL);

  return IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex;
}

- (TSWPSelection)initWithType:(int64_t)type range:(_NSRange)range styleInsertionBehavior:(int64_t)behavior caretAffinity:(int64_t)affinity caretIsLeadingEdge:(BOOL)edge storage:(id)storage
{
  edgeCopy = edge;
  length = range.length;
  location = range.location;
  CharacterIndex = range.location;
  storageCopy = storage;
  v19 = storageCopy;
  v29 = length;
  selfCopy = self;
  if (type != 7 || storageCopy || edgeCopy)
  {
    if (storageCopy && !edgeCopy && location < objc_msgSend_length(storageCopy, v17, v18))
    {
      CharacterIndex = objc_msgSend_nextCharacterIndex_(v19, v17, CharacterIndex);
    }
  }

  else
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSWPSelection initWithType:range:styleInsertionBehavior:caretAffinity:caretIsLeadingEdge:storage:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSelection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 266, 0, "Selection has a leading edge but no storage to get the leading char");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
  }

  IsLeadingEdge_leadingCharIndex = objc_msgSend_initWithType_range_styleInsertionBehavior_caretAffinity_caretIsLeadingEdge_leadingCharIndex_(selfCopy, v17, type, location, v29, behavior, affinity, edgeCopy, CharacterIndex);

  return IsLeadingEdge_leadingCharIndex;
}

- (TSWPSelection)initWithRangeArray:(id)array
{
  arrayCopy = array;
  Range = objc_msgSend_firstRange(arrayCopy, v5, v6);
  v9 = v8;
  v11 = objc_msgSend_rangeCount(arrayCopy, v8, v10);
  if (v9)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11 == 1;
  }

  if (v13)
  {
    IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex = objc_msgSend_initWithType_ranges_validVisualRanges_styleInsertionBehavior_caretAffinity_caretIsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_(self, v12, 8, arrayCopy, 0, 0, 0, 1, Range, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex = objc_msgSend_initWithType_ranges_validVisualRanges_styleInsertionBehavior_caretAffinity_caretIsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_(self, v12, 8, arrayCopy, 0, 0, 0, 1, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL);
  }

  v15 = IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex;

  return v15;
}

- (TSWPSelection)initWithType:(int64_t)type ranges:(id)ranges
{
  rangesCopy = ranges;
  if (type == 7)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPSelection initWithType:ranges:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSelection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 304, 0, "Unexpected visual selection type");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex = objc_msgSend_initWithType_ranges_validVisualRanges_styleInsertionBehavior_caretAffinity_caretIsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_(self, v6, type, rangesCopy, 0, 0, 0, 1, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL);

  return IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex;
}

- (TSWPSelection)initWithArchive:(const void *)archive
{
  v26.receiver = self;
  v26.super_class = TSWPSelection;
  v4 = [(TSWPSelection *)&v26 init];
  v6 = v4;
  if (v4)
  {
    v7 = *(archive + 4);
    v8 = archive + 84;
    if ((v7 & 0x80) == 0)
    {
      v8 = archive + 64;
    }

    v4->_type = *v8;
    if (v7)
    {
      v9 = TSPNSRangeFromMessage();
    }

    else
    {
      v9 = *MEMORY[0x277D81490];
      v10 = *(MEMORY[0x277D81490] + 8);
    }

    v6->_visualDefinitionRange.location = v9;
    v6->_visualDefinitionRange.length = v10;
    if (*(archive + 8) < 1)
    {
      v17 = 0;
    }

    else
    {
      v13 = objc_alloc_init(TSWPMutableRangeArray);
      if (*(archive + 8) >= 1)
      {
        v14 = 0;
        do
        {
          sub_276D742D8(archive + 24, v14);
          v15 = TSPNSRangeFromMessage();
          objc_msgSend_addRange_(v13, v16, v15, v16);
          ++v14;
        }

        while (v14 < *(archive + 8));
      }

      v17 = objc_msgSend_copy(v13, v11, v12);
    }

    if (!objc_msgSend_rangeCount(v17, v10, v5))
    {
      v18 = TSPNSRangeFromMessage();
      v20 = objc_msgSend_rangeArrayWithRange_(TSWPRangeArray, v19, v18, v19);

      v17 = v20;
    }

    objc_storeStrong(&v6->_ranges, v17);
    v6->_validVisualRanges = 0;
    v22 = *(archive + 4);
    v6->_styleInsertionBehavior = *(archive + 17) & (v22 << 28 >> 31);
    v23 = *(archive + 18);
    if ((v22 & 0x10) == 0)
    {
      v23 = 1;
    }

    v6->_caretLFAffinity = v23;
    v6->_caretIsLeadingEdge = ((v22 & 0x20) == 0) | *(archive + 76) & 1;
    if ((v22 & 0x40) != 0)
    {
      v24 = TSPNSUIntegerFromUInt32();
    }

    else
    {
      v24 = objc_msgSend_rangeAtIndex_(v17, v21, 0);
    }

    v6->_leadingCharIndex = v24;
    v6->_headCharIndex = 0x7FFFFFFFFFFFFFFFLL;
    v6->_tailCharIndex = 0x7FFFFFFFFFFFFFFFLL;
    v6->_validVisualRanges = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  objc_msgSend_p_copyWithClass_(self, v5, v4);
  return objc_claimAutoreleasedReturnValue();
}

- (id)p_copyWithClass:(Class)class
{
  v4 = [class alloc];
  v7 = objc_msgSend_type(self, v5, v6);
  ranges = self->_ranges;
  valid = objc_msgSend_validVisualRanges(self, v9, v10);
  v14 = objc_msgSend_styleInsertionBehavior(self, v12, v13);
  v17 = objc_msgSend_caretLFAffinity(self, v15, v16);
  IsLeadingEdge = objc_msgSend_caretIsLeadingEdge(self, v18, v19);
  v23 = objc_msgSend_leadingCharIndex(self, v21, v22);
  IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex = objc_msgSend_initWithType_ranges_validVisualRanges_styleInsertionBehavior_caretAffinity_caretIsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_(v4, v24, v7, ranges, valid, v14, v17, IsLeadingEdge, v23, self->_headCharIndex, self->_tailCharIndex);
  v28 = objc_msgSend_visualDefinitionRange(self, v26, v27);
  objc_msgSend_setVisualDefinitionRange_(IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex, v29, v28, v29);

  return IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex;
}

+ (id)selectionWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = [self alloc];
  v7 = objc_msgSend_initWithRange_(v5, v6, location, length);

  return v7;
}

+ (id)selectionWithRange:(_NSRange)range type:(int64_t)type leadingEdge:(BOOL)edge storage:(id)storage
{
  edgeCopy = edge;
  length = range.length;
  location = range.location;
  storageCopy = storage;
  v12 = [self alloc];
  IsLeadingEdge_storage = objc_msgSend_initWithType_range_styleInsertionBehavior_caretAffinity_caretIsLeadingEdge_storage_(v12, v13, type, location, length, 0, 0, edgeCopy, storageCopy);

  return IsLeadingEdge_storage;
}

+ (id)selectionWithRanges:(id)ranges
{
  rangesCopy = ranges;
  v5 = [self alloc];
  v7 = objc_msgSend_initWithRangeArray_(v5, v6, rangesCopy);

  return v7;
}

+ (id)selectionFromWPSelection:(id)selection
{
  selectionCopy = selection;
  v6 = selectionCopy;
  if (selectionCopy)
  {
    v8 = selectionCopy;
    if ((objc_msgSend_isMemberOfClass_(selectionCopy, v5, self) & 1) == 0)
    {
      v8 = objc_msgSend_p_copyWithClass_(v6, v7, self);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)p_isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    isEqualToRangeArray = 1;
  }

  else
  {
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (v7 && (!objc_msgSend_isVisual(self, v5, v6) ? (v15 = 0) : ((v10 = objc_msgSend_visualDefinitionRange(self, v8, v9), v12 = v11, v10 == objc_msgSend_visualDefinitionRange(v7, v11, v13)) ? (v14 = v12 == v8) : (v14 = 0), v14 ? (v15 = 0) : (v15 = 1)), !objc_msgSend_isInsertionPoint(self, v8, v9) ? (v19 = 0) : self->_caretIsLeadingEdge != *(v7 + 9) ? (v19 = 1) : (v19 = self->_leadingCharIndex != *(v7 + 48)), self->_type == *(v7 + 24) && self->_styleInsertionBehavior == *(v7 + 64) && !((self->_caretLFAffinity != *(v7 + 56)) | (v19 | v15) & 1) && (valid = objc_msgSend_validVisualRanges(self, v17, v18), valid == objc_msgSend_validVisualRanges(v7, v21, v22))))
    {
      isEqualToRangeArray = objc_msgSend_isEqualToRangeArray_(self->_ranges, v23, *(v7 + 16));
    }

    else
    {
      isEqualToRangeArray = 0;
    }
  }

  return isEqualToRangeArray;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  objc_msgSend_addUnsignedInteger_(v3, v4, self->_type);
  objc_msgSend_addUnsignedInteger_(v3, v5, self->_styleInsertionBehavior);
  objc_msgSend_addUnsignedInteger_(v3, v6, self->_caretLFAffinity);
  if (objc_msgSend_isInsertionPoint(self, v7, v8))
  {
    objc_msgSend_addUnsignedInteger_(v3, v9, self->_leadingCharIndex);
    objc_msgSend_addBool_(v3, v11, self->_caretIsLeadingEdge);
  }

  if (objc_msgSend_isVisual(self, v9, v10))
  {
    valid = objc_msgSend_validVisualRanges(self, v12, v13);
    objc_msgSend_addBool_(v3, v15, valid);
    v18 = objc_msgSend_visualDefinitionRange(self, v16, v17);
    objc_msgSend_addRange_(v3, v19, v18, v19);
  }

  v20 = objc_msgSend_hash(self->_ranges, v12, v13);
  objc_msgSend_addUnsignedInteger_(v3, v21, v20);
  v24 = objc_msgSend_hashValue(v3, v22, v23);

  return v24;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (v7 && objc_msgSend_isValid(self, v5, v6) && objc_msgSend_isValid(v7, v8, v9))
  {
    Range = objc_msgSend_firstRange(self, v10, v11);
    if (Range >= objc_msgSend_firstRange(v7, v13, v14))
    {
      v19 = objc_msgSend_firstRange(self, v15, v16);
      if (v19 > objc_msgSend_firstRange(v7, v20, v21))
      {
        v17 = 1;
        goto LABEL_7;
      }

      objc_msgSend_firstRange(self, v22, v23);
      v25 = v24;
      objc_msgSend_firstRange(v7, v24, v26);
      if (v25 >= v27)
      {
        objc_msgSend_firstRange(self, v27, v28);
        v30 = v29;
        objc_msgSend_firstRange(v7, v29, v31);
        v17 = v30 > v32;
        goto LABEL_7;
      }
    }

    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

LABEL_7:

  return v17;
}

- (BOOL)isDiscontiguous
{
  if (objc_msgSend_isVisual(self, a2, v2))
  {
    return 0;
  }

  v7 = objc_msgSend_ranges(self, v4, v5);
  v6 = objc_msgSend_rangeCount(v7, v8, v9) > 1;

  return v6;
}

- (BOOL)p_isRange
{
  v3 = objc_msgSend_superRange(self, a2, v2);
  if (v4)
  {
    v5 = v3 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

- (BOOL)isInsertionPoint
{
  v3 = objc_msgSend_rangeAtIndex_(self->_ranges, a2, 0);
  v5 = v4;
  return objc_msgSend_rangeCount(self->_ranges, v4, v6) == 1 && v3 != 0x7FFFFFFFFFFFFFFFLL && v5 == 0;
}

- (BOOL)isValid
{
  v4 = objc_msgSend_rangeCount(self->_ranges, a2, v2);
  if (v4)
  {
    LOBYTE(v4) = objc_msgSend_superRange(self->_ranges, v5, v6) < 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (BOOL)isEquivalentForInsertionStyle:(id)style
{
  styleCopy = style;
  if (styleCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_msgSend_DEPRECATED_range(self, v5, v6);
      v9 = v8;
      v12 = 0;
      if (v7 == objc_msgSend_DEPRECATED_range(styleCopy, v8, v10) && v9 == v11)
      {
        v12 = self->_type == styleCopy->_type;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)copyWithNewType:(int64_t)type range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v8 = objc_alloc(objc_opt_class());
  return objc_msgSend_initWithType_range_styleInsertionBehavior_caretAffinity_caretIsLeadingEdge_leadingCharIndex_(v8, v9, type, location, length, self->_styleInsertionBehavior, self->_caretLFAffinity, 1, location);
}

- (id)copyWithNewVisualTypeRange:(_NSRange)range head:(unint64_t)head tail:(unint64_t)tail
{
  length = range.length;
  location = range.location;
  v10 = objc_alloc(objc_opt_class());
  IsLeadingEdge_leadingCharIndex = objc_msgSend_initWithType_range_styleInsertionBehavior_caretAffinity_caretIsLeadingEdge_leadingCharIndex_(v10, v11, 7, location, length, self->_styleInsertionBehavior, self->_caretLFAffinity, self->_caretIsLeadingEdge, self->_leadingCharIndex);
  objc_msgSend_i_setHeadCharIndex_tailCharIndex_(IsLeadingEdge_leadingCharIndex, v13, head, tail);
  objc_msgSend_setVisualDefinitionRange_(IsLeadingEdge_leadingCharIndex, v14, location, length);
  return IsLeadingEdge_leadingCharIndex;
}

- (id)copyWithNewType:(int64_t)type
{
  if (type == 7)
  {
    v5 = objc_msgSend_visualDefinitionRange(self, a2, 7);
    objc_msgSend_rangeArrayWithRange_(TSWPRangeArray, v6, v5, v6);
  }

  else
  {
    objc_msgSend_ranges(self, a2, type);
  }
  v7 = ;
  v8 = objc_alloc(objc_opt_class());
  IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex = objc_msgSend_initWithType_ranges_validVisualRanges_styleInsertionBehavior_caretAffinity_caretIsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_(v8, v9, type, v7, 0, self->_styleInsertionBehavior, self->_caretLFAffinity, self->_caretIsLeadingEdge, self->_leadingCharIndex, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL);
  v13 = objc_msgSend_visualDefinitionRange(self, v11, v12);
  objc_msgSend_setVisualDefinitionRange_(IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex, v14, v13, v14);

  return IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex;
}

- (id)copyWithNewRange:(_NSRange)range newCaretAffinity:(int64_t)affinity
{
  length = range.length;
  location = range.location;
  v8 = objc_alloc(objc_opt_class());
  IsLeadingEdge_leadingCharIndex = objc_msgSend_initWithType_range_styleInsertionBehavior_caretAffinity_caretIsLeadingEdge_leadingCharIndex_(v8, v9, self->_type, location, length, self->_styleInsertionBehavior, affinity, 1, location);
  if (IsLeadingEdge_leadingCharIndex)
  {
    if (location == objc_msgSend_superRange(self, v10, v11) && length == v13 || location == objc_msgSend_visualDefinitionRange(self, v13, v14) && length == v13)
    {
      if (self->_type != 7)
      {
        return IsLeadingEdge_leadingCharIndex;
      }

      if (objc_msgSend_validVisualRanges(self, v13, v14))
      {
        v16 = objc_msgSend_ranges(self, v13, v15);
        objc_msgSend_setI_logicalRanges_(IsLeadingEdge_leadingCharIndex, v17, v16);

        objc_msgSend_setI_validVisualRanges_(IsLeadingEdge_leadingCharIndex, v18, 1);
        v21 = objc_msgSend_visualDefinitionRange(self, v19, v20);
        objc_msgSend_setVisualDefinitionRange_(IsLeadingEdge_leadingCharIndex, v22, v21, v22);
        objc_msgSend_i_setHeadCharIndex_tailCharIndex_(IsLeadingEdge_leadingCharIndex, v23, self->_headCharIndex, self->_tailCharIndex);
      }
    }

    else
    {
      IsLeadingEdge_leadingCharIndex[7] = 0;
    }

    if (self->_type == 7)
    {
      objc_msgSend_setVisualDefinitionRange_(IsLeadingEdge_leadingCharIndex, v13, location, length);
    }
  }

  return IsLeadingEdge_leadingCharIndex;
}

- (id)copyWithNewStyleInsertionBehavior:(int64_t)behavior newCaretAffinity:(int64_t)affinity
{
  caretIsLeadingEdge = self->_caretIsLeadingEdge;
  v10 = self->_ranges;
  if (!affinity && self->_caretLFAffinity == 1)
  {
    if (objc_msgSend_isInsertionPoint(self, v8, v9))
    {
      v12 = objc_msgSend_rangeArrayWithRange_(TSWPRangeArray, v11, self->_leadingCharIndex, 0);

      caretIsLeadingEdge = 1;
      v10 = v12;
    }

    else
    {
      caretIsLeadingEdge = 1;
    }
  }

  v13 = objc_alloc(objc_opt_class());
  IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex = objc_msgSend_initWithType_ranges_validVisualRanges_styleInsertionBehavior_caretAffinity_caretIsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_(v13, v14, self->_type, v10, 0, behavior, affinity, caretIsLeadingEdge, self->_leadingCharIndex, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL);
  if (self->_type == 7)
  {
    v18 = objc_msgSend_superRange(v10, v15, v16);
    objc_msgSend_setVisualDefinitionRange_(IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex, v19, v18, v19);
  }

  return IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex;
}

- (id)constrainToRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  v8 = objc_msgSend_superRange(selfCopy, v6, v7);
  v10 = v9;
  v11 = TSUIntersectionRangeWithEdge();
  v14 = v11;
  v15 = v12;
  if (v11 != v8 || v12 != v10)
  {
    if (v11 == *MEMORY[0x277D81490] && v12 == *(MEMORY[0x277D81490] + 8))
    {
      if (&v10[v8] <= location + length)
      {
        v22 = objc_msgSend_copyWithNewRange_(selfCopy, v12, location, 0);
      }

      else
      {
        v22 = objc_msgSend_copyWithNewRange_(selfCopy, v12, location + length, 0);
      }

      v21 = v22;
    }

    else
    {
      v17 = objc_msgSend_ranges(selfCopy, v12, v13);
      v19 = objc_msgSend_intersection_(v17, v18, v14, v15);

      v21 = objc_msgSend_copyWithNewLogicalRanges_(selfCopy, v20, v19);
      selfCopy = v19;
    }

    selfCopy = v21;
  }

  return selfCopy;
}

- (id)copyWithNewLogicalRanges:(id)ranges
{
  rangesCopy = ranges;
  v7 = objc_msgSend_ranges(self, v5, v6);
  isEqualToRangeArray = objc_msgSend_isEqualToRangeArray_(rangesCopy, v8, v7);

  if (isEqualToRangeArray)
  {
    selfCopy = self;
  }

  else
  {
    if (objc_msgSend_type(self, v10, v11) == 7)
    {
      v15 = objc_msgSend_copyWithNewType_(self, v13, 8);
    }

    else
    {
      v18 = objc_msgSend_type(self, v13, v14);
      v15 = objc_msgSend_copyWithNewType_(self, v19, v18);
    }

    selfCopy = v15;
    v20 = objc_msgSend_superRange(rangesCopy, v16, v17);
    if ((v21 != *(MEMORY[0x277D81490] + 8) || v20 != *MEMORY[0x277D81490]) && v21 == 0)
    {
      objc_msgSend_setP_leadingCharIndex_(selfCopy, v21, v20);
    }

    objc_msgSend_setI_logicalRanges_(selfCopy, v21, rangesCopy);
    v26 = objc_msgSend_superRange(rangesCopy, v24, v25);
    objc_msgSend_setVisualDefinitionRange_(selfCopy, v27, v26, v27);
    objc_msgSend_setI_validVisualRanges_(selfCopy, v28, 0);
  }

  return selfCopy;
}

- (id)copyWithVisualRanges:(id)ranges headCharIndex:(unint64_t)index tailCharIndex:(unint64_t)charIndex rightToLeft:(BOOL)left sameLine:(BOOL)line
{
  lineCopy = line;
  leftCopy = left;
  rangesCopy = ranges;
  if (self->_type != 7)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPSelection copyWithVisualRanges:headCharIndex:tailCharIndex:rightToLeft:sameLine:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSelection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 708, 0, "Selection type must be visual");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPSelection copyWithVisualRanges:headCharIndex:tailCharIndex:rightToLeft:sameLine:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSelection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 709, 0, "Illegal headCharIndex");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }

  if (charIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPSelection copyWithVisualRanges:headCharIndex:tailCharIndex:rightToLeft:sameLine:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSelection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 710, 0, "Illegal tailCharIndex");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
  }

  if (leftCopy && lineCopy)
  {
    indexCopy = charIndex;
  }

  else
  {
    indexCopy = index;
  }

  if (leftCopy && lineCopy)
  {
    charIndex = index;
  }

  v34 = objc_alloc(objc_opt_class());
  IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex = objc_msgSend_initWithType_ranges_validVisualRanges_styleInsertionBehavior_caretAffinity_caretIsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_(v34, v35, self->_type, rangesCopy, 1, self->_styleInsertionBehavior, self->_caretLFAffinity, self->_caretIsLeadingEdge, self->_leadingCharIndex, indexCopy, charIndex);
  v39 = objc_msgSend_visualDefinitionRange(self, v37, v38);
  objc_msgSend_setVisualDefinitionRange_(IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex, v40, v39, v40);

  return IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex;
}

- (_NSRange)superRange
{
  if (objc_msgSend_isInsertionPoint(self, a2, v2))
  {

    Range = objc_msgSend_firstRange(self, v4, v5);
  }

  else
  {
    v8 = objc_msgSend_ranges(self, v4, v5);
    v11 = objc_msgSend_superRange(v8, v9, v10);
    v13 = v12;

    Range = v11;
    v7 = v13;
  }

  result.length = v7;
  result.location = Range;
  return result;
}

- (_NSRange)firstRange
{
  v4 = objc_msgSend_ranges(self, a2, v2);
  v7 = objc_msgSend_rangeCount(v4, v5, v6);

  if (!v7)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPSelection firstRange]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSelection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 760, 0, "ranges.rangeCount unexpectedly has count 0");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  if (objc_msgSend_isInsertionPoint(self, v8, v9))
  {

    v19 = objc_msgSend_insertionPointRange(self, v17, v18);
  }

  else if (objc_msgSend_isVisual(self, v17, v18) && (objc_msgSend_validVisualRanges(self, v21, v22) & 1) == 0)
  {

    v19 = objc_msgSend_visualDefinitionRange(self, v21, v22);
  }

  else
  {
    v23 = objc_msgSend_ranges(self, v21, v22);
    v25 = objc_msgSend_rangeAtIndex_(v23, v24, 0);
    v27 = v26;

    v19 = v25;
    v20 = v27;
  }

  result.length = v20;
  result.location = v19;
  return result;
}

- (_NSRange)insertionPointRange
{
  v4 = *MEMORY[0x277D81490];
  v5 = *(MEMORY[0x277D81490] + 8);
  if (objc_msgSend_isInsertionPoint(self, a2, v2))
  {
    v4 = objc_msgSend_leadingCharIndex(self, v6, v7);
    v5 = 0;
  }

  v8 = v4;
  v9 = v5;
  result.length = v9;
  result.location = v8;
  return result;
}

- (void)enumerateRanges:(id)ranges
{
  rangesCopy = ranges;
  if (objc_msgSend_isInsertionPoint(self, v5, v6))
  {
    v13 = 0;
    v9 = objc_msgSend_insertionPointRange(self, v7, v8);
    rangesCopy[2](rangesCopy, v9, v10, 0, &v13);
  }

  else
  {
    v11 = objc_msgSend_ranges(self, v7, v8);
    objc_msgSend_enumerateRanges_(v11, v12, rangesCopy);
  }
}

- (void)reverseEnumerateRanges:(id)ranges
{
  rangesCopy = ranges;
  if (objc_msgSend_isInsertionPoint(self, v5, v6))
  {
    v13 = 0;
    v9 = objc_msgSend_insertionPointRange(self, v7, v8);
    rangesCopy[2](rangesCopy, v9, v10, 0, &v13);
  }

  else
  {
    v11 = objc_msgSend_ranges(self, v7, v8);
    objc_msgSend_reverseEnumerateRanges_(v11, v12, rangesCopy);
  }
}

- (void)enumerateRangesInRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  v9 = objc_msgSend_ranges(self, v7, v8);
  objc_msgSend_enumerateRangesInRange_usingBlock_(v9, v10, location, length, blockCopy);
}

- (unint64_t)rangeCount
{
  v3 = objc_msgSend_ranges(self, a2, v2);
  v6 = objc_msgSend_rangeCount(v3, v4, v5);

  return v6;
}

- (TSWPRangeArray)visualRanges
{
  if (self->_validVisualRanges)
  {
    return self->_ranges;
  }

  else
  {
    return 0;
  }
}

- (void)setI_logicalRanges:(id)ranges
{
  rangesCopy = ranges;
  v16 = rangesCopy;
  if (rangesCopy)
  {
    v7 = objc_msgSend_copy(rangesCopy, v5, v6);
    ranges = self->_ranges;
    self->_ranges = v7;
  }

  else
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPSelection setI_logicalRanges:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSelection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 824, 0, "Unexpected nil parameter");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }
}

- (BOOL)containsCharacterAtIndex:(unint64_t)index
{
  indexCopy = index;
  v4 = objc_msgSend_ranges(self, a2, index);
  LOBYTE(indexCopy) = objc_msgSend_containsCharacterAtIndex_(v4, v5, indexCopy);

  return indexCopy;
}

- (BOOL)containsCharacterAtIndex:(unint64_t)index withOptions:(unint64_t)options
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_276D7355C;
  v6[3] = &unk_27A6F40F0;
  v6[4] = &v7;
  v6[5] = index;
  v6[6] = options;
  objc_msgSend_enumerateRanges_(self, a2, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)intersectsRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  objc_msgSend_superRange(self, a2, range.location);
  if (length)
  {
    if (v6)
    {
      v8 = objc_msgSend_ranges(self, v6, v7);
      v10 = objc_msgSend_intersectsRange_(v8, v9, location, length);
    }

    else
    {
      v12 = objc_msgSend_DEPRECATED_range(self, 0, v7);
      return v12 >= location && v12 - location < length;
    }

    return v10;
  }

  if (!v6)
  {
    return location == objc_msgSend_superRange(self, 0, v7);
  }

  return objc_msgSend_containsCharacterAtIndex_(self, v6, location);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  if (objc_msgSend_type(self, v7, v8) == 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = objc_msgSend_type(self, v9, v10);
  }

  *(archive + 4) |= 4u;
  *(archive + 16) = v11;
  if (!objc_msgSend_type(self, v9, v10))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSWPSelection saveToArchive:archiver:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSelection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 883, 0, "Should not be saving selections with a deprecated type");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v21 = objc_msgSend_type(self, v12, v13);
  *(archive + 4) |= 0x80u;
  *(archive + 21) = v21;
  ranges = self->_ranges;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = sub_276D739E4;
  v57[3] = &unk_27A6F4110;
  v57[4] = archive;
  objc_msgSend_enumerateRanges_(ranges, v23, v57);
  objc_msgSend_visualDefinitionRange(self, v24, v25);
  *(archive + 4) |= 1u;
  if (!*(archive + 6))
  {
    v26 = *(archive + 1);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(archive + 6) = MEMORY[0x277CA3230](v26);
  }

  TSPNSRangeCopyToMessage();
  v29 = objc_msgSend_styleInsertionBehavior(self, v27, v28);
  *(archive + 4) |= 8u;
  *(archive + 17) = v29;
  v32 = objc_msgSend_caretLFAffinity(self, v30, v31);
  *(archive + 4) |= 0x10u;
  *(archive + 18) = v32;
  IsLeadingEdge = objc_msgSend_caretIsLeadingEdge(self, v33, v34);
  *(archive + 4) |= 0x20u;
  *(archive + 76) = IsLeadingEdge;
  objc_msgSend_leadingCharIndex(self, v36, v37);
  v38 = TSPUInt32FromNSUInteger();
  v39 = *(archive + 4);
  *(archive + 20) = v38;
  v40 = MEMORY[0x277D81490];
  *(archive + 4) = v39 | 0x42;
  if (!*(archive + 7))
  {
    v41 = *(archive + 1);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(archive + 7) = MEMORY[0x277CA3230](v41);
  }

  TSPNSRangeCopyToMessage();
  if (objc_msgSend_rangeCount(self->_ranges, v42, v43) == 1 && (objc_msgSend_rangeAtIndex_(self->_ranges, v44, 0) != *v40 || v45 != v40[1]) && objc_msgSend_isInsertionPoint(self, v45, v46) && objc_msgSend_leadingCharIndex(self, v47, v48) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v50 = MEMORY[0x277D81150];
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "[TSWPSelection saveToArchive:archiver:]");
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSelection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v54, v51, v53, 911, 0, "Bad leadingCharIndex");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56);
  }
}

+ (BOOL)p_checkEndOfLineFlagForRange:(_NSRange *)range leadingEdge:(BOOL *)edge type:(int64_t *)type endOfLine:(BOOL)line storage:(id)storage
{
  LOBYTE(v7) = line;
  storageCopy = storage;
  v13 = storageCopy;
  if ((v7 & 1) == 0 && !range->length)
  {
    if (storageCopy)
    {
      objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(storageCopy, v12, range->location, 0);
    }

    else
    {
      memset(&v46, 0, sizeof(v46));
    }

    v14 = TSWPParagraphEnumerator::paragraphTextRange(&v46, v12);
    v16 = v15;
    v17 = [TSWPFilteredStorage alloc];
    v19 = objc_msgSend_hiddenRangesInRange_(v13, v18, v14, v16);
    v21 = objc_msgSend_initWithStorage_subRange_removeRanges_(v17, v20, v13, v14, v16, v19);

    v23 = objc_msgSend_charIndexMappedFromStorage_(v21, v22, range->location);
    if (*edge)
    {
      CharacterIndex = objc_msgSend_charIndexMappedFromStorage_(v21, v24, range->location);
    }

    else
    {
      CharacterIndex = objc_msgSend_nextCharacterIndex_(v21, v24, v23);
    }

    v7 = CharacterIndex;
    if (CharacterIndex)
    {
      v26 = TSWPParagraphEnumerator::attachmentOrFootnoteAtCharIndex(&v46, CharacterIndex);
      v29 = v26;
      if (v26 && objc_msgSend_isDrawable(v26, v27, v28) && (objc_msgSend_isAnchored(v29, v30, v31) & 1) == 0 && ((v33 = objc_msgSend_previousCharacterIndex_(v21, v32, v7), v35 = objc_msgSend_characterAtIndex_(v21, v34, v33), v36 = v35, v37 = IsParagraphBreakingCharacter(v35), v36 == 8232) ? (v38 = 1) : (v38 = v37), (v38 & 1) == 0))
      {
        v40 = TSWPParagraphEnumerator::attachmentOrFootnoteAtCharIndex(&v46, v33);
        v43 = v40;
        if (v40 && (objc_msgSend_isPartitioned(v40, v41, v42) & 1) != 0)
        {
          LOBYTE(v7) = 0;
        }

        else
        {
          if (*edge)
          {
            *edge = 0;
            v44 = objc_msgSend_previousCharacterIndex_(v21, v41, v7);
            range->location = objc_msgSend_charIndexMappedToStorage_(v21, v45, v44);
            *type = 7;
          }

          LOBYTE(v7) = 1;
        }
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v46);
  }

  return v7;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v6 = sub_276D70720(self->_type, v5);
  v8 = objc_msgSend_stringWithFormat_(v3, v7, @"((%@*) %p) %@%@", v4, self, v6, &stru_28860A0F0);

  return v8;
}

- (NSString)description
{
  if (objc_msgSend_rangeCount(self->_ranges, a2, v2) < 2)
  {
    v9 = &stru_28860A0F0;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = objc_msgSend_rangeCount(self->_ranges, v4, v5);
    v9 = objc_msgSend_stringWithFormat_(v6, v8, @" (%lu ranges)", v7);
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = objc_msgSend_shortDescription(self, v4, v5);
  v19.location = objc_msgSend_superRange(self, v12, v13);
  v14 = NSStringFromRange(v19);
  v16 = objc_msgSend_stringWithFormat_(v10, v15, @"%@ %@%@", v11, v14, v9);

  return v16;
}

- (_NSRange)visualDefinitionRange
{
  p_visualDefinitionRange = &self->_visualDefinitionRange;
  location = self->_visualDefinitionRange.location;
  length = p_visualDefinitionRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end
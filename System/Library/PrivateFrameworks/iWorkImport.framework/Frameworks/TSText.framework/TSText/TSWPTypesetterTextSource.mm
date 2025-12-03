@interface TSWPTypesetterTextSource
- (BOOL)adjustRangesByDelta:(int64_t)delta startingAt:(unint64_t)at;
- (BOOL)hasColumnBreakAtCharIndex:(unint64_t)index;
- (BOOL)hasColumnStyleForParagraphBreakAtCharIndex:(unint64_t)index;
- (NSString)string;
- (TSWPTypesetterTextSource)initWithSource:(id)source subRange:(_NSRange)range;
- (_NSRange)charRangeMappedFromStorage:(_NSRange)storage;
- (_NSRange)charRangeMappedToStorage:(_NSRange)storage;
- (_NSRange)charRangeRemappedFromStorage:(_NSRange)storage;
- (_NSRange)rangeOfDropCapAtCharIndex:(unint64_t)index;
- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word;
- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word includeHyphenation:(BOOL)hyphenation;
- (id).cxx_construct;
- (id)attachmentAtCharIndex:(unint64_t)index;
- (id)attachmentOrFootnoteAtCharIndex:(unint64_t)index;
- (id)characterStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)characterStyleForDropCapAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)dropCapStyleAtCharIndex:(unint64_t)index;
- (id)footnoteReferenceAtCharIndex:(unint64_t)index;
- (id)objectAtLocationPriorToMappedCharIndex:(unint64_t)index forAttributeKind:(unint64_t)kind effectiveRange:(_NSRange *)range;
- (id)paragraphStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)smartFieldAtCharIndex:(unint64_t)index attributeKind:(unint64_t)kind effectiveRange:(_NSRange *)range;
- (id)smartFieldsWithAttributeKind:(unint64_t)kind intersectingRange:(_NSRange)range;
- (int64_t)hyphenationLocationBeforeIndex:(int64_t)index inRange:(_NSRange)range locale:(id)locale hyphenChar:(unsigned int *)char;
- (unint64_t)charIndexMappedFromStorage:(unint64_t)storage;
- (unint64_t)charIndexMappedToStorage:(unint64_t)storage;
- (unint64_t)charIndexRemappedFromStorage:(unint64_t)storage;
- (unsigned)characterAtIndex:(unint64_t)index;
- (unsigned)composedCharacterAtCharIndex:(unint64_t)index isSurrogatePair:(BOOL *)pair;
- (void)attributesAtCharIndex:(unint64_t)index attributesOfInterest:(BOOL)interest[23] attributesTable:(id)table[23] effectiveRange:(_NSRange *)range;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation TSWPTypesetterTextSource

- (TSWPTypesetterTextSource)initWithSource:(id)source subRange:(_NSRange)range
{
  range2 = range.length;
  range.location = range.location;
  v159[2] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v145.receiver = self;
  v145.super_class = TSWPTypesetterTextSource;
  v125 = [(TSWPTypesetterTextSource *)&v145 init];
  if (!v125)
  {
    goto LABEL_70;
  }

  if (!sourceCopy || range.location > objc_msgSend_length(sourceCopy, v6, v7) || (v130 = range.location + range2, range.location + range2 > objc_msgSend_length(sourceCopy, v8, v9)))
  {
    TSUSetCrashReporterInfo();
    v116 = MEMORY[0x277D81150];
    v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, "[TSWPTypesetterTextSource initWithSource:subRange:]", "[TSWPTypesetterTextSource initWithSource:subRange:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTypesetterTextSource.mm", 54);
    v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v119, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTypesetterTextSource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v116, v121, v118, v120, 54, 1, "The source storage and/or the specified sub range are invalid.");

    TSUCrashBreakpoint();
    goto LABEL_74;
  }

  objc_storeStrong(&v125->_source, source);
  source = v125->_source;
  v138 = MEMORY[0x277D85DD0];
  v139 = 3221225472;
  v140 = sub_276E016DC;
  v141 = &unk_27A6F4BA0;
  v11 = v125;
  v142 = v11;
  location = range.location;
  v144 = range2;
  v134 = v11;
  objc_msgSend_enumerateSmartFieldsWithAttributeKind_inRange_usingBlock_(source, v12, 7);
  p_spaceCharIndexes = &v11->_spaceCharIndexes;
  p_end = &v11->_spaceCharIndexes.__end_;
  v15 = v11->_spaceCharIndexes.__begin_ == v11->_spaceCharIndexes.__end_ && range2 >= 2;
  if (v15)
  {
    v158 = 0x1000000;
    v159[0] = 0x10000000000;
    *(v159 + 7) = 0;
    v157 = 0;
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v146 = 0u;
    v16 = v125;
    v131 = objc_msgSend_string(v125->_source, v13, v14);
    v18 = 0;
    v129 = *MEMORY[0x277D81458];
    v19 = range.location;
    while (1)
    {
      v137 = *MEMORY[0x277D81490];
      v128 = v19;
      objc_msgSend_attributesAtCharIndex_attributesOfInterest_attributesTable_effectiveRange_(v16->_source, v17, v19, &v158, &v146, &v137);
      v20 = *(&v147 + 1);
      v23 = *(&v152 + 1);
      v127 = v20;
      if (v20)
      {
        v24 = objc_msgSend_writingDirection(v20, v21, v22);
        if (objc_msgSend_containsProperty_(v127, v25, 39))
        {
          v27 = objc_msgSend_objectForProperty_(v127, v26, 39);

          v23 = v27;
        }
      }

      else
      {
        v24 = -1;
      }

      objc_opt_class();
      v132 = TSUDynamicCast();

      if (v24 == -1 && v132)
      {
        v24 = TSUHasBiDiLanguage();
      }

      v29 = *(&v137 + 1) + v137;
      if (v130 < *(&v137 + 1) + v137)
      {
        v29 = range.location + range2;
      }

      v30 = v137 <= v128 ? v128 : v137;
      *&v137 = v30;
      *(&v137 + 1) = v29 - v30;
      v126 = v24 == 1;
      if (v24 == 1)
      {
        break;
      }

      if (v29 <= v30)
      {
        goto LABEL_61;
      }

      while (1)
      {
        v57 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v131, v28, v30);
        v59 = v58;
        if (!v58)
        {
          TSUSetCrashReporterInfo();
          v104 = MEMORY[0x277D81150];
          v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, "[TSWPTypesetterTextSource initWithSource:subRange:]", "[TSWPTypesetterTextSource initWithSource:subRange:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTypesetterTextSource.mm", 148);
          v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTypesetterTextSource.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v104, v109, v106, v108, 148, 1, "zero-length character");

          TSUCrashBreakpoint();
          goto LABEL_74;
        }

        v60 = v57;
        if (v30 != v57 && *MEMORY[0x277D81430] != -1)
        {
          sub_276F4F7D8();
        }

        LOBYTE(range.length) = 0;
        isSurrogatePair = objc_msgSend_composedCharacterAtCharIndex_isSurrogatePair_(v134, v58, v30, &range.length);
        v62 = sub_276D37F20(isSurrogatePair);
        if (v62 == 3 && v18)
        {
          break;
        }

        if (v62 != 1)
        {
          v30 = &v59[v60];
          if (&v59[v60] < *(&v137 + 1) + v137)
          {
            continue;
          }
        }

        goto LABEL_61;
      }

      end = v134->_bidiCharIndexes.__end_;
      cap = v134->_bidiCharIndexes.__cap_;
      if (end >= cap)
      {
        begin = v134->_bidiCharIndexes.__begin_;
        v67 = end - begin;
        v68 = end - begin;
        v69 = v68 + 1;
        if ((v68 + 1) >> 61)
        {
          sub_276D34ED8();
        }

        v70 = cap - begin;
        if (v70 >> 2 > v69)
        {
          v69 = v70 >> 2;
        }

        v15 = v70 >= 0x7FFFFFFFFFFFFFF8;
        v71 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v15)
        {
          v71 = v69;
        }

        if (v71)
        {
          sub_276D34EF0(&v134->_bidiCharIndexes, v71);
        }

        v72 = end - begin;
        v73 = (8 * v68);
        v74 = (8 * v68 - 8 * v72);
        *v73 = v30;
        v65 = v73 + 1;
        memcpy(v74, begin, v67);
        v75 = v134->_bidiCharIndexes.__begin_;
        v134->_bidiCharIndexes.__begin_ = v74;
        v134->_bidiCharIndexes.__end_ = v65;
        v134->_bidiCharIndexes.__cap_ = 0;
        if (v75)
        {
          operator delete(v75);
        }
      }

      else
      {
        *end = v30;
        v65 = end + 1;
      }

      v134->_bidiCharIndexes.__end_ = v65;
      v136 = 0;
      sub_276E01794(&v134->_bidiDirectionMarkIsRTLVector, &v136);
LABEL_61:
      v76 = *(&v137 + 1) + v137;
      if (v128 >= *(&v137 + 1) + v137)
      {
        TSUSetCrashReporterInfo();
        v110 = MEMORY[0x277D81150];
        v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, "[TSWPTypesetterTextSource initWithSource:subRange:]", "[TSWPTypesetterTextSource initWithSource:subRange:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTypesetterTextSource.mm", 179);
        v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTypesetterTextSource.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v110, v115, v112, v114, 179, 1, "Failed to advance curCharIndex");

        TSUCrashBreakpoint();
        goto LABEL_74;
      }

      if (v76 > v130)
      {
        v77 = MEMORY[0x277D81150];
        v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSWPTypesetterTextSource initWithSource:subRange:]");
        v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTypesetterTextSource.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v81, v78, v80, 183, 0, "Bad curCharIndex");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83);
      }

      v19 = v76;
      v18 = v126;
      v16 = v125;
      if (v76 >= v130)
      {

        v11 = v134;
        goto LABEL_66;
      }
    }

    if (v29 <= v30)
    {
      goto LABEL_61;
    }

    v31 = 0;
    while (1)
    {
      v160.location = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v131, v28, v30);
      v162.location = range.location;
      v162.length = range2;
      v33 = NSIntersectionRange(v160, v162);
      length = v33.length;
      if (!v33.length)
      {
        break;
      }

      v34 = v33.location + v33.length;
      if (range.location > v33.location || v130 < v34)
      {
        v35 = MEMORY[0x277D81150];
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33.length, "[TSWPTypesetterTextSource initWithSource:subRange:]");
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTypesetterTextSource.mm");
        v39 = NSStringFromRange(v33);
        v161.location = range.location;
        v161.length = range2;
        v40 = NSStringFromRange(v161);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v41, v36, v38, 123, 0, "RTL: Unexpected charRange %{public}@ not contained within subRange %{public}@", v39, v40);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43);
      }

      if (v30 != v33.location)
      {
        v44 = MEMORY[0x277D81150];
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], length, "[TSWPTypesetterTextSource initWithSource:subRange:]");
        v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTypesetterTextSource.mm");
        v48 = NSStringFromRange(v33);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v49, v45, v47, 124, 0, "RTL: charRange %{public}@ does not start with charIndex %lu", v48, v30);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
      }

      v136 = 0;
      isEqualToString = objc_msgSend_isEqualToString_(v132, length, v129);
      v54 = objc_msgSend_composedCharacterAtCharIndex_isSurrogatePair_(v134, v53, v30, &v136);
      v55 = sub_276D37F20(v54);
      v56 = v55;
      v30 = v33.location + v33.length;
      if (v54 == 9 || v55 == 6 || !v31 && v55 == 4 || v55 == 5 && (isEqualToString & v31 & 1) == 0)
      {
        range.length = v33.location + v33.length;
        sub_276D19CF0(&v134->_bidiCharIndexes.__begin_, &range.length);
        LOBYTE(range.length) = 1;
        sub_276E01794(&v134->_bidiDirectionMarkIsRTLVector, &range.length);
      }

      v31 = v56 == 3;
      if (v34 >= *(&v137 + 1) + v137)
      {
        goto LABEL_61;
      }
    }

    TSUSetCrashReporterInfo();
    v98 = MEMORY[0x277D81150];
    v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, "[TSWPTypesetterTextSource initWithSource:subRange:]", "[TSWPTypesetterTextSource initWithSource:subRange:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTypesetterTextSource.mm", 122);
    v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTypesetterTextSource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v103, v100, v102, 122, 1, "RTL: zero-length character");

    TSUCrashBreakpoint();
LABEL_74:
    abort();
  }

LABEL_66:
  p_bidiCharIndexes = &v11->_bidiCharIndexes;
  v84 = v11->_bidiCharIndexes.__begin_;
  v86 = &v11->_bidiCharIndexes;
  v88 = v86->__end_;
  v87 = &v86->__end_;
  if (v84 == v88)
  {
    v92 = [TSWPRangeMap alloc];
    isBackwardAffinities = objc_msgSend_initWithSubRange_unmappedPairIndexes_(v92, v93, range.location, range2, p_spaceCharIndexes);
  }

  else
  {
    v89 = [TSWPRangeMap alloc];
    isBackwardAffinities = objc_msgSend_initWithSubRange_unmappedIndexes_isBackwardAffinities_(v89, v90, range.location, range2, p_bidiCharIndexes, &v134->_bidiDirectionMarkIsRTLVector);
    p_end = v87;
    p_spaceCharIndexes = p_bidiCharIndexes;
  }

  rangeMap = v134->_rangeMap;
  v134->_rangeMap = isBackwardAffinities;

  v134->_length = range2 + *p_end - p_spaceCharIndexes->__begin_;
  v134->_storageChangeCount = objc_msgSend_changeCount(sourceCopy, v95, v96);

LABEL_70:
  return v125;
}

- (unsigned)composedCharacterAtCharIndex:(unint64_t)index isSurrogatePair:(BOOL *)pair
{
  *pair = 0;
  v7 = objc_msgSend_length(self->_source, a2, index);
  v9 = 0;
  if (v7 > index)
  {
    v10 = v7;
    v9 = objc_msgSend_characterAtIndex_(self->_source, v8, index);
    v12 = index + 1;
    if (index + 1 < v10)
    {
      v13 = objc_msgSend_characterAtIndex_(self->_source, v11, index);
      v15 = objc_msgSend_characterAtIndex_(self->_source, v14, v12);
      if ((v13 & 0xFC00) == 0xD800 && (v15 & 0xFC00) == 56320)
      {
        *pair = 1;
        return v15 + (v13 << 10) - 56613888;
      }
    }
  }

  return v9;
}

- (BOOL)adjustRangesByDelta:(int64_t)delta startingAt:(unint64_t)at
{
  v9 = objc_msgSend_adjustRangesByDelta_startingAt_(self->_source, a2, delta);
  if (delta)
  {
    storageChangeCount = self->_storageChangeCount;
    if (storageChangeCount != objc_msgSend_changeCount(self->_source, v7, v8))
    {
      self->_storageChangeCount = objc_msgSend_changeCount(self->_source, v11, v12);
      if ((v9 & 1) == 0)
      {
        objc_msgSend_adjustByDelta_startingAt_(self->_rangeMap, v13, delta, at);
      }

      return 1;
    }
  }

  return v9;
}

- (NSString)string
{
  selfCopy = self;
  location = objc_msgSend_unmappedCharRange_(self->_rangeMap, a2, 0, self->_length);
  v5 = v4;
  v7 = objc_msgSend_string(selfCopy->_source, v4, v6);
  v10 = objc_msgSend_length(v7, v8, v9);

  if (selfCopy->_spaceCharIndexes.__end_ != selfCopy->_spaceCharIndexes.__begin_)
  {
    v13 = objc_msgSend_string(MEMORY[0x277CCAB68], length, v12);
    begin = selfCopy->_spaceCharIndexes.__begin_;
    end = selfCopy->_spaceCharIndexes.__end_;
    if (begin != end)
    {
      v95 = v5;
      v96 = location;
      v99 = v13;
      v17 = location;
      do
      {
        v18 = *begin;
        if (v17 > *begin)
        {
          v19 = MEMORY[0x277D81150];
          v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSWPTypesetterTextSource string]");
          v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTypesetterTextSource.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 267, 0, "unexpected index ordering");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
        }

        if (v18 > v10)
        {
          v26 = MEMORY[0x277D81150];
          v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSWPTypesetterTextSource string]");
          v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTypesetterTextSource.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 269, 0, "request for characters past end of string (ruby)");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
        }

        if (v18 >= v10)
        {
          v33 = v10;
        }

        else
        {
          v33 = v18;
        }

        source = selfCopy->_source;
        if (v17 <= v33)
        {
          v35 = v33;
        }

        else
        {
          v35 = v17;
        }

        if (v17 >= v33)
        {
          objc_msgSend_substringWithRange_(source, v14, v33, v35 - v33);
        }

        else
        {
          objc_msgSend_substringWithRange_(source, v14, v17, v35 - v17);
        }
        v36 = ;
        objc_msgSend_appendString_(v99, v37, v36);

        objc_msgSend_appendFormat_(v99, v38, @"%C", 8209);
        ++begin;
        v17 = v33;
      }

      while (begin != end);
      v39 = v99;
      goto LABEL_43;
    }

    goto LABEL_57;
  }

  if (selfCopy->_bidiCharIndexes.__end_ != selfCopy->_bidiCharIndexes.__begin_)
  {
    v13 = objc_msgSend_string(MEMORY[0x277CCAB68], length, v12);
    v40 = selfCopy->_bidiCharIndexes.__begin_;
    v97 = selfCopy->_bidiCharIndexes.__end_;
    if (v40 != v97)
    {
      v95 = v5;
      v96 = location;
      v98 = selfCopy;
      v100 = v13;
      v41 = 0;
      v42 = selfCopy->_bidiDirectionMarkIsRTLVector.__begin_;
      v43 = location;
      do
      {
        v44 = *v40;
        v45 = *v42;
        if (v43 > *v40)
        {
          v46 = MEMORY[0x277D81150];
          v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSWPTypesetterTextSource string]");
          v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTypesetterTextSource.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v50, v47, v49, 286, 0, "unexpected index ordering");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52);
        }

        if (v44 > v10)
        {
          v53 = MEMORY[0x277D81150];
          v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSWPTypesetterTextSource string]");
          v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTypesetterTextSource.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v57, v54, v56, 288, 0, "request for characters past end of string (bidi)");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59);
        }

        if (v44 >= v10)
        {
          v33 = v10;
        }

        else
        {
          v33 = v44;
        }

        v60 = v98->_source;
        if (v43 <= v33)
        {
          v61 = v33;
        }

        else
        {
          v61 = v43;
        }

        if (v43 >= v33)
        {
          objc_msgSend_substringWithRange_(v60, v14, v33, v61 - v33);
        }

        else
        {
          objc_msgSend_substringWithRange_(v60, v14, v43, v61 - v43);
        }
        v62 = ;
        objc_msgSend_appendString_(v100, v63, v62);

        if ((v45 & (1 << v41)) != 0)
        {
          objc_msgSend_appendFormat_(v100, v64, @"%C", 8207);
        }

        else
        {
          objc_msgSend_appendFormat_(v100, v64, @"%C", 8206);
        }

        ++v40;
        v42 += v41 == 63;
        if (v41 == 63)
        {
          v41 = 0;
        }

        else
        {
          ++v41;
        }

        v43 = v33;
      }

      while (v40 != v97);
      selfCopy = v98;
      v39 = v100;
LABEL_43:
      v5 = v95;
      location = v96;
      if (v39)
      {
LABEL_44:
        v65 = location + v5;
        if (location + v5 > v10)
        {
          v66 = MEMORY[0x277D81150];
          v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSWPTypesetterTextSource string]");
          v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTypesetterTextSource.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v70, v67, v69, 312, 0, "request for characters past end of string (extendedString)");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72);
        }

        if (v65 >= v10)
        {
          v73 = v10;
        }

        else
        {
          v73 = v65;
        }

        v74 = selfCopy->_source;
        if (v33 <= v73)
        {
          v75 = v73;
        }

        else
        {
          v75 = v33;
        }

        if (v33 >= v73)
        {
          objc_msgSend_substringWithRange_(v74, v14, v73, v75 - v73);
        }

        else
        {
          objc_msgSend_substringWithRange_(v74, v14, v33, v75 - v33);
        }
        v76 = ;
        objc_msgSend_appendString_(v39, v77, v76);

        v78 = v39;
        v39 = v78;
        goto LABEL_56;
      }

      goto LABEL_58;
    }

LABEL_57:
    v33 = location;
    v39 = v13;
    if (v13)
    {
      goto LABEL_44;
    }

LABEL_58:
    v79 = 0;
    goto LABEL_65;
  }

  if (!location)
  {
    v80 = objc_msgSend_string(selfCopy->_source, length, v12);
    v83 = objc_msgSend_length(v80, v81, v82);

    if (v5 == v83)
    {
      v39 = 0;
      v78 = objc_msgSend_string(selfCopy->_source, length, v84);
LABEL_56:
      v79 = v78;
      goto LABEL_65;
    }
  }

  if (location + v5 > v10)
  {
    v85 = v5;
    v86 = MEMORY[0x277D81150];
    v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], length, "[TSWPTypesetterTextSource string]");
    v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTypesetterTextSource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v86, v90, v87, v89, 299, 0, "request for characters past end of string");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v91, v92);
    v102.location = location;
    v102.length = v85;
    v103.location = 0;
    v103.length = v10;
    v93 = NSIntersectionRange(v102, v103);
    length = v93.length;
    location = v93.location;
    v5 = v93.length;
  }

  v79 = objc_msgSend_substringWithRange_(selfCopy->_source, length, location, v5);
  v39 = 0;
LABEL_65:

  return v79;
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  v6 = objc_msgSend_unmappedCharRange_(self->_rangeMap, a2, range.location, range.length);
  v34 = v7;
  v35 = v6;
  begin = self->_spaceCharIndexes.__begin_;
  end = self->_spaceCharIndexes.__end_;
  if (end == begin)
  {
    v19 = self->_bidiCharIndexes.__begin_;
    v18 = self->_bidiCharIndexes.__end_;
    if (v18 == v19)
    {
      v11 = v6;
    }

    else
    {
      v20 = 0;
      v21 = self->_bidiDirectionMarkIsRTLVector.__begin_;
      v22 = v6;
      do
      {
        v23 = *v19++;
        v11 = v23;
        v24 = *v21 >> v20;
        v25 = v22 >= v23;
        if (v22 <= v23)
        {
          v26 = v11;
        }

        else
        {
          v26 = v22;
        }

        if (v25)
        {
          v27 = v11;
        }

        else
        {
          v27 = v22;
        }

        v28 = v26 - v27;
        objc_msgSend_getCharacters_range_(self->_source, v7, characters, v34, v35);
        if (v24)
        {
          v29 = 8207;
        }

        else
        {
          v29 = 8206;
        }

        v30 = &characters[v28];
        *v30 = v29;
        characters = v30 + 1;
        v21 += v20 == 63;
        if (v20 == 63)
        {
          v20 = 0;
        }

        else
        {
          ++v20;
        }

        v22 = v11;
      }

      while (v19 != v18);
    }
  }

  else
  {
    v10 = v6;
    do
    {
      v12 = *begin++;
      v11 = v12;
      v13 = v10 >= v12;
      if (v10 <= v12)
      {
        v14 = v11;
      }

      else
      {
        v14 = v10;
      }

      if (v13)
      {
        v15 = v11;
      }

      else
      {
        v15 = v10;
      }

      v16 = v14 - v15;
      objc_msgSend_getCharacters_range_(self->_source, v7, characters, v34, v35);
      v17 = &characters[v16];
      *v17 = 8209;
      characters = v17 + 1;
      v10 = v11;
    }

    while (begin != end);
  }

  source = self->_source;
  if (v11 <= &v34[v35])
  {
    v32 = &v34[v35];
  }

  else
  {
    v32 = v11;
  }

  if (v11 >= &v34[v35])
  {
    v33 = &v34[v35];
  }

  else
  {
    v33 = v11;
  }

  objc_msgSend_getCharacters_range_(source, v7, characters, v33, v32 - v33);
}

- (BOOL)hasColumnBreakAtCharIndex:(unint64_t)index
{
  source = self->_source;
  v5 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, a2, index);

  return objc_msgSend_hasColumnBreakAtCharIndex_(source, v4, v5);
}

- (BOOL)hasColumnStyleForParagraphBreakAtCharIndex:(unint64_t)index
{
  source = self->_source;
  v5 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, a2, index);

  return objc_msgSend_hasColumnStyleForParagraphBreakAtCharIndex_(source, v4, v5);
}

- (void)attributesAtCharIndex:(unint64_t)index attributesOfInterest:(BOOL)interest[23] attributesTable:(id)table[23] effectiveRange:(_NSRange *)range
{
  v15 = xmmword_276F98AE0;
  source = self->_source;
  v11 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, a2, index);
  objc_msgSend_attributesAtCharIndex_attributesOfInterest_attributesTable_effectiveRange_(source, v12, v11, interest, table, &v15);
  if (range)
  {
    range->location = objc_msgSend_mappedCharRange_(self->_rangeMap, v13, v15, *(&v15 + 1));
    range->length = v14;
  }
}

- (id)smartFieldAtCharIndex:(unint64_t)index attributeKind:(unint64_t)kind effectiveRange:(_NSRange *)range
{
  v17 = xmmword_276F98AE0;
  source = self->_source;
  v10 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, a2, index);
  v12 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(source, v11, v10, kind, &v17);
  *&v17 = objc_msgSend_mappedCharRange_(self->_rangeMap, v13, v17, *(&v17 + 1));
  *(&v17 + 1) = v14;
  if (index < v17 || index - v17 >= v14)
  {

    v12 = 0;
    v17 = xmmword_276F98AE0;
  }

  if (range)
  {
    *range = v17;
  }

  return v12;
}

- (id)smartFieldsWithAttributeKind:(unint64_t)kind intersectingRange:(_NSRange)range
{
  source = self->_source;
  v7 = objc_msgSend_unmappedCharRange_(self->_rangeMap, a2, range.location, range.length);

  return objc_msgSend_smartFieldsWithAttributeKind_intersectingRange_(source, v6, kind, v7, v6);
}

- (id)footnoteReferenceAtCharIndex:(unint64_t)index
{
  source = self->_source;
  v5 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, a2, index);

  return objc_msgSend_footnoteReferenceAtCharIndex_(source, v4, v5);
}

- (id)attachmentAtCharIndex:(unint64_t)index
{
  source = self->_source;
  v5 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, a2, index);

  return objc_msgSend_attachmentAtCharIndex_(source, v4, v5);
}

- (id)attachmentOrFootnoteAtCharIndex:(unint64_t)index
{
  source = self->_source;
  v5 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, a2, index);

  return objc_msgSend_attachmentOrFootnoteAtCharIndex_(source, v4, v5);
}

- (id)paragraphStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v13 = xmmword_276F98AE0;
  source = self->_source;
  v7 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, a2, index);
  v10 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(source, v8, v7, &v13);
  if (range)
  {
    range->location = objc_msgSend_mappedCharRange_(self->_rangeMap, v9, v13, *(&v13 + 1));
    range->length = v11;
  }

  return v10;
}

- (id)characterStyleForDropCapAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  source = self->_source;
  v7 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, a2, index);

  return objc_msgSend_characterStyleForDropCapAtCharIndex_effectiveRange_(source, v6, v7, range);
}

- (id)characterStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v13 = xmmword_276F98AE0;
  source = self->_source;
  v8 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, a2, index);
  if (range)
  {
    objc_msgSend_characterStyleAtCharIndex_effectiveRange_(source, v7, v8, &v13);
  }

  else
  {
    objc_msgSend_characterStyleAtCharIndex_effectiveRange_(source, v7, v8, 0);
  }
  v10 = ;
  if (range)
  {
    range->location = objc_msgSend_mappedCharRange_(self->_rangeMap, v9, v13, *(&v13 + 1));
    range->length = v11;
  }

  return v10;
}

- (id)dropCapStyleAtCharIndex:(unint64_t)index
{
  source = self->_source;
  v5 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, a2, index);

  return objc_msgSend_dropCapStyleAtCharIndex_(source, v4, v5);
}

- (_NSRange)rangeOfDropCapAtCharIndex:(unint64_t)index
{
  v4 = *MEMORY[0x277D81490];
  v5 = *(MEMORY[0x277D81490] + 8);
  v6 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, a2, index);
  v9 = objc_msgSend_dropCapStyleAtCharIndex_(self->_source, v7, v6);
  if (v9)
  {
    v4 = objc_msgSend_charIndexMappedToStorage_(self, v8, 0);
    v12 = objc_msgSend_dropCap(v9, v10, v11);
    v15 = objc_msgSend_numberOfCharacters(v12, v13, v14);

    v16 = -1;
    for (i = v4; v15; i = sub_276D37528(i, self))
    {
      if (++v16 >= self->_length)
      {
        break;
      }

      --v15;
    }

    if (v4 <= i)
    {
      v18 = i;
    }

    else
    {
      v18 = v4;
    }

    if (v4 >= i)
    {
      v4 = i;
    }

    v5 = v18 - v4;
  }

  v19 = objc_msgSend_mappedCharRange_(self->_rangeMap, v8, v4, v5);
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.length = v23;
  result.location = v22;
  return result;
}

- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word
{
  wordCopy = word;
  source = self->_source;
  v7 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, a2, index);
  v10 = objc_msgSend_wordAtCharIndex_includePreviousWord_(source, v8, v7, wordCopy);
  rangeMap = self->_rangeMap;

  v12 = objc_msgSend_mappedCharRange_(rangeMap, v9, v10, v9);
  result.length = v13;
  result.location = v12;
  return result;
}

- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word includeHyphenation:(BOOL)hyphenation
{
  hyphenationCopy = hyphenation;
  wordCopy = word;
  source = self->_source;
  v9 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, a2, index);
  v12 = objc_msgSend_wordAtCharIndex_includePreviousWord_includeHyphenation_(source, v10, v9, wordCopy, hyphenationCopy);
  rangeMap = self->_rangeMap;

  v14 = objc_msgSend_mappedCharRange_(rangeMap, v11, v12, v11);
  result.length = v15;
  result.location = v14;
  return result;
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  source = self->_source;
  v5 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, a2, index);

  return objc_msgSend_characterAtIndex_(source, v4, v5);
}

- (int64_t)hyphenationLocationBeforeIndex:(int64_t)index inRange:(_NSRange)range locale:(id)locale hyphenChar:(unsigned int *)char
{
  length = range.length;
  location = range.location;
  localeCopy = locale;
  v13 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, v12, index);
  v15 = objc_msgSend_unmappedCharRange_(self->_rangeMap, v14, location, length);
  v17 = v16;
  v19 = objc_msgSend_string(self->_source, v16, v18);
  v24.location = v15;
  v24.length = v17;
  HyphenationLocationBeforeIndex = CFStringGetHyphenationLocationBeforeIndex(v19, v13, v24, 0, localeCopy, char);

  if (HyphenationLocationBeforeIndex == -1)
  {
    v22 = -1;
  }

  else
  {
    while (index > HyphenationLocationBeforeIndex)
    {
      if (objc_msgSend_characterAtIndex_(self, v21, --index) == 173)
      {
        HyphenationLocationBeforeIndex = index + 1;
        break;
      }
    }

    v22 = objc_msgSend_mappedCharIndex_(self->_rangeMap, v21, HyphenationLocationBeforeIndex);
  }

  return v22;
}

- (id)objectAtLocationPriorToMappedCharIndex:(unint64_t)index forAttributeKind:(unint64_t)kind effectiveRange:(_NSRange *)range
{
  source = self->_source;
  v9 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, a2, index);
  v12 = objc_msgSend_objectAtLocationPriorToMappedCharIndex_forAttributeKind_effectiveRange_(source, v10, v9, kind, range);
  if (range)
  {
    range->location = objc_msgSend_mappedCharRange_(self->_rangeMap, v11, range->location, range->length);
    range->length = v13;
  }

  return v12;
}

- (unint64_t)charIndexMappedToStorage:(unint64_t)storage
{
  source = self->_source;
  v5 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, a2, storage);

  return objc_msgSend_charIndexMappedToStorage_(source, v4, v5);
}

- (unint64_t)charIndexMappedFromStorage:(unint64_t)storage
{
  rangeMap = self->_rangeMap;
  v5 = objc_msgSend_charIndexMappedFromStorage_(self->_source, a2, storage);

  return objc_msgSend_mappedCharIndex_(rangeMap, v4, v5);
}

- (_NSRange)charRangeMappedToStorage:(_NSRange)storage
{
  source = self->_source;
  v5 = objc_msgSend_unmappedCharRange_(self->_rangeMap, a2, storage.location, storage.length);

  v6 = objc_msgSend_charRangeMappedToStorage_(source, v4, v5, v4);
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)charRangeMappedFromStorage:(_NSRange)storage
{
  rangeMap = self->_rangeMap;
  v5 = objc_msgSend_charRangeMappedFromStorage_(self->_source, a2, storage.location, storage.length);

  v6 = objc_msgSend_mappedCharRange_(rangeMap, v4, v5, v4);
  result.length = v7;
  result.location = v6;
  return result;
}

- (unint64_t)charIndexRemappedFromStorage:(unint64_t)storage
{
  v5 = objc_msgSend_charIndexMappedFromStorage_(self, a2, storage);

  return objc_msgSend_charIndexMappedToStorage_(self, v4, v5);
}

- (_NSRange)charRangeRemappedFromStorage:(_NSRange)storage
{
  length = storage.length;
  location = storage.location;
  v6 = objc_msgSend_charIndexRemappedFromStorage_(self, a2, storage.location);
  v8 = objc_msgSend_charIndexRemappedFromStorage_(self, v7, location + length) - v6;
  v9 = v6;
  result.length = v8;
  result.location = v9;
  return result;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end
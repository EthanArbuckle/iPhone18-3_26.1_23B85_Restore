@interface TSWPTrackedInsertion
- (TSWPTrackedInsertion)initWithSelection:(id)selection string:(id)string changeSession:(id)session;
- (_NSRange)insertedRange;
- (int64_t)delta;
- (unint64_t)targetCharIndex;
- (void)performWithStorage:(id)storage delta:(int64_t)delta actionBuilder:(void *)builder withFlags:(unsigned int)flags replaceBlock:(id)block;
@end

@implementation TSWPTrackedInsertion

- (TSWPTrackedInsertion)initWithSelection:(id)selection string:(id)string changeSession:(id)session
{
  selectionCopy = selection;
  stringCopy = string;
  sessionCopy = session;
  v48.receiver = self;
  v48.super_class = TSWPTrackedInsertion;
  v13 = [(TSWPTrackedInsertion *)&v48 init];
  if (v13)
  {
    if (!objc_msgSend_length(stringCopy, v11, v12))
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSWPTrackedInsertion initWithSelection:string:changeSession:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTrackedInsertion.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 30, 0, "Can't track an insertion over an empty range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    }

    if (!selectionCopy)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSWPTrackedInsertion initWithSelection:string:changeSession:]");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTrackedInsertion.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 31, 0, "invalid nil value for '%{public}s'", "selection");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    }

    v30 = objc_msgSend_ranges(selectionCopy, v14, v15);
    v33 = objc_msgSend_rangeCount(v30, v31, v32);

    if (v33 != 1)
    {
      v35 = MEMORY[0x277D81150];
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSWPTrackedInsertion initWithSelection:string:changeSession:]");
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTrackedInsertion.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 32, 0, "unexpected discontiguous selection");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
    }

    objc_storeStrong(&v13->_selection, selection);
    v44 = objc_msgSend_copy(stringCopy, v42, v43);
    string = v13->_string;
    v13->_string = v44;

    objc_storeStrong(&v13->_changeSession, session);
  }

  return v13;
}

- (void)performWithStorage:(id)storage delta:(int64_t)delta actionBuilder:(void *)builder withFlags:(unsigned int)flags replaceBlock:(id)block
{
  storageCopy = storage;
  blockCopy = block;
  if (delta)
  {
    selection = self->_selection;
    Range = objc_msgSend_firstRange(selection, v12, v13);
    objc_msgSend_firstRange(self->_selection, v16, v17);
    v19 = objc_msgSend_copyWithNewRange_(selection, v18, Range + delta, v18);
    v20 = self->_selection;
    self->_selection = v19;
  }

  v21 = objc_msgSend_insertionChangesTable(storageCopy, v12, v13);
  v25 = objc_msgSend_firstRange(self->_selection, v22, v23);
  v26 = 0;
  if (!v27 && v21)
  {
    objc_msgSend_range(storageCopy, 0, v24);
    v87.location = NSExpandedRange();
    v87.length = v28;
    TSWPAttributeArray::begin(v21, &v87, &v85);
    TSWPAttributeArray::end(v21, &v87, v29, &v83);
    for (i = v86; ; i = ++v86)
    {
      if (i == v84)
      {
        v26 = 0;
        goto LABEL_15;
      }

      v31 = TSWPAttributeArray::iterator::operator*(&v85);
      if (objc_msgSend_canMergeWithKind_session_(v31, v32, 1, self->_changeSession))
      {
        v33 = TSWPAttributeArray::rangeForAttributeIndex(v85, v86);
        v35 = v33 + v34;
        if (v25 > v33 || v25 < v35)
        {
          break;
        }
      }
    }

    if (v35 == v25)
    {
      v63 = 128;
    }

    else
    {
      if (v33 != v25)
      {
LABEL_44:

        v26 = 1;
        goto LABEL_15;
      }

      v63 = 256;
    }

    *(builder + 120) |= v63;
    goto LABEL_44;
  }

LABEL_15:
  blockCopy[2](blockCopy, self->_selection, self->_string);
  v39 = *(builder + 2);
  if (!v39)
  {
    v39 = builder + 24;
  }

  v80 = *(v39 + 3);
  v81 = *(v39 + 4);
  v40 = objc_msgSend_insertedRange(self, v37, v38);
  objc_msgSend_p_handleChangeSplittingForInsertedRange_changeSession_actionBuilder_(storageCopy, v41, v40, v41, self->_changeSession, builder);
  if (v26)
  {
    *(builder + 120) &= 0xFFFFFE7F;
    v44 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v21, v25);
    v45 = TSWPAttributeArray::rangeForAttributeIndex(v21, v44);
    v47 = v46;
    v50 = TSWPAttributeArray::objectForAttributeIndex(v21, v44);
    if (!v50)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v45 = objc_msgSend_insertedRange(self, v42, v43);
  v47 = v51;
  v55 = objc_msgSend_insertionChangesTable(storageCopy, v51, v52);
  if (v55)
  {
    v87.location = 0;
    v87.length = 0;
    objc_msgSend_range(storageCopy, v53, v54);
    v87.location = NSExpandedRange();
    v87.length = v56;
    TSWPAttributeArray::begin(v55, &v87, &v85);
    TSWPAttributeArray::end(v55, &v87, v57, &v83);
    for (j = v86; j != v84; j = ++v86)
    {
      v59 = TSWPAttributeArray::iterator::operator*(&v85);
      if (objc_msgSend_canMergeWithKind_session_(v59, v60, 1, self->_changeSession))
      {
        v88.location = TSWPAttributeArray::rangeForAttributeIndex(v85, v86);
        location = v88.location;
        length = v88.length;
        if (NSIntersectionRange(v88, v87).length)
        {
          v64 = v59;
          v89.location = v45;
          v89.length = v47;
          v90.location = location;
          v90.length = length;
          v65 = NSUnionRange(v89, v90);
          v45 = v65.location;
          v47 = v65.length;

          if (!v64)
          {
            break;
          }

          v68 = objc_msgSend_context(storageCopy, v66, v67);
          v70 = objc_msgSend_copyWithContext_(v64, v69, v68);

          v71 = v70;
          v50 = v71;
          goto LABEL_31;
        }
      }
    }
  }

  v72 = [TSWPChange alloc];
  v64 = objc_msgSend_context(storageCopy, v73, v74);
  v71 = objc_msgSend_initWithContext_kind_session_(v72, v75, v64, 1, self->_changeSession);
  v50 = 0;
LABEL_31:

  objc_msgSend_applyObject_toCharRange_forKind_actionBuilder_(storageCopy, v76, v71, v45, v47, 15, builder);
  if (v50)
  {
LABEL_32:
    if (v45 != *MEMORY[0x277D81490] || v47 != *(MEMORY[0x277D81490] + 8))
    {
      v77 = objc_msgSend_date(MEMORY[0x277CBEAA8], v48, v49);
      objc_msgSend_applyObject_toCharRange_forKind_actionBuilder_(storageCopy, v78, v77, v45, v47, 15, builder);
    }
  }

LABEL_35:
  if (*(builder + 2))
  {
    v79 = *(builder + 2);
  }

  else
  {
    v79 = builder + 24;
  }

  if ((v81 - v80) < v79[4] - v79[3])
  {
    sub_276E3F9EC(v79);
  }
}

- (unint64_t)targetCharIndex
{
  v4 = objc_msgSend_ranges(self->_selection, a2, v2);
  v7 = objc_msgSend_rangeCount(v4, v5, v6);

  if (v7 != 1)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPTrackedInsertion targetCharIndex]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTrackedInsertion.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 166, 0, "unexpected discontiguous selection");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  selection = self->_selection;

  return objc_msgSend_firstRange(selection, v8, v9);
}

- (int64_t)delta
{
  v4 = objc_msgSend_ranges(self->_selection, a2, v2);
  v7 = objc_msgSend_rangeCount(v4, v5, v6);

  if (v7 != 1)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPTrackedInsertion delta]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTrackedInsertion.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 171, 0, "unexpected discontiguous selection");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = objc_msgSend_length(self->_string, v8, v9);
  objc_msgSend_firstRange(self->_selection, v18, v19);
  return v17 - v20;
}

- (_NSRange)insertedRange
{
  v4 = objc_msgSend_ranges(self->_selection, a2, v2);
  v7 = objc_msgSend_rangeCount(v4, v5, v6);

  if (v7 != 1)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPTrackedInsertion insertedRange]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTrackedInsertion.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 176, 0, "unexpected discontiguous selection");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  Range = objc_msgSend_firstRange(self->_selection, v8, v9);
  v20 = objc_msgSend_length(self->_string, v18, v19);
  v21 = Range;
  result.length = v20;
  result.location = v21;
  return result;
}

@end
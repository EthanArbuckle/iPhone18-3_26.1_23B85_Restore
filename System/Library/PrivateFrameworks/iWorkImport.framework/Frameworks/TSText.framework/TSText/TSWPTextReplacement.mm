@interface TSWPTextReplacement
- (TSWPTextReplacement)initWithSelection:(id)selection string:(id)string;
- (_NSRange)insertedRange;
- (int64_t)delta;
- (void)performWithStorage:(id)storage delta:(int64_t)delta actionBuilder:(TSWPStorageActionBuilder *)builder withFlags:(unsigned int)flags replaceBlock:(id)block;
@end

@implementation TSWPTextReplacement

- (TSWPTextReplacement)initWithSelection:(id)selection string:(id)string
{
  selectionCopy = selection;
  stringCopy = string;
  v33.receiver = self;
  v33.super_class = TSWPTextReplacement;
  v11 = [(TSWPTextReplacement *)&v33 init];
  if (v11)
  {
    v12 = objc_msgSend_ranges(selectionCopy, v9, v10);
    v15 = objc_msgSend_rangeCount(v12, v13, v14);

    if (v15 != 1)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSWPTextReplacement initWithSelection:string:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTextReplacement.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 25, 0, "Should only create replacements with a single range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    }

    objc_storeStrong(&v11->_selection, selection);
    if (stringCopy)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = MEMORY[0x277D81150];
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSWPTextReplacement initWithSelection:string:]");
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTextReplacement.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 27, 0, "wrong class");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
      }
    }

    objc_storeStrong(&v11->_string, string);
  }

  return v11;
}

- (void)performWithStorage:(id)storage delta:(int64_t)delta actionBuilder:(TSWPStorageActionBuilder *)builder withFlags:(unsigned int)flags replaceBlock:(id)block
{
  flagsCopy = flags;
  storageCopy = storage;
  blockCopy = block;
  if (delta)
  {
    selection = self->_selection;
    Range = objc_msgSend_firstRange(selection, v13, v14);
    objc_msgSend_firstRange(self->_selection, v18, v19);
    v21 = objc_msgSend_copyWithNewRange_(selection, v20, Range + delta, v20);
    v22 = self->_selection;
    self->_selection = v21;
  }

  if (flagsCopy)
  {
    v42.location = objc_msgSend_firstRange(self->_selection, v13, v14);
    v42.length = v23;
    v25 = objc_msgSend_insertionChangesTable(storageCopy, v23, v24);
    v26 = v25;
    if (v25)
    {
      TSWPAttributeArray::begin(v25, &v42, &v40);
      TSWPAttributeArray::end(v26, &v42, v27, &v38);
      for (; v41 != v39; ++v41)
      {
        objc_opt_class();
        v28 = TSWPAttributeArray::iterator::operator*(&v40);
        v29 = TSUDynamicCast();

        if (v29)
        {
          TSWPAttributeArray::rangeForAttributeIndex(v40, v41);
          if (v30)
          {
            objc_msgSend_trackedTextDidChange(v29, v30, v31);
          }
        }
      }
    }
  }

  v32 = objc_msgSend_firstRange(self->_selection, v13, v14);
  objc_msgSend_p_updateChangeTimestampForDeletedRange_actionBuilder_(storageCopy, v33, v32, v33, builder);
  blockCopy[2](blockCopy, self->_selection, self->_string);
  v36 = objc_msgSend_insertedRange(self, v34, v35);
  objc_msgSend_p_handleChangeSplittingForInsertedRange_changeSession_actionBuilder_(storageCopy, v37, v36, v37, 0, builder);
}

- (int64_t)delta
{
  v4 = objc_msgSend_length(self->_string, a2, v2);
  objc_msgSend_firstRange(self->_selection, v5, v6);
  return v4 - v7;
}

- (_NSRange)insertedRange
{
  Range = objc_msgSend_firstRange(self->_selection, a2, v2);
  v7 = objc_msgSend_length(self->_string, v5, v6);
  v8 = Range;
  result.length = v7;
  result.location = v8;
  return result;
}

@end
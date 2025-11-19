@interface TSWPStoragePasteboardProxy
- (TSWPStoragePasteboardProxy)initWithContext:(id)a3 storage:(id)a4 range:(_NSRange)a5 copiedRanges:(id)a6 styleProvider:(id)a7;
- (_NSRange)storageRange;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSWPStoragePasteboardProxy

- (TSWPStoragePasteboardProxy)initWithContext:(id)a3 storage:(id)a4 range:(_NSRange)a5 copiedRanges:(id)a6 styleProvider:(id)a7
{
  length = a5.length;
  location = a5.location;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v18 = objc_msgSend_initWithContext_(self, v17, v13);
  v19 = v18;
  if (v18)
  {
    objc_storeStrong((v18 + 64), a4);
    v19->_range.location = location;
    v19->_range.length = length;
    if (location + length > objc_msgSend_length(v14, v20, v21))
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSWPStoragePasteboardProxy initWithContext:storage:range:copiedRanges:styleProvider:]");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStoragePasteboardProxy.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 34, 0, "Range extends beyond end of storage.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    }

    objc_storeStrong(&v19->_copiedRanges, a6);
    objc_storeWeak(&v19->_styleProvider, v16);
  }

  return v19;
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  v13 = 0;
  v6 = objc_msgSend_p_shouldAcceptChangesForRange_copiedRanges_removeDeletedText_(self->_storage, v5, self->_range.location, self->_range.length, self->_copiedRanges, &v13);
  storage = self->_storage;
  location = self->_range.location;
  length = self->_range.length;
  WeakRetained = objc_loadWeakRetained(&self->_styleProvider);
  v12 = 0;
  objc_msgSend_saveRange_toArchiver_styleProvider_archiveChanges_removeDeletedText_archivePencilAnnotations_(storage, v11, location, length, v4, WeakRetained, v6 ^ 1u, v13, v12);
}

- (_NSRange)storageRange
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

@end
@interface TSWPStoragePasteboardProxy
- (TSWPStoragePasteboardProxy)initWithContext:(id)context storage:(id)storage range:(_NSRange)range copiedRanges:(id)ranges styleProvider:(id)provider;
- (_NSRange)storageRange;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSWPStoragePasteboardProxy

- (TSWPStoragePasteboardProxy)initWithContext:(id)context storage:(id)storage range:(_NSRange)range copiedRanges:(id)ranges styleProvider:(id)provider
{
  length = range.length;
  location = range.location;
  contextCopy = context;
  storageCopy = storage;
  rangesCopy = ranges;
  providerCopy = provider;
  v18 = objc_msgSend_initWithContext_(self, v17, contextCopy);
  v19 = v18;
  if (v18)
  {
    objc_storeStrong((v18 + 64), storage);
    v19->_range.location = location;
    v19->_range.length = length;
    if (location + length > objc_msgSend_length(storageCopy, v20, v21))
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSWPStoragePasteboardProxy initWithContext:storage:range:copiedRanges:styleProvider:]");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStoragePasteboardProxy.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 34, 0, "Range extends beyond end of storage.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    }

    objc_storeStrong(&v19->_copiedRanges, ranges);
    objc_storeWeak(&v19->_styleProvider, providerCopy);
  }

  return v19;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  v13 = 0;
  v6 = objc_msgSend_p_shouldAcceptChangesForRange_copiedRanges_removeDeletedText_(self->_storage, v5, self->_range.location, self->_range.length, self->_copiedRanges, &v13);
  storage = self->_storage;
  location = self->_range.location;
  length = self->_range.length;
  WeakRetained = objc_loadWeakRetained(&self->_styleProvider);
  v12 = 0;
  objc_msgSend_saveRange_toArchiver_styleProvider_archiveChanges_removeDeletedText_archivePencilAnnotations_(storage, v11, location, length, archiverCopy, WeakRetained, v6 ^ 1u, v13, v12);
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
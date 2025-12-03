@interface TSPDistributableArchiveEntry
- (BOOL)setDataRepresentation:(id)representation shouldCopy:(BOOL)copy error:(id *)error;
- (TSPDistributableArchiveEntry)initWithIdentifier:(int64_t)identifier;
- (void)dealloc;
- (void)setOwnedIds:(const void *)ids;
@end

@implementation TSPDistributableArchiveEntry

- (TSPDistributableArchiveEntry)initWithIdentifier:(int64_t)identifier
{
  v6.receiver = self;
  v6.super_class = TSPDistributableArchiveEntry;
  v4 = [(TSPDistributableArchiveEntry *)&v6 init];
  if (v4)
  {
    v4->_identifier = identifier;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  ownedIds = self->_ownedIds;
  if (ownedIds)
  {
    sub_276A579A4(self->_ownedIds, ownedIds[1]);
    MEMORY[0x277C9F670](ownedIds, 0x1020C4062D53EE8);
  }

  v4.receiver = self;
  v4.super_class = TSPDistributableArchiveEntry;
  [(TSPDistributableArchiveEntry *)&v4 dealloc];
}

- (BOOL)setDataRepresentation:(id)representation shouldCopy:(BOOL)copy error:(id *)error
{
  copyCopy = copy;
  representationCopy = representation;
  if (copyCopy)
  {
    objectData = self->_objectData;
    self->_objectData = 0;

    v10 = objc_alloc(MEMORY[0x277D81118]);
    v12 = objc_msgSend_initWithDataRepresentation_(v10, v11, representationCopy);
    v13 = self->_objectData;
    self->_objectData = v12;
  }

  else
  {
    objc_storeStrong(&self->_objectData, representation);
  }

  return 1;
}

- (void)setOwnedIds:(const void *)ids
{
  ownedIds = self->_ownedIds;
  if (!ownedIds)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDistributableArchiveEntry setOwnedIds:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableArchiveEntry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 95, 0, "_ownedIds can't be NULL here");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    ownedIds = self->_ownedIds;
  }

  sub_276A579A4(ownedIds, *(ownedIds + 1));
  *ownedIds = ownedIds + 8;
  *(ownedIds + 2) = 0;
  *(ownedIds + 1) = 0;
  v13 = self->_ownedIds;
  v14 = *ids;

  sub_276AEB408(v13, v14, ids + 1);
}

@end
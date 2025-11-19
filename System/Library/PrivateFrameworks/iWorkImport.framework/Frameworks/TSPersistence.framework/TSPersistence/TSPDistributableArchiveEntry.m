@interface TSPDistributableArchiveEntry
- (BOOL)setDataRepresentation:(id)a3 shouldCopy:(BOOL)a4 error:(id *)a5;
- (TSPDistributableArchiveEntry)initWithIdentifier:(int64_t)a3;
- (void)dealloc;
- (void)setOwnedIds:(const void *)a3;
@end

@implementation TSPDistributableArchiveEntry

- (TSPDistributableArchiveEntry)initWithIdentifier:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = TSPDistributableArchiveEntry;
  v4 = [(TSPDistributableArchiveEntry *)&v6 init];
  if (v4)
  {
    v4->_identifier = a3;
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

- (BOOL)setDataRepresentation:(id)a3 shouldCopy:(BOOL)a4 error:(id *)a5
{
  v5 = a4;
  v8 = a3;
  if (v5)
  {
    objectData = self->_objectData;
    self->_objectData = 0;

    v10 = objc_alloc(MEMORY[0x277D81118]);
    v12 = objc_msgSend_initWithDataRepresentation_(v10, v11, v8);
    v13 = self->_objectData;
    self->_objectData = v12;
  }

  else
  {
    objc_storeStrong(&self->_objectData, a3);
  }

  return 1;
}

- (void)setOwnedIds:(const void *)a3
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
  v14 = *a3;

  sub_276AEB408(v13, v14, a3 + 1);
}

@end
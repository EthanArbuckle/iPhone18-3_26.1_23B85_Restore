@interface KNSlideNodeSlideSpecificTableCounter
- (KNSlideNodeSlideSpecificTableCounter)initWithTableInfoUUID:(id)d andLinkCount:(unint64_t)count;
- (NSString)stringValue;
- (id)description;
- (void)decrement;
@end

@implementation KNSlideNodeSlideSpecificTableCounter

- (KNSlideNodeSlideSpecificTableCounter)initWithTableInfoUUID:(id)d andLinkCount:(unint64_t)count
{
  dCopy = d;
  if (!dCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNSlideNodeSlideSpecificTableCounter initWithTableInfoUUID:andLinkCount:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 102, 0, "invalid nil value for '%{public}s'", "tableInfoUUID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v19.receiver = self;
  v19.super_class = KNSlideNodeSlideSpecificTableCounter;
  v16 = [(KNSlideNodeSlideSpecificTableCounter *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_tableInfoUUID, d);
    v17->_linkCount = count;
  }

  return v17;
}

- (void)decrement
{
  linkCount = self->_linkCount;
  if (linkCount)
  {
    self->_linkCount = linkCount - 1;
  }
}

- (NSString)stringValue
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_UUIDString(self->_tableInfoUUID, a2, v2);
  v7 = objc_msgSend_stringWithFormat_(v4, v6, @"%@,%ld", v5, self->_linkCount);

  return v7;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_UUIDString(self->_tableInfoUUID, a2, v2);
  v7 = objc_msgSend_stringWithFormat_(v4, v6, @"Table Slide Specific Mapping: Table UUID: %@, count: %ld", v5, self->_linkCount);

  return v7;
}

@end
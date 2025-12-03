@interface BRCShareDeleteInfo
- (BOOL)isEqual:(id)equal;
- (BRCShareDeleteInfo)initWithShareID:(id)d emptyRecord:(id)record;
@end

@implementation BRCShareDeleteInfo

- (BRCShareDeleteInfo)initWithShareID:(id)d emptyRecord:(id)record
{
  dCopy = d;
  recordCopy = record;
  v12.receiver = self;
  v12.super_class = BRCShareDeleteInfo;
  v9 = [(BRCShareDeleteInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_shareID, d);
    objc_storeStrong(&v10->_emptyRecord, record);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    shareID = self->_shareID;
    shareID = [equalCopy shareID];
    v7 = [(CKRecordID *)shareID isEqual:shareID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
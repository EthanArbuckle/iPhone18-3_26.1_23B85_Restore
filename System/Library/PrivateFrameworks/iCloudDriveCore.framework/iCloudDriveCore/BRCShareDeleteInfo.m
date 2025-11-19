@interface BRCShareDeleteInfo
- (BOOL)isEqual:(id)a3;
- (BRCShareDeleteInfo)initWithShareID:(id)a3 emptyRecord:(id)a4;
@end

@implementation BRCShareDeleteInfo

- (BRCShareDeleteInfo)initWithShareID:(id)a3 emptyRecord:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BRCShareDeleteInfo;
  v9 = [(BRCShareDeleteInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_shareID, a3);
    objc_storeStrong(&v10->_emptyRecord, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    shareID = self->_shareID;
    v6 = [v4 shareID];
    v7 = [(CKRecordID *)shareID isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
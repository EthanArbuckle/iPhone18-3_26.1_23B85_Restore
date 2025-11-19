@interface WFCloudKitItemRecord
- (WFCloudKitItemRecord)initWithRecord:(id)a3 item:(id)a4;
@end

@implementation WFCloudKitItemRecord

- (WFCloudKitItemRecord)initWithRecord:(id)a3 item:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WFCloudKitItemRecord;
  v9 = [(WFCloudKitItemRecord *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_record, a3);
    objc_storeStrong(&v10->_item, a4);
    v11 = v10;
  }

  return v10;
}

@end
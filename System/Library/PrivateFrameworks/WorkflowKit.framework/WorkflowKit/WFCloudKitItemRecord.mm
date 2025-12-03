@interface WFCloudKitItemRecord
- (WFCloudKitItemRecord)initWithRecord:(id)record item:(id)item;
@end

@implementation WFCloudKitItemRecord

- (WFCloudKitItemRecord)initWithRecord:(id)record item:(id)item
{
  recordCopy = record;
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = WFCloudKitItemRecord;
  v9 = [(WFCloudKitItemRecord *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_record, record);
    objc_storeStrong(&v10->_item, item);
    v11 = v10;
  }

  return v10;
}

@end
@interface _PXStoryTimeBasedAssetInfo
- (_PXStoryTimeBasedAssetInfo)initWithDate:(id)date uuid:(id)uuid;
@end

@implementation _PXStoryTimeBasedAssetInfo

- (_PXStoryTimeBasedAssetInfo)initWithDate:(id)date uuid:(id)uuid
{
  dateCopy = date;
  uuidCopy = uuid;
  v12.receiver = self;
  v12.super_class = _PXStoryTimeBasedAssetInfo;
  v9 = [(_PXStoryTimeBasedAssetInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_date, date);
    objc_storeStrong(&v10->_uuid, uuid);
  }

  return v10;
}

@end
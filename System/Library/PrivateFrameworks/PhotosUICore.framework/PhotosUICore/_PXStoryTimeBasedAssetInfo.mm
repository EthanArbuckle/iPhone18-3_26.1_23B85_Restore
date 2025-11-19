@interface _PXStoryTimeBasedAssetInfo
- (_PXStoryTimeBasedAssetInfo)initWithDate:(id)a3 uuid:(id)a4;
@end

@implementation _PXStoryTimeBasedAssetInfo

- (_PXStoryTimeBasedAssetInfo)initWithDate:(id)a3 uuid:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _PXStoryTimeBasedAssetInfo;
  v9 = [(_PXStoryTimeBasedAssetInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_date, a3);
    objc_storeStrong(&v10->_uuid, a4);
  }

  return v10;
}

@end
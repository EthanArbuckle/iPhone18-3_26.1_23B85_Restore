@interface SHSheetActivityItemsResult
- (SHSheetActivityItemsResult)initWithActivity:(id)a3 activityItemValues:(id)a4;
@end

@implementation SHSheetActivityItemsResult

- (SHSheetActivityItemsResult)initWithActivity:(id)a3 activityItemValues:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SHSheetActivityItemsResult;
  v9 = [(SHSheetActivityItemsResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activity, a3);
    v11 = [v8 copy];
    activityItemValues = v10->_activityItemValues;
    v10->_activityItemValues = v11;

    v10->_isPlaceholder = v7 == 0;
  }

  return v10;
}

@end
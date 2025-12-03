@interface SHSheetActivityItemsResult
- (SHSheetActivityItemsResult)initWithActivity:(id)activity activityItemValues:(id)values;
@end

@implementation SHSheetActivityItemsResult

- (SHSheetActivityItemsResult)initWithActivity:(id)activity activityItemValues:(id)values
{
  activityCopy = activity;
  valuesCopy = values;
  v14.receiver = self;
  v14.super_class = SHSheetActivityItemsResult;
  v9 = [(SHSheetActivityItemsResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activity, activity);
    v11 = [valuesCopy copy];
    activityItemValues = v10->_activityItemValues;
    v10->_activityItemValues = v11;

    v10->_isPlaceholder = activityCopy == 0;
  }

  return v10;
}

@end
@interface APOdmlAppUsageVectorBuilder
- (id)eventsBetween:(id)between and:(id)and;
@end

@implementation APOdmlAppUsageVectorBuilder

- (id)eventsBetween:(id)between and:(id)and
{
  andCopy = and;
  betweenCopy = between;
  v7 = objc_alloc_init(APOdmlBiomeSQLQuery);
  v9 = objc_msgSend_query_startDate_endDate_(v7, v8, @"App.InFocus", betweenCopy, andCopy);

  return v9;
}

@end
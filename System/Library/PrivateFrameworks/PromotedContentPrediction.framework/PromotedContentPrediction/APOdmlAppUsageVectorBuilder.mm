@interface APOdmlAppUsageVectorBuilder
- (id)eventsBetween:(id)a3 and:(id)a4;
@end

@implementation APOdmlAppUsageVectorBuilder

- (id)eventsBetween:(id)a3 and:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(APOdmlBiomeSQLQuery);
  v9 = objc_msgSend_query_startDate_endDate_(v7, v8, @"App.InFocus", v6, v5);

  return v9;
}

@end
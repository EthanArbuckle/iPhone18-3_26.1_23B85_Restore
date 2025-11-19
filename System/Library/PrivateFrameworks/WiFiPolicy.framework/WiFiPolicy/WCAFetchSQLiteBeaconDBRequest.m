@interface WCAFetchSQLiteBeaconDBRequest
- (WCAFetchSQLiteBeaconDBRequest)init;
@end

@implementation WCAFetchSQLiteBeaconDBRequest

- (WCAFetchSQLiteBeaconDBRequest)init
{
  v5.receiver = self;
  v5.super_class = WCAFetchSQLiteBeaconDBRequest;
  v2 = [(WCAFetchSQLiteBeaconDBRequest *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WCAFetchSQLiteRequest *)v2 setTableName:@"prof_clean"];
    [(WCAFetchSQLiteRequest *)v3 setColumnNames:&unk_2848BAF58];
    [(WCAFetchSQLiteRequest *)v3 setLimit:1];
  }

  return v3;
}

@end
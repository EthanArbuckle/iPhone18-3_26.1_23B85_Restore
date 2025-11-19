@interface SearchUIRequestUserReportUtility
+ (id)createUserReportViewControllerWith:(id)a3 rowModel:(id)a4 environment:(id)a5;
- (SearchUIRequestUserReportUtility)init;
@end

@implementation SearchUIRequestUserReportUtility

+ (id)createUserReportViewControllerWith:(id)a3 rowModel:(id)a4 environment:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_1DA22D72C(v7, v8, v9);

  return v10;
}

- (SearchUIRequestUserReportUtility)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RequestUserReportUtility();
  return [(SearchUIRequestUserReportUtility *)&v3 init];
}

@end
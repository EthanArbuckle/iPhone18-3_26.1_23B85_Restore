@interface SearchUIRequestUserReportUtility
+ (id)createUserReportViewControllerWith:(id)with rowModel:(id)model environment:(id)environment;
- (SearchUIRequestUserReportUtility)init;
@end

@implementation SearchUIRequestUserReportUtility

+ (id)createUserReportViewControllerWith:(id)with rowModel:(id)model environment:(id)environment
{
  withCopy = with;
  modelCopy = model;
  environmentCopy = environment;
  v10 = sub_1DA22D72C(withCopy, modelCopy, environmentCopy);

  return v10;
}

- (SearchUIRequestUserReportUtility)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RequestUserReportUtility();
  return [(SearchUIRequestUserReportUtility *)&v3 init];
}

@end
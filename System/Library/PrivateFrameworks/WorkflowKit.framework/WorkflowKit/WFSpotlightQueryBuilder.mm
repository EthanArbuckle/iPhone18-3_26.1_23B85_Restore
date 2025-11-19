@interface WFSpotlightQueryBuilder
- (_TtC11WorkflowKit23WFSpotlightQueryBuilder)initWithOperator:(int64_t)a3 conditions:(id)a4;
- (id)addCondition:(id)a3;
- (id)buildQueryString;
@end

@implementation WFSpotlightQueryBuilder

- (_TtC11WorkflowKit23WFSpotlightQueryBuilder)initWithOperator:(int64_t)a3 conditions:(id)a4
{
  type metadata accessor for WFSpotlightQueryCondition();
  v5 = sub_1CA94C658();
  return sub_1CA440B68(a3, v5);
}

- (id)addCondition:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA440C38(v4);

  return v5;
}

- (id)buildQueryString
{
  v2 = self;
  sub_1CA440D44();

  v3 = sub_1CA94C368();

  return v3;
}

@end
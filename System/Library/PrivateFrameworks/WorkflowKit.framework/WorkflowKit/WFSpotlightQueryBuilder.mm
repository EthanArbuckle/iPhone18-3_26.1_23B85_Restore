@interface WFSpotlightQueryBuilder
- (_TtC11WorkflowKit23WFSpotlightQueryBuilder)initWithOperator:(int64_t)operator conditions:(id)conditions;
- (id)addCondition:(id)condition;
- (id)buildQueryString;
@end

@implementation WFSpotlightQueryBuilder

- (_TtC11WorkflowKit23WFSpotlightQueryBuilder)initWithOperator:(int64_t)operator conditions:(id)conditions
{
  type metadata accessor for WFSpotlightQueryCondition();
  v5 = sub_1CA94C658();
  return sub_1CA440B68(operator, v5);
}

- (id)addCondition:(id)condition
{
  conditionCopy = condition;
  selfCopy = self;
  sub_1CA440C38(conditionCopy);

  return selfCopy;
}

- (id)buildQueryString
{
  selfCopy = self;
  sub_1CA440D44();

  v3 = sub_1CA94C368();

  return v3;
}

@end
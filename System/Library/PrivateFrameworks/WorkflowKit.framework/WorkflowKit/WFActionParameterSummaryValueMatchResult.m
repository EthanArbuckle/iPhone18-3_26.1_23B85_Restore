@interface WFActionParameterSummaryValueMatchResult
+ (id)noMatchWithValue:(id)a3;
- (WFActionParameterSummaryValueMatchResult)initWithValue:(id)a3 matchType:(unint64_t)a4 numberOfMatchingParameters:(unint64_t)a5;
@end

@implementation WFActionParameterSummaryValueMatchResult

- (WFActionParameterSummaryValueMatchResult)initWithValue:(id)a3 matchType:(unint64_t)a4 numberOfMatchingParameters:(unint64_t)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = WFActionParameterSummaryValueMatchResult;
  v10 = [(WFActionParameterSummaryValueMatchResult *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_value, a3);
    v11->_matchType = a4;
    v11->_numberOfMatchingParameters = a5;
    v12 = v11;
  }

  return v11;
}

+ (id)noMatchWithValue:(id)a3
{
  v3 = a3;
  v4 = [[WFActionParameterSummaryValueMatchResult alloc] initWithValue:v3 matchType:0 numberOfMatchingParameters:0];

  return v4;
}

@end
@interface WFActionParameterSummaryValueMatchResult
+ (id)noMatchWithValue:(id)value;
- (WFActionParameterSummaryValueMatchResult)initWithValue:(id)value matchType:(unint64_t)type numberOfMatchingParameters:(unint64_t)parameters;
@end

@implementation WFActionParameterSummaryValueMatchResult

- (WFActionParameterSummaryValueMatchResult)initWithValue:(id)value matchType:(unint64_t)type numberOfMatchingParameters:(unint64_t)parameters
{
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = WFActionParameterSummaryValueMatchResult;
  v10 = [(WFActionParameterSummaryValueMatchResult *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_value, value);
    v11->_matchType = type;
    v11->_numberOfMatchingParameters = parameters;
    v12 = v11;
  }

  return v11;
}

+ (id)noMatchWithValue:(id)value
{
  valueCopy = value;
  v4 = [[WFActionParameterSummaryValueMatchResult alloc] initWithValue:valueCopy matchType:0 numberOfMatchingParameters:0];

  return v4;
}

@end
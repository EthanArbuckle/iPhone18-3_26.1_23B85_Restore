@interface WBSCalculationResult
- (BOOL)isCalculation;
- (BOOL)isEqual:(id)equal;
- (NSString)formattedEquation;
- (NSString)sectionTitle;
- (WBSCalculationResult)initWithCalculateResult:(id)result;
- (id)reflectedStringForQueryString:(id)string;
@end

@implementation WBSCalculationResult

- (WBSCalculationResult)initWithCalculateResult:(id)result
{
  resultCopy = result;
  v11.receiver = self;
  v11.super_class = WBSCalculationResult;
  v6 = [(WBSCalculationResult *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_result, result);
    if ([(WBSCalculationResult *)v7 isCalculation])
    {
      if (calculationResultNumberFormatter_onceToken != -1)
      {
        [WBSCalculationResult initWithCalculateResult:];
      }

      v8 = &calculationResultNumberFormatter_formatter;
    }

    else
    {
      if (conversionResultNumberFormatter_onceToken != -1)
      {
        [WBSCalculationResult initWithCalculateResult:];
      }

      v8 = &conversionResultNumberFormatter_formatter;
    }

    [(CalculateResult *)v7->_result setNumberFormatter:*v8];
    v9 = v7;
  }

  return v7;
}

- (BOOL)isCalculation
{
  conversions = [(CalculateResult *)self->_result conversions];
  if ([conversions count])
  {
    v4 = 0;
  }

  else
  {
    inputValueAndUnit = [(CalculateResult *)self->_result inputValueAndUnit];
    v4 = inputValueAndUnit == 0;
  }

  return v4;
}

- (NSString)sectionTitle
{
  [(WBSCalculationResult *)self isCalculation];
  v2 = _WBSLocalizedString();

  return v2;
}

- (NSString)formattedEquation
{
  formattedExpression = [(CalculateResult *)self->_result formattedExpression];
  v4 = [(WBSCalculationResult *)self reflectedStringForQueryString:formattedExpression];

  return v4;
}

- (id)reflectedStringForQueryString:(id)string
{
  v4 = MEMORY[0x1E696AEC0];
  stringCopy = string;
  v6 = _WBSLocalizedString();
  formattedResult = [(CalculateResult *)self->_result formattedResult];
  v8 = [v4 stringWithFormat:v6, stringCopy, formattedResult];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    formattedEquation = [(WBSCalculationResult *)self formattedEquation];
    formattedEquation2 = [equalCopy formattedEquation];
    v7 = [formattedEquation isEqualToString:formattedEquation2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
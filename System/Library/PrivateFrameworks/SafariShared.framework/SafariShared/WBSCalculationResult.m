@interface WBSCalculationResult
- (BOOL)isCalculation;
- (BOOL)isEqual:(id)a3;
- (NSString)formattedEquation;
- (NSString)sectionTitle;
- (WBSCalculationResult)initWithCalculateResult:(id)a3;
- (id)reflectedStringForQueryString:(id)a3;
@end

@implementation WBSCalculationResult

- (WBSCalculationResult)initWithCalculateResult:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = WBSCalculationResult;
  v6 = [(WBSCalculationResult *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_result, a3);
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
  v3 = [(CalculateResult *)self->_result conversions];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CalculateResult *)self->_result inputValueAndUnit];
    v4 = v5 == 0;
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
  v3 = [(CalculateResult *)self->_result formattedExpression];
  v4 = [(WBSCalculationResult *)self reflectedStringForQueryString:v3];

  return v4;
}

- (id)reflectedStringForQueryString:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = _WBSLocalizedString();
  v7 = [(CalculateResult *)self->_result formattedResult];
  v8 = [v4 stringWithFormat:v6, v5, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WBSCalculationResult *)self formattedEquation];
    v6 = [v4 formattedEquation];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
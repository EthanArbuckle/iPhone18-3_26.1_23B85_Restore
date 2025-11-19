@interface WFCurrencyQuantityFieldParameter
- (WFCurrencyQuantityFieldParameter)initWithDefinition:(id)a3;
- (id)defaultUnit;
@end

@implementation WFCurrencyQuantityFieldParameter

- (id)defaultUnit
{
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [v3 currencyCode];

  v5 = [(WFQuantityFieldParameter *)self possibleUnits];
  if ([v5 containsObject:v4])
  {
    v6 = v4;
  }

  else
  {
    v6 = [v5 firstObject];
  }

  v7 = v6;

  return v7;
}

- (WFCurrencyQuantityFieldParameter)initWithDefinition:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKey:@"PossibleUnits"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (![v7 count])
  {
    v8 = [MEMORY[0x1E695DF58] ISOCurrencyCodes];

    v15 = @"PossibleUnits";
    v16[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10 = [v4 definitionByAddingEntriesInDictionary:v9];

    v7 = v8;
    v4 = v10;
  }

  v14.receiver = self;
  v14.super_class = WFCurrencyQuantityFieldParameter;
  v11 = [(WFQuantityFieldParameter *)&v14 initWithDefinition:v4];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

@end
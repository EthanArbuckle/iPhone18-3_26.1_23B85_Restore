@interface PIParallaxStyleNumberParameter
- (BOOL)isEqualToParallaxStyleParameter:(id)parameter;
- (PIParallaxStyleNumberParameter)initWithNumber:(id)number unit:(id)unit;
- (id)description;
- (id)evaluateWithContext:(id)context error:(id *)error;
@end

@implementation PIParallaxStyleNumberParameter

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  numberValue = [(PIParallaxStyleNumberParameter *)self numberValue];
  unit = [(PIParallaxStyleNumberParameter *)self unit];
  v6 = [v3 stringWithFormat:@"(%@, unit: %@) ", numberValue, unit];

  return v6;
}

- (id)evaluateWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  unit = [(PIParallaxStyleNumberParameter *)self unit];
  v7 = [unit isEqualToString:@"pixels"];

  if (v7)
  {
    numberValue = [(PIParallaxStyleNumberParameter *)self numberValue];
    [numberValue doubleValue];
    v10 = v9;

    [contextCopy renderScale];
    v11 = MEMORY[0x1E696AD98];
    v13 = v10 * v12;
  }

  else
  {
    unit2 = [(PIParallaxStyleNumberParameter *)self unit];
    v15 = [unit2 isEqualToString:@"degrees"];

    numberValue2 = [(PIParallaxStyleNumberParameter *)self numberValue];
    v17 = numberValue2;
    if (!v15)
    {
      goto LABEL_6;
    }

    [numberValue2 doubleValue];
    v19 = v18;

    v13 = v19 / 180.0 * 3.14159265;
    v11 = MEMORY[0x1E696AD98];
  }

  v17 = [v11 numberWithDouble:v13];
LABEL_6:

  return v17;
}

- (BOOL)isEqualToParallaxStyleParameter:(id)parameter
{
  parameterCopy = parameter;
  type = [parameterCopy type];
  v6 = [type isEqualToString:@"number"];

  if (v6)
  {
    v7 = parameterCopy;
    unit = [(PIParallaxStyleNumberParameter *)self unit];
    unit2 = [v7 unit];
    v10 = [unit isEqualToString:unit2];

    if (v10)
    {
      numberValue = [(PIParallaxStyleNumberParameter *)self numberValue];
      numberValue2 = [v7 numberValue];
      v13 = [numberValue isEqualToNumber:numberValue2];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (PIParallaxStyleNumberParameter)initWithNumber:(id)number unit:(id)unit
{
  numberCopy = number;
  unitCopy = unit;
  v13.receiver = self;
  v13.super_class = PIParallaxStyleNumberParameter;
  v8 = [(PIParallaxStyleNumberParameter *)&v13 init];
  numberValue = v8->_numberValue;
  v8->_numberValue = numberCopy;
  v10 = numberCopy;

  unit = v8->_unit;
  v8->_unit = unitCopy;

  return v8;
}

@end
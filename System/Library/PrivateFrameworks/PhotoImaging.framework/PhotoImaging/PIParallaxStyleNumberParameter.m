@interface PIParallaxStyleNumberParameter
- (BOOL)isEqualToParallaxStyleParameter:(id)a3;
- (PIParallaxStyleNumberParameter)initWithNumber:(id)a3 unit:(id)a4;
- (id)description;
- (id)evaluateWithContext:(id)a3 error:(id *)a4;
@end

@implementation PIParallaxStyleNumberParameter

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PIParallaxStyleNumberParameter *)self numberValue];
  v5 = [(PIParallaxStyleNumberParameter *)self unit];
  v6 = [v3 stringWithFormat:@"(%@, unit: %@) ", v4, v5];

  return v6;
}

- (id)evaluateWithContext:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(PIParallaxStyleNumberParameter *)self unit];
  v7 = [v6 isEqualToString:@"pixels"];

  if (v7)
  {
    v8 = [(PIParallaxStyleNumberParameter *)self numberValue];
    [v8 doubleValue];
    v10 = v9;

    [v5 renderScale];
    v11 = MEMORY[0x1E696AD98];
    v13 = v10 * v12;
  }

  else
  {
    v14 = [(PIParallaxStyleNumberParameter *)self unit];
    v15 = [v14 isEqualToString:@"degrees"];

    v16 = [(PIParallaxStyleNumberParameter *)self numberValue];
    v17 = v16;
    if (!v15)
    {
      goto LABEL_6;
    }

    [v16 doubleValue];
    v19 = v18;

    v13 = v19 / 180.0 * 3.14159265;
    v11 = MEMORY[0x1E696AD98];
  }

  v17 = [v11 numberWithDouble:v13];
LABEL_6:

  return v17;
}

- (BOOL)isEqualToParallaxStyleParameter:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = [v5 isEqualToString:@"number"];

  if (v6)
  {
    v7 = v4;
    v8 = [(PIParallaxStyleNumberParameter *)self unit];
    v9 = [v7 unit];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      v11 = [(PIParallaxStyleNumberParameter *)self numberValue];
      v12 = [v7 numberValue];
      v13 = [v11 isEqualToNumber:v12];
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

- (PIParallaxStyleNumberParameter)initWithNumber:(id)a3 unit:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PIParallaxStyleNumberParameter;
  v8 = [(PIParallaxStyleNumberParameter *)&v13 init];
  numberValue = v8->_numberValue;
  v8->_numberValue = v6;
  v10 = v6;

  unit = v8->_unit;
  v8->_unit = v7;

  return v8;
}

@end
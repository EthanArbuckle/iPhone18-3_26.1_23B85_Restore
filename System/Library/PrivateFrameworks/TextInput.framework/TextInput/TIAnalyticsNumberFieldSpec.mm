@interface TIAnalyticsNumberFieldSpec
- (BOOL)validate:(id)a3 error:(id *)a4;
- (TIAnalyticsNumberFieldSpec)initWithName:(id)a3 isInteger:(BOOL)a4 minValue:(id)a5 maxValue:(id)a6 significantDigits:(id)a7;
@end

@implementation TIAnalyticsNumberFieldSpec

- (BOOL)validate:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (v7)
  {
    if (self->_isInteger)
    {
      if (![TIAnalyticsUtil isInteger:v7])
      {
        v10 = [(TIAnalyticsFieldSpec *)self name];
        v26 = v10;
        v11 = @"Field '%@' must be an integer.";
        goto LABEL_13;
      }

      if (self->_isInteger)
      {
        goto LABEL_6;
      }
    }

    if ([TIAnalyticsUtil isFloat:v7])
    {
LABEL_6:
      v8 = [(TIAnalyticsNumberFieldSpec *)self minValue];
      if (v8)
      {
        v4 = [(TIAnalyticsNumberFieldSpec *)self minValue];
        if ([v7 compare:v4] == -1)
        {

LABEL_18:
          v10 = [(TIAnalyticsFieldSpec *)self name];
          [(TIAnalyticsFieldSpec *)self errorFromValue:v7 code:14 message:@"Field '%@' is out of range.", v10];
          goto LABEL_24;
        }
      }

      v15 = [(TIAnalyticsNumberFieldSpec *)self maxValue];
      if (v15)
      {
        v16 = v15;
        v17 = [(TIAnalyticsNumberFieldSpec *)self maxValue];
        v18 = [v7 compare:v17];

        if (v8)
        {
        }

        if (v18 == 1)
        {
          goto LABEL_18;
        }
      }

      else if (v8)
      {
      }

      v19 = [TIAnalyticsUtil roundNumber:v7 toSignificantDigits:self->_significantDigits];
      [v19 doubleValue];
      v21 = v20;
      [v7 doubleValue];
      v23 = v22;

      if (v21 == v23)
      {
        v9 = 0;
        goto LABEL_27;
      }

      v10 = [(TIAnalyticsFieldSpec *)self name];
      v26 = v10;
      v11 = @"Field '%@' has too many significant digits.";
      v12 = self;
      v13 = v7;
      v14 = 15;
LABEL_23:
      [(TIAnalyticsFieldSpec *)v12 errorFromValue:v13 code:v14 message:v11, v26];
      v9 = LABEL_24:;

      if (!a4)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    v10 = [(TIAnalyticsFieldSpec *)self name];
    v26 = v10;
    v11 = @"Field '%@' must be a double.";
LABEL_13:
    v12 = self;
    v13 = v7;
    v14 = 10;
    goto LABEL_23;
  }

  v9 = [(TIAnalyticsFieldSpec *)self errorFromNil];
  if (!a4)
  {
    goto LABEL_27;
  }

LABEL_25:
  if (v9)
  {
    v24 = v9;
    *a4 = v9;
  }

LABEL_27:

  return v9 == 0;
}

- (TIAnalyticsNumberFieldSpec)initWithName:(id)a3 isInteger:(BOOL)a4 minValue:(id)a5 maxValue:(id)a6 significantDigits:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v24.receiver = self;
  v24.super_class = TIAnalyticsNumberFieldSpec;
  v15 = [(TIAnalyticsFieldSpec *)&v24 initWithName:a3];
  v16 = v15;
  if (v15)
  {
    v15->_isInteger = a4;
    v17 = [v12 copy];
    minValue = v16->_minValue;
    v16->_minValue = v17;

    v19 = [v13 copy];
    maxValue = v16->_maxValue;
    v16->_maxValue = v19;

    v21 = [v14 copy];
    significantDigits = v16->_significantDigits;
    v16->_significantDigits = v21;
  }

  return v16;
}

@end
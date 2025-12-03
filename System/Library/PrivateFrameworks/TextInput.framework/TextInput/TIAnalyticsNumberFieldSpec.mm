@interface TIAnalyticsNumberFieldSpec
- (BOOL)validate:(id)validate error:(id *)error;
- (TIAnalyticsNumberFieldSpec)initWithName:(id)name isInteger:(BOOL)integer minValue:(id)value maxValue:(id)maxValue significantDigits:(id)digits;
@end

@implementation TIAnalyticsNumberFieldSpec

- (BOOL)validate:(id)validate error:(id *)error
{
  validateCopy = validate;
  if (validateCopy)
  {
    if (self->_isInteger)
    {
      if (![TIAnalyticsUtil isInteger:validateCopy])
      {
        name = [(TIAnalyticsFieldSpec *)self name];
        v26 = name;
        v11 = @"Field '%@' must be an integer.";
        goto LABEL_13;
      }

      if (self->_isInteger)
      {
        goto LABEL_6;
      }
    }

    if ([TIAnalyticsUtil isFloat:validateCopy])
    {
LABEL_6:
      minValue = [(TIAnalyticsNumberFieldSpec *)self minValue];
      if (minValue)
      {
        minValue2 = [(TIAnalyticsNumberFieldSpec *)self minValue];
        if ([validateCopy compare:minValue2] == -1)
        {

LABEL_18:
          name = [(TIAnalyticsFieldSpec *)self name];
          [(TIAnalyticsFieldSpec *)self errorFromValue:validateCopy code:14 message:@"Field '%@' is out of range.", name];
          goto LABEL_24;
        }
      }

      maxValue = [(TIAnalyticsNumberFieldSpec *)self maxValue];
      if (maxValue)
      {
        v16 = maxValue;
        maxValue2 = [(TIAnalyticsNumberFieldSpec *)self maxValue];
        v18 = [validateCopy compare:maxValue2];

        if (minValue)
        {
        }

        if (v18 == 1)
        {
          goto LABEL_18;
        }
      }

      else if (minValue)
      {
      }

      v19 = [TIAnalyticsUtil roundNumber:validateCopy toSignificantDigits:self->_significantDigits];
      [v19 doubleValue];
      v21 = v20;
      [validateCopy doubleValue];
      v23 = v22;

      if (v21 == v23)
      {
        errorFromNil = 0;
        goto LABEL_27;
      }

      name = [(TIAnalyticsFieldSpec *)self name];
      v26 = name;
      v11 = @"Field '%@' has too many significant digits.";
      selfCopy2 = self;
      v13 = validateCopy;
      v14 = 15;
LABEL_23:
      [(TIAnalyticsFieldSpec *)selfCopy2 errorFromValue:v13 code:v14 message:v11, v26];
      errorFromNil = LABEL_24:;

      if (!error)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    name = [(TIAnalyticsFieldSpec *)self name];
    v26 = name;
    v11 = @"Field '%@' must be a double.";
LABEL_13:
    selfCopy2 = self;
    v13 = validateCopy;
    v14 = 10;
    goto LABEL_23;
  }

  errorFromNil = [(TIAnalyticsFieldSpec *)self errorFromNil];
  if (!error)
  {
    goto LABEL_27;
  }

LABEL_25:
  if (errorFromNil)
  {
    v24 = errorFromNil;
    *error = errorFromNil;
  }

LABEL_27:

  return errorFromNil == 0;
}

- (TIAnalyticsNumberFieldSpec)initWithName:(id)name isInteger:(BOOL)integer minValue:(id)value maxValue:(id)maxValue significantDigits:(id)digits
{
  valueCopy = value;
  maxValueCopy = maxValue;
  digitsCopy = digits;
  v24.receiver = self;
  v24.super_class = TIAnalyticsNumberFieldSpec;
  v15 = [(TIAnalyticsFieldSpec *)&v24 initWithName:name];
  v16 = v15;
  if (v15)
  {
    v15->_isInteger = integer;
    v17 = [valueCopy copy];
    minValue = v16->_minValue;
    v16->_minValue = v17;

    v19 = [maxValueCopy copy];
    maxValue = v16->_maxValue;
    v16->_maxValue = v19;

    v21 = [digitsCopy copy];
    significantDigits = v16->_significantDigits;
    v16->_significantDigits = v21;
  }

  return v16;
}

@end
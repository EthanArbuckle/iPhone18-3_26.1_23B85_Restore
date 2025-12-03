@interface TIAnalyticsStringFieldSpec
- (BOOL)validate:(id)validate error:(id *)error;
- (TIAnalyticsStringFieldSpec)initWithName:(id)name allowedValues:(id)values;
@end

@implementation TIAnalyticsStringFieldSpec

- (BOOL)validate:(id)validate error:(id *)error
{
  validateCopy = validate;
  if (validateCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([validateCopy length])
      {
        allowedValues = [(TIAnalyticsStringFieldSpec *)self allowedValues];
        if (!allowedValues || (v8 = allowedValues, -[TIAnalyticsStringFieldSpec allowedValues](self, "allowedValues"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 containsObject:validateCopy], v9, v8, (v10 & 1) != 0))
        {
          errorFromNil = 0;
          goto LABEL_15;
        }

        name = [(TIAnalyticsFieldSpec *)self name];
        [(TIAnalyticsFieldSpec *)self errorFromValue:validateCopy code:13 message:@"Field '%@' must be one of the allowed values.", name];
      }

      else
      {
        name = [(TIAnalyticsFieldSpec *)self name];
        [(TIAnalyticsFieldSpec *)self errorFromValue:validateCopy code:12 message:@"Field '%@' cannot be an empty string.", name];
      }
    }

    else
    {
      name = [(TIAnalyticsFieldSpec *)self name];
      [(TIAnalyticsFieldSpec *)self errorFromValue:validateCopy code:10 message:@"Field '%@' must be a string.", name];
    }
    errorFromNil = ;

    if (!error)
    {
      goto LABEL_15;
    }
  }

  else
  {
    errorFromNil = [(TIAnalyticsFieldSpec *)self errorFromNil];
    if (!error)
    {
      goto LABEL_15;
    }
  }

  if (errorFromNil)
  {
    v13 = errorFromNil;
    *error = errorFromNil;
  }

LABEL_15:

  return errorFromNil == 0;
}

- (TIAnalyticsStringFieldSpec)initWithName:(id)name allowedValues:(id)values
{
  valuesCopy = values;
  v10.receiver = self;
  v10.super_class = TIAnalyticsStringFieldSpec;
  v7 = [(TIAnalyticsFieldSpec *)&v10 initWithName:name];
  if (v7)
  {
    if (valuesCopy)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:valuesCopy copyItems:1];
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong(&v7->_allowedValues, v8);
    if (valuesCopy)
    {
    }
  }

  return v7;
}

@end
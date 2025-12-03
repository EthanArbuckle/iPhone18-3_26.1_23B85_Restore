@interface TIAnalyticsBooleanFieldSpec
- (BOOL)validate:(id)validate error:(id *)error;
- (TIAnalyticsBooleanFieldSpec)initWithName:(id)name;
@end

@implementation TIAnalyticsBooleanFieldSpec

- (BOOL)validate:(id)validate error:(id *)error
{
  validateCopy = validate;
  if (validateCopy)
  {
    if ([TIAnalyticsUtil isBoolean:validateCopy])
    {
      errorFromNil = 0;
      goto LABEL_9;
    }

    name = [(TIAnalyticsFieldSpec *)self name];
    errorFromNil = [(TIAnalyticsFieldSpec *)self errorFromValue:validateCopy code:10 message:@"Field '%@' must be a BOOLean.", name];

    if (!error)
    {
      goto LABEL_9;
    }
  }

  else
  {
    errorFromNil = [(TIAnalyticsFieldSpec *)self errorFromNil];
    if (!error)
    {
      goto LABEL_9;
    }
  }

  if (errorFromNil)
  {
    v9 = errorFromNil;
    *error = errorFromNil;
  }

LABEL_9:

  return errorFromNil == 0;
}

- (TIAnalyticsBooleanFieldSpec)initWithName:(id)name
{
  v4.receiver = self;
  v4.super_class = TIAnalyticsBooleanFieldSpec;
  return [(TIAnalyticsFieldSpec *)&v4 initWithName:name];
}

@end
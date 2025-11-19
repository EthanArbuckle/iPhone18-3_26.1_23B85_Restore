@interface TIAnalyticsBooleanFieldSpec
- (BOOL)validate:(id)a3 error:(id *)a4;
- (TIAnalyticsBooleanFieldSpec)initWithName:(id)a3;
@end

@implementation TIAnalyticsBooleanFieldSpec

- (BOOL)validate:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    if ([TIAnalyticsUtil isBoolean:v6])
    {
      v7 = 0;
      goto LABEL_9;
    }

    v8 = [(TIAnalyticsFieldSpec *)self name];
    v7 = [(TIAnalyticsFieldSpec *)self errorFromValue:v6 code:10 message:@"Field '%@' must be a BOOLean.", v8];

    if (!a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = [(TIAnalyticsFieldSpec *)self errorFromNil];
    if (!a4)
    {
      goto LABEL_9;
    }
  }

  if (v7)
  {
    v9 = v7;
    *a4 = v7;
  }

LABEL_9:

  return v7 == 0;
}

- (TIAnalyticsBooleanFieldSpec)initWithName:(id)a3
{
  v4.receiver = self;
  v4.super_class = TIAnalyticsBooleanFieldSpec;
  return [(TIAnalyticsFieldSpec *)&v4 initWithName:a3];
}

@end
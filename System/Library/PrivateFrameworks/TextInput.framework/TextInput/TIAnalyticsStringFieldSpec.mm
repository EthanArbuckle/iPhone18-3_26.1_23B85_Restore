@interface TIAnalyticsStringFieldSpec
- (BOOL)validate:(id)a3 error:(id *)a4;
- (TIAnalyticsStringFieldSpec)initWithName:(id)a3 allowedValues:(id)a4;
@end

@implementation TIAnalyticsStringFieldSpec

- (BOOL)validate:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v6 length])
      {
        v7 = [(TIAnalyticsStringFieldSpec *)self allowedValues];
        if (!v7 || (v8 = v7, -[TIAnalyticsStringFieldSpec allowedValues](self, "allowedValues"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 containsObject:v6], v9, v8, (v10 & 1) != 0))
        {
          v11 = 0;
          goto LABEL_15;
        }

        v12 = [(TIAnalyticsFieldSpec *)self name];
        [(TIAnalyticsFieldSpec *)self errorFromValue:v6 code:13 message:@"Field '%@' must be one of the allowed values.", v12];
      }

      else
      {
        v12 = [(TIAnalyticsFieldSpec *)self name];
        [(TIAnalyticsFieldSpec *)self errorFromValue:v6 code:12 message:@"Field '%@' cannot be an empty string.", v12];
      }
    }

    else
    {
      v12 = [(TIAnalyticsFieldSpec *)self name];
      [(TIAnalyticsFieldSpec *)self errorFromValue:v6 code:10 message:@"Field '%@' must be a string.", v12];
    }
    v11 = ;

    if (!a4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = [(TIAnalyticsFieldSpec *)self errorFromNil];
    if (!a4)
    {
      goto LABEL_15;
    }
  }

  if (v11)
  {
    v13 = v11;
    *a4 = v11;
  }

LABEL_15:

  return v11 == 0;
}

- (TIAnalyticsStringFieldSpec)initWithName:(id)a3 allowedValues:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = TIAnalyticsStringFieldSpec;
  v7 = [(TIAnalyticsFieldSpec *)&v10 initWithName:a3];
  if (v7)
  {
    if (v6)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v6 copyItems:1];
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong(&v7->_allowedValues, v8);
    if (v6)
    {
    }
  }

  return v7;
}

@end
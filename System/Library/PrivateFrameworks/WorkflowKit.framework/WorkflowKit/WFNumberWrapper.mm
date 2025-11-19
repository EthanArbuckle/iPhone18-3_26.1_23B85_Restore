@interface WFNumberWrapper
+ (id)wrapperWithNumber:(id)a3;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation WFNumberWrapper

+ (id)wrapperWithNumber:(id)a3
{
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:a1 file:@"WFNumberSubstitutableState.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"number == nil || [number isKindOfClass:[NSNumber class]]"}];
    }
  }

  v7 = objc_opt_new();
  v8 = v7;
  if (v7)
  {
    objc_storeStrong((v7 + 8), a3);
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFNumberWrapper *)self number];
      v6 = [(WFNumberWrapper *)v4 number];
      v7 = v5;
      v8 = v6;
      v9 = v8;
      if (v7 == v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0;
        if (v7 && v8)
        {
          v10 = [v7 isEqual:v8];
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(WFNumberWrapper *)self number];
  v3 = [v2 hash];

  return v3;
}

@end
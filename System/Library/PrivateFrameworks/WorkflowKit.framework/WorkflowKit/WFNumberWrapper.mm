@interface WFNumberWrapper
+ (id)wrapperWithNumber:(id)number;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation WFNumberWrapper

+ (id)wrapperWithNumber:(id)number
{
  numberCopy = number;
  if (numberCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"WFNumberSubstitutableState.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"number == nil || [number isKindOfClass:[NSNumber class]]"}];
    }
  }

  v7 = objc_opt_new();
  v8 = v7;
  if (v7)
  {
    objc_storeStrong((v7 + 8), number);
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      number = [(WFNumberWrapper *)self number];
      number2 = [(WFNumberWrapper *)equalCopy number];
      v7 = number;
      v8 = number2;
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
  number = [(WFNumberWrapper *)self number];
  v3 = [number hash];

  return v3;
}

@end
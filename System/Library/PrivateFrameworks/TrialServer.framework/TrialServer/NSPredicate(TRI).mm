@interface NSPredicate(TRI)
+ (id)triLoggablePredicateWithFormat:()TRI;
+ (id)triLoggablePredicateWithValue:()TRI;
+ (void)_triAnnotatePredicate:()TRI format:usingArgs:;
- (id)triLogDesc;
@end

@implementation NSPredicate(TRI)

- (id)triLogDesc
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_getAssociatedObject(self, "triLogDesc");
  if (!v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = 0;
      goto LABEL_24;
    }

    selfCopy = self;
    v5 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [selfCopy subpredicates];
    v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          v11 = objc_alloc(MEMORY[0x277CCACA8]);
          triLogDesc = [v10 triLogDesc];
          v13 = triLogDesc;
          if (!triLogDesc)
          {
            v1 = [v10 description];
            v13 = v1;
          }

          v14 = [v11 initWithFormat:@"(%@)", v13];
          [v5 addObject:v14];

          if (!triLogDesc)
          {
          }
        }

        v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);
    }

    compoundPredicateType = [selfCopy compoundPredicateType];
    if (compoundPredicateType == 2)
    {
      v18 = @" OR ";
    }

    else
    {
      if (compoundPredicateType != 1)
      {
        if (compoundPredicateType)
        {
          v3 = 0;
        }

        else
        {
          v16 = objc_alloc(MEMORY[0x277CCACA8]);
          v17 = [v5 componentsJoinedByString:{@", "}];
          v3 = [v16 initWithFormat:@"NOT %@", v17];
        }

        goto LABEL_23;
      }

      v18 = @" AND ";
    }

    v3 = [v5 componentsJoinedByString:v18];
LABEL_23:
  }

LABEL_24:
  v19 = v3;

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (void)_triAnnotatePredicate:()TRI format:usingArgs:
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  if (![v8 length])
  {
LABEL_15:
    v20 = [v9 copy];
    [v7 triSetLogDesc:v20];

    goto LABEL_16;
  }

  v10 = 0;
  while (1)
  {
    v11 = [v8 characterAtIndex:v10];
    v23 = v11;
    if (v11 == 37)
    {
      v12 = v10 + 1;
      if (v10 + 1 < [v8 length])
      {
        break;
      }
    }

    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v23 length:1];
    [v9 appendString:v16];

    v12 = v10;
LABEL_14:
    v10 = v12 + 1;
    if (v12 + 1 >= [v8 length])
    {
      goto LABEL_15;
    }
  }

  v23 = [v8 characterAtIndex:v10 + 1];
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v23 length:1];
  if (v23 == 75)
  {
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    v18 = *a5;
    *a5 += 8;
    v19 = [v17 initWithFormat:@"%@", *v18];
    [v9 appendString:v19];

LABEL_13:
    goto LABEL_14;
  }

  if (v23 == 37)
  {
    v14 = v9;
    v15 = v13;
LABEL_12:
    [v14 appendString:v15];
    goto LABEL_13;
  }

  if ([@"@" containsString:v13])
  {
    *a5 += 8;
    v14 = v9;
    v15 = @"?";
    goto LABEL_12;
  }

  v22 = TRILogCategory_Server();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v25 = "+[NSPredicate(TRI) _triAnnotatePredicate:format:usingArgs:]";
    v26 = 2112;
    v27 = v8;
    _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "%s: unsupported format specifier %@", buf, 0x16u);
  }

LABEL_16:
  v21 = *MEMORY[0x277D85DE8];
}

+ (id)triLoggablePredicateWithFormat:()TRI
{
  v10 = a3;
  v11 = objc_autoreleasePoolPush();
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:v10 arguments:&a9];
  v14 = &a9;
  [self _triAnnotatePredicate:v12 format:v10 usingArgs:&v14];
  objc_autoreleasePoolPop(v11);

  return v12;
}

+ (id)triLoggablePredicateWithValue:()TRI
{
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCAC30] predicateWithValue:a3];
  v6 = v5;
  if (a3)
  {
    v7 = @"TRUEPREDICATE";
  }

  else
  {
    v7 = @"FALSEPREDICATE";
  }

  [v5 triSetLogDesc:v7];
  objc_autoreleasePoolPop(v4);

  return v6;
}

@end
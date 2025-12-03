@interface SKGQueryStringBuilder
+ (id)queryForAttributesAbsent:(id)absent;
+ (id)queryForAttributesExist:(id)exist;
- (SKGQueryStringBuilder)init;
- (id)and;
- (id)beginGroup;
- (id)build;
- (id)endGroup;
- (id)not;
- (id)or;
@end

@implementation SKGQueryStringBuilder

- (SKGQueryStringBuilder)init
{
  v27.receiver = self;
  v27.super_class = SKGQueryStringBuilder;
  v2 = [(SKGQueryStringBuilder *)&v27 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    queryComponents = v2->_queryComponents;
    v2->_queryComponents = array;

    objc_initWeak(&location, v2);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __29__SKGQueryStringBuilder_init__block_invoke;
    aBlock[3] = &unk_27893F110;
    objc_copyWeak(&v25, &location);
    v5 = _Block_copy(aBlock);
    withAttribute = v2->_withAttribute;
    v2->_withAttribute = v5;

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __29__SKGQueryStringBuilder_init__block_invoke_2;
    v22[3] = &unk_27893F138;
    objc_copyWeak(&v23, &location);
    v7 = _Block_copy(v22);
    withAttributeValues = v2->_withAttributeValues;
    v2->_withAttributeValues = v7;

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __29__SKGQueryStringBuilder_init__block_invoke_3;
    v20[3] = &unk_27893F160;
    objc_copyWeak(&v21, &location);
    v9 = _Block_copy(v20);
    withFieldMatch = v2->_withFieldMatch;
    v2->_withFieldMatch = v9;

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __29__SKGQueryStringBuilder_init__block_invoke_4;
    v18[3] = &unk_27893F188;
    objc_copyWeak(&v19, &location);
    v11 = _Block_copy(v18);
    withQuery = v2->_withQuery;
    v2->_withQuery = v11;

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __29__SKGQueryStringBuilder_init__block_invoke_5;
    v16[3] = &unk_27893F1B0;
    objc_copyWeak(&v17, &location);
    v13 = _Block_copy(v16);
    withQueries = v2->_withQueries;
    v2->_withQueries = v13;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v2;
}

void *__29__SKGQueryStringBuilder_init__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v9 isEqualToString:@"*"])
      {
        v11 = @"*";
      }

      else
      {
        v19 = v9;
        v11 = @"%@";
      }

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:v11, v19];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = [MEMORY[0x277CBEAD8] exceptionWithName:@"InvalidValueType" reason:@"Value must be NSString or NSNumber" userInfo:0];
        objc_exception_throw(v18);
      }

      v12 = [v9 stringValue];
    }

    v13 = v12;
    v14 = WeakRetained[1];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v7, v8, v12];
    [v14 addObject:v15];

    v16 = WeakRetained;
  }

  return WeakRetained;
}

id *__29__SKGQueryStringBuilder_init__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    v31 = v11;
    v32 = WeakRetained;
    v15 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v30 = v12;
    obj = v12;
    v16 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (!v16)
    {
      goto LABEL_17;
    }

    v17 = v16;
    v18 = *v35;
    while (1)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v34 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v20 isEqualToString:@"*"])
          {
            v21 = v20;
          }

          else
          {
            v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v20];
          }

          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = [v20 stringValue];
LABEL_13:
          v22 = v21;
          goto LABEL_15;
        }

        v22 = 0;
LABEL_15:
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v9, v10, v22];
        [v15 addObject:v23];
      }

      v17 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (!v17)
      {
LABEL_17:

        v24 = MEMORY[0x277CCACA8];
        v11 = v31;
        v25 = [v15 componentsJoinedByString:v31];
        v26 = [v24 stringWithFormat:@"(%@)", v25];

        v14 = v32;
        [v32[1] addObject:v26];
        v27 = v32;

        v12 = v30;
        break;
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];

  return v14;
}

void *__29__SKGQueryStringBuilder_init__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v23 = v5;
    if (![v6 count])
    {
      v22 = [MEMORY[0x277CBEAD8] exceptionWithName:@"InvalidValueType" reason:@"Values must be non-nil and contain at least 1 string" userInfo:0];
      objc_exception_throw(v22);
    }

    v8 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", *(*(&v24 + 1) + 8 * i)];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    v15 = WeakRetained[1];
    v16 = MEMORY[0x277CCACA8];
    v17 = [v8 componentsJoinedByString:{@", "}];
    v5 = v23;
    v18 = [v16 stringWithFormat:@"FieldMatch(%@, %@)", v23, v17];
    [v15 addObject:v18];

    v19 = WeakRetained;
  }

  v20 = *MEMORY[0x277D85DE8];

  return WeakRetained;
}

id *__29__SKGQueryStringBuilder_init__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] addObject:v3];
    v6 = v5;
  }

  return v5;
}

void *__29__SKGQueryStringBuilder_init__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (![v5 count])
    {
      v15 = [MEMORY[0x277CBEAD8] exceptionWithName:@"InvalidValueType" reason:@"Values must be non-nil and contain at least 1 string" userInfo:0];
      objc_exception_throw(v15);
    }

    if ([v5 count] == 1)
    {
      v8 = WeakRetained[1];
      v9 = [v5 firstObject];
      v10 = v8;
    }

    else
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [v5 componentsJoinedByString:v6];
      v9 = [v11 stringWithFormat:@"(%@)", v12];

      v10 = WeakRetained[1];
    }

    [v10 addObject:v9];

    v13 = WeakRetained;
  }

  return WeakRetained;
}

- (id)beginGroup
{
  queryComponents = [(SKGQueryStringBuilder *)self queryComponents];
  objc_msgSend(queryComponents, "addObject:", @"(");

  return self;
}

- (id)endGroup
{
  queryComponents = [(SKGQueryStringBuilder *)self queryComponents];
  [queryComponents addObject:@""]);

  return self;
}

- (id)and
{
  queryComponents = [(SKGQueryStringBuilder *)self queryComponents];
  [queryComponents addObject:@"&&"];

  return self;
}

- (id)or
{
  queryComponents = [(SKGQueryStringBuilder *)self queryComponents];
  [queryComponents addObject:@"||"];

  return self;
}

- (id)not
{
  queryComponents = [(SKGQueryStringBuilder *)self queryComponents];
  [queryComponents addObject:@"!"];

  return self;
}

- (id)build
{
  queryComponents = [(SKGQueryStringBuilder *)self queryComponents];
  v3 = [queryComponents componentsJoinedByString:&stru_2846CE8D8];

  return v3;
}

+ (id)queryForAttributesExist:(id)exist
{
  existCopy = exist;
  endGroup = objc_alloc_init(SKGQueryStringBuilder);
  if ([existCopy count])
  {
    beginGroup = [(SKGQueryStringBuilder *)endGroup beginGroup];

    if ([existCopy count])
    {
      v6 = 0;
      do
      {
        v7 = [existCopy objectAtIndexedSubscript:v6];
        withAttribute = [beginGroup withAttribute];
        v9 = (withAttribute)[2](withAttribute, v7, @"=", @"*");

        if (v6 != [existCopy count] - 1)
        {
          v10 = [v9 or];

          v9 = v10;
        }

        ++v6;
        beginGroup = v9;
      }

      while (v6 < [existCopy count]);
    }

    else
    {
      v9 = beginGroup;
    }

    endGroup = [v9 endGroup];

    build = [(SKGQueryStringBuilder *)endGroup build];
  }

  else
  {
    build = @"true";
  }

  return build;
}

+ (id)queryForAttributesAbsent:(id)absent
{
  absentCopy = absent;
  endGroup = objc_alloc_init(SKGQueryStringBuilder);
  if ([absentCopy count])
  {
    beginGroup = [(SKGQueryStringBuilder *)endGroup beginGroup];

    if ([absentCopy count])
    {
      v6 = 0;
      do
      {
        v7 = [absentCopy objectAtIndexedSubscript:v6];
        withAttribute = [beginGroup withAttribute];
        v9 = (withAttribute)[2](withAttribute, v7, @"!=", @"*");

        if (v6 != [absentCopy count] - 1)
        {
          v10 = [v9 and];

          v9 = v10;
        }

        ++v6;
        beginGroup = v9;
      }

      while (v6 < [absentCopy count]);
    }

    else
    {
      v9 = beginGroup;
    }

    endGroup = [v9 endGroup];

    build = [(SKGQueryStringBuilder *)endGroup build];
  }

  else
  {
    build = @"false";
  }

  return build;
}

@end
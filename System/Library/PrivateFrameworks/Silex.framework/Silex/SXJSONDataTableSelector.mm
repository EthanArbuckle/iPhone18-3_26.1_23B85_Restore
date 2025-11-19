@interface SXJSONDataTableSelector
- (NSString)description;
- (SXJSONDataTableSelector)initWithJSONData:(id)a3 andVersion:(id)a4;
- (SXJSONDataTableSelector)initWithJSONObject:(id)a3 andVersion:(id)a4;
- (id)propertyList;
- (unint64_t)numberOfConditions;
- (unint64_t)selectorBooleanForValue:(id)a3;
- (unint64_t)selectorWeight;
- (unint64_t)weightForSelectorKey:(id)a3;
@end

@implementation SXJSONDataTableSelector

- (SXJSONDataTableSelector)initWithJSONData:(id)a3 andVersion:(id)a4
{
  v7.receiver = self;
  v7.super_class = SXJSONDataTableSelector;
  v4 = [(SXJSONObject *)&v7 initWithJSONData:a3 andVersion:a4];
  v5 = v4;
  if (v4)
  {
    [(SXJSONDataTableSelector *)v4 commonInit];
  }

  return v5;
}

- (SXJSONDataTableSelector)initWithJSONObject:(id)a3 andVersion:(id)a4
{
  v7.receiver = self;
  v7.super_class = SXJSONDataTableSelector;
  v4 = [(SXJSONObject *)&v7 initWithJSONObject:a3 andVersion:a4];
  v5 = v4;
  if (v4)
  {
    [(SXJSONDataTableSelector *)v4 commonInit];
  }

  return v5;
}

- (unint64_t)selectorBooleanForValue:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v3 BOOLValue])
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)numberOfConditions
{
  v20 = *MEMORY[0x1E69E9840];
  numberOfConditions = self->_numberOfConditions;
  if (numberOfConditions == -1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [(SXJSONDataTableSelector *)self propertyList];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      numberOfConditions = 0;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [objc_opt_class() jsonPropertyNameForObjCPropertyName:*(*(&v15 + 1) + 8 * i)];
          v10 = [(SXJSONObject *)self jsonDictionary];
          v11 = [v10 objectForKey:v9];

          v12 = [MEMORY[0x1E695DFB0] null];

          if (v11)
          {
            v13 = v11 == v12;
          }

          else
          {
            v13 = 1;
          }

          if (!v13)
          {
            ++numberOfConditions;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    else
    {
      numberOfConditions = 0;
    }

    self->_numberOfConditions = numberOfConditions;
  }

  return numberOfConditions;
}

- (unint64_t)weightForSelectorKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"rowIndex"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"columnIndex"))
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"descriptor"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)selectorWeight
{
  v19 = *MEMORY[0x1E69E9840];
  result = self->_selectorWeight;
  if (result == -1)
  {
    v4 = [(SXJSONDataTableSelector *)self propertyList];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [(SXJSONObject *)self jsonDictionary];
          v12 = [v11 valueForKey:v10];

          if (v12)
          {
            v13 = [MEMORY[0x1E695DFB0] null];

            if (v12 != v13)
            {
              v7 += [(SXJSONDataTableSelector *)self weightForSelectorKey:v10];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    self->_selectorWeight = v7;

    return self->_selectorWeight;
  }

  return result;
}

- (id)propertyList
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  i = [__propertyList objectForKey:v3];
  if (!i)
  {
    v5 = objc_opt_class();
    for (i = [MEMORY[0x1E695DF70] array];
    {
      outCount = 0;
      v6 = class_copyPropertyList(v5, &outCount);
      if (outCount)
      {
        for (j = 0; j < outCount; ++j)
        {
          v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", property_getName(v6[j])];
          [i addObject:v8];
        }
      }

      free(v6);
    }

    v9 = [__propertyList mutableCopy];
    if (!v9)
    {
      v9 = [MEMORY[0x1E695DF90] dictionary];
    }

    [v9 setObject:i forKey:v3];
    v10 = __propertyList;
    __propertyList = v9;
  }

  return i;
}

- (NSString)description
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(SXJSONDataTableSelector *)self propertyList];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    v7 = &stru_1F532F6C0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [(SXJSONObject *)self jsonDictionary];
        v11 = [v10 valueForKey:v9];

        if (v11)
        {
          v12 = [MEMORY[0x1E695DFB0] null];

          if (v11 != v12)
          {
            v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@: %@", v9, v11];;
            v14 = [(__CFString *)v7 stringByAppendingString:v13];

            v7 = v14;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = &stru_1F532F6C0;
  }

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  if ([(__CFString *)v7 length])
  {
    v16 = [v15 stringByAppendingString:v7];

    v15 = v16;
  }

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@" weight: %d", -[SXJSONDataTableSelector selectorWeight](self, "selectorWeight")];;
  v18 = [v15 stringByAppendingString:v17];

  v19 = [v18 stringByAppendingString:@">"];

  return v19;
}

@end
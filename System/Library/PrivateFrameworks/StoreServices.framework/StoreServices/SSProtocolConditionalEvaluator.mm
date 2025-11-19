@interface SSProtocolConditionalEvaluator
+ (id)defaultConditionalContext;
+ (void)setDefaultConditionalContext:(id)a3;
- (BOOL)_checkConditions:(id)a3 withOperator:(id)a4;
- (SSProtocolConditionalEvaluator)initWithDictionary:(id)a3 conditionalContext:(id)a4;
- (id)_arrayByEvaluatingChildrenOfArray:(id)a3 withForcedValue:(int64_t)a4;
- (id)_dictionaryByEvaluatingChildrenOfDictionary:(id)a3 withForcedValue:(int64_t)a4;
- (id)_dictionaryByEvaluatingDictionary:(id)a3 withForcedValue:(int64_t)a4;
- (id)_dictionaryByEvaluatingWithForcedValue:(int64_t)a3;
- (int)_logicalOperatorForString:(id)a3;
- (void)dealloc;
@end

@implementation SSProtocolConditionalEvaluator

- (SSProtocolConditionalEvaluator)initWithDictionary:(id)a3 conditionalContext:(id)a4
{
  v8.receiver = self;
  v8.super_class = SSProtocolConditionalEvaluator;
  v6 = [(SSProtocolConditionalEvaluator *)&v8 init];
  if (v6)
  {
    v6->_context = [a4 copy];
    v6->_dictionary = [a3 copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSProtocolConditionalEvaluator;
  [(SSProtocolConditionalEvaluator *)&v3 dealloc];
}

+ (id)defaultConditionalContext
{
  pthread_mutex_lock(&__DefaultContextLock);
  v2 = __DefaultContext;
  pthread_mutex_unlock(&__DefaultContextLock);
  return v2;
}

+ (void)setDefaultConditionalContext:(id)a3
{
  pthread_mutex_lock(&__DefaultContextLock);
  if (__DefaultContext != a3)
  {

    __DefaultContext = [a3 copy];
  }

  pthread_mutex_unlock(&__DefaultContextLock);
}

- (id)_arrayByEvaluatingChildrenOfArray:(id)a3 withForcedValue:(int64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [(SSProtocolConditionalEvaluator *)self _dictionaryByEvaluatingDictionary:v12 withForcedValue:a4];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          v13 = [(SSProtocolConditionalEvaluator *)self _arrayByEvaluatingChildrenOfArray:v12 withForcedValue:a4];
        }

        v12 = v13;
LABEL_11:
        [v7 addObject:v12];
        ++v11;
      }

      while (v9 != v11);
      v9 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v7;
}

- (BOOL)_checkConditions:(id)a3 withOperator:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = [(SSProtocolConditionalEvaluator *)self _logicalOperatorForString:a4];
  if ([a3 count])
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  context = self->_context;
  if (!context)
  {
    context = [objc_opt_class() defaultConditionalContext];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(a3);
        }

        v14 = [SSProtocolCondition newConditionWithDictionary:*(*(&v17 + 1) + 8 * v13)];
        v15 = v14;
        if (v14)
        {
          if (v6 == 1)
          {
            if (v8)
            {
              v8 = 1;
              goto LABEL_22;
            }
          }

          else
          {
            if (v6)
            {
              goto LABEL_22;
            }

            if ((v8 & 1) == 0)
            {
              v8 = 0;
              goto LABEL_22;
            }
          }

          v8 = [v14 evaluateWithContext:context];
        }

LABEL_22:

        ++v13;
      }

      while (v11 != v13);
      v11 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v8 & 1;
}

- (id)_dictionaryByEvaluatingChildrenOfDictionary:(id)a3 withForcedValue:(int64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [a3 objectForKey:v12];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [(SSProtocolConditionalEvaluator *)self _dictionaryByEvaluatingDictionary:v13 withForcedValue:a4];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          v14 = [(SSProtocolConditionalEvaluator *)self _arrayByEvaluatingChildrenOfArray:v13 withForcedValue:a4];
        }

        v13 = v14;
LABEL_11:
        [v7 setObject:v13 forKey:v12];
      }

      v9 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v7;
}

- (id)_dictionaryByEvaluatingDictionary:(id)a3 withForcedValue:(int64_t)a4
{
  v5 = [[SSProtocolConditionalEvaluator alloc] initWithDictionary:a3 conditionalContext:self->_context];
  v6 = [(SSProtocolConditionalEvaluator *)v5 _dictionaryByEvaluatingWithForcedValue:a4];

  if (v6)
  {
    return v6;
  }

  v8 = MEMORY[0x1E695DF20];

  return [v8 dictionary];
}

- (id)_dictionaryByEvaluatingWithForcedValue:(int64_t)a3
{
  v5 = [(NSDictionary *)self->_dictionary objectForKey:@"conditions"];
  v6 = [(NSDictionary *)self->_dictionary objectForKey:@"operator"];
  if (!v5 || ((v7 = v6, [v5 count] >= 2) ? (v8 = v7 == 0) : (v8 = 0), v8))
  {
    dictionary = self->_dictionary;
  }

  else
  {
    if (a3 == 1 || a3 == -1 && [(SSProtocolConditionalEvaluator *)self _checkConditions:v5 withOperator:v7])
    {
      v9 = self->_dictionary;
      v10 = @"content";
    }

    else
    {
      v9 = self->_dictionary;
      v10 = @"alt-content";
    }

    dictionary = [(NSDictionary *)v9 objectForKey:v10];
  }

  v12 = dictionary;
  if (!v12 || (v13 = v12, v12 != self->_dictionary) && (v14 = [[SSProtocolConditionalEvaluator alloc] initWithDictionary:v12 conditionalContext:self->_context], v13 = [(SSProtocolConditionalEvaluator *)v14 _dictionaryByEvaluatingWithForcedValue:a3], v14, !v13))
  {
    v13 = self->_dictionary;
  }

  return [(SSProtocolConditionalEvaluator *)self _dictionaryByEvaluatingChildrenOfDictionary:v13 withForcedValue:a3];
}

- (int)_logicalOperatorForString:(id)a3
{
  v4 = 0;
  for (i = 1; ; i = 0)
  {
    v6 = i;
    if ([a3 isEqualToString:__LogicalOperatorNames[v4]])
    {
      break;
    }

    v4 = 1;
    if ((v6 & 1) == 0)
    {
      LODWORD(v4) = 0;
      return v4;
    }
  }

  return v4;
}

@end
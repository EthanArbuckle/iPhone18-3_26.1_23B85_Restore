@interface SSProtocolConditionalEvaluator
+ (id)defaultConditionalContext;
+ (void)setDefaultConditionalContext:(id)context;
- (BOOL)_checkConditions:(id)conditions withOperator:(id)operator;
- (SSProtocolConditionalEvaluator)initWithDictionary:(id)dictionary conditionalContext:(id)context;
- (id)_arrayByEvaluatingChildrenOfArray:(id)array withForcedValue:(int64_t)value;
- (id)_dictionaryByEvaluatingChildrenOfDictionary:(id)dictionary withForcedValue:(int64_t)value;
- (id)_dictionaryByEvaluatingDictionary:(id)dictionary withForcedValue:(int64_t)value;
- (id)_dictionaryByEvaluatingWithForcedValue:(int64_t)value;
- (int)_logicalOperatorForString:(id)string;
- (void)dealloc;
@end

@implementation SSProtocolConditionalEvaluator

- (SSProtocolConditionalEvaluator)initWithDictionary:(id)dictionary conditionalContext:(id)context
{
  v8.receiver = self;
  v8.super_class = SSProtocolConditionalEvaluator;
  v6 = [(SSProtocolConditionalEvaluator *)&v8 init];
  if (v6)
  {
    v6->_context = [context copy];
    v6->_dictionary = [dictionary copy];
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

+ (void)setDefaultConditionalContext:(id)context
{
  pthread_mutex_lock(&__DefaultContextLock);
  if (__DefaultContext != context)
  {

    __DefaultContext = [context copy];
  }

  pthread_mutex_unlock(&__DefaultContextLock);
}

- (id)_arrayByEvaluatingChildrenOfArray:(id)array withForcedValue:(int64_t)value
{
  v20 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [array countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(array);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [(SSProtocolConditionalEvaluator *)self _dictionaryByEvaluatingDictionary:v12 withForcedValue:value];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          v13 = [(SSProtocolConditionalEvaluator *)self _arrayByEvaluatingChildrenOfArray:v12 withForcedValue:value];
        }

        v12 = v13;
LABEL_11:
        [array addObject:v12];
        ++v11;
      }

      while (v9 != v11);
      v9 = [array countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return array;
}

- (BOOL)_checkConditions:(id)conditions withOperator:(id)operator
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = [(SSProtocolConditionalEvaluator *)self _logicalOperatorForString:operator];
  if ([conditions count])
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
  v10 = [conditions countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(conditions);
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
      v11 = [conditions countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v8 & 1;
}

- (id)_dictionaryByEvaluatingChildrenOfDictionary:(id)dictionary withForcedValue:(int64_t)value
{
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [dictionary countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(dictionary);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [dictionary objectForKey:v12];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [(SSProtocolConditionalEvaluator *)self _dictionaryByEvaluatingDictionary:v13 withForcedValue:value];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          v14 = [(SSProtocolConditionalEvaluator *)self _arrayByEvaluatingChildrenOfArray:v13 withForcedValue:value];
        }

        v13 = v14;
LABEL_11:
        [dictionary setObject:v13 forKey:v12];
      }

      v9 = [dictionary countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return dictionary;
}

- (id)_dictionaryByEvaluatingDictionary:(id)dictionary withForcedValue:(int64_t)value
{
  v5 = [[SSProtocolConditionalEvaluator alloc] initWithDictionary:dictionary conditionalContext:self->_context];
  v6 = [(SSProtocolConditionalEvaluator *)v5 _dictionaryByEvaluatingWithForcedValue:value];

  if (v6)
  {
    return v6;
  }

  v8 = MEMORY[0x1E695DF20];

  return [v8 dictionary];
}

- (id)_dictionaryByEvaluatingWithForcedValue:(int64_t)value
{
  v5 = [(NSDictionary *)self->_dictionary objectForKey:@"conditions"];
  v6 = [(NSDictionary *)self->_dictionary objectForKey:@"operator"];
  if (!v5 || ((v7 = v6, [v5 count] >= 2) ? (v8 = v7 == 0) : (v8 = 0), v8))
  {
    dictionary = self->_dictionary;
  }

  else
  {
    if (value == 1 || value == -1 && [(SSProtocolConditionalEvaluator *)self _checkConditions:v5 withOperator:v7])
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
  if (!v12 || (v13 = v12, v12 != self->_dictionary) && (v14 = [[SSProtocolConditionalEvaluator alloc] initWithDictionary:v12 conditionalContext:self->_context], v13 = [(SSProtocolConditionalEvaluator *)v14 _dictionaryByEvaluatingWithForcedValue:value], v14, !v13))
  {
    v13 = self->_dictionary;
  }

  return [(SSProtocolConditionalEvaluator *)self _dictionaryByEvaluatingChildrenOfDictionary:v13 withForcedValue:value];
}

- (int)_logicalOperatorForString:(id)string
{
  v4 = 0;
  for (i = 1; ; i = 0)
  {
    v6 = i;
    if ([string isEqualToString:__LogicalOperatorNames[v4]])
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
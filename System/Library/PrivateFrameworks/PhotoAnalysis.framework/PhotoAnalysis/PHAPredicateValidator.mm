@interface PHAPredicateValidator
- (BOOL)validateExpression:(id)expression error:(id *)error;
- (BOOL)validatePredicate:(id)predicate error:(id *)error;
- (BOOL)validateValue:(id)value error:(id *)error;
@end

@implementation PHAPredicateValidator

- (BOOL)validateValue:(id)value error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = valueCopy;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = *v25;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v7);
          }

          if (![(PHAPredicateValidator *)self validateValue:*(*(&v24 + 1) + 8 * v10) error:error])
          {
            v11 = 0;
            goto LABEL_16;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = 1;
LABEL_16:
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 1;
      v14 = 0;
      v15 = &v14;
      v16 = 0x3032000000;
      v17 = __Block_byref_object_copy__1105;
      v18 = __Block_byref_object_dispose__1106;
      v19 = 0;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __45__PHAPredicateValidator_validateValue_error___block_invoke;
      v13[3] = &unk_2788B18C8;
      v13[4] = self;
      v13[5] = &v20;
      v13[6] = &v14;
      [valueCopy enumerateKeysAndObjectsUsingBlock:v13];
      if (error)
      {
        *error = v15[5];
      }

      v11 = *(v21 + 24);
      _Block_object_dispose(&v14, 8);

      _Block_object_dispose(&v20, 8);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v11 = 1;
      }

      else if (error)
      {
        [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:11];
        *error = v11 = 0;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  return v11 & 1;
}

void __45__PHAPredicateValidator_validateValue_error___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = a1[4];
  v16 = 0;
  v9 = [v8 validateValue:a2 error:&v16];
  v10 = v16;
  if (v9)
  {
    v11 = a1[4];
    v15 = v10;
    LOBYTE(v9) = [v11 validateValue:v7 error:&v15];
    v12 = v15;

    v10 = v12;
  }

  *(*(a1[5] + 8) + 24) = v9;
  *a4 = *(*(a1[5] + 8) + 24) ^ 1;
  v13 = *(a1[6] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v10;
}

- (BOOL)validateExpression:(id)expression error:(id *)error
{
  expressionCopy = expression;
  expressionType = [expressionCopy expressionType];
  if (expressionType != 3)
  {
    if (expressionType)
    {
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:11];
      }
    }

    else
    {
      constantValue = [expressionCopy constantValue];
      v9 = [(PHAPredicateValidator *)self validateValue:constantValue error:error];

      if (v9)
      {
        v10 = 1;
        goto LABEL_12;
      }
    }

    v10 = 0;
    goto LABEL_12;
  }

  keyPath = [expressionCopy keyPath];
  if (keyPath)
  {
    allowedKeyPaths = [(PHAPredicateValidator *)self allowedKeyPaths];
    keyPath2 = [expressionCopy keyPath];
    v10 = [allowedKeyPaths containsObject:keyPath2];
  }

  else
  {
    v10 = 0;
  }

LABEL_12:
  return v10;
}

- (BOOL)validatePredicate:(id)predicate error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    subpredicates = [predicateCopy subpredicates];
    v8 = [subpredicates countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(subpredicates);
          }

          if (![(PHAPredicateValidator *)self validatePredicate:*(*(&v16 + 1) + 8 * i) error:error])
          {
            v12 = 0;
            goto LABEL_19;
          }
        }

        v9 = [subpredicates countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v12 = 1;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    subpredicates = predicateCopy;
    leftExpression = [subpredicates leftExpression];
    if ([(PHAPredicateValidator *)self validateExpression:leftExpression error:error])
    {
      rightExpression = [subpredicates rightExpression];
      v12 = [(PHAPredicateValidator *)self validateExpression:rightExpression error:error];
    }

    else
    {
      v12 = 0;
    }

LABEL_19:
    goto LABEL_20;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:11];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_20:

  return v12;
}

@end
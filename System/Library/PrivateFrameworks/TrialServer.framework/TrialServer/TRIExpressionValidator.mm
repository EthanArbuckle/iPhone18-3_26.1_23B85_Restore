@interface TRIExpressionValidator
- (BOOL)_validSystemCovariateFunction:(id)function;
- (BOOL)validateExpression:(id)expression outError:(id *)error;
- (BOOL)validatePredicate:(id)predicate outError:(id *)error;
- (id)_validationErrorWithDetails:(id)details;
@end

@implementation TRIExpressionValidator

- (id)_validationErrorWithDetails:(id)details
{
  v17 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  detailsCopy = @"Expression validation error";
  if (detailsCopy)
  {
    detailsCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ -- %@", @"Expression validation error", detailsCopy];
  }

  v5 = TRILogCategory_Server();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v16 = detailsCopy;
    _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v13 = *MEMORY[0x277CCA450];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [mainBundle localizedStringForKey:detailsCopy value:&stru_287FA0430 table:0];
  v14 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9 = [v8 mutableCopy];

  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"triald" code:1 userInfo:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)_validSystemCovariateFunction:(id)function
{
  v3 = qword_281597870;
  functionCopy = function;
  if (v3 != -1)
  {
    dispatch_once(&qword_281597870, &__block_literal_global_46);
  }

  v5 = [_MergedGlobals_39 containsObject:functionCopy];

  return v5;
}

void __56__TRIExpressionValidator__validSystemCovariateFunction___block_invoke()
{
  v2 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_287FC50B0];
  [v2 addObject:@"tri_checkAIUseCaseEnabled:"];
  v0 = [v2 copy];
  v1 = _MergedGlobals_39;
  _MergedGlobals_39 = v0;
}

- (BOOL)validateExpression:(id)expression outError:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  expressionCopy = expression;
  if (!expressionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExpressionValidator.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"expression != nil"}];
  }

  expressionType = [expressionCopy expressionType];
  if (!expressionType)
  {
    goto LABEL_34;
  }

  if (expressionType == 20)
  {
    predicate = [expressionCopy predicate];
    if (![(TRIExpressionValidator *)self validatePredicate:predicate outError:error])
    {
      goto LABEL_41;
    }

    trueExpression = [expressionCopy trueExpression];
    if (![(TRIExpressionValidator *)self validateExpression:trueExpression outError:error])
    {
LABEL_40:

      goto LABEL_41;
    }

    falseExpression = [expressionCopy falseExpression];
    LODWORD(error) = [(TRIExpressionValidator *)self validateExpression:falseExpression outError:error];

    if (!error)
    {
      goto LABEL_43;
    }

LABEL_34:
    LOBYTE(error) = 1;
    goto LABEL_43;
  }

  if (expressionType != 4)
  {
    goto LABEL_34;
  }

  function = [expressionCopy function];
  v10 = [function isEqualToString:@"castObject:toType:"];

  if (!v10)
  {
    operand = [expressionCopy operand];
    v18 = [operand description];
    v19 = [v18 isEqualToString:@"SystemCovariates"];

    if (v19)
    {
      predicate = [expressionCopy function];
      if (![(TRIExpressionValidator *)self _validSystemCovariateFunction:predicate])
      {
        v20 = TRILogCategory_Server();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v45 = predicate;
          v46 = 2112;
          v47 = expressionCopy;
          v21 = "%@ in expression %@ is not an allowed function for SystemCovariates";
LABEL_37:
          _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0x16u);
          goto LABEL_38;
        }

        goto LABEL_38;
      }
    }

    else
    {
      operand2 = [expressionCopy operand];
      v23 = [operand2 description];
      v24 = [v23 isEqualToString:@"UserCovariates"];

      if (!v24)
      {
        goto LABEL_22;
      }

      predicate = [expressionCopy function];
      if (![(TRIExpressionValidator *)self _validUserCovariateFunction:predicate])
      {
        v20 = TRILogCategory_Server();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v45 = predicate;
          v46 = 2112;
          v47 = expressionCopy;
          v21 = "%@ in expression %@ is not an allowed function for UserCovariates";
          goto LABEL_37;
        }

LABEL_38:

        if (!error)
        {
          goto LABEL_41;
        }

        trueExpression = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Function %@ in expression %@ is not allowed", predicate, expressionCopy];
        v34 = [(TRIExpressionValidator *)self _validationErrorWithDetails:trueExpression];
        v35 = *error;
        *error = v34;

        goto LABEL_40;
      }
    }

LABEL_22:
    operand3 = [expressionCopy operand];
    expressionType2 = [operand3 expressionType];

    if ((expressionType2 & 0xFFFFFFFFFFFFFFEFLL) == 4)
    {
      operand4 = [expressionCopy operand];
      v28 = [(TRIExpressionValidator *)self validateExpression:operand4 outError:error];

      if (!v28)
      {
        goto LABEL_42;
      }
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    predicate = [expressionCopy arguments];
    v29 = [predicate countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v40;
LABEL_26:
      v32 = 0;
      while (1)
      {
        if (*v40 != v31)
        {
          objc_enumerationMutation(predicate);
        }

        v33 = *(*(&v39 + 1) + 8 * v32);
        if (([v33 expressionType] & 0xFFFFFFFFFFFFFFEFLL) == 4 && !-[TRIExpressionValidator validateExpression:outError:](self, "validateExpression:outError:", v33, error))
        {
          goto LABEL_41;
        }

        if (v30 == ++v32)
        {
          v30 = [predicate countByEnumeratingWithState:&v39 objects:v43 count:16];
          if (v30)
          {
            goto LABEL_26;
          }

          break;
        }
      }
    }

    goto LABEL_34;
  }

  v11 = TRILogCategory_Server();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = expressionCopy;
    _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "cast expression %@ is not an allowed expression", buf, 0xCu);
  }

  if (error)
  {
    predicate = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"cast is not allowed in expression %@ ", expressionCopy];
    v13 = [(TRIExpressionValidator *)self _validationErrorWithDetails:predicate];
    v14 = *error;
    *error = v13;

LABEL_41:
LABEL_42:
    LOBYTE(error) = 0;
  }

LABEL_43:

  v36 = *MEMORY[0x277D85DE8];
  return error;
}

- (BOOL)validatePredicate:(id)predicate outError:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  if (!predicateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExpressionValidator.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"predicate != nil"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    subpredicates = [predicateCopy subpredicates];
    v9 = [subpredicates countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
LABEL_6:
      v12 = 0;
      while (1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(subpredicates);
        }

        if (![(TRIExpressionValidator *)self validatePredicate:*(*(&v19 + 1) + 8 * v12) outError:error])
        {
          goto LABEL_18;
        }

        if (v10 == ++v12)
        {
          v10 = [subpredicates countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v10)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

LABEL_16:
    LOBYTE(v15) = 1;
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  subpredicates = predicateCopy;
  leftExpression = [subpredicates leftExpression];
  if (![(TRIExpressionValidator *)self validateExpression:leftExpression outError:error])
  {

LABEL_18:
    LOBYTE(v15) = 0;
    goto LABEL_19;
  }

  rightExpression = [subpredicates rightExpression];
  v15 = [(TRIExpressionValidator *)self validateExpression:rightExpression outError:error];

  if (v15)
  {
    goto LABEL_16;
  }

LABEL_19:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

@end
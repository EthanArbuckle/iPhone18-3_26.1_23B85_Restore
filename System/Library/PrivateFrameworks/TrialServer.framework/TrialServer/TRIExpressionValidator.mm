@interface TRIExpressionValidator
- (BOOL)_validSystemCovariateFunction:(id)a3;
- (BOOL)validateExpression:(id)a3 outError:(id *)a4;
- (BOOL)validatePredicate:(id)a3 outError:(id *)a4;
- (id)_validationErrorWithDetails:(id)a3;
@end

@implementation TRIExpressionValidator

- (id)_validationErrorWithDetails:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = @"Expression validation error";
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ -- %@", @"Expression validation error", v3];
  }

  v5 = TRILogCategory_Server();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v16 = v4;
    _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v13 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 localizedStringForKey:v4 value:&stru_287FA0430 table:0];
  v14 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9 = [v8 mutableCopy];

  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"triald" code:1 userInfo:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)_validSystemCovariateFunction:(id)a3
{
  v3 = qword_281597870;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_281597870, &__block_literal_global_46);
  }

  v5 = [_MergedGlobals_39 containsObject:v4];

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

- (BOOL)validateExpression:(id)a3 outError:(id *)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v38 = [MEMORY[0x277CCA890] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"TRIExpressionValidator.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"expression != nil"}];
  }

  v8 = [v7 expressionType];
  if (!v8)
  {
    goto LABEL_34;
  }

  if (v8 == 20)
  {
    v12 = [v7 predicate];
    if (![(TRIExpressionValidator *)self validatePredicate:v12 outError:a4])
    {
      goto LABEL_41;
    }

    v15 = [v7 trueExpression];
    if (![(TRIExpressionValidator *)self validateExpression:v15 outError:a4])
    {
LABEL_40:

      goto LABEL_41;
    }

    v16 = [v7 falseExpression];
    LODWORD(a4) = [(TRIExpressionValidator *)self validateExpression:v16 outError:a4];

    if (!a4)
    {
      goto LABEL_43;
    }

LABEL_34:
    LOBYTE(a4) = 1;
    goto LABEL_43;
  }

  if (v8 != 4)
  {
    goto LABEL_34;
  }

  v9 = [v7 function];
  v10 = [v9 isEqualToString:@"castObject:toType:"];

  if (!v10)
  {
    v17 = [v7 operand];
    v18 = [v17 description];
    v19 = [v18 isEqualToString:@"SystemCovariates"];

    if (v19)
    {
      v12 = [v7 function];
      if (![(TRIExpressionValidator *)self _validSystemCovariateFunction:v12])
      {
        v20 = TRILogCategory_Server();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v45 = v12;
          v46 = 2112;
          v47 = v7;
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
      v22 = [v7 operand];
      v23 = [v22 description];
      v24 = [v23 isEqualToString:@"UserCovariates"];

      if (!v24)
      {
        goto LABEL_22;
      }

      v12 = [v7 function];
      if (![(TRIExpressionValidator *)self _validUserCovariateFunction:v12])
      {
        v20 = TRILogCategory_Server();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v45 = v12;
          v46 = 2112;
          v47 = v7;
          v21 = "%@ in expression %@ is not an allowed function for UserCovariates";
          goto LABEL_37;
        }

LABEL_38:

        if (!a4)
        {
          goto LABEL_41;
        }

        v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Function %@ in expression %@ is not allowed", v12, v7];
        v34 = [(TRIExpressionValidator *)self _validationErrorWithDetails:v15];
        v35 = *a4;
        *a4 = v34;

        goto LABEL_40;
      }
    }

LABEL_22:
    v25 = [v7 operand];
    v26 = [v25 expressionType];

    if ((v26 & 0xFFFFFFFFFFFFFFEFLL) == 4)
    {
      v27 = [v7 operand];
      v28 = [(TRIExpressionValidator *)self validateExpression:v27 outError:a4];

      if (!v28)
      {
        goto LABEL_42;
      }
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v12 = [v7 arguments];
    v29 = [v12 countByEnumeratingWithState:&v39 objects:v43 count:16];
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
          objc_enumerationMutation(v12);
        }

        v33 = *(*(&v39 + 1) + 8 * v32);
        if (([v33 expressionType] & 0xFFFFFFFFFFFFFFEFLL) == 4 && !-[TRIExpressionValidator validateExpression:outError:](self, "validateExpression:outError:", v33, a4))
        {
          goto LABEL_41;
        }

        if (v30 == ++v32)
        {
          v30 = [v12 countByEnumeratingWithState:&v39 objects:v43 count:16];
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
    v45 = v7;
    _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "cast expression %@ is not an allowed expression", buf, 0xCu);
  }

  if (a4)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"cast is not allowed in expression %@ ", v7];
    v13 = [(TRIExpressionValidator *)self _validationErrorWithDetails:v12];
    v14 = *a4;
    *a4 = v13;

LABEL_41:
LABEL_42:
    LOBYTE(a4) = 0;
  }

LABEL_43:

  v36 = *MEMORY[0x277D85DE8];
  return a4;
}

- (BOOL)validatePredicate:(id)a3 outError:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"TRIExpressionValidator.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"predicate != nil"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v7 subpredicates];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v8);
        }

        if (![(TRIExpressionValidator *)self validatePredicate:*(*(&v19 + 1) + 8 * v12) outError:a4])
        {
          goto LABEL_18;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

  v8 = v7;
  v13 = [v8 leftExpression];
  if (![(TRIExpressionValidator *)self validateExpression:v13 outError:a4])
  {

LABEL_18:
    LOBYTE(v15) = 0;
    goto LABEL_19;
  }

  v14 = [v8 rightExpression];
  v15 = [(TRIExpressionValidator *)self validateExpression:v14 outError:a4];

  if (v15)
  {
    goto LABEL_16;
  }

LABEL_19:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

@end
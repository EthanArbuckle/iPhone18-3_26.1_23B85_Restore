@interface WFPaymentMethodParameter
- (BOOL)parameterStateIsValid:(id)a3;
@end

@implementation WFPaymentMethodParameter

- (BOOL)parameterStateIsValid:(id)a3
{
  v5 = a3;
  v6 = [(WFDynamicEnumerationParameter *)self possibleStates];
  if (!v6)
  {
    v3 = [(WFDynamicEnumerationParameter *)self possibleStatesLoadingError];
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  v7 = [v5 value];

  if (v6)
  {

    if (v7)
    {
      goto LABEL_5;
    }

LABEL_11:
    v12 = 1;
    goto LABEL_15;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_5:
  v8 = [(WFDynamicEnumerationParameter *)self possibleStates];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [v5 value];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = v11;

    v14 = [(WFDynamicEnumerationParameter *)self possibleStates];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__WFPaymentMethodParameter_parameterStateIsValid___block_invoke;
    v17[3] = &unk_1E837AAC8;
    v18 = v13;
    v15 = v13;
    v12 = [v14 indexOfObjectPassingTest:v17] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = 0;
  }

LABEL_15:

  return v12;
}

uint64_t __50__WFPaymentMethodParameter_parameterStateIsValid___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [*(a1 + 32) type];
  if (v6 == [v5 type])
  {
    v7 = [*(a1 + 32) name];
    v8 = [v5 name];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      v12 = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
LABEL_20:

LABEL_21:
        goto LABEL_22;
      }

      v12 = [v9 isEqualToString:v10];

      if (!v12)
      {
        goto LABEL_21;
      }
    }

    v15 = [*(a1 + 32) identificationHint];
    v16 = [v5 identificationHint];
    v14 = v15;
    v17 = v16;
    v13 = v17;
    if (v14 == v17)
    {
      v12 = 1;
    }

    else
    {
      v12 = 0;
      if (v14 && v17)
      {
        v12 = [v14 isEqualToString:v17];
      }
    }

    goto LABEL_20;
  }

  v12 = 0;
LABEL_22:

  return v12;
}

@end
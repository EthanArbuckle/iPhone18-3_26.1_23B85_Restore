@interface WFPaymentMethodParameter
- (BOOL)parameterStateIsValid:(id)valid;
@end

@implementation WFPaymentMethodParameter

- (BOOL)parameterStateIsValid:(id)valid
{
  validCopy = valid;
  possibleStates = [(WFDynamicEnumerationParameter *)self possibleStates];
  if (!possibleStates)
  {
    possibleStatesLoadingError = [(WFDynamicEnumerationParameter *)self possibleStatesLoadingError];
    if (!possibleStatesLoadingError)
    {
      goto LABEL_11;
    }
  }

  value = [validCopy value];

  if (possibleStates)
  {

    if (value)
    {
      goto LABEL_5;
    }

LABEL_11:
    v12 = 1;
    goto LABEL_15;
  }

  if (!value)
  {
    goto LABEL_11;
  }

LABEL_5:
  possibleStates2 = [(WFDynamicEnumerationParameter *)self possibleStates];
  v9 = [possibleStates2 count];

  if (v9)
  {
    value2 = [validCopy value];
    if (value2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = value2;
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

    possibleStates3 = [(WFDynamicEnumerationParameter *)self possibleStates];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__WFPaymentMethodParameter_parameterStateIsValid___block_invoke;
    v17[3] = &unk_1E837AAC8;
    v18 = v13;
    v15 = v13;
    v12 = [possibleStates3 indexOfObjectPassingTest:v17] != 0x7FFFFFFFFFFFFFFFLL;
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
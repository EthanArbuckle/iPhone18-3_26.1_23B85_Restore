@interface PKPaymentPassDetailAutoReloadSectionController
+ (id)autoReloadAmountForPass:(id)pass action:(id)action;
+ (id)autoReloadThresholdForPass:(id)pass action:(id)action;
+ (id)autoTopUpActionForPass:(id)pass;
+ (id)enteredValueActionForPass:(id)pass;
+ (id)externalActionContentForPass:(id)pass;
@end

@implementation PKPaymentPassDetailAutoReloadSectionController

+ (id)autoTopUpActionForPass:(id)pass
{
  v58 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  if ([passCopy activationState] && objc_msgSend(passCopy, "activationState") != 2)
  {
    v31 = 0;
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    balanceFields = [passCopy balanceFields];
    v5 = [balanceFields countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v52;
      v42 = *MEMORY[0x1E69BC060];
      v39 = balanceFields;
      v40 = passCopy;
      v33 = *v52;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v52 != v7)
          {
            objc_enumerationMutation(balanceFields);
          }

          foreignReferenceIdentifiers = [*(*(&v51 + 1) + 8 * i) foreignReferenceIdentifiers];
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v10 = foreignReferenceIdentifiers;
          v11 = [v10 countByEnumeratingWithState:&v47 objects:v56 count:16];
          if (v11)
          {
            v12 = *v48;
            v34 = i;
            v35 = v6;
            v41 = v10;
            v36 = *v48;
            do
            {
              v13 = 0;
              v37 = v11;
              do
              {
                if (*v48 != v12)
                {
                  objc_enumerationMutation(v10);
                }

                v38 = v13;
                v14 = *(*(&v47 + 1) + 8 * v13);
                v43 = 0u;
                v44 = 0u;
                v45 = 0u;
                v46 = 0u;
                availableActions = [passCopy availableActions];
                v16 = [availableActions countByEnumeratingWithState:&v43 objects:v55 count:16];
                if (v16)
                {
                  v17 = v16;
                  v18 = *v44;
                  if (v42)
                  {
                    v19 = v14 == 0;
                  }

                  else
                  {
                    v19 = 1;
                  }

                  v20 = !v19;
                  while (2)
                  {
                    for (j = 0; j != v17; ++j)
                    {
                      if (*v44 != v18)
                      {
                        objc_enumerationMutation(availableActions);
                      }

                      v22 = *(*(&v43 + 1) + 8 * j);
                      if ([v22 type] == 6)
                      {
                        v23 = v14;
                        associatedAutoTopUpIdentifier = v23;
                        if (v42 == v14)
                        {
                          goto LABEL_49;
                        }

                        if (v20)
                        {
                          v25 = [v42 caseInsensitiveCompare:v23];

                          if (!v25)
                          {
                            goto LABEL_50;
                          }
                        }

                        else
                        {
                        }
                      }

                      associatedAutoTopUpIdentifier = [v22 associatedAutoTopUpIdentifier];
                      v26 = v14;
                      v27 = v26;
                      if (associatedAutoTopUpIdentifier == v26)
                      {

LABEL_49:
LABEL_50:
                        v31 = v22;

                        balanceFields = v39;
                        passCopy = v40;
                        goto LABEL_51;
                      }

                      if (v14 && associatedAutoTopUpIdentifier)
                      {
                        v28 = [associatedAutoTopUpIdentifier caseInsensitiveCompare:v26];

                        if (!v28)
                        {
                          goto LABEL_50;
                        }
                      }

                      else
                      {
                      }

                      if ([v22 type] == 6)
                      {
                        relevantPropertyIdentifier = [v22 relevantPropertyIdentifier];
                        if (relevantPropertyIdentifier)
                        {
                        }

                        else
                        {
                          associatedAutoTopUpIdentifier2 = [v22 associatedAutoTopUpIdentifier];

                          if (!associatedAutoTopUpIdentifier2)
                          {
                            goto LABEL_50;
                          }
                        }
                      }
                    }

                    v17 = [availableActions countByEnumeratingWithState:&v43 objects:v55 count:16];
                    balanceFields = v39;
                    passCopy = v40;
                    v7 = v33;
                    i = v34;
                    v6 = v35;
                    if (v17)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v13 = v38 + 1;
                v10 = v41;
                v12 = v36;
              }

              while (v38 + 1 != v37);
              v11 = [v41 countByEnumeratingWithState:&v47 objects:v56 count:16];
            }

            while (v11);
          }
        }

        v6 = [balanceFields countByEnumeratingWithState:&v51 objects:v57 count:16];
        v31 = 0;
      }

      while (v6);
    }

    else
    {
      v31 = 0;
    }

LABEL_51:
  }

  return v31;
}

+ (id)enteredValueActionForPass:(id)pass
{
  v15 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  if ([passCopy activationState])
  {
    v4 = 0;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    availableActions = [passCopy availableActions];
    v4 = [availableActions countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(availableActions);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          if ([v8 type] == 1 && objc_msgSend(v8, "isActionAvailable") && (objc_msgSend(v8, "unavailableActionBehavior") & 2) == 0)
          {
            v4 = v8;
            goto LABEL_15;
          }
        }

        v4 = [availableActions countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  return v4;
}

+ (id)externalActionContentForPass:(id)pass
{
  v24 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  actionGroups = [passCopy actionGroups];
  v5 = [actionGroups countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(actionGroups);
      }

      v9 = *(*(&v18 + 1) + 8 * v8);
      if ([v9 hasExternalActionContent])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [actionGroups countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    actionGroups = [passCopy availableActions];
    externalActionContent = [actionGroups countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (!externalActionContent)
    {
      goto LABEL_19;
    }

    v11 = *v15;
LABEL_11:
    v12 = 0;
    while (1)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(actionGroups);
      }

      v9 = *(*(&v14 + 1) + 8 * v12);
      if ([v9 hasExternalActionContent])
      {
        break;
      }

      if (externalActionContent == ++v12)
      {
        externalActionContent = [actionGroups countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (externalActionContent)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }
  }

  externalActionContent = [v9 externalActionContent];
LABEL_19:

  return externalActionContent;
}

+ (id)autoReloadThresholdForPass:(id)pass action:(id)action
{
  v32 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  autoTopUpFields = [pass autoTopUpFields];
  v7 = [autoTopUpFields countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v10 = *MEMORY[0x1E69BBB80];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(autoTopUpFields);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [v12 key];
        v14 = [v13 isEqualToString:v10];

        if (v14)
        {
          v16 = MEMORY[0x1E696AD98];
          [v12 threshold];
          v17 = [v16 numberWithDouble:?];
          autoTopUpItem = [actionCopy autoTopUpItem];
          currency = [autoTopUpItem currency];

          if (currency)
          {
            v20 = objc_alloc(MEMORY[0x1E69B8780]);
            v21 = MEMORY[0x1E696AB90];
            if (v17)
            {
              [v17 decimalValue];
            }

            else
            {
              v25[0] = 0;
              v25[1] = 0;
              v26 = 0;
            }

            v22 = [v21 decimalNumberWithDecimal:v25];
            v23 = [v20 initWithAmount:v22 currency:currency exponent:0];

            formattedStringValue = [v23 formattedStringValue];
          }

          else
          {
            formattedStringValue = PKFormattedStringMinimalFractionDigitsFromNumber();
          }

          goto LABEL_17;
        }
      }

      v8 = [autoTopUpFields countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  formattedStringValue = 0;
LABEL_17:

  return formattedStringValue;
}

+ (id)autoReloadAmountForPass:(id)pass action:(id)action
{
  v32 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  autoTopUpFields = [pass autoTopUpFields];
  v7 = [autoTopUpFields countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v10 = *MEMORY[0x1E69BBB80];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(autoTopUpFields);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [v12 key];
        v14 = [v13 isEqualToString:v10];

        if (v14)
        {
          v16 = MEMORY[0x1E696AD98];
          [v12 amount];
          v17 = [v16 numberWithDouble:?];
          autoTopUpItem = [actionCopy autoTopUpItem];
          currency = [autoTopUpItem currency];

          if (currency)
          {
            v20 = objc_alloc(MEMORY[0x1E69B8780]);
            v21 = MEMORY[0x1E696AB90];
            if (v17)
            {
              [v17 decimalValue];
            }

            else
            {
              v25[0] = 0;
              v25[1] = 0;
              v26 = 0;
            }

            v22 = [v21 decimalNumberWithDecimal:v25];
            v23 = [v20 initWithAmount:v22 currency:currency exponent:0];

            formattedStringValue = [v23 formattedStringValue];
          }

          else
          {
            formattedStringValue = PKFormattedStringMinimalFractionDigitsFromNumber();
          }

          goto LABEL_17;
        }
      }

      v8 = [autoTopUpFields countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  formattedStringValue = 0;
LABEL_17:

  return formattedStringValue;
}

@end
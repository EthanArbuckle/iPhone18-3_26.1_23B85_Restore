@interface PKPaymentPassDetailAutoReloadSectionController
+ (id)autoReloadAmountForPass:(id)a3 action:(id)a4;
+ (id)autoReloadThresholdForPass:(id)a3 action:(id)a4;
+ (id)autoTopUpActionForPass:(id)a3;
+ (id)enteredValueActionForPass:(id)a3;
+ (id)externalActionContentForPass:(id)a3;
@end

@implementation PKPaymentPassDetailAutoReloadSectionController

+ (id)autoTopUpActionForPass:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 activationState] && objc_msgSend(v3, "activationState") != 2)
  {
    v31 = 0;
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v4 = [v3 balanceFields];
    v5 = [v4 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v52;
      v42 = *MEMORY[0x1E69BC060];
      v39 = v4;
      v40 = v3;
      v33 = *v52;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v52 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v51 + 1) + 8 * i) foreignReferenceIdentifiers];
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v10 = v9;
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
                v15 = [v3 availableActions];
                v16 = [v15 countByEnumeratingWithState:&v43 objects:v55 count:16];
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
                        objc_enumerationMutation(v15);
                      }

                      v22 = *(*(&v43 + 1) + 8 * j);
                      if ([v22 type] == 6)
                      {
                        v23 = v14;
                        v24 = v23;
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

                      v24 = [v22 associatedAutoTopUpIdentifier];
                      v26 = v14;
                      v27 = v26;
                      if (v24 == v26)
                      {

LABEL_49:
LABEL_50:
                        v31 = v22;

                        v4 = v39;
                        v3 = v40;
                        goto LABEL_51;
                      }

                      if (v14 && v24)
                      {
                        v28 = [v24 caseInsensitiveCompare:v26];

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
                        v29 = [v22 relevantPropertyIdentifier];
                        if (v29)
                        {
                        }

                        else
                        {
                          v30 = [v22 associatedAutoTopUpIdentifier];

                          if (!v30)
                          {
                            goto LABEL_50;
                          }
                        }
                      }
                    }

                    v17 = [v15 countByEnumeratingWithState:&v43 objects:v55 count:16];
                    v4 = v39;
                    v3 = v40;
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

        v6 = [v4 countByEnumeratingWithState:&v51 objects:v57 count:16];
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

+ (id)enteredValueActionForPass:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 activationState])
  {
    v4 = 0;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v3 availableActions];
    v4 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          if ([v8 type] == 1 && objc_msgSend(v8, "isActionAvailable") && (objc_msgSend(v8, "unavailableActionBehavior") & 2) == 0)
          {
            v4 = v8;
            goto LABEL_15;
          }
        }

        v4 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

+ (id)externalActionContentForPass:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 actionGroups];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v18 + 1) + 8 * v8);
      if ([v9 hasExternalActionContent])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
    v4 = [v3 availableActions];
    v10 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (!v10)
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
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v14 + 1) + 8 * v12);
      if ([v9 hasExternalActionContent])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v10)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }
  }

  v10 = [v9 externalActionContent];
LABEL_19:

  return v10;
}

+ (id)autoReloadThresholdForPass:(id)a3 action:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [a3 autoTopUpFields];
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [v12 key];
        v14 = [v13 isEqualToString:v10];

        if (v14)
        {
          v16 = MEMORY[0x1E696AD98];
          [v12 threshold];
          v17 = [v16 numberWithDouble:?];
          v18 = [v5 autoTopUpItem];
          v19 = [v18 currency];

          if (v19)
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
            v23 = [v20 initWithAmount:v22 currency:v19 exponent:0];

            v15 = [v23 formattedStringValue];
          }

          else
          {
            v15 = PKFormattedStringMinimalFractionDigitsFromNumber();
          }

          goto LABEL_17;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_17:

  return v15;
}

+ (id)autoReloadAmountForPass:(id)a3 action:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [a3 autoTopUpFields];
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [v12 key];
        v14 = [v13 isEqualToString:v10];

        if (v14)
        {
          v16 = MEMORY[0x1E696AD98];
          [v12 amount];
          v17 = [v16 numberWithDouble:?];
          v18 = [v5 autoTopUpItem];
          v19 = [v18 currency];

          if (v19)
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
            v23 = [v20 initWithAmount:v22 currency:v19 exponent:0];

            v15 = [v23 formattedStringValue];
          }

          else
          {
            v15 = PKFormattedStringMinimalFractionDigitsFromNumber();
          }

          goto LABEL_17;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_17:

  return v15;
}

@end
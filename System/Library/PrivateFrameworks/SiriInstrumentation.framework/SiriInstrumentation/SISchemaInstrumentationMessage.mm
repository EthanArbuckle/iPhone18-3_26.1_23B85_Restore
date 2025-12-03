@interface SISchemaInstrumentationMessage
- (BOOL)shouldSuppressMessageUnderConditions:(id)conditions;
- (id)_pruneSuppressedMessagesFromArray:(id)array underConditions:(id)conditions;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)formattedJsonBody;
@end

@implementation SISchemaInstrumentationMessage

- (id)formattedJsonBody
{
  dictionaryRepresentation = [(SISchemaInstrumentationMessage *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v4 = MEMORY[0x1E696ACB0];
    dictionaryRepresentation2 = [(SISchemaInstrumentationMessage *)self dictionaryRepresentation];
    v14 = 0;
    v6 = [v4 dataWithJSONObject:dictionaryRepresentation2 options:3 error:&v14];
    v7 = v14;

    v8 = 0;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
  }

  else
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v6 = NSStringFromClass(v12);
    v10 = [v11 stringWithFormat:@"{ error : Invalid JSON, messageType : %@ }", v6];
  }

  v8 = v10;
LABEL_10:

  return v8;
}

- (id)_pruneSuppressedMessagesFromArray:(id)array underConditions:(id)conditions
{
  v25 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  conditionsCopy = conditions;
  array = [MEMORY[0x1E695DF70] array];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __105__SISchemaInstrumentationMessage_SensitiveConditions___pruneSuppressedMessagesFromArray_underConditions___block_invoke;
  v21[3] = &unk_1E78D1598;
  v8 = conditionsCopy;
  v22 = v8;
  v9 = array;
  v23 = v9;
  [arrayCopy enumerateObjectsUsingBlock:v21];
  if (v9)
  {
    v10 = [arrayCopy mutableCopy];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    reverseObjectEnumerator = [v9 reverseObjectEnumerator];
    v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          [v10 removeObjectAtIndex:{objc_msgSend(*(*(&v17 + 1) + 8 * i), "unsignedIntegerValue")}];
        }

        v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v24 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v10 = arrayCopy;
  }

  return v10;
}

void __105__SISchemaInstrumentationMessage_SensitiveConditions___pruneSuppressedMessagesFromArray_underConditions___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = [a2 applySensitiveConditionsPolicy:*(a1 + 32)];
  if ([v7 suppressMessage])
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v5 addObject:v6];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v5 = objc_alloc_init(SISensitiveConditionsMessagePolicyResult);
  LODWORD(self) = [(SISchemaInstrumentationMessage *)self shouldSuppressMessageUnderConditions:policyCopy];

  if (self)
  {
    [(SISensitiveConditionsMessagePolicyResult *)v5 setSuppressMessage:1];
  }

  return v5;
}

- (BOOL)shouldSuppressMessageUnderConditions:(id)conditions
{
  conditionsCopy = conditions;
  suppressMessageUnderConditions = [(SISchemaInstrumentationMessage *)self suppressMessageUnderConditions];
  v6 = ([conditionsCopy isEmpty] & 1) == 0 && (objc_msgSend(conditionsCopy, "intersectsWith:", suppressMessageUnderConditions) & 1) != 0;

  return v6;
}

@end
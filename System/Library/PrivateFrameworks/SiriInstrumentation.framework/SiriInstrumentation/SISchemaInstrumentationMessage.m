@interface SISchemaInstrumentationMessage
- (BOOL)shouldSuppressMessageUnderConditions:(id)a3;
- (id)_pruneSuppressedMessagesFromArray:(id)a3 underConditions:(id)a4;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)formattedJsonBody;
@end

@implementation SISchemaInstrumentationMessage

- (id)formattedJsonBody
{
  v3 = [(SISchemaInstrumentationMessage *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v3])
  {
    v4 = MEMORY[0x1E696ACB0];
    v5 = [(SISchemaInstrumentationMessage *)self dictionaryRepresentation];
    v14 = 0;
    v6 = [v4 dataWithJSONObject:v5 options:3 error:&v14];
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

- (id)_pruneSuppressedMessagesFromArray:(id)a3 underConditions:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __105__SISchemaInstrumentationMessage_SensitiveConditions___pruneSuppressedMessagesFromArray_underConditions___block_invoke;
  v21[3] = &unk_1E78D1598;
  v8 = v6;
  v22 = v8;
  v9 = v7;
  v23 = v9;
  [v5 enumerateObjectsUsingBlock:v21];
  if (v9)
  {
    v10 = [v5 mutableCopy];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [v9 reverseObjectEnumerator];
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v24 count:16];
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
            objc_enumerationMutation(v11);
          }

          [v10 removeObjectAtIndex:{objc_msgSend(*(*(&v17 + 1) + 8 * i), "unsignedIntegerValue")}];
        }

        v13 = [v11 countByEnumeratingWithState:&v17 objects:v24 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v10 = v5;
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SISensitiveConditionsMessagePolicyResult);
  LODWORD(self) = [(SISchemaInstrumentationMessage *)self shouldSuppressMessageUnderConditions:v4];

  if (self)
  {
    [(SISensitiveConditionsMessagePolicyResult *)v5 setSuppressMessage:1];
  }

  return v5;
}

- (BOOL)shouldSuppressMessageUnderConditions:(id)a3
{
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)self suppressMessageUnderConditions];
  v6 = ([v4 isEmpty] & 1) == 0 && (objc_msgSend(v4, "intersectsWith:", v5) & 1) != 0;

  return v6;
}

@end
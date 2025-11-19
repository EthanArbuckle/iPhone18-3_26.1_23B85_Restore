@interface PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addMultistepSubSearchExecutions:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported

- (PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported)initWithDictionary:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported;
  v5 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)&v28 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"multistepGatingExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PEGASUSSchemaPEGASUSMultistepGatingExecution alloc] initWithDictionary:v6];
      [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)v5 setMultistepGatingExecution:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"multistepSubSearchExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PEGASUSSchemaPEGASUSMultistepSubSearchExecution alloc] initWithDictionary:v8];
      [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)v5 setMultistepSubSearchExecution:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"multiturnExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PEGASUSSchemaPEGASUSMultiturnExecution alloc] initWithDictionary:v10];
      [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)v5 setMultiturnExecution:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"multistepSubSearchExecutions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v10;
      v23 = v6;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v24 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [[PEGASUSSchemaPEGASUSMultistepSubSearchExecution alloc] initWithDictionary:v18];
              [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)v5 addMultistepSubSearchExecutions:v19];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v15);
      }

      v6 = v23;
      v10 = v22;
    }

    v20 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_multistepGatingExecution)
  {
    v4 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepGatingExecution];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"multistepGatingExecution"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"multistepGatingExecution"];
    }
  }

  if (self->_multistepSubSearchExecution)
  {
    v7 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecution];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"multistepSubSearchExecution"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"multistepSubSearchExecution"];
    }
  }

  if ([(NSArray *)self->_multistepSubSearchExecutions count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = self->_multistepSubSearchExecutions;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          if (v16)
          {
            [v10 addObject:v16];
          }

          else
          {
            v17 = [MEMORY[0x1E695DFB0] null];
            [v10 addObject:v17];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"multistepSubSearchExecutions"];
  }

  if (self->_multiturnExecution)
  {
    v18 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multiturnExecution];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"multiturnExecution"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"multiturnExecution"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v22];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(PEGASUSSchemaPEGASUSMultistepGatingExecution *)self->_multistepGatingExecution hash];
  v4 = [(PEGASUSSchemaPEGASUSMultistepSubSearchExecution *)self->_multistepSubSearchExecution hash]^ v3;
  v5 = [(PEGASUSSchemaPEGASUSMultiturnExecution *)self->_multiturnExecution hash];
  return v4 ^ v5 ^ [(NSArray *)self->_multistepSubSearchExecutions hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepGatingExecution];
  v6 = [v4 multistepGatingExecution];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepGatingExecution];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepGatingExecution];
    v10 = [v4 multistepGatingExecution];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecution];
  v6 = [v4 multistepSubSearchExecution];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecution];
  if (v12)
  {
    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecution];
    v15 = [v4 multistepSubSearchExecution];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multiturnExecution];
  v6 = [v4 multiturnExecution];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multiturnExecution];
  if (v17)
  {
    v18 = v17;
    v19 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multiturnExecution];
    v20 = [v4 multiturnExecution];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecutions];
  v6 = [v4 multistepSubSearchExecutions];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecutions];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecutions];
    v25 = [v4 multistepSubSearchExecutions];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepGatingExecution];

  if (v5)
  {
    v6 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepGatingExecution];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecution];

  if (v7)
  {
    v8 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecution];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multiturnExecution];

  if (v9)
  {
    v10 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multiturnExecution];
    PBDataWriterWriteSubmessage();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_multistepSubSearchExecutions;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)addMultistepSubSearchExecutions:(id)a3
{
  v4 = a3;
  multistepSubSearchExecutions = self->_multistepSubSearchExecutions;
  v8 = v4;
  if (!multistepSubSearchExecutions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_multistepSubSearchExecutions;
    self->_multistepSubSearchExecutions = v6;

    v4 = v8;
    multistepSubSearchExecutions = self->_multistepSubSearchExecutions;
  }

  [(NSArray *)multistepSubSearchExecutions addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:v4];
  v6 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepGatingExecution];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self deleteMultistepGatingExecution];
  }

  v9 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecution];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self deleteMultistepSubSearchExecution];
  }

  v12 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multiturnExecution];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self deleteMultiturnExecution];
  }

  v15 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecutions];
  v16 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v15 underConditions:v4];
  [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self setMultistepSubSearchExecutions:v16];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
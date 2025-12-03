@interface PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addMultistepSubSearchExecutions:(id)executions;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported

- (PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported)initWithDictionary:(id)dictionary
{
  v30 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported;
  v5 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"multistepGatingExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PEGASUSSchemaPEGASUSMultistepGatingExecution alloc] initWithDictionary:v6];
      [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)v5 setMultistepGatingExecution:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"multistepSubSearchExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PEGASUSSchemaPEGASUSMultistepSubSearchExecution alloc] initWithDictionary:v8];
      [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)v5 setMultistepSubSearchExecution:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"multiturnExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PEGASUSSchemaPEGASUSMultiturnExecution alloc] initWithDictionary:v10];
      [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)v5 setMultiturnExecution:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"multistepSubSearchExecutions"];
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

- (PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_multistepGatingExecution)
  {
    multistepGatingExecution = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepGatingExecution];
    dictionaryRepresentation = [multistepGatingExecution dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"multistepGatingExecution"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"multistepGatingExecution"];
    }
  }

  if (self->_multistepSubSearchExecution)
  {
    multistepSubSearchExecution = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecution];
    dictionaryRepresentation2 = [multistepSubSearchExecution dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"multistepSubSearchExecution"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"multistepSubSearchExecution"];
    }
  }

  if ([(NSArray *)self->_multistepSubSearchExecutions count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation3 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null3];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"multistepSubSearchExecutions"];
  }

  if (self->_multiturnExecution)
  {
    multiturnExecution = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multiturnExecution];
    dictionaryRepresentation4 = [multiturnExecution dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"multiturnExecution"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"multiturnExecution"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v22];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(PEGASUSSchemaPEGASUSMultistepGatingExecution *)self->_multistepGatingExecution hash];
  v4 = [(PEGASUSSchemaPEGASUSMultistepSubSearchExecution *)self->_multistepSubSearchExecution hash]^ v3;
  v5 = [(PEGASUSSchemaPEGASUSMultiturnExecution *)self->_multiturnExecution hash];
  return v4 ^ v5 ^ [(NSArray *)self->_multistepSubSearchExecutions hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  multistepGatingExecution = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepGatingExecution];
  multistepGatingExecution2 = [equalCopy multistepGatingExecution];
  if ((multistepGatingExecution != 0) == (multistepGatingExecution2 == 0))
  {
    goto LABEL_21;
  }

  multistepGatingExecution3 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepGatingExecution];
  if (multistepGatingExecution3)
  {
    v8 = multistepGatingExecution3;
    multistepGatingExecution4 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepGatingExecution];
    multistepGatingExecution5 = [equalCopy multistepGatingExecution];
    v11 = [multistepGatingExecution4 isEqual:multistepGatingExecution5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  multistepGatingExecution = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecution];
  multistepGatingExecution2 = [equalCopy multistepSubSearchExecution];
  if ((multistepGatingExecution != 0) == (multistepGatingExecution2 == 0))
  {
    goto LABEL_21;
  }

  multistepSubSearchExecution = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecution];
  if (multistepSubSearchExecution)
  {
    v13 = multistepSubSearchExecution;
    multistepSubSearchExecution2 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecution];
    multistepSubSearchExecution3 = [equalCopy multistepSubSearchExecution];
    v16 = [multistepSubSearchExecution2 isEqual:multistepSubSearchExecution3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  multistepGatingExecution = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multiturnExecution];
  multistepGatingExecution2 = [equalCopy multiturnExecution];
  if ((multistepGatingExecution != 0) == (multistepGatingExecution2 == 0))
  {
    goto LABEL_21;
  }

  multiturnExecution = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multiturnExecution];
  if (multiturnExecution)
  {
    v18 = multiturnExecution;
    multiturnExecution2 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multiturnExecution];
    multiturnExecution3 = [equalCopy multiturnExecution];
    v21 = [multiturnExecution2 isEqual:multiturnExecution3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  multistepGatingExecution = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecutions];
  multistepGatingExecution2 = [equalCopy multistepSubSearchExecutions];
  if ((multistepGatingExecution != 0) != (multistepGatingExecution2 == 0))
  {
    multistepSubSearchExecutions = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecutions];
    if (!multistepSubSearchExecutions)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = multistepSubSearchExecutions;
    multistepSubSearchExecutions2 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecutions];
    multistepSubSearchExecutions3 = [equalCopy multistepSubSearchExecutions];
    v26 = [multistepSubSearchExecutions2 isEqual:multistepSubSearchExecutions3];

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

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  multistepGatingExecution = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepGatingExecution];

  if (multistepGatingExecution)
  {
    multistepGatingExecution2 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepGatingExecution];
    PBDataWriterWriteSubmessage();
  }

  multistepSubSearchExecution = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecution];

  if (multistepSubSearchExecution)
  {
    multistepSubSearchExecution2 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecution];
    PBDataWriterWriteSubmessage();
  }

  multiturnExecution = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multiturnExecution];

  if (multiturnExecution)
  {
    multiturnExecution2 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multiturnExecution];
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

- (void)addMultistepSubSearchExecutions:(id)executions
{
  executionsCopy = executions;
  multistepSubSearchExecutions = self->_multistepSubSearchExecutions;
  v8 = executionsCopy;
  if (!multistepSubSearchExecutions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_multistepSubSearchExecutions;
    self->_multistepSubSearchExecutions = array;

    executionsCopy = v8;
    multistepSubSearchExecutions = self->_multistepSubSearchExecutions;
  }

  [(NSArray *)multistepSubSearchExecutions addObject:executionsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v18.receiver = self;
  v18.super_class = PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:policyCopy];
  multistepGatingExecution = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepGatingExecution];
  v7 = [multistepGatingExecution applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self deleteMultistepGatingExecution];
  }

  multistepSubSearchExecution = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecution];
  v10 = [multistepSubSearchExecution applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self deleteMultistepSubSearchExecution];
  }

  multiturnExecution = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multiturnExecution];
  v13 = [multiturnExecution applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self deleteMultiturnExecution];
  }

  multistepSubSearchExecutions = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self multistepSubSearchExecutions];
  v16 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:multistepSubSearchExecutions underConditions:policyCopy];
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
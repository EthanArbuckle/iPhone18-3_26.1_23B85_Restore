@interface IFTSchemaIFTSystemResponse
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTSystemResponse)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTSystemResponse)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addInterpretedStatementResults:(id)results;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTSystemResponse

- (IFTSchemaIFTSystemResponse)initWithDictionary:(id)dictionary
{
  v32 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = IFTSchemaIFTSystemResponse;
  v5 = [(IFTSchemaIFTSystemResponse *)&v30 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemResponse setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"outcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IFTSchemaIFTStatementOutcome alloc] initWithDictionary:v7];
      [(IFTSchemaIFTSystemResponse *)v5 setOutcome:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v9];
      [(IFTSchemaIFTSystemResponse *)v5 setStatementId:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(IFTSchemaIFTSystemResponse *)v5 setToolId:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"interpretedStatementResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v11;
      v24 = v7;
      v25 = v6;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v27;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v26 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [[IFTSchemaIFTInterpretedStatementResult alloc] initWithDictionary:v19];
              [(IFTSchemaIFTSystemResponse *)v5 addInterpretedStatementResults:v20];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v16);
      }

      v7 = v24;
      v6 = v25;
      v11 = v23;
    }

    v21 = v5;
  }

  return v5;
}

- (IFTSchemaIFTSystemResponse)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTSystemResponse *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTSystemResponse *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTSystemResponse exists](self, "exists")}];
    [dictionary setObject:v4 forKeyedSubscript:@"exists"];
  }

  if ([(NSArray *)self->_interpretedStatementResults count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = self->_interpretedStatementResults;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    [dictionary setObject:array forKeyedSubscript:@"interpretedStatementResults"];
  }

  if (self->_outcome)
  {
    outcome = [(IFTSchemaIFTSystemResponse *)self outcome];
    dictionaryRepresentation2 = [outcome dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"outcome"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"outcome"];
    }
  }

  if (self->_statementId)
  {
    statementId = [(IFTSchemaIFTSystemResponse *)self statementId];
    dictionaryRepresentation3 = [statementId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"statementId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"statementId"];
    }
  }

  if (self->_toolId)
  {
    toolId = [(IFTSchemaIFTSystemResponse *)self toolId];
    v20 = [toolId copy];
    [dictionary setObject:v20 forKeyedSubscript:@"toolId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v22];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_exists;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(IFTSchemaIFTStatementOutcome *)self->_outcome hash]^ v3;
  v5 = [(IFTSchemaIFTStatementId *)self->_statementId hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_toolId hash];
  return v6 ^ [(NSArray *)self->_interpretedStatementResults hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 1) != (equalCopy[48] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [equalCopy exists])
    {
      goto LABEL_25;
    }
  }

  outcome = [(IFTSchemaIFTSystemResponse *)self outcome];
  outcome2 = [equalCopy outcome];
  if ((outcome != 0) == (outcome2 == 0))
  {
    goto LABEL_24;
  }

  outcome3 = [(IFTSchemaIFTSystemResponse *)self outcome];
  if (outcome3)
  {
    v9 = outcome3;
    outcome4 = [(IFTSchemaIFTSystemResponse *)self outcome];
    outcome5 = [equalCopy outcome];
    v12 = [outcome4 isEqual:outcome5];

    if (!v12)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  outcome = [(IFTSchemaIFTSystemResponse *)self statementId];
  outcome2 = [equalCopy statementId];
  if ((outcome != 0) == (outcome2 == 0))
  {
    goto LABEL_24;
  }

  statementId = [(IFTSchemaIFTSystemResponse *)self statementId];
  if (statementId)
  {
    v14 = statementId;
    statementId2 = [(IFTSchemaIFTSystemResponse *)self statementId];
    statementId3 = [equalCopy statementId];
    v17 = [statementId2 isEqual:statementId3];

    if (!v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  outcome = [(IFTSchemaIFTSystemResponse *)self toolId];
  outcome2 = [equalCopy toolId];
  if ((outcome != 0) == (outcome2 == 0))
  {
    goto LABEL_24;
  }

  toolId = [(IFTSchemaIFTSystemResponse *)self toolId];
  if (toolId)
  {
    v19 = toolId;
    toolId2 = [(IFTSchemaIFTSystemResponse *)self toolId];
    toolId3 = [equalCopy toolId];
    v22 = [toolId2 isEqual:toolId3];

    if (!v22)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  outcome = [(IFTSchemaIFTSystemResponse *)self interpretedStatementResults];
  outcome2 = [equalCopy interpretedStatementResults];
  if ((outcome != 0) != (outcome2 == 0))
  {
    interpretedStatementResults = [(IFTSchemaIFTSystemResponse *)self interpretedStatementResults];
    if (!interpretedStatementResults)
    {

LABEL_28:
      v28 = 1;
      goto LABEL_26;
    }

    v24 = interpretedStatementResults;
    interpretedStatementResults2 = [(IFTSchemaIFTSystemResponse *)self interpretedStatementResults];
    interpretedStatementResults3 = [equalCopy interpretedStatementResults];
    v27 = [interpretedStatementResults2 isEqual:interpretedStatementResults3];

    if (v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_24:
  }

LABEL_25:
  v28 = 0;
LABEL_26:

  return v28;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  outcome = [(IFTSchemaIFTSystemResponse *)self outcome];

  if (outcome)
  {
    outcome2 = [(IFTSchemaIFTSystemResponse *)self outcome];
    PBDataWriterWriteSubmessage();
  }

  statementId = [(IFTSchemaIFTSystemResponse *)self statementId];

  if (statementId)
  {
    statementId2 = [(IFTSchemaIFTSystemResponse *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  toolId = [(IFTSchemaIFTSystemResponse *)self toolId];

  if (toolId)
  {
    PBDataWriterWriteStringField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_interpretedStatementResults;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)addInterpretedStatementResults:(id)results
{
  resultsCopy = results;
  interpretedStatementResults = self->_interpretedStatementResults;
  v8 = resultsCopy;
  if (!interpretedStatementResults)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_interpretedStatementResults;
    self->_interpretedStatementResults = array;

    resultsCopy = v8;
    interpretedStatementResults = self->_interpretedStatementResults;
  }

  [(NSArray *)interpretedStatementResults addObject:resultsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = IFTSchemaIFTSystemResponse;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  outcome = [(IFTSchemaIFTSystemResponse *)self outcome];
  v7 = [outcome applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTSystemResponse *)self deleteOutcome];
  }

  statementId = [(IFTSchemaIFTSystemResponse *)self statementId];
  v10 = [statementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTSystemResponse *)self deleteStatementId];
  }

  interpretedStatementResults = [(IFTSchemaIFTSystemResponse *)self interpretedStatementResults];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:interpretedStatementResults underConditions:policyCopy];
  [(IFTSchemaIFTSystemResponse *)self setInterpretedStatementResults:v13];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
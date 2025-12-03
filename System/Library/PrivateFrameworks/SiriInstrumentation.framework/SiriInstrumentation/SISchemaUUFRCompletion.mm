@interface SISchemaUUFRCompletion
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaUUFRCompletion)initWithDictionary:(id)dictionary;
- (SISchemaUUFRCompletion)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addHomeKitAccessoryResponse:(id)response;
- (void)writeTo:(id)to;
@end

@implementation SISchemaUUFRCompletion

- (SISchemaUUFRCompletion)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = SISchemaUUFRCompletion;
  v5 = [(SISchemaUUFRCompletion *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"completionStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUUFRCompletion setCompletionStatus:](v5, "setCompletionStatus:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"homeKitAccessoryResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v6;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        do
        {
          v12 = 0;
          do
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v20 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[SISchemaHomeKitAccessoryResponse alloc] initWithDictionary:v13];
              [(SISchemaUUFRCompletion *)v5 addHomeKitAccessoryResponse:v14];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v10);
      }

      v6 = v19;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"siriResponseContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaSiriResponseContext alloc] initWithDictionary:v15];
      [(SISchemaUUFRCompletion *)v5 setSiriResponseContext:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (SISchemaUUFRCompletion)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaUUFRCompletion *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaUUFRCompletion *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [(SISchemaUUFRCompletion *)self completionStatus]- 2;
    if (v4 > 4)
    {
      v5 = @"COMPLETIONSTATUS_UNKNOWN_COMPLETION_STATUS";
    }

    else
    {
      v5 = off_1E78E6DF0[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"completionStatus"];
  }

  if ([(NSArray *)self->_homeKitAccessoryResponses count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = self->_homeKitAccessoryResponses;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
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

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"homeKitAccessoryResponse"];
  }

  if (self->_siriResponseContext)
  {
    siriResponseContext = [(SISchemaUUFRCompletion *)self siriResponseContext];
    dictionaryRepresentation2 = [siriResponseContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"siriResponseContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"siriResponseContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v18];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_completionStatus;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_homeKitAccessoryResponses hash]^ v3;
  return v4 ^ [(SISchemaSiriResponseContext *)self->_siriResponseContext hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    completionStatus = self->_completionStatus;
    if (completionStatus != [equalCopy completionStatus])
    {
      goto LABEL_15;
    }
  }

  homeKitAccessoryResponses = [(SISchemaUUFRCompletion *)self homeKitAccessoryResponses];
  homeKitAccessoryResponses2 = [equalCopy homeKitAccessoryResponses];
  if ((homeKitAccessoryResponses != 0) == (homeKitAccessoryResponses2 == 0))
  {
    goto LABEL_14;
  }

  homeKitAccessoryResponses3 = [(SISchemaUUFRCompletion *)self homeKitAccessoryResponses];
  if (homeKitAccessoryResponses3)
  {
    v9 = homeKitAccessoryResponses3;
    homeKitAccessoryResponses4 = [(SISchemaUUFRCompletion *)self homeKitAccessoryResponses];
    homeKitAccessoryResponses5 = [equalCopy homeKitAccessoryResponses];
    v12 = [homeKitAccessoryResponses4 isEqual:homeKitAccessoryResponses5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  homeKitAccessoryResponses = [(SISchemaUUFRCompletion *)self siriResponseContext];
  homeKitAccessoryResponses2 = [equalCopy siriResponseContext];
  if ((homeKitAccessoryResponses != 0) != (homeKitAccessoryResponses2 == 0))
  {
    siriResponseContext = [(SISchemaUUFRCompletion *)self siriResponseContext];
    if (!siriResponseContext)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = siriResponseContext;
    siriResponseContext2 = [(SISchemaUUFRCompletion *)self siriResponseContext];
    siriResponseContext3 = [equalCopy siriResponseContext];
    v17 = [siriResponseContext2 isEqual:siriResponseContext3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_homeKitAccessoryResponses;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  siriResponseContext = [(SISchemaUUFRCompletion *)self siriResponseContext];

  if (siriResponseContext)
  {
    siriResponseContext2 = [(SISchemaUUFRCompletion *)self siriResponseContext];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addHomeKitAccessoryResponse:(id)response
{
  responseCopy = response;
  homeKitAccessoryResponses = self->_homeKitAccessoryResponses;
  v8 = responseCopy;
  if (!homeKitAccessoryResponses)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_homeKitAccessoryResponses;
    self->_homeKitAccessoryResponses = array;

    responseCopy = v8;
    homeKitAccessoryResponses = self->_homeKitAccessoryResponses;
  }

  [(NSArray *)homeKitAccessoryResponses addObject:responseCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v11.receiver = self;
  v11.super_class = SISchemaUUFRCompletion;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaUUFRCompletion *)self homeKitAccessoryResponses:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(SISchemaUUFRCompletion *)self setHomeKitAccessoryResponses:v7];

  siriResponseContext = [(SISchemaUUFRCompletion *)self siriResponseContext];
  v9 = [siriResponseContext applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v9 suppressMessage];
  if (policyCopy)
  {
    [(SISchemaUUFRCompletion *)self deleteSiriResponseContext];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
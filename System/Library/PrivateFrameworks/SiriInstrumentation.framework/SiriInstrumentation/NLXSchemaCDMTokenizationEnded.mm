@interface NLXSchemaCDMTokenizationEnded
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMTokenizationEnded)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMTokenizationEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addTokenChains:(id)chains;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMTokenizationEnded

- (NLXSchemaCDMTokenizationEnded)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = NLXSchemaCDMTokenizationEnded;
  v5 = [(NLXSchemaCDMTokenizationEnded *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMTokenizationEnded *)v5 setContextId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"tokenChains"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v6;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          v13 = 0;
          do
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[NLXSchemaCDMTokenChain alloc] initWithDictionary:v14];
              [(NLXSchemaCDMTokenizationEnded *)v5 addTokenChains:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v11);
      }

      v6 = v19;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"inputType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMTokenizationEnded setInputType:](v5, "setInputType:", [v16 intValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (NLXSchemaCDMTokenizationEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMTokenizationEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMTokenizationEnded *)self dictionaryRepresentation];
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
  if (self->_contextId)
  {
    contextId = [(NLXSchemaCDMTokenizationEnded *)self contextId];
    dictionaryRepresentation = [contextId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"contextId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"contextId"];
    }
  }

  if (*&self->_has)
  {
    v7 = [(NLXSchemaCDMTokenizationEnded *)self inputType]- 1;
    if (v7 > 2)
    {
      v8 = @"CDMTOKENIZATIONINPUTTYPE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78DC368[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"inputType"];
  }

  if ([(NSArray *)self->_tokenChains count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = self->_tokenChains;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation2 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [dictionary setObject:array forKeyedSubscript:@"tokenChains"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v18];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_contextId hash];
  v4 = [(NSArray *)self->_tokenChains hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_inputType;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  contextId = [(NLXSchemaCDMTokenizationEnded *)self contextId];
  contextId2 = [equalCopy contextId];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_11;
  }

  contextId3 = [(NLXSchemaCDMTokenizationEnded *)self contextId];
  if (contextId3)
  {
    v8 = contextId3;
    contextId4 = [(NLXSchemaCDMTokenizationEnded *)self contextId];
    contextId5 = [equalCopy contextId];
    v11 = [contextId4 isEqual:contextId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  contextId = [(NLXSchemaCDMTokenizationEnded *)self tokenChains];
  contextId2 = [equalCopy tokenChains];
  if ((contextId != 0) == (contextId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  tokenChains = [(NLXSchemaCDMTokenizationEnded *)self tokenChains];
  if (tokenChains)
  {
    v13 = tokenChains;
    tokenChains2 = [(NLXSchemaCDMTokenizationEnded *)self tokenChains];
    tokenChains3 = [equalCopy tokenChains];
    v16 = [tokenChains2 isEqual:tokenChains3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (inputType = self->_inputType, inputType == [equalCopy inputType]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  contextId = [(NLXSchemaCDMTokenizationEnded *)self contextId];

  if (contextId)
  {
    contextId2 = [(NLXSchemaCDMTokenizationEnded *)self contextId];
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_tokenChains;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)addTokenChains:(id)chains
{
  chainsCopy = chains;
  tokenChains = self->_tokenChains;
  v8 = chainsCopy;
  if (!tokenChains)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_tokenChains;
    self->_tokenChains = array;

    chainsCopy = v8;
    tokenChains = self->_tokenChains;
  }

  [(NSArray *)tokenChains addObject:chainsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = NLXSchemaCDMTokenizationEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  contextId = [(NLXSchemaCDMTokenizationEnded *)self contextId];
  v7 = [contextId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLXSchemaCDMTokenizationEnded *)self deleteContextId];
  }

  tokenChains = [(NLXSchemaCDMTokenizationEnded *)self tokenChains];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:tokenChains underConditions:policyCopy];
  [(NLXSchemaCDMTokenizationEnded *)self setTokenChains:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
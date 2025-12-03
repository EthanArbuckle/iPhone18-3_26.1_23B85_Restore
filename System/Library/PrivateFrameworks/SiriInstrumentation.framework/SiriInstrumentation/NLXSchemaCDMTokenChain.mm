@interface NLXSchemaCDMTokenChain
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMTokenChain)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMTokenChain)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addTokens:(id)tokens;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMTokenChain

- (NLXSchemaCDMTokenChain)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = NLXSchemaCDMTokenChain;
  v5 = [(NLXSchemaCDMTokenChain *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"tokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [NLXSchemaCDMToken alloc];
              v14 = [(NLXSchemaCDMToken *)v13 initWithDictionary:v12, v19];
              [(NLXSchemaCDMTokenChain *)v5 addTokens:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"asrHypothesisId", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(NLXSchemaCDMTokenChain *)v5 setAsrHypothesisId:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (NLXSchemaCDMTokenChain)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMTokenChain *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMTokenChain *)self dictionaryRepresentation];
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
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_asrHypothesisId)
  {
    asrHypothesisId = [(NLXSchemaCDMTokenChain *)self asrHypothesisId];
    dictionaryRepresentation = [asrHypothesisId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"asrHypothesisId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"asrHypothesisId"];
    }
  }

  if ([(NSArray *)self->_tokens count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_tokens;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"tokens"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v16];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  tokens = [(NLXSchemaCDMTokenChain *)self tokens];
  tokens2 = [equalCopy tokens];
  if ((tokens != 0) == (tokens2 == 0))
  {
    goto LABEL_11;
  }

  tokens3 = [(NLXSchemaCDMTokenChain *)self tokens];
  if (tokens3)
  {
    v8 = tokens3;
    tokens4 = [(NLXSchemaCDMTokenChain *)self tokens];
    tokens5 = [equalCopy tokens];
    v11 = [tokens4 isEqual:tokens5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  tokens = [(NLXSchemaCDMTokenChain *)self asrHypothesisId];
  tokens2 = [equalCopy asrHypothesisId];
  if ((tokens != 0) != (tokens2 == 0))
  {
    asrHypothesisId = [(NLXSchemaCDMTokenChain *)self asrHypothesisId];
    if (!asrHypothesisId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = asrHypothesisId;
    asrHypothesisId2 = [(NLXSchemaCDMTokenChain *)self asrHypothesisId];
    asrHypothesisId3 = [equalCopy asrHypothesisId];
    v16 = [asrHypothesisId2 isEqual:asrHypothesisId3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
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
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_tokens;
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

  asrHypothesisId = [(NLXSchemaCDMTokenChain *)self asrHypothesisId];

  if (asrHypothesisId)
  {
    asrHypothesisId2 = [(NLXSchemaCDMTokenChain *)self asrHypothesisId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addTokens:(id)tokens
{
  tokensCopy = tokens;
  tokens = self->_tokens;
  v8 = tokensCopy;
  if (!tokens)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_tokens;
    self->_tokens = array;

    tokensCopy = v8;
    tokens = self->_tokens;
  }

  [(NSArray *)tokens addObject:tokensCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v11.receiver = self;
  v11.super_class = NLXSchemaCDMTokenChain;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLXSchemaCDMTokenChain *)self tokens:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(NLXSchemaCDMTokenChain *)self setTokens:v7];

  asrHypothesisId = [(NLXSchemaCDMTokenChain *)self asrHypothesisId];
  v9 = [asrHypothesisId applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v9 suppressMessage];
  if (policyCopy)
  {
    [(NLXSchemaCDMTokenChain *)self deleteAsrHypothesisId];
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
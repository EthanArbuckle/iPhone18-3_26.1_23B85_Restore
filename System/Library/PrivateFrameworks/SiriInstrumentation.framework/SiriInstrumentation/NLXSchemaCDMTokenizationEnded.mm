@interface NLXSchemaCDMTokenizationEnded
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMTokenizationEnded)initWithDictionary:(id)a3;
- (NLXSchemaCDMTokenizationEnded)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addTokenChains:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaCDMTokenizationEnded

- (NLXSchemaCDMTokenizationEnded)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = NLXSchemaCDMTokenizationEnded;
  v5 = [(NLXSchemaCDMTokenizationEnded *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMTokenizationEnded *)v5 setContextId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"tokenChains"];
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

    v16 = [v4 objectForKeyedSubscript:@"inputType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMTokenizationEnded setInputType:](v5, "setInputType:", [v16 intValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (NLXSchemaCDMTokenizationEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaCDMTokenizationEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaCDMTokenizationEnded *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_contextId)
  {
    v4 = [(NLXSchemaCDMTokenizationEnded *)self contextId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"contextId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"contextId"];
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

    [v3 setObject:v8 forKeyedSubscript:@"inputType"];
  }

  if ([(NSArray *)self->_tokenChains count])
  {
    v9 = [MEMORY[0x1E695DF70] array];
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

          v15 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          if (v15)
          {
            [v9 addObject:v15];
          }

          else
          {
            v16 = [MEMORY[0x1E695DFB0] null];
            [v9 addObject:v16];
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKeyedSubscript:@"tokenChains"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v18];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(NLXSchemaCDMTokenizationEnded *)self contextId];
  v6 = [v4 contextId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(NLXSchemaCDMTokenizationEnded *)self contextId];
  if (v7)
  {
    v8 = v7;
    v9 = [(NLXSchemaCDMTokenizationEnded *)self contextId];
    v10 = [v4 contextId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaCDMTokenizationEnded *)self tokenChains];
  v6 = [v4 tokenChains];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(NLXSchemaCDMTokenizationEnded *)self tokenChains];
  if (v12)
  {
    v13 = v12;
    v14 = [(NLXSchemaCDMTokenizationEnded *)self tokenChains];
    v15 = [v4 tokenChains];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (inputType = self->_inputType, inputType == [v4 inputType]))
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

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NLXSchemaCDMTokenizationEnded *)self contextId];

  if (v5)
  {
    v6 = [(NLXSchemaCDMTokenizationEnded *)self contextId];
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

- (void)addTokenChains:(id)a3
{
  v4 = a3;
  tokenChains = self->_tokenChains;
  v8 = v4;
  if (!tokenChains)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_tokenChains;
    self->_tokenChains = v6;

    v4 = v8;
    tokenChains = self->_tokenChains;
  }

  [(NSArray *)tokenChains addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NLXSchemaCDMTokenizationEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  v6 = [(NLXSchemaCDMTokenizationEnded *)self contextId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NLXSchemaCDMTokenizationEnded *)self deleteContextId];
  }

  v9 = [(NLXSchemaCDMTokenizationEnded *)self tokenChains];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
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
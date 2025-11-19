@interface NLXSchemaCDMMatchingSpanEnded
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMMatchingSpanEnded)initWithDictionary:(id)a3;
- (NLXSchemaCDMMatchingSpanEnded)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addMatchingSpans:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaCDMMatchingSpanEnded

- (NLXSchemaCDMMatchingSpanEnded)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = NLXSchemaCDMMatchingSpanEnded;
  v5 = [(NLXSchemaCDMMatchingSpanEnded *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMMatchingSpanEnded *)v5 setContextId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"matchingSpans"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v6;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        do
        {
          v13 = 0;
          do
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v21 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[NLXSchemaCDMMatchingSpan alloc] initWithDictionary:v14];
              [(NLXSchemaCDMMatchingSpanEnded *)v5 addMatchingSpans:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v11);
      }

      v6 = v20;
    }

    v16 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaUUID alloc] initWithDictionary:v16];
      [(NLXSchemaCDMMatchingSpanEnded *)v5 setLinkId:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (NLXSchemaCDMMatchingSpanEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaCDMMatchingSpanEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaCDMMatchingSpanEnded *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_contextId)
  {
    v4 = [(NLXSchemaCDMMatchingSpanEnded *)self contextId];
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

  if (self->_linkId)
  {
    v7 = [(NLXSchemaCDMMatchingSpanEnded *)self linkId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"linkId"];
    }
  }

  if ([(NSArray *)self->_matchingSpans count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_matchingSpans;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
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

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"matchingSpans"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v19];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_contextId hash];
  v4 = [(NSArray *)self->_matchingSpans hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_linkId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(NLXSchemaCDMMatchingSpanEnded *)self contextId];
  v6 = [v4 contextId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(NLXSchemaCDMMatchingSpanEnded *)self contextId];
  if (v7)
  {
    v8 = v7;
    v9 = [(NLXSchemaCDMMatchingSpanEnded *)self contextId];
    v10 = [v4 contextId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaCDMMatchingSpanEnded *)self matchingSpans];
  v6 = [v4 matchingSpans];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(NLXSchemaCDMMatchingSpanEnded *)self matchingSpans];
  if (v12)
  {
    v13 = v12;
    v14 = [(NLXSchemaCDMMatchingSpanEnded *)self matchingSpans];
    v15 = [v4 matchingSpans];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaCDMMatchingSpanEnded *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(NLXSchemaCDMMatchingSpanEnded *)self linkId];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(NLXSchemaCDMMatchingSpanEnded *)self linkId];
    v20 = [v4 linkId];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NLXSchemaCDMMatchingSpanEnded *)self contextId];

  if (v5)
  {
    v6 = [(NLXSchemaCDMMatchingSpanEnded *)self contextId];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_matchingSpans;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = [(NLXSchemaCDMMatchingSpanEnded *)self linkId];

  if (v12)
  {
    v13 = [(NLXSchemaCDMMatchingSpanEnded *)self linkId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addMatchingSpans:(id)a3
{
  v4 = a3;
  matchingSpans = self->_matchingSpans;
  v8 = v4;
  if (!matchingSpans)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_matchingSpans;
    self->_matchingSpans = v6;

    v4 = v8;
    matchingSpans = self->_matchingSpans;
  }

  [(NSArray *)matchingSpans addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = NLXSchemaCDMMatchingSpanEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(NLXSchemaCDMMatchingSpanEnded *)self contextId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NLXSchemaCDMMatchingSpanEnded *)self deleteContextId];
  }

  v9 = [(NLXSchemaCDMMatchingSpanEnded *)self matchingSpans];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(NLXSchemaCDMMatchingSpanEnded *)self setMatchingSpans:v10];

  v11 = [(NLXSchemaCDMMatchingSpanEnded *)self linkId];
  v12 = [v11 applySensitiveConditionsPolicy:v4];
  v13 = [v12 suppressMessage];

  if (v13)
  {
    [(NLXSchemaCDMMatchingSpanEnded *)self deleteLinkId];
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
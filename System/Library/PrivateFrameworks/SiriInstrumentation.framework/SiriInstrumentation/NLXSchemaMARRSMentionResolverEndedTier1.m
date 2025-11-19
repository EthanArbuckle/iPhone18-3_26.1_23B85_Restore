@interface NLXSchemaMARRSMentionResolverEndedTier1
- (BOOL)isEqual:(id)a3;
- (NLXSchemaMARRSMentionResolverEndedTier1)initWithDictionary:(id)a3;
- (NLXSchemaMARRSMentionResolverEndedTier1)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addMentionResolverSpansTier1:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaMARRSMentionResolverEndedTier1

- (NLXSchemaMARRSMentionResolverEndedTier1)initWithDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = NLXSchemaMARRSMentionResolverEndedTier1;
  v5 = [(NLXSchemaMARRSMentionResolverEndedTier1 *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"mentionResolverSpansTier1"];
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
              v13 = [NLXSchemaCDMMatchingSpanTier1 alloc];
              v14 = [(NLXSchemaCDMMatchingSpanTier1 *)v13 initWithDictionary:v12, v19];
              [(NLXSchemaMARRSMentionResolverEndedTier1 *)v5 addMentionResolverSpansTier1:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }
    }

    v15 = [v4 objectForKeyedSubscript:{@"linkId", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(NLXSchemaMARRSMentionResolverEndedTier1 *)v5 setLinkId:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (NLXSchemaMARRSMentionResolverEndedTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaMARRSMentionResolverEndedTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaMARRSMentionResolverEndedTier1 *)self dictionaryRepresentation];
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
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_linkId)
  {
    v4 = [(NLXSchemaMARRSMentionResolverEndedTier1 *)self linkId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"linkId"];
    }
  }

  if ([(NSArray *)self->_mentionResolverSpansTier1s count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_mentionResolverSpansTier1s;
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

          v13 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          if (v13)
          {
            [v7 addObject:v13];
          }

          else
          {
            v14 = [MEMORY[0x1E695DFB0] null];
            [v7 addObject:v14];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"mentionResolverSpansTier1"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v16];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(NLXSchemaMARRSMentionResolverEndedTier1 *)self mentionResolverSpansTier1s];
  v6 = [v4 mentionResolverSpansTier1s];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(NLXSchemaMARRSMentionResolverEndedTier1 *)self mentionResolverSpansTier1s];
  if (v7)
  {
    v8 = v7;
    v9 = [(NLXSchemaMARRSMentionResolverEndedTier1 *)self mentionResolverSpansTier1s];
    v10 = [v4 mentionResolverSpansTier1s];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaMARRSMentionResolverEndedTier1 *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(NLXSchemaMARRSMentionResolverEndedTier1 *)self linkId];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(NLXSchemaMARRSMentionResolverEndedTier1 *)self linkId];
    v15 = [v4 linkId];
    v16 = [v14 isEqual:v15];

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

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_mentionResolverSpansTier1s;
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

  v10 = [(NLXSchemaMARRSMentionResolverEndedTier1 *)self linkId];

  if (v10)
  {
    v11 = [(NLXSchemaMARRSMentionResolverEndedTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addMentionResolverSpansTier1:(id)a3
{
  v4 = a3;
  mentionResolverSpansTier1s = self->_mentionResolverSpansTier1s;
  v8 = v4;
  if (!mentionResolverSpansTier1s)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_mentionResolverSpansTier1s;
    self->_mentionResolverSpansTier1s = v6;

    v4 = v8;
    mentionResolverSpansTier1s = self->_mentionResolverSpansTier1s;
  }

  [(NSArray *)mentionResolverSpansTier1s addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v11.receiver = self;
  v11.super_class = NLXSchemaMARRSMentionResolverEndedTier1;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:v4];
  v6 = [(NLXSchemaMARRSMentionResolverEndedTier1 *)self mentionResolverSpansTier1s:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(NLXSchemaMARRSMentionResolverEndedTier1 *)self setMentionResolverSpansTier1s:v7];

  v8 = [(NLXSchemaMARRSMentionResolverEndedTier1 *)self linkId];
  v9 = [v8 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v9 suppressMessage];
  if (v4)
  {
    [(NLXSchemaMARRSMentionResolverEndedTier1 *)self deleteLinkId];
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
@interface NLXSchemaMARRSQueryRewriteEvaluatedTier1
- (BOOL)isEqual:(id)a3;
- (NLXSchemaMARRSQueryRewriteEvaluatedTier1)initWithDictionary:(id)a3;
- (NLXSchemaMARRSQueryRewriteEvaluatedTier1)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addRewrittenUserUtterances:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaMARRSQueryRewriteEvaluatedTier1

- (NLXSchemaMARRSQueryRewriteEvaluatedTier1)initWithDictionary:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = NLXSchemaMARRSQueryRewriteEvaluatedTier1;
  v5 = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"rewrittenUserUtterances"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        do
        {
          v13 = 0;
          do
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v18 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [v14 copy];
              [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)v5 addRewrittenUserUtterances:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v11);
      }
    }

    v16 = v5;
  }

  return v5;
}

- (NLXSchemaMARRSQueryRewriteEvaluatedTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_linkId)
  {
    v4 = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self linkId];
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

  if (self->_rewrittenUserUtterances)
  {
    v7 = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self rewrittenUserUtterances];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"rewrittenUserUtterances"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self linkId];
  if (v7)
  {
    v8 = v7;
    v9 = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self linkId];
    v10 = [v4 linkId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self rewrittenUserUtterances];
  v6 = [v4 rewrittenUserUtterances];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self rewrittenUserUtterances];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self rewrittenUserUtterances];
    v15 = [v4 rewrittenUserUtterances];
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
  v5 = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self linkId];

  if (v5)
  {
    v6 = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_rewrittenUserUtterances;
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

        PBDataWriterWriteStringField();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)addRewrittenUserUtterances:(id)a3
{
  v4 = a3;
  rewrittenUserUtterances = self->_rewrittenUserUtterances;
  v8 = v4;
  if (!rewrittenUserUtterances)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_rewrittenUserUtterances;
    self->_rewrittenUserUtterances = v6;

    v4 = v8;
    rewrittenUserUtterances = self->_rewrittenUserUtterances;
  }

  [(NSArray *)rewrittenUserUtterances addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NLXSchemaMARRSQueryRewriteEvaluatedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self deleteRewrittenUserUtterances];
  }

  if ([v4 isConditionSet:4])
  {
    [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self deleteRewrittenUserUtterances];
  }

  if ([v4 isConditionSet:5])
  {
    [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self deleteRewrittenUserUtterances];
  }

  if ([v4 isConditionSet:6])
  {
    [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self deleteRewrittenUserUtterances];
  }

  if ([v4 isConditionSet:7])
  {
    [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self deleteRewrittenUserUtterances];
  }

  v6 = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self deleteLinkId];
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
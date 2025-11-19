@interface PEGASUSSchemaPEGASUSRewrittenUtterancesReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSRewrittenUtterancesReported)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSRewrittenUtterancesReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addRewrittenUtterancesMetadata:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSRewrittenUtterancesReported

- (PEGASUSSchemaPEGASUSRewrittenUtterancesReported)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PEGASUSSchemaPEGASUSRewrittenUtterancesReported;
  v5 = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"wasRewrittenUtteranceUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSRewrittenUtterancesReported setWasRewrittenUtteranceUsed:](v5, "setWasRewrittenUtteranceUsed:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"rewrittenUtterancesMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v8;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[PEGASUSSchemaPEGASUSRewrittenUtterance alloc] initWithDictionary:v15];
              [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)v5 addRewrittenUtterancesMetadata:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v12);
      }

      v8 = v19;
    }

    v17 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSRewrittenUtterancesReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self dictionaryRepresentation];
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
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_linkId)
  {
    v4 = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self linkId];
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

  if ([(NSArray *)self->_rewrittenUtterancesMetadatas count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = self->_rewrittenUtterancesMetadatas;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"rewrittenUtterancesMetadata"];
  }

  if (*&self->_has)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSRewrittenUtterancesReported wasRewrittenUtteranceUsed](self, "wasRewrittenUtteranceUsed")}];
    [v3 setObject:v15 forKeyedSubscript:@"wasRewrittenUtteranceUsed"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v17];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_wasRewrittenUtteranceUsed;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSArray *)self->_rewrittenUtterancesMetadatas hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self linkId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self linkId];
    v10 = [v4 linkId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    wasRewrittenUtteranceUsed = self->_wasRewrittenUtteranceUsed;
    if (wasRewrittenUtteranceUsed != [v4 wasRewrittenUtteranceUsed])
    {
      goto LABEL_15;
    }
  }

  v5 = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self rewrittenUtterancesMetadatas];
  v6 = [v4 rewrittenUtterancesMetadatas];
  if ((v5 != 0) != (v6 == 0))
  {
    v13 = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self rewrittenUtterancesMetadatas];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self rewrittenUtterancesMetadatas];
    v16 = [v4 rewrittenUtterancesMetadatas];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self linkId];

  if (v5)
  {
    v6 = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_rewrittenUtterancesMetadatas;
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
}

- (void)addRewrittenUtterancesMetadata:(id)a3
{
  v4 = a3;
  rewrittenUtterancesMetadatas = self->_rewrittenUtterancesMetadatas;
  v8 = v4;
  if (!rewrittenUtterancesMetadatas)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_rewrittenUtterancesMetadatas;
    self->_rewrittenUtterancesMetadatas = v6;

    v4 = v8;
    rewrittenUtterancesMetadatas = self->_rewrittenUtterancesMetadatas;
  }

  [(NSArray *)rewrittenUtterancesMetadatas addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PEGASUSSchemaPEGASUSRewrittenUtterancesReported;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  v6 = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self deleteLinkId];
  }

  v9 = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self rewrittenUtterancesMetadatas];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self setRewrittenUtterancesMetadatas:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
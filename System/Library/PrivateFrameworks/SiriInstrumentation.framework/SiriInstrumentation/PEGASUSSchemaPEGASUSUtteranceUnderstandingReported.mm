@interface PEGASUSSchemaPEGASUSUtteranceUnderstandingReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReported)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addTopKGSAIntentsMetadata:(id)a3;
- (void)addTopU2IntentsMetadata:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSUtteranceUnderstandingReported

- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReported)initWithDictionary:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = PEGASUSSchemaPEGASUSUtteranceUnderstandingReported;
  v5 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)&v37 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"topU2IntentsMetadata"];
    objc_opt_class();
    v28 = v6;
    if (objc_opt_isKindOfClass())
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v9 = v8;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v34;
        do
        {
          v14 = 0;
          do
          {
            if (*v34 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v33 + 1) + 8 * v14);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[PEGASUSSchemaPEGASUSIntent alloc] initWithDictionary:v15];
              [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)v5 addTopU2IntentsMetadata:v16];
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v12);
      }

      v6 = v28;
      v8 = v9;
    }

    v17 = [v4 objectForKeyedSubscript:@"topKGSAIntentsMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v8;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        do
        {
          v22 = 0;
          do
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v29 + 1) + 8 * v22);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = [[PEGASUSSchemaPEGASUSIntent alloc] initWithDictionary:v23];
              [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)v5 addTopKGSAIntentsMetadata:v24];
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
        }

        while (v20);
      }

      v8 = v27;
      v6 = v28;
    }

    v25 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self dictionaryRepresentation];
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
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_linkId)
  {
    v4 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self linkId];
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

  if ([(NSArray *)self->_topKGSAIntentsMetadatas count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = self->_topKGSAIntentsMetadatas;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"topKGSAIntentsMetadata"];
  }

  if ([(NSArray *)self->_topU2IntentsMetadatas count])
  {
    v15 = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = self->_topU2IntentsMetadatas;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
          if (v21)
          {
            [v15 addObject:v21];
          }

          else
          {
            v22 = [MEMORY[0x1E695DFB0] null];
            [v15 addObject:v22];
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v18);
    }

    [v3 setObject:v15 forKeyedSubscript:@"topU2IntentsMetadata"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v24];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSArray *)self->_topU2IntentsMetadatas hash]^ v3;
  return v4 ^ [(NSArray *)self->_topKGSAIntentsMetadatas hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self linkId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self linkId];
    v10 = [v4 linkId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self topU2IntentsMetadatas];
  v6 = [v4 topU2IntentsMetadatas];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self topU2IntentsMetadatas];
  if (v12)
  {
    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self topU2IntentsMetadatas];
    v15 = [v4 topU2IntentsMetadatas];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self topKGSAIntentsMetadatas];
  v6 = [v4 topKGSAIntentsMetadatas];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self topKGSAIntentsMetadatas];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self topKGSAIntentsMetadatas];
    v20 = [v4 topKGSAIntentsMetadatas];
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
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self linkId];

  if (v5)
  {
    v6 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_topU2IntentsMetadatas;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = self->_topKGSAIntentsMetadatas;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)addTopKGSAIntentsMetadata:(id)a3
{
  v4 = a3;
  topKGSAIntentsMetadatas = self->_topKGSAIntentsMetadatas;
  v8 = v4;
  if (!topKGSAIntentsMetadatas)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_topKGSAIntentsMetadatas;
    self->_topKGSAIntentsMetadatas = v6;

    v4 = v8;
    topKGSAIntentsMetadatas = self->_topKGSAIntentsMetadatas;
  }

  [(NSArray *)topKGSAIntentsMetadatas addObject:v4];
}

- (void)addTopU2IntentsMetadata:(id)a3
{
  v4 = a3;
  topU2IntentsMetadatas = self->_topU2IntentsMetadatas;
  v8 = v4;
  if (!topU2IntentsMetadatas)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_topU2IntentsMetadatas;
    self->_topU2IntentsMetadatas = v6;

    v4 = v8;
    topU2IntentsMetadatas = self->_topU2IntentsMetadatas;
  }

  [(NSArray *)topU2IntentsMetadatas addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PEGASUSSchemaPEGASUSUtteranceUnderstandingReported;
  v5 = [(SISchemaInstrumentationMessage *)&v14 applySensitiveConditionsPolicy:v4];
  v6 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self deleteLinkId];
  }

  v9 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self topU2IntentsMetadatas];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self setTopU2IntentsMetadatas:v10];

  v11 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self topKGSAIntentsMetadatas];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v11 underConditions:v4];
  [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self setTopKGSAIntentsMetadatas:v12];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
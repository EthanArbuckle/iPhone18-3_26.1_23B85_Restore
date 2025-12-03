@interface PEGASUSSchemaPEGASUSRewrittenUtterancesReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSRewrittenUtterancesReported)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSRewrittenUtterancesReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addRewrittenUtterancesMetadata:(id)metadata;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSRewrittenUtterancesReported

- (PEGASUSSchemaPEGASUSRewrittenUtterancesReported)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = PEGASUSSchemaPEGASUSRewrittenUtterancesReported;
  v5 = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"wasRewrittenUtteranceUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSRewrittenUtterancesReported setWasRewrittenUtteranceUsed:](v5, "setWasRewrittenUtteranceUsed:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"rewrittenUtterancesMetadata"];
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

- (PEGASUSSchemaPEGASUSRewrittenUtterancesReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self dictionaryRepresentation];
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
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_linkId)
  {
    linkId = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self linkId];
    dictionaryRepresentation = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkId"];
    }
  }

  if ([(NSArray *)self->_rewrittenUtterancesMetadatas count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"rewrittenUtterancesMetadata"];
  }

  if (*&self->_has)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSRewrittenUtterancesReported wasRewrittenUtteranceUsed](self, "wasRewrittenUtteranceUsed")}];
    [dictionary setObject:v15 forKeyedSubscript:@"wasRewrittenUtteranceUsed"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v17];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  linkId = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_14;
  }

  linkId3 = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    wasRewrittenUtteranceUsed = self->_wasRewrittenUtteranceUsed;
    if (wasRewrittenUtteranceUsed != [equalCopy wasRewrittenUtteranceUsed])
    {
      goto LABEL_15;
    }
  }

  linkId = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self rewrittenUtterancesMetadatas];
  linkId2 = [equalCopy rewrittenUtterancesMetadatas];
  if ((linkId != 0) != (linkId2 == 0))
  {
    rewrittenUtterancesMetadatas = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self rewrittenUtterancesMetadatas];
    if (!rewrittenUtterancesMetadatas)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = rewrittenUtterancesMetadatas;
    rewrittenUtterancesMetadatas2 = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self rewrittenUtterancesMetadatas];
    rewrittenUtterancesMetadatas3 = [equalCopy rewrittenUtterancesMetadatas];
    v17 = [rewrittenUtterancesMetadatas2 isEqual:rewrittenUtterancesMetadatas3];

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
  linkId = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self linkId];

  if (linkId)
  {
    linkId2 = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self linkId];
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

- (void)addRewrittenUtterancesMetadata:(id)metadata
{
  metadataCopy = metadata;
  rewrittenUtterancesMetadatas = self->_rewrittenUtterancesMetadatas;
  v8 = metadataCopy;
  if (!rewrittenUtterancesMetadatas)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_rewrittenUtterancesMetadatas;
    self->_rewrittenUtterancesMetadatas = array;

    metadataCopy = v8;
    rewrittenUtterancesMetadatas = self->_rewrittenUtterancesMetadatas;
  }

  [(NSArray *)rewrittenUtterancesMetadatas addObject:metadataCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = PEGASUSSchemaPEGASUSRewrittenUtterancesReported;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  linkId = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self deleteLinkId];
  }

  rewrittenUtterancesMetadatas = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self rewrittenUtterancesMetadatas];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:rewrittenUtterancesMetadatas underConditions:policyCopy];
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
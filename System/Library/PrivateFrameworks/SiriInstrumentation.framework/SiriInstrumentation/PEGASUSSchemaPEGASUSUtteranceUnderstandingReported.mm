@interface PEGASUSSchemaPEGASUSUtteranceUnderstandingReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReported)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addTopKGSAIntentsMetadata:(id)metadata;
- (void)addTopU2IntentsMetadata:(id)metadata;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSUtteranceUnderstandingReported

- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReported)initWithDictionary:(id)dictionary
{
  v40 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = PEGASUSSchemaPEGASUSUtteranceUnderstandingReported;
  v5 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)&v37 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"topU2IntentsMetadata"];
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

    v17 = [dictionaryCopy objectForKeyedSubscript:@"topKGSAIntentsMetadata"];
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

- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self dictionaryRepresentation];
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
  v34 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_linkId)
  {
    linkId = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self linkId];
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

  if ([(NSArray *)self->_topKGSAIntentsMetadatas count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"topKGSAIntentsMetadata"];
  }

  if ([(NSArray *)self->_topU2IntentsMetadatas count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation3 = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array2 addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null3];
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v18);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"topU2IntentsMetadata"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v24];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSArray *)self->_topU2IntentsMetadatas hash]^ v3;
  return v4 ^ [(NSArray *)self->_topKGSAIntentsMetadatas hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  linkId = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_16;
  }

  linkId3 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self topU2IntentsMetadatas];
  linkId2 = [equalCopy topU2IntentsMetadatas];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_16;
  }

  topU2IntentsMetadatas = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self topU2IntentsMetadatas];
  if (topU2IntentsMetadatas)
  {
    v13 = topU2IntentsMetadatas;
    topU2IntentsMetadatas2 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self topU2IntentsMetadatas];
    topU2IntentsMetadatas3 = [equalCopy topU2IntentsMetadatas];
    v16 = [topU2IntentsMetadatas2 isEqual:topU2IntentsMetadatas3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self topKGSAIntentsMetadatas];
  linkId2 = [equalCopy topKGSAIntentsMetadatas];
  if ((linkId != 0) != (linkId2 == 0))
  {
    topKGSAIntentsMetadatas = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self topKGSAIntentsMetadatas];
    if (!topKGSAIntentsMetadatas)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = topKGSAIntentsMetadatas;
    topKGSAIntentsMetadatas2 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self topKGSAIntentsMetadatas];
    topKGSAIntentsMetadatas3 = [equalCopy topKGSAIntentsMetadatas];
    v21 = [topKGSAIntentsMetadatas2 isEqual:topKGSAIntentsMetadatas3];

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

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  linkId = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self linkId];

  if (linkId)
  {
    linkId2 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self linkId];
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

- (void)addTopKGSAIntentsMetadata:(id)metadata
{
  metadataCopy = metadata;
  topKGSAIntentsMetadatas = self->_topKGSAIntentsMetadatas;
  v8 = metadataCopy;
  if (!topKGSAIntentsMetadatas)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_topKGSAIntentsMetadatas;
    self->_topKGSAIntentsMetadatas = array;

    metadataCopy = v8;
    topKGSAIntentsMetadatas = self->_topKGSAIntentsMetadatas;
  }

  [(NSArray *)topKGSAIntentsMetadatas addObject:metadataCopy];
}

- (void)addTopU2IntentsMetadata:(id)metadata
{
  metadataCopy = metadata;
  topU2IntentsMetadatas = self->_topU2IntentsMetadatas;
  v8 = metadataCopy;
  if (!topU2IntentsMetadatas)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_topU2IntentsMetadatas;
    self->_topU2IntentsMetadatas = array;

    metadataCopy = v8;
    topU2IntentsMetadatas = self->_topU2IntentsMetadatas;
  }

  [(NSArray *)topU2IntentsMetadatas addObject:metadataCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v14.receiver = self;
  v14.super_class = PEGASUSSchemaPEGASUSUtteranceUnderstandingReported;
  v5 = [(SISchemaInstrumentationMessage *)&v14 applySensitiveConditionsPolicy:policyCopy];
  linkId = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self deleteLinkId];
  }

  topU2IntentsMetadatas = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self topU2IntentsMetadatas];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:topU2IntentsMetadatas underConditions:policyCopy];
  [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self setTopU2IntentsMetadatas:v10];

  topKGSAIntentsMetadatas = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self topKGSAIntentsMetadatas];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:topKGSAIntentsMetadatas underConditions:policyCopy];
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
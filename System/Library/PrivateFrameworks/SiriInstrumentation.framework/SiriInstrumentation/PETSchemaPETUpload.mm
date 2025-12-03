@interface PETSchemaPETUpload
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PETSchemaPETUpload)initWithDictionary:(id)dictionary;
- (PETSchemaPETUpload)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAggregated_messages:(id)aggregated_messages;
- (void)addTrial_messages:(id)trial_messages;
- (void)addUnaggregated_messages:(id)unaggregated_messages;
- (void)writeTo:(id)to;
@end

@implementation PETSchemaPETUpload

- (PETSchemaPETUpload)initWithDictionary:(id)dictionary
{
  v60 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v56.receiver = self;
  v56.super_class = PETSchemaPETUpload;
  v5 = [(PETSchemaPETUpload *)&v56 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"metadata"];
    objc_opt_class();
    v43 = v6;
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PETSchemaPETMetadata alloc] initWithDictionary:v6];
      [(PETSchemaPETUpload *)v5 setMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"aggregatedMessages"];
    objc_opt_class();
    v42 = v8;
    if (objc_opt_isKindOfClass())
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v52 objects:v59 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v53;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v53 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v52 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[PETSchemaPETAggregatedMessage alloc] initWithDictionary:v14];
              [(PETSchemaPETUpload *)v5 addAggregated_messages:v15];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v52 objects:v59 count:16];
        }

        while (v11);
      }
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"unaggregatedMessages"];
    objc_opt_class();
    v41 = v16;
    if (objc_opt_isKindOfClass())
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v48 objects:v58 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v49;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v49 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v48 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [[PETSchemaPETRawMessage alloc] initWithDictionary:v22];
              [(PETSchemaPETUpload *)v5 addUnaggregated_messages:v23];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v48 objects:v58 count:16];
        }

        while (v19);
      }
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"isCompressed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETUpload setIs_compressed:](v5, "setIs_compressed:", [v24 BOOLValue]);
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"compressedMessages"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v25 options:0];
      [(PETSchemaPETUpload *)v5 setCompressed_messages:v26];
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"trialMessages"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = v25;
      v40 = v24;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v28 = v27;
      v29 = [v28 countByEnumeratingWithState:&v44 objects:v57 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v45;
        do
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v45 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v44 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v34 = [[PETSchemaPETRawMessage alloc] initWithDictionary:v33];
              [(PETSchemaPETUpload *)v5 addTrial_messages:v34];
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v44 objects:v57 count:16];
        }

        while (v30);
      }

      v24 = v40;
      v16 = v41;
      v25 = v39;
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"compressedData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v35 options:0];
      [(PETSchemaPETUpload *)v5 setCompressed_data:v36];
    }

    v37 = v5;
  }

  return v5;
}

- (PETSchemaPETUpload)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PETSchemaPETUpload *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PETSchemaPETUpload *)self dictionaryRepresentation];
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
  v54 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_aggregated_messages count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v5 = self->_aggregated_messages;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v48;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v48 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v47 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"aggregatedMessages"];
  }

  if (self->_compressed_data)
  {
    compressed_data = [(PETSchemaPETUpload *)self compressed_data];
    v13 = [compressed_data base64EncodedStringWithOptions:0];
    if (v13)
    {
      [dictionary setObject:v13 forKeyedSubscript:@"compressedData"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"compressedData"];
    }
  }

  if (self->_compressed_messages)
  {
    compressed_messages = [(PETSchemaPETUpload *)self compressed_messages];
    v16 = [compressed_messages base64EncodedStringWithOptions:0];
    if (v16)
    {
      [dictionary setObject:v16 forKeyedSubscript:@"compressedMessages"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"compressedMessages"];
    }
  }

  if (*&self->_has)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[PETSchemaPETUpload is_compressed](self, "is_compressed")}];
    [dictionary setObject:v18 forKeyedSubscript:@"isCompressed"];
  }

  if (self->_metadata)
  {
    metadata = [(PETSchemaPETUpload *)self metadata];
    dictionaryRepresentation2 = [metadata dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"metadata"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"metadata"];
    }
  }

  if ([(NSArray *)self->_trial_messages count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v23 = self->_trial_messages;
    v24 = [(NSArray *)v23 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v44;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v44 != v26)
          {
            objc_enumerationMutation(v23);
          }

          dictionaryRepresentation3 = [*(*(&v43 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array2 addObject:dictionaryRepresentation3];
          }

          else
          {
            null5 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null5];
          }
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v25);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"trialMessages"];
  }

  if ([(NSArray *)self->_unaggregated_messages count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v31 = self->_unaggregated_messages;
    v32 = [(NSArray *)v31 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v40;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v40 != v34)
          {
            objc_enumerationMutation(v31);
          }

          dictionaryRepresentation4 = [*(*(&v39 + 1) + 8 * k) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array3 addObject:dictionaryRepresentation4];
          }

          else
          {
            null6 = [MEMORY[0x1E695DFB0] null];
            [array3 addObject:null6];
          }
        }

        v33 = [(NSArray *)v31 countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v33);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"unaggregatedMessages"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v39];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(PETSchemaPETMetadata *)self->_metadata hash];
  v4 = [(NSArray *)self->_aggregated_messages hash];
  v5 = [(NSArray *)self->_unaggregated_messages hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_is_compressed;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v5 ^ v6;
  v8 = [(NSData *)self->_compressed_messages hash];
  v9 = v8 ^ [(NSArray *)self->_trial_messages hash];
  return v7 ^ v9 ^ [(NSData *)self->_compressed_data hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  metadata = [(PETSchemaPETUpload *)self metadata];
  metadata2 = [equalCopy metadata];
  if ((metadata != 0) == (metadata2 == 0))
  {
    goto LABEL_34;
  }

  metadata3 = [(PETSchemaPETUpload *)self metadata];
  if (metadata3)
  {
    v8 = metadata3;
    metadata4 = [(PETSchemaPETUpload *)self metadata];
    metadata5 = [equalCopy metadata];
    v11 = [metadata4 isEqual:metadata5];

    if (!v11)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  metadata = [(PETSchemaPETUpload *)self aggregated_messages];
  metadata2 = [equalCopy aggregated_messages];
  if ((metadata != 0) == (metadata2 == 0))
  {
    goto LABEL_34;
  }

  aggregated_messages = [(PETSchemaPETUpload *)self aggregated_messages];
  if (aggregated_messages)
  {
    v13 = aggregated_messages;
    aggregated_messages2 = [(PETSchemaPETUpload *)self aggregated_messages];
    aggregated_messages3 = [equalCopy aggregated_messages];
    v16 = [aggregated_messages2 isEqual:aggregated_messages3];

    if (!v16)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  metadata = [(PETSchemaPETUpload *)self unaggregated_messages];
  metadata2 = [equalCopy unaggregated_messages];
  if ((metadata != 0) == (metadata2 == 0))
  {
    goto LABEL_34;
  }

  unaggregated_messages = [(PETSchemaPETUpload *)self unaggregated_messages];
  if (unaggregated_messages)
  {
    v18 = unaggregated_messages;
    unaggregated_messages2 = [(PETSchemaPETUpload *)self unaggregated_messages];
    unaggregated_messages3 = [equalCopy unaggregated_messages];
    v21 = [unaggregated_messages2 isEqual:unaggregated_messages3];

    if (!v21)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[64] & 1))
  {
    goto LABEL_35;
  }

  if (*&self->_has)
  {
    is_compressed = self->_is_compressed;
    if (is_compressed != [equalCopy is_compressed])
    {
      goto LABEL_35;
    }
  }

  metadata = [(PETSchemaPETUpload *)self compressed_messages];
  metadata2 = [equalCopy compressed_messages];
  if ((metadata != 0) == (metadata2 == 0))
  {
    goto LABEL_34;
  }

  compressed_messages = [(PETSchemaPETUpload *)self compressed_messages];
  if (compressed_messages)
  {
    v24 = compressed_messages;
    compressed_messages2 = [(PETSchemaPETUpload *)self compressed_messages];
    compressed_messages3 = [equalCopy compressed_messages];
    v27 = [compressed_messages2 isEqual:compressed_messages3];

    if (!v27)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  metadata = [(PETSchemaPETUpload *)self trial_messages];
  metadata2 = [equalCopy trial_messages];
  if ((metadata != 0) == (metadata2 == 0))
  {
    goto LABEL_34;
  }

  trial_messages = [(PETSchemaPETUpload *)self trial_messages];
  if (trial_messages)
  {
    v29 = trial_messages;
    trial_messages2 = [(PETSchemaPETUpload *)self trial_messages];
    trial_messages3 = [equalCopy trial_messages];
    v32 = [trial_messages2 isEqual:trial_messages3];

    if (!v32)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  metadata = [(PETSchemaPETUpload *)self compressed_data];
  metadata2 = [equalCopy compressed_data];
  if ((metadata != 0) != (metadata2 == 0))
  {
    compressed_data = [(PETSchemaPETUpload *)self compressed_data];
    if (!compressed_data)
    {

LABEL_38:
      v38 = 1;
      goto LABEL_36;
    }

    v34 = compressed_data;
    compressed_data2 = [(PETSchemaPETUpload *)self compressed_data];
    compressed_data3 = [equalCopy compressed_data];
    v37 = [compressed_data2 isEqual:compressed_data3];

    if (v37)
    {
      goto LABEL_38;
    }
  }

  else
  {
LABEL_34:
  }

LABEL_35:
  v38 = 0;
LABEL_36:

  return v38;
}

- (void)writeTo:(id)to
{
  v39 = *MEMORY[0x1E69E9840];
  toCopy = to;
  metadata = [(PETSchemaPETUpload *)self metadata];

  if (metadata)
  {
    metadata2 = [(PETSchemaPETUpload *)self metadata];
    PBDataWriterWriteSubmessage();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = self->_aggregated_messages;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      v11 = 0;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v9);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = self->_unaggregated_messages;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      v16 = 0;
      do
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v14);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  compressed_messages = [(PETSchemaPETUpload *)self compressed_messages];

  if (compressed_messages)
  {
    PBDataWriterWriteDataField();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = self->_trial_messages;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v20);
  }

  compressed_data = [(PETSchemaPETUpload *)self compressed_data];

  if (compressed_data)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)addTrial_messages:(id)trial_messages
{
  trial_messagesCopy = trial_messages;
  trial_messages = self->_trial_messages;
  v8 = trial_messagesCopy;
  if (!trial_messages)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_trial_messages;
    self->_trial_messages = array;

    trial_messagesCopy = v8;
    trial_messages = self->_trial_messages;
  }

  [(NSArray *)trial_messages addObject:trial_messagesCopy];
}

- (void)addUnaggregated_messages:(id)unaggregated_messages
{
  unaggregated_messagesCopy = unaggregated_messages;
  unaggregated_messages = self->_unaggregated_messages;
  v8 = unaggregated_messagesCopy;
  if (!unaggregated_messages)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_unaggregated_messages;
    self->_unaggregated_messages = array;

    unaggregated_messagesCopy = v8;
    unaggregated_messages = self->_unaggregated_messages;
  }

  [(NSArray *)unaggregated_messages addObject:unaggregated_messagesCopy];
}

- (void)addAggregated_messages:(id)aggregated_messages
{
  aggregated_messagesCopy = aggregated_messages;
  aggregated_messages = self->_aggregated_messages;
  v8 = aggregated_messagesCopy;
  if (!aggregated_messages)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_aggregated_messages;
    self->_aggregated_messages = array;

    aggregated_messagesCopy = v8;
    aggregated_messages = self->_aggregated_messages;
  }

  [(NSArray *)aggregated_messages addObject:aggregated_messagesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = PETSchemaPETUpload;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  metadata = [(PETSchemaPETUpload *)self metadata];
  v7 = [metadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PETSchemaPETUpload *)self deleteMetadata];
  }

  aggregated_messages = [(PETSchemaPETUpload *)self aggregated_messages];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:aggregated_messages underConditions:policyCopy];
  [(PETSchemaPETUpload *)self setAggregated_messages:v10];

  unaggregated_messages = [(PETSchemaPETUpload *)self unaggregated_messages];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:unaggregated_messages underConditions:policyCopy];
  [(PETSchemaPETUpload *)self setUnaggregated_messages:v12];

  trial_messages = [(PETSchemaPETUpload *)self trial_messages];
  v14 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:trial_messages underConditions:policyCopy];
  [(PETSchemaPETUpload *)self setTrial_messages:v14];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
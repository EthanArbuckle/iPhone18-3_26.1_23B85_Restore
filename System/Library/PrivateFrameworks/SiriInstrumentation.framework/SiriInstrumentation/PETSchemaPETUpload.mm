@interface PETSchemaPETUpload
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PETSchemaPETUpload)initWithDictionary:(id)a3;
- (PETSchemaPETUpload)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAggregated_messages:(id)a3;
- (void)addTrial_messages:(id)a3;
- (void)addUnaggregated_messages:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PETSchemaPETUpload

- (PETSchemaPETUpload)initWithDictionary:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v56.receiver = self;
  v56.super_class = PETSchemaPETUpload;
  v5 = [(PETSchemaPETUpload *)&v56 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"metadata"];
    objc_opt_class();
    v43 = v6;
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PETSchemaPETMetadata alloc] initWithDictionary:v6];
      [(PETSchemaPETUpload *)v5 setMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"aggregatedMessages"];
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

    v16 = [v4 objectForKeyedSubscript:@"unaggregatedMessages"];
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

    v24 = [v4 objectForKeyedSubscript:@"isCompressed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETUpload setIs_compressed:](v5, "setIs_compressed:", [v24 BOOLValue]);
    }

    v25 = [v4 objectForKeyedSubscript:@"compressedMessages"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v25 options:0];
      [(PETSchemaPETUpload *)v5 setCompressed_messages:v26];
    }

    v27 = [v4 objectForKeyedSubscript:@"trialMessages"];
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

    v35 = [v4 objectForKeyedSubscript:@"compressedData"];
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

- (PETSchemaPETUpload)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PETSchemaPETUpload *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PETSchemaPETUpload *)self dictionaryRepresentation];
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
  v54 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_aggregated_messages count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v47 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"aggregatedMessages"];
  }

  if (self->_compressed_data)
  {
    v12 = [(PETSchemaPETUpload *)self compressed_data];
    v13 = [v12 base64EncodedStringWithOptions:0];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"compressedData"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"compressedData"];
    }
  }

  if (self->_compressed_messages)
  {
    v15 = [(PETSchemaPETUpload *)self compressed_messages];
    v16 = [v15 base64EncodedStringWithOptions:0];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"compressedMessages"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"compressedMessages"];
    }
  }

  if (*&self->_has)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[PETSchemaPETUpload is_compressed](self, "is_compressed")}];
    [v3 setObject:v18 forKeyedSubscript:@"isCompressed"];
  }

  if (self->_metadata)
  {
    v19 = [(PETSchemaPETUpload *)self metadata];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"metadata"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"metadata"];
    }
  }

  if ([(NSArray *)self->_trial_messages count])
  {
    v22 = [MEMORY[0x1E695DF70] array];
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

          v28 = [*(*(&v43 + 1) + 8 * j) dictionaryRepresentation];
          if (v28)
          {
            [v22 addObject:v28];
          }

          else
          {
            v29 = [MEMORY[0x1E695DFB0] null];
            [v22 addObject:v29];
          }
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v25);
    }

    [v3 setObject:v22 forKeyedSubscript:@"trialMessages"];
  }

  if ([(NSArray *)self->_unaggregated_messages count])
  {
    v30 = [MEMORY[0x1E695DF70] array];
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

          v36 = [*(*(&v39 + 1) + 8 * k) dictionaryRepresentation];
          if (v36)
          {
            [v30 addObject:v36];
          }

          else
          {
            v37 = [MEMORY[0x1E695DFB0] null];
            [v30 addObject:v37];
          }
        }

        v33 = [(NSArray *)v31 countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v33);
    }

    [v3 setObject:v30 forKeyedSubscript:@"unaggregatedMessages"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v39];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  v5 = [(PETSchemaPETUpload *)self metadata];
  v6 = [v4 metadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v7 = [(PETSchemaPETUpload *)self metadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(PETSchemaPETUpload *)self metadata];
    v10 = [v4 metadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v5 = [(PETSchemaPETUpload *)self aggregated_messages];
  v6 = [v4 aggregated_messages];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v12 = [(PETSchemaPETUpload *)self aggregated_messages];
  if (v12)
  {
    v13 = v12;
    v14 = [(PETSchemaPETUpload *)self aggregated_messages];
    v15 = [v4 aggregated_messages];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v5 = [(PETSchemaPETUpload *)self unaggregated_messages];
  v6 = [v4 unaggregated_messages];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v17 = [(PETSchemaPETUpload *)self unaggregated_messages];
  if (v17)
  {
    v18 = v17;
    v19 = [(PETSchemaPETUpload *)self unaggregated_messages];
    v20 = [v4 unaggregated_messages];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[64] & 1))
  {
    goto LABEL_35;
  }

  if (*&self->_has)
  {
    is_compressed = self->_is_compressed;
    if (is_compressed != [v4 is_compressed])
    {
      goto LABEL_35;
    }
  }

  v5 = [(PETSchemaPETUpload *)self compressed_messages];
  v6 = [v4 compressed_messages];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v23 = [(PETSchemaPETUpload *)self compressed_messages];
  if (v23)
  {
    v24 = v23;
    v25 = [(PETSchemaPETUpload *)self compressed_messages];
    v26 = [v4 compressed_messages];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v5 = [(PETSchemaPETUpload *)self trial_messages];
  v6 = [v4 trial_messages];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v28 = [(PETSchemaPETUpload *)self trial_messages];
  if (v28)
  {
    v29 = v28;
    v30 = [(PETSchemaPETUpload *)self trial_messages];
    v31 = [v4 trial_messages];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v5 = [(PETSchemaPETUpload *)self compressed_data];
  v6 = [v4 compressed_data];
  if ((v5 != 0) != (v6 == 0))
  {
    v33 = [(PETSchemaPETUpload *)self compressed_data];
    if (!v33)
    {

LABEL_38:
      v38 = 1;
      goto LABEL_36;
    }

    v34 = v33;
    v35 = [(PETSchemaPETUpload *)self compressed_data];
    v36 = [v4 compressed_data];
    v37 = [v35 isEqual:v36];

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

- (void)writeTo:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PETSchemaPETUpload *)self metadata];

  if (v5)
  {
    v6 = [(PETSchemaPETUpload *)self metadata];
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

  v17 = [(PETSchemaPETUpload *)self compressed_messages];

  if (v17)
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

  v23 = [(PETSchemaPETUpload *)self compressed_data];

  if (v23)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)addTrial_messages:(id)a3
{
  v4 = a3;
  trial_messages = self->_trial_messages;
  v8 = v4;
  if (!trial_messages)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_trial_messages;
    self->_trial_messages = v6;

    v4 = v8;
    trial_messages = self->_trial_messages;
  }

  [(NSArray *)trial_messages addObject:v4];
}

- (void)addUnaggregated_messages:(id)a3
{
  v4 = a3;
  unaggregated_messages = self->_unaggregated_messages;
  v8 = v4;
  if (!unaggregated_messages)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_unaggregated_messages;
    self->_unaggregated_messages = v6;

    v4 = v8;
    unaggregated_messages = self->_unaggregated_messages;
  }

  [(NSArray *)unaggregated_messages addObject:v4];
}

- (void)addAggregated_messages:(id)a3
{
  v4 = a3;
  aggregated_messages = self->_aggregated_messages;
  v8 = v4;
  if (!aggregated_messages)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_aggregated_messages;
    self->_aggregated_messages = v6;

    v4 = v8;
    aggregated_messages = self->_aggregated_messages;
  }

  [(NSArray *)aggregated_messages addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PETSchemaPETUpload;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(PETSchemaPETUpload *)self metadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PETSchemaPETUpload *)self deleteMetadata];
  }

  v9 = [(PETSchemaPETUpload *)self aggregated_messages];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(PETSchemaPETUpload *)self setAggregated_messages:v10];

  v11 = [(PETSchemaPETUpload *)self unaggregated_messages];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v11 underConditions:v4];
  [(PETSchemaPETUpload *)self setUnaggregated_messages:v12];

  v13 = [(PETSchemaPETUpload *)self trial_messages];
  v14 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v13 underConditions:v4];
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
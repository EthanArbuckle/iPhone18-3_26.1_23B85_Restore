@interface INFERENCESchemaINFERENCEContactCandidatesInfoGenerated
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEContactCandidatesInfoGenerated)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEContactCandidatesInfoGenerated)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addCandidates:(id)a3;
- (void)setHasIsEntityCandidateRetrievalEnabled:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEContactCandidatesInfoGenerated

- (INFERENCESchemaINFERENCEContactCandidatesInfoGenerated)initWithDictionary:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32.receiver = self;
  v32.super_class = INFERENCESchemaINFERENCEContactCandidatesInfoGenerated;
  v5 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)&v32 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"originalResolutionContextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)v5 setOriginalResolutionContextId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"queryId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)v5 setQueryId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"contactQueryMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[INFERENCESchemaINFERENCEContactQueryMetadata alloc] initWithDictionary:v10];
      [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)v5 setContactQueryMetadata:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"ontologySource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactCandidatesInfoGenerated setOntologySource:](v5, "setOntologySource:", [v12 intValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"candidates"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v12;
      v25 = v10;
      v26 = v8;
      v27 = v6;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v29;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v28 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [[INFERENCESchemaINFERENCECandidateInfo alloc] initWithDictionary:v19];
              [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)v5 addCandidates:v20];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v16);
      }

      v8 = v26;
      v6 = v27;
      v12 = v24;
    }

    v21 = [v4 objectForKeyedSubscript:{@"isEntityCandidateRetrievalEnabled", v24, v25, v26, v27, v28}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactCandidatesInfoGenerated setIsEntityCandidateRetrievalEnabled:](v5, "setIsEntityCandidateRetrievalEnabled:", [v21 BOOLValue]);
    }

    v22 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEContactCandidatesInfoGenerated)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self dictionaryRepresentation];
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
  v31 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_candidates count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = self->_candidates;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"candidates"];
  }

  if (self->_contactQueryMetadata)
  {
    v12 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self contactQueryMetadata];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"contactQueryMetadata"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"contactQueryMetadata"];
    }
  }

  v15 = *(&self->_isEntityCandidateRetrievalEnabled + 1);
  if ((v15 & 2) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactCandidatesInfoGenerated isEntityCandidateRetrievalEnabled](self, "isEntityCandidateRetrievalEnabled")}];
    [v3 setObject:v16 forKeyedSubscript:@"isEntityCandidateRetrievalEnabled"];

    v15 = *(&self->_isEntityCandidateRetrievalEnabled + 1);
  }

  if (v15)
  {
    v17 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self ontologySource]- 1;
    if (v17 > 3)
    {
      v18 = @"INFERENCEONTOLOGYSOURCE_UNKNOWN";
    }

    else
    {
      v18 = off_1E78D8958[v17];
    }

    [v3 setObject:v18 forKeyedSubscript:{@"ontologySource", v26}];
  }

  if (self->_originalResolutionContextId)
  {
    v19 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self originalResolutionContextId];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"originalResolutionContextId"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"originalResolutionContextId"];
    }
  }

  if (self->_queryId)
  {
    v22 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self queryId];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"queryId"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"queryId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v26];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_originalResolutionContextId hash];
  v4 = [(SISchemaUUID *)self->_queryId hash];
  v5 = [(INFERENCESchemaINFERENCEContactQueryMetadata *)self->_contactQueryMetadata hash];
  if (*(&self->_isEntityCandidateRetrievalEnabled + 1))
  {
    v6 = 2654435761 * self->_ontologySource;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSArray *)self->_candidates hash];
  if ((*(&self->_isEntityCandidateRetrievalEnabled + 1) & 2) != 0)
  {
    v8 = 2654435761 * self->_isEntityCandidateRetrievalEnabled;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  v5 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self originalResolutionContextId];
  v6 = [v4 originalResolutionContextId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v7 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self originalResolutionContextId];
  if (v7)
  {
    v8 = v7;
    v9 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self originalResolutionContextId];
    v10 = [v4 originalResolutionContextId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self queryId];
  v6 = [v4 queryId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v12 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self queryId];
  if (v12)
  {
    v13 = v12;
    v14 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self queryId];
    v15 = [v4 queryId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self contactQueryMetadata];
  v6 = [v4 contactQueryMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v17 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self contactQueryMetadata];
  if (v17)
  {
    v18 = v17;
    v19 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self contactQueryMetadata];
    v20 = [v4 contactQueryMetadata];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  if (*(&self->_isEntityCandidateRetrievalEnabled + 1) != (v4[49] & 1))
  {
    goto LABEL_25;
  }

  if (*(&self->_isEntityCandidateRetrievalEnabled + 1))
  {
    ontologySource = self->_ontologySource;
    if (ontologySource != [v4 ontologySource])
    {
      goto LABEL_25;
    }
  }

  v5 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self candidates];
  v6 = [v4 candidates];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_24:

    goto LABEL_25;
  }

  v23 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self candidates];
  if (v23)
  {
    v24 = v23;
    v25 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self candidates];
    v26 = [v4 candidates];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v30 = (*(&self->_isEntityCandidateRetrievalEnabled + 1) >> 1) & 1;
  if (v30 == ((v4[49] >> 1) & 1))
  {
    if (!v30 || (isEntityCandidateRetrievalEnabled = self->_isEntityCandidateRetrievalEnabled, isEntityCandidateRetrievalEnabled == [v4 isEntityCandidateRetrievalEnabled]))
    {
      v28 = 1;
      goto LABEL_26;
    }
  }

LABEL_25:
  v28 = 0;
LABEL_26:

  return v28;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self originalResolutionContextId];

  if (v5)
  {
    v6 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self originalResolutionContextId];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self queryId];

  if (v7)
  {
    v8 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self queryId];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self contactQueryMetadata];

  if (v9)
  {
    v10 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self contactQueryMetadata];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_isEntityCandidateRetrievalEnabled + 1))
  {
    PBDataWriterWriteInt32Field();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_candidates;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }

  if ((*(&self->_isEntityCandidateRetrievalEnabled + 1) & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasIsEntityCandidateRetrievalEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEntityCandidateRetrievalEnabled + 1) = *(&self->_isEntityCandidateRetrievalEnabled + 1) & 0xFD | v3;
}

- (void)addCandidates:(id)a3
{
  v4 = a3;
  candidates = self->_candidates;
  v8 = v4;
  if (!candidates)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_candidates;
    self->_candidates = v6;

    v4 = v8;
    candidates = self->_candidates;
  }

  [(NSArray *)candidates addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = INFERENCESchemaINFERENCEContactCandidatesInfoGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:v4];
  v6 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self originalResolutionContextId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self deleteOriginalResolutionContextId];
  }

  v9 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self queryId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self deleteQueryId];
  }

  v12 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self contactQueryMetadata];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self deleteContactQueryMetadata];
  }

  v15 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self candidates];
  v16 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v15 underConditions:v4];
  [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self setCandidates:v16];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
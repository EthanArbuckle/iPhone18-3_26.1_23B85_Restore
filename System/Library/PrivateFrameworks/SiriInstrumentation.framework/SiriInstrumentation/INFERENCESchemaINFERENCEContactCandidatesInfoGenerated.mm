@interface INFERENCESchemaINFERENCEContactCandidatesInfoGenerated
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEContactCandidatesInfoGenerated)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEContactCandidatesInfoGenerated)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addCandidates:(id)candidates;
- (void)setHasIsEntityCandidateRetrievalEnabled:(BOOL)enabled;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEContactCandidatesInfoGenerated

- (INFERENCESchemaINFERENCEContactCandidatesInfoGenerated)initWithDictionary:(id)dictionary
{
  v34 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = INFERENCESchemaINFERENCEContactCandidatesInfoGenerated;
  v5 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)&v32 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalResolutionContextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)v5 setOriginalResolutionContextId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"queryId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)v5 setQueryId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"contactQueryMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[INFERENCESchemaINFERENCEContactQueryMetadata alloc] initWithDictionary:v10];
      [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)v5 setContactQueryMetadata:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"ontologySource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactCandidatesInfoGenerated setOntologySource:](v5, "setOntologySource:", [v12 intValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"candidates"];
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

    v21 = [dictionaryCopy objectForKeyedSubscript:{@"isEntityCandidateRetrievalEnabled", v24, v25, v26, v27, v28}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactCandidatesInfoGenerated setIsEntityCandidateRetrievalEnabled:](v5, "setIsEntityCandidateRetrievalEnabled:", [v21 BOOLValue]);
    }

    v22 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEContactCandidatesInfoGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self dictionaryRepresentation];
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
  v31 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_candidates count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"candidates"];
  }

  if (self->_contactQueryMetadata)
  {
    contactQueryMetadata = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self contactQueryMetadata];
    dictionaryRepresentation2 = [contactQueryMetadata dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"contactQueryMetadata"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"contactQueryMetadata"];
    }
  }

  v15 = *(&self->_isEntityCandidateRetrievalEnabled + 1);
  if ((v15 & 2) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactCandidatesInfoGenerated isEntityCandidateRetrievalEnabled](self, "isEntityCandidateRetrievalEnabled")}];
    [dictionary setObject:v16 forKeyedSubscript:@"isEntityCandidateRetrievalEnabled"];

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

    [dictionary setObject:v18 forKeyedSubscript:{@"ontologySource", v26}];
  }

  if (self->_originalResolutionContextId)
  {
    originalResolutionContextId = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self originalResolutionContextId];
    dictionaryRepresentation3 = [originalResolutionContextId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"originalResolutionContextId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"originalResolutionContextId"];
    }
  }

  if (self->_queryId)
  {
    queryId = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self queryId];
    dictionaryRepresentation4 = [queryId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"queryId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"queryId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v26];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  originalResolutionContextId = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self originalResolutionContextId];
  originalResolutionContextId2 = [equalCopy originalResolutionContextId];
  if ((originalResolutionContextId != 0) == (originalResolutionContextId2 == 0))
  {
    goto LABEL_24;
  }

  originalResolutionContextId3 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self originalResolutionContextId];
  if (originalResolutionContextId3)
  {
    v8 = originalResolutionContextId3;
    originalResolutionContextId4 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self originalResolutionContextId];
    originalResolutionContextId5 = [equalCopy originalResolutionContextId];
    v11 = [originalResolutionContextId4 isEqual:originalResolutionContextId5];

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  originalResolutionContextId = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self queryId];
  originalResolutionContextId2 = [equalCopy queryId];
  if ((originalResolutionContextId != 0) == (originalResolutionContextId2 == 0))
  {
    goto LABEL_24;
  }

  queryId = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self queryId];
  if (queryId)
  {
    v13 = queryId;
    queryId2 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self queryId];
    queryId3 = [equalCopy queryId];
    v16 = [queryId2 isEqual:queryId3];

    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  originalResolutionContextId = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self contactQueryMetadata];
  originalResolutionContextId2 = [equalCopy contactQueryMetadata];
  if ((originalResolutionContextId != 0) == (originalResolutionContextId2 == 0))
  {
    goto LABEL_24;
  }

  contactQueryMetadata = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self contactQueryMetadata];
  if (contactQueryMetadata)
  {
    v18 = contactQueryMetadata;
    contactQueryMetadata2 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self contactQueryMetadata];
    contactQueryMetadata3 = [equalCopy contactQueryMetadata];
    v21 = [contactQueryMetadata2 isEqual:contactQueryMetadata3];

    if (!v21)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  if (*(&self->_isEntityCandidateRetrievalEnabled + 1) != (equalCopy[49] & 1))
  {
    goto LABEL_25;
  }

  if (*(&self->_isEntityCandidateRetrievalEnabled + 1))
  {
    ontologySource = self->_ontologySource;
    if (ontologySource != [equalCopy ontologySource])
    {
      goto LABEL_25;
    }
  }

  originalResolutionContextId = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self candidates];
  originalResolutionContextId2 = [equalCopy candidates];
  if ((originalResolutionContextId != 0) == (originalResolutionContextId2 == 0))
  {
LABEL_24:

    goto LABEL_25;
  }

  candidates = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self candidates];
  if (candidates)
  {
    v24 = candidates;
    candidates2 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self candidates];
    candidates3 = [equalCopy candidates];
    v27 = [candidates2 isEqual:candidates3];

    if (!v27)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v30 = (*(&self->_isEntityCandidateRetrievalEnabled + 1) >> 1) & 1;
  if (v30 == ((equalCopy[49] >> 1) & 1))
  {
    if (!v30 || (isEntityCandidateRetrievalEnabled = self->_isEntityCandidateRetrievalEnabled, isEntityCandidateRetrievalEnabled == [equalCopy isEntityCandidateRetrievalEnabled]))
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

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  originalResolutionContextId = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self originalResolutionContextId];

  if (originalResolutionContextId)
  {
    originalResolutionContextId2 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self originalResolutionContextId];
    PBDataWriterWriteSubmessage();
  }

  queryId = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self queryId];

  if (queryId)
  {
    queryId2 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self queryId];
    PBDataWriterWriteSubmessage();
  }

  contactQueryMetadata = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self contactQueryMetadata];

  if (contactQueryMetadata)
  {
    contactQueryMetadata2 = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self contactQueryMetadata];
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

- (void)setHasIsEntityCandidateRetrievalEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEntityCandidateRetrievalEnabled + 1) = *(&self->_isEntityCandidateRetrievalEnabled + 1) & 0xFD | v3;
}

- (void)addCandidates:(id)candidates
{
  candidatesCopy = candidates;
  candidates = self->_candidates;
  v8 = candidatesCopy;
  if (!candidates)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_candidates;
    self->_candidates = array;

    candidatesCopy = v8;
    candidates = self->_candidates;
  }

  [(NSArray *)candidates addObject:candidatesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v18.receiver = self;
  v18.super_class = INFERENCESchemaINFERENCEContactCandidatesInfoGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:policyCopy];
  originalResolutionContextId = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self originalResolutionContextId];
  v7 = [originalResolutionContextId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self deleteOriginalResolutionContextId];
  }

  queryId = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self queryId];
  v10 = [queryId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self deleteQueryId];
  }

  contactQueryMetadata = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self contactQueryMetadata];
  v13 = [contactQueryMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self deleteContactQueryMetadata];
  }

  candidates = [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self candidates];
  v16 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:candidates underConditions:policyCopy];
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
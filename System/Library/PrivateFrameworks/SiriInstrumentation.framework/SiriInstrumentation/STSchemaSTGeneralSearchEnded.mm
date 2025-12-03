@interface STSchemaSTGeneralSearchEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (STSchemaSTGeneralSearchEnded)initWithDictionary:(id)dictionary;
- (STSchemaSTGeneralSearchEnded)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addResult:(id)result;
- (void)setHasDialogFallbackReason:(BOOL)reason;
- (void)writeTo:(id)to;
@end

@implementation STSchemaSTGeneralSearchEnded

- (STSchemaSTGeneralSearchEnded)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = STSchemaSTGeneralSearchEnded;
  v5 = [(STSchemaSTGeneralSearchEnded *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"result"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
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

            v12 = *(*(&v21 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [STSchemaSTGeneralSearchResult alloc];
              v14 = [(STSchemaSTGeneralSearchResult *)v13 initWithDictionary:v12, v21];
              [(STSchemaSTGeneralSearchEnded *)v5 addResult:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"responseDialogSource", v21}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTGeneralSearchEnded setResponseDialogSource:](v5, "setResponseDialogSource:", [v15 intValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"dialogFallbackReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTGeneralSearchEnded setDialogFallbackReason:](v5, "setDialogFallbackReason:", [v16 intValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[SISchemaUUID alloc] initWithDictionary:v17];
      [(STSchemaSTGeneralSearchEnded *)v5 setLinkId:v18];
    }

    v19 = v5;
  }

  return v5;
}

- (STSchemaSTGeneralSearchEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STSchemaSTGeneralSearchEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(STSchemaSTGeneralSearchEnded *)self dictionaryRepresentation];
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
  v25 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [(STSchemaSTGeneralSearchEnded *)self dialogFallbackReason]- 1;
    if (v4 > 4)
    {
      v5 = @"STGENERALSEARCHRESPONSEDIALOGFALLBACKREASON_UNKNOWN";
    }

    else
    {
      v5 = off_1E78E7838[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"dialogFallbackReason"];
  }

  if (self->_linkId)
  {
    linkId = [(STSchemaSTGeneralSearchEnded *)self linkId];
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

  if (*&self->_has)
  {
    v9 = [(STSchemaSTGeneralSearchEnded *)self responseDialogSource]- 1;
    if (v9 > 4)
    {
      v10 = @"STGENERALSEARCHRESPONSEDIALOGSOURCE_UNKNOWN";
    }

    else
    {
      v10 = off_1E78E7860[v9];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"responseDialogSource"];
  }

  if ([(NSArray *)self->_results count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = self->_results;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
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

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [dictionary setObject:array forKeyedSubscript:@"result"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v20];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_results hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_responseDialogSource;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5 ^ [(SISchemaUUID *)self->_linkId hash];
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_dialogFallbackReason;
  return v4 ^ v3 ^ v5 ^ [(SISchemaUUID *)self->_linkId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  results = [(STSchemaSTGeneralSearchEnded *)self results];
  results2 = [equalCopy results];
  if ((results != 0) == (results2 == 0))
  {
    goto LABEL_18;
  }

  results3 = [(STSchemaSTGeneralSearchEnded *)self results];
  if (results3)
  {
    v8 = results3;
    results4 = [(STSchemaSTGeneralSearchEnded *)self results];
    results5 = [equalCopy results];
    v11 = [results4 isEqual:results5];

    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[32];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    responseDialogSource = self->_responseDialogSource;
    if (responseDialogSource != [equalCopy responseDialogSource])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v13 = equalCopy[32];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v15)
  {
    dialogFallbackReason = self->_dialogFallbackReason;
    if (dialogFallbackReason != [equalCopy dialogFallbackReason])
    {
      goto LABEL_19;
    }
  }

  results = [(STSchemaSTGeneralSearchEnded *)self linkId];
  results2 = [equalCopy linkId];
  if ((results != 0) == (results2 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  linkId = [(STSchemaSTGeneralSearchEnded *)self linkId];
  if (!linkId)
  {

LABEL_22:
    v22 = 1;
    goto LABEL_20;
  }

  v18 = linkId;
  linkId2 = [(STSchemaSTGeneralSearchEnded *)self linkId];
  linkId3 = [equalCopy linkId];
  v21 = [linkId2 isEqual:linkId3];

  if (v21)
  {
    goto LABEL_22;
  }

LABEL_19:
  v22 = 0;
LABEL_20:

  return v22;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_results;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  linkId = [(STSchemaSTGeneralSearchEnded *)self linkId];

  if (linkId)
  {
    linkId2 = [(STSchemaSTGeneralSearchEnded *)self linkId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasDialogFallbackReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addResult:(id)result
{
  resultCopy = result;
  results = self->_results;
  v8 = resultCopy;
  if (!results)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_results;
    self->_results = array;

    resultCopy = v8;
    results = self->_results;
  }

  [(NSArray *)results addObject:resultCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v11.receiver = self;
  v11.super_class = STSchemaSTGeneralSearchEnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(STSchemaSTGeneralSearchEnded *)self results:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(STSchemaSTGeneralSearchEnded *)self setResults:v7];

  linkId = [(STSchemaSTGeneralSearchEnded *)self linkId];
  v9 = [linkId applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v9 suppressMessage];
  if (policyCopy)
  {
    [(STSchemaSTGeneralSearchEnded *)self deleteLinkId];
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
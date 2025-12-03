@interface DODMLASRSchemaDODMLASRUserEditExperimentEnded
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASRUserEditExperimentEnded)initWithDictionary:(id)dictionary;
- (DODMLASRSchemaDODMLASRUserEditExperimentEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addRedecodingResults:(id)results;
- (void)setHasErrorCode:(BOOL)code;
- (void)setHasNumAudioFilesSelected:(BOOL)selected;
- (void)writeTo:(id)to;
@end

@implementation DODMLASRSchemaDODMLASRUserEditExperimentEnded

- (DODMLASRSchemaDODMLASRUserEditExperimentEnded)initWithDictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = DODMLASRSchemaDODMLASRUserEditExperimentEnded;
  v5 = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"redecodingResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v23;
        do
        {
          v11 = 0;
          do
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v22 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults alloc];
              v14 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)v13 initWithDictionary:v12, v22];
              [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)v5 addRedecodingResults:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"linkId", v22}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)v5 setLinkId:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"numAudioFilesAvailable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRUserEditExperimentEnded setNumAudioFilesAvailable:](v5, "setNumAudioFilesAvailable:", [v17 unsignedIntValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"numAudioFilesSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRUserEditExperimentEnded setNumAudioFilesSelected:](v5, "setNumAudioFilesSelected:", [v18 unsignedIntValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRUserEditExperimentEnded setErrorCode:](v5, "setErrorCode:", [v19 intValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRUserEditExperimentEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self dictionaryRepresentation];
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
  if ((*&self->_has & 4) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[DODMLASRSchemaDODMLASRUserEditExperimentEnded errorCode](self, "errorCode")}];
    [dictionary setObject:v4 forKeyedSubscript:@"errorCode"];
  }

  if (self->_linkId)
  {
    linkId = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self linkId];
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

  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRUserEditExperimentEnded numAudioFilesAvailable](self, "numAudioFilesAvailable")}];
    [dictionary setObject:v9 forKeyedSubscript:@"numAudioFilesAvailable"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRUserEditExperimentEnded numAudioFilesSelected](self, "numAudioFilesSelected")}];
    [dictionary setObject:v10 forKeyedSubscript:@"numAudioFilesSelected"];
  }

  if ([(NSArray *)self->_redecodingResults count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = self->_redecodingResults;
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

    [dictionary setObject:array forKeyedSubscript:@"redecodingResults"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v20];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_redecodingResults hash];
  v4 = [(SISchemaUUID *)self->_linkId hash];
  if ((*&self->_has & 1) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761 * self->_numAudioFilesAvailable;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = 2654435761 * self->_numAudioFilesSelected;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = 2654435761 * self->_errorCode;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  redecodingResults = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self redecodingResults];
  redecodingResults2 = [equalCopy redecodingResults];
  if ((redecodingResults != 0) == (redecodingResults2 == 0))
  {
    goto LABEL_11;
  }

  redecodingResults3 = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self redecodingResults];
  if (redecodingResults3)
  {
    v8 = redecodingResults3;
    redecodingResults4 = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self redecodingResults];
    redecodingResults5 = [equalCopy redecodingResults];
    v11 = [redecodingResults4 isEqual:redecodingResults5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  redecodingResults = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self linkId];
  redecodingResults2 = [equalCopy linkId];
  if ((redecodingResults != 0) == (redecodingResults2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  linkId = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self linkId];
  if (linkId)
  {
    v13 = linkId;
    linkId2 = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self linkId];
    linkId3 = [equalCopy linkId];
    v16 = [linkId2 isEqual:linkId3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = equalCopy[36];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      numAudioFilesAvailable = self->_numAudioFilesAvailable;
      if (numAudioFilesAvailable != [equalCopy numAudioFilesAvailable])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = equalCopy[36];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (v22)
      {
        numAudioFilesSelected = self->_numAudioFilesSelected;
        if (numAudioFilesSelected != [equalCopy numAudioFilesSelected])
        {
          goto LABEL_12;
        }

        has = self->_has;
        v20 = equalCopy[36];
      }

      v24 = (*&has >> 2) & 1;
      if (v24 == ((v20 >> 2) & 1))
      {
        if (!v24 || (errorCode = self->_errorCode, errorCode == [equalCopy errorCode]))
        {
          v17 = 1;
          goto LABEL_13;
        }
      }
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_redecodingResults;
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

  linkId = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self linkId];

  if (linkId)
  {
    linkId2 = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((has & 4) != 0)
  {
LABEL_13:
    PBDataWriterWriteInt32Field();
  }

LABEL_14:
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumAudioFilesSelected:(BOOL)selected
{
  if (selected)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addRedecodingResults:(id)results
{
  resultsCopy = results;
  redecodingResults = self->_redecodingResults;
  v8 = resultsCopy;
  if (!redecodingResults)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_redecodingResults;
    self->_redecodingResults = array;

    resultsCopy = v8;
    redecodingResults = self->_redecodingResults;
  }

  [(NSArray *)redecodingResults addObject:resultsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v11.receiver = self;
  v11.super_class = DODMLASRSchemaDODMLASRUserEditExperimentEnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self redecodingResults:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self setRedecodingResults:v7];

  linkId = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self linkId];
  v9 = [linkId applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v9 suppressMessage];
  if (policyCopy)
  {
    [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self deleteLinkId];
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
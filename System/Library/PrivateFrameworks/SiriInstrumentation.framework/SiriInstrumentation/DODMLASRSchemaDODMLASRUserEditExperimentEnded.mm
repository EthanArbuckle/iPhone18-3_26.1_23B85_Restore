@interface DODMLASRSchemaDODMLASRUserEditExperimentEnded
- (BOOL)isEqual:(id)a3;
- (DODMLASRSchemaDODMLASRUserEditExperimentEnded)initWithDictionary:(id)a3;
- (DODMLASRSchemaDODMLASRUserEditExperimentEnded)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addRedecodingResults:(id)a3;
- (void)setHasErrorCode:(BOOL)a3;
- (void)setHasNumAudioFilesSelected:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation DODMLASRSchemaDODMLASRUserEditExperimentEnded

- (DODMLASRSchemaDODMLASRUserEditExperimentEnded)initWithDictionary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = DODMLASRSchemaDODMLASRUserEditExperimentEnded;
  v5 = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"redecodingResults"];
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

    v15 = [v4 objectForKeyedSubscript:{@"linkId", v22}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)v5 setLinkId:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"numAudioFilesAvailable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRUserEditExperimentEnded setNumAudioFilesAvailable:](v5, "setNumAudioFilesAvailable:", [v17 unsignedIntValue]);
    }

    v18 = [v4 objectForKeyedSubscript:@"numAudioFilesSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRUserEditExperimentEnded setNumAudioFilesSelected:](v5, "setNumAudioFilesSelected:", [v18 unsignedIntValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRUserEditExperimentEnded setErrorCode:](v5, "setErrorCode:", [v19 intValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRUserEditExperimentEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self dictionaryRepresentation];
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
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[DODMLASRSchemaDODMLASRUserEditExperimentEnded errorCode](self, "errorCode")}];
    [v3 setObject:v4 forKeyedSubscript:@"errorCode"];
  }

  if (self->_linkId)
  {
    v5 = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self linkId];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"linkId"];
    }
  }

  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRUserEditExperimentEnded numAudioFilesAvailable](self, "numAudioFilesAvailable")}];
    [v3 setObject:v9 forKeyedSubscript:@"numAudioFilesAvailable"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRUserEditExperimentEnded numAudioFilesSelected](self, "numAudioFilesSelected")}];
    [v3 setObject:v10 forKeyedSubscript:@"numAudioFilesSelected"];
  }

  if ([(NSArray *)self->_redecodingResults count])
  {
    v11 = [MEMORY[0x1E695DF70] array];
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

          v17 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          if (v17)
          {
            [v11 addObject:v17];
          }

          else
          {
            v18 = [MEMORY[0x1E695DFB0] null];
            [v11 addObject:v18];
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKeyedSubscript:@"redecodingResults"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v20];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self redecodingResults];
  v6 = [v4 redecodingResults];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self redecodingResults];
  if (v7)
  {
    v8 = v7;
    v9 = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self redecodingResults];
    v10 = [v4 redecodingResults];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self linkId];
  if (v12)
  {
    v13 = v12;
    v14 = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self linkId];
    v15 = [v4 linkId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = v4[36];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      numAudioFilesAvailable = self->_numAudioFilesAvailable;
      if (numAudioFilesAvailable != [v4 numAudioFilesAvailable])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = v4[36];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (v22)
      {
        numAudioFilesSelected = self->_numAudioFilesSelected;
        if (numAudioFilesSelected != [v4 numAudioFilesSelected])
        {
          goto LABEL_12;
        }

        has = self->_has;
        v20 = v4[36];
      }

      v24 = (*&has >> 2) & 1;
      if (v24 == ((v20 >> 2) & 1))
      {
        if (!v24 || (errorCode = self->_errorCode, errorCode == [v4 errorCode]))
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

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v10 = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self linkId];

  if (v10)
  {
    v11 = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self linkId];
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

- (void)setHasErrorCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumAudioFilesSelected:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addRedecodingResults:(id)a3
{
  v4 = a3;
  redecodingResults = self->_redecodingResults;
  v8 = v4;
  if (!redecodingResults)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_redecodingResults;
    self->_redecodingResults = v6;

    v4 = v8;
    redecodingResults = self->_redecodingResults;
  }

  [(NSArray *)redecodingResults addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v11.receiver = self;
  v11.super_class = DODMLASRSchemaDODMLASRUserEditExperimentEnded;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:v4];
  v6 = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self redecodingResults:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self setRedecodingResults:v7];

  v8 = [(DODMLASRSchemaDODMLASRUserEditExperimentEnded *)self linkId];
  v9 = [v8 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v9 suppressMessage];
  if (v4)
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
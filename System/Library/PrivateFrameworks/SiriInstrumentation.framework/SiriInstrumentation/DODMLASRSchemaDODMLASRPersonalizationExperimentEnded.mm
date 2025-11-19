@interface DODMLASRSchemaDODMLASRPersonalizationExperimentEnded
- (BOOL)isEqual:(id)a3;
- (DODMLASRSchemaDODMLASRPersonalizationExperimentEnded)initWithDictionary:(id)a3;
- (DODMLASRSchemaDODMLASRPersonalizationExperimentEnded)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAudioFileResults:(id)a3;
- (void)setHasDeviceThermalState:(BOOL)a3;
- (void)setHasExperimentStatusCode:(BOOL)a3;
- (void)setHasNumAudioFilesSelected:(BOOL)a3;
- (void)setHasTextFetchDurationInNs:(BOOL)a3;
- (void)setHasTextProcessingDurationInNs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation DODMLASRSchemaDODMLASRPersonalizationExperimentEnded

- (DODMLASRSchemaDODMLASRPersonalizationExperimentEnded)initWithDictionary:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = DODMLASRSchemaDODMLASRPersonalizationExperimentEnded;
  v5 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)&v37 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"datapackVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)v5 setDatapackVersion:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"numAudioFilesAvailable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRPersonalizationExperimentEnded setNumAudioFilesAvailable:](v5, "setNumAudioFilesAvailable:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"numAudioFilesSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRPersonalizationExperimentEnded setNumAudioFilesSelected:](v5, "setNumAudioFilesSelected:", [v9 unsignedIntValue]);
    }

    v31 = v9;
    v32 = v8;
    v10 = [v4 objectForKeyedSubscript:@"experimentStatusCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRPersonalizationExperimentEnded setExperimentStatusCode:](v5, "setExperimentStatusCode:", [v10 intValue]);
    }

    v30 = v10;
    v11 = [v4 objectForKeyedSubscript:@"audioFileResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v6;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v34;
        do
        {
          v16 = 0;
          do
          {
            if (*v34 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v33 + 1) + 8 * v16);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [[DODMLASRSchemaDODMLASRAudioFileResult alloc] initWithDictionary:v17];
              [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)v5 addAudioFileResults:v18];
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v14);
      }

      v6 = v29;
    }

    v19 = [v4 objectForKeyedSubscript:{@"personalizedLanguageModelMetrics", v29}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics alloc] initWithDictionary:v19];
      [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)v5 setPersonalizedLanguageModelMetrics:v20];
    }

    v21 = [v4 objectForKeyedSubscript:@"textFetchDurationInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRPersonalizationExperimentEnded setTextFetchDurationInNs:](v5, "setTextFetchDurationInNs:", [v21 unsignedLongLongValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"textProcessingDurationInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRPersonalizationExperimentEnded setTextProcessingDurationInNs:](v5, "setTextProcessingDurationInNs:", [v22 unsignedLongLongValue]);
    }

    v23 = [v4 objectForKeyedSubscript:@"deviceThermalState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRPersonalizationExperimentEnded setDeviceThermalState:](v5, "setDeviceThermalState:", [v23 intValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"audioFileResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v6;
      v26 = [[DODMLASRSchemaDODMLASRAudioFileResult alloc] initWithDictionary:v24];
      [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)v5 setAudioFileResult:v26];

      v6 = v25;
    }

    v27 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRPersonalizationExperimentEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self dictionaryRepresentation];
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
  v35 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_audioFileResult)
  {
    v4 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResult];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"audioFileResult"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"audioFileResult"];
    }
  }

  if ([(NSArray *)self->_audioFileResults count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = self->_audioFileResults;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"audioFileResults"];
  }

  if (self->_datapackVersion)
  {
    v15 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self datapackVersion];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"datapackVersion"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v18 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self deviceThermalState]- 1;
    if (v18 > 3)
    {
      v19 = @"DEVICETHERMALSTATE_UNKNOWN";
    }

    else
    {
      v19 = off_1E78D4210[v18];
    }

    [v3 setObject:v19 forKeyedSubscript:{@"deviceThermalState", v30}];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithInt:{-[DODMLASRSchemaDODMLASRPersonalizationExperimentEnded experimentStatusCode](self, "experimentStatusCode")}];
    [v3 setObject:v23 forKeyedSubscript:@"experimentStatusCode"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_27:
      if ((has & 2) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_27;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRPersonalizationExperimentEnded numAudioFilesAvailable](self, "numAudioFilesAvailable", v30)}];
  [v3 setObject:v24 forKeyedSubscript:@"numAudioFilesAvailable"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_28:
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRPersonalizationExperimentEnded numAudioFilesSelected](self, "numAudioFilesSelected", v30)}];
    [v3 setObject:v20 forKeyedSubscript:@"numAudioFilesSelected"];
  }

LABEL_29:
  if (self->_personalizedLanguageModelMetrics)
  {
    v21 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self personalizedLanguageModelMetrics];
    v22 = [v21 dictionaryRepresentation];
    if (v22)
    {
      [v3 setObject:v22 forKeyedSubscript:@"personalizedLanguageModelMetrics"];
    }

    else
    {
      v25 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v25 forKeyedSubscript:@"personalizedLanguageModelMetrics"];
    }
  }

  v26 = self->_has;
  if ((v26 & 8) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DODMLASRSchemaDODMLASRPersonalizationExperimentEnded textFetchDurationInNs](self, "textFetchDurationInNs")}];
    [v3 setObject:v27 forKeyedSubscript:@"textFetchDurationInNs"];

    v26 = self->_has;
  }

  if ((v26 & 0x10) != 0)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DODMLASRSchemaDODMLASRPersonalizationExperimentEnded textProcessingDurationInNs](self, "textProcessingDurationInNs")}];
    [v3 setObject:v28 forKeyedSubscript:@"textProcessingDurationInNs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v30];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_datapackVersion hash];
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = 2654435761 * self->_numAudioFilesAvailable;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_numAudioFilesSelected;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_experimentStatusCode;
    goto LABEL_8;
  }

LABEL_7:
  v6 = 0;
LABEL_8:
  v7 = [(NSArray *)self->_audioFileResults hash];
  v8 = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self->_personalizedLanguageModelMetrics hash];
  if ((*&self->_has & 8) == 0)
  {
    v9 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v10 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(DODMLASRSchemaDODMLASRAudioFileResult *)self->_audioFileResult hash];
  }

  v9 = 2654435761u * self->_textFetchDurationInNs;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v10 = 2654435761u * self->_textProcessingDurationInNs;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v11 = 2654435761 * self->_deviceThermalState;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(DODMLASRSchemaDODMLASRAudioFileResult *)self->_audioFileResult hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  v5 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self datapackVersion];
  v6 = [v4 datapackVersion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_43;
  }

  v7 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self datapackVersion];
  if (v7)
  {
    v8 = v7;
    v9 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self datapackVersion];
    v10 = [v4 datapackVersion];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[80];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_44;
  }

  if (*&has)
  {
    numAudioFilesAvailable = self->_numAudioFilesAvailable;
    if (numAudioFilesAvailable != [v4 numAudioFilesAvailable])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v13 = v4[80];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_44;
  }

  if (v15)
  {
    numAudioFilesSelected = self->_numAudioFilesSelected;
    if (numAudioFilesSelected != [v4 numAudioFilesSelected])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v13 = v4[80];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v13 >> 2) & 1))
  {
    goto LABEL_44;
  }

  if (v17)
  {
    experimentStatusCode = self->_experimentStatusCode;
    if (experimentStatusCode != [v4 experimentStatusCode])
    {
      goto LABEL_44;
    }
  }

  v5 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResults];
  v6 = [v4 audioFileResults];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_43;
  }

  v19 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResults];
  if (v19)
  {
    v20 = v19;
    v21 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResults];
    v22 = [v4 audioFileResults];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v5 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self personalizedLanguageModelMetrics];
  v6 = [v4 personalizedLanguageModelMetrics];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_43;
  }

  v24 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self personalizedLanguageModelMetrics];
  if (v24)
  {
    v25 = v24;
    v26 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self personalizedLanguageModelMetrics];
    v27 = [v4 personalizedLanguageModelMetrics];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v29 = self->_has;
  v30 = (*&v29 >> 3) & 1;
  v31 = v4[80];
  if (v30 != ((v31 >> 3) & 1))
  {
    goto LABEL_44;
  }

  if (v30)
  {
    textFetchDurationInNs = self->_textFetchDurationInNs;
    if (textFetchDurationInNs != [v4 textFetchDurationInNs])
    {
      goto LABEL_44;
    }

    v29 = self->_has;
    v31 = v4[80];
  }

  v33 = (*&v29 >> 4) & 1;
  if (v33 != ((v31 >> 4) & 1))
  {
    goto LABEL_44;
  }

  if (v33)
  {
    textProcessingDurationInNs = self->_textProcessingDurationInNs;
    if (textProcessingDurationInNs != [v4 textProcessingDurationInNs])
    {
      goto LABEL_44;
    }

    v29 = self->_has;
    v31 = v4[80];
  }

  v35 = (*&v29 >> 5) & 1;
  if (v35 != ((v31 >> 5) & 1))
  {
    goto LABEL_44;
  }

  if (v35)
  {
    deviceThermalState = self->_deviceThermalState;
    if (deviceThermalState != [v4 deviceThermalState])
    {
      goto LABEL_44;
    }
  }

  v5 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResult];
  v6 = [v4 audioFileResult];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_43:

    goto LABEL_44;
  }

  v37 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResult];
  if (!v37)
  {

LABEL_47:
    v42 = 1;
    goto LABEL_45;
  }

  v38 = v37;
  v39 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResult];
  v40 = [v4 audioFileResult];
  v41 = [v39 isEqual:v40];

  if (v41)
  {
    goto LABEL_47;
  }

LABEL_44:
  v42 = 0;
LABEL_45:

  return v42;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self datapackVersion];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    PBDataWriterWriteInt32Field();
  }

LABEL_7:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_audioFileResults;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v12 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self personalizedLanguageModelMetrics];

  if (v12)
  {
    v13 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self personalizedLanguageModelMetrics];
    PBDataWriterWriteSubmessage();
  }

  v14 = self->_has;
  if ((v14 & 8) != 0)
  {
    PBDataWriterWriteUint64Field();
    v14 = self->_has;
    if ((v14 & 0x10) == 0)
    {
LABEL_18:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_18;
  }

  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_19:
    PBDataWriterWriteInt32Field();
  }

LABEL_20:
  v15 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResult];

  if (v15)
  {
    v16 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResult];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasDeviceThermalState:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasTextProcessingDurationInNs:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasTextFetchDurationInNs:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)addAudioFileResults:(id)a3
{
  v4 = a3;
  audioFileResults = self->_audioFileResults;
  v8 = v4;
  if (!audioFileResults)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_audioFileResults;
    self->_audioFileResults = v6;

    v4 = v8;
    audioFileResults = self->_audioFileResults;
  }

  [(NSArray *)audioFileResults addObject:v4];
}

- (void)setHasExperimentStatusCode:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DODMLASRSchemaDODMLASRPersonalizationExperimentEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResults];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self setAudioFileResults:v7];

  v8 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self personalizedLanguageModelMetrics];
  v9 = [v8 applySensitiveConditionsPolicy:v4];
  v10 = [v9 suppressMessage];

  if (v10)
  {
    [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self deletePersonalizedLanguageModelMetrics];
  }

  v11 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResult];
  v12 = [v11 applySensitiveConditionsPolicy:v4];
  v13 = [v12 suppressMessage];

  if (v13)
  {
    [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self deleteAudioFileResult];
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
@interface DODMLASRSchemaDODMLASRPersonalizationExperimentEnded
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASRPersonalizationExperimentEnded)initWithDictionary:(id)dictionary;
- (DODMLASRSchemaDODMLASRPersonalizationExperimentEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAudioFileResults:(id)results;
- (void)setHasDeviceThermalState:(BOOL)state;
- (void)setHasExperimentStatusCode:(BOOL)code;
- (void)setHasNumAudioFilesSelected:(BOOL)selected;
- (void)setHasTextFetchDurationInNs:(BOOL)ns;
- (void)setHasTextProcessingDurationInNs:(BOOL)ns;
- (void)writeTo:(id)to;
@end

@implementation DODMLASRSchemaDODMLASRPersonalizationExperimentEnded

- (DODMLASRSchemaDODMLASRPersonalizationExperimentEnded)initWithDictionary:(id)dictionary
{
  v39 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = DODMLASRSchemaDODMLASRPersonalizationExperimentEnded;
  v5 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)&v37 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"datapackVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)v5 setDatapackVersion:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"numAudioFilesAvailable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRPersonalizationExperimentEnded setNumAudioFilesAvailable:](v5, "setNumAudioFilesAvailable:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"numAudioFilesSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRPersonalizationExperimentEnded setNumAudioFilesSelected:](v5, "setNumAudioFilesSelected:", [v9 unsignedIntValue]);
    }

    v31 = v9;
    v32 = v8;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"experimentStatusCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRPersonalizationExperimentEnded setExperimentStatusCode:](v5, "setExperimentStatusCode:", [v10 intValue]);
    }

    v30 = v10;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"audioFileResults"];
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

    v19 = [dictionaryCopy objectForKeyedSubscript:{@"personalizedLanguageModelMetrics", v29}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics alloc] initWithDictionary:v19];
      [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)v5 setPersonalizedLanguageModelMetrics:v20];
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"textFetchDurationInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRPersonalizationExperimentEnded setTextFetchDurationInNs:](v5, "setTextFetchDurationInNs:", [v21 unsignedLongLongValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"textProcessingDurationInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRPersonalizationExperimentEnded setTextProcessingDurationInNs:](v5, "setTextProcessingDurationInNs:", [v22 unsignedLongLongValue]);
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"deviceThermalState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRPersonalizationExperimentEnded setDeviceThermalState:](v5, "setDeviceThermalState:", [v23 intValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"audioFileResult"];
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

- (DODMLASRSchemaDODMLASRPersonalizationExperimentEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self dictionaryRepresentation];
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
  v35 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_audioFileResult)
  {
    audioFileResult = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResult];
    dictionaryRepresentation = [audioFileResult dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"audioFileResult"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"audioFileResult"];
    }
  }

  if ([(NSArray *)self->_audioFileResults count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"audioFileResults"];
  }

  if (self->_datapackVersion)
  {
    datapackVersion = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self datapackVersion];
    v16 = [datapackVersion copy];
    [dictionary setObject:v16 forKeyedSubscript:@"datapackVersion"];
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

    [dictionary setObject:v19 forKeyedSubscript:{@"deviceThermalState", v30}];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithInt:{-[DODMLASRSchemaDODMLASRPersonalizationExperimentEnded experimentStatusCode](self, "experimentStatusCode")}];
    [dictionary setObject:v23 forKeyedSubscript:@"experimentStatusCode"];

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
  [dictionary setObject:v24 forKeyedSubscript:@"numAudioFilesAvailable"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_28:
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRPersonalizationExperimentEnded numAudioFilesSelected](self, "numAudioFilesSelected", v30)}];
    [dictionary setObject:v20 forKeyedSubscript:@"numAudioFilesSelected"];
  }

LABEL_29:
  if (self->_personalizedLanguageModelMetrics)
  {
    personalizedLanguageModelMetrics = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self personalizedLanguageModelMetrics];
    dictionaryRepresentation3 = [personalizedLanguageModelMetrics dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"personalizedLanguageModelMetrics"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"personalizedLanguageModelMetrics"];
    }
  }

  v26 = self->_has;
  if ((v26 & 8) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DODMLASRSchemaDODMLASRPersonalizationExperimentEnded textFetchDurationInNs](self, "textFetchDurationInNs")}];
    [dictionary setObject:v27 forKeyedSubscript:@"textFetchDurationInNs"];

    v26 = self->_has;
  }

  if ((v26 & 0x10) != 0)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DODMLASRSchemaDODMLASRPersonalizationExperimentEnded textProcessingDurationInNs](self, "textProcessingDurationInNs")}];
    [dictionary setObject:v28 forKeyedSubscript:@"textProcessingDurationInNs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v30];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  datapackVersion = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self datapackVersion];
  datapackVersion2 = [equalCopy datapackVersion];
  if ((datapackVersion != 0) == (datapackVersion2 == 0))
  {
    goto LABEL_43;
  }

  datapackVersion3 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self datapackVersion];
  if (datapackVersion3)
  {
    v8 = datapackVersion3;
    datapackVersion4 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self datapackVersion];
    datapackVersion5 = [equalCopy datapackVersion];
    v11 = [datapackVersion4 isEqual:datapackVersion5];

    if (!v11)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[80];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_44;
  }

  if (*&has)
  {
    numAudioFilesAvailable = self->_numAudioFilesAvailable;
    if (numAudioFilesAvailable != [equalCopy numAudioFilesAvailable])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v13 = equalCopy[80];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_44;
  }

  if (v15)
  {
    numAudioFilesSelected = self->_numAudioFilesSelected;
    if (numAudioFilesSelected != [equalCopy numAudioFilesSelected])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v13 = equalCopy[80];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v13 >> 2) & 1))
  {
    goto LABEL_44;
  }

  if (v17)
  {
    experimentStatusCode = self->_experimentStatusCode;
    if (experimentStatusCode != [equalCopy experimentStatusCode])
    {
      goto LABEL_44;
    }
  }

  datapackVersion = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResults];
  datapackVersion2 = [equalCopy audioFileResults];
  if ((datapackVersion != 0) == (datapackVersion2 == 0))
  {
    goto LABEL_43;
  }

  audioFileResults = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResults];
  if (audioFileResults)
  {
    v20 = audioFileResults;
    audioFileResults2 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResults];
    audioFileResults3 = [equalCopy audioFileResults];
    v23 = [audioFileResults2 isEqual:audioFileResults3];

    if (!v23)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  datapackVersion = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self personalizedLanguageModelMetrics];
  datapackVersion2 = [equalCopy personalizedLanguageModelMetrics];
  if ((datapackVersion != 0) == (datapackVersion2 == 0))
  {
    goto LABEL_43;
  }

  personalizedLanguageModelMetrics = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self personalizedLanguageModelMetrics];
  if (personalizedLanguageModelMetrics)
  {
    v25 = personalizedLanguageModelMetrics;
    personalizedLanguageModelMetrics2 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self personalizedLanguageModelMetrics];
    personalizedLanguageModelMetrics3 = [equalCopy personalizedLanguageModelMetrics];
    v28 = [personalizedLanguageModelMetrics2 isEqual:personalizedLanguageModelMetrics3];

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
  v31 = equalCopy[80];
  if (v30 != ((v31 >> 3) & 1))
  {
    goto LABEL_44;
  }

  if (v30)
  {
    textFetchDurationInNs = self->_textFetchDurationInNs;
    if (textFetchDurationInNs != [equalCopy textFetchDurationInNs])
    {
      goto LABEL_44;
    }

    v29 = self->_has;
    v31 = equalCopy[80];
  }

  v33 = (*&v29 >> 4) & 1;
  if (v33 != ((v31 >> 4) & 1))
  {
    goto LABEL_44;
  }

  if (v33)
  {
    textProcessingDurationInNs = self->_textProcessingDurationInNs;
    if (textProcessingDurationInNs != [equalCopy textProcessingDurationInNs])
    {
      goto LABEL_44;
    }

    v29 = self->_has;
    v31 = equalCopy[80];
  }

  v35 = (*&v29 >> 5) & 1;
  if (v35 != ((v31 >> 5) & 1))
  {
    goto LABEL_44;
  }

  if (v35)
  {
    deviceThermalState = self->_deviceThermalState;
    if (deviceThermalState != [equalCopy deviceThermalState])
    {
      goto LABEL_44;
    }
  }

  datapackVersion = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResult];
  datapackVersion2 = [equalCopy audioFileResult];
  if ((datapackVersion != 0) == (datapackVersion2 == 0))
  {
LABEL_43:

    goto LABEL_44;
  }

  audioFileResult = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResult];
  if (!audioFileResult)
  {

LABEL_47:
    v42 = 1;
    goto LABEL_45;
  }

  v38 = audioFileResult;
  audioFileResult2 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResult];
  audioFileResult3 = [equalCopy audioFileResult];
  v41 = [audioFileResult2 isEqual:audioFileResult3];

  if (v41)
  {
    goto LABEL_47;
  }

LABEL_44:
  v42 = 0;
LABEL_45:

  return v42;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  datapackVersion = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self datapackVersion];

  if (datapackVersion)
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

  personalizedLanguageModelMetrics = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self personalizedLanguageModelMetrics];

  if (personalizedLanguageModelMetrics)
  {
    personalizedLanguageModelMetrics2 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self personalizedLanguageModelMetrics];
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
  audioFileResult = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResult];

  if (audioFileResult)
  {
    audioFileResult2 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResult];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasDeviceThermalState:(BOOL)state
{
  if (state)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasTextProcessingDurationInNs:(BOOL)ns
{
  if (ns)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasTextFetchDurationInNs:(BOOL)ns
{
  if (ns)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)addAudioFileResults:(id)results
{
  resultsCopy = results;
  audioFileResults = self->_audioFileResults;
  v8 = resultsCopy;
  if (!audioFileResults)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_audioFileResults;
    self->_audioFileResults = array;

    resultsCopy = v8;
    audioFileResults = self->_audioFileResults;
  }

  [(NSArray *)audioFileResults addObject:resultsCopy];
}

- (void)setHasExperimentStatusCode:(BOOL)code
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

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = DODMLASRSchemaDODMLASRPersonalizationExperimentEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  audioFileResults = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResults];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:audioFileResults underConditions:policyCopy];
  [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self setAudioFileResults:v7];

  personalizedLanguageModelMetrics = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self personalizedLanguageModelMetrics];
  v9 = [personalizedLanguageModelMetrics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v9 suppressMessage];

  if (suppressMessage)
  {
    [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self deletePersonalizedLanguageModelMetrics];
  }

  audioFileResult = [(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded *)self audioFileResult];
  v12 = [audioFileResult applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v12 suppressMessage];

  if (suppressMessage2)
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
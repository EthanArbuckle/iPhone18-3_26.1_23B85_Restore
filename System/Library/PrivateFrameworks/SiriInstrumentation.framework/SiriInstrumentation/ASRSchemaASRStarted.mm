@interface ASRSchemaASRStarted
- (ASRSchemaASRStarted)initWithDictionary:(id)dictionary;
- (ASRSchemaASRStarted)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAtypicalSpeechEnabled:(BOOL)enabled;
- (void)setHasGeoLanguageModelLoaded:(BOOL)loaded;
- (void)setHasIsEmptyTextField:(BOOL)field;
- (void)setHasIsHighQualityAsset:(BOOL)asset;
- (void)setHasModelLocale:(BOOL)locale;
- (void)setHasSpeechProfileAgeInNs:(BOOL)ns;
- (void)setHasStartState:(BOOL)state;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRStarted

- (ASRSchemaASRStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = ASRSchemaASRStarted;
  v5 = [(ASRSchemaASRStarted *)&v31 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"task"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRStarted setTask:](v5, "setTask:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"modelLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRStarted setModelLocale:](v5, "setModelLocale:", [v7 intValue]);
    }

    v29 = v7;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"datapackVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ASRSchemaASRStarted *)v5 setDatapackVersion:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isHighQualityAsset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRStarted setIsHighQualityAsset:](v5, "setIsHighQualityAsset:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"hammerVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(ASRSchemaASRStarted *)v5 setHammerVersion:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"geoLanguageModelRegion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(ASRSchemaASRStarted *)v5 setGeoLanguageModelRegion:v14];
    }

    v27 = v13;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"geoLanguageModelLoaded"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRStarted setGeoLanguageModelLoaded:](v5, "setGeoLanguageModelLoaded:", [v15 BOOLValue]);
    }

    v30 = v6;
    v16 = [dictionaryCopy objectForKeyedSubscript:{@"speechProfileAgeInNs", v15}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRStarted setSpeechProfileAgeInNs:](v5, "setSpeechProfileAgeInNs:", [v16 unsignedLongLongValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"dictationUiInteractionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[SISchemaUUID alloc] initWithDictionary:v17];
      [(ASRSchemaASRStarted *)v5 setDictationUiInteractionId:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"portraitExperimentVariantName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v19 copy];
      [(ASRSchemaASRStarted *)v5 setPortraitExperimentVariantName:v20];
    }

    v28 = v8;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"startState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRStarted setStartState:](v5, "setStartState:", [v21 intValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"atypicalSpeechEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRStarted setAtypicalSpeechEnabled:](v5, "setAtypicalSpeechEnabled:", [v22 BOOLValue]);
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"isEmptyTextField"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRStarted setIsEmptyTextField:](v5, "setIsEmptyTextField:", [v23 BOOLValue]);
    }

    v24 = v5;
  }

  return v5;
}

- (ASRSchemaASRStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRStarted *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*(&self->_isEmptyTextField + 1) & 0x40) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRStarted atypicalSpeechEnabled](self, "atypicalSpeechEnabled")}];
    [dictionary setObject:v4 forKeyedSubscript:@"atypicalSpeechEnabled"];
  }

  if (self->_datapackVersion)
  {
    datapackVersion = [(ASRSchemaASRStarted *)self datapackVersion];
    v6 = [datapackVersion copy];
    [dictionary setObject:v6 forKeyedSubscript:@"datapackVersion"];
  }

  if (self->_dictationUiInteractionId)
  {
    dictationUiInteractionId = [(ASRSchemaASRStarted *)self dictationUiInteractionId];
    dictionaryRepresentation = [dictationUiInteractionId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dictationUiInteractionId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"dictationUiInteractionId"];
    }
  }

  if ((*(&self->_isEmptyTextField + 1) & 8) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRStarted geoLanguageModelLoaded](self, "geoLanguageModelLoaded")}];
    [dictionary setObject:v10 forKeyedSubscript:@"geoLanguageModelLoaded"];
  }

  if (self->_geoLanguageModelRegion)
  {
    geoLanguageModelRegion = [(ASRSchemaASRStarted *)self geoLanguageModelRegion];
    v12 = [geoLanguageModelRegion copy];
    [dictionary setObject:v12 forKeyedSubscript:@"geoLanguageModelRegion"];
  }

  if (self->_hammerVersion)
  {
    hammerVersion = [(ASRSchemaASRStarted *)self hammerVersion];
    v14 = [hammerVersion copy];
    [dictionary setObject:v14 forKeyedSubscript:@"hammerVersion"];
  }

  v15 = *(&self->_isEmptyTextField + 1);
  if ((v15 & 0x80000000) == 0)
  {
    if ((v15 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRStarted isEmptyTextField](self, "isEmptyTextField")}];
  [dictionary setObject:v19 forKeyedSubscript:@"isEmptyTextField"];

  LOBYTE(v15) = *(&self->_isEmptyTextField + 1);
  if ((v15 & 4) != 0)
  {
LABEL_18:
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRStarted isHighQualityAsset](self, "isHighQualityAsset")}];
    [dictionary setObject:v16 forKeyedSubscript:@"isHighQualityAsset"];

    LOBYTE(v15) = *(&self->_isEmptyTextField + 1);
  }

LABEL_19:
  if ((v15 & 2) != 0)
  {
    v17 = [(ASRSchemaASRStarted *)self modelLocale]- 1;
    if (v17 > 0x3D)
    {
      v18 = @"LOCALE_UNKNOWN_LOCALE";
    }

    else
    {
      v18 = off_1E78D1F90[v17];
    }

    [dictionary setObject:v18 forKeyedSubscript:@"modelLocale"];
  }

  if (self->_portraitExperimentVariantName)
  {
    portraitExperimentVariantName = [(ASRSchemaASRStarted *)self portraitExperimentVariantName];
    v21 = [portraitExperimentVariantName copy];
    [dictionary setObject:v21 forKeyedSubscript:@"portraitExperimentVariantName"];
  }

  v22 = *(&self->_isEmptyTextField + 1);
  if ((v22 & 0x10) == 0)
  {
    if ((*(&self->_isEmptyTextField + 1) & 0x20) == 0)
    {
      goto LABEL_30;
    }

LABEL_33:
    v24 = [(ASRSchemaASRStarted *)self startState]- 1;
    if (v24 > 2)
    {
      v25 = @"ASRSTARTSTATE_UNKNOWN";
    }

    else
    {
      v25 = off_1E78D2180[v24];
    }

    [dictionary setObject:v25 forKeyedSubscript:@"startState"];
    if (!*(&self->_isEmptyTextField + 1))
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRStarted speechProfileAgeInNs](self, "speechProfileAgeInNs")}];
  [dictionary setObject:v23 forKeyedSubscript:@"speechProfileAgeInNs"];

  v22 = *(&self->_isEmptyTextField + 1);
  if ((v22 & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_30:
  if (v22)
  {
LABEL_37:
    v26 = [(ASRSchemaASRStarted *)self task]- 1;
    if (v26 > 7)
    {
      v27 = @"ASRDATAPACKTASK_UNKNOWN";
    }

    else
    {
      v27 = off_1E78D2198[v26];
    }

    [dictionary setObject:v27 forKeyedSubscript:@"task"];
  }

LABEL_41:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_isEmptyTextField + 1))
  {
    v17 = 2654435761 * self->_task;
    if ((*(&self->_isEmptyTextField + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = 0;
    if ((*(&self->_isEmptyTextField + 1) & 2) != 0)
    {
LABEL_3:
      v3 = [(NSString *)self->_datapackVersion hash];
      goto LABEL_6;
    }
  }

  v3 = [(NSString *)self->_datapackVersion hash];
LABEL_6:
  v4 = v3;
  if ((*(&self->_isEmptyTextField + 1) & 4) != 0)
  {
    v5 = 2654435761 * self->_isHighQualityAsset;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_hammerVersion hash];
  v7 = [(NSString *)self->_geoLanguageModelRegion hash];
  if ((*(&self->_isEmptyTextField + 1) & 8) != 0)
  {
    v8 = 2654435761 * self->_geoLanguageModelLoaded;
    if ((*(&self->_isEmptyTextField + 1) & 0x10) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = 0;
    if ((*(&self->_isEmptyTextField + 1) & 0x10) != 0)
    {
LABEL_11:
      v9 = 2654435761u * self->_speechProfileAgeInNs;
      goto LABEL_14;
    }
  }

  v9 = 0;
LABEL_14:
  v10 = [(SISchemaUUID *)self->_dictationUiInteractionId hash];
  v11 = [(NSString *)self->_portraitExperimentVariantName hash];
  if ((*(&self->_isEmptyTextField + 1) & 0x20) == 0)
  {
    v12 = 0;
    if ((*(&self->_isEmptyTextField + 1) & 0x40) != 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    v13 = 0;
    if (*(&self->_isEmptyTextField + 1) < 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v14 = 0;
    return v16 ^ v17 ^ v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

  v12 = 2654435761 * self->_startState;
  if ((*(&self->_isEmptyTextField + 1) & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  v13 = 2654435761 * self->_atypicalSpeechEnabled;
  if ((*(&self->_isEmptyTextField + 1) & 0x80) == 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  v14 = 2654435761 * self->_isEmptyTextField;
  return v16 ^ v17 ^ v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  v5 = *(&self->_isEmptyTextField + 1);
  v6 = equalCopy[86];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_44;
  }

  if (v5)
  {
    task = self->_task;
    if (task != [equalCopy task])
    {
      goto LABEL_44;
    }

    v5 = *(&self->_isEmptyTextField + 1);
    v6 = equalCopy[86];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_44;
  }

  if (v8)
  {
    modelLocale = self->_modelLocale;
    if (modelLocale != [equalCopy modelLocale])
    {
      goto LABEL_44;
    }
  }

  datapackVersion = [(ASRSchemaASRStarted *)self datapackVersion];
  datapackVersion2 = [equalCopy datapackVersion];
  if ((datapackVersion != 0) == (datapackVersion2 == 0))
  {
    goto LABEL_43;
  }

  datapackVersion3 = [(ASRSchemaASRStarted *)self datapackVersion];
  if (datapackVersion3)
  {
    v13 = datapackVersion3;
    datapackVersion4 = [(ASRSchemaASRStarted *)self datapackVersion];
    datapackVersion5 = [equalCopy datapackVersion];
    v16 = [datapackVersion4 isEqual:datapackVersion5];

    if (!v16)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v17 = (*(&self->_isEmptyTextField + 1) >> 2) & 1;
  if (v17 != ((equalCopy[86] >> 2) & 1))
  {
    goto LABEL_44;
  }

  if (v17)
  {
    isHighQualityAsset = self->_isHighQualityAsset;
    if (isHighQualityAsset != [equalCopy isHighQualityAsset])
    {
      goto LABEL_44;
    }
  }

  datapackVersion = [(ASRSchemaASRStarted *)self hammerVersion];
  datapackVersion2 = [equalCopy hammerVersion];
  if ((datapackVersion != 0) == (datapackVersion2 == 0))
  {
    goto LABEL_43;
  }

  hammerVersion = [(ASRSchemaASRStarted *)self hammerVersion];
  if (hammerVersion)
  {
    v20 = hammerVersion;
    hammerVersion2 = [(ASRSchemaASRStarted *)self hammerVersion];
    hammerVersion3 = [equalCopy hammerVersion];
    v23 = [hammerVersion2 isEqual:hammerVersion3];

    if (!v23)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  datapackVersion = [(ASRSchemaASRStarted *)self geoLanguageModelRegion];
  datapackVersion2 = [equalCopy geoLanguageModelRegion];
  if ((datapackVersion != 0) == (datapackVersion2 == 0))
  {
    goto LABEL_43;
  }

  geoLanguageModelRegion = [(ASRSchemaASRStarted *)self geoLanguageModelRegion];
  if (geoLanguageModelRegion)
  {
    v25 = geoLanguageModelRegion;
    geoLanguageModelRegion2 = [(ASRSchemaASRStarted *)self geoLanguageModelRegion];
    geoLanguageModelRegion3 = [equalCopy geoLanguageModelRegion];
    v28 = [geoLanguageModelRegion2 isEqual:geoLanguageModelRegion3];

    if (!v28)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v29 = *(&self->_isEmptyTextField + 1);
  v30 = (v29 >> 3) & 1;
  v31 = equalCopy[86];
  if (v30 != ((v31 >> 3) & 1))
  {
    goto LABEL_44;
  }

  if (v30)
  {
    geoLanguageModelLoaded = self->_geoLanguageModelLoaded;
    if (geoLanguageModelLoaded != [equalCopy geoLanguageModelLoaded])
    {
      goto LABEL_44;
    }

    v29 = *(&self->_isEmptyTextField + 1);
    v31 = equalCopy[86];
  }

  v33 = (v29 >> 4) & 1;
  if (v33 != ((v31 >> 4) & 1))
  {
    goto LABEL_44;
  }

  if (v33)
  {
    speechProfileAgeInNs = self->_speechProfileAgeInNs;
    if (speechProfileAgeInNs != [equalCopy speechProfileAgeInNs])
    {
      goto LABEL_44;
    }
  }

  datapackVersion = [(ASRSchemaASRStarted *)self dictationUiInteractionId];
  datapackVersion2 = [equalCopy dictationUiInteractionId];
  if ((datapackVersion != 0) == (datapackVersion2 == 0))
  {
    goto LABEL_43;
  }

  dictationUiInteractionId = [(ASRSchemaASRStarted *)self dictationUiInteractionId];
  if (dictationUiInteractionId)
  {
    v36 = dictationUiInteractionId;
    dictationUiInteractionId2 = [(ASRSchemaASRStarted *)self dictationUiInteractionId];
    dictationUiInteractionId3 = [equalCopy dictationUiInteractionId];
    v39 = [dictationUiInteractionId2 isEqual:dictationUiInteractionId3];

    if (!v39)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  datapackVersion = [(ASRSchemaASRStarted *)self portraitExperimentVariantName];
  datapackVersion2 = [equalCopy portraitExperimentVariantName];
  if ((datapackVersion != 0) == (datapackVersion2 == 0))
  {
LABEL_43:

    goto LABEL_44;
  }

  portraitExperimentVariantName = [(ASRSchemaASRStarted *)self portraitExperimentVariantName];
  if (portraitExperimentVariantName)
  {
    v41 = portraitExperimentVariantName;
    portraitExperimentVariantName2 = [(ASRSchemaASRStarted *)self portraitExperimentVariantName];
    portraitExperimentVariantName3 = [equalCopy portraitExperimentVariantName];
    v44 = [portraitExperimentVariantName2 isEqual:portraitExperimentVariantName3];

    if (!v44)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v47 = *(&self->_isEmptyTextField + 1);
  v48 = (v47 >> 5) & 1;
  v49 = equalCopy[86];
  if (v48 == ((v49 >> 5) & 1))
  {
    if (v48)
    {
      startState = self->_startState;
      if (startState != [equalCopy startState])
      {
        goto LABEL_44;
      }

      v47 = *(&self->_isEmptyTextField + 1);
      v49 = equalCopy[86];
    }

    v51 = (v47 >> 6) & 1;
    if (v51 == ((v49 >> 6) & 1))
    {
      if (v51)
      {
        atypicalSpeechEnabled = self->_atypicalSpeechEnabled;
        if (atypicalSpeechEnabled != [equalCopy atypicalSpeechEnabled])
        {
          goto LABEL_44;
        }

        v47 = *(&self->_isEmptyTextField + 1);
        v49 = equalCopy[86];
      }

      if (((v49 ^ v47) & 0x80) == 0)
      {
        if ((v47 & 0x80) == 0 || (isEmptyTextField = self->_isEmptyTextField, isEmptyTextField == [equalCopy isEmptyTextField]))
        {
          v45 = 1;
          goto LABEL_45;
        }
      }
    }
  }

LABEL_44:
  v45 = 0;
LABEL_45:

  return v45;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v4 = *(&self->_isEmptyTextField + 1);
  if (v4)
  {
    PBDataWriterWriteInt32Field();
    v4 = *(&self->_isEmptyTextField + 1);
  }

  if ((v4 & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  datapackVersion = [(ASRSchemaASRStarted *)self datapackVersion];

  if (datapackVersion)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_isEmptyTextField + 1) & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  hammerVersion = [(ASRSchemaASRStarted *)self hammerVersion];

  if (hammerVersion)
  {
    PBDataWriterWriteStringField();
  }

  geoLanguageModelRegion = [(ASRSchemaASRStarted *)self geoLanguageModelRegion];

  if (geoLanguageModelRegion)
  {
    PBDataWriterWriteStringField();
  }

  v8 = *(&self->_isEmptyTextField + 1);
  if ((v8 & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
    v8 = *(&self->_isEmptyTextField + 1);
  }

  if ((v8 & 0x10) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  dictationUiInteractionId = [(ASRSchemaASRStarted *)self dictationUiInteractionId];

  if (dictationUiInteractionId)
  {
    dictationUiInteractionId2 = [(ASRSchemaASRStarted *)self dictationUiInteractionId];
    PBDataWriterWriteSubmessage();
  }

  portraitExperimentVariantName = [(ASRSchemaASRStarted *)self portraitExperimentVariantName];

  if (portraitExperimentVariantName)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *(&self->_isEmptyTextField + 1);
  if ((v12 & 0x20) == 0)
  {
    if ((*(&self->_isEmptyTextField + 1) & 0x40) == 0)
    {
      goto LABEL_23;
    }

LABEL_28:
    PBDataWriterWriteBOOLField();
    if ((*(&self->_isEmptyTextField + 1) & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_29;
  }

  PBDataWriterWriteInt32Field();
  v12 = *(&self->_isEmptyTextField + 1);
  if ((v12 & 0x40) != 0)
  {
    goto LABEL_28;
  }

LABEL_23:
  if ((v12 & 0x80) == 0)
  {
    goto LABEL_24;
  }

LABEL_29:
  PBDataWriterWriteBOOLField();
LABEL_24:
}

- (void)setHasIsEmptyTextField:(BOOL)field
{
  if (field)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmptyTextField + 1) = v3 & 0x80 | *(&self->_isEmptyTextField + 1) & 0x7F;
}

- (void)setHasAtypicalSpeechEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmptyTextField + 1) = *(&self->_isEmptyTextField + 1) & 0xBF | v3;
}

- (void)setHasStartState:(BOOL)state
{
  if (state)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmptyTextField + 1) = *(&self->_isEmptyTextField + 1) & 0xDF | v3;
}

- (void)setHasSpeechProfileAgeInNs:(BOOL)ns
{
  if (ns)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmptyTextField + 1) = *(&self->_isEmptyTextField + 1) & 0xEF | v3;
}

- (void)setHasGeoLanguageModelLoaded:(BOOL)loaded
{
  if (loaded)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmptyTextField + 1) = *(&self->_isEmptyTextField + 1) & 0xF7 | v3;
}

- (void)setHasIsHighQualityAsset:(BOOL)asset
{
  if (asset)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmptyTextField + 1) = *(&self->_isEmptyTextField + 1) & 0xFB | v3;
}

- (void)setHasModelLocale:(BOOL)locale
{
  if (locale)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmptyTextField + 1) = *(&self->_isEmptyTextField + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ASRSchemaASRStarted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ASRSchemaASRStarted *)self dictationUiInteractionId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ASRSchemaASRStarted *)self deleteDictationUiInteractionId];
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
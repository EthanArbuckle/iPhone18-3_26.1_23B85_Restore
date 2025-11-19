@interface ASRSchemaASRStarted
- (ASRSchemaASRStarted)initWithDictionary:(id)a3;
- (ASRSchemaASRStarted)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAtypicalSpeechEnabled:(BOOL)a3;
- (void)setHasGeoLanguageModelLoaded:(BOOL)a3;
- (void)setHasIsEmptyTextField:(BOOL)a3;
- (void)setHasIsHighQualityAsset:(BOOL)a3;
- (void)setHasModelLocale:(BOOL)a3;
- (void)setHasSpeechProfileAgeInNs:(BOOL)a3;
- (void)setHasStartState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRStarted

- (ASRSchemaASRStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = ASRSchemaASRStarted;
  v5 = [(ASRSchemaASRStarted *)&v31 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"task"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRStarted setTask:](v5, "setTask:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"modelLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRStarted setModelLocale:](v5, "setModelLocale:", [v7 intValue]);
    }

    v29 = v7;
    v8 = [v4 objectForKeyedSubscript:@"datapackVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ASRSchemaASRStarted *)v5 setDatapackVersion:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"isHighQualityAsset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRStarted setIsHighQualityAsset:](v5, "setIsHighQualityAsset:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"hammerVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(ASRSchemaASRStarted *)v5 setHammerVersion:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"geoLanguageModelRegion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(ASRSchemaASRStarted *)v5 setGeoLanguageModelRegion:v14];
    }

    v27 = v13;
    v15 = [v4 objectForKeyedSubscript:@"geoLanguageModelLoaded"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRStarted setGeoLanguageModelLoaded:](v5, "setGeoLanguageModelLoaded:", [v15 BOOLValue]);
    }

    v30 = v6;
    v16 = [v4 objectForKeyedSubscript:{@"speechProfileAgeInNs", v15}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRStarted setSpeechProfileAgeInNs:](v5, "setSpeechProfileAgeInNs:", [v16 unsignedLongLongValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"dictationUiInteractionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[SISchemaUUID alloc] initWithDictionary:v17];
      [(ASRSchemaASRStarted *)v5 setDictationUiInteractionId:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"portraitExperimentVariantName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v19 copy];
      [(ASRSchemaASRStarted *)v5 setPortraitExperimentVariantName:v20];
    }

    v28 = v8;
    v21 = [v4 objectForKeyedSubscript:@"startState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRStarted setStartState:](v5, "setStartState:", [v21 intValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"atypicalSpeechEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRStarted setAtypicalSpeechEnabled:](v5, "setAtypicalSpeechEnabled:", [v22 BOOLValue]);
    }

    v23 = [v4 objectForKeyedSubscript:@"isEmptyTextField"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRStarted setIsEmptyTextField:](v5, "setIsEmptyTextField:", [v23 BOOLValue]);
    }

    v24 = v5;
  }

  return v5;
}

- (ASRSchemaASRStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRStarted *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*(&self->_isEmptyTextField + 1) & 0x40) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRStarted atypicalSpeechEnabled](self, "atypicalSpeechEnabled")}];
    [v3 setObject:v4 forKeyedSubscript:@"atypicalSpeechEnabled"];
  }

  if (self->_datapackVersion)
  {
    v5 = [(ASRSchemaASRStarted *)self datapackVersion];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"datapackVersion"];
  }

  if (self->_dictationUiInteractionId)
  {
    v7 = [(ASRSchemaASRStarted *)self dictationUiInteractionId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"dictationUiInteractionId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"dictationUiInteractionId"];
    }
  }

  if ((*(&self->_isEmptyTextField + 1) & 8) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRStarted geoLanguageModelLoaded](self, "geoLanguageModelLoaded")}];
    [v3 setObject:v10 forKeyedSubscript:@"geoLanguageModelLoaded"];
  }

  if (self->_geoLanguageModelRegion)
  {
    v11 = [(ASRSchemaASRStarted *)self geoLanguageModelRegion];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"geoLanguageModelRegion"];
  }

  if (self->_hammerVersion)
  {
    v13 = [(ASRSchemaASRStarted *)self hammerVersion];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"hammerVersion"];
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
  [v3 setObject:v19 forKeyedSubscript:@"isEmptyTextField"];

  LOBYTE(v15) = *(&self->_isEmptyTextField + 1);
  if ((v15 & 4) != 0)
  {
LABEL_18:
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRStarted isHighQualityAsset](self, "isHighQualityAsset")}];
    [v3 setObject:v16 forKeyedSubscript:@"isHighQualityAsset"];

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

    [v3 setObject:v18 forKeyedSubscript:@"modelLocale"];
  }

  if (self->_portraitExperimentVariantName)
  {
    v20 = [(ASRSchemaASRStarted *)self portraitExperimentVariantName];
    v21 = [v20 copy];
    [v3 setObject:v21 forKeyedSubscript:@"portraitExperimentVariantName"];
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

    [v3 setObject:v25 forKeyedSubscript:@"startState"];
    if (!*(&self->_isEmptyTextField + 1))
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRStarted speechProfileAgeInNs](self, "speechProfileAgeInNs")}];
  [v3 setObject:v23 forKeyedSubscript:@"speechProfileAgeInNs"];

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

    [v3 setObject:v27 forKeyedSubscript:@"task"];
  }

LABEL_41:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  v5 = *(&self->_isEmptyTextField + 1);
  v6 = v4[86];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_44;
  }

  if (v5)
  {
    task = self->_task;
    if (task != [v4 task])
    {
      goto LABEL_44;
    }

    v5 = *(&self->_isEmptyTextField + 1);
    v6 = v4[86];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_44;
  }

  if (v8)
  {
    modelLocale = self->_modelLocale;
    if (modelLocale != [v4 modelLocale])
    {
      goto LABEL_44;
    }
  }

  v10 = [(ASRSchemaASRStarted *)self datapackVersion];
  v11 = [v4 datapackVersion];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_43;
  }

  v12 = [(ASRSchemaASRStarted *)self datapackVersion];
  if (v12)
  {
    v13 = v12;
    v14 = [(ASRSchemaASRStarted *)self datapackVersion];
    v15 = [v4 datapackVersion];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v17 = (*(&self->_isEmptyTextField + 1) >> 2) & 1;
  if (v17 != ((v4[86] >> 2) & 1))
  {
    goto LABEL_44;
  }

  if (v17)
  {
    isHighQualityAsset = self->_isHighQualityAsset;
    if (isHighQualityAsset != [v4 isHighQualityAsset])
    {
      goto LABEL_44;
    }
  }

  v10 = [(ASRSchemaASRStarted *)self hammerVersion];
  v11 = [v4 hammerVersion];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_43;
  }

  v19 = [(ASRSchemaASRStarted *)self hammerVersion];
  if (v19)
  {
    v20 = v19;
    v21 = [(ASRSchemaASRStarted *)self hammerVersion];
    v22 = [v4 hammerVersion];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v10 = [(ASRSchemaASRStarted *)self geoLanguageModelRegion];
  v11 = [v4 geoLanguageModelRegion];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_43;
  }

  v24 = [(ASRSchemaASRStarted *)self geoLanguageModelRegion];
  if (v24)
  {
    v25 = v24;
    v26 = [(ASRSchemaASRStarted *)self geoLanguageModelRegion];
    v27 = [v4 geoLanguageModelRegion];
    v28 = [v26 isEqual:v27];

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
  v31 = v4[86];
  if (v30 != ((v31 >> 3) & 1))
  {
    goto LABEL_44;
  }

  if (v30)
  {
    geoLanguageModelLoaded = self->_geoLanguageModelLoaded;
    if (geoLanguageModelLoaded != [v4 geoLanguageModelLoaded])
    {
      goto LABEL_44;
    }

    v29 = *(&self->_isEmptyTextField + 1);
    v31 = v4[86];
  }

  v33 = (v29 >> 4) & 1;
  if (v33 != ((v31 >> 4) & 1))
  {
    goto LABEL_44;
  }

  if (v33)
  {
    speechProfileAgeInNs = self->_speechProfileAgeInNs;
    if (speechProfileAgeInNs != [v4 speechProfileAgeInNs])
    {
      goto LABEL_44;
    }
  }

  v10 = [(ASRSchemaASRStarted *)self dictationUiInteractionId];
  v11 = [v4 dictationUiInteractionId];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_43;
  }

  v35 = [(ASRSchemaASRStarted *)self dictationUiInteractionId];
  if (v35)
  {
    v36 = v35;
    v37 = [(ASRSchemaASRStarted *)self dictationUiInteractionId];
    v38 = [v4 dictationUiInteractionId];
    v39 = [v37 isEqual:v38];

    if (!v39)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v10 = [(ASRSchemaASRStarted *)self portraitExperimentVariantName];
  v11 = [v4 portraitExperimentVariantName];
  if ((v10 != 0) == (v11 == 0))
  {
LABEL_43:

    goto LABEL_44;
  }

  v40 = [(ASRSchemaASRStarted *)self portraitExperimentVariantName];
  if (v40)
  {
    v41 = v40;
    v42 = [(ASRSchemaASRStarted *)self portraitExperimentVariantName];
    v43 = [v4 portraitExperimentVariantName];
    v44 = [v42 isEqual:v43];

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
  v49 = v4[86];
  if (v48 == ((v49 >> 5) & 1))
  {
    if (v48)
    {
      startState = self->_startState;
      if (startState != [v4 startState])
      {
        goto LABEL_44;
      }

      v47 = *(&self->_isEmptyTextField + 1);
      v49 = v4[86];
    }

    v51 = (v47 >> 6) & 1;
    if (v51 == ((v49 >> 6) & 1))
    {
      if (v51)
      {
        atypicalSpeechEnabled = self->_atypicalSpeechEnabled;
        if (atypicalSpeechEnabled != [v4 atypicalSpeechEnabled])
        {
          goto LABEL_44;
        }

        v47 = *(&self->_isEmptyTextField + 1);
        v49 = v4[86];
      }

      if (((v49 ^ v47) & 0x80) == 0)
      {
        if ((v47 & 0x80) == 0 || (isEmptyTextField = self->_isEmptyTextField, isEmptyTextField == [v4 isEmptyTextField]))
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

- (void)writeTo:(id)a3
{
  v13 = a3;
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

  v5 = [(ASRSchemaASRStarted *)self datapackVersion];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_isEmptyTextField + 1) & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v6 = [(ASRSchemaASRStarted *)self hammerVersion];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(ASRSchemaASRStarted *)self geoLanguageModelRegion];

  if (v7)
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

  v9 = [(ASRSchemaASRStarted *)self dictationUiInteractionId];

  if (v9)
  {
    v10 = [(ASRSchemaASRStarted *)self dictationUiInteractionId];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(ASRSchemaASRStarted *)self portraitExperimentVariantName];

  if (v11)
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

- (void)setHasIsEmptyTextField:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmptyTextField + 1) = v3 & 0x80 | *(&self->_isEmptyTextField + 1) & 0x7F;
}

- (void)setHasAtypicalSpeechEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmptyTextField + 1) = *(&self->_isEmptyTextField + 1) & 0xBF | v3;
}

- (void)setHasStartState:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmptyTextField + 1) = *(&self->_isEmptyTextField + 1) & 0xDF | v3;
}

- (void)setHasSpeechProfileAgeInNs:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmptyTextField + 1) = *(&self->_isEmptyTextField + 1) & 0xEF | v3;
}

- (void)setHasGeoLanguageModelLoaded:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmptyTextField + 1) = *(&self->_isEmptyTextField + 1) & 0xF7 | v3;
}

- (void)setHasIsHighQualityAsset:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmptyTextField + 1) = *(&self->_isEmptyTextField + 1) & 0xFB | v3;
}

- (void)setHasModelLocale:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmptyTextField + 1) = *(&self->_isEmptyTextField + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = ASRSchemaASRStarted;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ASRSchemaASRStarted *)self dictationUiInteractionId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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
@interface SMTSchemaSMTAppLanguageModelBuildEnded
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SMTSchemaSMTAppLanguageModelBuildEnded)initWithDictionary:(id)a3;
- (SMTSchemaSMTAppLanguageModelBuildEnded)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasLanguageModelFileSizeInBytes:(BOOL)a3;
- (void)setHasNumCustomPronunciations:(BOOL)a3;
- (void)setHasNumOutOfVocabulary:(BOOL)a3;
- (void)setHasTrainingTimeInNs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SMTSchemaSMTAppLanguageModelBuildEnded

- (SMTSchemaSMTAppLanguageModelBuildEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SMTSchemaSMTAppLanguageModelBuildEnded;
  v5 = [(SMTSchemaSMTAppLanguageModelBuildEnded *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"trainingDataSizeInTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SMTSchemaSMTAppLanguageModelBuildEnded setTrainingDataSizeInTokens:](v5, "setTrainingDataSizeInTokens:", [v6 unsignedLongLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"numOutOfVocabulary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SMTSchemaSMTAppLanguageModelBuildEnded setNumOutOfVocabulary:](v5, "setNumOutOfVocabulary:", [v7 unsignedLongLongValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"numCustomPronunciations"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SMTSchemaSMTAppLanguageModelBuildEnded setNumCustomPronunciations:](v5, "setNumCustomPronunciations:", [v8 unsignedLongLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"assetName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(SMTSchemaSMTAppLanguageModelBuildEnded *)v5 setAssetName:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"trainingTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SMTSchemaSMTAppLanguageModelBuildEnded setTrainingTimeInNs:](v5, "setTrainingTimeInNs:", [v11 unsignedLongLongValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"languageModelFileSizeInBytes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SMTSchemaSMTAppLanguageModelBuildEnded setLanguageModelFileSizeInBytes:](v5, "setLanguageModelFileSizeInBytes:", [v12 unsignedLongLongValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"artifactFilepath"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(SMTSchemaSMTAppLanguageModelBuildEnded *)v5 setArtifactFilepath:v14];
    }

    v15 = v5;
  }

  return v5;
}

- (SMTSchemaSMTAppLanguageModelBuildEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self dictionaryRepresentation];
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
  if (self->_artifactFilepath)
  {
    v4 = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self artifactFilepath];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"artifactFilepath"];
  }

  if (self->_assetName)
  {
    v6 = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self assetName];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"assetName"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SMTSchemaSMTAppLanguageModelBuildEnded languageModelFileSizeInBytes](self, "languageModelFileSizeInBytes")}];
    [v3 setObject:v11 forKeyedSubscript:@"languageModelFileSizeInBytes"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SMTSchemaSMTAppLanguageModelBuildEnded numCustomPronunciations](self, "numCustomPronunciations")}];
  [v3 setObject:v12 forKeyedSubscript:@"numCustomPronunciations"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SMTSchemaSMTAppLanguageModelBuildEnded numOutOfVocabulary](self, "numOutOfVocabulary")}];
  [v3 setObject:v13 forKeyedSubscript:@"numOutOfVocabulary"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_17:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SMTSchemaSMTAppLanguageModelBuildEnded trainingDataSizeInTokens](self, "trainingDataSizeInTokens")}];
  [v3 setObject:v14 forKeyedSubscript:@"trainingDataSizeInTokens"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SMTSchemaSMTAppLanguageModelBuildEnded trainingTimeInNs](self, "trainingTimeInNs")}];
    [v3 setObject:v9 forKeyedSubscript:@"trainingTimeInNs"];
  }

LABEL_11:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = 2654435761u * self->_trainingDataSizeInTokens;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761u * self->_numOutOfVocabulary;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761u * self->_numCustomPronunciations;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [(NSString *)self->_assetName hash];
  if ((*&self->_has & 8) != 0)
  {
    v7 = 2654435761u * self->_trainingTimeInNs;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v7 ^ v8 ^ v6 ^ [(NSString *)self->_artifactFilepath hash];
  }

  v7 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v8 = 2654435761u * self->_languageModelFileSizeInBytes;
  return v4 ^ v3 ^ v5 ^ v7 ^ v8 ^ v6 ^ [(NSString *)self->_artifactFilepath hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  has = self->_has;
  v6 = v4[64];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_30;
  }

  if (*&has)
  {
    trainingDataSizeInTokens = self->_trainingDataSizeInTokens;
    if (trainingDataSizeInTokens != [v4 trainingDataSizeInTokens])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = v4[64];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_30;
  }

  if (v8)
  {
    numOutOfVocabulary = self->_numOutOfVocabulary;
    if (numOutOfVocabulary != [v4 numOutOfVocabulary])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = v4[64];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_30;
  }

  if (v10)
  {
    numCustomPronunciations = self->_numCustomPronunciations;
    if (numCustomPronunciations != [v4 numCustomPronunciations])
    {
      goto LABEL_30;
    }
  }

  v12 = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self assetName];
  v13 = [v4 assetName];
  if ((v12 != 0) == (v13 == 0))
  {
    goto LABEL_29;
  }

  v14 = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self assetName];
  if (v14)
  {
    v15 = v14;
    v16 = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self assetName];
    v17 = [v4 assetName];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v19 = self->_has;
  v20 = (*&v19 >> 3) & 1;
  v21 = v4[64];
  if (v20 != ((v21 >> 3) & 1))
  {
    goto LABEL_30;
  }

  if (v20)
  {
    trainingTimeInNs = self->_trainingTimeInNs;
    if (trainingTimeInNs != [v4 trainingTimeInNs])
    {
      goto LABEL_30;
    }

    v19 = self->_has;
    v21 = v4[64];
  }

  v23 = (*&v19 >> 4) & 1;
  if (v23 != ((v21 >> 4) & 1))
  {
    goto LABEL_30;
  }

  if (v23)
  {
    languageModelFileSizeInBytes = self->_languageModelFileSizeInBytes;
    if (languageModelFileSizeInBytes != [v4 languageModelFileSizeInBytes])
    {
      goto LABEL_30;
    }
  }

  v12 = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self artifactFilepath];
  v13 = [v4 artifactFilepath];
  if ((v12 != 0) == (v13 == 0))
  {
LABEL_29:

    goto LABEL_30;
  }

  v25 = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self artifactFilepath];
  if (!v25)
  {

LABEL_33:
    v30 = 1;
    goto LABEL_31;
  }

  v26 = v25;
  v27 = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self artifactFilepath];
  v28 = [v4 artifactFilepath];
  v29 = [v27 isEqual:v28];

  if (v29)
  {
    goto LABEL_33;
  }

LABEL_30:
  v30 = 0;
LABEL_31:

  return v30;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint64Field();
  }

LABEL_5:
  v5 = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self assetName];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    PBDataWriterWriteUint64Field();
    v6 = self->_has;
  }

  if ((v6 & 0x10) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  v7 = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self artifactFilepath];

  v8 = v9;
  if (v7)
  {
    PBDataWriterWriteStringField();
    v8 = v9;
  }
}

- (void)setHasLanguageModelFileSizeInBytes:(BOOL)a3
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

- (void)setHasTrainingTimeInNs:(BOOL)a3
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

- (void)setHasNumCustomPronunciations:(BOOL)a3
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

- (void)setHasNumOutOfVocabulary:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
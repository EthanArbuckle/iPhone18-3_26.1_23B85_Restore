@interface SMTSchemaSMTAppLanguageModelBuildEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SMTSchemaSMTAppLanguageModelBuildEnded)initWithDictionary:(id)dictionary;
- (SMTSchemaSMTAppLanguageModelBuildEnded)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasLanguageModelFileSizeInBytes:(BOOL)bytes;
- (void)setHasNumCustomPronunciations:(BOOL)pronunciations;
- (void)setHasNumOutOfVocabulary:(BOOL)vocabulary;
- (void)setHasTrainingTimeInNs:(BOOL)ns;
- (void)writeTo:(id)to;
@end

@implementation SMTSchemaSMTAppLanguageModelBuildEnded

- (SMTSchemaSMTAppLanguageModelBuildEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = SMTSchemaSMTAppLanguageModelBuildEnded;
  v5 = [(SMTSchemaSMTAppLanguageModelBuildEnded *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"trainingDataSizeInTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SMTSchemaSMTAppLanguageModelBuildEnded setTrainingDataSizeInTokens:](v5, "setTrainingDataSizeInTokens:", [v6 unsignedLongLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"numOutOfVocabulary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SMTSchemaSMTAppLanguageModelBuildEnded setNumOutOfVocabulary:](v5, "setNumOutOfVocabulary:", [v7 unsignedLongLongValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"numCustomPronunciations"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SMTSchemaSMTAppLanguageModelBuildEnded setNumCustomPronunciations:](v5, "setNumCustomPronunciations:", [v8 unsignedLongLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"assetName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(SMTSchemaSMTAppLanguageModelBuildEnded *)v5 setAssetName:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"trainingTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SMTSchemaSMTAppLanguageModelBuildEnded setTrainingTimeInNs:](v5, "setTrainingTimeInNs:", [v11 unsignedLongLongValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"languageModelFileSizeInBytes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SMTSchemaSMTAppLanguageModelBuildEnded setLanguageModelFileSizeInBytes:](v5, "setLanguageModelFileSizeInBytes:", [v12 unsignedLongLongValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"artifactFilepath"];
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

- (SMTSchemaSMTAppLanguageModelBuildEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self dictionaryRepresentation];
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
  if (self->_artifactFilepath)
  {
    artifactFilepath = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self artifactFilepath];
    v5 = [artifactFilepath copy];
    [dictionary setObject:v5 forKeyedSubscript:@"artifactFilepath"];
  }

  if (self->_assetName)
  {
    assetName = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self assetName];
    v7 = [assetName copy];
    [dictionary setObject:v7 forKeyedSubscript:@"assetName"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SMTSchemaSMTAppLanguageModelBuildEnded languageModelFileSizeInBytes](self, "languageModelFileSizeInBytes")}];
    [dictionary setObject:v11 forKeyedSubscript:@"languageModelFileSizeInBytes"];

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
  [dictionary setObject:v12 forKeyedSubscript:@"numCustomPronunciations"];

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
  [dictionary setObject:v13 forKeyedSubscript:@"numOutOfVocabulary"];

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
  [dictionary setObject:v14 forKeyedSubscript:@"trainingDataSizeInTokens"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SMTSchemaSMTAppLanguageModelBuildEnded trainingTimeInNs](self, "trainingTimeInNs")}];
    [dictionary setObject:v9 forKeyedSubscript:@"trainingTimeInNs"];
  }

LABEL_11:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  has = self->_has;
  v6 = equalCopy[64];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_30;
  }

  if (*&has)
  {
    trainingDataSizeInTokens = self->_trainingDataSizeInTokens;
    if (trainingDataSizeInTokens != [equalCopy trainingDataSizeInTokens])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = equalCopy[64];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_30;
  }

  if (v8)
  {
    numOutOfVocabulary = self->_numOutOfVocabulary;
    if (numOutOfVocabulary != [equalCopy numOutOfVocabulary])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = equalCopy[64];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_30;
  }

  if (v10)
  {
    numCustomPronunciations = self->_numCustomPronunciations;
    if (numCustomPronunciations != [equalCopy numCustomPronunciations])
    {
      goto LABEL_30;
    }
  }

  assetName = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self assetName];
  assetName2 = [equalCopy assetName];
  if ((assetName != 0) == (assetName2 == 0))
  {
    goto LABEL_29;
  }

  assetName3 = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self assetName];
  if (assetName3)
  {
    v15 = assetName3;
    assetName4 = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self assetName];
    assetName5 = [equalCopy assetName];
    v18 = [assetName4 isEqual:assetName5];

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
  v21 = equalCopy[64];
  if (v20 != ((v21 >> 3) & 1))
  {
    goto LABEL_30;
  }

  if (v20)
  {
    trainingTimeInNs = self->_trainingTimeInNs;
    if (trainingTimeInNs != [equalCopy trainingTimeInNs])
    {
      goto LABEL_30;
    }

    v19 = self->_has;
    v21 = equalCopy[64];
  }

  v23 = (*&v19 >> 4) & 1;
  if (v23 != ((v21 >> 4) & 1))
  {
    goto LABEL_30;
  }

  if (v23)
  {
    languageModelFileSizeInBytes = self->_languageModelFileSizeInBytes;
    if (languageModelFileSizeInBytes != [equalCopy languageModelFileSizeInBytes])
    {
      goto LABEL_30;
    }
  }

  assetName = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self artifactFilepath];
  assetName2 = [equalCopy artifactFilepath];
  if ((assetName != 0) == (assetName2 == 0))
  {
LABEL_29:

    goto LABEL_30;
  }

  artifactFilepath = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self artifactFilepath];
  if (!artifactFilepath)
  {

LABEL_33:
    v30 = 1;
    goto LABEL_31;
  }

  v26 = artifactFilepath;
  artifactFilepath2 = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self artifactFilepath];
  artifactFilepath3 = [equalCopy artifactFilepath];
  v29 = [artifactFilepath2 isEqual:artifactFilepath3];

  if (v29)
  {
    goto LABEL_33;
  }

LABEL_30:
  v30 = 0;
LABEL_31:

  return v30;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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
  assetName = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self assetName];

  if (assetName)
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

  artifactFilepath = [(SMTSchemaSMTAppLanguageModelBuildEnded *)self artifactFilepath];

  v8 = toCopy;
  if (artifactFilepath)
  {
    PBDataWriterWriteStringField();
    v8 = toCopy;
  }
}

- (void)setHasLanguageModelFileSizeInBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasTrainingTimeInNs:(BOOL)ns
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

- (void)setHasNumCustomPronunciations:(BOOL)pronunciations
{
  if (pronunciations)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumOutOfVocabulary:(BOOL)vocabulary
{
  if (vocabulary)
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
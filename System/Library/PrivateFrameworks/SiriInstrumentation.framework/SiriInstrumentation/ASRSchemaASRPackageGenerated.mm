@interface ASRSchemaASRPackageGenerated
- (ASRSchemaASRPackageGenerated)initWithDictionary:(id)dictionary;
- (ASRSchemaASRPackageGenerated)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasHasNoVoiceCommandAfterRespeakCheck:(BOOL)check;
- (void)setHasHasVoiceCommandAfterReranking:(BOOL)reranking;
- (void)setHasHasVoiceCommandEditIntent:(BOOL)intent;
- (void)setHasHasVoiceCommandInExhaustiveParses:(BOOL)parses;
- (void)setHasHasVoiceCommandParses:(BOOL)parses;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRPackageGenerated

- (ASRSchemaASRPackageGenerated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = ASRSchemaASRPackageGenerated;
  v5 = [(ASRSchemaASRPackageGenerated *)&v31 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"package"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ASRSchemaASRPackage alloc] initWithDictionary:v6];
      [(ASRSchemaASRPackageGenerated *)v5 setPackage:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isFinal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRPackageGenerated setIsFinal:](v5, "setIsFinal:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(ASRSchemaASRPackageGenerated *)v5 setResultCandidateId:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"loggableSharedUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(ASRSchemaASRPackageGenerated *)v5 setLoggableSharedUserId:v12];
    }

    v28 = v9;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(ASRSchemaASRPackageGenerated *)v5 setModelVersion:v14];
    }

    v26 = v13;
    v27 = v11;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"acousticModelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(ASRSchemaASRPackageGenerated *)v5 setAcousticModelVersion:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"hasVoiceCommandInExhaustiveParses"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRPackageGenerated setHasVoiceCommandInExhaustiveParses:](v5, "setHasVoiceCommandInExhaustiveParses:", [v17 BOOLValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"hasVoiceCommandParses"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRPackageGenerated setHasVoiceCommandParses:](v5, "setHasVoiceCommandParses:", [v18 BOOLValue]);
    }

    v30 = v6;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasVoiceCommandEditIntent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRPackageGenerated setHasVoiceCommandEditIntent:](v5, "setHasVoiceCommandEditIntent:", [v19 BOOLValue]);
    }

    v29 = v8;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasVoiceCommandAfterReranking"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRPackageGenerated setHasVoiceCommandAfterReranking:](v5, "setHasVoiceCommandAfterReranking:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"hasNoVoiceCommandAfterRespeakCheck"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRPackageGenerated setHasNoVoiceCommandAfterRespeakCheck:](v5, "setHasNoVoiceCommandAfterRespeakCheck:", [v21 BOOLValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"loggableUserIdHash"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(ASRSchemaASRPackageGenerated *)v5 setLoggableUserIdHash:v23];
    }

    v24 = v5;
  }

  return v5;
}

- (ASRSchemaASRPackageGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRPackageGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRPackageGenerated *)self dictionaryRepresentation];
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
  if (self->_acousticModelVersion)
  {
    acousticModelVersion = [(ASRSchemaASRPackageGenerated *)self acousticModelVersion];
    v5 = [acousticModelVersion copy];
    [dictionary setObject:v5 forKeyedSubscript:@"acousticModelVersion"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRPackageGenerated hasNoVoiceCommandAfterRespeakCheck](self, "hasNoVoiceCommandAfterRespeakCheck")}];
    [dictionary setObject:v16 forKeyedSubscript:@"hasNoVoiceCommandAfterRespeakCheck"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_5;
  }

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRPackageGenerated hasVoiceCommandAfterReranking](self, "hasVoiceCommandAfterReranking")}];
  [dictionary setObject:v17 forKeyedSubscript:@"hasVoiceCommandAfterReranking"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRPackageGenerated hasVoiceCommandEditIntent](self, "hasVoiceCommandEditIntent")}];
  [dictionary setObject:v18 forKeyedSubscript:@"hasVoiceCommandEditIntent"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRPackageGenerated hasVoiceCommandInExhaustiveParses](self, "hasVoiceCommandInExhaustiveParses")}];
  [dictionary setObject:v19 forKeyedSubscript:@"hasVoiceCommandInExhaustiveParses"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_23:
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRPackageGenerated hasVoiceCommandParses](self, "hasVoiceCommandParses")}];
  [dictionary setObject:v20 forKeyedSubscript:@"hasVoiceCommandParses"];

  if (*&self->_has)
  {
LABEL_9:
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRPackageGenerated isFinal](self, "isFinal")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isFinal"];
  }

LABEL_10:
  if (self->_loggableSharedUserId)
  {
    loggableSharedUserId = [(ASRSchemaASRPackageGenerated *)self loggableSharedUserId];
    v9 = [loggableSharedUserId copy];
    [dictionary setObject:v9 forKeyedSubscript:@"loggableSharedUserId"];
  }

  if (self->_loggableUserIdHash)
  {
    loggableUserIdHash = [(ASRSchemaASRPackageGenerated *)self loggableUserIdHash];
    v11 = [loggableUserIdHash copy];
    [dictionary setObject:v11 forKeyedSubscript:@"loggableUserIdHash"];
  }

  if (self->_modelVersion)
  {
    modelVersion = [(ASRSchemaASRPackageGenerated *)self modelVersion];
    v13 = [modelVersion copy];
    [dictionary setObject:v13 forKeyedSubscript:@"modelVersion"];
  }

  if (self->_package)
  {
    package = [(ASRSchemaASRPackageGenerated *)self package];
    dictionaryRepresentation = [package dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"package"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"package"];
    }
  }

  if (self->_resultCandidateId)
  {
    resultCandidateId = [(ASRSchemaASRPackageGenerated *)self resultCandidateId];
    v23 = [resultCandidateId copy];
    [dictionary setObject:v23 forKeyedSubscript:@"resultCandidateId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ASRSchemaASRPackage *)self->_package hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isFinal;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_resultCandidateId hash];
  v6 = [(NSString *)self->_loggableSharedUserId hash];
  v7 = [(NSString *)self->_modelVersion hash];
  v8 = [(NSString *)self->_acousticModelVersion hash];
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_hasVoiceCommandInExhaustiveParses;
    if ((*&self->_has & 4) != 0)
    {
LABEL_6:
      v10 = 2654435761 * self->_hasVoiceCommandParses;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v9 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  v10 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v11 = 2654435761 * self->_hasVoiceCommandEditIntent;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v12 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v13 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ [(NSString *)self->_loggableUserIdHash hash];
  }

LABEL_12:
  v11 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v12 = 2654435761 * self->_hasVoiceCommandAfterReranking;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v13 = 2654435761 * self->_hasNoVoiceCommandAfterRespeakCheck;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ [(NSString *)self->_loggableUserIdHash hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_54;
  }

  package = [(ASRSchemaASRPackageGenerated *)self package];
  package2 = [equalCopy package];
  if ((package != 0) == (package2 == 0))
  {
    goto LABEL_53;
  }

  package3 = [(ASRSchemaASRPackageGenerated *)self package];
  if (package3)
  {
    v8 = package3;
    package4 = [(ASRSchemaASRPackageGenerated *)self package];
    package5 = [equalCopy package];
    v11 = [package4 isEqual:package5];

    if (!v11)
    {
      goto LABEL_54;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[72] & 1))
  {
    goto LABEL_54;
  }

  if (*&self->_has)
  {
    isFinal = self->_isFinal;
    if (isFinal != [equalCopy isFinal])
    {
      goto LABEL_54;
    }
  }

  package = [(ASRSchemaASRPackageGenerated *)self resultCandidateId];
  package2 = [equalCopy resultCandidateId];
  if ((package != 0) == (package2 == 0))
  {
    goto LABEL_53;
  }

  resultCandidateId = [(ASRSchemaASRPackageGenerated *)self resultCandidateId];
  if (resultCandidateId)
  {
    v14 = resultCandidateId;
    resultCandidateId2 = [(ASRSchemaASRPackageGenerated *)self resultCandidateId];
    resultCandidateId3 = [equalCopy resultCandidateId];
    v17 = [resultCandidateId2 isEqual:resultCandidateId3];

    if (!v17)
    {
      goto LABEL_54;
    }
  }

  else
  {
  }

  package = [(ASRSchemaASRPackageGenerated *)self loggableSharedUserId];
  package2 = [equalCopy loggableSharedUserId];
  if ((package != 0) == (package2 == 0))
  {
    goto LABEL_53;
  }

  loggableSharedUserId = [(ASRSchemaASRPackageGenerated *)self loggableSharedUserId];
  if (loggableSharedUserId)
  {
    v19 = loggableSharedUserId;
    loggableSharedUserId2 = [(ASRSchemaASRPackageGenerated *)self loggableSharedUserId];
    loggableSharedUserId3 = [equalCopy loggableSharedUserId];
    v22 = [loggableSharedUserId2 isEqual:loggableSharedUserId3];

    if (!v22)
    {
      goto LABEL_54;
    }
  }

  else
  {
  }

  package = [(ASRSchemaASRPackageGenerated *)self modelVersion];
  package2 = [equalCopy modelVersion];
  if ((package != 0) == (package2 == 0))
  {
    goto LABEL_53;
  }

  modelVersion = [(ASRSchemaASRPackageGenerated *)self modelVersion];
  if (modelVersion)
  {
    v24 = modelVersion;
    modelVersion2 = [(ASRSchemaASRPackageGenerated *)self modelVersion];
    modelVersion3 = [equalCopy modelVersion];
    v27 = [modelVersion2 isEqual:modelVersion3];

    if (!v27)
    {
      goto LABEL_54;
    }
  }

  else
  {
  }

  package = [(ASRSchemaASRPackageGenerated *)self acousticModelVersion];
  package2 = [equalCopy acousticModelVersion];
  if ((package != 0) == (package2 == 0))
  {
    goto LABEL_53;
  }

  acousticModelVersion = [(ASRSchemaASRPackageGenerated *)self acousticModelVersion];
  if (acousticModelVersion)
  {
    v29 = acousticModelVersion;
    acousticModelVersion2 = [(ASRSchemaASRPackageGenerated *)self acousticModelVersion];
    acousticModelVersion3 = [equalCopy acousticModelVersion];
    v32 = [acousticModelVersion2 isEqual:acousticModelVersion3];

    if (!v32)
    {
      goto LABEL_54;
    }
  }

  else
  {
  }

  has = self->_has;
  v34 = (*&has >> 1) & 1;
  v35 = equalCopy[72];
  if (v34 != ((v35 >> 1) & 1))
  {
    goto LABEL_54;
  }

  if (v34)
  {
    hasVoiceCommandInExhaustiveParses = self->_hasVoiceCommandInExhaustiveParses;
    if (hasVoiceCommandInExhaustiveParses != [equalCopy hasVoiceCommandInExhaustiveParses])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v35 = equalCopy[72];
  }

  v37 = (*&has >> 2) & 1;
  if (v37 != ((v35 >> 2) & 1))
  {
    goto LABEL_54;
  }

  if (v37)
  {
    hasVoiceCommandParses = self->_hasVoiceCommandParses;
    if (hasVoiceCommandParses != [equalCopy hasVoiceCommandParses])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v35 = equalCopy[72];
  }

  v39 = (*&has >> 3) & 1;
  if (v39 != ((v35 >> 3) & 1))
  {
    goto LABEL_54;
  }

  if (v39)
  {
    hasVoiceCommandEditIntent = self->_hasVoiceCommandEditIntent;
    if (hasVoiceCommandEditIntent != [equalCopy hasVoiceCommandEditIntent])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v35 = equalCopy[72];
  }

  v41 = (*&has >> 4) & 1;
  if (v41 != ((v35 >> 4) & 1))
  {
    goto LABEL_54;
  }

  if (v41)
  {
    hasVoiceCommandAfterReranking = self->_hasVoiceCommandAfterReranking;
    if (hasVoiceCommandAfterReranking != [equalCopy hasVoiceCommandAfterReranking])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v35 = equalCopy[72];
  }

  v43 = (*&has >> 5) & 1;
  if (v43 != ((v35 >> 5) & 1))
  {
    goto LABEL_54;
  }

  if (v43)
  {
    hasNoVoiceCommandAfterRespeakCheck = self->_hasNoVoiceCommandAfterRespeakCheck;
    if (hasNoVoiceCommandAfterRespeakCheck != [equalCopy hasNoVoiceCommandAfterRespeakCheck])
    {
      goto LABEL_54;
    }
  }

  package = [(ASRSchemaASRPackageGenerated *)self loggableUserIdHash];
  package2 = [equalCopy loggableUserIdHash];
  if ((package != 0) == (package2 == 0))
  {
LABEL_53:

    goto LABEL_54;
  }

  loggableUserIdHash = [(ASRSchemaASRPackageGenerated *)self loggableUserIdHash];
  if (!loggableUserIdHash)
  {

LABEL_57:
    v50 = 1;
    goto LABEL_55;
  }

  v46 = loggableUserIdHash;
  loggableUserIdHash2 = [(ASRSchemaASRPackageGenerated *)self loggableUserIdHash];
  loggableUserIdHash3 = [equalCopy loggableUserIdHash];
  v49 = [loggableUserIdHash2 isEqual:loggableUserIdHash3];

  if (v49)
  {
    goto LABEL_57;
  }

LABEL_54:
  v50 = 0;
LABEL_55:

  return v50;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  package = [(ASRSchemaASRPackageGenerated *)self package];

  if (package)
  {
    package2 = [(ASRSchemaASRPackageGenerated *)self package];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  resultCandidateId = [(ASRSchemaASRPackageGenerated *)self resultCandidateId];

  if (resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }

  loggableSharedUserId = [(ASRSchemaASRPackageGenerated *)self loggableSharedUserId];

  if (loggableSharedUserId)
  {
    PBDataWriterWriteStringField();
  }

  modelVersion = [(ASRSchemaASRPackageGenerated *)self modelVersion];

  if (modelVersion)
  {
    PBDataWriterWriteStringField();
  }

  acousticModelVersion = [(ASRSchemaASRPackageGenerated *)self acousticModelVersion];

  if (acousticModelVersion)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_15:
      if ((has & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_15;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_16:
    if ((has & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_17:
    if ((has & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_27:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_18:
    PBDataWriterWriteBOOLField();
  }

LABEL_19:
  loggableUserIdHash = [(ASRSchemaASRPackageGenerated *)self loggableUserIdHash];

  v12 = toCopy;
  if (loggableUserIdHash)
  {
    PBDataWriterWriteStringField();
    v12 = toCopy;
  }
}

- (void)setHasHasNoVoiceCommandAfterRespeakCheck:(BOOL)check
{
  if (check)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasHasVoiceCommandAfterReranking:(BOOL)reranking
{
  if (reranking)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasHasVoiceCommandEditIntent:(BOOL)intent
{
  if (intent)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasHasVoiceCommandParses:(BOOL)parses
{
  if (parses)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasHasVoiceCommandInExhaustiveParses:(BOOL)parses
{
  if (parses)
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
  v10.receiver = self;
  v10.super_class = ASRSchemaASRPackageGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:8])
  {
    [(ASRSchemaASRPackageGenerated *)self deleteLoggableSharedUserId];
  }

  package = [(ASRSchemaASRPackageGenerated *)self package];
  v7 = [package applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ASRSchemaASRPackageGenerated *)self deletePackage];
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
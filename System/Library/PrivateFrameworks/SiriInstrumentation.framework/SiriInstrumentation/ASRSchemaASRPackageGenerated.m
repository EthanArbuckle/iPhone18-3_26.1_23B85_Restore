@interface ASRSchemaASRPackageGenerated
- (ASRSchemaASRPackageGenerated)initWithDictionary:(id)a3;
- (ASRSchemaASRPackageGenerated)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasHasNoVoiceCommandAfterRespeakCheck:(BOOL)a3;
- (void)setHasHasVoiceCommandAfterReranking:(BOOL)a3;
- (void)setHasHasVoiceCommandEditIntent:(BOOL)a3;
- (void)setHasHasVoiceCommandInExhaustiveParses:(BOOL)a3;
- (void)setHasHasVoiceCommandParses:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRPackageGenerated

- (ASRSchemaASRPackageGenerated)initWithDictionary:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = ASRSchemaASRPackageGenerated;
  v5 = [(ASRSchemaASRPackageGenerated *)&v31 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"package"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ASRSchemaASRPackage alloc] initWithDictionary:v6];
      [(ASRSchemaASRPackageGenerated *)v5 setPackage:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"isFinal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRPackageGenerated setIsFinal:](v5, "setIsFinal:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(ASRSchemaASRPackageGenerated *)v5 setResultCandidateId:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"loggableSharedUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(ASRSchemaASRPackageGenerated *)v5 setLoggableSharedUserId:v12];
    }

    v28 = v9;
    v13 = [v4 objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(ASRSchemaASRPackageGenerated *)v5 setModelVersion:v14];
    }

    v26 = v13;
    v27 = v11;
    v15 = [v4 objectForKeyedSubscript:@"acousticModelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(ASRSchemaASRPackageGenerated *)v5 setAcousticModelVersion:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"hasVoiceCommandInExhaustiveParses"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRPackageGenerated setHasVoiceCommandInExhaustiveParses:](v5, "setHasVoiceCommandInExhaustiveParses:", [v17 BOOLValue]);
    }

    v18 = [v4 objectForKeyedSubscript:@"hasVoiceCommandParses"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRPackageGenerated setHasVoiceCommandParses:](v5, "setHasVoiceCommandParses:", [v18 BOOLValue]);
    }

    v30 = v6;
    v19 = [v4 objectForKeyedSubscript:@"hasVoiceCommandEditIntent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRPackageGenerated setHasVoiceCommandEditIntent:](v5, "setHasVoiceCommandEditIntent:", [v19 BOOLValue]);
    }

    v29 = v8;
    v20 = [v4 objectForKeyedSubscript:@"hasVoiceCommandAfterReranking"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRPackageGenerated setHasVoiceCommandAfterReranking:](v5, "setHasVoiceCommandAfterReranking:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"hasNoVoiceCommandAfterRespeakCheck"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRPackageGenerated setHasNoVoiceCommandAfterRespeakCheck:](v5, "setHasNoVoiceCommandAfterRespeakCheck:", [v21 BOOLValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"loggableUserIdHash"];
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

- (ASRSchemaASRPackageGenerated)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRPackageGenerated *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRPackageGenerated *)self dictionaryRepresentation];
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
  if (self->_acousticModelVersion)
  {
    v4 = [(ASRSchemaASRPackageGenerated *)self acousticModelVersion];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"acousticModelVersion"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRPackageGenerated hasNoVoiceCommandAfterRespeakCheck](self, "hasNoVoiceCommandAfterRespeakCheck")}];
    [v3 setObject:v16 forKeyedSubscript:@"hasNoVoiceCommandAfterRespeakCheck"];

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
  [v3 setObject:v17 forKeyedSubscript:@"hasVoiceCommandAfterReranking"];

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
  [v3 setObject:v18 forKeyedSubscript:@"hasVoiceCommandEditIntent"];

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
  [v3 setObject:v19 forKeyedSubscript:@"hasVoiceCommandInExhaustiveParses"];

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
  [v3 setObject:v20 forKeyedSubscript:@"hasVoiceCommandParses"];

  if (*&self->_has)
  {
LABEL_9:
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRPackageGenerated isFinal](self, "isFinal")}];
    [v3 setObject:v7 forKeyedSubscript:@"isFinal"];
  }

LABEL_10:
  if (self->_loggableSharedUserId)
  {
    v8 = [(ASRSchemaASRPackageGenerated *)self loggableSharedUserId];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"loggableSharedUserId"];
  }

  if (self->_loggableUserIdHash)
  {
    v10 = [(ASRSchemaASRPackageGenerated *)self loggableUserIdHash];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"loggableUserIdHash"];
  }

  if (self->_modelVersion)
  {
    v12 = [(ASRSchemaASRPackageGenerated *)self modelVersion];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"modelVersion"];
  }

  if (self->_package)
  {
    v14 = [(ASRSchemaASRPackageGenerated *)self package];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"package"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"package"];
    }
  }

  if (self->_resultCandidateId)
  {
    v22 = [(ASRSchemaASRPackageGenerated *)self resultCandidateId];
    v23 = [v22 copy];
    [v3 setObject:v23 forKeyedSubscript:@"resultCandidateId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_54;
  }

  v5 = [(ASRSchemaASRPackageGenerated *)self package];
  v6 = [v4 package];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_53;
  }

  v7 = [(ASRSchemaASRPackageGenerated *)self package];
  if (v7)
  {
    v8 = v7;
    v9 = [(ASRSchemaASRPackageGenerated *)self package];
    v10 = [v4 package];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_54;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[72] & 1))
  {
    goto LABEL_54;
  }

  if (*&self->_has)
  {
    isFinal = self->_isFinal;
    if (isFinal != [v4 isFinal])
    {
      goto LABEL_54;
    }
  }

  v5 = [(ASRSchemaASRPackageGenerated *)self resultCandidateId];
  v6 = [v4 resultCandidateId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_53;
  }

  v13 = [(ASRSchemaASRPackageGenerated *)self resultCandidateId];
  if (v13)
  {
    v14 = v13;
    v15 = [(ASRSchemaASRPackageGenerated *)self resultCandidateId];
    v16 = [v4 resultCandidateId];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_54;
    }
  }

  else
  {
  }

  v5 = [(ASRSchemaASRPackageGenerated *)self loggableSharedUserId];
  v6 = [v4 loggableSharedUserId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_53;
  }

  v18 = [(ASRSchemaASRPackageGenerated *)self loggableSharedUserId];
  if (v18)
  {
    v19 = v18;
    v20 = [(ASRSchemaASRPackageGenerated *)self loggableSharedUserId];
    v21 = [v4 loggableSharedUserId];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_54;
    }
  }

  else
  {
  }

  v5 = [(ASRSchemaASRPackageGenerated *)self modelVersion];
  v6 = [v4 modelVersion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_53;
  }

  v23 = [(ASRSchemaASRPackageGenerated *)self modelVersion];
  if (v23)
  {
    v24 = v23;
    v25 = [(ASRSchemaASRPackageGenerated *)self modelVersion];
    v26 = [v4 modelVersion];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_54;
    }
  }

  else
  {
  }

  v5 = [(ASRSchemaASRPackageGenerated *)self acousticModelVersion];
  v6 = [v4 acousticModelVersion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_53;
  }

  v28 = [(ASRSchemaASRPackageGenerated *)self acousticModelVersion];
  if (v28)
  {
    v29 = v28;
    v30 = [(ASRSchemaASRPackageGenerated *)self acousticModelVersion];
    v31 = [v4 acousticModelVersion];
    v32 = [v30 isEqual:v31];

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
  v35 = v4[72];
  if (v34 != ((v35 >> 1) & 1))
  {
    goto LABEL_54;
  }

  if (v34)
  {
    hasVoiceCommandInExhaustiveParses = self->_hasVoiceCommandInExhaustiveParses;
    if (hasVoiceCommandInExhaustiveParses != [v4 hasVoiceCommandInExhaustiveParses])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v35 = v4[72];
  }

  v37 = (*&has >> 2) & 1;
  if (v37 != ((v35 >> 2) & 1))
  {
    goto LABEL_54;
  }

  if (v37)
  {
    hasVoiceCommandParses = self->_hasVoiceCommandParses;
    if (hasVoiceCommandParses != [v4 hasVoiceCommandParses])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v35 = v4[72];
  }

  v39 = (*&has >> 3) & 1;
  if (v39 != ((v35 >> 3) & 1))
  {
    goto LABEL_54;
  }

  if (v39)
  {
    hasVoiceCommandEditIntent = self->_hasVoiceCommandEditIntent;
    if (hasVoiceCommandEditIntent != [v4 hasVoiceCommandEditIntent])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v35 = v4[72];
  }

  v41 = (*&has >> 4) & 1;
  if (v41 != ((v35 >> 4) & 1))
  {
    goto LABEL_54;
  }

  if (v41)
  {
    hasVoiceCommandAfterReranking = self->_hasVoiceCommandAfterReranking;
    if (hasVoiceCommandAfterReranking != [v4 hasVoiceCommandAfterReranking])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v35 = v4[72];
  }

  v43 = (*&has >> 5) & 1;
  if (v43 != ((v35 >> 5) & 1))
  {
    goto LABEL_54;
  }

  if (v43)
  {
    hasNoVoiceCommandAfterRespeakCheck = self->_hasNoVoiceCommandAfterRespeakCheck;
    if (hasNoVoiceCommandAfterRespeakCheck != [v4 hasNoVoiceCommandAfterRespeakCheck])
    {
      goto LABEL_54;
    }
  }

  v5 = [(ASRSchemaASRPackageGenerated *)self loggableUserIdHash];
  v6 = [v4 loggableUserIdHash];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_53:

    goto LABEL_54;
  }

  v45 = [(ASRSchemaASRPackageGenerated *)self loggableUserIdHash];
  if (!v45)
  {

LABEL_57:
    v50 = 1;
    goto LABEL_55;
  }

  v46 = v45;
  v47 = [(ASRSchemaASRPackageGenerated *)self loggableUserIdHash];
  v48 = [v4 loggableUserIdHash];
  v49 = [v47 isEqual:v48];

  if (v49)
  {
    goto LABEL_57;
  }

LABEL_54:
  v50 = 0;
LABEL_55:

  return v50;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(ASRSchemaASRPackageGenerated *)self package];

  if (v4)
  {
    v5 = [(ASRSchemaASRPackageGenerated *)self package];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v6 = [(ASRSchemaASRPackageGenerated *)self resultCandidateId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(ASRSchemaASRPackageGenerated *)self loggableSharedUserId];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(ASRSchemaASRPackageGenerated *)self modelVersion];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(ASRSchemaASRPackageGenerated *)self acousticModelVersion];

  if (v9)
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
  v11 = [(ASRSchemaASRPackageGenerated *)self loggableUserIdHash];

  v12 = v13;
  if (v11)
  {
    PBDataWriterWriteStringField();
    v12 = v13;
  }
}

- (void)setHasHasNoVoiceCommandAfterRespeakCheck:(BOOL)a3
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

- (void)setHasHasVoiceCommandAfterReranking:(BOOL)a3
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

- (void)setHasHasVoiceCommandEditIntent:(BOOL)a3
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

- (void)setHasHasVoiceCommandParses:(BOOL)a3
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

- (void)setHasHasVoiceCommandInExhaustiveParses:(BOOL)a3
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
  v10.receiver = self;
  v10.super_class = ASRSchemaASRPackageGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:8])
  {
    [(ASRSchemaASRPackageGenerated *)self deleteLoggableSharedUserId];
  }

  v6 = [(ASRSchemaASRPackageGenerated *)self package];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
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
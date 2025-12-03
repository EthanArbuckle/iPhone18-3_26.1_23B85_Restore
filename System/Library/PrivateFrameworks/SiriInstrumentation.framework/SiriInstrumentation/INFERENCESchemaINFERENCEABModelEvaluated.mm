@interface INFERENCESchemaINFERENCEABModelEvaluated
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEABModelEvaluated)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEABModelEvaluated)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsDecisionCorrect:(BOOL)correct;
- (void)setHasIsModelConfirmation:(BOOL)confirmation;
- (void)setHasIsModelDisambiguation:(BOOL)disambiguation;
- (void)setHasModelVersion:(BOOL)version;
- (void)setHasNumCandidateApps:(BOOL)apps;
- (void)setHasUserPersona:(BOOL)persona;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEABModelEvaluated

- (INFERENCESchemaINFERENCEABModelEvaluated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = INFERENCESchemaINFERENCEABModelEvaluated;
  v5 = [(INFERENCESchemaINFERENCEABModelEvaluated *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"projectIntent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEABModelEvaluated setProjectIntent:](v5, "setProjectIntent:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"numCandidateApps"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEABModelEvaluated setNumCandidateApps:](v5, "setNumCandidateApps:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isDecisionCorrect"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEABModelEvaluated setIsDecisionCorrect:](v5, "setIsDecisionCorrect:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEABModelEvaluated setModelVersion:](v5, "setModelVersion:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isModelDisambiguation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEABModelEvaluated setIsModelDisambiguation:](v5, "setIsModelDisambiguation:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isModelConfirmation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEABModelEvaluated setIsModelConfirmation:](v5, "setIsModelConfirmation:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"userPersona"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEABModelEvaluated setUserPersona:](v5, "setUserPersona:", [v12 intValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEABModelEvaluated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEABModelEvaluated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEABModelEvaluated *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEABModelEvaluated isDecisionCorrect](self, "isDecisionCorrect")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isDecisionCorrect"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEABModelEvaluated isModelConfirmation](self, "isModelConfirmation")}];
  [dictionary setObject:v6 forKeyedSubscript:@"isModelConfirmation"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEABModelEvaluated isModelDisambiguation](self, "isModelDisambiguation")}];
  [dictionary setObject:v7 forKeyedSubscript:@"isModelDisambiguation"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[INFERENCESchemaINFERENCEABModelEvaluated modelVersion](self, "modelVersion")}];
  [dictionary setObject:v8 forKeyedSubscript:@"modelVersion"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v10 = [(INFERENCESchemaINFERENCEABModelEvaluated *)self projectIntent]- 1;
    if (v10 > 0xB)
    {
      v11 = @"INFERENCEPROJECTINTENT_UNKNOWN";
    }

    else
    {
      v11 = off_1E78D85F0[v10];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"projectIntent"];
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

LABEL_13:
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEABModelEvaluated numCandidateApps](self, "numCandidateApps")}];
  [dictionary setObject:v9 forKeyedSubscript:@"numCandidateApps"];

  has = self->_has;
  if (has)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((has & 0x40) != 0)
  {
LABEL_18:
    v12 = [(INFERENCESchemaINFERENCEABModelEvaluated *)self userPersona]- 1;
    if (v12 > 5)
    {
      v13 = @"INFERENCEAPPSELECTIONUSERPERSONA_UNKNOWN";
    }

    else
    {
      v13 = off_1E78D8650[v12];
    }

    [dictionary setObject:v13 forKeyedSubscript:@"userPersona"];
  }

LABEL_22:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_projectIntent;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_numCandidateApps;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_isDecisionCorrect;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_modelVersion;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_isModelDisambiguation;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_isModelConfirmation;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_userPersona;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  has = self->_has;
  v6 = equalCopy[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_30;
  }

  if (*&has)
  {
    projectIntent = self->_projectIntent;
    if (projectIntent != [equalCopy projectIntent])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_30;
  }

  if (v8)
  {
    numCandidateApps = self->_numCandidateApps;
    if (numCandidateApps != [equalCopy numCandidateApps])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_30;
  }

  if (v10)
  {
    isDecisionCorrect = self->_isDecisionCorrect;
    if (isDecisionCorrect != [equalCopy isDecisionCorrect])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_30;
  }

  if (v12)
  {
    modelVersion = self->_modelVersion;
    if (modelVersion != [equalCopy modelVersion])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_30;
  }

  if (v14)
  {
    isModelDisambiguation = self->_isModelDisambiguation;
    if (isModelDisambiguation != [equalCopy isModelDisambiguation])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_30;
  }

  if (v16)
  {
    isModelConfirmation = self->_isModelConfirmation;
    if (isModelConfirmation == [equalCopy isModelConfirmation])
    {
      has = self->_has;
      v6 = equalCopy[32];
      goto LABEL_26;
    }

LABEL_30:
    v20 = 0;
    goto LABEL_31;
  }

LABEL_26:
  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_30;
  }

  if (v18)
  {
    userPersona = self->_userPersona;
    if (userPersona != [equalCopy userPersona])
    {
      goto LABEL_30;
    }
  }

  v20 = 1;
LABEL_31:

  return v20;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    PBDataWriterWriteInt32Field();
  }

LABEL_9:
}

- (void)setHasUserPersona:(BOOL)persona
{
  if (persona)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsModelConfirmation:(BOOL)confirmation
{
  if (confirmation)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsModelDisambiguation:(BOOL)disambiguation
{
  if (disambiguation)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasModelVersion:(BOOL)version
{
  if (version)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsDecisionCorrect:(BOOL)correct
{
  if (correct)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumCandidateApps:(BOOL)apps
{
  if (apps)
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
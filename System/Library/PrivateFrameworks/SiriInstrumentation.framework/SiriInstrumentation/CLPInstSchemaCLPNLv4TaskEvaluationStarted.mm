@interface CLPInstSchemaCLPNLv4TaskEvaluationStarted
- (BOOL)isEqual:(id)equal;
- (CLPInstSchemaCLPNLv4TaskEvaluationStarted)initWithDictionary:(id)dictionary;
- (CLPInstSchemaCLPNLv4TaskEvaluationStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEvaluationEnvironment:(BOOL)environment;
- (void)setHasExperimentType:(BOOL)type;
- (void)setHasIsDebugTask:(BOOL)task;
- (void)setHasRecipeType:(BOOL)type;
- (void)setHasSampleCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation CLPInstSchemaCLPNLv4TaskEvaluationStarted

- (CLPInstSchemaCLPNLv4TaskEvaluationStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = CLPInstSchemaCLPNLv4TaskEvaluationStarted;
  v5 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"evaluationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4TaskEvaluationStarted setEvaluationType:](v5, "setEvaluationType:", [v6 intValue]);
    }

    v21 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"evaluationEnvironment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4TaskEvaluationStarted setEvaluationEnvironment:](v5, "setEvaluationEnvironment:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:{@"experimentType", v7}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4TaskEvaluationStarted setExperimentType:](v5, "setExperimentType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"recipeType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4TaskEvaluationStarted setRecipeType:](v5, "setRecipeType:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"nlv4AssetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaAsset alloc] initWithDictionary:v10];
      [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)v5 setNlv4AssetVersion:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"sampleCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4TaskEvaluationStarted setSampleCount:](v5, "setSampleCount:", [v12 unsignedIntValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"isDebugTask"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4TaskEvaluationStarted setIsDebugTask:](v5, "setIsDebugTask:", [v13 BOOLValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"syntheticDatasetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaAsset alloc] initWithDictionary:v14];
      [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)v5 setSyntheticDatasetVersion:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"nlv4AssetVersionOverride"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaAsset alloc] initWithDictionary:v16];
      [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)v5 setNlv4AssetVersionOverride:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (CLPInstSchemaCLPNLv4TaskEvaluationStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    v5 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self evaluationEnvironment]- 1;
    if (v5 > 2)
    {
      v6 = @"CLPEVALUATIONENVIRONMENT_UNKNOWN";
    }

    else
    {
      v6 = off_1E78D2AC0[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"evaluationEnvironment"];
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ([(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self evaluationType]== 1)
  {
    v7 = @"CLPEVALUATIONTYPE_NLV4";
  }

  else
  {
    v7 = @"CLPEVALUATIONTYPE_UNKNOWN";
  }

  [dictionary setObject:v7 forKeyedSubscript:@"evaluationType"];
  has = self->_has;
  if ((has & 4) != 0)
  {
LABEL_13:
    v8 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self experimentType]- 1;
    if (v8 > 2)
    {
      v9 = @"CLPEXPERIMENTTYPE_UNKNOWN";
    }

    else
    {
      v9 = off_1E78D2AD8[v8];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"experimentType"];
    has = self->_has;
  }

LABEL_17:
  if ((has & 0x20) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[CLPInstSchemaCLPNLv4TaskEvaluationStarted isDebugTask](self, "isDebugTask")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isDebugTask"];
  }

  if (self->_nlv4AssetVersion)
  {
    nlv4AssetVersion = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersion];
    dictionaryRepresentation = [nlv4AssetVersion dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"nlv4AssetVersion"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"nlv4AssetVersion"];
    }
  }

  if (self->_nlv4AssetVersionOverride)
  {
    nlv4AssetVersionOverride = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersionOverride];
    dictionaryRepresentation2 = [nlv4AssetVersionOverride dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"nlv4AssetVersionOverride"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"nlv4AssetVersionOverride"];
    }
  }

  v17 = self->_has;
  if ((v17 & 8) != 0)
  {
    recipeType = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self recipeType];
    v19 = @"CLPRECIPETYPE_UNKNOWN";
    if (recipeType == 1)
    {
      v19 = @"CLPRECIPETYPE_FULL_RECIPE";
    }

    if (recipeType == 2)
    {
      v20 = @"CLPRECIPETYPE_DEBUG_RECIPE";
    }

    else
    {
      v20 = v19;
    }

    [dictionary setObject:v20 forKeyedSubscript:@"recipeType"];
    v17 = self->_has;
  }

  if ((v17 & 0x10) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CLPInstSchemaCLPNLv4TaskEvaluationStarted sampleCount](self, "sampleCount")}];
    [dictionary setObject:v21 forKeyedSubscript:@"sampleCount"];
  }

  if (self->_syntheticDatasetVersion)
  {
    syntheticDatasetVersion = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self syntheticDatasetVersion];
    dictionaryRepresentation3 = [syntheticDatasetVersion dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"syntheticDatasetVersion"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"syntheticDatasetVersion"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_evaluationType;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_evaluationEnvironment;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 2654435761 * self->_experimentType;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_recipeType;
    goto LABEL_10;
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  v7 = [(SISchemaAsset *)self->_nlv4AssetVersion hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v8 = 2654435761 * self->_sampleCount;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  v8 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  v9 = 2654435761 * self->_isDebugTask;
LABEL_15:
  v10 = v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v9 ^ v7;
  v11 = [(SISchemaAsset *)self->_syntheticDatasetVersion hash];
  return v10 ^ v11 ^ [(SISchemaAsset *)self->_nlv4AssetVersionOverride hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  has = self->_has;
  v6 = equalCopy[56];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_39;
  }

  if (*&has)
  {
    evaluationType = self->_evaluationType;
    if (evaluationType != [equalCopy evaluationType])
    {
      goto LABEL_39;
    }

    has = self->_has;
    v6 = equalCopy[56];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_39;
  }

  if (v8)
  {
    evaluationEnvironment = self->_evaluationEnvironment;
    if (evaluationEnvironment != [equalCopy evaluationEnvironment])
    {
      goto LABEL_39;
    }

    has = self->_has;
    v6 = equalCopy[56];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_39;
  }

  if (v10)
  {
    experimentType = self->_experimentType;
    if (experimentType != [equalCopy experimentType])
    {
      goto LABEL_39;
    }

    has = self->_has;
    v6 = equalCopy[56];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_39;
  }

  if (v12)
  {
    recipeType = self->_recipeType;
    if (recipeType != [equalCopy recipeType])
    {
      goto LABEL_39;
    }
  }

  nlv4AssetVersion = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersion];
  nlv4AssetVersion2 = [equalCopy nlv4AssetVersion];
  if ((nlv4AssetVersion != 0) == (nlv4AssetVersion2 == 0))
  {
    goto LABEL_38;
  }

  nlv4AssetVersion3 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersion];
  if (nlv4AssetVersion3)
  {
    v17 = nlv4AssetVersion3;
    nlv4AssetVersion4 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersion];
    nlv4AssetVersion5 = [equalCopy nlv4AssetVersion];
    v20 = [nlv4AssetVersion4 isEqual:nlv4AssetVersion5];

    if (!v20)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  v21 = self->_has;
  v22 = (*&v21 >> 4) & 1;
  v23 = equalCopy[56];
  if (v22 != ((v23 >> 4) & 1))
  {
    goto LABEL_39;
  }

  if (v22)
  {
    sampleCount = self->_sampleCount;
    if (sampleCount != [equalCopy sampleCount])
    {
      goto LABEL_39;
    }

    v21 = self->_has;
    v23 = equalCopy[56];
  }

  v25 = (*&v21 >> 5) & 1;
  if (v25 != ((v23 >> 5) & 1))
  {
    goto LABEL_39;
  }

  if (v25)
  {
    isDebugTask = self->_isDebugTask;
    if (isDebugTask != [equalCopy isDebugTask])
    {
      goto LABEL_39;
    }
  }

  nlv4AssetVersion = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self syntheticDatasetVersion];
  nlv4AssetVersion2 = [equalCopy syntheticDatasetVersion];
  if ((nlv4AssetVersion != 0) == (nlv4AssetVersion2 == 0))
  {
    goto LABEL_38;
  }

  syntheticDatasetVersion = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self syntheticDatasetVersion];
  if (syntheticDatasetVersion)
  {
    v28 = syntheticDatasetVersion;
    syntheticDatasetVersion2 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self syntheticDatasetVersion];
    syntheticDatasetVersion3 = [equalCopy syntheticDatasetVersion];
    v31 = [syntheticDatasetVersion2 isEqual:syntheticDatasetVersion3];

    if (!v31)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  nlv4AssetVersion = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersionOverride];
  nlv4AssetVersion2 = [equalCopy nlv4AssetVersionOverride];
  if ((nlv4AssetVersion != 0) == (nlv4AssetVersion2 == 0))
  {
LABEL_38:

    goto LABEL_39;
  }

  nlv4AssetVersionOverride = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersionOverride];
  if (!nlv4AssetVersionOverride)
  {

LABEL_42:
    v37 = 1;
    goto LABEL_40;
  }

  v33 = nlv4AssetVersionOverride;
  nlv4AssetVersionOverride2 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersionOverride];
  nlv4AssetVersionOverride3 = [equalCopy nlv4AssetVersionOverride];
  v36 = [nlv4AssetVersionOverride2 isEqual:nlv4AssetVersionOverride3];

  if (v36)
  {
    goto LABEL_42;
  }

LABEL_39:
  v37 = 0;
LABEL_40:

  return v37;
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

      goto LABEL_21;
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
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_21:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
  nlv4AssetVersion = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersion];

  if (nlv4AssetVersion)
  {
    nlv4AssetVersion2 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersion];
    PBDataWriterWriteSubmessage();
  }

  v7 = self->_has;
  if ((v7 & 0x10) != 0)
  {
    PBDataWriterWriteUint32Field();
    v7 = self->_has;
  }

  if ((v7 & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  syntheticDatasetVersion = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self syntheticDatasetVersion];

  if (syntheticDatasetVersion)
  {
    syntheticDatasetVersion2 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self syntheticDatasetVersion];
    PBDataWriterWriteSubmessage();
  }

  nlv4AssetVersionOverride = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersionOverride];

  v11 = toCopy;
  if (nlv4AssetVersionOverride)
  {
    nlv4AssetVersionOverride2 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersionOverride];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)setHasIsDebugTask:(BOOL)task
{
  if (task)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasSampleCount:(BOOL)count
{
  if (count)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasRecipeType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasExperimentType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasEvaluationEnvironment:(BOOL)environment
{
  if (environment)
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
  v16.receiver = self;
  v16.super_class = CLPInstSchemaCLPNLv4TaskEvaluationStarted;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  nlv4AssetVersion = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersion];
  v7 = [nlv4AssetVersion applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self deleteNlv4AssetVersion];
  }

  syntheticDatasetVersion = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self syntheticDatasetVersion];
  v10 = [syntheticDatasetVersion applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self deleteSyntheticDatasetVersion];
  }

  nlv4AssetVersionOverride = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersionOverride];
  v13 = [nlv4AssetVersionOverride applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self deleteNlv4AssetVersionOverride];
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
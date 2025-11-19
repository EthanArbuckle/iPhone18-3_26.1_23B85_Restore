@interface CLPInstSchemaCLPNLv4TaskEvaluationStarted
- (BOOL)isEqual:(id)a3;
- (CLPInstSchemaCLPNLv4TaskEvaluationStarted)initWithDictionary:(id)a3;
- (CLPInstSchemaCLPNLv4TaskEvaluationStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEvaluationEnvironment:(BOOL)a3;
- (void)setHasExperimentType:(BOOL)a3;
- (void)setHasIsDebugTask:(BOOL)a3;
- (void)setHasRecipeType:(BOOL)a3;
- (void)setHasSampleCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CLPInstSchemaCLPNLv4TaskEvaluationStarted

- (CLPInstSchemaCLPNLv4TaskEvaluationStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CLPInstSchemaCLPNLv4TaskEvaluationStarted;
  v5 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"evaluationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4TaskEvaluationStarted setEvaluationType:](v5, "setEvaluationType:", [v6 intValue]);
    }

    v21 = v6;
    v7 = [v4 objectForKeyedSubscript:@"evaluationEnvironment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4TaskEvaluationStarted setEvaluationEnvironment:](v5, "setEvaluationEnvironment:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:{@"experimentType", v7}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4TaskEvaluationStarted setExperimentType:](v5, "setExperimentType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"recipeType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4TaskEvaluationStarted setRecipeType:](v5, "setRecipeType:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"nlv4AssetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaAsset alloc] initWithDictionary:v10];
      [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)v5 setNlv4AssetVersion:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"sampleCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4TaskEvaluationStarted setSampleCount:](v5, "setSampleCount:", [v12 unsignedIntValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"isDebugTask"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4TaskEvaluationStarted setIsDebugTask:](v5, "setIsDebugTask:", [v13 BOOLValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"syntheticDatasetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaAsset alloc] initWithDictionary:v14];
      [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)v5 setSyntheticDatasetVersion:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"nlv4AssetVersionOverride"];
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

- (CLPInstSchemaCLPNLv4TaskEvaluationStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self dictionaryRepresentation];
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

    [v3 setObject:v6 forKeyedSubscript:@"evaluationEnvironment"];
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

  [v3 setObject:v7 forKeyedSubscript:@"evaluationType"];
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

    [v3 setObject:v9 forKeyedSubscript:@"experimentType"];
    has = self->_has;
  }

LABEL_17:
  if ((has & 0x20) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[CLPInstSchemaCLPNLv4TaskEvaluationStarted isDebugTask](self, "isDebugTask")}];
    [v3 setObject:v10 forKeyedSubscript:@"isDebugTask"];
  }

  if (self->_nlv4AssetVersion)
  {
    v11 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersion];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"nlv4AssetVersion"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"nlv4AssetVersion"];
    }
  }

  if (self->_nlv4AssetVersionOverride)
  {
    v14 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersionOverride];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"nlv4AssetVersionOverride"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"nlv4AssetVersionOverride"];
    }
  }

  v17 = self->_has;
  if ((v17 & 8) != 0)
  {
    v18 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self recipeType];
    v19 = @"CLPRECIPETYPE_UNKNOWN";
    if (v18 == 1)
    {
      v19 = @"CLPRECIPETYPE_FULL_RECIPE";
    }

    if (v18 == 2)
    {
      v20 = @"CLPRECIPETYPE_DEBUG_RECIPE";
    }

    else
    {
      v20 = v19;
    }

    [v3 setObject:v20 forKeyedSubscript:@"recipeType"];
    v17 = self->_has;
  }

  if ((v17 & 0x10) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CLPInstSchemaCLPNLv4TaskEvaluationStarted sampleCount](self, "sampleCount")}];
    [v3 setObject:v21 forKeyedSubscript:@"sampleCount"];
  }

  if (self->_syntheticDatasetVersion)
  {
    v22 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self syntheticDatasetVersion];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"syntheticDatasetVersion"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"syntheticDatasetVersion"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  has = self->_has;
  v6 = v4[56];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_39;
  }

  if (*&has)
  {
    evaluationType = self->_evaluationType;
    if (evaluationType != [v4 evaluationType])
    {
      goto LABEL_39;
    }

    has = self->_has;
    v6 = v4[56];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_39;
  }

  if (v8)
  {
    evaluationEnvironment = self->_evaluationEnvironment;
    if (evaluationEnvironment != [v4 evaluationEnvironment])
    {
      goto LABEL_39;
    }

    has = self->_has;
    v6 = v4[56];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_39;
  }

  if (v10)
  {
    experimentType = self->_experimentType;
    if (experimentType != [v4 experimentType])
    {
      goto LABEL_39;
    }

    has = self->_has;
    v6 = v4[56];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_39;
  }

  if (v12)
  {
    recipeType = self->_recipeType;
    if (recipeType != [v4 recipeType])
    {
      goto LABEL_39;
    }
  }

  v14 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersion];
  v15 = [v4 nlv4AssetVersion];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_38;
  }

  v16 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersion];
  if (v16)
  {
    v17 = v16;
    v18 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersion];
    v19 = [v4 nlv4AssetVersion];
    v20 = [v18 isEqual:v19];

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
  v23 = v4[56];
  if (v22 != ((v23 >> 4) & 1))
  {
    goto LABEL_39;
  }

  if (v22)
  {
    sampleCount = self->_sampleCount;
    if (sampleCount != [v4 sampleCount])
    {
      goto LABEL_39;
    }

    v21 = self->_has;
    v23 = v4[56];
  }

  v25 = (*&v21 >> 5) & 1;
  if (v25 != ((v23 >> 5) & 1))
  {
    goto LABEL_39;
  }

  if (v25)
  {
    isDebugTask = self->_isDebugTask;
    if (isDebugTask != [v4 isDebugTask])
    {
      goto LABEL_39;
    }
  }

  v14 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self syntheticDatasetVersion];
  v15 = [v4 syntheticDatasetVersion];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_38;
  }

  v27 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self syntheticDatasetVersion];
  if (v27)
  {
    v28 = v27;
    v29 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self syntheticDatasetVersion];
    v30 = [v4 syntheticDatasetVersion];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  v14 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersionOverride];
  v15 = [v4 nlv4AssetVersionOverride];
  if ((v14 != 0) == (v15 == 0))
  {
LABEL_38:

    goto LABEL_39;
  }

  v32 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersionOverride];
  if (!v32)
  {

LABEL_42:
    v37 = 1;
    goto LABEL_40;
  }

  v33 = v32;
  v34 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersionOverride];
  v35 = [v4 nlv4AssetVersionOverride];
  v36 = [v34 isEqual:v35];

  if (v36)
  {
    goto LABEL_42;
  }

LABEL_39:
  v37 = 0;
LABEL_40:

  return v37;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
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
  v5 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersion];

  if (v5)
  {
    v6 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersion];
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

  v8 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self syntheticDatasetVersion];

  if (v8)
  {
    v9 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self syntheticDatasetVersion];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersionOverride];

  v11 = v13;
  if (v10)
  {
    v12 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersionOverride];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (void)setHasIsDebugTask:(BOOL)a3
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

- (void)setHasSampleCount:(BOOL)a3
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

- (void)setHasRecipeType:(BOOL)a3
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

- (void)setHasExperimentType:(BOOL)a3
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

- (void)setHasEvaluationEnvironment:(BOOL)a3
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
  v16.receiver = self;
  v16.super_class = CLPInstSchemaCLPNLv4TaskEvaluationStarted;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersion];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self deleteNlv4AssetVersion];
  }

  v9 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self syntheticDatasetVersion];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self deleteSyntheticDatasetVersion];
  }

  v12 = [(CLPInstSchemaCLPNLv4TaskEvaluationStarted *)self nlv4AssetVersionOverride];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
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
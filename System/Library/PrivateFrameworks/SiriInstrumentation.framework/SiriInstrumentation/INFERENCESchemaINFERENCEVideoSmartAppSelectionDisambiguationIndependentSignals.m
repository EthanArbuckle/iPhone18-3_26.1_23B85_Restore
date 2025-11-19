@interface INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDisambiguationReasons:(BOOL)a3;
- (void)setHasModelVersion:(BOOL)a3;
- (void)setHasNumDisambiguationApps:(BOOL)a3;
- (void)setHasTrialDeploymentId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals

- (INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals;
  v5 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"disambiguationAppsOrder"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals setDisambiguationAppsOrder:](v5, "setDisambiguationAppsOrder:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"disambiguationReasons"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals setDisambiguationReasons:](v5, "setDisambiguationReasons:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals setModelVersion:](v5, "setModelVersion:", [v8 longLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"numDisambiguationApps"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals setNumDisambiguationApps:](v5, "setNumDisambiguationApps:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"trialDeploymentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals setTrialDeploymentId:](v5, "setTrialDeploymentId:", [v10 longLongValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"trialTreatmentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaUUID alloc] initWithDictionary:v11];
      [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)v5 setTrialTreatmentId:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)self dictionaryRepresentation];
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
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals disambiguationAppsOrder](self, "disambiguationAppsOrder")}];
    [v3 setObject:v8 forKeyedSubscript:@"disambiguationAppsOrder"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals disambiguationReasons](self, "disambiguationReasons")}];
  [v3 setObject:v9 forKeyedSubscript:@"disambiguationReasons"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals modelVersion](self, "modelVersion")}];
  [v3 setObject:v10 forKeyedSubscript:@"modelVersion"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals numDisambiguationApps](self, "numDisambiguationApps")}];
  [v3 setObject:v11 forKeyedSubscript:@"numDisambiguationApps"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals trialDeploymentId](self, "trialDeploymentId")}];
    [v3 setObject:v5 forKeyedSubscript:@"trialDeploymentId"];
  }

LABEL_7:
  if (self->_trialTreatmentId)
  {
    v6 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)self trialTreatmentId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"trialTreatmentId"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"trialTreatmentId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_disambiguationAppsOrder;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_disambiguationReasons;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v8 = 2654435761 * self->_modelVersion;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v9 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v10 = 0;
    return v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ [(SISchemaUUID *)self->_trialTreatmentId hash:v3];
  }

LABEL_9:
  v8 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v9 = 2654435761 * self->_numDisambiguationApps;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v10 = 2654435761 * self->_trialDeploymentId;
  return v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ [(SISchemaUUID *)self->_trialTreatmentId hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  has = self->_has;
  v6 = v4[48];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_26;
  }

  if (*&has)
  {
    disambiguationAppsOrder = self->_disambiguationAppsOrder;
    if (disambiguationAppsOrder != [v4 disambiguationAppsOrder])
    {
      goto LABEL_26;
    }

    has = self->_has;
    v6 = v4[48];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      disambiguationReasons = self->_disambiguationReasons;
      if (disambiguationReasons != [v4 disambiguationReasons])
      {
        goto LABEL_26;
      }

      has = self->_has;
      v6 = v4[48];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        modelVersion = self->_modelVersion;
        if (modelVersion != [v4 modelVersion])
        {
          goto LABEL_26;
        }

        has = self->_has;
        v6 = v4[48];
      }

      v12 = (*&has >> 3) & 1;
      if (v12 == ((v6 >> 3) & 1))
      {
        if (v12)
        {
          numDisambiguationApps = self->_numDisambiguationApps;
          if (numDisambiguationApps != [v4 numDisambiguationApps])
          {
            goto LABEL_26;
          }

          has = self->_has;
          v6 = v4[48];
        }

        v14 = (*&has >> 4) & 1;
        if (v14 == ((v6 >> 4) & 1))
        {
          if (!v14 || (trialDeploymentId = self->_trialDeploymentId, trialDeploymentId == [v4 trialDeploymentId]))
          {
            v16 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)self trialTreatmentId];
            v17 = [v4 trialTreatmentId];
            v18 = v17;
            if ((v16 != 0) != (v17 == 0))
            {
              v19 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)self trialTreatmentId];
              if (!v19)
              {

LABEL_29:
                v24 = 1;
                goto LABEL_27;
              }

              v20 = v19;
              v21 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)self trialTreatmentId];
              v22 = [v4 trialTreatmentId];
              v23 = [v21 isEqual:v22];

              if (v23)
              {
                goto LABEL_29;
              }
            }

            else
            {
            }
          }
        }
      }
    }
  }

LABEL_26:
  v24 = 0;
LABEL_27:

  return v24;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
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
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    PBDataWriterWriteInt64Field();
  }

LABEL_7:
  v5 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)self trialTreatmentId];

  v6 = v8;
  if (v5)
  {
    v7 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)self trialTreatmentId];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (void)setHasTrialDeploymentId:(BOOL)a3
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

- (void)setHasNumDisambiguationApps:(BOOL)a3
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

- (void)setHasModelVersion:(BOOL)a3
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

- (void)setHasDisambiguationReasons:(BOOL)a3
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
  v9.receiver = self;
  v9.super_class = INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)self trialTreatmentId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)self deleteTrialTreatmentId];
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
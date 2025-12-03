@interface INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDisambiguationReasons:(BOOL)reasons;
- (void)setHasModelVersion:(BOOL)version;
- (void)setHasNumDisambiguationApps:(BOOL)apps;
- (void)setHasTrialDeploymentId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals

- (INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals;
  v5 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"disambiguationAppsOrder"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals setDisambiguationAppsOrder:](v5, "setDisambiguationAppsOrder:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"disambiguationReasons"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals setDisambiguationReasons:](v5, "setDisambiguationReasons:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals setModelVersion:](v5, "setModelVersion:", [v8 longLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"numDisambiguationApps"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals setNumDisambiguationApps:](v5, "setNumDisambiguationApps:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"trialDeploymentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals setTrialDeploymentId:](v5, "setTrialDeploymentId:", [v10 longLongValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"trialTreatmentId"];
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

- (INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)self dictionaryRepresentation];
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
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals disambiguationAppsOrder](self, "disambiguationAppsOrder")}];
    [dictionary setObject:v8 forKeyedSubscript:@"disambiguationAppsOrder"];

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
  [dictionary setObject:v9 forKeyedSubscript:@"disambiguationReasons"];

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
  [dictionary setObject:v10 forKeyedSubscript:@"modelVersion"];

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
  [dictionary setObject:v11 forKeyedSubscript:@"numDisambiguationApps"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals trialDeploymentId](self, "trialDeploymentId")}];
    [dictionary setObject:v5 forKeyedSubscript:@"trialDeploymentId"];
  }

LABEL_7:
  if (self->_trialTreatmentId)
  {
    trialTreatmentId = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)self trialTreatmentId];
    dictionaryRepresentation = [trialTreatmentId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"trialTreatmentId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"trialTreatmentId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  has = self->_has;
  v6 = equalCopy[48];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_26;
  }

  if (*&has)
  {
    disambiguationAppsOrder = self->_disambiguationAppsOrder;
    if (disambiguationAppsOrder != [equalCopy disambiguationAppsOrder])
    {
      goto LABEL_26;
    }

    has = self->_has;
    v6 = equalCopy[48];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      disambiguationReasons = self->_disambiguationReasons;
      if (disambiguationReasons != [equalCopy disambiguationReasons])
      {
        goto LABEL_26;
      }

      has = self->_has;
      v6 = equalCopy[48];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        modelVersion = self->_modelVersion;
        if (modelVersion != [equalCopy modelVersion])
        {
          goto LABEL_26;
        }

        has = self->_has;
        v6 = equalCopy[48];
      }

      v12 = (*&has >> 3) & 1;
      if (v12 == ((v6 >> 3) & 1))
      {
        if (v12)
        {
          numDisambiguationApps = self->_numDisambiguationApps;
          if (numDisambiguationApps != [equalCopy numDisambiguationApps])
          {
            goto LABEL_26;
          }

          has = self->_has;
          v6 = equalCopy[48];
        }

        v14 = (*&has >> 4) & 1;
        if (v14 == ((v6 >> 4) & 1))
        {
          if (!v14 || (trialDeploymentId = self->_trialDeploymentId, trialDeploymentId == [equalCopy trialDeploymentId]))
          {
            trialTreatmentId = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)self trialTreatmentId];
            trialTreatmentId2 = [equalCopy trialTreatmentId];
            v18 = trialTreatmentId2;
            if ((trialTreatmentId != 0) != (trialTreatmentId2 == 0))
            {
              trialTreatmentId3 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)self trialTreatmentId];
              if (!trialTreatmentId3)
              {

LABEL_29:
                v24 = 1;
                goto LABEL_27;
              }

              v20 = trialTreatmentId3;
              trialTreatmentId4 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)self trialTreatmentId];
              trialTreatmentId5 = [equalCopy trialTreatmentId];
              v23 = [trialTreatmentId4 isEqual:trialTreatmentId5];

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
  trialTreatmentId = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)self trialTreatmentId];

  v6 = toCopy;
  if (trialTreatmentId)
  {
    trialTreatmentId2 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)self trialTreatmentId];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasTrialDeploymentId:(BOOL)id
{
  if (id)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasNumDisambiguationApps:(BOOL)apps
{
  if (apps)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasModelVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDisambiguationReasons:(BOOL)reasons
{
  if (reasons)
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
  v9.receiver = self;
  v9.super_class = INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)self trialTreatmentId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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
@interface EXPSchemaEXPTrialExperiment
- (BOOL)isEqual:(id)a3;
- (EXPSchemaEXPTrialExperiment)initWithDictionary:(id)a3;
- (EXPSchemaEXPTrialExperiment)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAllocationStatus:(BOOL)a3;
- (void)setHasCompatibilityVersion:(BOOL)a3;
- (void)setHasLastUpdatedAtInMs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation EXPSchemaEXPTrialExperiment

- (EXPSchemaEXPTrialExperiment)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = EXPSchemaEXPTrialExperiment;
  v5 = [(EXPSchemaEXPTrialExperiment *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"experimentNamespace"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(EXPSchemaEXPTrialExperiment *)v5 setExperimentNamespace:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"experimentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(EXPSchemaEXPTrialExperiment *)v5 setExperimentId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"treatmentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(EXPSchemaEXPTrialExperiment *)v5 setTreatmentId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"deploymentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSchemaEXPTrialExperiment setDeploymentId:](v5, "setDeploymentId:", [v12 longLongValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"allocationStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSchemaEXPTrialExperiment setAllocationStatus:](v5, "setAllocationStatus:", [v13 intValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"lastUpdatedAtInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSchemaEXPTrialExperiment setLastUpdatedAtInMs:](v5, "setLastUpdatedAtInMs:", [v14 unsignedLongLongValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"compatibilityVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSchemaEXPTrialExperiment setCompatibilityVersion:](v5, "setCompatibilityVersion:", [v15 unsignedIntValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (EXPSchemaEXPTrialExperiment)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(EXPSchemaEXPTrialExperiment *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(EXPSchemaEXPTrialExperiment *)self dictionaryRepresentation];
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
    v5 = [(EXPSchemaEXPTrialExperiment *)self allocationStatus]- 1;
    if (v5 > 2)
    {
      v6 = @"EXPTREATMENTALLOCATIONSTATUS_UNKNOWN";
    }

    else
    {
      v6 = off_1E78D4900[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"allocationStatus"];
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[EXPSchemaEXPTrialExperiment compatibilityVersion](self, "compatibilityVersion")}];
    [v3 setObject:v7 forKeyedSubscript:@"compatibilityVersion"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[EXPSchemaEXPTrialExperiment deploymentId](self, "deploymentId")}];
    [v3 setObject:v8 forKeyedSubscript:@"deploymentId"];
  }

  if (self->_experimentId)
  {
    v9 = [(EXPSchemaEXPTrialExperiment *)self experimentId];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"experimentId"];
  }

  if (self->_experimentNamespace)
  {
    v11 = [(EXPSchemaEXPTrialExperiment *)self experimentNamespace];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"experimentNamespace"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[EXPSchemaEXPTrialExperiment lastUpdatedAtInMs](self, "lastUpdatedAtInMs")}];
    [v3 setObject:v13 forKeyedSubscript:@"lastUpdatedAtInMs"];
  }

  if (self->_treatmentId)
  {
    v14 = [(EXPSchemaEXPTrialExperiment *)self treatmentId];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"treatmentId"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"treatmentId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_experimentNamespace hash];
  v4 = [(NSString *)self->_experimentId hash];
  v5 = [(SISchemaUUID *)self->_treatmentId hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_deploymentId;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_allocationStatus;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v9 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
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
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = 2654435761u * self->_lastUpdatedAtInMs;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = 2654435761 * self->_compatibilityVersion;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(EXPSchemaEXPTrialExperiment *)self experimentNamespace];
  v6 = [v4 experimentNamespace];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(EXPSchemaEXPTrialExperiment *)self experimentNamespace];
  if (v7)
  {
    v8 = v7;
    v9 = [(EXPSchemaEXPTrialExperiment *)self experimentNamespace];
    v10 = [v4 experimentNamespace];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(EXPSchemaEXPTrialExperiment *)self experimentId];
  v6 = [v4 experimentId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(EXPSchemaEXPTrialExperiment *)self experimentId];
  if (v12)
  {
    v13 = v12;
    v14 = [(EXPSchemaEXPTrialExperiment *)self experimentId];
    v15 = [v4 experimentId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(EXPSchemaEXPTrialExperiment *)self treatmentId];
  v6 = [v4 treatmentId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [(EXPSchemaEXPTrialExperiment *)self treatmentId];
  if (v17)
  {
    v18 = v17;
    v19 = [(EXPSchemaEXPTrialExperiment *)self treatmentId];
    v20 = [v4 treatmentId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  has = self->_has;
  v25 = v4[60];
  if ((*&has & 1) == (v25 & 1))
  {
    if (*&has)
    {
      deploymentId = self->_deploymentId;
      if (deploymentId != [v4 deploymentId])
      {
        goto LABEL_17;
      }

      has = self->_has;
      v25 = v4[60];
    }

    v27 = (*&has >> 1) & 1;
    if (v27 == ((v25 >> 1) & 1))
    {
      if (v27)
      {
        allocationStatus = self->_allocationStatus;
        if (allocationStatus != [v4 allocationStatus])
        {
          goto LABEL_17;
        }

        has = self->_has;
        v25 = v4[60];
      }

      v29 = (*&has >> 2) & 1;
      if (v29 == ((v25 >> 2) & 1))
      {
        if (v29)
        {
          lastUpdatedAtInMs = self->_lastUpdatedAtInMs;
          if (lastUpdatedAtInMs != [v4 lastUpdatedAtInMs])
          {
            goto LABEL_17;
          }

          has = self->_has;
          v25 = v4[60];
        }

        v31 = (*&has >> 3) & 1;
        if (v31 == ((v25 >> 3) & 1))
        {
          if (!v31 || (compatibilityVersion = self->_compatibilityVersion, compatibilityVersion == [v4 compatibilityVersion]))
          {
            v22 = 1;
            goto LABEL_18;
          }
        }
      }
    }
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(EXPSchemaEXPTrialExperiment *)self experimentNamespace];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(EXPSchemaEXPTrialExperiment *)self experimentId];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(EXPSchemaEXPTrialExperiment *)self treatmentId];

  if (v6)
  {
    v7 = [(EXPSchemaEXPTrialExperiment *)self treatmentId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  v9 = v10;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v9 = v10;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_11:
      if ((has & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_11;
  }

  PBDataWriterWriteUint64Field();
  v9 = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    PBDataWriterWriteUint32Field();
    v9 = v10;
  }

LABEL_13:
}

- (void)setHasCompatibilityVersion:(BOOL)a3
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

- (void)setHasLastUpdatedAtInMs:(BOOL)a3
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

- (void)setHasAllocationStatus:(BOOL)a3
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
  v9.super_class = EXPSchemaEXPTrialExperiment;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(EXPSchemaEXPTrialExperiment *)self treatmentId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(EXPSchemaEXPTrialExperiment *)self deleteTreatmentId];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];
  [(SISensitiveConditionsSet *)v2 addCondition:2];
  [(SISensitiveConditionsSet *)v2 addCondition:4];
  [(SISensitiveConditionsSet *)v2 addCondition:5];
  [(SISensitiveConditionsSet *)v2 addCondition:6];
  [(SISensitiveConditionsSet *)v2 addCondition:7];

  return v2;
}

@end
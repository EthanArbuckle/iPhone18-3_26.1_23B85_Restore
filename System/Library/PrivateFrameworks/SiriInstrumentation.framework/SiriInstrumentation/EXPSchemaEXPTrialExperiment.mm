@interface EXPSchemaEXPTrialExperiment
- (BOOL)isEqual:(id)equal;
- (EXPSchemaEXPTrialExperiment)initWithDictionary:(id)dictionary;
- (EXPSchemaEXPTrialExperiment)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAllocationStatus:(BOOL)status;
- (void)setHasCompatibilityVersion:(BOOL)version;
- (void)setHasLastUpdatedAtInMs:(BOOL)ms;
- (void)writeTo:(id)to;
@end

@implementation EXPSchemaEXPTrialExperiment

- (EXPSchemaEXPTrialExperiment)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = EXPSchemaEXPTrialExperiment;
  v5 = [(EXPSchemaEXPTrialExperiment *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"experimentNamespace"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(EXPSchemaEXPTrialExperiment *)v5 setExperimentNamespace:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"experimentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(EXPSchemaEXPTrialExperiment *)v5 setExperimentId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"treatmentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(EXPSchemaEXPTrialExperiment *)v5 setTreatmentId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"deploymentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSchemaEXPTrialExperiment setDeploymentId:](v5, "setDeploymentId:", [v12 longLongValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"allocationStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSchemaEXPTrialExperiment setAllocationStatus:](v5, "setAllocationStatus:", [v13 intValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"lastUpdatedAtInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSchemaEXPTrialExperiment setLastUpdatedAtInMs:](v5, "setLastUpdatedAtInMs:", [v14 unsignedLongLongValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"compatibilityVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSchemaEXPTrialExperiment setCompatibilityVersion:](v5, "setCompatibilityVersion:", [v15 unsignedIntValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (EXPSchemaEXPTrialExperiment)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(EXPSchemaEXPTrialExperiment *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(EXPSchemaEXPTrialExperiment *)self dictionaryRepresentation];
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
    v5 = [(EXPSchemaEXPTrialExperiment *)self allocationStatus]- 1;
    if (v5 > 2)
    {
      v6 = @"EXPTREATMENTALLOCATIONSTATUS_UNKNOWN";
    }

    else
    {
      v6 = off_1E78D4900[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"allocationStatus"];
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[EXPSchemaEXPTrialExperiment compatibilityVersion](self, "compatibilityVersion")}];
    [dictionary setObject:v7 forKeyedSubscript:@"compatibilityVersion"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[EXPSchemaEXPTrialExperiment deploymentId](self, "deploymentId")}];
    [dictionary setObject:v8 forKeyedSubscript:@"deploymentId"];
  }

  if (self->_experimentId)
  {
    experimentId = [(EXPSchemaEXPTrialExperiment *)self experimentId];
    v10 = [experimentId copy];
    [dictionary setObject:v10 forKeyedSubscript:@"experimentId"];
  }

  if (self->_experimentNamespace)
  {
    experimentNamespace = [(EXPSchemaEXPTrialExperiment *)self experimentNamespace];
    v12 = [experimentNamespace copy];
    [dictionary setObject:v12 forKeyedSubscript:@"experimentNamespace"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[EXPSchemaEXPTrialExperiment lastUpdatedAtInMs](self, "lastUpdatedAtInMs")}];
    [dictionary setObject:v13 forKeyedSubscript:@"lastUpdatedAtInMs"];
  }

  if (self->_treatmentId)
  {
    treatmentId = [(EXPSchemaEXPTrialExperiment *)self treatmentId];
    dictionaryRepresentation = [treatmentId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"treatmentId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"treatmentId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  experimentNamespace = [(EXPSchemaEXPTrialExperiment *)self experimentNamespace];
  experimentNamespace2 = [equalCopy experimentNamespace];
  if ((experimentNamespace != 0) == (experimentNamespace2 == 0))
  {
    goto LABEL_16;
  }

  experimentNamespace3 = [(EXPSchemaEXPTrialExperiment *)self experimentNamespace];
  if (experimentNamespace3)
  {
    v8 = experimentNamespace3;
    experimentNamespace4 = [(EXPSchemaEXPTrialExperiment *)self experimentNamespace];
    experimentNamespace5 = [equalCopy experimentNamespace];
    v11 = [experimentNamespace4 isEqual:experimentNamespace5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  experimentNamespace = [(EXPSchemaEXPTrialExperiment *)self experimentId];
  experimentNamespace2 = [equalCopy experimentId];
  if ((experimentNamespace != 0) == (experimentNamespace2 == 0))
  {
    goto LABEL_16;
  }

  experimentId = [(EXPSchemaEXPTrialExperiment *)self experimentId];
  if (experimentId)
  {
    v13 = experimentId;
    experimentId2 = [(EXPSchemaEXPTrialExperiment *)self experimentId];
    experimentId3 = [equalCopy experimentId];
    v16 = [experimentId2 isEqual:experimentId3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  experimentNamespace = [(EXPSchemaEXPTrialExperiment *)self treatmentId];
  experimentNamespace2 = [equalCopy treatmentId];
  if ((experimentNamespace != 0) == (experimentNamespace2 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  treatmentId = [(EXPSchemaEXPTrialExperiment *)self treatmentId];
  if (treatmentId)
  {
    v18 = treatmentId;
    treatmentId2 = [(EXPSchemaEXPTrialExperiment *)self treatmentId];
    treatmentId3 = [equalCopy treatmentId];
    v21 = [treatmentId2 isEqual:treatmentId3];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  has = self->_has;
  v25 = equalCopy[60];
  if ((*&has & 1) == (v25 & 1))
  {
    if (*&has)
    {
      deploymentId = self->_deploymentId;
      if (deploymentId != [equalCopy deploymentId])
      {
        goto LABEL_17;
      }

      has = self->_has;
      v25 = equalCopy[60];
    }

    v27 = (*&has >> 1) & 1;
    if (v27 == ((v25 >> 1) & 1))
    {
      if (v27)
      {
        allocationStatus = self->_allocationStatus;
        if (allocationStatus != [equalCopy allocationStatus])
        {
          goto LABEL_17;
        }

        has = self->_has;
        v25 = equalCopy[60];
      }

      v29 = (*&has >> 2) & 1;
      if (v29 == ((v25 >> 2) & 1))
      {
        if (v29)
        {
          lastUpdatedAtInMs = self->_lastUpdatedAtInMs;
          if (lastUpdatedAtInMs != [equalCopy lastUpdatedAtInMs])
          {
            goto LABEL_17;
          }

          has = self->_has;
          v25 = equalCopy[60];
        }

        v31 = (*&has >> 3) & 1;
        if (v31 == ((v25 >> 3) & 1))
        {
          if (!v31 || (compatibilityVersion = self->_compatibilityVersion, compatibilityVersion == [equalCopy compatibilityVersion]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  experimentNamespace = [(EXPSchemaEXPTrialExperiment *)self experimentNamespace];

  if (experimentNamespace)
  {
    PBDataWriterWriteStringField();
  }

  experimentId = [(EXPSchemaEXPTrialExperiment *)self experimentId];

  if (experimentId)
  {
    PBDataWriterWriteStringField();
  }

  treatmentId = [(EXPSchemaEXPTrialExperiment *)self treatmentId];

  if (treatmentId)
  {
    treatmentId2 = [(EXPSchemaEXPTrialExperiment *)self treatmentId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  v9 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v9 = toCopy;
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
  v9 = toCopy;
  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    PBDataWriterWriteUint32Field();
    v9 = toCopy;
  }

LABEL_13:
}

- (void)setHasCompatibilityVersion:(BOOL)version
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

- (void)setHasLastUpdatedAtInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasAllocationStatus:(BOOL)status
{
  if (status)
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
  v9.super_class = EXPSchemaEXPTrialExperiment;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(EXPSchemaEXPTrialExperiment *)self treatmentId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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
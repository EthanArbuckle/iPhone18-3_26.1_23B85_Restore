@interface INFERENCESchemaINFERENCETrialEnrollment
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCETrialEnrollment)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCETrialEnrollment)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCETrialEnrollment

- (INFERENCESchemaINFERENCETrialEnrollment)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = INFERENCESchemaINFERENCETrialEnrollment;
  v5 = [(INFERENCESchemaINFERENCETrialEnrollment *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"experimentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(INFERENCESchemaINFERENCETrialEnrollment *)v5 setExperimentId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"treatmentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(INFERENCESchemaINFERENCETrialEnrollment *)v5 setTreatmentId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"deploymentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCETrialEnrollment setDeploymentId:](v5, "setDeploymentId:", [v10 longLongValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"rolloutId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(INFERENCESchemaINFERENCETrialEnrollment *)v5 setRolloutId:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCETrialEnrollment)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCETrialEnrollment *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCETrialEnrollment *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCETrialEnrollment deploymentId](self, "deploymentId")}];
    [dictionary setObject:v4 forKeyedSubscript:@"deploymentId"];
  }

  if (self->_experimentId)
  {
    experimentId = [(INFERENCESchemaINFERENCETrialEnrollment *)self experimentId];
    v6 = [experimentId copy];
    [dictionary setObject:v6 forKeyedSubscript:@"experimentId"];
  }

  if (self->_rolloutId)
  {
    rolloutId = [(INFERENCESchemaINFERENCETrialEnrollment *)self rolloutId];
    v8 = [rolloutId copy];
    [dictionary setObject:v8 forKeyedSubscript:@"rolloutId"];
  }

  if (self->_treatmentId)
  {
    treatmentId = [(INFERENCESchemaINFERENCETrialEnrollment *)self treatmentId];
    v10 = [treatmentId copy];
    [dictionary setObject:v10 forKeyedSubscript:@"treatmentId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_experimentId hash];
  v4 = [(NSString *)self->_treatmentId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_deploymentId;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_rolloutId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  experimentId = [(INFERENCESchemaINFERENCETrialEnrollment *)self experimentId];
  experimentId2 = [equalCopy experimentId];
  if ((experimentId != 0) == (experimentId2 == 0))
  {
    goto LABEL_19;
  }

  experimentId3 = [(INFERENCESchemaINFERENCETrialEnrollment *)self experimentId];
  if (experimentId3)
  {
    v8 = experimentId3;
    experimentId4 = [(INFERENCESchemaINFERENCETrialEnrollment *)self experimentId];
    experimentId5 = [equalCopy experimentId];
    v11 = [experimentId4 isEqual:experimentId5];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  experimentId = [(INFERENCESchemaINFERENCETrialEnrollment *)self treatmentId];
  experimentId2 = [equalCopy treatmentId];
  if ((experimentId != 0) == (experimentId2 == 0))
  {
    goto LABEL_19;
  }

  treatmentId = [(INFERENCESchemaINFERENCETrialEnrollment *)self treatmentId];
  if (treatmentId)
  {
    v13 = treatmentId;
    treatmentId2 = [(INFERENCESchemaINFERENCETrialEnrollment *)self treatmentId];
    treatmentId3 = [equalCopy treatmentId];
    v16 = [treatmentId2 isEqual:treatmentId3];

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    deploymentId = self->_deploymentId;
    if (deploymentId != [equalCopy deploymentId])
    {
      goto LABEL_20;
    }
  }

  experimentId = [(INFERENCESchemaINFERENCETrialEnrollment *)self rolloutId];
  experimentId2 = [equalCopy rolloutId];
  if ((experimentId != 0) != (experimentId2 == 0))
  {
    rolloutId = [(INFERENCESchemaINFERENCETrialEnrollment *)self rolloutId];
    if (!rolloutId)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = rolloutId;
    rolloutId2 = [(INFERENCESchemaINFERENCETrialEnrollment *)self rolloutId];
    rolloutId3 = [equalCopy rolloutId];
    v22 = [rolloutId2 isEqual:rolloutId3];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  experimentId = [(INFERENCESchemaINFERENCETrialEnrollment *)self experimentId];

  if (experimentId)
  {
    PBDataWriterWriteStringField();
  }

  treatmentId = [(INFERENCESchemaINFERENCETrialEnrollment *)self treatmentId];

  if (treatmentId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  rolloutId = [(INFERENCESchemaINFERENCETrialEnrollment *)self rolloutId];

  v7 = toCopy;
  if (rolloutId)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
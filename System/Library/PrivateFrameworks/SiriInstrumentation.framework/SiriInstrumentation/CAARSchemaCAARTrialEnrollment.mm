@interface CAARSchemaCAARTrialEnrollment
- (BOOL)isEqual:(id)equal;
- (CAARSchemaCAARTrialEnrollment)initWithDictionary:(id)dictionary;
- (CAARSchemaCAARTrialEnrollment)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation CAARSchemaCAARTrialEnrollment

- (CAARSchemaCAARTrialEnrollment)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = CAARSchemaCAARTrialEnrollment;
  v5 = [(CAARSchemaCAARTrialEnrollment *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"experimentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(CAARSchemaCAARTrialEnrollment *)v5 setExperimentId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"treatmentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(CAARSchemaCAARTrialEnrollment *)v5 setTreatmentId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"deploymentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(CAARSchemaCAARTrialEnrollment *)v5 setDeploymentId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"rolloutId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(CAARSchemaCAARTrialEnrollment *)v5 setRolloutId:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (CAARSchemaCAARTrialEnrollment)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CAARSchemaCAARTrialEnrollment *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CAARSchemaCAARTrialEnrollment *)self dictionaryRepresentation];
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
  if (self->_deploymentId)
  {
    deploymentId = [(CAARSchemaCAARTrialEnrollment *)self deploymentId];
    v5 = [deploymentId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"deploymentId"];
  }

  if (self->_experimentId)
  {
    experimentId = [(CAARSchemaCAARTrialEnrollment *)self experimentId];
    v7 = [experimentId copy];
    [dictionary setObject:v7 forKeyedSubscript:@"experimentId"];
  }

  if (self->_rolloutId)
  {
    rolloutId = [(CAARSchemaCAARTrialEnrollment *)self rolloutId];
    v9 = [rolloutId copy];
    [dictionary setObject:v9 forKeyedSubscript:@"rolloutId"];
  }

  if (self->_treatmentId)
  {
    treatmentId = [(CAARSchemaCAARTrialEnrollment *)self treatmentId];
    v11 = [treatmentId copy];
    [dictionary setObject:v11 forKeyedSubscript:@"treatmentId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_experimentId hash];
  v4 = [(NSString *)self->_treatmentId hash]^ v3;
  v5 = [(NSString *)self->_deploymentId hash];
  return v4 ^ v5 ^ [(NSString *)self->_rolloutId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  experimentId = [(CAARSchemaCAARTrialEnrollment *)self experimentId];
  experimentId2 = [equalCopy experimentId];
  if ((experimentId != 0) == (experimentId2 == 0))
  {
    goto LABEL_21;
  }

  experimentId3 = [(CAARSchemaCAARTrialEnrollment *)self experimentId];
  if (experimentId3)
  {
    v8 = experimentId3;
    experimentId4 = [(CAARSchemaCAARTrialEnrollment *)self experimentId];
    experimentId5 = [equalCopy experimentId];
    v11 = [experimentId4 isEqual:experimentId5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  experimentId = [(CAARSchemaCAARTrialEnrollment *)self treatmentId];
  experimentId2 = [equalCopy treatmentId];
  if ((experimentId != 0) == (experimentId2 == 0))
  {
    goto LABEL_21;
  }

  treatmentId = [(CAARSchemaCAARTrialEnrollment *)self treatmentId];
  if (treatmentId)
  {
    v13 = treatmentId;
    treatmentId2 = [(CAARSchemaCAARTrialEnrollment *)self treatmentId];
    treatmentId3 = [equalCopy treatmentId];
    v16 = [treatmentId2 isEqual:treatmentId3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  experimentId = [(CAARSchemaCAARTrialEnrollment *)self deploymentId];
  experimentId2 = [equalCopy deploymentId];
  if ((experimentId != 0) == (experimentId2 == 0))
  {
    goto LABEL_21;
  }

  deploymentId = [(CAARSchemaCAARTrialEnrollment *)self deploymentId];
  if (deploymentId)
  {
    v18 = deploymentId;
    deploymentId2 = [(CAARSchemaCAARTrialEnrollment *)self deploymentId];
    deploymentId3 = [equalCopy deploymentId];
    v21 = [deploymentId2 isEqual:deploymentId3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  experimentId = [(CAARSchemaCAARTrialEnrollment *)self rolloutId];
  experimentId2 = [equalCopy rolloutId];
  if ((experimentId != 0) != (experimentId2 == 0))
  {
    rolloutId = [(CAARSchemaCAARTrialEnrollment *)self rolloutId];
    if (!rolloutId)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = rolloutId;
    rolloutId2 = [(CAARSchemaCAARTrialEnrollment *)self rolloutId];
    rolloutId3 = [equalCopy rolloutId];
    v26 = [rolloutId2 isEqual:rolloutId3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  experimentId = [(CAARSchemaCAARTrialEnrollment *)self experimentId];

  if (experimentId)
  {
    PBDataWriterWriteStringField();
  }

  treatmentId = [(CAARSchemaCAARTrialEnrollment *)self treatmentId];

  if (treatmentId)
  {
    PBDataWriterWriteStringField();
  }

  deploymentId = [(CAARSchemaCAARTrialEnrollment *)self deploymentId];

  if (deploymentId)
  {
    PBDataWriterWriteStringField();
  }

  rolloutId = [(CAARSchemaCAARTrialEnrollment *)self rolloutId];

  v8 = toCopy;
  if (rolloutId)
  {
    PBDataWriterWriteStringField();
    v8 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
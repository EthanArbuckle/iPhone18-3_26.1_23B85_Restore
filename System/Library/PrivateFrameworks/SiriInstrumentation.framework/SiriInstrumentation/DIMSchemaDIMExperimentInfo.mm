@interface DIMSchemaDIMExperimentInfo
- (BOOL)isEqual:(id)equal;
- (DIMSchemaDIMExperimentInfo)initWithDictionary:(id)dictionary;
- (DIMSchemaDIMExperimentInfo)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation DIMSchemaDIMExperimentInfo

- (DIMSchemaDIMExperimentInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = DIMSchemaDIMExperimentInfo;
  v5 = [(DIMSchemaDIMExperimentInfo *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"experimentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(DIMSchemaDIMExperimentInfo *)v5 setExperimentId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"treatmentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(DIMSchemaDIMExperimentInfo *)v5 setTreatmentId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"deploymentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMExperimentInfo setDeploymentId:](v5, "setDeploymentId:", [v10 longLongValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (DIMSchemaDIMExperimentInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DIMSchemaDIMExperimentInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DIMSchemaDIMExperimentInfo *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[DIMSchemaDIMExperimentInfo deploymentId](self, "deploymentId")}];
    [dictionary setObject:v4 forKeyedSubscript:@"deploymentId"];
  }

  if (self->_experimentId)
  {
    experimentId = [(DIMSchemaDIMExperimentInfo *)self experimentId];
    v6 = [experimentId copy];
    [dictionary setObject:v6 forKeyedSubscript:@"experimentId"];
  }

  if (self->_treatmentId)
  {
    treatmentId = [(DIMSchemaDIMExperimentInfo *)self treatmentId];
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
  v3 = [(NSString *)self->_experimentId hash];
  v4 = [(SISchemaUUID *)self->_treatmentId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_deploymentId;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  experimentId = [(DIMSchemaDIMExperimentInfo *)self experimentId];
  experimentId2 = [equalCopy experimentId];
  if ((experimentId != 0) == (experimentId2 == 0))
  {
    goto LABEL_11;
  }

  experimentId3 = [(DIMSchemaDIMExperimentInfo *)self experimentId];
  if (experimentId3)
  {
    v8 = experimentId3;
    experimentId4 = [(DIMSchemaDIMExperimentInfo *)self experimentId];
    experimentId5 = [equalCopy experimentId];
    v11 = [experimentId4 isEqual:experimentId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  experimentId = [(DIMSchemaDIMExperimentInfo *)self treatmentId];
  experimentId2 = [equalCopy treatmentId];
  if ((experimentId != 0) == (experimentId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  treatmentId = [(DIMSchemaDIMExperimentInfo *)self treatmentId];
  if (treatmentId)
  {
    v13 = treatmentId;
    treatmentId2 = [(DIMSchemaDIMExperimentInfo *)self treatmentId];
    treatmentId3 = [equalCopy treatmentId];
    v16 = [treatmentId2 isEqual:treatmentId3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[32] & 1))
  {
    if ((*&self->_has & 1) == 0 || (deploymentId = self->_deploymentId, deploymentId == [equalCopy deploymentId]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  experimentId = [(DIMSchemaDIMExperimentInfo *)self experimentId];

  if (experimentId)
  {
    PBDataWriterWriteStringField();
  }

  treatmentId = [(DIMSchemaDIMExperimentInfo *)self treatmentId];

  if (treatmentId)
  {
    treatmentId2 = [(DIMSchemaDIMExperimentInfo *)self treatmentId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = DIMSchemaDIMExperimentInfo;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(DIMSchemaDIMExperimentInfo *)self treatmentId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(DIMSchemaDIMExperimentInfo *)self deleteTreatmentId];
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
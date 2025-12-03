@interface GRPSchemaTrialExperimentIdentifiers
- (BOOL)isEqual:(id)equal;
- (GRPSchemaTrialExperimentIdentifiers)initWithDictionary:(id)dictionary;
- (GRPSchemaTrialExperimentIdentifiers)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation GRPSchemaTrialExperimentIdentifiers

- (GRPSchemaTrialExperimentIdentifiers)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = GRPSchemaTrialExperimentIdentifiers;
  v5 = [(GRPSchemaTrialExperimentIdentifiers *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"experimentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(GRPSchemaTrialExperimentIdentifiers *)v5 setExperimentId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"treatmentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(GRPSchemaTrialExperimentIdentifiers *)v5 setTreatmentId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"deploymentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(GRPSchemaTrialExperimentIdentifiers *)v5 setDeploymentId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (GRPSchemaTrialExperimentIdentifiers)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GRPSchemaTrialExperimentIdentifiers *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GRPSchemaTrialExperimentIdentifiers *)self dictionaryRepresentation];
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
    deploymentId = [(GRPSchemaTrialExperimentIdentifiers *)self deploymentId];
    v5 = [deploymentId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"deploymentId"];
  }

  if (self->_experimentId)
  {
    experimentId = [(GRPSchemaTrialExperimentIdentifiers *)self experimentId];
    v7 = [experimentId copy];
    [dictionary setObject:v7 forKeyedSubscript:@"experimentId"];
  }

  if (self->_treatmentId)
  {
    treatmentId = [(GRPSchemaTrialExperimentIdentifiers *)self treatmentId];
    v9 = [treatmentId copy];
    [dictionary setObject:v9 forKeyedSubscript:@"treatmentId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_experimentId hash];
  v4 = [(NSString *)self->_treatmentId hash]^ v3;
  return v4 ^ [(NSString *)self->_deploymentId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  experimentId = [(GRPSchemaTrialExperimentIdentifiers *)self experimentId];
  experimentId2 = [equalCopy experimentId];
  if ((experimentId != 0) == (experimentId2 == 0))
  {
    goto LABEL_16;
  }

  experimentId3 = [(GRPSchemaTrialExperimentIdentifiers *)self experimentId];
  if (experimentId3)
  {
    v8 = experimentId3;
    experimentId4 = [(GRPSchemaTrialExperimentIdentifiers *)self experimentId];
    experimentId5 = [equalCopy experimentId];
    v11 = [experimentId4 isEqual:experimentId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  experimentId = [(GRPSchemaTrialExperimentIdentifiers *)self treatmentId];
  experimentId2 = [equalCopy treatmentId];
  if ((experimentId != 0) == (experimentId2 == 0))
  {
    goto LABEL_16;
  }

  treatmentId = [(GRPSchemaTrialExperimentIdentifiers *)self treatmentId];
  if (treatmentId)
  {
    v13 = treatmentId;
    treatmentId2 = [(GRPSchemaTrialExperimentIdentifiers *)self treatmentId];
    treatmentId3 = [equalCopy treatmentId];
    v16 = [treatmentId2 isEqual:treatmentId3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  experimentId = [(GRPSchemaTrialExperimentIdentifiers *)self deploymentId];
  experimentId2 = [equalCopy deploymentId];
  if ((experimentId != 0) != (experimentId2 == 0))
  {
    deploymentId = [(GRPSchemaTrialExperimentIdentifiers *)self deploymentId];
    if (!deploymentId)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = deploymentId;
    deploymentId2 = [(GRPSchemaTrialExperimentIdentifiers *)self deploymentId];
    deploymentId3 = [equalCopy deploymentId];
    v21 = [deploymentId2 isEqual:deploymentId3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  experimentId = [(GRPSchemaTrialExperimentIdentifiers *)self experimentId];

  if (experimentId)
  {
    PBDataWriterWriteStringField();
  }

  treatmentId = [(GRPSchemaTrialExperimentIdentifiers *)self treatmentId];

  if (treatmentId)
  {
    PBDataWriterWriteStringField();
  }

  deploymentId = [(GRPSchemaTrialExperimentIdentifiers *)self deploymentId];

  v7 = toCopy;
  if (deploymentId)
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
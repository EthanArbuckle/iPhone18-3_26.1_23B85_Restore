@interface GRPSchemaTrialExperimentIdentifiers
- (BOOL)isEqual:(id)a3;
- (GRPSchemaTrialExperimentIdentifiers)initWithDictionary:(id)a3;
- (GRPSchemaTrialExperimentIdentifiers)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation GRPSchemaTrialExperimentIdentifiers

- (GRPSchemaTrialExperimentIdentifiers)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = GRPSchemaTrialExperimentIdentifiers;
  v5 = [(GRPSchemaTrialExperimentIdentifiers *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"experimentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(GRPSchemaTrialExperimentIdentifiers *)v5 setExperimentId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"treatmentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(GRPSchemaTrialExperimentIdentifiers *)v5 setTreatmentId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"deploymentId"];
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

- (GRPSchemaTrialExperimentIdentifiers)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GRPSchemaTrialExperimentIdentifiers *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GRPSchemaTrialExperimentIdentifiers *)self dictionaryRepresentation];
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
  if (self->_deploymentId)
  {
    v4 = [(GRPSchemaTrialExperimentIdentifiers *)self deploymentId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"deploymentId"];
  }

  if (self->_experimentId)
  {
    v6 = [(GRPSchemaTrialExperimentIdentifiers *)self experimentId];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"experimentId"];
  }

  if (self->_treatmentId)
  {
    v8 = [(GRPSchemaTrialExperimentIdentifiers *)self treatmentId];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"treatmentId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_experimentId hash];
  v4 = [(NSString *)self->_treatmentId hash]^ v3;
  return v4 ^ [(NSString *)self->_deploymentId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(GRPSchemaTrialExperimentIdentifiers *)self experimentId];
  v6 = [v4 experimentId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(GRPSchemaTrialExperimentIdentifiers *)self experimentId];
  if (v7)
  {
    v8 = v7;
    v9 = [(GRPSchemaTrialExperimentIdentifiers *)self experimentId];
    v10 = [v4 experimentId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(GRPSchemaTrialExperimentIdentifiers *)self treatmentId];
  v6 = [v4 treatmentId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(GRPSchemaTrialExperimentIdentifiers *)self treatmentId];
  if (v12)
  {
    v13 = v12;
    v14 = [(GRPSchemaTrialExperimentIdentifiers *)self treatmentId];
    v15 = [v4 treatmentId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(GRPSchemaTrialExperimentIdentifiers *)self deploymentId];
  v6 = [v4 deploymentId];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(GRPSchemaTrialExperimentIdentifiers *)self deploymentId];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(GRPSchemaTrialExperimentIdentifiers *)self deploymentId];
    v20 = [v4 deploymentId];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(GRPSchemaTrialExperimentIdentifiers *)self experimentId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(GRPSchemaTrialExperimentIdentifiers *)self treatmentId];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(GRPSchemaTrialExperimentIdentifiers *)self deploymentId];

  v7 = v8;
  if (v6)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
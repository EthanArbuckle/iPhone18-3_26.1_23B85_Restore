@interface CAARSchemaCAARTrialEnrollment
- (BOOL)isEqual:(id)a3;
- (CAARSchemaCAARTrialEnrollment)initWithDictionary:(id)a3;
- (CAARSchemaCAARTrialEnrollment)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation CAARSchemaCAARTrialEnrollment

- (CAARSchemaCAARTrialEnrollment)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CAARSchemaCAARTrialEnrollment;
  v5 = [(CAARSchemaCAARTrialEnrollment *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"experimentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(CAARSchemaCAARTrialEnrollment *)v5 setExperimentId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"treatmentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(CAARSchemaCAARTrialEnrollment *)v5 setTreatmentId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"deploymentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(CAARSchemaCAARTrialEnrollment *)v5 setDeploymentId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"rolloutId"];
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

- (CAARSchemaCAARTrialEnrollment)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CAARSchemaCAARTrialEnrollment *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CAARSchemaCAARTrialEnrollment *)self dictionaryRepresentation];
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
    v4 = [(CAARSchemaCAARTrialEnrollment *)self deploymentId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"deploymentId"];
  }

  if (self->_experimentId)
  {
    v6 = [(CAARSchemaCAARTrialEnrollment *)self experimentId];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"experimentId"];
  }

  if (self->_rolloutId)
  {
    v8 = [(CAARSchemaCAARTrialEnrollment *)self rolloutId];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"rolloutId"];
  }

  if (self->_treatmentId)
  {
    v10 = [(CAARSchemaCAARTrialEnrollment *)self treatmentId];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"treatmentId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_experimentId hash];
  v4 = [(NSString *)self->_treatmentId hash]^ v3;
  v5 = [(NSString *)self->_deploymentId hash];
  return v4 ^ v5 ^ [(NSString *)self->_rolloutId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(CAARSchemaCAARTrialEnrollment *)self experimentId];
  v6 = [v4 experimentId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(CAARSchemaCAARTrialEnrollment *)self experimentId];
  if (v7)
  {
    v8 = v7;
    v9 = [(CAARSchemaCAARTrialEnrollment *)self experimentId];
    v10 = [v4 experimentId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(CAARSchemaCAARTrialEnrollment *)self treatmentId];
  v6 = [v4 treatmentId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(CAARSchemaCAARTrialEnrollment *)self treatmentId];
  if (v12)
  {
    v13 = v12;
    v14 = [(CAARSchemaCAARTrialEnrollment *)self treatmentId];
    v15 = [v4 treatmentId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(CAARSchemaCAARTrialEnrollment *)self deploymentId];
  v6 = [v4 deploymentId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(CAARSchemaCAARTrialEnrollment *)self deploymentId];
  if (v17)
  {
    v18 = v17;
    v19 = [(CAARSchemaCAARTrialEnrollment *)self deploymentId];
    v20 = [v4 deploymentId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(CAARSchemaCAARTrialEnrollment *)self rolloutId];
  v6 = [v4 rolloutId];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(CAARSchemaCAARTrialEnrollment *)self rolloutId];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(CAARSchemaCAARTrialEnrollment *)self rolloutId];
    v25 = [v4 rolloutId];
    v26 = [v24 isEqual:v25];

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

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(CAARSchemaCAARTrialEnrollment *)self experimentId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(CAARSchemaCAARTrialEnrollment *)self treatmentId];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(CAARSchemaCAARTrialEnrollment *)self deploymentId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(CAARSchemaCAARTrialEnrollment *)self rolloutId];

  v8 = v9;
  if (v7)
  {
    PBDataWriterWriteStringField();
    v8 = v9;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
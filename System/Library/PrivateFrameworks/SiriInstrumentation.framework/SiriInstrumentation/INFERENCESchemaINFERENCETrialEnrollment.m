@interface INFERENCESchemaINFERENCETrialEnrollment
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCETrialEnrollment)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCETrialEnrollment)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCETrialEnrollment

- (INFERENCESchemaINFERENCETrialEnrollment)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = INFERENCESchemaINFERENCETrialEnrollment;
  v5 = [(INFERENCESchemaINFERENCETrialEnrollment *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"experimentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(INFERENCESchemaINFERENCETrialEnrollment *)v5 setExperimentId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"treatmentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(INFERENCESchemaINFERENCETrialEnrollment *)v5 setTreatmentId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"deploymentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCETrialEnrollment setDeploymentId:](v5, "setDeploymentId:", [v10 longLongValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"rolloutId"];
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

- (INFERENCESchemaINFERENCETrialEnrollment)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCETrialEnrollment *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCETrialEnrollment *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCETrialEnrollment deploymentId](self, "deploymentId")}];
    [v3 setObject:v4 forKeyedSubscript:@"deploymentId"];
  }

  if (self->_experimentId)
  {
    v5 = [(INFERENCESchemaINFERENCETrialEnrollment *)self experimentId];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"experimentId"];
  }

  if (self->_rolloutId)
  {
    v7 = [(INFERENCESchemaINFERENCETrialEnrollment *)self rolloutId];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"rolloutId"];
  }

  if (self->_treatmentId)
  {
    v9 = [(INFERENCESchemaINFERENCETrialEnrollment *)self treatmentId];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"treatmentId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(INFERENCESchemaINFERENCETrialEnrollment *)self experimentId];
  v6 = [v4 experimentId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v7 = [(INFERENCESchemaINFERENCETrialEnrollment *)self experimentId];
  if (v7)
  {
    v8 = v7;
    v9 = [(INFERENCESchemaINFERENCETrialEnrollment *)self experimentId];
    v10 = [v4 experimentId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCETrialEnrollment *)self treatmentId];
  v6 = [v4 treatmentId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v12 = [(INFERENCESchemaINFERENCETrialEnrollment *)self treatmentId];
  if (v12)
  {
    v13 = v12;
    v14 = [(INFERENCESchemaINFERENCETrialEnrollment *)self treatmentId];
    v15 = [v4 treatmentId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    deploymentId = self->_deploymentId;
    if (deploymentId != [v4 deploymentId])
    {
      goto LABEL_20;
    }
  }

  v5 = [(INFERENCESchemaINFERENCETrialEnrollment *)self rolloutId];
  v6 = [v4 rolloutId];
  if ((v5 != 0) != (v6 == 0))
  {
    v18 = [(INFERENCESchemaINFERENCETrialEnrollment *)self rolloutId];
    if (!v18)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = v18;
    v20 = [(INFERENCESchemaINFERENCETrialEnrollment *)self rolloutId];
    v21 = [v4 rolloutId];
    v22 = [v20 isEqual:v21];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(INFERENCESchemaINFERENCETrialEnrollment *)self experimentId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(INFERENCESchemaINFERENCETrialEnrollment *)self treatmentId];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  v6 = [(INFERENCESchemaINFERENCETrialEnrollment *)self rolloutId];

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
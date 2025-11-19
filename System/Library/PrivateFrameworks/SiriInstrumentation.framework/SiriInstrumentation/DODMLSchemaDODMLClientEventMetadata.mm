@interface DODMLSchemaDODMLClientEventMetadata
- (BOOL)isEqual:(id)a3;
- (DODMLSchemaDODMLClientEventMetadata)initWithDictionary:(id)a3;
- (DODMLSchemaDODMLClientEventMetadata)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation DODMLSchemaDODMLClientEventMetadata

- (DODMLSchemaDODMLClientEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = DODMLSchemaDODMLClientEventMetadata;
  v5 = [(DODMLSchemaDODMLClientEventMetadata *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"dodMlId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(DODMLSchemaDODMLClientEventMetadata *)v5 setDodMlId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"experimentName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(DODMLSchemaDODMLClientEventMetadata *)v5 setExperimentName:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"trialExperimentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(DODMLSchemaDODMLClientEventMetadata *)v5 setTrialExperimentId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"trialTreatmentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(DODMLSchemaDODMLClientEventMetadata *)v5 setTrialTreatmentId:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"trialDeploymentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLSchemaDODMLClientEventMetadata setTrialDeploymentId:](v5, "setTrialDeploymentId:", [v14 longLongValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (DODMLSchemaDODMLClientEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DODMLSchemaDODMLClientEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DODMLSchemaDODMLClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_dodMlId)
  {
    v4 = [(DODMLSchemaDODMLClientEventMetadata *)self dodMlId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"dodMlId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"dodMlId"];
    }
  }

  if (self->_experimentName)
  {
    v7 = [(DODMLSchemaDODMLClientEventMetadata *)self experimentName];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"experimentName"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[DODMLSchemaDODMLClientEventMetadata trialDeploymentId](self, "trialDeploymentId")}];
    [v3 setObject:v9 forKeyedSubscript:@"trialDeploymentId"];
  }

  if (self->_trialExperimentId)
  {
    v10 = [(DODMLSchemaDODMLClientEventMetadata *)self trialExperimentId];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"trialExperimentId"];
  }

  if (self->_trialTreatmentId)
  {
    v12 = [(DODMLSchemaDODMLClientEventMetadata *)self trialTreatmentId];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"trialTreatmentId"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"trialTreatmentId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_dodMlId hash];
  v4 = [(NSString *)self->_experimentName hash];
  v5 = [(NSString *)self->_trialExperimentId hash];
  v6 = [(SISchemaUUID *)self->_trialTreatmentId hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_trialDeploymentId;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(DODMLSchemaDODMLClientEventMetadata *)self dodMlId];
  v6 = [v4 dodMlId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(DODMLSchemaDODMLClientEventMetadata *)self dodMlId];
  if (v7)
  {
    v8 = v7;
    v9 = [(DODMLSchemaDODMLClientEventMetadata *)self dodMlId];
    v10 = [v4 dodMlId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(DODMLSchemaDODMLClientEventMetadata *)self experimentName];
  v6 = [v4 experimentName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(DODMLSchemaDODMLClientEventMetadata *)self experimentName];
  if (v12)
  {
    v13 = v12;
    v14 = [(DODMLSchemaDODMLClientEventMetadata *)self experimentName];
    v15 = [v4 experimentName];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(DODMLSchemaDODMLClientEventMetadata *)self trialExperimentId];
  v6 = [v4 trialExperimentId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(DODMLSchemaDODMLClientEventMetadata *)self trialExperimentId];
  if (v17)
  {
    v18 = v17;
    v19 = [(DODMLSchemaDODMLClientEventMetadata *)self trialExperimentId];
    v20 = [v4 trialExperimentId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(DODMLSchemaDODMLClientEventMetadata *)self trialTreatmentId];
  v6 = [v4 trialTreatmentId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  v22 = [(DODMLSchemaDODMLClientEventMetadata *)self trialTreatmentId];
  if (v22)
  {
    v23 = v22;
    v24 = [(DODMLSchemaDODMLClientEventMetadata *)self trialTreatmentId];
    v25 = [v4 trialTreatmentId];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[48] & 1))
  {
    if ((*&self->_has & 1) == 0 || (trialDeploymentId = self->_trialDeploymentId, trialDeploymentId == [v4 trialDeploymentId]))
    {
      v27 = 1;
      goto LABEL_23;
    }
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(DODMLSchemaDODMLClientEventMetadata *)self dodMlId];

  if (v4)
  {
    v5 = [(DODMLSchemaDODMLClientEventMetadata *)self dodMlId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(DODMLSchemaDODMLClientEventMetadata *)self experimentName];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(DODMLSchemaDODMLClientEventMetadata *)self trialExperimentId];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(DODMLSchemaDODMLClientEventMetadata *)self trialTreatmentId];

  if (v8)
  {
    v9 = [(DODMLSchemaDODMLClientEventMetadata *)self trialTreatmentId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DODMLSchemaDODMLClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(DODMLSchemaDODMLClientEventMetadata *)self dodMlId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(DODMLSchemaDODMLClientEventMetadata *)self deleteDodMlId];
  }

  v9 = [(DODMLSchemaDODMLClientEventMetadata *)self trialTreatmentId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(DODMLSchemaDODMLClientEventMetadata *)self deleteTrialTreatmentId];
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
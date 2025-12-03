@interface DODMLSchemaDODMLClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (DODMLSchemaDODMLClientEventMetadata)initWithDictionary:(id)dictionary;
- (DODMLSchemaDODMLClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation DODMLSchemaDODMLClientEventMetadata

- (DODMLSchemaDODMLClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = DODMLSchemaDODMLClientEventMetadata;
  v5 = [(DODMLSchemaDODMLClientEventMetadata *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dodMlId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(DODMLSchemaDODMLClientEventMetadata *)v5 setDodMlId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"experimentName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(DODMLSchemaDODMLClientEventMetadata *)v5 setExperimentName:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"trialExperimentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(DODMLSchemaDODMLClientEventMetadata *)v5 setTrialExperimentId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"trialTreatmentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(DODMLSchemaDODMLClientEventMetadata *)v5 setTrialTreatmentId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"trialDeploymentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLSchemaDODMLClientEventMetadata setTrialDeploymentId:](v5, "setTrialDeploymentId:", [v14 longLongValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (DODMLSchemaDODMLClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLSchemaDODMLClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLSchemaDODMLClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_dodMlId)
  {
    dodMlId = [(DODMLSchemaDODMLClientEventMetadata *)self dodMlId];
    dictionaryRepresentation = [dodMlId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dodMlId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"dodMlId"];
    }
  }

  if (self->_experimentName)
  {
    experimentName = [(DODMLSchemaDODMLClientEventMetadata *)self experimentName];
    v8 = [experimentName copy];
    [dictionary setObject:v8 forKeyedSubscript:@"experimentName"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[DODMLSchemaDODMLClientEventMetadata trialDeploymentId](self, "trialDeploymentId")}];
    [dictionary setObject:v9 forKeyedSubscript:@"trialDeploymentId"];
  }

  if (self->_trialExperimentId)
  {
    trialExperimentId = [(DODMLSchemaDODMLClientEventMetadata *)self trialExperimentId];
    v11 = [trialExperimentId copy];
    [dictionary setObject:v11 forKeyedSubscript:@"trialExperimentId"];
  }

  if (self->_trialTreatmentId)
  {
    trialTreatmentId = [(DODMLSchemaDODMLClientEventMetadata *)self trialTreatmentId];
    dictionaryRepresentation2 = [trialTreatmentId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"trialTreatmentId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"trialTreatmentId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  dodMlId = [(DODMLSchemaDODMLClientEventMetadata *)self dodMlId];
  dodMlId2 = [equalCopy dodMlId];
  if ((dodMlId != 0) == (dodMlId2 == 0))
  {
    goto LABEL_21;
  }

  dodMlId3 = [(DODMLSchemaDODMLClientEventMetadata *)self dodMlId];
  if (dodMlId3)
  {
    v8 = dodMlId3;
    dodMlId4 = [(DODMLSchemaDODMLClientEventMetadata *)self dodMlId];
    dodMlId5 = [equalCopy dodMlId];
    v11 = [dodMlId4 isEqual:dodMlId5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  dodMlId = [(DODMLSchemaDODMLClientEventMetadata *)self experimentName];
  dodMlId2 = [equalCopy experimentName];
  if ((dodMlId != 0) == (dodMlId2 == 0))
  {
    goto LABEL_21;
  }

  experimentName = [(DODMLSchemaDODMLClientEventMetadata *)self experimentName];
  if (experimentName)
  {
    v13 = experimentName;
    experimentName2 = [(DODMLSchemaDODMLClientEventMetadata *)self experimentName];
    experimentName3 = [equalCopy experimentName];
    v16 = [experimentName2 isEqual:experimentName3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  dodMlId = [(DODMLSchemaDODMLClientEventMetadata *)self trialExperimentId];
  dodMlId2 = [equalCopy trialExperimentId];
  if ((dodMlId != 0) == (dodMlId2 == 0))
  {
    goto LABEL_21;
  }

  trialExperimentId = [(DODMLSchemaDODMLClientEventMetadata *)self trialExperimentId];
  if (trialExperimentId)
  {
    v18 = trialExperimentId;
    trialExperimentId2 = [(DODMLSchemaDODMLClientEventMetadata *)self trialExperimentId];
    trialExperimentId3 = [equalCopy trialExperimentId];
    v21 = [trialExperimentId2 isEqual:trialExperimentId3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  dodMlId = [(DODMLSchemaDODMLClientEventMetadata *)self trialTreatmentId];
  dodMlId2 = [equalCopy trialTreatmentId];
  if ((dodMlId != 0) == (dodMlId2 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  trialTreatmentId = [(DODMLSchemaDODMLClientEventMetadata *)self trialTreatmentId];
  if (trialTreatmentId)
  {
    v23 = trialTreatmentId;
    trialTreatmentId2 = [(DODMLSchemaDODMLClientEventMetadata *)self trialTreatmentId];
    trialTreatmentId3 = [equalCopy trialTreatmentId];
    v26 = [trialTreatmentId2 isEqual:trialTreatmentId3];

    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[48] & 1))
  {
    if ((*&self->_has & 1) == 0 || (trialDeploymentId = self->_trialDeploymentId, trialDeploymentId == [equalCopy trialDeploymentId]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  dodMlId = [(DODMLSchemaDODMLClientEventMetadata *)self dodMlId];

  if (dodMlId)
  {
    dodMlId2 = [(DODMLSchemaDODMLClientEventMetadata *)self dodMlId];
    PBDataWriterWriteSubmessage();
  }

  experimentName = [(DODMLSchemaDODMLClientEventMetadata *)self experimentName];

  if (experimentName)
  {
    PBDataWriterWriteStringField();
  }

  trialExperimentId = [(DODMLSchemaDODMLClientEventMetadata *)self trialExperimentId];

  if (trialExperimentId)
  {
    PBDataWriterWriteStringField();
  }

  trialTreatmentId = [(DODMLSchemaDODMLClientEventMetadata *)self trialTreatmentId];

  if (trialTreatmentId)
  {
    trialTreatmentId2 = [(DODMLSchemaDODMLClientEventMetadata *)self trialTreatmentId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = DODMLSchemaDODMLClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  dodMlId = [(DODMLSchemaDODMLClientEventMetadata *)self dodMlId];
  v7 = [dodMlId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(DODMLSchemaDODMLClientEventMetadata *)self deleteDodMlId];
  }

  trialTreatmentId = [(DODMLSchemaDODMLClientEventMetadata *)self trialTreatmentId];
  v10 = [trialTreatmentId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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
@interface SISchemaABExperimentServerFeatureTriggered
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaABExperimentServerFeatureTriggered)initWithDictionary:(id)a3;
- (SISchemaABExperimentServerFeatureTriggered)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaABExperimentServerFeatureTriggered

- (SISchemaABExperimentServerFeatureTriggered)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SISchemaABExperimentServerFeatureTriggered;
  v5 = [(SISchemaABExperimentServerFeatureTriggered *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"turnId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SISchemaABExperimentServerFeatureTriggered *)v5 setTurnId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"experimentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaABExperimentServerFeatureTriggered *)v5 setExperimentId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SISchemaABExperimentServerFeatureTriggered)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaABExperimentServerFeatureTriggered *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaABExperimentServerFeatureTriggered *)self dictionaryRepresentation];
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
  if (self->_experimentId)
  {
    v4 = [(SISchemaABExperimentServerFeatureTriggered *)self experimentId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"experimentId"];
  }

  if (self->_turnId)
  {
    v6 = [(SISchemaABExperimentServerFeatureTriggered *)self turnId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"turnId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"turnId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(SISchemaABExperimentServerFeatureTriggered *)self turnId];
  v6 = [v4 turnId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(SISchemaABExperimentServerFeatureTriggered *)self turnId];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaABExperimentServerFeatureTriggered *)self turnId];
    v10 = [v4 turnId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(SISchemaABExperimentServerFeatureTriggered *)self experimentId];
  v6 = [v4 experimentId];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(SISchemaABExperimentServerFeatureTriggered *)self experimentId];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(SISchemaABExperimentServerFeatureTriggered *)self experimentId];
    v15 = [v4 experimentId];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(SISchemaABExperimentServerFeatureTriggered *)self turnId];

  if (v4)
  {
    v5 = [(SISchemaABExperimentServerFeatureTriggered *)self turnId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SISchemaABExperimentServerFeatureTriggered *)self experimentId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = SISchemaABExperimentServerFeatureTriggered;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaABExperimentServerFeatureTriggered *)self turnId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(SISchemaABExperimentServerFeatureTriggered *)self deleteTurnId];
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
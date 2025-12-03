@interface SISchemaABExperimentServerFeatureTriggered
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaABExperimentServerFeatureTriggered)initWithDictionary:(id)dictionary;
- (SISchemaABExperimentServerFeatureTriggered)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SISchemaABExperimentServerFeatureTriggered

- (SISchemaABExperimentServerFeatureTriggered)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SISchemaABExperimentServerFeatureTriggered;
  v5 = [(SISchemaABExperimentServerFeatureTriggered *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"turnId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SISchemaABExperimentServerFeatureTriggered *)v5 setTurnId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"experimentId"];
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

- (SISchemaABExperimentServerFeatureTriggered)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaABExperimentServerFeatureTriggered *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaABExperimentServerFeatureTriggered *)self dictionaryRepresentation];
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
  if (self->_experimentId)
  {
    experimentId = [(SISchemaABExperimentServerFeatureTriggered *)self experimentId];
    v5 = [experimentId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"experimentId"];
  }

  if (self->_turnId)
  {
    turnId = [(SISchemaABExperimentServerFeatureTriggered *)self turnId];
    dictionaryRepresentation = [turnId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"turnId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"turnId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  turnId = [(SISchemaABExperimentServerFeatureTriggered *)self turnId];
  turnId2 = [equalCopy turnId];
  if ((turnId != 0) == (turnId2 == 0))
  {
    goto LABEL_11;
  }

  turnId3 = [(SISchemaABExperimentServerFeatureTriggered *)self turnId];
  if (turnId3)
  {
    v8 = turnId3;
    turnId4 = [(SISchemaABExperimentServerFeatureTriggered *)self turnId];
    turnId5 = [equalCopy turnId];
    v11 = [turnId4 isEqual:turnId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  turnId = [(SISchemaABExperimentServerFeatureTriggered *)self experimentId];
  turnId2 = [equalCopy experimentId];
  if ((turnId != 0) != (turnId2 == 0))
  {
    experimentId = [(SISchemaABExperimentServerFeatureTriggered *)self experimentId];
    if (!experimentId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = experimentId;
    experimentId2 = [(SISchemaABExperimentServerFeatureTriggered *)self experimentId];
    experimentId3 = [equalCopy experimentId];
    v16 = [experimentId2 isEqual:experimentId3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  turnId = [(SISchemaABExperimentServerFeatureTriggered *)self turnId];

  if (turnId)
  {
    turnId2 = [(SISchemaABExperimentServerFeatureTriggered *)self turnId];
    PBDataWriterWriteSubmessage();
  }

  experimentId = [(SISchemaABExperimentServerFeatureTriggered *)self experimentId];

  if (experimentId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SISchemaABExperimentServerFeatureTriggered;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaABExperimentServerFeatureTriggered *)self turnId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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
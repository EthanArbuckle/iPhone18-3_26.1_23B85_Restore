@interface ACTVSchemaACTVTurnActivated
- (ACTVSchemaACTVTurnActivated)initWithDictionary:(id)dictionary;
- (ACTVSchemaACTVTurnActivated)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ACTVSchemaACTVTurnActivated

- (ACTVSchemaACTVTurnActivated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ACTVSchemaACTVTurnActivated;
  v5 = [(ACTVSchemaACTVTurnActivated *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"turnId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ACTVSchemaACTVTurnActivated *)v5 setTurnId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (ACTVSchemaACTVTurnActivated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ACTVSchemaACTVTurnActivated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ACTVSchemaACTVTurnActivated *)self dictionaryRepresentation];
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
  if (self->_turnId)
  {
    turnId = [(ACTVSchemaACTVTurnActivated *)self turnId];
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
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    turnId = [(ACTVSchemaACTVTurnActivated *)self turnId];
    turnId2 = [equalCopy turnId];
    v7 = turnId2;
    if ((turnId != 0) != (turnId2 == 0))
    {
      turnId3 = [(ACTVSchemaACTVTurnActivated *)self turnId];
      if (!turnId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = turnId3;
      turnId4 = [(ACTVSchemaACTVTurnActivated *)self turnId];
      turnId5 = [equalCopy turnId];
      v12 = [turnId4 isEqual:turnId5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  turnId = [(ACTVSchemaACTVTurnActivated *)self turnId];

  if (turnId)
  {
    turnId2 = [(ACTVSchemaACTVTurnActivated *)self turnId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ACTVSchemaACTVTurnActivated;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ACTVSchemaACTVTurnActivated *)self turnId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ACTVSchemaACTVTurnActivated *)self deleteTurnId];
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
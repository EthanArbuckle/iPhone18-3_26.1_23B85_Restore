@interface SUTSchemaTestGeneratedTurnID
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SUTSchemaTestGeneratedTurnID)initWithDictionary:(id)dictionary;
- (SUTSchemaTestGeneratedTurnID)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SUTSchemaTestGeneratedTurnID

- (SUTSchemaTestGeneratedTurnID)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SUTSchemaTestGeneratedTurnID;
  v5 = [(SUTSchemaTestGeneratedTurnID *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"turnID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SUTSchemaTestGeneratedTurnID *)v5 setTurnID:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SUTSchemaTestGeneratedTurnID)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SUTSchemaTestGeneratedTurnID *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SUTSchemaTestGeneratedTurnID *)self dictionaryRepresentation];
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
  if (self->_turnID)
  {
    turnID = [(SUTSchemaTestGeneratedTurnID *)self turnID];
    dictionaryRepresentation = [turnID dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"turnID"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"turnID"];
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
    turnID = [(SUTSchemaTestGeneratedTurnID *)self turnID];
    turnID2 = [equalCopy turnID];
    v7 = turnID2;
    if ((turnID != 0) != (turnID2 == 0))
    {
      turnID3 = [(SUTSchemaTestGeneratedTurnID *)self turnID];
      if (!turnID3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = turnID3;
      turnID4 = [(SUTSchemaTestGeneratedTurnID *)self turnID];
      turnID5 = [equalCopy turnID];
      v12 = [turnID4 isEqual:turnID5];

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
  turnID = [(SUTSchemaTestGeneratedTurnID *)self turnID];

  if (turnID)
  {
    turnID2 = [(SUTSchemaTestGeneratedTurnID *)self turnID];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SUTSchemaTestGeneratedTurnID;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SUTSchemaTestGeneratedTurnID *)self turnID:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SUTSchemaTestGeneratedTurnID *)self deleteTurnID];
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
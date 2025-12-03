@interface RFSchemaRFGVisualResponseShownLink
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RFSchemaRFGVisualResponseShownLink)initWithDictionary:(id)dictionary;
- (RFSchemaRFGVisualResponseShownLink)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation RFSchemaRFGVisualResponseShownLink

- (RFSchemaRFGVisualResponseShownLink)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = RFSchemaRFGVisualResponseShownLink;
  v5 = [(RFSchemaRFGVisualResponseShownLink *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"turnId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(RFSchemaRFGVisualResponseShownLink *)v5 setTurnId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (RFSchemaRFGVisualResponseShownLink)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RFSchemaRFGVisualResponseShownLink *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RFSchemaRFGVisualResponseShownLink *)self dictionaryRepresentation];
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
    turnId = [(RFSchemaRFGVisualResponseShownLink *)self turnId];
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
    turnId = [(RFSchemaRFGVisualResponseShownLink *)self turnId];
    turnId2 = [equalCopy turnId];
    v7 = turnId2;
    if ((turnId != 0) != (turnId2 == 0))
    {
      turnId3 = [(RFSchemaRFGVisualResponseShownLink *)self turnId];
      if (!turnId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = turnId3;
      turnId4 = [(RFSchemaRFGVisualResponseShownLink *)self turnId];
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
  turnId = [(RFSchemaRFGVisualResponseShownLink *)self turnId];

  if (turnId)
  {
    turnId2 = [(RFSchemaRFGVisualResponseShownLink *)self turnId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = RFSchemaRFGVisualResponseShownLink;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(RFSchemaRFGVisualResponseShownLink *)self turnId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(RFSchemaRFGVisualResponseShownLink *)self deleteTurnId];
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
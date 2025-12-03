@interface ODDSiriSchemaODDAssistantCarPlayCounts
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssistantCarPlayCounts)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDAssistantCarPlayCounts)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDAssistantCarPlayCounts

- (ODDSiriSchemaODDAssistantCarPlayCounts)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = ODDSiriSchemaODDAssistantCarPlayCounts;
  v5 = [(ODDSiriSchemaODDAssistantCarPlayCounts *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"turnCounts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDTurnCounts alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDAssistantCarPlayCounts *)v5 setTurnCounts:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"carPlayConnectionsInTheLast24Hours"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantCarPlayCounts setCarPlayConnectionsInTheLast24Hours:](v5, "setCarPlayConnectionsInTheLast24Hours:", [v8 unsignedIntValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAssistantCarPlayCounts)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAssistantCarPlayCounts *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDAssistantCarPlayCounts *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDAssistantCarPlayCounts carPlayConnectionsInTheLast24Hours](self, "carPlayConnectionsInTheLast24Hours")}];
    [dictionary setObject:v4 forKeyedSubscript:@"carPlayConnectionsInTheLast24Hours"];
  }

  if (self->_turnCounts)
  {
    turnCounts = [(ODDSiriSchemaODDAssistantCarPlayCounts *)self turnCounts];
    dictionaryRepresentation = [turnCounts dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"turnCounts"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"turnCounts"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDTurnCounts *)self->_turnCounts hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_carPlayConnectionsInTheLast24Hours;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  turnCounts = [(ODDSiriSchemaODDAssistantCarPlayCounts *)self turnCounts];
  turnCounts2 = [equalCopy turnCounts];
  v7 = turnCounts2;
  if ((turnCounts != 0) == (turnCounts2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  turnCounts3 = [(ODDSiriSchemaODDAssistantCarPlayCounts *)self turnCounts];
  if (turnCounts3)
  {
    v9 = turnCounts3;
    turnCounts4 = [(ODDSiriSchemaODDAssistantCarPlayCounts *)self turnCounts];
    turnCounts5 = [equalCopy turnCounts];
    v12 = [turnCounts4 isEqual:turnCounts5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    carPlayConnectionsInTheLast24Hours = self->_carPlayConnectionsInTheLast24Hours;
    if (carPlayConnectionsInTheLast24Hours != [equalCopy carPlayConnectionsInTheLast24Hours])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  turnCounts = [(ODDSiriSchemaODDAssistantCarPlayCounts *)self turnCounts];

  if (turnCounts)
  {
    turnCounts2 = [(ODDSiriSchemaODDAssistantCarPlayCounts *)self turnCounts];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDAssistantCarPlayCounts;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODDSiriSchemaODDAssistantCarPlayCounts *)self turnCounts:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ODDSiriSchemaODDAssistantCarPlayCounts *)self deleteTurnCounts];
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
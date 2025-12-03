@interface ORCHSchemaORCHNLRouterBridgeSubComponentStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHNLRouterBridgeSubComponentStarted)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHNLRouterBridgeSubComponentStarted)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHNLRouterBridgeSubComponentStarted

- (ORCHSchemaORCHNLRouterBridgeSubComponentStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = ORCHSchemaORCHNLRouterBridgeSubComponentStarted;
  v5 = [(ORCHSchemaORCHNLRouterBridgeSubComponentStarted *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"nlRouterSubComponent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHNLRouterBridgeSubComponentStarted setNlRouterSubComponent:](v5, "setNlRouterSubComponent:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHNLRouterBridgeSubComponentStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHNLRouterBridgeSubComponentStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHNLRouterBridgeSubComponentStarted *)self dictionaryRepresentation];
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
    v4 = [(ORCHSchemaORCHNLRouterBridgeSubComponentStarted *)self nlRouterSubComponent]- 1;
    if (v4 > 3)
    {
      v5 = @"ORCHNLROUTERBRIDGESUBCOMPONENT_UNKNOWN";
    }

    else
    {
      v5 = off_1E78DED60[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"nlRouterSubComponent"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_nlRouterSubComponent;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[12] & 1))
    {
      if ((*&self->_has & 1) == 0 || (nlRouterSubComponent = self->_nlRouterSubComponent, nlRouterSubComponent == [equalCopy nlRouterSubComponent]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
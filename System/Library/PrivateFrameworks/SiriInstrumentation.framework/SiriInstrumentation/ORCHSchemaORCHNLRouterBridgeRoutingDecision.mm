@interface ORCHSchemaORCHNLRouterBridgeRoutingDecision
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHNLRouterBridgeRoutingDecision)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHNLRouterBridgeRoutingDecision)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasRouterDecisionType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHNLRouterBridgeRoutingDecision

- (ORCHSchemaORCHNLRouterBridgeRoutingDecision)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ORCHSchemaORCHNLRouterBridgeRoutingDecision;
  v5 = [(ORCHSchemaORCHNLRouterBridgeRoutingDecision *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"routingDecisionSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHNLRouterBridgeRoutingDecision setRoutingDecisionSource:](v5, "setRoutingDecisionSource:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"routerDecisionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHNLRouterBridgeRoutingDecision setRouterDecisionType:](v5, "setRouterDecisionType:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHNLRouterBridgeRoutingDecision)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHNLRouterBridgeRoutingDecision *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHNLRouterBridgeRoutingDecision *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [(ORCHSchemaORCHNLRouterBridgeRoutingDecision *)self routerDecisionType]- 1;
    if (v5 > 7)
    {
      v6 = @"NLROUTERDECISIONTYPE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78DECF0[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"routerDecisionType"];
    has = self->_has;
  }

  if (has)
  {
    v7 = [(ORCHSchemaORCHNLRouterBridgeRoutingDecision *)self routingDecisionSource]- 1;
    if (v7 > 5)
    {
      v8 = @"ORCHNLROUTERBRIDGEROUTINGDECISIONSOURCE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78DED30[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"routingDecisionSource"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_routingDecisionSource;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_routerDecisionType;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  has = self->_has;
  v6 = equalCopy[16];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (*&has)
  {
    routingDecisionSource = self->_routingDecisionSource;
    if (routingDecisionSource != [equalCopy routingDecisionSource])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    has = self->_has;
    v6 = equalCopy[16];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    routerDecisionType = self->_routerDecisionType;
    if (routerDecisionType != [equalCopy routerDecisionType])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)setHasRouterDecisionType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
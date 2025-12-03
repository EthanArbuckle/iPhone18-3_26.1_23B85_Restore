@interface ORCHSchemaORCHNLRouterBridgeFailed
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHNLRouterBridgeFailed)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHNLRouterBridgeFailed)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasErrorCode:(BOOL)code;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHNLRouterBridgeFailed

- (ORCHSchemaORCHNLRouterBridgeFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ORCHSchemaORCHNLRouterBridgeFailed;
  v5 = [(ORCHSchemaORCHNLRouterBridgeFailed *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"errorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHNLRouterBridgeFailed setErrorDomain:](v5, "setErrorDomain:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHNLRouterBridgeFailed setErrorCode:](v5, "setErrorCode:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"routingDecision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ORCHSchemaORCHNLRouterBridgeRoutingDecision alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHNLRouterBridgeFailed *)v5 setRoutingDecision:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHNLRouterBridgeFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHNLRouterBridgeFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHNLRouterBridgeFailed *)self dictionaryRepresentation];
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
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[ORCHSchemaORCHNLRouterBridgeFailed errorCode](self, "errorCode")}];
    [dictionary setObject:v5 forKeyedSubscript:@"errorCode"];

    has = self->_has;
  }

  if (has)
  {
    if ([(ORCHSchemaORCHNLRouterBridgeFailed *)self errorDomain]== 1)
    {
      v6 = @"ORCHNLROUTEBRIDGERERRORDOMAIN_NL_ROUTER_CLIENT";
    }

    else
    {
      v6 = @"ORCHNLROUTERBRIDGEERRORDOMAIN_UNKNOWN";
    }

    [dictionary setObject:v6 forKeyedSubscript:@"errorDomain"];
  }

  if (self->_routingDecision)
  {
    routingDecision = [(ORCHSchemaORCHNLRouterBridgeFailed *)self routingDecision];
    dictionaryRepresentation = [routingDecision dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"routingDecision"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"routingDecision"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_errorDomain;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(ORCHSchemaORCHNLRouterBridgeRoutingDecision *)self->_routingDecision hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_errorCode;
  return v7 ^ v6 ^ [(ORCHSchemaORCHNLRouterBridgeRoutingDecision *)self->_routingDecision hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    errorDomain = self->_errorDomain;
    if (errorDomain != [equalCopy errorDomain])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (errorCode = self->_errorCode, errorCode == [equalCopy errorCode]))
    {
      routingDecision = [(ORCHSchemaORCHNLRouterBridgeFailed *)self routingDecision];
      routingDecision2 = [equalCopy routingDecision];
      v12 = routingDecision2;
      if ((routingDecision != 0) != (routingDecision2 == 0))
      {
        routingDecision3 = [(ORCHSchemaORCHNLRouterBridgeFailed *)self routingDecision];
        if (!routingDecision3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = routingDecision3;
        routingDecision4 = [(ORCHSchemaORCHNLRouterBridgeFailed *)self routingDecision];
        routingDecision5 = [equalCopy routingDecision];
        v17 = [routingDecision4 isEqual:routingDecision5];

        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  routingDecision = [(ORCHSchemaORCHNLRouterBridgeFailed *)self routingDecision];

  v6 = toCopy;
  if (routingDecision)
  {
    routingDecision2 = [(ORCHSchemaORCHNLRouterBridgeFailed *)self routingDecision];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ORCHSchemaORCHNLRouterBridgeFailed;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ORCHSchemaORCHNLRouterBridgeFailed *)self routingDecision:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ORCHSchemaORCHNLRouterBridgeFailed *)self deleteRoutingDecision];
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
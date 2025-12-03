@interface NLRouterSchemaNLRouterBridgeHandleEnded
- (BOOL)isEqual:(id)equal;
- (NLRouterSchemaNLRouterBridgeHandleEnded)initWithDictionary:(id)dictionary;
- (NLRouterSchemaNLRouterBridgeHandleEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation NLRouterSchemaNLRouterBridgeHandleEnded

- (NLRouterSchemaNLRouterBridgeHandleEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = NLRouterSchemaNLRouterBridgeHandleEnded;
  v5 = [(NLRouterSchemaNLRouterBridgeHandleEnded *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"routingDecision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NLRouterSchemaNLRouterBridgeRoutingDecision alloc] initWithDictionary:v6];
      [(NLRouterSchemaNLRouterBridgeHandleEnded *)v5 setRoutingDecision:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (NLRouterSchemaNLRouterBridgeHandleEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLRouterSchemaNLRouterBridgeHandleEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLRouterSchemaNLRouterBridgeHandleEnded *)self dictionaryRepresentation];
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
  if (self->_routingDecision)
  {
    routingDecision = [(NLRouterSchemaNLRouterBridgeHandleEnded *)self routingDecision];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    routingDecision = [(NLRouterSchemaNLRouterBridgeHandleEnded *)self routingDecision];
    routingDecision2 = [equalCopy routingDecision];
    v7 = routingDecision2;
    if ((routingDecision != 0) != (routingDecision2 == 0))
    {
      routingDecision3 = [(NLRouterSchemaNLRouterBridgeHandleEnded *)self routingDecision];
      if (!routingDecision3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = routingDecision3;
      routingDecision4 = [(NLRouterSchemaNLRouterBridgeHandleEnded *)self routingDecision];
      routingDecision5 = [equalCopy routingDecision];
      v12 = [routingDecision4 isEqual:routingDecision5];

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
  routingDecision = [(NLRouterSchemaNLRouterBridgeHandleEnded *)self routingDecision];

  if (routingDecision)
  {
    routingDecision2 = [(NLRouterSchemaNLRouterBridgeHandleEnded *)self routingDecision];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = NLRouterSchemaNLRouterBridgeHandleEnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLRouterSchemaNLRouterBridgeHandleEnded *)self routingDecision:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(NLRouterSchemaNLRouterBridgeHandleEnded *)self deleteRoutingDecision];
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
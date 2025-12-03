@interface IFPlatformRequestSchemaIFPlatformRequestInvoked
- (BOOL)isEqual:(id)equal;
- (IFPlatformRequestSchemaIFPlatformRequestInvoked)initWithDictionary:(id)dictionary;
- (IFPlatformRequestSchemaIFPlatformRequestInvoked)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IFPlatformRequestSchemaIFPlatformRequestInvoked

- (IFPlatformRequestSchemaIFPlatformRequestInvoked)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = IFPlatformRequestSchemaIFPlatformRequestInvoked;
  v5 = [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ifSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)v5 setIfSessionId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"clientTraceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)v5 setClientTraceId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (IFPlatformRequestSchemaIFPlatformRequestInvoked)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)self dictionaryRepresentation];
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
  if (self->_clientTraceId)
  {
    clientTraceId = [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)self clientTraceId];
    dictionaryRepresentation = [clientTraceId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"clientTraceId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"clientTraceId"];
    }
  }

  if (self->_ifSessionId)
  {
    ifSessionId = [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)self ifSessionId];
    dictionaryRepresentation2 = [ifSessionId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"ifSessionId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"ifSessionId"];
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

  ifSessionId = [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)self ifSessionId];
  ifSessionId2 = [equalCopy ifSessionId];
  if ((ifSessionId != 0) == (ifSessionId2 == 0))
  {
    goto LABEL_11;
  }

  ifSessionId3 = [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)self ifSessionId];
  if (ifSessionId3)
  {
    v8 = ifSessionId3;
    ifSessionId4 = [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)self ifSessionId];
    ifSessionId5 = [equalCopy ifSessionId];
    v11 = [ifSessionId4 isEqual:ifSessionId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  ifSessionId = [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)self clientTraceId];
  ifSessionId2 = [equalCopy clientTraceId];
  if ((ifSessionId != 0) != (ifSessionId2 == 0))
  {
    clientTraceId = [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)self clientTraceId];
    if (!clientTraceId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = clientTraceId;
    clientTraceId2 = [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)self clientTraceId];
    clientTraceId3 = [equalCopy clientTraceId];
    v16 = [clientTraceId2 isEqual:clientTraceId3];

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
  ifSessionId = [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)self ifSessionId];

  if (ifSessionId)
  {
    ifSessionId2 = [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)self ifSessionId];
    PBDataWriterWriteSubmessage();
  }

  clientTraceId = [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)self clientTraceId];

  if (clientTraceId)
  {
    clientTraceId2 = [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)self clientTraceId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = IFPlatformRequestSchemaIFPlatformRequestInvoked;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  ifSessionId = [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)self ifSessionId];
  v7 = [ifSessionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)self deleteIfSessionId];
  }

  clientTraceId = [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)self clientTraceId];
  v10 = [clientTraceId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)self deleteClientTraceId];
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
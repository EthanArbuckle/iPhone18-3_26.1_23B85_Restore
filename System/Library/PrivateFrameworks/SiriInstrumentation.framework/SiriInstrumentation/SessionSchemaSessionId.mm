@interface SessionSchemaSessionId
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SessionSchemaSessionId)initWithDictionary:(id)dictionary;
- (SessionSchemaSessionId)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SessionSchemaSessionId

- (SessionSchemaSessionId)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SessionSchemaSessionId;
  v5 = [(SessionSchemaSessionId *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SessionSchemaSessionId *)v5 setSessionId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SessionSchemaSessionId)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SessionSchemaSessionId *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SessionSchemaSessionId *)self dictionaryRepresentation];
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
  if (self->_sessionId)
  {
    sessionId = [(SessionSchemaSessionId *)self sessionId];
    dictionaryRepresentation = [sessionId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"sessionId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"sessionId"];
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
    sessionId = [(SessionSchemaSessionId *)self sessionId];
    sessionId2 = [equalCopy sessionId];
    v7 = sessionId2;
    if ((sessionId != 0) != (sessionId2 == 0))
    {
      sessionId3 = [(SessionSchemaSessionId *)self sessionId];
      if (!sessionId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = sessionId3;
      sessionId4 = [(SessionSchemaSessionId *)self sessionId];
      sessionId5 = [equalCopy sessionId];
      v12 = [sessionId4 isEqual:sessionId5];

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
  sessionId = [(SessionSchemaSessionId *)self sessionId];

  if (sessionId)
  {
    sessionId2 = [(SessionSchemaSessionId *)self sessionId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SessionSchemaSessionId;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SessionSchemaSessionId *)self sessionId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SessionSchemaSessionId *)self deleteSessionId];
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
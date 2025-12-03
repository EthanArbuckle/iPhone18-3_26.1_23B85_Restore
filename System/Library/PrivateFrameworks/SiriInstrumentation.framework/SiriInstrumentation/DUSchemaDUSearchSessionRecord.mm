@interface DUSchemaDUSearchSessionRecord
- (BOOL)isEqual:(id)equal;
- (DUSchemaDUSearchSessionRecord)initWithDictionary:(id)dictionary;
- (DUSchemaDUSearchSessionRecord)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation DUSchemaDUSearchSessionRecord

- (DUSchemaDUSearchSessionRecord)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = DUSchemaDUSearchSessionRecord;
  v5 = [(DUSchemaDUSearchSessionRecord *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(DUSchemaDUSearchSessionRecord *)v5 setSessionId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"sessionStartTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DUSchemaDUSearchSessionRecord setSessionStartTimestampMs:](v5, "setSessionStartTimestampMs:", [v8 unsignedLongLongValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (DUSchemaDUSearchSessionRecord)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DUSchemaDUSearchSessionRecord *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DUSchemaDUSearchSessionRecord *)self dictionaryRepresentation];
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
    sessionId = [(DUSchemaDUSearchSessionRecord *)self sessionId];
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

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DUSchemaDUSearchSessionRecord sessionStartTimestampMs](self, "sessionStartTimestampMs")}];
    [dictionary setObject:v7 forKeyedSubscript:@"sessionStartTimestampMs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_sessionId hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_sessionStartTimestampMs;
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

  sessionId = [(DUSchemaDUSearchSessionRecord *)self sessionId];
  sessionId2 = [equalCopy sessionId];
  v7 = sessionId2;
  if ((sessionId != 0) == (sessionId2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  sessionId3 = [(DUSchemaDUSearchSessionRecord *)self sessionId];
  if (sessionId3)
  {
    v9 = sessionId3;
    sessionId4 = [(DUSchemaDUSearchSessionRecord *)self sessionId];
    sessionId5 = [equalCopy sessionId];
    v12 = [sessionId4 isEqual:sessionId5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[24] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    sessionStartTimestampMs = self->_sessionStartTimestampMs;
    if (sessionStartTimestampMs != [equalCopy sessionStartTimestampMs])
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
  sessionId = [(DUSchemaDUSearchSessionRecord *)self sessionId];

  if (sessionId)
  {
    sessionId2 = [(DUSchemaDUSearchSessionRecord *)self sessionId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = DUSchemaDUSearchSessionRecord;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(DUSchemaDUSearchSessionRecord *)self sessionId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(DUSchemaDUSearchSessionRecord *)self deleteSessionId];
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
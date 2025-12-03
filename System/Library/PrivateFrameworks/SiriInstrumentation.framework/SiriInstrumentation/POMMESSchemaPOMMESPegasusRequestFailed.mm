@interface POMMESSchemaPOMMESPegasusRequestFailed
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESPegasusRequestFailed)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESPegasusRequestFailed)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasErrorCode:(BOOL)code;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESPegasusRequestFailed

- (POMMESSchemaPOMMESPegasusRequestFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = POMMESSchemaPOMMESPegasusRequestFailed;
  v5 = [(POMMESSchemaPOMMESPegasusRequestFailed *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusRequestFailed setReason:](v5, "setReason:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"requestArguments"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[POMMESSchemaPOMMESPegasusRequestArguments alloc] initWithDictionary:v7];
      [(POMMESSchemaPOMMESPegasusRequestFailed *)v5 setRequestArguments:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusRequestFailed setErrorCode:](v5, "setErrorCode:", [v9 unsignedIntValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESPegasusRequestFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESPegasusRequestFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESPegasusRequestFailed *)self dictionaryRepresentation];
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
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESPegasusRequestFailed errorCode](self, "errorCode")}];
    [dictionary setObject:v5 forKeyedSubscript:@"errorCode"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [(POMMESSchemaPOMMESPegasusRequestFailed *)self reason]- 1;
    if (v6 > 4)
    {
      v7 = @"POMMESPEGASUSREQUESTFAILUREREASON_UNKNOWN";
    }

    else
    {
      v7 = off_1E78E0F18[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"reason"];
  }

  if (self->_requestArguments)
  {
    requestArguments = [(POMMESSchemaPOMMESPegasusRequestFailed *)self requestArguments];
    dictionaryRepresentation = [requestArguments dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"requestArguments"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"requestArguments"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_reason;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self->_requestArguments hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_errorCode;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[28] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    reason = self->_reason;
    if (reason != [equalCopy reason])
    {
      goto LABEL_15;
    }
  }

  requestArguments = [(POMMESSchemaPOMMESPegasusRequestFailed *)self requestArguments];
  requestArguments2 = [equalCopy requestArguments];
  v8 = requestArguments2;
  if ((requestArguments != 0) == (requestArguments2 == 0))
  {

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  requestArguments3 = [(POMMESSchemaPOMMESPegasusRequestFailed *)self requestArguments];
  if (requestArguments3)
  {
    v10 = requestArguments3;
    requestArguments4 = [(POMMESSchemaPOMMESPegasusRequestFailed *)self requestArguments];
    requestArguments5 = [equalCopy requestArguments];
    v13 = [requestArguments4 isEqual:requestArguments5];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v14 = (*&self->_has >> 1) & 1;
  if (v14 != ((equalCopy[28] >> 1) & 1))
  {
    goto LABEL_15;
  }

  if (v14)
  {
    errorCode = self->_errorCode;
    if (errorCode != [equalCopy errorCode])
    {
      goto LABEL_15;
    }
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  requestArguments = [(POMMESSchemaPOMMESPegasusRequestFailed *)self requestArguments];

  if (requestArguments)
  {
    requestArguments2 = [(POMMESSchemaPOMMESPegasusRequestFailed *)self requestArguments];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
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
  v9.super_class = POMMESSchemaPOMMESPegasusRequestFailed;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(POMMESSchemaPOMMESPegasusRequestFailed *)self requestArguments:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(POMMESSchemaPOMMESPegasusRequestFailed *)self deleteRequestArguments];
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
@interface CAMSchemaCAMResponse
- (BOOL)isEqual:(id)equal;
- (CAMSchemaCAMResponse)initWithDictionary:(id)dictionary;
- (CAMSchemaCAMResponse)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasResponseStatusCode:(BOOL)code;
- (void)writeTo:(id)to;
@end

@implementation CAMSchemaCAMResponse

- (CAMSchemaCAMResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = CAMSchemaCAMResponse;
  v5 = [(CAMSchemaCAMResponse *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"action"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAMSchemaCAMResponse setAction:](v5, "setAction:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"responseStatusCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAMSchemaCAMResponse setResponseStatusCode:](v5, "setResponseStatusCode:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"enforcer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(CAMSchemaCAMResponse *)v5 setEnforcer:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (CAMSchemaCAMResponse)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CAMSchemaCAMResponse *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CAMSchemaCAMResponse *)self dictionaryRepresentation];
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
    v4 = [(CAMSchemaCAMResponse *)self action]- 1;
    if (v4 > 5)
    {
      v5 = @"CAMACTION_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D2348[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"action"];
  }

  if (self->_enforcer)
  {
    enforcer = [(CAMSchemaCAMResponse *)self enforcer];
    v7 = [enforcer copy];
    [dictionary setObject:v7 forKeyedSubscript:@"enforcer"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAMSchemaCAMResponse responseStatusCode](self, "responseStatusCode")}];
    [dictionary setObject:v8 forKeyedSubscript:@"responseStatusCode"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_action;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSString *)self->_enforcer hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_responseStatusCode;
  return v7 ^ v6 ^ [(NSString *)self->_enforcer hash:v3];
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
    action = self->_action;
    if (action != [equalCopy action])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (responseStatusCode = self->_responseStatusCode, responseStatusCode == [equalCopy responseStatusCode]))
    {
      enforcer = [(CAMSchemaCAMResponse *)self enforcer];
      enforcer2 = [equalCopy enforcer];
      v12 = enforcer2;
      if ((enforcer != 0) != (enforcer2 == 0))
      {
        enforcer3 = [(CAMSchemaCAMResponse *)self enforcer];
        if (!enforcer3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = enforcer3;
        enforcer4 = [(CAMSchemaCAMResponse *)self enforcer];
        enforcer5 = [equalCopy enforcer];
        v17 = [enforcer4 isEqual:enforcer5];

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
    PBDataWriterWriteUint32Field();
  }

  enforcer = [(CAMSchemaCAMResponse *)self enforcer];

  v6 = toCopy;
  if (enforcer)
  {
    PBDataWriterWriteStringField();
    v6 = toCopy;
  }
}

- (void)setHasResponseStatusCode:(BOOL)code
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
@interface IFTSchemaIFTSystemRequirementAuthenticationRequest
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTSystemRequirementAuthenticationRequest)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTSystemRequirementAuthenticationRequest)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTSystemRequirementAuthenticationRequest

- (IFTSchemaIFTSystemRequirementAuthenticationRequest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTSystemRequirementAuthenticationRequest;
  v5 = [(IFTSchemaIFTSystemRequirementAuthenticationRequest *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"authenticationLevel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemRequirementAuthenticationRequest setAuthenticationLevel:](v5, "setAuthenticationLevel:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (IFTSchemaIFTSystemRequirementAuthenticationRequest)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTSystemRequirementAuthenticationRequest *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTSystemRequirementAuthenticationRequest *)self dictionaryRepresentation];
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
    authenticationLevel = [(IFTSchemaIFTSystemRequirementAuthenticationRequest *)self authenticationLevel];
    v5 = @"IFTSYSTEMREQUIREMENTAUTHENTICATIONREQUESTAUTHENTICATIONLEVEL_UNKNOWN";
    if (authenticationLevel == 1)
    {
      v5 = @"IFTSYSTEMREQUIREMENTAUTHENTICATIONREQUESTAUTHENTICATIONLEVEL_ALTERNATIVE_AUTHENTICATION_PERMITTED";
    }

    if (authenticationLevel == 2)
    {
      v6 = @"IFTSYSTEMREQUIREMENTAUTHENTICATIONREQUESTAUTHENTICATIONLEVEL_ORIGIN_DEVICE_AUTHENTICATION_REQUIRED";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"authenticationLevel"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_authenticationLevel;
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
      if ((*&self->_has & 1) == 0 || (authenticationLevel = self->_authenticationLevel, authenticationLevel == [equalCopy authenticationLevel]))
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
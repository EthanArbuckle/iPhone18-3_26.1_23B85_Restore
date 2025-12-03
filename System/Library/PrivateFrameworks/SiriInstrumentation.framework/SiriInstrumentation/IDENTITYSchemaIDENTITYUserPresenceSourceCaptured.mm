@interface IDENTITYSchemaIDENTITYUserPresenceSourceCaptured
- (BOOL)isEqual:(id)equal;
- (IDENTITYSchemaIDENTITYUserPresenceSourceCaptured)initWithDictionary:(id)dictionary;
- (IDENTITYSchemaIDENTITYUserPresenceSourceCaptured)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IDENTITYSchemaIDENTITYUserPresenceSourceCaptured

- (IDENTITYSchemaIDENTITYUserPresenceSourceCaptured)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = IDENTITYSchemaIDENTITYUserPresenceSourceCaptured;
  v5 = [(IDENTITYSchemaIDENTITYUserPresenceSourceCaptured *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"userPresenceSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IDENTITYSchemaIDENTITYUserPresenceSourceCaptured setUserPresenceSource:](v5, "setUserPresenceSource:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (IDENTITYSchemaIDENTITYUserPresenceSourceCaptured)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IDENTITYSchemaIDENTITYUserPresenceSourceCaptured *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IDENTITYSchemaIDENTITYUserPresenceSourceCaptured *)self dictionaryRepresentation];
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
    userPresenceSource = [(IDENTITYSchemaIDENTITYUserPresenceSourceCaptured *)self userPresenceSource];
    v5 = @"IDENTITYUSERPRESENCESOURCE_UNKNOWN";
    if (userPresenceSource == 1)
    {
      v5 = @"IDENTITYUSERPRESENCESOURCE_GEO_FENCE";
    }

    if (userPresenceSource == 2)
    {
      v6 = @"IDENTITYUSERPRESENCESOURCE_DEVICE_DISCOVERY";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"userPresenceSource"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_userPresenceSource;
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
      if ((*&self->_has & 1) == 0 || (userPresenceSource = self->_userPresenceSource, userPresenceSource == [equalCopy userPresenceSource]))
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
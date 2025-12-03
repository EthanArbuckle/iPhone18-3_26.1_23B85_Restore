@interface NETSchemaNETSessionConnectionHttpHeaderCreated
- (BOOL)isEqual:(id)equal;
- (NETSchemaNETSessionConnectionHttpHeaderCreated)initWithDictionary:(id)dictionary;
- (NETSchemaNETSessionConnectionHttpHeaderCreated)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation NETSchemaNETSessionConnectionHttpHeaderCreated

- (NETSchemaNETSessionConnectionHttpHeaderCreated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = NETSchemaNETSessionConnectionHttpHeaderCreated;
  v5 = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"userAgent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(NETSchemaNETSessionConnectionHttpHeaderCreated *)v5 setUserAgent:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"aceHost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(NETSchemaNETSessionConnectionHttpHeaderCreated *)v5 setAceHost:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (NETSchemaNETSessionConnectionHttpHeaderCreated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self dictionaryRepresentation];
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
  if (self->_aceHost)
  {
    aceHost = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self aceHost];
    v5 = [aceHost copy];
    [dictionary setObject:v5 forKeyedSubscript:@"aceHost"];
  }

  if (self->_userAgent)
  {
    userAgent = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self userAgent];
    v7 = [userAgent copy];
    [dictionary setObject:v7 forKeyedSubscript:@"userAgent"];
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

  userAgent = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self userAgent];
  userAgent2 = [equalCopy userAgent];
  if ((userAgent != 0) == (userAgent2 == 0))
  {
    goto LABEL_11;
  }

  userAgent3 = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self userAgent];
  if (userAgent3)
  {
    v8 = userAgent3;
    userAgent4 = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self userAgent];
    userAgent5 = [equalCopy userAgent];
    v11 = [userAgent4 isEqual:userAgent5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  userAgent = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self aceHost];
  userAgent2 = [equalCopy aceHost];
  if ((userAgent != 0) != (userAgent2 == 0))
  {
    aceHost = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self aceHost];
    if (!aceHost)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = aceHost;
    aceHost2 = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self aceHost];
    aceHost3 = [equalCopy aceHost];
    v16 = [aceHost2 isEqual:aceHost3];

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
  userAgent = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self userAgent];

  if (userAgent)
  {
    PBDataWriterWriteStringField();
  }

  aceHost = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self aceHost];

  if (aceHost)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
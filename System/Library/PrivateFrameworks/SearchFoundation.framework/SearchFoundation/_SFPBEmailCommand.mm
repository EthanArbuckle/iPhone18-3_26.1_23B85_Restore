@interface _SFPBEmailCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBEmailCommand)initWithDictionary:(id)dictionary;
- (_SFPBEmailCommand)initWithFacade:(id)facade;
- (_SFPBEmailCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setEmail:(id)email;
- (void)writeTo:(id)to;
@end

@implementation _SFPBEmailCommand

- (_SFPBEmailCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBEmailCommand *)self init];
  if (v5)
  {
    email = [facadeCopy email];

    if (email)
    {
      email2 = [facadeCopy email];
      [(_SFPBEmailCommand *)v5 setEmail:email2];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBEmailCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBEmailCommand;
  v5 = [(_SFPBEmailCommand *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"email"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBEmailCommand *)v5 setEmail:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBEmailCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBEmailCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBEmailCommand *)self dictionaryRepresentation];
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
  if (self->_email)
  {
    email = [(_SFPBEmailCommand *)self email];
    v5 = [email copy];
    [dictionary setObject:v5 forKeyedSubscript:@"email"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    email = [(_SFPBEmailCommand *)self email];
    email2 = [equalCopy email];
    v7 = email2;
    if ((email != 0) != (email2 == 0))
    {
      email3 = [(_SFPBEmailCommand *)self email];
      if (!email3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = email3;
      email4 = [(_SFPBEmailCommand *)self email];
      email5 = [equalCopy email];
      v12 = [email4 isEqual:email5];

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
  email = [(_SFPBEmailCommand *)self email];
  if (email)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setEmail:(id)email
{
  v4 = [email copy];
  email = self->_email;
  self->_email = v4;

  MEMORY[0x1EEE66BB8]();
}

@end
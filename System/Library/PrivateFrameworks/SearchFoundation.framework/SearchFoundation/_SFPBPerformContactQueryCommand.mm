@interface _SFPBPerformContactQueryCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBPerformContactQueryCommand)initWithDictionary:(id)dictionary;
- (_SFPBPerformContactQueryCommand)initWithFacade:(id)facade;
- (_SFPBPerformContactQueryCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setContactIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBPerformContactQueryCommand

- (_SFPBPerformContactQueryCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBPerformContactQueryCommand *)self init];
  if (v5)
  {
    contactIdentifier = [facadeCopy contactIdentifier];

    if (contactIdentifier)
    {
      contactIdentifier2 = [facadeCopy contactIdentifier];
      [(_SFPBPerformContactQueryCommand *)v5 setContactIdentifier:contactIdentifier2];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBPerformContactQueryCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBPerformContactQueryCommand;
  v5 = [(_SFPBPerformContactQueryCommand *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contactIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBPerformContactQueryCommand *)v5 setContactIdentifier:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBPerformContactQueryCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBPerformContactQueryCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBPerformContactQueryCommand *)self dictionaryRepresentation];
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
  if (self->_contactIdentifier)
  {
    contactIdentifier = [(_SFPBPerformContactQueryCommand *)self contactIdentifier];
    v5 = [contactIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"contactIdentifier"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    contactIdentifier = [(_SFPBPerformContactQueryCommand *)self contactIdentifier];
    contactIdentifier2 = [equalCopy contactIdentifier];
    v7 = contactIdentifier2;
    if ((contactIdentifier != 0) != (contactIdentifier2 == 0))
    {
      contactIdentifier3 = [(_SFPBPerformContactQueryCommand *)self contactIdentifier];
      if (!contactIdentifier3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = contactIdentifier3;
      contactIdentifier4 = [(_SFPBPerformContactQueryCommand *)self contactIdentifier];
      contactIdentifier5 = [equalCopy contactIdentifier];
      v12 = [contactIdentifier4 isEqual:contactIdentifier5];

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
  contactIdentifier = [(_SFPBPerformContactQueryCommand *)self contactIdentifier];
  if (contactIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setContactIdentifier:(id)identifier
{
  v4 = [identifier copy];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end
@interface _SFPBShowContactCardCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBShowContactCardCommand)initWithDictionary:(id)dictionary;
- (_SFPBShowContactCardCommand)initWithFacade:(id)facade;
- (_SFPBShowContactCardCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setContactIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBShowContactCardCommand

- (_SFPBShowContactCardCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBShowContactCardCommand *)self init];
  if (v5)
  {
    contactIdentifier = [facadeCopy contactIdentifier];

    if (contactIdentifier)
    {
      contactIdentifier2 = [facadeCopy contactIdentifier];
      [(_SFPBShowContactCardCommand *)v5 setContactIdentifier:contactIdentifier2];
    }

    if ([facadeCopy hasIsSuggestedContact])
    {
      -[_SFPBShowContactCardCommand setIsSuggestedContact:](v5, "setIsSuggestedContact:", [facadeCopy isSuggestedContact]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBShowContactCardCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBShowContactCardCommand;
  v5 = [(_SFPBShowContactCardCommand *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contactIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBShowContactCardCommand *)v5 setContactIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isSuggestedContact"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBShowContactCardCommand setIsSuggestedContact:](v5, "setIsSuggestedContact:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBShowContactCardCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBShowContactCardCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBShowContactCardCommand *)self dictionaryRepresentation];
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
    contactIdentifier = [(_SFPBShowContactCardCommand *)self contactIdentifier];
    v5 = [contactIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"contactIdentifier"];
  }

  if (self->_isSuggestedContact)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBShowContactCardCommand isSuggestedContact](self, "isSuggestedContact")}];
    [dictionary setObject:v6 forKeyedSubscript:@"isSuggestedContact"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_contactIdentifier hash];
  v4 = 2654435761;
  if (!self->_isSuggestedContact)
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    contactIdentifier = [(_SFPBShowContactCardCommand *)self contactIdentifier];
    contactIdentifier2 = [equalCopy contactIdentifier];
    v7 = contactIdentifier2;
    if ((contactIdentifier != 0) != (contactIdentifier2 == 0))
    {
      contactIdentifier3 = [(_SFPBShowContactCardCommand *)self contactIdentifier];
      if (!contactIdentifier3)
      {

LABEL_10:
        isSuggestedContact = self->_isSuggestedContact;
        v13 = isSuggestedContact == [equalCopy isSuggestedContact];
        goto LABEL_8;
      }

      v9 = contactIdentifier3;
      contactIdentifier4 = [(_SFPBShowContactCardCommand *)self contactIdentifier];
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
  contactIdentifier = [(_SFPBShowContactCardCommand *)self contactIdentifier];
  if (contactIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBShowContactCardCommand *)self isSuggestedContact])
  {
    PBDataWriterWriteBOOLField();
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
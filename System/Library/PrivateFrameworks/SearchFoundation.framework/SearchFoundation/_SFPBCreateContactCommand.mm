@interface _SFPBCreateContactCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCreateContactCommand)initWithDictionary:(id)dictionary;
- (_SFPBCreateContactCommand)initWithFacade:(id)facade;
- (_SFPBCreateContactCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCreateContactCommand

- (_SFPBCreateContactCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBCreateContactCommand *)self init];
  if (v5)
  {
    person = [facadeCopy person];

    if (person)
    {
      v7 = [_SFPBPerson alloc];
      person2 = [facadeCopy person];
      v9 = [(_SFPBPerson *)v7 initWithFacade:person2];
      [(_SFPBCreateContactCommand *)v5 setPerson:v9];
    }

    if ([facadeCopy hasAddToExistingContact])
    {
      -[_SFPBCreateContactCommand setAddToExistingContact:](v5, "setAddToExistingContact:", [facadeCopy addToExistingContact]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBCreateContactCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBCreateContactCommand;
  v5 = [(_SFPBCreateContactCommand *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"person"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBPerson alloc] initWithDictionary:v6];
      [(_SFPBCreateContactCommand *)v5 setPerson:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"addToExistingContact"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCreateContactCommand setAddToExistingContact:](v5, "setAddToExistingContact:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBCreateContactCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCreateContactCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCreateContactCommand *)self dictionaryRepresentation];
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
  if (self->_addToExistingContact)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCreateContactCommand addToExistingContact](self, "addToExistingContact")}];
    [dictionary setObject:v4 forKeyedSubscript:@"addToExistingContact"];
  }

  if (self->_person)
  {
    person = [(_SFPBCreateContactCommand *)self person];
    dictionaryRepresentation = [person dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"person"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"person"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBPerson *)self->_person hash];
  v4 = 2654435761;
  if (!self->_addToExistingContact)
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
    person = [(_SFPBCreateContactCommand *)self person];
    person2 = [equalCopy person];
    v7 = person2;
    if ((person != 0) != (person2 == 0))
    {
      person3 = [(_SFPBCreateContactCommand *)self person];
      if (!person3)
      {

LABEL_10:
        addToExistingContact = self->_addToExistingContact;
        v13 = addToExistingContact == [equalCopy addToExistingContact];
        goto LABEL_8;
      }

      v9 = person3;
      person4 = [(_SFPBCreateContactCommand *)self person];
      person5 = [equalCopy person];
      v12 = [person4 isEqual:person5];

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
  person = [(_SFPBCreateContactCommand *)self person];
  if (person)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBCreateContactCommand *)self addToExistingContact])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end
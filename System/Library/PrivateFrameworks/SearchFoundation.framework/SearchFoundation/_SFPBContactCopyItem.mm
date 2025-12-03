@interface _SFPBContactCopyItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBContactCopyItem)initWithDictionary:(id)dictionary;
- (_SFPBContactCopyItem)initWithFacade:(id)facade;
- (_SFPBContactCopyItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBContactCopyItem

- (_SFPBContactCopyItem)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBContactCopyItem *)self init];
  if (v5)
  {
    person = [facadeCopy person];

    if (person)
    {
      v7 = [_SFPBPerson alloc];
      person2 = [facadeCopy person];
      v9 = [(_SFPBPerson *)v7 initWithFacade:person2];
      [(_SFPBContactCopyItem *)v5 setPerson:v9];
    }

    contactFileLocation = [facadeCopy contactFileLocation];

    if (contactFileLocation)
    {
      v11 = [_SFPBURL alloc];
      contactFileLocation2 = [facadeCopy contactFileLocation];
      v13 = [(_SFPBURL *)v11 initWithNSURL:contactFileLocation2];
      [(_SFPBContactCopyItem *)v5 setContactFileLocation:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBContactCopyItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBContactCopyItem;
  v5 = [(_SFPBContactCopyItem *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"person"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBPerson alloc] initWithDictionary:v6];
      [(_SFPBContactCopyItem *)v5 setPerson:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"contactFileLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBURL alloc] initWithDictionary:v8];
      [(_SFPBContactCopyItem *)v5 setContactFileLocation:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBContactCopyItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBContactCopyItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBContactCopyItem *)self dictionaryRepresentation];
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
  if (self->_contactFileLocation)
  {
    contactFileLocation = [(_SFPBContactCopyItem *)self contactFileLocation];
    dictionaryRepresentation = [contactFileLocation dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"contactFileLocation"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"contactFileLocation"];
    }
  }

  if (self->_person)
  {
    person = [(_SFPBContactCopyItem *)self person];
    dictionaryRepresentation2 = [person dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"person"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"person"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  person = [(_SFPBContactCopyItem *)self person];
  person2 = [equalCopy person];
  if ((person != 0) == (person2 == 0))
  {
    goto LABEL_11;
  }

  person3 = [(_SFPBContactCopyItem *)self person];
  if (person3)
  {
    v8 = person3;
    person4 = [(_SFPBContactCopyItem *)self person];
    person5 = [equalCopy person];
    v11 = [person4 isEqual:person5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  person = [(_SFPBContactCopyItem *)self contactFileLocation];
  person2 = [equalCopy contactFileLocation];
  if ((person != 0) != (person2 == 0))
  {
    contactFileLocation = [(_SFPBContactCopyItem *)self contactFileLocation];
    if (!contactFileLocation)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = contactFileLocation;
    contactFileLocation2 = [(_SFPBContactCopyItem *)self contactFileLocation];
    contactFileLocation3 = [equalCopy contactFileLocation];
    v16 = [contactFileLocation2 isEqual:contactFileLocation3];

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
  person = [(_SFPBContactCopyItem *)self person];
  if (person)
  {
    PBDataWriterWriteSubmessage();
  }

  contactFileLocation = [(_SFPBContactCopyItem *)self contactFileLocation];
  if (contactFileLocation)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end
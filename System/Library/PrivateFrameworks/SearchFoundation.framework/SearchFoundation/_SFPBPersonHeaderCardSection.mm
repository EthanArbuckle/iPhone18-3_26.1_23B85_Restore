@interface _SFPBPersonHeaderCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBPersonHeaderCardSection)initWithDictionary:(id)dictionary;
- (_SFPBPersonHeaderCardSection)initWithFacade:(id)facade;
- (_SFPBPersonHeaderCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBPersonHeaderCardSection

- (_SFPBPersonHeaderCardSection)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBPersonHeaderCardSection *)self init];
  if (v5)
  {
    person = [facadeCopy person];

    if (person)
    {
      v7 = [_SFPBPerson alloc];
      person2 = [facadeCopy person];
      v9 = [(_SFPBPerson *)v7 initWithFacade:person2];
      [(_SFPBPersonHeaderCardSection *)v5 setPerson:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBPersonHeaderCardSection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBPersonHeaderCardSection;
  v5 = [(_SFPBPersonHeaderCardSection *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"person"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBPerson alloc] initWithDictionary:v6];
      [(_SFPBPersonHeaderCardSection *)v5 setPerson:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBPersonHeaderCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBPersonHeaderCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBPersonHeaderCardSection *)self dictionaryRepresentation];
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
  if (self->_person)
  {
    person = [(_SFPBPersonHeaderCardSection *)self person];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    person = [(_SFPBPersonHeaderCardSection *)self person];
    person2 = [equalCopy person];
    v7 = person2;
    if ((person != 0) != (person2 == 0))
    {
      person3 = [(_SFPBPersonHeaderCardSection *)self person];
      if (!person3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = person3;
      person4 = [(_SFPBPersonHeaderCardSection *)self person];
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
  person = [(_SFPBPersonHeaderCardSection *)self person];
  if (person)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end
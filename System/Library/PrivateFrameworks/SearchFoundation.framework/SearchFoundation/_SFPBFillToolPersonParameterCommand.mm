@interface _SFPBFillToolPersonParameterCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBFillToolPersonParameterCommand)initWithDictionary:(id)dictionary;
- (_SFPBFillToolPersonParameterCommand)initWithFacade:(id)facade;
- (_SFPBFillToolPersonParameterCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setEncodedTypedValue:(id)value;
- (void)writeTo:(id)to;
@end

@implementation _SFPBFillToolPersonParameterCommand

- (_SFPBFillToolPersonParameterCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBFillToolPersonParameterCommand *)self init];
  if (v5)
  {
    encodedTypedValue = [facadeCopy encodedTypedValue];

    if (encodedTypedValue)
    {
      encodedTypedValue2 = [facadeCopy encodedTypedValue];
      [(_SFPBFillToolPersonParameterCommand *)v5 setEncodedTypedValue:encodedTypedValue2];
    }

    person = [facadeCopy person];

    if (person)
    {
      v9 = [_SFPBPerson alloc];
      person2 = [facadeCopy person];
      v11 = [(_SFPBPerson *)v9 initWithFacade:person2];
      [(_SFPBFillToolPersonParameterCommand *)v5 setPerson:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBFillToolPersonParameterCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBFillToolPersonParameterCommand;
  v5 = [(_SFPBFillToolPersonParameterCommand *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"encodedTypedValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(_SFPBFillToolPersonParameterCommand *)v5 setEncodedTypedValue:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"person"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBPerson alloc] initWithDictionary:v8];
      [(_SFPBFillToolPersonParameterCommand *)v5 setPerson:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBFillToolPersonParameterCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBFillToolPersonParameterCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBFillToolPersonParameterCommand *)self dictionaryRepresentation];
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
  if (self->_encodedTypedValue)
  {
    encodedTypedValue = [(_SFPBFillToolPersonParameterCommand *)self encodedTypedValue];
    v5 = [encodedTypedValue base64EncodedStringWithOptions:0];
    if (v5)
    {
      [dictionary setObject:v5 forKeyedSubscript:@"encodedTypedValue"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"encodedTypedValue"];
    }
  }

  if (self->_person)
  {
    person = [(_SFPBFillToolPersonParameterCommand *)self person];
    dictionaryRepresentation = [person dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"person"];
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

  encodedTypedValue = [(_SFPBFillToolPersonParameterCommand *)self encodedTypedValue];
  encodedTypedValue2 = [equalCopy encodedTypedValue];
  if ((encodedTypedValue != 0) == (encodedTypedValue2 == 0))
  {
    goto LABEL_11;
  }

  encodedTypedValue3 = [(_SFPBFillToolPersonParameterCommand *)self encodedTypedValue];
  if (encodedTypedValue3)
  {
    v8 = encodedTypedValue3;
    encodedTypedValue4 = [(_SFPBFillToolPersonParameterCommand *)self encodedTypedValue];
    encodedTypedValue5 = [equalCopy encodedTypedValue];
    v11 = [encodedTypedValue4 isEqual:encodedTypedValue5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  encodedTypedValue = [(_SFPBFillToolPersonParameterCommand *)self person];
  encodedTypedValue2 = [equalCopy person];
  if ((encodedTypedValue != 0) != (encodedTypedValue2 == 0))
  {
    person = [(_SFPBFillToolPersonParameterCommand *)self person];
    if (!person)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = person;
    person2 = [(_SFPBFillToolPersonParameterCommand *)self person];
    person3 = [equalCopy person];
    v16 = [person2 isEqual:person3];

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
  encodedTypedValue = [(_SFPBFillToolPersonParameterCommand *)self encodedTypedValue];
  if (encodedTypedValue)
  {
    PBDataWriterWriteDataField();
  }

  person = [(_SFPBFillToolPersonParameterCommand *)self person];
  if (person)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setEncodedTypedValue:(id)value
{
  v4 = [value copy];
  encodedTypedValue = self->_encodedTypedValue;
  self->_encodedTypedValue = v4;

  MEMORY[0x1EEE66BB8]();
}

@end
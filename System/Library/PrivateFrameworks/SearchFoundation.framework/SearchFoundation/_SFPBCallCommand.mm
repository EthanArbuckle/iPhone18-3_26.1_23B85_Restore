@interface _SFPBCallCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCallCommand)initWithDictionary:(id)dictionary;
- (_SFPBCallCommand)initWithFacade:(id)facade;
- (_SFPBCallCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setPhoneNumber:(id)number;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCallCommand

- (_SFPBCallCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBCallCommand *)self init];
  if (v5)
  {
    phoneNumber = [facadeCopy phoneNumber];

    if (phoneNumber)
    {
      phoneNumber2 = [facadeCopy phoneNumber];
      [(_SFPBCallCommand *)v5 setPhoneNumber:phoneNumber2];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBCallCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBCallCommand;
  v5 = [(_SFPBCallCommand *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"phoneNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBCallCommand *)v5 setPhoneNumber:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBCallCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCallCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCallCommand *)self dictionaryRepresentation];
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
  if (self->_phoneNumber)
  {
    phoneNumber = [(_SFPBCallCommand *)self phoneNumber];
    v5 = [phoneNumber copy];
    [dictionary setObject:v5 forKeyedSubscript:@"phoneNumber"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    phoneNumber = [(_SFPBCallCommand *)self phoneNumber];
    phoneNumber2 = [equalCopy phoneNumber];
    v7 = phoneNumber2;
    if ((phoneNumber != 0) != (phoneNumber2 == 0))
    {
      phoneNumber3 = [(_SFPBCallCommand *)self phoneNumber];
      if (!phoneNumber3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = phoneNumber3;
      phoneNumber4 = [(_SFPBCallCommand *)self phoneNumber];
      phoneNumber5 = [equalCopy phoneNumber];
      v12 = [phoneNumber4 isEqual:phoneNumber5];

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
  phoneNumber = [(_SFPBCallCommand *)self phoneNumber];
  if (phoneNumber)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setPhoneNumber:(id)number
{
  v4 = [number copy];
  phoneNumber = self->_phoneNumber;
  self->_phoneNumber = v4;

  MEMORY[0x1EEE66BB8]();
}

@end
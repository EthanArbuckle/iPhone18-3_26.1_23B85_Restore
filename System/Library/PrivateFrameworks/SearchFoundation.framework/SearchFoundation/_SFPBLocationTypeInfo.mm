@interface _SFPBLocationTypeInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBLocationTypeInfo)initWithDictionary:(id)dictionary;
- (_SFPBLocationTypeInfo)initWithFacade:(id)facade;
- (_SFPBLocationTypeInfo)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setAddress:(id)address;
- (void)writeTo:(id)to;
@end

@implementation _SFPBLocationTypeInfo

- (_SFPBLocationTypeInfo)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBLocationTypeInfo *)self init];
  if (v5)
  {
    address = [facadeCopy address];

    if (address)
    {
      address2 = [facadeCopy address];
      [(_SFPBLocationTypeInfo *)v5 setAddress:address2];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBLocationTypeInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBLocationTypeInfo;
  v5 = [(_SFPBLocationTypeInfo *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"address"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBLocationTypeInfo *)v5 setAddress:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBLocationTypeInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBLocationTypeInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBLocationTypeInfo *)self dictionaryRepresentation];
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
  if (self->_address)
  {
    address = [(_SFPBLocationTypeInfo *)self address];
    v5 = [address copy];
    [dictionary setObject:v5 forKeyedSubscript:@"address"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    address = [(_SFPBLocationTypeInfo *)self address];
    address2 = [equalCopy address];
    v7 = address2;
    if ((address != 0) != (address2 == 0))
    {
      address3 = [(_SFPBLocationTypeInfo *)self address];
      if (!address3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = address3;
      address4 = [(_SFPBLocationTypeInfo *)self address];
      address5 = [equalCopy address];
      v12 = [address4 isEqual:address5];

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
  address = [(_SFPBLocationTypeInfo *)self address];
  if (address)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setAddress:(id)address
{
  v4 = [address copy];
  address = self->_address;
  self->_address = v4;

  MEMORY[0x1EEE66BB8]();
}

@end
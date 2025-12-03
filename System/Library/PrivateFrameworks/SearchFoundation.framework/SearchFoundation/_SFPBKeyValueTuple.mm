@interface _SFPBKeyValueTuple
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBKeyValueTuple)initWithDictionary:(id)dictionary;
- (_SFPBKeyValueTuple)initWithFacade:(id)facade;
- (_SFPBKeyValueTuple)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setKey:(id)key;
- (void)setValue:(id)value;
- (void)writeTo:(id)to;
@end

@implementation _SFPBKeyValueTuple

- (_SFPBKeyValueTuple)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBKeyValueTuple *)self init];
  if (v5)
  {
    v6 = [facadeCopy key];

    if (v6)
    {
      v7 = [facadeCopy key];
      [(_SFPBKeyValueTuple *)v5 setKey:v7];
    }

    value = [facadeCopy value];

    if (value)
    {
      value2 = [facadeCopy value];
      [(_SFPBKeyValueTuple *)v5 setValue:value2];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBKeyValueTuple)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBKeyValueTuple;
  v5 = [(_SFPBKeyValueTuple *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"key"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBKeyValueTuple *)v5 setKey:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBKeyValueTuple *)v5 setValue:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBKeyValueTuple)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBKeyValueTuple *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBKeyValueTuple *)self dictionaryRepresentation];
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
  if (self->_key)
  {
    v4 = [(_SFPBKeyValueTuple *)self key];
    v5 = [v4 copy];
    [dictionary setObject:v5 forKeyedSubscript:@"key"];
  }

  if (self->_value)
  {
    value = [(_SFPBKeyValueTuple *)self value];
    v7 = [value copy];
    [dictionary setObject:v7 forKeyedSubscript:@"value"];
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

  value = [(_SFPBKeyValueTuple *)self key];
  value2 = [equalCopy key];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBKeyValueTuple *)self key];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBKeyValueTuple *)self key];
    v10 = [equalCopy key];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  value = [(_SFPBKeyValueTuple *)self value];
  value2 = [equalCopy value];
  if ((value != 0) != (value2 == 0))
  {
    value3 = [(_SFPBKeyValueTuple *)self value];
    if (!value3)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = value3;
    value4 = [(_SFPBKeyValueTuple *)self value];
    value5 = [equalCopy value];
    v16 = [value4 isEqual:value5];

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
  v4 = [(_SFPBKeyValueTuple *)self key];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  value = [(_SFPBKeyValueTuple *)self value];
  if (value)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setValue:(id)value
{
  v4 = [value copy];
  value = self->_value;
  self->_value = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setKey:(id)key
{
  v4 = [key copy];
  key = self->_key;
  self->_key = v4;

  MEMORY[0x1EEE66BB8]();
}

@end
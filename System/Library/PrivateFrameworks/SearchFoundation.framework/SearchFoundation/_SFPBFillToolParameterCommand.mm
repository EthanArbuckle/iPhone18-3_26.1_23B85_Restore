@interface _SFPBFillToolParameterCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBFillToolParameterCommand)initWithDictionary:(id)dictionary;
- (_SFPBFillToolParameterCommand)initWithFacade:(id)facade;
- (_SFPBFillToolParameterCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setEncodedTypedValue:(id)value;
- (void)writeTo:(id)to;
@end

@implementation _SFPBFillToolParameterCommand

- (_SFPBFillToolParameterCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBFillToolParameterCommand *)self init];
  if (v5)
  {
    encodedTypedValue = [facadeCopy encodedTypedValue];

    if (encodedTypedValue)
    {
      encodedTypedValue2 = [facadeCopy encodedTypedValue];
      [(_SFPBFillToolParameterCommand *)v5 setEncodedTypedValue:encodedTypedValue2];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBFillToolParameterCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBFillToolParameterCommand;
  v5 = [(_SFPBFillToolParameterCommand *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"encodedTypedValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(_SFPBFillToolParameterCommand *)v5 setEncodedTypedValue:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBFillToolParameterCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBFillToolParameterCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBFillToolParameterCommand *)self dictionaryRepresentation];
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
    encodedTypedValue = [(_SFPBFillToolParameterCommand *)self encodedTypedValue];
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

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    encodedTypedValue = [(_SFPBFillToolParameterCommand *)self encodedTypedValue];
    encodedTypedValue2 = [equalCopy encodedTypedValue];
    v7 = encodedTypedValue2;
    if ((encodedTypedValue != 0) != (encodedTypedValue2 == 0))
    {
      encodedTypedValue3 = [(_SFPBFillToolParameterCommand *)self encodedTypedValue];
      if (!encodedTypedValue3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = encodedTypedValue3;
      encodedTypedValue4 = [(_SFPBFillToolParameterCommand *)self encodedTypedValue];
      encodedTypedValue5 = [equalCopy encodedTypedValue];
      v12 = [encodedTypedValue4 isEqual:encodedTypedValue5];

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
  encodedTypedValue = [(_SFPBFillToolParameterCommand *)self encodedTypedValue];
  if (encodedTypedValue)
  {
    PBDataWriterWriteDataField();
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
@interface _SFPBFillToolFileParameterCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBFillToolFileParameterCommand)initWithDictionary:(id)dictionary;
- (_SFPBFillToolFileParameterCommand)initWithFacade:(id)facade;
- (_SFPBFillToolFileParameterCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setEncodedTypedValue:(id)value;
- (void)setFilePath:(id)path;
- (void)writeTo:(id)to;
@end

@implementation _SFPBFillToolFileParameterCommand

- (_SFPBFillToolFileParameterCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBFillToolFileParameterCommand *)self init];
  if (v5)
  {
    encodedTypedValue = [facadeCopy encodedTypedValue];

    if (encodedTypedValue)
    {
      encodedTypedValue2 = [facadeCopy encodedTypedValue];
      [(_SFPBFillToolFileParameterCommand *)v5 setEncodedTypedValue:encodedTypedValue2];
    }

    filePath = [facadeCopy filePath];

    if (filePath)
    {
      filePath2 = [facadeCopy filePath];
      [(_SFPBFillToolFileParameterCommand *)v5 setFilePath:filePath2];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBFillToolFileParameterCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBFillToolFileParameterCommand;
  v5 = [(_SFPBFillToolFileParameterCommand *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"encodedTypedValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(_SFPBFillToolFileParameterCommand *)v5 setEncodedTypedValue:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"filePath"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBFillToolFileParameterCommand *)v5 setFilePath:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBFillToolFileParameterCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBFillToolFileParameterCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBFillToolFileParameterCommand *)self dictionaryRepresentation];
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
    encodedTypedValue = [(_SFPBFillToolFileParameterCommand *)self encodedTypedValue];
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

  if (self->_filePath)
  {
    filePath = [(_SFPBFillToolFileParameterCommand *)self filePath];
    v8 = [filePath copy];
    [dictionary setObject:v8 forKeyedSubscript:@"filePath"];
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

  encodedTypedValue = [(_SFPBFillToolFileParameterCommand *)self encodedTypedValue];
  encodedTypedValue2 = [equalCopy encodedTypedValue];
  if ((encodedTypedValue != 0) == (encodedTypedValue2 == 0))
  {
    goto LABEL_11;
  }

  encodedTypedValue3 = [(_SFPBFillToolFileParameterCommand *)self encodedTypedValue];
  if (encodedTypedValue3)
  {
    v8 = encodedTypedValue3;
    encodedTypedValue4 = [(_SFPBFillToolFileParameterCommand *)self encodedTypedValue];
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

  encodedTypedValue = [(_SFPBFillToolFileParameterCommand *)self filePath];
  encodedTypedValue2 = [equalCopy filePath];
  if ((encodedTypedValue != 0) != (encodedTypedValue2 == 0))
  {
    filePath = [(_SFPBFillToolFileParameterCommand *)self filePath];
    if (!filePath)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = filePath;
    filePath2 = [(_SFPBFillToolFileParameterCommand *)self filePath];
    filePath3 = [equalCopy filePath];
    v16 = [filePath2 isEqual:filePath3];

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
  encodedTypedValue = [(_SFPBFillToolFileParameterCommand *)self encodedTypedValue];
  if (encodedTypedValue)
  {
    PBDataWriterWriteDataField();
  }

  filePath = [(_SFPBFillToolFileParameterCommand *)self filePath];
  if (filePath)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setFilePath:(id)path
{
  v4 = [path copy];
  filePath = self->_filePath;
  self->_filePath = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setEncodedTypedValue:(id)value
{
  v4 = [value copy];
  encodedTypedValue = self->_encodedTypedValue;
  self->_encodedTypedValue = v4;

  MEMORY[0x1EEE66BB8]();
}

@end
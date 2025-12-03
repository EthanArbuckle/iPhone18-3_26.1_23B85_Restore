@interface _SFPBNamedProtobufMessage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBNamedProtobufMessage)initWithDictionary:(id)dictionary;
- (_SFPBNamedProtobufMessage)initWithFacade:(id)facade;
- (_SFPBNamedProtobufMessage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setProtobufMessageData:(id)data;
- (void)setProtobufMessageName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _SFPBNamedProtobufMessage

- (_SFPBNamedProtobufMessage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBNamedProtobufMessage *)self init];
  if (v5)
  {
    protobufMessageData = [facadeCopy protobufMessageData];

    if (protobufMessageData)
    {
      protobufMessageData2 = [facadeCopy protobufMessageData];
      [(_SFPBNamedProtobufMessage *)v5 setProtobufMessageData:protobufMessageData2];
    }

    protobufMessageName = [facadeCopy protobufMessageName];

    if (protobufMessageName)
    {
      protobufMessageName2 = [facadeCopy protobufMessageName];
      [(_SFPBNamedProtobufMessage *)v5 setProtobufMessageName:protobufMessageName2];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBNamedProtobufMessage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBNamedProtobufMessage;
  v5 = [(_SFPBNamedProtobufMessage *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"protobufMessageData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(_SFPBNamedProtobufMessage *)v5 setProtobufMessageData:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"protobufMessageName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBNamedProtobufMessage *)v5 setProtobufMessageName:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBNamedProtobufMessage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBNamedProtobufMessage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBNamedProtobufMessage *)self dictionaryRepresentation];
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
  if (self->_protobufMessageData)
  {
    protobufMessageData = [(_SFPBNamedProtobufMessage *)self protobufMessageData];
    v5 = [protobufMessageData base64EncodedStringWithOptions:0];
    if (v5)
    {
      [dictionary setObject:v5 forKeyedSubscript:@"protobufMessageData"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"protobufMessageData"];
    }
  }

  if (self->_protobufMessageName)
  {
    protobufMessageName = [(_SFPBNamedProtobufMessage *)self protobufMessageName];
    v8 = [protobufMessageName copy];
    [dictionary setObject:v8 forKeyedSubscript:@"protobufMessageName"];
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

  protobufMessageData = [(_SFPBNamedProtobufMessage *)self protobufMessageData];
  protobufMessageData2 = [equalCopy protobufMessageData];
  if ((protobufMessageData != 0) == (protobufMessageData2 == 0))
  {
    goto LABEL_11;
  }

  protobufMessageData3 = [(_SFPBNamedProtobufMessage *)self protobufMessageData];
  if (protobufMessageData3)
  {
    v8 = protobufMessageData3;
    protobufMessageData4 = [(_SFPBNamedProtobufMessage *)self protobufMessageData];
    protobufMessageData5 = [equalCopy protobufMessageData];
    v11 = [protobufMessageData4 isEqual:protobufMessageData5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  protobufMessageData = [(_SFPBNamedProtobufMessage *)self protobufMessageName];
  protobufMessageData2 = [equalCopy protobufMessageName];
  if ((protobufMessageData != 0) != (protobufMessageData2 == 0))
  {
    protobufMessageName = [(_SFPBNamedProtobufMessage *)self protobufMessageName];
    if (!protobufMessageName)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = protobufMessageName;
    protobufMessageName2 = [(_SFPBNamedProtobufMessage *)self protobufMessageName];
    protobufMessageName3 = [equalCopy protobufMessageName];
    v16 = [protobufMessageName2 isEqual:protobufMessageName3];

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
  protobufMessageData = [(_SFPBNamedProtobufMessage *)self protobufMessageData];
  if (protobufMessageData)
  {
    PBDataWriterWriteDataField();
  }

  protobufMessageName = [(_SFPBNamedProtobufMessage *)self protobufMessageName];
  if (protobufMessageName)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setProtobufMessageName:(id)name
{
  v4 = [name copy];
  protobufMessageName = self->_protobufMessageName;
  self->_protobufMessageName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setProtobufMessageData:(id)data
{
  v4 = [data copy];
  protobufMessageData = self->_protobufMessageData;
  self->_protobufMessageData = v4;

  MEMORY[0x1EEE66BB8]();
}

@end
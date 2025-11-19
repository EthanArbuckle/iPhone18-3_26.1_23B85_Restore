@interface _SFPBNamedProtobufMessage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBNamedProtobufMessage)initWithDictionary:(id)a3;
- (_SFPBNamedProtobufMessage)initWithFacade:(id)a3;
- (_SFPBNamedProtobufMessage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setProtobufMessageData:(id)a3;
- (void)setProtobufMessageName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBNamedProtobufMessage

- (_SFPBNamedProtobufMessage)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBNamedProtobufMessage *)self init];
  if (v5)
  {
    v6 = [v4 protobufMessageData];

    if (v6)
    {
      v7 = [v4 protobufMessageData];
      [(_SFPBNamedProtobufMessage *)v5 setProtobufMessageData:v7];
    }

    v8 = [v4 protobufMessageName];

    if (v8)
    {
      v9 = [v4 protobufMessageName];
      [(_SFPBNamedProtobufMessage *)v5 setProtobufMessageName:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBNamedProtobufMessage)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFPBNamedProtobufMessage;
  v5 = [(_SFPBNamedProtobufMessage *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"protobufMessageData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(_SFPBNamedProtobufMessage *)v5 setProtobufMessageData:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"protobufMessageName"];
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

- (_SFPBNamedProtobufMessage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBNamedProtobufMessage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBNamedProtobufMessage *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_protobufMessageData)
  {
    v4 = [(_SFPBNamedProtobufMessage *)self protobufMessageData];
    v5 = [v4 base64EncodedStringWithOptions:0];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"protobufMessageData"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"protobufMessageData"];
    }
  }

  if (self->_protobufMessageName)
  {
    v7 = [(_SFPBNamedProtobufMessage *)self protobufMessageName];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"protobufMessageName"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_SFPBNamedProtobufMessage *)self protobufMessageData];
  v6 = [v4 protobufMessageData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBNamedProtobufMessage *)self protobufMessageData];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBNamedProtobufMessage *)self protobufMessageData];
    v10 = [v4 protobufMessageData];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBNamedProtobufMessage *)self protobufMessageName];
  v6 = [v4 protobufMessageName];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBNamedProtobufMessage *)self protobufMessageName];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBNamedProtobufMessage *)self protobufMessageName];
    v15 = [v4 protobufMessageName];
    v16 = [v14 isEqual:v15];

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

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(_SFPBNamedProtobufMessage *)self protobufMessageData];
  if (v4)
  {
    PBDataWriterWriteDataField();
  }

  v5 = [(_SFPBNamedProtobufMessage *)self protobufMessageName];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setProtobufMessageName:(id)a3
{
  v4 = [a3 copy];
  protobufMessageName = self->_protobufMessageName;
  self->_protobufMessageName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setProtobufMessageData:(id)a3
{
  v4 = [a3 copy];
  protobufMessageData = self->_protobufMessageData;
  self->_protobufMessageData = v4;

  MEMORY[0x1EEE66BB8]();
}

@end
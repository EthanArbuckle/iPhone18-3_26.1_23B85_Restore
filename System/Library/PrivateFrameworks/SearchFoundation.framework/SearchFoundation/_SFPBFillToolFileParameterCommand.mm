@interface _SFPBFillToolFileParameterCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBFillToolFileParameterCommand)initWithDictionary:(id)a3;
- (_SFPBFillToolFileParameterCommand)initWithFacade:(id)a3;
- (_SFPBFillToolFileParameterCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setEncodedTypedValue:(id)a3;
- (void)setFilePath:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBFillToolFileParameterCommand

- (_SFPBFillToolFileParameterCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBFillToolFileParameterCommand *)self init];
  if (v5)
  {
    v6 = [v4 encodedTypedValue];

    if (v6)
    {
      v7 = [v4 encodedTypedValue];
      [(_SFPBFillToolFileParameterCommand *)v5 setEncodedTypedValue:v7];
    }

    v8 = [v4 filePath];

    if (v8)
    {
      v9 = [v4 filePath];
      [(_SFPBFillToolFileParameterCommand *)v5 setFilePath:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBFillToolFileParameterCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFPBFillToolFileParameterCommand;
  v5 = [(_SFPBFillToolFileParameterCommand *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"encodedTypedValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(_SFPBFillToolFileParameterCommand *)v5 setEncodedTypedValue:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"filePath"];
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

- (_SFPBFillToolFileParameterCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBFillToolFileParameterCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBFillToolFileParameterCommand *)self dictionaryRepresentation];
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
  if (self->_encodedTypedValue)
  {
    v4 = [(_SFPBFillToolFileParameterCommand *)self encodedTypedValue];
    v5 = [v4 base64EncodedStringWithOptions:0];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"encodedTypedValue"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"encodedTypedValue"];
    }
  }

  if (self->_filePath)
  {
    v7 = [(_SFPBFillToolFileParameterCommand *)self filePath];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"filePath"];
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

  v5 = [(_SFPBFillToolFileParameterCommand *)self encodedTypedValue];
  v6 = [v4 encodedTypedValue];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBFillToolFileParameterCommand *)self encodedTypedValue];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBFillToolFileParameterCommand *)self encodedTypedValue];
    v10 = [v4 encodedTypedValue];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBFillToolFileParameterCommand *)self filePath];
  v6 = [v4 filePath];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBFillToolFileParameterCommand *)self filePath];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBFillToolFileParameterCommand *)self filePath];
    v15 = [v4 filePath];
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
  v4 = [(_SFPBFillToolFileParameterCommand *)self encodedTypedValue];
  if (v4)
  {
    PBDataWriterWriteDataField();
  }

  v5 = [(_SFPBFillToolFileParameterCommand *)self filePath];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setFilePath:(id)a3
{
  v4 = [a3 copy];
  filePath = self->_filePath;
  self->_filePath = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setEncodedTypedValue:(id)a3
{
  v4 = [a3 copy];
  encodedTypedValue = self->_encodedTypedValue;
  self->_encodedTypedValue = v4;

  MEMORY[0x1EEE66BB8]();
}

@end
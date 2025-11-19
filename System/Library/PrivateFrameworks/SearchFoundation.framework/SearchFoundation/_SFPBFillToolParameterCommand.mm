@interface _SFPBFillToolParameterCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBFillToolParameterCommand)initWithDictionary:(id)a3;
- (_SFPBFillToolParameterCommand)initWithFacade:(id)a3;
- (_SFPBFillToolParameterCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setEncodedTypedValue:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBFillToolParameterCommand

- (_SFPBFillToolParameterCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBFillToolParameterCommand *)self init];
  if (v5)
  {
    v6 = [v4 encodedTypedValue];

    if (v6)
    {
      v7 = [v4 encodedTypedValue];
      [(_SFPBFillToolParameterCommand *)v5 setEncodedTypedValue:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBFillToolParameterCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _SFPBFillToolParameterCommand;
  v5 = [(_SFPBFillToolParameterCommand *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"encodedTypedValue"];
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

- (_SFPBFillToolParameterCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBFillToolParameterCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBFillToolParameterCommand *)self dictionaryRepresentation];
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
    v4 = [(_SFPBFillToolParameterCommand *)self encodedTypedValue];
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

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBFillToolParameterCommand *)self encodedTypedValue];
    v6 = [v4 encodedTypedValue];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBFillToolParameterCommand *)self encodedTypedValue];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBFillToolParameterCommand *)self encodedTypedValue];
      v11 = [v4 encodedTypedValue];
      v12 = [v10 isEqual:v11];

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

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(_SFPBFillToolParameterCommand *)self encodedTypedValue];
  if (v4)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)setEncodedTypedValue:(id)a3
{
  v4 = [a3 copy];
  encodedTypedValue = self->_encodedTypedValue;
  self->_encodedTypedValue = v4;

  MEMORY[0x1EEE66BB8]();
}

@end
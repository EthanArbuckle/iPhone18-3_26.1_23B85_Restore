@interface _SFPBFillToolAppEntityParameterCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBFillToolAppEntityParameterCommand)initWithDictionary:(id)a3;
- (_SFPBFillToolAppEntityParameterCommand)initWithFacade:(id)a3;
- (_SFPBFillToolAppEntityParameterCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setEncodedTypedValue:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBFillToolAppEntityParameterCommand

- (_SFPBFillToolAppEntityParameterCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBFillToolAppEntityParameterCommand *)self init];
  if (v5)
  {
    v6 = [v4 encodedTypedValue];

    if (v6)
    {
      v7 = [v4 encodedTypedValue];
      [(_SFPBFillToolAppEntityParameterCommand *)v5 setEncodedTypedValue:v7];
    }

    v8 = [v4 entity];

    if (v8)
    {
      v9 = [_SFPBAppEntityAnnotation alloc];
      v10 = [v4 entity];
      v11 = [(_SFPBAppEntityAnnotation *)v9 initWithFacade:v10];
      [(_SFPBFillToolAppEntityParameterCommand *)v5 setEntity:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBFillToolAppEntityParameterCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFPBFillToolAppEntityParameterCommand;
  v5 = [(_SFPBFillToolAppEntityParameterCommand *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"encodedTypedValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(_SFPBFillToolAppEntityParameterCommand *)v5 setEncodedTypedValue:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"entity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBAppEntityAnnotation alloc] initWithDictionary:v8];
      [(_SFPBFillToolAppEntityParameterCommand *)v5 setEntity:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBFillToolAppEntityParameterCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBFillToolAppEntityParameterCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBFillToolAppEntityParameterCommand *)self dictionaryRepresentation];
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
    v4 = [(_SFPBFillToolAppEntityParameterCommand *)self encodedTypedValue];
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

  if (self->_entity)
  {
    v7 = [(_SFPBFillToolAppEntityParameterCommand *)self entity];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"entity"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"entity"];
    }
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

  v5 = [(_SFPBFillToolAppEntityParameterCommand *)self encodedTypedValue];
  v6 = [v4 encodedTypedValue];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBFillToolAppEntityParameterCommand *)self encodedTypedValue];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBFillToolAppEntityParameterCommand *)self encodedTypedValue];
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

  v5 = [(_SFPBFillToolAppEntityParameterCommand *)self entity];
  v6 = [v4 entity];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBFillToolAppEntityParameterCommand *)self entity];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBFillToolAppEntityParameterCommand *)self entity];
    v15 = [v4 entity];
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
  v4 = [(_SFPBFillToolAppEntityParameterCommand *)self encodedTypedValue];
  if (v4)
  {
    PBDataWriterWriteDataField();
  }

  v5 = [(_SFPBFillToolAppEntityParameterCommand *)self entity];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
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
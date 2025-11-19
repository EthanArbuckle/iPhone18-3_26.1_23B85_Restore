@interface _SFPBExecuteToolCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBExecuteToolCommand)initWithDictionary:(id)a3;
- (_SFPBExecuteToolCommand)initWithFacade:(id)a3;
- (_SFPBExecuteToolCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setToolIdentifier:(id)a3;
- (void)setToolInvocationData:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBExecuteToolCommand

- (_SFPBExecuteToolCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBExecuteToolCommand *)self init];
  if (v5)
  {
    v6 = [v4 toolIdentifier];

    if (v6)
    {
      v7 = [v4 toolIdentifier];
      [(_SFPBExecuteToolCommand *)v5 setToolIdentifier:v7];
    }

    v8 = [v4 toolInvocationData];

    if (v8)
    {
      v9 = [v4 toolInvocationData];
      [(_SFPBExecuteToolCommand *)v5 setToolInvocationData:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBExecuteToolCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFPBExecuteToolCommand;
  v5 = [(_SFPBExecuteToolCommand *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"toolIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBExecuteToolCommand *)v5 setToolIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"toolInvocationData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
      [(_SFPBExecuteToolCommand *)v5 setToolInvocationData:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBExecuteToolCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBExecuteToolCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBExecuteToolCommand *)self dictionaryRepresentation];
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
  if (self->_toolIdentifier)
  {
    v4 = [(_SFPBExecuteToolCommand *)self toolIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"toolIdentifier"];
  }

  if (self->_toolInvocationData)
  {
    v6 = [(_SFPBExecuteToolCommand *)self toolInvocationData];
    v7 = [v6 base64EncodedStringWithOptions:0];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"toolInvocationData"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"toolInvocationData"];
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

  v5 = [(_SFPBExecuteToolCommand *)self toolIdentifier];
  v6 = [v4 toolIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBExecuteToolCommand *)self toolIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBExecuteToolCommand *)self toolIdentifier];
    v10 = [v4 toolIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBExecuteToolCommand *)self toolInvocationData];
  v6 = [v4 toolInvocationData];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBExecuteToolCommand *)self toolInvocationData];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBExecuteToolCommand *)self toolInvocationData];
    v15 = [v4 toolInvocationData];
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
  v4 = [(_SFPBExecuteToolCommand *)self toolIdentifier];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBExecuteToolCommand *)self toolInvocationData];
  if (v5)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)setToolInvocationData:(id)a3
{
  v4 = [a3 copy];
  toolInvocationData = self->_toolInvocationData;
  self->_toolInvocationData = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setToolIdentifier:(id)a3
{
  v4 = [a3 copy];
  toolIdentifier = self->_toolIdentifier;
  self->_toolIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end
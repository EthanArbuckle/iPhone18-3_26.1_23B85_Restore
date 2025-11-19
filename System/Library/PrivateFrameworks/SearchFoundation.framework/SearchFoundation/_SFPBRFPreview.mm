@interface _SFPBRFPreview
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFPreview)initWithDictionary:(id)a3;
- (_SFPBRFPreview)initWithFacade:(id)a3;
- (_SFPBRFPreview)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setText:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFPreview

- (_SFPBRFPreview)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFPreview *)self init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [v4 text];
      [(_SFPBRFPreview *)v5 setText:v7];
    }

    v8 = [v4 command_reference];

    if (v8)
    {
      v9 = [_SFPBCommandReference alloc];
      v10 = [v4 command_reference];
      v11 = [(_SFPBCommandReference *)v9 initWithFacade:v10];
      [(_SFPBRFPreview *)v5 setCommand_reference:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBRFPreview)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFPBRFPreview;
  v5 = [(_SFPBRFPreview *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBRFPreview *)v5 setText:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"commandReference"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBCommandReference alloc] initWithDictionary:v8];
      [(_SFPBRFPreview *)v5 setCommand_reference:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFPreview)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFPreview *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFPreview *)self dictionaryRepresentation];
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
  if (self->_command_reference)
  {
    v4 = [(_SFPBRFPreview *)self command_reference];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"commandReference"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"commandReference"];
    }
  }

  if (self->_text)
  {
    v7 = [(_SFPBRFPreview *)self text];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"text"];
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

  v5 = [(_SFPBRFPreview *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBRFPreview *)self text];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFPreview *)self text];
    v10 = [v4 text];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFPreview *)self command_reference];
  v6 = [v4 command_reference];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBRFPreview *)self command_reference];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBRFPreview *)self command_reference];
    v15 = [v4 command_reference];
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
  v4 = [(_SFPBRFPreview *)self text];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBRFPreview *)self command_reference];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setText:(id)a3
{
  v4 = [a3 copy];
  text = self->_text;
  self->_text = v4;

  MEMORY[0x1EEE66BB8]();
}

@end
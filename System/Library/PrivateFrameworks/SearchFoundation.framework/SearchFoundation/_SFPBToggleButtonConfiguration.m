@interface _SFPBToggleButtonConfiguration
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBToggleButtonConfiguration)initWithDictionary:(id)a3;
- (_SFPBToggleButtonConfiguration)initWithFacade:(id)a3;
- (_SFPBToggleButtonConfiguration)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setToggledTitle:(id)a3;
- (void)setUntoggledTitle:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBToggleButtonConfiguration

- (_SFPBToggleButtonConfiguration)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBToggleButtonConfiguration *)self init];
  if (v5)
  {
    v6 = [v4 untoggledTitle];

    if (v6)
    {
      v7 = [v4 untoggledTitle];
      [(_SFPBToggleButtonConfiguration *)v5 setUntoggledTitle:v7];
    }

    v8 = [v4 toggledTitle];

    if (v8)
    {
      v9 = [v4 toggledTitle];
      [(_SFPBToggleButtonConfiguration *)v5 setToggledTitle:v9];
    }

    v10 = [v4 untoggledImage];

    if (v10)
    {
      v11 = [_SFPBImage alloc];
      v12 = [v4 untoggledImage];
      v13 = [(_SFPBImage *)v11 initWithFacade:v12];
      [(_SFPBToggleButtonConfiguration *)v5 setUntoggledImage:v13];
    }

    v14 = [v4 toggledImage];

    if (v14)
    {
      v15 = [_SFPBImage alloc];
      v16 = [v4 toggledImage];
      v17 = [(_SFPBImage *)v15 initWithFacade:v16];
      [(_SFPBToggleButtonConfiguration *)v5 setToggledImage:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBToggleButtonConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _SFPBToggleButtonConfiguration;
  v5 = [(_SFPBToggleButtonConfiguration *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"untoggledTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBToggleButtonConfiguration *)v5 setUntoggledTitle:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"toggledTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBToggleButtonConfiguration *)v5 setToggledTitle:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"untoggledImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBImage alloc] initWithDictionary:v10];
      [(_SFPBToggleButtonConfiguration *)v5 setUntoggledImage:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"toggledImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBImage alloc] initWithDictionary:v12];
      [(_SFPBToggleButtonConfiguration *)v5 setToggledImage:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBToggleButtonConfiguration)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBToggleButtonConfiguration *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBToggleButtonConfiguration *)self dictionaryRepresentation];
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
  if (self->_toggledImage)
  {
    v4 = [(_SFPBToggleButtonConfiguration *)self toggledImage];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"toggledImage"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"toggledImage"];
    }
  }

  if (self->_toggledTitle)
  {
    v7 = [(_SFPBToggleButtonConfiguration *)self toggledTitle];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"toggledTitle"];
  }

  if (self->_untoggledImage)
  {
    v9 = [(_SFPBToggleButtonConfiguration *)self untoggledImage];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"untoggledImage"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"untoggledImage"];
    }
  }

  if (self->_untoggledTitle)
  {
    v12 = [(_SFPBToggleButtonConfiguration *)self untoggledTitle];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"untoggledTitle"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_untoggledTitle hash];
  v4 = [(NSString *)self->_toggledTitle hash]^ v3;
  v5 = [(_SFPBImage *)self->_untoggledImage hash];
  return v4 ^ v5 ^ [(_SFPBImage *)self->_toggledImage hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_SFPBToggleButtonConfiguration *)self untoggledTitle];
  v6 = [v4 untoggledTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_SFPBToggleButtonConfiguration *)self untoggledTitle];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBToggleButtonConfiguration *)self untoggledTitle];
    v10 = [v4 untoggledTitle];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBToggleButtonConfiguration *)self toggledTitle];
  v6 = [v4 toggledTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_SFPBToggleButtonConfiguration *)self toggledTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBToggleButtonConfiguration *)self toggledTitle];
    v15 = [v4 toggledTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBToggleButtonConfiguration *)self untoggledImage];
  v6 = [v4 untoggledImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_SFPBToggleButtonConfiguration *)self untoggledImage];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBToggleButtonConfiguration *)self untoggledImage];
    v20 = [v4 untoggledImage];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBToggleButtonConfiguration *)self toggledImage];
  v6 = [v4 toggledImage];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_SFPBToggleButtonConfiguration *)self toggledImage];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_SFPBToggleButtonConfiguration *)self toggledImage];
    v25 = [v4 toggledImage];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_SFPBToggleButtonConfiguration *)self untoggledTitle];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBToggleButtonConfiguration *)self toggledTitle];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBToggleButtonConfiguration *)self untoggledImage];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBToggleButtonConfiguration *)self toggledImage];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setToggledTitle:(id)a3
{
  v4 = [a3 copy];
  toggledTitle = self->_toggledTitle;
  self->_toggledTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setUntoggledTitle:(id)a3
{
  v4 = [a3 copy];
  untoggledTitle = self->_untoggledTitle;
  self->_untoggledTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

@end
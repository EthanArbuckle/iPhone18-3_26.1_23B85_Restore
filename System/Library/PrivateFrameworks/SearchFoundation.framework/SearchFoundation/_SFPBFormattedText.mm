@interface _SFPBFormattedText
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBFormattedText)initWithDictionary:(id)a3;
- (_SFPBFormattedText)initWithFacade:(id)a3;
- (_SFPBFormattedText)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBFormattedText

- (_SFPBFormattedText)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBFormattedText *)self init];
  if (v5)
  {
    v6 = [[_SFPBText alloc] initWithFacade:v4];
    [(_SFPBFormattedText *)v5 setText:v6];

    v7 = [v4 glyph];

    if (v7)
    {
      v8 = [_SFPBImage alloc];
      v9 = [v4 glyph];
      v10 = [(_SFPBImage *)v8 initWithFacade:v9];
      [(_SFPBFormattedText *)v5 setGlyph:v10];
    }

    if ([v4 hasIsEmphasized])
    {
      -[_SFPBFormattedText setIsEmphasized:](v5, "setIsEmphasized:", [v4 isEmphasized]);
    }

    if ([v4 hasIsBold])
    {
      -[_SFPBFormattedText setIsBold:](v5, "setIsBold:", [v4 isBold]);
    }

    if ([v4 hasTextColor])
    {
      -[_SFPBFormattedText setTextColor:](v5, "setTextColor:", [v4 textColor]);
    }

    if ([v4 hasEncapsulationStyle])
    {
      -[_SFPBFormattedText setEncapsulationStyle:](v5, "setEncapsulationStyle:", [v4 encapsulationStyle]);
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBFormattedText)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _SFPBFormattedText;
  v5 = [(_SFPBFormattedText *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBText alloc] initWithDictionary:v6];
      [(_SFPBFormattedText *)v5 setText:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"glyph"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBImage alloc] initWithDictionary:v8];
      [(_SFPBFormattedText *)v5 setGlyph:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"isEmphasized"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBFormattedText setIsEmphasized:](v5, "setIsEmphasized:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"isBold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBFormattedText setIsBold:](v5, "setIsBold:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"textColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBFormattedText setTextColor:](v5, "setTextColor:", [v12 intValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"encapsulationStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBFormattedText setEncapsulationStyle:](v5, "setEncapsulationStyle:", [v13 intValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBFormattedText)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBFormattedText *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBFormattedText *)self dictionaryRepresentation];
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
  if (self->_encapsulationStyle)
  {
    v4 = [(_SFPBFormattedText *)self encapsulationStyle];
    if (v4 >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7ACE548[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"encapsulationStyle"];
  }

  if (self->_glyph)
  {
    v6 = [(_SFPBFormattedText *)self glyph];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"glyph"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"glyph"];
    }
  }

  if (self->_isBold)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBFormattedText isBold](self, "isBold")}];
    [v3 setObject:v9 forKeyedSubscript:@"isBold"];
  }

  if (self->_isEmphasized)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBFormattedText isEmphasized](self, "isEmphasized")}];
    [v3 setObject:v10 forKeyedSubscript:@"isEmphasized"];
  }

  if (self->_text)
  {
    v11 = [(_SFPBFormattedText *)self text];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"text"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"text"];
    }
  }

  if (self->_textColor)
  {
    v14 = [(_SFPBFormattedText *)self textColor];
    if (v14 >= 8)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v14];
    }

    else
    {
      v15 = off_1E7ACE470[v14];
    }

    [v3 setObject:v15 forKeyedSubscript:@"textColor"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBText *)self->_text hash];
  v4 = [(_SFPBImage *)self->_glyph hash];
  if (self->_isEmphasized)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  if (self->_isBold)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ (2654435761 * self->_textColor) ^ (2654435761 * self->_encapsulationStyle);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_SFPBFormattedText *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBFormattedText *)self text];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBFormattedText *)self text];
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

  v5 = [(_SFPBFormattedText *)self glyph];
  v6 = [v4 glyph];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(_SFPBFormattedText *)self glyph];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBFormattedText *)self glyph];
    v15 = [v4 glyph];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  isEmphasized = self->_isEmphasized;
  if (isEmphasized == [v4 isEmphasized])
  {
    isBold = self->_isBold;
    if (isBold == [v4 isBold])
    {
      textColor = self->_textColor;
      if (textColor == [v4 textColor])
      {
        encapsulationStyle = self->_encapsulationStyle;
        v17 = encapsulationStyle == [v4 encapsulationStyle];
        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_SFPBFormattedText *)self text];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBFormattedText *)self glyph];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBFormattedText *)self isEmphasized])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBFormattedText *)self isBold])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBFormattedText *)self textColor])
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(_SFPBFormattedText *)self encapsulationStyle];
  v7 = v8;
  if (v6)
  {
    PBDataWriterWriteInt32Field();
    v7 = v8;
  }
}

@end
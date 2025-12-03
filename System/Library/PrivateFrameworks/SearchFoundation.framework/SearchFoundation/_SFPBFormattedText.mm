@interface _SFPBFormattedText
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBFormattedText)initWithDictionary:(id)dictionary;
- (_SFPBFormattedText)initWithFacade:(id)facade;
- (_SFPBFormattedText)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBFormattedText

- (_SFPBFormattedText)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBFormattedText *)self init];
  if (v5)
  {
    v6 = [[_SFPBText alloc] initWithFacade:facadeCopy];
    [(_SFPBFormattedText *)v5 setText:v6];

    glyph = [facadeCopy glyph];

    if (glyph)
    {
      v8 = [_SFPBImage alloc];
      glyph2 = [facadeCopy glyph];
      v10 = [(_SFPBImage *)v8 initWithFacade:glyph2];
      [(_SFPBFormattedText *)v5 setGlyph:v10];
    }

    if ([facadeCopy hasIsEmphasized])
    {
      -[_SFPBFormattedText setIsEmphasized:](v5, "setIsEmphasized:", [facadeCopy isEmphasized]);
    }

    if ([facadeCopy hasIsBold])
    {
      -[_SFPBFormattedText setIsBold:](v5, "setIsBold:", [facadeCopy isBold]);
    }

    if ([facadeCopy hasTextColor])
    {
      -[_SFPBFormattedText setTextColor:](v5, "setTextColor:", [facadeCopy textColor]);
    }

    if ([facadeCopy hasEncapsulationStyle])
    {
      -[_SFPBFormattedText setEncapsulationStyle:](v5, "setEncapsulationStyle:", [facadeCopy encapsulationStyle]);
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBFormattedText)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = _SFPBFormattedText;
  v5 = [(_SFPBFormattedText *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBText alloc] initWithDictionary:v6];
      [(_SFPBFormattedText *)v5 setText:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"glyph"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBImage alloc] initWithDictionary:v8];
      [(_SFPBFormattedText *)v5 setGlyph:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isEmphasized"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBFormattedText setIsEmphasized:](v5, "setIsEmphasized:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isBold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBFormattedText setIsBold:](v5, "setIsBold:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"textColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBFormattedText setTextColor:](v5, "setTextColor:", [v12 intValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"encapsulationStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBFormattedText setEncapsulationStyle:](v5, "setEncapsulationStyle:", [v13 intValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBFormattedText)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBFormattedText *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBFormattedText *)self dictionaryRepresentation];
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
  if (self->_encapsulationStyle)
  {
    encapsulationStyle = [(_SFPBFormattedText *)self encapsulationStyle];
    if (encapsulationStyle >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", encapsulationStyle];
    }

    else
    {
      v5 = off_1E7ACE548[encapsulationStyle];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"encapsulationStyle"];
  }

  if (self->_glyph)
  {
    glyph = [(_SFPBFormattedText *)self glyph];
    dictionaryRepresentation = [glyph dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"glyph"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"glyph"];
    }
  }

  if (self->_isBold)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBFormattedText isBold](self, "isBold")}];
    [dictionary setObject:v9 forKeyedSubscript:@"isBold"];
  }

  if (self->_isEmphasized)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBFormattedText isEmphasized](self, "isEmphasized")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isEmphasized"];
  }

  if (self->_text)
  {
    text = [(_SFPBFormattedText *)self text];
    dictionaryRepresentation2 = [text dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"text"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"text"];
    }
  }

  if (self->_textColor)
  {
    textColor = [(_SFPBFormattedText *)self textColor];
    if (textColor >= 8)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", textColor];
    }

    else
    {
      v15 = off_1E7ACE470[textColor];
    }

    [dictionary setObject:v15 forKeyedSubscript:@"textColor"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  text = [(_SFPBFormattedText *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_11;
  }

  text3 = [(_SFPBFormattedText *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBFormattedText *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  text = [(_SFPBFormattedText *)self glyph];
  text2 = [equalCopy glyph];
  if ((text != 0) == (text2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  glyph = [(_SFPBFormattedText *)self glyph];
  if (glyph)
  {
    v13 = glyph;
    glyph2 = [(_SFPBFormattedText *)self glyph];
    glyph3 = [equalCopy glyph];
    v16 = [glyph2 isEqual:glyph3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  isEmphasized = self->_isEmphasized;
  if (isEmphasized == [equalCopy isEmphasized])
  {
    isBold = self->_isBold;
    if (isBold == [equalCopy isBold])
    {
      textColor = self->_textColor;
      if (textColor == [equalCopy textColor])
      {
        encapsulationStyle = self->_encapsulationStyle;
        v17 = encapsulationStyle == [equalCopy encapsulationStyle];
        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  text = [(_SFPBFormattedText *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  glyph = [(_SFPBFormattedText *)self glyph];
  if (glyph)
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

  encapsulationStyle = [(_SFPBFormattedText *)self encapsulationStyle];
  v7 = toCopy;
  if (encapsulationStyle)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }
}

@end
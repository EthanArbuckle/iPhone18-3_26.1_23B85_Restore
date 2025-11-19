@interface _SFPBSymbolImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBSymbolImage)initWithDictionary:(id)a3;
- (_SFPBSymbolImage)initWithFacade:(id)a3;
- (_SFPBSymbolImage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setSymbolName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBSymbolImage

- (_SFPBSymbolImage)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBSymbolImage *)self init];
  if (v5)
  {
    v6 = [v4 symbolName];

    if (v6)
    {
      v7 = [v4 symbolName];
      [(_SFPBSymbolImage *)v5 setSymbolName:v7];
    }

    if ([v4 hasPunchThroughBackground])
    {
      -[_SFPBSymbolImage setPunchThroughBackground:](v5, "setPunchThroughBackground:", [v4 punchThroughBackground]);
    }

    if ([v4 hasBackgroundColor])
    {
      -[_SFPBSymbolImage setBackgroundColor:](v5, "setBackgroundColor:", [v4 backgroundColor]);
    }

    if ([v4 hasPrimaryColor])
    {
      -[_SFPBSymbolImage setPrimaryColor:](v5, "setPrimaryColor:", [v4 primaryColor]);
    }

    if ([v4 hasSecondaryColor])
    {
      -[_SFPBSymbolImage setSecondaryColor:](v5, "setSecondaryColor:", [v4 secondaryColor]);
    }

    if ([v4 hasFillStyle])
    {
      -[_SFPBSymbolImage setFillStyle:](v5, "setFillStyle:", [v4 fillStyle]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBSymbolImage)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _SFPBSymbolImage;
  v5 = [(_SFPBSymbolImage *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"symbolName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBSymbolImage *)v5 setSymbolName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"punchThroughBackground"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSymbolImage setPunchThroughBackground:](v5, "setPunchThroughBackground:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSymbolImage setBackgroundColor:](v5, "setBackgroundColor:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"primaryColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSymbolImage setPrimaryColor:](v5, "setPrimaryColor:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"secondaryColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSymbolImage setSecondaryColor:](v5, "setSecondaryColor:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"fillStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSymbolImage setFillStyle:](v5, "setFillStyle:", [v12 intValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (_SFPBSymbolImage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBSymbolImage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBSymbolImage *)self dictionaryRepresentation];
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
  if (self->_backgroundColor)
  {
    v4 = [(_SFPBSymbolImage *)self backgroundColor];
    if (v4 >= 8)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7ACE470[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"backgroundColor"];
  }

  if (self->_fillStyle)
  {
    v6 = [(_SFPBSymbolImage *)self fillStyle];
    if (v6 >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E7ACE548[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"fillStyle"];
  }

  if (self->_primaryColor)
  {
    v8 = [(_SFPBSymbolImage *)self primaryColor];
    if (v8 >= 8)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    else
    {
      v9 = off_1E7ACE470[v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"primaryColor"];
  }

  if (self->_punchThroughBackground)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSymbolImage punchThroughBackground](self, "punchThroughBackground")}];
    [v3 setObject:v10 forKeyedSubscript:@"punchThroughBackground"];
  }

  if (self->_secondaryColor)
  {
    v11 = [(_SFPBSymbolImage *)self secondaryColor];
    if (v11 >= 8)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v11];
    }

    else
    {
      v12 = off_1E7ACE470[v11];
    }

    [v3 setObject:v12 forKeyedSubscript:@"secondaryColor"];
  }

  if (self->_symbolName)
  {
    v13 = [(_SFPBSymbolImage *)self symbolName];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"symbolName"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_symbolName hash];
  if (self->_punchThroughBackground)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ (2654435761 * self->_backgroundColor) ^ (2654435761 * self->_primaryColor) ^ (2654435761 * self->_secondaryColor) ^ (2654435761 * self->_fillStyle);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = [(_SFPBSymbolImage *)self symbolName];
  v6 = [v4 symbolName];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  v8 = [(_SFPBSymbolImage *)self symbolName];
  if (v8)
  {
    v9 = v8;
    v10 = [(_SFPBSymbolImage *)self symbolName];
    v11 = [v4 symbolName];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  punchThroughBackground = self->_punchThroughBackground;
  if (punchThroughBackground != [v4 punchThroughBackground])
  {
    goto LABEL_13;
  }

  backgroundColor = self->_backgroundColor;
  if (backgroundColor != [v4 backgroundColor])
  {
    goto LABEL_13;
  }

  primaryColor = self->_primaryColor;
  if (primaryColor != [v4 primaryColor])
  {
    goto LABEL_13;
  }

  secondaryColor = self->_secondaryColor;
  if (secondaryColor != [v4 secondaryColor])
  {
    goto LABEL_13;
  }

  fillStyle = self->_fillStyle;
  v18 = fillStyle == [v4 fillStyle];
LABEL_14:

  return v18;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(_SFPBSymbolImage *)self symbolName];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBSymbolImage *)self punchThroughBackground])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBSymbolImage *)self backgroundColor])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBSymbolImage *)self primaryColor])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBSymbolImage *)self secondaryColor])
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_SFPBSymbolImage *)self fillStyle];
  v6 = v7;
  if (v5)
  {
    PBDataWriterWriteInt32Field();
    v6 = v7;
  }
}

- (void)setSymbolName:(id)a3
{
  v4 = [a3 copy];
  symbolName = self->_symbolName;
  self->_symbolName = v4;

  MEMORY[0x1EEE66BB8]();
}

@end
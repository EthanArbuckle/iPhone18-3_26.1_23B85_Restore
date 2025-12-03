@interface _SFPBSymbolImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBSymbolImage)initWithDictionary:(id)dictionary;
- (_SFPBSymbolImage)initWithFacade:(id)facade;
- (_SFPBSymbolImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setSymbolName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _SFPBSymbolImage

- (_SFPBSymbolImage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBSymbolImage *)self init];
  if (v5)
  {
    symbolName = [facadeCopy symbolName];

    if (symbolName)
    {
      symbolName2 = [facadeCopy symbolName];
      [(_SFPBSymbolImage *)v5 setSymbolName:symbolName2];
    }

    if ([facadeCopy hasPunchThroughBackground])
    {
      -[_SFPBSymbolImage setPunchThroughBackground:](v5, "setPunchThroughBackground:", [facadeCopy punchThroughBackground]);
    }

    if ([facadeCopy hasBackgroundColor])
    {
      -[_SFPBSymbolImage setBackgroundColor:](v5, "setBackgroundColor:", [facadeCopy backgroundColor]);
    }

    if ([facadeCopy hasPrimaryColor])
    {
      -[_SFPBSymbolImage setPrimaryColor:](v5, "setPrimaryColor:", [facadeCopy primaryColor]);
    }

    if ([facadeCopy hasSecondaryColor])
    {
      -[_SFPBSymbolImage setSecondaryColor:](v5, "setSecondaryColor:", [facadeCopy secondaryColor]);
    }

    if ([facadeCopy hasFillStyle])
    {
      -[_SFPBSymbolImage setFillStyle:](v5, "setFillStyle:", [facadeCopy fillStyle]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBSymbolImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = _SFPBSymbolImage;
  v5 = [(_SFPBSymbolImage *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"symbolName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBSymbolImage *)v5 setSymbolName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"punchThroughBackground"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSymbolImage setPunchThroughBackground:](v5, "setPunchThroughBackground:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSymbolImage setBackgroundColor:](v5, "setBackgroundColor:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"primaryColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSymbolImage setPrimaryColor:](v5, "setPrimaryColor:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"secondaryColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSymbolImage setSecondaryColor:](v5, "setSecondaryColor:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"fillStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSymbolImage setFillStyle:](v5, "setFillStyle:", [v12 intValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (_SFPBSymbolImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBSymbolImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBSymbolImage *)self dictionaryRepresentation];
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
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBSymbolImage *)self backgroundColor];
    if (backgroundColor >= 8)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", backgroundColor];
    }

    else
    {
      v5 = off_1E7ACE470[backgroundColor];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"backgroundColor"];
  }

  if (self->_fillStyle)
  {
    fillStyle = [(_SFPBSymbolImage *)self fillStyle];
    if (fillStyle >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", fillStyle];
    }

    else
    {
      v7 = off_1E7ACE548[fillStyle];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"fillStyle"];
  }

  if (self->_primaryColor)
  {
    primaryColor = [(_SFPBSymbolImage *)self primaryColor];
    if (primaryColor >= 8)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", primaryColor];
    }

    else
    {
      v9 = off_1E7ACE470[primaryColor];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"primaryColor"];
  }

  if (self->_punchThroughBackground)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSymbolImage punchThroughBackground](self, "punchThroughBackground")}];
    [dictionary setObject:v10 forKeyedSubscript:@"punchThroughBackground"];
  }

  if (self->_secondaryColor)
  {
    secondaryColor = [(_SFPBSymbolImage *)self secondaryColor];
    if (secondaryColor >= 8)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", secondaryColor];
    }

    else
    {
      v12 = off_1E7ACE470[secondaryColor];
    }

    [dictionary setObject:v12 forKeyedSubscript:@"secondaryColor"];
  }

  if (self->_symbolName)
  {
    symbolName = [(_SFPBSymbolImage *)self symbolName];
    v14 = [symbolName copy];
    [dictionary setObject:v14 forKeyedSubscript:@"symbolName"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  symbolName = [(_SFPBSymbolImage *)self symbolName];
  symbolName2 = [equalCopy symbolName];
  v7 = symbolName2;
  if ((symbolName != 0) == (symbolName2 == 0))
  {

LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  symbolName3 = [(_SFPBSymbolImage *)self symbolName];
  if (symbolName3)
  {
    v9 = symbolName3;
    symbolName4 = [(_SFPBSymbolImage *)self symbolName];
    symbolName5 = [equalCopy symbolName];
    v12 = [symbolName4 isEqual:symbolName5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  punchThroughBackground = self->_punchThroughBackground;
  if (punchThroughBackground != [equalCopy punchThroughBackground])
  {
    goto LABEL_13;
  }

  backgroundColor = self->_backgroundColor;
  if (backgroundColor != [equalCopy backgroundColor])
  {
    goto LABEL_13;
  }

  primaryColor = self->_primaryColor;
  if (primaryColor != [equalCopy primaryColor])
  {
    goto LABEL_13;
  }

  secondaryColor = self->_secondaryColor;
  if (secondaryColor != [equalCopy secondaryColor])
  {
    goto LABEL_13;
  }

  fillStyle = self->_fillStyle;
  v18 = fillStyle == [equalCopy fillStyle];
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  symbolName = [(_SFPBSymbolImage *)self symbolName];
  if (symbolName)
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

  fillStyle = [(_SFPBSymbolImage *)self fillStyle];
  v6 = toCopy;
  if (fillStyle)
  {
    PBDataWriterWriteInt32Field();
    v6 = toCopy;
  }
}

- (void)setSymbolName:(id)name
{
  v4 = [name copy];
  symbolName = self->_symbolName;
  self->_symbolName = v4;

  MEMORY[0x1EEE66BB8]();
}

@end
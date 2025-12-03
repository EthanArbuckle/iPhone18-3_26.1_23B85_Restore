@interface _SFPBRFSymbolImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFSymbolImage)initWithDictionary:(id)dictionary;
- (_SFPBRFSymbolImage)initWithFacade:(id)facade;
- (_SFPBRFSymbolImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFSymbolImage

- (_SFPBRFSymbolImage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFSymbolImage *)self init];
  if (v5)
  {
    name = [facadeCopy name];

    if (name)
    {
      name2 = [facadeCopy name];
      [(_SFPBRFSymbolImage *)v5 setName:name2];
    }

    primary_color = [facadeCopy primary_color];

    if (primary_color)
    {
      v9 = [_SFPBRFColor alloc];
      primary_color2 = [facadeCopy primary_color];
      v11 = [(_SFPBRFColor *)v9 initWithFacade:primary_color2];
      [(_SFPBRFSymbolImage *)v5 setPrimary_color:v11];
    }

    secondary_color = [facadeCopy secondary_color];

    if (secondary_color)
    {
      v13 = [_SFPBRFColor alloc];
      secondary_color2 = [facadeCopy secondary_color];
      v15 = [(_SFPBRFColor *)v13 initWithFacade:secondary_color2];
      [(_SFPBRFSymbolImage *)v5 setSecondary_color:v15];
    }

    if ([facadeCopy hasImage_style])
    {
      -[_SFPBRFSymbolImage setImage_style:](v5, "setImage_style:", [facadeCopy image_style]);
    }

    if ([facadeCopy hasSymbol_rendering_mode])
    {
      -[_SFPBRFSymbolImage setSymbol_rendering_mode:](v5, "setSymbol_rendering_mode:", [facadeCopy symbol_rendering_mode]);
    }

    background_color = [facadeCopy background_color];

    if (background_color)
    {
      v17 = [_SFPBRFColor alloc];
      background_color2 = [facadeCopy background_color];
      v19 = [(_SFPBRFColor *)v17 initWithFacade:background_color2];
      [(_SFPBRFSymbolImage *)v5 setBackground_color:v19];
    }

    if ([facadeCopy hasPunches_through_background])
    {
      -[_SFPBRFSymbolImage setPunches_through_background:](v5, "setPunches_through_background:", [facadeCopy punches_through_background]);
    }

    if ([facadeCopy hasVibrancy])
    {
      -[_SFPBRFSymbolImage setVibrancy:](v5, "setVibrancy:", [facadeCopy vibrancy]);
    }

    if ([facadeCopy hasCorner_rounding_mode])
    {
      -[_SFPBRFSymbolImage setCorner_rounding_mode:](v5, "setCorner_rounding_mode:", [facadeCopy corner_rounding_mode]);
    }

    v20 = v5;
  }

  return v5;
}

- (_SFPBRFSymbolImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = _SFPBRFSymbolImage;
  v5 = [(_SFPBRFSymbolImage *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBRFSymbolImage *)v5 setName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"primaryColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFColor alloc] initWithDictionary:v8];
      [(_SFPBRFSymbolImage *)v5 setPrimary_color:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:{@"secondaryColor", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFColor alloc] initWithDictionary:v10];
      [(_SFPBRFSymbolImage *)v5 setSecondary_color:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"imageStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFSymbolImage setImage_style:](v5, "setImage_style:", [v12 intValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"symbolRenderingMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFSymbolImage setSymbol_rendering_mode:](v5, "setSymbol_rendering_mode:", [v13 intValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBRFColor alloc] initWithDictionary:v14];
      [(_SFPBRFSymbolImage *)v5 setBackground_color:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchesThroughBackground"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFSymbolImage setPunches_through_background:](v5, "setPunches_through_background:", [v16 BOOLValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"vibrancy"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFSymbolImage setVibrancy:](v5, "setVibrancy:", [v17 intValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"cornerRoundingMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFSymbolImage setCorner_rounding_mode:](v5, "setCorner_rounding_mode:", [v18 intValue]);
    }

    v19 = v5;
  }

  return v5;
}

- (_SFPBRFSymbolImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFSymbolImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFSymbolImage *)self dictionaryRepresentation];
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
  if (self->_background_color)
  {
    background_color = [(_SFPBRFSymbolImage *)self background_color];
    dictionaryRepresentation = [background_color dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_corner_rounding_mode)
  {
    corner_rounding_mode = [(_SFPBRFSymbolImage *)self corner_rounding_mode];
    if (corner_rounding_mode >= 3)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", corner_rounding_mode];
    }

    else
    {
      v8 = off_1E7ACE548[corner_rounding_mode];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"cornerRoundingMode"];
  }

  if (self->_image_style)
  {
    image_style = [(_SFPBRFSymbolImage *)self image_style];
    if (image_style < 0x2A && ((0x3FFDFFFFFFFuLL >> image_style) & 1) != 0)
    {
      v10 = off_1E7ACE270[image_style];
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", image_style];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"imageStyle"];
  }

  if (self->_name)
  {
    name = [(_SFPBRFSymbolImage *)self name];
    v12 = [name copy];
    [dictionary setObject:v12 forKeyedSubscript:@"name"];
  }

  if (self->_primary_color)
  {
    primary_color = [(_SFPBRFSymbolImage *)self primary_color];
    dictionaryRepresentation2 = [primary_color dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"primaryColor"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"primaryColor"];
    }
  }

  if (self->_punches_through_background)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFSymbolImage punches_through_background](self, "punches_through_background")}];
    [dictionary setObject:v16 forKeyedSubscript:@"punchesThroughBackground"];
  }

  if (self->_secondary_color)
  {
    secondary_color = [(_SFPBRFSymbolImage *)self secondary_color];
    dictionaryRepresentation3 = [secondary_color dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"secondaryColor"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"secondaryColor"];
    }
  }

  if (self->_symbol_rendering_mode)
  {
    symbol_rendering_mode = [(_SFPBRFSymbolImage *)self symbol_rendering_mode];
    if (symbol_rendering_mode >= 5)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", symbol_rendering_mode];
    }

    else
    {
      v21 = off_1E7ACE448[symbol_rendering_mode];
    }

    [dictionary setObject:v21 forKeyedSubscript:@"symbolRenderingMode"];
  }

  if (self->_vibrancy)
  {
    vibrancy = [(_SFPBRFSymbolImage *)self vibrancy];
    if (vibrancy >= 3)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", vibrancy];
    }

    else
    {
      v23 = off_1E7ACE548[vibrancy];
    }

    [dictionary setObject:v23 forKeyedSubscript:@"vibrancy"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(_SFPBRFColor *)self->_primary_color hash];
  v5 = [(_SFPBRFColor *)self->_secondary_color hash];
  v6 = 2654435761 * self->_image_style;
  v7 = 2654435761 * self->_symbol_rendering_mode;
  v8 = [(_SFPBRFColor *)self->_background_color hash];
  if (self->_punches_through_background)
  {
    v9 = 2654435761;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ (2654435761 * self->_vibrancy) ^ (2654435761 * self->_corner_rounding_mode);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  name = [(_SFPBRFSymbolImage *)self name];
  name2 = [equalCopy name];
  if ((name != 0) == (name2 == 0))
  {
    goto LABEL_23;
  }

  name3 = [(_SFPBRFSymbolImage *)self name];
  if (name3)
  {
    v8 = name3;
    name4 = [(_SFPBRFSymbolImage *)self name];
    name5 = [equalCopy name];
    v11 = [name4 isEqual:name5];

    if (!v11)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  name = [(_SFPBRFSymbolImage *)self primary_color];
  name2 = [equalCopy primary_color];
  if ((name != 0) == (name2 == 0))
  {
    goto LABEL_23;
  }

  primary_color = [(_SFPBRFSymbolImage *)self primary_color];
  if (primary_color)
  {
    v13 = primary_color;
    primary_color2 = [(_SFPBRFSymbolImage *)self primary_color];
    primary_color3 = [equalCopy primary_color];
    v16 = [primary_color2 isEqual:primary_color3];

    if (!v16)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  name = [(_SFPBRFSymbolImage *)self secondary_color];
  name2 = [equalCopy secondary_color];
  if ((name != 0) == (name2 == 0))
  {
    goto LABEL_23;
  }

  secondary_color = [(_SFPBRFSymbolImage *)self secondary_color];
  if (secondary_color)
  {
    v18 = secondary_color;
    secondary_color2 = [(_SFPBRFSymbolImage *)self secondary_color];
    secondary_color3 = [equalCopy secondary_color];
    v21 = [secondary_color2 isEqual:secondary_color3];

    if (!v21)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  image_style = self->_image_style;
  if (image_style != [equalCopy image_style])
  {
    goto LABEL_24;
  }

  symbol_rendering_mode = self->_symbol_rendering_mode;
  if (symbol_rendering_mode != [equalCopy symbol_rendering_mode])
  {
    goto LABEL_24;
  }

  name = [(_SFPBRFSymbolImage *)self background_color];
  name2 = [equalCopy background_color];
  if ((name != 0) == (name2 == 0))
  {
LABEL_23:

    goto LABEL_24;
  }

  background_color = [(_SFPBRFSymbolImage *)self background_color];
  if (background_color)
  {
    v25 = background_color;
    background_color2 = [(_SFPBRFSymbolImage *)self background_color];
    background_color3 = [equalCopy background_color];
    v28 = [background_color2 isEqual:background_color3];

    if (!v28)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  punches_through_background = self->_punches_through_background;
  if (punches_through_background == [equalCopy punches_through_background])
  {
    vibrancy = self->_vibrancy;
    if (vibrancy == [equalCopy vibrancy])
    {
      corner_rounding_mode = self->_corner_rounding_mode;
      v29 = corner_rounding_mode == [equalCopy corner_rounding_mode];
      goto LABEL_25;
    }
  }

LABEL_24:
  v29 = 0;
LABEL_25:

  return v29;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  name = [(_SFPBRFSymbolImage *)self name];
  if (name)
  {
    PBDataWriterWriteStringField();
  }

  primary_color = [(_SFPBRFSymbolImage *)self primary_color];
  if (primary_color)
  {
    PBDataWriterWriteSubmessage();
  }

  secondary_color = [(_SFPBRFSymbolImage *)self secondary_color];
  if (secondary_color)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFSymbolImage *)self image_style])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBRFSymbolImage *)self symbol_rendering_mode])
  {
    PBDataWriterWriteInt32Field();
  }

  background_color = [(_SFPBRFSymbolImage *)self background_color];
  if (background_color)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFSymbolImage *)self punches_through_background])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBRFSymbolImage *)self vibrancy])
  {
    PBDataWriterWriteInt32Field();
  }

  corner_rounding_mode = [(_SFPBRFSymbolImage *)self corner_rounding_mode];
  v9 = toCopy;
  if (corner_rounding_mode)
  {
    PBDataWriterWriteInt32Field();
    v9 = toCopy;
  }
}

- (void)setName:(id)name
{
  v4 = [name copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8]();
}

@end
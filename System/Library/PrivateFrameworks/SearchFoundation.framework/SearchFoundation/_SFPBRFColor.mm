@interface _SFPBRFColor
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFColor)initWithDictionary:(id)dictionary;
- (_SFPBRFColor)initWithFacade:(id)facade;
- (_SFPBRFColor)initWithJSON:(id)n;
- (_SFPBRFRGBValue)rgb_value;
- (id)dictionaryRepresentation;
- (int)name;
- (unint64_t)hash;
- (void)setName:(int)name;
- (void)setRgb_value:(id)rgb_value;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFColor

- (_SFPBRFColor)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFColor *)self init];
  if (v5)
  {
    if ([facadeCopy hasRgb_value])
    {
      rgb_value = [facadeCopy rgb_value];

      if (rgb_value)
      {
        v7 = [_SFPBRFRGBValue alloc];
        rgb_value2 = [facadeCopy rgb_value];
        v9 = [(_SFPBRFRGBValue *)v7 initWithFacade:rgb_value2];
        [(_SFPBRFColor *)v5 setRgb_value:v9];
      }
    }

    if ([facadeCopy hasName])
    {
      -[_SFPBRFColor setName:](v5, "setName:", [facadeCopy name]);
    }

    alpha = [facadeCopy alpha];

    if (alpha)
    {
      v11 = [_SFPBRFOptionalFloat alloc];
      alpha2 = [facadeCopy alpha];
      v13 = [(_SFPBRFOptionalFloat *)v11 initWithFacade:alpha2];
      [(_SFPBRFColor *)v5 setAlpha:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBRFColor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = _SFPBRFColor;
  v5 = [(_SFPBRFColor *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rgbValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFRGBValue alloc] initWithDictionary:v6];
      [(_SFPBRFColor *)v5 setRgb_value:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFColor setName:](v5, "setName:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"alpha"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[_SFPBRFOptionalFloat alloc] initWithDictionary:v9];
      [(_SFPBRFColor *)v5 setAlpha:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBRFColor)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFColor *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFColor *)self dictionaryRepresentation];
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
  if (self->_alpha)
  {
    alpha = [(_SFPBRFColor *)self alpha];
    dictionaryRepresentation = [alpha dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"alpha"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"alpha"];
    }
  }

  if (self->_name)
  {
    name = [(_SFPBRFColor *)self name];
    if (name >= 0x12)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", name];
    }

    else
    {
      v8 = off_1E7ACE130[name];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"name"];
  }

  if (self->_rgb_value)
  {
    rgb_value = [(_SFPBRFColor *)self rgb_value];
    dictionaryRepresentation2 = [rgb_value dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"rgbValue"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"rgbValue"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFRGBValue *)self->_rgb_value hash];
  v4 = 2654435761 * self->_name;
  return v4 ^ v3 ^ [(_SFPBRFOptionalFloat *)self->_alpha hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  rgb_value = [(_SFPBRFColor *)self rgb_value];
  rgb_value2 = [equalCopy rgb_value];
  if ((rgb_value != 0) == (rgb_value2 == 0))
  {
    goto LABEL_12;
  }

  rgb_value3 = [(_SFPBRFColor *)self rgb_value];
  if (rgb_value3)
  {
    v8 = rgb_value3;
    rgb_value4 = [(_SFPBRFColor *)self rgb_value];
    rgb_value5 = [equalCopy rgb_value];
    v11 = [rgb_value4 isEqual:rgb_value5];

    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  name = self->_name;
  if (name != [equalCopy name])
  {
    goto LABEL_13;
  }

  rgb_value = [(_SFPBRFColor *)self alpha];
  rgb_value2 = [equalCopy alpha];
  if ((rgb_value != 0) == (rgb_value2 == 0))
  {
LABEL_12:

    goto LABEL_13;
  }

  alpha = [(_SFPBRFColor *)self alpha];
  if (!alpha)
  {

LABEL_16:
    v18 = 1;
    goto LABEL_14;
  }

  v14 = alpha;
  alpha2 = [(_SFPBRFColor *)self alpha];
  alpha3 = [equalCopy alpha];
  v17 = [alpha2 isEqual:alpha3];

  if (v17)
  {
    goto LABEL_16;
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  rgb_value = [(_SFPBRFColor *)self rgb_value];
  if (rgb_value)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFColor *)self name])
  {
    PBDataWriterWriteInt32Field();
  }

  alpha = [(_SFPBRFColor *)self alpha];
  if (alpha)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (int)name
{
  if (self->_whichValue == 2)
  {
    return self->_name;
  }

  else
  {
    return 0;
  }
}

- (void)setName:(int)name
{
  rgb_value = self->_rgb_value;
  self->_rgb_value = 0;

  self->_whichValue = 2;
  self->_name = name;
}

- (_SFPBRFRGBValue)rgb_value
{
  if (self->_whichValue == 1)
  {
    v3 = self->_rgb_value;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRgb_value:(id)rgb_value
{
  self->_name = 0;
  self->_whichValue = rgb_value != 0;
  objc_storeStrong(&self->_rgb_value, rgb_value);
}

@end